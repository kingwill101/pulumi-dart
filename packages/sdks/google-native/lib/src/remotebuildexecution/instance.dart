import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_remotebuildexecution_admin_v1alpha_feature_policy_response.dart';
import 'instance_args.dart';

/// Creates a new instance in the specified region. Returns a long running operation which contains an instance on completion. While the long running operation is in progress, any call to `GetInstance` returns an instance in state `CREATING`.
/// Auto-naming is currently not supported for this resource.
class Instance extends pulumi.CustomResource {
  /// The policy to define whether or not RBE features can be used or how they can be used.
  late final pulumi.Output<
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyResponse
  >
  featurePolicy;

  /// The location is a GCP region. Currently only `us-central1` is supported.
  late final pulumi.Output<String> location;

  /// Whether stack driver logging is enabled for the instance.
  late final pulumi.Output<bool> loggingEnabled;

  /// Instance resource name formatted as: `projects/[PROJECT_ID]/instances/[INSTANCE_ID]`. Name should not be populated when creating an instance since it is provided in the `instance_id` field.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// State of the instance.
  late final pulumi.Output<String> state;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_remotebuildexecution_v1alpha_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:remotebuildexecution/v1alpha:Instance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    featurePolicy =
        registerOutput<
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyResponse
        >('featurePolicy');
    location = registerOutput<String>('location');
    loggingEnabled = registerOutput<bool>('loggingEnabled');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
  }
}
