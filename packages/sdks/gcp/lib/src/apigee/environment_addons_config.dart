import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_addons_config_args.dart';
import 'environment_addons_config_state.dart';

/// Enable/Disable add-ons for an Apigee environment.
///
///
/// To get more information about EnvironmentAddonsConfig, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.addonsConfig/setAddonEnablement)
/// * How-to Guides
/// * [Enable Analytics Add-On](https://cloud.google.com/apigee/docs/api-platform/reference/manage-analytics-add-on)
///
/// ## Example Usage
///
/// ## Import
///
/// EnvironmentAddonsConfig can be imported using any of these accepted formats:
///
/// * `{{env_id}}`
///
/// When using the `pulumi import` command, EnvironmentAddonsConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/environmentAddonsConfig:EnvironmentAddonsConfig default {{env_id}}
/// ```
class EnvironmentAddonsConfig extends pulumi.CustomResource {
  /// Flag to enable/disable Analytics.
  late final pulumi.Output<bool?> analyticsEnabled;
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  late final pulumi.Output<String> envId;

  /// Creates a new [EnvironmentAddonsConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentAddonsConfig]. {@macro pulumi_apigee_environment_addons_config_environment_addons_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentAddonsConfig(
    String name, {
    EnvironmentAddonsConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/environmentAddonsConfig:EnvironmentAddonsConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    analyticsEnabled = registerOutput<bool?>('analyticsEnabled');
    envId = registerOutput<String>('envId');
  }

  /// Gets an existing [EnvironmentAddonsConfig] resource's state with the given [name] and [id].
  static EnvironmentAddonsConfig get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentAddonsConfigState? state,
  }) {
    return EnvironmentAddonsConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EnvironmentAddonsConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/environmentAddonsConfig:EnvironmentAddonsConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    analyticsEnabled = registerOutput<bool?>('analyticsEnabled');
    envId = registerOutput<String>('envId');
  }
}
