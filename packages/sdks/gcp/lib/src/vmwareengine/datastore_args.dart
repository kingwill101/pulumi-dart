// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datastore_nfs_datastore.dart';

/// {@template pulumi_vmwareengine_datastore_datastore_args_doc}
/// The set of arguments for Datastore.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_datastore_datastore_args_doc}
class DatastoreArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// User-provided description for this datastore
  final pulumi.Input<String?>? description;
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
  final pulumi.Input<String?>? name;
  /// The NFS datastore configuration.
  /// Structure is documented below.
  final pulumi.Input<DatastoreNfsDatastore> nfsDatastore;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [DatastoreArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User-provided description for this datastore
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] The user-provided identifier of the datastore to be created.
  /// [nfsDatastore] The NFS datastore configuration.
  /// [project] The ID of the project in which the resource belongs.
  const DatastoreArgs({
    this.deletionPolicy,
    this.description,
    required this.location,
    this.name,
    required this.nfsDatastore,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'location': location,
      'name': ?name,
      'nfsDatastore': pulumi.Input.mapInputValue<DatastoreNfsDatastore, Map<String, dynamic>>(nfsDatastore, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory DatastoreArgs.fromMap(Map<String, dynamic> map) {
    return DatastoreArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nfsDatastore: pulumi.Input.fromValue(DatastoreNfsDatastore.fromMap((map['nfsDatastore']! as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
