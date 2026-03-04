// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_dedicated_host_get_dedicated_host_args_doc}
/// Arguments for getDedicatedHost.
/// {@endtemplate}
/// {@macro pulumi_compute_get_dedicated_host_get_dedicated_host_args_doc}
class GetDedicatedHostArgs {
  /// Specifies the name of the Dedicated Host Group the Dedicated Host is located in.
  final pulumi.Input<String> dedicatedHostGroupName;

  /// Specifies the name of the Dedicated Host.
  final pulumi.Input<String> name;

  /// Specifies the name of the resource group the Dedicated Host is located in.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDedicatedHostArgs].
  /// [dedicatedHostGroupName] Specifies the name of the Dedicated Host Group the Dedicated Host is located in.
  /// [name] Specifies the name of the Dedicated Host.
  /// [resourceGroupName] Specifies the name of the resource group the Dedicated Host is located in.
  GetDedicatedHostArgs({
    required this.dedicatedHostGroupName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedHostGroupName': dedicatedHostGroupName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDedicatedHostArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostArgs(
      dedicatedHostGroupName: pulumi.Input.fromValue(
        map['dedicatedHostGroupName'] as String,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
