// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServicePerimeterSpecEgressPolicyEgressToOperationMethodSelector {
  /// Value for `method` should be a valid method name for the corresponding
  /// `serviceName` in `ApiOperation`. If `*` used as value for method,
  /// then ALL methods and permissions are allowed.
  final pulumi.Input<String?>? method;
  /// Value for permission should be a valid Cloud IAM permission for the
  /// corresponding `serviceName` in `ApiOperation`.
  final pulumi.Input<String?>? permission;

  /// Creates a new [ServicePerimeterSpecEgressPolicyEgressToOperationMethodSelector].
  /// [method] Value for `method` should be a valid method name for the corresponding
  /// [permission] Value for permission should be a valid Cloud IAM permission for the
  const ServicePerimeterSpecEgressPolicyEgressToOperationMethodSelector({
    this.method,
    this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': ?method,
      'permission': ?permission,
    };
  }

  factory ServicePerimeterSpecEgressPolicyEgressToOperationMethodSelector.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterSpecEgressPolicyEgressToOperationMethodSelector(
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permission: (() { final guardedValue = map['permission']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
