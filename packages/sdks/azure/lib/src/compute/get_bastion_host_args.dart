// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_bastion_host_get_bastion_host_args_doc}
/// Arguments for getBastionHost.
/// {@endtemplate}
/// {@macro pulumi_compute_get_bastion_host_get_bastion_host_args_doc}
class GetBastionHostArgs {
  /// The name of the Bastion Host.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Bastion Host exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBastionHostArgs].
  /// [name] The name of the Bastion Host.
  /// [resourceGroupName] The name of the Resource Group where the Bastion Host exists.
  GetBastionHostArgs({
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

  factory GetBastionHostArgs.fromMap(Map<String, dynamic> map) {
    return GetBastionHostArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

