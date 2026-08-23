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
  const InstanceArgs({
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
      'platformEdition': ?pulumi.Input.mapOptionalInputValue<InstancePlatformEdition, String>(platformEdition, (value) => value.wireValue),
      'privateIpEnabled': ?privateIpEnabled,
      'project': ?project,
      'publicIpEnabled': ?publicIpEnabled,
      'reservedRange': ?reservedRange,
      'userMetadata': ?pulumi.Input.mapOptionalInputValue<UserMetadata, Map<String, dynamic>>(userMetadata, (value) => value.toMap()),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      adminSettings: (() { final guardedValue = map['adminSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdminSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      consumerNetwork: (() { final guardedValue = map['consumerNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customDomain: (() { final guardedValue = map['customDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomDomain.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      denyMaintenancePeriod: (() { final guardedValue = map['denyMaintenancePeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DenyMaintenancePeriod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceSchedule: (() { final guardedValue = map['maintenanceSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaintenanceSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oauthConfig: (() { final guardedValue = map['oauthConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      platformEdition: (() { final guardedValue = map['platformEdition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePlatformEdition.fromValue(guardedValue as String)); })(),
      privateIpEnabled: (() { final guardedValue = map['privateIpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpEnabled: (() { final guardedValue = map['publicIpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      reservedRange: (() { final guardedValue = map['reservedRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userMetadata: (() { final guardedValue = map['userMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
