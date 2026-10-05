// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_environment_test_cases_config_response.dart';
import 'google_cloud_dialogflow_cx_v3_environment_version_config_response.dart';
import 'google_cloud_dialogflow_cx_v3_environment_webhook_config_response.dart';

/// Result data returned by getEnvironment.
class GetEnvironmentDialogflowV3Result {
  /// The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  final String? description;
  /// The human-readable name of the environment (unique in an agent). Limit of 64 characters.
  final String? displayName;
  /// The name of the environment. Format: `projects//locations//agents//environments/`.
  final String? name;
  /// The test cases config for continuous tests of this environment.
  final GoogleCloudDialogflowCxV3EnvironmentTestCasesConfigResponse? testCasesConfig;
  /// Update time of this environment.
  final String? updateTime;
  /// A list of configurations for flow versions. You should include version configs for all flows that are reachable from `Start Flow` in the agent. Otherwise, an error will be returned.
  final List<GoogleCloudDialogflowCxV3EnvironmentVersionConfigResponse>? versionConfigs;
  /// The webhook configuration for this environment.
  final GoogleCloudDialogflowCxV3EnvironmentWebhookConfigResponse? webhookConfig;

  /// Creates a new [GetEnvironmentDialogflowV3Result].
  /// [description] The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  /// [displayName] The human-readable name of the environment (unique in an agent). Limit of 64 characters.
  /// [name] The name of the environment. Format: `projects//locations//agents//environments/`.
  /// [testCasesConfig] The test cases config for continuous tests of this environment.
  /// [updateTime] Update time of this environment.
  /// [versionConfigs] A list of configurations for flow versions. You should include version configs for all flows that are reachable from `Start Flow` in the agent. Otherwise, an error will be returned.
  /// [webhookConfig] The webhook configuration for this environment.
  const GetEnvironmentDialogflowV3Result({
    this.description,
    this.displayName,
    this.name,
    this.testCasesConfig,
    this.updateTime,
    this.versionConfigs,
    this.webhookConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'testCasesConfig': ?testCasesConfig?.toMap(),
      'updateTime': ?updateTime,
      'versionConfigs': ?(() { final guardedValue = versionConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudDialogflowCxV3EnvironmentVersionConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'webhookConfig': ?webhookConfig?.toMap(),
    };
  }

  factory GetEnvironmentDialogflowV3Result.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentDialogflowV3Result(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      testCasesConfig: (() { final guardedValue = map['testCasesConfig']; if (guardedValue == null) return null; return GoogleCloudDialogflowCxV3EnvironmentTestCasesConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionConfigs: (() { final guardedValue = map['versionConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDialogflowCxV3EnvironmentVersionConfigResponse>(guardedValue, (value) => GoogleCloudDialogflowCxV3EnvironmentVersionConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      webhookConfig: (() { final guardedValue = map['webhookConfig']; if (guardedValue == null) return null; return GoogleCloudDialogflowCxV3EnvironmentWebhookConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
