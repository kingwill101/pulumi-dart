// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWaitingRoomAdditionalRoute {
  /// The hostname to which this waiting room will be applied (no wildcards). The hostname must be the primary domain, subdomain, or custom hostname (if using SSL for SaaS) of this zone. Please do not include the scheme (http:// or https://).
  final pulumi.Input<String> host;
  /// Sets the path within the host to enable the waiting room on. The waiting room will be enabled for all subpaths as well. If there are two waiting rooms on the same subpath, the waiting room for the most specific path will be chosen. Wildcards and query parameters are not supported.
  final pulumi.Input<String> path;

  /// Creates a new [GetWaitingRoomAdditionalRoute].
  /// [host] The hostname to which this waiting room will be applied (no wildcards). The hostname must be the primary domain, subdomain, or custom hostname (if using SSL for SaaS) of this zone. Please do not include the scheme (http:// or https://).
  /// [path] Sets the path within the host to enable the waiting room on. The waiting room will be enabled for all subpaths as well. If there are two waiting rooms on the same subpath, the waiting room for the most specific path will be chosen. Wildcards and query parameters are not supported.
  const GetWaitingRoomAdditionalRoute({
    required this.host,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'path': path,
    };
  }

  factory GetWaitingRoomAdditionalRoute.fromMap(Map<String, dynamic> map) {
    return GetWaitingRoomAdditionalRoute(
      host: pulumi.Input.fromValue(map['host'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
