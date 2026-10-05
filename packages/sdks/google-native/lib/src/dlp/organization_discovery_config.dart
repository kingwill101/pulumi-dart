import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_data_profile_action_response.dart';
import 'google_privacy_dlp_v2_discovery_target_response.dart';
import 'google_privacy_dlp_v2_error_response.dart';
import 'google_privacy_dlp_v2_org_config_response.dart';
import 'organization_discovery_config_args.dart';

/// Creates a config for discovery to scan and profile storage.
/// Auto-naming is currently not supported for this resource.
class OrganizationDiscoveryConfig extends pulumi.CustomResource {
  /// Actions to execute at the completion of scanning.
  late final pulumi.Output<List<GooglePrivacyDlpV2DataProfileActionResponse>> actions;
  /// The creation timestamp of a DiscoveryConfig.
  late final pulumi.Output<String> createTime;
  /// Display name (max 100 chars)
  late final pulumi.Output<String> displayName;
  /// A stream of errors encountered when the config was activated. Repeated errors may result in the config automatically being paused. Output only field. Will return the last 100 errors. Whenever the config is modified this list will be cleared.
  late final pulumi.Output<List<GooglePrivacyDlpV2ErrorResponse>> errors;
  /// Detection logic for profile generation. Not all template features are used by Discovery. FindingLimits, include_quote and exclude_info_types have no impact on Discovery. Multiple templates may be provided if there is data in multiple regions. At most one template must be specified per-region (including "global"). Each region is scanned using the applicable template. If no region-specific template is specified, but a "global" template is specified, it will be copied to that region and used instead. If no global or region-specific template is provided for a region with data, that region's data will not be scanned. For more information, see https://cloud.google.com/dlp/docs/data-profiles#data-residency.
  late final pulumi.Output<List<String>> inspectTemplates;
  /// The timestamp of the last time this config was executed.
  late final pulumi.Output<String> lastRunTime;
  late final pulumi.Output<String> location;
  /// Unique resource name for the DiscoveryConfig, assigned by the service when the DiscoveryConfig is created, for example `projects/dlp-test-project/locations/global/discoveryConfigs/53234423`.
  late final pulumi.Output<String> name;
  /// Only set when the parent is an org.
  late final pulumi.Output<GooglePrivacyDlpV2OrgConfigResponse> orgConfig;
  late final pulumi.Output<String> organizationId;
  /// A status for this configuration.
  late final pulumi.Output<String> status;
  /// Target to match against for determining what to scan and how frequently.
  late final pulumi.Output<List<GooglePrivacyDlpV2DiscoveryTargetResponse>> targets;
  /// The last update timestamp of a DiscoveryConfig.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [OrganizationDiscoveryConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationDiscoveryConfig]. {@macro pulumi_dlp_v2_organization_discovery_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationDiscoveryConfig(
    String name, {
    OrganizationDiscoveryConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dlp/v2:OrganizationDiscoveryConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['location', 'organizationId']).merge(options),
        ) {
    actions = registerOutput<List<GooglePrivacyDlpV2DataProfileActionResponse>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GooglePrivacyDlpV2DataProfileActionResponse>(guardedValue, (value) => GooglePrivacyDlpV2DataProfileActionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    errors = registerOutput<List<GooglePrivacyDlpV2ErrorResponse>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GooglePrivacyDlpV2ErrorResponse>(guardedValue, (value) => GooglePrivacyDlpV2ErrorResponse.fromMap((value as Map).cast<String, dynamic>())); });
    inspectTemplates = registerOutput<List<String>>('inspectTemplates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastRunTime = registerOutput<String>('lastRunTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    orgConfig = registerOutput<GooglePrivacyDlpV2OrgConfigResponse>('orgConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GooglePrivacyDlpV2OrgConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    organizationId = registerOutput<String>('organizationId');
    status = registerOutput<String>('status');
    targets = registerOutput<List<GooglePrivacyDlpV2DiscoveryTargetResponse>>('targets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GooglePrivacyDlpV2DiscoveryTargetResponse>(guardedValue, (value) => GooglePrivacyDlpV2DiscoveryTargetResponse.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [OrganizationDiscoveryConfig] resource.
  OrganizationDiscoveryConfig.reference(String urn)
    : super(
        'google-native:dlp/v2:OrganizationDiscoveryConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    actions = registerOutput<List<GooglePrivacyDlpV2DataProfileActionResponse>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GooglePrivacyDlpV2DataProfileActionResponse>(guardedValue, (value) => GooglePrivacyDlpV2DataProfileActionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    errors = registerOutput<List<GooglePrivacyDlpV2ErrorResponse>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GooglePrivacyDlpV2ErrorResponse>(guardedValue, (value) => GooglePrivacyDlpV2ErrorResponse.fromMap((value as Map).cast<String, dynamic>())); });
    inspectTemplates = registerOutput<List<String>>('inspectTemplates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastRunTime = registerOutput<String>('lastRunTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    orgConfig = registerOutput<GooglePrivacyDlpV2OrgConfigResponse>('orgConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GooglePrivacyDlpV2OrgConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    organizationId = registerOutput<String>('organizationId');
    status = registerOutput<String>('status');
    targets = registerOutput<List<GooglePrivacyDlpV2DiscoveryTargetResponse>>('targets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GooglePrivacyDlpV2DiscoveryTargetResponse>(guardedValue, (value) => GooglePrivacyDlpV2DiscoveryTargetResponse.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }
}
