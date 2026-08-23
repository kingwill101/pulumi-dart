// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_inference_model_deployment.dart';

/// Result data returned by getDedicatedInference.
class GetDedicatedInferenceResult {
  /// The date and time when the dedicated inference endpoint was created.
  final String createdAt;
  /// Whether the public HTTPS endpoint is enabled.
  final bool enablePublicEndpoint;
  final String id;
  /// The list of model deployments running on the endpoint. Each element contains:
  final List<GetDedicatedInferenceModelDeployment> modelDeployments;
  /// The name of the dedicated inference endpoint.
  final String name;
  /// The fully-qualified domain name of the private endpoint.
  final String privateEndpointFqdn;
  /// The fully-qualified domain name of the public endpoint, if enabled.
  final String publicEndpointFqdn;
  /// The region where the dedicated inference endpoint is deployed.
  final String region;
  /// The current status of the dedicated inference endpoint.
  final String status;
  /// The date and time when the dedicated inference endpoint was last updated.
  final String updatedAt;
  /// The UUID of the VPC the dedicated inference endpoint is deployed in.
  final String vpcUuid;

  /// Creates a new [GetDedicatedInferenceResult].
  /// [createdAt] The date and time when the dedicated inference endpoint was created.
  /// [enablePublicEndpoint] Whether the public HTTPS endpoint is enabled.
  /// [id] Required.
  /// [modelDeployments] The list of model deployments running on the endpoint. Each element contains:
  /// [name] The name of the dedicated inference endpoint.
  /// [privateEndpointFqdn] The fully-qualified domain name of the private endpoint.
  /// [publicEndpointFqdn] The fully-qualified domain name of the public endpoint, if enabled.
  /// [region] The region where the dedicated inference endpoint is deployed.
  /// [status] The current status of the dedicated inference endpoint.
  /// [updatedAt] The date and time when the dedicated inference endpoint was last updated.
  /// [vpcUuid] The UUID of the VPC the dedicated inference endpoint is deployed in.
  const GetDedicatedInferenceResult({
    required this.createdAt,
    required this.enablePublicEndpoint,
    required this.id,
    required this.modelDeployments,
    required this.name,
    required this.privateEndpointFqdn,
    required this.publicEndpointFqdn,
    required this.region,
    required this.status,
    required this.updatedAt,
    required this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'enablePublicEndpoint': enablePublicEndpoint,
      'id': id,
      'modelDeployments': pulumi.Input.encodeList<GetDedicatedInferenceModelDeployment, Map<String, dynamic>>(modelDeployments, (value) => value.toMap()),
      'name': name,
      'privateEndpointFqdn': privateEndpointFqdn,
      'publicEndpointFqdn': publicEndpointFqdn,
      'region': region,
      'status': status,
      'updatedAt': updatedAt,
      'vpcUuid': vpcUuid,
    };
  }

  factory GetDedicatedInferenceResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceResult(
      createdAt: map['createdAt'] as String,
      enablePublicEndpoint: map['enablePublicEndpoint'] as bool,
      id: map['id'] as String,
      modelDeployments: pulumi.Input.decodeList<GetDedicatedInferenceModelDeployment>(map['modelDeployments']!, (value) => GetDedicatedInferenceModelDeployment.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      privateEndpointFqdn: map['privateEndpointFqdn'] as String,
      publicEndpointFqdn: map['publicEndpointFqdn'] as String,
      region: map['region'] as String,
      status: map['status'] as String,
      updatedAt: map['updatedAt'] as String,
      vpcUuid: map['vpcUuid'] as String,
    );
  }
}
