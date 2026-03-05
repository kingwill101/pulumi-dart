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
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      streamingCapacity: pulumi.Input.fromValue(map['streamingCapacity'] as int),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

