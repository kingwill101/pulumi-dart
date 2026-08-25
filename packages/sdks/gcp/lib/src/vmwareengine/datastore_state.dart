// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datastore_nfs_datastore.dart';

/// Input properties used for looking up and filtering Datastore resources.
class DatastoreState {
  /// Clusters to which the datastore is attached.
  final pulumi.Input<List<String>?>? clusters;
  /// Creation time of this resource.
  final pulumi.Input<String?>? createTime;
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
  final pulumi.Input<String?>? location;
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
  final pulumi.Input<DatastoreNfsDatastore?>? nfsDatastore;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The state of the Datastore.
  /// Possible values:
  /// CREATING
  /// ACTIVE
  /// UPDATING
  /// DELETING
  /// SOFT_DELETING
  /// SOFT_DELETED
  final pulumi.Input<String?>? state;
  /// System-generated unique identifier for the resource.
  final pulumi.Input<String?>? uid;
  /// Last update time of this resource.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [DatastoreState].
  /// [clusters] Clusters to which the datastore is attached.
  /// [createTime] Creation time of this resource.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User-provided description for this datastore
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] The user-provided identifier of the datastore to be created.
  /// [nfsDatastore] The NFS datastore configuration.
  /// [project] The ID of the project in which the resource belongs.
  /// [state] The state of the Datastore.
  /// [uid] System-generated unique identifier for the resource.
  /// [updateTime] Last update time of this resource.
  const DatastoreState({
    this.clusters,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.location,
    this.name,
    this.nfsDatastore,
    this.project,
    this.state,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusters': ?clusters,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'nfsDatastore': ?pulumi.Input.mapOptionalInputValue<DatastoreNfsDatastore, Map<String, dynamic>>(nfsDatastore, (value) => value.toMap()),
      'project': ?project,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory DatastoreState.fromMap(Map<String, dynamic> map) {
    return DatastoreState(
      clusters: (() { final guardedValue = map['clusters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nfsDatastore: (() { final guardedValue = map['nfsDatastore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatastoreNfsDatastore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
