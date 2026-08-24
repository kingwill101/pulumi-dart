import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_sensitivity_level_order_args.dart';
import 'zero_trust_dlp_sensitivity_level_order_state.dart';

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
/// const exampleZeroTrustDlpSensitivityLevelOrder = new cloudflare.ZeroTrustDlpSensitivityLevelOrder("example_zero_trust_dlp_sensitivity_level_order", {
///     accountId: "account_id",
///     sensitivityGroupId: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///     levelIds: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_dlp_sensitivity_level_order = cloudflare.ZeroTrustDlpSensitivityLevelOrder("example_zero_trust_dlp_sensitivity_level_order",
///     account_id="account_id",
///     sensitivity_group_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///     level_ids=["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustDlpSensitivityLevelOrder = new Cloudflare.ZeroTrustDlpSensitivityLevelOrder("example_zero_trust_dlp_sensitivity_level_order", new()
///     {
///         AccountId = "account_id",
///         SensitivityGroupId = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///         LevelIds = new[]
///         {
///             "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
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
/// 		_, err := cloudflare.NewZeroTrustDlpSensitivityLevelOrder(ctx, "example_zero_trust_dlp_sensitivity_level_order", &cloudflare.ZeroTrustDlpSensitivityLevelOrderArgs{
/// 			AccountId:          pulumi.String("account_id"),
/// 			SensitivityGroupId: pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
/// 			LevelIds: pulumi.StringArray{
/// 				pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
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
/// resource "cloudflare_zerotrustdlpsensitivitylevelorder" "example_zero_trust_dlp_sensitivity_level_order" {
///   account_id           = "account_id"
///   sensitivity_group_id = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
///   level_ids            = ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDlpSensitivityLevelOrder;
/// import com.pulumi.cloudflare.ZeroTrustDlpSensitivityLevelOrderArgs;
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
///         var exampleZeroTrustDlpSensitivityLevelOrder = new ZeroTrustDlpSensitivityLevelOrder("exampleZeroTrustDlpSensitivityLevelOrder", ZeroTrustDlpSensitivityLevelOrderArgs.builder()
///             .accountId("account_id")
///             .sensitivityGroupId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///             .levelIds("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDlpSensitivityLevelOrder:
///     type: cloudflare:ZeroTrustDlpSensitivityLevelOrder
///     name: example_zero_trust_dlp_sensitivity_level_order
///     properties:
///       accountId: account_id
///       sensitivityGroupId: 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
///       levelIds:
///         - 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustDlpSensitivityLevelOrder:ZeroTrustDlpSensitivityLevelOrder example '<account_id>/<sensitivity_group_id>'
/// ```
class ZeroTrustDlpSensitivityLevelOrder extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<List<String>> levelIds;
  late final pulumi.Output<String> sensitivityGroupId;

  /// Creates a new [ZeroTrustDlpSensitivityLevelOrder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDlpSensitivityLevelOrder]. {@macro pulumi_index_zero_trust_dlp_sensitivity_level_order_zero_trust_dlp_sensitivity_level_order_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDlpSensitivityLevelOrder(
    String name, {
    ZeroTrustDlpSensitivityLevelOrderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpSensitivityLevelOrder:ZeroTrustDlpSensitivityLevelOrder',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    levelIds = registerOutput<List<String>>('levelIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    sensitivityGroupId = registerOutput<String>('sensitivityGroupId');
  }

  /// Gets an existing [ZeroTrustDlpSensitivityLevelOrder] resource's state with the given [name] and [id].
  static ZeroTrustDlpSensitivityLevelOrder get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDlpSensitivityLevelOrderState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDlpSensitivityLevelOrder._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDlpSensitivityLevelOrder._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpSensitivityLevelOrder:ZeroTrustDlpSensitivityLevelOrder',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    levelIds = registerOutput<List<String>>('levelIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    sensitivityGroupId = registerOutput<String>('sensitivityGroupId');
  }

  /// Creates a typed reference to an existing [ZeroTrustDlpSensitivityLevelOrder] resource.
  ZeroTrustDlpSensitivityLevelOrder.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDlpSensitivityLevelOrder:ZeroTrustDlpSensitivityLevelOrder',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    levelIds = registerOutput<List<String>>('levelIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    sensitivityGroupId = registerOutput<String>('sensitivityGroupId');
  }
}
