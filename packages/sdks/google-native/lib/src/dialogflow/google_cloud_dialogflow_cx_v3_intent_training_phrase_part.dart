// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a part of a training phrase.
class GoogleCloudDialogflowCxV3IntentTrainingPhrasePart {
  /// The parameter used to annotate this part of the training phrase. This field is required for annotated parts of the training phrase.
  final pulumi.Input<String>? parameterId;

  /// The text for this part.
  final pulumi.Input<String> text;

  /// Creates a new [GoogleCloudDialogflowCxV3IntentTrainingPhrasePart].
  /// [parameterId] The parameter used to annotate this part of the training phrase. This field is required for annotated parts of the training phrase.
  /// [text] The text for this part.
  GoogleCloudDialogflowCxV3IntentTrainingPhrasePart({
    this.parameterId,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'parameterId': ?parameterId, 'text': text};
  }

  factory GoogleCloudDialogflowCxV3IntentTrainingPhrasePart.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3IntentTrainingPhrasePart(
      parameterId: (() {
        final guardedValue = map['parameterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}
