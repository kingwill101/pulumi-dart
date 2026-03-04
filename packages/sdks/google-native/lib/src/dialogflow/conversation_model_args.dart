// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_article_suggestion_model_metadata.dart';
import 'google_cloud_dialogflow_v2_input_dataset.dart';
import 'google_cloud_dialogflow_v2_smart_reply_model_metadata.dart';

/// {@template pulumi_dialogflow_v2_conversation_model_args_doc}
/// The set of arguments for ConversationModel.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_conversation_model_args_doc}
class ConversationModelArgs {
  /// Metadata for article suggestion models.
  final pulumi.Input<GoogleCloudDialogflowV2ArticleSuggestionModelMetadata>?
  articleSuggestionModelMetadata;

  /// Datasets used to create model.
  final pulumi.Input<List<GoogleCloudDialogflowV2InputDataset>> datasets;

  /// The display name of the model. At most 64 bytes long.
  final pulumi.Input<String> displayName;

  /// Language code for the conversation model. If not specified, the language is en-US. Language at ConversationModel should be set for all non en-us languages. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;

  /// ConversationModel resource name. Format: `projects//conversationModels/`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Metadata for smart reply models.
  final pulumi.Input<GoogleCloudDialogflowV2SmartReplyModelMetadata>?
  smartReplyModelMetadata;

  /// Creates a new [ConversationModelArgs].
  /// [articleSuggestionModelMetadata] Metadata for article suggestion models.
  /// [datasets] Datasets used to create model.
  /// [displayName] The display name of the model. At most 64 bytes long.
  /// [languageCode] Language code for the conversation model. If not specified, the language is en-US. Language at ConversationModel should be set for all non en-us languages. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
  /// [location] Optional.
  /// [name] ConversationModel resource name. Format: `projects//conversationModels/`
  /// [project] Optional.
  /// [smartReplyModelMetadata] Metadata for smart reply models.
  ConversationModelArgs({
    this.articleSuggestionModelMetadata,
    required this.datasets,
    required this.displayName,
    this.languageCode,
    this.location,
    this.name,
    this.project,
    this.smartReplyModelMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'articleSuggestionModelMetadata':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowV2ArticleSuggestionModelMetadata,
            Map<String, dynamic>
          >(articleSuggestionModelMetadata, (value) => value.toMap()),
      'datasets':
          pulumi.Input.mapInputValue<
            List<GoogleCloudDialogflowV2InputDataset>,
            List<Map<String, dynamic>>
          >(
            datasets,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDialogflowV2InputDataset,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'displayName': displayName,
      'languageCode': ?languageCode,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'smartReplyModelMetadata':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowV2SmartReplyModelMetadata,
            Map<String, dynamic>
          >(smartReplyModelMetadata, (value) => value.toMap()),
    };
  }

  factory ConversationModelArgs.fromMap(Map<String, dynamic> map) {
    return ConversationModelArgs(
      articleSuggestionModelMetadata: (() {
        final guardedValue = map['articleSuggestionModelMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowV2ArticleSuggestionModelMetadata.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      datasets: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GoogleCloudDialogflowV2InputDataset>(
          map['datasets']!,
          (value) => GoogleCloudDialogflowV2InputDataset.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      languageCode: (() {
        final guardedValue = map['languageCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      smartReplyModelMetadata: (() {
        final guardedValue = map['smartReplyModelMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowV2SmartReplyModelMetadata.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
