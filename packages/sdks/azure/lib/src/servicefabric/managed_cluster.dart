import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_args.dart';
import 'managed_cluster_authentication.dart';
import 'managed_cluster_state.dart';

/// Manages a Resource Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.servicefabric.ManagedCluster("example", {
///     name: "example",
///     resourceGroupName: "example",
///     location: "West Europe",
///     httpGatewayPort: 4567,
///     lbRules: [{
///         backendPort: 38080,
///         frontendPort: 80,
///         probeProtocol: "http",
///         probeRequestPath: "/test",
///         protocol: "tcp",
///     }],
///     clientConnectionPort: 12345,
///     nodeTypes: [{
///         dataDiskSizeGb: 130,
///         name: "test1",
///         primary: true,
///         applicationPortRange: "30000-49000",
///         ephemeralPortRange: "10000-20000",
///         vmSize: "Standard_DS1_v2",
///         vmImagePublisher: "MicrosoftWindowsServer",
///         vmImageSku: "2019-Datacenter-with-Containers",
///         vmImageOffer: "WindowsServer",
///         vmImageVersion: "latest",
///         vmInstanceCount: 5,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.servicefabric.ManagedCluster("example",
///     name="example",
///     resource_group_name="example",
///     location="West Europe",
///     http_gateway_port=4567,
///     lb_rules=[{
///         "backend_port": 38080,
///         "frontend_port": 80,
///         "probe_protocol": "http",
///         "probe_request_path": "/test",
///         "protocol": "tcp",
///     }],
///     client_connection_port=12345,
///     node_types=[{
///         "data_disk_size_gb": 130,
///         "name": "test1",
///         "primary": True,
///         "application_port_range": "30000-49000",
///         "ephemeral_port_range": "10000-20000",
///         "vm_size": "Standard_DS1_v2",
///         "vm_image_publisher": "MicrosoftWindowsServer",
///         "vm_image_sku": "2019-Datacenter-with-Containers",
///         "vm_image_offer": "WindowsServer",
///         "vm_image_version": "latest",
///         "vm_instance_count": 5,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.ServiceFabric.ManagedCluster("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = "example",
///         Location = "West Europe",
///         HttpGatewayPort = 4567,
///         LbRules = new[]
///         {
///             new Azure.ServiceFabric.Inputs.ManagedClusterLbRuleArgs
///             {
///                 BackendPort = 38080,
///                 FrontendPort = 80,
///                 ProbeProtocol = "http",
///                 ProbeRequestPath = "/test",
///                 Protocol = "tcp",
///             },
///         },
///         ClientConnectionPort = 12345,
///         NodeTypes = new[]
///         {
///             new Azure.ServiceFabric.Inputs.ManagedClusterNodeTypeArgs
///             {
///                 DataDiskSizeGb = 130,
///                 Name = "test1",
///                 Primary = true,
///                 ApplicationPortRange = "30000-49000",
///                 EphemeralPortRange = "10000-20000",
///                 VmSize = "Standard_DS1_v2",
///                 VmImagePublisher = "MicrosoftWindowsServer",
///                 VmImageSku = "2019-Datacenter-with-Containers",
///                 VmImageOffer = "WindowsServer",
///                 VmImageVersion = "latest",
///                 VmInstanceCount = 5,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/servicefabric"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicefabric.NewManagedCluster(ctx, "example", &servicefabric.ManagedClusterArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: pulumi.String("example"),
/// 			Location:          pulumi.String("West Europe"),
/// 			HttpGatewayPort:   pulumi.Int(4567),
/// 			LbRules: servicefabric.ManagedClusterLbRuleArray{
/// 				&servicefabric.ManagedClusterLbRuleArgs{
/// 					BackendPort:      pulumi.Int(38080),
/// 					FrontendPort:     pulumi.Int(80),
/// 					ProbeProtocol:    pulumi.String("http"),
/// 					ProbeRequestPath: pulumi.String("/test"),
/// 					Protocol:         pulumi.String("tcp"),
/// 				},
/// 			},
/// 			ClientConnectionPort: pulumi.Int(12345),
/// 			NodeTypes: servicefabric.ManagedClusterNodeTypeArray{
/// 				&servicefabric.ManagedClusterNodeTypeArgs{
/// 					DataDiskSizeGb:       pulumi.Int(130),
/// 					Name:                 pulumi.String("test1"),
/// 					Primary:              pulumi.Bool(true),
/// 					ApplicationPortRange: pulumi.String("30000-49000"),
/// 					EphemeralPortRange:   pulumi.String("10000-20000"),
/// 					VmSize:               pulumi.String("Standard_DS1_v2"),
/// 					VmImagePublisher:     pulumi.String("MicrosoftWindowsServer"),
/// 					VmImageSku:           pulumi.String("2019-Datacenter-with-Containers"),
/// 					VmImageOffer:         pulumi.String("WindowsServer"),
/// 					VmImageVersion:       pulumi.String("latest"),
/// 					VmInstanceCount:      pulumi.Int(5),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_servicefabric_managedcluster" "example" {
///   name                = "example"
///   resource_group_name = "example"
///   location            = "West Europe"
///   http_gateway_port   = 4567
///   lb_rules {
///     backend_port       = 38080
///     frontend_port      = 80
///     probe_protocol     = "http"
///     probe_request_path = "/test"
///     protocol           = "tcp"
///   }
///   client_connection_port = 12345
///   node_types {
///     data_disk_size_gb      = 130
///     name                   = "test1"
///     primary                = true
///     application_port_range = "30000-49000"
///     ephemeral_port_range   = "10000-20000"
///     vm_size                = "Standard_DS1_v2"
///     vm_image_publisher     = "MicrosoftWindowsServer"
///     vm_image_sku           = "2019-Datacenter-with-Containers"
///     vm_image_offer         = "WindowsServer"
///     vm_image_version       = "latest"
///     vm_instance_count      = 5
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.servicefabric.ManagedCluster;
/// import com.pulumi.azure.servicefabric.ManagedClusterArgs;
/// import com.pulumi.azure.servicefabric.inputs.ManagedClusterLbRuleArgs;
/// import com.pulumi.azure.servicefabric.inputs.ManagedClusterNodeTypeArgs;
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
///         var example = new ManagedCluster("example", ManagedClusterArgs.builder()
///             .name("example")
///             .resourceGroupName("example")
///             .location("West Europe")
///             .httpGatewayPort(4567)
///             .lbRules(ManagedClusterLbRuleArgs.builder()
///                 .backendPort(38080)
///                 .frontendPort(80)
///                 .probeProtocol("http")
///                 .probeRequestPath("/test")
///                 .protocol("tcp")
///                 .build())
///             .clientConnectionPort(12345)
///             .nodeTypes(ManagedClusterNodeTypeArgs.builder()
///                 .dataDiskSizeGb(130)
///                 .name("test1")
///                 .primary(true)
///                 .applicationPortRange("30000-49000")
///                 .ephemeralPortRange("10000-20000")
///                 .vmSize("Standard_DS1_v2")
///                 .vmImagePublisher("MicrosoftWindowsServer")
///                 .vmImageSku("2019-Datacenter-with-Containers")
///                 .vmImageOffer("WindowsServer")
///                 .vmImageVersion("latest")
///                 .vmInstanceCount(5)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:servicefabric:ManagedCluster
///     properties:
///       name: example
///       resourceGroupName: example
///       location: West Europe
///       httpGatewayPort: 4567
///       lbRules:
///         - backendPort: 38080
///           frontendPort: 80
///           probeProtocol: http
///           probeRequestPath: /test
///           protocol: tcp
///       clientConnectionPort: 12345
///       nodeTypes:
///         - dataDiskSizeGb: 130
///           name: test1
///           primary: true
///           applicationPortRange: 30000-49000
///           ephemeralPortRange: 10000-20000
///           vmSize: Standard_DS1_v2
///           vmImagePublisher: MicrosoftWindowsServer
///           vmImageSku: 2019-Datacenter-with-Containers
///           vmImageOffer: WindowsServer
///           vmImageVersion: latest
///           vmInstanceCount: 5
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ServiceFabric` - 2024-04-01
///
/// ## Import
///
/// Resource Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:servicefabric/managedCluster:ManagedCluster example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.ServiceFabric/managedClusters/clusterName1
/// ```
class ManagedCluster extends pulumi.CustomResource {
  /// Controls how connections to the cluster are authenticated. A `authentication` block as defined below.
  late final pulumi.Output<ManagedClusterAuthentication?> authentication;
  /// If true, backup service is enabled.
  late final pulumi.Output<bool?> backupServiceEnabled;
  /// Port to use when connecting to the cluster.
  late final pulumi.Output<int> clientConnectionPort;
  /// One or more `customFabricSetting` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> customFabricSettings;
  /// Hostname for the cluster. If unset the cluster's name will be used..
  late final pulumi.Output<String> dnsName;
  /// If true, DNS service is enabled.
  late final pulumi.Output<bool?> dnsServiceEnabled;
  /// Port that should be used by the Service Fabric Explorer to visualize applications and cluster status.
  late final pulumi.Output<int> httpGatewayPort;
  /// One or more `lbRule` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> lbRules;
  /// The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Resource Group. Changing this forces a new Resource Group to be created.
  late final pulumi.Output<String> name;
  /// One or more `nodeType` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> nodeTypes;
  /// Administrator password for the VMs that will be created as part of this cluster.
  late final pulumi.Output<String?> password;
  /// The name of the Resource Group where the Resource Group should exist. Changing this forces a new Resource Group to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// SKU for this cluster. Changing this forces a new resource to be created. Default is `Basic`, allowed values are either `Basic` or `Standard`.
  late final pulumi.Output<String?> sku;
  /// The resource ID of the Subnet. Changing this forces a new Resource Group to be created.
  late final pulumi.Output<String?> subnetId;
  /// A mapping of tags which should be assigned to the Resource Group.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Upgrade wave for the fabric runtime. Default is `Wave0`, allowed value must be one of `Wave0`, `Wave1`, or `Wave2`.
  late final pulumi.Output<String?> upgradeWave;
  /// Administrator password for the VMs that will be created as part of this cluster.
  late final pulumi.Output<String?> username;

  /// Creates a new [ManagedCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedCluster]. {@macro pulumi_servicefabric_managed_cluster_managed_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedCluster(
    String name, {
    ManagedClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:servicefabric/managedCluster:ManagedCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authentication = registerOutput<ManagedClusterAuthentication?>('authentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backupServiceEnabled = registerOutput<bool?>('backupServiceEnabled');
    clientConnectionPort = registerOutput<int>('clientConnectionPort');
    customFabricSettings = registerOutput<List<Map<String, dynamic>>?>('customFabricSettings');
    dnsName = registerOutput<String>('dnsName');
    dnsServiceEnabled = registerOutput<bool?>('dnsServiceEnabled');
    httpGatewayPort = registerOutput<int>('httpGatewayPort');
    lbRules = registerOutput<List<Map<String, dynamic>>>('lbRules');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nodeTypes = registerOutput<List<Map<String, dynamic>>?>('nodeTypes');
    password = registerOutput<String?>('password');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String?>('sku');
    subnetId = registerOutput<String?>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags');
    upgradeWave = registerOutput<String?>('upgradeWave');
    username = registerOutput<String?>('username');
  }

  /// Gets an existing [ManagedCluster] resource's state with the given [name] and [id].
  static ManagedCluster get(
    String name,
    pulumi.Input<String> id, {
    ManagedClusterState? state,
  }) {
    return ManagedCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:servicefabric/managedCluster:ManagedCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authentication = registerOutput<ManagedClusterAuthentication?>('authentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backupServiceEnabled = registerOutput<bool?>('backupServiceEnabled');
    clientConnectionPort = registerOutput<int>('clientConnectionPort');
    customFabricSettings = registerOutput<List<Map<String, dynamic>>?>('customFabricSettings');
    dnsName = registerOutput<String>('dnsName');
    dnsServiceEnabled = registerOutput<bool?>('dnsServiceEnabled');
    httpGatewayPort = registerOutput<int>('httpGatewayPort');
    lbRules = registerOutput<List<Map<String, dynamic>>>('lbRules');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nodeTypes = registerOutput<List<Map<String, dynamic>>?>('nodeTypes');
    password = registerOutput<String?>('password');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String?>('sku');
    subnetId = registerOutput<String?>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags');
    upgradeWave = registerOutput<String?>('upgradeWave');
    username = registerOutput<String?>('username');
  }
}
