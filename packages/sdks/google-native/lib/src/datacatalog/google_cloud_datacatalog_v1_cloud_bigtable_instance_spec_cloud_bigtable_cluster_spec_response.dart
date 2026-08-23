// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Spec that applies to clusters of an Instance of Cloud Bigtable.
class GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpecResponse {
  /// Name of the cluster.
  final pulumi.Input<String> displayName;
  /// A link back to the parent resource, in this case Instance.
  final pulumi.Input<String> linkedResource;
  /// Location of the cluster, typically a Cloud zone.
  final pulumi.Input<String> location;
  /// Type of the resource. For a cluster this would be "CLUSTER".
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpecResponse].
  /// [displayName] Name of the cluster.
  /// [linkedResource] A link back to the parent resource, in this case Instance.
  /// [location] Location of the cluster, typically a Cloud zone.
  /// [type] Type of the resource. For a cluster this would be "CLUSTER".
  const GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpecResponse({
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
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      linkedResource: pulumi.Input.fromValue(map['linkedResource'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
