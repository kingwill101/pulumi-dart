import 'package:pulumi/pulumi.dart' as pulumi;
import 'oauth_idp_config_args.dart';
import 'oauth_idp_config_response_type.dart';
import 'oauth_idp_config_state.dart';

/// OIDC IdP configuration for a Identity Toolkit project.
///
/// You must enable the
/// [Google Identity Platform](https://console.cloud.google.com/marketplace/details/google-cloud-platform/customer-identity) in
/// the marketplace prior to using this resource.
///
///
///
/// ## Example Usage
///
/// ### Identity Platform Oauth Idp Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const oauthIdpConfig = new gcp.identityplatform.OauthIdpConfig("oauth_idp_config", {
///     name: "oidc.oauth-idp-config",
///     displayName: "Display Name",
///     clientId: "client-id",
///     issuer: "issuer",
///     enabled: true,
///     clientSecret: "secret",
///     responseType: {
///         idToken: true,
///         code: false,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// oauth_idp_config = gcp.identityplatform.OauthIdpConfig("oauth_idp_config",
///     name="oidc.oauth-idp-config",
///     display_name="Display Name",
///     client_id="client-id",
///     issuer="issuer",
///     enabled=True,
///     client_secret="secret",
///     response_type={
///         "id_token": True,
///         "code": False,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var oauthIdpConfig = new Gcp.IdentityPlatform.OauthIdpConfig("oauth_idp_config", new()
///     {
///         Name = "oidc.oauth-idp-config",
///         DisplayName = "Display Name",
///         ClientId = "client-id",
///         Issuer = "issuer",
///         Enabled = true,
///         ClientSecret = "secret",
///         ResponseType = new Gcp.IdentityPlatform.Inputs.OauthIdpConfigResponseTypeArgs
///         {
///             IdToken = true,
///             Code = false,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/identityplatform"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := identityplatform.NewOauthIdpConfig(ctx, "oauth_idp_config", &identityplatform.OauthIdpConfigArgs{
/// 			Name:         pulumi.String("oidc.oauth-idp-config"),
/// 			DisplayName:  pulumi.String("Display Name"),
/// 			ClientId:     pulumi.String("client-id"),
/// 			Issuer:       pulumi.String("issuer"),
/// 			Enabled:      pulumi.Bool(true),
/// 			ClientSecret: pulumi.String("secret"),
/// 			ResponseType: &identityplatform.OauthIdpConfigResponseTypeArgs{
/// 				IdToken: pulumi.Bool(true),
/// 				Code:    pulumi.Bool(false),
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
/// import com.pulumi.gcp.identityplatform.OauthIdpConfig;
/// import com.pulumi.gcp.identityplatform.OauthIdpConfigArgs;
/// import com.pulumi.gcp.identityplatform.inputs.OauthIdpConfigResponseTypeArgs;
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
///         var oauthIdpConfig = new OauthIdpConfig("oauthIdpConfig", OauthIdpConfigArgs.builder()
///             .name("oidc.oauth-idp-config")
///             .displayName("Display Name")
///             .clientId("client-id")
///             .issuer("issuer")
///             .enabled(true)
///             .clientSecret("secret")
///             .responseType(OauthIdpConfigResponseTypeArgs.builder()
///                 .idToken(true)
///                 .code(false)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   oauthIdpConfig:
///     type: gcp:identityplatform:OauthIdpConfig
///     name: oauth_idp_config
///     properties:
///       name: oidc.oauth-idp-config
///       displayName: Display Name
///       clientId: client-id
///       issuer: issuer
///       enabled: true
///       clientSecret: secret
///       responseType:
///         idToken: true
///         code: false
/// ```
///
///
/// ## Import
///
/// OauthIdpConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/oauthIdpConfigs/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, OauthIdpConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:identityplatform/oauthIdpConfig:OauthIdpConfig default projects/{{project}}/oauthIdpConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/oauthIdpConfig:OauthIdpConfig default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/oauthIdpConfig:OauthIdpConfig default {{name}}
/// ```
class OauthIdpConfig extends pulumi.CustomResource {
  /// The client id of an OAuth client.
  late final pulumi.Output<String> clientId;

  /// The client secret of the OAuth client, to enable OIDC code flow.
  late final pulumi.Output<String?> clientSecret;

  /// Human friendly display name.
  late final pulumi.Output<String?> displayName;

  /// If this config allows users to sign in with the provider.
  late final pulumi.Output<bool?> enabled;

  /// For OIDC Idps, the issuer identifier.
  late final pulumi.Output<String> issuer;

  /// The name of the OauthIdpConfig. Must start with `oidc.`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The response type to request for in the OAuth authorization flow.
  /// You can set either idToken or code to true, but not both.
  /// Setting both types to be simultaneously true ({code: true, idToken: true}) is not yet supported.
  /// Structure is documented below.
  late final pulumi.Output<OauthIdpConfigResponseType?> responseType;

  /// Creates a new [OauthIdpConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OauthIdpConfig]. {@macro pulumi_identityplatform_oauth_idp_config_oauth_idp_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OauthIdpConfig(
    String name, {
    OauthIdpConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:identityplatform/oauthIdpConfig:OauthIdpConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clientId = registerOutput<String>('clientId');
    clientSecret = registerOutput<String?>('clientSecret');
    displayName = registerOutput<String?>('displayName');
    enabled = registerOutput<bool?>('enabled');
    issuer = registerOutput<String>('issuer');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    responseType = registerOutput<OauthIdpConfigResponseType?>(
      'responseType',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return OauthIdpConfigResponseType.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [OauthIdpConfig] resource's state with the given [name] and [id].
  static OauthIdpConfig get(
    String name,
    pulumi.Input<String> id, {
    OauthIdpConfigState? state,
  }) {
    return OauthIdpConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OauthIdpConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:identityplatform/oauthIdpConfig:OauthIdpConfig',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clientId = registerOutput<String>('clientId');
    clientSecret = registerOutput<String?>('clientSecret');
    displayName = registerOutput<String?>('displayName');
    enabled = registerOutput<bool?>('enabled');
    issuer = registerOutput<String>('issuer');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    responseType = registerOutput<OauthIdpConfigResponseType?>(
      'responseType',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return OauthIdpConfigResponseType.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
