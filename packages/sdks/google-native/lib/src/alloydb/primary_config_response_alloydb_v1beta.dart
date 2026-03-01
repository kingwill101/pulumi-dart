// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for the primary cluster. It has the list of clusters that are replicating from this cluster. This should be set if and only if the cluster is of type PRIMARY.
class PrimaryConfigResponseAlloydbV1beta {
  /// Names of the clusters that are replicating from this cluster.
  final List<String> secondaryClusterNames;

  /// Creates a new [PrimaryConfigResponseAlloydbV1beta].
  /// [secondaryClusterNames] Names of the clusters that are replicating from this cluster.
  PrimaryConfigResponseAlloydbV1beta({
    required this.secondaryClusterNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secondaryClusterNames': secondaryClusterNames,
    };
  }

  factory PrimaryConfigResponseAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return PrimaryConfigResponseAlloydbV1beta(
      secondaryClusterNames: (map['secondaryClusterNames'] as List).cast<String>(),
    );
  }
}

