// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_training_phrase_part_response.dart';

/// Represents an example that the agent is trained on.
class GoogleCloudDialogflowV2beta1IntentTrainingPhraseResponse {
  /// The unique identifier of this training phrase.
  final pulumi.Input<String> name;
  /// The ordered list of training phrase parts. The parts are concatenated in order to form the training phrase. Note: The API does not automatically annotate training phrases like the Dialogflow Console does. Note: Do not forget to include whitespace at part boundaries, so the training phrase is well formatted when the parts are concatenated. If the training phrase does not need to be annotated with parameters, you just need a single part with only the Part.text field set. If you want to annotate the training phrase, you must create multiple parts, where the fields of each part are populated in one of two ways: - `Part.text` is set to a part of the phrase that has no parameters. - `Part.text` is set to a part of the phrase that you want to annotate, and the `entity_type`, `alias`, and `user_defined` fields are all set.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1IntentTrainingPhrasePartResponse>> parts;
  /// Optional. Indicates how many times this example was added to the intent. Each time a developer adds an existing sample by editing an intent or training, this counter is increased.
  final pulumi.Input<int> timesAddedCount;
  /// The type of the training phrase.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentTrainingPhraseResponse].
  /// [name] The unique identifier of this training phrase.
  /// [parts] The ordered list of training phrase parts. The parts are concatenated in order to form the training phrase. Note: The API does not automatically annotate training phrases like the Dialogflow Console does. Note: Do not forget to include whitespace at part boundaries, so the training phrase is well formatted when the parts are concatenated. If the training phrase does not need to be annotated with parameters, you just need a single part with only the Part.text field set. If you want to annotate the training phrase, you must create multiple parts, where the fields of each part are populated in one of two ways: - `Part.text` is set to a part of the phrase that has no parameters. - `Part.text` is set to a part of the phrase that you want to annotate, and the `entity_type`, `alias`, and `user_defined` fields are all set.
  /// [timesAddedCount] Optional. Indicates how many times this example was added to the intent. Each time a developer adds an existing sample by editing an intent or training, this counter is increased.
  /// [type] The type of the training phrase.
  const GoogleCloudDialogflowV2beta1IntentTrainingPhraseResponse({
    required this.name,
    required this.parts,
    required this.timesAddedCount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parts': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2beta1IntentTrainingPhrasePartResponse>, List<Map<String, dynamic>>>(parts, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1IntentTrainingPhrasePartResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timesAddedCount': timesAddedCount,
      'type': type,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentTrainingPhraseResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentTrainingPhraseResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      parts: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1IntentTrainingPhrasePartResponse>(map['parts']!, (value) => GoogleCloudDialogflowV2beta1IntentTrainingPhrasePartResponse.fromMap((value as Map).cast<String, dynamic>()))),
      timesAddedCount: pulumi.Input.fromValue(map['timesAddedCount'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

