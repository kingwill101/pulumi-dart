import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_args.dart';
import 'backup_policy_state.dart';

/// A backup policy is used to schedule backups at regular daily, weekly, or monthly intervals.
/// Backup policies allow you to attach a backup schedule to a volume.
/// The policy defines how many backups to retain at daily, weekly, or monthly intervals.
///
///
/// To get more information about BackupPolicy, see:
///
/// * [API documentation](https://cloud.google.com/netapp/volumes/docs/reference/rest/v1/projects.locations.backupPolicies)
/// * How-to Guides
/// * [Documentation](https://cloud.google.com/netapp/volumes/docs/protect-data/about-volume-backups#about_backup_policies)
///
/// ## Example Usage
///
/// ### Netapp Backup Policy Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testBackupPolicyFull = new gcp.netapp.BackupPolicy("test_backup_policy_full", {
///     name: "test-backup-policy-full",
///     location: "us-central1",
///     dailyBackupLimit: 2,
///     weeklyBackupLimit: 1,
///     monthlyBackupLimit: 1,
///     description: "TF test backup schedule",
///     enabled: true,
///     labels: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_backup_policy_full = gcp.netapp.BackupPolicy("test_backup_policy_full",
///     name="test-backup-policy-full",
///     location="us-central1",
///     daily_backup_limit=2,
///     weekly_backup_limit=1,
///     monthly_backup_limit=1,
///     description="TF test backup schedule",
///     enabled=True,
///     labels={
///         "foo": "bar",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testBackupPolicyFull = new Gcp.Netapp.BackupPolicy("test_backup_policy_full", new()
///     {
///         Name = "test-backup-policy-full",
///         Location = "us-central1",
///         DailyBackupLimit = 2,
///         WeeklyBackupLimit = 1,
///         MonthlyBackupLimit = 1,
///         Description = "TF test backup schedule",
///         Enabled = true,
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/netapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := netapp.NewBackupPolicy(ctx, "test_backup_policy_full", &netapp.BackupPolicyArgs{
/// 			Name:               pulumi.String("test-backup-policy-full"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DailyBackupLimit:   pulumi.Int(2),
/// 			WeeklyBackupLimit:  pulumi.Int(1),
/// 			MonthlyBackupLimit: pulumi.Int(1),
/// 			Description:        pulumi.String("TF test backup schedule"),
/// 			Enabled:            pulumi.Bool(true),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_netapp_backuppolicy" "test_backup_policy_full" {
///   name                 = "test-backup-policy-full"
///   location             = "us-central1"
///   daily_backup_limit   = 2
///   weekly_backup_limit  = 1
///   monthly_backup_limit = 1
///   description          = "TF test backup schedule"
///   enabled              = true
///   labels = {
///     "foo" = "bar"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.netapp.BackupPolicy;
/// import com.pulumi.gcp.netapp.BackupPolicyArgs;
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
///         var testBackupPolicyFull = new BackupPolicy("testBackupPolicyFull", BackupPolicyArgs.builder()
///             .name("test-backup-policy-full")
///             .location("us-central1")
///             .dailyBackupLimit(2)
///             .weeklyBackupLimit(1)
///             .monthlyBackupLimit(1)
///             .description("TF test backup schedule")
///             .enabled(true)
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testBackupPolicyFull:
///     type: gcp:netapp:BackupPolicy
///     name: test_backup_policy_full
///     properties:
///       name: test-backup-policy-full
///       location: us-central1
///       dailyBackupLimit: 2
///       weeklyBackupLimit: 1
///       monthlyBackupLimit: 1
///       description: TF test backup schedule
///       enabled: true
///       labels:
///         foo: bar
/// ```
///
///
/// ## Import
///
/// BackupPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backupPolicies/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, BackupPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/backupPolicy:BackupPolicy default projects/{{project}}/locations/{{location}}/backupPolicies/{{name}}
/// $ pulumi import gcp:netapp/backupPolicy:BackupPolicy default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:netapp/backupPolicy:BackupPolicy default {{location}}/{{name}}
/// ```
class BackupPolicy extends pulumi.CustomResource {
  /// The total number of volumes assigned by this backup policy.
  late final pulumi.Output<int> assignedVolumeCount;
  /// Create time of the backup policy. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  late final pulumi.Output<String> createTime;
  /// Number of daily backups to keep. Note that the minimum daily backup limit is 2.
  late final pulumi.Output<int> dailyBackupLimit;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// If enabled, make backups automatically according to the schedules.
  /// This will be applied to all volumes that have this policy attached and enforced on volume level.
  late final pulumi.Output<bool?> enabled;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Name of the region for the policy to apply to.
  late final pulumi.Output<String> location;
  /// Number of monthly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.
  late final pulumi.Output<int> monthlyBackupLimit;
  /// The name of the backup policy. Needs to be unique per location.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The state of the backup policy.
  late final pulumi.Output<String> state;
  /// Number of weekly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.
  late final pulumi.Output<int> weeklyBackupLimit;

  /// Creates a new [BackupPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPolicy]. {@macro pulumi_netapp_backup_policy_backup_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPolicy(
    String name, {
    BackupPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/backupPolicy:BackupPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    assignedVolumeCount = registerOutput<int>('assignedVolumeCount');
    createTime = registerOutput<String>('createTime');
    dailyBackupLimit = registerOutput<int>('dailyBackupLimit');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enabled = registerOutput<bool?>('enabled');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    monthlyBackupLimit = registerOutput<int>('monthlyBackupLimit');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    state = registerOutput<String>('state');
    weeklyBackupLimit = registerOutput<int>('weeklyBackupLimit');
  }

  /// Gets an existing [BackupPolicy] resource's state with the given [name] and [id].
  static BackupPolicy get(
    String name,
    pulumi.Input<String> id, {
    BackupPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BackupPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BackupPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/backupPolicy:BackupPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assignedVolumeCount = registerOutput<int>('assignedVolumeCount');
    createTime = registerOutput<String>('createTime');
    dailyBackupLimit = registerOutput<int>('dailyBackupLimit');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enabled = registerOutput<bool?>('enabled');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    monthlyBackupLimit = registerOutput<int>('monthlyBackupLimit');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    this.state = registerOutput<String>('state');
    weeklyBackupLimit = registerOutput<int>('weeklyBackupLimit');
  }

  /// Creates a typed reference to an existing [BackupPolicy] resource.
  BackupPolicy.reference(String urn)
    : super(
        'gcp:netapp/backupPolicy:BackupPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    assignedVolumeCount = registerOutput<int>('assignedVolumeCount');
    createTime = registerOutput<String>('createTime');
    dailyBackupLimit = registerOutput<int>('dailyBackupLimit');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enabled = registerOutput<bool?>('enabled');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    monthlyBackupLimit = registerOutput<int>('monthlyBackupLimit');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    state = registerOutput<String>('state');
    weeklyBackupLimit = registerOutput<int>('weeklyBackupLimit');
  }
}
