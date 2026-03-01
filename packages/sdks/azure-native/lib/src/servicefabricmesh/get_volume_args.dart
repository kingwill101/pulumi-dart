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
  GetVolumeArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> volumeResourceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      volumeResourceName = pulumi.Input.asInput<String>(volumeResourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'volumeResourceName': volumeResourceName,
    };
  }

  factory GetVolumeArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      volumeResourceName: pulumi.Output.create<String>(map['volumeResourceName'] as String),
    );
  }
}

