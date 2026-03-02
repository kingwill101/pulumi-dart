// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_datastore_nfs_datastore_google_file_service.dart';
import 'get_datastore_nfs_datastore_third_party_file_service.dart';

class GetDatastoreNfsDatastore {
  /// Google service file service configuration
  final pulumi.Input<List<GetDatastoreNfsDatastoreGoogleFileService>> googleFileServices;
  /// Third party file service configuration
  final pulumi.Input<List<GetDatastoreNfsDatastoreThirdPartyFileService>> thirdPartyFileServices;

  /// Creates a new [GetDatastoreNfsDatastore].
  /// [googleFileServices] Google service file service configuration
  /// [thirdPartyFileServices] Third party file service configuration
  GetDatastoreNfsDatastore({
    required this.googleFileServices,
    required this.thirdPartyFileServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'googleFileServices': pulumi.Input.mapInputValue<List<GetDatastoreNfsDatastoreGoogleFileService>, List<Map<String, dynamic>>>(googleFileServices, (value) => pulumi.Input.encodeList<GetDatastoreNfsDatastoreGoogleFileService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'thirdPartyFileServices': pulumi.Input.mapInputValue<List<GetDatastoreNfsDatastoreThirdPartyFileService>, List<Map<String, dynamic>>>(thirdPartyFileServices, (value) => pulumi.Input.encodeList<GetDatastoreNfsDatastoreThirdPartyFileService, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDatastoreNfsDatastore.fromMap(Map<String, dynamic> map) {
    return GetDatastoreNfsDatastore(
      googleFileServices: (pulumi.Input.decodeList<GetDatastoreNfsDatastoreGoogleFileService>(map['googleFileServices'], (value) => GetDatastoreNfsDatastoreGoogleFileService.fromMap((value as Map).cast<String, dynamic>()))).input(),
      thirdPartyFileServices: (pulumi.Input.decodeList<GetDatastoreNfsDatastoreThirdPartyFileService>(map['thirdPartyFileServices'], (value) => GetDatastoreNfsDatastoreThirdPartyFileService.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

