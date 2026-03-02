// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_datastore_nfs_datastore.dart';

/// Result data returned by getDatastore.
class GetDatastoreResult {
  final List<String> clusters;
  final String createTime;
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String name;
  final List<GetDatastoreNfsDatastore> nfsDatastores;
  final String? project;
  final String state;
  final String uid;
  final String updateTime;

  /// Creates a new [GetDatastoreResult].
  /// [clusters] Required.
  /// [createTime] Required.
  /// [description] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [name] Required.
  /// [nfsDatastores] Required.
  /// [project] Optional.
  /// [state] Required.
  /// [uid] Required.
  /// [updateTime] Required.
  GetDatastoreResult({
    required this.clusters,
    required this.createTime,
    required this.description,
    required this.id,
    required this.location,
    required this.name,
    required this.nfsDatastores,
    this.project,
    required this.state,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusters': clusters,
      'createTime': createTime,
      'description': description,
      'id': id,
      'location': location,
      'name': name,
      'nfsDatastores': pulumi.Input.encodeList<GetDatastoreNfsDatastore, Map<String, dynamic>>(nfsDatastores, (value) => value.toMap()),
      'project': ?project,
      'state': state,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetDatastoreResult.fromMap(Map<String, dynamic> map) {
    return GetDatastoreResult(
      clusters: (map['clusters'] as List).cast<String>(),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      nfsDatastores: pulumi.Input.decodeList<GetDatastoreNfsDatastore>(map['nfsDatastores'], (value) => GetDatastoreNfsDatastore.fromMap((value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project']! as String,
      state: map['state'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

