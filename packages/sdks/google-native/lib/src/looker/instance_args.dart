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
    this.adminSettings,
    this.consumerNetwork,
    this.customDomain,
    this.denyMaintenancePeriod,
    this.encryptionConfig,
    required this.instanceId,
    this.location,
    this.maintenanceSchedule,
    this.maintenanceWindow,
    this.oauthConfig,
    this.platformEdition,
    this.privateIpEnabled,
    this.project,
    this.publicIpEnabled,
    this.reservedRange,
    this.userMetadata,
  });

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
      adminSettings: map['adminSettings'] == null ? null : (AdminSettings.fromMap((map['adminSettings'] as Map).cast<String, dynamic>())).input(),
      consumerNetwork: map['consumerNetwork'] == null ? null : (map['consumerNetwork'] as String).input(),
      customDomain: map['customDomain'] == null ? null : (CustomDomain.fromMap((map['customDomain'] as Map).cast<String, dynamic>())).input(),
      denyMaintenancePeriod: map['denyMaintenancePeriod'] == null ? null : (DenyMaintenancePeriod.fromMap((map['denyMaintenancePeriod'] as Map).cast<String, dynamic>())).input(),
      encryptionConfig: map['encryptionConfig'] == null ? null : (EncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())).input(),
      instanceId: (map['instanceId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maintenanceSchedule: map['maintenanceSchedule'] == null ? null : (MaintenanceSchedule.fromMap((map['maintenanceSchedule'] as Map).cast<String, dynamic>())).input(),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : (MaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>())).input(),
      oauthConfig: map['oauthConfig'] == null ? null : (OAuthConfig.fromMap((map['oauthConfig'] as Map).cast<String, dynamic>())).input(),
      platformEdition: map['platformEdition'] == null ? null : (InstancePlatformEdition.fromValue(map['platformEdition'] as String)).input(),
      privateIpEnabled: map['privateIpEnabled'] == null ? null : (map['privateIpEnabled'] as bool).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      publicIpEnabled: map['publicIpEnabled'] == null ? null : (map['publicIpEnabled'] as bool).input(),
      reservedRange: map['reservedRange'] == null ? null : (map['reservedRange'] as String).input(),
      userMetadata: map['userMetadata'] == null ? null : (UserMetadata.fromMap((map['userMetadata'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

