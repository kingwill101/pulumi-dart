import 'package:pulumi/pulumi.dart' as pulumi;
import 'wire_group_args.dart';
import 'wire_group_endpoint.dart';
import 'wire_group_state.dart';
import 'wire_group_topology.dart';
import 'wire_group_wire.dart';
import 'wire_group_wire_group_properties.dart';
import 'wire_group_wire_properties.dart';

/// The WireGroup resource represents a group of redundant wires between interconnects in two different metros. Each WireGroup belongs to a CrossSiteNetwork. A wire group defines endpoints and the wires which exist between them.
///
///
/// To get more information about WireGroup, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/wireGroups)
/// * How-to Guides
/// * [Create a WireGroup](https://cloud.google.com/network-connectivity/docs/interconnect/how-to/cross-site/modify-network#add-wire-group)
///
/// ## Example Usage
///
/// ### Compute Wire Group Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example_cross_site_network = new gcp.compute.CrossSiteNetwork("example-cross-site-network", {
///     name: "test-cross-site-network",
///     description: "Example cross site network",
/// });
/// const example_test_wire_group = new gcp.compute.WireGroup("example-test-wire-group", {
///     name: "test-wire-group",
///     description: "Example Wire Group",
///     crossSiteNetwork: "test-cross-site-network",
///     wireProperties: {
///         bandwidthUnmetered: 10,
///         faultResponse: "NONE",
///         bandwidthAllocation: "ALLOCATE_PER_WIRE",
///     },
///     adminEnabled: true,
/// }, {
///     dependsOn: [example_cross_site_network],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example_cross_site_network = gcp.compute.CrossSiteNetwork("example-cross-site-network",
///     name="test-cross-site-network",
///     description="Example cross site network")
/// example_test_wire_group = gcp.compute.WireGroup("example-test-wire-group",
///     name="test-wire-group",
///     description="Example Wire Group",
///     cross_site_network="test-cross-site-network",
///     wire_properties={
///         "bandwidth_unmetered": 10,
///         "fault_response": "NONE",
///         "bandwidth_allocation": "ALLOCATE_PER_WIRE",
///     },
///     admin_enabled=True,
///     opts = pulumi.ResourceOptions(depends_on=[example_cross_site_network]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example_cross_site_network = new Gcp.Compute.CrossSiteNetwork("example-cross-site-network", new()
///     {
///         Name = "test-cross-site-network",
///         Description = "Example cross site network",
///     });
///
///     var example_test_wire_group = new Gcp.Compute.WireGroup("example-test-wire-group", new()
///     {
///         Name = "test-wire-group",
///         Description = "Example Wire Group",
///         CrossSiteNetwork = "test-cross-site-network",
///         WireProperties = new Gcp.Compute.Inputs.WireGroupWirePropertiesArgs
///         {
///             BandwidthUnmetered = 10,
///             FaultResponse = "NONE",
///             BandwidthAllocation = "ALLOCATE_PER_WIRE",
///         },
///         AdminEnabled = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example_cross_site_network,
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
/// 		_, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_cross_site_network, err := compute.NewCrossSiteNetwork(ctx, "example-cross-site-network", &compute.CrossSiteNetworkArgs{
/// 			Name:        pulumi.String("test-cross-site-network"),
/// 			Description: pulumi.String("Example cross site network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewWireGroup(ctx, "example-test-wire-group", &compute.WireGroupArgs{
/// 			Name:             pulumi.String("test-wire-group"),
/// 			Description:      pulumi.String("Example Wire Group"),
/// 			CrossSiteNetwork: pulumi.String("test-cross-site-network"),
/// 			WireProperties: &compute.WireGroupWirePropertiesArgs{
/// 				BandwidthUnmetered:  pulumi.Int(10),
/// 				FaultResponse:       pulumi.String("NONE"),
/// 				BandwidthAllocation: pulumi.String("ALLOCATE_PER_WIRE"),
/// 			},
/// 			AdminEnabled: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example_cross_site_network,
/// 		}))
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_compute_crosssitenetwork" "example-cross-site-network" {
///   name        = "test-cross-site-network"
///   description = "Example cross site network"
/// }
/// resource "gcp_compute_wiregroup" "example-test-wire-group" {
///   depends_on         = [gcp_compute_crosssitenetwork.example-cross-site-network]
///   name               = "test-wire-group"
///   description        = "Example Wire Group"
///   cross_site_network = "test-cross-site-network"
///   wire_properties = {
///     bandwidth_unmetered  = 10
///     fault_response       = "NONE"
///     bandwidth_allocation = "ALLOCATE_PER_WIRE"
///   }
///   admin_enabled = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.compute.CrossSiteNetwork;
/// import com.pulumi.gcp.compute.CrossSiteNetworkArgs;
/// import com.pulumi.gcp.compute.WireGroup;
/// import com.pulumi.gcp.compute.WireGroupArgs;
/// import com.pulumi.gcp.compute.inputs.WireGroupWirePropertiesArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var example_cross_site_network = new CrossSiteNetwork("example-cross-site-network", CrossSiteNetworkArgs.builder()
///             .name("test-cross-site-network")
///             .description("Example cross site network")
///             .build());
///
///         var example_test_wire_group = new WireGroup("example-test-wire-group", WireGroupArgs.builder()
///             .name("test-wire-group")
///             .description("Example Wire Group")
///             .crossSiteNetwork("test-cross-site-network")
///             .wireProperties(WireGroupWirePropertiesArgs.builder()
///                 .bandwidthUnmetered(10)
///                 .faultResponse("NONE")
///                 .bandwidthAllocation("ALLOCATE_PER_WIRE")
///                 .build())
///             .adminEnabled(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example_cross_site_network)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-cross-site-network:
///     type: gcp:compute:CrossSiteNetwork
///     properties:
///       name: test-cross-site-network
///       description: Example cross site network
///   example-test-wire-group:
///     type: gcp:compute:WireGroup
///     properties:
///       name: test-wire-group
///       description: Example Wire Group
///       crossSiteNetwork: test-cross-site-network
///       wireProperties:
///         bandwidthUnmetered: 10
///         faultResponse: NONE
///         bandwidthAllocation: ALLOCATE_PER_WIRE
///       adminEnabled: true
///     options:
///       dependsOn:
///         - ${["example-cross-site-network"]}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Compute Wire Group Basic Beta
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example_cross_site_network = new gcp.compute.CrossSiteNetwork("example-cross-site-network", {
///     name: "test-cross-site-network-beta",
///     description: "Example cross site network",
/// });
/// const example_test_wire_group_beta = new gcp.compute.WireGroup("example-test-wire-group-beta", {
///     name: "test-wire-group-beta",
///     description: "Example Wire Group Beta",
///     crossSiteNetwork: "test-cross-site-network-beta",
///     wireProperties: {
///         bandwidthUnmetered: 10,
///         faultResponse: "NONE",
///         bandwidthAllocation: "ALLOCATE_PER_WIRE",
///     },
///     wireGroupProperties: {
///         type: "WIRE",
///     },
///     adminEnabled: true,
/// }, {
///     dependsOn: [example_cross_site_network],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example_cross_site_network = gcp.compute.CrossSiteNetwork("example-cross-site-network",
///     name="test-cross-site-network-beta",
///     description="Example cross site network")
/// example_test_wire_group_beta = gcp.compute.WireGroup("example-test-wire-group-beta",
///     name="test-wire-group-beta",
///     description="Example Wire Group Beta",
///     cross_site_network="test-cross-site-network-beta",
///     wire_properties={
///         "bandwidth_unmetered": 10,
///         "fault_response": "NONE",
///         "bandwidth_allocation": "ALLOCATE_PER_WIRE",
///     },
///     wire_group_properties={
///         "type": "WIRE",
///     },
///     admin_enabled=True,
///     opts = pulumi.ResourceOptions(depends_on=[example_cross_site_network]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example_cross_site_network = new Gcp.Compute.CrossSiteNetwork("example-cross-site-network", new()
///     {
///         Name = "test-cross-site-network-beta",
///         Description = "Example cross site network",
///     });
///
///     var example_test_wire_group_beta = new Gcp.Compute.WireGroup("example-test-wire-group-beta", new()
///     {
///         Name = "test-wire-group-beta",
///         Description = "Example Wire Group Beta",
///         CrossSiteNetwork = "test-cross-site-network-beta",
///         WireProperties = new Gcp.Compute.Inputs.WireGroupWirePropertiesArgs
///         {
///             BandwidthUnmetered = 10,
///             FaultResponse = "NONE",
///             BandwidthAllocation = "ALLOCATE_PER_WIRE",
///         },
///         WireGroupProperties = new Gcp.Compute.Inputs.WireGroupWireGroupPropertiesArgs
///         {
///             Type = "WIRE",
///         },
///         AdminEnabled = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example_cross_site_network,
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
/// 		_, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_cross_site_network, err := compute.NewCrossSiteNetwork(ctx, "example-cross-site-network", &compute.CrossSiteNetworkArgs{
/// 			Name:        pulumi.String("test-cross-site-network-beta"),
/// 			Description: pulumi.String("Example cross site network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewWireGroup(ctx, "example-test-wire-group-beta", &compute.WireGroupArgs{
/// 			Name:             pulumi.String("test-wire-group-beta"),
/// 			Description:      pulumi.String("Example Wire Group Beta"),
/// 			CrossSiteNetwork: pulumi.String("test-cross-site-network-beta"),
/// 			WireProperties: &compute.WireGroupWirePropertiesArgs{
/// 				BandwidthUnmetered:  pulumi.Int(10),
/// 				FaultResponse:       pulumi.String("NONE"),
/// 				BandwidthAllocation: pulumi.String("ALLOCATE_PER_WIRE"),
/// 			},
/// 			WireGroupProperties: &compute.WireGroupWireGroupPropertiesArgs{
/// 				Type: pulumi.String("WIRE"),
/// 			},
/// 			AdminEnabled: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example_cross_site_network,
/// 		}))
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_compute_crosssitenetwork" "example-cross-site-network" {
///   name        = "test-cross-site-network-beta"
///   description = "Example cross site network"
/// }
/// resource "gcp_compute_wiregroup" "example-test-wire-group-beta" {
///   depends_on         = [gcp_compute_crosssitenetwork.example-cross-site-network]
///   name               = "test-wire-group-beta"
///   description        = "Example Wire Group Beta"
///   cross_site_network = "test-cross-site-network-beta"
///   wire_properties = {
///     bandwidth_unmetered  = 10
///     fault_response       = "NONE"
///     bandwidth_allocation = "ALLOCATE_PER_WIRE"
///   }
///   wire_group_properties = {
///     type = "WIRE"
///   }
///   admin_enabled = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.compute.CrossSiteNetwork;
/// import com.pulumi.gcp.compute.CrossSiteNetworkArgs;
/// import com.pulumi.gcp.compute.WireGroup;
/// import com.pulumi.gcp.compute.WireGroupArgs;
/// import com.pulumi.gcp.compute.inputs.WireGroupWirePropertiesArgs;
/// import com.pulumi.gcp.compute.inputs.WireGroupWireGroupPropertiesArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var example_cross_site_network = new CrossSiteNetwork("example-cross-site-network", CrossSiteNetworkArgs.builder()
///             .name("test-cross-site-network-beta")
///             .description("Example cross site network")
///             .build());
///
///         var example_test_wire_group_beta = new WireGroup("example-test-wire-group-beta", WireGroupArgs.builder()
///             .name("test-wire-group-beta")
///             .description("Example Wire Group Beta")
///             .crossSiteNetwork("test-cross-site-network-beta")
///             .wireProperties(WireGroupWirePropertiesArgs.builder()
///                 .bandwidthUnmetered(10)
///                 .faultResponse("NONE")
///                 .bandwidthAllocation("ALLOCATE_PER_WIRE")
///                 .build())
///             .wireGroupProperties(WireGroupWireGroupPropertiesArgs.builder()
///                 .type("WIRE")
///                 .build())
///             .adminEnabled(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example_cross_site_network)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-cross-site-network:
///     type: gcp:compute:CrossSiteNetwork
///     properties:
///       name: test-cross-site-network-beta
///       description: Example cross site network
///   example-test-wire-group-beta:
///     type: gcp:compute:WireGroup
///     properties:
///       name: test-wire-group-beta
///       description: Example Wire Group Beta
///       crossSiteNetwork: test-cross-site-network-beta
///       wireProperties:
///         bandwidthUnmetered: 10
///         faultResponse: NONE
///         bandwidthAllocation: ALLOCATE_PER_WIRE
///       wireGroupProperties:
///         type: WIRE
///       adminEnabled: true
///     options:
///       dependsOn:
///         - ${["example-cross-site-network"]}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// WireGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/crossSiteNetworks/{{cross_site_network}}/wireGroups/{{name}}`
/// * `{{project}}/{{cross_site_network}}/{{name}}`
/// * `{{cross_site_network}}/{{name}}`
///
///
/// When using the `pulumi import` command, WireGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/wireGroup:WireGroup default projects/{{project}}/global/crossSiteNetworks/{{cross_site_network}}/wireGroups/{{name}}
/// $ pulumi import gcp:compute/wireGroup:WireGroup default {{project}}/{{cross_site_network}}/{{name}}
/// $ pulumi import gcp:compute/wireGroup:WireGroup default {{cross_site_network}}/{{name}}
/// ```
class WireGroup extends pulumi.CustomResource {
  /// Indicates whether the wire group is administratively enabled.
  late final pulumi.Output<bool?> adminEnabled;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Required cross site network to which wire group belongs.
  late final pulumi.Output<String> crossSiteNetwork;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String?> description;
  /// Endpoints grouped by location, each mapping to interconnect configurations.
  /// Structure is documented below.
  late final pulumi.Output<List<WireGroupEndpoint>?> endpoints;
  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Topology details for the wire group configuration.
  /// Structure is documented below.
  late final pulumi.Output<List<WireGroupTopology>> topologies;
  /// (Optional, Beta)
  /// Properties specific to the wire group.
  /// Structure is documented below.
  late final pulumi.Output<WireGroupWireGroupProperties?> wireGroupProperties;
  /// Default properties for wires within the group.
  /// Structure is documented below.
  late final pulumi.Output<WireGroupWireProperties?> wireProperties;
  /// The single/redundant wire(s) managed by the wire group.
  /// Structure is documented below.
  late final pulumi.Output<List<WireGroupWire>> wires;

  /// Creates a new [WireGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WireGroup]. {@macro pulumi_compute_wire_group_wire_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WireGroup(
    String name, {
    WireGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/wireGroup:WireGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    adminEnabled = registerOutput<bool?>('adminEnabled');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    crossSiteNetwork = registerOutput<String>('crossSiteNetwork');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    endpoints = registerOutput<List<WireGroupEndpoint>?>('endpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WireGroupEndpoint>(guardedValue, (value) => WireGroupEndpoint.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    topologies = registerOutput<List<WireGroupTopology>>('topologies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WireGroupTopology>(guardedValue, (value) => WireGroupTopology.fromMap((value as Map).cast<String, dynamic>())); });
    wireGroupProperties = registerOutput<WireGroupWireGroupProperties?>('wireGroupProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WireGroupWireGroupProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    wireProperties = registerOutput<WireGroupWireProperties?>('wireProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WireGroupWireProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    wires = registerOutput<List<WireGroupWire>>('wires', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WireGroupWire>(guardedValue, (value) => WireGroupWire.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [WireGroup] resource's state with the given [name] and [id].
  static WireGroup get(
    String name,
    pulumi.Input<String> id, {
    WireGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WireGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WireGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/wireGroup:WireGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminEnabled = registerOutput<bool?>('adminEnabled');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    crossSiteNetwork = registerOutput<String>('crossSiteNetwork');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    endpoints = registerOutput<List<WireGroupEndpoint>?>('endpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WireGroupEndpoint>(guardedValue, (value) => WireGroupEndpoint.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    topologies = registerOutput<List<WireGroupTopology>>('topologies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WireGroupTopology>(guardedValue, (value) => WireGroupTopology.fromMap((value as Map).cast<String, dynamic>())); });
    wireGroupProperties = registerOutput<WireGroupWireGroupProperties?>('wireGroupProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WireGroupWireGroupProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    wireProperties = registerOutput<WireGroupWireProperties?>('wireProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WireGroupWireProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    wires = registerOutput<List<WireGroupWire>>('wires', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WireGroupWire>(guardedValue, (value) => WireGroupWire.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [WireGroup] resource.
  WireGroup.reference(String urn)
    : super(
        'gcp:compute/wireGroup:WireGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    adminEnabled = registerOutput<bool?>('adminEnabled');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    crossSiteNetwork = registerOutput<String>('crossSiteNetwork');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    endpoints = registerOutput<List<WireGroupEndpoint>?>('endpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WireGroupEndpoint>(guardedValue, (value) => WireGroupEndpoint.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    topologies = registerOutput<List<WireGroupTopology>>('topologies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WireGroupTopology>(guardedValue, (value) => WireGroupTopology.fromMap((value as Map).cast<String, dynamic>())); });
    wireGroupProperties = registerOutput<WireGroupWireGroupProperties?>('wireGroupProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WireGroupWireGroupProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    wireProperties = registerOutput<WireGroupWireProperties?>('wireProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WireGroupWireProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    wires = registerOutput<List<WireGroupWire>>('wires', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WireGroupWire>(guardedValue, (value) => WireGroupWire.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
