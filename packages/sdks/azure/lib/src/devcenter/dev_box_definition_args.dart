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
  /// &gt; **Note:** Not all images are capable of supporting hibernation, for more information see https://aka.ms/devbox/hibernate.
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
  const DevBoxDefinitionArgs({
    required this.devCenterId,
    this.hibernateSupportEnabled,
    required this.imageReferenceId,
    this.location,
    this.name,
    required this.skuName,
    this.tags,
  });

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
      devCenterId: pulumi.Input.fromValue(map['devCenterId'] as String),
      hibernateSupportEnabled: (() { final guardedValue = map['hibernateSupportEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      imageReferenceId: pulumi.Input.fromValue(map['imageReferenceId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuName: pulumi.Input.fromValue(map['skuName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
