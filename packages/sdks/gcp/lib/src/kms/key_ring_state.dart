// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KeyRing resources.
class KeyRingState {
  /// The location for the KeyRing.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  final pulumi.Input<String>? location;
  /// The resource name for the KeyRing.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [KeyRingState].
  /// [location] The location for the KeyRing.
  /// [name] The resource name for the KeyRing.
  /// [project] The ID of the project in which the resource belongs.
  KeyRingState({
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory KeyRingState.fromMap(Map<String, dynamic> map) {
    return KeyRingState(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

