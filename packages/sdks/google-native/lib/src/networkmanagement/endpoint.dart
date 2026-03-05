// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_version_endpoint.dart';
import 'cloud_function_endpoint.dart';
import 'cloud_run_revision_endpoint.dart';
import 'endpoint_network_type.dart';

/// Source or destination of the Connectivity Test.
class Endpoint {
  /// An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions).
  final pulumi.Input<AppEngineVersionEndpoint>? appEngineVersion;
  /// A [Cloud Function](https://cloud.google.com/functions).
  final pulumi.Input<CloudFunctionEndpoint>? cloudFunction;
  /// A [Cloud Run](https://cloud.google.com/run) [revision](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.revisions/get)
  final pulumi.Input<CloudRunRevisionEndpoint>? cloudRunRevision;
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
  final pulumi.Input<EndpointNetworkType>? networkType;
  /// The IP protocol port of the endpoint. Only applicable when protocol is TCP or UDP.
  final pulumi.Input<int>? port;
  /// Project ID where the endpoint is located. The Project ID can be derived from the URI if you provide a VM instance or network URI. The following are two cases where you must provide the project ID: 1. Only the IP address is specified, and the IP address is within a Google Cloud project. 2. When you are using Shared VPC and the IP address that you provide is from the service project. In this case, the network that the IP address resides in is defined in the host project.
  final pulumi.Input<String>? project;

  /// Creates a new [Endpoint].
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
  Endpoint({
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
      'appEngineVersion': ?pulumi.Input.mapOptionalInputValue<AppEngineVersionEndpoint, Map<String, dynamic>>(appEngineVersion, (value) => value.toMap()),
      'cloudFunction': ?pulumi.Input.mapOptionalInputValue<CloudFunctionEndpoint, Map<String, dynamic>>(cloudFunction, (value) => value.toMap()),
      'cloudRunRevision': ?pulumi.Input.mapOptionalInputValue<CloudRunRevisionEndpoint, Map<String, dynamic>>(cloudRunRevision, (value) => value.toMap()),
      'cloudSqlInstance': ?cloudSqlInstance,
      'forwardingRule': ?forwardingRule,
      'gkeMasterCluster': ?gkeMasterCluster,
      'instance': ?instance,
      'ipAddress': ?ipAddress,
      'network': ?network,
      'networkType': ?pulumi.Input.mapOptionalInputValue<EndpointNetworkType, String>(networkType, (value) => value.wireValue),
      'port': ?port,
      'project': ?project,
    };
  }

  factory Endpoint.fromMap(Map<String, dynamic> map) {
    return Endpoint(
      appEngineVersion: (() { final guardedValue = map['appEngineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppEngineVersionEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudFunction: (() { final guardedValue = map['cloudFunction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudFunctionEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudRunRevision: (() { final guardedValue = map['cloudRunRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudRunRevisionEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudSqlInstance: (() { final guardedValue = map['cloudSqlInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardingRule: (() { final guardedValue = map['forwardingRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gkeMasterCluster: (() { final guardedValue = map['gkeMasterCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointNetworkType.fromValue(guardedValue as String)); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

