// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_environment_infrastructure_spec_compute_resources.dart';
import 'google_cloud_dataplex_v1_environment_infrastructure_spec_os_image_runtime.dart';

/// Configuration for the underlying infrastructure used to run workloads.
class GoogleCloudDataplexV1EnvironmentInfrastructureSpec {
  /// Optional. Compute resources needed for analyze interactive workloads.
  final pulumi.Input<GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources>? compute;
  /// Software Runtime Configuration for analyze interactive workloads.
  final pulumi.Input<GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime> osImage;

  /// Creates a new [GoogleCloudDataplexV1EnvironmentInfrastructureSpec].
  /// [compute] Optional. Compute resources needed for analyze interactive workloads.
  /// [osImage] Software Runtime Configuration for analyze interactive workloads.
  GoogleCloudDataplexV1EnvironmentInfrastructureSpec({
    this.compute,
    required this.osImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compute': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources, Map<String, dynamic>>(compute, (value) => value.toMap()),
      'osImage': pulumi.Input.mapInputValue<GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime, Map<String, dynamic>>(osImage, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDataplexV1EnvironmentInfrastructureSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1EnvironmentInfrastructureSpec(
      compute: map['compute'] == null ? null : (GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources.fromMap((map['compute'] as Map).cast<String, dynamic>())).input(),
      osImage: (GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime.fromMap((map['osImage'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

