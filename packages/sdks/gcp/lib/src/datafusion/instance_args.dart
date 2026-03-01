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
    pulumi.Output<List<InstanceAccelerator>>? accelerators,
    pulumi.Output<InstanceCryptoKeyConfig>? cryptoKeyConfig,
    pulumi.Output<String>? dataprocServiceAccount,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? enableRbac,
    pulumi.Output<bool>? enableStackdriverLogging,
    pulumi.Output<bool>? enableStackdriverMonitoring,
    pulumi.Output<InstanceEventPublishConfig>? eventPublishConfig,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<InstanceNetworkConfig>? networkConfig,
    pulumi.Output<Map<String, String>>? options,
    pulumi.Output<bool>? privateInstance,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> type,
    pulumi.Output<String>? version,
    pulumi.Output<String>? zone,
  }) :
      accelerators = pulumi.Input.asOptionalInput<List<InstanceAccelerator>>(accelerators),
      cryptoKeyConfig = pulumi.Input.asOptionalInput<InstanceCryptoKeyConfig>(cryptoKeyConfig),
      dataprocServiceAccount = pulumi.Input.asOptionalInput<String>(dataprocServiceAccount),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enableRbac = pulumi.Input.asOptionalInput<bool>(enableRbac),
      enableStackdriverLogging = pulumi.Input.asOptionalInput<bool>(enableStackdriverLogging),
      enableStackdriverMonitoring = pulumi.Input.asOptionalInput<bool>(enableStackdriverMonitoring),
      eventPublishConfig = pulumi.Input.asOptionalInput<InstanceEventPublishConfig>(eventPublishConfig),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfig = pulumi.Input.asOptionalInput<InstanceNetworkConfig>(networkConfig),
      options = pulumi.Input.asOptionalInput<Map<String, String>>(options),
      privateInstance = pulumi.Input.asOptionalInput<bool>(privateInstance),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asInput<String>(type),
      version = pulumi.Input.asOptionalInput<String>(version),
      zone = pulumi.Input.asOptionalInput<String>(zone);

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
      accelerators: map['accelerators'] == null ? null : pulumi.Output.create<List<InstanceAccelerator>>(pulumi.Input.decodeList<InstanceAccelerator>(map['accelerators'], (value) => InstanceAccelerator.fromMap((value as Map).cast<String, dynamic>()))),
      cryptoKeyConfig: map['cryptoKeyConfig'] == null ? null : pulumi.Output.create<InstanceCryptoKeyConfig>(InstanceCryptoKeyConfig.fromMap((map['cryptoKeyConfig'] as Map).cast<String, dynamic>())),
      dataprocServiceAccount: map['dataprocServiceAccount'] == null ? null : pulumi.Output.create<String>(map['dataprocServiceAccount'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enableRbac: map['enableRbac'] == null ? null : pulumi.Output.create<bool>(map['enableRbac'] as bool),
      enableStackdriverLogging: map['enableStackdriverLogging'] == null ? null : pulumi.Output.create<bool>(map['enableStackdriverLogging'] as bool),
      enableStackdriverMonitoring: map['enableStackdriverMonitoring'] == null ? null : pulumi.Output.create<bool>(map['enableStackdriverMonitoring'] as bool),
      eventPublishConfig: map['eventPublishConfig'] == null ? null : pulumi.Output.create<InstanceEventPublishConfig>(InstanceEventPublishConfig.fromMap((map['eventPublishConfig'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfig: map['networkConfig'] == null ? null : pulumi.Output.create<InstanceNetworkConfig>(InstanceNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())),
      options: map['options'] == null ? null : pulumi.Output.create<Map<String, String>>((map['options'] as Map).cast<String, String>()),
      privateInstance: map['privateInstance'] == null ? null : pulumi.Output.create<bool>(map['privateInstance'] as bool),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: pulumi.Output.create<String>(map['type'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

