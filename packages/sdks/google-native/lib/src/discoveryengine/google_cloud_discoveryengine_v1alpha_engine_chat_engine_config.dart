// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1alpha_engine_chat_engine_config_agent_creation_config.dart';

/// Configurations for a Chat Engine.
class GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig {
  /// The configurationt generate the Dialogflow agent that is associated to this Engine. Note that these configurations are one-time consumed by and passed to Dialogflow service. It means they cannot be retrieved using EngineService.GetEngine or EngineService.ListEngines API after engine creation.
  final pulumi.Input<
    GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig
  >?
  agentCreationConfig;

  /// The resource name of an exist Dialogflow agent to link to this Chat Engine. Customers can either provide `agent_creation_config` to create agent or provide an agent name that links the agent with the Chat engine. Format: `projects//locations//agents/`. Note that the `dialogflow_agent_to_link` are one-time consumed by and passed to Dialogflow service. It means they cannot be retrieved using EngineService.GetEngine or EngineService.ListEngines API after engine creation. Please use chat_engine_metadata.dialogflow_agent for actual agent association after Engine is created.
  final pulumi.Input<String>? dialogflowAgentToLink;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig].
  /// [agentCreationConfig] The configurationt generate the Dialogflow agent that is associated to this Engine. Note that these configurations are one-time consumed by and passed to Dialogflow service. It means they cannot be retrieved using EngineService.GetEngine or EngineService.ListEngines API after engine creation.
  /// [dialogflowAgentToLink] The resource name of an exist Dialogflow agent to link to this Chat Engine. Customers can either provide `agent_creation_config` to create agent or provide an agent name that links the agent with the Chat engine. Format: `projects//locations//agents/`. Note that the `dialogflow_agent_to_link` are one-time consumed by and passed to Dialogflow service. It means they cannot be retrieved using EngineService.GetEngine or EngineService.ListEngines API after engine creation. Please use chat_engine_metadata.dialogflow_agent for actual agent association after Engine is created.
  GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig({
    this.agentCreationConfig,
    this.dialogflowAgentToLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentCreationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig,
            Map<String, dynamic>
          >(agentCreationConfig, (value) => value.toMap()),
      'dialogflowAgentToLink': ?dialogflowAgentToLink,
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig(
      agentCreationConfig: (() {
        final guardedValue = map['agentCreationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dialogflowAgentToLink: (() {
        final guardedValue = map['dialogflowAgentToLink'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
