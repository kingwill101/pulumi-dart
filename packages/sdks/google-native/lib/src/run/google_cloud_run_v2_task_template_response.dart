// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_container_response.dart';
import 'google_cloud_run_v2_volume_response.dart';
import 'google_cloud_run_v2_vpc_access_response.dart';

/// TaskTemplate describes the data a task should have when created from a template.
class GoogleCloudRunV2TaskTemplateResponse {
  /// Holds the single container that defines the unit of execution for this task.
  final pulumi.Input<List<GoogleCloudRunV2ContainerResponse>> containers;
  /// A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  final pulumi.Input<String> encryptionKey;
  /// The execution environment being used to host this Task.
  final pulumi.Input<String> executionEnvironment;
  /// Number of retries allowed per Task, before marking this Task failed. Defaults to 3.
  final pulumi.Input<int> maxRetries;
  /// Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.
  final pulumi.Input<String> serviceAccount;
  /// Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout. Defaults to 600 seconds.
  final pulumi.Input<String> timeout;
  /// A list of Volumes to make available to containers.
  final pulumi.Input<List<GoogleCloudRunV2VolumeResponse>> volumes;
  /// VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  final pulumi.Input<GoogleCloudRunV2VpcAccessResponse> vpcAccess;

  /// Creates a new [GoogleCloudRunV2TaskTemplateResponse].
  /// [containers] Holds the single container that defines the unit of execution for this task.
  /// [encryptionKey] A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  /// [executionEnvironment] The execution environment being used to host this Task.
  /// [maxRetries] Number of retries allowed per Task, before marking this Task failed. Defaults to 3.
  /// [serviceAccount] Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.
  /// [timeout] Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout. Defaults to 600 seconds.
  /// [volumes] A list of Volumes to make available to containers.
  /// [vpcAccess] VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  GoogleCloudRunV2TaskTemplateResponse({
    required this.containers,
    required this.encryptionKey,
    required this.executionEnvironment,
    required this.maxRetries,
    required this.serviceAccount,
    required this.timeout,
    required this.volumes,
    required this.vpcAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': pulumi.Input.mapInputValue<List<GoogleCloudRunV2ContainerResponse>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<GoogleCloudRunV2ContainerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptionKey': encryptionKey,
      'executionEnvironment': executionEnvironment,
      'maxRetries': maxRetries,
      'serviceAccount': serviceAccount,
      'timeout': timeout,
      'volumes': pulumi.Input.mapInputValue<List<GoogleCloudRunV2VolumeResponse>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<GoogleCloudRunV2VolumeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcAccess': pulumi.Input.mapInputValue<GoogleCloudRunV2VpcAccessResponse, Map<String, dynamic>>(vpcAccess, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRunV2TaskTemplateResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2TaskTemplateResponse(
      containers: (pulumi.Input.decodeList<GoogleCloudRunV2ContainerResponse>(map['containers'], (value) => GoogleCloudRunV2ContainerResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      encryptionKey: (map['encryptionKey'] as String).input(),
      executionEnvironment: (map['executionEnvironment'] as String).input(),
      maxRetries: (map['maxRetries'] as int).input(),
      serviceAccount: (map['serviceAccount'] as String).input(),
      timeout: (map['timeout'] as String).input(),
      volumes: (pulumi.Input.decodeList<GoogleCloudRunV2VolumeResponse>(map['volumes'], (value) => GoogleCloudRunV2VolumeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpcAccess: (GoogleCloudRunV2VpcAccessResponse.fromMap((map['vpcAccess'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

