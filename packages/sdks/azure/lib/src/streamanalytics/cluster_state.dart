// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// The Azure Region where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Stream Analytics Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The number of streaming units supported by the Cluster. Accepted values are multiples of `36` in the range of `36` to `216`.
  final pulumi.Input<int>? streamingCapacity;
  /// A mapping of tags which should be assigned to the Stream Analytics.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ClusterState].
  /// [location] The Azure Region where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Stream Analytics Cluster. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created.
  /// [streamingCapacity] The number of streaming units supported by the Cluster. Accepted values are multiples of `36` in the range of `36` to `216`.
  /// [tags] A mapping of tags which should be assigned to the Stream Analytics.
  ClusterState({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<int>? streamingCapacity,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      streamingCapacity = pulumi.Input.asOptionalInput<int>(streamingCapacity),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'streamingCapacity': ?streamingCapacity,
      'tags': ?tags,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      streamingCapacity: map['streamingCapacity'] == null ? null : pulumi.Output.create<int>(map['streamingCapacity'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

