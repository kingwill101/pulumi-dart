// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_conversation_info_response.dart';
import 'google_cloud_dialogflow_v2_input_config_response.dart';

/// Result data returned by getConversationDataset.
class GetConversationDatasetResult {
  /// The number of conversations this conversation dataset contains.
  final String? conversationCount;
  /// Metadata set during conversation data import.
  final GoogleCloudDialogflowV2ConversationInfoResponse? conversationInfo;
  /// Creation time of this dataset.
  final String? createTime;
  /// Optional. The description of the dataset. Maximum of 10000 bytes.
  final String? description;
  /// The display name of the dataset. Maximum of 64 bytes.
  final String? displayName;
  /// Input configurations set during conversation data import.
  final GoogleCloudDialogflowV2InputConfigResponse? inputConfig;
  /// ConversationDataset resource name. Format: `projects//locations//conversationDatasets/`
  final String? name;

  /// Creates a new [GetConversationDatasetResult].
  /// [conversationCount] The number of conversations this conversation dataset contains.
  /// [conversationInfo] Metadata set during conversation data import.
  /// [createTime] Creation time of this dataset.
  /// [description] Optional. The description of the dataset. Maximum of 10000 bytes.
  /// [displayName] The display name of the dataset. Maximum of 64 bytes.
  /// [inputConfig] Input configurations set during conversation data import.
  /// [name] ConversationDataset resource name. Format: `projects//locations//conversationDatasets/`
  const GetConversationDatasetResult({
    this.conversationCount,
    this.conversationInfo,
    this.createTime,
    this.description,
    this.displayName,
    this.inputConfig,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationCount': ?conversationCount,
      'conversationInfo': ?conversationInfo?.toMap(),
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'inputConfig': ?inputConfig?.toMap(),
      'name': ?name,
    };
  }

  factory GetConversationDatasetResult.fromMap(Map<String, dynamic> map) {
    return GetConversationDatasetResult(
      conversationCount: (() { final guardedValue = map['conversationCount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      conversationInfo: (() { final guardedValue = map['conversationInfo']; if (guardedValue == null) return null; return GoogleCloudDialogflowV2ConversationInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inputConfig: (() { final guardedValue = map['inputConfig']; if (guardedValue == null) return null; return GoogleCloudDialogflowV2InputConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
