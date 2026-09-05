// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_gateway.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// The HDInsight Cluster ID.
  final String? clusterId;
  /// The version of HDInsights which is used on this HDInsight Cluster.
  final String? clusterVersion;
  /// A map of versions of software used on this HDInsights Cluster.
  final Map<String, String>? componentVersions;
  /// The SSH Endpoint of the Edge Node for this HDInsight Cluster, if an Edge Node exists.
  final String? edgeSshEndpoint;
  /// A `gateway` block as defined below.
  final List<GetClusterGateway>? gateways;
  /// The HTTPS Endpoint for this HDInsight Cluster.
  final String? httpsEndpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Kafka Rest Proxy Endpoint for this HDInsight Cluster.
  final String? kafkaRestProxyEndpoint;
  /// The kind of HDInsight Cluster this is, such as a Spark or Storm cluster.
  final String? kind;
  /// The Azure Region in which this HDInsight Cluster exists.
  final String? location;
  /// The HDInsight Cluster name.
  final String? name;
  final String? resourceGroupName;
  /// The SSH Endpoint for this HDInsight Cluster.
  final String? sshEndpoint;
  /// A map of tags assigned to the HDInsight Cluster.
  final Map<String, String>? tags;
  /// The SKU / Tier of this HDInsight Cluster.
  final String? tier;
  /// The minimal supported TLS version.
  final String? tlsMinVersion;

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
  /// [resourceGroupName] Optional.
  /// [sshEndpoint] The SSH Endpoint for this HDInsight Cluster.
  /// [tags] A map of tags assigned to the HDInsight Cluster.
  /// [tier] The SKU / Tier of this HDInsight Cluster.
  /// [tlsMinVersion] The minimal supported TLS version.
  const GetClusterResult({
    this.clusterId,
    this.clusterVersion,
    this.componentVersions,
    this.edgeSshEndpoint,
    this.gateways,
    this.httpsEndpoint,
    this.id,
    this.kafkaRestProxyEndpoint,
    this.kind,
    this.location,
    this.name,
    this.resourceGroupName,
    this.sshEndpoint,
    this.tags,
    this.tier,
    this.tlsMinVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'clusterVersion': ?clusterVersion,
      'componentVersions': ?componentVersions,
      'edgeSshEndpoint': ?edgeSshEndpoint,
      'gateways': ?(() { final guardedValue = gateways; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterGateway, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'httpsEndpoint': ?httpsEndpoint,
      'id': ?id,
      'kafkaRestProxyEndpoint': ?kafkaRestProxyEndpoint,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sshEndpoint': ?sshEndpoint,
      'tags': ?tags,
      'tier': ?tier,
      'tlsMinVersion': ?tlsMinVersion,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterVersion: (() { final guardedValue = map['clusterVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      componentVersions: (() { final guardedValue = map['componentVersions']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      edgeSshEndpoint: (() { final guardedValue = map['edgeSshEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gateways: (() { final guardedValue = map['gateways']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterGateway>(guardedValue, (value) => GetClusterGateway.fromMap((value as Map).cast<String, dynamic>())); })(),
      httpsEndpoint: (() { final guardedValue = map['httpsEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kafkaRestProxyEndpoint: (() { final guardedValue = map['kafkaRestProxyEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sshEndpoint: (() { final guardedValue = map['sshEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tlsMinVersion: (() { final guardedValue = map['tlsMinVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
