// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_accelerator.dart';
import 'instance_crypto_key_config.dart';
import 'instance_event_publish_config.dart';
import 'instance_network_config.dart';

/// {@template pulumi_datafusion_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_datafusion_instance_instance_args_doc}
class InstanceArgs {
  /// List of accelerators enabled for this CDF instance.
  /// If accelerators are enabled it is possible a permadiff will be created with the Options field.
  /// Users will need to either manually update their state file to include these diffed options, or include the field in a lifecycle ignore changes block.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceAccelerator>>? accelerators;
  /// The crypto key configuration. This field is used by the Customer-Managed Encryption Keys (CMEK) feature.
  /// Structure is documented below.
  final pulumi.Input<InstanceCryptoKeyConfig>? cryptoKeyConfig;
  /// User-managed service account to set on Dataproc when Cloud Data Fusion creates Dataproc to run data processing pipelines.
  final pulumi.Input<String>? dataprocServiceAccount;
  /// An optional description of the instance.
  final pulumi.Input<String>? description;
  /// Display name for an instance.
  final pulumi.Input<String>? displayName;
  /// Option to enable granular role-based access control.
  final pulumi.Input<bool>? enableRbac;
  /// Option to enable Stackdriver Logging.
  final pulumi.Input<bool>? enableStackdriverLogging;
  /// Option to enable Stackdriver Monitoring.
  final pulumi.Input<bool>? enableStackdriverMonitoring;
  /// Option to enable and pass metadata for event publishing.
  /// Structure is documented below.
  final pulumi.Input<InstanceEventPublishConfig>? eventPublishConfig;
  /// The resource labels for instance to use to annotate any related underlying resources,
  /// such as Compute Engine VMs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The ID of the instance or a fully qualified identifier for the instance.
  final pulumi.Input<String>? name;
  /// Network configuration options. These are required when a private Data Fusion instance is to be created.
  /// Structure is documented below.
  final pulumi.Input<InstanceNetworkConfig>? networkConfig;
  /// Map of additional options used to configure the behavior of Data Fusion instance.
  final pulumi.Input<Map<String, String>>? options;
  /// Specifies whether the Data Fusion instance should be private. If set to
  /// true, all Data Fusion nodes will have private IP addresses and will not be
  /// able to access the public internet.
  final pulumi.Input<bool>? privateInstance;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the Data Fusion instance.
  final pulumi.Input<String>? region;
  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  /// The field is ignored (both PUT & PATCH) when empty.
  final pulumi.Input<Map<String, String>>? tags;
  /// Represents the type of Data Fusion instance. Each type is configured with
  /// the default settings for processing and memory.
  /// - BASIC: Basic Data Fusion instance. In Basic type, the user will be able to create data pipelines
  /// using point and click UI. However, there are certain limitations, such as fewer number
  /// of concurrent pipelines, no support for streaming pipelines, etc.
  /// - ENTERPRISE: Enterprise Data Fusion instance. In Enterprise type, the user will have more features
  /// available, such as support for streaming pipelines, higher number of concurrent pipelines, etc.
  /// - DEVELOPER: Developer Data Fusion instance. In Developer type, the user will have all features available but
  /// with restrictive capabilities. This is to help enterprises design and develop their data ingestion and integration
  /// pipelines at low cost.
  /// Possible values are: `BASIC`, `ENTERPRISE`, `DEVELOPER`.
  final pulumi.Input<String> type;
  /// Current version of the Data Fusion.
  final pulumi.Input<String>? version;
  /// Name of the zone in which the Data Fusion instance will be created. Only DEVELOPER instances use this field.
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceArgs].
  /// [accelerators] List of accelerators enabled for this CDF instance.
  /// [cryptoKeyConfig] The crypto key configuration. This field is used by the Customer-Managed Encryption Keys (CMEK) feature.
  /// [dataprocServiceAccount] User-managed service account to set on Dataproc when Cloud Data Fusion creates Dataproc to run data processing pipelines.
  /// [description] An optional description of the instance.
  /// [displayName] Display name for an instance.
  /// [enableRbac] Option to enable granular role-based access control.
  /// [enableStackdriverLogging] Option to enable Stackdriver Logging.
  /// [enableStackdriverMonitoring] Option to enable Stackdriver Monitoring.
  /// [eventPublishConfig] Option to enable and pass metadata for event publishing.
  /// [labels] The resource labels for instance to use to annotate any related underlying resources,
  /// [name] The ID of the instance or a fully qualified identifier for the instance.
  /// [networkConfig] Network configuration options. These are required when a private Data Fusion instance is to be created.
  /// [options] Map of additional options used to configure the behavior of Data Fusion instance.
  /// [privateInstance] Specifies whether the Data Fusion instance should be private. If set to
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the Data Fusion instance.
  /// [tags] A map of resource manager tags.
  /// [type] Represents the type of Data Fusion instance. Each type is configured with
  /// [version] Current version of the Data Fusion.
  /// [zone] Name of the zone in which the Data Fusion instance will be created. Only DEVELOPER instances use this field.
  InstanceArgs({
    this.accelerators,
    this.cryptoKeyConfig,
    this.dataprocServiceAccount,
    this.description,
    this.displayName,
    this.enableRbac,
    this.enableStackdriverLogging,
    this.enableStackdriverMonitoring,
    this.eventPublishConfig,
    this.labels,
    this.name,
    this.networkConfig,
    this.options,
    this.privateInstance,
    this.project,
    this.region,
    this.tags,
    required this.type,
    this.version,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': ?pulumi.Input.mapOptionalInputValue<List<InstanceAccelerator>, List<Map<String, dynamic>>>(accelerators, (value) => pulumi.Input.encodeList<InstanceAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cryptoKeyConfig': ?pulumi.Input.mapOptionalInputValue<InstanceCryptoKeyConfig, Map<String, dynamic>>(cryptoKeyConfig, (value) => value.toMap()),
      'dataprocServiceAccount': ?dataprocServiceAccount,
      'description': ?description,
      'displayName': ?displayName,
      'enableRbac': ?enableRbac,
      'enableStackdriverLogging': ?enableStackdriverLogging,
      'enableStackdriverMonitoring': ?enableStackdriverMonitoring,
      'eventPublishConfig': ?pulumi.Input.mapOptionalInputValue<InstanceEventPublishConfig, Map<String, dynamic>>(eventPublishConfig, (value) => value.toMap()),
      'labels': ?labels,
      'name': ?name,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<InstanceNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'options': ?options,
      'privateInstance': ?privateInstance,
      'project': ?project,
      'region': ?region,
      'tags': ?tags,
      'type': type,
      'version': ?version,
      'zone': ?zone,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      accelerators: map['accelerators'] == null ? null : (pulumi.Input.decodeList<InstanceAccelerator>(map['accelerators'], (value) => InstanceAccelerator.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cryptoKeyConfig: map['cryptoKeyConfig'] == null ? null : (InstanceCryptoKeyConfig.fromMap((map['cryptoKeyConfig'] as Map).cast<String, dynamic>())).input(),
      dataprocServiceAccount: map['dataprocServiceAccount'] == null ? null : (map['dataprocServiceAccount'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      enableRbac: map['enableRbac'] == null ? null : (map['enableRbac'] as bool).input(),
      enableStackdriverLogging: map['enableStackdriverLogging'] == null ? null : (map['enableStackdriverLogging'] as bool).input(),
      enableStackdriverMonitoring: map['enableStackdriverMonitoring'] == null ? null : (map['enableStackdriverMonitoring'] as bool).input(),
      eventPublishConfig: map['eventPublishConfig'] == null ? null : (InstanceEventPublishConfig.fromMap((map['eventPublishConfig'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkConfig: map['networkConfig'] == null ? null : (InstanceNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())).input(),
      options: map['options'] == null ? null : ((map['options'] as Map).cast<String, String>()).input(),
      privateInstance: map['privateInstance'] == null ? null : (map['privateInstance'] as bool).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

