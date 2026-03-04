// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_gateway.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// The HDInsight Cluster ID.
  final String clusterId;

  /// The version of HDInsights which is used on this HDInsight Cluster.
  final String clusterVersion;

  /// A map of versions of software used on this HDInsights Cluster.
  final Map<String, String> componentVersions;

  /// The SSH Endpoint of the Edge Node for this HDInsight Cluster, if an Edge Node exists.
  final String edgeSshEndpoint;

  /// A `gateway` block as defined below.
  final List<GetClusterGateway> gateways;

  /// The HTTPS Endpoint for this HDInsight Cluster.
  final String httpsEndpoint;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The Kafka Rest Proxy Endpoint for this HDInsight Cluster.
  final String kafkaRestProxyEndpoint;

  /// The kind of HDInsight Cluster this is, such as a Spark or Storm cluster.
  final String kind;

  /// The Azure Region in which this HDInsight Cluster exists.
  final String location;

  /// The HDInsight Cluster name.
  final String name;
  final String resourceGroupName;

  /// The SSH Endpoint for this HDInsight Cluster.
  final String sshEndpoint;

  /// A map of tags assigned to the HDInsight Cluster.
  final Map<String, String> tags;

  /// The SKU / Tier of this HDInsight Cluster.
  final String tier;

  /// The minimal supported TLS version.
  final String tlsMinVersion;

  /// Creates a new [GetClusterResult].
  /// [clusterId] The HDInsight Cluster ID.
  /// [clusterVersion] The version of HDInsights which is used on this HDInsight Cluster.
  /// [componentVersions] A map of versions of software used on this HDInsights Cluster.
  /// [edgeSshEndpoint] The SSH Endpoint of the Edge Node for this HDInsight Cluster, if an Edge Node exists.
  /// [gateways] A `gateway` block as defined below.
  /// [httpsEndpoint] The HTTPS Endpoint for this HDInsight Cluster.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kafkaRestProxyEndpoint] The Kafka Rest Proxy Endpoint for this HDInsight Cluster.
  /// [kind] The kind of HDInsight Cluster this is, such as a Spark or Storm cluster.
  /// [location] The Azure Region in which this HDInsight Cluster exists.
  /// [name] The HDInsight Cluster name.
  /// [resourceGroupName] Required.
  /// [sshEndpoint] The SSH Endpoint for this HDInsight Cluster.
  /// [tags] A map of tags assigned to the HDInsight Cluster.
  /// [tier] The SKU / Tier of this HDInsight Cluster.
  /// [tlsMinVersion] The minimal supported TLS version.
  GetClusterResult({
    required this.clusterId,
    required this.clusterVersion,
    required this.componentVersions,
    required this.edgeSshEndpoint,
    required this.gateways,
    required this.httpsEndpoint,
    required this.id,
    required this.kafkaRestProxyEndpoint,
    required this.kind,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.sshEndpoint,
    required this.tags,
    required this.tier,
    required this.tlsMinVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'clusterVersion': clusterVersion,
      'componentVersions': componentVersions,
      'edgeSshEndpoint': edgeSshEndpoint,
      'gateways':
          pulumi.Input.encodeList<GetClusterGateway, Map<String, dynamic>>(
            gateways,
            (value) => value.toMap(),
          ),
      'httpsEndpoint': httpsEndpoint,
      'id': id,
      'kafkaRestProxyEndpoint': kafkaRestProxyEndpoint,
      'kind': kind,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'sshEndpoint': sshEndpoint,
      'tags': tags,
      'tier': tier,
      'tlsMinVersion': tlsMinVersion,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      clusterId: map['clusterId'] as String,
      clusterVersion: map['clusterVersion'] as String,
      componentVersions: (map['componentVersions'] as Map)
          .cast<String, String>(),
      edgeSshEndpoint: map['edgeSshEndpoint'] as String,
      gateways: pulumi.Input.decodeList<GetClusterGateway>(
        map['gateways']!,
        (value) =>
            GetClusterGateway.fromMap((value as Map).cast<String, dynamic>()),
      ),
      httpsEndpoint: map['httpsEndpoint'] as String,
      id: map['id'] as String,
      kafkaRestProxyEndpoint: map['kafkaRestProxyEndpoint'] as String,
      kind: map['kind'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sshEndpoint: map['sshEndpoint'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      tier: map['tier'] as String,
      tlsMinVersion: map['tlsMinVersion'] as String,
    );
  }
}
