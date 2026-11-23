import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_gateway_mcp_server_args.dart';
import 'action_gateway_mcp_server_discovered_tool.dart';
import 'action_gateway_mcp_server_state.dart';

/// Provides a DigitalOcean [Action Gateway](https://docs.digitalocean.com/products/managed-agents/action-gateway/)
/// MCP server resource. It registers your own remote MCP server with your team,
/// discovers its tools, and enables the ones you choose. Enabled tools are added
/// to your team's catalog with slugs of the form `&lt;server_ref&gt;_&lt;tool&gt;`.
///
/// ## Example Usage
///
/// ### API key sent to the server
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const docs = new digitalocean.ActionGatewayMcpServer("docs", {
///     serverRef: "docs",
///     endpoint: "https://mcp.example.com/mcp",
///     description: "Internal documentation search.",
///     credentialRefSource: "secret",
///     apiKey: docsMcpApiKey,
///     enabledTools: [
///         "docs_search",
///         "docs_get_page",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// docs = digitalocean.ActionGatewayMcpServer("docs",
///     server_ref="docs",
///     endpoint="https://mcp.example.com/mcp",
///     description="Internal documentation search.",
///     credential_ref_source="secret",
///     api_key=docs_mcp_api_key,
///     enabled_tools=[
///         "docs_search",
///         "docs_get_page",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var docs = new DigitalOcean.ActionGatewayMcpServer("docs", new()
///     {
///         ServerRef = "docs",
///         Endpoint = "https://mcp.example.com/mcp",
///         Description = "Internal documentation search.",
///         CredentialRefSource = "secret",
///         ApiKey = docsMcpApiKey,
///         EnabledTools = new[]
///         {
///             "docs_search",
///             "docs_get_page",
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
/// 		_, err := digitalocean.NewActionGatewayMcpServer(ctx, "docs", &digitalocean.ActionGatewayMcpServerArgs{
/// 			ServerRef:           pulumi.String("docs"),
/// 			Endpoint:            pulumi.String("https://mcp.example.com/mcp"),
/// 			Description:         pulumi.String("Internal documentation search."),
/// 			CredentialRefSource: pulumi.String("secret"),
/// 			ApiKey:              pulumi.Any(docsMcpApiKey),
/// 			EnabledTools: pulumi.StringArray{
/// 				pulumi.String("docs_search"),
/// 				pulumi.String("docs_get_page"),
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
/// resource "digitalocean_action_gateway_mcp_server" "docs" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   server_ref            = "docs"
///   endpoint              = "https://mcp.example.com/mcp"
///   description           = "Internal documentation search."
///   credential_ref_source = "secret"
///   api_key               = docsMcpApiKey
///   enabled_tools         = ["docs_search", "docs_get_page"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.ActionGatewayMcpServer;
/// import com.pulumi.digitalocean.ActionGatewayMcpServerArgs;
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
///         var docs = new ActionGatewayMcpServer("docs", ActionGatewayMcpServerArgs.builder()
///             .serverRef("docs")
///             .endpoint("https://mcp.example.com/mcp")
///             .description("Internal documentation search.")
///             .credentialRefSource("secret")
///             .apiKey(docsMcpApiKey)
///             .enabledTools(
///                 "docs_search",
///                 "docs_get_page")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   docs:
///     type: digitalocean:ActionGatewayMcpServer
///     properties:
///       serverRef: docs
///       endpoint: https://mcp.example.com/mcp
///       description: Internal documentation search.
///       credentialRefSource: secret
///       apiKey: ${docsMcpApiKey}
///       enabledTools:
///         - docs_search
///         - docs_get_page
/// ```
///
///
/// ### Per-user OAuth
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const tickets = new digitalocean.ActionGatewayMcpServer("tickets", {
///     serverRef: "tickets",
///     endpoint: "https://mcp.tickets.example.com/mcp",
///     credentialRefSource: "connection",
///     oauthClientId: ticketsOauthClientId,
///     oauthClientSecret: ticketsOauthClientSecret,
///     oauthAuthorizeUrl: "https://mcp.tickets.example.com/oauth/authorize",
///     oauthTokenUrl: "https://mcp.tickets.example.com/oauth/token",
///     oauthScopes: ["tickets:read"],
///     syncUserId: "user-123",
///     enabledTools: ["tickets_search"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// tickets = digitalocean.ActionGatewayMcpServer("tickets",
///     server_ref="tickets",
///     endpoint="https://mcp.tickets.example.com/mcp",
///     credential_ref_source="connection",
///     oauth_client_id=tickets_oauth_client_id,
///     oauth_client_secret=tickets_oauth_client_secret,
///     oauth_authorize_url="https://mcp.tickets.example.com/oauth/authorize",
///     oauth_token_url="https://mcp.tickets.example.com/oauth/token",
///     oauth_scopes=["tickets:read"],
///     sync_user_id="user-123",
///     enabled_tools=["tickets_search"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tickets = new DigitalOcean.ActionGatewayMcpServer("tickets", new()
///     {
///         ServerRef = "tickets",
///         Endpoint = "https://mcp.tickets.example.com/mcp",
///         CredentialRefSource = "connection",
///         OauthClientId = ticketsOauthClientId,
///         OauthClientSecret = ticketsOauthClientSecret,
///         OauthAuthorizeUrl = "https://mcp.tickets.example.com/oauth/authorize",
///         OauthTokenUrl = "https://mcp.tickets.example.com/oauth/token",
///         OauthScopes = new[]
///         {
///             "tickets:read",
///         },
///         SyncUserId = "user-123",
///         EnabledTools = new[]
///         {
///             "tickets_search",
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
/// 		_, err := digitalocean.NewActionGatewayMcpServer(ctx, "tickets", &digitalocean.ActionGatewayMcpServerArgs{
/// 			ServerRef:           pulumi.String("tickets"),
/// 			Endpoint:            pulumi.String("https://mcp.tickets.example.com/mcp"),
/// 			CredentialRefSource: pulumi.String("connection"),
/// 			OauthClientId:       pulumi.Any(ticketsOauthClientId),
/// 			OauthClientSecret:   pulumi.Any(ticketsOauthClientSecret),
/// 			OauthAuthorizeUrl:   pulumi.String("https://mcp.tickets.example.com/oauth/authorize"),
/// 			OauthTokenUrl:       pulumi.String("https://mcp.tickets.example.com/oauth/token"),
/// 			OauthScopes: pulumi.StringArray{
/// 				pulumi.String("tickets:read"),
/// 			},
/// 			SyncUserId: pulumi.String("user-123"),
/// 			EnabledTools: pulumi.StringArray{
/// 				pulumi.String("tickets_search"),
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
/// resource "digitalocean_action_gateway_mcp_server" "tickets" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   server_ref            = "tickets"
///   endpoint              = "https://mcp.tickets.example.com/mcp"
///   credential_ref_source = "connection"
///   oauth_client_id       = ticketsOauthClientId
///   oauth_client_secret   = ticketsOauthClientSecret
///   oauth_authorize_url   = "https://mcp.tickets.example.com/oauth/authorize"
///   oauth_token_url       = "https://mcp.tickets.example.com/oauth/token"
///   oauth_scopes          = ["tickets:read"]
///   sync_user_id          = "user-123"
///   enabled_tools         = ["tickets_search"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.ActionGatewayMcpServer;
/// import com.pulumi.digitalocean.ActionGatewayMcpServerArgs;
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
///         var tickets = new ActionGatewayMcpServer("tickets", ActionGatewayMcpServerArgs.builder()
///             .serverRef("tickets")
///             .endpoint("https://mcp.tickets.example.com/mcp")
///             .credentialRefSource("connection")
///             .oauthClientId(ticketsOauthClientId)
///             .oauthClientSecret(ticketsOauthClientSecret)
///             .oauthAuthorizeUrl("https://mcp.tickets.example.com/oauth/authorize")
///             .oauthTokenUrl("https://mcp.tickets.example.com/oauth/token")
///             .oauthScopes("tickets:read")
///             .syncUserId("user-123")
///             .enabledTools("tickets_search")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tickets:
///     type: digitalocean:ActionGatewayMcpServer
///     properties:
///       serverRef: tickets
///       endpoint: https://mcp.tickets.example.com/mcp
///       credentialRefSource: connection
///       oauthClientId: ${ticketsOauthClientId}
///       oauthClientSecret: ${ticketsOauthClientSecret}
///       oauthAuthorizeUrl: https://mcp.tickets.example.com/oauth/authorize
///       oauthTokenUrl: https://mcp.tickets.example.com/oauth/token
///       oauthScopes:
///         - tickets:read
///       syncUserId: user-123
///       enabledTools:
///         - tickets_search
/// ```
///
///
/// ## Import
///
/// An MCP server can be imported using its `serverRef`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/actionGatewayMcpServer:ActionGatewayMcpServer docs docs
/// ```
///
/// The write-only arguments `apiKey`, `oauthClientId`, `oauthClientSecret`,
/// and `oauthTokenUrl` are not imported. Changing any of them registers the
/// server again, so after an import the next plan would replace a server whose
/// configuration sets them. To keep the imported server, ignore the ones your
/// configuration sets:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const docs = new digitalocean.ActionGatewayMcpServer("docs", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// docs = digitalocean.ActionGatewayMcpServer("docs")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var docs = new DigitalOcean.ActionGatewayMcpServer("docs");
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
/// 		_, err := digitalocean.NewActionGatewayMcpServer(ctx, "docs", nil)
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
/// resource "digitalocean_action_gateway_mcp_server" "docs" {
///   lifecycle {
///     create_before_destroy = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.ActionGatewayMcpServer;
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
///         var docs = new ActionGatewayMcpServer("docs");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   docs:
///     type: digitalocean:ActionGatewayMcpServer
/// ```
///
///
/// For a server with `credentialRefSource = "connection"`, ignore
/// `oauthClientId`, `oauthClientSecret`, and `oauthTokenUrl` instead.
/// Terraform then ignores changes to those arguments until you remove them from
/// `ignoreChanges`, which registers the server again with the configured values.
///
/// `syncUserId` is not imported either. The first apply after an import sets it
/// and discovers the server's tools again.
class ActionGatewayMcpServer extends pulumi.CustomResource {
  /// For `secret`: the key or token itself, sent in the `Authorization` header. It is write-only, so Terraform cannot detect changes made outside of Terraform. Conflicts with `credentialRef`.
  late final pulumi.Output<String?> apiKey;
  /// When the server was registered.
  late final pulumi.Output<String> createdAt;
  /// For `secret`: a reference to a secret your team stores with DigitalOcean. Conflicts with `apiKey`.
  late final pulumi.Output<String> credentialRef;
  /// How requests to the server authenticate: `none` (the default), `secret`, or `connection`.
  late final pulumi.Output<String> credentialRefSource;
  /// The description shown on the server's catalog card, at most 1024 characters.
  late final pulumi.Output<String?> description;
  /// The tools discovered on the server.
  late final pulumi.Output<List<ActionGatewayMcpServerDiscoveredTool>> discoveredTools;
  /// The slugs of the discovered tools to enable, such as `docsSearch`. Every other tool of the server is disabled. When omitted, Terraform does not manage which tools are enabled. Changing this discovers the server's tools again before enabling them.
  late final pulumi.Output<List<String>> enabledTools;
  /// The HTTPS URL of the server's MCP endpoint. Its host must resolve only to public IP addresses.
  late final pulumi.Output<String> endpoint;
  /// When the server's tools were last discovered.
  late final pulumi.Output<String> lastSyncedAt;
  /// How long, in seconds, a user's authorization may be reused before they must consent again. `0` means 30 days.
  late final pulumi.Output<int> oauthAuthorizationTtlSeconds;
  /// For `connection`: the OAuth authorization endpoint, on the endpoint's host or another host under the same registrable domain.
  late final pulumi.Output<String?> oauthAuthorizeUrl;
  /// For `connection`: the client ID of your team's OAuth client for the server. Each user of the server then authorizes individually.
  late final pulumi.Output<String?> oauthClientId;
  /// For `connection`: the client secret of your team's OAuth client. It is write-only.
  late final pulumi.Output<String?> oauthClientSecret;
  /// For `connection`: the scopes to request from each user, 1 to 64 of them.
  late final pulumi.Output<List<String>?> oauthScopes;
  /// For `connection`: the OAuth token endpoint, under the same rules as `oauthAuthorizeUrl`.
  late final pulumi.Output<String?> oauthTokenUrl;
  /// The MCP protocol version the server reported.
  late final pulumi.Output<String> protocolVersion;
  /// The identifier for the server, unique within your team. It must start with a lowercase letter and contain at most 64 characters from `[a-z0-9-]`.
  late final pulumi.Output<String> serverRef;
  /// The error from the most recent tool discovery, if any.
  late final pulumi.Output<String> syncError;
  /// The status of the most recent tool discovery.
  late final pulumi.Output<String> syncStatus;
  /// For `connection`: the actor ID of a user who has authorized the server. The tools of such a server are discovered and verified as this user, so `enabledTools` requires it. Adding or changing it discovers the server's tools again.
  late final pulumi.Output<String?> syncUserId;
  /// The number of tools discovered on the server.
  late final pulumi.Output<int> toolCount;
  /// The MCP transport. Only `streamableHttp`, the default, is supported.
  late final pulumi.Output<String> transport;
  /// When the server was last modified.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ActionGatewayMcpServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ActionGatewayMcpServer]. {@macro pulumi_index_action_gateway_mcp_server_action_gateway_mcp_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ActionGatewayMcpServer(
    String name, {
    ActionGatewayMcpServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/actionGatewayMcpServer:ActionGatewayMcpServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '4.86.0').merge(options),
          additionalSecretOutputs: const ['apiKey', 'oauthClientSecret'],
        ) {
    apiKey = registerOutput<String?>('apiKey', isSecret: true);
    createdAt = registerOutput<String>('createdAt');
    credentialRef = registerOutput<String>('credentialRef');
    credentialRefSource = registerOutput<String>('credentialRefSource');
    description = registerOutput<String?>('description');
    discoveredTools = registerOutput<List<ActionGatewayMcpServerDiscoveredTool>>('discoveredTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ActionGatewayMcpServerDiscoveredTool>(guardedValue, (value) => ActionGatewayMcpServerDiscoveredTool.fromMap((value as Map).cast<String, dynamic>())); });
    enabledTools = registerOutput<List<String>>('enabledTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    endpoint = registerOutput<String>('endpoint');
    lastSyncedAt = registerOutput<String>('lastSyncedAt');
    oauthAuthorizationTtlSeconds = registerOutput<int>('oauthAuthorizationTtlSeconds');
    oauthAuthorizeUrl = registerOutput<String?>('oauthAuthorizeUrl');
    oauthClientId = registerOutput<String?>('oauthClientId');
    oauthClientSecret = registerOutput<String?>('oauthClientSecret', isSecret: true);
    oauthScopes = registerOutput<List<String>?>('oauthScopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    oauthTokenUrl = registerOutput<String?>('oauthTokenUrl');
    protocolVersion = registerOutput<String>('protocolVersion');
    serverRef = registerOutput<String>('serverRef');
    syncError = registerOutput<String>('syncError');
    syncStatus = registerOutput<String>('syncStatus');
    syncUserId = registerOutput<String?>('syncUserId');
    toolCount = registerOutput<int>('toolCount');
    transport = registerOutput<String>('transport');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ActionGatewayMcpServer] resource's state with the given [name] and [id].
  static ActionGatewayMcpServer get(
    String name,
    pulumi.Input<String> id, {
    ActionGatewayMcpServerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ActionGatewayMcpServer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ActionGatewayMcpServer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/actionGatewayMcpServer:ActionGatewayMcpServer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiKey = registerOutput<String?>('apiKey', isSecret: true);
    createdAt = registerOutput<String>('createdAt');
    credentialRef = registerOutput<String>('credentialRef');
    credentialRefSource = registerOutput<String>('credentialRefSource');
    description = registerOutput<String?>('description');
    discoveredTools = registerOutput<List<ActionGatewayMcpServerDiscoveredTool>>('discoveredTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ActionGatewayMcpServerDiscoveredTool>(guardedValue, (value) => ActionGatewayMcpServerDiscoveredTool.fromMap((value as Map).cast<String, dynamic>())); });
    enabledTools = registerOutput<List<String>>('enabledTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    endpoint = registerOutput<String>('endpoint');
    lastSyncedAt = registerOutput<String>('lastSyncedAt');
    oauthAuthorizationTtlSeconds = registerOutput<int>('oauthAuthorizationTtlSeconds');
    oauthAuthorizeUrl = registerOutput<String?>('oauthAuthorizeUrl');
    oauthClientId = registerOutput<String?>('oauthClientId');
    oauthClientSecret = registerOutput<String?>('oauthClientSecret', isSecret: true);
    oauthScopes = registerOutput<List<String>?>('oauthScopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    oauthTokenUrl = registerOutput<String?>('oauthTokenUrl');
    protocolVersion = registerOutput<String>('protocolVersion');
    serverRef = registerOutput<String>('serverRef');
    syncError = registerOutput<String>('syncError');
    syncStatus = registerOutput<String>('syncStatus');
    syncUserId = registerOutput<String?>('syncUserId');
    toolCount = registerOutput<int>('toolCount');
    transport = registerOutput<String>('transport');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ActionGatewayMcpServer] resource.
  ActionGatewayMcpServer.reference(String urn)
    : super(
        'digitalocean:index/actionGatewayMcpServer:ActionGatewayMcpServer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['apiKey', 'oauthClientSecret'],
        isResourceReference: true,
      ) {
    apiKey = registerOutput<String?>('apiKey', isSecret: true);
    createdAt = registerOutput<String>('createdAt');
    credentialRef = registerOutput<String>('credentialRef');
    credentialRefSource = registerOutput<String>('credentialRefSource');
    description = registerOutput<String?>('description');
    discoveredTools = registerOutput<List<ActionGatewayMcpServerDiscoveredTool>>('discoveredTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ActionGatewayMcpServerDiscoveredTool>(guardedValue, (value) => ActionGatewayMcpServerDiscoveredTool.fromMap((value as Map).cast<String, dynamic>())); });
    enabledTools = registerOutput<List<String>>('enabledTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    endpoint = registerOutput<String>('endpoint');
    lastSyncedAt = registerOutput<String>('lastSyncedAt');
    oauthAuthorizationTtlSeconds = registerOutput<int>('oauthAuthorizationTtlSeconds');
    oauthAuthorizeUrl = registerOutput<String?>('oauthAuthorizeUrl');
    oauthClientId = registerOutput<String?>('oauthClientId');
    oauthClientSecret = registerOutput<String?>('oauthClientSecret', isSecret: true);
    oauthScopes = registerOutput<List<String>?>('oauthScopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    oauthTokenUrl = registerOutput<String?>('oauthTokenUrl');
    protocolVersion = registerOutput<String>('protocolVersion');
    serverRef = registerOutput<String>('serverRef');
    syncError = registerOutput<String>('syncError');
    syncStatus = registerOutput<String>('syncStatus');
    syncUserId = registerOutput<String?>('syncUserId');
    toolCount = registerOutput<int>('toolCount');
    transport = registerOutput<String>('transport');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
