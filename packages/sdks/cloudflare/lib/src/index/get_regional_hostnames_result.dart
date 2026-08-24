// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionalHostnamesResult {
  /// When the regional hostname was created
  final pulumi.Input<String> createdOn;
  /// DNS hostname to be regionalized, must be a subdomain of the zone. Wildcards are supported for one level, e.g `*.example.com`
  final pulumi.Input<String> hostname;
  /// DNS hostname to be regionalized, must be a subdomain of the zone. Wildcards are supported for one level, e.g `*.example.com`
  final pulumi.Input<String> id;
  /// Identifying key for the region
  final pulumi.Input<String> regionKey;
  /// Configure which routing method to use for the regional hostname
  final pulumi.Input<String> routing;

  /// Creates a new [GetRegionalHostnamesResult].
  /// [createdOn] When the regional hostname was created
  /// [hostname] DNS hostname to be regionalized, must be a subdomain of the zone. Wildcards are supported for one level, e.g `*.example.com`
  /// [id] DNS hostname to be regionalized, must be a subdomain of the zone. Wildcards are supported for one level, e.g `*.example.com`
  /// [regionKey] Identifying key for the region
  /// [routing] Configure which routing method to use for the regional hostname
  const GetRegionalHostnamesResult({
    required this.createdOn,
    required this.hostname,
    required this.id,
    required this.regionKey,
    required this.routing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': createdOn,
      'hostname': hostname,
      'id': id,
      'regionKey': regionKey,
      'routing': routing,
    };
  }

  factory GetRegionalHostnamesResult.fromMap(Map<String, dynamic> map) {
    return GetRegionalHostnamesResult(
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      regionKey: pulumi.Input.fromValue(map['regionKey'] as String),
      routing: pulumi.Input.fromValue(map['routing'] as String),
    );
  }
}
