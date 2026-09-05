import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_config_args.dart';
import 'instance_config_replica.dart';
import 'instance_config_state.dart';

/// A possible configuration for a Cloud Spanner instance. Configurations
/// define the geographic placement of nodes and their replication.
///
///
/// To get more information about InstanceConfig, see:
///
/// * [API documentation](https://cloud.google.com/spanner/docs/reference/rest/v1/projects.instanceConfigs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/spanner/)
///
/// ## Example Usage
///
/// ## Import
///
/// InstanceConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instanceConfigs/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, InstanceConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:spanner/instanceConfig:InstanceConfig default projects/{{project}}/instanceConfigs/{{name}}
/// $ pulumi import gcp:spanner/instanceConfig:InstanceConfig default {{project}}/{{name}}
/// $ pulumi import gcp:spanner/instanceConfig:InstanceConfig default {{name}}
/// ```
class InstanceConfig extends pulumi.CustomResource {
  /// Base configuration name, e.g. nam3, based on which this configuration is created.
  /// Only set for user managed configurations.
  /// baseConfig must refer to a configuration of type GOOGLE_MANAGED in the same project as this configuration.
  late final pulumi.Output<String> baseConfig;
  /// Output only. Whether this instance config is a Google or User Managed Configuration.
  late final pulumi.Output<String> configType;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The name of this instance configuration as it appears in UIs.
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// A unique identifier for the instance configuration. Values are of the
  /// form projects/&lt;project&gt;/instanceConfigs/[a-z][-a-z0-9]*
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The geographic placement of nodes in this instance configuration and their replication properties.
  /// Structure is documented below.
  late final pulumi.Output<List<InstanceConfigReplica>> replicas;

  /// Creates a new [InstanceConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceConfig]. {@macro pulumi_spanner_instance_config_instance_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceConfig(
    String name, {
    InstanceConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:spanner/instanceConfig:InstanceConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    baseConfig = registerOutput<String>('baseConfig');
    configType = registerOutput<String>('configType');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    replicas = registerOutput<List<InstanceConfigReplica>>('replicas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceConfigReplica>(guardedValue, (value) => InstanceConfigReplica.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [InstanceConfig] resource's state with the given [name] and [id].
  static InstanceConfig get(
    String name,
    pulumi.Input<String> id, {
    InstanceConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InstanceConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InstanceConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:spanner/instanceConfig:InstanceConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    baseConfig = registerOutput<String>('baseConfig');
    configType = registerOutput<String>('configType');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    replicas = registerOutput<List<InstanceConfigReplica>>('replicas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceConfigReplica>(guardedValue, (value) => InstanceConfigReplica.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [InstanceConfig] resource.
  InstanceConfig.reference(String urn)
    : super(
        'gcp:spanner/instanceConfig:InstanceConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    baseConfig = registerOutput<String>('baseConfig');
    configType = registerOutput<String>('configType');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    replicas = registerOutput<List<InstanceConfigReplica>>('replicas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceConfigReplica>(guardedValue, (value) => InstanceConfigReplica.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
