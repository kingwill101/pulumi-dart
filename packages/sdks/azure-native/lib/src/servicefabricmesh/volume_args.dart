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
    pulumi.Output<VolumeProviderParametersAzureFile>? azureFileParameters,
    pulumi.Output<String>? description,
    pulumi.Output<String>? location,
    required pulumi.Output<String> provider,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? volumeResourceName,
  }) :
      azureFileParameters = pulumi.Input.asOptionalInput<VolumeProviderParametersAzureFile>(azureFileParameters),
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      provider = pulumi.Input.asInput<String>(provider),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      volumeResourceName = pulumi.Input.asOptionalInput<String>(volumeResourceName);

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
      azureFileParameters: map['azureFileParameters'] == null ? null : pulumi.Output.create<VolumeProviderParametersAzureFile>(VolumeProviderParametersAzureFile.fromMap((map['azureFileParameters'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      provider: pulumi.Output.create<String>(map['provider'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      volumeResourceName: map['volumeResourceName'] == null ? null : pulumi.Output.create<String>(map['volumeResourceName'] as String),
    );
  }
}

