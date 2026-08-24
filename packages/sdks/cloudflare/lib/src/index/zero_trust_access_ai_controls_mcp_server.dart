import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_ai_controls_mcp_server_args.dart';
import 'zero_trust_access_ai_controls_mcp_server_auth_config_summary.dart';
import 'zero_trust_access_ai_controls_mcp_server_error_details.dart';
import 'zero_trust_access_ai_controls_mcp_server_state.dart';
import 'zero_trust_access_ai_controls_mcp_server_updated_prompt.dart';
import 'zero_trust_access_ai_controls_mcp_server_updated_tool.dart';

/// Accepted Permissions
///
/// - `MCP Portals Read`
/// - `MCP Portals Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustAccessAiControlsMcpServer = new cloudflare.ZeroTrustAccessAiControlsMcpServer("example_zero_trust_access_ai_controls_mcp_server", {
///     accountId: "a86a8f5c339544d7bdc89926de14fb8c",
///     zeroTrustAccessAiControlsMcpServerId: "my-mcp-server",
///     authType: "unauthenticated",
///     hostname: "https://example.com/mcp",
///     name: "My MCP Server",
///     authCredentials: "auth_credentials",
///     clientSecret: "client_secret",
///     description: "This is one remote mcp server",
///     isSharedOauthCallbackEnabled: true,
///     secureWebGateway: false,
///     updatedPrompts: [{
///         name: "name",
///         alias: "my-custom-alias",
///         description: "description",
///         enabled: true,
///     }],
///     updatedTools: [{
///         name: "name",
///         alias: "my-custom-alias",
///         description: "description",
///         enabled: true,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_access_ai_controls_mcp_server = cloudflare.ZeroTrustAccessAiControlsMcpServer("example_zero_trust_access_ai_controls_mcp_server",
///     account_id="a86a8f5c339544d7bdc89926de14fb8c",
///     zero_trust_access_ai_controls_mcp_server_id="my-mcp-server",
///     auth_type="unauthenticated",
///     hostname="https://example.com/mcp",
///     name="My MCP Server",
///     auth_credentials="auth_credentials",
///     client_secret="client_secret",
///     description="This is one remote mcp server",
///     is_shared_oauth_callback_enabled=True,
///     secure_web_gateway=False,
///     updated_prompts=[{
///         "name": "name",
///         "alias": "my-custom-alias",
///         "description": "description",
///         "enabled": True,
///     }],
///     updated_tools=[{
///         "name": "name",
///         "alias": "my-custom-alias",
///         "description": "description",
///         "enabled": True,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustAccessAiControlsMcpServer = new Cloudflare.ZeroTrustAccessAiControlsMcpServer("example_zero_trust_access_ai_controls_mcp_server", new()
///     {
///         AccountId = "a86a8f5c339544d7bdc89926de14fb8c",
///         ZeroTrustAccessAiControlsMcpServerId = "my-mcp-server",
///         AuthType = "unauthenticated",
///         Hostname = "https://example.com/mcp",
///         Name = "My MCP Server",
///         AuthCredentials = "auth_credentials",
///         ClientSecret = "client_secret",
///         Description = "This is one remote mcp server",
///         IsSharedOauthCallbackEnabled = true,
///         SecureWebGateway = false,
///         UpdatedPrompts = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustAccessAiControlsMcpServerUpdatedPromptArgs
///             {
///                 Name = "name",
///                 Alias = "my-custom-alias",
///                 Description = "description",
///                 Enabled = true,
///             },
///         },
///         UpdatedTools = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustAccessAiControlsMcpServerUpdatedToolArgs
///             {
///                 Name = "name",
///                 Alias = "my-custom-alias",
///                 Description = "description",
///                 Enabled = true,
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
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewZeroTrustAccessAiControlsMcpServer(ctx, "example_zero_trust_access_ai_controls_mcp_server", &cloudflare.ZeroTrustAccessAiControlsMcpServerArgs{
/// 			AccountId:                            pulumi.String("a86a8f5c339544d7bdc89926de14fb8c"),
/// 			ZeroTrustAccessAiControlsMcpServerId: pulumi.String("my-mcp-server"),
/// 			AuthType:                             pulumi.String("unauthenticated"),
/// 			Hostname:                             pulumi.String("https://example.com/mcp"),
/// 			Name:                                 pulumi.String("My MCP Server"),
/// 			AuthCredentials:                      pulumi.String("auth_credentials"),
/// 			ClientSecret:                         pulumi.String("client_secret"),
/// 			Description:                          pulumi.String("This is one remote mcp server"),
/// 			IsSharedOauthCallbackEnabled:         pulumi.Bool(true),
/// 			SecureWebGateway:                     pulumi.Bool(false),
/// 			UpdatedPrompts: cloudflare.ZeroTrustAccessAiControlsMcpServerUpdatedPromptArray{
/// 				&cloudflare.ZeroTrustAccessAiControlsMcpServerUpdatedPromptArgs{
/// 					Name:        pulumi.String("name"),
/// 					Alias:       pulumi.String("my-custom-alias"),
/// 					Description: pulumi.String("description"),
/// 					Enabled:     pulumi.Bool(true),
/// 				},
/// 			},
/// 			UpdatedTools: cloudflare.ZeroTrustAccessAiControlsMcpServerUpdatedToolArray{
/// 				&cloudflare.ZeroTrustAccessAiControlsMcpServerUpdatedToolArgs{
/// 					Name:        pulumi.String("name"),
/// 					Alias:       pulumi.String("my-custom-alias"),
/// 					Description: pulumi.String("description"),
/// 					Enabled:     pulumi.Bool(true),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_zerotrustaccessaicontrolsmcpserver" "example_zero_trust_access_ai_controls_mcp_server" {
///   account_id                                  = "a86a8f5c339544d7bdc89926de14fb8c"
///   zero_trust_access_ai_controls_mcp_server_id = "my-mcp-server"
///   auth_type                                   = "unauthenticated"
///   hostname                                    = "https://example.com/mcp"
///   name                                        = "My MCP Server"
///   auth_credentials                            = "auth_credentials"
///   client_secret                               = "client_secret"
///   description                                 = "This is one remote mcp server"
///   is_shared_oauth_callback_enabled            = true
///   secure_web_gateway                          = false
///   updated_prompts {
///     name        = "name"
///     alias       = "my-custom-alias"
///     description = "description"
///     enabled     = true
///   }
///   updated_tools {
///     name        = "name"
///     alias       = "my-custom-alias"
///     description = "description"
///     enabled     = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustAccessAiControlsMcpServer;
/// import com.pulumi.cloudflare.ZeroTrustAccessAiControlsMcpServerArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessAiControlsMcpServerUpdatedPromptArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessAiControlsMcpServerUpdatedToolArgs;
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
///         var exampleZeroTrustAccessAiControlsMcpServer = new ZeroTrustAccessAiControlsMcpServer("exampleZeroTrustAccessAiControlsMcpServer", ZeroTrustAccessAiControlsMcpServerArgs.builder()
///             .accountId("a86a8f5c339544d7bdc89926de14fb8c")
///             .zeroTrustAccessAiControlsMcpServerId("my-mcp-server")
///             .authType("unauthenticated")
///             .hostname("https://example.com/mcp")
///             .name("My MCP Server")
///             .authCredentials("auth_credentials")
///             .clientSecret("client_secret")
///             .description("This is one remote mcp server")
///             .isSharedOauthCallbackEnabled(true)
///             .secureWebGateway(false)
///             .updatedPrompts(ZeroTrustAccessAiControlsMcpServerUpdatedPromptArgs.builder()
///                 .name("name")
///                 .alias("my-custom-alias")
///                 .description("description")
///                 .enabled(true)
///                 .build())
///             .updatedTools(ZeroTrustAccessAiControlsMcpServerUpdatedToolArgs.builder()
///                 .name("name")
///                 .alias("my-custom-alias")
///                 .description("description")
///                 .enabled(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustAccessAiControlsMcpServer:
///     type: cloudflare:ZeroTrustAccessAiControlsMcpServer
///     name: example_zero_trust_access_ai_controls_mcp_server
///     properties:
///       accountId: a86a8f5c339544d7bdc89926de14fb8c
///       zeroTrustAccessAiControlsMcpServerId: my-mcp-server
///       authType: unauthenticated
///       hostname: https://example.com/mcp
///       name: My MCP Server
///       authCredentials: auth_credentials
///       clientSecret: client_secret
///       description: This is one remote mcp server
///       isSharedOauthCallbackEnabled: true
///       secureWebGateway: false
///       updatedPrompts:
///         - name: name
///           alias: my-custom-alias
///           description: description
///           enabled: true
///       updatedTools:
///         - name: name
///           alias: my-custom-alias
///           description: description
///           enabled: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustAccessAiControlsMcpServer:ZeroTrustAccessAiControlsMcpServer example '<account_id>/<id>'
/// ```
class ZeroTrustAccessAiControlsMcpServer extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// Safe subset of auth*credentials surfaced to the dashboard. Includes auth*mode (dcr|manual), has*client*secret, client*secret*version, and the OAuth endpoints + client*id for manual servers. Never includes the secret value.
  late final pulumi.Output<ZeroTrustAccessAiControlsMcpServerAuthConfigSummary> authConfigSummary;
  late final pulumi.Output<String?> authCredentials;
  /// Available values: "oauth", "bearer", "unauthenticated".
  late final pulumi.Output<String> authType;
  /// Pre-registered OAuth client*secret. Write-only - accepted on create/update when auth*credentials.auth*mode is 'manual'. Stored AES-GCM-encrypted in server*oauth_secrets; never returned by read endpoints.
  late final pulumi.Output<String?> clientSecret;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<String> createdBy;
  late final pulumi.Output<String?> description;
  late final pulumi.Output<String> error;
  late final pulumi.Output<ZeroTrustAccessAiControlsMcpServerErrorDetails> errorDetails;
  late final pulumi.Output<String> hostname;
  /// When true, the gateway worker uses the shared Cloudflare-owned OAuth callback endpoint as the redirectUri for upstream on-behalf OAuth, instead of the customer portal hostname. Defaults to false (off); opt in per server by setting true. Effective behavior is gated by the gateway worker's per-env rollout mode KV key.
  late final pulumi.Output<bool> isSharedOauthCallbackEnabled;
  late final pulumi.Output<String> lastSuccessfulSync;
  late final pulumi.Output<String> lastSynced;
  late final pulumi.Output<String> modifiedAt;
  late final pulumi.Output<String> modifiedBy;
  late final pulumi.Output<String> name;
  late final pulumi.Output<List<Map<String, String>>> prompts;
  /// Route outbound traffic to this MCP server through Zero Trust Secure Web Gateway
  late final pulumi.Output<bool> secureWebGateway;
  late final pulumi.Output<String> status;
  late final pulumi.Output<List<Map<String, String>>> tools;
  late final pulumi.Output<List<ZeroTrustAccessAiControlsMcpServerUpdatedPrompt>?> updatedPrompts;
  late final pulumi.Output<List<ZeroTrustAccessAiControlsMcpServerUpdatedTool>?> updatedTools;
  /// server id
  late final pulumi.Output<String> zeroTrustAccessAiControlsMcpServerId;

  /// Creates a new [ZeroTrustAccessAiControlsMcpServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustAccessAiControlsMcpServer]. {@macro pulumi_index_zero_trust_access_ai_controls_mcp_server_zero_trust_access_ai_controls_mcp_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustAccessAiControlsMcpServer(
    String name, {
    ZeroTrustAccessAiControlsMcpServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustAccessAiControlsMcpServer:ZeroTrustAccessAiControlsMcpServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
          additionalSecretOutputs: const ['authCredentials', 'clientSecret'],
        ) {
    accountId = registerOutput<String>('accountId');
    authConfigSummary = registerOutput<ZeroTrustAccessAiControlsMcpServerAuthConfigSummary>('authConfigSummary', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustAccessAiControlsMcpServerAuthConfigSummary.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authCredentials = registerOutput<String?>('authCredentials', isSecret: true);
    authType = registerOutput<String>('authType');
    clientSecret = registerOutput<String?>('clientSecret', isSecret: true);
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    description = registerOutput<String?>('description');
    error = registerOutput<String>('error');
    errorDetails = registerOutput<ZeroTrustAccessAiControlsMcpServerErrorDetails>('errorDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustAccessAiControlsMcpServerErrorDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hostname = registerOutput<String>('hostname');
    isSharedOauthCallbackEnabled = registerOutput<bool>('isSharedOauthCallbackEnabled');
    lastSuccessfulSync = registerOutput<String>('lastSuccessfulSync');
    lastSynced = registerOutput<String>('lastSynced');
    modifiedAt = registerOutput<String>('modifiedAt');
    modifiedBy = registerOutput<String>('modifiedBy');
    this.name = registerOutput<String>('name');
    prompts = registerOutput<List<Map<String, String>>>('prompts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>()); });
    secureWebGateway = registerOutput<bool>('secureWebGateway');
    status = registerOutput<String>('status');
    tools = registerOutput<List<Map<String, String>>>('tools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>()); });
    updatedPrompts = registerOutput<List<ZeroTrustAccessAiControlsMcpServerUpdatedPrompt>?>('updatedPrompts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustAccessAiControlsMcpServerUpdatedPrompt>(guardedValue, (value) => ZeroTrustAccessAiControlsMcpServerUpdatedPrompt.fromMap((value as Map).cast<String, dynamic>())); });
    updatedTools = registerOutput<List<ZeroTrustAccessAiControlsMcpServerUpdatedTool>?>('updatedTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustAccessAiControlsMcpServerUpdatedTool>(guardedValue, (value) => ZeroTrustAccessAiControlsMcpServerUpdatedTool.fromMap((value as Map).cast<String, dynamic>())); });
    zeroTrustAccessAiControlsMcpServerId = registerOutput<String>('zeroTrustAccessAiControlsMcpServerId');
  }

  /// Gets an existing [ZeroTrustAccessAiControlsMcpServer] resource's state with the given [name] and [id].
  static ZeroTrustAccessAiControlsMcpServer get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustAccessAiControlsMcpServerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustAccessAiControlsMcpServer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustAccessAiControlsMcpServer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustAccessAiControlsMcpServer:ZeroTrustAccessAiControlsMcpServer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    authConfigSummary = registerOutput<ZeroTrustAccessAiControlsMcpServerAuthConfigSummary>('authConfigSummary', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustAccessAiControlsMcpServerAuthConfigSummary.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authCredentials = registerOutput<String?>('authCredentials', isSecret: true);
    authType = registerOutput<String>('authType');
    clientSecret = registerOutput<String?>('clientSecret', isSecret: true);
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    description = registerOutput<String?>('description');
    error = registerOutput<String>('error');
    errorDetails = registerOutput<ZeroTrustAccessAiControlsMcpServerErrorDetails>('errorDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustAccessAiControlsMcpServerErrorDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hostname = registerOutput<String>('hostname');
    isSharedOauthCallbackEnabled = registerOutput<bool>('isSharedOauthCallbackEnabled');
    lastSuccessfulSync = registerOutput<String>('lastSuccessfulSync');
    lastSynced = registerOutput<String>('lastSynced');
    modifiedAt = registerOutput<String>('modifiedAt');
    modifiedBy = registerOutput<String>('modifiedBy');
    this.name = registerOutput<String>('name');
    prompts = registerOutput<List<Map<String, String>>>('prompts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>()); });
    secureWebGateway = registerOutput<bool>('secureWebGateway');
    status = registerOutput<String>('status');
    tools = registerOutput<List<Map<String, String>>>('tools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>()); });
    updatedPrompts = registerOutput<List<ZeroTrustAccessAiControlsMcpServerUpdatedPrompt>?>('updatedPrompts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustAccessAiControlsMcpServerUpdatedPrompt>(guardedValue, (value) => ZeroTrustAccessAiControlsMcpServerUpdatedPrompt.fromMap((value as Map).cast<String, dynamic>())); });
    updatedTools = registerOutput<List<ZeroTrustAccessAiControlsMcpServerUpdatedTool>?>('updatedTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustAccessAiControlsMcpServerUpdatedTool>(guardedValue, (value) => ZeroTrustAccessAiControlsMcpServerUpdatedTool.fromMap((value as Map).cast<String, dynamic>())); });
    zeroTrustAccessAiControlsMcpServerId = registerOutput<String>('zeroTrustAccessAiControlsMcpServerId');
  }

  /// Creates a typed reference to an existing [ZeroTrustAccessAiControlsMcpServer] resource.
  ZeroTrustAccessAiControlsMcpServer.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustAccessAiControlsMcpServer:ZeroTrustAccessAiControlsMcpServer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['authCredentials', 'clientSecret'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    authConfigSummary = registerOutput<ZeroTrustAccessAiControlsMcpServerAuthConfigSummary>('authConfigSummary', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustAccessAiControlsMcpServerAuthConfigSummary.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authCredentials = registerOutput<String?>('authCredentials', isSecret: true);
    authType = registerOutput<String>('authType');
    clientSecret = registerOutput<String?>('clientSecret', isSecret: true);
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    description = registerOutput<String?>('description');
    error = registerOutput<String>('error');
    errorDetails = registerOutput<ZeroTrustAccessAiControlsMcpServerErrorDetails>('errorDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustAccessAiControlsMcpServerErrorDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hostname = registerOutput<String>('hostname');
    isSharedOauthCallbackEnabled = registerOutput<bool>('isSharedOauthCallbackEnabled');
    lastSuccessfulSync = registerOutput<String>('lastSuccessfulSync');
    lastSynced = registerOutput<String>('lastSynced');
    modifiedAt = registerOutput<String>('modifiedAt');
    modifiedBy = registerOutput<String>('modifiedBy');
    this.name = registerOutput<String>('name');
    prompts = registerOutput<List<Map<String, String>>>('prompts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>()); });
    secureWebGateway = registerOutput<bool>('secureWebGateway');
    status = registerOutput<String>('status');
    tools = registerOutput<List<Map<String, String>>>('tools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>()); });
    updatedPrompts = registerOutput<List<ZeroTrustAccessAiControlsMcpServerUpdatedPrompt>?>('updatedPrompts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustAccessAiControlsMcpServerUpdatedPrompt>(guardedValue, (value) => ZeroTrustAccessAiControlsMcpServerUpdatedPrompt.fromMap((value as Map).cast<String, dynamic>())); });
    updatedTools = registerOutput<List<ZeroTrustAccessAiControlsMcpServerUpdatedTool>?>('updatedTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustAccessAiControlsMcpServerUpdatedTool>(guardedValue, (value) => ZeroTrustAccessAiControlsMcpServerUpdatedTool.fromMap((value as Map).cast<String, dynamic>())); });
    zeroTrustAccessAiControlsMcpServerId = registerOutput<String>('zeroTrustAccessAiControlsMcpServerId');
  }
}
