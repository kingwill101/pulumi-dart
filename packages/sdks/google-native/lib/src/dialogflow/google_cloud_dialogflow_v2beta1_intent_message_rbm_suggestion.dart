// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_suggested_action.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_suggested_reply.dart';

/// Rich Business Messaging (RBM) suggestion. Suggestions allow user to easily select/click a predefined response or perform an action (like opening a web uri).
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion {
  /// Predefined client side actions that user can choose
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction>? action;
  /// Predefined replies for user to select instead of typing
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply>? reply;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion].
  /// [action] Predefined client side actions that user can choose
  /// [reply] Predefined replies for user to select instead of typing
  const GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion({
    this.action,
    this.reply,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'reply': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply, Map<String, dynamic>>(reply, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reply: (() { final guardedValue = map['reply']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

