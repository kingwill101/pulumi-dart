// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_ai_security_get_ai_security_args_doc}
/// Arguments for getAiSecurity.
/// {@endtemplate}
/// {@macro pulumi_index_get_ai_security_get_ai_security_args_doc}
class GetAiSecurityArgs {
  /// Defines the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetAiSecurityArgs].
  /// [zoneId] Defines the zone.
  const GetAiSecurityArgs({
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': zoneId,
    };
  }

  factory GetAiSecurityArgs.fromMap(Map<String, dynamic> map) {
    return GetAiSecurityArgs(
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
