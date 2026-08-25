import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_args.dart';
import 'node_group_autoscaling_policy.dart';
import 'node_group_maintenance_window.dart';
import 'node_group_share_settings.dart';
import 'node_group_state.dart';

/// Represents a NodeGroup resource to manage a group of sole-tenant nodes.
///
///
/// To get more information about NodeGroup, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups)
/// * How-to Guides
/// * [Sole-Tenant Nodes](https://cloud.google.com/compute/docs/nodes/)
///
/// &gt; **Warning:** Due to limitations of the API, this provider cannot update the
/// number of nodes in a node group and changes to node group size either
/// through provider config or through external changes will cause
/// the provider to delete and recreate the node group.
///
/// ## Example Usage
///
/// ### Node Group Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const soletenant_tmpl = new gcp.compute.NodeTemplate("soletenant-tmpl", {
///     name: "soletenant-tmpl",
///     region: "us-central1",
///     nodeType: "c2-node-60-240",
/// });
/// const nodes = new gcp.compute.NodeGroup("nodes", {
///     name: "soletenant-group",
///     zone: "us-central1-c",
///     description: "example google_compute_node_group for Terraform Google Provider",
///     initialSize: 1,
///     nodeTemplate: soletenant_tmpl.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// soletenant_tmpl = gcp.compute.NodeTemplate("soletenant-tmpl",
///     name="soletenant-tmpl",
///     region="us-central1",
///     node_type="c2-node-60-240")
/// nodes = gcp.compute.NodeGroup("nodes",
///     name="soletenant-group",
///     zone="us-central1-c",
///     description="example google_compute_node_group for Terraform Google Provider",
///     initial_size=1,
///     node_template=soletenant_tmpl.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var soletenant_tmpl = new Gcp.Compute.NodeTemplate("soletenant-tmpl", new()
///     {
///         Name = "soletenant-tmpl",
///         Region = "us-central1",
///         NodeType = "c2-node-60-240",
///     });
///
///     var nodes = new Gcp.Compute.NodeGroup("nodes", new()
///     {
///         Name = "soletenant-group",
///         Zone = "us-central1-c",
///         Description = "example google_compute_node_group for Terraform Google Provider",
///         InitialSize = 1,
///         NodeTemplate = soletenant_tmpl.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		soletenant_tmpl, err := compute.NewNodeTemplate(ctx, "soletenant-tmpl", &compute.NodeTemplateArgs{
/// 			Name:     pulumi.String("soletenant-tmpl"),
/// 			Region:   pulumi.String("us-central1"),
/// 			NodeType: pulumi.String("c2-node-60-240"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNodeGroup(ctx, "nodes", &compute.NodeGroupArgs{
/// 			Name:         pulumi.String("soletenant-group"),
/// 			Zone:         pulumi.String("us-central1-c"),
/// 			Description:  pulumi.String("example google_compute_node_group for Terraform Google Provider"),
/// 			InitialSize:  pulumi.Int(1),
/// 			NodeTemplate: soletenant_tmpl.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_nodetemplate" "soletenant-tmpl" {
///   name      = "soletenant-tmpl"
///   region    = "us-central1"
///   node_type = "c2-node-60-240"
/// }
/// resource "gcp_compute_nodegroup" "nodes" {
///   name          = "soletenant-group"
///   zone          = "us-central1-c"
///   description   = "example google_compute_node_group for Terraform Google Provider"
///   initial_size  = 1
///   node_template = gcp_compute_nodetemplate.soletenant-tmpl.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.NodeTemplate;
/// import com.pulumi.gcp.compute.NodeTemplateArgs;
/// import com.pulumi.gcp.compute.NodeGroup;
/// import com.pulumi.gcp.compute.NodeGroupArgs;
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
///         var soletenant_tmpl = new NodeTemplate("soletenant-tmpl", NodeTemplateArgs.builder()
///             .name("soletenant-tmpl")
///             .region("us-central1")
///             .nodeType("c2-node-60-240")
///             .build());
///
///         var nodes = new NodeGroup("nodes", NodeGroupArgs.builder()
///             .name("soletenant-group")
///             .zone("us-central1-c")
///             .description("example google_compute_node_group for Terraform Google Provider")
///             .initialSize(1)
///             .nodeTemplate(soletenant_tmpl.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   soletenant-tmpl:
///     type: gcp:compute:NodeTemplate
///     properties:
///       name: soletenant-tmpl
///       region: us-central1
///       nodeType: c2-node-60-240
///   nodes:
///     type: gcp:compute:NodeGroup
///     properties:
///       name: soletenant-group
///       zone: us-central1-c
///       description: example google_compute_node_group for Terraform Google Provider
///       initialSize: 1
///       nodeTemplate: ${["soletenant-tmpl"].id}
/// ```
///
/// &gt; **Warning:** Due to limitations of the API, this provider cannot update the
/// number of nodes in a node group and changes to node group size either
/// through provider config or through external changes will cause
/// the provider to delete and recreate the node group.
///
/// ### Node Group Maintenance Interval
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const soletenant_tmpl = new gcp.compute.NodeTemplate("soletenant-tmpl", {
///     name: "soletenant-tmpl",
///     region: "us-central1",
///     nodeType: "c2-node-60-240",
/// });
/// const nodes = new gcp.compute.NodeGroup("nodes", {
///     name: "soletenant-group",
///     zone: "us-central1-c",
///     description: "example google_compute_node_group for Terraform Google Provider",
///     initialSize: 1,
///     nodeTemplate: soletenant_tmpl.id,
///     maintenanceInterval: "RECURRENT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// soletenant_tmpl = gcp.compute.NodeTemplate("soletenant-tmpl",
///     name="soletenant-tmpl",
///     region="us-central1",
///     node_type="c2-node-60-240")
/// nodes = gcp.compute.NodeGroup("nodes",
///     name="soletenant-group",
///     zone="us-central1-c",
///     description="example google_compute_node_group for Terraform Google Provider",
///     initial_size=1,
///     node_template=soletenant_tmpl.id,
///     maintenance_interval="RECURRENT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var soletenant_tmpl = new Gcp.Compute.NodeTemplate("soletenant-tmpl", new()
///     {
///         Name = "soletenant-tmpl",
///         Region = "us-central1",
///         NodeType = "c2-node-60-240",
///     });
///
///     var nodes = new Gcp.Compute.NodeGroup("nodes", new()
///     {
///         Name = "soletenant-group",
///         Zone = "us-central1-c",
///         Description = "example google_compute_node_group for Terraform Google Provider",
///         InitialSize = 1,
///         NodeTemplate = soletenant_tmpl.Id,
///         MaintenanceInterval = "RECURRENT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		soletenant_tmpl, err := compute.NewNodeTemplate(ctx, "soletenant-tmpl", &compute.NodeTemplateArgs{
/// 			Name:     pulumi.String("soletenant-tmpl"),
/// 			Region:   pulumi.String("us-central1"),
/// 			NodeType: pulumi.String("c2-node-60-240"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNodeGroup(ctx, "nodes", &compute.NodeGroupArgs{
/// 			Name:                pulumi.String("soletenant-group"),
/// 			Zone:                pulumi.String("us-central1-c"),
/// 			Description:         pulumi.String("example google_compute_node_group for Terraform Google Provider"),
/// 			InitialSize:         pulumi.Int(1),
/// 			NodeTemplate:        soletenant_tmpl.ID().ToIDOutput().ToStringOutput(),
/// 			MaintenanceInterval: pulumi.String("RECURRENT"),
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
/// resource "gcp_compute_nodetemplate" "soletenant-tmpl" {
///   name      = "soletenant-tmpl"
///   region    = "us-central1"
///   node_type = "c2-node-60-240"
/// }
/// resource "gcp_compute_nodegroup" "nodes" {
///   name                 = "soletenant-group"
///   zone                 = "us-central1-c"
///   description          = "example google_compute_node_group for Terraform Google Provider"
///   initial_size         = 1
///   node_template        = gcp_compute_nodetemplate.soletenant-tmpl.id
///   maintenance_interval = "RECURRENT"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.NodeTemplate;
/// import com.pulumi.gcp.compute.NodeTemplateArgs;
/// import com.pulumi.gcp.compute.NodeGroup;
/// import com.pulumi.gcp.compute.NodeGroupArgs;
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
///         var soletenant_tmpl = new NodeTemplate("soletenant-tmpl", NodeTemplateArgs.builder()
///             .name("soletenant-tmpl")
///             .region("us-central1")
///             .nodeType("c2-node-60-240")
///             .build());
///
///         var nodes = new NodeGroup("nodes", NodeGroupArgs.builder()
///             .name("soletenant-group")
///             .zone("us-central1-c")
///             .description("example google_compute_node_group for Terraform Google Provider")
///             .initialSize(1)
///             .nodeTemplate(soletenant_tmpl.id())
///             .maintenanceInterval("RECURRENT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   soletenant-tmpl:
///     type: gcp:compute:NodeTemplate
///     properties:
///       name: soletenant-tmpl
///       region: us-central1
///       nodeType: c2-node-60-240
///   nodes:
///     type: gcp:compute:NodeGroup
///     properties:
///       name: soletenant-group
///       zone: us-central1-c
///       description: example google_compute_node_group for Terraform Google Provider
///       initialSize: 1
///       nodeTemplate: ${["soletenant-tmpl"].id}
///       maintenanceInterval: RECURRENT
/// ```
///
/// &gt; **Warning:** Due to limitations of the API, this provider cannot update the
/// number of nodes in a node group and changes to node group size either
/// through provider config or through external changes will cause
/// the provider to delete and recreate the node group.
///
/// ### Node Group Autoscaling Policy
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const soletenant_tmpl = new gcp.compute.NodeTemplate("soletenant-tmpl", {
///     name: "soletenant-tmpl",
///     region: "us-central1",
///     nodeType: "c2-node-60-240",
/// });
/// const nodes = new gcp.compute.NodeGroup("nodes", {
///     name: "soletenant-group",
///     zone: "us-central1-a",
///     description: "example google_compute_node_group for Google Provider",
///     maintenancePolicy: "RESTART_IN_PLACE",
///     maintenanceWindow: {
///         startTime: "08:00",
///     },
///     initialSize: 1,
///     nodeTemplate: soletenant_tmpl.id,
///     autoscalingPolicy: {
///         mode: "ONLY_SCALE_OUT",
///         minNodes: 1,
///         maxNodes: 10,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// soletenant_tmpl = gcp.compute.NodeTemplate("soletenant-tmpl",
///     name="soletenant-tmpl",
///     region="us-central1",
///     node_type="c2-node-60-240")
/// nodes = gcp.compute.NodeGroup("nodes",
///     name="soletenant-group",
///     zone="us-central1-a",
///     description="example google_compute_node_group for Google Provider",
///     maintenance_policy="RESTART_IN_PLACE",
///     maintenance_window={
///         "start_time": "08:00",
///     },
///     initial_size=1,
///     node_template=soletenant_tmpl.id,
///     autoscaling_policy={
///         "mode": "ONLY_SCALE_OUT",
///         "min_nodes": 1,
///         "max_nodes": 10,
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
///     var soletenant_tmpl = new Gcp.Compute.NodeTemplate("soletenant-tmpl", new()
///     {
///         Name = "soletenant-tmpl",
///         Region = "us-central1",
///         NodeType = "c2-node-60-240",
///     });
///
///     var nodes = new Gcp.Compute.NodeGroup("nodes", new()
///     {
///         Name = "soletenant-group",
///         Zone = "us-central1-a",
///         Description = "example google_compute_node_group for Google Provider",
///         MaintenancePolicy = "RESTART_IN_PLACE",
///         MaintenanceWindow = new Gcp.Compute.Inputs.NodeGroupMaintenanceWindowArgs
///         {
///             StartTime = "08:00",
///         },
///         InitialSize = 1,
///         NodeTemplate = soletenant_tmpl.Id,
///         AutoscalingPolicy = new Gcp.Compute.Inputs.NodeGroupAutoscalingPolicyArgs
///         {
///             Mode = "ONLY_SCALE_OUT",
///             MinNodes = 1,
///             MaxNodes = 10,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		soletenant_tmpl, err := compute.NewNodeTemplate(ctx, "soletenant-tmpl", &compute.NodeTemplateArgs{
/// 			Name:     pulumi.String("soletenant-tmpl"),
/// 			Region:   pulumi.String("us-central1"),
/// 			NodeType: pulumi.String("c2-node-60-240"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNodeGroup(ctx, "nodes", &compute.NodeGroupArgs{
/// 			Name:              pulumi.String("soletenant-group"),
/// 			Zone:              pulumi.String("us-central1-a"),
/// 			Description:       pulumi.String("example google_compute_node_group for Google Provider"),
/// 			MaintenancePolicy: pulumi.String("RESTART_IN_PLACE"),
/// 			MaintenanceWindow: &compute.NodeGroupMaintenanceWindowArgs{
/// 				StartTime: pulumi.String("08:00"),
/// 			},
/// 			InitialSize:  pulumi.Int(1),
/// 			NodeTemplate: soletenant_tmpl.ID().ToIDOutput().ToStringOutput(),
/// 			AutoscalingPolicy: &compute.NodeGroupAutoscalingPolicyArgs{
/// 				Mode:     pulumi.String("ONLY_SCALE_OUT"),
/// 				MinNodes: pulumi.Int(1),
/// 				MaxNodes: pulumi.Int(10),
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
/// resource "gcp_compute_nodetemplate" "soletenant-tmpl" {
///   name      = "soletenant-tmpl"
///   region    = "us-central1"
///   node_type = "c2-node-60-240"
/// }
/// resource "gcp_compute_nodegroup" "nodes" {
///   name               = "soletenant-group"
///   zone               = "us-central1-a"
///   description        = "example google_compute_node_group for Google Provider"
///   maintenance_policy = "RESTART_IN_PLACE"
///   maintenance_window = {
///     start_time = "08:00"
///   }
///   initial_size  = 1
///   node_template = gcp_compute_nodetemplate.soletenant-tmpl.id
///   autoscaling_policy = {
///     mode      = "ONLY_SCALE_OUT"
///     min_nodes = 1
///     max_nodes = 10
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.NodeTemplate;
/// import com.pulumi.gcp.compute.NodeTemplateArgs;
/// import com.pulumi.gcp.compute.NodeGroup;
/// import com.pulumi.gcp.compute.NodeGroupArgs;
/// import com.pulumi.gcp.compute.inputs.NodeGroupMaintenanceWindowArgs;
/// import com.pulumi.gcp.compute.inputs.NodeGroupAutoscalingPolicyArgs;
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
///         var soletenant_tmpl = new NodeTemplate("soletenant-tmpl", NodeTemplateArgs.builder()
///             .name("soletenant-tmpl")
///             .region("us-central1")
///             .nodeType("c2-node-60-240")
///             .build());
///
///         var nodes = new NodeGroup("nodes", NodeGroupArgs.builder()
///             .name("soletenant-group")
///             .zone("us-central1-a")
///             .description("example google_compute_node_group for Google Provider")
///             .maintenancePolicy("RESTART_IN_PLACE")
///             .maintenanceWindow(NodeGroupMaintenanceWindowArgs.builder()
///                 .startTime("08:00")
///                 .build())
///             .initialSize(1)
///             .nodeTemplate(soletenant_tmpl.id())
///             .autoscalingPolicy(NodeGroupAutoscalingPolicyArgs.builder()
///                 .mode("ONLY_SCALE_OUT")
///                 .minNodes(1)
///                 .maxNodes(10)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   soletenant-tmpl:
///     type: gcp:compute:NodeTemplate
///     properties:
///       name: soletenant-tmpl
///       region: us-central1
///       nodeType: c2-node-60-240
///   nodes:
///     type: gcp:compute:NodeGroup
///     properties:
///       name: soletenant-group
///       zone: us-central1-a
///       description: example google_compute_node_group for Google Provider
///       maintenancePolicy: RESTART_IN_PLACE
///       maintenanceWindow:
///         startTime: 08:00
///       initialSize: 1
///       nodeTemplate: ${["soletenant-tmpl"].id}
///       autoscalingPolicy:
///         mode: ONLY_SCALE_OUT
///         minNodes: 1
///         maxNodes: 10
/// ```
///
/// ### Node Group Share Settings
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const guestProject = new gcp.organizations.Project("guest_project", {
///     projectId: "project-id",
///     name: "project-name",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const soletenant_tmpl = new gcp.compute.NodeTemplate("soletenant-tmpl", {
///     name: "soletenant-tmpl",
///     region: "us-central1",
///     nodeType: "c2-node-60-240",
/// });
/// const nodes = new gcp.compute.NodeGroup("nodes", {
///     name: "soletenant-group",
///     zone: "us-central1-a",
///     description: "example google_compute_node_group for Google Provider",
///     initialSize: 1,
///     nodeTemplate: soletenant_tmpl.id,
///     shareSettings: {
///         shareType: "SPECIFIC_PROJECTS",
///         projectMaps: [{
///             id: guestProject.projectId,
///             projectId: guestProject.projectId,
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// guest_project = gcp.organizations.Project("guest_project",
///     project_id="project-id",
///     name="project-name",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// soletenant_tmpl = gcp.compute.NodeTemplate("soletenant-tmpl",
///     name="soletenant-tmpl",
///     region="us-central1",
///     node_type="c2-node-60-240")
/// nodes = gcp.compute.NodeGroup("nodes",
///     name="soletenant-group",
///     zone="us-central1-a",
///     description="example google_compute_node_group for Google Provider",
///     initial_size=1,
///     node_template=soletenant_tmpl.id,
///     share_settings={
///         "share_type": "SPECIFIC_PROJECTS",
///         "project_maps": [{
///             "id": guest_project.project_id,
///             "project_id": guest_project.project_id,
///         }],
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
///     var guestProject = new Gcp.Organizations.Project("guest_project", new()
///     {
///         ProjectId = "project-id",
///         Name = "project-name",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var soletenant_tmpl = new Gcp.Compute.NodeTemplate("soletenant-tmpl", new()
///     {
///         Name = "soletenant-tmpl",
///         Region = "us-central1",
///         NodeType = "c2-node-60-240",
///     });
///
///     var nodes = new Gcp.Compute.NodeGroup("nodes", new()
///     {
///         Name = "soletenant-group",
///         Zone = "us-central1-a",
///         Description = "example google_compute_node_group for Google Provider",
///         InitialSize = 1,
///         NodeTemplate = soletenant_tmpl.Id,
///         ShareSettings = new Gcp.Compute.Inputs.NodeGroupShareSettingsArgs
///         {
///             ShareType = "SPECIFIC_PROJECTS",
///             ProjectMaps = new[]
///             {
///                 new Gcp.Compute.Inputs.NodeGroupShareSettingsProjectMapArgs
///                 {
///                     Id = guestProject.ProjectId,
///                     ProjectId = guestProject.ProjectId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		guestProject, err := organizations.NewProject(ctx, "guest_project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("project-id"),
/// 			Name:           pulumi.String("project-name"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		soletenant_tmpl, err := compute.NewNodeTemplate(ctx, "soletenant-tmpl", &compute.NodeTemplateArgs{
/// 			Name:     pulumi.String("soletenant-tmpl"),
/// 			Region:   pulumi.String("us-central1"),
/// 			NodeType: pulumi.String("c2-node-60-240"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNodeGroup(ctx, "nodes", &compute.NodeGroupArgs{
/// 			Name:         pulumi.String("soletenant-group"),
/// 			Zone:         pulumi.String("us-central1-a"),
/// 			Description:  pulumi.String("example google_compute_node_group for Google Provider"),
/// 			InitialSize:  pulumi.Int(1),
/// 			NodeTemplate: soletenant_tmpl.ID().ToIDOutput().ToStringOutput(),
/// 			ShareSettings: &compute.NodeGroupShareSettingsArgs{
/// 				ShareType: pulumi.String("SPECIFIC_PROJECTS"),
/// 				ProjectMaps: compute.NodeGroupShareSettingsProjectMapArray{
/// 					&compute.NodeGroupShareSettingsProjectMapArgs{
/// 						Id:        guestProject.ProjectId,
/// 						ProjectId: guestProject.ProjectId,
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_organizations_project" "guest_project" {
///   project_id      = "project-id"
///   name            = "project-name"
///   org_id          = "123456789"
///   deletion_policy = "DELETE"
/// }
/// resource "gcp_compute_nodetemplate" "soletenant-tmpl" {
///   name      = "soletenant-tmpl"
///   region    = "us-central1"
///   node_type = "c2-node-60-240"
/// }
/// resource "gcp_compute_nodegroup" "nodes" {
///   name          = "soletenant-group"
///   zone          = "us-central1-a"
///   description   = "example google_compute_node_group for Google Provider"
///   initial_size  = 1
///   node_template = gcp_compute_nodetemplate.soletenant-tmpl.id
///   share_settings = {
///     share_type = "SPECIFIC_PROJECTS"
///     project_maps = [{
///       "id"        = gcp_organizations_project.guest_project.project_id
///       "projectId" = gcp_organizations_project.guest_project.project_id
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.compute.NodeTemplate;
/// import com.pulumi.gcp.compute.NodeTemplateArgs;
/// import com.pulumi.gcp.compute.NodeGroup;
/// import com.pulumi.gcp.compute.NodeGroupArgs;
/// import com.pulumi.gcp.compute.inputs.NodeGroupShareSettingsArgs;
/// import com.pulumi.gcp.compute.inputs.NodeGroupShareSettingsProjectMapArgs;
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
///         var guestProject = new Project("guestProject", ProjectArgs.builder()
///             .projectId("project-id")
///             .name("project-name")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var soletenant_tmpl = new NodeTemplate("soletenant-tmpl", NodeTemplateArgs.builder()
///             .name("soletenant-tmpl")
///             .region("us-central1")
///             .nodeType("c2-node-60-240")
///             .build());
///
///         var nodes = new NodeGroup("nodes", NodeGroupArgs.builder()
///             .name("soletenant-group")
///             .zone("us-central1-a")
///             .description("example google_compute_node_group for Google Provider")
///             .initialSize(1)
///             .nodeTemplate(soletenant_tmpl.id())
///             .shareSettings(NodeGroupShareSettingsArgs.builder()
///                 .shareType("SPECIFIC_PROJECTS")
///                 .projectMaps(NodeGroupShareSettingsProjectMapArgs.builder()
///                     .id(guestProject.projectId())
///                     .projectId(guestProject.projectId())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   guestProject:
///     type: gcp:organizations:Project
///     name: guest_project
///     properties:
///       projectId: project-id
///       name: project-name
///       orgId: '123456789'
///       deletionPolicy: DELETE
///   soletenant-tmpl:
///     type: gcp:compute:NodeTemplate
///     properties:
///       name: soletenant-tmpl
///       region: us-central1
///       nodeType: c2-node-60-240
///   nodes:
///     type: gcp:compute:NodeGroup
///     properties:
///       name: soletenant-group
///       zone: us-central1-a
///       description: example google_compute_node_group for Google Provider
///       initialSize: 1
///       nodeTemplate: ${["soletenant-tmpl"].id}
///       shareSettings:
///         shareType: SPECIFIC_PROJECTS
///         projectMaps:
///           - id: ${guestProject.projectId}
///             projectId: ${guestProject.projectId}
/// ```
///
///
/// ## Import
///
/// NodeGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/nodeGroups/{{name}}`
/// * `{{project}}/{{zone}}/{{name}}`
/// * `{{zone}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, NodeGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/nodeGroup:NodeGroup default projects/{{project}}/zones/{{zone}}/nodeGroups/{{name}}
/// $ pulumi import gcp:compute/nodeGroup:NodeGroup default {{project}}/{{zone}}/{{name}}
/// $ pulumi import gcp:compute/nodeGroup:NodeGroup default {{zone}}/{{name}}
/// $ pulumi import gcp:compute/nodeGroup:NodeGroup default {{name}}
/// ```
class NodeGroup extends pulumi.CustomResource {
  /// If you use sole-tenant nodes for your workloads, you can use the node
  /// group autoscaler to automatically manage the sizes of your node groups.
  /// One of `initialSize` or `autoscalingPolicy` must be configured on resource creation.
  /// Structure is documented below.
  late final pulumi.Output<NodeGroupAutoscalingPolicy> autoscalingPolicy;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional textual description of the resource.
  late final pulumi.Output<String?> description;
  /// The initial number of nodes in the node group. One of `initialSize` or `autoscalingPolicy` must be configured on resource creation.
  late final pulumi.Output<int?> initialSize;
  /// (Optional, Beta)
  /// Specifies the frequency of planned maintenance events. Set to one of the following:
  /// - AS_NEEDED: Hosts are eligible to receive infrastructure and hypervisor updates as they become available.
  /// - RECURRENT: Hosts receive planned infrastructure and hypervisor updates on a periodic basis, but not more frequently than every 28 days. This minimizes the number of planned maintenance operations on individual hosts and reduces the frequency of disruptions, both live migrations and terminations, on individual VMs.
  /// Possible values are: `AS_NEEDED`, `RECURRENT`.
  late final pulumi.Output<String> maintenanceInterval;
  /// Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT.
  late final pulumi.Output<String?> maintenancePolicy;
  /// contains properties for the timeframe of maintenance
  /// Structure is documented below.
  late final pulumi.Output<NodeGroupMaintenanceWindow?> maintenanceWindow;
  /// Name of the resource.
  late final pulumi.Output<String> name;
  /// The URL of the node template to which this node group belongs.
  late final pulumi.Output<String> nodeTemplate;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// Share settings for the node group.
  /// Structure is documented below.
  late final pulumi.Output<NodeGroupShareSettings> shareSettings;
  /// The total number of nodes in the node group.
  late final pulumi.Output<int> size;
  /// Zone where this node group is located
  late final pulumi.Output<String> zone;

  /// Creates a new [NodeGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeGroup]. {@macro pulumi_compute_node_group_node_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeGroup(
    String name, {
    NodeGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/nodeGroup:NodeGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    autoscalingPolicy = registerOutput<NodeGroupAutoscalingPolicy>('autoscalingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupAutoscalingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    initialSize = registerOutput<int?>('initialSize');
    maintenanceInterval = registerOutput<String>('maintenanceInterval');
    maintenancePolicy = registerOutput<String?>('maintenancePolicy');
    maintenanceWindow = registerOutput<NodeGroupMaintenanceWindow?>('maintenanceWindow', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    nodeTemplate = registerOutput<String>('nodeTemplate');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    shareSettings = registerOutput<NodeGroupShareSettings>('shareSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupShareSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    size = registerOutput<int>('size');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [NodeGroup] resource's state with the given [name] and [id].
  static NodeGroup get(
    String name,
    pulumi.Input<String> id, {
    NodeGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NodeGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NodeGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/nodeGroup:NodeGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoscalingPolicy = registerOutput<NodeGroupAutoscalingPolicy>('autoscalingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupAutoscalingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    initialSize = registerOutput<int?>('initialSize');
    maintenanceInterval = registerOutput<String>('maintenanceInterval');
    maintenancePolicy = registerOutput<String?>('maintenancePolicy');
    maintenanceWindow = registerOutput<NodeGroupMaintenanceWindow?>('maintenanceWindow', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    nodeTemplate = registerOutput<String>('nodeTemplate');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    shareSettings = registerOutput<NodeGroupShareSettings>('shareSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupShareSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    size = registerOutput<int>('size');
    zone = registerOutput<String>('zone');
  }

  /// Creates a typed reference to an existing [NodeGroup] resource.
  NodeGroup.reference(String urn)
    : super(
        'gcp:compute/nodeGroup:NodeGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    autoscalingPolicy = registerOutput<NodeGroupAutoscalingPolicy>('autoscalingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupAutoscalingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    initialSize = registerOutput<int?>('initialSize');
    maintenanceInterval = registerOutput<String>('maintenanceInterval');
    maintenancePolicy = registerOutput<String?>('maintenancePolicy');
    maintenanceWindow = registerOutput<NodeGroupMaintenanceWindow?>('maintenanceWindow', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    nodeTemplate = registerOutput<String>('nodeTemplate');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    shareSettings = registerOutput<NodeGroupShareSettings>('shareSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupShareSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    size = registerOutput<int>('size');
    zone = registerOutput<String>('zone');
  }
}
