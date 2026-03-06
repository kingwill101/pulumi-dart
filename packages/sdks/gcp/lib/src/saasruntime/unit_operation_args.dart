// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'unit_operation_provision.dart';
import 'unit_operation_upgrade.dart';

/// {@template pulumi_saasruntime_unit_operation_unit_operation_args_doc}
/// The set of arguments for UnitOperation.
/// {@endtemplate}
/// {@macro pulumi_saasruntime_unit_operation_unit_operation_args_doc}
class UnitOperationArgs {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Deprovision is the unit operation that deprovision the underlying
  /// resources represented by a Unit. Can only execute if the Unit is currently
  /// provisioned.
  final pulumi.Input<Map<String, dynamic>>? deprovision;
  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Provision is the unit operation that provision the underlying resources
  /// represented by a Unit. Can only execute if the Unit is not currently
  /// provisioned.
  /// Structure is documented below.
  final pulumi.Input<UnitOperationProvision>? provision;
  /// The Unit a given UnitOperation will act upon.
  final pulumi.Input<String> unit;
  /// The ID value for the new unit operation.
  final pulumi.Input<String> unitOperationId;
  /// Upgrade is the unit operation that upgrades a provisioned unit, which may
  /// also include the underlying resources represented by a Unit. Can only execute
  /// if the Unit is currently provisioned.
  /// Structure is documented below.
  final pulumi.Input<UnitOperationUpgrade>? upgrade;
  /// If true, wait for the UnitOperation to reach a terminal state (SUCCEEDED, FAILED, CANCELLED)
  /// before completing the apply.
  final pulumi.Input<bool>? waitForCompletion;

  /// Creates a new [UnitOperationArgs].
  /// [annotations] Annotations is an unstructured key-value map stored with a resource that
  /// [deprovision] Deprovision is the unit operation that deprovision the underlying
  /// [labels] The labels on the resource, which can be used for categorization.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [provision] Provision is the unit operation that provision the underlying resources
  /// [unit] The Unit a given UnitOperation will act upon.
  /// [unitOperationId] The ID value for the new unit operation.
  /// [upgrade] Upgrade is the unit operation that upgrades a provisioned unit, which may
  /// [waitForCompletion] If true, wait for the UnitOperation to reach a terminal state (SUCCEEDED, FAILED, CANCELLED)
  const UnitOperationArgs({
    this.annotations,
    this.deprovision,
    this.labels,
    required this.location,
    this.project,
    this.provision,
    required this.unit,
    required this.unitOperationId,
    this.upgrade,
    this.waitForCompletion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'deprovision': ?deprovision,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'provision': ?pulumi.Input.mapOptionalInputValue<UnitOperationProvision, Map<String, dynamic>>(provision, (value) => value.toMap()),
      'unit': unit,
      'unitOperationId': unitOperationId,
      'upgrade': ?pulumi.Input.mapOptionalInputValue<UnitOperationUpgrade, Map<String, dynamic>>(upgrade, (value) => value.toMap()),
      'waitForCompletion': ?waitForCompletion,
    };
  }

  factory UnitOperationArgs.fromMap(Map<String, dynamic> map) {
    return UnitOperationArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      deprovision: (() { final guardedValue = map['deprovision']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provision: (() { final guardedValue = map['provision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UnitOperationProvision.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      unit: pulumi.Input.fromValue(map['unit'] as String),
      unitOperationId: pulumi.Input.fromValue(map['unitOperationId'] as String),
      upgrade: (() { final guardedValue = map['upgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UnitOperationUpgrade.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      waitForCompletion: (() { final guardedValue = map['waitForCompletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

