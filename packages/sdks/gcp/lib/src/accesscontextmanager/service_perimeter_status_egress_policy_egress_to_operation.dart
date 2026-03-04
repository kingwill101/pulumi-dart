// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_status_egress_policy_egress_to_operation_method_selector.dart';

class ServicePerimeterStatusEgressPolicyEgressToOperation {
  /// API methods or permissions to allow. Method or permission must belong
  /// to the service specified by `serviceName` field. A single MethodSelector
  /// entry with `*` specified for the `method` field will allow all methods
  /// AND permissions for the service specified in `serviceName`.
  /// Structure is documented below.
  final pulumi.Input<
    List<ServicePerimeterStatusEgressPolicyEgressToOperationMethodSelector>
  >?
  methodSelectors;

  /// The name of the API whose methods or permissions the `IngressPolicy` or
  /// `EgressPolicy` want to allow. A single `ApiOperation` with serviceName
  /// field set to `*` will allow all methods AND permissions for all services.
  final pulumi.Input<String>? serviceName;

  /// Creates a new [ServicePerimeterStatusEgressPolicyEgressToOperation].
  /// [methodSelectors] API methods or permissions to allow. Method or permission must belong
  /// [serviceName] The name of the API whose methods or permissions the `IngressPolicy` or
  ServicePerimeterStatusEgressPolicyEgressToOperation({
    this.methodSelectors,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methodSelectors':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              ServicePerimeterStatusEgressPolicyEgressToOperationMethodSelector
            >,
            List<Map<String, dynamic>>
          >(
            methodSelectors,
            (value) =>
                pulumi.Input.encodeList<
                  ServicePerimeterStatusEgressPolicyEgressToOperationMethodSelector,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'serviceName': ?serviceName,
    };
  }

  factory ServicePerimeterStatusEgressPolicyEgressToOperation.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServicePerimeterStatusEgressPolicyEgressToOperation(
      methodSelectors: (() {
        final guardedValue = map['methodSelectors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ServicePerimeterStatusEgressPolicyEgressToOperationMethodSelector
          >(
            guardedValue,
            (value) =>
                ServicePerimeterStatusEgressPolicyEgressToOperationMethodSelector.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      serviceName: (() {
        final guardedValue = map['serviceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
