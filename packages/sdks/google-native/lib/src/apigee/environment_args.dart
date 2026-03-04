// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_api_proxy_type.dart';
import 'environment_deployment_type.dart';
import 'environment_type.dart';
import 'google_cloud_apigee_v1_node_config.dart';
import 'google_cloud_apigee_v1_properties.dart';

/// {@template pulumi_apigee_v1_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_environment_args_doc}
class EnvironmentArgs {
  /// Optional. API Proxy type supported by the environment. The type can be set when creating the Environment and cannot be changed.
  final pulumi.Input<EnvironmentApiProxyType>? apiProxyType;

  /// Optional. Deployment type supported by the environment. The deployment type can be set when creating the environment and cannot be changed. When you enable archive deployment, you will be **prevented from performing** a [subset of actions](/apigee/docs/api-platform/local-development/overview#prevented-actions) within the environment, including: * Managing the deployment of API proxy or shared flow revisions * Creating, updating, or deleting resource files * Creating, updating, or deleting target servers
  final pulumi.Input<EnvironmentDeploymentType>? deploymentType;

  /// Optional. Description of the environment.
  final pulumi.Input<String>? description;

  /// Optional. Display name for this environment.
  final pulumi.Input<String>? displayName;

  /// Optional. Url of the forward proxy to be applied to the runtime instances in this environment. Must be in the format of {scheme}://{hostname}:{port}. Note that scheme must be one of "http" or "https", and port must be supplied.
  final pulumi.Input<String>? forwardProxyUri;
  final pulumi.Input<bool>? hasAttachedFlowHooks;

  /// Name of the environment. Values must match the regular expression `^[.\\p{Alnum}-_]{1,255}$`
  final pulumi.Input<String>? name;

  /// Optional. NodeConfig of the environment.
  final pulumi.Input<GoogleCloudApigeeV1NodeConfig>? nodeConfig;
  final pulumi.Input<String> organizationId;

  /// Optional. Key-value pairs that may be used for customizing the environment.
  final pulumi.Input<GoogleCloudApigeeV1Properties>? properties;

  /// Optional. EnvironmentType selected for the environment.
  final pulumi.Input<EnvironmentType>? type;

  /// Creates a new [EnvironmentArgs].
  /// [apiProxyType] Optional. API Proxy type supported by the environment. The type can be set when creating the Environment and cannot be changed.
  /// [deploymentType] Optional. Deployment type supported by the environment. The deployment type can be set when creating the environment and cannot be changed. When you enable archive deployment, you will be **prevented from performing** a [subset of actions](/apigee/docs/api-platform/local-development/overview#prevented-actions) within the environment, including: * Managing the deployment of API proxy or shared flow revisions * Creating, updating, or deleting resource files * Creating, updating, or deleting target servers
  /// [description] Optional. Description of the environment.
  /// [displayName] Optional. Display name for this environment.
  /// [forwardProxyUri] Optional. Url of the forward proxy to be applied to the runtime instances in this environment. Must be in the format of {scheme}://{hostname}:{port}. Note that scheme must be one of "http" or "https", and port must be supplied.
  /// [hasAttachedFlowHooks] Optional.
  /// [name] Name of the environment. Values must match the regular expression `^[.\\p{Alnum}-_]{1,255}$`
  /// [nodeConfig] Optional. NodeConfig of the environment.
  /// [organizationId] Required.
  /// [properties] Optional. Key-value pairs that may be used for customizing the environment.
  /// [type] Optional. EnvironmentType selected for the environment.
  EnvironmentArgs({
    this.apiProxyType,
    this.deploymentType,
    this.description,
    this.displayName,
    this.forwardProxyUri,
    this.hasAttachedFlowHooks,
    this.name,
    this.nodeConfig,
    required this.organizationId,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiProxyType':
          ?pulumi.Input.mapOptionalInputValue<EnvironmentApiProxyType, String>(
            apiProxyType,
            (value) => value.wireValue,
          ),
      'deploymentType':
          ?pulumi.Input.mapOptionalInputValue<
            EnvironmentDeploymentType,
            String
          >(deploymentType, (value) => value.wireValue),
      'description': ?description,
      'displayName': ?displayName,
      'forwardProxyUri': ?forwardProxyUri,
      'hasAttachedFlowHooks': ?hasAttachedFlowHooks,
      'name': ?name,
      'nodeConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudApigeeV1NodeConfig,
            Map<String, dynamic>
          >(nodeConfig, (value) => value.toMap()),
      'organizationId': organizationId,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudApigeeV1Properties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'type': ?pulumi.Input.mapOptionalInputValue<EnvironmentType, String>(
        type,
        (value) => value.wireValue,
      ),
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      apiProxyType: (() {
        final guardedValue = map['apiProxyType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnvironmentApiProxyType.fromValue(guardedValue as String),
        );
      })(),
      deploymentType: (() {
        final guardedValue = map['deploymentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnvironmentDeploymentType.fromValue(guardedValue as String),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      forwardProxyUri: (() {
        final guardedValue = map['forwardProxyUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hasAttachedFlowHooks: (() {
        final guardedValue = map['hasAttachedFlowHooks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeConfig: (() {
        final guardedValue = map['nodeConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudApigeeV1NodeConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudApigeeV1Properties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnvironmentType.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
