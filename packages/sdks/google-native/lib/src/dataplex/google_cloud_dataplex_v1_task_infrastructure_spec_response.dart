// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_task_infrastructure_spec_batch_compute_resources_response.dart';
import 'google_cloud_dataplex_v1_task_infrastructure_spec_container_image_runtime_response.dart';
import 'google_cloud_dataplex_v1_task_infrastructure_spec_vpc_network_response.dart';

/// Configuration for the underlying infrastructure used to run workloads.
class GoogleCloudDataplexV1TaskInfrastructureSpecResponse {
  /// Compute resources needed for a Task when using Dataproc Serverless.
  final pulumi.Input<GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResourcesResponse> batch;
  /// Container Image Runtime Configuration.
  final pulumi.Input<GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntimeResponse> containerImage;
  /// Vpc network.
  final pulumi.Input<GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetworkResponse> vpcNetwork;

  /// Creates a new [GoogleCloudDataplexV1TaskInfrastructureSpecResponse].
  /// [batch] Compute resources needed for a Task when using Dataproc Serverless.
  /// [containerImage] Container Image Runtime Configuration.
  /// [vpcNetwork] Vpc network.
  GoogleCloudDataplexV1TaskInfrastructureSpecResponse({
    required this.batch,
    required this.containerImage,
    required this.vpcNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batch': pulumi.Input.mapInputValue<GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResourcesResponse, Map<String, dynamic>>(batch, (value) => value.toMap()),
      'containerImage': pulumi.Input.mapInputValue<GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntimeResponse, Map<String, dynamic>>(containerImage, (value) => value.toMap()),
      'vpcNetwork': pulumi.Input.mapInputValue<GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetworkResponse, Map<String, dynamic>>(vpcNetwork, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDataplexV1TaskInfrastructureSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskInfrastructureSpecResponse(
      batch: pulumi.Input.fromValue(GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResourcesResponse.fromMap((map['batch']! as Map).cast<String, dynamic>())),
      containerImage: pulumi.Input.fromValue(GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntimeResponse.fromMap((map['containerImage']! as Map).cast<String, dynamic>())),
      vpcNetwork: pulumi.Input.fromValue(GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetworkResponse.fromMap((map['vpcNetwork']! as Map).cast<String, dynamic>())),
    );
  }
}

