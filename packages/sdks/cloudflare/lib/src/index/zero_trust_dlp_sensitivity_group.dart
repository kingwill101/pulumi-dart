import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_sensitivity_group_args.dart';
import 'zero_trust_dlp_sensitivity_group_level.dart';
import 'zero_trust_dlp_sensitivity_group_state.dart';

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
/// const exampleZeroTrustDlpSensitivityGroup = new cloudflare.ZeroTrustDlpSensitivityGroup("example_zero_trust_dlp_sensitivity_group", {
///     accountId: "account_id",
///     name: "name",
///     description: "description",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_dlp_sensitivity_group = cloudflare.ZeroTrustDlpSensitivityGroup("example_zero_trust_dlp_sensitivity_group",
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
///     var exampleZeroTrustDlpSensitivityGroup = new Cloudflare.ZeroTrustDlpSensitivityGroup("example_zero_trust_dlp_sensitivity_group", new()
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
/// 		_, err := cloudflare.NewZeroTrustDlpSensitivityGroup(ctx, "example_zero_trust_dlp_sensitivity_group", &cloudflare.ZeroTrustDlpSensitivityGroupArgs{
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
/// resource "cloudflare_zerotrustdlpsensitivitygroup" "example_zero_trust_dlp_sensitivity_group" {
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
/// import com.pulumi.cloudflare.ZeroTrustDlpSensitivityGroup;
/// import com.pulumi.cloudflare.ZeroTrustDlpSensitivityGroupArgs;
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
///         var exampleZeroTrustDlpSensitivityGroup = new ZeroTrustDlpSensitivityGroup("exampleZeroTrustDlpSensitivityGroup", ZeroTrustDlpSensitivityGroupArgs.builder()
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
///   exampleZeroTrustDlpSensitivityGroup:
///     type: cloudflare:ZeroTrustDlpSensitivityGroup
///     name: example_zero_trust_dlp_sensitivity_group
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
/// $ pulumi import cloudflare:index/zeroTrustDlpSensitivityGroup:ZeroTrustDlpSensitivityGroup example '<account_id>/<sensitivity_group_id>'
/// ```
class ZeroTrustDlpSensitivityGroup extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<String?> description;
  late final pulumi.Output<List<ZeroTrustDlpSensitivityGroupLevel>> levels;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> templateId;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ZeroTrustDlpSensitivityGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDlpSensitivityGroup]. {@macro pulumi_index_zero_trust_dlp_sensitivity_group_zero_trust_dlp_sensitivity_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDlpSensitivityGroup(
    String name, {
    ZeroTrustDlpSensitivityGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpSensitivityGroup:ZeroTrustDlpSensitivityGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    levels = registerOutput<List<ZeroTrustDlpSensitivityGroupLevel>>('levels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpSensitivityGroupLevel>(guardedValue, (value) => ZeroTrustDlpSensitivityGroupLevel.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    templateId = registerOutput<String>('templateId');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ZeroTrustDlpSensitivityGroup] resource's state with the given [name] and [id].
  static ZeroTrustDlpSensitivityGroup get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDlpSensitivityGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDlpSensitivityGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDlpSensitivityGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpSensitivityGroup:ZeroTrustDlpSensitivityGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    levels = registerOutput<List<ZeroTrustDlpSensitivityGroupLevel>>('levels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpSensitivityGroupLevel>(guardedValue, (value) => ZeroTrustDlpSensitivityGroupLevel.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    templateId = registerOutput<String>('templateId');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustDlpSensitivityGroup] resource.
  ZeroTrustDlpSensitivityGroup.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDlpSensitivityGroup:ZeroTrustDlpSensitivityGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    levels = registerOutput<List<ZeroTrustDlpSensitivityGroupLevel>>('levels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpSensitivityGroupLevel>(guardedValue, (value) => ZeroTrustDlpSensitivityGroupLevel.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    templateId = registerOutput<String>('templateId');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
