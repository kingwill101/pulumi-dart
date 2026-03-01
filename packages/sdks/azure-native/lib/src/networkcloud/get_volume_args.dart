// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkcloud_get_volume_args_doc}
/// Arguments for getVolume.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_get_volume_args_doc}
class GetVolumeArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the volume.
  final pulumi.Input<String> volumeName;

  /// Creates a new [GetVolumeArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [volumeName] The name of the volume.
  GetVolumeArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> volumeName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      volumeName = pulumi.Input.asInput<String>(volumeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'volumeName': volumeName,
    };
  }

  factory GetVolumeArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      volumeName: pulumi.Output.create<String>(map['volumeName'] as String),
    );
  }
}

