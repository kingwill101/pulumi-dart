// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_inference_model_deployment.dart';

/// Input properties used for looking up and filtering DedicatedInference resources.
class DedicatedInferenceState {
  /// The date and time when the dedicated inference endpoint was created.
  final pulumi.Input<String>? createdAt;
  /// Whether to enable a public HTTPS endpoint for the dedicated inference endpoint. Defaults to `false`. This field is immutable after creation and changing it forces a new resource.
  final pulumi.Input<bool>? enablePublicEndpoint;
  /// A HuggingFace token for accessing gated models.
  final pulumi.Input<String>? huggingFaceToken;
  /// The list of model deployments to run on the dedicated inference endpoint. Each `modelDeployments` block supports:
  final pulumi.Input<List<DedicatedInferenceModelDeployment>>? modelDeployments;
  /// A human-readable name for the dedicated inference endpoint.
  final pulumi.Input<String>? name;
  /// The fully-qualified domain name of the private endpoint.
  final pulumi.Input<String>? privateEndpointFqdn;
  /// The fully-qualified domain name of the public endpoint, if enabled.
  final pulumi.Input<String>? publicEndpointFqdn;
  /// The region slug where the dedicated inference endpoint will be deployed. Changing this forces a new resource.
  final pulumi.Input<String>? region;
  /// The current status of the dedicated inference endpoint.
  final pulumi.Input<String>? status;
  /// The date and time when the dedicated inference endpoint was last updated.
  final pulumi.Input<String>? updatedAt;
  /// The UUID of the VPC to deploy the dedicated inference endpoint into. Changing this forces a new resource.
  final pulumi.Input<String>? vpcUuid;

  /// Creates a new [DedicatedInferenceState].
  /// [createdAt] The date and time when the dedicated inference endpoint was created.
  /// [enablePublicEndpoint] Whether to enable a public HTTPS endpoint for the dedicated inference endpoint. Defaults to `false`. This field is immutable after creation and changing it forces a new resource.
  /// [huggingFaceToken] A HuggingFace token for accessing gated models.
  /// [modelDeployments] The list of model deployments to run on the dedicated inference endpoint. Each `modelDeployments` block supports:
  /// [name] A human-readable name for the dedicated inference endpoint.
  /// [privateEndpointFqdn] The fully-qualified domain name of the private endpoint.
  /// [publicEndpointFqdn] The fully-qualified domain name of the public endpoint, if enabled.
  /// [region] The region slug where the dedicated inference endpoint will be deployed. Changing this forces a new resource.
  /// [status] The current status of the dedicated inference endpoint.
  /// [updatedAt] The date and time when the dedicated inference endpoint was last updated.
  /// [vpcUuid] The UUID of the VPC to deploy the dedicated inference endpoint into. Changing this forces a new resource.
  const DedicatedInferenceState({
    this.createdAt,
    this.enablePublicEndpoint,
    this.huggingFaceToken,
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
      'huggingFaceToken': ?huggingFaceToken,
      'modelDeployments': ?pulumi.Input.mapOptionalInputValue<List<DedicatedInferenceModelDeployment>, List<Map<String, dynamic>>>(modelDeployments, (value) => pulumi.Input.encodeList<DedicatedInferenceModelDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'privateEndpointFqdn': ?privateEndpointFqdn,
      'publicEndpointFqdn': ?publicEndpointFqdn,
      'region': ?region,
      'status': ?status,
      'updatedAt': ?updatedAt,
      'vpcUuid': ?vpcUuid,
    };
  }

  factory DedicatedInferenceState.fromMap(Map<String, dynamic> map) {
    return DedicatedInferenceState(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enablePublicEndpoint: (() { final guardedValue = map['enablePublicEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      huggingFaceToken: (() { final guardedValue = map['huggingFaceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelDeployments: (() { final guardedValue = map['modelDeployments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DedicatedInferenceModelDeployment>(guardedValue, (value) => DedicatedInferenceModelDeployment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpointFqdn: (() { final guardedValue = map['privateEndpointFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicEndpointFqdn: (() { final guardedValue = map['publicEndpointFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcUuid: (() { final guardedValue = map['vpcUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
