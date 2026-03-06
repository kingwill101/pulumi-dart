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
  const StaticMemberArgs({
    required this.networkGroupName,
    required this.networkManagerName,
    required this.resourceGroupName,
    this.resourceId,
    this.staticMemberName,
  });

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
      networkGroupName: pulumi.Input.fromValue(map['networkGroupName'] as String),
      networkManagerName: pulumi.Input.fromValue(map['networkManagerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      staticMemberName: (() { final guardedValue = map['staticMemberName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

