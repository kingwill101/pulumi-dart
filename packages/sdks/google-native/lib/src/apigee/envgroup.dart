import 'package:pulumi/pulumi.dart' as pulumi;
import 'envgroup_args.dart';

/// Creates a new environment group.
class Envgroup extends pulumi.CustomResource {
  /// The time at which the environment group was created as milliseconds since epoch.
  late final pulumi.Output<String> createdAt;

  /// Host names for this environment group.
  late final pulumi.Output<List<String>> hostnames;

  /// The time at which the environment group was last updated as milliseconds since epoch.
  late final pulumi.Output<String> lastModifiedAt;

  /// ID of the environment group. Overrides any ID in the environment_group resource.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// State of the environment group. Values other than ACTIVE means the resource is not ready to use.
  late final pulumi.Output<String> state;

  /// Creates a new [Envgroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Envgroup]. {@macro pulumi_apigee_v1_envgroup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Envgroup(
    String name, {
    EnvgroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:apigee/v1:Envgroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createdAt = registerOutput<String>('createdAt');
    hostnames = registerOutput<List<String>>('hostnames');
    lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    state = registerOutput<String>('state');
  }
}
