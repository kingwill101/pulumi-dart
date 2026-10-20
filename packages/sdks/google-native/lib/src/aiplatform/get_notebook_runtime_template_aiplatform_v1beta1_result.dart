// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_machine_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_network_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_notebook_euc_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_notebook_idle_shutdown_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_persistent_disk_spec_response.dart';

/// Result data returned by getNotebookRuntimeTemplate.
class GetNotebookRuntimeTemplateAiplatformV1beta1Result {
  /// Timestamp when this NotebookRuntimeTemplate was created.
  final String? createTime;
  /// Optional. The specification of persistent disk attached to the runtime as data disk storage.
  final GoogleCloudAiplatformV1beta1PersistentDiskSpecResponse? dataPersistentDiskSpec;
  /// The description of the NotebookRuntimeTemplate.
  final String? description;
  /// The display name of the NotebookRuntimeTemplate. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final String? displayName;
  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String? etag;
  /// EUC configuration of the NotebookRuntimeTemplate.
  final GoogleCloudAiplatformV1beta1NotebookEucConfigResponse? eucConfig;
  /// The idle shutdown configuration of NotebookRuntimeTemplate. This config will only be set when idle shutdown is enabled.
  final GoogleCloudAiplatformV1beta1NotebookIdleShutdownConfigResponse? idleShutdownConfig;
  /// The default template to use if not specified.
  final bool? isDefault;
  /// The labels with user-defined metadata to organize the NotebookRuntimeTemplates. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Map<String, String>? labels;
  /// Optional. Immutable. The specification of a single machine for the template.
  final GoogleCloudAiplatformV1beta1MachineSpecResponse? machineSpec;
  /// The resource name of the NotebookRuntimeTemplate.
  final String? name;
  /// Optional. Network spec.
  final GoogleCloudAiplatformV1beta1NetworkSpecResponse? networkSpec;
  /// Optional. Immutable. The type of the notebook runtime template.
  final String? notebookRuntimeType;
  /// The service account that the runtime workload runs as. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  final String? serviceAccount;
  /// Timestamp when this NotebookRuntimeTemplate was most recently updated.
  final String? updateTime;

  /// Creates a new [GetNotebookRuntimeTemplateAiplatformV1beta1Result].
  /// [createTime] Timestamp when this NotebookRuntimeTemplate was created.
  /// [dataPersistentDiskSpec] Optional. The specification of persistent disk attached to the runtime as data disk storage.
  /// [description] The description of the NotebookRuntimeTemplate.
  /// [displayName] The display name of the NotebookRuntimeTemplate. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [etag] Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [eucConfig] EUC configuration of the NotebookRuntimeTemplate.
  /// [idleShutdownConfig] The idle shutdown configuration of NotebookRuntimeTemplate. This config will only be set when idle shutdown is enabled.
  /// [isDefault] The default template to use if not specified.
  /// [labels] The labels with user-defined metadata to organize the NotebookRuntimeTemplates. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [machineSpec] Optional. Immutable. The specification of a single machine for the template.
  /// [name] The resource name of the NotebookRuntimeTemplate.
  /// [networkSpec] Optional. Network spec.
  /// [notebookRuntimeType] Optional. Immutable. The type of the notebook runtime template.
  /// [serviceAccount] The service account that the runtime workload runs as. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  /// [updateTime] Timestamp when this NotebookRuntimeTemplate was most recently updated.
  const GetNotebookRuntimeTemplateAiplatformV1beta1Result({
    this.createTime,
    this.dataPersistentDiskSpec,
    this.description,
    this.displayName,
    this.etag,
    this.eucConfig,
    this.idleShutdownConfig,
    this.isDefault,
    this.labels,
    this.machineSpec,
    this.name,
    this.networkSpec,
    this.notebookRuntimeType,
    this.serviceAccount,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dataPersistentDiskSpec': ?dataPersistentDiskSpec?.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'eucConfig': ?eucConfig?.toMap(),
      'idleShutdownConfig': ?idleShutdownConfig?.toMap(),
      'isDefault': ?isDefault,
      'labels': ?labels,
      'machineSpec': ?machineSpec?.toMap(),
      'name': ?name,
      'networkSpec': ?networkSpec?.toMap(),
      'notebookRuntimeType': ?notebookRuntimeType,
      'serviceAccount': ?serviceAccount,
      'updateTime': ?updateTime,
    };
  }

  factory GetNotebookRuntimeTemplateAiplatformV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetNotebookRuntimeTemplateAiplatformV1beta1Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataPersistentDiskSpec: (() { final guardedValue = map['dataPersistentDiskSpec']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1PersistentDiskSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eucConfig: (() { final guardedValue = map['eucConfig']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1NotebookEucConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      idleShutdownConfig: (() { final guardedValue = map['idleShutdownConfig']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1NotebookIdleShutdownConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      machineSpec: (() { final guardedValue = map['machineSpec']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1MachineSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkSpec: (() { final guardedValue = map['networkSpec']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1NetworkSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      notebookRuntimeType: (() { final guardedValue = map['notebookRuntimeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
