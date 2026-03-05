// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_template_container.dart';
import 'job_template_template_node_selector.dart';
import 'job_template_template_volume.dart';
import 'job_template_template_vpc_access.dart';

class JobTemplateTemplate {
  /// Holds the single container that defines the unit of execution for this task.
  /// Structure is documented below.
  final pulumi.Input<List<JobTemplateTemplateContainer>>? containers;
  /// A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  final pulumi.Input<String>? encryptionKey;
  /// The execution environment being used to host this Task.
  /// Possible values are: `EXECUTION_ENVIRONMENT_GEN1`, `EXECUTION_ENVIRONMENT_GEN2`.
  final pulumi.Input<String>? executionEnvironment;
  /// True if GPU zonal redundancy is disabled on this execution.
  final pulumi.Input<bool>? gpuZonalRedundancyDisabled;
  /// Number of retries allowed per Task, before marking this Task failed. Defaults to 3. Minimum value is 0.
  final pulumi.Input<int>? maxRetries;
  /// Node Selector describes the hardware requirements of the resources.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateTemplateNodeSelector>? nodeSelector;
  /// Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.
  final pulumi.Input<String>? serviceAccount;
  /// Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? timeout;
  /// A list of Volumes to make available to containers.
  /// Structure is documented below.
  final pulumi.Input<List<JobTemplateTemplateVolume>>? volumes;
  /// VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateTemplateVpcAccess>? vpcAccess;

  /// Creates a new [JobTemplateTemplate].
  /// [containers] Holds the single container that defines the unit of execution for this task.
  /// [encryptionKey] A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  /// [executionEnvironment] The execution environment being used to host this Task.
  /// [gpuZonalRedundancyDisabled] True if GPU zonal redundancy is disabled on this execution.
  /// [maxRetries] Number of retries allowed per Task, before marking this Task failed. Defaults to 3. Minimum value is 0.
  /// [nodeSelector] Node Selector describes the hardware requirements of the resources.
  /// [serviceAccount] Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.
  /// [timeout] Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout.
  /// [volumes] A list of Volumes to make available to containers.
  /// [vpcAccess] VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  JobTemplateTemplate({
    this.containers,
    this.encryptionKey,
    this.executionEnvironment,
    this.gpuZonalRedundancyDisabled,
    this.maxRetries,
    this.nodeSelector,
    this.serviceAccount,
    this.timeout,
    this.volumes,
    this.vpcAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateTemplateContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<JobTemplateTemplateContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptionKey': ?encryptionKey,
      'executionEnvironment': ?executionEnvironment,
      'gpuZonalRedundancyDisabled': ?gpuZonalRedundancyDisabled,
      'maxRetries': ?maxRetries,
      'nodeSelector': ?pulumi.Input.mapOptionalInputValue<JobTemplateTemplateNodeSelector, Map<String, dynamic>>(nodeSelector, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'timeout': ?timeout,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateTemplateVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<JobTemplateTemplateVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcAccess': ?pulumi.Input.mapOptionalInputValue<JobTemplateTemplateVpcAccess, Map<String, dynamic>>(vpcAccess, (value) => value.toMap()),
    };
  }

  factory JobTemplateTemplate.fromMap(Map<String, dynamic> map) {
    return JobTemplateTemplate(
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobTemplateTemplateContainer>(guardedValue, (value) => JobTemplateTemplateContainer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      encryptionKey: (() { final guardedValue = map['encryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionEnvironment: (() { final guardedValue = map['executionEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gpuZonalRedundancyDisabled: (() { final guardedValue = map['gpuZonalRedundancyDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxRetries: (() { final guardedValue = map['maxRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeSelector: (() { final guardedValue = map['nodeSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobTemplateTemplateNodeSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobTemplateTemplateVolume>(guardedValue, (value) => JobTemplateTemplateVolume.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpcAccess: (() { final guardedValue = map['vpcAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobTemplateTemplateVpcAccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

