// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_ai_security_custom_topics_get_ai_security_custom_topics_args_doc}
/// Arguments for getAiSecurityCustomTopics.
/// {@endtemplate}
/// {@macro pulumi_index_get_ai_security_custom_topics_get_ai_security_custom_topics_args_doc}
class GetAiSecurityCustomTopicsArgs {
  /// Defines the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetAiSecurityCustomTopicsArgs].
  /// [zoneId] Defines the zone.
  const GetAiSecurityCustomTopicsArgs({
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': zoneId,
    };
  }

  factory GetAiSecurityCustomTopicsArgs.fromMap(Map<String, dynamic> map) {
    return GetAiSecurityCustomTopicsArgs(
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
