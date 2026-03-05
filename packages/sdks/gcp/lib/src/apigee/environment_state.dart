// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_client_ip_resolution_config.dart';
import 'environment_node_config.dart';
import 'environment_properties.dart';

/// Input properties used for looking up and filtering Environment resources.
class EnvironmentState {
  /// Optional. API Proxy type supported by the environment. The type can be set when creating
  /// the Environment and cannot be changed.
  /// Possible values are: `API_PROXY_TYPE_UNSPECIFIED`, `PROGRAMMABLE`, `CONFIGURABLE`.
  final pulumi.Input<String>? apiProxyType;
  /// The algorithm to resolve IP. This will affect Analytics, API Security, and other features that use the client ip. To remove a client ip resolution config, update the field to an empty value. Example: '{ "clientIpResolutionConfig" = {} }' For more information, see: https://cloud.google.com/apigee/docs/api-platform/system-administration/client-ip-resolution
  /// Structure is documented below.
  final pulumi.Input<EnvironmentClientIpResolutionConfig>? clientIpResolutionConfig;
  /// Optional. Deployment type supported by the environment. The deployment type can be
  /// set when creating the environment and cannot be changed. When you enable archive
  /// deployment, you will be prevented from performing a subset of actions within the
  /// environment, including:
  /// Managing the deployment of API proxy or shared flow revisions;
  /// Creating, updating, or deleting resource files;
  /// Creating, updating, or deleting target servers.
  /// Possible values are: `DEPLOYMENT_TYPE_UNSPECIFIED`, `PROXY`, `ARCHIVE`.
  final pulumi.Input<String>? deploymentType;
  /// Description of the environment.
  final pulumi.Input<String>? description;
  /// Display name of the environment.
  final pulumi.Input<String>? displayName;
  /// Optional. URI of the forward proxy to be applied to the runtime instances in this environment. Must be in the format of {scheme}://{hostname}:{port}. Note that the scheme must be one of "http" or "https", and the port must be supplied.
  final pulumi.Input<String>? forwardProxyUri;
  /// The resource ID of the environment.
  final pulumi.Input<String>? name;
  /// NodeConfig for setting the min/max number of nodes associated with the environment.
  /// Structure is documented below.
  final pulumi.Input<EnvironmentNodeConfig>? nodeConfig;
  /// The Apigee Organization associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String>? orgId;
  /// Key-value pairs that may be used for customizing the environment.
  /// Structure is documented below.
  final pulumi.Input<EnvironmentProperties>? properties;
  /// Types that can be selected for an Environment. Each of the types are
  /// limited by capability and capacity. Refer to Apigee's public documentation
  /// to understand about each of these types in details.
  /// An Apigee org can support heterogeneous Environments.
  /// Possible values are: `ENVIRONMENT_TYPE_UNSPECIFIED`, `BASE`, `INTERMEDIATE`, `COMPREHENSIVE`.
  final pulumi.Input<String>? type;

  /// Creates a new [EnvironmentState].
  /// [apiProxyType] Optional. API Proxy type supported by the environment. The type can be set when creating
  /// [clientIpResolutionConfig] The algorithm to resolve IP. This will affect Analytics, API Security, and other features that use the client ip. To remove a client ip resolution config, update the field to an empty value. Example: '{ "clientIpResolutionConfig" = {} }' For more information, see: https://cloud.google.com/apigee/docs/api-platform/system-administration/client-ip-resolution
  /// [deploymentType] Optional. Deployment type supported by the environment. The deployment type can be
  /// [description] Description of the environment.
  /// [displayName] Display name of the environment.
  /// [forwardProxyUri] Optional. URI of the forward proxy to be applied to the runtime instances in this environment. Must be in the format of {scheme}://{hostname}:{port}. Note that the scheme must be one of "http" or "https", and the port must be supplied.
  /// [name] The resource ID of the environment.
  /// [nodeConfig] NodeConfig for setting the min/max number of nodes associated with the environment.
  /// [orgId] The Apigee Organization associated with the Apigee environment,
  /// [properties] Key-value pairs that may be used for customizing the environment.
  /// [type] Types that can be selected for an Environment. Each of the types are
  EnvironmentState({
    this.apiProxyType,
    this.clientIpResolutionConfig,
    this.deploymentType,
    this.description,
    this.displayName,
    this.forwardProxyUri,
    this.name,
    this.nodeConfig,
    this.orgId,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiProxyType': ?apiProxyType,
      'clientIpResolutionConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentClientIpResolutionConfig, Map<String, dynamic>>(clientIpResolutionConfig, (value) => value.toMap()),
      'deploymentType': ?deploymentType,
      'description': ?description,
      'displayName': ?displayName,
      'forwardProxyUri': ?forwardProxyUri,
      'name': ?name,
      'nodeConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentNodeConfig, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'orgId': ?orgId,
      'properties': ?pulumi.Input.mapOptionalInputValue<EnvironmentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory EnvironmentState.fromMap(Map<String, dynamic> map) {
    return EnvironmentState(
      apiProxyType: (() { final guardedValue = map['apiProxyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientIpResolutionConfig: (() { final guardedValue = map['clientIpResolutionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentClientIpResolutionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deploymentType: (() { final guardedValue = map['deploymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardProxyUri: (() { final guardedValue = map['forwardProxyUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeConfig: (() { final guardedValue = map['nodeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

