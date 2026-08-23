// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'unit_maintenance.dart';

/// {@template pulumi_saasruntime_unit_unit_args_doc}
/// The set of arguments for Unit.
/// {@endtemplate}
/// {@macro pulumi_saasruntime_unit_unit_args_doc}
class UnitArgs {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// Captures requested directives for performing future maintenance on the
  /// unit. This includes a request for the unit to skip maintenance for a period
  /// of time and remain pinned to its current release as well as controls for
  /// postponing maintenance scheduled in future.
  /// Structure is documented below.
  final pulumi.Input<UnitMaintenance>? maintenance;
  /// Indicates whether the Unit life cycle is controlled
  /// by the user or by the system.
  /// Immutable once created.
  /// Possible values:
  /// MANAGEMENT_MODE_USER
  /// MANAGEMENT_MODE_SYSTEM
  final pulumi.Input<String>? managementMode;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Reference to the Saas Tenant resource this unit belongs to. This for
  /// example informs the maintenance policies to use for scheduling future
  /// updates on a unit. (optional and immutable once created)
  final pulumi.Input<String>? tenant;
  /// The ID value for the new unit.
  final pulumi.Input<String> unitId;
  /// Reference to the UnitKind this Unit belongs to. Immutable once set.
  final pulumi.Input<String>? unitKind;

  /// Creates a new [UnitArgs].
  /// [annotations] Annotations is an unstructured key-value map stored with a resource that
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] The labels on the resource, which can be used for categorization.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [maintenance] Captures requested directives for performing future maintenance on the
  /// [managementMode] Indicates whether the Unit life cycle is controlled
  /// [project] The ID of the project in which the resource belongs.
  /// [tenant] Reference to the Saas Tenant resource this unit belongs to. This for
  /// [unitId] The ID value for the new unit.
  /// [unitKind] Reference to the UnitKind this Unit belongs to. Immutable once set.
  const UnitArgs({
    this.annotations,
    this.deletionPolicy,
    this.labels,
    required this.location,
    this.maintenance,
    this.managementMode,
    this.project,
    this.tenant,
    required this.unitId,
    this.unitKind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'deletionPolicy': ?deletionPolicy,
      'labels': ?labels,
      'location': location,
      'maintenance': ?pulumi.Input.mapOptionalInputValue<UnitMaintenance, Map<String, dynamic>>(maintenance, (value) => value.toMap()),
      'managementMode': ?managementMode,
      'project': ?project,
      'tenant': ?tenant,
      'unitId': unitId,
      'unitKind': ?unitKind,
    };
  }

  factory UnitArgs.fromMap(Map<String, dynamic> map) {
    return UnitArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      maintenance: (() { final guardedValue = map['maintenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UnitMaintenance.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managementMode: (() { final guardedValue = map['managementMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenant: (() { final guardedValue = map['tenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unitId: pulumi.Input.fromValue(map['unitId'] as String),
      unitKind: (() { final guardedValue = map['unitKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
