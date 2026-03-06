// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_intent_training_phrase_part_response.dart';

/// Represents an example that the agent is trained on to identify the intent.
class GoogleCloudDialogflowCxV3IntentTrainingPhraseResponse {
  /// The ordered list of training phrase parts. The parts are concatenated in order to form the training phrase. Note: The API does not automatically annotate training phrases like the Dialogflow Console does. Note: Do not forget to include whitespace at part boundaries, so the training phrase is well formatted when the parts are concatenated. If the training phrase does not need to be annotated with parameters, you just need a single part with only the Part.text field set. If you want to annotate the training phrase, you must create multiple parts, where the fields of each part are populated in one of two ways: - `Part.text` is set to a part of the phrase that has no parameters. - `Part.text` is set to a part of the phrase that you want to annotate, and the `parameter_id` field is set.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3IntentTrainingPhrasePartResponse>> parts;
  /// Indicates how many times this example was added to the intent.
  final pulumi.Input<int> repeatCount;

  /// Creates a new [GoogleCloudDialogflowCxV3IntentTrainingPhraseResponse].
  /// [parts] The ordered list of training phrase parts. The parts are concatenated in order to form the training phrase. Note: The API does not automatically annotate training phrases like the Dialogflow Console does. Note: Do not forget to include whitespace at part boundaries, so the training phrase is well formatted when the parts are concatenated. If the training phrase does not need to be annotated with parameters, you just need a single part with only the Part.text field set. If you want to annotate the training phrase, you must create multiple parts, where the fields of each part are populated in one of two ways: - `Part.text` is set to a part of the phrase that has no parameters. - `Part.text` is set to a part of the phrase that you want to annotate, and the `parameter_id` field is set.
  /// [repeatCount] Indicates how many times this example was added to the intent.
  const GoogleCloudDialogflowCxV3IntentTrainingPhraseResponse({
    required this.parts,
    required this.repeatCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parts': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowCxV3IntentTrainingPhrasePartResponse>, List<Map<String, dynamic>>>(parts, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3IntentTrainingPhrasePartResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'repeatCount': repeatCount,
    };
  }

  factory GoogleCloudDialogflowCxV3IntentTrainingPhraseResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3IntentTrainingPhraseResponse(
      parts: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3IntentTrainingPhrasePartResponse>(map['parts']!, (value) => GoogleCloudDialogflowCxV3IntentTrainingPhrasePartResponse.fromMap((value as Map).cast<String, dynamic>()))),
      repeatCount: pulumi.Input.fromValue(map['repeatCount'] as int),
    );
  }
}

