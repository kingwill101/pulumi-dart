// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_fulfillment_response.dart';
import 'google_cloud_dialogflow_v2beta1_text_to_speech_settings_response.dart';

/// Result data returned by getEnvironment.
class GetEnvironmentDialogflowV2beta1Result {
  /// Optional. The agent version loaded into this environment. Supported formats: - `projects//agent/versions/` - `projects//locations//agent/versions/`
  final String agentVersion;
  /// Optional. The developer-provided description for this environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  final String description;
  /// Optional. The fulfillment settings to use for this environment.
  final GoogleCloudDialogflowV2beta1FulfillmentResponse fulfillment;
  /// The unique identifier of this agent environment. Supported formats: - `projects//agent/environments/` - `projects//locations//agent/environments/`
  final String name;
  /// The state of this environment. This field is read-only, i.e., it cannot be set by create and update methods.
  final String state;
  /// Optional. Text to speech settings for this environment.
  final GoogleCloudDialogflowV2beta1TextToSpeechSettingsResponse textToSpeechSettings;
  /// The last update time of this environment. This field is read-only, i.e., it cannot be set by create and update methods.
  final String updateTime;

  /// Creates a new [GetEnvironmentDialogflowV2beta1Result].
  /// [agentVersion] Optional. The agent version loaded into this environment. Supported formats: - `projects//agent/versions/` - `projects//locations//agent/versions/`
  /// [description] Optional. The developer-provided description for this environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  /// [fulfillment] Optional. The fulfillment settings to use for this environment.
  /// [name] The unique identifier of this agent environment. Supported formats: - `projects//agent/environments/` - `projects//locations//agent/environments/`
  /// [state] The state of this environment. This field is read-only, i.e., it cannot be set by create and update methods.
  /// [textToSpeechSettings] Optional. Text to speech settings for this environment.
  /// [updateTime] The last update time of this environment. This field is read-only, i.e., it cannot be set by create and update methods.
  GetEnvironmentDialogflowV2beta1Result({
    required this.agentVersion,
    required this.description,
    required this.fulfillment,
    required this.name,
    required this.state,
    required this.textToSpeechSettings,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentVersion': agentVersion,
      'description': description,
      'fulfillment': fulfillment.toMap(),
      'name': name,
      'state': state,
      'textToSpeechSettings': textToSpeechSettings.toMap(),
      'updateTime': updateTime,
    };
  }

  factory GetEnvironmentDialogflowV2beta1Result.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentDialogflowV2beta1Result(
      agentVersion: map['agentVersion'] as String,
      description: map['description'] as String,
      fulfillment: GoogleCloudDialogflowV2beta1FulfillmentResponse.fromMap((map['fulfillment'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      state: map['state'] as String,
      textToSpeechSettings: GoogleCloudDialogflowV2beta1TextToSpeechSettingsResponse.fromMap((map['textToSpeechSettings'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
    );
  }
}

