// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datastore_nfs_datastore.dart';

/// Input properties used for looking up and filtering Datastore resources.
class DatastoreState {
  /// Clusters to which the datastore is attached.
  final pulumi.Input<List<String>>? clusters;
  /// Creation time of this resource.
  final pulumi.Input<String>? createTime;
  /// User-provided description for this datastore
  final pulumi.Input<String>? description;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
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
  final pulumi.Input<String>? name;
  /// The NFS datastore configuration.
  /// Structure is documented below.
  final pulumi.Input<DatastoreNfsDatastore>? nfsDatastore;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The state of the Datastore.
  /// Possible values:
  /// CREATING
  /// ACTIVE
  /// UPDATING
  /// DELETING
  /// SOFT_DELETING
  /// SOFT_DELETED
  final pulumi.Input<String>? state;
  /// System-generated unique identifier for the resource.
  final pulumi.Input<String>? uid;
  /// Last update time of this resource.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [DatastoreState].
  /// [clusters] Clusters to which the datastore is attached.
  /// [createTime] Creation time of this resource.
  /// [description] User-provided description for this datastore
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] The user-provided identifier of the datastore to be created.
  /// [nfsDatastore] The NFS datastore configuration.
  /// [project] The ID of the project in which the resource belongs.
  /// [state] The state of the Datastore.
  /// [uid] System-generated unique identifier for the resource.
  /// [updateTime] Last update time of this resource.
  DatastoreState({
    pulumi.Output<List<String>>? clusters,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<DatastoreNfsDatastore>? nfsDatastore,
    pulumi.Output<String>? project,
    pulumi.Output<String>? state,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      clusters = pulumi.Input.asOptionalInput<List<String>>(clusters),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      nfsDatastore = pulumi.Input.asOptionalInput<DatastoreNfsDatastore>(nfsDatastore),
      project = pulumi.Input.asOptionalInput<String>(project),
      state = pulumi.Input.asOptionalInput<String>(state),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusters': ?clusters,
      'createTime': ?createTime,
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
      clusters: map['clusters'] == null ? null : pulumi.Output.create<List<String>>((map['clusters'] as List).cast<String>()),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nfsDatastore: map['nfsDatastore'] == null ? null : pulumi.Output.create<DatastoreNfsDatastore>(DatastoreNfsDatastore.fromMap((map['nfsDatastore'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

