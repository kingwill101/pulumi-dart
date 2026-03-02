// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_authorization_mode.dart';
import 'cluster_transit_encryption_mode.dart';
import 'psc_config.dart';

/// {@template pulumi_redis_v1_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_redis_v1_cluster_args_doc}
class ClusterArgs {
  /// Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
  final pulumi.Input<ClusterAuthorizationMode>? authorizationMode;
  /// Required. The logical name of the Redis cluster in the customer project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the customer project / location
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String>? location;
  /// Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Each PscConfig configures the consumer network where IPs will be designated to the cluster for client access through Private Service Connect Automation. Currently, only one PscConfig is supported.
  final pulumi.Input<List<PscConfig>> pscConfigs;
  /// Optional. The number of replica nodes per shard.
  final pulumi.Input<int>? replicaCount;
  /// Idempotent request UUID.
  final pulumi.Input<String>? requestId;
  /// Number of shards for the Redis cluster.
  final pulumi.Input<int> shardCount;
  /// Optional. The in-transit encryption for the Redis cluster. If not provided, encryption is disabled for the cluster.
  final pulumi.Input<ClusterTransitEncryptionMode>? transitEncryptionMode;

  /// Creates a new [ClusterArgs].
  /// [authorizationMode] Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
  /// [clusterId] Required. The logical name of the Redis cluster in the customer project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the customer project / location
  /// [location] Optional.
  /// [name] Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`
  /// [project] Optional.
  /// [pscConfigs] Each PscConfig configures the consumer network where IPs will be designated to the cluster for client access through Private Service Connect Automation. Currently, only one PscConfig is supported.
  /// [replicaCount] Optional. The number of replica nodes per shard.
  /// [requestId] Idempotent request UUID.
  /// [shardCount] Number of shards for the Redis cluster.
  /// [transitEncryptionMode] Optional. The in-transit encryption for the Redis cluster. If not provided, encryption is disabled for the cluster.
  ClusterArgs({
    this.authorizationMode,
    required this.clusterId,
    this.location,
    this.name,
    this.project,
    required this.pscConfigs,
    this.replicaCount,
    this.requestId,
    required this.shardCount,
    this.transitEncryptionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationMode': ?pulumi.Input.mapOptionalInputValue<ClusterAuthorizationMode, String>(authorizationMode, (value) => value.value),
      'clusterId': clusterId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pscConfigs': pulumi.Input.mapInputValue<List<PscConfig>, List<Map<String, dynamic>>>(pscConfigs, (value) => pulumi.Input.encodeList<PscConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicaCount': ?replicaCount,
      'requestId': ?requestId,
      'shardCount': shardCount,
      'transitEncryptionMode': ?pulumi.Input.mapOptionalInputValue<ClusterTransitEncryptionMode, String>(transitEncryptionMode, (value) => value.value),
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      authorizationMode: map['authorizationMode'] == null ? null : (ClusterAuthorizationMode.fromValue(map['authorizationMode'] as String)).input(),
      clusterId: (map['clusterId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pscConfigs: (pulumi.Input.decodeList<PscConfig>(map['pscConfigs'], (value) => PscConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      replicaCount: map['replicaCount'] == null ? null : (map['replicaCount'] as int).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      shardCount: (map['shardCount'] as int).input(),
      transitEncryptionMode: map['transitEncryptionMode'] == null ? null : (ClusterTransitEncryptionMode.fromValue(map['transitEncryptionMode'] as String)).input(),
    );
  }
}

