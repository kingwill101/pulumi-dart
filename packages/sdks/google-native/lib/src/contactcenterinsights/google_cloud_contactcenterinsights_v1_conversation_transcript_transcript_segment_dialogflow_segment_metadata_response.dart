// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata from Dialogflow relating to the current transcript segment.
class GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadataResponse {
  /// Whether the transcript segment was covered under the configured smart reply allowlist in Agent Assist.
  final pulumi.Input<bool> smartReplyAllowlistCovered;

  /// Creates a new [GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadataResponse].
  /// [smartReplyAllowlistCovered] Whether the transcript segment was covered under the configured smart reply allowlist in Agent Assist.
  GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadataResponse({
    required this.smartReplyAllowlistCovered,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'smartReplyAllowlistCovered': smartReplyAllowlistCovered,
    };
  }

  factory GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadataResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadataResponse(
      smartReplyAllowlistCovered: pulumi.Input.fromValue(
        map['smartReplyAllowlistCovered'] as bool,
      ),
    );
  }
}
