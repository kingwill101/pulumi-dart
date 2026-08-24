import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_deployment_groups_args.dart';
import 'zero_trust_device_deployment_groups_state.dart';
import 'zero_trust_device_deployment_groups_version_config.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustDeviceDeploymentGroups = new cloudflare.ZeroTrustDeviceDeploymentGroups("example_zero_trust_device_deployment_groups", {
///     accountId: "account_id",
///     name: "Engineering Ring 0",
///     versionConfigs: [{
///         targetEnvironment: "windows",
///         version: "2026.6.234.0",
///     }],
///     policyIds: ["string"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_device_deployment_groups = cloudflare.ZeroTrustDeviceDeploymentGroups("example_zero_trust_device_deployment_groups",
///     account_id="account_id",
///     name="Engineering Ring 0",
///     version_configs=[{
///         "target_environment": "windows",
///         "version": "2026.6.234.0",
///     }],
///     policy_ids=["string"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustDeviceDeploymentGroups = new Cloudflare.ZeroTrustDeviceDeploymentGroups("example_zero_trust_device_deployment_groups", new()
///     {
///         AccountId = "account_id",
///         Name = "Engineering Ring 0",
///         VersionConfigs = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustDeviceDeploymentGroupsVersionConfigArgs
///             {
///                 TargetEnvironment = "windows",
///                 Version = "2026.6.234.0",
///             },
///         },
///         PolicyIds = new[]
///         {
///             "string",
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
/// 		_, err := cloudflare.NewZeroTrustDeviceDeploymentGroups(ctx, "example_zero_trust_device_deployment_groups", &cloudflare.ZeroTrustDeviceDeploymentGroupsArgs{
/// 			AccountId: pulumi.String("account_id"),
/// 			Name:      pulumi.String("Engineering Ring 0"),
/// 			VersionConfigs: cloudflare.ZeroTrustDeviceDeploymentGroupsVersionConfigArray{
/// 				&cloudflare.ZeroTrustDeviceDeploymentGroupsVersionConfigArgs{
/// 					TargetEnvironment: pulumi.String("windows"),
/// 					Version:           pulumi.String("2026.6.234.0"),
/// 				},
/// 			},
/// 			PolicyIds: pulumi.StringArray{
/// 				pulumi.String("string"),
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
/// resource "cloudflare_zerotrustdevicedeploymentgroups" "example_zero_trust_device_deployment_groups" {
///   account_id = "account_id"
///   name       = "Engineering Ring 0"
///   version_configs {
///     target_environment = "windows"
///     version            = "2026.6.234.0"
///   }
///   policy_ids = ["string"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDeviceDeploymentGroups;
/// import com.pulumi.cloudflare.ZeroTrustDeviceDeploymentGroupsArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDeviceDeploymentGroupsVersionConfigArgs;
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
///         var exampleZeroTrustDeviceDeploymentGroups = new ZeroTrustDeviceDeploymentGroups("exampleZeroTrustDeviceDeploymentGroups", ZeroTrustDeviceDeploymentGroupsArgs.builder()
///             .accountId("account_id")
///             .name("Engineering Ring 0")
///             .versionConfigs(ZeroTrustDeviceDeploymentGroupsVersionConfigArgs.builder()
///                 .targetEnvironment("windows")
///                 .version("2026.6.234.0")
///                 .build())
///             .policyIds("string")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDeviceDeploymentGroups:
///     type: cloudflare:ZeroTrustDeviceDeploymentGroups
///     name: example_zero_trust_device_deployment_groups
///     properties:
///       accountId: account_id
///       name: Engineering Ring 0
///       versionConfigs:
///         - targetEnvironment: windows
///           version: 2026.6.234.0
///       policyIds:
///         - string
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustDeviceDeploymentGroups:ZeroTrustDeviceDeploymentGroups example '<account_id>/<group_id>'
/// ```
class ZeroTrustDeviceDeploymentGroups extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// The RFC3339Nano timestamp when the deployment group was created.
  late final pulumi.Output<String> createdAt;
  /// A user-friendly name for the deployment group.
  late final pulumi.Output<String> name;
  /// Contains an optional list of policy IDs assigned to a group.
  late final pulumi.Output<List<String>?> policyIds;
  /// The RFC3339Nano timestamp when the deployment group was last updated.
  late final pulumi.Output<String> updatedAt;
  /// Contains at least one version configuration.
  late final pulumi.Output<List<ZeroTrustDeviceDeploymentGroupsVersionConfig>> versionConfigs;

  /// Creates a new [ZeroTrustDeviceDeploymentGroups].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDeviceDeploymentGroups]. {@macro pulumi_index_zero_trust_device_deployment_groups_zero_trust_device_deployment_groups_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDeviceDeploymentGroups(
    String name, {
    ZeroTrustDeviceDeploymentGroupsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDeviceDeploymentGroups:ZeroTrustDeviceDeploymentGroups',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String>('name');
    policyIds = registerOutput<List<String>?>('policyIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updatedAt = registerOutput<String>('updatedAt');
    versionConfigs = registerOutput<List<ZeroTrustDeviceDeploymentGroupsVersionConfig>>('versionConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceDeploymentGroupsVersionConfig>(guardedValue, (value) => ZeroTrustDeviceDeploymentGroupsVersionConfig.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [ZeroTrustDeviceDeploymentGroups] resource's state with the given [name] and [id].
  static ZeroTrustDeviceDeploymentGroups get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDeviceDeploymentGroupsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDeviceDeploymentGroups._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDeviceDeploymentGroups._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDeviceDeploymentGroups:ZeroTrustDeviceDeploymentGroups',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String>('name');
    policyIds = registerOutput<List<String>?>('policyIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updatedAt = registerOutput<String>('updatedAt');
    versionConfigs = registerOutput<List<ZeroTrustDeviceDeploymentGroupsVersionConfig>>('versionConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceDeploymentGroupsVersionConfig>(guardedValue, (value) => ZeroTrustDeviceDeploymentGroupsVersionConfig.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [ZeroTrustDeviceDeploymentGroups] resource.
  ZeroTrustDeviceDeploymentGroups.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDeviceDeploymentGroups:ZeroTrustDeviceDeploymentGroups',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String>('name');
    policyIds = registerOutput<List<String>?>('policyIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updatedAt = registerOutput<String>('updatedAt');
    versionConfigs = registerOutput<List<ZeroTrustDeviceDeploymentGroupsVersionConfig>>('versionConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceDeploymentGroupsVersionConfig>(guardedValue, (value) => ZeroTrustDeviceDeploymentGroupsVersionConfig.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
