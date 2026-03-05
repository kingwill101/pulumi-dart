// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_conversation_info_response.dart';
import 'google_cloud_dialogflow_v2_input_config_response.dart';

/// Result data returned by getConversationDataset.
class GetConversationDatasetResult {
  /// The number of conversations this conversation dataset contains.
  final String conversationCount;
  /// Metadata set during conversation data import.
  final GoogleCloudDialogflowV2ConversationInfoResponse conversationInfo;
  /// Creation time of this dataset.
  final String createTime;
  /// Optional. The description of the dataset. Maximum of 10000 bytes.
  final String description;
  /// The display name of the dataset. Maximum of 64 bytes.
  final String displayName;
  /// Input configurations set during conversation data import.
  final GoogleCloudDialogflowV2InputConfigResponse inputConfig;
  /// ConversationDataset resource name. Format: `projects//locations//conversationDatasets/`
  final String name;

  /// Creates a new [GetConversationDatasetResult].
  /// [conversationCount] The number of conversations this conversation dataset contains.
  /// [conversationInfo] Metadata set during conversation data import.
  /// [createTime] Creation time of this dataset.
  /// [description] Optional. The description of the dataset. Maximum of 10000 bytes.
  /// [displayName] The display name of the dataset. Maximum of 64 bytes.
  /// [inputConfig] Input configurations set during conversation data import.
  /// [name] ConversationDataset resource name. Format: `projects//locations//conversationDatasets/`
  GetConversationDatasetResult({
    required this.conversationCount,
    required this.conversationInfo,
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.inputConfig,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationCount': conversationCount,
      'conversationInfo': conversationInfo.toMap(),
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'inputConfig': inputConfig.toMap(),
      'name': name,
    };
  }

  factory GetConversationDatasetResult.fromMap(Map<String, dynamic> map) {
    return GetConversationDatasetResult(
      conversationCount: map['conversationCount'] as String,
      conversationInfo: GoogleCloudDialogflowV2ConversationInfoResponse.fromMap((map['conversationInfo']! as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      inputConfig: GoogleCloudDialogflowV2InputConfigResponse.fromMap((map['inputConfig']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

