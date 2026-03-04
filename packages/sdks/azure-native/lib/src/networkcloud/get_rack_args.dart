// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkcloud_get_rack_args_doc}
/// Arguments for getRack.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_get_rack_args_doc}
class GetRackArgs {
  /// The name of the rack.
  final pulumi.Input<String> rackName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRackArgs].
  /// [rackName] The name of the rack.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetRackArgs({required this.rackName, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rackName': rackName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRackArgs.fromMap(Map<String, dynamic> map) {
    return GetRackArgs(
      rackName: pulumi.Input.fromValue(map['rackName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
