import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_group_args.dart';
import 'interconnect_group_configured.dart';
import 'interconnect_group_intent.dart';
import 'interconnect_group_interconnect.dart';
import 'interconnect_group_physical_structure.dart';
import 'interconnect_group_state.dart';

/// An interconnect group resource allows customers to create, analyze, and
/// expand their redundant connections.
///
///
/// To get more information about InterconnectGroup, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/interconnects)
/// * How-to Guides
/// * [Create a Dedicated Interconnect](https://cloud.google.com/network-connectivity/docs/interconnect/concepts/dedicated-overview)
///
/// ## Example Usage
///
/// ### Interconnect Group Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example_interconnect_group = new gcp.compute.InterconnectGroup("example-interconnect-group", {
///     name: "example-interconnect-group",
///     intent: {
///         topologyCapability: "NO_SLA",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_interconnect_group = gcp.compute.InterconnectGroup("example-interconnect-group",
///     name="example-interconnect-group",
///     intent={
///         "topology_capability": "NO_SLA",
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
///     var example_interconnect_group = new Gcp.Compute.InterconnectGroup("example-interconnect-group", new()
///     {
///         Name = "example-interconnect-group",
///         Intent = new Gcp.Compute.Inputs.InterconnectGroupIntentArgs
///         {
///             TopologyCapability = "NO_SLA",
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
/// 		_, err := compute.NewInterconnectGroup(ctx, "example-interconnect-group", &compute.InterconnectGroupArgs{
/// 			Name: pulumi.String("example-interconnect-group"),
/// 			Intent: &compute.InterconnectGroupIntentArgs{
/// 				TopologyCapability: pulumi.String("NO_SLA"),
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
/// resource "gcp_compute_interconnectgroup" "example-interconnect-group" {
///   name = "example-interconnect-group"
///   intent = {
///     topology_capability = "NO_SLA"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.InterconnectGroup;
/// import com.pulumi.gcp.compute.InterconnectGroupArgs;
/// import com.pulumi.gcp.compute.inputs.InterconnectGroupIntentArgs;
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
///         var example_interconnect_group = new InterconnectGroup("example-interconnect-group", InterconnectGroupArgs.builder()
///             .name("example-interconnect-group")
///             .intent(InterconnectGroupIntentArgs.builder()
///                 .topologyCapability("NO_SLA")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-interconnect-group:
///     type: gcp:compute:InterconnectGroup
///     properties:
///       name: example-interconnect-group
///       intent:
///         topologyCapability: NO_SLA
/// ```
///
///
/// ## Import
///
/// InterconnectGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/interconnectGroups/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, InterconnectGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/interconnectGroup:InterconnectGroup default projects/{{project}}/global/interconnectGroups/{{name}}
/// $ pulumi import gcp:compute/interconnectGroup:InterconnectGroup default {{project}}/{{name}}
/// $ pulumi import gcp:compute/interconnectGroup:InterconnectGroup default {{name}}
/// ```
class InterconnectGroup extends pulumi.CustomResource {
  /// The status of the group as configured. This has the same
  /// structure as the operational field reported by the OperationalStatus
  /// method, but does not take into account the operational status of each
  /// resource.
  /// Structure is documented below.
  late final pulumi.Output<List<InterconnectGroupConfigured>> configureds;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String?> description;
  /// The user's intent for this group. This is the only required field besides
  /// the name that must be specified on group creation.
  /// Structure is documented below.
  late final pulumi.Output<InterconnectGroupIntent> intent;
  /// Interconnects in the InterconnectGroup. Keys are arbitrary user-specified
  /// strings. Users are encouraged, but not required, to use their preferred
  /// format for resource links as keys.
  /// Note that there are add-members and remove-members methods in gcloud.
  /// The size of this map is limited by an "Interconnects per group" quota.
  /// Structure is documented below.
  late final pulumi.Output<List<InterconnectGroupInterconnect>?> interconnects;
  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// An analysis of the physical layout of Interconnects in this
  /// group. Every Interconnect in the group is shown once in this structure.
  /// Structure is documented below.
  late final pulumi.Output<List<InterconnectGroupPhysicalStructure>> physicalStructures;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [InterconnectGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InterconnectGroup]. {@macro pulumi_compute_interconnect_group_interconnect_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InterconnectGroup(
    String name, {
    InterconnectGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/interconnectGroup:InterconnectGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    configureds = registerOutput<List<InterconnectGroupConfigured>>('configureds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InterconnectGroupConfigured>(guardedValue, (value) => InterconnectGroupConfigured.fromMap((value as Map).cast<String, dynamic>())); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    intent = registerOutput<InterconnectGroupIntent>('intent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InterconnectGroupIntent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interconnects = registerOutput<List<InterconnectGroupInterconnect>?>('interconnects', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InterconnectGroupInterconnect>(guardedValue, (value) => InterconnectGroupInterconnect.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    physicalStructures = registerOutput<List<InterconnectGroupPhysicalStructure>>('physicalStructures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InterconnectGroupPhysicalStructure>(guardedValue, (value) => InterconnectGroupPhysicalStructure.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
  }

  /// Gets an existing [InterconnectGroup] resource's state with the given [name] and [id].
  static InterconnectGroup get(
    String name,
    pulumi.Input<String> id, {
    InterconnectGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InterconnectGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InterconnectGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/interconnectGroup:InterconnectGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configureds = registerOutput<List<InterconnectGroupConfigured>>('configureds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InterconnectGroupConfigured>(guardedValue, (value) => InterconnectGroupConfigured.fromMap((value as Map).cast<String, dynamic>())); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    intent = registerOutput<InterconnectGroupIntent>('intent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InterconnectGroupIntent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interconnects = registerOutput<List<InterconnectGroupInterconnect>?>('interconnects', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InterconnectGroupInterconnect>(guardedValue, (value) => InterconnectGroupInterconnect.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    physicalStructures = registerOutput<List<InterconnectGroupPhysicalStructure>>('physicalStructures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InterconnectGroupPhysicalStructure>(guardedValue, (value) => InterconnectGroupPhysicalStructure.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [InterconnectGroup] resource.
  InterconnectGroup.reference(String urn)
    : super(
        'gcp:compute/interconnectGroup:InterconnectGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    configureds = registerOutput<List<InterconnectGroupConfigured>>('configureds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InterconnectGroupConfigured>(guardedValue, (value) => InterconnectGroupConfigured.fromMap((value as Map).cast<String, dynamic>())); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    intent = registerOutput<InterconnectGroupIntent>('intent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InterconnectGroupIntent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interconnects = registerOutput<List<InterconnectGroupInterconnect>?>('interconnects', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InterconnectGroupInterconnect>(guardedValue, (value) => InterconnectGroupInterconnect.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    physicalStructures = registerOutput<List<InterconnectGroupPhysicalStructure>>('physicalStructures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InterconnectGroupPhysicalStructure>(guardedValue, (value) => InterconnectGroupPhysicalStructure.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
  }
}
