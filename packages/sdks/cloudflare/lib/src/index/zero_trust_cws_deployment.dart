import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_cws_deployment_args.dart';
import 'zero_trust_cws_deployment_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustCwsDeployment = new cloudflare.ZeroTrustCwsDeployment("example_zero_trust_cws_deployment", {
///     accountId: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     basicAuthCredentialIds: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"],
///     defaultMode: "ALLOW",
///     name: "x",
///     policySetIds: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"],
///     description: "description",
///     domainAclId: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///     onErrorAction: "BLOCK",
///     regoRaiseError: true,
///     tags: {
///         foo: "string",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_cws_deployment = cloudflare.ZeroTrustCwsDeployment("example_zero_trust_cws_deployment",
///     account_id="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     basic_auth_credential_ids=["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"],
///     default_mode="ALLOW",
///     name="x",
///     policy_set_ids=["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"],
///     description="description",
///     domain_acl_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///     on_error_action="BLOCK",
///     rego_raise_error=True,
///     tags={
///         "foo": "string",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustCwsDeployment = new Cloudflare.ZeroTrustCwsDeployment("example_zero_trust_cws_deployment", new()
///     {
///         AccountId = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///         BasicAuthCredentialIds = new[]
///         {
///             "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///         },
///         DefaultMode = "ALLOW",
///         Name = "x",
///         PolicySetIds = new[]
///         {
///             "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///         },
///         Description = "description",
///         DomainAclId = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///         OnErrorAction = "BLOCK",
///         RegoRaiseError = true,
///         Tags =
///         {
///             { "foo", "string" },
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
/// 		_, err := cloudflare.NewZeroTrustCwsDeployment(ctx, "example_zero_trust_cws_deployment", &cloudflare.ZeroTrustCwsDeploymentArgs{
/// 			AccountId: pulumi.String("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"),
/// 			BasicAuthCredentialIds: pulumi.StringArray{
/// 				pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
/// 			},
/// 			DefaultMode: pulumi.String("ALLOW"),
/// 			Name:        pulumi.String("x"),
/// 			PolicySetIds: pulumi.StringArray{
/// 				pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
/// 			},
/// 			Description:    pulumi.String("description"),
/// 			DomainAclId:    pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
/// 			OnErrorAction:  pulumi.String("BLOCK"),
/// 			RegoRaiseError: pulumi.Bool(true),
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("string"),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_zero_trust_cws_deployment" "example_zero_trust_cws_deployment" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id                = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
///   basic_auth_credential_ids = ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"]
///   default_mode              = "ALLOW"
///   name                      = "x"
///   policy_set_ids            = ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"]
///   description               = "description"
///   domain_acl_id             = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
///   on_error_action           = "BLOCK"
///   rego_raise_error          = true
///   tags = {
///     "foo" = "string"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustCwsDeployment;
/// import com.pulumi.cloudflare.ZeroTrustCwsDeploymentArgs;
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
///         var exampleZeroTrustCwsDeployment = new ZeroTrustCwsDeployment("exampleZeroTrustCwsDeployment", ZeroTrustCwsDeploymentArgs.builder()
///             .accountId("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
///             .basicAuthCredentialIds("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///             .defaultMode("ALLOW")
///             .name("x")
///             .policySetIds("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///             .description("description")
///             .domainAclId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///             .onErrorAction("BLOCK")
///             .regoRaiseError(true)
///             .tags(Map.of("foo", "string"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustCwsDeployment:
///     type: cloudflare:ZeroTrustCwsDeployment
///     name: example_zero_trust_cws_deployment
///     properties:
///       accountId: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
///       basicAuthCredentialIds:
///         - 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
///       defaultMode: ALLOW
///       name: x
///       policySetIds:
///         - 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
///       description: description
///       domainAclId: 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
///       onErrorAction: BLOCK
///       regoRaiseError: true
///       tags:
///         foo: string
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustCwsDeployment:ZeroTrustCwsDeployment example '<account_id>/<deployment_id>'
/// ```
class ZeroTrustCwsDeployment extends pulumi.CustomResource {
  /// Cloudflare account ID (32-character hexadecimal string)
  late final pulumi.Output<String> accountId;
  /// IDs of basic-auth credentials to attach
  late final pulumi.Output<List<String>> basicAuthCredentialIds;
  late final pulumi.Output<String> createdAt;
  /// Default traffic mode: ALLOW or BLOCK
  /// Available values: "ALLOW", "BLOCK".
  late final pulumi.Output<String> defaultMode;
  /// Optional free-form description.
  late final pulumi.Output<String?> description;
  /// ID of the domain ACL to attach (omit or null for none)
  late final pulumi.Output<String?> domainAclId;
  /// Name of the deployment
  late final pulumi.Output<String> name;
  /// Action for runtime Rego errors. Omit to use BLOCK.
  /// Available values: "BLOCK", "SKIP".
  late final pulumi.Output<String> onErrorAction;
  /// IDs of policy sets to attach
  late final pulumi.Output<List<String>> policySetIds;
  /// Whether OPA builtin failures are raised as runtime evaluation errors. Omit to use the default true value.
  late final pulumi.Output<bool> regoRaiseError;
  /// Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ZeroTrustCwsDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustCwsDeployment]. {@macro pulumi_index_zero_trust_cws_deployment_zero_trust_cws_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustCwsDeployment(
    String name, {
    ZeroTrustCwsDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsDeployment:ZeroTrustCwsDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.24.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    basicAuthCredentialIds = registerOutput<List<String>>('basicAuthCredentialIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    createdAt = registerOutput<String>('createdAt');
    defaultMode = registerOutput<String>('defaultMode');
    description = registerOutput<String?>('description');
    domainAclId = registerOutput<String?>('domainAclId');
    this.name = registerOutput<String>('name');
    onErrorAction = registerOutput<String>('onErrorAction');
    policySetIds = registerOutput<List<String>>('policySetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    regoRaiseError = registerOutput<bool>('regoRaiseError');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ZeroTrustCwsDeployment] resource's state with the given [name] and [id].
  static ZeroTrustCwsDeployment get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustCwsDeploymentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustCwsDeployment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustCwsDeployment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsDeployment:ZeroTrustCwsDeployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    basicAuthCredentialIds = registerOutput<List<String>>('basicAuthCredentialIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    createdAt = registerOutput<String>('createdAt');
    defaultMode = registerOutput<String>('defaultMode');
    description = registerOutput<String?>('description');
    domainAclId = registerOutput<String?>('domainAclId');
    this.name = registerOutput<String>('name');
    onErrorAction = registerOutput<String>('onErrorAction');
    policySetIds = registerOutput<List<String>>('policySetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    regoRaiseError = registerOutput<bool>('regoRaiseError');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustCwsDeployment] resource.
  ZeroTrustCwsDeployment.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustCwsDeployment:ZeroTrustCwsDeployment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    basicAuthCredentialIds = registerOutput<List<String>>('basicAuthCredentialIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    createdAt = registerOutput<String>('createdAt');
    defaultMode = registerOutput<String>('defaultMode');
    description = registerOutput<String?>('description');
    domainAclId = registerOutput<String?>('domainAclId');
    this.name = registerOutput<String>('name');
    onErrorAction = registerOutput<String>('onErrorAction');
    policySetIds = registerOutput<List<String>>('policySetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    regoRaiseError = registerOutput<bool>('regoRaiseError');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }
}
