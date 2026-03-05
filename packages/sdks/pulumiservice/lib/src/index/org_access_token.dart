import 'package:pulumi/pulumi.dart' as pulumi;
import 'org_access_token_args.dart';

/// The Pulumi Cloud allows users to create access tokens scoped to orgs. Org access tokens is a resource to create them and assign them to an org
class OrgAccessToken extends pulumi.CustomResource {
  /// Optional. True if this is an admin token.
  late final pulumi.Output<bool?> admin;
  /// Optional. Description for the token.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    admin = registerOutput<bool?>('admin');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    organizationName = registerOutput<String>('organizationName');
    value = registerOutput<String>('value');
  }
}
