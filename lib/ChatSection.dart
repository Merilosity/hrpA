import 'package:flutter/material.dart'; // material package
import 'open_ai_service.dart'; // OpenAiService class
import 'variables.dart';
import 'prompts.dart';

class ChatSection extends StatefulWidget {
  const ChatSection({super.key});

  @override
  State<ChatSection> createState() => _ChatSectionState();
}

 TextEditingController promptController = TextEditingController();
 String prompt = ''; // stores the user prompt
 String chatSpeech = ''; // stores the response from the API

 bool showLoader = false; // whether to show loader or not

// define class openAiService (type of class = OpenAiService)
final OpenAiService openAiService = OpenAiService();

class _ChatSectionState extends State<ChatSection> {
  @override
  void dispose() {
    promptController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    String sampleIntroPrompt = '';

    Map<bool, String> conditionPromptMap = {
      variables.h_1selected: prompts.s_1_intro_prompt,
      variables.h_2selected: prompts.s_2_intro_prompt,
      variables.h_3selected: prompts.s_3_intro_prompt,
      variables.h_4selected: prompts.s_4_intro_prompt,
      variables.p_1selected: prompts.p_1_intro_prompt,
      variables.p_2selected: prompts.p_2_intro_prompt,
      variables.p_3selected: prompts.p_3_intro_prompt,
      variables.p_4selected: prompts.p_4_intro_prompt,
      variables.r_1selected: prompts.r_1_intro_prompt,
      variables.r_2selected: prompts.r_2_intro_prompt,
      variables.r_3selected: prompts.r_3_intro_prompt,
      variables.r_4selected: prompts.r_4_intro_prompt,
    };

    for (var entry in conditionPromptMap.entries) {
      if (entry.key == true) {
        sampleIntroPrompt = entry.value;
        break;
      }
    }

    return Column(
        children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(width: 60),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.orangeAccent,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child:  Text(sampleIntroPrompt,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: "Cera Pro",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10,20,20,0),
            child: Flexible(
              flex: 1,
              child: Image.asset(
                "assets/images/openaiLogo.png",
                width: 40,
              ),
            ),
          ),],),
          // chatGPT response container
          Expanded(
            child: SingleChildScrollView(
              child: Align(
                alignment: Alignment.topLeft,
                //chatGPT response chat bubble
                child: showLoader == true
                    ? const Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 30.0,
                    ),
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  ),
                )
                // Main content
                    : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    // small icon of a robot/assistant
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10,20,0,0),
                      child: Image.asset(
                        "assets/images/openaiLogo.png",
                        width: 40,
                      ),
                    ),
                    // Response Box
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 20,
                        ),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white30,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          chatSpeech == ""
                              ? "Hello, I have generated the following report based on the analysed sample."
                              : chatSpeech,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: "Cera Pro",
                          ),
                        ),
                      ),
                    ),
                    /// ???
                    const SizedBox(width: 65)
                  ],
                ),
              ),
            ),
          ),
        ]
    );
  }
}
