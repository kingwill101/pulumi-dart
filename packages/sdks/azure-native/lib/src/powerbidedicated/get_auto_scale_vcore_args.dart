// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_powerbidedicated_get_auto_scale_vcore_args_doc}
/// Arguments for getAutoScaleVCore.
/// {@endtemplate}
/// {@macro pulumi_powerbidedicated_get_auto_scale_vcore_args_doc}
class GetAutoScaleVCoreArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the auto scale v-core. It must be a minimum of 3 characters, and a maximum of 63.
  final pulumi.Input<String> vcoreName;

  /// Creates a new [GetAutoScaleVCoreArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vcoreName] The name of the auto scale v-core. It must be a minimum of 3 characters, and a maximum of 63.
  GetAutoScaleVCoreArgs({
    required this.resourceGroupName,
    required this.vcoreName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'vcoreName': vcoreName,
    };
  }

  factory GetAutoScaleVCoreArgs.fromMap(Map<String, dynamic> map) {
    return GetAutoScaleVCoreArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      vcoreName: pulumi.Input.fromValue(map['vcoreName'] as String),
    );
  }
}
