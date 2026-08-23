import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_template_args.dart';
import 'node_template_node_type_flexibility.dart';
import 'node_template_server_binding.dart';
import 'node_template_state.dart';

/// Represents a NodeTemplate resource. Node templates specify properties
/// for creating sole-tenant nodes, such as node type, vCPU and memory
/// requirements, node affinity labels, and region.
///
///
/// To get more information about NodeTemplate, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/nodeTemplates)
/// * How-to Guides
/// * [Sole-Tenant Nodes](https://cloud.google.com/compute/docs/nodes/)
///
/// ## Example Usage
///
/// ### Node Template Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const template = new gcp.compute.NodeTemplate("template", {
///     name: "soletenant-tmpl",
///     region: "us-central1",
///     nodeType: "n1-node-96-624",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// template = gcp.compute.NodeTemplate("template",
///     name="soletenant-tmpl",
///     region="us-central1",
///     node_type="n1-node-96-624")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var template = new Gcp.Compute.NodeTemplate("template", new()
///     {
///         Name = "soletenant-tmpl",
///         Region = "us-central1",
///         NodeType = "n1-node-96-624",
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
/// 		_, err := compute.NewNodeTemplate(ctx, "template", &compute.NodeTemplateArgs{
/// 			Name:     pulumi.String("soletenant-tmpl"),
/// 			Region:   pulumi.String("us-central1"),
/// 			NodeType: pulumi.String("n1-node-96-624"),
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
/// resource "gcp_compute_nodetemplate" "template" {
///   name      = "soletenant-tmpl"
///   region    = "us-central1"
///   node_type = "n1-node-96-624"
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
///         var template = new NodeTemplate("template", NodeTemplateArgs.builder()
///             .name("soletenant-tmpl")
///             .region("us-central1")
///             .nodeType("n1-node-96-624")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   template:
///     type: gcp:compute:NodeTemplate
///     properties:
///       name: soletenant-tmpl
///       region: us-central1
///       nodeType: n1-node-96-624
/// ```
///
/// ### Node Template Server Binding
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const central1a = gcp.compute.getNodeTypes({
///     zone: "us-central1-a",
/// });
/// const template = new gcp.compute.NodeTemplate("template", {
///     name: "soletenant-with-licenses",
///     region: "us-central1",
///     nodeType: "n1-node-96-624",
///     nodeAffinityLabels: {
///         foo: "baz",
///     },
///     serverBinding: {
///         type: "RESTART_NODE_ON_MINIMAL_SERVERS",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// central1a = gcp.compute.get_node_types(zone="us-central1-a")
/// template = gcp.compute.NodeTemplate("template",
///     name="soletenant-with-licenses",
///     region="us-central1",
///     node_type="n1-node-96-624",
///     node_affinity_labels={
///         "foo": "baz",
///     },
///     server_binding={
///         "type": "RESTART_NODE_ON_MINIMAL_SERVERS",
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
///     var central1a = Gcp.Compute.GetNodeTypes.Invoke(new()
///     {
///         Zone = "us-central1-a",
///     });
///
///     var template = new Gcp.Compute.NodeTemplate("template", new()
///     {
///         Name = "soletenant-with-licenses",
///         Region = "us-central1",
///         NodeType = "n1-node-96-624",
///         NodeAffinityLabels =
///         {
///             { "foo", "baz" },
///         },
///         ServerBinding = new Gcp.Compute.Inputs.NodeTemplateServerBindingArgs
///         {
///             Type = "RESTART_NODE_ON_MINIMAL_SERVERS",
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
/// 		_, err := compute.GetNodeTypes(ctx, &compute.GetNodeTypesArgs{
/// 			Zone: pulumi.StringRef("us-central1-a"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNodeTemplate(ctx, "template", &compute.NodeTemplateArgs{
/// 			Name:     pulumi.String("soletenant-with-licenses"),
/// 			Region:   pulumi.String("us-central1"),
/// 			NodeType: pulumi.String("n1-node-96-624"),
/// 			NodeAffinityLabels: pulumi.StringMap{
/// 				"foo": pulumi.String("baz"),
/// 			},
/// 			ServerBinding: &compute.NodeTemplateServerBindingArgs{
/// 				Type: pulumi.String("RESTART_NODE_ON_MINIMAL_SERVERS"),
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
/// data "gcp_compute_getnodetypes" "central1a" {
///   zone = "us-central1-a"
/// }
///
/// resource "gcp_compute_nodetemplate" "template" {
///   name      = "soletenant-with-licenses"
///   region    = "us-central1"
///   node_type = "n1-node-96-624"
///   node_affinity_labels = {
///     "foo" = "baz"
///   }
///   server_binding = {
///     type = "RESTART_NODE_ON_MINIMAL_SERVERS"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNodeTypesArgs;
/// import com.pulumi.gcp.compute.NodeTemplate;
/// import com.pulumi.gcp.compute.NodeTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.NodeTemplateServerBindingArgs;
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
///         final var central1a = ComputeFunctions.getNodeTypes(GetNodeTypesArgs.builder()
///             .zone("us-central1-a")
///             .build());
///
///         var template = new NodeTemplate("template", NodeTemplateArgs.builder()
///             .name("soletenant-with-licenses")
///             .region("us-central1")
///             .nodeType("n1-node-96-624")
///             .nodeAffinityLabels(Map.of("foo", "baz"))
///             .serverBinding(NodeTemplateServerBindingArgs.builder()
///                 .type("RESTART_NODE_ON_MINIMAL_SERVERS")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   template:
///     type: gcp:compute:NodeTemplate
///     properties:
///       name: soletenant-with-licenses
///       region: us-central1
///       nodeType: n1-node-96-624
///       nodeAffinityLabels:
///         foo: baz
///       serverBinding:
///         type: RESTART_NODE_ON_MINIMAL_SERVERS
/// variables:
///   central1a:
///     fn::invoke:
///       function: gcp:compute:getNodeTypes
///       arguments:
///         zone: us-central1-a
/// ```
///
/// ### Node Template Accelerators
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const central1a = gcp.compute.getNodeTypes({
///     zone: "us-central1-a",
/// });
/// const template = new gcp.compute.NodeTemplate("template", {
///     name: "soletenant-with-accelerators",
///     region: "us-central1",
///     nodeType: "n1-node-96-624",
///     accelerators: [{
///         acceleratorType: "nvidia-tesla-t4",
///         acceleratorCount: 4,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// central1a = gcp.compute.get_node_types(zone="us-central1-a")
/// template = gcp.compute.NodeTemplate("template",
///     name="soletenant-with-accelerators",
///     region="us-central1",
///     node_type="n1-node-96-624",
///     accelerators=[{
///         "accelerator_type": "nvidia-tesla-t4",
///         "accelerator_count": 4,
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
///     var central1a = Gcp.Compute.GetNodeTypes.Invoke(new()
///     {
///         Zone = "us-central1-a",
///     });
///
///     var template = new Gcp.Compute.NodeTemplate("template", new()
///     {
///         Name = "soletenant-with-accelerators",
///         Region = "us-central1",
///         NodeType = "n1-node-96-624",
///         Accelerators = new[]
///         {
///             new Gcp.Compute.Inputs.NodeTemplateAcceleratorArgs
///             {
///                 AcceleratorType = "nvidia-tesla-t4",
///                 AcceleratorCount = 4,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetNodeTypes(ctx, &compute.GetNodeTypesArgs{
/// 			Zone: pulumi.StringRef("us-central1-a"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNodeTemplate(ctx, "template", &compute.NodeTemplateArgs{
/// 			Name:     pulumi.String("soletenant-with-accelerators"),
/// 			Region:   pulumi.String("us-central1"),
/// 			NodeType: pulumi.String("n1-node-96-624"),
/// 			Accelerators: compute.NodeTemplateAcceleratorArray{
/// 				&compute.NodeTemplateAcceleratorArgs{
/// 					AcceleratorType:  pulumi.String("nvidia-tesla-t4"),
/// 					AcceleratorCount: pulumi.Int(4),
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
/// data "gcp_compute_getnodetypes" "central1a" {
///   zone = "us-central1-a"
/// }
///
/// resource "gcp_compute_nodetemplate" "template" {
///   name      = "soletenant-with-accelerators"
///   region    = "us-central1"
///   node_type = "n1-node-96-624"
///   accelerators {
///     accelerator_type  = "nvidia-tesla-t4"
///     accelerator_count = 4
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNodeTypesArgs;
/// import com.pulumi.gcp.compute.NodeTemplate;
/// import com.pulumi.gcp.compute.NodeTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.NodeTemplateAcceleratorArgs;
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
///         final var central1a = ComputeFunctions.getNodeTypes(GetNodeTypesArgs.builder()
///             .zone("us-central1-a")
///             .build());
///
///         var template = new NodeTemplate("template", NodeTemplateArgs.builder()
///             .name("soletenant-with-accelerators")
///             .region("us-central1")
///             .nodeType("n1-node-96-624")
///             .accelerators(NodeTemplateAcceleratorArgs.builder()
///                 .acceleratorType("nvidia-tesla-t4")
///                 .acceleratorCount(4)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   template:
///     type: gcp:compute:NodeTemplate
///     properties:
///       name: soletenant-with-accelerators
///       region: us-central1
///       nodeType: n1-node-96-624
///       accelerators:
///         - acceleratorType: nvidia-tesla-t4
///           acceleratorCount: 4
/// variables:
///   central1a:
///     fn::invoke:
///       function: gcp:compute:getNodeTypes
///       arguments:
///         zone: us-central1-a
/// ```
///
/// ### Node Template Disks
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const central1a = gcp.compute.getNodeTypes({
///     zone: "us-central1-a",
/// });
/// const template = new gcp.compute.NodeTemplate("template", {
///     name: "soletenant-with-disks",
///     region: "us-central1",
///     nodeType: "n2-node-80-640",
///     disks: [{
///         diskCount: 16,
///         diskSizeGb: 375,
///         diskType: "local-ssd",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// central1a = gcp.compute.get_node_types(zone="us-central1-a")
/// template = gcp.compute.NodeTemplate("template",
///     name="soletenant-with-disks",
///     region="us-central1",
///     node_type="n2-node-80-640",
///     disks=[{
///         "disk_count": 16,
///         "disk_size_gb": 375,
///         "disk_type": "local-ssd",
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
///     var central1a = Gcp.Compute.GetNodeTypes.Invoke(new()
///     {
///         Zone = "us-central1-a",
///     });
///
///     var template = new Gcp.Compute.NodeTemplate("template", new()
///     {
///         Name = "soletenant-with-disks",
///         Region = "us-central1",
///         NodeType = "n2-node-80-640",
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.NodeTemplateDiskArgs
///             {
///                 DiskCount = 16,
///                 DiskSizeGb = 375,
///                 DiskType = "local-ssd",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetNodeTypes(ctx, &compute.GetNodeTypesArgs{
/// 			Zone: pulumi.StringRef("us-central1-a"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNodeTemplate(ctx, "template", &compute.NodeTemplateArgs{
/// 			Name:     pulumi.String("soletenant-with-disks"),
/// 			Region:   pulumi.String("us-central1"),
/// 			NodeType: pulumi.String("n2-node-80-640"),
/// 			Disks: compute.NodeTemplateDiskArray{
/// 				&compute.NodeTemplateDiskArgs{
/// 					DiskCount:  pulumi.Int(16),
/// 					DiskSizeGb: pulumi.Int(375),
/// 					DiskType:   pulumi.String("local-ssd"),
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
/// data "gcp_compute_getnodetypes" "central1a" {
///   zone = "us-central1-a"
/// }
///
/// resource "gcp_compute_nodetemplate" "template" {
///   name      = "soletenant-with-disks"
///   region    = "us-central1"
///   node_type = "n2-node-80-640"
///   disks {
///     disk_count   = 16
///     disk_size_gb = 375
///     disk_type    = "local-ssd"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNodeTypesArgs;
/// import com.pulumi.gcp.compute.NodeTemplate;
/// import com.pulumi.gcp.compute.NodeTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.NodeTemplateDiskArgs;
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
///         final var central1a = ComputeFunctions.getNodeTypes(GetNodeTypesArgs.builder()
///             .zone("us-central1-a")
///             .build());
///
///         var template = new NodeTemplate("template", NodeTemplateArgs.builder()
///             .name("soletenant-with-disks")
///             .region("us-central1")
///             .nodeType("n2-node-80-640")
///             .disks(NodeTemplateDiskArgs.builder()
///                 .diskCount(16)
///                 .diskSizeGb(375)
///                 .diskType("local-ssd")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   template:
///     type: gcp:compute:NodeTemplate
///     properties:
///       name: soletenant-with-disks
///       region: us-central1
///       nodeType: n2-node-80-640
///       disks:
///         - diskCount: 16
///           diskSizeGb: 375
///           diskType: local-ssd
/// variables:
///   central1a:
///     fn::invoke:
///       function: gcp:compute:getNodeTypes
///       arguments:
///         zone: us-central1-a
/// ```
///
///
/// ## Import
///
/// NodeTemplate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/nodeTemplates/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, NodeTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/nodeTemplate:NodeTemplate default projects/{{project}}/regions/{{region}}/nodeTemplates/{{name}}
/// $ pulumi import gcp:compute/nodeTemplate:NodeTemplate default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:compute/nodeTemplate:NodeTemplate default {{region}}/{{name}}
/// $ pulumi import gcp:compute/nodeTemplate:NodeTemplate default {{name}}
/// ```
class NodeTemplate extends pulumi.CustomResource {
  /// List of the type and count of accelerator cards attached to the
  /// node template
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> accelerators;
  /// CPU overcommit.
  /// Default value is `NONE`.
  /// Possible values are: `ENABLED`, `NONE`.
  late final pulumi.Output<String?> cpuOvercommitType;
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
  /// List of the type, size and count of disks attached to the
  /// node template
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> disks;
  /// Name of the resource.
  late final pulumi.Output<String> name;
  /// Labels to use for node affinity, which will be used in
  /// instance scheduling.
  late final pulumi.Output<Map<String, String>?> nodeAffinityLabels;
  /// Node type to use for nodes group that are created from this template.
  /// Only one of nodeTypeFlexibility and nodeType can be specified.
  late final pulumi.Output<String?> nodeType;
  /// Flexible properties for the desired node type. Node groups that
  /// use this node template will create nodes of a type that matches
  /// these properties. Only one of nodeTypeFlexibility and nodeType can
  /// be specified.
  /// Structure is documented below.
  late final pulumi.Output<NodeTemplateNodeTypeFlexibility?> nodeTypeFlexibility;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Region where nodes using the node template will be created.
  /// If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// The server binding policy for nodes using this template. Determines
  /// where the nodes should restart following a maintenance event.
  /// Structure is documented below.
  late final pulumi.Output<NodeTemplateServerBinding> serverBinding;

  /// Creates a new [NodeTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeTemplate]. {@macro pulumi_compute_node_template_node_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeTemplate(
    String name, {
    NodeTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/nodeTemplate:NodeTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accelerators = registerOutput<List<Map<String, dynamic>>?>('accelerators');
    cpuOvercommitType = registerOutput<String?>('cpuOvercommitType');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    disks = registerOutput<List<Map<String, dynamic>>?>('disks');
    this.name = registerOutput<String>('name');
    nodeAffinityLabels = registerOutput<Map<String, String>?>('nodeAffinityLabels');
    nodeType = registerOutput<String?>('nodeType');
    nodeTypeFlexibility = registerOutput<NodeTemplateNodeTypeFlexibility?>('nodeTypeFlexibility', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeTemplateNodeTypeFlexibility.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
    serverBinding = registerOutput<NodeTemplateServerBinding>('serverBinding', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeTemplateServerBinding.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [NodeTemplate] resource's state with the given [name] and [id].
  static NodeTemplate get(
    String name,
    pulumi.Input<String> id, {
    NodeTemplateState? state,
  }) {
    return NodeTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NodeTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/nodeTemplate:NodeTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accelerators = registerOutput<List<Map<String, dynamic>>?>('accelerators');
    cpuOvercommitType = registerOutput<String?>('cpuOvercommitType');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    disks = registerOutput<List<Map<String, dynamic>>?>('disks');
    this.name = registerOutput<String>('name');
    nodeAffinityLabels = registerOutput<Map<String, String>?>('nodeAffinityLabels');
    nodeType = registerOutput<String?>('nodeType');
    nodeTypeFlexibility = registerOutput<NodeTemplateNodeTypeFlexibility?>('nodeTypeFlexibility', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeTemplateNodeTypeFlexibility.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
    serverBinding = registerOutput<NodeTemplateServerBinding>('serverBinding', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeTemplateServerBinding.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
