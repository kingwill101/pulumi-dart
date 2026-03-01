// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_status_ingress_policy_ingress_to_operation_method_selector.dart';

class ServicePerimeterStatusIngressPolicyIngressToOperation {
  /// API methods or permissions to allow. Method or permission must belong
  /// to the service specified by `serviceName` field. A single MethodSelector
  /// entry with `*` specified for the `method` field will allow all methods
  /// AND permissions for the service specified in `serviceName`.
  /// Structure is documented below.
  final List<ServicePerimeterStatusIngressPolicyIngressToOperationMethodSelector>? methodSelectors;
  /// The name of the API whose methods or permissions the `IngressPolicy` or
  /// `EgressPolicy` want to allow. A single `ApiOperation` with serviceName
  /// field set to `*` will allow all methods AND permissions for all services.
  final String? serviceName;

  /// Creates a new [ServicePerimeterStatusIngressPolicyIngressToOperation].
  /// [methodSelectors] API methods or permissions to allow. Method or permission must belong
  /// [serviceName] The name of the API whose methods or permissions the `IngressPolicy` or
  ServicePerimeterStatusIngressPolicyIngressToOperation({
    this.methodSelectors,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methodSelectors': ?methodSelectors == null ? null : pulumi.Input.encodeList<ServicePerimeterStatusIngressPolicyIngressToOperationMethodSelector, Map<String, dynamic>>(methodSelectors!, (value) => value.toMap()),
      'serviceName': ?serviceName,
    };
  }

  factory ServicePerimeterStatusIngressPolicyIngressToOperation.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterStatusIngressPolicyIngressToOperation(
      methodSelectors: map['methodSelectors'] == null ? null : pulumi.Input.decodeList<ServicePerimeterStatusIngressPolicyIngressToOperationMethodSelector>(map['methodSelectors'], (value) => ServicePerimeterStatusIngressPolicyIngressToOperationMethodSelector.fromMap((value as Map).cast<String, dynamic>())),
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
    );
  }
}

