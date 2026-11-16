// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_security_custom_topics_topic.dart';

/// Input properties used for looking up and filtering AiSecurityCustomTopics resources.
class AiSecurityCustomTopicsState {
  /// Custom topic categories for AI Security for Apps content detection.
  final pulumi.Input<List<AiSecurityCustomTopicsTopic>?>? topics;
  /// Defines the zone.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [AiSecurityCustomTopicsState].
  /// [topics] Custom topic categories for AI Security for Apps content detection.
  /// [zoneId] Defines the zone.
  const AiSecurityCustomTopicsState({
    this.topics,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topics': ?pulumi.Input.mapOptionalInputValue<List<AiSecurityCustomTopicsTopic>, List<Map<String, dynamic>>>(topics, (value) => pulumi.Input.encodeList<AiSecurityCustomTopicsTopic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory AiSecurityCustomTopicsState.fromMap(Map<String, dynamic> map) {
    return AiSecurityCustomTopicsState(
      topics: (() { final guardedValue = map['topics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiSecurityCustomTopicsTopic>(guardedValue, (value) => AiSecurityCustomTopicsTopic.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
