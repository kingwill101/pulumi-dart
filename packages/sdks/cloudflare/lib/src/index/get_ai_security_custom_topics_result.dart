// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_security_custom_topics_topic.dart';

/// Result data returned by getAiSecurityCustomTopics.
class GetAiSecurityCustomTopicsResult {
  /// Defines the zone.
  final String? id;
  /// Custom topic categories for AI Security for Apps content detection.
  final List<GetAiSecurityCustomTopicsTopic>? topics;
  /// Defines the zone.
  final String? zoneId;

  /// Creates a new [GetAiSecurityCustomTopicsResult].
  /// [id] Defines the zone.
  /// [topics] Custom topic categories for AI Security for Apps content detection.
  /// [zoneId] Defines the zone.
  const GetAiSecurityCustomTopicsResult({
    this.id,
    this.topics,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'topics': ?(() { final guardedValue = topics; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAiSecurityCustomTopicsTopic, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetAiSecurityCustomTopicsResult.fromMap(Map<String, dynamic> map) {
    return GetAiSecurityCustomTopicsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      topics: (() { final guardedValue = map['topics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAiSecurityCustomTopicsTopic>(guardedValue, (value) => GetAiSecurityCustomTopicsTopic.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
