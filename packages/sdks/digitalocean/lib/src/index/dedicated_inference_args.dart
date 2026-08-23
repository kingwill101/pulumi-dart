// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_inference_model_deployment.dart';

/// {@template pulumi_index_dedicated_inference_dedicated_inference_args_doc}
/// The set of arguments for DedicatedInference.
/// {@endtemplate}
/// {@macro pulumi_index_dedicated_inference_dedicated_inference_args_doc}
class DedicatedInferenceArgs {
  /// Whether to enable a public HTTPS endpoint for the dedicated inference endpoint. Defaults to `false`. This field is immutable after creation and changing it forces a new resource.
  final pulumi.Input<bool>? enablePublicEndpoint;
  /// A HuggingFace token for accessing gated models.
  final pulumi.Input<String>? huggingFaceToken;
  /// The list of model deployments to run on the dedicated inference endpoint. Each `modelDeployments` block supports:
  final pulumi.Input<List<DedicatedInferenceModelDeployment>> modelDeployments;
  /// A human-readable name for the dedicated inference endpoint.
  final pulumi.Input<String>? name;
  /// The region slug where the dedicated inference endpoint will be deployed. Changing this forces a new resource.
  final pulumi.Input<String> region;
  /// The UUID of the VPC to deploy the dedicated inference endpoint into. Changing this forces a new resource.
  final pulumi.Input<String>? vpcUuid;

  /// Creates a new [DedicatedInferenceArgs].
  /// [enablePublicEndpoint] Whether to enable a public HTTPS endpoint for the dedicated inference endpoint. Defaults to `false`. This field is immutable after creation and changing it forces a new resource.
  /// [huggingFaceToken] A HuggingFace token for accessing gated models.
  /// [modelDeployments] The list of model deployments to run on the dedicated inference endpoint. Each `modelDeployments` block supports:
  /// [name] A human-readable name for the dedicated inference endpoint.
  /// [region] The region slug where the dedicated inference endpoint will be deployed. Changing this forces a new resource.
  /// [vpcUuid] The UUID of the VPC to deploy the dedicated inference endpoint into. Changing this forces a new resource.
  const DedicatedInferenceArgs({
    this.enablePublicEndpoint,
    this.huggingFaceToken,
    required this.modelDeployments,
    this.name,
    required this.region,
    this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePublicEndpoint': ?enablePublicEndpoint,
      'huggingFaceToken': ?huggingFaceToken,
      'modelDeployments': pulumi.Input.mapInputValue<List<DedicatedInferenceModelDeployment>, List<Map<String, dynamic>>>(modelDeployments, (value) => pulumi.Input.encodeList<DedicatedInferenceModelDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': region,
      'vpcUuid': ?vpcUuid,
    };
  }

  factory DedicatedInferenceArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedInferenceArgs(
      enablePublicEndpoint: (() { final guardedValue = map['enablePublicEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      huggingFaceToken: (() { final guardedValue = map['huggingFaceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelDeployments: pulumi.Input.fromValue(pulumi.Input.decodeList<DedicatedInferenceModelDeployment>(map['modelDeployments']!, (value) => DedicatedInferenceModelDeployment.fromMap((value as Map).cast<String, dynamic>()))),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      vpcUuid: (() { final guardedValue = map['vpcUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
