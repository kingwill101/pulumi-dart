// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_notebook_infrastructure_spec_batch.dart';
import 'task_notebook_infrastructure_spec_container_image.dart';
import 'task_notebook_infrastructure_spec_vpc_network.dart';

class TaskNotebookInfrastructureSpec {
  /// Compute resources needed for a Task when using Dataproc Serverless.
  /// Structure is documented below.
  final pulumi.Input<TaskNotebookInfrastructureSpecBatch>? batch;

  /// Container Image Runtime Configuration.
  /// Structure is documented below.
  final pulumi.Input<TaskNotebookInfrastructureSpecContainerImage>?
  containerImage;

  /// Vpc network.
  /// Structure is documented below.
  final pulumi.Input<TaskNotebookInfrastructureSpecVpcNetwork>? vpcNetwork;

  /// Creates a new [TaskNotebookInfrastructureSpec].
  /// [batch] Compute resources needed for a Task when using Dataproc Serverless.
  /// [containerImage] Container Image Runtime Configuration.
  /// [vpcNetwork] Vpc network.
  TaskNotebookInfrastructureSpec({
    this.batch,
    this.containerImage,
    this.vpcNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batch':
          ?pulumi.Input.mapOptionalInputValue<
            TaskNotebookInfrastructureSpecBatch,
            Map<String, dynamic>
          >(batch, (value) => value.toMap()),
      'containerImage':
          ?pulumi.Input.mapOptionalInputValue<
            TaskNotebookInfrastructureSpecContainerImage,
            Map<String, dynamic>
          >(containerImage, (value) => value.toMap()),
      'vpcNetwork':
          ?pulumi.Input.mapOptionalInputValue<
            TaskNotebookInfrastructureSpecVpcNetwork,
            Map<String, dynamic>
          >(vpcNetwork, (value) => value.toMap()),
    };
  }

  factory TaskNotebookInfrastructureSpec.fromMap(Map<String, dynamic> map) {
    return TaskNotebookInfrastructureSpec(
      batch: (() {
        final guardedValue = map['batch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TaskNotebookInfrastructureSpecBatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      containerImage: (() {
        final guardedValue = map['containerImage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TaskNotebookInfrastructureSpecContainerImage.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vpcNetwork: (() {
        final guardedValue = map['vpcNetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TaskNotebookInfrastructureSpecVpcNetwork.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
