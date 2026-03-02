// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratorInferenceParameter {
  /// Optional. Maximum number of the output tokens for the generator.
  final pulumi.Input<int>? maxOutputTokens;
  /// Optional. Controls the randomness of LLM predictions. Low temperature = less random. High temperature = more random. If unset (or 0), uses a default value of 0.
  final pulumi.Input<double>? temperature;
  /// Optional. Top-k changes how the model selects tokens for output. A top-k of 1 means the selected token is the most probable among all tokens in the model's vocabulary (also called greedy decoding), while a top-k of 3 means that the next token is selected from among the 3 most probable tokens (using temperature). For each token selection step, the top K tokens with the highest probabilities are sampled. Then tokens are further filtered based on topP with the final token selected using temperature sampling. Specify a lower value for less random responses and a higher value for more random responses. Acceptable value is [1, 40], default to 40.
  final pulumi.Input<int>? topK;
  /// Optional. Top-p changes how the model selects tokens for output. Tokens are selected from most K (see topK parameter) probable to least until the sum of their probabilities equals the top-p value. For example, if tokens A, B, and C have a probability of 0.3, 0.2, and 0.1 and the top-p value is 0.5, then the model will select either A or B as the next token (using temperature) and doesn't consider C. The default top-p value is 0.95. Specify a lower value for less random responses and a higher value for more random responses. Acceptable value is [0.0, 1.0], default to 0.95.
  final pulumi.Input<double>? topP;

  /// Creates a new [GeneratorInferenceParameter].
  /// [maxOutputTokens] Optional. Maximum number of the output tokens for the generator.
  /// [temperature] Optional. Controls the randomness of LLM predictions. Low temperature = less random. High temperature = more random. If unset (or 0), uses a default value of 0.
  /// [topK] Optional. Top-k changes how the model selects tokens for output. A top-k of 1 means the selected token is the most probable among all tokens in the model's vocabulary (also called greedy decoding), while a top-k of 3 means that the next token is selected from among the 3 most probable tokens (using temperature). For each token selection step, the top K tokens with the highest probabilities are sampled. Then tokens are further filtered based on topP with the final token selected using temperature sampling. Specify a lower value for less random responses and a higher value for more random responses. Acceptable value is [1, 40], default to 40.
  /// [topP] Optional. Top-p changes how the model selects tokens for output. Tokens are selected from most K (see topK parameter) probable to least until the sum of their probabilities equals the top-p value. For example, if tokens A, B, and C have a probability of 0.3, 0.2, and 0.1 and the top-p value is 0.5, then the model will select either A or B as the next token (using temperature) and doesn't consider C. The default top-p value is 0.95. Specify a lower value for less random responses and a higher value for more random responses. Acceptable value is [0.0, 1.0], default to 0.95.
  GeneratorInferenceParameter({
    this.maxOutputTokens,
    this.temperature,
    this.topK,
    this.topP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxOutputTokens': ?maxOutputTokens,
      'temperature': ?temperature,
      'topK': ?topK,
      'topP': ?topP,
    };
  }

  factory GeneratorInferenceParameter.fromMap(Map<String, dynamic> map) {
    return GeneratorInferenceParameter(
      maxOutputTokens: map['maxOutputTokens'] == null ? null : (map['maxOutputTokens'] as int).input(),
      temperature: map['temperature'] == null ? null : (map['temperature'] as double).input(),
      topK: map['topK'] == null ? null : (map['topK'] as int).input(),
      topP: map['topP'] == null ? null : (map['topP'] as double).input(),
    );
  }
}

