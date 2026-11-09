import 'package:pulumi/pulumi.dart' as pulumi;
import 'org_access_token_args.dart';

/// Creates an organization access token in Pulumi Cloud. Organization tokens aren't tied to a user, so they suit CI/CD and other automation.
///
/// The provider must authenticate as a user, for example with a personal access token, to create or delete this resource. Pulumi Cloud rejects organization and team access tokens here, even Admin ones, with `403 Machine tokens are not allowed to perform this operation`, so that one machine token can't mint another. For automation, use the personal access token of a dedicated service-account user, or use `TeamAccessToken`, which has no such restriction.
///
/// {{% examples %}}
/// ## Example Usage
///
/// {{% example %}}
/// ### Token with an expiry and a custom role
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as pulumiservice from "@pulumi/pulumiservice";
///
/// const ciDeployerRole = pulumiservice.getOrganizationRoleOutput({
///     organizationName: "my-org",
///     name: "CI Deployer",
/// });
/// const ciToken = new pulumiservice.OrgAccessToken("ciToken", {
///     organizationName: "my-org",
///     name: "ci-token",
///     description: "Token for CI pipelines",
///     expires: "2027-06-30T17:00:00Z",
///     roleId: ciDeployerRole.roleId,
/// });
/// export const ciTokenValue = ciToken.value;
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_pulumiservice as pulumiservice
///
/// ci_deployer_role = pulumiservice.get_organization_role_output(organization_name="my-org",
///     name="CI Deployer")
/// ci_token = pulumiservice.OrgAccessToken("ciToken",
///     organization_name="my-org",
///     name="ci-token",
///     description="Token for CI pipelines",
///     expires="2027-06-30T17:00:00Z",
///     role_id=ci_deployer_role.role_id)
/// pulumi.export("ciTokenValue", ci_token.value)
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-pulumiservice/sdk/go/pulumiservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ciDeployerRole := pulumiservice.GetOrganizationRoleOutput(ctx, pulumiservice.GetOrganizationRoleOutputArgs{
/// 			OrganizationName: pulumi.String("my-org"),
/// 			Name:             pulumi.String("CI Deployer"),
/// 		}, nil)
/// 		ciToken, err := pulumiservice.NewOrgAccessToken(ctx, "ciToken", &pulumiservice.OrgAccessTokenArgs{
/// 			OrganizationName: pulumi.String("my-org"),
/// 			Name:             pulumi.String("ci-token"),
/// 			Description:      pulumi.String("Token for CI pipelines"),
/// 			Expires:          pulumi.String("2027-06-30T17:00:00Z"),
/// 			RoleId:           ciDeployerRole.RoleId(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ciTokenValue", ciToken.Value)
/// 		return nil
/// 	})
/// }
/// ```
///
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PulumiService = Pulumi.PulumiService;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ciDeployerRole = PulumiService.GetOrganizationRole.Invoke(new()
///     {
///         OrganizationName = "my-org",
///         Name = "CI Deployer",
///     });
///
///     var ciToken = new PulumiService.OrgAccessToken("ciToken", new()
///     {
///         OrganizationName = "my-org",
///         Name = "ci-token",
///         Description = "Token for CI pipelines",
///         Expires = "2027-06-30T17:00:00Z",
///         RoleId = ciDeployerRole.Apply(getOrganizationRoleResult => getOrganizationRoleResult.RoleId),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ciTokenValue"] = ciToken.Value,
///     };
/// });
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.pulumiservice.PulumiserviceFunctions;
/// import com.pulumi.pulumiservice.inputs.GetOrganizationRoleArgs;
/// import com.pulumi.pulumiservice.OrgAccessToken;
/// import com.pulumi.pulumiservice.OrgAccessTokenArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var ciDeployerRole = PulumiserviceFunctions.getOrganizationRole(GetOrganizationRoleArgs.builder()
///             .organizationName("my-org")
///             .name("CI Deployer")
///             .build());
///
///         var ciToken = new OrgAccessToken("ciToken", OrgAccessTokenArgs.builder()
///             .organizationName("my-org")
///             .name("ci-token")
///             .description("Token for CI pipelines")
///             .expires("2027-06-30T17:00:00Z")
///             .roleId(ciDeployerRole.applyValue(_ciDeployerRole -> _ciDeployerRole.roleId()))
///             .build());
///
///         ctx.export("ciTokenValue", ciToken.value());
///     }
/// }
/// ```
///
/// ```yaml
/// variables:
///   ciDeployerRole:
///     fn::invoke:
///       function: pulumiservice:getOrganizationRole
///       arguments:
///         organizationName: my-org
///         name: CI Deployer
/// resources:
///   ciToken:
///     type: pulumiservice:OrgAccessToken
///     properties:
///       organizationName: my-org
///       name: ci-token
///       description: Token for CI pipelines
///       expires: "2027-06-30T17:00:00Z"
///       roleId: ${ciDeployerRole.roleId}
/// outputs:
///   ciTokenValue: ${ciToken.value}
/// ```
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// This resource can be imported using its `id`, which has the format `{organization}/{name}/{tokenId}`, e.g.,
///
/// ```sh
///  $ pulumi import pulumiservice:index:OrgAccessToken my-org-access-token my-org/my-token/a81d4c3e-52f0-4b7a-b9e2-6d0f1c8e2a47
/// ```
///
/// The Pulumi Cloud console doesn't show the token ID. List it with the [Pulumi Cloud REST API](https://www.pulumi.com/docs/reference/cloud-rest-api/):
///
/// ```sh
/// curl -s -H "Authorization: token $PULUMI_ACCESS_TOKEN" \
///   https://api.pulumi.com/api/orgs/my-org/tokens | jq '.tokens[] | {name, id}'
/// ```
///
/// The token's `value` can't be read back from Pulumi Cloud, so it's empty after import.
class OrgAccessToken extends pulumi.CustomResource {
  /// Whether the token has the Admin role. Defaults to `false`. Mutually exclusive with `roleId`: set `admin: true` or `roleId`, not both.
  late final pulumi.Output<bool> admin;
  /// A description of the token.
  late final pulumi.Output<String?> description;
  /// When the token expires, as an RFC 3339 date-time such as `2027-06-30T17:00:00Z`. Omit it for a token that never expires. Pulumi Cloud rejects an expiry that is in the past, more than two years away, or beyond the organization's maximum token lifetime.
  late final pulumi.Output<String?> expires;
  /// The name for the token.
  late final pulumi.Output<String> name;
  /// The organization's name.
  late final pulumi.Output<String> organizationName;
  /// The ID of the role to assign to the token. Use `getOrganizationRole` to look up a role's ID by its name. Mutually exclusive with `admin: true`: set one or the other, not both. Pulumi Cloud accepts both, but some of its permission checks still treat such a token as an Admin whatever its role, so the provider rejects the combination. When neither is set, the token gets the Member role.
  late final pulumi.Output<String?> roleId;
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
          pulumi.CustomResourceOptions(replaceOnChanges: ['admin', 'description', 'expires', 'name', 'organizationName', 'roleId']).merge(options),
          additionalSecretOutputs: const ['value'],
        ) {
    admin = registerOutput<bool>('admin');
    description = registerOutput<String?>('description');
    expires = registerOutput<String?>('expires');
    this.name = registerOutput<String>('name');
    organizationName = registerOutput<String>('organizationName');
    roleId = registerOutput<String?>('roleId');
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
    expires = registerOutput<String?>('expires');
    this.name = registerOutput<String>('name');
    organizationName = registerOutput<String>('organizationName');
    roleId = registerOutput<String?>('roleId');
    value = registerOutput<String>('value', isSecret: true);
  }
}
