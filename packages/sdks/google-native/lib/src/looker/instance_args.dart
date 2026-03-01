// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'admin_settings.dart';
import 'custom_domain.dart';
import 'deny_maintenance_period.dart';
import 'encryption_config.dart';
import 'instance_platform_edition.dart';
import 'maintenance_schedule.dart';
import 'maintenance_window.dart';
import 'oauth_config.dart';
import 'user_metadata.dart';

/// {@template pulumi_looker_v1_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_looker_v1_instance_args_doc}
class InstanceArgs {
  /// Looker Instance Admin settings.
  final pulumi.Input<AdminSettings>? adminSettings;
  /// Network name in the consumer project. Format: `projects/{project}/global/networks/{network}`. Note that the consumer network may be in a different GCP project than the consumer project that is hosting the Looker Instance.
  final pulumi.Input<String>? consumerNetwork;
  final pulumi.Input<CustomDomain>? customDomain;
  /// Maintenance denial period for this instance.
  final pulumi.Input<DenyMaintenancePeriod>? denyMaintenancePeriod;
  /// Encryption configuration (CMEK). Only set if CMEK has been enabled on the instance.
  final pulumi.Input<EncryptionConfig>? encryptionConfig;
  /// Required. The unique instance identifier. Must contain only lowercase letters, numbers, or hyphens, with the first character a letter and the last a letter or a number. 63 characters maximum.
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? location;
  /// Maintenance schedule for this instance.
  final pulumi.Input<MaintenanceSchedule>? maintenanceSchedule;
  /// Maintenance window for this instance.
  final pulumi.Input<MaintenanceWindow>? maintenanceWindow;
  /// Looker instance OAuth login settings.
  final pulumi.Input<OAuthConfig>? oauthConfig;
  /// Platform edition.
  final pulumi.Input<InstancePlatformEdition>? platformEdition;
  /// Whether private IP is enabled on the Looker instance.
  final pulumi.Input<bool>? privateIpEnabled;
  final pulumi.Input<String>? project;
  /// Whether public IP is enabled on the Looker instance.
  final pulumi.Input<bool>? publicIpEnabled;
  /// Name of a reserved IP address range within the Instance.consumer_network, to be used for private services access connection. May or may not be specified in a create request.
  final pulumi.Input<String>? reservedRange;
  /// User metadata.
  final pulumi.Input<UserMetadata>? userMetadata;

  /// Creates a new [InstanceArgs].
  /// [adminSettings] Looker Instance Admin settings.
  /// [consumerNetwork] Network name in the consumer project. Format: `projects/{project}/global/networks/{network}`. Note that the consumer network may be in a different GCP project than the consumer project that is hosting the Looker Instance.
  /// [customDomain] Optional.
  /// [denyMaintenancePeriod] Maintenance denial period for this instance.
  /// [encryptionConfig] Encryption configuration (CMEK). Only set if CMEK has been enabled on the instance.
  /// [instanceId] Required. The unique instance identifier. Must contain only lowercase letters, numbers, or hyphens, with the first character a letter and the last a letter or a number. 63 characters maximum.
  /// [location] Optional.
  /// [maintenanceSchedule] Maintenance schedule for this instance.
  /// [maintenanceWindow] Maintenance window for this instance.
  /// [oauthConfig] Looker instance OAuth login settings.
  /// [platformEdition] Platform edition.
  /// [privateIpEnabled] Whether private IP is enabled on the Looker instance.
  /// [project] Optional.
  /// [publicIpEnabled] Whether public IP is enabled on the Looker instance.
  /// [reservedRange] Name of a reserved IP address range within the Instance.consumer_network, to be used for private services access connection. May or may not be specified in a create request.
  /// [userMetadata] User metadata.
  InstanceArgs({
    pulumi.Output<AdminSettings>? adminSettings,
    pulumi.Output<String>? consumerNetwork,
    pulumi.Output<CustomDomain>? customDomain,
    pulumi.Output<DenyMaintenancePeriod>? denyMaintenancePeriod,
    pulumi.Output<EncryptionConfig>? encryptionConfig,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? location,
    pulumi.Output<MaintenanceSchedule>? maintenanceSchedule,
    pulumi.Output<MaintenanceWindow>? maintenanceWindow,
    pulumi.Output<OAuthConfig>? oauthConfig,
    pulumi.Output<InstancePlatformEdition>? platformEdition,
    pulumi.Output<bool>? privateIpEnabled,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? publicIpEnabled,
    pulumi.Output<String>? reservedRange,
    pulumi.Output<UserMetadata>? userMetadata,
  }) :
      adminSettings = pulumi.Input.asOptionalInput<AdminSettings>(adminSettings),
      consumerNetwork = pulumi.Input.asOptionalInput<String>(consumerNetwork),
      customDomain = pulumi.Input.asOptionalInput<CustomDomain>(customDomain),
      denyMaintenancePeriod = pulumi.Input.asOptionalInput<DenyMaintenancePeriod>(denyMaintenancePeriod),
      encryptionConfig = pulumi.Input.asOptionalInput<EncryptionConfig>(encryptionConfig),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceSchedule = pulumi.Input.asOptionalInput<MaintenanceSchedule>(maintenanceSchedule),
      maintenanceWindow = pulumi.Input.asOptionalInput<MaintenanceWindow>(maintenanceWindow),
      oauthConfig = pulumi.Input.asOptionalInput<OAuthConfig>(oauthConfig),
      platformEdition = pulumi.Input.asOptionalInput<InstancePlatformEdition>(platformEdition),
      privateIpEnabled = pulumi.Input.asOptionalInput<bool>(privateIpEnabled),
      project = pulumi.Input.asOptionalInput<String>(project),
      publicIpEnabled = pulumi.Input.asOptionalInput<bool>(publicIpEnabled),
      reservedRange = pulumi.Input.asOptionalInput<String>(reservedRange),
      userMetadata = pulumi.Input.asOptionalInput<UserMetadata>(userMetadata);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminSettings': ?pulumi.Input.mapOptionalInputValue<AdminSettings, Map<String, dynamic>>(adminSettings, (value) => value.toMap()),
      'consumerNetwork': ?consumerNetwork,
      'customDomain': ?pulumi.Input.mapOptionalInputValue<CustomDomain, Map<String, dynamic>>(customDomain, (value) => value.toMap()),
      'denyMaintenancePeriod': ?pulumi.Input.mapOptionalInputValue<DenyMaintenancePeriod, Map<String, dynamic>>(denyMaintenancePeriod, (value) => value.toMap()),
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<EncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'instanceId': instanceId,
      'location': ?location,
      'maintenanceSchedule': ?pulumi.Input.mapOptionalInputValue<MaintenanceSchedule, Map<String, dynamic>>(maintenanceSchedule, (value) => value.toMap()),
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<MaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'oauthConfig': ?pulumi.Input.mapOptionalInputValue<OAuthConfig, Map<String, dynamic>>(oauthConfig, (value) => value.toMap()),
      'platformEdition': ?pulumi.Input.mapOptionalInputValue<InstancePlatformEdition, String>(platformEdition, (value) => value.value),
      'privateIpEnabled': ?privateIpEnabled,
      'project': ?project,
      'publicIpEnabled': ?publicIpEnabled,
      'reservedRange': ?reservedRange,
      'userMetadata': ?pulumi.Input.mapOptionalInputValue<UserMetadata, Map<String, dynamic>>(userMetadata, (value) => value.toMap()),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      adminSettings: map['adminSettings'] == null ? null : pulumi.Output.create<AdminSettings>(AdminSettings.fromMap((map['adminSettings'] as Map).cast<String, dynamic>())),
      consumerNetwork: map['consumerNetwork'] == null ? null : pulumi.Output.create<String>(map['consumerNetwork'] as String),
      customDomain: map['customDomain'] == null ? null : pulumi.Output.create<CustomDomain>(CustomDomain.fromMap((map['customDomain'] as Map).cast<String, dynamic>())),
      denyMaintenancePeriod: map['denyMaintenancePeriod'] == null ? null : pulumi.Output.create<DenyMaintenancePeriod>(DenyMaintenancePeriod.fromMap((map['denyMaintenancePeriod'] as Map).cast<String, dynamic>())),
      encryptionConfig: map['encryptionConfig'] == null ? null : pulumi.Output.create<EncryptionConfig>(EncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenanceSchedule: map['maintenanceSchedule'] == null ? null : pulumi.Output.create<MaintenanceSchedule>(MaintenanceSchedule.fromMap((map['maintenanceSchedule'] as Map).cast<String, dynamic>())),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : pulumi.Output.create<MaintenanceWindow>(MaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>())),
      oauthConfig: map['oauthConfig'] == null ? null : pulumi.Output.create<OAuthConfig>(OAuthConfig.fromMap((map['oauthConfig'] as Map).cast<String, dynamic>())),
      platformEdition: map['platformEdition'] == null ? null : pulumi.Output.create<InstancePlatformEdition>(InstancePlatformEdition.fromValue(map['platformEdition'] as String)),
      privateIpEnabled: map['privateIpEnabled'] == null ? null : pulumi.Output.create<bool>(map['privateIpEnabled'] as bool),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      publicIpEnabled: map['publicIpEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicIpEnabled'] as bool),
      reservedRange: map['reservedRange'] == null ? null : pulumi.Output.create<String>(map['reservedRange'] as String),
      userMetadata: map['userMetadata'] == null ? null : pulumi.Output.create<UserMetadata>(UserMetadata.fromMap((map['userMetadata'] as Map).cast<String, dynamic>())),
    );
  }
}

