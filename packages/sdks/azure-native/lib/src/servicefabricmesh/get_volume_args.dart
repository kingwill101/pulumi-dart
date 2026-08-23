// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabricmesh_get_volume_args_doc}
/// Arguments for getVolume.
/// {@endtemplate}
/// {@macro pulumi_servicefabricmesh_get_volume_args_doc}
class GetVolumeArgs {
  /// Azure resource group name
  final pulumi.Input<String> resourceGroupName;
  /// The identity of the volume.
  final pulumi.Input<String> volumeResourceName;

  /// Creates a new [GetVolumeArgs].
  /// [resourceGroupName] Azure resource group name
  /// [volumeResourceName] The identity of the volume.
  const GetVolumeArgs({
    required this.resourceGroupName,
    required this.volumeResourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'volumeResourceName': volumeResourceName,
    };
  }

  factory GetVolumeArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      volumeResourceName: pulumi.Input.fromValue(map['volumeResourceName'] as String),
    );
  }
}
