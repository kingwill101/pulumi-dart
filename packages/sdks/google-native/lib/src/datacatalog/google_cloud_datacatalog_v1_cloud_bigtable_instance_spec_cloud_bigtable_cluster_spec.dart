// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Spec that applies to clusters of an Instance of Cloud Bigtable.
class GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec {
  /// Name of the cluster.
  final pulumi.Input<String>? displayName;
  /// A link back to the parent resource, in this case Instance.
  final pulumi.Input<String>? linkedResource;
  /// Location of the cluster, typically a Cloud zone.
  final pulumi.Input<String>? location;
  /// Type of the resource. For a cluster this would be "CLUSTER".
  final pulumi.Input<String>? type;

  /// Creates a new [GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec].
  /// [displayName] Name of the cluster.
  /// [linkedResource] A link back to the parent resource, in this case Instance.
  /// [location] Location of the cluster, typically a Cloud zone.
  /// [type] Type of the resource. For a cluster this would be "CLUSTER".
  GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec({
    this.displayName,
    this.linkedResource,
    this.location,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'linkedResource': ?linkedResource,
      'location': ?location,
      'type': ?type,
    };
  }

  factory GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      linkedResource: map['linkedResource'] == null ? null : (map['linkedResource'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

