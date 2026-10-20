// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_inference_model_deployment.dart';

/// Result data returned by getDedicatedInference.
class GetDedicatedInferenceResult {
  /// The date and time when the dedicated inference endpoint was created.
  final String? createdAt;
  /// Whether the public HTTPS endpoint is enabled.
  final bool? enablePublicEndpoint;
  final String? id;
  /// The list of model deployments running on the endpoint. Each element contains:
  final List<GetDedicatedInferenceModelDeployment>? modelDeployments;
  /// The name of the dedicated inference endpoint.
  final String? name;
  /// The fully-qualified domain name of the private endpoint.
  final String? privateEndpointFqdn;
  /// The fully-qualified domain name of the public endpoint, if enabled.
  final String? publicEndpointFqdn;
  /// The region where the dedicated inference endpoint is deployed.
  final String? region;
  /// The current status of the dedicated inference endpoint.
  final String? status;
  /// The date and time when the dedicated inference endpoint was last updated.
  final String? updatedAt;
  /// The UUID of the VPC the dedicated inference endpoint is deployed in.
  final String? vpcUuid;

  /// Creates a new [GetDedicatedInferenceResult].
  /// [createdAt] The date and time when the dedicated inference endpoint was created.
  /// [enablePublicEndpoint] Whether the public HTTPS endpoint is enabled.
  /// [id] Optional.
  /// [modelDeployments] The list of model deployments running on the endpoint. Each element contains:
  /// [name] The name of the dedicated inference endpoint.
  /// [privateEndpointFqdn] The fully-qualified domain name of the private endpoint.
  /// [publicEndpointFqdn] The fully-qualified domain name of the public endpoint, if enabled.
  /// [region] The region where the dedicated inference endpoint is deployed.
  /// [status] The current status of the dedicated inference endpoint.
  /// [updatedAt] The date and time when the dedicated inference endpoint was last updated.
  /// [vpcUuid] The UUID of the VPC the dedicated inference endpoint is deployed in.
  const GetDedicatedInferenceResult({
    this.createdAt,
    this.enablePublicEndpoint,
    this.id,
    this.modelDeployments,
    this.name,
    this.privateEndpointFqdn,
    this.publicEndpointFqdn,
    this.region,
    this.status,
    this.updatedAt,
    this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'enablePublicEndpoint': ?enablePublicEndpoint,
      'id': ?id,
      'modelDeployments': ?(() { final guardedValue = modelDeployments; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDedicatedInferenceModelDeployment, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'privateEndpointFqdn': ?privateEndpointFqdn,
      'publicEndpointFqdn': ?publicEndpointFqdn,
      'region': ?region,
      'status': ?status,
      'updatedAt': ?updatedAt,
      'vpcUuid': ?vpcUuid,
    };
  }

  factory GetDedicatedInferenceResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceResult(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enablePublicEndpoint: (() { final guardedValue = map['enablePublicEndpoint']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modelDeployments: (() { final guardedValue = map['modelDeployments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDedicatedInferenceModelDeployment>(guardedValue, (value) => GetDedicatedInferenceModelDeployment.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpointFqdn: (() { final guardedValue = map['privateEndpointFqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicEndpointFqdn: (() { final guardedValue = map['publicEndpointFqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcUuid: (() { final guardedValue = map['vpcUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
