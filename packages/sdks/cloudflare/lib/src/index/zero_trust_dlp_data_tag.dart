import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_data_tag_args.dart';
import 'zero_trust_dlp_data_tag_state.dart';

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
/// const exampleZeroTrustDlpDataTag = new cloudflare.ZeroTrustDlpDataTag("example_zero_trust_dlp_data_tag", {
///     accountId: "account_id",
///     categoryId: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///     name: "name",
///     description: "description",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_dlp_data_tag = cloudflare.ZeroTrustDlpDataTag("example_zero_trust_dlp_data_tag",
///     account_id="account_id",
///     category_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///     name="name",
///     description="description")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustDlpDataTag = new Cloudflare.ZeroTrustDlpDataTag("example_zero_trust_dlp_data_tag", new()
///     {
///         AccountId = "account_id",
///         CategoryId = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///         Name = "name",
///         Description = "description",
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
/// 		_, err := cloudflare.NewZeroTrustDlpDataTag(ctx, "example_zero_trust_dlp_data_tag", &cloudflare.ZeroTrustDlpDataTagArgs{
/// 			AccountId:   pulumi.String("account_id"),
/// 			CategoryId:  pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
/// 			Name:        pulumi.String("name"),
/// 			Description: pulumi.String("description"),
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
/// resource "cloudflare_zerotrustdlpdatatag" "example_zero_trust_dlp_data_tag" {
///   account_id  = "account_id"
///   category_id = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
///   name        = "name"
///   description = "description"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDlpDataTag;
/// import com.pulumi.cloudflare.ZeroTrustDlpDataTagArgs;
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
///         var exampleZeroTrustDlpDataTag = new ZeroTrustDlpDataTag("exampleZeroTrustDlpDataTag", ZeroTrustDlpDataTagArgs.builder()
///             .accountId("account_id")
///             .categoryId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///             .name("name")
///             .description("description")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDlpDataTag:
///     type: cloudflare:ZeroTrustDlpDataTag
///     name: example_zero_trust_dlp_data_tag
///     properties:
///       accountId: account_id
///       categoryId: 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
///       name: name
///       description: description
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustDlpDataTag:ZeroTrustDlpDataTag example '<account_id>/<category_id>/<tag_id>'
/// ```
class ZeroTrustDlpDataTag extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> categoryId;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<String?> description;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ZeroTrustDlpDataTag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDlpDataTag]. {@macro pulumi_index_zero_trust_dlp_data_tag_zero_trust_dlp_data_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDlpDataTag(
    String name, {
    ZeroTrustDlpDataTagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpDataTag:ZeroTrustDlpDataTag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    categoryId = registerOutput<String>('categoryId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ZeroTrustDlpDataTag] resource's state with the given [name] and [id].
  static ZeroTrustDlpDataTag get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDlpDataTagState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDlpDataTag._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDlpDataTag._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpDataTag:ZeroTrustDlpDataTag',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    categoryId = registerOutput<String>('categoryId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustDlpDataTag] resource.
  ZeroTrustDlpDataTag.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDlpDataTag:ZeroTrustDlpDataTag',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    categoryId = registerOutput<String>('categoryId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
