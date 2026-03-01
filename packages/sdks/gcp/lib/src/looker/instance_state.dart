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
  final pulumi.Input<InstanceAdminSettings>? adminSettings;
  /// Network name in the consumer project in the format of: projects/{project}/global/networks/{network}
  /// Note that the consumer network may be in a different GCP project than the consumer
  /// project that is hosting the Looker Instance.
  final pulumi.Input<String>? consumerNetwork;
  /// Controlled egress configuration.
  /// Structure is documented below.
  final pulumi.Input<InstanceControlledEgressConfig>? controlledEgressConfig;
  /// Whether controlled egress is enabled on the Looker instance.
  final pulumi.Input<bool>? controlledEgressEnabled;
  /// The time the instance was created in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds.
  final pulumi.Input<String>? createTime;
  /// Custom domain settings for a Looker instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceCustomDomain>? customDomain;
  /// Policy to determine if the cluster should be deleted forcefully.
  /// If setting deletion_policy = "FORCE", the Looker instance will be deleted regardless
  /// of its nested resources. If set to "DEFAULT", Looker instances that still have
  /// nested resources will return an error. Possible values: DEFAULT, FORCE
  final pulumi.Input<String>? deletionPolicy;
  /// Maintenance denial period for this instance.
  /// You must allow at least 14 days of maintenance availability
  /// between any two deny maintenance periods.
  /// Structure is documented below.
  final pulumi.Input<InstanceDenyMaintenancePeriod>? denyMaintenancePeriod;
  /// Public Egress IP (IPv4).
  final pulumi.Input<String>? egressPublicIp;
  /// Looker instance encryption settings.
  /// Structure is documented below.
  final pulumi.Input<InstanceEncryptionConfig>? encryptionConfig;
  /// FIPS 140-2 Encryption enablement for Looker (Google Cloud Core).
  final pulumi.Input<bool>? fipsEnabled;
  /// Gemini enablement for Looker (Google Cloud Core).
  final pulumi.Input<bool>? geminiEnabled;
  /// Private Ingress IP (IPv4).
  final pulumi.Input<String>? ingressPrivateIp;
  /// Public Ingress IP (IPv4).
  final pulumi.Input<String>? ingressPublicIp;
  /// Looker instance URI which can be used to access the Looker Instance UI.
  final pulumi.Input<String>? lookerUri;
  /// The Looker version that the instance is using.
  final pulumi.Input<String>? lookerVersion;
  /// Maintenance window for an instance.
  /// Maintenance of your instance takes place once a month, and will require
  /// your instance to be restarted during updates, which will temporarily
  /// disrupt service.
  /// Structure is documented below.
  final pulumi.Input<InstanceMaintenanceWindow>? maintenanceWindow;
  /// The ID of the instance or a fully qualified identifier for the instance.
  final pulumi.Input<String>? name;
  /// Looker Instance OAuth login settings.
  /// Structure is documented below.
  final pulumi.Input<InstanceOauthConfig>? oauthConfig;
  /// Configuration for periodic export.
  /// Structure is documented below.
  final pulumi.Input<InstancePeriodicExportConfig>? periodicExportConfig;
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
  final pulumi.Input<String>? platformEdition;
  /// Whether private IP is enabled on the Looker instance.
  final pulumi.Input<bool>? privateIpEnabled;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Information for Private Service Connect (PSC) setup for a Looker instance.
  /// Structure is documented below.
  final pulumi.Input<InstancePscConfig>? pscConfig;
  /// Whether Public Service Connect (PSC) is enabled on the Looker instance
  final pulumi.Input<bool>? pscEnabled;
  /// Whether public IP is enabled on the Looker instance.
  final pulumi.Input<bool>? publicIpEnabled;
  /// The name of the Looker region of the instance.
  final pulumi.Input<String>? region;
  /// Name of a reserved IP address range within the consumer network, to be used for
  /// private service access connection. User may or may not specify this in a request.
  final pulumi.Input<String>? reservedRange;
  /// The time the instance was updated in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds.
  final pulumi.Input<String>? updateTime;
  /// Metadata about users for a Looker instance.
  /// These settings are only available when platform edition LOOKER_CORE_STANDARD is set.
  /// There are ten Standard and two Developer users included in the cost of the product.
  /// You can allocate additional Standard, Viewer, and Developer users for this instance.
  /// It is an optional step and can be modified later.
  /// With the Standard edition of Looker (Google Cloud core), you can provision up to 50
  /// total users, distributed across Viewer, Standard, and Developer.
  /// Structure is documented below.
  final pulumi.Input<InstanceUserMetadata>? userMetadata;

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
  InstanceState({
    pulumi.Output<InstanceAdminSettings>? adminSettings,
    pulumi.Output<String>? consumerNetwork,
    pulumi.Output<InstanceControlledEgressConfig>? controlledEgressConfig,
    pulumi.Output<bool>? controlledEgressEnabled,
    pulumi.Output<String>? createTime,
    pulumi.Output<InstanceCustomDomain>? customDomain,
    pulumi.Output<String>? deletionPolicy,
    pulumi.Output<InstanceDenyMaintenancePeriod>? denyMaintenancePeriod,
    pulumi.Output<String>? egressPublicIp,
    pulumi.Output<InstanceEncryptionConfig>? encryptionConfig,
    pulumi.Output<bool>? fipsEnabled,
    pulumi.Output<bool>? geminiEnabled,
    pulumi.Output<String>? ingressPrivateIp,
    pulumi.Output<String>? ingressPublicIp,
    pulumi.Output<String>? lookerUri,
    pulumi.Output<String>? lookerVersion,
    pulumi.Output<InstanceMaintenanceWindow>? maintenanceWindow,
    pulumi.Output<String>? name,
    pulumi.Output<InstanceOauthConfig>? oauthConfig,
    pulumi.Output<InstancePeriodicExportConfig>? periodicExportConfig,
    pulumi.Output<String>? platformEdition,
    pulumi.Output<bool>? privateIpEnabled,
    pulumi.Output<String>? project,
    pulumi.Output<InstancePscConfig>? pscConfig,
    pulumi.Output<bool>? pscEnabled,
    pulumi.Output<bool>? publicIpEnabled,
    pulumi.Output<String>? region,
    pulumi.Output<String>? reservedRange,
    pulumi.Output<String>? updateTime,
    pulumi.Output<InstanceUserMetadata>? userMetadata,
  }) :
      adminSettings = pulumi.Input.asOptionalInput<InstanceAdminSettings>(adminSettings),
      consumerNetwork = pulumi.Input.asOptionalInput<String>(consumerNetwork),
      controlledEgressConfig = pulumi.Input.asOptionalInput<InstanceControlledEgressConfig>(controlledEgressConfig),
      controlledEgressEnabled = pulumi.Input.asOptionalInput<bool>(controlledEgressEnabled),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      customDomain = pulumi.Input.asOptionalInput<InstanceCustomDomain>(customDomain),
      deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
      denyMaintenancePeriod = pulumi.Input.asOptionalInput<InstanceDenyMaintenancePeriod>(denyMaintenancePeriod),
      egressPublicIp = pulumi.Input.asOptionalInput<String>(egressPublicIp),
      encryptionConfig = pulumi.Input.asOptionalInput<InstanceEncryptionConfig>(encryptionConfig),
      fipsEnabled = pulumi.Input.asOptionalInput<bool>(fipsEnabled),
      geminiEnabled = pulumi.Input.asOptionalInput<bool>(geminiEnabled),
      ingressPrivateIp = pulumi.Input.asOptionalInput<String>(ingressPrivateIp),
      ingressPublicIp = pulumi.Input.asOptionalInput<String>(ingressPublicIp),
      lookerUri = pulumi.Input.asOptionalInput<String>(lookerUri),
      lookerVersion = pulumi.Input.asOptionalInput<String>(lookerVersion),
      maintenanceWindow = pulumi.Input.asOptionalInput<InstanceMaintenanceWindow>(maintenanceWindow),
      name = pulumi.Input.asOptionalInput<String>(name),
      oauthConfig = pulumi.Input.asOptionalInput<InstanceOauthConfig>(oauthConfig),
      periodicExportConfig = pulumi.Input.asOptionalInput<InstancePeriodicExportConfig>(periodicExportConfig),
      platformEdition = pulumi.Input.asOptionalInput<String>(platformEdition),
      privateIpEnabled = pulumi.Input.asOptionalInput<bool>(privateIpEnabled),
      project = pulumi.Input.asOptionalInput<String>(project),
      pscConfig = pulumi.Input.asOptionalInput<InstancePscConfig>(pscConfig),
      pscEnabled = pulumi.Input.asOptionalInput<bool>(pscEnabled),
      publicIpEnabled = pulumi.Input.asOptionalInput<bool>(publicIpEnabled),
      region = pulumi.Input.asOptionalInput<String>(region),
      reservedRange = pulumi.Input.asOptionalInput<String>(reservedRange),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      userMetadata = pulumi.Input.asOptionalInput<InstanceUserMetadata>(userMetadata);

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
      adminSettings: map['adminSettings'] == null ? null : pulumi.Output.create<InstanceAdminSettings>(InstanceAdminSettings.fromMap((map['adminSettings'] as Map).cast<String, dynamic>())),
      consumerNetwork: map['consumerNetwork'] == null ? null : pulumi.Output.create<String>(map['consumerNetwork'] as String),
      controlledEgressConfig: map['controlledEgressConfig'] == null ? null : pulumi.Output.create<InstanceControlledEgressConfig>(InstanceControlledEgressConfig.fromMap((map['controlledEgressConfig'] as Map).cast<String, dynamic>())),
      controlledEgressEnabled: map['controlledEgressEnabled'] == null ? null : pulumi.Output.create<bool>(map['controlledEgressEnabled'] as bool),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      customDomain: map['customDomain'] == null ? null : pulumi.Output.create<InstanceCustomDomain>(InstanceCustomDomain.fromMap((map['customDomain'] as Map).cast<String, dynamic>())),
      deletionPolicy: map['deletionPolicy'] == null ? null : pulumi.Output.create<String>(map['deletionPolicy'] as String),
      denyMaintenancePeriod: map['denyMaintenancePeriod'] == null ? null : pulumi.Output.create<InstanceDenyMaintenancePeriod>(InstanceDenyMaintenancePeriod.fromMap((map['denyMaintenancePeriod'] as Map).cast<String, dynamic>())),
      egressPublicIp: map['egressPublicIp'] == null ? null : pulumi.Output.create<String>(map['egressPublicIp'] as String),
      encryptionConfig: map['encryptionConfig'] == null ? null : pulumi.Output.create<InstanceEncryptionConfig>(InstanceEncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())),
      fipsEnabled: map['fipsEnabled'] == null ? null : pulumi.Output.create<bool>(map['fipsEnabled'] as bool),
      geminiEnabled: map['geminiEnabled'] == null ? null : pulumi.Output.create<bool>(map['geminiEnabled'] as bool),
      ingressPrivateIp: map['ingressPrivateIp'] == null ? null : pulumi.Output.create<String>(map['ingressPrivateIp'] as String),
      ingressPublicIp: map['ingressPublicIp'] == null ? null : pulumi.Output.create<String>(map['ingressPublicIp'] as String),
      lookerUri: map['lookerUri'] == null ? null : pulumi.Output.create<String>(map['lookerUri'] as String),
      lookerVersion: map['lookerVersion'] == null ? null : pulumi.Output.create<String>(map['lookerVersion'] as String),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : pulumi.Output.create<InstanceMaintenanceWindow>(InstanceMaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      oauthConfig: map['oauthConfig'] == null ? null : pulumi.Output.create<InstanceOauthConfig>(InstanceOauthConfig.fromMap((map['oauthConfig'] as Map).cast<String, dynamic>())),
      periodicExportConfig: map['periodicExportConfig'] == null ? null : pulumi.Output.create<InstancePeriodicExportConfig>(InstancePeriodicExportConfig.fromMap((map['periodicExportConfig'] as Map).cast<String, dynamic>())),
      platformEdition: map['platformEdition'] == null ? null : pulumi.Output.create<String>(map['platformEdition'] as String),
      privateIpEnabled: map['privateIpEnabled'] == null ? null : pulumi.Output.create<bool>(map['privateIpEnabled'] as bool),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pscConfig: map['pscConfig'] == null ? null : pulumi.Output.create<InstancePscConfig>(InstancePscConfig.fromMap((map['pscConfig'] as Map).cast<String, dynamic>())),
      pscEnabled: map['pscEnabled'] == null ? null : pulumi.Output.create<bool>(map['pscEnabled'] as bool),
      publicIpEnabled: map['publicIpEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicIpEnabled'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      reservedRange: map['reservedRange'] == null ? null : pulumi.Output.create<String>(map['reservedRange'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      userMetadata: map['userMetadata'] == null ? null : pulumi.Output.create<InstanceUserMetadata>(InstanceUserMetadata.fromMap((map['userMetadata'] as Map).cast<String, dynamic>())),
    );
  }
}

