// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Gallery resources.
class GalleryState {
  /// Specifies the ID of the Dev Center within which this Dev Center Gallery should exist. Changing this forces a new Dev Center Gallery to be created.
  final pulumi.Input<String>? devCenterId;
  /// Specifies the name of this Dev Center Gallery. Changing this forces a new Dev Center Gallery to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Shared Gallery which should be connected to the Dev Center Gallery. Changing this forces a new Dev Center Gallery to be created.
  final pulumi.Input<String>? sharedGalleryId;

  /// Creates a new [GalleryState].
  /// [devCenterId] Specifies the ID of the Dev Center within which this Dev Center Gallery should exist. Changing this forces a new Dev Center Gallery to be created.
  /// [name] Specifies the name of this Dev Center Gallery. Changing this forces a new Dev Center Gallery to be created.
  /// [sharedGalleryId] The ID of the Shared Gallery which should be connected to the Dev Center Gallery. Changing this forces a new Dev Center Gallery to be created.
  GalleryState({
    pulumi.Output<String>? devCenterId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? sharedGalleryId,
  }) :
      devCenterId = pulumi.Input.asOptionalInput<String>(devCenterId),
      name = pulumi.Input.asOptionalInput<String>(name),
      sharedGalleryId = pulumi.Input.asOptionalInput<String>(sharedGalleryId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': ?devCenterId,
      'name': ?name,
      'sharedGalleryId': ?sharedGalleryId,
    };
  }

  factory GalleryState.fromMap(Map<String, dynamic> map) {
    return GalleryState(
      devCenterId: map['devCenterId'] == null ? null : pulumi.Output.create<String>(map['devCenterId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      sharedGalleryId: map['sharedGalleryId'] == null ? null : pulumi.Output.create<String>(map['sharedGalleryId'] as String),
    );
  }
}

