// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_static_member_args_doc}
/// The set of arguments for StaticMember.
/// {@endtemplate}
/// {@macro pulumi_network_static_member_args_doc}
class StaticMemberArgs {
  /// The name of the network group.
  final pulumi.Input<String> networkGroupName;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource Id.
  final pulumi.Input<String>? resourceId;
  /// The name of the static member.
  final pulumi.Input<String>? staticMemberName;

  /// Creates a new [StaticMemberArgs].
  /// [networkGroupName] The name of the network group.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  /// [resourceId] Resource Id.
  /// [staticMemberName] The name of the static member.
  StaticMemberArgs({
    required pulumi.Output<String> networkGroupName,
    required pulumi.Output<String> networkManagerName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceId,
    pulumi.Output<String>? staticMemberName,
  }) :
      networkGroupName = pulumi.Input.asInput<String>(networkGroupName),
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      staticMemberName = pulumi.Input.asOptionalInput<String>(staticMemberName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkGroupName': networkGroupName,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
      'resourceId': ?resourceId,
      'staticMemberName': ?staticMemberName,
    };
  }

  factory StaticMemberArgs.fromMap(Map<String, dynamic> map) {
    return StaticMemberArgs(
      networkGroupName: pulumi.Output.create<String>(map['networkGroupName'] as String),
      networkManagerName: pulumi.Output.create<String>(map['networkManagerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      staticMemberName: map['staticMemberName'] == null ? null : pulumi.Output.create<String>(map['staticMemberName'] as String),
    );
  }
}

