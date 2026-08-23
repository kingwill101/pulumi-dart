// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_backend_service_strong_session_affinity_cooky_ttl.dart';

class GetRegionBackendServiceStrongSessionAffinityCooky {
  /// The name of the regional backend service.
  final pulumi.Input<String> name;
  /// Path to set for the cookie.
  final pulumi.Input<String> path;
  /// Lifetime of the cookie.
  final pulumi.Input<List<GetRegionBackendServiceStrongSessionAffinityCookyTtl>> ttls;

  /// Creates a new [GetRegionBackendServiceStrongSessionAffinityCooky].
  /// [name] The name of the regional backend service.
  /// [path] Path to set for the cookie.
  /// [ttls] Lifetime of the cookie.
  const GetRegionBackendServiceStrongSessionAffinityCooky({
    required this.name,
    required this.path,
    required this.ttls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'path': path,
      'ttls': pulumi.Input.mapInputValue<List<GetRegionBackendServiceStrongSessionAffinityCookyTtl>, List<Map<String, dynamic>>>(ttls, (value) => pulumi.Input.encodeList<GetRegionBackendServiceStrongSessionAffinityCookyTtl, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRegionBackendServiceStrongSessionAffinityCooky.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceStrongSessionAffinityCooky(
      name: pulumi.Input.fromValue(map['name'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      ttls: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionBackendServiceStrongSessionAffinityCookyTtl>(map['ttls']!, (value) => GetRegionBackendServiceStrongSessionAffinityCookyTtl.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
