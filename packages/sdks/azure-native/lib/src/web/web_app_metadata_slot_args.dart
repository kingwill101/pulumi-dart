// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_metadata_slot_args_doc}
/// The set of arguments for WebAppMetadataSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_metadata_slot_args_doc}
class WebAppMetadataSlotArgs {
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Settings.
  final pulumi.Input<Map<String, String>>? properties;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API will update the metadata for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [WebAppMetadataSlotArgs].
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [properties] Settings.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will update the metadata for the production slot.
  WebAppMetadataSlotArgs({
    pulumi.Output<String>? kind,
    required pulumi.Output<String> name,
    pulumi.Output<Map<String, String>>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> slot,
  }) :
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      properties = pulumi.Input.asOptionalInput<Map<String, String>>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      slot = pulumi.Input.asInput<String>(slot);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'name': name,
      'properties': ?properties,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory WebAppMetadataSlotArgs.fromMap(Map<String, dynamic> map) {
    return WebAppMetadataSlotArgs(
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['properties'] as Map).cast<String, String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      slot: pulumi.Output.create<String>(map['slot'] as String),
    );
  }
}

