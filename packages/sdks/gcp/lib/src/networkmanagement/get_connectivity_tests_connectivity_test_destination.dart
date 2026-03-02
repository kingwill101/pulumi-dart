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
  /// A Compute Engine instance URI.
  final pulumi.Input<String> instance;
  /// The IP address of the endpoint.
  final pulumi.Input<String> ipAddress;
  /// A VPC network URI.
  final pulumi.Input<String> network;
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
  /// [instance] A Compute Engine instance URI.
  /// [ipAddress] The IP address of the endpoint.
  /// [network] A VPC network URI.
  /// [port] The IP protocol port of the endpoint.
  /// [projectId] Project ID where the endpoint is located.
  /// [redisCluster] A Redis Cluster URI.
  /// [redisInstance] A Redis Instance URI.
  GetConnectivityTestsConnectivityTestDestination({
    required this.cloudSqlInstance,
    required this.forwardingRule,
    required this.fqdn,
    required this.gkeMasterCluster,
    required this.instance,
    required this.ipAddress,
    required this.network,
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
      'instance': instance,
      'ipAddress': ipAddress,
      'network': network,
      'port': port,
      'projectId': projectId,
      'redisCluster': redisCluster,
      'redisInstance': redisInstance,
    };
  }

  factory GetConnectivityTestsConnectivityTestDestination.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestsConnectivityTestDestination(
      cloudSqlInstance: (map['cloudSqlInstance'] as String).input(),
      forwardingRule: (map['forwardingRule'] as String).input(),
      fqdn: (map['fqdn'] as String).input(),
      gkeMasterCluster: (map['gkeMasterCluster'] as String).input(),
      instance: (map['instance'] as String).input(),
      ipAddress: (map['ipAddress'] as String).input(),
      network: (map['network'] as String).input(),
      port: (map['port'] as int).input(),
      projectId: (map['projectId'] as String).input(),
      redisCluster: (map['redisCluster'] as String).input(),
      redisInstance: (map['redisInstance'] as String).input(),
    );
  }
}

