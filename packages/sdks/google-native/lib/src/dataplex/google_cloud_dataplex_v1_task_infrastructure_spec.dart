// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_task_infrastructure_spec_batch_compute_resources.dart';
import 'google_cloud_dataplex_v1_task_infrastructure_spec_container_image_runtime.dart';
import 'google_cloud_dataplex_v1_task_infrastructure_spec_vpc_network.dart';

/// Configuration for the underlying infrastructure used to run workloads.
class GoogleCloudDataplexV1TaskInfrastructureSpec {
  /// Compute resources needed for a Task when using Dataproc Serverless.
  final pulumi.Input<GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources>? batch;
  /// Container Image Runtime Configuration.
  final pulumi.Input<GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime>? containerImage;
  /// Vpc network.
  final pulumi.Input<GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork>? vpcNetwork;

  /// Creates a new [GoogleCloudDataplexV1TaskInfrastructureSpec].
  /// [batch] Compute resources needed for a Task when using Dataproc Serverless.
  /// [containerImage] Container Image Runtime Configuration.
  /// [vpcNetwork] Vpc network.
  const GoogleCloudDataplexV1TaskInfrastructureSpec({
    this.batch,
    this.containerImage,
    this.vpcNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batch': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources, Map<String, dynamic>>(batch, (value) => value.toMap()),
      'containerImage': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime, Map<String, dynamic>>(containerImage, (value) => value.toMap()),
      'vpcNetwork': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork, Map<String, dynamic>>(vpcNetwork, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDataplexV1TaskInfrastructureSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskInfrastructureSpec(
      batch: (() { final guardedValue = map['batch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      containerImage: (() { final guardedValue = map['containerImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcNetwork: (() { final guardedValue = map['vpcNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
