// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_scoped_volume.dart';
import 'container_label.dart';
import 'diagnostics_ref.dart';
import 'endpoint_properties.dart';
import 'environment_variable.dart';
import 'image_registry_credential.dart';
import 'reliable_collections_ref.dart';
import 'resource_requirements.dart';
import 'setting.dart';
import 'volume_reference.dart';

/// Describes a container and its runtime properties.
class ContainerCodePackageProperties {
  /// Command array to execute within the container in exec form.
  final pulumi.Input<List<String>>? commands;
  /// Reference to sinks in DiagnosticsDescription.
  final pulumi.Input<DiagnosticsRef>? diagnostics;
  /// The endpoints exposed by this container.
  final pulumi.Input<List<EndpointProperties>>? endpoints;
  /// Override for the default entry point in the container.
  final pulumi.Input<String>? entrypoint;
  /// The environment variables to set in this container
  final pulumi.Input<List<EnvironmentVariable>>? environmentVariables;
  /// The Container image to use.
  final pulumi.Input<String> image;
  /// Image registry credential.
  final pulumi.Input<ImageRegistryCredential>? imageRegistryCredential;
  /// The labels to set in this container.
  final pulumi.Input<List<ContainerLabel>>? labels;
  /// The name of the code package.
  final pulumi.Input<String> name;
  /// A list of ReliableCollection resources used by this particular code package. Please refer to ReliableCollectionsRef for more details.
  final pulumi.Input<List<ReliableCollectionsRef>>? reliableCollectionsRefs;
  /// The resources required by this container.
  final pulumi.Input<ResourceRequirements> resources;
  /// The settings to set in this container. The setting file path can be fetched from environment variable "Fabric_SettingPath". The path for Windows container is "C:\\secrets". The path for Linux container is "/var/secrets".
  final pulumi.Input<List<Setting>>? settings;
  /// Volumes to be attached to the container. The lifetime of these volumes is independent of the application's lifetime.
  final pulumi.Input<List<VolumeReference>>? volumeRefs;
  /// Volumes to be attached to the container. The lifetime of these volumes is scoped to the application's lifetime.
  final pulumi.Input<List<ApplicationScopedVolume>>? volumes;

  /// Creates a new [ContainerCodePackageProperties].
  /// [commands] Command array to execute within the container in exec form.
  /// [diagnostics] Reference to sinks in DiagnosticsDescription.
  /// [endpoints] The endpoints exposed by this container.
  /// [entrypoint] Override for the default entry point in the container.
  /// [environmentVariables] The environment variables to set in this container
  /// [image] The Container image to use.
  /// [imageRegistryCredential] Image registry credential.
  /// [labels] The labels to set in this container.
  /// [name] The name of the code package.
  /// [reliableCollectionsRefs] A list of ReliableCollection resources used by this particular code package. Please refer to ReliableCollectionsRef for more details.
  /// [resources] The resources required by this container.
  /// [settings] The settings to set in this container. The setting file path can be fetched from environment variable "Fabric_SettingPath". The path for Windows container is "C:\\secrets". The path for Linux container is "/var/secrets".
  /// [volumeRefs] Volumes to be attached to the container. The lifetime of these volumes is independent of the application's lifetime.
  /// [volumes] Volumes to be attached to the container. The lifetime of these volumes is scoped to the application's lifetime.
  ContainerCodePackageProperties({
    this.commands,
    this.diagnostics,
    this.endpoints,
    this.entrypoint,
    this.environmentVariables,
    required this.image,
    this.imageRegistryCredential,
    this.labels,
    required this.name,
    this.reliableCollectionsRefs,
    required this.resources,
    this.settings,
    this.volumeRefs,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': ?commands,
      'diagnostics': ?pulumi.Input.mapOptionalInputValue<DiagnosticsRef, Map<String, dynamic>>(diagnostics, (value) => value.toMap()),
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<EndpointProperties>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<EndpointProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'entrypoint': ?entrypoint,
      'environmentVariables': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentVariable>, List<Map<String, dynamic>>>(environmentVariables, (value) => pulumi.Input.encodeList<EnvironmentVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': image,
      'imageRegistryCredential': ?pulumi.Input.mapOptionalInputValue<ImageRegistryCredential, Map<String, dynamic>>(imageRegistryCredential, (value) => value.toMap()),
      'labels': ?pulumi.Input.mapOptionalInputValue<List<ContainerLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<ContainerLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'reliableCollectionsRefs': ?pulumi.Input.mapOptionalInputValue<List<ReliableCollectionsRef>, List<Map<String, dynamic>>>(reliableCollectionsRefs, (value) => pulumi.Input.encodeList<ReliableCollectionsRef, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': pulumi.Input.mapInputValue<ResourceRequirements, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'settings': ?pulumi.Input.mapOptionalInputValue<List<Setting>, List<Map<String, dynamic>>>(settings, (value) => pulumi.Input.encodeList<Setting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumeRefs': ?pulumi.Input.mapOptionalInputValue<List<VolumeReference>, List<Map<String, dynamic>>>(volumeRefs, (value) => pulumi.Input.encodeList<VolumeReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<ApplicationScopedVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<ApplicationScopedVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ContainerCodePackageProperties.fromMap(Map<String, dynamic> map) {
    return ContainerCodePackageProperties(
      commands: map['commands'] == null ? null : ((map['commands'] as List).cast<String>()).input(),
      diagnostics: map['diagnostics'] == null ? null : (DiagnosticsRef.fromMap((map['diagnostics'] as Map).cast<String, dynamic>())).input(),
      endpoints: map['endpoints'] == null ? null : (pulumi.Input.decodeList<EndpointProperties>(map['endpoints'], (value) => EndpointProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      entrypoint: map['entrypoint'] == null ? null : (map['entrypoint'] as String).input(),
      environmentVariables: map['environmentVariables'] == null ? null : (pulumi.Input.decodeList<EnvironmentVariable>(map['environmentVariables'], (value) => EnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: (map['image'] as String).input(),
      imageRegistryCredential: map['imageRegistryCredential'] == null ? null : (ImageRegistryCredential.fromMap((map['imageRegistryCredential'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<ContainerLabel>(map['labels'], (value) => ContainerLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      reliableCollectionsRefs: map['reliableCollectionsRefs'] == null ? null : (pulumi.Input.decodeList<ReliableCollectionsRef>(map['reliableCollectionsRefs'], (value) => ReliableCollectionsRef.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resources: (ResourceRequirements.fromMap((map['resources'] as Map).cast<String, dynamic>())).input(),
      settings: map['settings'] == null ? null : (pulumi.Input.decodeList<Setting>(map['settings'], (value) => Setting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumeRefs: map['volumeRefs'] == null ? null : (pulumi.Input.decodeList<VolumeReference>(map['volumeRefs'], (value) => VolumeReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumes: map['volumes'] == null ? null : (pulumi.Input.decodeList<ApplicationScopedVolume>(map['volumes'], (value) => ApplicationScopedVolume.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

