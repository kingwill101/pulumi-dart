// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_fulfillment.dart';
import 'google_cloud_dialogflow_v2beta1_text_to_speech_settings.dart';

/// {@template pulumi_dialogflow_v2beta1_environment_dialogflow_v2beta1_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_environment_dialogflow_v2beta1_args_doc}
class EnvironmentDialogflowV2beta1Args {
  /// Optional. The agent version loaded into this environment. Supported formats: - `projects//agent/versions/` - `projects//locations//agent/versions/`
  final pulumi.Input<String>? agentVersion;

  /// Optional. The developer-provided description for this environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String>? description;

  /// Required. The unique id of the new environment.
  final pulumi.Input<String> environmentId;

  /// Optional. The fulfillment settings to use for this environment.
  final pulumi.Input<GoogleCloudDialogflowV2beta1Fulfillment>? fulfillment;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Optional. Text to speech settings for this environment.
  final pulumi.Input<GoogleCloudDialogflowV2beta1TextToSpeechSettings>?
  textToSpeechSettings;

  /// Creates a new [EnvironmentDialogflowV2beta1Args].
  /// [agentVersion] Optional. The agent version loaded into this environment. Supported formats: - `projects//agent/versions/` - `projects//locations//agent/versions/`
  /// [description] Optional. The developer-provided description for this environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  /// [environmentId] Required. The unique id of the new environment.
  /// [fulfillment] Optional. The fulfillment settings to use for this environment.
  /// [location] Optional.
  /// [project] Optional.
  /// [textToSpeechSettings] Optional. Text to speech settings for this environment.
  EnvironmentDialogflowV2beta1Args({
    this.agentVersion,
    this.description,
    required this.environmentId,
    this.fulfillment,
    this.location,
    this.project,
    this.textToSpeechSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentVersion': ?agentVersion,
      'description': ?description,
      'environmentId': environmentId,
      'fulfillment':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowV2beta1Fulfillment,
            Map<String, dynamic>
          >(fulfillment, (value) => value.toMap()),
      'location': ?location,
      'project': ?project,
      'textToSpeechSettings':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowV2beta1TextToSpeechSettings,
            Map<String, dynamic>
          >(textToSpeechSettings, (value) => value.toMap()),
    };
  }

  factory EnvironmentDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return EnvironmentDialogflowV2beta1Args(
      agentVersion: (() {
        final guardedValue = map['agentVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      fulfillment: (() {
        final guardedValue = map['fulfillment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowV2beta1Fulfillment.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      textToSpeechSettings: (() {
        final guardedValue = map['textToSpeechSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowV2beta1TextToSpeechSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
