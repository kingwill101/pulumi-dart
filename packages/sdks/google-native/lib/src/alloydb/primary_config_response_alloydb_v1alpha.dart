// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the primary cluster. It has the list of clusters that are replicating from this cluster. This should be set if and only if the cluster is of type PRIMARY.
class PrimaryConfigResponseAlloydbV1alpha {
  /// Names of the clusters that are replicating from this cluster.
  final pulumi.Input<List<String>> secondaryClusterNames;

  /// Creates a new [PrimaryConfigResponseAlloydbV1alpha].
  /// [secondaryClusterNames] Names of the clusters that are replicating from this cluster.
  PrimaryConfigResponseAlloydbV1alpha({
    required this.secondaryClusterNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secondaryClusterNames': secondaryClusterNames,
    };
  }

  factory PrimaryConfigResponseAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return PrimaryConfigResponseAlloydbV1alpha(
      secondaryClusterNames: pulumi.Input.fromValue((map['secondaryClusterNames'] as List).cast<String>()),
    );
  }
}

