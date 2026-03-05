// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_service_strong_session_affinity_cooky_ttl.dart';

class GetBackendServiceStrongSessionAffinityCooky {
  /// The name of the Backend Service.
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// Path to set for the cookie.
  final pulumi.Input<String> path;
  /// Lifetime of the cookie.
  final pulumi.Input<List<GetBackendServiceStrongSessionAffinityCookyTtl>> ttls;

  /// Creates a new [GetBackendServiceStrongSessionAffinityCooky].
  /// [name] The name of the Backend Service.
  /// [path] Path to set for the cookie.
  /// [ttls] Lifetime of the cookie.
  GetBackendServiceStrongSessionAffinityCooky({
    required this.name,
    required this.path,
    required this.ttls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'path': path,
      'ttls': pulumi.Input.mapInputValue<List<GetBackendServiceStrongSessionAffinityCookyTtl>, List<Map<String, dynamic>>>(ttls, (value) => pulumi.Input.encodeList<GetBackendServiceStrongSessionAffinityCookyTtl, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetBackendServiceStrongSessionAffinityCooky.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceStrongSessionAffinityCooky(
      name: pulumi.Input.fromValue(map['name'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      ttls: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBackendServiceStrongSessionAffinityCookyTtl>(map['ttls']!, (value) => GetBackendServiceStrongSessionAffinityCookyTtl.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

