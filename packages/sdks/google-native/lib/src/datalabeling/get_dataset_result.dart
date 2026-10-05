// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datalabeling_v1beta1_input_config_response.dart';

/// Result data returned by getDataset.
class GetDatasetResult {
  /// The names of any related resources that are blocking changes to the dataset.
  final List<String>? blockingResources;
  /// Time the dataset is created.
  final String? createTime;
  /// The number of data items in the dataset.
  final String? dataItemCount;
  /// Optional. User-provided description of the annotation specification set. The description can be up to 10000 characters long.
  final String? description;
  /// The display name of the dataset. Maximum of 64 characters.
  final String? displayName;
  /// This is populated with the original input configs where ImportData is called. It is available only after the clients import data to this dataset.
  final List<GoogleCloudDatalabelingV1beta1InputConfigResponse>? inputConfigs;
  /// Last time that the Dataset is migrated to AI Platform V2. If any of the AnnotatedDataset is migrated, the last_migration_time in Dataset is also updated.
  final String? lastMigrateTime;
  /// Dataset resource name, format is: projects/{project_id}/datasets/{dataset_id}
  final String? name;

  /// Creates a new [GetDatasetResult].
  /// [blockingResources] The names of any related resources that are blocking changes to the dataset.
  /// [createTime] Time the dataset is created.
  /// [dataItemCount] The number of data items in the dataset.
  /// [description] Optional. User-provided description of the annotation specification set. The description can be up to 10000 characters long.
  /// [displayName] The display name of the dataset. Maximum of 64 characters.
  /// [inputConfigs] This is populated with the original input configs where ImportData is called. It is available only after the clients import data to this dataset.
  /// [lastMigrateTime] Last time that the Dataset is migrated to AI Platform V2. If any of the AnnotatedDataset is migrated, the last_migration_time in Dataset is also updated.
  /// [name] Dataset resource name, format is: projects/{project_id}/datasets/{dataset_id}
  const GetDatasetResult({
    this.blockingResources,
    this.createTime,
    this.dataItemCount,
    this.description,
    this.displayName,
    this.inputConfigs,
    this.lastMigrateTime,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockingResources': ?blockingResources,
      'createTime': ?createTime,
      'dataItemCount': ?dataItemCount,
      'description': ?description,
      'displayName': ?displayName,
      'inputConfigs': ?(() { final guardedValue = inputConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudDatalabelingV1beta1InputConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'lastMigrateTime': ?lastMigrateTime,
      'name': ?name,
    };
  }

  factory GetDatasetResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetResult(
      blockingResources: (() { final guardedValue = map['blockingResources']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataItemCount: (() { final guardedValue = map['dataItemCount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inputConfigs: (() { final guardedValue = map['inputConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDatalabelingV1beta1InputConfigResponse>(guardedValue, (value) => GoogleCloudDatalabelingV1beta1InputConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      lastMigrateTime: (() { final guardedValue = map['lastMigrateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
