// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration used for Private Service Connect connections. Used when Infrastructure is PSC.
class PscConfigResponse {
  /// Optional. Max number of PSC connections for this policy.
  final pulumi.Input<String> limit;
  /// The resource paths of subnetworks to use for IP address management. Example: projects/{projectNumOrId}/regions/{region}/subnetworks/{resourceId}.
  final pulumi.Input<List<String>> subnetworks;

  /// Creates a new [PscConfigResponse].
  /// [limit] Optional. Max number of PSC connections for this policy.
  /// [subnetworks] The resource paths of subnetworks to use for IP address management. Example: projects/{projectNumOrId}/regions/{region}/subnetworks/{resourceId}.
  PscConfigResponse({
    required this.limit,
    required this.subnetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limit': limit,
      'subnetworks': subnetworks,
    };
  }

  factory PscConfigResponse.fromMap(Map<String, dynamic> map) {
    return PscConfigResponse(
      limit: (map['limit'] as String).input(),
      subnetworks: ((map['subnetworks'] as List).cast<String>()).input(),
    );
  }
}

