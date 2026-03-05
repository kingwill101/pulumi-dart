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
    this.devCenterId,
    this.name,
    this.sharedGalleryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': ?devCenterId,
      'name': ?name,
      'sharedGalleryId': ?sharedGalleryId,
    };
  }

  factory GalleryState.fromMap(Map<String, dynamic> map) {
    return GalleryState(
      devCenterId: (() { final guardedValue = map['devCenterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedGalleryId: (() { final guardedValue = map['sharedGalleryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

