// ignore_for_file: unused_element, unnecessary_cast


/// Represents a single followup intent in the chain.
class GoogleCloudDialogflowV2beta1IntentFollowupIntentInfoResponse {
  /// The unique identifier of the followup intent. Format: `projects//agent/intents/`.
  final String followupIntentName;
  /// The unique identifier of the followup intent's parent. Format: `projects//agent/intents/`.
  final String parentFollowupIntentName;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentFollowupIntentInfoResponse].
  /// [followupIntentName] The unique identifier of the followup intent. Format: `projects//agent/intents/`.
  /// [parentFollowupIntentName] The unique identifier of the followup intent's parent. Format: `projects//agent/intents/`.
  GoogleCloudDialogflowV2beta1IntentFollowupIntentInfoResponse({
    required this.followupIntentName,
    required this.parentFollowupIntentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'followupIntentName': followupIntentName,
      'parentFollowupIntentName': parentFollowupIntentName,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentFollowupIntentInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentFollowupIntentInfoResponse(
      followupIntentName: map['followupIntentName'] as String,
      parentFollowupIntentName: map['parentFollowupIntentName'] as String,
    );
  }
}

