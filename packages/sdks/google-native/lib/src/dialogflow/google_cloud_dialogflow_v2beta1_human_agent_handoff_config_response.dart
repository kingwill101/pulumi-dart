// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_human_agent_handoff_config_live_person_config_response.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_handoff_config_salesforce_live_agent_config_response.dart';

/// Defines the hand off to a live agent, typically on which external agent service provider to connect to a conversation. Currently, this feature is not general available, please contact Google to get access.
class GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigResponse {
  /// Uses LivePerson (https://www.liveperson.com).
  final GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfigResponse livePersonConfig;
  /// Uses Salesforce Live Agent.
  final GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigSalesforceLiveAgentConfigResponse salesforceLiveAgentConfig;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigResponse].
  /// [livePersonConfig] Uses LivePerson (https://www.liveperson.com).
  /// [salesforceLiveAgentConfig] Uses Salesforce Live Agent.
  GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigResponse({
    required this.livePersonConfig,
    required this.salesforceLiveAgentConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'livePersonConfig': livePersonConfig.toMap(),
      'salesforceLiveAgentConfig': salesforceLiveAgentConfig.toMap(),
    };
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigResponse(
      livePersonConfig: GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfigResponse.fromMap((map['livePersonConfig'] as Map).cast<String, dynamic>()),
      salesforceLiveAgentConfig: GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigSalesforceLiveAgentConfigResponse.fromMap((map['salesforceLiveAgentConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

