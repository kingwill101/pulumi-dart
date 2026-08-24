import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_data_tag_category_args.dart';
import 'zero_trust_dlp_data_tag_category_state.dart';
import 'zero_trust_dlp_data_tag_category_tag.dart';

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
/// const exampleZeroTrustDlpDataTagCategory = new cloudflare.ZeroTrustDlpDataTagCategory("example_zero_trust_dlp_data_tag_category", {
///     accountId: "account_id",
///     name: "name",
///     description: "description",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_dlp_data_tag_category = cloudflare.ZeroTrustDlpDataTagCategory("example_zero_trust_dlp_data_tag_category",
///     account_id="account_id",
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
///     var exampleZeroTrustDlpDataTagCategory = new Cloudflare.ZeroTrustDlpDataTagCategory("example_zero_trust_dlp_data_tag_category", new()
///     {
///         AccountId = "account_id",
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
/// 		_, err := cloudflare.NewZeroTrustDlpDataTagCategory(ctx, "example_zero_trust_dlp_data_tag_category", &cloudflare.ZeroTrustDlpDataTagCategoryArgs{
/// 			AccountId:   pulumi.String("account_id"),
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
/// resource "cloudflare_zerotrustdlpdatatagcategory" "example_zero_trust_dlp_data_tag_category" {
///   account_id  = "account_id"
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
/// import com.pulumi.cloudflare.ZeroTrustDlpDataTagCategory;
/// import com.pulumi.cloudflare.ZeroTrustDlpDataTagCategoryArgs;
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
///         var exampleZeroTrustDlpDataTagCategory = new ZeroTrustDlpDataTagCategory("exampleZeroTrustDlpDataTagCategory", ZeroTrustDlpDataTagCategoryArgs.builder()
///             .accountId("account_id")
///             .name("name")
///             .description("description")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDlpDataTagCategory:
///     type: cloudflare:ZeroTrustDlpDataTagCategory
///     name: example_zero_trust_dlp_data_tag_category
///     properties:
///       accountId: account_id
///       name: name
///       description: description
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustDlpDataTagCategory:ZeroTrustDlpDataTagCategory example '<account_id>/<category_id>'
/// ```
class ZeroTrustDlpDataTagCategory extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<String?> description;
  late final pulumi.Output<String> name;
  late final pulumi.Output<List<ZeroTrustDlpDataTagCategoryTag>> tags;
  late final pulumi.Output<String> templateId;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ZeroTrustDlpDataTagCategory].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDlpDataTagCategory]. {@macro pulumi_index_zero_trust_dlp_data_tag_category_zero_trust_dlp_data_tag_category_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDlpDataTagCategory(
    String name, {
    ZeroTrustDlpDataTagCategoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpDataTagCategory:ZeroTrustDlpDataTagCategory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    tags = registerOutput<List<ZeroTrustDlpDataTagCategoryTag>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpDataTagCategoryTag>(guardedValue, (value) => ZeroTrustDlpDataTagCategoryTag.fromMap((value as Map).cast<String, dynamic>())); });
    templateId = registerOutput<String>('templateId');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ZeroTrustDlpDataTagCategory] resource's state with the given [name] and [id].
  static ZeroTrustDlpDataTagCategory get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDlpDataTagCategoryState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDlpDataTagCategory._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDlpDataTagCategory._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpDataTagCategory:ZeroTrustDlpDataTagCategory',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    tags = registerOutput<List<ZeroTrustDlpDataTagCategoryTag>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpDataTagCategoryTag>(guardedValue, (value) => ZeroTrustDlpDataTagCategoryTag.fromMap((value as Map).cast<String, dynamic>())); });
    templateId = registerOutput<String>('templateId');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustDlpDataTagCategory] resource.
  ZeroTrustDlpDataTagCategory.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDlpDataTagCategory:ZeroTrustDlpDataTagCategory',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    tags = registerOutput<List<ZeroTrustDlpDataTagCategoryTag>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpDataTagCategoryTag>(guardedValue, (value) => ZeroTrustDlpDataTagCategoryTag.fromMap((value as Map).cast<String, dynamic>())); });
    templateId = registerOutput<String>('templateId');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
