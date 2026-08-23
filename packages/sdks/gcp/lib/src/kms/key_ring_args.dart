// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_key_ring_key_ring_args_doc}
/// The set of arguments for KeyRing.
/// {@endtemplate}
/// {@macro pulumi_kms_key_ring_key_ring_args_doc}
class KeyRingArgs {
  /// The location for the KeyRing.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  final pulumi.Input<String> location;
  /// The resource name for the KeyRing.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [KeyRingArgs].
  /// [location] The location for the KeyRing.
  /// [name] The resource name for the KeyRing.
  /// [project] The ID of the project in which the resource belongs.
  const KeyRingArgs({
    required this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory KeyRingArgs.fromMap(Map<String, dynamic> map) {
    return KeyRingArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
