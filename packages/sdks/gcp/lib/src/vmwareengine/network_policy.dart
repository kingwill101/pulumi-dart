import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_policy_args.dart';
import 'network_policy_external_ip.dart';
import 'network_policy_internet_access.dart';
import 'network_policy_state.dart';

/// Represents a network policy resource. Network policies are regional resources.
///
///
/// To get more information about NetworkPolicy, see:
///
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.networkPolicies)
///
/// ## Example Usage
///
/// ### Vmware Engine Network Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network_policy_nw = new gcp.vmwareengine.Network("network-policy-nw", {
///     name: "sample-network",
///     location: "global",
///     type: "STANDARD",
///     description: "VMwareEngine standard network sample",
/// });
/// const vmw_engine_network_policy = new gcp.vmwareengine.NetworkPolicy("vmw-engine-network-policy", {
///     location: "us-west1",
///     name: "sample-network-policy",
///     edgeServicesCidr: "192.168.30.0/26",
///     vmwareEngineNetwork: network_policy_nw.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network_policy_nw = gcp.vmwareengine.Network("network-policy-nw",
///     name="sample-network",
///     location="global",
///     type="STANDARD",
///     description="VMwareEngine standard network sample")
/// vmw_engine_network_policy = gcp.vmwareengine.NetworkPolicy("vmw-engine-network-policy",
///     location="us-west1",
///     name="sample-network-policy",
///     edge_services_cidr="192.168.30.0/26",
///     vmware_engine_network=network_policy_nw.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network_policy_nw = new Gcp.VMwareEngine.Network("network-policy-nw", new()
///     {
///         Name = "sample-network",
///         Location = "global",
///         Type = "STANDARD",
///         Description = "VMwareEngine standard network sample",
///     });
///
///     var vmw_engine_network_policy = new Gcp.VMwareEngine.NetworkPolicy("vmw-engine-network-policy", new()
///     {
///         Location = "us-west1",
///         Name = "sample-network-policy",
///         EdgeServicesCidr = "192.168.30.0/26",
///         VmwareEngineNetwork = network_policy_nw.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network_policy_nw, err := vmwareengine.NewNetwork(ctx, "network-policy-nw", &vmwareengine.NetworkArgs{
/// 			Name:        pulumi.String("sample-network"),
/// 			Location:    pulumi.String("global"),
/// 			Type:        pulumi.String("STANDARD"),
/// 			Description: pulumi.String("VMwareEngine standard network sample"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vmwareengine.NewNetworkPolicy(ctx, "vmw-engine-network-policy", &vmwareengine.NetworkPolicyArgs{
/// 			Location:            pulumi.String("us-west1"),
/// 			Name:                pulumi.String("sample-network-policy"),
/// 			EdgeServicesCidr:    pulumi.String("192.168.30.0/26"),
/// 			VmwareEngineNetwork: network_policy_nw.ID(),
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
/// import com.pulumi.gcp.vmwareengine.Network;
/// import com.pulumi.gcp.vmwareengine.NetworkArgs;
/// import com.pulumi.gcp.vmwareengine.NetworkPolicy;
/// import com.pulumi.gcp.vmwareengine.NetworkPolicyArgs;
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
///         var network_policy_nw = new Network("network-policy-nw", NetworkArgs.builder()
///             .name("sample-network")
///             .location("global")
///             .type("STANDARD")
///             .description("VMwareEngine standard network sample")
///             .build());
///
///         var vmw_engine_network_policy = new NetworkPolicy("vmw-engine-network-policy", NetworkPolicyArgs.builder()
///             .location("us-west1")
///             .name("sample-network-policy")
///             .edgeServicesCidr("192.168.30.0/26")
///             .vmwareEngineNetwork(network_policy_nw.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network-policy-nw:
///     type: gcp:vmwareengine:Network
///     properties:
///       name: sample-network
///       location: global
///       type: STANDARD
///       description: VMwareEngine standard network sample
///   vmw-engine-network-policy:
///     type: gcp:vmwareengine:NetworkPolicy
///     properties:
///       location: us-west1
///       name: sample-network-policy
///       edgeServicesCidr: 192.168.30.0/26
///       vmwareEngineNetwork: ${["network-policy-nw"].id}
/// ```
///
/// ### Vmware Engine Network Policy Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network_policy_nw = new gcp.vmwareengine.Network("network-policy-nw", {
///     name: "sample-network",
///     location: "global",
///     type: "STANDARD",
///     description: "VMwareEngine standard network sample",
/// });
/// const vmw_engine_network_policy = new gcp.vmwareengine.NetworkPolicy("vmw-engine-network-policy", {
///     location: "us-west1",
///     name: "sample-network-policy",
///     edgeServicesCidr: "192.168.30.0/26",
///     vmwareEngineNetwork: network_policy_nw.id,
///     description: "Sample Network Policy",
///     internetAccess: {
///         enabled: true,
///     },
///     externalIp: {
///         enabled: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network_policy_nw = gcp.vmwareengine.Network("network-policy-nw",
///     name="sample-network",
///     location="global",
///     type="STANDARD",
///     description="VMwareEngine standard network sample")
/// vmw_engine_network_policy = gcp.vmwareengine.NetworkPolicy("vmw-engine-network-policy",
///     location="us-west1",
///     name="sample-network-policy",
///     edge_services_cidr="192.168.30.0/26",
///     vmware_engine_network=network_policy_nw.id,
///     description="Sample Network Policy",
///     internet_access={
///         "enabled": True,
///     },
///     external_ip={
///         "enabled": True,
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
///     var network_policy_nw = new Gcp.VMwareEngine.Network("network-policy-nw", new()
///     {
///         Name = "sample-network",
///         Location = "global",
///         Type = "STANDARD",
///         Description = "VMwareEngine standard network sample",
///     });
///
///     var vmw_engine_network_policy = new Gcp.VMwareEngine.NetworkPolicy("vmw-engine-network-policy", new()
///     {
///         Location = "us-west1",
///         Name = "sample-network-policy",
///         EdgeServicesCidr = "192.168.30.0/26",
///         VmwareEngineNetwork = network_policy_nw.Id,
///         Description = "Sample Network Policy",
///         InternetAccess = new Gcp.VMwareEngine.Inputs.NetworkPolicyInternetAccessArgs
///         {
///             Enabled = true,
///         },
///         ExternalIp = new Gcp.VMwareEngine.Inputs.NetworkPolicyExternalIpArgs
///         {
///             Enabled = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network_policy_nw, err := vmwareengine.NewNetwork(ctx, "network-policy-nw", &vmwareengine.NetworkArgs{
/// 			Name:        pulumi.String("sample-network"),
/// 			Location:    pulumi.String("global"),
/// 			Type:        pulumi.String("STANDARD"),
/// 			Description: pulumi.String("VMwareEngine standard network sample"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vmwareengine.NewNetworkPolicy(ctx, "vmw-engine-network-policy", &vmwareengine.NetworkPolicyArgs{
/// 			Location:            pulumi.String("us-west1"),
/// 			Name:                pulumi.String("sample-network-policy"),
/// 			EdgeServicesCidr:    pulumi.String("192.168.30.0/26"),
/// 			VmwareEngineNetwork: network_policy_nw.ID(),
/// 			Description:         pulumi.String("Sample Network Policy"),
/// 			InternetAccess: &vmwareengine.NetworkPolicyInternetAccessArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			ExternalIp: &vmwareengine.NetworkPolicyExternalIpArgs{
/// 				Enabled: pulumi.Bool(true),
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
/// import com.pulumi.gcp.vmwareengine.Network;
/// import com.pulumi.gcp.vmwareengine.NetworkArgs;
/// import com.pulumi.gcp.vmwareengine.NetworkPolicy;
/// import com.pulumi.gcp.vmwareengine.NetworkPolicyArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.NetworkPolicyInternetAccessArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.NetworkPolicyExternalIpArgs;
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
///         var network_policy_nw = new Network("network-policy-nw", NetworkArgs.builder()
///             .name("sample-network")
///             .location("global")
///             .type("STANDARD")
///             .description("VMwareEngine standard network sample")
///             .build());
///
///         var vmw_engine_network_policy = new NetworkPolicy("vmw-engine-network-policy", NetworkPolicyArgs.builder()
///             .location("us-west1")
///             .name("sample-network-policy")
///             .edgeServicesCidr("192.168.30.0/26")
///             .vmwareEngineNetwork(network_policy_nw.id())
///             .description("Sample Network Policy")
///             .internetAccess(NetworkPolicyInternetAccessArgs.builder()
///                 .enabled(true)
///                 .build())
///             .externalIp(NetworkPolicyExternalIpArgs.builder()
///                 .enabled(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network-policy-nw:
///     type: gcp:vmwareengine:Network
///     properties:
///       name: sample-network
///       location: global
///       type: STANDARD
///       description: VMwareEngine standard network sample
///   vmw-engine-network-policy:
///     type: gcp:vmwareengine:NetworkPolicy
///     properties:
///       location: us-west1
///       name: sample-network-policy
///       edgeServicesCidr: 192.168.30.0/26
///       vmwareEngineNetwork: ${["network-policy-nw"].id}
///       description: Sample Network Policy
///       internetAccess:
///         enabled: true
///       externalIp:
///         enabled: true
/// ```
///
///
/// ## Import
///
/// NetworkPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/networkPolicies/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, NetworkPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/networkPolicy:NetworkPolicy default projects/{{project}}/locations/{{location}}/networkPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/networkPolicy:NetworkPolicy default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/networkPolicy:NetworkPolicy default {{location}}/{{name}}
/// ```
class NetworkPolicy extends pulumi.CustomResource {
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// User-provided description for this network policy.
  late final pulumi.Output<String?> description;

  /// IP address range in CIDR notation used to create internet access and external IP access.
  /// An RFC 1918 CIDR block, with a "/26" prefix, is required. The range cannot overlap with any
  /// prefixes either in the consumer VPC network or in use by the private clouds attached to that VPC network.
  late final pulumi.Output<String> edgeServicesCidr;

  /// Network service that allows External IP addresses to be assigned to VMware workloads.
  /// This service can only be enabled when internetAccess is also enabled.
  /// Structure is documented below.
  late final pulumi.Output<NetworkPolicyExternalIp> externalIp;

  /// Network service that allows VMware workloads to access the internet.
  /// Structure is documented below.
  late final pulumi.Output<NetworkPolicyInternetAccess> internetAccess;

  /// The resource name of the location (region) to create the new network policy in.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-central1
  late final pulumi.Output<String> location;

  /// The ID of the Network Policy.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// System-generated unique identifier for the resource.
  late final pulumi.Output<String> uid;

  /// Last updated time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// The relative resource name of the VMware Engine network. Specify the name in the following form:
  /// projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} where {project}
  /// can either be a project number or a project ID.
  late final pulumi.Output<String> vmwareEngineNetwork;

  /// The canonical name of the VMware Engine network in the form:
  /// projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId}
  late final pulumi.Output<String> vmwareEngineNetworkCanonical;

  /// Creates a new [NetworkPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkPolicy]. {@macro pulumi_vmwareengine_network_policy_network_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkPolicy(
    String name, {
    NetworkPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:vmwareengine/networkPolicy:NetworkPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    edgeServicesCidr = registerOutput<String>('edgeServicesCidr');
    externalIp = registerOutput<NetworkPolicyExternalIp>('externalIp');
    internetAccess = registerOutput<NetworkPolicyInternetAccess>(
      'internetAccess',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    vmwareEngineNetwork = registerOutput<String>('vmwareEngineNetwork');
    vmwareEngineNetworkCanonical = registerOutput<String>(
      'vmwareEngineNetworkCanonical',
    );
  }

  /// Gets an existing [NetworkPolicy] resource's state with the given [name] and [id].
  static NetworkPolicy get(
    String name,
    pulumi.Input<String> id, {
    NetworkPolicyState? state,
  }) {
    return NetworkPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:vmwareengine/networkPolicy:NetworkPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    edgeServicesCidr = registerOutput<String>('edgeServicesCidr');
    externalIp = registerOutput<NetworkPolicyExternalIp>('externalIp');
    internetAccess = registerOutput<NetworkPolicyInternetAccess>(
      'internetAccess',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    vmwareEngineNetwork = registerOutput<String>('vmwareEngineNetwork');
    vmwareEngineNetworkCanonical = registerOutput<String>(
      'vmwareEngineNetworkCanonical',
    );
  }
}
