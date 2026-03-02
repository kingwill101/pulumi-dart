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

/// Input properties used for looking up and filtering RuntimeTemplate resources.
class RuntimeTemplateState {
  /// The configuration for the data disk of the runtime.
  /// Structure is documented below.
  final pulumi.Input<RuntimeTemplateDataPersistentDiskSpec>? dataPersistentDiskSpec;
  /// The description of the Runtime Template.
  final pulumi.Input<String>? description;
  /// Required. The display name of the Runtime Template.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
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
  final pulumi.Input<String>? location;
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
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Runtime Shielded VM spec.
  /// Structure is documented below.
  final pulumi.Input<RuntimeTemplateShieldedVmConfig>? shieldedVmConfig;
  /// The notebook software configuration of the notebook runtime.
  /// Structure is documented below.
  final pulumi.Input<RuntimeTemplateSoftwareConfig>? softwareConfig;

  /// Creates a new [RuntimeTemplateState].
  /// [dataPersistentDiskSpec] The configuration for the data disk of the runtime.
  /// [description] The description of the Runtime Template.
  /// [displayName] Required. The display name of the Runtime Template.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
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
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [shieldedVmConfig] Runtime Shielded VM spec.
  /// [softwareConfig] The notebook software configuration of the notebook runtime.
  RuntimeTemplateState({
    this.dataPersistentDiskSpec,
    this.description,
    this.displayName,
    this.effectiveLabels,
    this.encryptionSpec,
    this.eucConfig,
    this.idleShutdownConfig,
    this.labels,
    this.location,
    this.machineSpec,
    this.name,
    this.networkSpec,
    this.networkTags,
    this.project,
    this.pulumiLabels,
    this.shieldedVmConfig,
    this.softwareConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPersistentDiskSpec': ?pulumi.Input.mapOptionalInputValue<RuntimeTemplateDataPersistentDiskSpec, Map<String, dynamic>>(dataPersistentDiskSpec, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<RuntimeTemplateEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'eucConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeTemplateEucConfig, Map<String, dynamic>>(eucConfig, (value) => value.toMap()),
      'idleShutdownConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeTemplateIdleShutdownConfig, Map<String, dynamic>>(idleShutdownConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'machineSpec': ?pulumi.Input.mapOptionalInputValue<RuntimeTemplateMachineSpec, Map<String, dynamic>>(machineSpec, (value) => value.toMap()),
      'name': ?name,
      'networkSpec': ?pulumi.Input.mapOptionalInputValue<RuntimeTemplateNetworkSpec, Map<String, dynamic>>(networkSpec, (value) => value.toMap()),
      'networkTags': ?networkTags,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'shieldedVmConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeTemplateShieldedVmConfig, Map<String, dynamic>>(shieldedVmConfig, (value) => value.toMap()),
      'softwareConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeTemplateSoftwareConfig, Map<String, dynamic>>(softwareConfig, (value) => value.toMap()),
    };
  }

  factory RuntimeTemplateState.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateState(
      dataPersistentDiskSpec: map['dataPersistentDiskSpec'] == null ? null : (RuntimeTemplateDataPersistentDiskSpec.fromMap((map['dataPersistentDiskSpec']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      encryptionSpec: map['encryptionSpec'] == null ? null : (RuntimeTemplateEncryptionSpec.fromMap((map['encryptionSpec']! as Map).cast<String, dynamic>())).input(),
      eucConfig: map['eucConfig'] == null ? null : (RuntimeTemplateEucConfig.fromMap((map['eucConfig']! as Map).cast<String, dynamic>())).input(),
      idleShutdownConfig: map['idleShutdownConfig'] == null ? null : (RuntimeTemplateIdleShutdownConfig.fromMap((map['idleShutdownConfig']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      machineSpec: map['machineSpec'] == null ? null : (RuntimeTemplateMachineSpec.fromMap((map['machineSpec']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkSpec: map['networkSpec'] == null ? null : (RuntimeTemplateNetworkSpec.fromMap((map['networkSpec']! as Map).cast<String, dynamic>())).input(),
      networkTags: map['networkTags'] == null ? null : ((map['networkTags']! as List).cast<String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      shieldedVmConfig: map['shieldedVmConfig'] == null ? null : (RuntimeTemplateShieldedVmConfig.fromMap((map['shieldedVmConfig']! as Map).cast<String, dynamic>())).input(),
      softwareConfig: map['softwareConfig'] == null ? null : (RuntimeTemplateSoftwareConfig.fromMap((map['softwareConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

