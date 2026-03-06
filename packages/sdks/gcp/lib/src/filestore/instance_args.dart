// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_directory_services.dart';
import 'instance_file_shares.dart';
import 'instance_initial_replication.dart';
import 'instance_network.dart';
import 'instance_performance_config.dart';

/// {@template pulumi_filestore_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_filestore_instance_instance_args_doc}
class InstanceArgs {
  /// Indicates whether the instance is protected against deletion.
  final pulumi.Input<bool>? deletionProtectionEnabled;
  /// The reason for enabling deletion protection.
  final pulumi.Input<String>? deletionProtectionReason;
  /// A description of the instance.
  final pulumi.Input<String>? description;
  /// Directory Services configuration.
  /// Should only be set if protocol is "NFS_V4_1".
  /// Structure is documented below.
  final pulumi.Input<InstanceDirectoryServices>? directoryServices;
  /// File system shares on the instance. For this version, only a
  /// single file share is supported.
  /// Structure is documented below.
  final pulumi.Input<InstanceFileShares> fileShares;
  /// Replication configuration, once set, this cannot be updated.
  /// Additionally this should be specified on the replica instance only, indicating the active as the peer_instance
  /// Structure is documented below.
  final pulumi.Input<InstanceInitialReplication>? initialReplication;
  /// KMS key name used for data encryption.
  final pulumi.Input<String>? kmsKeyName;
  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name of the location of the instance. This can be a region for ENTERPRISE tier instances.
  final pulumi.Input<String>? location;
  /// The resource name of the instance.
  final pulumi.Input<String>? name;
  /// VPC networks to which the instance is connected. For this version,
  /// only a single network is supported.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceNetwork>> networks;
  /// Performance configuration for the instance. If not provided,
  /// the default performance settings will be used.
  /// Structure is documented below.
  final pulumi.Input<InstancePerformanceConfig>? performanceConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Either NFSv3, for using NFS version 3 as file sharing protocol,
  /// or NFSv4.1, for using NFS version 4.1 as file sharing protocol.
  /// NFSv4.1 can be used with HIGH_SCALE_SSD, ZONAL, REGIONAL and ENTERPRISE.
  /// The default is NFSv3.
  /// Default value is `NFS_V3`.
  /// Possible values are: `NFS_V3`, `NFS_V4_1`.
  final pulumi.Input<String>? protocol;
  /// A map of resource manager tags. Resource manager tag keys
  /// and values have the same definition as resource manager
  /// tags. Keys must be in the format tagKeys/{tag_key_id},
  /// and values are in the format tagValues/456. The field is
  /// ignored when empty. The field is immutable and causes
  /// resource replacement when mutated. This field is only set
  /// at create time and modifying this field after creation
  /// will trigger recreation. To apply tags to an existing
  /// resource, see the `gcp.tags.TagValue` resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The service tier of the instance.
  /// Possible values include: STANDARD, PREMIUM, BASIC_HDD, BASIC_SSD, HIGH_SCALE_SSD, ZONAL, REGIONAL and ENTERPRISE
  final pulumi.Input<String> tier;
  /// (Optional, Deprecated)
  /// The name of the Filestore zone of the instance.
  ///
  /// &gt; **Warning:** `zone` is deprecated and will be removed in a future major release. Use `location` instead.
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceArgs].
  /// [deletionProtectionEnabled] Indicates whether the instance is protected against deletion.
  /// [deletionProtectionReason] The reason for enabling deletion protection.
  /// [description] A description of the instance.
  /// [directoryServices] Directory Services configuration.
  /// [fileShares] File system shares on the instance. For this version, only a
  /// [initialReplication] Replication configuration, once set, this cannot be updated.
  /// [kmsKeyName] KMS key name used for data encryption.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [location] The name of the location of the instance. This can be a region for ENTERPRISE tier instances.
  /// [name] The resource name of the instance.
  /// [networks] VPC networks to which the instance is connected. For this version,
  /// [performanceConfig] Performance configuration for the instance. If not provided,
  /// [project] The ID of the project in which the resource belongs.
  /// [protocol] Either NFSv3, for using NFS version 3 as file sharing protocol,
  /// [tags] A map of resource manager tags. Resource manager tag keys
  /// [tier] The service tier of the instance.
  /// [zone] (Optional, Deprecated)
  const InstanceArgs({
    this.deletionProtectionEnabled,
    this.deletionProtectionReason,
    this.description,
    this.directoryServices,
    required this.fileShares,
    this.initialReplication,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.name,
    required this.networks,
    this.performanceConfig,
    this.project,
    this.protocol,
    this.tags,
    required this.tier,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'deletionProtectionReason': ?deletionProtectionReason,
      'description': ?description,
      'directoryServices': ?pulumi.Input.mapOptionalInputValue<InstanceDirectoryServices, Map<String, dynamic>>(directoryServices, (value) => value.toMap()),
      'fileShares': pulumi.Input.mapInputValue<InstanceFileShares, Map<String, dynamic>>(fileShares, (value) => value.toMap()),
      'initialReplication': ?pulumi.Input.mapOptionalInputValue<InstanceInitialReplication, Map<String, dynamic>>(initialReplication, (value) => value.toMap()),
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'networks': pulumi.Input.mapInputValue<List<InstanceNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<InstanceNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'performanceConfig': ?pulumi.Input.mapOptionalInputValue<InstancePerformanceConfig, Map<String, dynamic>>(performanceConfig, (value) => value.toMap()),
      'project': ?project,
      'protocol': ?protocol,
      'tags': ?tags,
      'tier': tier,
      'zone': ?zone,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      deletionProtectionEnabled: (() { final guardedValue = map['deletionProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionProtectionReason: (() { final guardedValue = map['deletionProtectionReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryServices: (() { final guardedValue = map['directoryServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceDirectoryServices.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileShares: pulumi.Input.fromValue(InstanceFileShares.fromMap((map['fileShares']! as Map).cast<String, dynamic>())),
      initialReplication: (() { final guardedValue = map['initialReplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceInitialReplication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networks: pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceNetwork>(map['networks']!, (value) => InstanceNetwork.fromMap((value as Map).cast<String, dynamic>()))),
      performanceConfig: (() { final guardedValue = map['performanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tier: pulumi.Input.fromValue(map['tier'] as String),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

