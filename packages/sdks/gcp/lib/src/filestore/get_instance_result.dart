// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_directory_service.dart';
import 'get_instance_effective_replication.dart';
import 'get_instance_file_share.dart';
import 'get_instance_initial_replication.dart';
import 'get_instance_network.dart';
import 'get_instance_performance_config.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  final String? createTime;
  final String? deletionPolicy;
  final bool? deletionProtectionEnabled;
  final String? deletionProtectionReason;
  final String? description;
  final String? desiredReplicaState;
  final List<GetInstanceDirectoryService>? directoryServices;
  final Map<String, String>? effectiveLabels;
  final List<GetInstanceEffectiveReplication>? effectiveReplications;
  final String? etag;
  final List<GetInstanceFileShare>? fileShares;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetInstanceInitialReplication>? initialReplications;
  final String? kmsKeyName;
  final Map<String, String>? labels;
  final String? location;
  final String? name;
  final List<GetInstanceNetwork>? networks;
  final List<GetInstancePerformanceConfig>? performanceConfigs;
  final String? project;
  final String? protocol;
  final Map<String, String>? pulumiLabels;
  final Map<String, String>? tags;
  final String? tier;
  final String? zone;

  /// Creates a new [GetInstanceResult].
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtectionEnabled] Optional.
  /// [deletionProtectionReason] Optional.
  /// [description] Optional.
  /// [desiredReplicaState] Optional.
  /// [directoryServices] Optional.
  /// [effectiveLabels] Optional.
  /// [effectiveReplications] Optional.
  /// [etag] Optional.
  /// [fileShares] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [initialReplications] Optional.
  /// [kmsKeyName] Optional.
  /// [labels] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [networks] Optional.
  /// [performanceConfigs] Optional.
  /// [project] Optional.
  /// [protocol] Optional.
  /// [pulumiLabels] Optional.
  /// [tags] Optional.
  /// [tier] Optional.
  /// [zone] Optional.
  const GetInstanceResult({
    this.createTime,
    this.deletionPolicy,
    this.deletionProtectionEnabled,
    this.deletionProtectionReason,
    this.description,
    this.desiredReplicaState,
    this.directoryServices,
    this.effectiveLabels,
    this.effectiveReplications,
    this.etag,
    this.fileShares,
    this.id,
    this.initialReplications,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.name,
    this.networks,
    this.performanceConfigs,
    this.project,
    this.protocol,
    this.pulumiLabels,
    this.tags,
    this.tier,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'deletionProtectionReason': ?deletionProtectionReason,
      'description': ?description,
      'desiredReplicaState': ?desiredReplicaState,
      'directoryServices': ?(() { final guardedValue = directoryServices; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceDirectoryService, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'effectiveLabels': ?effectiveLabels,
      'effectiveReplications': ?(() { final guardedValue = effectiveReplications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceEffectiveReplication, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'etag': ?etag,
      'fileShares': ?(() { final guardedValue = fileShares; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceFileShare, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'initialReplications': ?(() { final guardedValue = initialReplications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceInitialReplication, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'networks': ?(() { final guardedValue = networks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceNetwork, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'performanceConfigs': ?(() { final guardedValue = performanceConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstancePerformanceConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'protocol': ?protocol,
      'pulumiLabels': ?pulumiLabels,
      'tags': ?tags,
      'tier': ?tier,
      'zone': ?zone,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtectionEnabled: (() { final guardedValue = map['deletionProtectionEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      deletionProtectionReason: (() { final guardedValue = map['deletionProtectionReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      desiredReplicaState: (() { final guardedValue = map['desiredReplicaState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      directoryServices: (() { final guardedValue = map['directoryServices']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceDirectoryService>(guardedValue, (value) => GetInstanceDirectoryService.fromMap((value as Map).cast<String, dynamic>())); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      effectiveReplications: (() { final guardedValue = map['effectiveReplications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceEffectiveReplication>(guardedValue, (value) => GetInstanceEffectiveReplication.fromMap((value as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileShares: (() { final guardedValue = map['fileShares']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceFileShare>(guardedValue, (value) => GetInstanceFileShare.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      initialReplications: (() { final guardedValue = map['initialReplications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceInitialReplication>(guardedValue, (value) => GetInstanceInitialReplication.fromMap((value as Map).cast<String, dynamic>())); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceNetwork>(guardedValue, (value) => GetInstanceNetwork.fromMap((value as Map).cast<String, dynamic>())); })(),
      performanceConfigs: (() { final guardedValue = map['performanceConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstancePerformanceConfig>(guardedValue, (value) => GetInstancePerformanceConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
