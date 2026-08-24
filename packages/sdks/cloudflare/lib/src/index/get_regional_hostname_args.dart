// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_regional_hostname_get_regional_hostname_args_doc}
/// Arguments for getRegionalHostname.
/// {@endtemplate}
/// {@macro pulumi_index_get_regional_hostname_get_regional_hostname_args_doc}
class GetRegionalHostnameArgs {
  /// DNS hostname to be regionalized, must be a subdomain of the zone. Wildcards are supported for one level, e.g `*.example.com`
  final pulumi.Input<String> hostname;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetRegionalHostnameArgs].
  /// [hostname] DNS hostname to be regionalized, must be a subdomain of the zone. Wildcards are supported for one level, e.g `*.example.com`
  /// [zoneId] Identifier.
  const GetRegionalHostnameArgs({
    required this.hostname,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'zoneId': ?zoneId,
    };
  }

  factory GetRegionalHostnameArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionalHostnameArgs(
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
