// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getNodeGroup.
class GetNodeGroupResult {
  final String clusterId;

  /// The time at which the node group was created.
  final String createdAt;

  /// The size (in GB) of the Docker volume.
  final int dockerVolumeSize;

  /// The flavor for the nodes of the node group.
  final String flavor;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The reference to an image that is used for nodes of the node group.
  final String image;

  /// The list of key value pairs representing additional properties of
  /// the node group.
  final Map<String, String> labels;

  /// The maximum number of nodes for the node group.
  final int maxNodeCount;

  /// The minimum number of nodes for the node group.
  final int minNodeCount;

  /// See Argument Reference above.
  final String name;

  /// The number of nodes for the node group.
  final int nodeCount;

  /// The project of the node group.
  final String projectId;

  /// See Argument Reference above.
  final String region;

  /// The role of the node group.
  final String role;

  /// The time at which the node group was updated.
  final String updatedAt;

  /// Creates a new [GetNodeGroupResult].
  /// [clusterId] Required.
  /// [createdAt] The time at which the node group was created.
  /// [dockerVolumeSize] The size (in GB) of the Docker volume.
  /// [flavor] The flavor for the nodes of the node group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [image] The reference to an image that is used for nodes of the node group.
  /// [labels] The list of key value pairs representing additional properties of
  /// [maxNodeCount] The maximum number of nodes for the node group.
  /// [minNodeCount] The minimum number of nodes for the node group.
  /// [name] See Argument Reference above.
  /// [nodeCount] The number of nodes for the node group.
  /// [projectId] The project of the node group.
  /// [region] See Argument Reference above.
  /// [role] The role of the node group.
  /// [updatedAt] The time at which the node group was updated.
  GetNodeGroupResult({
    required this.clusterId,
    required this.createdAt,
    required this.dockerVolumeSize,
    required this.flavor,
    required this.id,
    required this.image,
    required this.labels,
    required this.maxNodeCount,
    required this.minNodeCount,
    required this.name,
    required this.nodeCount,
    required this.projectId,
    required this.region,
    required this.role,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'createdAt': createdAt,
      'dockerVolumeSize': dockerVolumeSize,
      'flavor': flavor,
      'id': id,
      'image': image,
      'labels': labels,
      'maxNodeCount': maxNodeCount,
      'minNodeCount': minNodeCount,
      'name': name,
      'nodeCount': nodeCount,
      'projectId': projectId,
      'region': region,
      'role': role,
      'updatedAt': updatedAt,
    };
  }

  factory GetNodeGroupResult.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupResult(
      clusterId: map['clusterId'] as String,
      createdAt: map['createdAt'] as String,
      dockerVolumeSize: map['dockerVolumeSize'] as int,
      flavor: map['flavor'] as String,
      id: map['id'] as String,
      image: map['image'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      maxNodeCount: map['maxNodeCount'] as int,
      minNodeCount: map['minNodeCount'] as int,
      name: map['name'] as String,
      nodeCount: map['nodeCount'] as int,
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      role: map['role'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }
}
