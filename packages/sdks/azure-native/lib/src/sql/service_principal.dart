// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The managed instance's service principal configuration for a resource.
class ServicePrincipal {
  /// Service principal type.
  final pulumi.Input<String>? type;

  /// Creates a new [ServicePrincipal].
  /// [type] Service principal type.
  ServicePrincipal({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory ServicePrincipal.fromMap(Map<String, dynamic> map) {
    return ServicePrincipal(
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

