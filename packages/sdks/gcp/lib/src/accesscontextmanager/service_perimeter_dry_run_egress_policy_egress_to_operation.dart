// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_dry_run_egress_policy_egress_to_operation_method_selector.dart';

class ServicePerimeterDryRunEgressPolicyEgressToOperation {
  /// API methods or permissions to allow. Method or permission must belong
  /// to the service specified by `serviceName` field. A single MethodSelector
  /// entry with `*` specified for the `method` field will allow all methods
  /// AND permissions for the service specified in `serviceName`.
  /// Structure is documented below.
  final pulumi.Input<
    List<ServicePerimeterDryRunEgressPolicyEgressToOperationMethodSelector>
  >?
  methodSelectors;

  /// The name of the API whose methods or permissions the `IngressPolicy` or
  /// `EgressPolicy` want to allow. A single `ApiOperation` with serviceName
  /// field set to `*` will allow all methods AND permissions for all services.
  final pulumi.Input<String>? serviceName;

  /// Creates a new [ServicePerimeterDryRunEgressPolicyEgressToOperation].
  /// [methodSelectors] API methods or permissions to allow. Method or permission must belong
  /// [serviceName] The name of the API whose methods or permissions the `IngressPolicy` or
  ServicePerimeterDryRunEgressPolicyEgressToOperation({
    this.methodSelectors,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methodSelectors':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              ServicePerimeterDryRunEgressPolicyEgressToOperationMethodSelector
            >,
            List<Map<String, dynamic>>
          >(
            methodSelectors,
            (value) =>
                pulumi.Input.encodeList<
                  ServicePerimeterDryRunEgressPolicyEgressToOperationMethodSelector,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'serviceName': ?serviceName,
    };
  }

  factory ServicePerimeterDryRunEgressPolicyEgressToOperation.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServicePerimeterDryRunEgressPolicyEgressToOperation(
      methodSelectors: (() {
        final guardedValue = map['methodSelectors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ServicePerimeterDryRunEgressPolicyEgressToOperationMethodSelector
          >(
            guardedValue,
            (value) =>
                ServicePerimeterDryRunEgressPolicyEgressToOperationMethodSelector.fromMap(
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
