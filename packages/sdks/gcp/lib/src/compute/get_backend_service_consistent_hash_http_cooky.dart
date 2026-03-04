// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_service_consistent_hash_http_cooky_ttl.dart';

class GetBackendServiceConsistentHashHttpCooky {
  /// The name of the Backend Service.
  ///
  /// - - -
  final pulumi.Input<String> name;

  /// Path to set for the cookie.
  final pulumi.Input<String> path;

  /// Lifetime of the cookie.
  final pulumi.Input<List<GetBackendServiceConsistentHashHttpCookyTtl>> ttls;

  /// Creates a new [GetBackendServiceConsistentHashHttpCooky].
  /// [name] The name of the Backend Service.
  /// [path] Path to set for the cookie.
  /// [ttls] Lifetime of the cookie.
  GetBackendServiceConsistentHashHttpCooky({
    required this.name,
    required this.path,
    required this.ttls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'path': path,
      'ttls':
          pulumi.Input.mapInputValue<
            List<GetBackendServiceConsistentHashHttpCookyTtl>,
            List<Map<String, dynamic>>
          >(
            ttls,
            (value) =>
                pulumi.Input.encodeList<
                  GetBackendServiceConsistentHashHttpCookyTtl,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetBackendServiceConsistentHashHttpCooky.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetBackendServiceConsistentHashHttpCooky(
      name: pulumi.Input.fromValue(map['name'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      ttls: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetBackendServiceConsistentHashHttpCookyTtl>(
          map['ttls']!,
          (value) => GetBackendServiceConsistentHashHttpCookyTtl.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
