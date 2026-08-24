import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_gateway_pacfile_args.dart';
import 'zero_trust_gateway_pacfile_state.dart';

/// Accepted Permissions
///
/// - `Zero Trust Read`
/// - `Zero Trust Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustGatewayPacfile = new cloudflare.ZeroTrustGatewayPacfile("example_zero_trust_gateway_pacfile", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     contents: "function FindProxyForURL(url, host) { return \"DIRECT\"; }",
///     name: "Devops team",
///     description: "PAC file for Devops team",
///     slug: "pac_devops",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_gateway_pacfile = cloudflare.ZeroTrustGatewayPacfile("example_zero_trust_gateway_pacfile",
///     account_id="699d98642c564d2e855e9661899b7252",
///     contents="function FindProxyForURL(url, host) { return \"DIRECT\"; }",
///     name="Devops team",
///     description="PAC file for Devops team",
///     slug="pac_devops")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustGatewayPacfile = new Cloudflare.ZeroTrustGatewayPacfile("example_zero_trust_gateway_pacfile", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         Contents = "function FindProxyForURL(url, host) { return \"DIRECT\"; }",
///         Name = "Devops team",
///         Description = "PAC file for Devops team",
///         Slug = "pac_devops",
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
/// 		_, err := cloudflare.NewZeroTrustGatewayPacfile(ctx, "example_zero_trust_gateway_pacfile", &cloudflare.ZeroTrustGatewayPacfileArgs{
/// 			AccountId:   pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			Contents:    pulumi.String("function FindProxyForURL(url, host) { return \"DIRECT\"; }"),
/// 			Name:        pulumi.String("Devops team"),
/// 			Description: pulumi.String("PAC file for Devops team"),
/// 			Slug:        pulumi.String("pac_devops"),
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
/// resource "cloudflare_zerotrustgatewaypacfile" "example_zero_trust_gateway_pacfile" {
///   account_id  = "699d98642c564d2e855e9661899b7252"
///   contents    = "function FindProxyForURL(url, host) { return \"DIRECT\"; }"
///   name        = "Devops team"
///   description = "PAC file for Devops team"
///   slug        = "pac_devops"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustGatewayPacfile;
/// import com.pulumi.cloudflare.ZeroTrustGatewayPacfileArgs;
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
///         var exampleZeroTrustGatewayPacfile = new ZeroTrustGatewayPacfile("exampleZeroTrustGatewayPacfile", ZeroTrustGatewayPacfileArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .contents("function FindProxyForURL(url, host) { return \"DIRECT\"; }")
///             .name("Devops team")
///             .description("PAC file for Devops team")
///             .slug("pac_devops")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustGatewayPacfile:
///     type: cloudflare:ZeroTrustGatewayPacfile
///     name: example_zero_trust_gateway_pacfile
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       contents: function FindProxyForURL(url, host) { return "DIRECT"; }
///       name: Devops team
///       description: PAC file for Devops team
///       slug: pac_devops
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustGatewayPacfile:ZeroTrustGatewayPacfile example '<account_id>/<pacfile_id>'
/// ```
class ZeroTrustGatewayPacfile extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// Actual contents of the PAC file
  late final pulumi.Output<String> contents;
  late final pulumi.Output<String> createdAt;
  /// Detailed description of the PAC file.
  late final pulumi.Output<String?> description;
  /// Name of the PAC file.
  late final pulumi.Output<String> name;
  /// URL-friendly version of the PAC file name. If not provided, it will be auto-generated
  late final pulumi.Output<String?> slug;
  late final pulumi.Output<String> updatedAt;
  /// Unique URL to download the PAC file.
  late final pulumi.Output<String> url;

  /// Creates a new [ZeroTrustGatewayPacfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustGatewayPacfile]. {@macro pulumi_index_zero_trust_gateway_pacfile_zero_trust_gateway_pacfile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustGatewayPacfile(
    String name, {
    ZeroTrustGatewayPacfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustGatewayPacfile:ZeroTrustGatewayPacfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    contents = registerOutput<String>('contents');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    slug = registerOutput<String?>('slug');
    updatedAt = registerOutput<String>('updatedAt');
    url = registerOutput<String>('url');
  }

  /// Gets an existing [ZeroTrustGatewayPacfile] resource's state with the given [name] and [id].
  static ZeroTrustGatewayPacfile get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustGatewayPacfileState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustGatewayPacfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustGatewayPacfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustGatewayPacfile:ZeroTrustGatewayPacfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    contents = registerOutput<String>('contents');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    slug = registerOutput<String?>('slug');
    updatedAt = registerOutput<String>('updatedAt');
    url = registerOutput<String>('url');
  }

  /// Creates a typed reference to an existing [ZeroTrustGatewayPacfile] resource.
  ZeroTrustGatewayPacfile.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustGatewayPacfile:ZeroTrustGatewayPacfile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    contents = registerOutput<String>('contents');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    slug = registerOutput<String?>('slug');
    updatedAt = registerOutput<String>('updatedAt');
    url = registerOutput<String>('url');
  }
}
