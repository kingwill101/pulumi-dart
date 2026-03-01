// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_human_agent_handoff_config_live_person_config.dart';
import 'google_cloud_dialogflow_v2_human_agent_handoff_config_salesforce_live_agent_config.dart';

/// Defines the hand off to a live agent, typically on which external agent service provider to connect to a conversation. Currently, this feature is not general available, please contact Google to get access.
class GoogleCloudDialogflowV2HumanAgentHandoffConfig {
  /// Uses LivePerson (https://www.liveperson.com).
  final GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig? livePersonConfig;
  /// Uses Salesforce Live Agent.
  final GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig? salesforceLiveAgentConfig;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentHandoffConfig].
  /// [livePersonConfig] Uses LivePerson (https://www.liveperson.com).
  /// [salesforceLiveAgentConfig] Uses Salesforce Live Agent.
  GoogleCloudDialogflowV2HumanAgentHandoffConfig({
    this.livePersonConfig,
    this.salesforceLiveAgentConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'livePersonConfig': ?livePersonConfig == null ? null : livePersonConfig!.toMap(),
      'salesforceLiveAgentConfig': ?salesforceLiveAgentConfig == null ? null : salesforceLiveAgentConfig!.toMap(),
    };
  }

  factory GoogleCloudDialogflowV2HumanAgentHandoffConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentHandoffConfig(
      livePersonConfig: map['livePersonConfig'] == null ? null : GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig.fromMap((map['livePersonConfig'] as Map).cast<String, dynamic>()),
      salesforceLiveAgentConfig: map['salesforceLiveAgentConfig'] == null ? null : GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig.fromMap((map['salesforceLiveAgentConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

