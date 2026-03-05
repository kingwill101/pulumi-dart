// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The feedback that the customer has about a certain answer in the conversation.
class GoogleCloudContactcenterinsightsV1AnswerFeedbackResponse {
  /// Indicates whether an answer or item was clicked by the human agent.
  final pulumi.Input<bool> clicked;
  /// The correctness level of an answer.
  final pulumi.Input<String> correctnessLevel;
  /// Indicates whether an answer or item was displayed to the human agent in the agent desktop UI.
  final pulumi.Input<bool> displayed;

  /// Creates a new [GoogleCloudContactcenterinsightsV1AnswerFeedbackResponse].
  /// [clicked] Indicates whether an answer or item was clicked by the human agent.
  /// [correctnessLevel] The correctness level of an answer.
  /// [displayed] Indicates whether an answer or item was displayed to the human agent in the agent desktop UI.
  GoogleCloudContactcenterinsightsV1AnswerFeedbackResponse({
    required this.clicked,
    required this.correctnessLevel,
    required this.displayed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clicked': clicked,
      'correctnessLevel': correctnessLevel,
      'displayed': displayed,
    };
  }

  factory GoogleCloudContactcenterinsightsV1AnswerFeedbackResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1AnswerFeedbackResponse(
      clicked: pulumi.Input.fromValue(map['clicked'] as bool),
      correctnessLevel: pulumi.Input.fromValue(map['correctnessLevel'] as String),
      displayed: pulumi.Input.fromValue(map['displayed'] as bool),
    );
  }
}

