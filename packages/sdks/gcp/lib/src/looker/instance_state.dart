// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_admin_settings.dart';
import 'instance_controlled_egress_config.dart';
import 'instance_custom_domain.dart';
import 'instance_deny_maintenance_period.dart';
import 'instance_encryption_config.dart';
import 'instance_maintenance_window.dart';
import 'instance_oauth_config.dart';
import 'instance_periodic_export_config.dart';
import 'instance_psc_config.dart';
import 'instance_user_metadata.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Looker instance Admin settings.
  /// Structure is documented below.
  final pulumi.Input<InstanceAdminSettings?>? adminSettings;
  /// Network name in the consumer project in the format of: projects/{project}/global/networks/{network}
  /// Note that the consumer network may be in a different GCP project than the consumer
  /// project that is hosting the Looker Instance.
  final pulumi.Input<String?>? consumerNetwork;
  /// Controlled egress configuration.
  /// Structure is documented below.
  final pulumi.Input<InstanceControlledEgressConfig?>? controlledEgressConfig;
  /// Whether controlled egress is enabled on the Looker instance.
  final pulumi.Input<bool?>? controlledEgressEnabled;
  /// The time the instance was created in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds.
  final pulumi.Input<String?>? createTime;
  /// Custom domain settings for a Looker instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceCustomDomain?>? customDomain;
  /// Policy to determine if the cluster should be deleted forcefully.
  /// If setting deletionPolicy = "FORCE", the Looker instance will be deleted regardless
  /// of its nested resources. If set to "DEFAULT", Looker instances that still have
  /// nested resources will return an error.
  ///
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", the command will behave as if set to "DEFAULT".
  ///
  /// Possible values: DEFAULT, FORCE, PREVENT, ABANDON, DELETE
  final pulumi.Input<String?>? deletionPolicy;
  /// Maintenance denial period for this instance.
  /// You must allow at least 14 days of maintenance availability
  /// between any two deny maintenance periods.
  /// Structure is documented below.
  final pulumi.Input<InstanceDenyMaintenancePeriod?>? denyMaintenancePeriod;
  /// Public Egress IP (IPv4).
  final pulumi.Input<String?>? egressPublicIp;
  /// Looker instance encryption settings.
  /// Structure is documented below.
  final pulumi.Input<InstanceEncryptionConfig?>? encryptionConfig;
  /// FIPS 140-2 Encryption enablement for Looker (Google Cloud Core).
  final pulumi.Input<bool?>? fipsEnabled;
  /// Gemini enablement for Looker (Google Cloud Core).
  final pulumi.Input<bool?>? geminiEnabled;
  /// Private Ingress IP (IPv4).
  final pulumi.Input<String?>? ingressPrivateIp;
  /// Public Ingress IP (IPv4).
  final pulumi.Input<String?>? ingressPublicIp;
  /// Looker instance URI which can be used to access the Looker Instance UI.
  final pulumi.Input<String?>? lookerUri;
  /// The Looker version that the instance is using.
  final pulumi.Input<String?>? lookerVersion;
  /// Maintenance window for an instance.
  /// Maintenance of your instance takes place once a month, and will require
  /// your instance to be restarted during updates, which will temporarily
  /// disrupt service.
  /// Structure is documented below.
  final pulumi.Input<InstanceMaintenanceWindow?>? maintenanceWindow;
  /// The ID of the instance or a fully qualified identifier for the instance.
  final pulumi.Input<String?>? name;
  /// Looker Instance OAuth login settings.
  /// Structure is documented below.
  final pulumi.Input<InstanceOauthConfig?>? oauthConfig;
  /// Configuration for periodic export.
  /// Structure is documented below.
  final pulumi.Input<InstancePeriodicExportConfig?>? periodicExportConfig;
  /// Platform editions for a Looker instance. Each edition maps to a set of instance features, like its size. Must be one of these values:
  /// - LOOKER_CORE_TRIAL: trial instance (Currently Unavailable)
  /// - LOOKER_CORE_STANDARD: pay as you go standard instance (Currently Unavailable)
  /// - LOOKER_CORE_STANDARD_ANNUAL: subscription standard instance
  /// - LOOKER_CORE_ENTERPRISE_ANNUAL: subscription enterprise instance
  /// - LOOKER_CORE_EMBED_ANNUAL: subscription embed instance
  /// - LOOKER_CORE_NONPROD_STANDARD_ANNUAL: nonprod subscription standard instance
  /// - LOOKER_CORE_NONPROD_ENTERPRISE_ANNUAL: nonprod subscription enterprise instance
  /// - LOOKER_CORE_NONPROD_EMBED_ANNUAL: nonprod subscription embed instance
  /// - LOOKER_CORE_TRIAL_STANDARD: A standard trial edition of Looker (Google Cloud core) product.
  /// - LOOKER_CORE_TRIAL_ENTERPRISE: An enterprise trial edition of Looker (Google Cloud core) product.
  /// - LOOKER_CORE_TRIAL_EMBED: An embed trial edition of Looker (Google Cloud core) product.
  /// Default value is `LOOKER_CORE_TRIAL`.
  /// Possible values are: `LOOKER_CORE_TRIAL`, `LOOKER_CORE_STANDARD`, `LOOKER_CORE_STANDARD_ANNUAL`, `LOOKER_CORE_ENTERPRISE_ANNUAL`, `LOOKER_CORE_EMBED_ANNUAL`, `LOOKER_CORE_NONPROD_STANDARD_ANNUAL`, `LOOKER_CORE_NONPROD_ENTERPRISE_ANNUAL`, `LOOKER_CORE_NONPROD_EMBED_ANNUAL`, `LOOKER_CORE_TRIAL_STANDARD`, `LOOKER_CORE_TRIAL_ENTERPRISE`, `LOOKER_CORE_TRIAL_EMBED`.
  final pulumi.Input<String?>? platformEdition;
  /// Whether private IP is enabled on the Looker instance.
  final pulumi.Input<bool?>? privateIpEnabled;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Information for Private Service Connect (PSC) setup for a Looker instance.
  /// Structure is documented below.
  final pulumi.Input<InstancePscConfig?>? pscConfig;
  /// Whether Public Service Connect (PSC) is enabled on the Looker instance
  final pulumi.Input<bool?>? pscEnabled;
  /// Whether public IP is enabled on the Looker instance.
  final pulumi.Input<bool?>? publicIpEnabled;
  /// The name of the Looker region of the instance.
  final pulumi.Input<String?>? region;
  /// Name of a reserved IP address range within the consumer network, to be used for
  /// private service access connection. User may or may not specify this in a request.
  final pulumi.Input<String?>? reservedRange;
  /// The time the instance was updated in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds.
  final pulumi.Input<String?>? updateTime;
  /// Metadata about users for a Looker instance.
  /// These settings are only available when platform edition LOOKER_CORE_STANDARD is set.
  /// There are ten Standard and two Developer users included in the cost of the product.
  /// You can allocate additional Standard, Viewer, and Developer users for this instance.
  /// It is an optional step and can be modified later.
  /// With the Standard edition of Looker (Google Cloud core), you can provision up to 50
  /// total users, distributed across Viewer, Standard, and Developer.
  /// Structure is documented below.
  final pulumi.Input<InstanceUserMetadata?>? userMetadata;

  /// Creates a new [InstanceState].
  /// [adminSettings] Looker instance Admin settings.
  /// [consumerNetwork] Network name in the consumer project in the format of: projects/{project}/global/networks/{network}
  /// [controlledEgressConfig] Controlled egress configuration.
  /// [controlledEgressEnabled] Whether controlled egress is enabled on the Looker instance.
  /// [createTime] The time the instance was created in RFC3339 UTC "Zulu" format,
  /// [customDomain] Custom domain settings for a Looker instance.
  /// [deletionPolicy] Policy to determine if the cluster should be deleted forcefully.
  /// [denyMaintenancePeriod] Maintenance denial period for this instance.
  /// [egressPublicIp] Public Egress IP (IPv4).
  /// [encryptionConfig] Looker instance encryption settings.
  /// [fipsEnabled] FIPS 140-2 Encryption enablement for Looker (Google Cloud Core).
  /// [geminiEnabled] Gemini enablement for Looker (Google Cloud Core).
  /// [ingressPrivateIp] Private Ingress IP (IPv4).
  /// [ingressPublicIp] Public Ingress IP (IPv4).
  /// [lookerUri] Looker instance URI which can be used to access the Looker Instance UI.
  /// [lookerVersion] The Looker version that the instance is using.
  /// [maintenanceWindow] Maintenance window for an instance.
  /// [name] The ID of the instance or a fully qualified identifier for the instance.
  /// [oauthConfig] Looker Instance OAuth login settings.
  /// [periodicExportConfig] Configuration for periodic export.
  /// [platformEdition] Platform editions for a Looker instance. Each edition maps to a set of instance features, like its size. Must be one of these values:
  /// [privateIpEnabled] Whether private IP is enabled on the Looker instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [pscConfig] Information for Private Service Connect (PSC) setup for a Looker instance.
  /// [pscEnabled] Whether Public Service Connect (PSC) is enabled on the Looker instance
  /// [publicIpEnabled] Whether public IP is enabled on the Looker instance.
  /// [region] The name of the Looker region of the instance.
  /// [reservedRange] Name of a reserved IP address range within the consumer network, to be used for
  /// [updateTime] The time the instance was updated in RFC3339 UTC "Zulu" format,
  /// [userMetadata] Metadata about users for a Looker instance.
  const InstanceState({
    this.adminSettings,
    this.consumerNetwork,
    this.controlledEgressConfig,
    this.controlledEgressEnabled,
    this.createTime,
    this.customDomain,
    this.deletionPolicy,
    this.denyMaintenancePeriod,
    this.egressPublicIp,
    this.encryptionConfig,
    this.fipsEnabled,
    this.geminiEnabled,
    this.ingressPrivateIp,
    this.ingressPublicIp,
    this.lookerUri,
    this.lookerVersion,
    this.maintenanceWindow,
    this.name,
    this.oauthConfig,
    this.periodicExportConfig,
    this.platformEdition,
    this.privateIpEnabled,
    this.project,
    this.pscConfig,
    this.pscEnabled,
    this.publicIpEnabled,
    this.region,
    this.reservedRange,
    this.updateTime,
    this.userMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminSettings': ?pulumi.Input.mapOptionalInputValue<InstanceAdminSettings, Map<String, dynamic>>(adminSettings, (value) => value.toMap()),
      'consumerNetwork': ?consumerNetwork,
      'controlledEgressConfig': ?pulumi.Input.mapOptionalInputValue<InstanceControlledEgressConfig, Map<String, dynamic>>(controlledEgressConfig, (value) => value.toMap()),
      'controlledEgressEnabled': ?controlledEgressEnabled,
      'createTime': ?createTime,
      'customDomain': ?pulumi.Input.mapOptionalInputValue<InstanceCustomDomain, Map<String, dynamic>>(customDomain, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'denyMaintenancePeriod': ?pulumi.Input.mapOptionalInputValue<InstanceDenyMaintenancePeriod, Map<String, dynamic>>(denyMaintenancePeriod, (value) => value.toMap()),
      'egressPublicIp': ?egressPublicIp,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<InstanceEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'fipsEnabled': ?fipsEnabled,
      'geminiEnabled': ?geminiEnabled,
      'ingressPrivateIp': ?ingressPrivateIp,
      'ingressPublicIp': ?ingressPublicIp,
      'lookerUri': ?lookerUri,
      'lookerVersion': ?lookerVersion,
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<InstanceMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'name': ?name,
      'oauthConfig': ?pulumi.Input.mapOptionalInputValue<InstanceOauthConfig, Map<String, dynamic>>(oauthConfig, (value) => value.toMap()),
      'periodicExportConfig': ?pulumi.Input.mapOptionalInputValue<InstancePeriodicExportConfig, Map<String, dynamic>>(periodicExportConfig, (value) => value.toMap()),
      'platformEdition': ?platformEdition,
      'privateIpEnabled': ?privateIpEnabled,
      'project': ?project,
      'pscConfig': ?pulumi.Input.mapOptionalInputValue<InstancePscConfig, Map<String, dynamic>>(pscConfig, (value) => value.toMap()),
      'pscEnabled': ?pscEnabled,
      'publicIpEnabled': ?publicIpEnabled,
      'region': ?region,
      'reservedRange': ?reservedRange,
      'updateTime': ?updateTime,
      'userMetadata': ?pulumi.Input.mapOptionalInputValue<InstanceUserMetadata, Map<String, dynamic>>(userMetadata, (value) => value.toMap()),
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      adminSettings: (() { final guardedValue = map['adminSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceAdminSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      consumerNetwork: (() { final guardedValue = map['consumerNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      controlledEgressConfig: (() { final guardedValue = map['controlledEgressConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceControlledEgressConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      controlledEgressEnabled: (() { final guardedValue = map['controlledEgressEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customDomain: (() { final guardedValue = map['customDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceCustomDomain.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      denyMaintenancePeriod: (() { final guardedValue = map['denyMaintenancePeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceDenyMaintenancePeriod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      egressPublicIp: (() { final guardedValue = map['egressPublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fipsEnabled: (() { final guardedValue = map['fipsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      geminiEnabled: (() { final guardedValue = map['geminiEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ingressPrivateIp: (() { final guardedValue = map['ingressPrivateIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingressPublicIp: (() { final guardedValue = map['ingressPublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lookerUri: (() { final guardedValue = map['lookerUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lookerVersion: (() { final guardedValue = map['lookerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthConfig: (() { final guardedValue = map['oauthConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceOauthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      periodicExportConfig: (() { final guardedValue = map['periodicExportConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePeriodicExportConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      platformEdition: (() { final guardedValue = map['platformEdition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpEnabled: (() { final guardedValue = map['privateIpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscConfig: (() { final guardedValue = map['pscConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePscConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pscEnabled: (() { final guardedValue = map['pscEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      publicIpEnabled: (() { final guardedValue = map['publicIpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedRange: (() { final guardedValue = map['reservedRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userMetadata: (() { final guardedValue = map['userMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceUserMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
