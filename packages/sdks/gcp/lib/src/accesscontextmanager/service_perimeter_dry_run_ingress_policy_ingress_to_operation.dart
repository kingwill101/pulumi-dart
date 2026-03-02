// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_dry_run_ingress_policy_ingress_to_operation_method_selector.dart';

class ServicePerimeterDryRunIngressPolicyIngressToOperation {
  /// API methods or permissions to allow. Method or permission must belong to
  /// the service specified by serviceName field. A single `MethodSelector` entry
  /// with `*` specified for the method field will allow all methods AND
  /// permissions for the service specified in `serviceName`.
  /// Structure is documented below.
  final pulumi.Input<List<ServicePerimeterDryRunIngressPolicyIngressToOperationMethodSelector>>? methodSelectors;
  /// The name of the API whose methods or permissions the `IngressPolicy` or
  /// `EgressPolicy` want to allow. A single `ApiOperation` with `serviceName`
  /// field set to `*` will allow all methods AND permissions for all services.
  final pulumi.Input<String>? serviceName;

  /// Creates a new [ServicePerimeterDryRunIngressPolicyIngressToOperation].
  /// [methodSelectors] API methods or permissions to allow. Method or permission must belong to
  /// [serviceName] The name of the API whose methods or permissions the `IngressPolicy` or
  ServicePerimeterDryRunIngressPolicyIngressToOperation({
    this.methodSelectors,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methodSelectors': ?pulumi.Input.mapOptionalInputValue<List<ServicePerimeterDryRunIngressPolicyIngressToOperationMethodSelector>, List<Map<String, dynamic>>>(methodSelectors, (value) => pulumi.Input.encodeList<ServicePerimeterDryRunIngressPolicyIngressToOperationMethodSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceName': ?serviceName,
    };
  }

  factory ServicePerimeterDryRunIngressPolicyIngressToOperation.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterDryRunIngressPolicyIngressToOperation(
      methodSelectors: map['methodSelectors'] == null ? null : (pulumi.Input.decodeList<ServicePerimeterDryRunIngressPolicyIngressToOperationMethodSelector>(map['methodSelectors'], (value) => ServicePerimeterDryRunIngressPolicyIngressToOperationMethodSelector.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceName: map['serviceName'] == null ? null : (map['serviceName'] as String).input(),
    );
  }
}

