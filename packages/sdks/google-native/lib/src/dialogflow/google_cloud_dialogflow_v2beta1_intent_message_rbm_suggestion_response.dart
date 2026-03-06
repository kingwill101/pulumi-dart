// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_suggested_action_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_suggested_reply_response.dart';

/// Rich Business Messaging (RBM) suggestion. Suggestions allow user to easily select/click a predefined response or perform an action (like opening a web uri).
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse {
  /// Predefined client side actions that user can choose
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionResponse> action;
  /// Predefined replies for user to select instead of typing
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReplyResponse> reply;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse].
  /// [action] Predefined client side actions that user can choose
  /// [reply] Predefined replies for user to select instead of typing
  const GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse({
    required this.action,
    required this.reply,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionResponse, Map<String, dynamic>>(action, (value) => value.toMap()),
      'reply': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReplyResponse, Map<String, dynamic>>(reply, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse(
      action: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionResponse.fromMap((map['action']! as Map).cast<String, dynamic>())),
      reply: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReplyResponse.fromMap((map['reply']! as Map).cast<String, dynamic>())),
    );
  }
}

