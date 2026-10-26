// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_fulfillment_response.dart';
import 'google_cloud_dialogflow_v2_text_to_speech_settings_response.dart';

/// Result data returned by getEnvironment.
class GetEnvironmentResult {
  /// Optional. The agent version loaded into this environment. Supported formats: - `projects//agent/versions/` - `projects//locations//agent/versions/`
  final String? agentVersion;
  /// Optional. The developer-provided description for this environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  final String? description;
  /// Optional. The fulfillment settings to use for this environment.
  final GoogleCloudDialogflowV2FulfillmentResponse? fulfillment;
  /// The unique identifier of this agent environment. Supported formats: - `projects//agent/environments/` - `projects//locations//agent/environments/` The environment ID for the default environment is `-`.
  final String? name;
  /// The state of this environment. This field is read-only, i.e., it cannot be set by create and update methods.
  final String? state;
  /// Optional. Text to speech settings for this environment.
  final GoogleCloudDialogflowV2TextToSpeechSettingsResponse? textToSpeechSettings;
  /// The last update time of this environment. This field is read-only, i.e., it cannot be set by create and update methods.
  final String? updateTime;

  /// Creates a new [GetEnvironmentResult].
  /// [agentVersion] Optional. The agent version loaded into this environment. Supported formats: - `projects//agent/versions/` - `projects//locations//agent/versions/`
  /// [description] Optional. The developer-provided description for this environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  /// [fulfillment] Optional. The fulfillment settings to use for this environment.
  /// [name] The unique identifier of this agent environment. Supported formats: - `projects//agent/environments/` - `projects//locations//agent/environments/` The environment ID for the default environment is `-`.
  /// [state] The state of this environment. This field is read-only, i.e., it cannot be set by create and update methods.
  /// [textToSpeechSettings] Optional. Text to speech settings for this environment.
  /// [updateTime] The last update time of this environment. This field is read-only, i.e., it cannot be set by create and update methods.
  const GetEnvironmentResult({
    this.agentVersion,
    this.description,
    this.fulfillment,
    this.name,
    this.state,
    this.textToSpeechSettings,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentVersion': ?agentVersion,
      'description': ?description,
      'fulfillment': ?fulfillment?.toMap(),
      'name': ?name,
      'state': ?state,
      'textToSpeechSettings': ?textToSpeechSettings?.toMap(),
      'updateTime': ?updateTime,
    };
  }

  factory GetEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentResult(
      agentVersion: (() { final guardedValue = map['agentVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fulfillment: (() { final guardedValue = map['fulfillment']; if (guardedValue == null) return null; return GoogleCloudDialogflowV2FulfillmentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      textToSpeechSettings: (() { final guardedValue = map['textToSpeechSettings']; if (guardedValue == null) return null; return GoogleCloudDialogflowV2TextToSpeechSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
