// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_ray_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_service_account_spec_response.dart';

/// Configuration for the runtime on a PersistentResource instance, including but not limited to: * Service accounts used to run the workloads. * Whether to make it a dedicated Ray Cluster.
class GoogleCloudAiplatformV1beta1ResourceRuntimeSpecResponse {
  /// Optional. Ray cluster configuration. Required when creating a dedicated RayCluster on the PersistentResource.
  final pulumi.Input<GoogleCloudAiplatformV1beta1RaySpecResponse> raySpec;
  /// Optional. Configure the use of workload identity on the PersistentResource
  final pulumi.Input<GoogleCloudAiplatformV1beta1ServiceAccountSpecResponse> serviceAccountSpec;

  /// Creates a new [GoogleCloudAiplatformV1beta1ResourceRuntimeSpecResponse].
  /// [raySpec] Optional. Ray cluster configuration. Required when creating a dedicated RayCluster on the PersistentResource.
  /// [serviceAccountSpec] Optional. Configure the use of workload identity on the PersistentResource
  GoogleCloudAiplatformV1beta1ResourceRuntimeSpecResponse({
    required this.raySpec,
    required this.serviceAccountSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'raySpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1RaySpecResponse, Map<String, dynamic>>(raySpec, (value) => value.toMap()),
      'serviceAccountSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1ServiceAccountSpecResponse, Map<String, dynamic>>(serviceAccountSpec, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1ResourceRuntimeSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ResourceRuntimeSpecResponse(
      raySpec: (GoogleCloudAiplatformV1beta1RaySpecResponse.fromMap((map['raySpec'] as Map).cast<String, dynamic>())).input(),
      serviceAccountSpec: (GoogleCloudAiplatformV1beta1ServiceAccountSpecResponse.fromMap((map['serviceAccountSpec'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

