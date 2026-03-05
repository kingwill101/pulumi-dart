// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1alpha_reply_reference.dart';
import 'google_cloud_discoveryengine_v1alpha_search_response_summary.dart';

/// Defines a reply message to user.
class GoogleCloudDiscoveryengineV1alphaReply {
  /// References in the reply.
  final pulumi.Input<List<GoogleCloudDiscoveryengineV1alphaReplyReference>>? references;
  /// DEPRECATED: use `summary` instead. Text reply.
  final pulumi.Input<String>? reply;
  /// Summary based on search results.
  final pulumi.Input<GoogleCloudDiscoveryengineV1alphaSearchResponseSummary>? summary;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaReply].
  /// [references] References in the reply.
  /// [reply] DEPRECATED: use `summary` instead. Text reply.
  /// [summary] Summary based on search results.
  GoogleCloudDiscoveryengineV1alphaReply({
    this.references,
    this.reply,
    this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'references': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDiscoveryengineV1alphaReplyReference>, List<Map<String, dynamic>>>(references, (value) => pulumi.Input.encodeList<GoogleCloudDiscoveryengineV1alphaReplyReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reply': ?reply,
      'summary': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDiscoveryengineV1alphaSearchResponseSummary, Map<String, dynamic>>(summary, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaReply.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaReply(
      references: (() { final guardedValue = map['references']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDiscoveryengineV1alphaReplyReference>(guardedValue, (value) => GoogleCloudDiscoveryengineV1alphaReplyReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      reply: (() { final guardedValue = map['reply']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      summary: (() { final guardedValue = map['summary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDiscoveryengineV1alphaSearchResponseSummary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

