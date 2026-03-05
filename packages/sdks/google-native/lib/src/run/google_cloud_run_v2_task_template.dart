// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_container.dart';
import 'google_cloud_run_v2_task_template_execution_environment.dart';
import 'google_cloud_run_v2_volume.dart';
import 'google_cloud_run_v2_vpc_access.dart';

/// TaskTemplate describes the data a task should have when created from a template.
class GoogleCloudRunV2TaskTemplate {
  /// Holds the single container that defines the unit of execution for this task.
  final pulumi.Input<List<GoogleCloudRunV2Container>>? containers;
  /// A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  final pulumi.Input<String>? encryptionKey;
  /// The execution environment being used to host this Task.
  final pulumi.Input<GoogleCloudRunV2TaskTemplateExecutionEnvironment>? executionEnvironment;
  /// Number of retries allowed per Task, before marking this Task failed. Defaults to 3.
  final pulumi.Input<int>? maxRetries;
  /// Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.
  final pulumi.Input<String>? serviceAccount;
  /// Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout. Defaults to 600 seconds.
  final pulumi.Input<String>? timeout;
  /// A list of Volumes to make available to containers.
  final pulumi.Input<List<GoogleCloudRunV2Volume>>? volumes;
  /// VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  final pulumi.Input<GoogleCloudRunV2VpcAccess>? vpcAccess;

  /// Creates a new [GoogleCloudRunV2TaskTemplate].
  /// [containers] Holds the single container that defines the unit of execution for this task.
  /// [encryptionKey] A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  /// [executionEnvironment] The execution environment being used to host this Task.
  /// [maxRetries] Number of retries allowed per Task, before marking this Task failed. Defaults to 3.
  /// [serviceAccount] Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.
  /// [timeout] Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout. Defaults to 600 seconds.
  /// [volumes] A list of Volumes to make available to containers.
  /// [vpcAccess] VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  GoogleCloudRunV2TaskTemplate({
    this.containers,
    this.encryptionKey,
    this.executionEnvironment,
    this.maxRetries,
    this.serviceAccount,
    this.timeout,
    this.volumes,
    this.vpcAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudRunV2Container>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<GoogleCloudRunV2Container, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptionKey': ?encryptionKey,
      'executionEnvironment': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRunV2TaskTemplateExecutionEnvironment, String>(executionEnvironment, (value) => value.wireValue),
      'maxRetries': ?maxRetries,
      'serviceAccount': ?serviceAccount,
      'timeout': ?timeout,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudRunV2Volume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<GoogleCloudRunV2Volume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcAccess': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRunV2VpcAccess, Map<String, dynamic>>(vpcAccess, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRunV2TaskTemplate.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2TaskTemplate(
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRunV2Container>(guardedValue, (value) => GoogleCloudRunV2Container.fromMap((value as Map).cast<String, dynamic>()))); })(),
      encryptionKey: (() { final guardedValue = map['encryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionEnvironment: (() { final guardedValue = map['executionEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRunV2TaskTemplateExecutionEnvironment.fromValue(guardedValue as String)); })(),
      maxRetries: (() { final guardedValue = map['maxRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRunV2Volume>(guardedValue, (value) => GoogleCloudRunV2Volume.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpcAccess: (() { final guardedValue = map['vpcAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRunV2VpcAccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

