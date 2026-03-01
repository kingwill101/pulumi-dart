// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'chat_engine_chat_engine_config.dart';
import 'chat_engine_common_config.dart';

/// {@template pulumi_discoveryengine_chat_engine_chat_engine_args_doc}
/// The set of arguments for ChatEngine.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_chat_engine_chat_engine_args_doc}
class ChatEngineArgs {
  /// Configurations for a chat Engine.
  /// Structure is documented below.
  final pulumi.Input<ChatEngineChatEngineConfig> chatEngineConfig;
  /// The collection ID.
  final pulumi.Input<String> collectionId;
  /// Common config spec that specifies the metadata of the engine.
  /// Structure is documented below.
  final pulumi.Input<ChatEngineCommonConfig>? commonConfig;
  /// The data stores associated with this engine. Multiple DataStores in the same Collection can be associated here. All listed DataStores must be `SOLUTION_TYPE_CHAT`.
  final pulumi.Input<List<String>> dataStoreIds;
  /// The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  final pulumi.Input<String> displayName;
  /// The ID to use for chat engine.
  final pulumi.Input<String> engineId;
  /// The industry vertical that the chat engine registers. Vertical on Engine has to match vertical of the DataStore linked to the engine.
  /// Default value is `GENERIC`.
  /// Possible values are: `GENERIC`.
  final pulumi.Input<String>? industryVertical;
  /// Location.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ChatEngineArgs].
  /// [chatEngineConfig] Configurations for a chat Engine.
  /// [collectionId] The collection ID.
  /// [commonConfig] Common config spec that specifies the metadata of the engine.
  /// [dataStoreIds] The data stores associated with this engine. Multiple DataStores in the same Collection can be associated here. All listed DataStores must be `SOLUTION_TYPE_CHAT`.
  /// [displayName] The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  /// [engineId] The ID to use for chat engine.
  /// [industryVertical] The industry vertical that the chat engine registers. Vertical on Engine has to match vertical of the DataStore linked to the engine.
  /// [location] Location.
  /// [project] The ID of the project in which the resource belongs.
  ChatEngineArgs({
    required pulumi.Output<ChatEngineChatEngineConfig> chatEngineConfig,
    required pulumi.Output<String> collectionId,
    pulumi.Output<ChatEngineCommonConfig>? commonConfig,
    required pulumi.Output<List<String>> dataStoreIds,
    required pulumi.Output<String> displayName,
    required pulumi.Output<String> engineId,
    pulumi.Output<String>? industryVertical,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      chatEngineConfig = pulumi.Input.asInput<ChatEngineChatEngineConfig>(chatEngineConfig),
      collectionId = pulumi.Input.asInput<String>(collectionId),
      commonConfig = pulumi.Input.asOptionalInput<ChatEngineCommonConfig>(commonConfig),
      dataStoreIds = pulumi.Input.asInput<List<String>>(dataStoreIds),
      displayName = pulumi.Input.asInput<String>(displayName),
      engineId = pulumi.Input.asInput<String>(engineId),
      industryVertical = pulumi.Input.asOptionalInput<String>(industryVertical),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatEngineConfig': pulumi.Input.mapInputValue<ChatEngineChatEngineConfig, Map<String, dynamic>>(chatEngineConfig, (value) => value.toMap()),
      'collectionId': collectionId,
      'commonConfig': ?pulumi.Input.mapOptionalInputValue<ChatEngineCommonConfig, Map<String, dynamic>>(commonConfig, (value) => value.toMap()),
      'dataStoreIds': dataStoreIds,
      'displayName': displayName,
      'engineId': engineId,
      'industryVertical': ?industryVertical,
      'location': location,
      'project': ?project,
    };
  }

  factory ChatEngineArgs.fromMap(Map<String, dynamic> map) {
    return ChatEngineArgs(
      chatEngineConfig: pulumi.Output.create<ChatEngineChatEngineConfig>(ChatEngineChatEngineConfig.fromMap((map['chatEngineConfig'] as Map).cast<String, dynamic>())),
      collectionId: pulumi.Output.create<String>(map['collectionId'] as String),
      commonConfig: map['commonConfig'] == null ? null : pulumi.Output.create<ChatEngineCommonConfig>(ChatEngineCommonConfig.fromMap((map['commonConfig'] as Map).cast<String, dynamic>())),
      dataStoreIds: pulumi.Output.create<List<String>>((map['dataStoreIds'] as List).cast<String>()),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      engineId: pulumi.Output.create<String>(map['engineId'] as String),
      industryVertical: map['industryVertical'] == null ? null : pulumi.Output.create<String>(map['industryVertical'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

