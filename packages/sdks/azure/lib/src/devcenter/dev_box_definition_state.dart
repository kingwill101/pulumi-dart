// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DevBoxDefinition resources.
class DevBoxDefinitionState {
  /// The ID of the associated Dev Center. Changing this forces a new resource to be created.
  final pulumi.Input<String>? devCenterId;

  /// Whether the Dev Boxes created with this definition are capable of hibernation. Defaults to `false`.
  ///
  /// &gt; **Note:** Not all images are capable of supporting hibernation, for more information see https://aka.ms/devbox/hibernate.
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
      devCenterId: (() {
        final guardedValue = map['devCenterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hibernateSupportEnabled: (() {
        final guardedValue = map['hibernateSupportEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      imageReferenceId: (() {
        final guardedValue = map['imageReferenceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skuName: (() {
        final guardedValue = map['skuName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
