// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_active_sessions_args_doc}
/// Arguments for getActiveSessions.
/// {@endtemplate}
/// {@macro pulumi_network_get_active_sessions_args_doc}
class GetActiveSessionsArgs {
  /// The name of the Bastion Host.
  final pulumi.Input<String> bastionHostName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetActiveSessionsArgs].
  /// [bastionHostName] The name of the Bastion Host.
  /// [resourceGroupName] The name of the resource group.
  GetActiveSessionsArgs({
    required pulumi.Output<String> bastionHostName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      bastionHostName = pulumi.Input.asInput<String>(bastionHostName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bastionHostName': bastionHostName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetActiveSessionsArgs.fromMap(Map<String, dynamic> map) {
    return GetActiveSessionsArgs(
      bastionHostName: pulumi.Output.create<String>(map['bastionHostName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

