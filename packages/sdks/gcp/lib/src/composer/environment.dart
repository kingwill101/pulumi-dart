import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_args.dart';
import 'environment_config.dart';
import 'environment_state.dart';
import 'environment_storage_config.dart';

/// ## Import
///
/// Environment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/environments/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Environment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:composer/environment:Environment default projects/{{project}}/locations/{{region}}/environments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:composer/environment:Environment default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:composer/environment:Environment default {{name}}
/// ```
class Environment extends pulumi.CustomResource {
  /// Configuration parameters for this environment.
  late final pulumi.Output<EnvironmentConfig> config;
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: a-z?. Label values must be between 0 and 63 characters long and must conform to the regular expression (a-z?)?. No more than 64 labels can be associated with a given environment. Both keys and values must be <= 128 bytes in size.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Name of the environment.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The location or Compute Engine region for the environment.
  late final pulumi.Output<String> region;
  /// Configuration options for storage used by Composer environment.
  late final pulumi.Output<EnvironmentStorageConfig> storageConfig;

  /// Creates a new [Environment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Environment]. {@macro pulumi_composer_environment_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Environment(
    String name, {
    EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:composer/environment:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.config = registerOutput<EnvironmentConfig>('config');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.storageConfig = registerOutput<EnvironmentStorageConfig>('storageConfig');
  }

  /// Gets an existing [Environment] resource's state with the given [name] and [id].
  static Environment get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentState? state,
  }) {
    return Environment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Environment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:composer/environment:Environment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.config = registerOutput<EnvironmentConfig>('config');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.storageConfig = registerOutput<EnvironmentStorageConfig>('storageConfig');
  }
}
