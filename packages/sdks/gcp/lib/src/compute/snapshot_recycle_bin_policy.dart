import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_recycle_bin_policy_args.dart';
import 'snapshot_recycle_bin_policy_rule.dart';
import 'snapshot_recycle_bin_policy_state.dart';
import 'snapshot_recycle_bin_policy_system_rule.dart';

/// Represents the singleton resource Snapshot Recycle Bin Policy that
/// configures the retention duration for snapshots in the recycle bin.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about SnapshotRecycleBinPolicy, see:
///
/// * [API documentation](https://docs.cloud.google.com/compute/docs/reference/rest/beta/snapshotRecycleBinPolicy)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/compute/docs/disks/configure-recycle-bin)
///
/// ## Example Usage
///
/// ### Snapshot Recycle Bin Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.SnapshotRecycleBinPolicy("default", {rules: [{
///     name: "some-project/12345/6789",
///     standardSnapshots: {
///         retentionDurationDays: 2,
///     },
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.SnapshotRecycleBinPolicy("default", rules=[{
///     "name": "some-project/12345/6789",
///     "standard_snapshots": {
///         "retention_duration_days": 2,
///     },
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.SnapshotRecycleBinPolicy("default", new()
///     {
///         Rules = new[]
///         {
///             new Gcp.Compute.Inputs.SnapshotRecycleBinPolicyRuleArgs
///             {
///                 Name = "some-project/12345/6789",
///                 StandardSnapshots = new Gcp.Compute.Inputs.SnapshotRecycleBinPolicyRuleStandardSnapshotsArgs
///                 {
///                     RetentionDurationDays = 2,
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSnapshotRecycleBinPolicy(ctx, "default", &compute.SnapshotRecycleBinPolicyArgs{
/// 			Rules: compute.SnapshotRecycleBinPolicyRuleArray{
/// 				&compute.SnapshotRecycleBinPolicyRuleArgs{
/// 					Name: pulumi.String("some-project/12345/6789"),
/// 					StandardSnapshots: &compute.SnapshotRecycleBinPolicyRuleStandardSnapshotsArgs{
/// 						RetentionDurationDays: pulumi.Int(2),
/// 					},
/// 				},
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_snapshot_recycle_bin_policy" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   rules {
///     name = "some-project/12345/6789"
///     standard_snapshots = {
///       retention_duration_days = 2
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.SnapshotRecycleBinPolicy;
/// import com.pulumi.gcp.compute.SnapshotRecycleBinPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.SnapshotRecycleBinPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.SnapshotRecycleBinPolicyRuleStandardSnapshotsArgs;
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
///         var default_ = new SnapshotRecycleBinPolicy("default", SnapshotRecycleBinPolicyArgs.builder()
///             .rules(SnapshotRecycleBinPolicyRuleArgs.builder()
///                 .name("some-project/12345/6789")
///                 .standardSnapshots(SnapshotRecycleBinPolicyRuleStandardSnapshotsArgs.builder()
///                     .retentionDurationDays(2)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:SnapshotRecycleBinPolicy
///     properties:
///       rules:
///         - name: some-project/12345/6789
///           standardSnapshots:
///             retentionDurationDays: 2
/// ```
///
/// ### Snapshot Recycle Bin Policy Multiple
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const multiple = new gcp.compute.SnapshotRecycleBinPolicy("multiple", {rules: [
///     {
///         name: "some-project/54653/5476",
///         standardSnapshots: {
///             retentionDurationDays: 3,
///         },
///     },
///     {
///         name: "some-project/12345/6789",
///         standardSnapshots: {
///             retentionDurationDays: 6,
///         },
///     },
/// ]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// multiple = gcp.compute.SnapshotRecycleBinPolicy("multiple", rules=[
///     {
///         "name": "some-project/54653/5476",
///         "standard_snapshots": {
///             "retention_duration_days": 3,
///         },
///     },
///     {
///         "name": "some-project/12345/6789",
///         "standard_snapshots": {
///             "retention_duration_days": 6,
///         },
///     },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var multiple = new Gcp.Compute.SnapshotRecycleBinPolicy("multiple", new()
///     {
///         Rules = new[]
///         {
///             new Gcp.Compute.Inputs.SnapshotRecycleBinPolicyRuleArgs
///             {
///                 Name = "some-project/54653/5476",
///                 StandardSnapshots = new Gcp.Compute.Inputs.SnapshotRecycleBinPolicyRuleStandardSnapshotsArgs
///                 {
///                     RetentionDurationDays = 3,
///                 },
///             },
///             new Gcp.Compute.Inputs.SnapshotRecycleBinPolicyRuleArgs
///             {
///                 Name = "some-project/12345/6789",
///                 StandardSnapshots = new Gcp.Compute.Inputs.SnapshotRecycleBinPolicyRuleStandardSnapshotsArgs
///                 {
///                     RetentionDurationDays = 6,
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSnapshotRecycleBinPolicy(ctx, "multiple", &compute.SnapshotRecycleBinPolicyArgs{
/// 			Rules: compute.SnapshotRecycleBinPolicyRuleArray{
/// 				&compute.SnapshotRecycleBinPolicyRuleArgs{
/// 					Name: pulumi.String("some-project/54653/5476"),
/// 					StandardSnapshots: &compute.SnapshotRecycleBinPolicyRuleStandardSnapshotsArgs{
/// 						RetentionDurationDays: pulumi.Int(3),
/// 					},
/// 				},
/// 				&compute.SnapshotRecycleBinPolicyRuleArgs{
/// 					Name: pulumi.String("some-project/12345/6789"),
/// 					StandardSnapshots: &compute.SnapshotRecycleBinPolicyRuleStandardSnapshotsArgs{
/// 						RetentionDurationDays: pulumi.Int(6),
/// 					},
/// 				},
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_snapshot_recycle_bin_policy" "multiple" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   rules {
///     name = "some-project/54653/5476"
///     standard_snapshots = {
///       retention_duration_days = 3
///     }
///   }
///   rules {
///     name = "some-project/12345/6789"
///     standard_snapshots = {
///       retention_duration_days = 6
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.SnapshotRecycleBinPolicy;
/// import com.pulumi.gcp.compute.SnapshotRecycleBinPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.SnapshotRecycleBinPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.SnapshotRecycleBinPolicyRuleStandardSnapshotsArgs;
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
///         var multiple = new SnapshotRecycleBinPolicy("multiple", SnapshotRecycleBinPolicyArgs.builder()
///             .rules(
///                 SnapshotRecycleBinPolicyRuleArgs.builder()
///                     .name("some-project/54653/5476")
///                     .standardSnapshots(SnapshotRecycleBinPolicyRuleStandardSnapshotsArgs.builder()
///                         .retentionDurationDays(3)
///                         .build())
///                     .build(),
///                 SnapshotRecycleBinPolicyRuleArgs.builder()
///                     .name("some-project/12345/6789")
///                     .standardSnapshots(SnapshotRecycleBinPolicyRuleStandardSnapshotsArgs.builder()
///                         .retentionDurationDays(6)
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   multiple:
///     type: gcp:compute:SnapshotRecycleBinPolicy
///     properties:
///       rules:
///         - name: some-project/54653/5476
///           standardSnapshots:
///             retentionDurationDays: 3
///         - name: some-project/12345/6789
///           standardSnapshots:
///             retentionDurationDays: 6
/// ```
///
///
/// ## Import
///
/// SnapshotRecycleBinPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/snapshotRecycleBinPolicy`
/// * `{{project}}`
///
///
/// When using the `pulumi import` command, SnapshotRecycleBinPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/snapshotRecycleBinPolicy:SnapshotRecycleBinPolicy default projects/{{project}}/global/snapshotRecycleBinPolicy
/// $ pulumi import gcp:compute/snapshotRecycleBinPolicy:SnapshotRecycleBinPolicy default {{project}}
/// ```
class SnapshotRecycleBinPolicy extends pulumi.CustomResource {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The rules for the snapshot recycle bin policy. The key name is either 'default'
  /// or namespaced name of the tag value which can be in the format:
  /// {organization_id}/{tag_key_short_name}/{tag_value_short_name} or
  /// {project_id}/{tag_key_short_name}/{tag_value_short_name} or
  /// {project_number}/{tag_key_short_name}/{tag_value_short_name}. The default rule is
  /// applied if snapshots do not have any of these tags. The value is the rule for the key.
  /// Structure is documented below.
  late final pulumi.Output<List<SnapshotRecycleBinPolicyRule>?> rules;
  /// The system rules for snapshot recycle bin policy. Defines the default rule that applies if no customer-defined
  /// rule matches.
  /// Structure is documented below.
  late final pulumi.Output<List<SnapshotRecycleBinPolicySystemRule>> systemRules;

  /// Creates a new [SnapshotRecycleBinPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SnapshotRecycleBinPolicy]. {@macro pulumi_compute_snapshot_recycle_bin_policy_snapshot_recycle_bin_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SnapshotRecycleBinPolicy(
    String name, {
    SnapshotRecycleBinPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/snapshotRecycleBinPolicy:SnapshotRecycleBinPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.2.0').merge(options),
        ) {
    project = registerOutput<String>('project');
    rules = registerOutput<List<SnapshotRecycleBinPolicyRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SnapshotRecycleBinPolicyRule>(guardedValue, (value) => SnapshotRecycleBinPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
    systemRules = registerOutput<List<SnapshotRecycleBinPolicySystemRule>>('systemRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SnapshotRecycleBinPolicySystemRule>(guardedValue, (value) => SnapshotRecycleBinPolicySystemRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [SnapshotRecycleBinPolicy] resource's state with the given [name] and [id].
  static SnapshotRecycleBinPolicy get(
    String name,
    pulumi.Input<String> id, {
    SnapshotRecycleBinPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SnapshotRecycleBinPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SnapshotRecycleBinPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/snapshotRecycleBinPolicy:SnapshotRecycleBinPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    project = registerOutput<String>('project');
    rules = registerOutput<List<SnapshotRecycleBinPolicyRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SnapshotRecycleBinPolicyRule>(guardedValue, (value) => SnapshotRecycleBinPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
    systemRules = registerOutput<List<SnapshotRecycleBinPolicySystemRule>>('systemRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SnapshotRecycleBinPolicySystemRule>(guardedValue, (value) => SnapshotRecycleBinPolicySystemRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [SnapshotRecycleBinPolicy] resource.
  SnapshotRecycleBinPolicy.reference(String urn)
    : super(
        'gcp:compute/snapshotRecycleBinPolicy:SnapshotRecycleBinPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    project = registerOutput<String>('project');
    rules = registerOutput<List<SnapshotRecycleBinPolicyRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SnapshotRecycleBinPolicyRule>(guardedValue, (value) => SnapshotRecycleBinPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
    systemRules = registerOutput<List<SnapshotRecycleBinPolicySystemRule>>('systemRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SnapshotRecycleBinPolicySystemRule>(guardedValue, (value) => SnapshotRecycleBinPolicySystemRule.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
