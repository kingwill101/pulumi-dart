// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_datastore_nfs_datastore.dart';

/// Result data returned by getDatastore.
class GetDatastoreResult {
  final List<String>? clusters;
  final String? createTime;
  final String? deletionPolicy;
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? name;
  final List<GetDatastoreNfsDatastore>? nfsDatastores;
  final String? project;
  final String? state;
  final String? uid;
  final String? updateTime;

  /// Creates a new [GetDatastoreResult].
  /// [clusters] Optional.
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [name] Optional.
  /// [nfsDatastores] Optional.
  /// [project] Optional.
  /// [state] Optional.
  /// [uid] Optional.
  /// [updateTime] Optional.
  const GetDatastoreResult({
    this.clusters,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.id,
    this.location,
    this.name,
    this.nfsDatastores,
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
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'nfsDatastores': ?(() { final guardedValue = nfsDatastores; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatastoreNfsDatastore, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetDatastoreResult.fromMap(Map<String, dynamic> map) {
    return GetDatastoreResult(
      clusters: (() { final guardedValue = map['clusters']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nfsDatastores: (() { final guardedValue = map['nfsDatastores']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatastoreNfsDatastore>(guardedValue, (value) => GetDatastoreNfsDatastore.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
