// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_stores_data_store.dart';

/// Result data returned by getDataStores.
class GetDataStoresResult {
  /// A list of all retrieved Discovery Engine data stores. Structure is defined below.
  final List<GetDataStoresDataStore>? dataStores;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? project;

  /// Creates a new [GetDataStoresResult].
  /// [dataStores] A list of all retrieved Discovery Engine data stores. Structure is defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Optional.
  const GetDataStoresResult({
    this.dataStores,
    this.id,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStores': ?(() { final guardedValue = dataStores; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataStoresDataStore, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetDataStoresResult.fromMap(Map<String, dynamic> map) {
    return GetDataStoresResult(
      dataStores: (() { final guardedValue = map['dataStores']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataStoresDataStore>(guardedValue, (value) => GetDataStoresDataStore.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
