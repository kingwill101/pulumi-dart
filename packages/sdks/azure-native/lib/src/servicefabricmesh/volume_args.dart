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
      'azureFileParameters':
          ?pulumi.Input.mapOptionalInputValue<
            VolumeProviderParametersAzureFile,
            Map<String, dynamic>
          >(azureFileParameters, (value) => value.toMap()),
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
      azureFileParameters: (() {
        final guardedValue = map['azureFileParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VolumeProviderParametersAzureFile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provider: pulumi.Input.fromValue(map['provider'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      volumeResourceName: (() {
        final guardedValue = map['volumeResourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
