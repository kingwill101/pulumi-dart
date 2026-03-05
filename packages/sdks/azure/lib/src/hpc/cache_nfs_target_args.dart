// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_nfs_target_namespace_junction.dart';

/// {@template pulumi_hpc_cache_nfs_target_cache_nfs_target_args_doc}
/// The set of arguments for CacheNfsTarget.
/// {@endtemplate}
/// {@macro pulumi_hpc_cache_nfs_target_cache_nfs_target_args_doc}
class CacheNfsTargetArgs {
  /// The name HPC Cache, which the HPC Cache NFS Target will be added to. Changing this forces a new resource to be created.
  final pulumi.Input<String> cacheName;
  /// The name of the HPC Cache NFS Target. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Can be specified multiple times to define multiple `namespace_junction`. Each `namespace_junction` block supports fields documented below.
  final pulumi.Input<List<CacheNfsTargetNamespaceJunction>> namespaceJunctions;
  /// The name of the Resource Group in which to create the HPC Cache NFS Target. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The IP address or fully qualified domain name (FQDN) of the HPC Cache NFS target. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetHostName;
  /// The type of usage of the HPC Cache NFS Target. Possible values are: `READ_HEAVY_INFREQ`, `READ_HEAVY_CHECK_180`, `READ_ONLY`, `READ_WRITE`, `WRITE_WORKLOAD_15`, `WRITE_AROUND`, `WRITE_WORKLOAD_CHECK_30`, `WRITE_WORKLOAD_CHECK_60` and `WRITE_WORKLOAD_CLOUDWS`.
  final pulumi.Input<String> usageModel;
  /// The amount of time the cache waits before it checks the back-end storage for file updates. Possible values are between `1` and `31536000`.
  final pulumi.Input<int>? verificationTimerInSeconds;
  /// The amount of time the cache waits after the last file change before it copies the changed file to back-end storage. Possible values are between `1` and `31536000`.
  final pulumi.Input<int>? writeBackTimerInSeconds;

  /// Creates a new [CacheNfsTargetArgs].
  /// [cacheName] The name HPC Cache, which the HPC Cache NFS Target will be added to. Changing this forces a new resource to be created.
  /// [name] The name of the HPC Cache NFS Target. Changing this forces a new resource to be created.
  /// [namespaceJunctions] Can be specified multiple times to define multiple `namespace_junction`. Each `namespace_junction` block supports fields documented below.
  /// [resourceGroupName] The name of the Resource Group in which to create the HPC Cache NFS Target. Changing this forces a new resource to be created.
  /// [targetHostName] The IP address or fully qualified domain name (FQDN) of the HPC Cache NFS target. Changing this forces a new resource to be created.
  /// [usageModel] The type of usage of the HPC Cache NFS Target. Possible values are: `READ_HEAVY_INFREQ`, `READ_HEAVY_CHECK_180`, `READ_ONLY`, `READ_WRITE`, `WRITE_WORKLOAD_15`, `WRITE_AROUND`, `WRITE_WORKLOAD_CHECK_30`, `WRITE_WORKLOAD_CHECK_60` and `WRITE_WORKLOAD_CLOUDWS`.
  /// [verificationTimerInSeconds] The amount of time the cache waits before it checks the back-end storage for file updates. Possible values are between `1` and `31536000`.
  /// [writeBackTimerInSeconds] The amount of time the cache waits after the last file change before it copies the changed file to back-end storage. Possible values are between `1` and `31536000`.
  CacheNfsTargetArgs({
    required this.cacheName,
    this.name,
    required this.namespaceJunctions,
    required this.resourceGroupName,
    required this.targetHostName,
    required this.usageModel,
    this.verificationTimerInSeconds,
    this.writeBackTimerInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheName': cacheName,
      'name': ?name,
      'namespaceJunctions': pulumi.Input.mapInputValue<List<CacheNfsTargetNamespaceJunction>, List<Map<String, dynamic>>>(namespaceJunctions, (value) => pulumi.Input.encodeList<CacheNfsTargetNamespaceJunction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'targetHostName': targetHostName,
      'usageModel': usageModel,
      'verificationTimerInSeconds': ?verificationTimerInSeconds,
      'writeBackTimerInSeconds': ?writeBackTimerInSeconds,
    };
  }

  factory CacheNfsTargetArgs.fromMap(Map<String, dynamic> map) {
    return CacheNfsTargetArgs(
      cacheName: pulumi.Input.fromValue(map['cacheName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceJunctions: pulumi.Input.fromValue(pulumi.Input.decodeList<CacheNfsTargetNamespaceJunction>(map['namespaceJunctions']!, (value) => CacheNfsTargetNamespaceJunction.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      targetHostName: pulumi.Input.fromValue(map['targetHostName'] as String),
      usageModel: pulumi.Input.fromValue(map['usageModel'] as String),
      verificationTimerInSeconds: (() { final guardedValue = map['verificationTimerInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      writeBackTimerInSeconds: (() { final guardedValue = map['writeBackTimerInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

