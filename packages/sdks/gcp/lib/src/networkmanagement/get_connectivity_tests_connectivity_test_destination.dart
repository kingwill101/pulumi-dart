// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectivityTestsConnectivityTestDestination {
  /// A Cloud SQL instance URI.
  final pulumi.Input<String> cloudSqlInstance;
  /// Forwarding rule URI. Forwarding rules are frontends for load balancers,
  /// PSC endpoints, and Protocol Forwarding.
  final pulumi.Input<String> forwardingRule;
  /// A DNS endpoint of Google Kubernetes Engine cluster control plane.
  final pulumi.Input<String> fqdn;
  /// A cluster URI for Google Kubernetes Engine cluster control plane.
  final pulumi.Input<String> gkeMasterCluster;
  /// A [GKE Pod](https://cloud.google.com/kubernetes-engine/docs/concepts/pod) URI.
  final pulumi.Input<String> gkePod;
  /// A Compute Engine instance URI.
  final pulumi.Input<String> instance;
  /// The IP address of the endpoint.
  final pulumi.Input<String> ipAddress;
  /// A VPC network URI.
  final pulumi.Input<String> network;
  /// Type of the network where the endpoint is located.
  final pulumi.Input<String> networkType;
  /// The IP protocol port of the endpoint.
  final pulumi.Input<int> port;
  /// Project ID where the endpoint is located.
  final pulumi.Input<String> projectId;
  /// A Redis Cluster URI.
  final pulumi.Input<String> redisCluster;
  /// A Redis Instance URI.
  final pulumi.Input<String> redisInstance;

  /// Creates a new [GetConnectivityTestsConnectivityTestDestination].
  /// [cloudSqlInstance] A Cloud SQL instance URI.
  /// [forwardingRule] Forwarding rule URI. Forwarding rules are frontends for load balancers,
  /// [fqdn] A DNS endpoint of Google Kubernetes Engine cluster control plane.
  /// [gkeMasterCluster] A cluster URI for Google Kubernetes Engine cluster control plane.
  /// [gkePod] A [GKE Pod](https://cloud.google.com/kubernetes-engine/docs/concepts/pod) URI.
  /// [instance] A Compute Engine instance URI.
  /// [ipAddress] The IP address of the endpoint.
  /// [network] A VPC network URI.
  /// [networkType] Type of the network where the endpoint is located.
  /// [port] The IP protocol port of the endpoint.
  /// [projectId] Project ID where the endpoint is located.
  /// [redisCluster] A Redis Cluster URI.
  /// [redisInstance] A Redis Instance URI.
  const GetConnectivityTestsConnectivityTestDestination({
    required this.cloudSqlInstance,
    required this.forwardingRule,
    required this.fqdn,
    required this.gkeMasterCluster,
    required this.gkePod,
    required this.instance,
    required this.ipAddress,
    required this.network,
    required this.networkType,
    required this.port,
    required this.projectId,
    required this.redisCluster,
    required this.redisInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSqlInstance': cloudSqlInstance,
      'forwardingRule': forwardingRule,
      'fqdn': fqdn,
      'gkeMasterCluster': gkeMasterCluster,
      'gkePod': gkePod,
      'instance': instance,
      'ipAddress': ipAddress,
      'network': network,
      'networkType': networkType,
      'port': port,
      'projectId': projectId,
      'redisCluster': redisCluster,
      'redisInstance': redisInstance,
    };
  }

  factory GetConnectivityTestsConnectivityTestDestination.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestsConnectivityTestDestination(
      cloudSqlInstance: pulumi.Input.fromValue(map['cloudSqlInstance'] as String),
      forwardingRule: pulumi.Input.fromValue(map['forwardingRule'] as String),
      fqdn: pulumi.Input.fromValue(map['fqdn'] as String),
      gkeMasterCluster: pulumi.Input.fromValue(map['gkeMasterCluster'] as String),
      gkePod: pulumi.Input.fromValue(map['gkePod'] as String),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      redisCluster: pulumi.Input.fromValue(map['redisCluster'] as String),
      redisInstance: pulumi.Input.fromValue(map['redisInstance'] as String),
    );
  }
}
