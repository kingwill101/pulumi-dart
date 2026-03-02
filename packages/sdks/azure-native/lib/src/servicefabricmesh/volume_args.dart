// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_provider_parameters_azure_file.dart';

/// {@template pulumi_servicefabricmesh_volume_args_doc}
/// The set of arguments for Volume.
/// {@endtemplate}
/// {@macro pulumi_servicefabricmesh_volume_args_doc}
class VolumeArgs {
  /// This type describes a volume provided by an Azure Files file share.
  final pulumi.Input<VolumeProviderParametersAzureFile>? azureFileParameters;
  /// User readable description of the volume.
  final pulumi.Input<String>? description;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Provider of the volume.
  final pulumi.Input<String> provider;
  /// Azure resource group name
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The identity of the volume.
  final pulumi.Input<String>? volumeResourceName;

  /// Creates a new [VolumeArgs].
  /// [azureFileParameters] This type describes a volume provided by an Azure Files file share.
  /// [description] User readable description of the volume.
  /// [location] The geo-location where the resource lives
  /// [provider] Provider of the volume.
  /// [resourceGroupName] Azure resource group name
  /// [tags] Resource tags.
  /// [volumeResourceName] The identity of the volume.
  VolumeArgs({
    this.azureFileParameters,
    this.description,
    this.location,
    required this.provider,
    required this.resourceGroupName,
    this.tags,
    this.volumeResourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFileParameters': ?pulumi.Input.mapOptionalInputValue<VolumeProviderParametersAzureFile, Map<String, dynamic>>(azureFileParameters, (value) => value.toMap()),
      'description': ?description,
      'location': ?location,
      'provider': provider,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'volumeResourceName': ?volumeResourceName,
    };
  }

  factory VolumeArgs.fromMap(Map<String, dynamic> map) {
    return VolumeArgs(
      azureFileParameters: map['azureFileParameters'] == null ? null : (VolumeProviderParametersAzureFile.fromMap((map['azureFileParameters'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      provider: (map['provider'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      volumeResourceName: map['volumeResourceName'] == null ? null : (map['volumeResourceName'] as String).input(),
    );
  }
}

