import 'package:pulumi/pulumi.dart' as pulumi;
import 'org_access_token_args.dart';

/// Creates an organization access token in Pulumi Cloud. Organization tokens aren't tied to a user, so they suit CI/CD and other automation.
///
/// The provider must authenticate as a user, for example with a personal access token, to create or delete this resource. Pulumi Cloud rejects organization and team access tokens here, even Admin ones, with `403 Machine tokens are not allowed to perform this operation`, so that one machine token can't mint another. For automation, use the personal access token of a dedicated service-account user, or use `TeamAccessToken`, which has no such restriction.
class OrgAccessToken extends pulumi.CustomResource {
  /// Whether the token has the Admin role. Defaults to `false`.
  late final pulumi.Output<bool> admin;
  /// A description of the token.
  late final pulumi.Output<String?> description;
  /// The name for the token.
  late final pulumi.Output<String> name;
  /// The organization's name.
  late final pulumi.Output<String> organizationName;
  /// The token's value.
  late final pulumi.Output<String> value;

  /// Creates a new [OrgAccessToken].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrgAccessToken]. {@macro pulumi_index_org_access_token_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrgAccessToken(
    String name, {
    OrgAccessTokenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:OrgAccessToken',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(replaceOnChanges: ['admin', 'description', 'name', 'organizationName']).merge(options),
          additionalSecretOutputs: const ['value'],
        ) {
    admin = registerOutput<bool>('admin');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    organizationName = registerOutput<String>('organizationName');
    value = registerOutput<String>('value', isSecret: true);
  }

  /// Creates a typed reference to an existing [OrgAccessToken] resource.
  OrgAccessToken.reference(String urn)
    : super(
        'pulumiservice:index:OrgAccessToken',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['value'],
        isResourceReference: true,
      ) {
    admin = registerOutput<bool>('admin');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    organizationName = registerOutput<String>('organizationName');
    value = registerOutput<String>('value', isSecret: true);
  }
}
