// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_ip_group_args_doc}
/// Arguments for getIpGroup.
/// {@endtemplate}
/// {@macro pulumi_network_get_ip_group_args_doc}
class GetIpGroupArgs {
  /// Expands resourceIds (of Firewalls/Network Security Groups etc.) back referenced by the IpGroups resource.
  final pulumi.Input<String>? expand;
  /// The name of the ipGroups.
  final pulumi.Input<String> ipGroupsName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIpGroupArgs].
  /// [expand] Expands resourceIds (of Firewalls/Network Security Groups etc.) back referenced by the IpGroups resource.
  /// [ipGroupsName] The name of the ipGroups.
  /// [resourceGroupName] The name of the resource group.
  GetIpGroupArgs({
    pulumi.Output<String>? expand,
    required pulumi.Output<String> ipGroupsName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      ipGroupsName = pulumi.Input.asInput<String>(ipGroupsName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'ipGroupsName': ipGroupsName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIpGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetIpGroupArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      ipGroupsName: pulumi.Output.create<String>(map['ipGroupsName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

