// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission_constraint.dart';

/// [Deprecated] All fields defined in a permission are ANDed.
class Permission {
  /// Extra custom constraints. The constraints are ANDed together.
  final pulumi.Input<List<PermissionConstraint>>? constraints;
  /// Used in Ingress or Egress Gateway cases to specify hosts that the policy applies to. Exact match, prefix match, and suffix match are supported.
  final pulumi.Input<List<String>>? hosts;
  /// HTTP method.
  final pulumi.Input<List<String>>? methods;
  /// Negate of hosts. Specifies exclusions.
  final pulumi.Input<List<String>>? notHosts;
  /// Negate of methods. Specifies exclusions.
  final pulumi.Input<List<String>>? notMethods;
  /// Negate of paths. Specifies exclusions.
  final pulumi.Input<List<String>>? notPaths;
  /// Negate of ports. Specifies exclusions.
  final pulumi.Input<List<String>>? notPorts;
  /// HTTP request paths or gRPC methods. Exact match, prefix match, and suffix match are supported.
  final pulumi.Input<List<String>>? paths;
  /// Port names or numbers.
  final pulumi.Input<List<String>>? ports;

  /// Creates a new [Permission].
  /// [constraints] Extra custom constraints. The constraints are ANDed together.
  /// [hosts] Used in Ingress or Egress Gateway cases to specify hosts that the policy applies to. Exact match, prefix match, and suffix match are supported.
  /// [methods] HTTP method.
  /// [notHosts] Negate of hosts. Specifies exclusions.
  /// [notMethods] Negate of methods. Specifies exclusions.
  /// [notPaths] Negate of paths. Specifies exclusions.
  /// [notPorts] Negate of ports. Specifies exclusions.
  /// [paths] HTTP request paths or gRPC methods. Exact match, prefix match, and suffix match are supported.
  /// [ports] Port names or numbers.
  Permission({
    this.constraints,
    this.hosts,
    this.methods,
    this.notHosts,
    this.notMethods,
    this.notPaths,
    this.notPorts,
    this.paths,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraints': ?pulumi.Input.mapOptionalInputValue<List<PermissionConstraint>, List<Map<String, dynamic>>>(constraints, (value) => pulumi.Input.encodeList<PermissionConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hosts': ?hosts,
      'methods': ?methods,
      'notHosts': ?notHosts,
      'notMethods': ?notMethods,
      'notPaths': ?notPaths,
      'notPorts': ?notPorts,
      'paths': ?paths,
      'ports': ?ports,
    };
  }

  factory Permission.fromMap(Map<String, dynamic> map) {
    return Permission(
      constraints: map['constraints'] == null ? null : (pulumi.Input.decodeList<PermissionConstraint>(map['constraints']!, (value) => PermissionConstraint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hosts: map['hosts'] == null ? null : ((map['hosts']! as List).cast<String>()).input(),
      methods: map['methods'] == null ? null : ((map['methods']! as List).cast<String>()).input(),
      notHosts: map['notHosts'] == null ? null : ((map['notHosts']! as List).cast<String>()).input(),
      notMethods: map['notMethods'] == null ? null : ((map['notMethods']! as List).cast<String>()).input(),
      notPaths: map['notPaths'] == null ? null : ((map['notPaths']! as List).cast<String>()).input(),
      notPorts: map['notPorts'] == null ? null : ((map['notPorts']! as List).cast<String>()).input(),
      paths: map['paths'] == null ? null : ((map['paths']! as List).cast<String>()).input(),
      ports: map['ports'] == null ? null : ((map['ports']! as List).cast<String>()).input(),
    );
  }
}

