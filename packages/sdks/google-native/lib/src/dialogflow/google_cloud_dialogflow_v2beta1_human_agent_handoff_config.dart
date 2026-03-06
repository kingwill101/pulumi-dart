// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_human_agent_handoff_config_live_person_config.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_handoff_config_salesforce_live_agent_config.dart';

/// Defines the hand off to a live agent, typically on which external agent service provider to connect to a conversation. Currently, this feature is not general available, please contact Google to get access.
class GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig {
  /// Uses LivePerson (https://www.liveperson.com).
  final pulumi.Input<GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfig>? livePersonConfig;
  /// Uses Salesforce Live Agent.
  final pulumi.Input<GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigSalesforceLiveAgentConfig>? salesforceLiveAgentConfig;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig].
  /// [livePersonConfig] Uses LivePerson (https://www.liveperson.com).
  /// [salesforceLiveAgentConfig] Uses Salesforce Live Agent.
  const GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig({
    this.livePersonConfig,
    this.salesforceLiveAgentConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'livePersonConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfig, Map<String, dynamic>>(livePersonConfig, (value) => value.toMap()),
      'salesforceLiveAgentConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigSalesforceLiveAgentConfig, Map<String, dynamic>>(salesforceLiveAgentConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig(
      livePersonConfig: (() { final guardedValue = map['livePersonConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      salesforceLiveAgentConfig: (() { final guardedValue = map['salesforceLiveAgentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigSalesforceLiveAgentConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

