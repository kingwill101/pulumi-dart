// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_backend_service_consistent_hash_http_cooky_ttl.dart';

class GetRegionBackendServiceConsistentHashHttpCooky {
  /// The name of the regional backend service.
  final pulumi.Input<String> name;
  /// Path to set for the cookie.
  final pulumi.Input<String> path;
  /// Lifetime of the cookie.
  final pulumi.Input<List<GetRegionBackendServiceConsistentHashHttpCookyTtl>> ttls;

  /// Creates a new [GetRegionBackendServiceConsistentHashHttpCooky].
  /// [name] The name of the regional backend service.
  /// [path] Path to set for the cookie.
  /// [ttls] Lifetime of the cookie.
  const GetRegionBackendServiceConsistentHashHttpCooky({
    required this.name,
    required this.path,
    required this.ttls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'path': path,
      'ttls': pulumi.Input.mapInputValue<List<GetRegionBackendServiceConsistentHashHttpCookyTtl>, List<Map<String, dynamic>>>(ttls, (value) => pulumi.Input.encodeList<GetRegionBackendServiceConsistentHashHttpCookyTtl, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRegionBackendServiceConsistentHashHttpCooky.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceConsistentHashHttpCooky(
      name: pulumi.Input.fromValue(map['name'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      ttls: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionBackendServiceConsistentHashHttpCookyTtl>(map['ttls']!, (value) => GetRegionBackendServiceConsistentHashHttpCookyTtl.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
