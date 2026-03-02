// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a part of a training phrase.
class GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart {
  /// Optional. The parameter name for the value extracted from the annotated part of the example. This field is required for annotated parts of the training phrase.
  final pulumi.Input<String>? alias;
  /// Optional. The entity type name prefixed with `@`. This field is required for annotated parts of the training phrase.
  final pulumi.Input<String>? entityType;
  /// The text for this part.
  final pulumi.Input<String> text;
  /// Optional. Indicates whether the text was manually annotated. This field is set to true when the Dialogflow Console is used to manually annotate the part. When creating an annotated part with the API, you must set this to true.
  final pulumi.Input<bool>? userDefined;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart].
  /// [alias] Optional. The parameter name for the value extracted from the annotated part of the example. This field is required for annotated parts of the training phrase.
  /// [entityType] Optional. The entity type name prefixed with `@`. This field is required for annotated parts of the training phrase.
  /// [text] The text for this part.
  /// [userDefined] Optional. Indicates whether the text was manually annotated. This field is set to true when the Dialogflow Console is used to manually annotate the part. When creating an annotated part with the API, you must set this to true.
  GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart({
    this.alias,
    this.entityType,
    required this.text,
    this.userDefined,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'entityType': ?entityType,
      'text': text,
      'userDefined': ?userDefined,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart(
      alias: map['alias'] == null ? null : (map['alias'] as String).input(),
      entityType: map['entityType'] == null ? null : (map['entityType'] as String).input(),
      text: (map['text'] as String).input(),
      userDefined: map['userDefined'] == null ? null : (map['userDefined'] as bool).input(),
    );
  }
}

