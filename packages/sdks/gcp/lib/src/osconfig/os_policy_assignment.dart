import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_policy_assignment_args.dart';
import 'os_policy_assignment_instance_filter.dart';
import 'os_policy_assignment_os_policy.dart';
import 'os_policy_assignment_rollout.dart';
import 'os_policy_assignment_state.dart';

/// OS policy assignment is an API resource that is used to apply a set of OS
/// policies to a dynamically targeted group of Compute Engine VM instances. An OS
/// policy is used to define the desired state configuration for a Compute Engine VM
/// instance through a set of configuration resources that provide capabilities such
/// as installing or removing software packages, or executing a script. For more
/// information about the OS policy resource definitions and examples, see
/// [OS policy and OS policy assignment](https://cloud.google.com/compute/docs/os-configuration-management/working-with-os-policies).
///
/// To get more information about OSPolicyAssignment, see:
///
/// *   [API documentation](https://cloud.google.com/compute/docs/osconfig/rest/v1/projects.locations.osPolicyAssignments)
/// *   How-to Guides
/// *   [Official Documentation](https://cloud.google.com/compute/docs/os-configuration-management/create-os-policy-assignment)
///
/// ## Example Usage
///
/// ### Os Config Os Policy Assignment Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.osconfig.OsPolicyAssignment("primary", {
///     instanceFilter: {
///         all: false,
///         exclusionLabels: [{
///             labels: {
///                 "label-two": "value-two",
///             },
///         }],
///         inclusionLabels: [{
///             labels: {
///                 "label-one": "value-one",
///             },
///         }],
///         inventories: [{
///             osShortName: "centos",
///             osVersion: "8.*",
///         }],
///     },
///     location: "us-central1-a",
///     name: "policy-assignment",
///     osPolicies: [{
///         id: "policy",
///         mode: "VALIDATION",
///         resourceGroups: [{
///             resources: [
///                 {
///                     id: "apt-to-yum",
///                     repository: {
///                         apt: {
///                             archiveType: "DEB",
///                             components: ["doc"],
///                             distribution: "debian",
///                             uri: "https://atl.mirrors.clouvider.net/debian",
///                             gpgKey: ".gnupg/pubring.kbx",
///                         },
///                     },
///                 },
///                 {
///                     id: "exec1",
///                     exec: {
///                         validate: {
///                             interpreter: "SHELL",
///                             args: ["arg1"],
///                             file: {
///                                 localPath: "$HOME/script.sh",
///                             },
///                             outputFilePath: "$HOME/out",
///                         },
///                         enforce: {
///                             interpreter: "SHELL",
///                             args: ["arg1"],
///                             file: {
///                                 allowInsecure: true,
///                                 remote: {
///                                     uri: "https://www.example.com/script.sh",
///                                     sha256Checksum: "c7938fed83afdccbb0e86a2a2e4cad7d5035012ca3214b4a61268393635c3063",
///                                 },
///                             },
///                             outputFilePath: "$HOME/out",
///                         },
///                     },
///                 },
///             ],
///             inventoryFilters: [{
///                 osShortName: "centos",
///                 osVersion: "8.*",
///             }],
///         }],
///         allowNoResourceGroupMatch: false,
///         description: "A test os policy",
///     }],
///     rollout: {
///         disruptionBudget: {
///             percent: 100,
///         },
///         minWaitDuration: "3s",
///     },
///     description: "A test os policy assignment",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.osconfig.OsPolicyAssignment("primary",
///     instance_filter={
///         "all": False,
///         "exclusion_labels": [{
///             "labels": {
///                 "label-two": "value-two",
///             },
///         }],
///         "inclusion_labels": [{
///             "labels": {
///                 "label-one": "value-one",
///             },
///         }],
///         "inventories": [{
///             "os_short_name": "centos",
///             "os_version": "8.*",
///         }],
///     },
///     location="us-central1-a",
///     name="policy-assignment",
///     os_policies=[{
///         "id": "policy",
///         "mode": "VALIDATION",
///         "resource_groups": [{
///             "resources": [
///                 {
///                     "id": "apt-to-yum",
///                     "repository": {
///                         "apt": {
///                             "archive_type": "DEB",
///                             "components": ["doc"],
///                             "distribution": "debian",
///                             "uri": "https://atl.mirrors.clouvider.net/debian",
///                             "gpg_key": ".gnupg/pubring.kbx",
///                         },
///                     },
///                 },
///                 {
///                     "id": "exec1",
///                     "exec_": {
///                         "validate": {
///                             "interpreter": "SHELL",
///                             "args": ["arg1"],
///                             "file": {
///                                 "local_path": "$HOME/script.sh",
///                             },
///                             "output_file_path": "$HOME/out",
///                         },
///                         "enforce": {
///                             "interpreter": "SHELL",
///                             "args": ["arg1"],
///                             "file": {
///                                 "allow_insecure": True,
///                                 "remote": {
///                                     "uri": "https://www.example.com/script.sh",
///                                     "sha256_checksum": "c7938fed83afdccbb0e86a2a2e4cad7d5035012ca3214b4a61268393635c3063",
///                                 },
///                             },
///                             "output_file_path": "$HOME/out",
///                         },
///                     },
///                 },
///             ],
///             "inventory_filters": [{
///                 "os_short_name": "centos",
///                 "os_version": "8.*",
///             }],
///         }],
///         "allow_no_resource_group_match": False,
///         "description": "A test os policy",
///     }],
///     rollout={
///         "disruption_budget": {
///             "percent": 100,
///         },
///         "min_wait_duration": "3s",
///     },
///     description="A test os policy assignment")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.OsConfig.OsPolicyAssignment("primary", new()
///     {
///         InstanceFilter = new Gcp.OsConfig.Inputs.OsPolicyAssignmentInstanceFilterArgs
///         {
///             All = false,
///             ExclusionLabels = new[]
///             {
///                 new Gcp.OsConfig.Inputs.OsPolicyAssignmentInstanceFilterExclusionLabelArgs
///                 {
///                     Labels =
///                     {
///                         { "label-two", "value-two" },
///                     },
///                 },
///             },
///             InclusionLabels = new[]
///             {
///                 new Gcp.OsConfig.Inputs.OsPolicyAssignmentInstanceFilterInclusionLabelArgs
///                 {
///                     Labels =
///                     {
///                         { "label-one", "value-one" },
///                     },
///                 },
///             },
///             Inventories = new[]
///             {
///                 new Gcp.OsConfig.Inputs.OsPolicyAssignmentInstanceFilterInventoryArgs
///                 {
///                     OsShortName = "centos",
///                     OsVersion = "8.*",
///                 },
///             },
///         },
///         Location = "us-central1-a",
///         Name = "policy-assignment",
///         OsPolicies = new[]
///         {
///             new Gcp.OsConfig.Inputs.OsPolicyAssignmentOsPolicyArgs
///             {
///                 Id = "policy",
///                 Mode = "VALIDATION",
///                 ResourceGroups = new[]
///                 {
///                     new Gcp.OsConfig.Inputs.OsPolicyAssignmentOsPolicyResourceGroupArgs
///                     {
///                         Resources = new[]
///                         {
///                             new Gcp.OsConfig.Inputs.OsPolicyAssignmentOsPolicyResourceGroupResourceArgs
///                             {
///                                 Id = "apt-to-yum",
///                                 Repository = new Gcp.OsConfig.Inputs.OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryArgs
///                                 {
///                                     Apt = new Gcp.OsConfig.Inputs.OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryAptArgs
///                                     {
///                                         ArchiveType = "DEB",
///                                         Components = new[]
///                                         {
///                                             "doc",
///                                         },
///                                         Distribution = "debian",
///                                         Uri = "https://atl.mirrors.clouvider.net/debian",
///                                         GpgKey = ".gnupg/pubring.kbx",
///                                     },
///                                 },
///                             },
///                             new Gcp.OsConfig.Inputs.OsPolicyAssignmentOsPolicyResourceGroupResourceArgs
///                             {
///                                 Id = "exec1",
///                                 Exec = new Gcp.OsConfig.Inputs.OsPolicyAssignmentOsPolicyResourceGroupResourceExecArgs
///                                 {
///                                     Validate = new Gcp.OsConfig.Inputs.OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidateArgs
///                                     {
///                                         Interpreter = "SHELL",
///                                         Args = new[]
///                                         {
///                                             "arg1",
///                                         },
///                                         File = new Gcp.OsConfig.Inputs.OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidateFileArgs
///                                         {
///                                             LocalPath = "$HOME/script.sh",
///                                         },
///                                         OutputFilePath = "$HOME/out",
///                                     },
///                                     Enforce = new Gcp.OsConfig.Inputs.OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforceArgs
///                                     {
///                                         Interpreter = "SHELL",
///                                         Args = new[]
///                                         {
///                                             "arg1",
///                                         },
///                                         File = new Gcp.OsConfig.Inputs.OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforceFileArgs
///                                         {
///                                             AllowInsecure = true,
///                                             Remote = new Gcp.OsConfig.Inputs.OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforceFileRemoteArgs
///                                             {
///                                                 Uri = "https://www.example.com/script.sh",
///                                                 Sha256Checksum = "c7938fed83afdccbb0e86a2a2e4cad7d5035012ca3214b4a61268393635c3063",
///                                             },
///                                         },
///                                         OutputFilePath = "$HOME/out",
///                                     },
///                                 },
///                             },
///                         },
///                         InventoryFilters = new[]
///                         {
///                             new Gcp.OsConfig.Inputs.OsPolicyAssignmentOsPolicyResourceGroupInventoryFilterArgs
///                             {
///                                 OsShortName = "centos",
///                                 OsVersion = "8.*",
///                             },
///                         },
///                     },
///                 },
///                 AllowNoResourceGroupMatch = false,
///                 Description = "A test os policy",
///             },
///         },
///         Rollout = new Gcp.OsConfig.Inputs.OsPolicyAssignmentRolloutArgs
///         {
///             DisruptionBudget = new Gcp.OsConfig.Inputs.OsPolicyAssignmentRolloutDisruptionBudgetArgs
///             {
///                 Percent = 100,
///             },
///             MinWaitDuration = "3s",
///         },
///         Description = "A test os policy assignment",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/osconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := osconfig.NewOsPolicyAssignment(ctx, "primary", &osconfig.OsPolicyAssignmentArgs{
/// 			InstanceFilter: &osconfig.OsPolicyAssignmentInstanceFilterArgs{
/// 				All: pulumi.Bool(false),
/// 				ExclusionLabels: osconfig.OsPolicyAssignmentInstanceFilterExclusionLabelArray{
/// 					&osconfig.OsPolicyAssignmentInstanceFilterExclusionLabelArgs{
/// 						Labels: pulumi.StringMap{
/// 							"label-two": pulumi.String("value-two"),
/// 						},
/// 					},
/// 				},
/// 				InclusionLabels: osconfig.OsPolicyAssignmentInstanceFilterInclusionLabelArray{
/// 					&osconfig.OsPolicyAssignmentInstanceFilterInclusionLabelArgs{
/// 						Labels: pulumi.StringMap{
/// 							"label-one": pulumi.String("value-one"),
/// 						},
/// 					},
/// 				},
/// 				Inventories: osconfig.OsPolicyAssignmentInstanceFilterInventoryArray{
/// 					&osconfig.OsPolicyAssignmentInstanceFilterInventoryArgs{
/// 						OsShortName: pulumi.String("centos"),
/// 						OsVersion:   pulumi.String("8.*"),
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("us-central1-a"),
/// 			Name:     pulumi.String("policy-assignment"),
/// 			OsPolicies: osconfig.OsPolicyAssignmentOsPolicyArray{
/// 				&osconfig.OsPolicyAssignmentOsPolicyArgs{
/// 					Id:   pulumi.String("policy"),
/// 					Mode: pulumi.String("VALIDATION"),
/// 					ResourceGroups: osconfig.OsPolicyAssignmentOsPolicyResourceGroupArray{
/// 						&osconfig.OsPolicyAssignmentOsPolicyResourceGroupArgs{
/// 							Resources: osconfig.OsPolicyAssignmentOsPolicyResourceGroupResourceArray{
/// 								&osconfig.OsPolicyAssignmentOsPolicyResourceGroupResourceArgs{
/// 									Id: pulumi.String("apt-to-yum"),
/// 									Repository: &osconfig.OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryArgs{
/// 										Apt: &osconfig.OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryAptArgs{
/// 											ArchiveType: pulumi.String("DEB"),
/// 											Components: pulumi.StringArray{
/// 												pulumi.String("doc"),
/// 											},
/// 											Distribution: pulumi.String("debian"),
/// 											Uri:          pulumi.String("https://atl.mirrors.clouvider.net/debian"),
/// 											GpgKey:       pulumi.String(".gnupg/pubring.kbx"),
/// 										},
/// 									},
/// 								},
/// 								&osconfig.OsPolicyAssignmentOsPolicyResourceGroupResourceArgs{
/// 									Id: pulumi.String("exec1"),
/// 									Exec: &osconfig.OsPolicyAssignmentOsPolicyResourceGroupResourceExecArgs{
/// 										Validate: &osconfig.OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidateArgs{
/// 											Interpreter: pulumi.String("SHELL"),
/// 											Args: pulumi.StringArray{
/// 												pulumi.String("arg1"),
/// 											},
/// 											File: &osconfig.OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidateFileArgs{
/// 												LocalPath: pulumi.String("$HOME/script.sh"),
/// 											},
/// 											OutputFilePath: pulumi.String("$HOME/out"),
/// 										},
/// 										Enforce: &osconfig.OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforceArgs{
/// 											Interpreter: pulumi.String("SHELL"),
/// 											Args: pulumi.StringArray{
/// 												pulumi.String("arg1"),
/// 											},
/// 											File: &osconfig.OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforceFileArgs{
/// 												AllowInsecure: pulumi.Bool(true),
/// 												Remote: &osconfig.OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforceFileRemoteArgs{
/// 													Uri:            pulumi.String("https://www.example.com/script.sh"),
/// 													Sha256Checksum: pulumi.String("c7938fed83afdccbb0e86a2a2e4cad7d5035012ca3214b4a61268393635c3063"),
/// 												},
/// 											},
/// 											OutputFilePath: pulumi.String("$HOME/out"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							InventoryFilters: osconfig.OsPolicyAssignmentOsPolicyResourceGroupInventoryFilterArray{
/// 								&osconfig.OsPolicyAssignmentOsPolicyResourceGroupInventoryFilterArgs{
/// 									OsShortName: pulumi.String("centos"),
/// 									OsVersion:   pulumi.String("8.*"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					AllowNoResourceGroupMatch: pulumi.Bool(false),
/// 					Description:               pulumi.String("A test os policy"),
/// 				},
/// 			},
/// 			Rollout: &osconfig.OsPolicyAssignmentRolloutArgs{
/// 				DisruptionBudget: &osconfig.OsPolicyAssignmentRolloutDisruptionBudgetArgs{
/// 					Percent: pulumi.Int(100),
/// 				},
/// 				MinWaitDuration: pulumi.String("3s"),
/// 			},
/// 			Description: pulumi.String("A test os policy assignment"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.osconfig.OsPolicyAssignment;
/// import com.pulumi.gcp.osconfig.OsPolicyAssignmentArgs;
/// import com.pulumi.gcp.osconfig.inputs.OsPolicyAssignmentInstanceFilterArgs;
/// import com.pulumi.gcp.osconfig.inputs.OsPolicyAssignmentOsPolicyArgs;
/// import com.pulumi.gcp.osconfig.inputs.OsPolicyAssignmentRolloutArgs;
/// import com.pulumi.gcp.osconfig.inputs.OsPolicyAssignmentRolloutDisruptionBudgetArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var primary = new OsPolicyAssignment("primary", OsPolicyAssignmentArgs.builder()
///             .instanceFilter(OsPolicyAssignmentInstanceFilterArgs.builder()
///                 .all(false)
///                 .exclusionLabels(OsPolicyAssignmentInstanceFilterExclusionLabelArgs.builder()
///                     .labels(Map.of("label-two", "value-two"))
///                     .build())
///                 .inclusionLabels(OsPolicyAssignmentInstanceFilterInclusionLabelArgs.builder()
///                     .labels(Map.of("label-one", "value-one"))
///                     .build())
///                 .inventories(OsPolicyAssignmentInstanceFilterInventoryArgs.builder()
///                     .osShortName("centos")
///                     .osVersion("8.*")
///                     .build())
///                 .build())
///             .location("us-central1-a")
///             .name("policy-assignment")
///             .osPolicies(OsPolicyAssignmentOsPolicyArgs.builder()
///                 .id("policy")
///                 .mode("VALIDATION")
///                 .resourceGroups(OsPolicyAssignmentOsPolicyResourceGroupArgs.builder()
///                     .resources(
///                         OsPolicyAssignmentOsPolicyResourceGroupResourceArgs.builder()
///                             .id("apt-to-yum")
///                             .repository(OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryArgs.builder()
///                                 .apt(OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryAptArgs.builder()
///                                     .archiveType("DEB")
///                                     .components("doc")
///                                     .distribution("debian")
///                                     .uri("https://atl.mirrors.clouvider.net/debian")
///                                     .gpgKey(".gnupg/pubring.kbx")
///                                     .build())
///                                 .build())
///                             .build(),
///                         OsPolicyAssignmentOsPolicyResourceGroupResourceArgs.builder()
///                             .id("exec1")
///                             .exec(OsPolicyAssignmentOsPolicyResourceGroupResourceExecArgs.builder()
///                                 .validate(OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidateArgs.builder()
///                                     .interpreter("SHELL")
///                                     .args("arg1")
///                                     .file(OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidateFileArgs.builder()
///                                         .localPath("$HOME/script.sh")
///                                         .build())
///                                     .outputFilePath("$HOME/out")
///                                     .build())
///                                 .enforce(OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforceArgs.builder()
///                                     .interpreter("SHELL")
///                                     .args("arg1")
///                                     .file(OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforceFileArgs.builder()
///                                         .allowInsecure(true)
///                                         .remote(OsPolicyAssignmentOsPolicyResourceGroupResourceExecEnforceFileRemoteArgs.builder()
///                                             .uri("https://www.example.com/script.sh")
///                                             .sha256Checksum("c7938fed83afdccbb0e86a2a2e4cad7d5035012ca3214b4a61268393635c3063")
///                                             .build())
///                                         .build())
///                                     .outputFilePath("$HOME/out")
///                                     .build())
///                                 .build())
///                             .build())
///                     .inventoryFilters(OsPolicyAssignmentOsPolicyResourceGroupInventoryFilterArgs.builder()
///                         .osShortName("centos")
///                         .osVersion("8.*")
///                         .build())
///                     .build())
///                 .allowNoResourceGroupMatch(false)
///                 .description("A test os policy")
///                 .build())
///             .rollout(OsPolicyAssignmentRolloutArgs.builder()
///                 .disruptionBudget(OsPolicyAssignmentRolloutDisruptionBudgetArgs.builder()
///                     .percent(100)
///                     .build())
///                 .minWaitDuration("3s")
///                 .build())
///             .description("A test os policy assignment")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:osconfig:OsPolicyAssignment
///     properties:
///       instanceFilter:
///         all: false
///         exclusionLabels:
///           - labels:
///               label-two: value-two
///         inclusionLabels:
///           - labels:
///               label-one: value-one
///         inventories:
///           - osShortName: centos
///             osVersion: 8.*
///       location: us-central1-a
///       name: policy-assignment
///       osPolicies:
///         - id: policy
///           mode: VALIDATION
///           resourceGroups:
///             - resources:
///                 - id: apt-to-yum
///                   repository:
///                     apt:
///                       archiveType: DEB
///                       components:
///                         - doc
///                       distribution: debian
///                       uri: https://atl.mirrors.clouvider.net/debian
///                       gpgKey: .gnupg/pubring.kbx
///                 - id: exec1
///                   exec:
///                     validate:
///                       interpreter: SHELL
///                       args:
///                         - arg1
///                       file:
///                         localPath: $HOME/script.sh
///                       outputFilePath: $HOME/out
///                     enforce:
///                       interpreter: SHELL
///                       args:
///                         - arg1
///                       file:
///                         allowInsecure: true
///                         remote:
///                           uri: https://www.example.com/script.sh
///                           sha256Checksum: c7938fed83afdccbb0e86a2a2e4cad7d5035012ca3214b4a61268393635c3063
///                       outputFilePath: $HOME/out
///               inventoryFilters:
///                 - osShortName: centos
///                   osVersion: 8.*
///           allowNoResourceGroupMatch: false
///           description: A test os policy
///       rollout:
///         disruptionBudget:
///           percent: 100
///         minWaitDuration: 3s
///       description: A test os policy assignment
/// ```
///
///
/// ## Import
///
/// OSPolicyAssignment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/osPolicyAssignments/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, OSPolicyAssignment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:osconfig/osPolicyAssignment:OsPolicyAssignment default projects/{{project}}/locations/{{location}}/osPolicyAssignments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:osconfig/osPolicyAssignment:OsPolicyAssignment default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:osconfig/osPolicyAssignment:OsPolicyAssignment default {{location}}/{{name}}
/// ```
class OsPolicyAssignment extends pulumi.CustomResource {
  /// Output only. Indicates that this revision has been successfully
  /// rolled out in this zone and new VMs will be assigned OS policies from this
  /// revision. For a given OS policy assignment, there is only one revision with
  /// a value of `true` for this field.
  late final pulumi.Output<bool> baseline;
  /// Output only. Indicates that this revision deletes the OS policy
  /// assignment.
  late final pulumi.Output<bool> deleted;
  /// OS policy assignment description. Length of the description is limited to 1024 characters.
  late final pulumi.Output<String?> description;
  /// The etag for this OS policy assignment. If this is provided on
  /// update, it must match the server's etag.
  late final pulumi.Output<String> etag;
  /// Filter to select VMs. Structure is
  /// documented below.
  late final pulumi.Output<OsPolicyAssignmentInstanceFilter> instanceFilter;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// List of OS policies to be applied to the VMs.
  /// Structure is documented below.
  late final pulumi.Output<List<OsPolicyAssignmentOsPolicy>> osPolicies;
  /// The project for the resource
  late final pulumi.Output<String> project;
  /// Output only. Indicates that reconciliation is in progress
  /// for the revision. This value is `true` when the `rollout_state` is one of:
  late final pulumi.Output<bool> reconciling;
  /// Output only. The timestamp that the revision was
  /// created.
  late final pulumi.Output<String> revisionCreateTime;
  /// Output only. The assignment revision ID A new revision is
  /// committed whenever a rollout is triggered for a OS policy assignment
  late final pulumi.Output<String> revisionId;
  /// Rollout to deploy the OS policy assignment. A rollout
  /// is triggered in the following situations: 1) OSPolicyAssignment is created.
  /// 2) OSPolicyAssignment is updated and the update contains changes to one of
  /// the following fields: - instance_filter - os_policies 3) OSPolicyAssignment
  /// is deleted. Structure is documented below.
  late final pulumi.Output<OsPolicyAssignmentRollout> rollout;
  /// Output only. OS policy assignment rollout state
  late final pulumi.Output<String> rolloutState;
  /// Set to true to skip awaiting rollout during resource creation and update.
  late final pulumi.Output<bool?> skipAwaitRollout;
  /// Output only. Server generated unique id for the OS policy assignment
  /// resource.
  late final pulumi.Output<String> uid;

  /// Creates a new [OsPolicyAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OsPolicyAssignment]. {@macro pulumi_osconfig_os_policy_assignment_os_policy_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OsPolicyAssignment(
    String name, {
    OsPolicyAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:osconfig/osPolicyAssignment:OsPolicyAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.baseline = registerOutput<bool>('baseline');
    this.deleted = registerOutput<bool>('deleted');
    this.description = registerOutput<String?>('description');
    this.etag = registerOutput<String>('etag');
    this.instanceFilter = registerOutput<OsPolicyAssignmentInstanceFilter>('instanceFilter');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.osPolicies = registerOutput<List<OsPolicyAssignmentOsPolicy>>('osPolicies');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.revisionCreateTime = registerOutput<String>('revisionCreateTime');
    this.revisionId = registerOutput<String>('revisionId');
    this.rollout = registerOutput<OsPolicyAssignmentRollout>('rollout');
    this.rolloutState = registerOutput<String>('rolloutState');
    this.skipAwaitRollout = registerOutput<bool?>('skipAwaitRollout');
    this.uid = registerOutput<String>('uid');
  }

  /// Gets an existing [OsPolicyAssignment] resource's state with the given [name] and [id].
  static OsPolicyAssignment get(
    String name,
    pulumi.Input<String> id, {
    OsPolicyAssignmentState? state,
  }) {
    return OsPolicyAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OsPolicyAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:osconfig/osPolicyAssignment:OsPolicyAssignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.baseline = registerOutput<bool>('baseline');
    this.deleted = registerOutput<bool>('deleted');
    this.description = registerOutput<String?>('description');
    this.etag = registerOutput<String>('etag');
    this.instanceFilter = registerOutput<OsPolicyAssignmentInstanceFilter>('instanceFilter');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.osPolicies = registerOutput<List<OsPolicyAssignmentOsPolicy>>('osPolicies');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.revisionCreateTime = registerOutput<String>('revisionCreateTime');
    this.revisionId = registerOutput<String>('revisionId');
    this.rollout = registerOutput<OsPolicyAssignmentRollout>('rollout');
    this.rolloutState = registerOutput<String>('rolloutState');
    this.skipAwaitRollout = registerOutput<bool?>('skipAwaitRollout');
    this.uid = registerOutput<String>('uid');
  }
}
