import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_args.dart';
import 'hub_state.dart';

/// The NetworkConnectivity Hub resource
///
///
/// To get more information about Hub, see:
///
/// * [API documentation](https://cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest/v1beta/projects.locations.global.hubs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/overview)
///
/// ## Example Usage
///
/// ### Network Connectivity Hub Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.networkconnectivity.Hub("primary", {
///     name: "basic",
///     description: "A sample hub",
///     labels: {
///         "label-one": "value-one",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.networkconnectivity.Hub("primary",
///     name="basic",
///     description="A sample hub",
///     labels={
///         "label-one": "value-one",
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
///     var primary = new Gcp.NetworkConnectivity.Hub("primary", new()
///     {
///         Name = "basic",
///         Description = "A sample hub",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkconnectivity.NewHub(ctx, "primary", &networkconnectivity.HubArgs{
/// 			Name:        pulumi.String("basic"),
/// 			Description: pulumi.String("A sample hub"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
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
/// import com.pulumi.gcp.networkconnectivity.Hub;
/// import com.pulumi.gcp.networkconnectivity.HubArgs;
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
///         var primary = new Hub("primary", HubArgs.builder()
///             .name("basic")
///             .description("A sample hub")
///             .labels(Map.of("label-one", "value-one"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:networkconnectivity:Hub
///     properties:
///       name: basic
///       description: A sample hub
///       labels:
///         label-one: value-one
/// ```
///
/// ### Network Connectivity Hub With Export Psc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.networkconnectivity.Hub("primary", {
///     name: "basic",
///     description: "A sample hub with Private Service Connect transitivity is enabled",
///     exportPsc: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.networkconnectivity.Hub("primary",
///     name="basic",
///     description="A sample hub with Private Service Connect transitivity is enabled",
///     export_psc=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.NetworkConnectivity.Hub("primary", new()
///     {
///         Name = "basic",
///         Description = "A sample hub with Private Service Connect transitivity is enabled",
///         ExportPsc = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkconnectivity.NewHub(ctx, "primary", &networkconnectivity.HubArgs{
/// 			Name:        pulumi.String("basic"),
/// 			Description: pulumi.String("A sample hub with Private Service Connect transitivity is enabled"),
/// 			ExportPsc:   pulumi.Bool(true),
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
/// import com.pulumi.gcp.networkconnectivity.Hub;
/// import com.pulumi.gcp.networkconnectivity.HubArgs;
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
///         var primary = new Hub("primary", HubArgs.builder()
///             .name("basic")
///             .description("A sample hub with Private Service Connect transitivity is enabled")
///             .exportPsc(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:networkconnectivity:Hub
///     properties:
///       name: basic
///       description: A sample hub with Private Service Connect transitivity is enabled
///       exportPsc: true
/// ```
///
/// ### Network Connectivity Hub Mesh Topology
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.networkconnectivity.Hub("primary", {
///     name: "mesh",
///     description: "A sample mesh hub",
///     labels: {
///         "label-one": "value-one",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.networkconnectivity.Hub("primary",
///     name="mesh",
///     description="A sample mesh hub",
///     labels={
///         "label-one": "value-one",
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
///     var primary = new Gcp.NetworkConnectivity.Hub("primary", new()
///     {
///         Name = "mesh",
///         Description = "A sample mesh hub",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkconnectivity.NewHub(ctx, "primary", &networkconnectivity.HubArgs{
/// 			Name:        pulumi.String("mesh"),
/// 			Description: pulumi.String("A sample mesh hub"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
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
/// import com.pulumi.gcp.networkconnectivity.Hub;
/// import com.pulumi.gcp.networkconnectivity.HubArgs;
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
///         var primary = new Hub("primary", HubArgs.builder()
///             .name("mesh")
///             .description("A sample mesh hub")
///             .labels(Map.of("label-one", "value-one"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:networkconnectivity:Hub
///     properties:
///       name: mesh
///       description: A sample mesh hub
///       labels:
///         label-one: value-one
/// ```
///
/// ### Network Connectivity Hub Star Topology
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.networkconnectivity.Hub("primary", {
///     name: "star",
///     description: "A sample star hub",
///     labels: {
///         "label-one": "value-one",
///     },
///     presetTopology: "STAR",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.networkconnectivity.Hub("primary",
///     name="star",
///     description="A sample star hub",
///     labels={
///         "label-one": "value-one",
///     },
///     preset_topology="STAR")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.NetworkConnectivity.Hub("primary", new()
///     {
///         Name = "star",
///         Description = "A sample star hub",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         PresetTopology = "STAR",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkconnectivity.NewHub(ctx, "primary", &networkconnectivity.HubArgs{
/// 			Name:        pulumi.String("star"),
/// 			Description: pulumi.String("A sample star hub"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			PresetTopology: pulumi.String("STAR"),
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
/// import com.pulumi.gcp.networkconnectivity.Hub;
/// import com.pulumi.gcp.networkconnectivity.HubArgs;
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
///         var primary = new Hub("primary", HubArgs.builder()
///             .name("star")
///             .description("A sample star hub")
///             .labels(Map.of("label-one", "value-one"))
///             .presetTopology("STAR")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:networkconnectivity:Hub
///     properties:
///       name: star
///       description: A sample star hub
///       labels:
///         label-one: value-one
///       presetTopology: STAR
/// ```
///
/// ### Network Connectivity Hub Policy Mode
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.networkconnectivity.Hub("primary", {
///     name: "policy",
///     description: "A sample hub with PRESET policy_mode and STAR topology",
///     policyMode: "PRESET",
///     presetTopology: "STAR",
///     labels: {
///         "label-one": "value-one",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.networkconnectivity.Hub("primary",
///     name="policy",
///     description="A sample hub with PRESET policy_mode and STAR topology",
///     policy_mode="PRESET",
///     preset_topology="STAR",
///     labels={
///         "label-one": "value-one",
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
///     var primary = new Gcp.NetworkConnectivity.Hub("primary", new()
///     {
///         Name = "policy",
///         Description = "A sample hub with PRESET policy_mode and STAR topology",
///         PolicyMode = "PRESET",
///         PresetTopology = "STAR",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkconnectivity.NewHub(ctx, "primary", &networkconnectivity.HubArgs{
/// 			Name:           pulumi.String("policy"),
/// 			Description:    pulumi.String("A sample hub with PRESET policy_mode and STAR topology"),
/// 			PolicyMode:     pulumi.String("PRESET"),
/// 			PresetTopology: pulumi.String("STAR"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
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
/// import com.pulumi.gcp.networkconnectivity.Hub;
/// import com.pulumi.gcp.networkconnectivity.HubArgs;
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
///         var primary = new Hub("primary", HubArgs.builder()
///             .name("policy")
///             .description("A sample hub with PRESET policy_mode and STAR topology")
///             .policyMode("PRESET")
///             .presetTopology("STAR")
///             .labels(Map.of("label-one", "value-one"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:networkconnectivity:Hub
///     properties:
///       name: policy
///       description: A sample hub with PRESET policy_mode and STAR topology
///       policyMode: PRESET
///       presetTopology: STAR
///       labels:
///         label-one: value-one
/// ```
///
///
/// ## Import
///
/// Hub can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/hubs/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Hub can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/hub:Hub default projects/{{project}}/locations/global/hubs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/hub:Hub default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/hub:Hub default {{name}}
/// ```
class Hub extends pulumi.CustomResource {
  /// Output only. The time the hub was created.
  late final pulumi.Output<String> createTime;
  /// An optional description of the hub.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Whether Private Service Connect transitivity is enabled for the hub. If true, Private Service Connect endpoints in VPC spokes attached to the hub are made accessible to other VPC spokes attached to the hub. The default value is false.
  late final pulumi.Output<bool> exportPsc;
  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Immutable. The name of the hub. Hub names must be unique. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}`
  late final pulumi.Output<String> name;
  /// Optional. The policy mode of this hub. This field can be either PRESET or CUSTOM. If unspecified, the policyMode defaults to PRESET.
  /// Possible values are: `CUSTOM`, `PRESET`.
  late final pulumi.Output<String> policyMode;
  /// Optional. The topology implemented in this hub. Currently, this field is only used when policyMode = PRESET. The available preset topologies are MESH and STAR. If presetTopology is unspecified and policyMode = PRESET, the presetTopology defaults to MESH. When policyMode = CUSTOM, the presetTopology is set to PRESET_TOPOLOGY_UNSPECIFIED.
  /// Possible values are: `MESH`, `STAR`, `HYBRID_INSPECTION`.
  late final pulumi.Output<String> presetTopology;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The VPC network associated with this hub's spokes. All of the VPN tunnels, VLAN attachments, and router appliance instances referenced by this hub's spokes must belong to this VPC network. This field is read-only. Network Connectivity Center automatically populates it based on the set of spokes attached to the hub.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> routingVpcs;
  /// Output only. The current lifecycle state of this hub.
  late final pulumi.Output<String> state;
  /// Output only. The Google-generated UUID for the hub. This value is unique across all hub resources. If a hub is deleted and another with the same name is created, the new hub is assigned a different unique_id.
  late final pulumi.Output<String> uniqueId;
  /// Output only. The time the hub was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Hub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Hub]. {@macro pulumi_networkconnectivity_hub_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Hub(
    String name, {
    HubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/hub:Hub',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    exportPsc = registerOutput<bool>('exportPsc');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    policyMode = registerOutput<String>('policyMode');
    presetTopology = registerOutput<String>('presetTopology');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    routingVpcs = registerOutput<List<Map<String, dynamic>>>('routingVpcs');
    state = registerOutput<String>('state');
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Hub] resource's state with the given [name] and [id].
  static Hub get(
    String name,
    pulumi.Input<String> id, {
    HubState? state,
  }) {
    return Hub._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Hub._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/hub:Hub',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    exportPsc = registerOutput<bool>('exportPsc');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    policyMode = registerOutput<String>('policyMode');
    presetTopology = registerOutput<String>('presetTopology');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    routingVpcs = registerOutput<List<Map<String, dynamic>>>('routingVpcs');
    this.state = registerOutput<String>('state');
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }
}
