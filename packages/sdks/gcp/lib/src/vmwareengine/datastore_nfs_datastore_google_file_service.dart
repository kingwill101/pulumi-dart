// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatastoreNfsDatastoreGoogleFileService {
  /// Google filestore instance resource name
  /// e.g. projects/my-project/locations/me-west1-b/instances/my-instance
  final pulumi.Input<String>? filestoreInstance;
  /// Google netapp volume resource name
  /// e.g. projects/my-project/locations/me-west1-b/volumes/my-volume
  final pulumi.Input<String>? netappVolume;

  /// Creates a new [DatastoreNfsDatastoreGoogleFileService].
  /// [filestoreInstance] Google filestore instance resource name
  /// [netappVolume] Google netapp volume resource name
  const DatastoreNfsDatastoreGoogleFileService({
    this.filestoreInstance,
    this.netappVolume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filestoreInstance': ?filestoreInstance,
      'netappVolume': ?netappVolume,
    };
  }

  factory DatastoreNfsDatastoreGoogleFileService.fromMap(Map<String, dynamic> map) {
    return DatastoreNfsDatastoreGoogleFileService(
      filestoreInstance: (() { final guardedValue = map['filestoreInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      netappVolume: (() { final guardedValue = map['netappVolume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
