import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_cws_rego_module_args.dart';
import 'zero_trust_cws_rego_module_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustCwsRegoModule = new cloudflare.ZeroTrustCwsRegoModule("example_zero_trust_cws_rego_module", {
///     accountId: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     name: "x",
///     regoSource: "x",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_cws_rego_module = cloudflare.ZeroTrustCwsRegoModule("example_zero_trust_cws_rego_module",
///     account_id="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     name="x",
///     rego_source="x")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustCwsRegoModule = new Cloudflare.ZeroTrustCwsRegoModule("example_zero_trust_cws_rego_module", new()
///     {
///         AccountId = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///         Name = "x",
///         RegoSource = "x",
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
/// 		_, err := cloudflare.NewZeroTrustCwsRegoModule(ctx, "example_zero_trust_cws_rego_module", &cloudflare.ZeroTrustCwsRegoModuleArgs{
/// 			AccountId:  pulumi.String("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"),
/// 			Name:       pulumi.String("x"),
/// 			RegoSource: pulumi.String("x"),
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
/// resource "cloudflare_zero_trust_cws_rego_module" "example_zero_trust_cws_rego_module" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id  = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
///   name        = "x"
///   rego_source = "x"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustCwsRegoModule;
/// import com.pulumi.cloudflare.ZeroTrustCwsRegoModuleArgs;
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
///         var exampleZeroTrustCwsRegoModule = new ZeroTrustCwsRegoModule("exampleZeroTrustCwsRegoModule", ZeroTrustCwsRegoModuleArgs.builder()
///             .accountId("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
///             .name("x")
///             .regoSource("x")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustCwsRegoModule:
///     type: cloudflare:ZeroTrustCwsRegoModule
///     name: example_zero_trust_cws_rego_module
///     properties:
///       accountId: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
///       name: x
///       regoSource: x
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustCwsRegoModule:ZeroTrustCwsRegoModule example '<account_id>/<rego_module_id>'
/// ```
class ZeroTrustCwsRegoModule extends pulumi.CustomResource {
  /// Cloudflare account ID (32-character hexadecimal string)
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  /// Name of the Rego module (unique per account)
  late final pulumi.Output<String> name;
  /// Dotted path derived from rego_source. Begins with lib. and is unique per account.
  late final pulumi.Output<String> packagePath;
  /// Library Rego source with a package beginning with "lib." Maximum 16384 UTF-8 bytes.
  late final pulumi.Output<String> regoSource;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ZeroTrustCwsRegoModule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustCwsRegoModule]. {@macro pulumi_index_zero_trust_cws_rego_module_zero_trust_cws_rego_module_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustCwsRegoModule(
    String name, {
    ZeroTrustCwsRegoModuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsRegoModule:ZeroTrustCwsRegoModule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.24.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String>('name');
    packagePath = registerOutput<String>('packagePath');
    regoSource = registerOutput<String>('regoSource');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ZeroTrustCwsRegoModule] resource's state with the given [name] and [id].
  static ZeroTrustCwsRegoModule get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustCwsRegoModuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustCwsRegoModule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustCwsRegoModule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsRegoModule:ZeroTrustCwsRegoModule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String>('name');
    packagePath = registerOutput<String>('packagePath');
    regoSource = registerOutput<String>('regoSource');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustCwsRegoModule] resource.
  ZeroTrustCwsRegoModule.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustCwsRegoModule:ZeroTrustCwsRegoModule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String>('name');
    packagePath = registerOutput<String>('packagePath');
    regoSource = registerOutput<String>('regoSource');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
