// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_ingress_policy_ingress_to_operation.dart';

class ServicePerimeterIngressPolicyIngressTo {
  /// A list of `ApiOperations` the sources specified in corresponding `IngressFrom`
  /// are allowed to perform in this `ServicePerimeter`.
  /// Structure is documented below.
  final pulumi.Input<List<ServicePerimeterIngressPolicyIngressToOperation>>? operations;
  /// A list of resources, currently only projects in the form
  /// `projects/<projectnumber>`, protected by this `ServicePerimeter`
  /// that are allowed to be accessed by sources defined in the
  /// corresponding `IngressFrom`. A request matches if it contains
  /// a resource in this list. If `*` is specified for resources,
  /// then this `IngressTo` rule will authorize access to all
  /// resources inside the perimeter, provided that the request
  /// also matches the `operations` field.
  final pulumi.Input<List<String>>? resources;
  /// A list of IAM roles that represent the set of operations that the sources
  /// specified in the corresponding `IngressFrom`
  /// are allowed to perform.
  final pulumi.Input<List<String>>? roles;

  /// Creates a new [ServicePerimeterIngressPolicyIngressTo].
  /// [operations] A list of `ApiOperations` the sources specified in corresponding `IngressFrom`
  /// [resources] A list of resources, currently only projects in the form
  /// [roles] A list of IAM roles that represent the set of operations that the sources
  ServicePerimeterIngressPolicyIngressTo({
    this.operations,
    this.resources,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operations': ?pulumi.Input.mapOptionalInputValue<List<ServicePerimeterIngressPolicyIngressToOperation>, List<Map<String, dynamic>>>(operations, (value) => pulumi.Input.encodeList<ServicePerimeterIngressPolicyIngressToOperation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': ?resources,
      'roles': ?roles,
    };
  }

  factory ServicePerimeterIngressPolicyIngressTo.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterIngressPolicyIngressTo(
      operations: map['operations'] == null ? null : (pulumi.Input.decodeList<ServicePerimeterIngressPolicyIngressToOperation>(map['operations']!, (value) => ServicePerimeterIngressPolicyIngressToOperation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resources: map['resources'] == null ? null : ((map['resources']! as List).cast<String>()).input(),
      roles: map['roles'] == null ? null : ((map['roles']! as List).cast<String>()).input(),
    );
  }
}

