import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_member_entity_access_args.dart';

/// Grants one organization member a permission set on one stack, environment or Insights account, as in the entity access section of the Pulumi Cloud console. See the [entity access docs](https://www.pulumi.com/docs/administration/concepts/rbac/entities/). Each resource manages the grant of one member on one entity. Other grants of the member, and grants of other members on the same entity, are not touched, and destroying the resource removes only this grant. Set either `permission`, for a built-in permission set, or `permissionSetId`, for a custom one.
///
/// ## Import
///
/// This resource can be imported using its `id`, which has the format `{organization}/{username}/{entityType}/{entityName}`, e.g.,
///
/// ```sh
///  $ pulumi import pulumiservice:index:OrganizationMemberEntityAccess my-organization-member-entity-access my-org/alice/stack/my-project/dev
/// ```
///
/// `entityType` is `stack`, `environment` or `insightsAccount`. `entityName` is `{project}/{stack}`, `{project}/{environment}` or the account name.
class OrganizationMemberEntityAccess extends pulumi.CustomResource {
  /// The ID of the entity Pulumi Cloud stores the grant against.
  late final pulumi.Output<String> entityId;
  /// The name of the entity: `{project}/{stack}` for a stack, `{project}/{environment}` for an environment, or the account name for an Insights account.
  late final pulumi.Output<String> entityName;
  /// The kind of entity to grant access to. One of `stack`, `environment` or `insightsAccount`.
  late final pulumi.Output<String> entityType;
  /// The Pulumi Cloud organization name.
  late final pulumi.Output<String> organizationName;
  /// The built-in permission set to grant, for example `stack-read`, `stack-write`, `stack-admin`, `environment-read`, `environment-open`, `environment-write`, `environment-admin`, `insights-account-read`, `insights-account-write` or `insights-account-admin`. Exactly one of `permission` and `permissionSetId` must be set.
  late final pulumi.Output<String?> permission;
  /// The ID of a custom permission set to grant. Exactly one of `permission` and `permissionSetId` must be set.
  late final pulumi.Output<String?> permissionSetId;
  /// The display name of the granted permission set.
  late final pulumi.Output<String> permissionSetName;
  /// The Pulumi Cloud username of the organization member.
  late final pulumi.Output<String> username;

  /// Creates a new [OrganizationMemberEntityAccess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationMemberEntityAccess]. {@macro pulumi_index_organization_member_entity_access_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationMemberEntityAccess(
    String name, {
    OrganizationMemberEntityAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:OrganizationMemberEntityAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(replaceOnChanges: ['entityName', 'entityType', 'organizationName', 'username']).merge(options),
        ) {
    entityId = registerOutput<String>('entityId');
    entityName = registerOutput<String>('entityName');
    entityType = registerOutput<String>('entityType');
    organizationName = registerOutput<String>('organizationName');
    permission = registerOutput<String?>('permission');
    permissionSetId = registerOutput<String?>('permissionSetId');
    permissionSetName = registerOutput<String>('permissionSetName');
    username = registerOutput<String>('username');
  }

  /// Creates a typed reference to an existing [OrganizationMemberEntityAccess] resource.
  OrganizationMemberEntityAccess.reference(String urn)
    : super(
        'pulumiservice:index:OrganizationMemberEntityAccess',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    entityId = registerOutput<String>('entityId');
    entityName = registerOutput<String>('entityName');
    entityType = registerOutput<String>('entityType');
    organizationName = registerOutput<String>('organizationName');
    permission = registerOutput<String?>('permission');
    permissionSetId = registerOutput<String?>('permissionSetId');
    permissionSetName = registerOutput<String>('permissionSetName');
    username = registerOutput<String>('username');
  }
}
