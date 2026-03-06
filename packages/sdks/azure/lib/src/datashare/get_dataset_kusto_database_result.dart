// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatasetKustoDatabase.
class GetDatasetKustoDatabaseResult {
  /// The name of the Data Share Dataset.
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The location of the Kusto Cluster.
  final String kustoClusterLocation;
  /// The resource ID of the Kusto Cluster Database to be shared with the receiver.
  final String kustoDatabaseId;
  final String name;
  final String shareId;

  /// Creates a new [GetDatasetKustoDatabaseResult].
  /// [displayName] The name of the Data Share Dataset.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kustoClusterLocation] The location of the Kusto Cluster.
  /// [kustoDatabaseId] The resource ID of the Kusto Cluster Database to be shared with the receiver.
  /// [name] Required.
  /// [shareId] Required.
  const GetDatasetKustoDatabaseResult({
    required this.displayName,
    required this.id,
    required this.kustoClusterLocation,
    required this.kustoDatabaseId,
    required this.name,
    required this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'id': id,
      'kustoClusterLocation': kustoClusterLocation,
      'kustoDatabaseId': kustoDatabaseId,
      'name': name,
      'shareId': shareId,
    };
  }

  factory GetDatasetKustoDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetKustoDatabaseResult(
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      kustoClusterLocation: map['kustoClusterLocation'] as String,
      kustoDatabaseId: map['kustoDatabaseId'] as String,
      name: map['name'] as String,
      shareId: map['shareId'] as String,
    );
  }
}

