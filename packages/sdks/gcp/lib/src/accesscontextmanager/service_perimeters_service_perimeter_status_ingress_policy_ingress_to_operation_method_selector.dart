// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServicePerimetersServicePerimeterStatusIngressPolicyIngressToOperationMethodSelector {
  /// Value for `method` should be a valid method name for the corresponding
  /// `serviceName` in `ApiOperation`. If `*` used as value for method,
  /// then ALL methods and permissions are allowed.
  final pulumi.Input<String>? method;
  /// Value for permission should be a valid Cloud IAM permission for the
  /// corresponding `serviceName` in `ApiOperation`.
  final pulumi.Input<String>? permission;

  /// Creates a new [ServicePerimetersServicePerimeterStatusIngressPolicyIngressToOperationMethodSelector].
  /// [method] Value for `method` should be a valid method name for the corresponding
  /// [permission] Value for permission should be a valid Cloud IAM permission for the
  ServicePerimetersServicePerimeterStatusIngressPolicyIngressToOperationMethodSelector({
    this.method,
    this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': ?method,
      'permission': ?permission,
    };
  }

  factory ServicePerimetersServicePerimeterStatusIngressPolicyIngressToOperationMethodSelector.fromMap(Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeterStatusIngressPolicyIngressToOperationMethodSelector(
      method: map['method'] == null ? null : (map['method']! as String).input(),
      permission: map['permission'] == null ? null : (map['permission']! as String).input(),
    );
  }
}

