// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatastoreNfsDatastoreGoogleFileService {
  /// Google filestore instance resource name
  /// e.g. projects/my-project/locations/me-west1-b/instances/my-instance
  final pulumi.Input<String> filestoreInstance;
  /// Google netapp volume resource name
  /// e.g. projects/my-project/locations/me-west1-b/volumes/my-volume
  final pulumi.Input<String> netappVolume;

  /// Creates a new [GetDatastoreNfsDatastoreGoogleFileService].
  /// [filestoreInstance] Google filestore instance resource name
  /// [netappVolume] Google netapp volume resource name
  GetDatastoreNfsDatastoreGoogleFileService({
    required this.filestoreInstance,
    required this.netappVolume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filestoreInstance': filestoreInstance,
      'netappVolume': netappVolume,
    };
  }

  factory GetDatastoreNfsDatastoreGoogleFileService.fromMap(Map<String, dynamic> map) {
    return GetDatastoreNfsDatastoreGoogleFileService(
      filestoreInstance: (map['filestoreInstance'] as String).input(),
      netappVolume: (map['netappVolume'] as String).input(),
    );
  }
}

