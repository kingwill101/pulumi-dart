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
  const GetVolumeArgs({
    required this.resourceGroupName,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'volumeName': volumeName,
    };
  }

  factory GetVolumeArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      volumeName: pulumi.Input.fromValue(map['volumeName'] as String),
    );
  }
}
