// ignore_for_file: unused_element, unnecessary_cast

import 'datastore_nfs_datastore_google_file_service.dart';
import 'datastore_nfs_datastore_third_party_file_service.dart';

class DatastoreNfsDatastore {
  /// Google service file service configuration
  /// Structure is documented below.
  final DatastoreNfsDatastoreGoogleFileService? googleFileService;
  /// Third party file service configuration
  /// Structure is documented below.
  final DatastoreNfsDatastoreThirdPartyFileService? thirdPartyFileService;

  /// Creates a new [DatastoreNfsDatastore].
  /// [googleFileService] Google service file service configuration
  /// [thirdPartyFileService] Third party file service configuration
  DatastoreNfsDatastore({
    this.googleFileService,
    this.thirdPartyFileService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'googleFileService': ?googleFileService == null ? null : googleFileService!.toMap(),
      'thirdPartyFileService': ?thirdPartyFileService == null ? null : thirdPartyFileService!.toMap(),
    };
  }

  factory DatastoreNfsDatastore.fromMap(Map<String, dynamic> map) {
    return DatastoreNfsDatastore(
      googleFileService: map['googleFileService'] == null ? null : DatastoreNfsDatastoreGoogleFileService.fromMap((map['googleFileService'] as Map).cast<String, dynamic>()),
      thirdPartyFileService: map['thirdPartyFileService'] == null ? null : DatastoreNfsDatastoreThirdPartyFileService.fromMap((map['thirdPartyFileService'] as Map).cast<String, dynamic>()),
    );
  }
}

