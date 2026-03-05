// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1alpha_engine_chat_engine_config_agent_creation_config_response.dart';

/// Configurations for a Chat Engine.
class GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigResponse {
  /// The configurationt generate the Dialogflow agent that is associated to this Engine. Note that these configurations are one-time consumed by and passed to Dialogflow service. It means they cannot be retrieved using EngineService.GetEngine or EngineService.ListEngines API after engine creation.
  final pulumi.Input<GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfigResponse> agentCreationConfig;
  /// The resource name of an exist Dialogflow agent to link to this Chat Engine. Customers can either provide `agent_creation_config` to create agent or provide an agent name that links the agent with the Chat engine. Format: `projects//locations//agents/`. Note that the `dialogflow_agent_to_link` are one-time consumed by and passed to Dialogflow service. It means they cannot be retrieved using EngineService.GetEngine or EngineService.ListEngines API after engine creation. Please use chat_engine_metadata.dialogflow_agent for actual agent association after Engine is created.
  final pulumi.Input<String> dialogflowAgentToLink;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigResponse].
  /// [agentCreationConfig] The configurationt generate the Dialogflow agent that is associated to this Engine. Note that these configurations are one-time consumed by and passed to Dialogflow service. It means they cannot be retrieved using EngineService.GetEngine or EngineService.ListEngines API after engine creation.
  /// [dialogflowAgentToLink] The resource name of an exist Dialogflow agent to link to this Chat Engine. Customers can either provide `agent_creation_config` to create agent or provide an agent name that links the agent with the Chat engine. Format: `projects//locations//agents/`. Note that the `dialogflow_agent_to_link` are one-time consumed by and passed to Dialogflow service. It means they cannot be retrieved using EngineService.GetEngine or EngineService.ListEngines API after engine creation. Please use chat_engine_metadata.dialogflow_agent for actual agent association after Engine is created.
  GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigResponse({
    required this.agentCreationConfig,
    required this.dialogflowAgentToLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentCreationConfig': pulumi.Input.mapInputValue<GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfigResponse, Map<String, dynamic>>(agentCreationConfig, (value) => value.toMap()),
      'dialogflowAgentToLink': dialogflowAgentToLink,
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigResponse(
      agentCreationConfig: pulumi.Input.fromValue(GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfigResponse.fromMap((map['agentCreationConfig']! as Map).cast<String, dynamic>())),
      dialogflowAgentToLink: pulumi.Input.fromValue(map['dialogflowAgentToLink'] as String),
    );
  }
}

