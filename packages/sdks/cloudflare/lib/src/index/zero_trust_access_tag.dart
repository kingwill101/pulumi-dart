import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_tag_args.dart';
import 'zero_trust_access_tag_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustAccessTag = new cloudflare.ZeroTrustAccessTag("example_zero_trust_access_tag", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "engineers",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_access_tag = cloudflare.ZeroTrustAccessTag("example_zero_trust_access_tag",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="engineers")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustAccessTag = new Cloudflare.ZeroTrustAccessTag("example_zero_trust_access_tag", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "engineers",
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
/// 		_, err := cloudflare.NewZeroTrustAccessTag(ctx, "example_zero_trust_access_tag", &cloudflare.ZeroTrustAccessTagArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("engineers"),
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
/// resource "cloudflare_zerotrustaccesstag" "example_zero_trust_access_tag" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   name       = "engineers"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustAccessTag;
/// import com.pulumi.cloudflare.ZeroTrustAccessTagArgs;
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
///         var exampleZeroTrustAccessTag = new ZeroTrustAccessTag("exampleZeroTrustAccessTag", ZeroTrustAccessTagArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("engineers")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustAccessTag:
///     type: cloudflare:ZeroTrustAccessTag
///     name: example_zero_trust_access_tag
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: engineers
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustAccessTag:ZeroTrustAccessTag example '<account_id>/<tag_name>'
/// ```
class ZeroTrustAccessTag extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// The name of the tag
  late final pulumi.Output<String> name;

  /// Creates a new [ZeroTrustAccessTag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustAccessTag]. {@macro pulumi_index_zero_trust_access_tag_zero_trust_access_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustAccessTag(
    String name, {
    ZeroTrustAccessTagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustAccessTag:ZeroTrustAccessTag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [ZeroTrustAccessTag] resource's state with the given [name] and [id].
  static ZeroTrustAccessTag get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustAccessTagState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustAccessTag._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustAccessTag._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustAccessTag:ZeroTrustAccessTag',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    this.name = registerOutput<String>('name');
  }

  /// Creates a typed reference to an existing [ZeroTrustAccessTag] resource.
  ZeroTrustAccessTag.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustAccessTag:ZeroTrustAccessTag',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    this.name = registerOutput<String>('name');
  }
}
