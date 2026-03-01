// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_dev_box_definition_dev_box_definition_args_doc}
/// The set of arguments for DevBoxDefinition.
/// {@endtemplate}
/// {@macro pulumi_devcenter_dev_box_definition_dev_box_definition_args_doc}
class DevBoxDefinitionArgs {
  /// The ID of the associated Dev Center. Changing this forces a new resource to be created.
  final pulumi.Input<String> devCenterId;
  /// Whether the Dev Boxes created with this definition are capable of hibernation. Defaults to `false`.
  ///
  /// > **Note:** Not all images are capable of supporting hibernation, for more information see https://aka.ms/devbox/hibernate.
  final pulumi.Input<bool>? hibernateSupportEnabled;
  /// The ID of the image for the Dev Center Dev Box Definition.
  final pulumi.Input<String> imageReferenceId;
  /// The Azure Region where the Dev Center Dev Box Definition should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this Dev Center Dev Box Definition. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the SKU for the Dev Center Dev Box Definition.
  final pulumi.Input<String> skuName;
  /// A mapping of tags which should be assigned to the Dev Center Dev Box Definition.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DevBoxDefinitionArgs].
  /// [devCenterId] The ID of the associated Dev Center. Changing this forces a new resource to be created.
  /// [hibernateSupportEnabled] Whether the Dev Boxes created with this definition are capable of hibernation. Defaults to `false`.
  /// [imageReferenceId] The ID of the image for the Dev Center Dev Box Definition.
  /// [location] The Azure Region where the Dev Center Dev Box Definition should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Dev Center Dev Box Definition. Changing this forces a new resource to be created.
  /// [skuName] The name of the SKU for the Dev Center Dev Box Definition.
  /// [tags] A mapping of tags which should be assigned to the Dev Center Dev Box Definition.
  DevBoxDefinitionArgs({
    required pulumi.Output<String> devCenterId,
    pulumi.Output<bool>? hibernateSupportEnabled,
    required pulumi.Output<String> imageReferenceId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> skuName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      devCenterId = pulumi.Input.asInput<String>(devCenterId),
      hibernateSupportEnabled = pulumi.Input.asOptionalInput<bool>(hibernateSupportEnabled),
      imageReferenceId = pulumi.Input.asInput<String>(imageReferenceId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      skuName = pulumi.Input.asInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': devCenterId,
      'hibernateSupportEnabled': ?hibernateSupportEnabled,
      'imageReferenceId': imageReferenceId,
      'location': ?location,
      'name': ?name,
      'skuName': skuName,
      'tags': ?tags,
    };
  }

  factory DevBoxDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return DevBoxDefinitionArgs(
      devCenterId: pulumi.Output.create<String>(map['devCenterId'] as String),
      hibernateSupportEnabled: map['hibernateSupportEnabled'] == null ? null : pulumi.Output.create<bool>(map['hibernateSupportEnabled'] as bool),
      imageReferenceId: pulumi.Output.create<String>(map['imageReferenceId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      skuName: pulumi.Output.create<String>(map['skuName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

