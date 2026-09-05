import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_sensitivity_level_args.dart';
import 'zero_trust_dlp_sensitivity_level_state.dart';

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
/// const exampleZeroTrustDlpSensitivityLevel = new cloudflare.ZeroTrustDlpSensitivityLevel("example_zero_trust_dlp_sensitivity_level", {
///     accountId: "account_id",
///     sensitivityGroupId: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///     name: "name",
///     description: "description",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_dlp_sensitivity_level = cloudflare.ZeroTrustDlpSensitivityLevel("example_zero_trust_dlp_sensitivity_level",
///     account_id="account_id",
///     sensitivity_group_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
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
///     var exampleZeroTrustDlpSensitivityLevel = new Cloudflare.ZeroTrustDlpSensitivityLevel("example_zero_trust_dlp_sensitivity_level", new()
///     {
///         AccountId = "account_id",
///         SensitivityGroupId = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
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
/// 		_, err := cloudflare.NewZeroTrustDlpSensitivityLevel(ctx, "example_zero_trust_dlp_sensitivity_level", &cloudflare.ZeroTrustDlpSensitivityLevelArgs{
/// 			AccountId:          pulumi.String("account_id"),
/// 			SensitivityGroupId: pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
/// 			Name:               pulumi.String("name"),
/// 			Description:        pulumi.String("description"),
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
/// resource "cloudflare_zerotrustdlpsensitivitylevel" "example_zero_trust_dlp_sensitivity_level" {
///   account_id           = "account_id"
///   sensitivity_group_id = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
///   name                 = "name"
///   description          = "description"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDlpSensitivityLevel;
/// import com.pulumi.cloudflare.ZeroTrustDlpSensitivityLevelArgs;
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
///         var exampleZeroTrustDlpSensitivityLevel = new ZeroTrustDlpSensitivityLevel("exampleZeroTrustDlpSensitivityLevel", ZeroTrustDlpSensitivityLevelArgs.builder()
///             .accountId("account_id")
///             .sensitivityGroupId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///             .name("name")
///             .description("description")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDlpSensitivityLevel:
///     type: cloudflare:ZeroTrustDlpSensitivityLevel
///     name: example_zero_trust_dlp_sensitivity_level
///     properties:
///       accountId: account_id
///       sensitivityGroupId: 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
///       name: name
///       description: description
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustDlpSensitivityLevel:ZeroTrustDlpSensitivityLevel example '<account_id>/<sensitivity_group_id>/<sensitivity_level_id>'
/// ```
class ZeroTrustDlpSensitivityLevel extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<String?> description;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> sensitivityGroupId;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ZeroTrustDlpSensitivityLevel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDlpSensitivityLevel]. {@macro pulumi_index_zero_trust_dlp_sensitivity_level_zero_trust_dlp_sensitivity_level_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDlpSensitivityLevel(
    String name, {
    ZeroTrustDlpSensitivityLevelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpSensitivityLevel:ZeroTrustDlpSensitivityLevel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    sensitivityGroupId = registerOutput<String>('sensitivityGroupId');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ZeroTrustDlpSensitivityLevel] resource's state with the given [name] and [id].
  static ZeroTrustDlpSensitivityLevel get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDlpSensitivityLevelState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDlpSensitivityLevel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDlpSensitivityLevel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpSensitivityLevel:ZeroTrustDlpSensitivityLevel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    sensitivityGroupId = registerOutput<String>('sensitivityGroupId');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustDlpSensitivityLevel] resource.
  ZeroTrustDlpSensitivityLevel.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDlpSensitivityLevel:ZeroTrustDlpSensitivityLevel',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    sensitivityGroupId = registerOutput<String>('sensitivityGroupId');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
