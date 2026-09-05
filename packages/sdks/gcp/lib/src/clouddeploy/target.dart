import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_anthos_cluster.dart';
import 'target_args.dart';
import 'target_associated_entity.dart';
import 'target_custom_target.dart';
import 'target_execution_config.dart';
import 'target_gke.dart';
import 'target_multi_target.dart';
import 'target_run.dart';
import 'target_state.dart';

/// The Cloud Deploy `Target` resource
///
/// ## Example Usage
///
/// ### Multi_target
/// tests creating and updating a multi-target
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.clouddeploy.Target("primary", {
///     location: "us-west1",
///     name: "target",
///     deployParameters: {},
///     description: "multi-target description",
///     executionConfigs: [{
///         usages: [
///             "RENDER",
///             "DEPLOY",
///         ],
///         executionTimeout: "3600s",
///     }],
///     multiTarget: {
///         targetIds: [
///             "1",
///             "2",
///         ],
///     },
///     project: "my-project-name",
///     requireApproval: false,
///     annotations: {
///         my_first_annotation: "example-annotation-1",
///         my_second_annotation: "example-annotation-2",
///     },
///     labels: {
///         my_first_label: "example-label-1",
///         my_second_label: "example-label-2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.clouddeploy.Target("primary",
///     location="us-west1",
///     name="target",
///     deploy_parameters={},
///     description="multi-target description",
///     execution_configs=[{
///         "usages": [
///             "RENDER",
///             "DEPLOY",
///         ],
///         "execution_timeout": "3600s",
///     }],
///     multi_target={
///         "target_ids": [
///             "1",
///             "2",
///         ],
///     },
///     project="my-project-name",
///     require_approval=False,
///     annotations={
///         "my_first_annotation": "example-annotation-1",
///         "my_second_annotation": "example-annotation-2",
///     },
///     labels={
///         "my_first_label": "example-label-1",
///         "my_second_label": "example-label-2",
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
///     var primary = new Gcp.CloudDeploy.Target("primary", new()
///     {
///         Location = "us-west1",
///         Name = "target",
///         DeployParameters = new() { },
///         Description = "multi-target description",
///         ExecutionConfigs = new[]
///         {
///             new Gcp.CloudDeploy.Inputs.TargetExecutionConfigArgs
///             {
///                 Usages = new[]
///                 {
///                     "RENDER",
///                     "DEPLOY",
///                 },
///                 ExecutionTimeout = "3600s",
///             },
///         },
///         MultiTarget = new Gcp.CloudDeploy.Inputs.TargetMultiTargetArgs
///         {
///             TargetIds = new[]
///             {
///                 "1",
///                 "2",
///             },
///         },
///         Project = "my-project-name",
///         RequireApproval = false,
///         Annotations =
///         {
///             { "my_first_annotation", "example-annotation-1" },
///             { "my_second_annotation", "example-annotation-2" },
///         },
///         Labels =
///         {
///             { "my_first_label", "example-label-1" },
///             { "my_second_label", "example-label-2" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/clouddeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := clouddeploy.NewTarget(ctx, "primary", &clouddeploy.TargetArgs{
/// 			Location:         pulumi.String("us-west1"),
/// 			Name:             pulumi.String("target"),
/// 			DeployParameters: pulumi.StringMap{},
/// 			Description:      pulumi.String("multi-target description"),
/// 			ExecutionConfigs: clouddeploy.TargetExecutionConfigArray{
/// 				&clouddeploy.TargetExecutionConfigArgs{
/// 					Usages: pulumi.StringArray{
/// 						pulumi.String("RENDER"),
/// 						pulumi.String("DEPLOY"),
/// 					},
/// 					ExecutionTimeout: pulumi.String("3600s"),
/// 				},
/// 			},
/// 			MultiTarget: &clouddeploy.TargetMultiTargetArgs{
/// 				TargetIds: pulumi.StringArray{
/// 					pulumi.String("1"),
/// 					pulumi.String("2"),
/// 				},
/// 			},
/// 			Project:         pulumi.String("my-project-name"),
/// 			RequireApproval: pulumi.Bool(false),
/// 			Annotations: pulumi.StringMap{
/// 				"my_first_annotation":  pulumi.String("example-annotation-1"),
/// 				"my_second_annotation": pulumi.String("example-annotation-2"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"my_first_label":  pulumi.String("example-label-1"),
/// 				"my_second_label": pulumi.String("example-label-2"),
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
/// resource "gcp_clouddeploy_target" "primary" {
///   location          = "us-west1"
///   name              = "target"
///   deploy_parameters = {}
///   description       = "multi-target description"
///   execution_configs {
///     usages            = ["RENDER", "DEPLOY"]
///     execution_timeout = "3600s"
///   }
///   multi_target = {
///     target_ids = ["1", "2"]
///   }
///   project          = "my-project-name"
///   require_approval = false
///   annotations = {
///     "my_first_annotation"  = "example-annotation-1"
///     "my_second_annotation" = "example-annotation-2"
///   }
///   labels = {
///     "my_first_label"  = "example-label-1"
///     "my_second_label" = "example-label-2"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.clouddeploy.Target;
/// import com.pulumi.gcp.clouddeploy.TargetArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.TargetExecutionConfigArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.TargetMultiTargetArgs;
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
///         var primary = new Target("primary", TargetArgs.builder()
///             .location("us-west1")
///             .name("target")
///             .deployParameters(Map.ofEntries(
///             ))
///             .description("multi-target description")
///             .executionConfigs(TargetExecutionConfigArgs.builder()
///                 .usages(
///                     "RENDER",
///                     "DEPLOY")
///                 .executionTimeout("3600s")
///                 .build())
///             .multiTarget(TargetMultiTargetArgs.builder()
///                 .targetIds(
///                     "1",
///                     "2")
///                 .build())
///             .project("my-project-name")
///             .requireApproval(false)
///             .annotations(Map.ofEntries(
///                 Map.entry("my_first_annotation", "example-annotation-1"),
///                 Map.entry("my_second_annotation", "example-annotation-2")
///             ))
///             .labels(Map.ofEntries(
///                 Map.entry("my_first_label", "example-label-1"),
///                 Map.entry("my_second_label", "example-label-2")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:clouddeploy:Target
///     properties:
///       location: us-west1
///       name: target
///       deployParameters: {}
///       description: multi-target description
///       executionConfigs:
///         - usages:
///             - RENDER
///             - DEPLOY
///           executionTimeout: 3600s
///       multiTarget:
///         targetIds:
///           - '1'
///           - '2'
///       project: my-project-name
///       requireApproval: false
///       annotations:
///         my_first_annotation: example-annotation-1
///         my_second_annotation: example-annotation-2
///       labels:
///         my_first_label: example-label-1
///         my_second_label: example-label-2
/// ```
///
/// ### Run_target
/// tests creating and updating a cloud run target
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.clouddeploy.Target("primary", {
///     location: "us-west1",
///     name: "target",
///     deployParameters: {},
///     description: "basic description",
///     executionConfigs: [{
///         usages: [
///             "RENDER",
///             "DEPLOY",
///         ],
///         executionTimeout: "3600s",
///     }],
///     project: "my-project-name",
///     requireApproval: false,
///     run: {
///         location: "projects/my-project-name/locations/us-west1",
///     },
///     annotations: {
///         my_first_annotation: "example-annotation-1",
///         my_second_annotation: "example-annotation-2",
///     },
///     labels: {
///         my_first_label: "example-label-1",
///         my_second_label: "example-label-2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.clouddeploy.Target("primary",
///     location="us-west1",
///     name="target",
///     deploy_parameters={},
///     description="basic description",
///     execution_configs=[{
///         "usages": [
///             "RENDER",
///             "DEPLOY",
///         ],
///         "execution_timeout": "3600s",
///     }],
///     project="my-project-name",
///     require_approval=False,
///     run={
///         "location": "projects/my-project-name/locations/us-west1",
///     },
///     annotations={
///         "my_first_annotation": "example-annotation-1",
///         "my_second_annotation": "example-annotation-2",
///     },
///     labels={
///         "my_first_label": "example-label-1",
///         "my_second_label": "example-label-2",
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
///     var primary = new Gcp.CloudDeploy.Target("primary", new()
///     {
///         Location = "us-west1",
///         Name = "target",
///         DeployParameters = new() { },
///         Description = "basic description",
///         ExecutionConfigs = new[]
///         {
///             new Gcp.CloudDeploy.Inputs.TargetExecutionConfigArgs
///             {
///                 Usages = new[]
///                 {
///                     "RENDER",
///                     "DEPLOY",
///                 },
///                 ExecutionTimeout = "3600s",
///             },
///         },
///         Project = "my-project-name",
///         RequireApproval = false,
///         Run = new Gcp.CloudDeploy.Inputs.TargetRunArgs
///         {
///             Location = "projects/my-project-name/locations/us-west1",
///         },
///         Annotations =
///         {
///             { "my_first_annotation", "example-annotation-1" },
///             { "my_second_annotation", "example-annotation-2" },
///         },
///         Labels =
///         {
///             { "my_first_label", "example-label-1" },
///             { "my_second_label", "example-label-2" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/clouddeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := clouddeploy.NewTarget(ctx, "primary", &clouddeploy.TargetArgs{
/// 			Location:         pulumi.String("us-west1"),
/// 			Name:             pulumi.String("target"),
/// 			DeployParameters: pulumi.StringMap{},
/// 			Description:      pulumi.String("basic description"),
/// 			ExecutionConfigs: clouddeploy.TargetExecutionConfigArray{
/// 				&clouddeploy.TargetExecutionConfigArgs{
/// 					Usages: pulumi.StringArray{
/// 						pulumi.String("RENDER"),
/// 						pulumi.String("DEPLOY"),
/// 					},
/// 					ExecutionTimeout: pulumi.String("3600s"),
/// 				},
/// 			},
/// 			Project:         pulumi.String("my-project-name"),
/// 			RequireApproval: pulumi.Bool(false),
/// 			Run: &clouddeploy.TargetRunArgs{
/// 				Location: pulumi.String("projects/my-project-name/locations/us-west1"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"my_first_annotation":  pulumi.String("example-annotation-1"),
/// 				"my_second_annotation": pulumi.String("example-annotation-2"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"my_first_label":  pulumi.String("example-label-1"),
/// 				"my_second_label": pulumi.String("example-label-2"),
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
/// resource "gcp_clouddeploy_target" "primary" {
///   location          = "us-west1"
///   name              = "target"
///   deploy_parameters = {}
///   description       = "basic description"
///   execution_configs {
///     usages            = ["RENDER", "DEPLOY"]
///     execution_timeout = "3600s"
///   }
///   project          = "my-project-name"
///   require_approval = false
///   run = {
///     location = "projects/my-project-name/locations/us-west1"
///   }
///   annotations = {
///     "my_first_annotation"  = "example-annotation-1"
///     "my_second_annotation" = "example-annotation-2"
///   }
///   labels = {
///     "my_first_label"  = "example-label-1"
///     "my_second_label" = "example-label-2"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.clouddeploy.Target;
/// import com.pulumi.gcp.clouddeploy.TargetArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.TargetExecutionConfigArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.TargetRunArgs;
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
///         var primary = new Target("primary", TargetArgs.builder()
///             .location("us-west1")
///             .name("target")
///             .deployParameters(Map.ofEntries(
///             ))
///             .description("basic description")
///             .executionConfigs(TargetExecutionConfigArgs.builder()
///                 .usages(
///                     "RENDER",
///                     "DEPLOY")
///                 .executionTimeout("3600s")
///                 .build())
///             .project("my-project-name")
///             .requireApproval(false)
///             .run(TargetRunArgs.builder()
///                 .location("projects/my-project-name/locations/us-west1")
///                 .build())
///             .annotations(Map.ofEntries(
///                 Map.entry("my_first_annotation", "example-annotation-1"),
///                 Map.entry("my_second_annotation", "example-annotation-2")
///             ))
///             .labels(Map.ofEntries(
///                 Map.entry("my_first_label", "example-label-1"),
///                 Map.entry("my_second_label", "example-label-2")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:clouddeploy:Target
///     properties:
///       location: us-west1
///       name: target
///       deployParameters: {}
///       description: basic description
///       executionConfigs:
///         - usages:
///             - RENDER
///             - DEPLOY
///           executionTimeout: 3600s
///       project: my-project-name
///       requireApproval: false
///       run:
///         location: projects/my-project-name/locations/us-west1
///       annotations:
///         my_first_annotation: example-annotation-1
///         my_second_annotation: example-annotation-2
///       labels:
///         my_first_label: example-label-1
///         my_second_label: example-label-2
/// ```
///
/// ### Target
/// Creates a basic Cloud Deploy target
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.clouddeploy.Target("primary", {
///     location: "us-west1",
///     name: "target",
///     deployParameters: {
///         deployParameterKey: "deployParameterValue",
///     },
///     description: "basic description",
///     gke: {
///         cluster: "projects/my-project-name/locations/us-west1/clusters/example-cluster-name",
///     },
///     project: "my-project-name",
///     requireApproval: false,
///     annotations: {
///         my_first_annotation: "example-annotation-1",
///         my_second_annotation: "example-annotation-2",
///     },
///     labels: {
///         my_first_label: "example-label-1",
///         my_second_label: "example-label-2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.clouddeploy.Target("primary",
///     location="us-west1",
///     name="target",
///     deploy_parameters={
///         "deployParameterKey": "deployParameterValue",
///     },
///     description="basic description",
///     gke={
///         "cluster": "projects/my-project-name/locations/us-west1/clusters/example-cluster-name",
///     },
///     project="my-project-name",
///     require_approval=False,
///     annotations={
///         "my_first_annotation": "example-annotation-1",
///         "my_second_annotation": "example-annotation-2",
///     },
///     labels={
///         "my_first_label": "example-label-1",
///         "my_second_label": "example-label-2",
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
///     var primary = new Gcp.CloudDeploy.Target("primary", new()
///     {
///         Location = "us-west1",
///         Name = "target",
///         DeployParameters =
///         {
///             { "deployParameterKey", "deployParameterValue" },
///         },
///         Description = "basic description",
///         Gke = new Gcp.CloudDeploy.Inputs.TargetGkeArgs
///         {
///             Cluster = "projects/my-project-name/locations/us-west1/clusters/example-cluster-name",
///         },
///         Project = "my-project-name",
///         RequireApproval = false,
///         Annotations =
///         {
///             { "my_first_annotation", "example-annotation-1" },
///             { "my_second_annotation", "example-annotation-2" },
///         },
///         Labels =
///         {
///             { "my_first_label", "example-label-1" },
///             { "my_second_label", "example-label-2" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/clouddeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := clouddeploy.NewTarget(ctx, "primary", &clouddeploy.TargetArgs{
/// 			Location: pulumi.String("us-west1"),
/// 			Name:     pulumi.String("target"),
/// 			DeployParameters: pulumi.StringMap{
/// 				"deployParameterKey": pulumi.String("deployParameterValue"),
/// 			},
/// 			Description: pulumi.String("basic description"),
/// 			Gke: &clouddeploy.TargetGkeArgs{
/// 				Cluster: pulumi.String("projects/my-project-name/locations/us-west1/clusters/example-cluster-name"),
/// 			},
/// 			Project:         pulumi.String("my-project-name"),
/// 			RequireApproval: pulumi.Bool(false),
/// 			Annotations: pulumi.StringMap{
/// 				"my_first_annotation":  pulumi.String("example-annotation-1"),
/// 				"my_second_annotation": pulumi.String("example-annotation-2"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"my_first_label":  pulumi.String("example-label-1"),
/// 				"my_second_label": pulumi.String("example-label-2"),
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
/// resource "gcp_clouddeploy_target" "primary" {
///   location = "us-west1"
///   name     = "target"
///   deploy_parameters = {
///     "deployParameterKey" = "deployParameterValue"
///   }
///   description = "basic description"
///   gke = {
///     cluster = "projects/my-project-name/locations/us-west1/clusters/example-cluster-name"
///   }
///   project          = "my-project-name"
///   require_approval = false
///   annotations = {
///     "my_first_annotation"  = "example-annotation-1"
///     "my_second_annotation" = "example-annotation-2"
///   }
///   labels = {
///     "my_first_label"  = "example-label-1"
///     "my_second_label" = "example-label-2"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.clouddeploy.Target;
/// import com.pulumi.gcp.clouddeploy.TargetArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.TargetGkeArgs;
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
///         var primary = new Target("primary", TargetArgs.builder()
///             .location("us-west1")
///             .name("target")
///             .deployParameters(Map.of("deployParameterKey", "deployParameterValue"))
///             .description("basic description")
///             .gke(TargetGkeArgs.builder()
///                 .cluster("projects/my-project-name/locations/us-west1/clusters/example-cluster-name")
///                 .build())
///             .project("my-project-name")
///             .requireApproval(false)
///             .annotations(Map.ofEntries(
///                 Map.entry("my_first_annotation", "example-annotation-1"),
///                 Map.entry("my_second_annotation", "example-annotation-2")
///             ))
///             .labels(Map.ofEntries(
///                 Map.entry("my_first_label", "example-label-1"),
///                 Map.entry("my_second_label", "example-label-2")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:clouddeploy:Target
///     properties:
///       location: us-west1
///       name: target
///       deployParameters:
///         deployParameterKey: deployParameterValue
///       description: basic description
///       gke:
///         cluster: projects/my-project-name/locations/us-west1/clusters/example-cluster-name
///       project: my-project-name
///       requireApproval: false
///       annotations:
///         my_first_annotation: example-annotation-1
///         my_second_annotation: example-annotation-2
///       labels:
///         my_first_label: example-label-1
///         my_second_label: example-label-2
/// ```
///
///
/// ## Import
///
/// Target can be imported using any of these accepted formats:
/// * `projects/{{project}}/locations/{{location}}/targets/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Target can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/target:Target default projects/{{project}}/locations/{{location}}/targets/{{name}}
/// $ pulumi import gcp:clouddeploy/target:Target default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:clouddeploy/target:Target default {{location}}/{{name}}
/// ```
class Target extends pulumi.CustomResource {
  /// Optional. User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// Information specifying an Anthos Cluster.
  late final pulumi.Output<TargetAnthosCluster?> anthosCluster;
  /// Optional. Map of entity IDs to their associated entities. Associated entities allows specifying places other than the deployment target for specific features. For example, the Gateway API canary can be configured to deploy the HTTPRoute to a different cluster(s) than the deployment cluster using associated entities. An entity ID must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^a-z?$`.
  late final pulumi.Output<List<TargetAssociatedEntity>?> associatedEntities;
  /// Output only. Time at which the `Target` was created.
  late final pulumi.Output<String> createTime;
  /// Optional. Information specifying a Custom Target.
  late final pulumi.Output<TargetCustomTarget?> customTarget;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Optional. The deploy parameters to use for this target.
  late final pulumi.Output<Map<String, String>?> deployParameters;
  /// Optional. Description of the `Target`. Max length is 255 characters.
  late final pulumi.Output<String?> description;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  /// Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`.
  late final pulumi.Output<List<TargetExecutionConfig>> executionConfigs;
  /// Information specifying a GKE Cluster.
  late final pulumi.Output<TargetGke?> gke;
  /// Optional. Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// Information specifying a multiTarget.
  late final pulumi.Output<TargetMultiTarget?> multiTarget;
  /// Name of the `Target`. Format is `a-z?`.
  ///
  ///
  ///
  /// - - -
  late final pulumi.Output<String> name;
  /// The project for the resource
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Optional. Whether or not the `Target` requires approval.
  late final pulumi.Output<bool?> requireApproval;
  /// Information specifying a Cloud Run deployment target.
  late final pulumi.Output<TargetRun?> run;
  /// Output only. Resource id of the `Target`.
  late final pulumi.Output<String> targetId;
  /// Output only. Unique identifier of the `Target`.
  late final pulumi.Output<String> uid;
  /// Output only. Most recent time at which the `Target` was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Target].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Target]. {@macro pulumi_clouddeploy_target_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Target(
    String name, {
    TargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/target:Target',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    anthosCluster = registerOutput<TargetAnthosCluster?>('anthosCluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetAnthosCluster.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    associatedEntities = registerOutput<List<TargetAssociatedEntity>?>('associatedEntities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TargetAssociatedEntity>(guardedValue, (value) => TargetAssociatedEntity.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    customTarget = registerOutput<TargetCustomTarget?>('customTarget', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetCustomTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deployParameters = registerOutput<Map<String, String>?>('deployParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    description = registerOutput<String?>('description');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    etag = registerOutput<String>('etag');
    executionConfigs = registerOutput<List<TargetExecutionConfig>>('executionConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TargetExecutionConfig>(guardedValue, (value) => TargetExecutionConfig.fromMap((value as Map).cast<String, dynamic>())); });
    gke = registerOutput<TargetGke?>('gke', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetGke.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    multiTarget = registerOutput<TargetMultiTarget?>('multiTarget', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetMultiTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    requireApproval = registerOutput<bool?>('requireApproval');
    run = registerOutput<TargetRun?>('run', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetRun.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetId = registerOutput<String>('targetId');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Target] resource's state with the given [name] and [id].
  static Target get(
    String name,
    pulumi.Input<String> id, {
    TargetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Target._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Target._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/target:Target',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    anthosCluster = registerOutput<TargetAnthosCluster?>('anthosCluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetAnthosCluster.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    associatedEntities = registerOutput<List<TargetAssociatedEntity>?>('associatedEntities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TargetAssociatedEntity>(guardedValue, (value) => TargetAssociatedEntity.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    customTarget = registerOutput<TargetCustomTarget?>('customTarget', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetCustomTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deployParameters = registerOutput<Map<String, String>?>('deployParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    description = registerOutput<String?>('description');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    etag = registerOutput<String>('etag');
    executionConfigs = registerOutput<List<TargetExecutionConfig>>('executionConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TargetExecutionConfig>(guardedValue, (value) => TargetExecutionConfig.fromMap((value as Map).cast<String, dynamic>())); });
    gke = registerOutput<TargetGke?>('gke', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetGke.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    multiTarget = registerOutput<TargetMultiTarget?>('multiTarget', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetMultiTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    requireApproval = registerOutput<bool?>('requireApproval');
    run = registerOutput<TargetRun?>('run', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetRun.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetId = registerOutput<String>('targetId');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Target] resource.
  Target.reference(String urn)
    : super(
        'gcp:clouddeploy/target:Target',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    anthosCluster = registerOutput<TargetAnthosCluster?>('anthosCluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetAnthosCluster.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    associatedEntities = registerOutput<List<TargetAssociatedEntity>?>('associatedEntities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TargetAssociatedEntity>(guardedValue, (value) => TargetAssociatedEntity.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    customTarget = registerOutput<TargetCustomTarget?>('customTarget', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetCustomTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deployParameters = registerOutput<Map<String, String>?>('deployParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    description = registerOutput<String?>('description');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    etag = registerOutput<String>('etag');
    executionConfigs = registerOutput<List<TargetExecutionConfig>>('executionConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TargetExecutionConfig>(guardedValue, (value) => TargetExecutionConfig.fromMap((value as Map).cast<String, dynamic>())); });
    gke = registerOutput<TargetGke?>('gke', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetGke.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    multiTarget = registerOutput<TargetMultiTarget?>('multiTarget', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetMultiTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    requireApproval = registerOutput<bool?>('requireApproval');
    run = registerOutput<TargetRun?>('run', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetRun.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetId = registerOutput<String>('targetId');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
