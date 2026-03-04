// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec.dart';

class AiEndpointWithModelGardenDeploymentModelConfig {
  /// Whether the user accepts the End User License Agreement (EULA)
  /// for the model.
  final pulumi.Input<bool>? acceptEula;

  /// Specification of a container for serving predictions. Some fields in this
  /// message correspond to fields in the [Kubernetes Container v1 core
  /// specification](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#container-v1-core).
  /// Structure is documented below.
  final pulumi.Input<
    AiEndpointWithModelGardenDeploymentModelConfigContainerSpec
  >?
  containerSpec;

  /// The Hugging Face read access token used to access the model
  /// artifacts of gated models.
  final pulumi.Input<String>? huggingFaceAccessToken;

  /// If true, the model will deploy with a cached version instead of directly
  /// downloading the model artifacts from Hugging Face. This is suitable for
  /// VPC-SC users with limited internet access.
  final pulumi.Input<bool>? huggingFaceCacheEnabled;

  /// The user-specified display name of the uploaded model. If not
  /// set, a default name will be used.
  final pulumi.Input<String>? modelDisplayName;

  /// Creates a new [AiEndpointWithModelGardenDeploymentModelConfig].
  /// [acceptEula] Whether the user accepts the End User License Agreement (EULA)
  /// [containerSpec] Specification of a container for serving predictions. Some fields in this
  /// [huggingFaceAccessToken] The Hugging Face read access token used to access the model
  /// [huggingFaceCacheEnabled] If true, the model will deploy with a cached version instead of directly
  /// [modelDisplayName] The user-specified display name of the uploaded model. If not
  AiEndpointWithModelGardenDeploymentModelConfig({
    this.acceptEula,
    this.containerSpec,
    this.huggingFaceAccessToken,
    this.huggingFaceCacheEnabled,
    this.modelDisplayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptEula': ?acceptEula,
      'containerSpec':
          ?pulumi.Input.mapOptionalInputValue<
            AiEndpointWithModelGardenDeploymentModelConfigContainerSpec,
            Map<String, dynamic>
          >(containerSpec, (value) => value.toMap()),
      'huggingFaceAccessToken': ?huggingFaceAccessToken,
      'huggingFaceCacheEnabled': ?huggingFaceCacheEnabled,
      'modelDisplayName': ?modelDisplayName,
    };
  }

  factory AiEndpointWithModelGardenDeploymentModelConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiEndpointWithModelGardenDeploymentModelConfig(
      acceptEula: (() {
        final guardedValue = map['acceptEula'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      containerSpec: (() {
        final guardedValue = map['containerSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AiEndpointWithModelGardenDeploymentModelConfigContainerSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      huggingFaceAccessToken: (() {
        final guardedValue = map['huggingFaceAccessToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      huggingFaceCacheEnabled: (() {
        final guardedValue = map['huggingFaceCacheEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      modelDisplayName: (() {
        final guardedValue = map['modelDisplayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
