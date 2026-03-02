// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_circuit_breaker_rule.dart';
import 'backend_credentials.dart';
import 'backend_proxy.dart';
import 'backend_service_fabric_cluster.dart';
import 'backend_tls.dart';

/// Input properties used for looking up and filtering Backend resources.
class BackendState {
  /// The Name of the API Management Service where this backend should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// A `circuit_breaker_rule` block as documented below.
  final pulumi.Input<BackendCircuitBreakerRule>? circuitBreakerRule;
  /// A `credentials` block as documented below.
  final pulumi.Input<BackendCredentials>? credentials;
  /// The description of the backend.
  final pulumi.Input<String>? description;
  /// The name of the API Management backend. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The protocol used by the backend host. Possible values are `http` or `soap`.
  final pulumi.Input<String>? protocol;
  /// A `proxy` block as documented below.
  final pulumi.Input<BackendProxy>? proxy;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The management URI of the backend host in an external system. This URI can be the ARM Resource ID of Logic Apps, Function Apps or API Apps, or the management endpoint of a Service Fabric cluster.
  final pulumi.Input<String>? resourceId;
  /// A `service_fabric_cluster` block as documented below.
  final pulumi.Input<BackendServiceFabricCluster>? serviceFabricCluster;
  /// The title of the backend.
  final pulumi.Input<String>? title;
  /// A `tls` block as documented below.
  final pulumi.Input<BackendTls>? tls;
  /// The backend host URL should be specified in the format `"https://backend.com/api"`, avoiding trailing slashes (/) to minimize misconfiguration risks. Azure API Management instance will append the backend resource name to this URL. This URL typically serves as the `base-url` in the [`set-backend-service`](https://learn.microsoft.com/azure/api-management/set-backend-service-policy) policy, enabling seamless transitions from frontend to backend.
  final pulumi.Input<String>? url;

  /// Creates a new [BackendState].
  /// [apiManagementName] The Name of the API Management Service where this backend should be created. Changing this forces a new resource to be created.
  /// [circuitBreakerRule] A `circuit_breaker_rule` block as documented below.
  /// [credentials] A `credentials` block as documented below.
  /// [description] The description of the backend.
  /// [name] The name of the API Management backend. Changing this forces a new resource to be created.
  /// [protocol] The protocol used by the backend host. Possible values are `http` or `soap`.
  /// [proxy] A `proxy` block as documented below.
  /// [resourceGroupName] The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  /// [resourceId] The management URI of the backend host in an external system. This URI can be the ARM Resource ID of Logic Apps, Function Apps or API Apps, or the management endpoint of a Service Fabric cluster.
  /// [serviceFabricCluster] A `service_fabric_cluster` block as documented below.
  /// [title] The title of the backend.
  /// [tls] A `tls` block as documented below.
  /// [url] The backend host URL should be specified in the format `"https://backend.com/api"`, avoiding trailing slashes (/) to minimize misconfiguration risks. Azure API Management instance will append the backend resource name to this URL. This URL typically serves as the `base-url` in the [`set-backend-service`](https://learn.microsoft.com/azure/api-management/set-backend-service-policy) policy, enabling seamless transitions from frontend to backend.
  BackendState({
    this.apiManagementName,
    this.circuitBreakerRule,
    this.credentials,
    this.description,
    this.name,
    this.protocol,
    this.proxy,
    this.resourceGroupName,
    this.resourceId,
    this.serviceFabricCluster,
    this.title,
    this.tls,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'circuitBreakerRule': ?pulumi.Input.mapOptionalInputValue<BackendCircuitBreakerRule, Map<String, dynamic>>(circuitBreakerRule, (value) => value.toMap()),
      'credentials': ?pulumi.Input.mapOptionalInputValue<BackendCredentials, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'protocol': ?protocol,
      'proxy': ?pulumi.Input.mapOptionalInputValue<BackendProxy, Map<String, dynamic>>(proxy, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'resourceId': ?resourceId,
      'serviceFabricCluster': ?pulumi.Input.mapOptionalInputValue<BackendServiceFabricCluster, Map<String, dynamic>>(serviceFabricCluster, (value) => value.toMap()),
      'title': ?title,
      'tls': ?pulumi.Input.mapOptionalInputValue<BackendTls, Map<String, dynamic>>(tls, (value) => value.toMap()),
      'url': ?url,
    };
  }

  factory BackendState.fromMap(Map<String, dynamic> map) {
    return BackendState(
      apiManagementName: map['apiManagementName'] == null ? null : (map['apiManagementName'] as String).input(),
      circuitBreakerRule: map['circuitBreakerRule'] == null ? null : (BackendCircuitBreakerRule.fromMap((map['circuitBreakerRule'] as Map).cast<String, dynamic>())).input(),
      credentials: map['credentials'] == null ? null : (BackendCredentials.fromMap((map['credentials'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      proxy: map['proxy'] == null ? null : (BackendProxy.fromMap((map['proxy'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      serviceFabricCluster: map['serviceFabricCluster'] == null ? null : (BackendServiceFabricCluster.fromMap((map['serviceFabricCluster'] as Map).cast<String, dynamic>())).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
      tls: map['tls'] == null ? null : (BackendTls.fromMap((map['tls'] as Map).cast<String, dynamic>())).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

