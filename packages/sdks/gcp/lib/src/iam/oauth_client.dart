import 'package:pulumi/pulumi.dart' as pulumi;
import 'oauth_client_args.dart';
import 'oauth_client_state.dart';

/// Represents an OAuth Client. Used to access Google Cloud resources on behalf of a
/// Workforce Identity Federation user by using OAuth 2.0 Protocol to obtain an access
/// token from Google Cloud.
///
///
/// To get more information about OauthClient, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v1/projects.locations.oauthClients)
/// * How-to Guides
/// * [Managing OAuth clients](https://cloud.google.com/iam/docs/workforce-manage-oauth-app#manage-clients)
///
/// ## Example Usage
///
/// ### Iam Oauth Client Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.iam.OauthClient("example", {
///     oauthClientId: "example-client-id",
///     displayName: "Display Name of OAuth client",
///     description: "A sample OAuth client",
///     location: "global",
///     disabled: false,
///     allowedGrantTypes: ["AUTHORIZATION_CODE_GRANT"],
///     allowedRedirectUris: ["https://www.example.com"],
///     allowedScopes: ["https://www.googleapis.com/auth/cloud-platform"],
///     clientType: "CONFIDENTIAL_CLIENT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.iam.OauthClient("example",
///     oauth_client_id="example-client-id",
///     display_name="Display Name of OAuth client",
///     description="A sample OAuth client",
///     location="global",
///     disabled=False,
///     allowed_grant_types=["AUTHORIZATION_CODE_GRANT"],
///     allowed_redirect_uris=["https://www.example.com"],
///     allowed_scopes=["https://www.googleapis.com/auth/cloud-platform"],
///     client_type="CONFIDENTIAL_CLIENT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Iam.OauthClient("example", new()
///     {
///         OauthClientId = "example-client-id",
///         DisplayName = "Display Name of OAuth client",
///         Description = "A sample OAuth client",
///         Location = "global",
///         Disabled = false,
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
/// 		_, err := iam.NewOauthClient(ctx, "example", &iam.OauthClientArgs{
/// 			OauthClientId: pulumi.String("example-client-id"),
/// 			DisplayName:   pulumi.String("Display Name of OAuth client"),
/// 			Description:   pulumi.String("A sample OAuth client"),
/// 			Location:      pulumi.String("global"),
/// 			Disabled:      pulumi.Bool(false),
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
/// resource "gcp_iam_oauthclient" "example" {
///   oauth_client_id       = "example-client-id"
///   display_name          = "Display Name of OAuth client"
///   description           = "A sample OAuth client"
///   location              = "global"
///   disabled              = false
///   allowed_grant_types   = ["AUTHORIZATION_CODE_GRANT"]
///   allowed_redirect_uris = ["https://www.example.com"]
///   allowed_scopes        = ["https://www.googleapis.com/auth/cloud-platform"]
///   client_type           = "CONFIDENTIAL_CLIENT"
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
///         var example = new OauthClient("example", OauthClientArgs.builder()
///             .oauthClientId("example-client-id")
///             .displayName("Display Name of OAuth client")
///             .description("A sample OAuth client")
///             .location("global")
///             .disabled(false)
///             .allowedGrantTypes("AUTHORIZATION_CODE_GRANT")
///             .allowedRedirectUris("https://www.example.com")
///             .allowedScopes("https://www.googleapis.com/auth/cloud-platform")
///             .clientType("CONFIDENTIAL_CLIENT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:iam:OauthClient
///     properties:
///       oauthClientId: example-client-id
///       displayName: Display Name of OAuth client
///       description: A sample OAuth client
///       location: global
///       disabled: false
///       allowedGrantTypes:
///         - AUTHORIZATION_CODE_GRANT
///       allowedRedirectUris:
///         - https://www.example.com
///       allowedScopes:
///         - https://www.googleapis.com/auth/cloud-platform
///       clientType: CONFIDENTIAL_CLIENT
/// ```
///
///
/// ## Import
///
/// OauthClient can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/oauthClients/{{oauth_client_id}}`
/// * `{{project}}/{{location}}/{{oauth_client_id}}`
/// * `{{location}}/{{oauth_client_id}}`
///
///
/// When using the `pulumi import` command, OauthClient can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/oauthClient:OauthClient default projects/{{project}}/locations/{{location}}/oauthClients/{{oauth_client_id}}
/// $ pulumi import gcp:iam/oauthClient:OauthClient default {{project}}/{{location}}/{{oauth_client_id}}
/// $ pulumi import gcp:iam/oauthClient:OauthClient default {{location}}/{{oauth_client_id}}
/// ```
class OauthClient extends pulumi.CustomResource {
  /// Required. The list of OAuth grant types is allowed for the OauthClient.
  late final pulumi.Output<List<String>> allowedGrantTypes;
  /// Required. The list of redirect uris that is allowed to redirect back
  /// when authorization process is completed.
  late final pulumi.Output<List<String>> allowedRedirectUris;
  /// Required. The list of scopes that the OauthClient is allowed to request during
  /// OAuth flows.
  /// The following scopes are supported:
  /// * `https://www.googleapis.com/auth/cloud-platform`: See, edit, configure,
  /// and delete your Google Cloud data and see the email address for your Google
  /// Account.
  late final pulumi.Output<List<String>> allowedScopes;
  /// Output only. The system-generated OauthClient id.
  late final pulumi.Output<String> clientId;
  /// Immutable. The type of OauthClient. Either public or private.
  /// For private clients, the client secret can be managed using the dedicated
  /// OauthClientCredential resource.
  /// Possible values:
  /// CLIENT_TYPE_UNSPECIFIED
  /// PUBLIC_CLIENT
  /// CONFIDENTIAL_CLIENT
  late final pulumi.Output<String?> clientType;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A user-specified description of the OauthClient.
  /// Cannot exceed 256 characters.
  late final pulumi.Output<String?> description;
  /// Whether the OauthClient is disabled. You cannot use a disabled OAuth
  /// client.
  late final pulumi.Output<bool?> disabled;
  /// A user-specified display name of the OauthClient.
  /// Cannot exceed 32 characters.
  late final pulumi.Output<String?> displayName;
  /// Time after which the OauthClient will be permanently purged and cannot
  /// be recovered.
  late final pulumi.Output<String> expireTime;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Immutable. Identifier. The resource name of the OauthClient.
  /// Format:`projects/{project}/locations/{location}/oauthClients/{oauth_client}`.
  late final pulumi.Output<String> name;
  /// Required. The ID to use for the OauthClient, which becomes the final component of
  /// the resource name. This value should be a string of 6 to 63 lowercase
  /// letters, digits, or hyphens. It must start with a letter, and cannot have a
  /// trailing hyphen. The prefix `gcp-` is reserved for use by Google, and may
  /// not be specified.
  late final pulumi.Output<String> oauthClientId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The state of the OauthClient.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// DELETED
  late final pulumi.Output<String> state;

  /// Creates a new [OauthClient].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OauthClient]. {@macro pulumi_iam_oauth_client_oauth_client_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OauthClient(
    String name, {
    OauthClientArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/oauthClient:OauthClient',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    allowedGrantTypes = registerOutput<List<String>>('allowedGrantTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    allowedRedirectUris = registerOutput<List<String>>('allowedRedirectUris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    allowedScopes = registerOutput<List<String>>('allowedScopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    clientId = registerOutput<String>('clientId');
    clientType = registerOutput<String?>('clientType');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    disabled = registerOutput<bool?>('disabled');
    displayName = registerOutput<String?>('displayName');
    expireTime = registerOutput<String>('expireTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    oauthClientId = registerOutput<String>('oauthClientId');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
  }

  /// Gets an existing [OauthClient] resource's state with the given [name] and [id].
  static OauthClient get(
    String name,
    pulumi.Input<String> id, {
    OauthClientState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OauthClient._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OauthClient._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/oauthClient:OauthClient',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedGrantTypes = registerOutput<List<String>>('allowedGrantTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    allowedRedirectUris = registerOutput<List<String>>('allowedRedirectUris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    allowedScopes = registerOutput<List<String>>('allowedScopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    clientId = registerOutput<String>('clientId');
    clientType = registerOutput<String?>('clientType');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    disabled = registerOutput<bool?>('disabled');
    displayName = registerOutput<String?>('displayName');
    expireTime = registerOutput<String>('expireTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    oauthClientId = registerOutput<String>('oauthClientId');
    project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
  }

  /// Creates a typed reference to an existing [OauthClient] resource.
  OauthClient.reference(String urn)
    : super(
        'gcp:iam/oauthClient:OauthClient',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowedGrantTypes = registerOutput<List<String>>('allowedGrantTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    allowedRedirectUris = registerOutput<List<String>>('allowedRedirectUris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    allowedScopes = registerOutput<List<String>>('allowedScopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    clientId = registerOutput<String>('clientId');
    clientType = registerOutput<String?>('clientType');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    disabled = registerOutput<bool?>('disabled');
    displayName = registerOutput<String?>('displayName');
    expireTime = registerOutput<String>('expireTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    oauthClientId = registerOutput<String>('oauthClientId');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
  }
}
