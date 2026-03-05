// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a part of a training phrase.
class GoogleCloudDialogflowV2beta1IntentTrainingPhrasePartResponse {
  /// Optional. The parameter name for the value extracted from the annotated part of the example. This field is required for annotated parts of the training phrase.
  final pulumi.Input<String> alias;
  /// Optional. The entity type name prefixed with `@`. This field is required for annotated parts of the training phrase.
  final pulumi.Input<String> entityType;
  /// The text for this part.
  final pulumi.Input<String> text;
  /// Optional. Indicates whether the text was manually annotated. This field is set to true when the Dialogflow Console is used to manually annotate the part. When creating an annotated part with the API, you must set this to true.
  final pulumi.Input<bool> userDefined;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentTrainingPhrasePartResponse].
  /// [alias] Optional. The parameter name for the value extracted from the annotated part of the example. This field is required for annotated parts of the training phrase.
  /// [entityType] Optional. The entity type name prefixed with `@`. This field is required for annotated parts of the training phrase.
  /// [text] The text for this part.
  /// [userDefined] Optional. Indicates whether the text was manually annotated. This field is set to true when the Dialogflow Console is used to manually annotate the part. When creating an annotated part with the API, you must set this to true.
  GoogleCloudDialogflowV2beta1IntentTrainingPhrasePartResponse({
    required this.alias,
    required this.entityType,
    required this.text,
    required this.userDefined,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'entityType': entityType,
      'text': text,
      'userDefined': userDefined,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentTrainingPhrasePartResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentTrainingPhrasePartResponse(
      alias: pulumi.Input.fromValue(map['alias'] as String),
      entityType: pulumi.Input.fromValue(map['entityType'] as String),
      text: pulumi.Input.fromValue(map['text'] as String),
      userDefined: pulumi.Input.fromValue(map['userDefined'] as bool),
    );
  }
}

