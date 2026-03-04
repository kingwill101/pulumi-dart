// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_template_data_persistent_disk_spec.dart';
import 'runtime_template_encryption_spec.dart';
import 'runtime_template_euc_config.dart';
import 'runtime_template_idle_shutdown_config.dart';
import 'runtime_template_machine_spec.dart';
import 'runtime_template_network_spec.dart';
import 'runtime_template_shielded_vm_config.dart';
import 'runtime_template_software_config.dart';

/// {@template pulumi_colab_runtime_template_runtime_template_args_doc}
/// The set of arguments for RuntimeTemplate.
/// {@endtemplate}
/// {@macro pulumi_colab_runtime_template_runtime_template_args_doc}
class RuntimeTemplateArgs {
  /// The configuration for the data disk of the runtime.
  /// Structure is documented below.
  final pulumi.Input<RuntimeTemplateDataPersistentDiskSpec>?
  dataPersistentDiskSpec;

  /// The description of the Runtime Template.
  final pulumi.Input<String>? description;

  /// Required. The display name of the Runtime Template.
  final pulumi.Input<String> displayName;

  /// Customer-managed encryption key spec for the notebook runtime.
  /// Structure is documented below.
  final pulumi.Input<RuntimeTemplateEncryptionSpec>? encryptionSpec;

  /// EUC configuration of the NotebookRuntimeTemplate.
  /// Structure is documented below.
  final pulumi.Input<RuntimeTemplateEucConfig>? eucConfig;

  /// Notebook Idle Shutdown configuration for the runtime.
  /// Structure is documented below.
  final pulumi.Input<RuntimeTemplateIdleShutdownConfig>? idleShutdownConfig;

  /// Labels to identify and group the runtime template.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  final pulumi.Input<String> location;

  /// 'The machine configuration of the runtime.'
  /// Structure is documented below.
  final pulumi.Input<RuntimeTemplateMachineSpec>? machineSpec;

  /// The resource name of the Runtime Template
  final pulumi.Input<String>? name;

  /// The network configuration for the runtime.
  /// Structure is documented below.
  final pulumi.Input<RuntimeTemplateNetworkSpec>? networkSpec;

  /// Applies the given Compute Engine tags to the runtime.
  final pulumi.Input<List<String>>? networkTags;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Runtime Shielded VM spec.
  /// Structure is documented below.
  final pulumi.Input<RuntimeTemplateShieldedVmConfig>? shieldedVmConfig;

  /// The notebook software configuration of the notebook runtime.
  /// Structure is documented below.
  final pulumi.Input<RuntimeTemplateSoftwareConfig>? softwareConfig;

  /// Creates a new [RuntimeTemplateArgs].
  /// [dataPersistentDiskSpec] The configuration for the data disk of the runtime.
  /// [description] The description of the Runtime Template.
  /// [displayName] Required. The display name of the Runtime Template.
  /// [encryptionSpec] Customer-managed encryption key spec for the notebook runtime.
  /// [eucConfig] EUC configuration of the NotebookRuntimeTemplate.
  /// [idleShutdownConfig] Notebook Idle Shutdown configuration for the runtime.
  /// [labels] Labels to identify and group the runtime template.
  /// [location] The location for the resource: https://cloud.google.com/colab/docs/locations
  /// [machineSpec] 'The machine configuration of the runtime.'
  /// [name] The resource name of the Runtime Template
  /// [networkSpec] The network configuration for the runtime.
  /// [networkTags] Applies the given Compute Engine tags to the runtime.
  /// [project] The ID of the project in which the resource belongs.
  /// [shieldedVmConfig] Runtime Shielded VM spec.
  /// [softwareConfig] The notebook software configuration of the notebook runtime.
  RuntimeTemplateArgs({
    this.dataPersistentDiskSpec,
    this.description,
    required this.displayName,
    this.encryptionSpec,
    this.eucConfig,
    this.idleShutdownConfig,
    this.labels,
    required this.location,
    this.machineSpec,
    this.name,
    this.networkSpec,
    this.networkTags,
    this.project,
    this.shieldedVmConfig,
    this.softwareConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPersistentDiskSpec':
          ?pulumi.Input.mapOptionalInputValue<
            RuntimeTemplateDataPersistentDiskSpec,
            Map<String, dynamic>
          >(dataPersistentDiskSpec, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'encryptionSpec':
          ?pulumi.Input.mapOptionalInputValue<
            RuntimeTemplateEncryptionSpec,
            Map<String, dynamic>
          >(encryptionSpec, (value) => value.toMap()),
      'eucConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RuntimeTemplateEucConfig,
            Map<String, dynamic>
          >(eucConfig, (value) => value.toMap()),
      'idleShutdownConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RuntimeTemplateIdleShutdownConfig,
            Map<String, dynamic>
          >(idleShutdownConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'machineSpec':
          ?pulumi.Input.mapOptionalInputValue<
            RuntimeTemplateMachineSpec,
            Map<String, dynamic>
          >(machineSpec, (value) => value.toMap()),
      'name': ?name,
      'networkSpec':
          ?pulumi.Input.mapOptionalInputValue<
            RuntimeTemplateNetworkSpec,
            Map<String, dynamic>
          >(networkSpec, (value) => value.toMap()),
      'networkTags': ?networkTags,
      'project': ?project,
      'shieldedVmConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RuntimeTemplateShieldedVmConfig,
            Map<String, dynamic>
          >(shieldedVmConfig, (value) => value.toMap()),
      'softwareConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RuntimeTemplateSoftwareConfig,
            Map<String, dynamic>
          >(softwareConfig, (value) => value.toMap()),
    };
  }

  factory RuntimeTemplateArgs.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateArgs(
      dataPersistentDiskSpec: (() {
        final guardedValue = map['dataPersistentDiskSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuntimeTemplateDataPersistentDiskSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      encryptionSpec: (() {
        final guardedValue = map['encryptionSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuntimeTemplateEncryptionSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      eucConfig: (() {
        final guardedValue = map['eucConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuntimeTemplateEucConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      idleShutdownConfig: (() {
        final guardedValue = map['idleShutdownConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuntimeTemplateIdleShutdownConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      machineSpec: (() {
        final guardedValue = map['machineSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuntimeTemplateMachineSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkSpec: (() {
        final guardedValue = map['networkSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuntimeTemplateNetworkSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      networkTags: (() {
        final guardedValue = map['networkTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      shieldedVmConfig: (() {
        final guardedValue = map['shieldedVmConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuntimeTemplateShieldedVmConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      softwareConfig: (() {
        final guardedValue = map['softwareConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuntimeTemplateSoftwareConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
