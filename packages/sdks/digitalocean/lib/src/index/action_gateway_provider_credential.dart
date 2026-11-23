import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_gateway_provider_credential_args.dart';
import 'action_gateway_provider_credential_state.dart';

/// Provides a DigitalOcean [Action Gateway](https://docs.digitalocean.com/products/managed-agents/action-gateway/)
/// provider credential resource. A provider credential is an OAuth client or an
/// API key that your team registers for a tool provider, such as GitHub, Jira, or
/// Linear, to use instead of DigitalOcean's shared OAuth application. A
/// `digitalocean.ActionGatewayConnection` connects
/// through it by its `credentialId`.
///
/// &gt; **Warning:** Destroying a provider credential also deletes every connection
/// that uses it, including connections Terraform does not manage, and their users
/// lose access to the provider. The API cannot restore a deleted credential. Changing
/// `toolProvider`, `kind`, `clientId`, or `redirectUrl`, or turning
/// `reusableByTeam` off, replaces the credential, which destroys it first. Set
/// `preventDestroy`
/// on credentials you cannot afford to lose, as the examples below do. Rotating a
/// secret or renaming a credential never replaces it.
///
/// &gt; **Note:** The API never returns `apiKey` or `clientSecret`. Terraform
/// keeps the values you configure in its state, marked sensitive, so protect the
/// state accordingly.
///
/// ## Example Usage
///
/// ### OAuth client
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const config = new pulumi.Config();
/// const githubClientSecret = config.require("githubClientSecret");
/// const github = new digitalocean.ActionGatewayProviderCredential("github", {
///     toolProvider: "github",
///     kind: "oauth_client",
///     displayName: "Production GitHub app",
///     clientId: "Iv1.0123456789abcdef",
///     clientSecret: githubClientSecret,
/// });
/// const githubActionGatewayConnection = new digitalocean.ActionGatewayConnection("github", {
///     toolProvider: github.toolProvider,
///     userId: "user-123",
///     credentialId: github.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// config = pulumi.Config()
/// github_client_secret = config.require("githubClientSecret")
/// github = digitalocean.ActionGatewayProviderCredential("github",
///     tool_provider="github",
///     kind="oauth_client",
///     display_name="Production GitHub app",
///     client_id="Iv1.0123456789abcdef",
///     client_secret=github_client_secret)
/// github_action_gateway_connection = digitalocean.ActionGatewayConnection("github",
///     tool_provider=github.tool_provider,
///     user_id="user-123",
///     credential_id=github.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var githubClientSecret = config.Require("githubClientSecret");
///     var github = new DigitalOcean.ActionGatewayProviderCredential("github", new()
///     {
///         ToolProvider = "github",
///         Kind = "oauth_client",
///         DisplayName = "Production GitHub app",
///         ClientId = "Iv1.0123456789abcdef",
///         ClientSecret = githubClientSecret,
///     });
///
///     var githubActionGatewayConnection = new DigitalOcean.ActionGatewayConnection("github", new()
///     {
///         ToolProvider = github.ToolProvider,
///         UserId = "user-123",
///         CredentialId = github.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		githubClientSecret := cfg.Require("githubClientSecret")
/// 		github, err := digitalocean.NewActionGatewayProviderCredential(ctx, "github", &digitalocean.ActionGatewayProviderCredentialArgs{
/// 			ToolProvider: pulumi.String("github"),
/// 			Kind:         pulumi.String("oauth_client"),
/// 			DisplayName:  pulumi.String("Production GitHub app"),
/// 			ClientId:     pulumi.String("Iv1.0123456789abcdef"),
/// 			ClientSecret: pulumi.String(githubClientSecret),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewActionGatewayConnection(ctx, "github", &digitalocean.ActionGatewayConnectionArgs{
/// 			ToolProvider: github.ToolProvider,
/// 			UserId:       pulumi.String("user-123"),
/// 			CredentialId: github.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_action_gateway_provider_credential" "github" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   tool_provider = "github"
///   kind          = "oauth_client"
///   display_name  = "Production GitHub app"
///   client_id     = "Iv1.0123456789abcdef"
///   client_secret = var.githubClientSecret
/// }
/// resource "digitalocean_action_gateway_connection" "github" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   tool_provider = digitalocean_action_gateway_provider_credential.github.tool_provider
///   user_id       = "user-123"
///   credential_id = digitalocean_action_gateway_provider_credential.github.id
/// }
/// variable "githubClientSecret" {
///   type = string
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.ActionGatewayProviderCredential;
/// import com.pulumi.digitalocean.ActionGatewayProviderCredentialArgs;
/// import com.pulumi.digitalocean.ActionGatewayConnection;
/// import com.pulumi.digitalocean.ActionGatewayConnectionArgs;
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
///         final var config = ctx.config();
///         final var githubClientSecret = config.require("githubClientSecret");
///         var github = new ActionGatewayProviderCredential("github", ActionGatewayProviderCredentialArgs.builder()
///             .toolProvider("github")
///             .kind("oauth_client")
///             .displayName("Production GitHub app")
///             .clientId("Iv1.0123456789abcdef")
///             .clientSecret(githubClientSecret)
///             .build());
///
///         var githubActionGatewayConnection = new ActionGatewayConnection("githubActionGatewayConnection", ActionGatewayConnectionArgs.builder()
///             .toolProvider(github.toolProvider())
///             .userId("user-123")
///             .credentialId(github.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   githubClientSecret:
///     type: string
/// resources:
///   github:
///     type: digitalocean:ActionGatewayProviderCredential
///     properties:
///       toolProvider: github
///       kind: oauth_client
///       displayName: Production GitHub app
///       clientId: Iv1.0123456789abcdef
///       clientSecret: ${githubClientSecret}
///   githubActionGatewayConnection:
///     type: digitalocean:ActionGatewayConnection
///     name: github
///     properties:
///       toolProvider: ${github.toolProvider}
///       userId: user-123
///       credentialId: ${github.id}
/// ```
///
///
/// ### API key
///
/// A connection through an API-key credential is active immediately, without an
/// authorization step.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const config = new pulumi.Config();
/// const linearApiKey = config.require("linearApiKey");
/// const linear = new digitalocean.ActionGatewayProviderCredential("linear", {
///     toolProvider: "linear",
///     kind: "api_key",
///     displayName: "Production key",
///     apiKey: linearApiKey,
/// });
/// const linearActionGatewayConnection = new digitalocean.ActionGatewayConnection("linear", {
///     toolProvider: linear.toolProvider,
///     userId: "support-bot",
///     credentialId: linear.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// config = pulumi.Config()
/// linear_api_key = config.require("linearApiKey")
/// linear = digitalocean.ActionGatewayProviderCredential("linear",
///     tool_provider="linear",
///     kind="api_key",
///     display_name="Production key",
///     api_key=linear_api_key)
/// linear_action_gateway_connection = digitalocean.ActionGatewayConnection("linear",
///     tool_provider=linear.tool_provider,
///     user_id="support-bot",
///     credential_id=linear.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var linearApiKey = config.Require("linearApiKey");
///     var linear = new DigitalOcean.ActionGatewayProviderCredential("linear", new()
///     {
///         ToolProvider = "linear",
///         Kind = "api_key",
///         DisplayName = "Production key",
///         ApiKey = linearApiKey,
///     });
///
///     var linearActionGatewayConnection = new DigitalOcean.ActionGatewayConnection("linear", new()
///     {
///         ToolProvider = linear.ToolProvider,
///         UserId = "support-bot",
///         CredentialId = linear.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		linearApiKey := cfg.Require("linearApiKey")
/// 		linear, err := digitalocean.NewActionGatewayProviderCredential(ctx, "linear", &digitalocean.ActionGatewayProviderCredentialArgs{
/// 			ToolProvider: pulumi.String("linear"),
/// 			Kind:         pulumi.String("api_key"),
/// 			DisplayName:  pulumi.String("Production key"),
/// 			ApiKey:       pulumi.String(linearApiKey),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewActionGatewayConnection(ctx, "linear", &digitalocean.ActionGatewayConnectionArgs{
/// 			ToolProvider: linear.ToolProvider,
/// 			UserId:       pulumi.String("support-bot"),
/// 			CredentialId: linear.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_action_gateway_provider_credential" "linear" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   tool_provider = "linear"
///   kind          = "api_key"
///   display_name  = "Production key"
///   api_key       = var.linearApiKey
/// }
/// resource "digitalocean_action_gateway_connection" "linear" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   tool_provider = digitalocean_action_gateway_provider_credential.linear.tool_provider
///   user_id       = "support-bot"
///   credential_id = digitalocean_action_gateway_provider_credential.linear.id
/// }
/// variable "linearApiKey" {
///   type = string
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.ActionGatewayProviderCredential;
/// import com.pulumi.digitalocean.ActionGatewayProviderCredentialArgs;
/// import com.pulumi.digitalocean.ActionGatewayConnection;
/// import com.pulumi.digitalocean.ActionGatewayConnectionArgs;
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
///         final var config = ctx.config();
///         final var linearApiKey = config.require("linearApiKey");
///         var linear = new ActionGatewayProviderCredential("linear", ActionGatewayProviderCredentialArgs.builder()
///             .toolProvider("linear")
///             .kind("api_key")
///             .displayName("Production key")
///             .apiKey(linearApiKey)
///             .build());
///
///         var linearActionGatewayConnection = new ActionGatewayConnection("linearActionGatewayConnection", ActionGatewayConnectionArgs.builder()
///             .toolProvider(linear.toolProvider())
///             .userId("support-bot")
///             .credentialId(linear.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   linearApiKey:
///     type: string
/// resources:
///   linear:
///     type: digitalocean:ActionGatewayProviderCredential
///     properties:
///       toolProvider: linear
///       kind: api_key
///       displayName: Production key
///       apiKey: ${linearApiKey}
///   linearActionGatewayConnection:
///     type: digitalocean:ActionGatewayConnection
///     name: linear
///     properties:
///       toolProvider: ${linear.toolProvider}
///       userId: support-bot
///       credentialId: ${linear.id}
/// ```
///
///
/// ### API key with credential parameters
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = new digitalocean.ActionGatewayProviderCredential("example", {
///     toolProvider: "example-provider",
///     kind: "api_key",
///     displayName: "Production key",
///     apiKey: exampleApiKey,
///     credentialParameters: {
///         subdomain: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.ActionGatewayProviderCredential("example",
///     tool_provider="example-provider",
///     kind="api_key",
///     display_name="Production key",
///     api_key=example_api_key,
///     credential_parameters={
///         "subdomain": "example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new DigitalOcean.ActionGatewayProviderCredential("example", new()
///     {
///         ToolProvider = "example-provider",
///         Kind = "api_key",
///         DisplayName = "Production key",
///         ApiKey = exampleApiKey,
///         CredentialParameters =
///         {
///             { "subdomain", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.NewActionGatewayProviderCredential(ctx, "example", &digitalocean.ActionGatewayProviderCredentialArgs{
/// 			ToolProvider: pulumi.String("example-provider"),
/// 			Kind:         pulumi.String("api_key"),
/// 			DisplayName:  pulumi.String("Production key"),
/// 			ApiKey:       pulumi.Any(exampleApiKey),
/// 			CredentialParameters: pulumi.StringMap{
/// 				"subdomain": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_action_gateway_provider_credential" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   tool_provider = "example-provider"
///   kind          = "api_key"
///   display_name  = "Production key"
///   api_key       = exampleApiKey
///   credential_parameters = {
///     "subdomain" = "example"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.ActionGatewayProviderCredential;
/// import com.pulumi.digitalocean.ActionGatewayProviderCredentialArgs;
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
///         var example = new ActionGatewayProviderCredential("example", ActionGatewayProviderCredentialArgs.builder()
///             .toolProvider("example-provider")
///             .kind("api_key")
///             .displayName("Production key")
///             .apiKey(exampleApiKey)
///             .credentialParameters(Map.of("subdomain", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: digitalocean:ActionGatewayProviderCredential
///     properties:
///       toolProvider: example-provider
///       kind: api_key
///       displayName: Production key
///       apiKey: ${exampleApiKey}
///       credentialParameters:
///         subdomain: example
/// ```
///
///
/// ## Import
///
/// A provider credential can be imported using its `id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/actionGatewayProviderCredential:ActionGatewayProviderCredential github example-credential-id
/// ```
///
/// The API does not return a credential's secret or its OAuth client ID, so an
/// imported credential has neither in state, and the first plan after an import
/// shows them being set. Applying it sends the configured `apiKey`, or
/// `clientId` and `clientSecret`, as an in-place update that keeps the
/// credential and its connections. For an OAuth client the API accepts that update
/// only when `clientId` is the ID the credential was registered with, so a
/// credential imported into the wrong configuration fails to apply instead of
/// being overwritten.
///
/// Import reads `toolProvider`, `kind`, and `redirectUrl` from the API. If one
/// differs from your configuration, the next plan replaces the credential. Run
/// `pulumi preview` after importing and make sure it shows an in-place update, not
/// a replacement, before you apply.
class ActionGatewayProviderCredential extends pulumi.CustomResource {
  /// The key or token sent to the tool provider. Required for `kind = "apiKey"` and not accepted otherwise. Changing it rotates the key in place: the credential keeps its ID, and its connections use the new key on their next call.
  late final pulumi.Output<String?> apiKey;
  /// The HTTPS origin of the tool provider's API, such as `https://api.example.com`. Accepted only by tool providers that allow one. Conflicts with `credentialParameters`. Removing it from the configuration leaves the stored origin in place.
  late final pulumi.Output<String> baseUrl;
  /// The client ID of your OAuth client. Required for `kind = "oauthClient"` and not accepted otherwise. A credential is bound to the client ID it was registered with, so changing this replaces the credential.
  late final pulumi.Output<String?> clientId;
  /// The client secret of your OAuth client. Required for `kind = "oauthClient"` and not accepted otherwise. Changing it rotates the secret in place.
  late final pulumi.Output<String?> clientSecret;
  /// When the credential was created.
  late final pulumi.Output<String> createdAt;
  /// A map of values for the credential parameters the tool provider declares, which the [providers API](https://docs.digitalocean.com/reference/api/) lists as `credentialParameters`. The API validates them and derives `baseUrl` from them. Accepted only for `kind = "apiKey"`. Conflicts with `baseUrl`.
  late final pulumi.Output<Map<String, String>?> credentialParameters;
  /// A label of 1 to 255 characters, unique among your team's credentials for the tool provider, ignoring case.
  late final pulumi.Output<String> displayName;
  /// The kind of credential: `oauthClient` for an OAuth client you created at the tool provider, or `apiKey` for a key or token. Changing this replaces the credential.
  late final pulumi.Output<String> kind;
  /// The DigitalOcean user ID of the credential's creator. Empty for a credential shared with the team.
  late final pulumi.Output<String> owningUserId;
  /// The HTTPS redirect URI registered with your OAuth client, for `kind = "oauthClient"` only. Custom OAuth redirects must be enabled for your account. Omit it to use DigitalOcean's callback. Changing this replaces the credential.
  late final pulumi.Output<String?> redirectUrl;
  /// Whether everyone on your team can see and use the credential instead of only the DigitalOcean user who owns Terraform's API token. Defaults to `false`. Sharing a credential may require the team owner role. Sharing cannot be undone, so changing this from `true` to `false` replaces the credential.
  late final pulumi.Output<bool?> reusableByTeam;
  /// Who can use the credential: `user` for only its creator, or `team`.
  late final pulumi.Output<String> scope;
  /// The status of the credential: `active` or `disabled`. Connections cannot use a disabled credential.
  late final pulumi.Output<String> status;
  /// The slug of the tool provider the credential is for, such as `github` or `jira`. The `digitalocean.getActionGatewayProviders` data source lists the available providers and, in `authTypes`, the kinds of credential each accepts. Changing this replaces the credential.
  late final pulumi.Output<String> toolProvider;
  /// When the credential was last modified.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ActionGatewayProviderCredential].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ActionGatewayProviderCredential]. {@macro pulumi_index_action_gateway_provider_credential_action_gateway_provider_credential_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ActionGatewayProviderCredential(
    String name, {
    ActionGatewayProviderCredentialArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/actionGatewayProviderCredential:ActionGatewayProviderCredential',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '4.86.0').merge(options),
          additionalSecretOutputs: const ['apiKey', 'clientSecret'],
        ) {
    apiKey = registerOutput<String?>('apiKey', isSecret: true);
    baseUrl = registerOutput<String>('baseUrl');
    clientId = registerOutput<String?>('clientId');
    clientSecret = registerOutput<String?>('clientSecret', isSecret: true);
    createdAt = registerOutput<String>('createdAt');
    credentialParameters = registerOutput<Map<String, String>?>('credentialParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    displayName = registerOutput<String>('displayName');
    kind = registerOutput<String>('kind');
    owningUserId = registerOutput<String>('owningUserId');
    redirectUrl = registerOutput<String?>('redirectUrl');
    reusableByTeam = registerOutput<bool?>('reusableByTeam');
    scope = registerOutput<String>('scope');
    status = registerOutput<String>('status');
    toolProvider = registerOutput<String>('toolProvider');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ActionGatewayProviderCredential] resource's state with the given [name] and [id].
  static ActionGatewayProviderCredential get(
    String name,
    pulumi.Input<String> id, {
    ActionGatewayProviderCredentialState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ActionGatewayProviderCredential._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ActionGatewayProviderCredential._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/actionGatewayProviderCredential:ActionGatewayProviderCredential',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiKey = registerOutput<String?>('apiKey', isSecret: true);
    baseUrl = registerOutput<String>('baseUrl');
    clientId = registerOutput<String?>('clientId');
    clientSecret = registerOutput<String?>('clientSecret', isSecret: true);
    createdAt = registerOutput<String>('createdAt');
    credentialParameters = registerOutput<Map<String, String>?>('credentialParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    displayName = registerOutput<String>('displayName');
    kind = registerOutput<String>('kind');
    owningUserId = registerOutput<String>('owningUserId');
    redirectUrl = registerOutput<String?>('redirectUrl');
    reusableByTeam = registerOutput<bool?>('reusableByTeam');
    scope = registerOutput<String>('scope');
    status = registerOutput<String>('status');
    toolProvider = registerOutput<String>('toolProvider');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ActionGatewayProviderCredential] resource.
  ActionGatewayProviderCredential.reference(String urn)
    : super(
        'digitalocean:index/actionGatewayProviderCredential:ActionGatewayProviderCredential',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['apiKey', 'clientSecret'],
        isResourceReference: true,
      ) {
    apiKey = registerOutput<String?>('apiKey', isSecret: true);
    baseUrl = registerOutput<String>('baseUrl');
    clientId = registerOutput<String?>('clientId');
    clientSecret = registerOutput<String?>('clientSecret', isSecret: true);
    createdAt = registerOutput<String>('createdAt');
    credentialParameters = registerOutput<Map<String, String>?>('credentialParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    displayName = registerOutput<String>('displayName');
    kind = registerOutput<String>('kind');
    owningUserId = registerOutput<String>('owningUserId');
    redirectUrl = registerOutput<String?>('redirectUrl');
    reusableByTeam = registerOutput<bool?>('reusableByTeam');
    scope = registerOutput<String>('scope');
    status = registerOutput<String>('status');
    toolProvider = registerOutput<String>('toolProvider');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
