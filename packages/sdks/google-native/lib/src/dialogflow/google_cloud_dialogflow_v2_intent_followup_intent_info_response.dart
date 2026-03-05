// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a single followup intent in the chain.
class GoogleCloudDialogflowV2IntentFollowupIntentInfoResponse {
  /// The unique identifier of the followup intent. Format: `projects//agent/intents/`.
  final pulumi.Input<String> followupIntentName;
  /// The unique identifier of the followup intent's parent. Format: `projects//agent/intents/`.
  final pulumi.Input<String> parentFollowupIntentName;

  /// Creates a new [GoogleCloudDialogflowV2IntentFollowupIntentInfoResponse].
  /// [followupIntentName] The unique identifier of the followup intent. Format: `projects//agent/intents/`.
  /// [parentFollowupIntentName] The unique identifier of the followup intent's parent. Format: `projects//agent/intents/`.
  GoogleCloudDialogflowV2IntentFollowupIntentInfoResponse({
    required this.followupIntentName,
    required this.parentFollowupIntentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'followupIntentName': followupIntentName,
      'parentFollowupIntentName': parentFollowupIntentName,
    };
  }

  factory GoogleCloudDialogflowV2IntentFollowupIntentInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentFollowupIntentInfoResponse(
      followupIntentName: pulumi.Input.fromValue(map['followupIntentName'] as String),
      parentFollowupIntentName: pulumi.Input.fromValue(map['parentFollowupIntentName'] as String),
    );
  }
}

