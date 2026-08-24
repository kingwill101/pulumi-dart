// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_origin_tls_compliance_modes_origin_tls_compliance_modes_args_doc}
/// The set of arguments for OriginTlsComplianceModes.
/// {@endtemplate}
/// {@macro pulumi_index_origin_tls_compliance_modes_origin_tls_compliance_modes_args_doc}
class OriginTlsComplianceModesArgs {
  /// List of TLS compliance modes that constrain the key-exchange algorithms Cloudflare may use when establishing the TLS connection to the zone's origin. Currently supported values are `fips` (FIPS-approved curves) and `pqh` (post-quantum hybrid). Future modes (e.g. `cnsa2`) may be added; clients should treat unknown values as opaque strings. Multiple modes are combined as the intersection of their permitted algorithm lists; selections whose intersection is empty are rejected. An empty list clears the constraint.
  final pulumi.Input<List<String>> values;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [OriginTlsComplianceModesArgs].
  /// [values] List of TLS compliance modes that constrain the key-exchange algorithms Cloudflare may use when establishing the TLS connection to the zone's origin. Currently supported values are `fips` (FIPS-approved curves) and `pqh` (post-quantum hybrid). Future modes (e.g. `cnsa2`) may be added; clients should treat unknown values as opaque strings. Multiple modes are combined as the intersection of their permitted algorithm lists; selections whose intersection is empty are rejected. An empty list clears the constraint.
  /// [zoneId] Identifier.
  const OriginTlsComplianceModesArgs({
    required this.values,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
      'zoneId': zoneId,
    };
  }

  factory OriginTlsComplianceModesArgs.fromMap(Map<String, dynamic> map) {
    return OriginTlsComplianceModesArgs(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
