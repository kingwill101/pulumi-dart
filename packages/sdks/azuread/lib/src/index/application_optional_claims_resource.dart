import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_optional_claims_access_token.dart';
import 'application_optional_claims_args.dart';
import 'application_optional_claims_id_token.dart';
import 'application_optional_claims_saml2_token.dart';
import 'application_optional_claims_state.dart';

/// Manages optional claims for an application registration.
///
/// This resource is analogous to the `optional_claims` block in the `azuread.Application` resource. When using these resources together, you should use the `ignore_changes` lifecycle meta-argument (see example below).
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `Application.ReadWrite.OwnedBy` or `Application.ReadWrite.All`
///
/// > When using the `Application.ReadWrite.OwnedBy` application role, the principal being used to run Terraform must be an owner of the application.
///
/// When authenticated with a user principal, this resource may require one of the following directory roles: `Application Administrator` or `Global Administrator`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.ApplicationRegistration("example", {displayName: "example"});
/// const exampleApplicationOptionalClaims = new azuread.ApplicationOptionalClaims("example", {
///     applicationId: example.id,
///     accessTokens: [
///         {
///             name: "myclaim",
///         },
///         {
///             name: "otherclaim",
///         },
///     ],
///     idTokens: [{
///         name: "userclaim",
///         source: "user",
///         essential: true,
///         additionalProperties: ["emit_as_roles"],
///     }],
///     saml2Tokens: [{
///         name: "samlexample",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.ApplicationRegistration("example", display_name="example")
/// example_application_optional_claims = azuread.ApplicationOptionalClaims("example",
///     application_id=example.id,
///     access_tokens=[
///         {
///             "name": "myclaim",
///         },
///         {
///             "name": "otherclaim",
///         },
///     ],
///     id_tokens=[{
///         "name": "userclaim",
///         "source": "user",
///         "essential": True,
///         "additional_properties": ["emit_as_roles"],
///     }],
///     saml2_tokens=[{
///         "name": "samlexample",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.ApplicationRegistration("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var exampleApplicationOptionalClaims = new AzureAD.ApplicationOptionalClaims("example", new()
///     {
///         ApplicationId = example.Id,
///         AccessTokens = new[]
///         {
///             new AzureAD.Inputs.ApplicationOptionalClaimsAccessTokenArgs
///             {
///                 Name = "myclaim",
///             },
///             new AzureAD.Inputs.ApplicationOptionalClaimsAccessTokenArgs
///             {
///                 Name = "otherclaim",
///             },
///         },
///         IdTokens = new[]
///         {
///             new AzureAD.Inputs.ApplicationOptionalClaimsIdTokenArgs
///             {
///                 Name = "userclaim",
///                 Source = "user",
///                 Essential = true,
///                 AdditionalProperties = new[]
///                 {
///                     "emit_as_roles",
///                 },
///             },
///         },
///         Saml2Tokens = new[]
///         {
///             new AzureAD.Inputs.ApplicationOptionalClaimsSaml2TokenArgs
///             {
///                 Name = "samlexample",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := azuread.NewApplicationRegistration(ctx, "example", &azuread.ApplicationRegistrationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewApplicationOptionalClaims(ctx, "example", &azuread.ApplicationOptionalClaimsArgs{
/// 			ApplicationId: example.ID(),
/// 			AccessTokens: azuread.ApplicationOptionalClaimsAccessTokenArray{
/// 				&azuread.ApplicationOptionalClaimsAccessTokenArgs{
/// 					Name: pulumi.String("myclaim"),
/// 				},
/// 				&azuread.ApplicationOptionalClaimsAccessTokenArgs{
/// 					Name: pulumi.String("otherclaim"),
/// 				},
/// 			},
/// 			IdTokens: azuread.ApplicationOptionalClaimsIdTokenArray{
/// 				&azuread.ApplicationOptionalClaimsIdTokenArgs{
/// 					Name:      pulumi.String("userclaim"),
/// 					Source:    pulumi.String("user"),
/// 					Essential: pulumi.Bool(true),
/// 					AdditionalProperties: pulumi.StringArray{
/// 						pulumi.String("emit_as_roles"),
/// 					},
/// 				},
/// 			},
/// 			Saml2Tokens: azuread.ApplicationOptionalClaimsSaml2TokenArray{
/// 				&azuread.ApplicationOptionalClaimsSaml2TokenArgs{
/// 					Name: pulumi.String("samlexample"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azuread.ApplicationRegistration;
/// import com.pulumi.azuread.ApplicationRegistrationArgs;
/// import com.pulumi.azuread.ApplicationOptionalClaims;
/// import com.pulumi.azuread.ApplicationOptionalClaimsArgs;
/// import com.pulumi.azuread.inputs.ApplicationOptionalClaimsAccessTokenArgs;
/// import com.pulumi.azuread.inputs.ApplicationOptionalClaimsIdTokenArgs;
/// import com.pulumi.azuread.inputs.ApplicationOptionalClaimsSaml2TokenArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new ApplicationRegistration("example", ApplicationRegistrationArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleApplicationOptionalClaims = new ApplicationOptionalClaims("exampleApplicationOptionalClaims", ApplicationOptionalClaimsArgs.builder()
///             .applicationId(example.id())
///             .accessTokens(
///                 ApplicationOptionalClaimsAccessTokenArgs.builder()
///                     .name("myclaim")
///                     .build(),
///                 ApplicationOptionalClaimsAccessTokenArgs.builder()
///                     .name("otherclaim")
///                     .build())
///             .idTokens(ApplicationOptionalClaimsIdTokenArgs.builder()
///                 .name("userclaim")
///                 .source("user")
///                 .essential(true)
///                 .additionalProperties("emit_as_roles")
///                 .build())
///             .saml2Tokens(ApplicationOptionalClaimsSaml2TokenArgs.builder()
///                 .name("samlexample")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:ApplicationRegistration
///     properties:
///       displayName: example
///   exampleApplicationOptionalClaims:
///     type: azuread:ApplicationOptionalClaims
///     name: example
///     properties:
///       applicationId: ${example.id}
///       accessTokens:
///         - name: myclaim
///         - name: otherclaim
///       idTokens:
///         - name: userclaim
///           source: user
///           essential: true
///           additionalProperties:
///             - emit_as_roles
///       saml2Tokens:
///         - name: samlexample
/// ```
///
///
/// ## Import
///
/// Application Optional Claims can be imported using the object ID of the application, in the following format.
///
/// ```sh
/// $ pulumi import azuread:index/applicationOptionalClaims:ApplicationOptionalClaims example /applications/00000000-0000-0000-0000-000000000000
/// ```
class ApplicationOptionalClaimsResource extends pulumi.CustomResource {
  /// One or more `access_token` blocks as documented below.
  late final pulumi.Output<List<ApplicationOptionalClaimsAccessToken>?> accessTokens;
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> applicationId;
  /// One or more `id_token` blocks as documented below.
  late final pulumi.Output<List<ApplicationOptionalClaimsIdToken>?> idTokens;
  /// One or more `saml2_token` blocks as documented below.
  ///
  /// > At least one of `access_token`, `id_token` or `saml2_token` must be specified
  late final pulumi.Output<List<ApplicationOptionalClaimsSaml2Token>?> saml2Tokens;

  /// Creates a new [ApplicationOptionalClaimsResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationOptionalClaimsResource]. {@macro pulumi_index_application_optional_claims_application_optional_claims_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationOptionalClaimsResource(
    String name, {
    ApplicationOptionalClaimsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/applicationOptionalClaims:ApplicationOptionalClaims',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessTokens = registerOutput<List<ApplicationOptionalClaimsAccessToken>?>('accessTokens');
    this.applicationId = registerOutput<String>('applicationId');
    this.idTokens = registerOutput<List<ApplicationOptionalClaimsIdToken>?>('idTokens');
    this.saml2Tokens = registerOutput<List<ApplicationOptionalClaimsSaml2Token>?>('saml2Tokens');
  }

  /// Gets an existing [ApplicationOptionalClaimsResource] resource's state with the given [name] and [id].
  static ApplicationOptionalClaimsResource get(
    String name,
    pulumi.Input<String> id, {
    ApplicationOptionalClaimsState? state,
  }) {
    return ApplicationOptionalClaimsResource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationOptionalClaimsResource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/applicationOptionalClaims:ApplicationOptionalClaims',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessTokens = registerOutput<List<ApplicationOptionalClaimsAccessToken>?>('accessTokens');
    this.applicationId = registerOutput<String>('applicationId');
    this.idTokens = registerOutput<List<ApplicationOptionalClaimsIdToken>?>('idTokens');
    this.saml2Tokens = registerOutput<List<ApplicationOptionalClaimsSaml2Token>?>('saml2Tokens');
  }
}
