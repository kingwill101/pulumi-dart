import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'private_endpoint_args.dart';
import 'subnet_response.dart';

/// Private endpoint resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create private endpoint
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpoint = new AzureNative.Network.PrivateEndpoint("privateEndpoint", new()
///     {
///         CustomNetworkInterfaceName = "testPeNic",
///         IpConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.PrivateEndpointIPConfigurationArgs
///             {
///                 GroupId = "file",
///                 MemberName = "file",
///                 Name = "pestaticconfig",
///                 PrivateIPAddress = "192.168.0.6",
///             },
///         },
///         Location = "eastus2euap",
///         PrivateEndpointName = "testPe",
///         PrivateLinkServiceConnections = new[]
///         {
///             new AzureNative.Network.Inputs.PrivateLinkServiceConnectionArgs
///             {
///                 GroupIds = new[]
///                 {
///                     "groupIdFromResource",
///                 },
///                 PrivateLinkServiceId = "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls",
///                 RequestMessage = "Please approve my connection.",
///             },
///         },
///         ResourceGroupName = "rg1",
///         Subnet = new AzureNative.Network.Inputs.SubnetArgs
///         {
///             Id = "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///         },
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewPrivateEndpoint(ctx, "privateEndpoint", &network.PrivateEndpointArgs{
/// 			CustomNetworkInterfaceName: pulumi.String("testPeNic"),
/// 			IpConfigurations: network.PrivateEndpointIPConfigurationArray{
/// 				&network.PrivateEndpointIPConfigurationArgs{
/// 					GroupId:          pulumi.String("file"),
/// 					MemberName:       pulumi.String("file"),
/// 					Name:             pulumi.String("pestaticconfig"),
/// 					PrivateIPAddress: pulumi.String("192.168.0.6"),
/// 				},
/// 			},
/// 			Location:            pulumi.String("eastus2euap"),
/// 			PrivateEndpointName: pulumi.String("testPe"),
/// 			PrivateLinkServiceConnections: network.PrivateLinkServiceConnectionArray{
/// 				&network.PrivateLinkServiceConnectionArgs{
/// 					GroupIds: pulumi.StringArray{
/// 						pulumi.String("groupIdFromResource"),
/// 					},
/// 					PrivateLinkServiceId: pulumi.String("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls"),
/// 					RequestMessage:       pulumi.String("Please approve my connection."),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Subnet: &network.SubnetTypeArgs{
/// 				Id: pulumi.String("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet"),
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.PrivateEndpoint;
/// import com.pulumi.azurenative.network.PrivateEndpointArgs;
/// import com.pulumi.azurenative.network.inputs.PrivateEndpointIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.PrivateLinkServiceConnectionArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
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
///         var privateEndpoint = new PrivateEndpoint("privateEndpoint", PrivateEndpointArgs.builder()
///             .customNetworkInterfaceName("testPeNic")
///             .ipConfigurations(PrivateEndpointIPConfigurationArgs.builder()
///                 .groupId("file")
///                 .memberName("file")
///                 .name("pestaticconfig")
///                 .privateIPAddress("192.168.0.6")
///                 .build())
///             .location("eastus2euap")
///             .privateEndpointName("testPe")
///             .privateLinkServiceConnections(PrivateLinkServiceConnectionArgs.builder()
///                 .groupIds("groupIdFromResource")
///                 .privateLinkServiceId("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls")
///                 .requestMessage("Please approve my connection.")
///                 .build())
///             .resourceGroupName("rg1")
///             .subnet(SubnetArgs.builder()
///                 .id("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet")
///                 .build())
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
/// const privateEndpoint = new azure_native.network.PrivateEndpoint("privateEndpoint", {
///     customNetworkInterfaceName: "testPeNic",
///     ipConfigurations: [{
///         groupId: "file",
///         memberName: "file",
///         name: "pestaticconfig",
///         privateIPAddress: "192.168.0.6",
///     }],
///     location: "eastus2euap",
///     privateEndpointName: "testPe",
///     privateLinkServiceConnections: [{
///         groupIds: ["groupIdFromResource"],
///         privateLinkServiceId: "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls",
///         requestMessage: "Please approve my connection.",
///     }],
///     resourceGroupName: "rg1",
///     subnet: {
///         id: "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint = azure_native.network.PrivateEndpoint("privateEndpoint",
///     custom_network_interface_name="testPeNic",
///     ip_configurations=[{
///         "group_id": "file",
///         "member_name": "file",
///         "name": "pestaticconfig",
///         "private_ip_address": "192.168.0.6",
///     }],
///     location="eastus2euap",
///     private_endpoint_name="testPe",
///     private_link_service_connections=[{
///         "group_ids": ["groupIdFromResource"],
///         "private_link_service_id": "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls",
///         "request_message": "Please approve my connection.",
///     }],
///     resource_group_name="rg1",
///     subnet={
///         "id": "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpoint:
///     type: azure-native:network:PrivateEndpoint
///     properties:
///       customNetworkInterfaceName: testPeNic
///       ipConfigurations:
///         - groupId: file
///           memberName: file
///           name: pestaticconfig
///           privateIPAddress: 192.168.0.6
///       location: eastus2euap
///       privateEndpointName: testPe
///       privateLinkServiceConnections:
///         - groupIds:
///             - groupIdFromResource
///           privateLinkServiceId: /subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls
///           requestMessage: Please approve my connection.
///       resourceGroupName: rg1
///       subnet:
///         id: /subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create private endpoint with application security groups
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpoint = new AzureNative.Network.PrivateEndpoint("privateEndpoint", new()
///     {
///         ApplicationSecurityGroups = new[]
///         {
///             new AzureNative.Network.Inputs.ApplicationSecurityGroupArgs
///             {
///                 Id = "/subscriptions/subId/resourceGroups/rg1/provders/Microsoft.Network/applicationSecurityGroup/asg1",
///             },
///         },
///         Location = "eastus2euap",
///         PrivateEndpointName = "testPe",
///         PrivateLinkServiceConnections = new[]
///         {
///             new AzureNative.Network.Inputs.PrivateLinkServiceConnectionArgs
///             {
///                 GroupIds = new[]
///                 {
///                     "groupIdFromResource",
///                 },
///                 PrivateLinkServiceId = "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls",
///                 RequestMessage = "Please approve my connection.",
///             },
///         },
///         ResourceGroupName = "rg1",
///         Subnet = new AzureNative.Network.Inputs.SubnetArgs
///         {
///             Id = "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///         },
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewPrivateEndpoint(ctx, "privateEndpoint", &network.PrivateEndpointArgs{
/// 			ApplicationSecurityGroups: network.ApplicationSecurityGroupTypeArray{
/// 				&network.ApplicationSecurityGroupTypeArgs{
/// 					Id: pulumi.String("/subscriptions/subId/resourceGroups/rg1/provders/Microsoft.Network/applicationSecurityGroup/asg1"),
/// 				},
/// 			},
/// 			Location:            pulumi.String("eastus2euap"),
/// 			PrivateEndpointName: pulumi.String("testPe"),
/// 			PrivateLinkServiceConnections: network.PrivateLinkServiceConnectionArray{
/// 				&network.PrivateLinkServiceConnectionArgs{
/// 					GroupIds: pulumi.StringArray{
/// 						pulumi.String("groupIdFromResource"),
/// 					},
/// 					PrivateLinkServiceId: pulumi.String("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls"),
/// 					RequestMessage:       pulumi.String("Please approve my connection."),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Subnet: &network.SubnetTypeArgs{
/// 				Id: pulumi.String("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet"),
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.PrivateEndpoint;
/// import com.pulumi.azurenative.network.PrivateEndpointArgs;
/// import com.pulumi.azurenative.network.inputs.ApplicationSecurityGroupArgs;
/// import com.pulumi.azurenative.network.inputs.PrivateLinkServiceConnectionArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
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
///         var privateEndpoint = new PrivateEndpoint("privateEndpoint", PrivateEndpointArgs.builder()
///             .applicationSecurityGroups(ApplicationSecurityGroupArgs.builder()
///                 .id("/subscriptions/subId/resourceGroups/rg1/provders/Microsoft.Network/applicationSecurityGroup/asg1")
///                 .build())
///             .location("eastus2euap")
///             .privateEndpointName("testPe")
///             .privateLinkServiceConnections(PrivateLinkServiceConnectionArgs.builder()
///                 .groupIds("groupIdFromResource")
///                 .privateLinkServiceId("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls")
///                 .requestMessage("Please approve my connection.")
///                 .build())
///             .resourceGroupName("rg1")
///             .subnet(SubnetArgs.builder()
///                 .id("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet")
///                 .build())
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
/// const privateEndpoint = new azure_native.network.PrivateEndpoint("privateEndpoint", {
///     applicationSecurityGroups: [{
///         id: "/subscriptions/subId/resourceGroups/rg1/provders/Microsoft.Network/applicationSecurityGroup/asg1",
///     }],
///     location: "eastus2euap",
///     privateEndpointName: "testPe",
///     privateLinkServiceConnections: [{
///         groupIds: ["groupIdFromResource"],
///         privateLinkServiceId: "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls",
///         requestMessage: "Please approve my connection.",
///     }],
///     resourceGroupName: "rg1",
///     subnet: {
///         id: "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint = azure_native.network.PrivateEndpoint("privateEndpoint",
///     application_security_groups=[{
///         "id": "/subscriptions/subId/resourceGroups/rg1/provders/Microsoft.Network/applicationSecurityGroup/asg1",
///     }],
///     location="eastus2euap",
///     private_endpoint_name="testPe",
///     private_link_service_connections=[{
///         "group_ids": ["groupIdFromResource"],
///         "private_link_service_id": "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls",
///         "request_message": "Please approve my connection.",
///     }],
///     resource_group_name="rg1",
///     subnet={
///         "id": "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpoint:
///     type: azure-native:network:PrivateEndpoint
///     properties:
///       applicationSecurityGroups:
///         - id: /subscriptions/subId/resourceGroups/rg1/provders/Microsoft.Network/applicationSecurityGroup/asg1
///       location: eastus2euap
///       privateEndpointName: testPe
///       privateLinkServiceConnections:
///         - groupIds:
///             - groupIdFromResource
///           privateLinkServiceId: /subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls
///           requestMessage: Please approve my connection.
///       resourceGroupName: rg1
///       subnet:
///         id: /subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create private endpoint with manual approval connection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpoint = new AzureNative.Network.PrivateEndpoint("privateEndpoint", new()
///     {
///         CustomNetworkInterfaceName = "testPeNic",
///         IpConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.PrivateEndpointIPConfigurationArgs
///             {
///                 GroupId = "file",
///                 MemberName = "file",
///                 Name = "pestaticconfig",
///                 PrivateIPAddress = "192.168.0.5",
///             },
///         },
///         Location = "eastus",
///         ManualPrivateLinkServiceConnections = new[]
///         {
///             new AzureNative.Network.Inputs.PrivateLinkServiceConnectionArgs
///             {
///                 GroupIds = new[]
///                 {
///                     "groupIdFromResource",
///                 },
///                 PrivateLinkServiceId = "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls",
///                 RequestMessage = "Please manually approve my connection.",
///             },
///         },
///         PrivateEndpointName = "testPe",
///         ResourceGroupName = "rg1",
///         Subnet = new AzureNative.Network.Inputs.SubnetArgs
///         {
///             Id = "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///         },
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewPrivateEndpoint(ctx, "privateEndpoint", &network.PrivateEndpointArgs{
/// 			CustomNetworkInterfaceName: pulumi.String("testPeNic"),
/// 			IpConfigurations: network.PrivateEndpointIPConfigurationArray{
/// 				&network.PrivateEndpointIPConfigurationArgs{
/// 					GroupId:          pulumi.String("file"),
/// 					MemberName:       pulumi.String("file"),
/// 					Name:             pulumi.String("pestaticconfig"),
/// 					PrivateIPAddress: pulumi.String("192.168.0.5"),
/// 				},
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			ManualPrivateLinkServiceConnections: network.PrivateLinkServiceConnectionArray{
/// 				&network.PrivateLinkServiceConnectionArgs{
/// 					GroupIds: pulumi.StringArray{
/// 						pulumi.String("groupIdFromResource"),
/// 					},
/// 					PrivateLinkServiceId: pulumi.String("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls"),
/// 					RequestMessage:       pulumi.String("Please manually approve my connection."),
/// 				},
/// 			},
/// 			PrivateEndpointName: pulumi.String("testPe"),
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			Subnet: &network.SubnetTypeArgs{
/// 				Id: pulumi.String("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet"),
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.PrivateEndpoint;
/// import com.pulumi.azurenative.network.PrivateEndpointArgs;
/// import com.pulumi.azurenative.network.inputs.PrivateEndpointIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.PrivateLinkServiceConnectionArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
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
///         var privateEndpoint = new PrivateEndpoint("privateEndpoint", PrivateEndpointArgs.builder()
///             .customNetworkInterfaceName("testPeNic")
///             .ipConfigurations(PrivateEndpointIPConfigurationArgs.builder()
///                 .groupId("file")
///                 .memberName("file")
///                 .name("pestaticconfig")
///                 .privateIPAddress("192.168.0.5")
///                 .build())
///             .location("eastus")
///             .manualPrivateLinkServiceConnections(PrivateLinkServiceConnectionArgs.builder()
///                 .groupIds("groupIdFromResource")
///                 .privateLinkServiceId("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls")
///                 .requestMessage("Please manually approve my connection.")
///                 .build())
///             .privateEndpointName("testPe")
///             .resourceGroupName("rg1")
///             .subnet(SubnetArgs.builder()
///                 .id("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet")
///                 .build())
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
/// const privateEndpoint = new azure_native.network.PrivateEndpoint("privateEndpoint", {
///     customNetworkInterfaceName: "testPeNic",
///     ipConfigurations: [{
///         groupId: "file",
///         memberName: "file",
///         name: "pestaticconfig",
///         privateIPAddress: "192.168.0.5",
///     }],
///     location: "eastus",
///     manualPrivateLinkServiceConnections: [{
///         groupIds: ["groupIdFromResource"],
///         privateLinkServiceId: "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls",
///         requestMessage: "Please manually approve my connection.",
///     }],
///     privateEndpointName: "testPe",
///     resourceGroupName: "rg1",
///     subnet: {
///         id: "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint = azure_native.network.PrivateEndpoint("privateEndpoint",
///     custom_network_interface_name="testPeNic",
///     ip_configurations=[{
///         "group_id": "file",
///         "member_name": "file",
///         "name": "pestaticconfig",
///         "private_ip_address": "192.168.0.5",
///     }],
///     location="eastus",
///     manual_private_link_service_connections=[{
///         "group_ids": ["groupIdFromResource"],
///         "private_link_service_id": "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls",
///         "request_message": "Please manually approve my connection.",
///     }],
///     private_endpoint_name="testPe",
///     resource_group_name="rg1",
///     subnet={
///         "id": "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpoint:
///     type: azure-native:network:PrivateEndpoint
///     properties:
///       customNetworkInterfaceName: testPeNic
///       ipConfigurations:
///         - groupId: file
///           memberName: file
///           name: pestaticconfig
///           privateIPAddress: 192.168.0.5
///       location: eastus
///       manualPrivateLinkServiceConnections:
///         - groupIds:
///             - groupIdFromResource
///           privateLinkServiceId: /subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls
///           requestMessage: Please manually approve my connection.
///       privateEndpointName: testPe
///       resourceGroupName: rg1
///       subnet:
///         id: /subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet
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
/// $ pulumi import azure-native:network:PrivateEndpoint testPe /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateEndpoints/{privateEndpointName}
/// ```
class PrivateEndpoint extends pulumi.CustomResource {
  /// Application security groups in which the private endpoint IP configuration is included.
  late final pulumi.Output<List<Map<String, dynamic>>?>
  applicationSecurityGroups;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// An array of custom dns configurations.
  late final pulumi.Output<List<Map<String, dynamic>>?> customDnsConfigs;

  /// The custom name of the network interface attached to the private endpoint.
  late final pulumi.Output<String?> customNetworkInterfaceName;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// The extended location of the load balancer.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// A list of IP configurations of the private endpoint. This will be used to map to the First Party Service's endpoints.
  late final pulumi.Output<List<Map<String, dynamic>>?> ipConfigurations;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// A grouping of information about the connection to the remote resource. Used when the network admin does not have access to approve connections to the remote resource.
  late final pulumi.Output<List<Map<String, dynamic>>?>
  manualPrivateLinkServiceConnections;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// An array of references to the network interfaces created for this private endpoint.
  late final pulumi.Output<List<Map<String, dynamic>>> networkInterfaces;

  /// A grouping of information about the connection to the remote resource.
  late final pulumi.Output<List<Map<String, dynamic>>?>
  privateLinkServiceConnections;

  /// The provisioning state of the private endpoint resource.
  late final pulumi.Output<String> provisioningState;

  /// The ID of the subnet from which the private IP will be allocated.
  late final pulumi.Output<SubnetResponse?> subnet;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpoint]. {@macro pulumi_network_private_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpoint(
    String name, {
    PrivateEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:PrivateEndpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    applicationSecurityGroups = registerOutput<List<Map<String, dynamic>>?>(
      'applicationSecurityGroups',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customDnsConfigs = registerOutput<List<Map<String, dynamic>>?>(
      'customDnsConfigs',
    );
    customNetworkInterfaceName = registerOutput<String?>(
      'customNetworkInterfaceName',
    );
    etag = registerOutput<String>('etag');
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
    );
    ipConfigurations = registerOutput<List<Map<String, dynamic>>?>(
      'ipConfigurations',
    );
    location = registerOutput<String?>('location');
    manualPrivateLinkServiceConnections =
        registerOutput<List<Map<String, dynamic>>?>(
          'manualPrivateLinkServiceConnections',
        );
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<List<Map<String, dynamic>>>(
      'networkInterfaces',
    );
    privateLinkServiceConnections = registerOutput<List<Map<String, dynamic>>?>(
      'privateLinkServiceConnections',
    );
    provisioningState = registerOutput<String>('provisioningState');
    subnet = registerOutput<SubnetResponse?>('subnet');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
