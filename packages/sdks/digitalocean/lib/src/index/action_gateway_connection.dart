import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_gateway_connection_args.dart';
import 'action_gateway_connection_authorization.dart';
import 'action_gateway_connection_state.dart';
import 'action_gateway_connection_vpc.dart';

/// Provides a DigitalOcean [Action Gateway](https://docs.digitalocean.com/products/managed-agents/action-gateway/)
/// connection resource. A connection authorizes a tool provider, such as GitHub,
/// Jira, or Linear, to act on an account for one actor ID. Sessions whose actor ID
/// matches the connection's `userId` use it for that provider's tools.
///
/// &gt; **Note:** A connection belongs to the DigitalOcean user who owns the API
/// token Terraform uses, within that token's team. Other team members cannot use
/// it, even with the same `userId`. To let team members create their own
/// connections from a shared credential, register the provider credential in the
/// control panel, make it reusable by the team, and pass its ID as
/// `credentialId`.
///
/// An OAuth connection starts `pending`. The account holder completes it by
/// opening `authorization.0.connect_url`, which is exported as a sensitive value
/// while the connection is pending. A connection through a team API-key
/// credential is active immediately.
///
/// ## Example Usage
///
/// ### Team provider credential
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const linear = new digitalocean.ActionGatewayConnection("linear", {
///     toolProvider: "linear",
///     userId: "support-bot",
///     credentialId: "8d6f2b1a-3c4e-4d5f-9a8b-7c6d5e4f3a2b",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// linear = digitalocean.ActionGatewayConnection("linear",
///     tool_provider="linear",
///     user_id="support-bot",
///     credential_id="8d6f2b1a-3c4e-4d5f-9a8b-7c6d5e4f3a2b")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var linear = new DigitalOcean.ActionGatewayConnection("linear", new()
///     {
///         ToolProvider = "linear",
///         UserId = "support-bot",
///         CredentialId = "8d6f2b1a-3c4e-4d5f-9a8b-7c6d5e4f3a2b",
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
/// 		_, err := digitalocean.NewActionGatewayConnection(ctx, "linear", &digitalocean.ActionGatewayConnectionArgs{
/// 			ToolProvider: pulumi.String("linear"),
/// 			UserId:       pulumi.String("support-bot"),
/// 			CredentialId: pulumi.String("8d6f2b1a-3c4e-4d5f-9a8b-7c6d5e4f3a2b"),
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
/// resource "digitalocean_action_gateway_connection" "linear" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   tool_provider = "linear"
///   user_id       = "support-bot"
///   credential_id = "8d6f2b1a-3c4e-4d5f-9a8b-7c6d5e4f3a2b"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
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
///         var linear = new ActionGatewayConnection("linear", ActionGatewayConnectionArgs.builder()
///             .toolProvider("linear")
///             .userId("support-bot")
///             .credentialId("8d6f2b1a-3c4e-4d5f-9a8b-7c6d5e4f3a2b")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   linear:
///     type: digitalocean:ActionGatewayConnection
///     properties:
///       toolProvider: linear
///       userId: support-bot
///       credentialId: 8d6f2b1a-3c4e-4d5f-9a8b-7c6d5e4f3a2b
/// ```
///
///
/// ### Private network
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = new digitalocean.Vpc("example", {
///     name: "example-vpc",
///     region: "ric1",
/// });
/// const privateJira = new digitalocean.ActionGatewayConnection("private_jira", {
///     toolProvider: "jira",
///     userId: "user-123",
///     credentialId: "8d6f2b1a-3c4e-4d5f-9a8b-7c6d5e4f3a2b",
///     connectionParameters: {
///         site_url: "https://jira.internal.example.com",
///     },
///     vpc: {
///         vpcUuid: example.id,
///         destinations: [{
///             host: "jira.internal.example.com",
///             port: 443,
///             allowedIpCidrs: ["10.116.0.0/20"],
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.Vpc("example",
///     name="example-vpc",
///     region="ric1")
/// private_jira = digitalocean.ActionGatewayConnection("private_jira",
///     tool_provider="jira",
///     user_id="user-123",
///     credential_id="8d6f2b1a-3c4e-4d5f-9a8b-7c6d5e4f3a2b",
///     connection_parameters={
///         "site_url": "https://jira.internal.example.com",
///     },
///     vpc={
///         "vpc_uuid": example.id,
///         "destinations": [{
///             "host": "jira.internal.example.com",
///             "port": 443,
///             "allowed_ip_cidrs": ["10.116.0.0/20"],
///         }],
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
///     var example = new DigitalOcean.Vpc("example", new()
///     {
///         Name = "example-vpc",
///         Region = "ric1",
///     });
///
///     var privateJira = new DigitalOcean.ActionGatewayConnection("private_jira", new()
///     {
///         ToolProvider = "jira",
///         UserId = "user-123",
///         CredentialId = "8d6f2b1a-3c4e-4d5f-9a8b-7c6d5e4f3a2b",
///         ConnectionParameters =
///         {
///             { "site_url", "https://jira.internal.example.com" },
///         },
///         Vpc = new DigitalOcean.Inputs.ActionGatewayConnectionVpcArgs
///         {
///             VpcUuid = example.Id,
///             Destinations = new[]
///             {
///                 new DigitalOcean.Inputs.ActionGatewayConnectionVpcDestinationArgs
///                 {
///                     Host = "jira.internal.example.com",
///                     Port = 443,
///                     AllowedIpCidrs = new[]
///                     {
///                         "10.116.0.0/20",
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.NewVpc(ctx, "example", &digitalocean.VpcArgs{
/// 			Name:   pulumi.String("example-vpc"),
/// 			Region: pulumi.String("ric1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewActionGatewayConnection(ctx, "private_jira", &digitalocean.ActionGatewayConnectionArgs{
/// 			ToolProvider: pulumi.String("jira"),
/// 			UserId:       pulumi.String("user-123"),
/// 			CredentialId: pulumi.String("8d6f2b1a-3c4e-4d5f-9a8b-7c6d5e4f3a2b"),
/// 			ConnectionParameters: pulumi.StringMap{
/// 				"site_url": pulumi.String("https://jira.internal.example.com"),
/// 			},
/// 			Vpc: &digitalocean.ActionGatewayConnectionVpcArgs{
/// 				VpcUuid: example.ID(),
/// 				Destinations: digitalocean.ActionGatewayConnectionVpcDestinationArray{
/// 					&digitalocean.ActionGatewayConnectionVpcDestinationArgs{
/// 						Host: pulumi.String("jira.internal.example.com"),
/// 						Port: pulumi.Int(443),
/// 						AllowedIpCidrs: pulumi.StringArray{
/// 							pulumi.String("10.116.0.0/20"),
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
/// terraform {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_vpc" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name   = "example-vpc"
///   region = "ric1"
/// }
/// resource "digitalocean_action_gateway_connection" "private_jira" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   tool_provider = "jira"
///   user_id       = "user-123"
///   credential_id = "8d6f2b1a-3c4e-4d5f-9a8b-7c6d5e4f3a2b"
///   connection_parameters = {
///     "site_url" = "https://jira.internal.example.com"
///   }
///   vpc {
///     vpc_uuid = digitalocean_vpc.example.id
///     destination {
///       host             = "jira.internal.example.com"
///       port             = 443
///       allowed_ip_cidrs = ["10.116.0.0/20"]
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
/// import com.pulumi.digitalocean.Vpc;
/// import com.pulumi.digitalocean.VpcArgs;
/// import com.pulumi.digitalocean.ActionGatewayConnection;
/// import com.pulumi.digitalocean.ActionGatewayConnectionArgs;
/// import com.pulumi.digitalocean.inputs.ActionGatewayConnectionVpcArgs;
/// import com.pulumi.digitalocean.inputs.ActionGatewayConnectionVpcDestinationArgs;
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
///         var example = new Vpc("example", VpcArgs.builder()
///             .name("example-vpc")
///             .region("ric1")
///             .build());
///
///         var privateJira = new ActionGatewayConnection("privateJira", ActionGatewayConnectionArgs.builder()
///             .toolProvider("jira")
///             .userId("user-123")
///             .credentialId("8d6f2b1a-3c4e-4d5f-9a8b-7c6d5e4f3a2b")
///             .connectionParameters(Map.of("site_url", "https://jira.internal.example.com"))
///             .vpc(ActionGatewayConnectionVpcArgs.builder()
///                 .vpcUuid(example.id())
///                 .destinations(ActionGatewayConnectionVpcDestinationArgs.builder()
///                     .host("jira.internal.example.com")
///                     .port(443)
///                     .allowedIpCidrs("10.116.0.0/20")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: digitalocean:Vpc
///     properties:
///       name: example-vpc
///       region: ric1
///   privateJira:
///     type: digitalocean:ActionGatewayConnection
///     name: private_jira
///     properties:
///       toolProvider: jira
///       userId: user-123
///       credentialId: 8d6f2b1a-3c4e-4d5f-9a8b-7c6d5e4f3a2b
///       connectionParameters:
///         site_url: https://jira.internal.example.com
///       vpc:
///         vpcUuid: ${example.id}
///         destinations:
///           - host: jira.internal.example.com
///             port: 443
///             allowedIpCidrs:
///               - 10.116.0.0/20
/// ```
///
///
/// ## Import
///
/// A connection can be imported using its `id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/actionGatewayConnection:ActionGatewayConnection jira 39f9f768-a7f9-4c91-9557-3328c53dd054
/// ```
///
/// Import reads `scopes` and `connectionParameters` from the API. If the
/// connection was granted more scopes than your configuration lists, or the API
/// stored a connection parameter in a different form, the next plan replaces the
/// connection. Run `pulumi preview` after importing and update the configuration
/// to match the imported values before you apply.
class ActionGatewayConnection extends pulumi.CustomResource {
  /// The authorization the account holder still has to complete. Set only while the connection is pending.
  late final pulumi.Output<List<ActionGatewayConnectionAuthorization>> authorizations;
  /// A map of values for the provider's connection parameters, such as `siteUrl` for Jira.
  late final pulumi.Output<Map<String, String>?> connectionParameters;
  /// When the connection was created.
  late final pulumi.Output<String> createdAt;
  /// The ID of a team provider credential, such as your own OAuth application or an API key, to connect through. When omitted, DigitalOcean's shared OAuth application is used.
  late final pulumi.Output<String?> credentialId;
  /// The kind of credential the connection uses: `digitaloceanOauth`, `privateOauth`, or `teamApiKey`.
  late final pulumi.Output<String> credentialKind;
  /// When the account holder completed authorization.
  late final pulumi.Output<String> grantedAt;
  /// The DigitalOcean user ID of the user who created the connection.
  late final pulumi.Output<String> owningUserId;
  /// The OAuth scopes to request. When omitted or empty, every scope the provider offers is requested. Ignored for API-key credentials.
  late final pulumi.Output<List<String>> scopes;
  /// The status of the authorization.
  late final pulumi.Output<String> status;
  /// The slug of the tool provider, such as `github` or `jira`. The `digitalocean.getActionGatewayProviders` data source lists the available providers.
  late final pulumi.Output<String> toolProvider;
  /// The human-readable name of the tool provider.
  late final pulumi.Output<String> toolProviderDisplayName;
  /// When the connection was last modified.
  late final pulumi.Output<String> updatedAt;
  /// The actor ID the connection acts for: 1 to 64 characters from `[A-Za-z0-9._-]`. Use the actor ID of the sessions that need this account.
  late final pulumi.Output<String> userId;
  /// Routes the connection's calls through a VPC. VPC networking must be enabled for your team.
  late final pulumi.Output<ActionGatewayConnectionVpc?> vpc;

  /// Creates a new [ActionGatewayConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ActionGatewayConnection]. {@macro pulumi_index_action_gateway_connection_action_gateway_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ActionGatewayConnection(
    String name, {
    ActionGatewayConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/actionGatewayConnection:ActionGatewayConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '4.85.0').merge(options),
        ) {
    authorizations = registerOutput<List<ActionGatewayConnectionAuthorization>>('authorizations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ActionGatewayConnectionAuthorization>(guardedValue, (value) => ActionGatewayConnectionAuthorization.fromMap((value as Map).cast<String, dynamic>())); });
    connectionParameters = registerOutput<Map<String, String>?>('connectionParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    createdAt = registerOutput<String>('createdAt');
    credentialId = registerOutput<String?>('credentialId');
    credentialKind = registerOutput<String>('credentialKind');
    grantedAt = registerOutput<String>('grantedAt');
    owningUserId = registerOutput<String>('owningUserId');
    scopes = registerOutput<List<String>>('scopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    status = registerOutput<String>('status');
    toolProvider = registerOutput<String>('toolProvider');
    toolProviderDisplayName = registerOutput<String>('toolProviderDisplayName');
    updatedAt = registerOutput<String>('updatedAt');
    userId = registerOutput<String>('userId');
    vpc = registerOutput<ActionGatewayConnectionVpc?>('vpc', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ActionGatewayConnectionVpc.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ActionGatewayConnection] resource's state with the given [name] and [id].
  static ActionGatewayConnection get(
    String name,
    pulumi.Input<String> id, {
    ActionGatewayConnectionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ActionGatewayConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ActionGatewayConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/actionGatewayConnection:ActionGatewayConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authorizations = registerOutput<List<ActionGatewayConnectionAuthorization>>('authorizations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ActionGatewayConnectionAuthorization>(guardedValue, (value) => ActionGatewayConnectionAuthorization.fromMap((value as Map).cast<String, dynamic>())); });
    connectionParameters = registerOutput<Map<String, String>?>('connectionParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    createdAt = registerOutput<String>('createdAt');
    credentialId = registerOutput<String?>('credentialId');
    credentialKind = registerOutput<String>('credentialKind');
    grantedAt = registerOutput<String>('grantedAt');
    owningUserId = registerOutput<String>('owningUserId');
    scopes = registerOutput<List<String>>('scopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    status = registerOutput<String>('status');
    toolProvider = registerOutput<String>('toolProvider');
    toolProviderDisplayName = registerOutput<String>('toolProviderDisplayName');
    updatedAt = registerOutput<String>('updatedAt');
    userId = registerOutput<String>('userId');
    vpc = registerOutput<ActionGatewayConnectionVpc?>('vpc', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ActionGatewayConnectionVpc.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ActionGatewayConnection] resource.
  ActionGatewayConnection.reference(String urn)
    : super(
        'digitalocean:index/actionGatewayConnection:ActionGatewayConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    authorizations = registerOutput<List<ActionGatewayConnectionAuthorization>>('authorizations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ActionGatewayConnectionAuthorization>(guardedValue, (value) => ActionGatewayConnectionAuthorization.fromMap((value as Map).cast<String, dynamic>())); });
    connectionParameters = registerOutput<Map<String, String>?>('connectionParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    createdAt = registerOutput<String>('createdAt');
    credentialId = registerOutput<String?>('credentialId');
    credentialKind = registerOutput<String>('credentialKind');
    grantedAt = registerOutput<String>('grantedAt');
    owningUserId = registerOutput<String>('owningUserId');
    scopes = registerOutput<List<String>>('scopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    status = registerOutput<String>('status');
    toolProvider = registerOutput<String>('toolProvider');
    toolProviderDisplayName = registerOutput<String>('toolProviderDisplayName');
    updatedAt = registerOutput<String>('updatedAt');
    userId = registerOutput<String>('userId');
    vpc = registerOutput<ActionGatewayConnectionVpc?>('vpc', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ActionGatewayConnectionVpc.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
