// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_deployed_model_automatic_resource.dart';
import 'ai_endpoint_deployed_model_dedicated_resource.dart';
import 'ai_endpoint_deployed_model_private_endpoint.dart';

class AiEndpointDeployedModel {
  /// (Output)
  /// A description of resources that to large degree are decided by Vertex AI, and require only a modest additional configuration.
  /// Structure is documented below.
  final pulumi.Input<List<AiEndpointDeployedModelAutomaticResource>>?
  automaticResources;

  /// (Output)
  /// Output only. Timestamp when the DeployedModel was created.
  final pulumi.Input<String>? createTime;

  /// (Output)
  /// A description of resources that are dedicated to the DeployedModel, and that need a higher degree of manual configuration.
  /// Structure is documented below.
  final pulumi.Input<List<AiEndpointDeployedModelDedicatedResource>>?
  dedicatedResources;

  /// Required. The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String>? displayName;

  /// (Output)
  /// These logs are like standard server access logs, containing information like timestamp and latency for each prediction request. Note that Stackdriver logs may incur a cost, especially if your project receives prediction requests at a high queries per second rate (QPS). Estimate your costs before enabling this option.
  final pulumi.Input<bool>? enableAccessLogging;

  /// (Output)
  /// If true, the container of the DeployedModel instances will send `stderr` and `stdout` streams to Stackdriver Logging. Only supported for custom-trained Models and AutoML Tabular Models.
  final pulumi.Input<bool>? enableContainerLogging;

  /// (Output)
  /// The ID of the DeployedModel. If not provided upon deployment, Vertex AI will generate a value for this ID. This value should be 1-10 characters, and valid characters are /[0-9]/.
  final pulumi.Input<String>? id;

  /// (Output)
  /// The name of the Model that this is the deployment of. Note that the Model may be in a different location than the DeployedModel's Endpoint.
  final pulumi.Input<String>? model;

  /// (Output)
  /// Output only. The version ID of the model that is deployed.
  final pulumi.Input<String>? modelVersionId;

  /// (Output)
  /// Output only. Provide paths for users to send predict/explain/health requests directly to the deployed model services running on Cloud via private services access. This field is populated if network is configured.
  /// Structure is documented below.
  final pulumi.Input<List<AiEndpointDeployedModelPrivateEndpoint>>?
  privateEndpoints;

  /// (Output)
  /// The service account that the DeployedModel's container runs as. Specify the email address of the service account. If this service account is not specified, the container runs as a service account that doesn't have access to the resource project. Users deploying the Model must have the `iam.serviceAccounts.actAs` permission on this service account.
  final pulumi.Input<String>? serviceAccount;

  /// (Output)
  /// The resource name of the shared DeploymentResourcePool to deploy on. Format: projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}
  final pulumi.Input<String>? sharedResources;

  /// Creates a new [AiEndpointDeployedModel].
  /// [automaticResources] (Output)
  /// [createTime] (Output)
  /// [dedicatedResources] (Output)
  /// [displayName] Required. The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [enableAccessLogging] (Output)
  /// [enableContainerLogging] (Output)
  /// [id] (Output)
  /// [model] (Output)
  /// [modelVersionId] (Output)
  /// [privateEndpoints] (Output)
  /// [serviceAccount] (Output)
  /// [sharedResources] (Output)
  AiEndpointDeployedModel({
    this.automaticResources,
    this.createTime,
    this.dedicatedResources,
    this.displayName,
    this.enableAccessLogging,
    this.enableContainerLogging,
    this.id,
    this.model,
    this.modelVersionId,
    this.privateEndpoints,
    this.serviceAccount,
    this.sharedResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticResources':
          ?pulumi.Input.mapOptionalInputValue<
            List<AiEndpointDeployedModelAutomaticResource>,
            List<Map<String, dynamic>>
          >(
            automaticResources,
            (value) =>
                pulumi.Input.encodeList<
                  AiEndpointDeployedModelAutomaticResource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'createTime': ?createTime,
      'dedicatedResources':
          ?pulumi.Input.mapOptionalInputValue<
            List<AiEndpointDeployedModelDedicatedResource>,
            List<Map<String, dynamic>>
          >(
            dedicatedResources,
            (value) =>
                pulumi.Input.encodeList<
                  AiEndpointDeployedModelDedicatedResource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'displayName': ?displayName,
      'enableAccessLogging': ?enableAccessLogging,
      'enableContainerLogging': ?enableContainerLogging,
      'id': ?id,
      'model': ?model,
      'modelVersionId': ?modelVersionId,
      'privateEndpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<AiEndpointDeployedModelPrivateEndpoint>,
            List<Map<String, dynamic>>
          >(
            privateEndpoints,
            (value) =>
                pulumi.Input.encodeList<
                  AiEndpointDeployedModelPrivateEndpoint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'serviceAccount': ?serviceAccount,
      'sharedResources': ?sharedResources,
    };
  }

  factory AiEndpointDeployedModel.fromMap(Map<String, dynamic> map) {
    return AiEndpointDeployedModel(
      automaticResources: (() {
        final guardedValue = map['automaticResources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AiEndpointDeployedModelAutomaticResource>(
            guardedValue,
            (value) => AiEndpointDeployedModelAutomaticResource.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dedicatedResources: (() {
        final guardedValue = map['dedicatedResources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AiEndpointDeployedModelDedicatedResource>(
            guardedValue,
            (value) => AiEndpointDeployedModelDedicatedResource.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableAccessLogging: (() {
        final guardedValue = map['enableAccessLogging'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableContainerLogging: (() {
        final guardedValue = map['enableContainerLogging'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      model: (() {
        final guardedValue = map['model'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      modelVersionId: (() {
        final guardedValue = map['modelVersionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateEndpoints: (() {
        final guardedValue = map['privateEndpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AiEndpointDeployedModelPrivateEndpoint>(
            guardedValue,
            (value) => AiEndpointDeployedModelPrivateEndpoint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      serviceAccount: (() {
        final guardedValue = map['serviceAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sharedResources: (() {
        final guardedValue = map['sharedResources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
