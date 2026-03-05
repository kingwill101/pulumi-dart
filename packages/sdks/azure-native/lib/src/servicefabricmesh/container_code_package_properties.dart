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
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      diagnostics: (() { final guardedValue = map['diagnostics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiagnosticsRef.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointProperties>(guardedValue, (value) => EndpointProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      entrypoint: (() { final guardedValue = map['entrypoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentVariable>(guardedValue, (value) => EnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: pulumi.Input.fromValue(map['image'] as String),
      imageRegistryCredential: (() { final guardedValue = map['imageRegistryCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageRegistryCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerLabel>(guardedValue, (value) => ContainerLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      reliableCollectionsRefs: (() { final guardedValue = map['reliableCollectionsRefs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReliableCollectionsRef>(guardedValue, (value) => ReliableCollectionsRef.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resources: pulumi.Input.fromValue(ResourceRequirements.fromMap((map['resources']! as Map).cast<String, dynamic>())),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Setting>(guardedValue, (value) => Setting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      volumeRefs: (() { final guardedValue = map['volumeRefs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeReference>(guardedValue, (value) => VolumeReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationScopedVolume>(guardedValue, (value) => ApplicationScopedVolume.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

