// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a part of a training phrase.
class GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePartResponse {
  /// The parameter used to annotate this part of the training phrase. This field is required for annotated parts of the training phrase.
  final pulumi.Input<String> parameterId;
  /// The text for this part.
  final pulumi.Input<String> text;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePartResponse].
  /// [parameterId] The parameter used to annotate this part of the training phrase. This field is required for annotated parts of the training phrase.
  /// [text] The text for this part.
  GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePartResponse({
    required this.parameterId,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterId': parameterId,
      'text': text,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePartResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePartResponse(
      parameterId: pulumi.Input.fromValue(map['parameterId'] as String),
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}

