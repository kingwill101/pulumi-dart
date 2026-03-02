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
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBastionHostArgs.fromMap(Map<String, dynamic> map) {
    return GetBastionHostArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

