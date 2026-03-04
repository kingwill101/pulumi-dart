import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_access_rule_args.dart';
import 'external_access_rule_state.dart';

/// External access firewall rules for filtering incoming traffic destined to `ExternalAddress` resources.
///
///
/// To get more information about ExternalAccessRule, see:
///
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.networkPolicies.externalAccessRules)
///
/// ## Example Usage
///
/// ### Vmware Engine External Access Rule Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const external_access_rule_nw = new gcp.vmwareengine.Network("external-access-rule-nw", {
///     name: "sample-nw",
///     location: "global",
///     type: "STANDARD",
///     description: "PC network description.",
/// });
/// const external_access_rule_np = new gcp.vmwareengine.NetworkPolicy("external-access-rule-np", {
///     location: "us-west1",
///     name: "sample-np",
///     edgeServicesCidr: "192.168.30.0/26",
///     vmwareEngineNetwork: external_access_rule_nw.id,
/// });
/// const vmw_engine_external_access_rule = new gcp.vmwareengine.ExternalAccessRule("vmw-engine-external-access-rule", {
///     name: "sample-external-access-rule",
///     parent: external_access_rule_np.id,
///     priority: 101,
///     action: "DENY",
///     ipProtocol: "TCP",
///     sourceIpRanges: [{
///         ipAddressRange: "0.0.0.0/0",
///     }],
///     sourcePorts: ["80"],
///     destinationIpRanges: [{
///         ipAddressRange: "0.0.0.0/0",
///     }],
///     destinationPorts: ["433"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// external_access_rule_nw = gcp.vmwareengine.Network("external-access-rule-nw",
///     name="sample-nw",
///     location="global",
///     type="STANDARD",
///     description="PC network description.")
/// external_access_rule_np = gcp.vmwareengine.NetworkPolicy("external-access-rule-np",
///     location="us-west1",
///     name="sample-np",
///     edge_services_cidr="192.168.30.0/26",
///     vmware_engine_network=external_access_rule_nw.id)
/// vmw_engine_external_access_rule = gcp.vmwareengine.ExternalAccessRule("vmw-engine-external-access-rule",
///     name="sample-external-access-rule",
///     parent=external_access_rule_np.id,
///     priority=101,
///     action="DENY",
///     ip_protocol="TCP",
///     source_ip_ranges=[{
///         "ip_address_range": "0.0.0.0/0",
///     }],
///     source_ports=["80"],
///     destination_ip_ranges=[{
///         "ip_address_range": "0.0.0.0/0",
///     }],
///     destination_ports=["433"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var external_access_rule_nw = new Gcp.VMwareEngine.Network("external-access-rule-nw", new()
///     {
///         Name = "sample-nw",
///         Location = "global",
///         Type = "STANDARD",
///         Description = "PC network description.",
///     });
///
///     var external_access_rule_np = new Gcp.VMwareEngine.NetworkPolicy("external-access-rule-np", new()
///     {
///         Location = "us-west1",
///         Name = "sample-np",
///         EdgeServicesCidr = "192.168.30.0/26",
///         VmwareEngineNetwork = external_access_rule_nw.Id,
///     });
///
///     var vmw_engine_external_access_rule = new Gcp.VMwareEngine.ExternalAccessRule("vmw-engine-external-access-rule", new()
///     {
///         Name = "sample-external-access-rule",
///         Parent = external_access_rule_np.Id,
///         Priority = 101,
///         Action = "DENY",
///         IpProtocol = "TCP",
///         SourceIpRanges = new[]
///         {
///             new Gcp.VMwareEngine.Inputs.ExternalAccessRuleSourceIpRangeArgs
///             {
///                 IpAddressRange = "0.0.0.0/0",
///             },
///         },
///         SourcePorts = new[]
///         {
///             "80",
///         },
///         DestinationIpRanges = new[]
///         {
///             new Gcp.VMwareEngine.Inputs.ExternalAccessRuleDestinationIpRangeArgs
///             {
///                 IpAddressRange = "0.0.0.0/0",
///             },
///         },
///         DestinationPorts = new[]
///         {
///             "433",
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
/// 		external_access_rule_nw, err := vmwareengine.NewNetwork(ctx, "external-access-rule-nw", &vmwareengine.NetworkArgs{
/// 			Name:        pulumi.String("sample-nw"),
/// 			Location:    pulumi.String("global"),
/// 			Type:        pulumi.String("STANDARD"),
/// 			Description: pulumi.String("PC network description."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		external_access_rule_np, err := vmwareengine.NewNetworkPolicy(ctx, "external-access-rule-np", &vmwareengine.NetworkPolicyArgs{
/// 			Location:            pulumi.String("us-west1"),
/// 			Name:                pulumi.String("sample-np"),
/// 			EdgeServicesCidr:    pulumi.String("192.168.30.0/26"),
/// 			VmwareEngineNetwork: external_access_rule_nw.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vmwareengine.NewExternalAccessRule(ctx, "vmw-engine-external-access-rule", &vmwareengine.ExternalAccessRuleArgs{
/// 			Name:       pulumi.String("sample-external-access-rule"),
/// 			Parent:     external_access_rule_np.ID(),
/// 			Priority:   pulumi.Int(101),
/// 			Action:     pulumi.String("DENY"),
/// 			IpProtocol: pulumi.String("TCP"),
/// 			SourceIpRanges: vmwareengine.ExternalAccessRuleSourceIpRangeArray{
/// 				&vmwareengine.ExternalAccessRuleSourceIpRangeArgs{
/// 					IpAddressRange: pulumi.String("0.0.0.0/0"),
/// 				},
/// 			},
/// 			SourcePorts: pulumi.StringArray{
/// 				pulumi.String("80"),
/// 			},
/// 			DestinationIpRanges: vmwareengine.ExternalAccessRuleDestinationIpRangeArray{
/// 				&vmwareengine.ExternalAccessRuleDestinationIpRangeArgs{
/// 					IpAddressRange: pulumi.String("0.0.0.0/0"),
/// 				},
/// 			},
/// 			DestinationPorts: pulumi.StringArray{
/// 				pulumi.String("433"),
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
/// import com.pulumi.gcp.vmwareengine.ExternalAccessRule;
/// import com.pulumi.gcp.vmwareengine.ExternalAccessRuleArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.ExternalAccessRuleSourceIpRangeArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.ExternalAccessRuleDestinationIpRangeArgs;
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
///         var external_access_rule_nw = new Network("external-access-rule-nw", NetworkArgs.builder()
///             .name("sample-nw")
///             .location("global")
///             .type("STANDARD")
///             .description("PC network description.")
///             .build());
///
///         var external_access_rule_np = new NetworkPolicy("external-access-rule-np", NetworkPolicyArgs.builder()
///             .location("us-west1")
///             .name("sample-np")
///             .edgeServicesCidr("192.168.30.0/26")
///             .vmwareEngineNetwork(external_access_rule_nw.id())
///             .build());
///
///         var vmw_engine_external_access_rule = new ExternalAccessRule("vmw-engine-external-access-rule", ExternalAccessRuleArgs.builder()
///             .name("sample-external-access-rule")
///             .parent(external_access_rule_np.id())
///             .priority(101)
///             .action("DENY")
///             .ipProtocol("TCP")
///             .sourceIpRanges(ExternalAccessRuleSourceIpRangeArgs.builder()
///                 .ipAddressRange("0.0.0.0/0")
///                 .build())
///             .sourcePorts("80")
///             .destinationIpRanges(ExternalAccessRuleDestinationIpRangeArgs.builder()
///                 .ipAddressRange("0.0.0.0/0")
///                 .build())
///             .destinationPorts("433")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   external-access-rule-nw:
///     type: gcp:vmwareengine:Network
///     properties:
///       name: sample-nw
///       location: global
///       type: STANDARD
///       description: PC network description.
///   external-access-rule-np:
///     type: gcp:vmwareengine:NetworkPolicy
///     properties:
///       location: us-west1
///       name: sample-np
///       edgeServicesCidr: 192.168.30.0/26
///       vmwareEngineNetwork: ${["external-access-rule-nw"].id}
///   vmw-engine-external-access-rule:
///     type: gcp:vmwareengine:ExternalAccessRule
///     properties:
///       name: sample-external-access-rule
///       parent: ${["external-access-rule-np"].id}
///       priority: 101
///       action: DENY
///       ipProtocol: TCP
///       sourceIpRanges:
///         - ipAddressRange: 0.0.0.0/0
///       sourcePorts:
///         - '80'
///       destinationIpRanges:
///         - ipAddressRange: 0.0.0.0/0
///       destinationPorts:
///         - '433'
/// ```
///
/// ### Vmware Engine External Access Rule Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const external_access_rule_nw = new gcp.vmwareengine.Network("external-access-rule-nw", {
///     name: "sample-nw",
///     location: "global",
///     type: "STANDARD",
///     description: "PC network description.",
/// });
/// const external_access_rule_pc = new gcp.vmwareengine.PrivateCloud("external-access-rule-pc", {
///     location: "us-west1-a",
///     name: "sample-pc",
///     description: "Sample test PC.",
///     networkConfig: {
///         managementCidr: "192.168.50.0/24",
///         vmwareEngineNetwork: external_access_rule_nw.id,
///     },
///     managementCluster: {
///         clusterId: "sample-mgmt-cluster",
///         nodeTypeConfigs: [{
///             nodeTypeId: "standard-72",
///             nodeCount: 3,
///         }],
///     },
/// });
/// const external_access_rule_np = new gcp.vmwareengine.NetworkPolicy("external-access-rule-np", {
///     location: "us-west1",
///     name: "sample-np",
///     edgeServicesCidr: "192.168.30.0/26",
///     vmwareEngineNetwork: external_access_rule_nw.id,
/// });
/// const external_access_rule_ea = new gcp.vmwareengine.ExternalAddress("external-access-rule-ea", {
///     name: "sample-ea",
///     parent: external_access_rule_pc.id,
///     internalIp: "192.168.0.65",
/// });
/// const vmw_engine_external_access_rule = new gcp.vmwareengine.ExternalAccessRule("vmw-engine-external-access-rule", {
///     name: "sample-external-access-rule",
///     parent: external_access_rule_np.id,
///     description: "Sample Description",
///     priority: 101,
///     action: "ALLOW",
///     ipProtocol: "tcp",
///     sourceIpRanges: [{
///         ipAddressRange: "0.0.0.0/0",
///     }],
///     sourcePorts: ["80"],
///     destinationIpRanges: [{
///         externalAddress: external_access_rule_ea.id,
///     }],
///     destinationPorts: ["433"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// external_access_rule_nw = gcp.vmwareengine.Network("external-access-rule-nw",
///     name="sample-nw",
///     location="global",
///     type="STANDARD",
///     description="PC network description.")
/// external_access_rule_pc = gcp.vmwareengine.PrivateCloud("external-access-rule-pc",
///     location="us-west1-a",
///     name="sample-pc",
///     description="Sample test PC.",
///     network_config={
///         "management_cidr": "192.168.50.0/24",
///         "vmware_engine_network": external_access_rule_nw.id,
///     },
///     management_cluster={
///         "cluster_id": "sample-mgmt-cluster",
///         "node_type_configs": [{
///             "node_type_id": "standard-72",
///             "node_count": 3,
///         }],
///     })
/// external_access_rule_np = gcp.vmwareengine.NetworkPolicy("external-access-rule-np",
///     location="us-west1",
///     name="sample-np",
///     edge_services_cidr="192.168.30.0/26",
///     vmware_engine_network=external_access_rule_nw.id)
/// external_access_rule_ea = gcp.vmwareengine.ExternalAddress("external-access-rule-ea",
///     name="sample-ea",
///     parent=external_access_rule_pc.id,
///     internal_ip="192.168.0.65")
/// vmw_engine_external_access_rule = gcp.vmwareengine.ExternalAccessRule("vmw-engine-external-access-rule",
///     name="sample-external-access-rule",
///     parent=external_access_rule_np.id,
///     description="Sample Description",
///     priority=101,
///     action="ALLOW",
///     ip_protocol="tcp",
///     source_ip_ranges=[{
///         "ip_address_range": "0.0.0.0/0",
///     }],
///     source_ports=["80"],
///     destination_ip_ranges=[{
///         "external_address": external_access_rule_ea.id,
///     }],
///     destination_ports=["433"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var external_access_rule_nw = new Gcp.VMwareEngine.Network("external-access-rule-nw", new()
///     {
///         Name = "sample-nw",
///         Location = "global",
///         Type = "STANDARD",
///         Description = "PC network description.",
///     });
///
///     var external_access_rule_pc = new Gcp.VMwareEngine.PrivateCloud("external-access-rule-pc", new()
///     {
///         Location = "us-west1-a",
///         Name = "sample-pc",
///         Description = "Sample test PC.",
///         NetworkConfig = new Gcp.VMwareEngine.Inputs.PrivateCloudNetworkConfigArgs
///         {
///             ManagementCidr = "192.168.50.0/24",
///             VmwareEngineNetwork = external_access_rule_nw.Id,
///         },
///         ManagementCluster = new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterArgs
///         {
///             ClusterId = "sample-mgmt-cluster",
///             NodeTypeConfigs = new[]
///             {
///                 new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterNodeTypeConfigArgs
///                 {
///                     NodeTypeId = "standard-72",
///                     NodeCount = 3,
///                 },
///             },
///         },
///     });
///
///     var external_access_rule_np = new Gcp.VMwareEngine.NetworkPolicy("external-access-rule-np", new()
///     {
///         Location = "us-west1",
///         Name = "sample-np",
///         EdgeServicesCidr = "192.168.30.0/26",
///         VmwareEngineNetwork = external_access_rule_nw.Id,
///     });
///
///     var external_access_rule_ea = new Gcp.VMwareEngine.ExternalAddress("external-access-rule-ea", new()
///     {
///         Name = "sample-ea",
///         Parent = external_access_rule_pc.Id,
///         InternalIp = "192.168.0.65",
///     });
///
///     var vmw_engine_external_access_rule = new Gcp.VMwareEngine.ExternalAccessRule("vmw-engine-external-access-rule", new()
///     {
///         Name = "sample-external-access-rule",
///         Parent = external_access_rule_np.Id,
///         Description = "Sample Description",
///         Priority = 101,
///         Action = "ALLOW",
///         IpProtocol = "tcp",
///         SourceIpRanges = new[]
///         {
///             new Gcp.VMwareEngine.Inputs.ExternalAccessRuleSourceIpRangeArgs
///             {
///                 IpAddressRange = "0.0.0.0/0",
///             },
///         },
///         SourcePorts = new[]
///         {
///             "80",
///         },
///         DestinationIpRanges = new[]
///         {
///             new Gcp.VMwareEngine.Inputs.ExternalAccessRuleDestinationIpRangeArgs
///             {
///                 ExternalAddress = external_access_rule_ea.Id,
///             },
///         },
///         DestinationPorts = new[]
///         {
///             "433",
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
/// 		external_access_rule_nw, err := vmwareengine.NewNetwork(ctx, "external-access-rule-nw", &vmwareengine.NetworkArgs{
/// 			Name:        pulumi.String("sample-nw"),
/// 			Location:    pulumi.String("global"),
/// 			Type:        pulumi.String("STANDARD"),
/// 			Description: pulumi.String("PC network description."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		external_access_rule_pc, err := vmwareengine.NewPrivateCloud(ctx, "external-access-rule-pc", &vmwareengine.PrivateCloudArgs{
/// 			Location:    pulumi.String("us-west1-a"),
/// 			Name:        pulumi.String("sample-pc"),
/// 			Description: pulumi.String("Sample test PC."),
/// 			NetworkConfig: &vmwareengine.PrivateCloudNetworkConfigArgs{
/// 				ManagementCidr:      pulumi.String("192.168.50.0/24"),
/// 				VmwareEngineNetwork: external_access_rule_nw.ID(),
/// 			},
/// 			ManagementCluster: &vmwareengine.PrivateCloudManagementClusterArgs{
/// 				ClusterId: pulumi.String("sample-mgmt-cluster"),
/// 				NodeTypeConfigs: vmwareengine.PrivateCloudManagementClusterNodeTypeConfigArray{
/// 					&vmwareengine.PrivateCloudManagementClusterNodeTypeConfigArgs{
/// 						NodeTypeId: pulumi.String("standard-72"),
/// 						NodeCount:  pulumi.Int(3),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		external_access_rule_np, err := vmwareengine.NewNetworkPolicy(ctx, "external-access-rule-np", &vmwareengine.NetworkPolicyArgs{
/// 			Location:            pulumi.String("us-west1"),
/// 			Name:                pulumi.String("sample-np"),
/// 			EdgeServicesCidr:    pulumi.String("192.168.30.0/26"),
/// 			VmwareEngineNetwork: external_access_rule_nw.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		external_access_rule_ea, err := vmwareengine.NewExternalAddress(ctx, "external-access-rule-ea", &vmwareengine.ExternalAddressArgs{
/// 			Name:       pulumi.String("sample-ea"),
/// 			Parent:     external_access_rule_pc.ID(),
/// 			InternalIp: pulumi.String("192.168.0.65"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vmwareengine.NewExternalAccessRule(ctx, "vmw-engine-external-access-rule", &vmwareengine.ExternalAccessRuleArgs{
/// 			Name:        pulumi.String("sample-external-access-rule"),
/// 			Parent:      external_access_rule_np.ID(),
/// 			Description: pulumi.String("Sample Description"),
/// 			Priority:    pulumi.Int(101),
/// 			Action:      pulumi.String("ALLOW"),
/// 			IpProtocol:  pulumi.String("tcp"),
/// 			SourceIpRanges: vmwareengine.ExternalAccessRuleSourceIpRangeArray{
/// 				&vmwareengine.ExternalAccessRuleSourceIpRangeArgs{
/// 					IpAddressRange: pulumi.String("0.0.0.0/0"),
/// 				},
/// 			},
/// 			SourcePorts: pulumi.StringArray{
/// 				pulumi.String("80"),
/// 			},
/// 			DestinationIpRanges: vmwareengine.ExternalAccessRuleDestinationIpRangeArray{
/// 				&vmwareengine.ExternalAccessRuleDestinationIpRangeArgs{
/// 					ExternalAddress: external_access_rule_ea.ID(),
/// 				},
/// 			},
/// 			DestinationPorts: pulumi.StringArray{
/// 				pulumi.String("433"),
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
/// import com.pulumi.gcp.vmwareengine.PrivateCloud;
/// import com.pulumi.gcp.vmwareengine.PrivateCloudArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudNetworkConfigArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudManagementClusterArgs;
/// import com.pulumi.gcp.vmwareengine.NetworkPolicy;
/// import com.pulumi.gcp.vmwareengine.NetworkPolicyArgs;
/// import com.pulumi.gcp.vmwareengine.ExternalAddress;
/// import com.pulumi.gcp.vmwareengine.ExternalAddressArgs;
/// import com.pulumi.gcp.vmwareengine.ExternalAccessRule;
/// import com.pulumi.gcp.vmwareengine.ExternalAccessRuleArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.ExternalAccessRuleSourceIpRangeArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.ExternalAccessRuleDestinationIpRangeArgs;
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
///         var external_access_rule_nw = new Network("external-access-rule-nw", NetworkArgs.builder()
///             .name("sample-nw")
///             .location("global")
///             .type("STANDARD")
///             .description("PC network description.")
///             .build());
///
///         var external_access_rule_pc = new PrivateCloud("external-access-rule-pc", PrivateCloudArgs.builder()
///             .location("us-west1-a")
///             .name("sample-pc")
///             .description("Sample test PC.")
///             .networkConfig(PrivateCloudNetworkConfigArgs.builder()
///                 .managementCidr("192.168.50.0/24")
///                 .vmwareEngineNetwork(external_access_rule_nw.id())
///                 .build())
///             .managementCluster(PrivateCloudManagementClusterArgs.builder()
///                 .clusterId("sample-mgmt-cluster")
///                 .nodeTypeConfigs(PrivateCloudManagementClusterNodeTypeConfigArgs.builder()
///                     .nodeTypeId("standard-72")
///                     .nodeCount(3)
///                     .build())
///                 .build())
///             .build());
///
///         var external_access_rule_np = new NetworkPolicy("external-access-rule-np", NetworkPolicyArgs.builder()
///             .location("us-west1")
///             .name("sample-np")
///             .edgeServicesCidr("192.168.30.0/26")
///             .vmwareEngineNetwork(external_access_rule_nw.id())
///             .build());
///
///         var external_access_rule_ea = new ExternalAddress("external-access-rule-ea", ExternalAddressArgs.builder()
///             .name("sample-ea")
///             .parent(external_access_rule_pc.id())
///             .internalIp("192.168.0.65")
///             .build());
///
///         var vmw_engine_external_access_rule = new ExternalAccessRule("vmw-engine-external-access-rule", ExternalAccessRuleArgs.builder()
///             .name("sample-external-access-rule")
///             .parent(external_access_rule_np.id())
///             .description("Sample Description")
///             .priority(101)
///             .action("ALLOW")
///             .ipProtocol("tcp")
///             .sourceIpRanges(ExternalAccessRuleSourceIpRangeArgs.builder()
///                 .ipAddressRange("0.0.0.0/0")
///                 .build())
///             .sourcePorts("80")
///             .destinationIpRanges(ExternalAccessRuleDestinationIpRangeArgs.builder()
///                 .externalAddress(external_access_rule_ea.id())
///                 .build())
///             .destinationPorts("433")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   external-access-rule-nw:
///     type: gcp:vmwareengine:Network
///     properties:
///       name: sample-nw
///       location: global
///       type: STANDARD
///       description: PC network description.
///   external-access-rule-pc:
///     type: gcp:vmwareengine:PrivateCloud
///     properties:
///       location: us-west1-a
///       name: sample-pc
///       description: Sample test PC.
///       networkConfig:
///         managementCidr: 192.168.50.0/24
///         vmwareEngineNetwork: ${["external-access-rule-nw"].id}
///       managementCluster:
///         clusterId: sample-mgmt-cluster
///         nodeTypeConfigs:
///           - nodeTypeId: standard-72
///             nodeCount: 3
///   external-access-rule-np:
///     type: gcp:vmwareengine:NetworkPolicy
///     properties:
///       location: us-west1
///       name: sample-np
///       edgeServicesCidr: 192.168.30.0/26
///       vmwareEngineNetwork: ${["external-access-rule-nw"].id}
///   external-access-rule-ea:
///     type: gcp:vmwareengine:ExternalAddress
///     properties:
///       name: sample-ea
///       parent: ${["external-access-rule-pc"].id}
///       internalIp: 192.168.0.65
///   vmw-engine-external-access-rule:
///     type: gcp:vmwareengine:ExternalAccessRule
///     properties:
///       name: sample-external-access-rule
///       parent: ${["external-access-rule-np"].id}
///       description: Sample Description
///       priority: 101
///       action: ALLOW
///       ipProtocol: tcp
///       sourceIpRanges:
///         - ipAddressRange: 0.0.0.0/0
///       sourcePorts:
///         - '80'
///       destinationIpRanges:
///         - externalAddress: ${["external-access-rule-ea"].id}
///       destinationPorts:
///         - '433'
/// ```
///
///
/// ## Import
///
/// ExternalAccessRule can be imported using any of these accepted formats:
///
/// * `{{parent}}/externalAccessRules/{{name}}`
///
/// When using the `pulumi import` command, ExternalAccessRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/externalAccessRule:ExternalAccessRule default {{parent}}/externalAccessRules/{{name}}
/// ```
class ExternalAccessRule extends pulumi.CustomResource {
  /// The action that the external access rule performs.
  /// Possible values are: `ALLOW`, `DENY`.
  late final pulumi.Output<String> action;

  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// User-provided description for the external access rule.
  late final pulumi.Output<String?> description;

  /// If destination ranges are specified, the external access rule applies only to
  /// traffic that has a destination IP address in these ranges.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> destinationIpRanges;

  /// A list of destination ports to which the external access rule applies.
  late final pulumi.Output<List<String>> destinationPorts;

  /// The IP protocol to which the external access rule applies.
  late final pulumi.Output<String> ipProtocol;

  /// The ID of the external access rule.
  late final pulumi.Output<String> name;

  /// The resource name of the network policy.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/networkPolicies/my-policy
  late final pulumi.Output<String> parent;

  /// External access rule priority, which determines the external access rule to use when multiple rules apply.
  late final pulumi.Output<int> priority;

  /// If source ranges are specified, the external access rule applies only to
  /// traffic that has a source IP address in these ranges.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> sourceIpRanges;

  /// A list of source ports to which the external access rule applies.
  late final pulumi.Output<List<String>> sourcePorts;

  /// State of the Cluster.
  late final pulumi.Output<String> state;

  /// System-generated unique identifier for the resource.
  late final pulumi.Output<String> uid;

  /// Last updated time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ExternalAccessRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExternalAccessRule]. {@macro pulumi_vmwareengine_external_access_rule_external_access_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExternalAccessRule(
    String name, {
    ExternalAccessRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:vmwareengine/externalAccessRule:ExternalAccessRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String>('action');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    destinationIpRanges = registerOutput<List<Map<String, dynamic>>>(
      'destinationIpRanges',
    );
    destinationPorts = registerOutput<List<String>>('destinationPorts');
    ipProtocol = registerOutput<String>('ipProtocol');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    priority = registerOutput<int>('priority');
    sourceIpRanges = registerOutput<List<Map<String, dynamic>>>(
      'sourceIpRanges',
    );
    sourcePorts = registerOutput<List<String>>('sourcePorts');
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [ExternalAccessRule] resource's state with the given [name] and [id].
  static ExternalAccessRule get(
    String name,
    pulumi.Input<String> id, {
    ExternalAccessRuleState? state,
  }) {
    return ExternalAccessRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ExternalAccessRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:vmwareengine/externalAccessRule:ExternalAccessRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String>('action');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    destinationIpRanges = registerOutput<List<Map<String, dynamic>>>(
      'destinationIpRanges',
    );
    destinationPorts = registerOutput<List<String>>('destinationPorts');
    ipProtocol = registerOutput<String>('ipProtocol');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    priority = registerOutput<int>('priority');
    sourceIpRanges = registerOutput<List<Map<String, dynamic>>>(
      'sourceIpRanges',
    );
    sourcePorts = registerOutput<List<String>>('sourcePorts');
    this.state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
