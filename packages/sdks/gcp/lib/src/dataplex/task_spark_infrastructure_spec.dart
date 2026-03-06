// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_spark_infrastructure_spec_batch.dart';
import 'task_spark_infrastructure_spec_container_image.dart';
import 'task_spark_infrastructure_spec_vpc_network.dart';

class TaskSparkInfrastructureSpec {
  /// Compute resources needed for a Task when using Dataproc Serverless.
  /// Structure is documented below.
  final pulumi.Input<TaskSparkInfrastructureSpecBatch>? batch;
  /// Container Image Runtime Configuration.
  /// Structure is documented below.
  final pulumi.Input<TaskSparkInfrastructureSpecContainerImage>? containerImage;
  /// Vpc network.
  /// Structure is documented below.
  final pulumi.Input<TaskSparkInfrastructureSpecVpcNetwork>? vpcNetwork;

  /// Creates a new [TaskSparkInfrastructureSpec].
  /// [batch] Compute resources needed for a Task when using Dataproc Serverless.
  /// [containerImage] Container Image Runtime Configuration.
  /// [vpcNetwork] Vpc network.
  const TaskSparkInfrastructureSpec({
    this.batch,
    this.containerImage,
    this.vpcNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batch': ?pulumi.Input.mapOptionalInputValue<TaskSparkInfrastructureSpecBatch, Map<String, dynamic>>(batch, (value) => value.toMap()),
      'containerImage': ?pulumi.Input.mapOptionalInputValue<TaskSparkInfrastructureSpecContainerImage, Map<String, dynamic>>(containerImage, (value) => value.toMap()),
      'vpcNetwork': ?pulumi.Input.mapOptionalInputValue<TaskSparkInfrastructureSpecVpcNetwork, Map<String, dynamic>>(vpcNetwork, (value) => value.toMap()),
    };
  }

  factory TaskSparkInfrastructureSpec.fromMap(Map<String, dynamic> map) {
    return TaskSparkInfrastructureSpec(
      batch: (() { final guardedValue = map['batch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskSparkInfrastructureSpecBatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      containerImage: (() { final guardedValue = map['containerImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskSparkInfrastructureSpecContainerImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcNetwork: (() { final guardedValue = map['vpcNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskSparkInfrastructureSpecVpcNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

