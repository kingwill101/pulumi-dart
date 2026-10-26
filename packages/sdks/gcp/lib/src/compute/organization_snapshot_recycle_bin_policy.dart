import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_snapshot_recycle_bin_policy_args.dart';
import 'organization_snapshot_recycle_bin_policy_rule.dart';
import 'organization_snapshot_recycle_bin_policy_state.dart';
import 'organization_snapshot_recycle_bin_policy_system_rule.dart';

/// Represents the singleton resource Organization Snapshot Recycle Bin Policy that
/// configures the retention duration for snapshots in the recycle bin at organization
/// level. All projects in that organization will share the same policy. If you
/// configure the policy at the project level it will be merged with org level policy (if any)
/// and the snapshots in that project will use that policy.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about OrganizationSnapshotRecycleBinPolicy, see:
///
/// * [API documentation](https://docs.cloud.google.com/compute/docs/reference/rest/beta/snapshotRecycleBinPolicy)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/compute/docs/disks/configure-recycle-bin)
///
/// ## Example Usage
///
/// ### Organization Snapshot Recycle Bin Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.OrganizationSnapshotRecycleBinPolicy("default", {
///     organization: "123412341234",
///     rules: [{
///         name: "some-project/12345/6789",
///         standardSnapshots: {
///             retentionDurationDays: 2,
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.OrganizationSnapshotRecycleBinPolicy("default",
///     organization="123412341234",
///     rules=[{
///         "name": "some-project/12345/6789",
///         "standard_snapshots": {
///             "retention_duration_days": 2,
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.OrganizationSnapshotRecycleBinPolicy("default", new()
///     {
///         Organization = "123412341234",
///         Rules = new[]
///         {
///             new Gcp.Compute.Inputs.OrganizationSnapshotRecycleBinPolicyRuleArgs
///             {
///                 Name = "some-project/12345/6789",
///                 StandardSnapshots = new Gcp.Compute.Inputs.OrganizationSnapshotRecycleBinPolicyRuleStandardSnapshotsArgs
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
/// 		_, err := compute.NewOrganizationSnapshotRecycleBinPolicy(ctx, "default", &compute.OrganizationSnapshotRecycleBinPolicyArgs{
/// 			Organization: pulumi.String("123412341234"),
/// 			Rules: compute.OrganizationSnapshotRecycleBinPolicyRuleArray{
/// 				&compute.OrganizationSnapshotRecycleBinPolicyRuleArgs{
/// 					Name: pulumi.String("some-project/12345/6789"),
/// 					StandardSnapshots: &compute.OrganizationSnapshotRecycleBinPolicyRuleStandardSnapshotsArgs{
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
/// resource "gcp_compute_organization_snapshot_recycle_bin_policy" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   organization = 123412341234
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
/// import com.pulumi.gcp.compute.OrganizationSnapshotRecycleBinPolicy;
/// import com.pulumi.gcp.compute.OrganizationSnapshotRecycleBinPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSnapshotRecycleBinPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSnapshotRecycleBinPolicyRuleStandardSnapshotsArgs;
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
///         var default_ = new OrganizationSnapshotRecycleBinPolicy("default", OrganizationSnapshotRecycleBinPolicyArgs.builder()
///             .organization("123412341234")
///             .rules(OrganizationSnapshotRecycleBinPolicyRuleArgs.builder()
///                 .name("some-project/12345/6789")
///                 .standardSnapshots(OrganizationSnapshotRecycleBinPolicyRuleStandardSnapshotsArgs.builder()
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
///     type: gcp:compute:OrganizationSnapshotRecycleBinPolicy
///     properties:
///       organization: 1.23412341234e+11
///       rules:
///         - name: some-project/12345/6789
///           standardSnapshots:
///             retentionDurationDays: 2
/// ```
///
/// ### Organization Snapshot Recycle Bin Policy Multiple
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const multiple = new gcp.compute.OrganizationSnapshotRecycleBinPolicy("multiple", {
///     organization: "123412341234",
///     rules: [
///         {
///             name: "some-project/66546/8792",
///             standardSnapshots: {
///                 retentionDurationDays: 3,
///             },
///         },
///         {
///             name: "some-project/12345/6789",
///             standardSnapshots: {
///                 retentionDurationDays: 5,
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// multiple = gcp.compute.OrganizationSnapshotRecycleBinPolicy("multiple",
///     organization="123412341234",
///     rules=[
///         {
///             "name": "some-project/66546/8792",
///             "standard_snapshots": {
///                 "retention_duration_days": 3,
///             },
///         },
///         {
///             "name": "some-project/12345/6789",
///             "standard_snapshots": {
///                 "retention_duration_days": 5,
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var multiple = new Gcp.Compute.OrganizationSnapshotRecycleBinPolicy("multiple", new()
///     {
///         Organization = "123412341234",
///         Rules = new[]
///         {
///             new Gcp.Compute.Inputs.OrganizationSnapshotRecycleBinPolicyRuleArgs
///             {
///                 Name = "some-project/66546/8792",
///                 StandardSnapshots = new Gcp.Compute.Inputs.OrganizationSnapshotRecycleBinPolicyRuleStandardSnapshotsArgs
///                 {
///                     RetentionDurationDays = 3,
///                 },
///             },
///             new Gcp.Compute.Inputs.OrganizationSnapshotRecycleBinPolicyRuleArgs
///             {
///                 Name = "some-project/12345/6789",
///                 StandardSnapshots = new Gcp.Compute.Inputs.OrganizationSnapshotRecycleBinPolicyRuleStandardSnapshotsArgs
///                 {
///                     RetentionDurationDays = 5,
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
/// 		_, err := compute.NewOrganizationSnapshotRecycleBinPolicy(ctx, "multiple", &compute.OrganizationSnapshotRecycleBinPolicyArgs{
/// 			Organization: pulumi.String("123412341234"),
/// 			Rules: compute.OrganizationSnapshotRecycleBinPolicyRuleArray{
/// 				&compute.OrganizationSnapshotRecycleBinPolicyRuleArgs{
/// 					Name: pulumi.String("some-project/66546/8792"),
/// 					StandardSnapshots: &compute.OrganizationSnapshotRecycleBinPolicyRuleStandardSnapshotsArgs{
/// 						RetentionDurationDays: pulumi.Int(3),
/// 					},
/// 				},
/// 				&compute.OrganizationSnapshotRecycleBinPolicyRuleArgs{
/// 					Name: pulumi.String("some-project/12345/6789"),
/// 					StandardSnapshots: &compute.OrganizationSnapshotRecycleBinPolicyRuleStandardSnapshotsArgs{
/// 						RetentionDurationDays: pulumi.Int(5),
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
/// resource "gcp_compute_organization_snapshot_recycle_bin_policy" "multiple" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   organization = 123412341234
///   rules {
///     name = "some-project/66546/8792"
///     standard_snapshots = {
///       retention_duration_days = 3
///     }
///   }
///   rules {
///     name = "some-project/12345/6789"
///     standard_snapshots = {
///       retention_duration_days = 5
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
/// import com.pulumi.gcp.compute.OrganizationSnapshotRecycleBinPolicy;
/// import com.pulumi.gcp.compute.OrganizationSnapshotRecycleBinPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSnapshotRecycleBinPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSnapshotRecycleBinPolicyRuleStandardSnapshotsArgs;
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
///         var multiple = new OrganizationSnapshotRecycleBinPolicy("multiple", OrganizationSnapshotRecycleBinPolicyArgs.builder()
///             .organization("123412341234")
///             .rules(
///                 OrganizationSnapshotRecycleBinPolicyRuleArgs.builder()
///                     .name("some-project/66546/8792")
///                     .standardSnapshots(OrganizationSnapshotRecycleBinPolicyRuleStandardSnapshotsArgs.builder()
///                         .retentionDurationDays(3)
///                         .build())
///                     .build(),
///                 OrganizationSnapshotRecycleBinPolicyRuleArgs.builder()
///                     .name("some-project/12345/6789")
///                     .standardSnapshots(OrganizationSnapshotRecycleBinPolicyRuleStandardSnapshotsArgs.builder()
///                         .retentionDurationDays(5)
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
///     type: gcp:compute:OrganizationSnapshotRecycleBinPolicy
///     properties:
///       organization: 1.23412341234e+11
///       rules:
///         - name: some-project/66546/8792
///           standardSnapshots:
///             retentionDurationDays: 3
///         - name: some-project/12345/6789
///           standardSnapshots:
///             retentionDurationDays: 5
/// ```
///
///
/// ## Import
///
/// OrganizationSnapshotRecycleBinPolicy can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/global/snapshotRecycleBinPolicy`
/// * `{{organization}}`
///
///
/// When using the `pulumi import` command, OrganizationSnapshotRecycleBinPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/organizationSnapshotRecycleBinPolicy:OrganizationSnapshotRecycleBinPolicy default organizations/{{organization}}/global/snapshotRecycleBinPolicy
/// $ pulumi import gcp:compute/organizationSnapshotRecycleBinPolicy:OrganizationSnapshotRecycleBinPolicy default {{organization}}
/// ```
class OrganizationSnapshotRecycleBinPolicy extends pulumi.CustomResource {
  /// The organization ID for this request (e.g., "organizations/1234").
  late final pulumi.Output<String> organization;
  /// The rules for the snapshot recycle bin policy. The key name is either 'default'
  /// or namespaced name of the tag value which can be in the format:
  /// {organization_id}/{tag_key_short_name}/{tag_value_short_name} or
  /// {project_id}/{tag_key_short_name}/{tag_value_short_name} or
  /// {project_number}/{tag_key_short_name}/{tag_value_short_name}. The default rule is
  /// applied if snapshots do not have any of these tags. The value is the rule for the key.
  /// Structure is documented below.
  late final pulumi.Output<List<OrganizationSnapshotRecycleBinPolicyRule>?> rules;
  /// The system rules for snapshot recycle bin policy. Defines the default rule that applies if no customer-defined
  /// rule matches.
  /// Structure is documented below.
  late final pulumi.Output<List<OrganizationSnapshotRecycleBinPolicySystemRule>> systemRules;

  /// Creates a new [OrganizationSnapshotRecycleBinPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationSnapshotRecycleBinPolicy]. {@macro pulumi_compute_organization_snapshot_recycle_bin_policy_organization_snapshot_recycle_bin_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationSnapshotRecycleBinPolicy(
    String name, {
    OrganizationSnapshotRecycleBinPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/organizationSnapshotRecycleBinPolicy:OrganizationSnapshotRecycleBinPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.2.0').merge(options),
        ) {
    organization = registerOutput<String>('organization');
    rules = registerOutput<List<OrganizationSnapshotRecycleBinPolicyRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OrganizationSnapshotRecycleBinPolicyRule>(guardedValue, (value) => OrganizationSnapshotRecycleBinPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
    systemRules = registerOutput<List<OrganizationSnapshotRecycleBinPolicySystemRule>>('systemRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OrganizationSnapshotRecycleBinPolicySystemRule>(guardedValue, (value) => OrganizationSnapshotRecycleBinPolicySystemRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [OrganizationSnapshotRecycleBinPolicy] resource's state with the given [name] and [id].
  static OrganizationSnapshotRecycleBinPolicy get(
    String name,
    pulumi.Input<String> id, {
    OrganizationSnapshotRecycleBinPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OrganizationSnapshotRecycleBinPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OrganizationSnapshotRecycleBinPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/organizationSnapshotRecycleBinPolicy:OrganizationSnapshotRecycleBinPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    organization = registerOutput<String>('organization');
    rules = registerOutput<List<OrganizationSnapshotRecycleBinPolicyRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OrganizationSnapshotRecycleBinPolicyRule>(guardedValue, (value) => OrganizationSnapshotRecycleBinPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
    systemRules = registerOutput<List<OrganizationSnapshotRecycleBinPolicySystemRule>>('systemRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OrganizationSnapshotRecycleBinPolicySystemRule>(guardedValue, (value) => OrganizationSnapshotRecycleBinPolicySystemRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [OrganizationSnapshotRecycleBinPolicy] resource.
  OrganizationSnapshotRecycleBinPolicy.reference(String urn)
    : super(
        'gcp:compute/organizationSnapshotRecycleBinPolicy:OrganizationSnapshotRecycleBinPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    organization = registerOutput<String>('organization');
    rules = registerOutput<List<OrganizationSnapshotRecycleBinPolicyRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OrganizationSnapshotRecycleBinPolicyRule>(guardedValue, (value) => OrganizationSnapshotRecycleBinPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
    systemRules = registerOutput<List<OrganizationSnapshotRecycleBinPolicySystemRule>>('systemRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OrganizationSnapshotRecycleBinPolicySystemRule>(guardedValue, (value) => OrganizationSnapshotRecycleBinPolicySystemRule.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
