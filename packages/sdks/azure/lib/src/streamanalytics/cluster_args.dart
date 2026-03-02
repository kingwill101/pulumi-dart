// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_streamanalytics_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_cluster_cluster_args_doc}
class ClusterArgs {
  /// The Azure Region where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Stream Analytics Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The number of streaming units supported by the Cluster. Accepted values are multiples of `36` in the range of `36` to `216`.
  final pulumi.Input<int> streamingCapacity;
  /// A mapping of tags which should be assigned to the Stream Analytics.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ClusterArgs].
  /// [location] The Azure Region where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Stream Analytics Cluster. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created.
  /// [streamingCapacity] The number of streaming units supported by the Cluster. Accepted values are multiples of `36` in the range of `36` to `216`.
  /// [tags] A mapping of tags which should be assigned to the Stream Analytics.
  ClusterArgs({
    this.location,
    this.name,
    required this.resourceGroupName,
    required this.streamingCapacity,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'streamingCapacity': streamingCapacity,
      'tags': ?tags,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      streamingCapacity: (map['streamingCapacity'] as int).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

