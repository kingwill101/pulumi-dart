// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission_constraint_response.dart';

/// [Deprecated] All fields defined in a permission are ANDed.
class PermissionResponse {
  /// Extra custom constraints. The constraints are ANDed together.
  final pulumi.Input<List<PermissionConstraintResponse>> constraints;
  /// Used in Ingress or Egress Gateway cases to specify hosts that the policy applies to. Exact match, prefix match, and suffix match are supported.
  final pulumi.Input<List<String>> hosts;
  /// HTTP method.
  final pulumi.Input<List<String>> methods;
  /// Negate of hosts. Specifies exclusions.
  final pulumi.Input<List<String>> notHosts;
  /// Negate of methods. Specifies exclusions.
  final pulumi.Input<List<String>> notMethods;
  /// Negate of paths. Specifies exclusions.
  final pulumi.Input<List<String>> notPaths;
  /// Negate of ports. Specifies exclusions.
  final pulumi.Input<List<String>> notPorts;
  /// HTTP request paths or gRPC methods. Exact match, prefix match, and suffix match are supported.
  final pulumi.Input<List<String>> paths;
  /// Port names or numbers.
  final pulumi.Input<List<String>> ports;

  /// Creates a new [PermissionResponse].
  /// [constraints] Extra custom constraints. The constraints are ANDed together.
  /// [hosts] Used in Ingress or Egress Gateway cases to specify hosts that the policy applies to. Exact match, prefix match, and suffix match are supported.
  /// [methods] HTTP method.
  /// [notHosts] Negate of hosts. Specifies exclusions.
  /// [notMethods] Negate of methods. Specifies exclusions.
  /// [notPaths] Negate of paths. Specifies exclusions.
  /// [notPorts] Negate of ports. Specifies exclusions.
  /// [paths] HTTP request paths or gRPC methods. Exact match, prefix match, and suffix match are supported.
  /// [ports] Port names or numbers.
  const PermissionResponse({
    required this.constraints,
    required this.hosts,
    required this.methods,
    required this.notHosts,
    required this.notMethods,
    required this.notPaths,
    required this.notPorts,
    required this.paths,
    required this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraints': pulumi.Input.mapInputValue<List<PermissionConstraintResponse>, List<Map<String, dynamic>>>(constraints, (value) => pulumi.Input.encodeList<PermissionConstraintResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hosts': hosts,
      'methods': methods,
      'notHosts': notHosts,
      'notMethods': notMethods,
      'notPaths': notPaths,
      'notPorts': notPorts,
      'paths': paths,
      'ports': ports,
    };
  }

  factory PermissionResponse.fromMap(Map<String, dynamic> map) {
    return PermissionResponse(
      constraints: pulumi.Input.fromValue(pulumi.Input.decodeList<PermissionConstraintResponse>(map['constraints']!, (value) => PermissionConstraintResponse.fromMap((value as Map).cast<String, dynamic>()))),
      hosts: pulumi.Input.fromValue((map['hosts'] as List).cast<String>()),
      methods: pulumi.Input.fromValue((map['methods'] as List).cast<String>()),
      notHosts: pulumi.Input.fromValue((map['notHosts'] as List).cast<String>()),
      notMethods: pulumi.Input.fromValue((map['notMethods'] as List).cast<String>()),
      notPaths: pulumi.Input.fromValue((map['notPaths'] as List).cast<String>()),
      notPorts: pulumi.Input.fromValue((map['notPorts'] as List).cast<String>()),
      paths: pulumi.Input.fromValue((map['paths'] as List).cast<String>()),
      ports: pulumi.Input.fromValue((map['ports'] as List).cast<String>()),
    );
  }
}

