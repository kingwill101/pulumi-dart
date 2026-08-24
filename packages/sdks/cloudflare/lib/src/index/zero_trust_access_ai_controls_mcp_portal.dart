import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_ai_controls_mcp_portal_args.dart';
import 'zero_trust_access_ai_controls_mcp_portal_server.dart';
import 'zero_trust_access_ai_controls_mcp_portal_state.dart';

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
/// const exampleZeroTrustAccessAiControlsMcpPortal = new cloudflare.ZeroTrustAccessAiControlsMcpPortal("example_zero_trust_access_ai_controls_mcp_portal", {
///     accountId: "a86a8f5c339544d7bdc89926de14fb8c",
///     zeroTrustAccessAiControlsMcpPortalId: "my-mcp-portal",
///     hostname: "exmaple.com",
///     name: "My MCP Portal",
///     allowCodeMode: true,
///     description: "This is my custom MCP Portal",
///     secureWebGateway: false,
///     servers: [{
///         serverId: "my-mcp-server",
///         defaultDisabled: true,
///         onBehalf: true,
///         updatedPrompts: [{
///             name: "name",
///             alias: "my-custom-alias",
///             description: "description",
///             enabled: true,
///         }],
///         updatedTools: [{
///             name: "name",
///             alias: "my-custom-alias",
///             description: "description",
///             enabled: true,
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_access_ai_controls_mcp_portal = cloudflare.ZeroTrustAccessAiControlsMcpPortal("example_zero_trust_access_ai_controls_mcp_portal",
///     account_id="a86a8f5c339544d7bdc89926de14fb8c",
///     zero_trust_access_ai_controls_mcp_portal_id="my-mcp-portal",
///     hostname="exmaple.com",
///     name="My MCP Portal",
///     allow_code_mode=True,
///     description="This is my custom MCP Portal",
///     secure_web_gateway=False,
///     servers=[{
///         "server_id": "my-mcp-server",
///         "default_disabled": True,
///         "on_behalf": True,
///         "updated_prompts": [{
///             "name": "name",
///             "alias": "my-custom-alias",
///             "description": "description",
///             "enabled": True,
///         }],
///         "updated_tools": [{
///             "name": "name",
///             "alias": "my-custom-alias",
///             "description": "description",
///             "enabled": True,
///         }],
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
///     var exampleZeroTrustAccessAiControlsMcpPortal = new Cloudflare.ZeroTrustAccessAiControlsMcpPortal("example_zero_trust_access_ai_controls_mcp_portal", new()
///     {
///         AccountId = "a86a8f5c339544d7bdc89926de14fb8c",
///         ZeroTrustAccessAiControlsMcpPortalId = "my-mcp-portal",
///         Hostname = "exmaple.com",
///         Name = "My MCP Portal",
///         AllowCodeMode = true,
///         Description = "This is my custom MCP Portal",
///         SecureWebGateway = false,
///         Servers = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustAccessAiControlsMcpPortalServerArgs
///             {
///                 ServerId = "my-mcp-server",
///                 DefaultDisabled = true,
///                 OnBehalf = true,
///                 UpdatedPrompts = new[]
///                 {
///                     new Cloudflare.Inputs.ZeroTrustAccessAiControlsMcpPortalServerUpdatedPromptArgs
///                     {
///                         Name = "name",
///                         Alias = "my-custom-alias",
///                         Description = "description",
///                         Enabled = true,
///                     },
///                 },
///                 UpdatedTools = new[]
///                 {
///                     new Cloudflare.Inputs.ZeroTrustAccessAiControlsMcpPortalServerUpdatedToolArgs
///                     {
///                         Name = "name",
///                         Alias = "my-custom-alias",
///                         Description = "description",
///                         Enabled = true,
///                     },
///                 },
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
/// 		_, err := cloudflare.NewZeroTrustAccessAiControlsMcpPortal(ctx, "example_zero_trust_access_ai_controls_mcp_portal", &cloudflare.ZeroTrustAccessAiControlsMcpPortalArgs{
/// 			AccountId:                            pulumi.String("a86a8f5c339544d7bdc89926de14fb8c"),
/// 			ZeroTrustAccessAiControlsMcpPortalId: pulumi.String("my-mcp-portal"),
/// 			Hostname:                             pulumi.String("exmaple.com"),
/// 			Name:                                 pulumi.String("My MCP Portal"),
/// 			AllowCodeMode:                        pulumi.Bool(true),
/// 			Description:                          pulumi.String("This is my custom MCP Portal"),
/// 			SecureWebGateway:                     pulumi.Bool(false),
/// 			Servers: cloudflare.ZeroTrustAccessAiControlsMcpPortalServerArray{
/// 				&cloudflare.ZeroTrustAccessAiControlsMcpPortalServerArgs{
/// 					ServerId:        pulumi.String("my-mcp-server"),
/// 					DefaultDisabled: pulumi.Bool(true),
/// 					OnBehalf:        pulumi.Bool(true),
/// 					UpdatedPrompts: cloudflare.ZeroTrustAccessAiControlsMcpPortalServerUpdatedPromptArray{
/// 						&cloudflare.ZeroTrustAccessAiControlsMcpPortalServerUpdatedPromptArgs{
/// 							Name:        pulumi.String("name"),
/// 							Alias:       pulumi.String("my-custom-alias"),
/// 							Description: pulumi.String("description"),
/// 							Enabled:     pulumi.Bool(true),
/// 						},
/// 					},
/// 					UpdatedTools: cloudflare.ZeroTrustAccessAiControlsMcpPortalServerUpdatedToolArray{
/// 						&cloudflare.ZeroTrustAccessAiControlsMcpPortalServerUpdatedToolArgs{
/// 							Name:        pulumi.String("name"),
/// 							Alias:       pulumi.String("my-custom-alias"),
/// 							Description: pulumi.String("description"),
/// 							Enabled:     pulumi.Bool(true),
/// 						},
/// 					},
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
/// resource "cloudflare_zerotrustaccessaicontrolsmcpportal" "example_zero_trust_access_ai_controls_mcp_portal" {
///   account_id                                  = "a86a8f5c339544d7bdc89926de14fb8c"
///   zero_trust_access_ai_controls_mcp_portal_id = "my-mcp-portal"
///   hostname                                    = "exmaple.com"
///   name                                        = "My MCP Portal"
///   allow_code_mode                             = true
///   description                                 = "This is my custom MCP Portal"
///   secure_web_gateway                          = false
///   servers {
///     server_id        = "my-mcp-server"
///     default_disabled = true
///     on_behalf        = true
///     updated_prompts {
///       name        = "name"
///       alias       = "my-custom-alias"
///       description = "description"
///       enabled     = true
///     }
///     updated_tools {
///       name        = "name"
///       alias       = "my-custom-alias"
///       description = "description"
///       enabled     = true
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustAccessAiControlsMcpPortal;
/// import com.pulumi.cloudflare.ZeroTrustAccessAiControlsMcpPortalArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessAiControlsMcpPortalServerArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessAiControlsMcpPortalServerUpdatedPromptArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessAiControlsMcpPortalServerUpdatedToolArgs;
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
///         var exampleZeroTrustAccessAiControlsMcpPortal = new ZeroTrustAccessAiControlsMcpPortal("exampleZeroTrustAccessAiControlsMcpPortal", ZeroTrustAccessAiControlsMcpPortalArgs.builder()
///             .accountId("a86a8f5c339544d7bdc89926de14fb8c")
///             .zeroTrustAccessAiControlsMcpPortalId("my-mcp-portal")
///             .hostname("exmaple.com")
///             .name("My MCP Portal")
///             .allowCodeMode(true)
///             .description("This is my custom MCP Portal")
///             .secureWebGateway(false)
///             .servers(ZeroTrustAccessAiControlsMcpPortalServerArgs.builder()
///                 .serverId("my-mcp-server")
///                 .defaultDisabled(true)
///                 .onBehalf(true)
///                 .updatedPrompts(ZeroTrustAccessAiControlsMcpPortalServerUpdatedPromptArgs.builder()
///                     .name("name")
///                     .alias("my-custom-alias")
///                     .description("description")
///                     .enabled(true)
///                     .build())
///                 .updatedTools(ZeroTrustAccessAiControlsMcpPortalServerUpdatedToolArgs.builder()
///                     .name("name")
///                     .alias("my-custom-alias")
///                     .description("description")
///                     .enabled(true)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustAccessAiControlsMcpPortal:
///     type: cloudflare:ZeroTrustAccessAiControlsMcpPortal
///     name: example_zero_trust_access_ai_controls_mcp_portal
///     properties:
///       accountId: a86a8f5c339544d7bdc89926de14fb8c
///       zeroTrustAccessAiControlsMcpPortalId: my-mcp-portal
///       hostname: exmaple.com
///       name: My MCP Portal
///       allowCodeMode: true
///       description: This is my custom MCP Portal
///       secureWebGateway: false
///       servers:
///         - serverId: my-mcp-server
///           defaultDisabled: true
///           onBehalf: true
///           updatedPrompts:
///             - name: name
///               alias: my-custom-alias
///               description: description
///               enabled: true
///           updatedTools:
///             - name: name
///               alias: my-custom-alias
///               description: description
///               enabled: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustAccessAiControlsMcpPortal:ZeroTrustAccessAiControlsMcpPortal example '<account_id>/<id>'
/// ```
class ZeroTrustAccessAiControlsMcpPortal extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// Allow remote code execution in Dynamic Workers (beta)
  late final pulumi.Output<bool> allowCodeMode;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<String> createdBy;
  late final pulumi.Output<String?> description;
  late final pulumi.Output<String> hostname;
  late final pulumi.Output<String> modifiedAt;
  late final pulumi.Output<String> modifiedBy;
  late final pulumi.Output<String> name;
  /// Route outbound MCP traffic through Zero Trust Secure Web Gateway
  late final pulumi.Output<bool> secureWebGateway;
  late final pulumi.Output<List<ZeroTrustAccessAiControlsMcpPortalServer>> servers;
  /// portal id
  late final pulumi.Output<String> zeroTrustAccessAiControlsMcpPortalId;

  /// Creates a new [ZeroTrustAccessAiControlsMcpPortal].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustAccessAiControlsMcpPortal]. {@macro pulumi_index_zero_trust_access_ai_controls_mcp_portal_zero_trust_access_ai_controls_mcp_portal_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustAccessAiControlsMcpPortal(
    String name, {
    ZeroTrustAccessAiControlsMcpPortalArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustAccessAiControlsMcpPortal:ZeroTrustAccessAiControlsMcpPortal',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    allowCodeMode = registerOutput<bool>('allowCodeMode');
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    description = registerOutput<String?>('description');
    hostname = registerOutput<String>('hostname');
    modifiedAt = registerOutput<String>('modifiedAt');
    modifiedBy = registerOutput<String>('modifiedBy');
    this.name = registerOutput<String>('name');
    secureWebGateway = registerOutput<bool>('secureWebGateway');
    servers = registerOutput<List<ZeroTrustAccessAiControlsMcpPortalServer>>('servers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustAccessAiControlsMcpPortalServer>(guardedValue, (value) => ZeroTrustAccessAiControlsMcpPortalServer.fromMap((value as Map).cast<String, dynamic>())); });
    zeroTrustAccessAiControlsMcpPortalId = registerOutput<String>('zeroTrustAccessAiControlsMcpPortalId');
  }

  /// Gets an existing [ZeroTrustAccessAiControlsMcpPortal] resource's state with the given [name] and [id].
  static ZeroTrustAccessAiControlsMcpPortal get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustAccessAiControlsMcpPortalState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustAccessAiControlsMcpPortal._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustAccessAiControlsMcpPortal._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustAccessAiControlsMcpPortal:ZeroTrustAccessAiControlsMcpPortal',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    allowCodeMode = registerOutput<bool>('allowCodeMode');
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    description = registerOutput<String?>('description');
    hostname = registerOutput<String>('hostname');
    modifiedAt = registerOutput<String>('modifiedAt');
    modifiedBy = registerOutput<String>('modifiedBy');
    this.name = registerOutput<String>('name');
    secureWebGateway = registerOutput<bool>('secureWebGateway');
    servers = registerOutput<List<ZeroTrustAccessAiControlsMcpPortalServer>>('servers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustAccessAiControlsMcpPortalServer>(guardedValue, (value) => ZeroTrustAccessAiControlsMcpPortalServer.fromMap((value as Map).cast<String, dynamic>())); });
    zeroTrustAccessAiControlsMcpPortalId = registerOutput<String>('zeroTrustAccessAiControlsMcpPortalId');
  }

  /// Creates a typed reference to an existing [ZeroTrustAccessAiControlsMcpPortal] resource.
  ZeroTrustAccessAiControlsMcpPortal.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustAccessAiControlsMcpPortal:ZeroTrustAccessAiControlsMcpPortal',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    allowCodeMode = registerOutput<bool>('allowCodeMode');
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    description = registerOutput<String?>('description');
    hostname = registerOutput<String>('hostname');
    modifiedAt = registerOutput<String>('modifiedAt');
    modifiedBy = registerOutput<String>('modifiedBy');
    this.name = registerOutput<String>('name');
    secureWebGateway = registerOutput<bool>('secureWebGateway');
    servers = registerOutput<List<ZeroTrustAccessAiControlsMcpPortalServer>>('servers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustAccessAiControlsMcpPortalServer>(guardedValue, (value) => ZeroTrustAccessAiControlsMcpPortalServer.fromMap((value as Map).cast<String, dynamic>())); });
    zeroTrustAccessAiControlsMcpPortalId = registerOutput<String>('zeroTrustAccessAiControlsMcpPortalId');
  }
}
