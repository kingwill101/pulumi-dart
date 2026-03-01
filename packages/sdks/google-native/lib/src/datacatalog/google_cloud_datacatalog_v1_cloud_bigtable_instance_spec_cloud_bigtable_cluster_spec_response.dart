// ignore_for_file: unused_element, unnecessary_cast


/// Spec that applies to clusters of an Instance of Cloud Bigtable.
class GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpecResponse {
  /// Name of the cluster.
  final String displayName;
  /// A link back to the parent resource, in this case Instance.
  final String linkedResource;
  /// Location of the cluster, typically a Cloud zone.
  final String location;
  /// Type of the resource. For a cluster this would be "CLUSTER".
  final String type;

  /// Creates a new [GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpecResponse].
  /// [displayName] Name of the cluster.
  /// [linkedResource] A link back to the parent resource, in this case Instance.
  /// [location] Location of the cluster, typically a Cloud zone.
  /// [type] Type of the resource. For a cluster this would be "CLUSTER".
  GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpecResponse({
    required this.displayName,
    required this.linkedResource,
    required this.location,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'linkedResource': linkedResource,
      'location': location,
      'type': type,
    };
  }

  factory GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpecResponse(
      displayName: map['displayName'] as String,
      linkedResource: map['linkedResource'] as String,
      location: map['location'] as String,
      type: map['type'] as String,
    );
  }
}

