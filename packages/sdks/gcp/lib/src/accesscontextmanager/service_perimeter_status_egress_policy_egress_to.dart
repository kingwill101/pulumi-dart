// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_status_egress_policy_egress_to_operation.dart';

class ServicePerimeterStatusEgressPolicyEgressTo {
  /// A list of external resources that are allowed to be accessed. A request
  /// matches if it contains an external resource in this list (Example:
  /// s3://bucket/path). Currently '*' is not allowed.
  final pulumi.Input<List<String>>? externalResources;

  /// A list of `ApiOperations` that this egress rule applies to. A request matches
  /// if it contains an operation/service in this list.
  /// Structure is documented below.
  final pulumi.Input<List<ServicePerimeterStatusEgressPolicyEgressToOperation>>?
  operations;

  /// A list of resources, currently only projects in the form
  /// `projects/&lt;projectnumber&gt;`, that match this to stanza. A request matches
  /// if it contains a resource in this list. If * is specified for resources,
  /// then this `EgressTo` rule will authorize access to all resources outside
  /// the perimeter.
  final pulumi.Input<List<String>>? resources;

  /// A list of IAM roles that represent the set of operations that the sources
  /// specified in the corresponding `EgressFrom`
  /// are allowed to perform.
  final pulumi.Input<List<String>>? roles;

  /// Creates a new [ServicePerimeterStatusEgressPolicyEgressTo].
  /// [externalResources] A list of external resources that are allowed to be accessed. A request
  /// [operations] A list of `ApiOperations` that this egress rule applies to. A request matches
  /// [resources] A list of resources, currently only projects in the form
  /// [roles] A list of IAM roles that represent the set of operations that the sources
  ServicePerimeterStatusEgressPolicyEgressTo({
    this.externalResources,
    this.operations,
    this.resources,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalResources': ?externalResources,
      'operations':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServicePerimeterStatusEgressPolicyEgressToOperation>,
            List<Map<String, dynamic>>
          >(
            operations,
            (value) =>
                pulumi.Input.encodeList<
                  ServicePerimeterStatusEgressPolicyEgressToOperation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resources': ?resources,
      'roles': ?roles,
    };
  }

  factory ServicePerimeterStatusEgressPolicyEgressTo.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServicePerimeterStatusEgressPolicyEgressTo(
      externalResources: (() {
        final guardedValue = map['externalResources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      operations: (() {
        final guardedValue = map['operations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ServicePerimeterStatusEgressPolicyEgressToOperation
          >(
            guardedValue,
            (value) =>
                ServicePerimeterStatusEgressPolicyEgressToOperation.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      resources: (() {
        final guardedValue = map['resources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      roles: (() {
        final guardedValue = map['roles'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
