// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiIndexDeployedIndex {
  /// The ID of the DeployedIndex in the above IndexEndpoint.
  final pulumi.Input<String> deployedIndexId;
  /// A resource name of the IndexEndpoint.
  final pulumi.Input<String> indexEndpoint;

  /// Creates a new [GetAiIndexDeployedIndex].
  /// [deployedIndexId] The ID of the DeployedIndex in the above IndexEndpoint.
  /// [indexEndpoint] A resource name of the IndexEndpoint.
  GetAiIndexDeployedIndex({
    required this.deployedIndexId,
    required this.indexEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployedIndexId': deployedIndexId,
      'indexEndpoint': indexEndpoint,
    };
  }

  factory GetAiIndexDeployedIndex.fromMap(Map<String, dynamic> map) {
    return GetAiIndexDeployedIndex(
      deployedIndexId: pulumi.Input.fromValue(map['deployedIndexId'] as String),
      indexEndpoint: pulumi.Input.fromValue(map['indexEndpoint'] as String),
    );
  }
}

