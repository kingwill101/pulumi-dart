// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCluster.
class GetClusterResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Location of the EventHub Cluster.
  final String location;
  final String name;
  final String resourceGroupName;
  /// SKU name of the EventHub Cluster.
  final String skuName;

  /// Creates a new [GetClusterResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Location of the EventHub Cluster.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [skuName] SKU name of the EventHub Cluster.
  const GetClusterResult({
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.skuName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] as String,
    );
  }
}

