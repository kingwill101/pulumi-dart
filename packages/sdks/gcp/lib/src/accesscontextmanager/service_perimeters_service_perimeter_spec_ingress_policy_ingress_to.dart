// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeters_service_perimeter_spec_ingress_policy_ingress_to_operation.dart';

class ServicePerimetersServicePerimeterSpecIngressPolicyIngressTo {
  /// A list of `ApiOperations` the sources specified in corresponding `IngressFrom`
  /// are allowed to perform in this `ServicePerimeter`.
  /// Structure is documented below.
  final pulumi.Input<List<ServicePerimetersServicePerimeterSpecIngressPolicyIngressToOperation>?>? operations;
  /// A list of resources, currently only projects in the form
  /// `projects/&lt;projectnumber&gt;`, protected by this `ServicePerimeter`
  /// that are allowed to be accessed by sources defined in the
  /// corresponding `IngressFrom`. A request matches if it contains
  /// a resource in this list. If `*` is specified for resources,
  /// then this `IngressTo` rule will authorize access to all
  /// resources inside the perimeter, provided that the request
  /// also matches the `operations` field.
  final pulumi.Input<List<String>?>? resources;
  /// A list of IAM roles that represent the set of operations that the sources
  /// specified in the corresponding `IngressFrom`
  /// are allowed to perform.
  final pulumi.Input<List<String>?>? roles;

  /// Creates a new [ServicePerimetersServicePerimeterSpecIngressPolicyIngressTo].
  /// [operations] A list of `ApiOperations` the sources specified in corresponding `IngressFrom`
  /// [resources] A list of resources, currently only projects in the form
  /// [roles] A list of IAM roles that represent the set of operations that the sources
  const ServicePerimetersServicePerimeterSpecIngressPolicyIngressTo({
    this.operations,
    this.resources,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operations': ?pulumi.Input.mapOptionalInputValue<List<ServicePerimetersServicePerimeterSpecIngressPolicyIngressToOperation>, List<Map<String, dynamic>>>(operations, (value) => pulumi.Input.encodeList<ServicePerimetersServicePerimeterSpecIngressPolicyIngressToOperation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': ?resources,
      'roles': ?roles,
    };
  }

  factory ServicePerimetersServicePerimeterSpecIngressPolicyIngressTo.fromMap(Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeterSpecIngressPolicyIngressTo(
      operations: (() { final guardedValue = map['operations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServicePerimetersServicePerimeterSpecIngressPolicyIngressToOperation>(guardedValue, (value) => ServicePerimetersServicePerimeterSpecIngressPolicyIngressToOperation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
