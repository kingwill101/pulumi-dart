// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiIndexDeployedIndex {
  /// (Output)
  /// The ID of the DeployedIndex in the above IndexEndpoint.
  final pulumi.Input<String>? deployedIndexId;
  /// (Output)
  /// A resource name of the IndexEndpoint.
  final pulumi.Input<String>? indexEndpoint;

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
      deployedIndexId: (() { final guardedValue = map['deployedIndexId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indexEndpoint: (() { final guardedValue = map['indexEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

