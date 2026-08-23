// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_commit_args_doc}
/// Arguments for getCommit.
/// {@endtemplate}
/// {@macro pulumi_network_get_commit_args_doc}
class GetCommitArgs {
  /// The name of the commit.
  final pulumi.Input<String> commitName;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCommitArgs].
  /// [commitName] The name of the commit.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetCommitArgs({
    required this.commitName,
    required this.networkManagerName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitName': commitName,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCommitArgs.fromMap(Map<String, dynamic> map) {
    return GetCommitArgs(
      commitName: pulumi.Input.fromValue(map['commitName'] as String),
      networkManagerName: pulumi.Input.fromValue(map['networkManagerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
