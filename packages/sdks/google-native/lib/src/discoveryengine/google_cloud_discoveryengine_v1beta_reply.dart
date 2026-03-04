// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1beta_reply_reference.dart';
import 'google_cloud_discoveryengine_v1beta_search_response_summary.dart';

/// Defines a reply message to user.
class GoogleCloudDiscoveryengineV1betaReply {
  /// References in the reply.
  final pulumi.Input<List<GoogleCloudDiscoveryengineV1betaReplyReference>>?
  references;

  /// DEPRECATED: use `summary` instead. Text reply.
  final pulumi.Input<String>? reply;

  /// Summary based on search results.
  final pulumi.Input<GoogleCloudDiscoveryengineV1betaSearchResponseSummary>?
  summary;

  /// Creates a new [GoogleCloudDiscoveryengineV1betaReply].
  /// [references] References in the reply.
  /// [reply] DEPRECATED: use `summary` instead. Text reply.
  /// [summary] Summary based on search results.
  GoogleCloudDiscoveryengineV1betaReply({
    this.references,
    this.reply,
    this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'references':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudDiscoveryengineV1betaReplyReference>,
            List<Map<String, dynamic>>
          >(
            references,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDiscoveryengineV1betaReplyReference,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'reply': ?reply,
      'summary':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDiscoveryengineV1betaSearchResponseSummary,
            Map<String, dynamic>
          >(summary, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDiscoveryengineV1betaReply.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDiscoveryengineV1betaReply(
      references: (() {
        final guardedValue = map['references'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<GoogleCloudDiscoveryengineV1betaReplyReference>(
            guardedValue,
            (value) => GoogleCloudDiscoveryengineV1betaReplyReference.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      reply: (() {
        final guardedValue = map['reply'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      summary: (() {
        final guardedValue = map['summary'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDiscoveryengineV1betaSearchResponseSummary.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
