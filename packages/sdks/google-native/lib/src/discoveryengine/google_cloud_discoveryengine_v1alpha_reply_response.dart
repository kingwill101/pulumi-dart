// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1alpha_reply_reference_response.dart';
import 'google_cloud_discoveryengine_v1alpha_search_response_summary_response.dart';

/// Defines a reply message to user.
class GoogleCloudDiscoveryengineV1alphaReplyResponse {
  /// References in the reply.
  final List<GoogleCloudDiscoveryengineV1alphaReplyReferenceResponse> references;
  /// DEPRECATED: use `summary` instead. Text reply.
  final String reply;
  /// Summary based on search results.
  final GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryResponse summary;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaReplyResponse].
  /// [references] References in the reply.
  /// [reply] DEPRECATED: use `summary` instead. Text reply.
  /// [summary] Summary based on search results.
  GoogleCloudDiscoveryengineV1alphaReplyResponse({
    required this.references,
    required this.reply,
    required this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'references': pulumi.Input.encodeList<GoogleCloudDiscoveryengineV1alphaReplyReferenceResponse, Map<String, dynamic>>(references, (value) => value.toMap()),
      'reply': reply,
      'summary': summary.toMap(),
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaReplyResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaReplyResponse(
      references: pulumi.Input.decodeList<GoogleCloudDiscoveryengineV1alphaReplyReferenceResponse>(map['references'], (value) => GoogleCloudDiscoveryengineV1alphaReplyReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      reply: map['reply'] as String,
      summary: GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryResponse.fromMap((map['summary'] as Map).cast<String, dynamic>()),
    );
  }
}

