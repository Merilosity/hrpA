const functions = require("firebase-functions");
const axios = require("axios");

exports.chatWithOpenAI = functions.https.onCall(async (data, context) => {
  const openAIApiKey = functions.config().openai.key;
  const prompt = data.prompt;
  const response = await axios.post(
      "https://api.openai.com/v1/chat/completions",
      {
        model: "gpt-4",
        messages: [
          {
            role: "user",
            content: prompt,
          },
        ],
        max_tokens: 5000,
        temperature: 0.7,
      },
      {
        headers: {
          "Content-Type": "application/json",
          "Authorization": `Bearer ${openAIApiKey}`,
        },
      },
  );

  return response.data.choices[0].message.content.trim();
});
