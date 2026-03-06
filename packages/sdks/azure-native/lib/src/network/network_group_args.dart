// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_group_args_doc}
/// The set of arguments for NetworkGroup.
/// {@endtemplate}
/// {@macro pulumi_network_network_group_args_doc}
class NetworkGroupArgs {
  /// A description of the network group.
  final pulumi.Input<String>? description;
  /// The type of the group member.
  final pulumi.Input<String>? memberType;
  /// The name of the network group.
  final pulumi.Input<String>? networkGroupName;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [NetworkGroupArgs].
  /// [description] A description of the network group.
  /// [memberType] The type of the group member.
  /// [networkGroupName] The name of the network group.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  const NetworkGroupArgs({
    this.description,
    this.memberType,
    this.networkGroupName,
    required this.networkManagerName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'memberType': ?memberType,
      'networkGroupName': ?networkGroupName,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory NetworkGroupArgs.fromMap(Map<String, dynamic> map) {
    return NetworkGroupArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberType: (() { final guardedValue = map['memberType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkGroupName: (() { final guardedValue = map['networkGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkManagerName: pulumi.Input.fromValue(map['networkManagerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

