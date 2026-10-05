// ignore_for_file: unused_element, unnecessary_cast

import 'admin_settings_response.dart';
import 'custom_domain_response.dart';
import 'deny_maintenance_period_response.dart';
import 'encryption_config_response.dart';
import 'maintenance_schedule_response.dart';
import 'maintenance_window_response.dart';
import 'oauth_config_response.dart';
import 'user_metadata_response.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  /// Looker Instance Admin settings.
  final AdminSettingsResponse? adminSettings;
  /// Network name in the consumer project. Format: `projects/{project}/global/networks/{network}`. Note that the consumer network may be in a different GCP project than the consumer project that is hosting the Looker Instance.
  final String? consumerNetwork;
  /// The time when the Looker instance provisioning was first requested.
  final String? createTime;
  final CustomDomainResponse? customDomain;
  /// Maintenance denial period for this instance.
  final DenyMaintenancePeriodResponse? denyMaintenancePeriod;
  /// Public Egress IP (IPv4).
  final String? egressPublicIp;
  /// Encryption configuration (CMEK). Only set if CMEK has been enabled on the instance.
  final EncryptionConfigResponse? encryptionConfig;
  /// Private Ingress IP (IPv4).
  final String? ingressPrivateIp;
  /// Public Ingress IP (IPv4).
  final String? ingressPublicIp;
  /// Last computed maintenance denial period for this instance.
  final DenyMaintenancePeriodResponse? lastDenyMaintenancePeriod;
  /// Looker instance URI which can be used to access the Looker Instance UI.
  final String? lookerUri;
  /// The Looker version that the instance is using.
  final String? lookerVersion;
  /// Maintenance schedule for this instance.
  final MaintenanceScheduleResponse? maintenanceSchedule;
  /// Maintenance window for this instance.
  final MaintenanceWindowResponse? maintenanceWindow;
  /// Format: `projects/{project}/locations/{location}/instances/{instance}`.
  final String? name;
  /// Looker instance OAuth login settings.
  final OAuthConfigResponse? oauthConfig;
  /// Platform edition.
  final String? platformEdition;
  /// Whether private IP is enabled on the Looker instance.
  final bool? privateIpEnabled;
  /// Whether public IP is enabled on the Looker instance.
  final bool? publicIpEnabled;
  /// Name of a reserved IP address range within the Instance.consumer_network, to be used for private services access connection. May or may not be specified in a create request.
  final String? reservedRange;
  /// The state of the instance.
  final String? state;
  /// The time when the Looker instance was last updated.
  final String? updateTime;
  /// User metadata.
  final UserMetadataResponse? userMetadata;

  /// Creates a new [GetInstanceResult].
  /// [adminSettings] Looker Instance Admin settings.
  /// [consumerNetwork] Network name in the consumer project. Format: `projects/{project}/global/networks/{network}`. Note that the consumer network may be in a different GCP project than the consumer project that is hosting the Looker Instance.
  /// [createTime] The time when the Looker instance provisioning was first requested.
  /// [customDomain] Optional.
  /// [denyMaintenancePeriod] Maintenance denial period for this instance.
  /// [egressPublicIp] Public Egress IP (IPv4).
  /// [encryptionConfig] Encryption configuration (CMEK). Only set if CMEK has been enabled on the instance.
  /// [ingressPrivateIp] Private Ingress IP (IPv4).
  /// [ingressPublicIp] Public Ingress IP (IPv4).
  /// [lastDenyMaintenancePeriod] Last computed maintenance denial period for this instance.
  /// [lookerUri] Looker instance URI which can be used to access the Looker Instance UI.
  /// [lookerVersion] The Looker version that the instance is using.
  /// [maintenanceSchedule] Maintenance schedule for this instance.
  /// [maintenanceWindow] Maintenance window for this instance.
  /// [name] Format: `projects/{project}/locations/{location}/instances/{instance}`.
  /// [oauthConfig] Looker instance OAuth login settings.
  /// [platformEdition] Platform edition.
  /// [privateIpEnabled] Whether private IP is enabled on the Looker instance.
  /// [publicIpEnabled] Whether public IP is enabled on the Looker instance.
  /// [reservedRange] Name of a reserved IP address range within the Instance.consumer_network, to be used for private services access connection. May or may not be specified in a create request.
  /// [state] The state of the instance.
  /// [updateTime] The time when the Looker instance was last updated.
  /// [userMetadata] User metadata.
  const GetInstanceResult({
    this.adminSettings,
    this.consumerNetwork,
    this.createTime,
    this.customDomain,
    this.denyMaintenancePeriod,
    this.egressPublicIp,
    this.encryptionConfig,
    this.ingressPrivateIp,
    this.ingressPublicIp,
    this.lastDenyMaintenancePeriod,
    this.lookerUri,
    this.lookerVersion,
    this.maintenanceSchedule,
    this.maintenanceWindow,
    this.name,
    this.oauthConfig,
    this.platformEdition,
    this.privateIpEnabled,
    this.publicIpEnabled,
    this.reservedRange,
    this.state,
    this.updateTime,
    this.userMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminSettings': ?adminSettings?.toMap(),
      'consumerNetwork': ?consumerNetwork,
      'createTime': ?createTime,
      'customDomain': ?customDomain?.toMap(),
      'denyMaintenancePeriod': ?denyMaintenancePeriod?.toMap(),
      'egressPublicIp': ?egressPublicIp,
      'encryptionConfig': ?encryptionConfig?.toMap(),
      'ingressPrivateIp': ?ingressPrivateIp,
      'ingressPublicIp': ?ingressPublicIp,
      'lastDenyMaintenancePeriod': ?lastDenyMaintenancePeriod?.toMap(),
      'lookerUri': ?lookerUri,
      'lookerVersion': ?lookerVersion,
      'maintenanceSchedule': ?maintenanceSchedule?.toMap(),
      'maintenanceWindow': ?maintenanceWindow?.toMap(),
      'name': ?name,
      'oauthConfig': ?oauthConfig?.toMap(),
      'platformEdition': ?platformEdition,
      'privateIpEnabled': ?privateIpEnabled,
      'publicIpEnabled': ?publicIpEnabled,
      'reservedRange': ?reservedRange,
      'state': ?state,
      'updateTime': ?updateTime,
      'userMetadata': ?userMetadata?.toMap(),
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      adminSettings: (() { final guardedValue = map['adminSettings']; if (guardedValue == null) return null; return AdminSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      consumerNetwork: (() { final guardedValue = map['consumerNetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customDomain: (() { final guardedValue = map['customDomain']; if (guardedValue == null) return null; return CustomDomainResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      denyMaintenancePeriod: (() { final guardedValue = map['denyMaintenancePeriod']; if (guardedValue == null) return null; return DenyMaintenancePeriodResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      egressPublicIp: (() { final guardedValue = map['egressPublicIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return EncryptionConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ingressPrivateIp: (() { final guardedValue = map['ingressPrivateIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ingressPublicIp: (() { final guardedValue = map['ingressPublicIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastDenyMaintenancePeriod: (() { final guardedValue = map['lastDenyMaintenancePeriod']; if (guardedValue == null) return null; return DenyMaintenancePeriodResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lookerUri: (() { final guardedValue = map['lookerUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lookerVersion: (() { final guardedValue = map['lookerVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceSchedule: (() { final guardedValue = map['maintenanceSchedule']; if (guardedValue == null) return null; return MaintenanceScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return MaintenanceWindowResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      oauthConfig: (() { final guardedValue = map['oauthConfig']; if (guardedValue == null) return null; return OAuthConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      platformEdition: (() { final guardedValue = map['platformEdition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateIpEnabled: (() { final guardedValue = map['privateIpEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      publicIpEnabled: (() { final guardedValue = map['publicIpEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      reservedRange: (() { final guardedValue = map['reservedRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userMetadata: (() { final guardedValue = map['userMetadata']; if (guardedValue == null) return null; return UserMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
