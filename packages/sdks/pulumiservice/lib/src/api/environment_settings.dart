import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_settings_args.dart';

/// Updates settings for a Pulumi ESC environment using a partial update (patch) approach. Currently supports toggling deletion protection via the deletionProtected field. When deletionProtected is set to true, the environment cannot be deleted until the setting is explicitly disabled. Only the fields included in the request body are modified; omitted fields retain their current values.
class EnvironmentSettings extends pulumi.CustomResource {
  /// Whether the environment is protected from deletion.
  late final pulumi.Output<bool> deletionProtected;

  /// Creates a new [EnvironmentSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentSettings]. {@macro pulumi_api_esc_environment_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentSettings(
    String name, {
    EnvironmentSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/esc:EnvironmentSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionProtected = registerOutput<bool>('deletionProtected');
  }
}
