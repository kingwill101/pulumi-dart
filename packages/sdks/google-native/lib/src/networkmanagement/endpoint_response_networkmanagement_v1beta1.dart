// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_version_endpoint_response_networkmanagement_v1beta1.dart';
import 'cloud_function_endpoint_response_networkmanagement_v1beta1.dart';
import 'cloud_run_revision_endpoint_response_networkmanagement_v1beta1.dart';

/// Source or destination of the Connectivity Test.
class EndpointResponseNetworkmanagementV1beta1 {
  /// An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions).
  final pulumi.Input<AppEngineVersionEndpointResponseNetworkmanagementV1beta1> appEngineVersion;
  /// A [Cloud Function](https://cloud.google.com/functions).
  final pulumi.Input<CloudFunctionEndpointResponseNetworkmanagementV1beta1> cloudFunction;
  /// A [Cloud Run](https://cloud.google.com/run) [revision](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.revisions/get)
  final pulumi.Input<CloudRunRevisionEndpointResponseNetworkmanagementV1beta1> cloudRunRevision;
  /// A [Cloud SQL](https://cloud.google.com/sql) instance URI.
  final pulumi.Input<String> cloudSqlInstance;
  /// A forwarding rule and its corresponding IP address represent the frontend configuration of a Google Cloud load balancer. Forwarding rules are also used for protocol forwarding, Private Service Connect and other network services to provide forwarding information in the control plane. Format: projects/{project}/global/forwardingRules/{id} or projects/{project}/regions/{region}/forwardingRules/{id}
  final pulumi.Input<String> forwardingRule;
  /// Specifies the type of the target of the forwarding rule.
  final pulumi.Input<String> forwardingRuleTarget;
  /// A cluster URI for [Google Kubernetes Engine master](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-architecture).
  final pulumi.Input<String> gkeMasterCluster;
  /// A Compute Engine instance URI.
  final pulumi.Input<String> instance;
  /// The IP address of the endpoint, which can be an external or internal IP. An IPv6 address is only allowed when the test's destination is a [global load balancer VIP](https://cloud.google.com/load-balancing/docs/load-balancing-overview).
  final pulumi.Input<String> ipAddress;
  /// ID of the load balancer the forwarding rule points to. Empty for forwarding rules not related to load balancers.
  final pulumi.Input<String> loadBalancerId;
  /// Type of the load balancer the forwarding rule points to.
  final pulumi.Input<String> loadBalancerType;
  /// A Compute Engine network URI.
  final pulumi.Input<String> network;
  /// Type of the network where the endpoint is located. Applicable only to source endpoint, as destination network type can be inferred from the source.
  final pulumi.Input<String> networkType;
  /// The IP protocol port of the endpoint. Only applicable when protocol is TCP or UDP.
  final pulumi.Input<int> port;
  /// Project ID where the endpoint is located. The Project ID can be derived from the URI if you provide a VM instance or network URI. The following are two cases where you must provide the project ID: 1. Only the IP address is specified, and the IP address is within a Google Cloud project. 2. When you are using Shared VPC and the IP address that you provide is from the service project. In this case, the network that the IP address resides in is defined in the host project.
  final pulumi.Input<String> project;

  /// Creates a new [EndpointResponseNetworkmanagementV1beta1].
  /// [appEngineVersion] An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions).
  /// [cloudFunction] A [Cloud Function](https://cloud.google.com/functions).
  /// [cloudRunRevision] A [Cloud Run](https://cloud.google.com/run) [revision](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.revisions/get)
  /// [cloudSqlInstance] A [Cloud SQL](https://cloud.google.com/sql) instance URI.
  /// [forwardingRule] A forwarding rule and its corresponding IP address represent the frontend configuration of a Google Cloud load balancer. Forwarding rules are also used for protocol forwarding, Private Service Connect and other network services to provide forwarding information in the control plane. Format: projects/{project}/global/forwardingRules/{id} or projects/{project}/regions/{region}/forwardingRules/{id}
  /// [forwardingRuleTarget] Specifies the type of the target of the forwarding rule.
  /// [gkeMasterCluster] A cluster URI for [Google Kubernetes Engine master](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-architecture).
  /// [instance] A Compute Engine instance URI.
  /// [ipAddress] The IP address of the endpoint, which can be an external or internal IP. An IPv6 address is only allowed when the test's destination is a [global load balancer VIP](https://cloud.google.com/load-balancing/docs/load-balancing-overview).
  /// [loadBalancerId] ID of the load balancer the forwarding rule points to. Empty for forwarding rules not related to load balancers.
  /// [loadBalancerType] Type of the load balancer the forwarding rule points to.
  /// [network] A Compute Engine network URI.
  /// [networkType] Type of the network where the endpoint is located. Applicable only to source endpoint, as destination network type can be inferred from the source.
  /// [port] The IP protocol port of the endpoint. Only applicable when protocol is TCP or UDP.
  /// [project] Project ID where the endpoint is located. The Project ID can be derived from the URI if you provide a VM instance or network URI. The following are two cases where you must provide the project ID: 1. Only the IP address is specified, and the IP address is within a Google Cloud project. 2. When you are using Shared VPC and the IP address that you provide is from the service project. In this case, the network that the IP address resides in is defined in the host project.
  EndpointResponseNetworkmanagementV1beta1({
    required this.appEngineVersion,
    required this.cloudFunction,
    required this.cloudRunRevision,
    required this.cloudSqlInstance,
    required this.forwardingRule,
    required this.forwardingRuleTarget,
    required this.gkeMasterCluster,
    required this.instance,
    required this.ipAddress,
    required this.loadBalancerId,
    required this.loadBalancerType,
    required this.network,
    required this.networkType,
    required this.port,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineVersion': pulumi.Input.mapInputValue<AppEngineVersionEndpointResponseNetworkmanagementV1beta1, Map<String, dynamic>>(appEngineVersion, (value) => value.toMap()),
      'cloudFunction': pulumi.Input.mapInputValue<CloudFunctionEndpointResponseNetworkmanagementV1beta1, Map<String, dynamic>>(cloudFunction, (value) => value.toMap()),
      'cloudRunRevision': pulumi.Input.mapInputValue<CloudRunRevisionEndpointResponseNetworkmanagementV1beta1, Map<String, dynamic>>(cloudRunRevision, (value) => value.toMap()),
      'cloudSqlInstance': cloudSqlInstance,
      'forwardingRule': forwardingRule,
      'forwardingRuleTarget': forwardingRuleTarget,
      'gkeMasterCluster': gkeMasterCluster,
      'instance': instance,
      'ipAddress': ipAddress,
      'loadBalancerId': loadBalancerId,
      'loadBalancerType': loadBalancerType,
      'network': network,
      'networkType': networkType,
      'port': port,
      'project': project,
    };
  }

  factory EndpointResponseNetworkmanagementV1beta1.fromMap(Map<String, dynamic> map) {
    return EndpointResponseNetworkmanagementV1beta1(
      appEngineVersion: pulumi.Input.fromValue(AppEngineVersionEndpointResponseNetworkmanagementV1beta1.fromMap((map['appEngineVersion']! as Map).cast<String, dynamic>())),
      cloudFunction: pulumi.Input.fromValue(CloudFunctionEndpointResponseNetworkmanagementV1beta1.fromMap((map['cloudFunction']! as Map).cast<String, dynamic>())),
      cloudRunRevision: pulumi.Input.fromValue(CloudRunRevisionEndpointResponseNetworkmanagementV1beta1.fromMap((map['cloudRunRevision']! as Map).cast<String, dynamic>())),
      cloudSqlInstance: pulumi.Input.fromValue(map['cloudSqlInstance'] as String),
      forwardingRule: pulumi.Input.fromValue(map['forwardingRule'] as String),
      forwardingRuleTarget: pulumi.Input.fromValue(map['forwardingRuleTarget'] as String),
      gkeMasterCluster: pulumi.Input.fromValue(map['gkeMasterCluster'] as String),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      loadBalancerType: pulumi.Input.fromValue(map['loadBalancerType'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}

