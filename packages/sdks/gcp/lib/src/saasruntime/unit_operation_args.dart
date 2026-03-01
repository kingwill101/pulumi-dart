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
  UnitOperationArgs({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<Map<String, dynamic>>? deprovision,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    pulumi.Output<UnitOperationProvision>? provision,
    required pulumi.Output<String> unit,
    required pulumi.Output<String> unitOperationId,
    pulumi.Output<UnitOperationUpgrade>? upgrade,
    pulumi.Output<bool>? waitForCompletion,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      deprovision = pulumi.Input.asOptionalInput<Map<String, dynamic>>(deprovision),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      provision = pulumi.Input.asOptionalInput<UnitOperationProvision>(provision),
      unit = pulumi.Input.asInput<String>(unit),
      unitOperationId = pulumi.Input.asInput<String>(unitOperationId),
      upgrade = pulumi.Input.asOptionalInput<UnitOperationUpgrade>(upgrade),
      waitForCompletion = pulumi.Input.asOptionalInput<bool>(waitForCompletion);

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
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      deprovision: map['deprovision'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['deprovision'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      provision: map['provision'] == null ? null : pulumi.Output.create<UnitOperationProvision>(UnitOperationProvision.fromMap((map['provision'] as Map).cast<String, dynamic>())),
      unit: pulumi.Output.create<String>(map['unit'] as String),
      unitOperationId: pulumi.Output.create<String>(map['unitOperationId'] as String),
      upgrade: map['upgrade'] == null ? null : pulumi.Output.create<UnitOperationUpgrade>(UnitOperationUpgrade.fromMap((map['upgrade'] as Map).cast<String, dynamic>())),
      waitForCompletion: map['waitForCompletion'] == null ? null : pulumi.Output.create<bool>(map['waitForCompletion'] as bool),
    );
  }
}

