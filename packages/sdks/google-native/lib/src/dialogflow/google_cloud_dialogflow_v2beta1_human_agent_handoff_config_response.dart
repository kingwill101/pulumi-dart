// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_human_agent_handoff_config_live_person_config_response.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_handoff_config_salesforce_live_agent_config_response.dart';

/// Defines the hand off to a live agent, typically on which external agent service provider to connect to a conversation. Currently, this feature is not general available, please contact Google to get access.
class GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigResponse {
  /// Uses LivePerson (https://www.liveperson.com).
  final pulumi.Input<GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfigResponse> livePersonConfig;
  /// Uses Salesforce Live Agent.
  final pulumi.Input<GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigSalesforceLiveAgentConfigResponse> salesforceLiveAgentConfig;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigResponse].
  /// [livePersonConfig] Uses LivePerson (https://www.liveperson.com).
  /// [salesforceLiveAgentConfig] Uses Salesforce Live Agent.
  const GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigResponse({
    required this.livePersonConfig,
    required this.salesforceLiveAgentConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'livePersonConfig': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfigResponse, Map<String, dynamic>>(livePersonConfig, (value) => value.toMap()),
      'salesforceLiveAgentConfig': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigSalesforceLiveAgentConfigResponse, Map<String, dynamic>>(salesforceLiveAgentConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigResponse(
      livePersonConfig: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfigResponse.fromMap((map['livePersonConfig']! as Map).cast<String, dynamic>())),
      salesforceLiveAgentConfig: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigSalesforceLiveAgentConfigResponse.fromMap((map['salesforceLiveAgentConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
