import 'package:pulumi/pulumi.dart' as pulumi;
import 'oauth_client_args.dart';
import 'oauth_client_client_uri_verification.dart';
import 'oauth_client_state.dart';

/// Accepted Permissions
///
/// - `OAuth Client Read`
/// - `OAuth Client Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleOauthClient = new cloudflare.OauthClient("example_oauth_client", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     clientName: "My OAuth App",
///     grantTypes: [
///         "authorization_code",
///         "refresh_token",
///     ],
///     redirectUris: ["https://example.com/callback"],
///     responseTypes: ["code"],
///     scopes: ["account.read"],
///     tokenEndpointAuthMethod: "client_secret_post",
///     allowedCorsOrigins: ["https://example.com"],
///     clientUri: "https://example.com",
///     logoUri: "https://example.com/logo.png",
///     policyUri: "https://example.com/privacy",
///     postLogoutRedirectUris: ["https://example.com/logout"],
///     tosUri: "https://example.com/tos",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_oauth_client = cloudflare.OauthClient("example_oauth_client",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     client_name="My OAuth App",
///     grant_types=[
///         "authorization_code",
///         "refresh_token",
///     ],
///     redirect_uris=["https://example.com/callback"],
///     response_types=["code"],
///     scopes=["account.read"],
///     token_endpoint_auth_method="client_secret_post",
///     allowed_cors_origins=["https://example.com"],
///     client_uri="https://example.com",
///     logo_uri="https://example.com/logo.png",
///     policy_uri="https://example.com/privacy",
///     post_logout_redirect_uris=["https://example.com/logout"],
///     tos_uri="https://example.com/tos")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleOauthClient = new Cloudflare.OauthClient("example_oauth_client", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         ClientName = "My OAuth App",
///         GrantTypes = new[]
///         {
///             "authorization_code",
///             "refresh_token",
///         },
///         RedirectUris = new[]
///         {
///             "https://example.com/callback",
///         },
///         ResponseTypes = new[]
///         {
///             "code",
///         },
///         Scopes = new[]
///         {
///             "account.read",
///         },
///         TokenEndpointAuthMethod = "client_secret_post",
///         AllowedCorsOrigins = new[]
///         {
///             "https://example.com",
///         },
///         ClientUri = "https://example.com",
///         LogoUri = "https://example.com/logo.png",
///         PolicyUri = "https://example.com/privacy",
///         PostLogoutRedirectUris = new[]
///         {
///             "https://example.com/logout",
///         },
///         TosUri = "https://example.com/tos",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewOauthClient(ctx, "example_oauth_client", &cloudflare.OauthClientArgs{
/// 			AccountId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			ClientName: pulumi.String("My OAuth App"),
/// 			GrantTypes: pulumi.StringArray{
/// 				pulumi.String("authorization_code"),
/// 				pulumi.String("refresh_token"),
/// 			},
/// 			RedirectUris: pulumi.StringArray{
/// 				pulumi.String("https://example.com/callback"),
/// 			},
/// 			ResponseTypes: pulumi.StringArray{
/// 				pulumi.String("code"),
/// 			},
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("account.read"),
/// 			},
/// 			TokenEndpointAuthMethod: pulumi.String("client_secret_post"),
/// 			AllowedCorsOrigins: pulumi.StringArray{
/// 				pulumi.String("https://example.com"),
/// 			},
/// 			ClientUri: pulumi.String("https://example.com"),
/// 			LogoUri:   pulumi.String("https://example.com/logo.png"),
/// 			PolicyUri: pulumi.String("https://example.com/privacy"),
/// 			PostLogoutRedirectUris: pulumi.StringArray{
/// 				pulumi.String("https://example.com/logout"),
/// 			},
/// 			TosUri: pulumi.String("https://example.com/tos"),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_oauthclient" "example_oauth_client" {
///   account_id                 = "023e105f4ecef8ad9ca31a8372d0c353"
///   client_name                = "My OAuth App"
///   grant_types                = ["authorization_code", "refresh_token"]
///   redirect_uris              = ["https://example.com/callback"]
///   response_types             = ["code"]
///   scopes                     = ["account.read"]
///   token_endpoint_auth_method = "client_secret_post"
///   allowed_cors_origins       = ["https://example.com"]
///   client_uri                 = "https://example.com"
///   logo_uri                   = "https://example.com/logo.png"
///   policy_uri                 = "https://example.com/privacy"
///   post_logout_redirect_uris  = ["https://example.com/logout"]
///   tos_uri                    = "https://example.com/tos"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.OauthClient;
/// import com.pulumi.cloudflare.OauthClientArgs;
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
///         var exampleOauthClient = new OauthClient("exampleOauthClient", OauthClientArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .clientName("My OAuth App")
///             .grantTypes(
///                 "authorization_code",
///                 "refresh_token")
///             .redirectUris("https://example.com/callback")
///             .responseTypes("code")
///             .scopes("account.read")
///             .tokenEndpointAuthMethod("client_secret_post")
///             .allowedCorsOrigins("https://example.com")
///             .clientUri("https://example.com")
///             .logoUri("https://example.com/logo.png")
///             .policyUri("https://example.com/privacy")
///             .postLogoutRedirectUris("https://example.com/logout")
///             .tosUri("https://example.com/tos")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleOauthClient:
///     type: cloudflare:OauthClient
///     name: example_oauth_client
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       clientName: My OAuth App
///       grantTypes:
///         - authorization_code
///         - refresh_token
///       redirectUris:
///         - https://example.com/callback
///       responseTypes:
///         - code
///       scopes:
///         - account.read
///       tokenEndpointAuthMethod: client_secret_post
///       allowedCorsOrigins:
///         - https://example.com
///       clientUri: https://example.com
///       logoUri: https://example.com/logo.png
///       policyUri: https://example.com/privacy
///       postLogoutRedirectUris:
///         - https://example.com/logout
///       tosUri: https://example.com/tos
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class OauthClient extends pulumi.CustomResource {
  /// Account identifier tag.
  late final pulumi.Output<String> accountId;
  /// Array of allowed CORS origins.
  late final pulumi.Output<List<String>?> allowedCorsOrigins;
  /// The unique identifier for an OAuth client.
  late final pulumi.Output<String> clientId;
  /// Human-readable name of the OAuth client.
  late final pulumi.Output<String> clientName;
  /// The client secret. This is the only time the secret is returned in a response.
  late final pulumi.Output<String> clientSecret;
  /// URL of the home page of the client.
  late final pulumi.Output<String?> clientUri;
  /// Client URI domain control verification state.
  late final pulumi.Output<OauthClientClientUriVerification> clientUriVerification;
  /// Timestamp when the OAuth client was created.
  late final pulumi.Output<String> createdAt;
  /// Array of OAuth grant types the client is allowed to use. `authorizationCode` is required; `refreshToken` may be included optionally.
  late final pulumi.Output<List<String>> grantTypes;
  /// Indicates whether the client has a rotated secret that has not yet been deleted.
  late final pulumi.Output<bool> hasRotatedSecret;
  /// URL of the client's logo.
  late final pulumi.Output<String?> logoUri;
  /// The unique identifier for an OAuth client.
  late final pulumi.Output<String?> oauthClientId;
  /// URL that points to a privacy policy document.
  late final pulumi.Output<String?> policyUri;
  /// Array of allowed post-logout redirect URIs.
  late final pulumi.Output<List<String>?> postLogoutRedirectUris;
  /// Timestamp when the OAuth client was promoted to public visibility.
  late final pulumi.Output<String> promotedAt;
  /// Array of allowed redirect URIs for the client.
  late final pulumi.Output<List<String>> redirectUris;
  /// Array of OAuth response types the client is allowed to use.
  late final pulumi.Output<List<String>> responseTypes;
  /// Array of OAuth scopes the client is allowed to request. Colon-delimited scopes are not accepted. Dot-delimited scopes are validated against available OAuth API scopes; simple identity scopes are allowed. Protocol scopes `offlineAccess` and `openid` are added or removed automatically based on `grantTypes` and `responseTypes`.
  late final pulumi.Output<List<String>> scopes;
  /// The authentication method the client uses at the token endpoint.
  /// Available values: "none", "client*secret*basic", "client*secret*post".
  late final pulumi.Output<String> tokenEndpointAuthMethod;
  /// URL that points to a terms of service document.
  late final pulumi.Output<String?> tosUri;
  /// Timestamp when the OAuth client was last updated.
  late final pulumi.Output<String> updatedAt;
  /// Promote the OAuth client from private to public visibility. Only `public` is accepted; demotion to `private` is not supported. Promotion requires a non-empty client name, logo URI, verified client URI host, and at least one non-identity scope.
  /// Available values: "public".
  late final pulumi.Output<String?> visibility;

  /// Creates a new [OauthClient].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OauthClient]. {@macro pulumi_index_oauth_client_oauth_client_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OauthClient(
    String name, {
    OauthClientArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/oauthClient:OauthClient',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
          additionalSecretOutputs: const ['clientSecret'],
        ) {
    accountId = registerOutput<String>('accountId');
    allowedCorsOrigins = registerOutput<List<String>?>('allowedCorsOrigins', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    clientId = registerOutput<String>('clientId');
    clientName = registerOutput<String>('clientName');
    clientSecret = registerOutput<String>('clientSecret', isSecret: true);
    clientUri = registerOutput<String?>('clientUri');
    clientUriVerification = registerOutput<OauthClientClientUriVerification>('clientUriVerification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OauthClientClientUriVerification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    grantTypes = registerOutput<List<String>>('grantTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    hasRotatedSecret = registerOutput<bool>('hasRotatedSecret');
    logoUri = registerOutput<String?>('logoUri');
    oauthClientId = registerOutput<String?>('oauthClientId');
    policyUri = registerOutput<String?>('policyUri');
    postLogoutRedirectUris = registerOutput<List<String>?>('postLogoutRedirectUris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    promotedAt = registerOutput<String>('promotedAt');
    redirectUris = registerOutput<List<String>>('redirectUris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    responseTypes = registerOutput<List<String>>('responseTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    scopes = registerOutput<List<String>>('scopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tokenEndpointAuthMethod = registerOutput<String>('tokenEndpointAuthMethod');
    tosUri = registerOutput<String?>('tosUri');
    updatedAt = registerOutput<String>('updatedAt');
    visibility = registerOutput<String?>('visibility');
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
          'cloudflare:index/oauthClient:OauthClient',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    allowedCorsOrigins = registerOutput<List<String>?>('allowedCorsOrigins', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    clientId = registerOutput<String>('clientId');
    clientName = registerOutput<String>('clientName');
    clientSecret = registerOutput<String>('clientSecret', isSecret: true);
    clientUri = registerOutput<String?>('clientUri');
    clientUriVerification = registerOutput<OauthClientClientUriVerification>('clientUriVerification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OauthClientClientUriVerification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    grantTypes = registerOutput<List<String>>('grantTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    hasRotatedSecret = registerOutput<bool>('hasRotatedSecret');
    logoUri = registerOutput<String?>('logoUri');
    oauthClientId = registerOutput<String?>('oauthClientId');
    policyUri = registerOutput<String?>('policyUri');
    postLogoutRedirectUris = registerOutput<List<String>?>('postLogoutRedirectUris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    promotedAt = registerOutput<String>('promotedAt');
    redirectUris = registerOutput<List<String>>('redirectUris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    responseTypes = registerOutput<List<String>>('responseTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    scopes = registerOutput<List<String>>('scopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tokenEndpointAuthMethod = registerOutput<String>('tokenEndpointAuthMethod');
    tosUri = registerOutput<String?>('tosUri');
    updatedAt = registerOutput<String>('updatedAt');
    visibility = registerOutput<String?>('visibility');
  }

  /// Creates a typed reference to an existing [OauthClient] resource.
  OauthClient.reference(String urn)
    : super(
        'cloudflare:index/oauthClient:OauthClient',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['clientSecret'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    allowedCorsOrigins = registerOutput<List<String>?>('allowedCorsOrigins', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    clientId = registerOutput<String>('clientId');
    clientName = registerOutput<String>('clientName');
    clientSecret = registerOutput<String>('clientSecret', isSecret: true);
    clientUri = registerOutput<String?>('clientUri');
    clientUriVerification = registerOutput<OauthClientClientUriVerification>('clientUriVerification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OauthClientClientUriVerification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    grantTypes = registerOutput<List<String>>('grantTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    hasRotatedSecret = registerOutput<bool>('hasRotatedSecret');
    logoUri = registerOutput<String?>('logoUri');
    oauthClientId = registerOutput<String?>('oauthClientId');
    policyUri = registerOutput<String?>('policyUri');
    postLogoutRedirectUris = registerOutput<List<String>?>('postLogoutRedirectUris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    promotedAt = registerOutput<String>('promotedAt');
    redirectUris = registerOutput<List<String>>('redirectUris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    responseTypes = registerOutput<List<String>>('responseTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    scopes = registerOutput<List<String>>('scopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tokenEndpointAuthMethod = registerOutput<String>('tokenEndpointAuthMethod');
    tosUri = registerOutput<String?>('tosUri');
    updatedAt = registerOutput<String>('updatedAt');
    visibility = registerOutput<String?>('visibility');
  }
}
