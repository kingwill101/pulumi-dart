// ignore_for_file: unused_element, unnecessary_cast


class DatastoreNfsDatastoreGoogleFileService {
  /// Google filestore instance resource name
  /// e.g. projects/my-project/locations/me-west1-b/instances/my-instance
  final String? filestoreInstance;
  /// Google netapp volume resource name
  /// e.g. projects/my-project/locations/me-west1-b/volumes/my-volume
  final String? netappVolume;

  /// Creates a new [DatastoreNfsDatastoreGoogleFileService].
  /// [filestoreInstance] Google filestore instance resource name
  /// [netappVolume] Google netapp volume resource name
  DatastoreNfsDatastoreGoogleFileService({
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
      filestoreInstance: map['filestoreInstance'] == null ? null : map['filestoreInstance'] as String,
      netappVolume: map['netappVolume'] == null ? null : map['netappVolume'] as String,
    );
  }
}

