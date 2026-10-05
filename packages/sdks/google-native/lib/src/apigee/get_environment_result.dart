// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_node_config_response.dart';
import 'google_cloud_apigee_v1_properties_response.dart';

/// Result data returned by getEnvironment.
class GetEnvironmentResult {
  /// Optional. API Proxy type supported by the environment. The type can be set when creating the Environment and cannot be changed.
  final String? apiProxyType;
  /// Creation time of this environment as milliseconds since epoch.
  final String? createdAt;
  /// Optional. Deployment type supported by the environment. The deployment type can be set when creating the environment and cannot be changed. When you enable archive deployment, you will be **prevented from performing** a [subset of actions](/apigee/docs/api-platform/local-development/overview#prevented-actions) within the environment, including: * Managing the deployment of API proxy or shared flow revisions * Creating, updating, or deleting resource files * Creating, updating, or deleting target servers
  final String? deploymentType;
  /// Optional. Description of the environment.
  final String? description;
  /// Optional. Display name for this environment.
  final String? displayName;
  /// Optional. Url of the forward proxy to be applied to the runtime instances in this environment. Must be in the format of {scheme}://{hostname}:{port}. Note that scheme must be one of "http" or "https", and port must be supplied.
  final String? forwardProxyUri;
  final bool? hasAttachedFlowHooks;
  /// Last modification time of this environment as milliseconds since epoch.
  final String? lastModifiedAt;
  /// Name of the environment. Values must match the regular expression `^[.\\p{Alnum}-_]{1,255}$`
  final String? name;
  /// Optional. NodeConfig of the environment.
  final GoogleCloudApigeeV1NodeConfigResponse? nodeConfig;
  /// Optional. Key-value pairs that may be used for customizing the environment.
  final GoogleCloudApigeeV1PropertiesResponse? properties;
  /// State of the environment. Values other than ACTIVE means the resource is not ready to use.
  final String? state;
  /// Optional. EnvironmentType selected for the environment.
  final String? type;

  /// Creates a new [GetEnvironmentResult].
  /// [apiProxyType] Optional. API Proxy type supported by the environment. The type can be set when creating the Environment and cannot be changed.
  /// [createdAt] Creation time of this environment as milliseconds since epoch.
  /// [deploymentType] Optional. Deployment type supported by the environment. The deployment type can be set when creating the environment and cannot be changed. When you enable archive deployment, you will be **prevented from performing** a [subset of actions](/apigee/docs/api-platform/local-development/overview#prevented-actions) within the environment, including: * Managing the deployment of API proxy or shared flow revisions * Creating, updating, or deleting resource files * Creating, updating, or deleting target servers
  /// [description] Optional. Description of the environment.
  /// [displayName] Optional. Display name for this environment.
  /// [forwardProxyUri] Optional. Url of the forward proxy to be applied to the runtime instances in this environment. Must be in the format of {scheme}://{hostname}:{port}. Note that scheme must be one of "http" or "https", and port must be supplied.
  /// [hasAttachedFlowHooks] Optional.
  /// [lastModifiedAt] Last modification time of this environment as milliseconds since epoch.
  /// [name] Name of the environment. Values must match the regular expression `^[.\\p{Alnum}-_]{1,255}$`
  /// [nodeConfig] Optional. NodeConfig of the environment.
  /// [properties] Optional. Key-value pairs that may be used for customizing the environment.
  /// [state] State of the environment. Values other than ACTIVE means the resource is not ready to use.
  /// [type] Optional. EnvironmentType selected for the environment.
  const GetEnvironmentResult({
    this.apiProxyType,
    this.createdAt,
    this.deploymentType,
    this.description,
    this.displayName,
    this.forwardProxyUri,
    this.hasAttachedFlowHooks,
    this.lastModifiedAt,
    this.name,
    this.nodeConfig,
    this.properties,
    this.state,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiProxyType': ?apiProxyType,
      'createdAt': ?createdAt,
      'deploymentType': ?deploymentType,
      'description': ?description,
      'displayName': ?displayName,
      'forwardProxyUri': ?forwardProxyUri,
      'hasAttachedFlowHooks': ?hasAttachedFlowHooks,
      'lastModifiedAt': ?lastModifiedAt,
      'name': ?name,
      'nodeConfig': ?nodeConfig?.toMap(),
      'properties': ?properties?.toMap(),
      'state': ?state,
      'type': ?type,
    };
  }

  factory GetEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentResult(
      apiProxyType: (() { final guardedValue = map['apiProxyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deploymentType: (() { final guardedValue = map['deploymentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      forwardProxyUri: (() { final guardedValue = map['forwardProxyUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hasAttachedFlowHooks: (() { final guardedValue = map['hasAttachedFlowHooks']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastModifiedAt: (() { final guardedValue = map['lastModifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeConfig: (() { final guardedValue = map['nodeConfig']; if (guardedValue == null) return null; return GoogleCloudApigeeV1NodeConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return GoogleCloudApigeeV1PropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
