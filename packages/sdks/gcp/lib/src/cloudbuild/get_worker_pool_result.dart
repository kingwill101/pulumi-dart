// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_pool_network_config.dart';
import 'get_worker_pool_private_service_connect.dart';
import 'get_worker_pool_worker_config.dart';

/// Result data returned by getWorkerPool.
class GetWorkerPoolResult {
  final Map<String, String>? annotations;
  final String? createTime;
  final String? deleteTime;
  final String? deletionPolicy;
  final String? displayName;
  final Map<String, String>? effectiveAnnotations;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? name;
  final List<GetWorkerPoolNetworkConfig>? networkConfigs;
  final List<GetWorkerPoolPrivateServiceConnect>? privateServiceConnects;
  final String? project;
  final String? state;
  final String? uid;
  final String? updateTime;
  final List<GetWorkerPoolWorkerConfig>? workerConfigs;

  /// Creates a new [GetWorkerPoolResult].
  /// [annotations] Optional.
  /// [createTime] Optional.
  /// [deleteTime] Optional.
  /// [deletionPolicy] Optional.
  /// [displayName] Optional.
  /// [effectiveAnnotations] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [name] Optional.
  /// [networkConfigs] Optional.
  /// [privateServiceConnects] Optional.
  /// [project] Optional.
  /// [state] Optional.
  /// [uid] Optional.
  /// [updateTime] Optional.
  /// [workerConfigs] Optional.
  const GetWorkerPoolResult({
    this.annotations,
    this.createTime,
    this.deleteTime,
    this.deletionPolicy,
    this.displayName,
    this.effectiveAnnotations,
    this.id,
    this.location,
    this.name,
    this.networkConfigs,
    this.privateServiceConnects,
    this.project,
    this.state,
    this.uid,
    this.updateTime,
    this.workerConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'networkConfigs': ?(() { final guardedValue = networkConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkerPoolNetworkConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'privateServiceConnects': ?(() { final guardedValue = privateServiceConnects; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkerPoolPrivateServiceConnect, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'workerConfigs': ?(() { final guardedValue = workerConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkerPoolWorkerConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetWorkerPoolResult.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkConfigs: (() { final guardedValue = map['networkConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkerPoolNetworkConfig>(guardedValue, (value) => GetWorkerPoolNetworkConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      privateServiceConnects: (() { final guardedValue = map['privateServiceConnects']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkerPoolPrivateServiceConnect>(guardedValue, (value) => GetWorkerPoolPrivateServiceConnect.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workerConfigs: (() { final guardedValue = map['workerConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkerPoolWorkerConfig>(guardedValue, (value) => GetWorkerPoolWorkerConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
