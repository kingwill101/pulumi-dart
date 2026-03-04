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
    required this.chatEngineConfig,
    required this.collectionId,
    this.commonConfig,
    required this.dataStoreIds,
    required this.displayName,
    required this.engineId,
    this.industryVertical,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatEngineConfig':
          pulumi.Input.mapInputValue<
            ChatEngineChatEngineConfig,
            Map<String, dynamic>
          >(chatEngineConfig, (value) => value.toMap()),
      'collectionId': collectionId,
      'commonConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ChatEngineCommonConfig,
            Map<String, dynamic>
          >(commonConfig, (value) => value.toMap()),
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
      chatEngineConfig: pulumi.Input.fromValue(
        ChatEngineChatEngineConfig.fromMap(
          (map['chatEngineConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      collectionId: pulumi.Input.fromValue(map['collectionId'] as String),
      commonConfig: (() {
        final guardedValue = map['commonConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ChatEngineCommonConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dataStoreIds: pulumi.Input.fromValue(
        (map['dataStoreIds'] as List).cast<String>(),
      ),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      engineId: pulumi.Input.fromValue(map['engineId'] as String),
      industryVertical: (() {
        final guardedValue = map['industryVertical'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
