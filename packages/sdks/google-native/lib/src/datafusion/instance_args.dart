// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'crypto_key_config.dart';
import 'event_publish_config.dart';
import 'instance_type.dart';
import 'network_config.dart';

/// {@template pulumi_datafusion_v1_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_datafusion_v1_instance_args_doc}
class InstanceArgs {
  /// The crypto key configuration. This field is used by the Customer-Managed Encryption Keys (CMEK) feature.
  final pulumi.Input<CryptoKeyConfig>? cryptoKeyConfig;
  /// User-managed service account to set on Dataproc when Cloud Data Fusion creates Dataproc to run data processing pipelines. This allows users to have fine-grained access control on Dataproc's accesses to cloud resources.
  final pulumi.Input<String>? dataprocServiceAccount;
  /// A description of this instance.
  final pulumi.Input<String>? description;
  /// Display name for an instance.
  final pulumi.Input<String>? displayName;
  /// Option to enable granular role-based access control.
  final pulumi.Input<bool>? enableRbac;
  /// Option to enable Stackdriver Logging.
  final pulumi.Input<bool>? enableStackdriverLogging;
  /// Option to enable Stackdriver Monitoring.
  final pulumi.Input<bool>? enableStackdriverMonitoring;
  /// Option to enable granular zone separation.
  final pulumi.Input<bool>? enableZoneSeparation;
  /// Option to enable and pass metadata for event publishing.
  final pulumi.Input<EventPublishConfig>? eventPublishConfig;
  /// Required. The name of the instance to create.
  final pulumi.Input<String> instanceId;
  /// The resource labels for instance to use to annotate any related underlying resources such as Compute Engine VMs. The character '=' is not allowed to be used within the labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Network configuration options. These are required when a private Data Fusion instance is to be created.
  final pulumi.Input<NetworkConfig>? networkConfig;
  /// Map of additional options used to configure the behavior of Data Fusion instance.
  final pulumi.Input<Map<String, String>>? options;
  /// Optional. Current patch revision of the Data Fusion.
  final pulumi.Input<String>? patchRevision;
  /// Specifies whether the Data Fusion instance should be private. If set to true, all Data Fusion nodes will have private IP addresses and will not be able to access the public internet.
  final pulumi.Input<bool>? privateInstance;
  final pulumi.Input<String>? project;
  /// Instance type.
  final pulumi.Input<InstanceType> type;
  /// Current version of the Data Fusion. Only specifiable in Update.
  final pulumi.Input<String>? version;
  /// Name of the zone in which the Data Fusion instance will be created. Only DEVELOPER instances use this field.
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceArgs].
  /// [cryptoKeyConfig] The crypto key configuration. This field is used by the Customer-Managed Encryption Keys (CMEK) feature.
  /// [dataprocServiceAccount] User-managed service account to set on Dataproc when Cloud Data Fusion creates Dataproc to run data processing pipelines. This allows users to have fine-grained access control on Dataproc's accesses to cloud resources.
  /// [description] A description of this instance.
  /// [displayName] Display name for an instance.
  /// [enableRbac] Option to enable granular role-based access control.
  /// [enableStackdriverLogging] Option to enable Stackdriver Logging.
  /// [enableStackdriverMonitoring] Option to enable Stackdriver Monitoring.
  /// [enableZoneSeparation] Option to enable granular zone separation.
  /// [eventPublishConfig] Option to enable and pass metadata for event publishing.
  /// [instanceId] Required. The name of the instance to create.
  /// [labels] The resource labels for instance to use to annotate any related underlying resources such as Compute Engine VMs. The character '=' is not allowed to be used within the labels.
  /// [location] Optional.
  /// [networkConfig] Network configuration options. These are required when a private Data Fusion instance is to be created.
  /// [options] Map of additional options used to configure the behavior of Data Fusion instance.
  /// [patchRevision] Optional. Current patch revision of the Data Fusion.
  /// [privateInstance] Specifies whether the Data Fusion instance should be private. If set to true, all Data Fusion nodes will have private IP addresses and will not be able to access the public internet.
  /// [project] Optional.
  /// [type] Instance type.
  /// [version] Current version of the Data Fusion. Only specifiable in Update.
  /// [zone] Name of the zone in which the Data Fusion instance will be created. Only DEVELOPER instances use this field.
  InstanceArgs({
    pulumi.Output<CryptoKeyConfig>? cryptoKeyConfig,
    pulumi.Output<String>? dataprocServiceAccount,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? enableRbac,
    pulumi.Output<bool>? enableStackdriverLogging,
    pulumi.Output<bool>? enableStackdriverMonitoring,
    pulumi.Output<bool>? enableZoneSeparation,
    pulumi.Output<EventPublishConfig>? eventPublishConfig,
    required pulumi.Output<String> instanceId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<NetworkConfig>? networkConfig,
    pulumi.Output<Map<String, String>>? options,
    pulumi.Output<String>? patchRevision,
    pulumi.Output<bool>? privateInstance,
    pulumi.Output<String>? project,
    required pulumi.Output<InstanceType> type,
    pulumi.Output<String>? version,
    pulumi.Output<String>? zone,
  }) :
      cryptoKeyConfig = pulumi.Input.asOptionalInput<CryptoKeyConfig>(cryptoKeyConfig),
      dataprocServiceAccount = pulumi.Input.asOptionalInput<String>(dataprocServiceAccount),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enableRbac = pulumi.Input.asOptionalInput<bool>(enableRbac),
      enableStackdriverLogging = pulumi.Input.asOptionalInput<bool>(enableStackdriverLogging),
      enableStackdriverMonitoring = pulumi.Input.asOptionalInput<bool>(enableStackdriverMonitoring),
      enableZoneSeparation = pulumi.Input.asOptionalInput<bool>(enableZoneSeparation),
      eventPublishConfig = pulumi.Input.asOptionalInput<EventPublishConfig>(eventPublishConfig),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkConfig = pulumi.Input.asOptionalInput<NetworkConfig>(networkConfig),
      options = pulumi.Input.asOptionalInput<Map<String, String>>(options),
      patchRevision = pulumi.Input.asOptionalInput<String>(patchRevision),
      privateInstance = pulumi.Input.asOptionalInput<bool>(privateInstance),
      project = pulumi.Input.asOptionalInput<String>(project),
      type = pulumi.Input.asInput<InstanceType>(type),
      version = pulumi.Input.asOptionalInput<String>(version),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKeyConfig': ?pulumi.Input.mapOptionalInputValue<CryptoKeyConfig, Map<String, dynamic>>(cryptoKeyConfig, (value) => value.toMap()),
      'dataprocServiceAccount': ?dataprocServiceAccount,
      'description': ?description,
      'displayName': ?displayName,
      'enableRbac': ?enableRbac,
      'enableStackdriverLogging': ?enableStackdriverLogging,
      'enableStackdriverMonitoring': ?enableStackdriverMonitoring,
      'enableZoneSeparation': ?enableZoneSeparation,
      'eventPublishConfig': ?pulumi.Input.mapOptionalInputValue<EventPublishConfig, Map<String, dynamic>>(eventPublishConfig, (value) => value.toMap()),
      'instanceId': instanceId,
      'labels': ?labels,
      'location': ?location,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<NetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'options': ?options,
      'patchRevision': ?patchRevision,
      'privateInstance': ?privateInstance,
      'project': ?project,
      'type': pulumi.Input.mapInputValue<InstanceType, String>(type, (value) => value.value),
      'version': ?version,
      'zone': ?zone,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      cryptoKeyConfig: map['cryptoKeyConfig'] == null ? null : pulumi.Output.create<CryptoKeyConfig>(CryptoKeyConfig.fromMap((map['cryptoKeyConfig'] as Map).cast<String, dynamic>())),
      dataprocServiceAccount: map['dataprocServiceAccount'] == null ? null : pulumi.Output.create<String>(map['dataprocServiceAccount'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enableRbac: map['enableRbac'] == null ? null : pulumi.Output.create<bool>(map['enableRbac'] as bool),
      enableStackdriverLogging: map['enableStackdriverLogging'] == null ? null : pulumi.Output.create<bool>(map['enableStackdriverLogging'] as bool),
      enableStackdriverMonitoring: map['enableStackdriverMonitoring'] == null ? null : pulumi.Output.create<bool>(map['enableStackdriverMonitoring'] as bool),
      enableZoneSeparation: map['enableZoneSeparation'] == null ? null : pulumi.Output.create<bool>(map['enableZoneSeparation'] as bool),
      eventPublishConfig: map['eventPublishConfig'] == null ? null : pulumi.Output.create<EventPublishConfig>(EventPublishConfig.fromMap((map['eventPublishConfig'] as Map).cast<String, dynamic>())),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkConfig: map['networkConfig'] == null ? null : pulumi.Output.create<NetworkConfig>(NetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())),
      options: map['options'] == null ? null : pulumi.Output.create<Map<String, String>>((map['options'] as Map).cast<String, String>()),
      patchRevision: map['patchRevision'] == null ? null : pulumi.Output.create<String>(map['patchRevision'] as String),
      privateInstance: map['privateInstance'] == null ? null : pulumi.Output.create<bool>(map['privateInstance'] as bool),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      type: pulumi.Output.create<InstanceType>(InstanceType.fromValue(map['type'] as String)),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

