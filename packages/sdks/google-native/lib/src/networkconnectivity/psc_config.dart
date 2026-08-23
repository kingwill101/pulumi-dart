// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration used for Private Service Connect connections. Used when Infrastructure is PSC.
class PscConfig {
  /// Optional. Max number of PSC connections for this policy.
  final pulumi.Input<String>? limit;
  /// The resource paths of subnetworks to use for IP address management. Example: projects/{projectNumOrId}/regions/{region}/subnetworks/{resourceId}.
  final pulumi.Input<List<String>>? subnetworks;

  /// Creates a new [PscConfig].
  /// [limit] Optional. Max number of PSC connections for this policy.
  /// [subnetworks] The resource paths of subnetworks to use for IP address management. Example: projects/{projectNumOrId}/regions/{region}/subnetworks/{resourceId}.
  const PscConfig({
    this.limit,
    this.subnetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limit': ?limit,
      'subnetworks': ?subnetworks,
    };
  }

  factory PscConfig.fromMap(Map<String, dynamic> map) {
    return PscConfig(
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetworks: (() { final guardedValue = map['subnetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
