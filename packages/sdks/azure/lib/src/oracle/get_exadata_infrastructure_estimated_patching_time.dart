// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetExadataInfrastructureEstimatedPatchingTime {
  /// The estimated time required in minutes for database server patching.
  final pulumi.Input<int> estimatedDbServerPatchingTime;
  /// The estimated time required in minutes for network switch patching.
  final pulumi.Input<int> estimatedNetworkSwitchesPatchingTime;
  /// The estimated time required in minutes for storage server patching.
  final pulumi.Input<int> estimatedStorageServerPatchingTime;
  /// The estimated total time required in minutes for all patching operations.
  final pulumi.Input<int> totalEstimatedPatchingTime;

  /// Creates a new [GetExadataInfrastructureEstimatedPatchingTime].
  /// [estimatedDbServerPatchingTime] The estimated time required in minutes for database server patching.
  /// [estimatedNetworkSwitchesPatchingTime] The estimated time required in minutes for network switch patching.
  /// [estimatedStorageServerPatchingTime] The estimated time required in minutes for storage server patching.
  /// [totalEstimatedPatchingTime] The estimated total time required in minutes for all patching operations.
  const GetExadataInfrastructureEstimatedPatchingTime({
    required this.estimatedDbServerPatchingTime,
    required this.estimatedNetworkSwitchesPatchingTime,
    required this.estimatedStorageServerPatchingTime,
    required this.totalEstimatedPatchingTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'estimatedDbServerPatchingTime': estimatedDbServerPatchingTime,
      'estimatedNetworkSwitchesPatchingTime': estimatedNetworkSwitchesPatchingTime,
      'estimatedStorageServerPatchingTime': estimatedStorageServerPatchingTime,
      'totalEstimatedPatchingTime': totalEstimatedPatchingTime,
    };
  }

  factory GetExadataInfrastructureEstimatedPatchingTime.fromMap(Map<String, dynamic> map) {
    return GetExadataInfrastructureEstimatedPatchingTime(
      estimatedDbServerPatchingTime: pulumi.Input.fromValue(map['estimatedDbServerPatchingTime'] as int),
      estimatedNetworkSwitchesPatchingTime: pulumi.Input.fromValue(map['estimatedNetworkSwitchesPatchingTime'] as int),
      estimatedStorageServerPatchingTime: pulumi.Input.fromValue(map['estimatedStorageServerPatchingTime'] as int),
      totalEstimatedPatchingTime: pulumi.Input.fromValue(map['totalEstimatedPatchingTime'] as int),
    );
  }
}
