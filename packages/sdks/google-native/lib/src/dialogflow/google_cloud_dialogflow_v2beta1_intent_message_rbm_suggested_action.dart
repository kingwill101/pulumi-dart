// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_suggested_action_rbm_suggested_action_dial.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_suggested_action_rbm_suggested_action_open_uri.dart';

/// Rich Business Messaging (RBM) suggested client-side action that the user can choose from the card.
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction {
  /// Suggested client side action: Dial a phone number
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial>? dial;
  /// Suggested client side action: Open a URI on device
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri>? openUrl;
  /// Opaque payload that the Dialogflow receives in a user event when the user taps the suggested action. This data will be also forwarded to webhook to allow performing custom business logic.
  final pulumi.Input<String>? postbackData;
  /// Suggested client side action: Share user location
  final pulumi.Input<Map<String, dynamic>>? shareLocation;
  /// Text to display alongside the action.
  final pulumi.Input<String>? text;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction].
  /// [dial] Suggested client side action: Dial a phone number
  /// [openUrl] Suggested client side action: Open a URI on device
  /// [postbackData] Opaque payload that the Dialogflow receives in a user event when the user taps the suggested action. This data will be also forwarded to webhook to allow performing custom business logic.
  /// [shareLocation] Suggested client side action: Share user location
  /// [text] Text to display alongside the action.
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction({
    this.dial,
    this.openUrl,
    this.postbackData,
    this.shareLocation,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dial': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial, Map<String, dynamic>>(dial, (value) => value.toMap()),
      'openUrl': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri, Map<String, dynamic>>(openUrl, (value) => value.toMap()),
      'postbackData': ?postbackData,
      'shareLocation': ?shareLocation,
      'text': ?text,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction(
      dial: map['dial'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial.fromMap((map['dial']! as Map).cast<String, dynamic>())).input(),
      openUrl: map['openUrl'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri.fromMap((map['openUrl']! as Map).cast<String, dynamic>())).input(),
      postbackData: map['postbackData'] == null ? null : (map['postbackData']! as String).input(),
      shareLocation: map['shareLocation'] == null ? null : ((map['shareLocation']! as Map).cast<String, dynamic>()).input(),
      text: map['text'] == null ? null : (map['text']! as String).input(),
    );
  }
}

