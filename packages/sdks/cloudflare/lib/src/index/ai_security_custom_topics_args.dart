// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_security_custom_topics_topic.dart';

/// {@template pulumi_index_ai_security_custom_topics_ai_security_custom_topics_args_doc}
/// The set of arguments for AiSecurityCustomTopics.
/// {@endtemplate}
/// {@macro pulumi_index_ai_security_custom_topics_ai_security_custom_topics_args_doc}
class AiSecurityCustomTopicsArgs {
  /// Custom topic categories for AI Security for Apps content detection.
  final pulumi.Input<List<AiSecurityCustomTopicsTopic>?>? topics;
  /// Defines the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [AiSecurityCustomTopicsArgs].
  /// [topics] Custom topic categories for AI Security for Apps content detection.
  /// [zoneId] Defines the zone.
  const AiSecurityCustomTopicsArgs({
    this.topics,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topics': ?pulumi.Input.mapOptionalInputValue<List<AiSecurityCustomTopicsTopic>, List<Map<String, dynamic>>>(topics, (value) => pulumi.Input.encodeList<AiSecurityCustomTopicsTopic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': zoneId,
    };
  }

  factory AiSecurityCustomTopicsArgs.fromMap(Map<String, dynamic> map) {
    return AiSecurityCustomTopicsArgs(
      topics: (() { final guardedValue = map['topics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiSecurityCustomTopicsTopic>(guardedValue, (value) => AiSecurityCustomTopicsTopic.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
