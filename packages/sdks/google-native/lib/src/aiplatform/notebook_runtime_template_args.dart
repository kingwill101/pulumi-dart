// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_machine_spec.dart';
import 'google_cloud_aiplatform_v1_network_spec.dart';
import 'google_cloud_aiplatform_v1_notebook_euc_config.dart';
import 'google_cloud_aiplatform_v1_notebook_idle_shutdown_config.dart';
import 'google_cloud_aiplatform_v1_persistent_disk_spec.dart';
import 'notebook_runtime_template_notebook_runtime_type.dart';

/// {@template pulumi_aiplatform_v1_notebook_runtime_template_args_doc}
/// The set of arguments for NotebookRuntimeTemplate.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_notebook_runtime_template_args_doc}
class NotebookRuntimeTemplateArgs {
  /// Optional. The specification of persistent disk attached to the runtime as data disk storage.
  final pulumi.Input<GoogleCloudAiplatformV1PersistentDiskSpec>? dataPersistentDiskSpec;
  /// The description of the NotebookRuntimeTemplate.
  final pulumi.Input<String>? description;
  /// The display name of the NotebookRuntimeTemplate. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;
  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  /// EUC configuration of the NotebookRuntimeTemplate.
  final pulumi.Input<GoogleCloudAiplatformV1NotebookEucConfig>? eucConfig;
  /// The idle shutdown configuration of NotebookRuntimeTemplate. This config will only be set when idle shutdown is enabled.
  final pulumi.Input<GoogleCloudAiplatformV1NotebookIdleShutdownConfig>? idleShutdownConfig;
  /// The labels with user-defined metadata to organize the NotebookRuntimeTemplates. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. Immutable. The specification of a single machine for the template.
  final pulumi.Input<GoogleCloudAiplatformV1MachineSpec>? machineSpec;
  /// Optional. Network spec.
  final pulumi.Input<GoogleCloudAiplatformV1NetworkSpec>? networkSpec;
  /// Optional. User specified ID for the notebook runtime template.
  final pulumi.Input<String>? notebookRuntimeTemplateId;
  /// Optional. Immutable. The type of the notebook runtime template.
  final pulumi.Input<NotebookRuntimeTemplateNotebookRuntimeType>? notebookRuntimeType;
  final pulumi.Input<String>? project;
  /// The service account that the runtime workload runs as. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  final pulumi.Input<String>? serviceAccount;

  /// Creates a new [NotebookRuntimeTemplateArgs].
  /// [dataPersistentDiskSpec] Optional. The specification of persistent disk attached to the runtime as data disk storage.
  /// [description] The description of the NotebookRuntimeTemplate.
  /// [displayName] The display name of the NotebookRuntimeTemplate. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [etag] Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [eucConfig] EUC configuration of the NotebookRuntimeTemplate.
  /// [idleShutdownConfig] The idle shutdown configuration of NotebookRuntimeTemplate. This config will only be set when idle shutdown is enabled.
  /// [labels] The labels with user-defined metadata to organize the NotebookRuntimeTemplates. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [location] Optional.
  /// [machineSpec] Optional. Immutable. The specification of a single machine for the template.
  /// [networkSpec] Optional. Network spec.
  /// [notebookRuntimeTemplateId] Optional. User specified ID for the notebook runtime template.
  /// [notebookRuntimeType] Optional. Immutable. The type of the notebook runtime template.
  /// [project] Optional.
  /// [serviceAccount] The service account that the runtime workload runs as. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  NotebookRuntimeTemplateArgs({
    this.dataPersistentDiskSpec,
    this.description,
    required this.displayName,
    this.etag,
    this.eucConfig,
    this.idleShutdownConfig,
    this.labels,
    this.location,
    this.machineSpec,
    this.networkSpec,
    this.notebookRuntimeTemplateId,
    this.notebookRuntimeType,
    this.project,
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPersistentDiskSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1PersistentDiskSpec, Map<String, dynamic>>(dataPersistentDiskSpec, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'etag': ?etag,
      'eucConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1NotebookEucConfig, Map<String, dynamic>>(eucConfig, (value) => value.toMap()),
      'idleShutdownConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1NotebookIdleShutdownConfig, Map<String, dynamic>>(idleShutdownConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'machineSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1MachineSpec, Map<String, dynamic>>(machineSpec, (value) => value.toMap()),
      'networkSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1NetworkSpec, Map<String, dynamic>>(networkSpec, (value) => value.toMap()),
      'notebookRuntimeTemplateId': ?notebookRuntimeTemplateId,
      'notebookRuntimeType': ?pulumi.Input.mapOptionalInputValue<NotebookRuntimeTemplateNotebookRuntimeType, String>(notebookRuntimeType, (value) => value.value),
      'project': ?project,
      'serviceAccount': ?serviceAccount,
    };
  }

  factory NotebookRuntimeTemplateArgs.fromMap(Map<String, dynamic> map) {
    return NotebookRuntimeTemplateArgs(
      dataPersistentDiskSpec: map['dataPersistentDiskSpec'] == null ? null : (GoogleCloudAiplatformV1PersistentDiskSpec.fromMap((map['dataPersistentDiskSpec']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      eucConfig: map['eucConfig'] == null ? null : (GoogleCloudAiplatformV1NotebookEucConfig.fromMap((map['eucConfig']! as Map).cast<String, dynamic>())).input(),
      idleShutdownConfig: map['idleShutdownConfig'] == null ? null : (GoogleCloudAiplatformV1NotebookIdleShutdownConfig.fromMap((map['idleShutdownConfig']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      machineSpec: map['machineSpec'] == null ? null : (GoogleCloudAiplatformV1MachineSpec.fromMap((map['machineSpec']! as Map).cast<String, dynamic>())).input(),
      networkSpec: map['networkSpec'] == null ? null : (GoogleCloudAiplatformV1NetworkSpec.fromMap((map['networkSpec']! as Map).cast<String, dynamic>())).input(),
      notebookRuntimeTemplateId: map['notebookRuntimeTemplateId'] == null ? null : (map['notebookRuntimeTemplateId']! as String).input(),
      notebookRuntimeType: map['notebookRuntimeType'] == null ? null : (NotebookRuntimeTemplateNotebookRuntimeType.fromValue(map['notebookRuntimeType']! as String)).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount']! as String).input(),
    );
  }
}

