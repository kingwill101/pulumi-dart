import 'package:pulumi/pulumi.dart' as pulumi;
import 'oauth_client_credential_args.dart';
import 'oauth_client_credential_state.dart';

/// Represents an OAuth Client Credential. Used to authenticate an OAuth Client
/// while accessing Google Cloud resources on behalf of a Workforce Identity Federation user
/// by using OAuth 2.0 Protocol.
///
///
/// To get more information about OauthClientCredential, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v1/projects.locations.oauthClients.credentials)
/// * How-to Guides
/// * [Managing OAuth clients](https://cloud.google.com/iam/docs/workforce-manage-oauth-app#manage-clients)
///
///
///
/// ## Example Usage
///
/// ### Iam Oauth Client Credential Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const oauthClient = new gcp.iam.OauthClient("oauth_client", {
///     oauthClientId: "example-client-id",
///     location: "global",
///     allowedGrantTypes: ["AUTHORIZATION_CODE_GRANT"],
///     allowedRedirectUris: ["https://www.example.com"],
///     allowedScopes: ["https://www.googleapis.com/auth/cloud-platform"],
///     clientType: "CONFIDENTIAL_CLIENT",
/// });
/// const example = new gcp.iam.OauthClientCredential("example", {
///     oauthclient: oauthClient.oauthClientId,
///     location: oauthClient.location,
///     oauthClientCredentialId: "cred-id",
///     disabled: true,
///     displayName: "Display Name of credential",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// oauth_client = gcp.iam.OauthClient("oauth_client",
///     oauth_client_id="example-client-id",
///     location="global",
///     allowed_grant_types=["AUTHORIZATION_CODE_GRANT"],
///     allowed_redirect_uris=["https://www.example.com"],
///     allowed_scopes=["https://www.googleapis.com/auth/cloud-platform"],
///     client_type="CONFIDENTIAL_CLIENT")
/// example = gcp.iam.OauthClientCredential("example",
///     oauthclient=oauth_client.oauth_client_id,
///     location=oauth_client.location,
///     oauth_client_credential_id="cred-id",
///     disabled=True,
///     display_name="Display Name of credential")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var oauthClient = new Gcp.Iam.OauthClient("oauth_client", new()
///     {
///         OauthClientId = "example-client-id",
///         Location = "global",
///         AllowedGrantTypes = new[]
///         {
///             "AUTHORIZATION_CODE_GRANT",
///         },
///         AllowedRedirectUris = new[]
///         {
///             "https://www.example.com",
///         },
///         AllowedScopes = new[]
///         {
///             "https://www.googleapis.com/auth/cloud-platform",
///         },
///         ClientType = "CONFIDENTIAL_CLIENT",
///     });
///
///     var example = new Gcp.Iam.OauthClientCredential("example", new()
///     {
///         Oauthclient = oauthClient.OauthClientId,
///         Location = oauthClient.Location,
///         OauthClientCredentialId = "cred-id",
///         Disabled = true,
///         DisplayName = "Display Name of credential",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		oauthClient, err := iam.NewOauthClient(ctx, "oauth_client", &iam.OauthClientArgs{
/// 			OauthClientId: pulumi.String("example-client-id"),
/// 			Location:      pulumi.String("global"),
/// 			AllowedGrantTypes: pulumi.StringArray{
/// 				pulumi.String("AUTHORIZATION_CODE_GRANT"),
/// 			},
/// 			AllowedRedirectUris: pulumi.StringArray{
/// 				pulumi.String("https://www.example.com"),
/// 			},
/// 			AllowedScopes: pulumi.StringArray{
/// 				pulumi.String("https://www.googleapis.com/auth/cloud-platform"),
/// 			},
/// 			ClientType: pulumi.String("CONFIDENTIAL_CLIENT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewOauthClientCredential(ctx, "example", &iam.OauthClientCredentialArgs{
/// 			Oauthclient:             oauthClient.OauthClientId,
/// 			Location:                oauthClient.Location,
/// 			OauthClientCredentialId: pulumi.String("cred-id"),
/// 			Disabled:                pulumi.Bool(true),
/// 			DisplayName:             pulumi.String("Display Name of credential"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_iam_oauthclient" "oauth_client" {
///   oauth_client_id       = "example-client-id"
///   location              = "global"
///   allowed_grant_types   = ["AUTHORIZATION_CODE_GRANT"]
///   allowed_redirect_uris = ["https://www.example.com"]
///   allowed_scopes        = ["https://www.googleapis.com/auth/cloud-platform"]
///   client_type           = "CONFIDENTIAL_CLIENT"
/// }
/// resource "gcp_iam_oauthclientcredential" "example" {
///   oauthclient                = gcp_iam_oauthclient.oauth_client.oauth_client_id
///   location                   = gcp_iam_oauthclient.oauth_client.location
///   oauth_client_credential_id = "cred-id"
///   disabled                   = true
///   display_name               = "Display Name of credential"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iam.OauthClient;
/// import com.pulumi.gcp.iam.OauthClientArgs;
/// import com.pulumi.gcp.iam.OauthClientCredential;
/// import com.pulumi.gcp.iam.OauthClientCredentialArgs;
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
///         var oauthClient = new OauthClient("oauthClient", OauthClientArgs.builder()
///             .oauthClientId("example-client-id")
///             .location("global")
///             .allowedGrantTypes("AUTHORIZATION_CODE_GRANT")
///             .allowedRedirectUris("https://www.example.com")
///             .allowedScopes("https://www.googleapis.com/auth/cloud-platform")
///             .clientType("CONFIDENTIAL_CLIENT")
///             .build());
///
///         var example = new OauthClientCredential("example", OauthClientCredentialArgs.builder()
///             .oauthclient(oauthClient.oauthClientId())
///             .location(oauthClient.location())
///             .oauthClientCredentialId("cred-id")
///             .disabled(true)
///             .displayName("Display Name of credential")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   oauthClient:
///     type: gcp:iam:OauthClient
///     name: oauth_client
///     properties:
///       oauthClientId: example-client-id
///       location: global
///       allowedGrantTypes:
///         - AUTHORIZATION_CODE_GRANT
///       allowedRedirectUris:
///         - https://www.example.com
///       allowedScopes:
///         - https://www.googleapis.com/auth/cloud-platform
///       clientType: CONFIDENTIAL_CLIENT
///   example:
///     type: gcp:iam:OauthClientCredential
///     properties:
///       oauthclient: ${oauthClient.oauthClientId}
///       location: ${oauthClient.location}
///       oauthClientCredentialId: cred-id
///       disabled: true
///       displayName: Display Name of credential
/// ```
///
///
/// ## Import
///
/// OauthClientCredential can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/oauthClients/{{oauthclient}}/credentials/{{oauth_client_credential_id}}`
/// * `{{project}}/{{location}}/{{oauthclient}}/{{oauth_client_credential_id}}`
/// * `{{location}}/{{oauthclient}}/{{oauth_client_credential_id}}`
///
///
/// When using the `pulumi import` command, OauthClientCredential can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/oauthClientCredential:OauthClientCredential default projects/{{project}}/locations/{{location}}/oauthClients/{{oauthclient}}/credentials/{{oauth_client_credential_id}}
/// $ pulumi import gcp:iam/oauthClientCredential:OauthClientCredential default {{project}}/{{location}}/{{oauthclient}}/{{oauth_client_credential_id}}
/// $ pulumi import gcp:iam/oauthClientCredential:OauthClientCredential default {{location}}/{{oauthclient}}/{{oauth_client_credential_id}}
/// ```
class OauthClientCredential extends pulumi.CustomResource {
  /// The system-generated OAuth client secret.
  /// The client secret must be stored securely. If the client secret is
  /// leaked, you must delete and re-create the client credential. To learn
  /// more, see [OAuth client and credential security risks and
  /// mitigations](https://cloud.google.com/iam/docs/workforce-oauth-app#security)
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> clientSecret;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Whether the OauthClientCredential is disabled. You cannot use a
  /// disabled OauthClientCredential.
  late final pulumi.Output<bool?> disabled;
  /// A user-specified display name of the OauthClientCredential.
  /// Cannot exceed 32 characters.
  late final pulumi.Output<String?> displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Immutable. Identifier. The resource name of the OauthClientCredential.
  /// Format:
  /// `projects/{project}/locations/{location}/oauthClients/{oauth_client}/credentials/{credential}`
  late final pulumi.Output<String> name;
  /// Required. The ID to use for the OauthClientCredential, which becomes the
  /// final component of the resource name. This value should be 4-32 characters,
  /// and may contain the characters [a-z0-9-]. The prefix `gcp-` is
  /// reserved for use by Google, and may not be specified.
  late final pulumi.Output<String> oauthClientCredentialId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> oauthclient;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [OauthClientCredential].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OauthClientCredential]. {@macro pulumi_iam_oauth_client_credential_oauth_client_credential_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OauthClientCredential(
    String name, {
    OauthClientCredentialArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/oauthClientCredential:OauthClientCredential',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['clientSecret'],
        ) {
    clientSecret = registerOutput<String>('clientSecret', isSecret: true);
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disabled = registerOutput<bool?>('disabled');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    oauthClientCredentialId = registerOutput<String>('oauthClientCredentialId');
    oauthclient = registerOutput<String>('oauthclient');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [OauthClientCredential] resource's state with the given [name] and [id].
  static OauthClientCredential get(
    String name,
    pulumi.Input<String> id, {
    OauthClientCredentialState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OauthClientCredential._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OauthClientCredential._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/oauthClientCredential:OauthClientCredential',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clientSecret = registerOutput<String>('clientSecret', isSecret: true);
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disabled = registerOutput<bool?>('disabled');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    oauthClientCredentialId = registerOutput<String>('oauthClientCredentialId');
    oauthclient = registerOutput<String>('oauthclient');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [OauthClientCredential] resource.
  OauthClientCredential.reference(String urn)
    : super(
        'gcp:iam/oauthClientCredential:OauthClientCredential',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['clientSecret'],
        isResourceReference: true,
      ) {
    clientSecret = registerOutput<String>('clientSecret', isSecret: true);
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disabled = registerOutput<bool?>('disabled');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    oauthClientCredentialId = registerOutput<String>('oauthClientCredentialId');
    oauthclient = registerOutput<String>('oauthclient');
    project = registerOutput<String>('project');
  }
}
