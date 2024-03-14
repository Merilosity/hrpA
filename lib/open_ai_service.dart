import 'dart:convert'; // package to encode/decode JSON data type
import 'package:flutter_dotenv/flutter_dotenv.dart'; // dot_env package
import 'package:http/http.dart' as http; // http package
import 'variables.dart';
import 'prompts.dart';

var openAIApiKey = dotenv.env['OPEN_AI_API_KEY']; //access the OPEN_AI_API_KEY from the .env file in the root directory
class OpenAiService{
  // declaring a messages List to maintain chat history
  final List<Map<String,String>> messages = [
    {
      "role" : "user",
      "content" : "Ensure all responses at least 700 words and only relevant to the given prompt", //was 800
    },
  ];

  // this async function with return a future which will resolve to a string
  Future<String> chatGPTApi(String medicallyData) async{

    String prompt = '';

    Map<bool, String> conditionPromptMap = {
      variables.h_1selected: prompts.h1Prompt,
      variables.h_2selected: prompts.h2Prompt,
      variables.h_3selected: prompts.h3Prompt,
      variables.h_4selected: prompts.h4Prompt,
      variables.p_1selected: prompts.p1Prompt,
      variables.p_2selected: prompts.p2Prompt,
      variables.p_3selected: prompts.p3Prompt,
      variables.p_4selected: prompts.p4Prompt,
      variables.r_1selected: prompts.r1Prompt,
      variables.r_2selected: prompts.r2Prompt,
      variables.r_3selected: prompts.r3Prompt,
      variables.r_4selected: prompts.r4Prompt,
    };

    for (var entry in conditionPromptMap.entries) {
      if (entry.key == true) {
        prompt = entry.value;
        break;
      }
    }

    // add the prompt to messages
    messages.add({
      "role" : "user",
      "content" : prompt,
    });

    // post the prompt to the API and receive response
    try{
      final res = await http.post(
        Uri.parse("https://api.openai.com/v1/chat/completions"),
        headers:{
          "Content-Type": "application/json",
          "Authorization": "Bearer $openAIApiKey"
        },
        // encode the object to JSON
        body: jsonEncode(
          {
            "model" : "gpt-4",
            "messages" : messages,
            "max_tokens": 5000, // Increase if more detail is needed
            "temperature": 0.7, // Adjust for creativity vs consistency
          },
        ),
      );

      if(res.statusCode == 200){
        // decode the JSON response
        String response = jsonDecode(res.body)['choices'][0]['message']['content'];
        response = response.trim();
        // add the response to messages and return response
        messages.add(
            {
              "role" : "assistant",
              "content" : response,
            }
        );
        return response;
      }
      else{
        return "OOPS! An Error occured. \n Please try again after sometime";
      }
    }
    catch (error){
      return error.toString();
    }
  }
}
