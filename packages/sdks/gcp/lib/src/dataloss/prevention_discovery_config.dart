import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_action.dart';
import 'prevention_discovery_config_args.dart';
import 'prevention_discovery_config_error.dart';
import 'prevention_discovery_config_org_config.dart';
import 'prevention_discovery_config_other_cloud_starting_location.dart';
import 'prevention_discovery_config_state.dart';
import 'prevention_discovery_config_target.dart';

/// Configuration for discovery to scan resources for profile generation. Only one discovery configuration may exist per organization, folder, or project.
///
///
/// To get more information about DiscoveryConfig, see:
///
/// * [API documentation](https://cloud.google.com/dlp/docs/reference/rest/v2/projects.locations.discoveryConfigs)
/// * How-to Guides
/// * [Schedule inspection scan](https://cloud.google.com/dlp/docs/schedule-inspection-scan)
///
/// ## Example Usage
///
/// ## Import
///
/// DiscoveryConfig can be imported using any of these accepted formats:
///
/// * `{{parent}}/discoveryConfigs/{{name}}`
/// * `{{parent}}/{{name}}`
///
///
/// When using the `pulumi import` command, DiscoveryConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataloss/preventionDiscoveryConfig:PreventionDiscoveryConfig default {{parent}}/discoveryConfigs/{{name}}
/// $ pulumi import gcp:dataloss/preventionDiscoveryConfig:PreventionDiscoveryConfig default {{parent}}/{{name}}
/// ```
class PreventionDiscoveryConfig extends pulumi.CustomResource {
  /// Actions to execute at the completion of scanning
  /// Structure is documented below.
  late final pulumi.Output<List<PreventionDiscoveryConfigAction>?> actions;
  /// Output only. The creation timestamp of a DiscoveryConfig.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Display Name (max 1000 Chars)
  late final pulumi.Output<String?> displayName;
  /// Output only. A stream of errors encountered when the config was activated. Repeated errors may result in the config automatically being paused. Output only field. Will return the last 100 errors. Whenever the config is modified this list will be cleared.
  /// Structure is documented below.
  late final pulumi.Output<List<PreventionDiscoveryConfigError>> errors;
  /// Detection logic for profile generation
  late final pulumi.Output<List<String>?> inspectTemplates;
  /// Output only. The timestamp of the last time this config was executed
  late final pulumi.Output<String> lastRunTime;
  /// Location to create the discovery config in.
  late final pulumi.Output<String> location;
  /// Unique resource name for the DiscoveryConfig, assigned by the service when the DiscoveryConfig is created.
  late final pulumi.Output<String> name;
  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<PreventionDiscoveryConfigOrgConfig?> orgConfig;
  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<PreventionDiscoveryConfigOtherCloudStartingLocation?> otherCloudStartingLocation;
  /// The parent of the discovery config in any of the following formats:
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  late final pulumi.Output<String> parent;
  /// Required. A status for this configuration
  /// Possible values are: `RUNNING`, `PAUSED`.
  late final pulumi.Output<String?> status;
  /// Target to match against for determining what to scan and how frequently
  /// Structure is documented below.
  late final pulumi.Output<List<PreventionDiscoveryConfigTarget>?> targets;
  /// Output only. The last update timestamp of a DiscoveryConfig.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [PreventionDiscoveryConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PreventionDiscoveryConfig]. {@macro pulumi_dataloss_prevention_discovery_config_prevention_discovery_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PreventionDiscoveryConfig(
    String name, {
    PreventionDiscoveryConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataloss/preventionDiscoveryConfig:PreventionDiscoveryConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    actions = registerOutput<List<PreventionDiscoveryConfigAction>?>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PreventionDiscoveryConfigAction>(guardedValue, (value) => PreventionDiscoveryConfigAction.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    errors = registerOutput<List<PreventionDiscoveryConfigError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PreventionDiscoveryConfigError>(guardedValue, (value) => PreventionDiscoveryConfigError.fromMap((value as Map).cast<String, dynamic>())); });
    inspectTemplates = registerOutput<List<String>?>('inspectTemplates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastRunTime = registerOutput<String>('lastRunTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    orgConfig = registerOutput<PreventionDiscoveryConfigOrgConfig?>('orgConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionDiscoveryConfigOrgConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    otherCloudStartingLocation = registerOutput<PreventionDiscoveryConfigOtherCloudStartingLocation?>('otherCloudStartingLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionDiscoveryConfigOtherCloudStartingLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    parent = registerOutput<String>('parent');
    status = registerOutput<String?>('status');
    targets = registerOutput<List<PreventionDiscoveryConfigTarget>?>('targets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PreventionDiscoveryConfigTarget>(guardedValue, (value) => PreventionDiscoveryConfigTarget.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [PreventionDiscoveryConfig] resource's state with the given [name] and [id].
  static PreventionDiscoveryConfig get(
    String name,
    pulumi.Input<String> id, {
    PreventionDiscoveryConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PreventionDiscoveryConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PreventionDiscoveryConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataloss/preventionDiscoveryConfig:PreventionDiscoveryConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<List<PreventionDiscoveryConfigAction>?>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PreventionDiscoveryConfigAction>(guardedValue, (value) => PreventionDiscoveryConfigAction.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    errors = registerOutput<List<PreventionDiscoveryConfigError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PreventionDiscoveryConfigError>(guardedValue, (value) => PreventionDiscoveryConfigError.fromMap((value as Map).cast<String, dynamic>())); });
    inspectTemplates = registerOutput<List<String>?>('inspectTemplates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastRunTime = registerOutput<String>('lastRunTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    orgConfig = registerOutput<PreventionDiscoveryConfigOrgConfig?>('orgConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionDiscoveryConfigOrgConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    otherCloudStartingLocation = registerOutput<PreventionDiscoveryConfigOtherCloudStartingLocation?>('otherCloudStartingLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionDiscoveryConfigOtherCloudStartingLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    parent = registerOutput<String>('parent');
    status = registerOutput<String?>('status');
    targets = registerOutput<List<PreventionDiscoveryConfigTarget>?>('targets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PreventionDiscoveryConfigTarget>(guardedValue, (value) => PreventionDiscoveryConfigTarget.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [PreventionDiscoveryConfig] resource.
  PreventionDiscoveryConfig.reference(String urn)
    : super(
        'gcp:dataloss/preventionDiscoveryConfig:PreventionDiscoveryConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    actions = registerOutput<List<PreventionDiscoveryConfigAction>?>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PreventionDiscoveryConfigAction>(guardedValue, (value) => PreventionDiscoveryConfigAction.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    errors = registerOutput<List<PreventionDiscoveryConfigError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PreventionDiscoveryConfigError>(guardedValue, (value) => PreventionDiscoveryConfigError.fromMap((value as Map).cast<String, dynamic>())); });
    inspectTemplates = registerOutput<List<String>?>('inspectTemplates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastRunTime = registerOutput<String>('lastRunTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    orgConfig = registerOutput<PreventionDiscoveryConfigOrgConfig?>('orgConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionDiscoveryConfigOrgConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    otherCloudStartingLocation = registerOutput<PreventionDiscoveryConfigOtherCloudStartingLocation?>('otherCloudStartingLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionDiscoveryConfigOtherCloudStartingLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    parent = registerOutput<String>('parent');
    status = registerOutput<String?>('status');
    targets = registerOutput<List<PreventionDiscoveryConfigTarget>?>('targets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PreventionDiscoveryConfigTarget>(guardedValue, (value) => PreventionDiscoveryConfigTarget.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }
}
