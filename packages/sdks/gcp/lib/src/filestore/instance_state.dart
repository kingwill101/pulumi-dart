// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_directory_services.dart';
import 'instance_effective_replication.dart';
import 'instance_file_shares.dart';
import 'instance_initial_replication.dart';
import 'instance_network.dart';
import 'instance_performance_config.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? createTime;
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
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Output only fields for replication configuration.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceEffectiveReplication>>? effectiveReplications;
  /// Server-specified ETag for the instance resource to prevent
  /// simultaneous updates from overwriting each other.
  final pulumi.Input<String>? etag;
  /// File system shares on the instance. For this version, only a
  /// single file share is supported.
  /// Structure is documented below.
  final pulumi.Input<InstanceFileShares>? fileShares;
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
  final pulumi.Input<List<InstanceNetwork>>? networks;
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
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
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
  final pulumi.Input<String>? tier;
  /// (Optional, Deprecated)
  /// The name of the Filestore zone of the instance.
  ///
  /// > **Warning:** `zone` is deprecated and will be removed in a future major release. Use `location` instead.
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceState].
  /// [createTime] Creation timestamp in RFC3339 text format.
  /// [deletionProtectionEnabled] Indicates whether the instance is protected against deletion.
  /// [deletionProtectionReason] The reason for enabling deletion protection.
  /// [description] A description of the instance.
  /// [directoryServices] Directory Services configuration.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [effectiveReplications] Output only fields for replication configuration.
  /// [etag] Server-specified ETag for the instance resource to prevent
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
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [tags] A map of resource manager tags. Resource manager tag keys
  /// [tier] The service tier of the instance.
  /// [zone] (Optional, Deprecated)
  InstanceState({
    this.createTime,
    this.deletionProtectionEnabled,
    this.deletionProtectionReason,
    this.description,
    this.directoryServices,
    this.effectiveLabels,
    this.effectiveReplications,
    this.etag,
    this.fileShares,
    this.initialReplication,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.name,
    this.networks,
    this.performanceConfig,
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
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'deletionProtectionReason': ?deletionProtectionReason,
      'description': ?description,
      'directoryServices': ?pulumi.Input.mapOptionalInputValue<InstanceDirectoryServices, Map<String, dynamic>>(directoryServices, (value) => value.toMap()),
      'effectiveLabels': ?effectiveLabels,
      'effectiveReplications': ?pulumi.Input.mapOptionalInputValue<List<InstanceEffectiveReplication>, List<Map<String, dynamic>>>(effectiveReplications, (value) => pulumi.Input.encodeList<InstanceEffectiveReplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'fileShares': ?pulumi.Input.mapOptionalInputValue<InstanceFileShares, Map<String, dynamic>>(fileShares, (value) => value.toMap()),
      'initialReplication': ?pulumi.Input.mapOptionalInputValue<InstanceInitialReplication, Map<String, dynamic>>(initialReplication, (value) => value.toMap()),
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<InstanceNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<InstanceNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'performanceConfig': ?pulumi.Input.mapOptionalInputValue<InstancePerformanceConfig, Map<String, dynamic>>(performanceConfig, (value) => value.toMap()),
      'project': ?project,
      'protocol': ?protocol,
      'pulumiLabels': ?pulumiLabels,
      'tags': ?tags,
      'tier': ?tier,
      'zone': ?zone,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null ? null : (map['deletionProtectionEnabled'] as bool).input(),
      deletionProtectionReason: map['deletionProtectionReason'] == null ? null : (map['deletionProtectionReason'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      directoryServices: map['directoryServices'] == null ? null : (InstanceDirectoryServices.fromMap((map['directoryServices'] as Map).cast<String, dynamic>())).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      effectiveReplications: map['effectiveReplications'] == null ? null : (pulumi.Input.decodeList<InstanceEffectiveReplication>(map['effectiveReplications'], (value) => InstanceEffectiveReplication.fromMap((value as Map).cast<String, dynamic>()))).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      fileShares: map['fileShares'] == null ? null : (InstanceFileShares.fromMap((map['fileShares'] as Map).cast<String, dynamic>())).input(),
      initialReplication: map['initialReplication'] == null ? null : (InstanceInitialReplication.fromMap((map['initialReplication'] as Map).cast<String, dynamic>())).input(),
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networks: map['networks'] == null ? null : (pulumi.Input.decodeList<InstanceNetwork>(map['networks'], (value) => InstanceNetwork.fromMap((value as Map).cast<String, dynamic>()))).input(),
      performanceConfig: map['performanceConfig'] == null ? null : (InstancePerformanceConfig.fromMap((map['performanceConfig'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

