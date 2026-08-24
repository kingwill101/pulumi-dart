// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zone_dnssec_get_zone_dnssec_args_doc}
/// Arguments for getZoneDnssec.
/// {@endtemplate}
/// {@macro pulumi_index_get_zone_dnssec_get_zone_dnssec_args_doc}
class GetZoneDnssecArgs {
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetZoneDnssecArgs].
  /// [zoneId] Identifier.
  const GetZoneDnssecArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetZoneDnssecArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneDnssecArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
