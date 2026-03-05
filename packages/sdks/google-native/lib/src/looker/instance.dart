import 'package:pulumi/pulumi.dart' as pulumi;
import 'admin_settings_response.dart';
import 'custom_domain_response.dart';
import 'deny_maintenance_period_response.dart';
import 'encryption_config_response.dart';
import 'instance_args.dart';
import 'maintenance_schedule_response.dart';
import 'maintenance_window_response.dart';
import 'oauth_config_response.dart';
import 'user_metadata_response.dart';

/// Creates a new Instance in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Instance extends pulumi.CustomResource {
  /// Looker Instance Admin settings.
  late final pulumi.Output<AdminSettingsResponse> adminSettings;
  /// Network name in the consumer project. Format: `projects/{project}/global/networks/{network}`. Note that the consumer network may be in a different GCP project than the consumer project that is hosting the Looker Instance.
  late final pulumi.Output<String> consumerNetwork;
  /// The time when the Looker instance provisioning was first requested.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<CustomDomainResponse> customDomain;
  /// Maintenance denial period for this instance.
  late final pulumi.Output<DenyMaintenancePeriodResponse> denyMaintenancePeriod;
  /// Public Egress IP (IPv4).
  late final pulumi.Output<String> egressPublicIp;
  /// Encryption configuration (CMEK). Only set if CMEK has been enabled on the instance.
  late final pulumi.Output<EncryptionConfigResponse> encryptionConfig;
  /// Private Ingress IP (IPv4).
  late final pulumi.Output<String> ingressPrivateIp;
  /// Public Ingress IP (IPv4).
  late final pulumi.Output<String> ingressPublicIp;
  /// Required. The unique instance identifier. Must contain only lowercase letters, numbers, or hyphens, with the first character a letter and the last a letter or a number. 63 characters maximum.
  late final pulumi.Output<String> instanceId;
  /// Last computed maintenance denial period for this instance.
  late final pulumi.Output<DenyMaintenancePeriodResponse> lastDenyMaintenancePeriod;
  late final pulumi.Output<String> location;
  /// Looker instance URI which can be used to access the Looker Instance UI.
  late final pulumi.Output<String> lookerUri;
  /// The Looker version that the instance is using.
  late final pulumi.Output<String> lookerVersion;
  /// Maintenance schedule for this instance.
  late final pulumi.Output<MaintenanceScheduleResponse> maintenanceSchedule;
  /// Maintenance window for this instance.
  late final pulumi.Output<MaintenanceWindowResponse> maintenanceWindow;
  /// Format: `projects/{project}/locations/{location}/instances/{instance}`.
  late final pulumi.Output<String> name;
  /// Looker instance OAuth login settings.
  late final pulumi.Output<OAuthConfigResponse> oauthConfig;
  /// Platform edition.
  late final pulumi.Output<String> platformEdition;
  /// Whether private IP is enabled on the Looker instance.
  late final pulumi.Output<bool> privateIpEnabled;
  late final pulumi.Output<String> project;
  /// Whether public IP is enabled on the Looker instance.
  late final pulumi.Output<bool> publicIpEnabled;
  /// Name of a reserved IP address range within the Instance.consumer_network, to be used for private services access connection. May or may not be specified in a create request.
  late final pulumi.Output<String> reservedRange;
  /// The state of the instance.
  late final pulumi.Output<String> state;
  /// The time when the Looker instance was last updated.
  late final pulumi.Output<String> updateTime;
  /// User metadata.
  late final pulumi.Output<UserMetadataResponse> userMetadata;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_looker_v1_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:looker/v1:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminSettings = registerOutput<AdminSettingsResponse>('adminSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AdminSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    consumerNetwork = registerOutput<String>('consumerNetwork');
    createTime = registerOutput<String>('createTime');
    customDomain = registerOutput<CustomDomainResponse>('customDomain', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomDomainResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    denyMaintenancePeriod = registerOutput<DenyMaintenancePeriodResponse>('denyMaintenancePeriod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DenyMaintenancePeriodResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    egressPublicIp = registerOutput<String>('egressPublicIp');
    encryptionConfig = registerOutput<EncryptionConfigResponse>('encryptionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EncryptionConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ingressPrivateIp = registerOutput<String>('ingressPrivateIp');
    ingressPublicIp = registerOutput<String>('ingressPublicIp');
    instanceId = registerOutput<String>('instanceId');
    lastDenyMaintenancePeriod = registerOutput<DenyMaintenancePeriodResponse>('lastDenyMaintenancePeriod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DenyMaintenancePeriodResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    lookerUri = registerOutput<String>('lookerUri');
    lookerVersion = registerOutput<String>('lookerVersion');
    maintenanceSchedule = registerOutput<MaintenanceScheduleResponse>('maintenanceSchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MaintenanceScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maintenanceWindow = registerOutput<MaintenanceWindowResponse>('maintenanceWindow', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MaintenanceWindowResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    oauthConfig = registerOutput<OAuthConfigResponse>('oauthConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OAuthConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    platformEdition = registerOutput<String>('platformEdition');
    privateIpEnabled = registerOutput<bool>('privateIpEnabled');
    project = registerOutput<String>('project');
    publicIpEnabled = registerOutput<bool>('publicIpEnabled');
    reservedRange = registerOutput<String>('reservedRange');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    userMetadata = registerOutput<UserMetadataResponse>('userMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UserMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
