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
  TaskSparkInfrastructureSpec({
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
      batch: map['batch'] == null ? null : (TaskSparkInfrastructureSpecBatch.fromMap((map['batch']! as Map).cast<String, dynamic>())).input(),
      containerImage: map['containerImage'] == null ? null : (TaskSparkInfrastructureSpecContainerImage.fromMap((map['containerImage']! as Map).cast<String, dynamic>())).input(),
      vpcNetwork: map['vpcNetwork'] == null ? null : (TaskSparkInfrastructureSpecVpcNetwork.fromMap((map['vpcNetwork']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

