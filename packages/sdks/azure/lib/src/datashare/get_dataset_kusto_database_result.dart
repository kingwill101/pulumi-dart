// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatasetKustoDatabase.
class GetDatasetKustoDatabaseResult {
  /// The name of the Data Share Dataset.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The location of the Kusto Cluster.
  final String? kustoClusterLocation;
  /// The resource ID of the Kusto Cluster Database to be shared with the receiver.
  final String? kustoDatabaseId;
  final String? name;
  final String? shareId;

  /// Creates a new [GetDatasetKustoDatabaseResult].
  /// [displayName] The name of the Data Share Dataset.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kustoClusterLocation] The location of the Kusto Cluster.
  /// [kustoDatabaseId] The resource ID of the Kusto Cluster Database to be shared with the receiver.
  /// [name] Optional.
  /// [shareId] Optional.
  const GetDatasetKustoDatabaseResult({
    this.displayName,
    this.id,
    this.kustoClusterLocation,
    this.kustoDatabaseId,
    this.name,
    this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
      'kustoClusterLocation': ?kustoClusterLocation,
      'kustoDatabaseId': ?kustoDatabaseId,
      'name': ?name,
      'shareId': ?shareId,
    };
  }

  factory GetDatasetKustoDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetKustoDatabaseResult(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kustoClusterLocation: (() { final guardedValue = map['kustoClusterLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kustoDatabaseId: (() { final guardedValue = map['kustoDatabaseId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareId: (() { final guardedValue = map['shareId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
