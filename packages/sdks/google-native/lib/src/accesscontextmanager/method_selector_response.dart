// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An allowed method or permission of a service specified in ApiOperation.
class MethodSelectorResponse {
  /// Value for `method` should be a valid method name for the corresponding `service_name` in ApiOperation. If `*` used as value for `method`, then ALL methods and permissions are allowed.
  final pulumi.Input<String> method;
  /// Value for `permission` should be a valid Cloud IAM permission for the corresponding `service_name` in ApiOperation.
  final pulumi.Input<String> permission;

  /// Creates a new [MethodSelectorResponse].
  /// [method] Value for `method` should be a valid method name for the corresponding `service_name` in ApiOperation. If `*` used as value for `method`, then ALL methods and permissions are allowed.
  /// [permission] Value for `permission` should be a valid Cloud IAM permission for the corresponding `service_name` in ApiOperation.
  MethodSelectorResponse({
    required this.method,
    required this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'permission': permission,
    };
  }

  factory MethodSelectorResponse.fromMap(Map<String, dynamic> map) {
    return MethodSelectorResponse(
      method: (map['method'] as String).input(),
      permission: (map['permission'] as String).input(),
    );
  }
}

