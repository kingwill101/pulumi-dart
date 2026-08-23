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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  /// [engineId] The ID to use for chat engine.
  /// [industryVertical] The industry vertical that the chat engine registers. Vertical on Engine has to match vertical of the DataStore linked to the engine.
  /// [location] Location.
  /// [name] The unique full resource name of the chat engine. Values are of the format
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] Timestamp the Engine was last updated.
  const ChatEngineState({
    this.chatEngineConfig,
    this.chatEngineMetadatas,
    this.collectionId,
    this.commonConfig,
    this.createTime,
    this.dataStoreIds,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      chatEngineConfig: (() { final guardedValue = map['chatEngineConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChatEngineChatEngineConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      chatEngineMetadatas: (() { final guardedValue = map['chatEngineMetadatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChatEngineChatEngineMetadata>(guardedValue, (value) => ChatEngineChatEngineMetadata.fromMap((value as Map).cast<String, dynamic>()))); })(),
      collectionId: (() { final guardedValue = map['collectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commonConfig: (() { final guardedValue = map['commonConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChatEngineCommonConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataStoreIds: (() { final guardedValue = map['dataStoreIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineId: (() { final guardedValue = map['engineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      industryVertical: (() { final guardedValue = map['industryVertical']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
