// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_ray_spec.dart';
import 'google_cloud_aiplatform_v1beta1_service_account_spec.dart';

/// Configuration for the runtime on a PersistentResource instance, including but not limited to: * Service accounts used to run the workloads. * Whether to make it a dedicated Ray Cluster.
class GoogleCloudAiplatformV1beta1ResourceRuntimeSpec {
  /// Optional. Ray cluster configuration. Required when creating a dedicated RayCluster on the PersistentResource.
  final pulumi.Input<GoogleCloudAiplatformV1beta1RaySpec>? raySpec;
  /// Optional. Configure the use of workload identity on the PersistentResource
  final pulumi.Input<GoogleCloudAiplatformV1beta1ServiceAccountSpec>? serviceAccountSpec;

  /// Creates a new [GoogleCloudAiplatformV1beta1ResourceRuntimeSpec].
  /// [raySpec] Optional. Ray cluster configuration. Required when creating a dedicated RayCluster on the PersistentResource.
  /// [serviceAccountSpec] Optional. Configure the use of workload identity on the PersistentResource
  const GoogleCloudAiplatformV1beta1ResourceRuntimeSpec({
    this.raySpec,
    this.serviceAccountSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'raySpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1RaySpec, Map<String, dynamic>>(raySpec, (value) => value.toMap()),
      'serviceAccountSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1ServiceAccountSpec, Map<String, dynamic>>(serviceAccountSpec, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1ResourceRuntimeSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ResourceRuntimeSpec(
      raySpec: (() { final guardedValue = map['raySpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1RaySpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccountSpec: (() { final guardedValue = map['serviceAccountSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1ServiceAccountSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
