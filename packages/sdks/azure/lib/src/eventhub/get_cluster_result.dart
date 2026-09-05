// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCluster.
class GetClusterResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Location of the EventHub Cluster.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// SKU name of the EventHub Cluster.
  final String? skuName;

  /// Creates a new [GetClusterResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Location of the EventHub Cluster.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [skuName] SKU name of the EventHub Cluster.
  const GetClusterResult({
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.skuName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
