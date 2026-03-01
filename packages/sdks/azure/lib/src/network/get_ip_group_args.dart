// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_ip_group_get_ip_group_args_doc}
/// Arguments for getIpGroup.
/// {@endtemplate}
/// {@macro pulumi_network_get_ip_group_get_ip_group_args_doc}
class GetIpGroupArgs {
  /// Specifies the Name of the IP Group.
  final pulumi.Input<String> name;
  /// Specifies the Name of the Resource Group within which the IP Group exists
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIpGroupArgs].
  /// [name] Specifies the Name of the IP Group.
  /// [resourceGroupName] Specifies the Name of the Resource Group within which the IP Group exists
  GetIpGroupArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIpGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetIpGroupArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

