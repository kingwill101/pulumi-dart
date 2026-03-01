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
  final pulumi.Input<RuntimeTemplateDataPersistentDiskSpec>? dataPersistentDiskSpec;
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
    pulumi.Output<RuntimeTemplateDataPersistentDiskSpec>? dataPersistentDiskSpec,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<RuntimeTemplateEncryptionSpec>? encryptionSpec,
    pulumi.Output<RuntimeTemplateEucConfig>? eucConfig,
    pulumi.Output<RuntimeTemplateIdleShutdownConfig>? idleShutdownConfig,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<RuntimeTemplateMachineSpec>? machineSpec,
    pulumi.Output<String>? name,
    pulumi.Output<RuntimeTemplateNetworkSpec>? networkSpec,
    pulumi.Output<List<String>>? networkTags,
    pulumi.Output<String>? project,
    pulumi.Output<RuntimeTemplateShieldedVmConfig>? shieldedVmConfig,
    pulumi.Output<RuntimeTemplateSoftwareConfig>? softwareConfig,
  }) :
      dataPersistentDiskSpec = pulumi.Input.asOptionalInput<RuntimeTemplateDataPersistentDiskSpec>(dataPersistentDiskSpec),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      encryptionSpec = pulumi.Input.asOptionalInput<RuntimeTemplateEncryptionSpec>(encryptionSpec),
      eucConfig = pulumi.Input.asOptionalInput<RuntimeTemplateEucConfig>(eucConfig),
      idleShutdownConfig = pulumi.Input.asOptionalInput<RuntimeTemplateIdleShutdownConfig>(idleShutdownConfig),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      machineSpec = pulumi.Input.asOptionalInput<RuntimeTemplateMachineSpec>(machineSpec),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkSpec = pulumi.Input.asOptionalInput<RuntimeTemplateNetworkSpec>(networkSpec),
      networkTags = pulumi.Input.asOptionalInput<List<String>>(networkTags),
      project = pulumi.Input.asOptionalInput<String>(project),
      shieldedVmConfig = pulumi.Input.asOptionalInput<RuntimeTemplateShieldedVmConfig>(shieldedVmConfig),
      softwareConfig = pulumi.Input.asOptionalInput<RuntimeTemplateSoftwareConfig>(softwareConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPersistentDiskSpec': ?pulumi.Input.mapOptionalInputValue<RuntimeTemplateDataPersistentDiskSpec, Map<String, dynamic>>(dataPersistentDiskSpec, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<RuntimeTemplateEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'eucConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeTemplateEucConfig, Map<String, dynamic>>(eucConfig, (value) => value.toMap()),
      'idleShutdownConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeTemplateIdleShutdownConfig, Map<String, dynamic>>(idleShutdownConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'machineSpec': ?pulumi.Input.mapOptionalInputValue<RuntimeTemplateMachineSpec, Map<String, dynamic>>(machineSpec, (value) => value.toMap()),
      'name': ?name,
      'networkSpec': ?pulumi.Input.mapOptionalInputValue<RuntimeTemplateNetworkSpec, Map<String, dynamic>>(networkSpec, (value) => value.toMap()),
      'networkTags': ?networkTags,
      'project': ?project,
      'shieldedVmConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeTemplateShieldedVmConfig, Map<String, dynamic>>(shieldedVmConfig, (value) => value.toMap()),
      'softwareConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeTemplateSoftwareConfig, Map<String, dynamic>>(softwareConfig, (value) => value.toMap()),
    };
  }

  factory RuntimeTemplateArgs.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateArgs(
      dataPersistentDiskSpec: map['dataPersistentDiskSpec'] == null ? null : pulumi.Output.create<RuntimeTemplateDataPersistentDiskSpec>(RuntimeTemplateDataPersistentDiskSpec.fromMap((map['dataPersistentDiskSpec'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      encryptionSpec: map['encryptionSpec'] == null ? null : pulumi.Output.create<RuntimeTemplateEncryptionSpec>(RuntimeTemplateEncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>())),
      eucConfig: map['eucConfig'] == null ? null : pulumi.Output.create<RuntimeTemplateEucConfig>(RuntimeTemplateEucConfig.fromMap((map['eucConfig'] as Map).cast<String, dynamic>())),
      idleShutdownConfig: map['idleShutdownConfig'] == null ? null : pulumi.Output.create<RuntimeTemplateIdleShutdownConfig>(RuntimeTemplateIdleShutdownConfig.fromMap((map['idleShutdownConfig'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      machineSpec: map['machineSpec'] == null ? null : pulumi.Output.create<RuntimeTemplateMachineSpec>(RuntimeTemplateMachineSpec.fromMap((map['machineSpec'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkSpec: map['networkSpec'] == null ? null : pulumi.Output.create<RuntimeTemplateNetworkSpec>(RuntimeTemplateNetworkSpec.fromMap((map['networkSpec'] as Map).cast<String, dynamic>())),
      networkTags: map['networkTags'] == null ? null : pulumi.Output.create<List<String>>((map['networkTags'] as List).cast<String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      shieldedVmConfig: map['shieldedVmConfig'] == null ? null : pulumi.Output.create<RuntimeTemplateShieldedVmConfig>(RuntimeTemplateShieldedVmConfig.fromMap((map['shieldedVmConfig'] as Map).cast<String, dynamic>())),
      softwareConfig: map['softwareConfig'] == null ? null : pulumi.Output.create<RuntimeTemplateSoftwareConfig>(RuntimeTemplateSoftwareConfig.fromMap((map['softwareConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

