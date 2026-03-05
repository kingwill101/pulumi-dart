// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KeyHandle resources.
class KeyHandleState {
  /// A reference to a Cloud KMS CryptoKey that can be used for CMEK in the requested
  /// product/project/location, for example
  /// `projects/1/locations/us-east1/keyRings/foo/cryptoKeys/bar-ffffff`
  final pulumi.Input<String>? kmsKey;
  /// The location for the KeyHandle.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  final pulumi.Input<String>? location;
  /// The resource name for the KeyHandle.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Selector of the resource type where we want to protect resources.
  /// For example, `storage.googleapis.com/Bucket`.
  final pulumi.Input<String>? resourceTypeSelector;

  /// Creates a new [KeyHandleState].
  /// [kmsKey] A reference to a Cloud KMS CryptoKey that can be used for CMEK in the requested
  /// [location] The location for the KeyHandle.
  /// [name] The resource name for the KeyHandle.
  /// [project] The ID of the project in which the resource belongs.
  /// [resourceTypeSelector] Selector of the resource type where we want to protect resources.
  KeyHandleState({
    this.kmsKey,
    this.location,
    this.name,
    this.project,
    this.resourceTypeSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': ?kmsKey,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'resourceTypeSelector': ?resourceTypeSelector,
    };
  }

  factory KeyHandleState.fromMap(Map<String, dynamic> map) {
    return KeyHandleState(
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceTypeSelector: (() { final guardedValue = map['resourceTypeSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

