// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatasetKustoCluster.
class GetDatasetKustoClusterResult {
  /// The name of the Data Share Dataset.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The resource ID of the Kusto Cluster to be shared with the receiver.
  final String? kustoClusterId;
  /// The location of the Kusto Cluster.
  final String? kustoClusterLocation;
  final String? name;
  final String? shareId;

  /// Creates a new [GetDatasetKustoClusterResult].
  /// [displayName] The name of the Data Share Dataset.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kustoClusterId] The resource ID of the Kusto Cluster to be shared with the receiver.
  /// [kustoClusterLocation] The location of the Kusto Cluster.
  /// [name] Optional.
  /// [shareId] Optional.
  const GetDatasetKustoClusterResult({
    this.displayName,
    this.id,
    this.kustoClusterId,
    this.kustoClusterLocation,
    this.name,
    this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
      'kustoClusterId': ?kustoClusterId,
      'kustoClusterLocation': ?kustoClusterLocation,
      'name': ?name,
      'shareId': ?shareId,
    };
  }

  factory GetDatasetKustoClusterResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetKustoClusterResult(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kustoClusterId: (() { final guardedValue = map['kustoClusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kustoClusterLocation: (() { final guardedValue = map['kustoClusterLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareId: (() { final guardedValue = map['shareId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
