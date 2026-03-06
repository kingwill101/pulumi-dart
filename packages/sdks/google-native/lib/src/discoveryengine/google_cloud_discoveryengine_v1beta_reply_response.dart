// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1beta_reply_reference_response.dart';
import 'google_cloud_discoveryengine_v1beta_search_response_summary_response.dart';

/// Defines a reply message to user.
class GoogleCloudDiscoveryengineV1betaReplyResponse {
  /// References in the reply.
  final pulumi.Input<List<GoogleCloudDiscoveryengineV1betaReplyReferenceResponse>> references;
  /// DEPRECATED: use `summary` instead. Text reply.
  final pulumi.Input<String> reply;
  /// Summary based on search results.
  final pulumi.Input<GoogleCloudDiscoveryengineV1betaSearchResponseSummaryResponse> summary;

  /// Creates a new [GoogleCloudDiscoveryengineV1betaReplyResponse].
  /// [references] References in the reply.
  /// [reply] DEPRECATED: use `summary` instead. Text reply.
  /// [summary] Summary based on search results.
  const GoogleCloudDiscoveryengineV1betaReplyResponse({
    required this.references,
    required this.reply,
    required this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'references': pulumi.Input.mapInputValue<List<GoogleCloudDiscoveryengineV1betaReplyReferenceResponse>, List<Map<String, dynamic>>>(references, (value) => pulumi.Input.encodeList<GoogleCloudDiscoveryengineV1betaReplyReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reply': reply,
      'summary': pulumi.Input.mapInputValue<GoogleCloudDiscoveryengineV1betaSearchResponseSummaryResponse, Map<String, dynamic>>(summary, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDiscoveryengineV1betaReplyResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1betaReplyResponse(
      references: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDiscoveryengineV1betaReplyReferenceResponse>(map['references']!, (value) => GoogleCloudDiscoveryengineV1betaReplyReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      reply: pulumi.Input.fromValue(map['reply'] as String),
      summary: pulumi.Input.fromValue(GoogleCloudDiscoveryengineV1betaSearchResponseSummaryResponse.fromMap((map['summary']! as Map).cast<String, dynamic>())),
    );
  }
}

