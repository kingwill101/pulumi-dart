// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_regional_hostname_regional_hostname_args_doc}
/// The set of arguments for RegionalHostname.
/// {@endtemplate}
/// {@macro pulumi_index_regional_hostname_regional_hostname_args_doc}
class RegionalHostnameArgs {
  /// DNS hostname to be regionalized, must be a subdomain of the zone. Wildcards are supported for one level, e.g `*.example.com`
  final pulumi.Input<String> hostname;
  /// Identifying key for the region
  final pulumi.Input<String> regionKey;
  /// Configure which routing method to use for the regional hostname
  final pulumi.Input<String?>? routing;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [RegionalHostnameArgs].
  /// [hostname] DNS hostname to be regionalized, must be a subdomain of the zone. Wildcards are supported for one level, e.g `*.example.com`
  /// [regionKey] Identifying key for the region
  /// [routing] Configure which routing method to use for the regional hostname
  /// [zoneId] Identifier.
  const RegionalHostnameArgs({
    required this.hostname,
    required this.regionKey,
    this.routing,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'regionKey': regionKey,
      'routing': ?routing,
      'zoneId': zoneId,
    };
  }

  factory RegionalHostnameArgs.fromMap(Map<String, dynamic> map) {
    return RegionalHostnameArgs(
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      regionKey: pulumi.Input.fromValue(map['regionKey'] as String),
      routing: (() { final guardedValue = map['routing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
