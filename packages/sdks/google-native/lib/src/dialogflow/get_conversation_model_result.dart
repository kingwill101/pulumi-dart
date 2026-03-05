// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_article_suggestion_model_metadata_response.dart';
import 'google_cloud_dialogflow_v2_input_dataset_response.dart';
import 'google_cloud_dialogflow_v2_smart_reply_model_metadata_response.dart';

/// Result data returned by getConversationModel.
class GetConversationModelResult {
  /// Metadata for article suggestion models.
  final GoogleCloudDialogflowV2ArticleSuggestionModelMetadataResponse articleSuggestionModelMetadata;
  /// Creation time of this model.
  final String createTime;
  /// Datasets used to create model.
  final List<GoogleCloudDialogflowV2InputDatasetResponse> datasets;
  /// The display name of the model. At most 64 bytes long.
  final String displayName;
  /// Language code for the conversation model. If not specified, the language is en-US. Language at ConversationModel should be set for all non en-us languages. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
  final String languageCode;
  /// ConversationModel resource name. Format: `projects//conversationModels/`
  final String name;
  /// Metadata for smart reply models.
  final GoogleCloudDialogflowV2SmartReplyModelMetadataResponse smartReplyModelMetadata;
  /// State of the model. A model can only serve prediction requests after it gets deployed.
  final String state;

  /// Creates a new [GetConversationModelResult].
  /// [articleSuggestionModelMetadata] Metadata for article suggestion models.
  /// [createTime] Creation time of this model.
  /// [datasets] Datasets used to create model.
  /// [displayName] The display name of the model. At most 64 bytes long.
  /// [languageCode] Language code for the conversation model. If not specified, the language is en-US. Language at ConversationModel should be set for all non en-us languages. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
  /// [name] ConversationModel resource name. Format: `projects//conversationModels/`
  /// [smartReplyModelMetadata] Metadata for smart reply models.
  /// [state] State of the model. A model can only serve prediction requests after it gets deployed.
  GetConversationModelResult({
    required this.articleSuggestionModelMetadata,
    required this.createTime,
    required this.datasets,
    required this.displayName,
    required this.languageCode,
    required this.name,
    required this.smartReplyModelMetadata,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'articleSuggestionModelMetadata': articleSuggestionModelMetadata.toMap(),
      'createTime': createTime,
      'datasets': pulumi.Input.encodeList<GoogleCloudDialogflowV2InputDatasetResponse, Map<String, dynamic>>(datasets, (value) => value.toMap()),
      'displayName': displayName,
      'languageCode': languageCode,
      'name': name,
      'smartReplyModelMetadata': smartReplyModelMetadata.toMap(),
      'state': state,
    };
  }

  factory GetConversationModelResult.fromMap(Map<String, dynamic> map) {
    return GetConversationModelResult(
      articleSuggestionModelMetadata: GoogleCloudDialogflowV2ArticleSuggestionModelMetadataResponse.fromMap((map['articleSuggestionModelMetadata']! as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      datasets: pulumi.Input.decodeList<GoogleCloudDialogflowV2InputDatasetResponse>(map['datasets']!, (value) => GoogleCloudDialogflowV2InputDatasetResponse.fromMap((value as Map).cast<String, dynamic>())),
      displayName: map['displayName'] as String,
      languageCode: map['languageCode'] as String,
      name: map['name'] as String,
      smartReplyModelMetadata: GoogleCloudDialogflowV2SmartReplyModelMetadataResponse.fromMap((map['smartReplyModelMetadata']! as Map).cast<String, dynamic>()),
      state: map['state'] as String,
    );
  }
}

