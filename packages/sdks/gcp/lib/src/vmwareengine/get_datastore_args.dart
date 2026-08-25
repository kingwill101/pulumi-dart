// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_get_datastore_get_datastore_args_doc}
/// Arguments for getDatastore.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_get_datastore_get_datastore_args_doc}
class GetDatastoreArgs {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The user-provided identifier of the datastore to be created.
  /// This identifier must be unique among each `Datastore` within the parent
  /// and becomes the final token in the name URI.
  /// The identifier must meet the following requirements:
  /// * Only contains 1-63 alphanumeric characters and hyphens
  /// * Begins with an alphabetical character
  /// * Ends with a non-hyphen character
  /// * Not formatted as a UUID
  /// * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034)
  /// (section 3.5)
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetDatastoreArgs].
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] The user-provided identifier of the datastore to be created.
  /// [project] The ID of the project in which the resource belongs.
  const GetDatastoreArgs({
    required this.location,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
      'project': ?project,
    };
  }

  factory GetDatastoreArgs.fromMap(Map<String, dynamic> map) {
    return GetDatastoreArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
