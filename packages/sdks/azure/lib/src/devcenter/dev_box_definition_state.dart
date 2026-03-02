// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DevBoxDefinition resources.
class DevBoxDefinitionState {
  /// The ID of the associated Dev Center. Changing this forces a new resource to be created.
  final pulumi.Input<String>? devCenterId;
  /// Whether the Dev Boxes created with this definition are capable of hibernation. Defaults to `false`.
  ///
  /// > **Note:** Not all images are capable of supporting hibernation, for more information see https://aka.ms/devbox/hibernate.
  final pulumi.Input<bool>? hibernateSupportEnabled;
  /// The ID of the image for the Dev Center Dev Box Definition.
  final pulumi.Input<String>? imageReferenceId;
  /// The Azure Region where the Dev Center Dev Box Definition should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this Dev Center Dev Box Definition. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the SKU for the Dev Center Dev Box Definition.
  final pulumi.Input<String>? skuName;
  /// A mapping of tags which should be assigned to the Dev Center Dev Box Definition.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DevBoxDefinitionState].
  /// [devCenterId] The ID of the associated Dev Center. Changing this forces a new resource to be created.
  /// [hibernateSupportEnabled] Whether the Dev Boxes created with this definition are capable of hibernation. Defaults to `false`.
  /// [imageReferenceId] The ID of the image for the Dev Center Dev Box Definition.
  /// [location] The Azure Region where the Dev Center Dev Box Definition should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Dev Center Dev Box Definition. Changing this forces a new resource to be created.
  /// [skuName] The name of the SKU for the Dev Center Dev Box Definition.
  /// [tags] A mapping of tags which should be assigned to the Dev Center Dev Box Definition.
  DevBoxDefinitionState({
    this.devCenterId,
    this.hibernateSupportEnabled,
    this.imageReferenceId,
    this.location,
    this.name,
    this.skuName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': ?devCenterId,
      'hibernateSupportEnabled': ?hibernateSupportEnabled,
      'imageReferenceId': ?imageReferenceId,
      'location': ?location,
      'name': ?name,
      'skuName': ?skuName,
      'tags': ?tags,
    };
  }

  factory DevBoxDefinitionState.fromMap(Map<String, dynamic> map) {
    return DevBoxDefinitionState(
      devCenterId: map['devCenterId'] == null ? null : (map['devCenterId']! as String).input(),
      hibernateSupportEnabled: map['hibernateSupportEnabled'] == null ? null : (map['hibernateSupportEnabled']! as bool).input(),
      imageReferenceId: map['imageReferenceId'] == null ? null : (map['imageReferenceId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      skuName: map['skuName'] == null ? null : (map['skuName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

