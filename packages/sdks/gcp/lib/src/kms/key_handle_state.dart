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
    pulumi.Output<String>? kmsKey,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? resourceTypeSelector,
  }) :
      kmsKey = pulumi.Input.asOptionalInput<String>(kmsKey),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      resourceTypeSelector = pulumi.Input.asOptionalInput<String>(resourceTypeSelector);

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
      kmsKey: map['kmsKey'] == null ? null : pulumi.Output.create<String>(map['kmsKey'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      resourceTypeSelector: map['resourceTypeSelector'] == null ? null : pulumi.Output.create<String>(map['resourceTypeSelector'] as String),
    );
  }
}

