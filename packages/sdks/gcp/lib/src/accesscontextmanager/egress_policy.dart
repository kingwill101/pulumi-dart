import 'package:pulumi/pulumi.dart' as pulumi;
import 'egress_policy_args.dart';
import 'egress_policy_state.dart';

/// This resource has been deprecated, please refer to ServicePerimeterEgressPolicy.
///
///
/// To get more information about EgressPolicy, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies.servicePerimeters#egresspolicy)
///
/// ## Import
///
/// EgressPolicy can be imported using any of these accepted formats:
///
/// * `{{egress_policy_name}}/{{resource}}`
///
/// When using the `pulumi import` command, EgressPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/egressPolicy:EgressPolicy default {{egress_policy_name}}/{{resource}}
/// ```
class EgressPolicy extends pulumi.CustomResource {
  /// The name of the Access Policy this resource belongs to.
  late final pulumi.Output<String> accessPolicyId;

  /// The name of the Service Perimeter to add this resource to.
  late final pulumi.Output<String> egressPolicyName;

  /// A GCP resource that is inside of the service perimeter.
  late final pulumi.Output<String> resource;

  /// Creates a new [EgressPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EgressPolicy]. {@macro pulumi_accesscontextmanager_egress_policy_egress_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EgressPolicy(
    String name, {
    EgressPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:accesscontextmanager/egressPolicy:EgressPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessPolicyId = registerOutput<String>('accessPolicyId');
    egressPolicyName = registerOutput<String>('egressPolicyName');
    resource = registerOutput<String>('resource');
  }

  /// Gets an existing [EgressPolicy] resource's state with the given [name] and [id].
  static EgressPolicy get(
    String name,
    pulumi.Input<String> id, {
    EgressPolicyState? state,
  }) {
    return EgressPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EgressPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:accesscontextmanager/egressPolicy:EgressPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessPolicyId = registerOutput<String>('accessPolicyId');
    egressPolicyName = registerOutput<String>('egressPolicyName');
    resource = registerOutput<String>('resource');
  }
}
