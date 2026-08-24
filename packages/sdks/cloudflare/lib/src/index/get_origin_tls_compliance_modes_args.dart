// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_origin_tls_compliance_modes_get_origin_tls_compliance_modes_args_doc}
/// Arguments for getOriginTlsComplianceModes.
/// {@endtemplate}
/// {@macro pulumi_index_get_origin_tls_compliance_modes_get_origin_tls_compliance_modes_args_doc}
class GetOriginTlsComplianceModesArgs {
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetOriginTlsComplianceModesArgs].
  /// [zoneId] Identifier.
  const GetOriginTlsComplianceModesArgs({
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': zoneId,
    };
  }

  factory GetOriginTlsComplianceModesArgs.fromMap(Map<String, dynamic> map) {
    return GetOriginTlsComplianceModesArgs(
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
