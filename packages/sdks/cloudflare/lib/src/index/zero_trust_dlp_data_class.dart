import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_data_class_args.dart';
import 'zero_trust_dlp_data_class_sensitivity_level.dart';
import 'zero_trust_dlp_data_class_state.dart';

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
/// const exampleZeroTrustDlpDataClass = new cloudflare.ZeroTrustDlpDataClass("example_zero_trust_dlp_data_class", {
///     accountId: "account_id",
///     dataTags: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"],
///     expression: "expression",
///     name: "name",
///     sensitivityLevels: [{
///         groupId: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///         levelId: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///     }],
///     description: "description",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_dlp_data_class = cloudflare.ZeroTrustDlpDataClass("example_zero_trust_dlp_data_class",
///     account_id="account_id",
///     data_tags=["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"],
///     expression="expression",
///     name="name",
///     sensitivity_levels=[{
///         "group_id": "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///         "level_id": "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///     }],
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
///     var exampleZeroTrustDlpDataClass = new Cloudflare.ZeroTrustDlpDataClass("example_zero_trust_dlp_data_class", new()
///     {
///         AccountId = "account_id",
///         DataTags = new[]
///         {
///             "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///         },
///         Expression = "expression",
///         Name = "name",
///         SensitivityLevels = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustDlpDataClassSensitivityLevelArgs
///             {
///                 GroupId = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///                 LevelId = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///             },
///         },
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
/// 		_, err := cloudflare.NewZeroTrustDlpDataClass(ctx, "example_zero_trust_dlp_data_class", &cloudflare.ZeroTrustDlpDataClassArgs{
/// 			AccountId: pulumi.String("account_id"),
/// 			DataTags: pulumi.StringArray{
/// 				pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
/// 			},
/// 			Expression: pulumi.String("expression"),
/// 			Name:       pulumi.String("name"),
/// 			SensitivityLevels: cloudflare.ZeroTrustDlpDataClassSensitivityLevelArray{
/// 				&cloudflare.ZeroTrustDlpDataClassSensitivityLevelArgs{
/// 					GroupId: pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
/// 					LevelId: pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
/// 				},
/// 			},
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
/// resource "cloudflare_zerotrustdlpdataclass" "example_zero_trust_dlp_data_class" {
///   account_id = "account_id"
///   data_tags  = ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"]
///   expression = "expression"
///   name       = "name"
///   sensitivity_levels {
///     group_id = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
///     level_id = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
///   }
///   description = "description"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDlpDataClass;
/// import com.pulumi.cloudflare.ZeroTrustDlpDataClassArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDlpDataClassSensitivityLevelArgs;
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
///         var exampleZeroTrustDlpDataClass = new ZeroTrustDlpDataClass("exampleZeroTrustDlpDataClass", ZeroTrustDlpDataClassArgs.builder()
///             .accountId("account_id")
///             .dataTags("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///             .expression("expression")
///             .name("name")
///             .sensitivityLevels(ZeroTrustDlpDataClassSensitivityLevelArgs.builder()
///                 .groupId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///                 .levelId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///                 .build())
///             .description("description")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDlpDataClass:
///     type: cloudflare:ZeroTrustDlpDataClass
///     name: example_zero_trust_dlp_data_class
///     properties:
///       accountId: account_id
///       dataTags:
///         - 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
///       expression: expression
///       name: name
///       sensitivityLevels:
///         - groupId: 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
///           levelId: 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
///       description: description
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustDlpDataClass:ZeroTrustDlpDataClass example '<account_id>/<data_class_id>'
/// ```
class ZeroTrustDlpDataClass extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<List<String>> dataTags;
  late final pulumi.Output<String?> description;
  late final pulumi.Output<String> expression;
  late final pulumi.Output<String> name;
  late final pulumi.Output<List<ZeroTrustDlpDataClassSensitivityLevel>> sensitivityLevels;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ZeroTrustDlpDataClass].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDlpDataClass]. {@macro pulumi_index_zero_trust_dlp_data_class_zero_trust_dlp_data_class_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDlpDataClass(
    String name, {
    ZeroTrustDlpDataClassArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpDataClass:ZeroTrustDlpDataClass',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    dataTags = registerOutput<List<String>>('dataTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String?>('description');
    expression = registerOutput<String>('expression');
    this.name = registerOutput<String>('name');
    sensitivityLevels = registerOutput<List<ZeroTrustDlpDataClassSensitivityLevel>>('sensitivityLevels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpDataClassSensitivityLevel>(guardedValue, (value) => ZeroTrustDlpDataClassSensitivityLevel.fromMap((value as Map).cast<String, dynamic>())); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ZeroTrustDlpDataClass] resource's state with the given [name] and [id].
  static ZeroTrustDlpDataClass get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDlpDataClassState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDlpDataClass._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDlpDataClass._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpDataClass:ZeroTrustDlpDataClass',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    dataTags = registerOutput<List<String>>('dataTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String?>('description');
    expression = registerOutput<String>('expression');
    this.name = registerOutput<String>('name');
    sensitivityLevels = registerOutput<List<ZeroTrustDlpDataClassSensitivityLevel>>('sensitivityLevels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpDataClassSensitivityLevel>(guardedValue, (value) => ZeroTrustDlpDataClassSensitivityLevel.fromMap((value as Map).cast<String, dynamic>())); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustDlpDataClass] resource.
  ZeroTrustDlpDataClass.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDlpDataClass:ZeroTrustDlpDataClass',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    dataTags = registerOutput<List<String>>('dataTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String?>('description');
    expression = registerOutput<String>('expression');
    this.name = registerOutput<String>('name');
    sensitivityLevels = registerOutput<List<ZeroTrustDlpDataClassSensitivityLevel>>('sensitivityLevels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpDataClassSensitivityLevel>(guardedValue, (value) => ZeroTrustDlpDataClassSensitivityLevel.fromMap((value as Map).cast<String, dynamic>())); });
    updatedAt = registerOutput<String>('updatedAt');
  }
}
