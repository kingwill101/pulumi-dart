// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An allowed method or permission of a service specified in ApiOperation.
class MethodSelector {
  /// Value for `method` should be a valid method name for the corresponding `service_name` in ApiOperation. If `*` used as value for `method`, then ALL methods and permissions are allowed.
  final pulumi.Input<String>? method;
  /// Value for `permission` should be a valid Cloud IAM permission for the corresponding `service_name` in ApiOperation.
  final pulumi.Input<String>? permission;

  /// Creates a new [MethodSelector].
  /// [method] Value for `method` should be a valid method name for the corresponding `service_name` in ApiOperation. If `*` used as value for `method`, then ALL methods and permissions are allowed.
  /// [permission] Value for `permission` should be a valid Cloud IAM permission for the corresponding `service_name` in ApiOperation.
  const MethodSelector({
    this.method,
    this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': ?method,
      'permission': ?permission,
    };
  }

  factory MethodSelector.fromMap(Map<String, dynamic> map) {
    return MethodSelector(
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permission: (() { final guardedValue = map['permission']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
