// ignore_for_file: unused_element, unnecessary_cast


class AiIndexDeployedIndex {
  /// (Output)
  /// The ID of the DeployedIndex in the above IndexEndpoint.
  final String? deployedIndexId;
  /// (Output)
  /// A resource name of the IndexEndpoint.
  final String? indexEndpoint;

  /// Creates a new [AiIndexDeployedIndex].
  /// [deployedIndexId] (Output)
  /// [indexEndpoint] (Output)
  AiIndexDeployedIndex({
    this.deployedIndexId,
    this.indexEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployedIndexId': ?deployedIndexId,
      'indexEndpoint': ?indexEndpoint,
    };
  }

  factory AiIndexDeployedIndex.fromMap(Map<String, dynamic> map) {
    return AiIndexDeployedIndex(
      deployedIndexId: map['deployedIndexId'] == null ? null : map['deployedIndexId'] as String,
      indexEndpoint: map['indexEndpoint'] == null ? null : map['indexEndpoint'] as String,
    );
  }
}

