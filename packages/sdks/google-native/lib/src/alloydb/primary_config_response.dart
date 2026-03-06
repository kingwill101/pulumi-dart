// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the primary cluster. It has the list of clusters that are replicating from this cluster. This should be set if and only if the cluster is of type PRIMARY.
class PrimaryConfigResponse {
  /// Names of the clusters that are replicating from this cluster.
  final pulumi.Input<List<String>> secondaryClusterNames;

  /// Creates a new [PrimaryConfigResponse].
  /// [secondaryClusterNames] Names of the clusters that are replicating from this cluster.
  const PrimaryConfigResponse({
    required this.secondaryClusterNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secondaryClusterNames': secondaryClusterNames,
    };
  }

  factory PrimaryConfigResponse.fromMap(Map<String, dynamic> map) {
    return PrimaryConfigResponse(
      secondaryClusterNames: pulumi.Input.fromValue((map['secondaryClusterNames'] as List).cast<String>()),
    );
  }
}

