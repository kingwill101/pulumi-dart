// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_version_endpoint_networkmanagement_v1beta1.dart';
import 'cloud_function_endpoint_networkmanagement_v1beta1.dart';
import 'cloud_run_revision_endpoint_networkmanagement_v1beta1.dart';
import 'endpoint_network_type_networkmanagement_v1beta1.dart';

/// Source or destination of the Connectivity Test.
class EndpointNetworkmanagementV1beta1 {
  /// An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions).
  final pulumi.Input<AppEngineVersionEndpointNetworkmanagementV1beta1>? appEngineVersion;
  /// A [Cloud Function](https://cloud.google.com/functions).
  final pulumi.Input<CloudFunctionEndpointNetworkmanagementV1beta1>? cloudFunction;
  /// A [Cloud Run](https://cloud.google.com/run) [revision](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.revisions/get)
  final pulumi.Input<CloudRunRevisionEndpointNetworkmanagementV1beta1>? cloudRunRevision;
  /// A [Cloud SQL](https://cloud.google.com/sql) instance URI.
  final pulumi.Input<String>? cloudSqlInstance;
  /// A forwarding rule and its corresponding IP address represent the frontend configuration of a Google Cloud load balancer. Forwarding rules are also used for protocol forwarding, Private Service Connect and other network services to provide forwarding information in the control plane. Format: projects/{project}/global/forwardingRules/{id} or projects/{project}/regions/{region}/forwardingRules/{id}
  final pulumi.Input<String>? forwardingRule;
  /// A cluster URI for [Google Kubernetes Engine master](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-architecture).
  final pulumi.Input<String>? gkeMasterCluster;
  /// A Compute Engine instance URI.
  final pulumi.Input<String>? instance;
  /// The IP address of the endpoint, which can be an external or internal IP. An IPv6 address is only allowed when the test's destination is a [global load balancer VIP](https://cloud.google.com/load-balancing/docs/load-balancing-overview).
  final pulumi.Input<String>? ipAddress;
  /// A Compute Engine network URI.
  final pulumi.Input<String>? network;
  /// Type of the network where the endpoint is located. Applicable only to source endpoint, as destination network type can be inferred from the source.
  final pulumi.Input<EndpointNetworkTypeNetworkmanagementV1beta1>? networkType;
  /// The IP protocol port of the endpoint. Only applicable when protocol is TCP or UDP.
  final pulumi.Input<int>? port;
  /// Project ID where the endpoint is located. The Project ID can be derived from the URI if you provide a VM instance or network URI. The following are two cases where you must provide the project ID: 1. Only the IP address is specified, and the IP address is within a Google Cloud project. 2. When you are using Shared VPC and the IP address that you provide is from the service project. In this case, the network that the IP address resides in is defined in the host project.
  final pulumi.Input<String>? project;

  /// Creates a new [EndpointNetworkmanagementV1beta1].
  /// [appEngineVersion] An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions).
  /// [cloudFunction] A [Cloud Function](https://cloud.google.com/functions).
  /// [cloudRunRevision] A [Cloud Run](https://cloud.google.com/run) [revision](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.revisions/get)
  /// [cloudSqlInstance] A [Cloud SQL](https://cloud.google.com/sql) instance URI.
  /// [forwardingRule] A forwarding rule and its corresponding IP address represent the frontend configuration of a Google Cloud load balancer. Forwarding rules are also used for protocol forwarding, Private Service Connect and other network services to provide forwarding information in the control plane. Format: projects/{project}/global/forwardingRules/{id} or projects/{project}/regions/{region}/forwardingRules/{id}
  /// [gkeMasterCluster] A cluster URI for [Google Kubernetes Engine master](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-architecture).
  /// [instance] A Compute Engine instance URI.
  /// [ipAddress] The IP address of the endpoint, which can be an external or internal IP. An IPv6 address is only allowed when the test's destination is a [global load balancer VIP](https://cloud.google.com/load-balancing/docs/load-balancing-overview).
  /// [network] A Compute Engine network URI.
  /// [networkType] Type of the network where the endpoint is located. Applicable only to source endpoint, as destination network type can be inferred from the source.
  /// [port] The IP protocol port of the endpoint. Only applicable when protocol is TCP or UDP.
  /// [project] Project ID where the endpoint is located. The Project ID can be derived from the URI if you provide a VM instance or network URI. The following are two cases where you must provide the project ID: 1. Only the IP address is specified, and the IP address is within a Google Cloud project. 2. When you are using Shared VPC and the IP address that you provide is from the service project. In this case, the network that the IP address resides in is defined in the host project.
  EndpointNetworkmanagementV1beta1({
    this.appEngineVersion,
    this.cloudFunction,
    this.cloudRunRevision,
    this.cloudSqlInstance,
    this.forwardingRule,
    this.gkeMasterCluster,
    this.instance,
    this.ipAddress,
    this.network,
    this.networkType,
    this.port,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineVersion': ?pulumi.Input.mapOptionalInputValue<AppEngineVersionEndpointNetworkmanagementV1beta1, Map<String, dynamic>>(appEngineVersion, (value) => value.toMap()),
      'cloudFunction': ?pulumi.Input.mapOptionalInputValue<CloudFunctionEndpointNetworkmanagementV1beta1, Map<String, dynamic>>(cloudFunction, (value) => value.toMap()),
      'cloudRunRevision': ?pulumi.Input.mapOptionalInputValue<CloudRunRevisionEndpointNetworkmanagementV1beta1, Map<String, dynamic>>(cloudRunRevision, (value) => value.toMap()),
      'cloudSqlInstance': ?cloudSqlInstance,
      'forwardingRule': ?forwardingRule,
      'gkeMasterCluster': ?gkeMasterCluster,
      'instance': ?instance,
      'ipAddress': ?ipAddress,
      'network': ?network,
      'networkType': ?pulumi.Input.mapOptionalInputValue<EndpointNetworkTypeNetworkmanagementV1beta1, String>(networkType, (value) => value.value),
      'port': ?port,
      'project': ?project,
    };
  }

  factory EndpointNetworkmanagementV1beta1.fromMap(Map<String, dynamic> map) {
    return EndpointNetworkmanagementV1beta1(
      appEngineVersion: map['appEngineVersion'] == null ? null : (AppEngineVersionEndpointNetworkmanagementV1beta1.fromMap((map['appEngineVersion']! as Map).cast<String, dynamic>())).input(),
      cloudFunction: map['cloudFunction'] == null ? null : (CloudFunctionEndpointNetworkmanagementV1beta1.fromMap((map['cloudFunction']! as Map).cast<String, dynamic>())).input(),
      cloudRunRevision: map['cloudRunRevision'] == null ? null : (CloudRunRevisionEndpointNetworkmanagementV1beta1.fromMap((map['cloudRunRevision']! as Map).cast<String, dynamic>())).input(),
      cloudSqlInstance: map['cloudSqlInstance'] == null ? null : (map['cloudSqlInstance']! as String).input(),
      forwardingRule: map['forwardingRule'] == null ? null : (map['forwardingRule']! as String).input(),
      gkeMasterCluster: map['gkeMasterCluster'] == null ? null : (map['gkeMasterCluster']! as String).input(),
      instance: map['instance'] == null ? null : (map['instance']! as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      networkType: map['networkType'] == null ? null : (EndpointNetworkTypeNetworkmanagementV1beta1.fromValue(map['networkType']! as String)).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

