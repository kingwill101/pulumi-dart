// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Registry resources.
class RegistryState {
  /// The URI of the created resource.
  final pulumi.Input<String>? bucketSelfLink;

  /// The location of the registry. One of `ASIA`, `EU`, `US` or not specified. See [the official documentation](https://cloud.google.com/container-registry/docs/pushing-and-pulling#pushing_an_image_to_a_registry) for more information on registry locations.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [RegistryState].
  /// [bucketSelfLink] The URI of the created resource.
  /// [location] The location of the registry. One of `ASIA`, `EU`, `US` or not specified. See [the official documentation](https://cloud.google.com/container-registry/docs/pushing-and-pulling#pushing_an_image_to_a_registry) for more information on registry locations.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  RegistryState({this.bucketSelfLink, this.location, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketSelfLink': ?bucketSelfLink,
      'location': ?location,
      'project': ?project,
    };
  }

  factory RegistryState.fromMap(Map<String, dynamic> map) {
    return RegistryState(
      bucketSelfLink: (() {
        final guardedValue = map['bucketSelfLink'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
