// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_kmskey_ring_get_kmskey_ring_args_doc}
/// Arguments for getKMSKeyRing.
/// {@endtemplate}
/// {@macro pulumi_kms_get_kmskey_ring_get_kmskey_ring_args_doc}
class GetKMSKeyRingArgs {
  /// The Google Cloud Platform location for the KeyRing.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  ///
  /// - - -
  final pulumi.Input<String> location;

  /// The KeyRing's name.
  /// A KeyRing name must exist within the provided location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final pulumi.Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetKMSKeyRingArgs].
  /// [location] The Google Cloud Platform location for the KeyRing.
  /// [name] The KeyRing's name.
  /// [project] The project in which the resource belongs. If it
  GetKMSKeyRingArgs({required this.location, required this.name, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
      'project': ?project,
    };
  }

  factory GetKMSKeyRingArgs.fromMap(Map<String, dynamic> map) {
    return GetKMSKeyRingArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
