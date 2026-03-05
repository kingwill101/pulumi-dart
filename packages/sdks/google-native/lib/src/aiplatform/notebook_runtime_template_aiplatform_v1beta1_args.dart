// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_machine_spec.dart';
import 'google_cloud_aiplatform_v1beta1_network_spec.dart';
import 'google_cloud_aiplatform_v1beta1_notebook_euc_config.dart';
import 'google_cloud_aiplatform_v1beta1_notebook_idle_shutdown_config.dart';
import 'google_cloud_aiplatform_v1beta1_persistent_disk_spec.dart';
import 'notebook_runtime_template_notebook_runtime_type_aiplatform_v1beta1.dart';

/// {@template pulumi_aiplatform_v1beta1_notebook_runtime_template_aiplatform_v1beta1_args_doc}
/// The set of arguments for NotebookRuntimeTemplate.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_notebook_runtime_template_aiplatform_v1beta1_args_doc}
class NotebookRuntimeTemplateAiplatformV1beta1Args {
  /// Optional. The specification of persistent disk attached to the runtime as data disk storage.
  final pulumi.Input<GoogleCloudAiplatformV1beta1PersistentDiskSpec>? dataPersistentDiskSpec;
  /// The description of the NotebookRuntimeTemplate.
  final pulumi.Input<String>? description;
  /// The display name of the NotebookRuntimeTemplate. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;
  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  /// EUC configuration of the NotebookRuntimeTemplate.
  final pulumi.Input<GoogleCloudAiplatformV1beta1NotebookEucConfig>? eucConfig;
  /// The idle shutdown configuration of NotebookRuntimeTemplate. This config will only be set when idle shutdown is enabled.
  final pulumi.Input<GoogleCloudAiplatformV1beta1NotebookIdleShutdownConfig>? idleShutdownConfig;
  /// The labels with user-defined metadata to organize the NotebookRuntimeTemplates. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. Immutable. The specification of a single machine for the template.
  final pulumi.Input<GoogleCloudAiplatformV1beta1MachineSpec>? machineSpec;
  /// Optional. Network spec.
  final pulumi.Input<GoogleCloudAiplatformV1beta1NetworkSpec>? networkSpec;
  /// Optional. User specified ID for the notebook runtime template.
  final pulumi.Input<String>? notebookRuntimeTemplateId;
  /// Optional. Immutable. The type of the notebook runtime template.
  final pulumi.Input<NotebookRuntimeTemplateNotebookRuntimeTypeAiplatformV1beta1>? notebookRuntimeType;
  final pulumi.Input<String>? project;
  /// The service account that the runtime workload runs as. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  final pulumi.Input<String>? serviceAccount;

  /// Creates a new [NotebookRuntimeTemplateAiplatformV1beta1Args].
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
  NotebookRuntimeTemplateAiplatformV1beta1Args({
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
      'dataPersistentDiskSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1PersistentDiskSpec, Map<String, dynamic>>(dataPersistentDiskSpec, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'etag': ?etag,
      'eucConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1NotebookEucConfig, Map<String, dynamic>>(eucConfig, (value) => value.toMap()),
      'idleShutdownConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1NotebookIdleShutdownConfig, Map<String, dynamic>>(idleShutdownConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'machineSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1MachineSpec, Map<String, dynamic>>(machineSpec, (value) => value.toMap()),
      'networkSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1NetworkSpec, Map<String, dynamic>>(networkSpec, (value) => value.toMap()),
      'notebookRuntimeTemplateId': ?notebookRuntimeTemplateId,
      'notebookRuntimeType': ?pulumi.Input.mapOptionalInputValue<NotebookRuntimeTemplateNotebookRuntimeTypeAiplatformV1beta1, String>(notebookRuntimeType, (value) => value.wireValue),
      'project': ?project,
      'serviceAccount': ?serviceAccount,
    };
  }

  factory NotebookRuntimeTemplateAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return NotebookRuntimeTemplateAiplatformV1beta1Args(
      dataPersistentDiskSpec: (() { final guardedValue = map['dataPersistentDiskSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1PersistentDiskSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eucConfig: (() { final guardedValue = map['eucConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1NotebookEucConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      idleShutdownConfig: (() { final guardedValue = map['idleShutdownConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1NotebookIdleShutdownConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineSpec: (() { final guardedValue = map['machineSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1MachineSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkSpec: (() { final guardedValue = map['networkSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1NetworkSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notebookRuntimeTemplateId: (() { final guardedValue = map['notebookRuntimeTemplateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notebookRuntimeType: (() { final guardedValue = map['notebookRuntimeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotebookRuntimeTemplateNotebookRuntimeTypeAiplatformV1beta1.fromValue(guardedValue as String)); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

