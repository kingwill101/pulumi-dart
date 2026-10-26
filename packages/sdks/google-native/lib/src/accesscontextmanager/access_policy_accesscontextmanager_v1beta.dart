import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_accesscontextmanager_v1beta_args.dart';

/// Create an `AccessPolicy`. Fails if this organization already has a `AccessPolicy`. The longrunning Operation will have a successful status once the `AccessPolicy` has propagated to long-lasting storage. Syntactic and basic semantic errors will be returned in `metadata` as a BadRequest proto.
/// Auto-naming is currently not supported for this resource.
class AccessPolicyAccesscontextmanagerV1beta extends pulumi.CustomResource {
  /// Resource name of the `AccessPolicy`. Format: `accessPolicies/{policy_id}`
  late final pulumi.Output<String> name;
  /// The parent of this `AccessPolicy` in the Cloud Resource Hierarchy. Currently immutable once created. Format: `organizations/{organization_id}`
  late final pulumi.Output<String> parent;
  /// Human readable title. Does not affect behavior.
  late final pulumi.Output<String> title;

  /// Creates a new [AccessPolicyAccesscontextmanagerV1beta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPolicyAccesscontextmanagerV1beta]. {@macro pulumi_accesscontextmanager_v1beta_access_policy_accesscontextmanager_v1beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPolicyAccesscontextmanagerV1beta(
    String name, {
    AccessPolicyAccesscontextmanagerV1betaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:accesscontextmanager/v1beta:AccessPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0').merge(options),
        ) {
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    title = registerOutput<String>('title');
  }

  /// Creates a typed reference to an existing [AccessPolicyAccesscontextmanagerV1beta] resource.
  AccessPolicyAccesscontextmanagerV1beta.reference(String urn)
    : super(
        'google-native:accesscontextmanager/v1beta:AccessPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    title = registerOutput<String>('title');
  }
}
