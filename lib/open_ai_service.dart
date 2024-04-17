import 'dart:convert'; // package to encode/decode JSON data type
import 'package:cloud_functions/cloud_functions.dart'; // Import Firebase Functions
import 'variables.dart';
import 'prompts.dart';

class OpenAiService {
  // Declaring a messages List to maintain chat history
  final List<Map<String, String>> messages = [
    {
      "role": "user",
      "content": "Ensure all responses at least 800 words and only relevant to the given prompt", //was 800
    },
  ];

  Future<String> chatGPTApi(String medicallyData) async {
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
      print("${entry.key}: ${entry.value}"); // Debug Line
      if (entry.key) { // Adjusted for readability
        prompt += entry.value; // Concatenate prompts if multiple conditions are true
      }
    }
    // Add the user's prompt to messages for history
    messages.add({
      "role": "user",
      "content": prompt,
    });

    try {
      final functions = FirebaseFunctions.instance;
      final callable = functions.httpsCallable('chatWithOpenAI');
      final HttpsCallableResult result = await callable.call({
        'prompt': prompt,
        'max_tokens': 5000,
        'temperature': 0.7,
      });

      final String response = result.data.toString().trim();

      print("Extracted Response: $response");

      messages.add({"role": "assistant", "content": response});

      return response;
    } catch (error) {
      print("Error calling Firebase Function: $error");
      return "An error occurred: $error. Please try again later.";
    }

  }
}
