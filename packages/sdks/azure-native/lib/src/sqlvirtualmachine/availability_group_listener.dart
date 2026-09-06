import 'package:pulumi/pulumi.dart' as pulumi;
import 'ag_configuration_response.dart';
import 'availability_group_listener_args.dart';
import 'load_balancer_configuration_response.dart';
import 'multi_subnet_ip_configuration_response.dart';
import 'system_data_response.dart';

/// A SQL Server availability group listener.
///
/// Uses Azure REST API version 2023-10-01. In version 2.x of the Azure Native provider, it used API version 2022-02-01.
///
/// Other available API versions: 2022-02-01, 2022-07-01-preview, 2022-08-01-preview, 2023-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sqlvirtualmachine [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates an availability group listener using load balancer. This is used for VMs present in single subnet.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var availabilityGroupListener = new AzureNative.SqlVirtualMachine.AvailabilityGroupListener("availabilityGroupListener", new()
///     {
///         AvailabilityGroupListenerName = "agl-test",
///         AvailabilityGroupName = "ag-test",
///         LoadBalancerConfigurations = new[]
///         {
///             new AzureNative.SqlVirtualMachine.Inputs.LoadBalancerConfigurationArgs
///             {
///                 LoadBalancerResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/loadBalancers/lb-test",
///                 PrivateIpAddress = new AzureNative.SqlVirtualMachine.Inputs.PrivateIPAddressArgs
///                 {
///                     IpAddress = "10.1.0.112",
///                     SubnetResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default",
///                 },
///                 ProbePort = 59983,
///                 SqlVirtualMachineInstances = new[]
///                 {
///                     "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm2",
///                     "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm3",
///                 },
///             },
///         },
///         Port = 1433,
///         ResourceGroupName = "testrg",
///         SqlVirtualMachineGroupName = "testvmgroup",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	sqlvirtualmachine "github.com/pulumi/pulumi-azure-native-sdk/sqlvirtualmachine/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sqlvirtualmachine.NewAvailabilityGroupListener(ctx, "availabilityGroupListener", &sqlvirtualmachine.AvailabilityGroupListenerArgs{
/// 			AvailabilityGroupListenerName: pulumi.String("agl-test"),
/// 			AvailabilityGroupName:         pulumi.String("ag-test"),
/// 			LoadBalancerConfigurations: sqlvirtualmachine.LoadBalancerConfigurationArray{
/// 				&sqlvirtualmachine.LoadBalancerConfigurationArgs{
/// 					LoadBalancerResourceId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/loadBalancers/lb-test"),
/// 					PrivateIpAddress: &sqlvirtualmachine.PrivateIPAddressArgs{
/// 						IpAddress:        pulumi.String("10.1.0.112"),
/// 						SubnetResourceId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default"),
/// 					},
/// 					ProbePort: pulumi.Int(59983),
/// 					SqlVirtualMachineInstances: pulumi.StringArray{
/// 						pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm2"),
/// 						pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm3"),
/// 					},
/// 				},
/// 			},
/// 			Port:                       pulumi.Int(1433),
/// 			ResourceGroupName:          pulumi.String("testrg"),
/// 			SqlVirtualMachineGroupName: pulumi.String("testvmgroup"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sqlvirtualmachine_availabilitygrouplistener" "availabilityGroupListener" {
///   availability_group_listener_name = "agl-test"
///   availability_group_name          = "ag-test"
///   load_balancer_configurations {
///     load_balancer_resource_id = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/loadBalancers/lb-test"
///     private_ip_address = {
///       ip_address         = "10.1.0.112"
///       subnet_resource_id = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default"
///     }
///     probe_port                    = 59983
///     sql_virtual_machine_instances = ["/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm2", "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm3"]
///   }
///   port                           = 1433
///   resource_group_name            = "testrg"
///   sql_virtual_machine_group_name = "testvmgroup"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sqlvirtualmachine.AvailabilityGroupListener;
/// import com.pulumi.azurenative.sqlvirtualmachine.AvailabilityGroupListenerArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.LoadBalancerConfigurationArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.PrivateIPAddressArgs;
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
///         var availabilityGroupListener = new AvailabilityGroupListener("availabilityGroupListener", AvailabilityGroupListenerArgs.builder()
///             .availabilityGroupListenerName("agl-test")
///             .availabilityGroupName("ag-test")
///             .loadBalancerConfigurations(LoadBalancerConfigurationArgs.builder()
///                 .loadBalancerResourceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/loadBalancers/lb-test")
///                 .privateIpAddress(PrivateIPAddressArgs.builder()
///                     .ipAddress("10.1.0.112")
///                     .subnetResourceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default")
///                     .build())
///                 .probePort(59983)
///                 .sqlVirtualMachineInstances(
///                     "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm2",
///                     "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm3")
///                 .build())
///             .port(1433)
///             .resourceGroupName("testrg")
///             .sqlVirtualMachineGroupName("testvmgroup")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const availabilityGroupListener = new azure_native.sqlvirtualmachine.AvailabilityGroupListener("availabilityGroupListener", {
///     availabilityGroupListenerName: "agl-test",
///     availabilityGroupName: "ag-test",
///     loadBalancerConfigurations: [{
///         loadBalancerResourceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/loadBalancers/lb-test",
///         privateIpAddress: {
///             ipAddress: "10.1.0.112",
///             subnetResourceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default",
///         },
///         probePort: 59983,
///         sqlVirtualMachineInstances: [
///             "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm2",
///             "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm3",
///         ],
///     }],
///     port: 1433,
///     resourceGroupName: "testrg",
///     sqlVirtualMachineGroupName: "testvmgroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// availability_group_listener = azure_native.sqlvirtualmachine.AvailabilityGroupListener("availabilityGroupListener",
///     availability_group_listener_name="agl-test",
///     availability_group_name="ag-test",
///     load_balancer_configurations=[{
///         "load_balancer_resource_id": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/loadBalancers/lb-test",
///         "private_ip_address": {
///             "ip_address": "10.1.0.112",
///             "subnet_resource_id": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default",
///         },
///         "probe_port": 59983,
///         "sql_virtual_machine_instances": [
///             "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm2",
///             "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm3",
///         ],
///     }],
///     port=1433,
///     resource_group_name="testrg",
///     sql_virtual_machine_group_name="testvmgroup")
///
/// ```
///
/// ```yaml
/// resources:
///   availabilityGroupListener:
///     type: azure-native:sqlvirtualmachine:AvailabilityGroupListener
///     properties:
///       availabilityGroupListenerName: agl-test
///       availabilityGroupName: ag-test
///       loadBalancerConfigurations:
///         - loadBalancerResourceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/loadBalancers/lb-test
///           privateIpAddress:
///             ipAddress: 10.1.0.112
///             subnetResourceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default
///           probePort: 59983
///           sqlVirtualMachineInstances:
///             - /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm2
///             - /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm3
///       port: 1433
///       resourceGroupName: testrg
///       sqlVirtualMachineGroupName: testvmgroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates or updates an availability group listener. This is used for VMs present in multi subnet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var availabilityGroupListener = new AzureNative.SqlVirtualMachine.AvailabilityGroupListener("availabilityGroupListener", new()
///     {
///         AvailabilityGroupListenerName = "agl-test",
///         AvailabilityGroupName = "ag-test",
///         MultiSubnetIpConfigurations = new[]
///         {
///             new AzureNative.SqlVirtualMachine.Inputs.MultiSubnetIpConfigurationArgs
///             {
///                 PrivateIpAddress = new AzureNative.SqlVirtualMachine.Inputs.PrivateIPAddressArgs
///                 {
///                     IpAddress = "10.0.0.112",
///                     SubnetResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default",
///                 },
///                 SqlVirtualMachineInstance = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm2",
///             },
///             new AzureNative.SqlVirtualMachine.Inputs.MultiSubnetIpConfigurationArgs
///             {
///                 PrivateIpAddress = new AzureNative.SqlVirtualMachine.Inputs.PrivateIPAddressArgs
///                 {
///                     IpAddress = "10.0.1.112",
///                     SubnetResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/alternate",
///                 },
///                 SqlVirtualMachineInstance = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm1",
///             },
///         },
///         Port = 1433,
///         ResourceGroupName = "testrg",
///         SqlVirtualMachineGroupName = "testvmgroup",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	sqlvirtualmachine "github.com/pulumi/pulumi-azure-native-sdk/sqlvirtualmachine/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sqlvirtualmachine.NewAvailabilityGroupListener(ctx, "availabilityGroupListener", &sqlvirtualmachine.AvailabilityGroupListenerArgs{
/// 			AvailabilityGroupListenerName: pulumi.String("agl-test"),
/// 			AvailabilityGroupName:         pulumi.String("ag-test"),
/// 			MultiSubnetIpConfigurations: sqlvirtualmachine.MultiSubnetIpConfigurationArray{
/// 				&sqlvirtualmachine.MultiSubnetIpConfigurationArgs{
/// 					PrivateIpAddress: &sqlvirtualmachine.PrivateIPAddressArgs{
/// 						IpAddress:        pulumi.String("10.0.0.112"),
/// 						SubnetResourceId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default"),
/// 					},
/// 					SqlVirtualMachineInstance: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm2"),
/// 				},
/// 				&sqlvirtualmachine.MultiSubnetIpConfigurationArgs{
/// 					PrivateIpAddress: &sqlvirtualmachine.PrivateIPAddressArgs{
/// 						IpAddress:        pulumi.String("10.0.1.112"),
/// 						SubnetResourceId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/alternate"),
/// 					},
/// 					SqlVirtualMachineInstance: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm1"),
/// 				},
/// 			},
/// 			Port:                       pulumi.Int(1433),
/// 			ResourceGroupName:          pulumi.String("testrg"),
/// 			SqlVirtualMachineGroupName: pulumi.String("testvmgroup"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sqlvirtualmachine_availabilitygrouplistener" "availabilityGroupListener" {
///   availability_group_listener_name = "agl-test"
///   availability_group_name          = "ag-test"
///   multi_subnet_ip_configurations {
///     private_ip_address = {
///       ip_address         = "10.0.0.112"
///       subnet_resource_id = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default"
///     }
///     sql_virtual_machine_instance = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm2"
///   }
///   multi_subnet_ip_configurations {
///     private_ip_address = {
///       ip_address         = "10.0.1.112"
///       subnet_resource_id = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/alternate"
///     }
///     sql_virtual_machine_instance = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm1"
///   }
///   port                           = 1433
///   resource_group_name            = "testrg"
///   sql_virtual_machine_group_name = "testvmgroup"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sqlvirtualmachine.AvailabilityGroupListener;
/// import com.pulumi.azurenative.sqlvirtualmachine.AvailabilityGroupListenerArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.MultiSubnetIpConfigurationArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.PrivateIPAddressArgs;
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
///         var availabilityGroupListener = new AvailabilityGroupListener("availabilityGroupListener", AvailabilityGroupListenerArgs.builder()
///             .availabilityGroupListenerName("agl-test")
///             .availabilityGroupName("ag-test")
///             .multiSubnetIpConfigurations(
///                 MultiSubnetIpConfigurationArgs.builder()
///                     .privateIpAddress(PrivateIPAddressArgs.builder()
///                         .ipAddress("10.0.0.112")
///                         .subnetResourceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default")
///                         .build())
///                     .sqlVirtualMachineInstance("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm2")
///                     .build(),
///                 MultiSubnetIpConfigurationArgs.builder()
///                     .privateIpAddress(PrivateIPAddressArgs.builder()
///                         .ipAddress("10.0.1.112")
///                         .subnetResourceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/alternate")
///                         .build())
///                     .sqlVirtualMachineInstance("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm1")
///                     .build())
///             .port(1433)
///             .resourceGroupName("testrg")
///             .sqlVirtualMachineGroupName("testvmgroup")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const availabilityGroupListener = new azure_native.sqlvirtualmachine.AvailabilityGroupListener("availabilityGroupListener", {
///     availabilityGroupListenerName: "agl-test",
///     availabilityGroupName: "ag-test",
///     multiSubnetIpConfigurations: [
///         {
///             privateIpAddress: {
///                 ipAddress: "10.0.0.112",
///                 subnetResourceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default",
///             },
///             sqlVirtualMachineInstance: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm2",
///         },
///         {
///             privateIpAddress: {
///                 ipAddress: "10.0.1.112",
///                 subnetResourceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/alternate",
///             },
///             sqlVirtualMachineInstance: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm1",
///         },
///     ],
///     port: 1433,
///     resourceGroupName: "testrg",
///     sqlVirtualMachineGroupName: "testvmgroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// availability_group_listener = azure_native.sqlvirtualmachine.AvailabilityGroupListener("availabilityGroupListener",
///     availability_group_listener_name="agl-test",
///     availability_group_name="ag-test",
///     multi_subnet_ip_configurations=[
///         {
///             "private_ip_address": {
///                 "ip_address": "10.0.0.112",
///                 "subnet_resource_id": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default",
///             },
///             "sql_virtual_machine_instance": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm2",
///         },
///         {
///             "private_ip_address": {
///                 "ip_address": "10.0.1.112",
///                 "subnet_resource_id": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/alternate",
///             },
///             "sql_virtual_machine_instance": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm1",
///         },
///     ],
///     port=1433,
///     resource_group_name="testrg",
///     sql_virtual_machine_group_name="testvmgroup")
///
/// ```
///
/// ```yaml
/// resources:
///   availabilityGroupListener:
///     type: azure-native:sqlvirtualmachine:AvailabilityGroupListener
///     properties:
///       availabilityGroupListenerName: agl-test
///       availabilityGroupName: ag-test
///       multiSubnetIpConfigurations:
///         - privateIpAddress:
///             ipAddress: 10.0.0.112
///             subnetResourceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default
///           sqlVirtualMachineInstance: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm2
///         - privateIpAddress:
///             ipAddress: 10.0.1.112
///             subnetResourceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/alternate
///           sqlVirtualMachineInstance: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm1
///       port: 1433
///       resourceGroupName: testrg
///       sqlVirtualMachineGroupName: testvmgroup
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:sqlvirtualmachine:AvailabilityGroupListener agl-test /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachineGroups/{sqlVirtualMachineGroupName}/availabilityGroupListeners/{availabilityGroupListenerName}
/// ```
class AvailabilityGroupListener extends pulumi.CustomResource {
  /// Availability Group configuration.
  late final pulumi.Output<AgConfigurationResponse?> availabilityGroupConfiguration;
  /// Name of the availability group.
  late final pulumi.Output<String?> availabilityGroupName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Create a default availability group if it does not exist.
  late final pulumi.Output<bool?> createDefaultAvailabilityGroupIfNotExist;
  /// List of load balancer configurations for an availability group listener.
  late final pulumi.Output<List<LoadBalancerConfigurationResponse>?> loadBalancerConfigurations;
  /// List of multi subnet IP configurations for an AG listener.
  late final pulumi.Output<List<MultiSubnetIpConfigurationResponse>?> multiSubnetIpConfigurations;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Listener port.
  late final pulumi.Output<int?> port;
  /// Provisioning state to track the async operation status.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AvailabilityGroupListener].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AvailabilityGroupListener]. {@macro pulumi_sqlvirtualmachine_availability_group_listener_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AvailabilityGroupListener(
    String name, {
    AvailabilityGroupListenerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sqlvirtualmachine:AvailabilityGroupListener',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    availabilityGroupConfiguration = registerOutput<AgConfigurationResponse?>('availabilityGroupConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    availabilityGroupName = registerOutput<String?>('availabilityGroupName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createDefaultAvailabilityGroupIfNotExist = registerOutput<bool?>('createDefaultAvailabilityGroupIfNotExist');
    loadBalancerConfigurations = registerOutput<List<LoadBalancerConfigurationResponse>?>('loadBalancerConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LoadBalancerConfigurationResponse>(guardedValue, (value) => LoadBalancerConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    multiSubnetIpConfigurations = registerOutput<List<MultiSubnetIpConfigurationResponse>?>('multiSubnetIpConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MultiSubnetIpConfigurationResponse>(guardedValue, (value) => MultiSubnetIpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    port = registerOutput<int?>('port');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AvailabilityGroupListener] resource.
  AvailabilityGroupListener.reference(String urn)
    : super(
        'azure-native:sqlvirtualmachine:AvailabilityGroupListener',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    availabilityGroupConfiguration = registerOutput<AgConfigurationResponse?>('availabilityGroupConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    availabilityGroupName = registerOutput<String?>('availabilityGroupName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createDefaultAvailabilityGroupIfNotExist = registerOutput<bool?>('createDefaultAvailabilityGroupIfNotExist');
    loadBalancerConfigurations = registerOutput<List<LoadBalancerConfigurationResponse>?>('loadBalancerConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LoadBalancerConfigurationResponse>(guardedValue, (value) => LoadBalancerConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    multiSubnetIpConfigurations = registerOutput<List<MultiSubnetIpConfigurationResponse>?>('multiSubnetIpConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MultiSubnetIpConfigurationResponse>(guardedValue, (value) => MultiSubnetIpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    port = registerOutput<int?>('port');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
