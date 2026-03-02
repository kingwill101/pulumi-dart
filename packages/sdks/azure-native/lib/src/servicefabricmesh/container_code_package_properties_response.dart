// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_scoped_volume_response.dart';
import 'container_instance_view_response.dart';
import 'container_label_response.dart';
import 'diagnostics_ref_response.dart';
import 'endpoint_properties_response.dart';
import 'environment_variable_response.dart';
import 'image_registry_credential_response.dart';
import 'reliable_collections_ref_response.dart';
import 'resource_requirements_response.dart';
import 'setting_response.dart';
import 'volume_reference_response.dart';

/// Describes a container and its runtime properties.
class ContainerCodePackagePropertiesResponse {
  /// Command array to execute within the container in exec form.
  final pulumi.Input<List<String>>? commands;
  /// Reference to sinks in DiagnosticsDescription.
  final pulumi.Input<DiagnosticsRefResponse>? diagnostics;
  /// The endpoints exposed by this container.
  final pulumi.Input<List<EndpointPropertiesResponse>>? endpoints;
  /// Override for the default entry point in the container.
  final pulumi.Input<String>? entrypoint;
  /// The environment variables to set in this container
  final pulumi.Input<List<EnvironmentVariableResponse>>? environmentVariables;
  /// The Container image to use.
  final pulumi.Input<String> image;
  /// Image registry credential.
  final pulumi.Input<ImageRegistryCredentialResponse>? imageRegistryCredential;
  /// Runtime information of a container instance.
  final pulumi.Input<ContainerInstanceViewResponse> instanceView;
  /// The labels to set in this container.
  final pulumi.Input<List<ContainerLabelResponse>>? labels;
  /// The name of the code package.
  final pulumi.Input<String> name;
  /// A list of ReliableCollection resources used by this particular code package. Please refer to ReliableCollectionsRef for more details.
  final pulumi.Input<List<ReliableCollectionsRefResponse>>? reliableCollectionsRefs;
  /// The resources required by this container.
  final pulumi.Input<ResourceRequirementsResponse> resources;
  /// The settings to set in this container. The setting file path can be fetched from environment variable "Fabric_SettingPath". The path for Windows container is "C:\\secrets". The path for Linux container is "/var/secrets".
  final pulumi.Input<List<SettingResponse>>? settings;
  /// Volumes to be attached to the container. The lifetime of these volumes is independent of the application's lifetime.
  final pulumi.Input<List<VolumeReferenceResponse>>? volumeRefs;
  /// Volumes to be attached to the container. The lifetime of these volumes is scoped to the application's lifetime.
  final pulumi.Input<List<ApplicationScopedVolumeResponse>>? volumes;

  /// Creates a new [ContainerCodePackagePropertiesResponse].
  /// [commands] Command array to execute within the container in exec form.
  /// [diagnostics] Reference to sinks in DiagnosticsDescription.
  /// [endpoints] The endpoints exposed by this container.
  /// [entrypoint] Override for the default entry point in the container.
  /// [environmentVariables] The environment variables to set in this container
  /// [image] The Container image to use.
  /// [imageRegistryCredential] Image registry credential.
  /// [instanceView] Runtime information of a container instance.
  /// [labels] The labels to set in this container.
  /// [name] The name of the code package.
  /// [reliableCollectionsRefs] A list of ReliableCollection resources used by this particular code package. Please refer to ReliableCollectionsRef for more details.
  /// [resources] The resources required by this container.
  /// [settings] The settings to set in this container. The setting file path can be fetched from environment variable "Fabric_SettingPath". The path for Windows container is "C:\\secrets". The path for Linux container is "/var/secrets".
  /// [volumeRefs] Volumes to be attached to the container. The lifetime of these volumes is independent of the application's lifetime.
  /// [volumes] Volumes to be attached to the container. The lifetime of these volumes is scoped to the application's lifetime.
  ContainerCodePackagePropertiesResponse({
    this.commands,
    this.diagnostics,
    this.endpoints,
    this.entrypoint,
    this.environmentVariables,
    required this.image,
    this.imageRegistryCredential,
    required this.instanceView,
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
      'diagnostics': ?pulumi.Input.mapOptionalInputValue<DiagnosticsRefResponse, Map<String, dynamic>>(diagnostics, (value) => value.toMap()),
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<EndpointPropertiesResponse>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<EndpointPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'entrypoint': ?entrypoint,
      'environmentVariables': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentVariableResponse>, List<Map<String, dynamic>>>(environmentVariables, (value) => pulumi.Input.encodeList<EnvironmentVariableResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': image,
      'imageRegistryCredential': ?pulumi.Input.mapOptionalInputValue<ImageRegistryCredentialResponse, Map<String, dynamic>>(imageRegistryCredential, (value) => value.toMap()),
      'instanceView': pulumi.Input.mapInputValue<ContainerInstanceViewResponse, Map<String, dynamic>>(instanceView, (value) => value.toMap()),
      'labels': ?pulumi.Input.mapOptionalInputValue<List<ContainerLabelResponse>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<ContainerLabelResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'reliableCollectionsRefs': ?pulumi.Input.mapOptionalInputValue<List<ReliableCollectionsRefResponse>, List<Map<String, dynamic>>>(reliableCollectionsRefs, (value) => pulumi.Input.encodeList<ReliableCollectionsRefResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': pulumi.Input.mapInputValue<ResourceRequirementsResponse, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'settings': ?pulumi.Input.mapOptionalInputValue<List<SettingResponse>, List<Map<String, dynamic>>>(settings, (value) => pulumi.Input.encodeList<SettingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumeRefs': ?pulumi.Input.mapOptionalInputValue<List<VolumeReferenceResponse>, List<Map<String, dynamic>>>(volumeRefs, (value) => pulumi.Input.encodeList<VolumeReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<ApplicationScopedVolumeResponse>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<ApplicationScopedVolumeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ContainerCodePackagePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ContainerCodePackagePropertiesResponse(
      commands: map['commands'] == null ? null : ((map['commands']! as List).cast<String>()).input(),
      diagnostics: map['diagnostics'] == null ? null : (DiagnosticsRefResponse.fromMap((map['diagnostics']! as Map).cast<String, dynamic>())).input(),
      endpoints: map['endpoints'] == null ? null : (pulumi.Input.decodeList<EndpointPropertiesResponse>(map['endpoints']!, (value) => EndpointPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      entrypoint: map['entrypoint'] == null ? null : (map['entrypoint']! as String).input(),
      environmentVariables: map['environmentVariables'] == null ? null : (pulumi.Input.decodeList<EnvironmentVariableResponse>(map['environmentVariables']!, (value) => EnvironmentVariableResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: (map['image'] as String).input(),
      imageRegistryCredential: map['imageRegistryCredential'] == null ? null : (ImageRegistryCredentialResponse.fromMap((map['imageRegistryCredential']! as Map).cast<String, dynamic>())).input(),
      instanceView: (ContainerInstanceViewResponse.fromMap((map['instanceView'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<ContainerLabelResponse>(map['labels']!, (value) => ContainerLabelResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      reliableCollectionsRefs: map['reliableCollectionsRefs'] == null ? null : (pulumi.Input.decodeList<ReliableCollectionsRefResponse>(map['reliableCollectionsRefs']!, (value) => ReliableCollectionsRefResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resources: (ResourceRequirementsResponse.fromMap((map['resources'] as Map).cast<String, dynamic>())).input(),
      settings: map['settings'] == null ? null : (pulumi.Input.decodeList<SettingResponse>(map['settings']!, (value) => SettingResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumeRefs: map['volumeRefs'] == null ? null : (pulumi.Input.decodeList<VolumeReferenceResponse>(map['volumeRefs']!, (value) => VolumeReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumes: map['volumes'] == null ? null : (pulumi.Input.decodeList<ApplicationScopedVolumeResponse>(map['volumes']!, (value) => ApplicationScopedVolumeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

