// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'chat_engine_chat_engine_config.dart';
import 'chat_engine_chat_engine_metadata.dart';
import 'chat_engine_common_config.dart';

/// Input properties used for looking up and filtering ChatEngine resources.
class ChatEngineState {
  /// Configurations for a chat Engine.
  /// Structure is documented below.
  final pulumi.Input<ChatEngineChatEngineConfig>? chatEngineConfig;
  /// Additional information of the Chat Engine.
  /// Structure is documented below.
  final pulumi.Input<List<ChatEngineChatEngineMetadata>>? chatEngineMetadatas;
  /// The collection ID.
  final pulumi.Input<String>? collectionId;
  /// Common config spec that specifies the metadata of the engine.
  /// Structure is documented below.
  final pulumi.Input<ChatEngineCommonConfig>? commonConfig;
  /// Timestamp the Engine was created at.
  final pulumi.Input<String>? createTime;
  /// The data stores associated with this engine. Multiple DataStores in the same Collection can be associated here. All listed DataStores must be `SOLUTION_TYPE_CHAT`.
  final pulumi.Input<List<String>>? dataStoreIds;
  /// The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  final pulumi.Input<String>? displayName;
  /// The ID to use for chat engine.
  final pulumi.Input<String>? engineId;
  /// The industry vertical that the chat engine registers. Vertical on Engine has to match vertical of the DataStore linked to the engine.
  /// Default value is `GENERIC`.
  /// Possible values are: `GENERIC`.
  final pulumi.Input<String>? industryVertical;
  /// Location.
  final pulumi.Input<String>? location;
  /// The unique full resource name of the chat engine. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Timestamp the Engine was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ChatEngineState].
  /// [chatEngineConfig] Configurations for a chat Engine.
  /// [chatEngineMetadatas] Additional information of the Chat Engine.
  /// [collectionId] The collection ID.
  /// [commonConfig] Common config spec that specifies the metadata of the engine.
  /// [createTime] Timestamp the Engine was created at.
  /// [dataStoreIds] The data stores associated with this engine. Multiple DataStores in the same Collection can be associated here. All listed DataStores must be `SOLUTION_TYPE_CHAT`.
  /// [displayName] The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  /// [engineId] The ID to use for chat engine.
  /// [industryVertical] The industry vertical that the chat engine registers. Vertical on Engine has to match vertical of the DataStore linked to the engine.
  /// [location] Location.
  /// [name] The unique full resource name of the chat engine. Values are of the format
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] Timestamp the Engine was last updated.
  ChatEngineState({
    this.chatEngineConfig,
    this.chatEngineMetadatas,
    this.collectionId,
    this.commonConfig,
    this.createTime,
    this.dataStoreIds,
    this.displayName,
    this.engineId,
    this.industryVertical,
    this.location,
    this.name,
    this.project,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatEngineConfig': ?pulumi.Input.mapOptionalInputValue<ChatEngineChatEngineConfig, Map<String, dynamic>>(chatEngineConfig, (value) => value.toMap()),
      'chatEngineMetadatas': ?pulumi.Input.mapOptionalInputValue<List<ChatEngineChatEngineMetadata>, List<Map<String, dynamic>>>(chatEngineMetadatas, (value) => pulumi.Input.encodeList<ChatEngineChatEngineMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'collectionId': ?collectionId,
      'commonConfig': ?pulumi.Input.mapOptionalInputValue<ChatEngineCommonConfig, Map<String, dynamic>>(commonConfig, (value) => value.toMap()),
      'createTime': ?createTime,
      'dataStoreIds': ?dataStoreIds,
      'displayName': ?displayName,
      'engineId': ?engineId,
      'industryVertical': ?industryVertical,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory ChatEngineState.fromMap(Map<String, dynamic> map) {
    return ChatEngineState(
      chatEngineConfig: map['chatEngineConfig'] == null ? null : (ChatEngineChatEngineConfig.fromMap((map['chatEngineConfig']! as Map).cast<String, dynamic>())).input(),
      chatEngineMetadatas: map['chatEngineMetadatas'] == null ? null : (pulumi.Input.decodeList<ChatEngineChatEngineMetadata>(map['chatEngineMetadatas']!, (value) => ChatEngineChatEngineMetadata.fromMap((value as Map).cast<String, dynamic>()))).input(),
      collectionId: map['collectionId'] == null ? null : (map['collectionId']! as String).input(),
      commonConfig: map['commonConfig'] == null ? null : (ChatEngineCommonConfig.fromMap((map['commonConfig']! as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      dataStoreIds: map['dataStoreIds'] == null ? null : ((map['dataStoreIds']! as List).cast<String>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      engineId: map['engineId'] == null ? null : (map['engineId']! as String).input(),
      industryVertical: map['industryVertical'] == null ? null : (map['industryVertical']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

