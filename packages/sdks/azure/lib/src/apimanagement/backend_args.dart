// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_circuit_breaker_rule.dart';
import 'backend_credentials.dart';
import 'backend_proxy.dart';
import 'backend_service_fabric_cluster.dart';
import 'backend_tls.dart';

/// {@template pulumi_apimanagement_backend_backend_args_doc}
/// The set of arguments for Backend.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_backend_backend_args_doc}
class BackendArgs {
  /// The Name of the API Management Service where this backend should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;

  /// A `circuit_breaker_rule` block as documented below.
  final pulumi.Input<BackendCircuitBreakerRule>? circuitBreakerRule;

  /// A `credentials` block as documented below.
  final pulumi.Input<BackendCredentials>? credentials;

  /// The description of the backend.
  final pulumi.Input<String>? description;

  /// The name of the API Management backend. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The protocol used by the backend host. Possible values are `http` or `soap`.
  final pulumi.Input<String> protocol;

  /// A `proxy` block as documented below.
  final pulumi.Input<BackendProxy>? proxy;

  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// The management URI of the backend host in an external system. This URI can be the ARM Resource ID of Logic Apps, Function Apps or API Apps, or the management endpoint of a Service Fabric cluster.
  final pulumi.Input<String>? resourceId;

  /// A `service_fabric_cluster` block as documented below.
  final pulumi.Input<BackendServiceFabricCluster>? serviceFabricCluster;

  /// The title of the backend.
  final pulumi.Input<String>? title;

  /// A `tls` block as documented below.
  final pulumi.Input<BackendTls>? tls;

  /// The backend host URL should be specified in the format `"https://backend.com/api"`, avoiding trailing slashes (/) to minimize misconfiguration risks. Azure API Management instance will append the backend resource name to this URL. This URL typically serves as the `base-url` in the [`set-backend-service`](https://learn.microsoft.com/azure/api-management/set-backend-service-policy) policy, enabling seamless transitions from frontend to backend.
  final pulumi.Input<String> url;

  /// Creates a new [BackendArgs].
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
  BackendArgs({
    required this.apiManagementName,
    this.circuitBreakerRule,
    this.credentials,
    this.description,
    this.name,
    required this.protocol,
    this.proxy,
    required this.resourceGroupName,
    this.resourceId,
    this.serviceFabricCluster,
    this.title,
    this.tls,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'circuitBreakerRule':
          ?pulumi.Input.mapOptionalInputValue<
            BackendCircuitBreakerRule,
            Map<String, dynamic>
          >(circuitBreakerRule, (value) => value.toMap()),
      'credentials':
          ?pulumi.Input.mapOptionalInputValue<
            BackendCredentials,
            Map<String, dynamic>
          >(credentials, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'protocol': protocol,
      'proxy':
          ?pulumi.Input.mapOptionalInputValue<
            BackendProxy,
            Map<String, dynamic>
          >(proxy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceId': ?resourceId,
      'serviceFabricCluster':
          ?pulumi.Input.mapOptionalInputValue<
            BackendServiceFabricCluster,
            Map<String, dynamic>
          >(serviceFabricCluster, (value) => value.toMap()),
      'title': ?title,
      'tls':
          ?pulumi.Input.mapOptionalInputValue<BackendTls, Map<String, dynamic>>(
            tls,
            (value) => value.toMap(),
          ),
      'url': url,
    };
  }

  factory BackendArgs.fromMap(Map<String, dynamic> map) {
    return BackendArgs(
      apiManagementName: pulumi.Input.fromValue(
        map['apiManagementName'] as String,
      ),
      circuitBreakerRule: (() {
        final guardedValue = map['circuitBreakerRule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BackendCircuitBreakerRule.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      credentials: (() {
        final guardedValue = map['credentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BackendCredentials.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      proxy: (() {
        final guardedValue = map['proxy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BackendProxy.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceFabricCluster: (() {
        final guardedValue = map['serviceFabricCluster'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BackendServiceFabricCluster.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      title: (() {
        final guardedValue = map['title'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tls: (() {
        final guardedValue = map['tls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BackendTls.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
