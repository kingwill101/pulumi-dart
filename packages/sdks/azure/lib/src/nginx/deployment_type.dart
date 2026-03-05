import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_args.dart';
import 'deployment_frontend_public.dart';
import 'deployment_identity.dart';
import 'deployment_state.dart';
import 'deployment_web_application_firewall.dart';

/// Manages an NGINX Deployment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "West Europe",
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     allocationMethod: "Static",
///     sku: "Standard",
///     tags: {
///         environment: "Production",
///     },
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
///     delegations: [{
///         name: "delegation",
///         serviceDelegation: {
///             name: "NGINX.NGINXPLUS/nginxDeployments",
///             actions: ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///         },
///     }],
/// });
/// const exampleDeployment = new azure.nginx.Deployment("example", {
///     name: "example-nginx",
///     resourceGroupName: example.name,
///     sku: "standardv3_Monthly",
///     location: example.location,
///     diagnoseSupportEnabled: true,
///     automaticUpgradeChannel: "stable",
///     frontendPublic: {
///         ipAddresses: [examplePublicIp.id],
///     },
///     networkInterfaces: [{
///         subnetId: exampleSubnet.id,
///     }],
///     capacity: 20,
///     email: "user@test.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_public_ip = azure.network.PublicIp("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     allocation_method="Static",
///     sku="Standard",
///     tags={
///         "environment": "Production",
///     })
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"],
///     delegations=[{
///         "name": "delegation",
///         "service_delegation": {
///             "name": "NGINX.NGINXPLUS/nginxDeployments",
///             "actions": ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///         },
///     }])
/// example_deployment = azure.nginx.Deployment("example",
///     name="example-nginx",
///     resource_group_name=example.name,
///     sku="standardv3_Monthly",
///     location=example.location,
///     diagnose_support_enabled=True,
///     automatic_upgrade_channel="stable",
///     frontend_public={
///         "ip_addresses": [example_public_ip.id],
///     },
///     network_interfaces=[{
///         "subnet_id": example_subnet.id,
///     }],
///     capacity=20,
///     email="user@test.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AllocationMethod = "Static",
///         Sku = "Standard",
///         Tags =
///         {
///             { "environment", "Production" },
///         },
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "delegation",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "NGINX.NGINXPLUS/nginxDeployments",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleDeployment = new Azure.Nginx.Deployment("example", new()
///     {
///         Name = "example-nginx",
///         ResourceGroupName = example.Name,
///         Sku = "standardv3_Monthly",
///         Location = example.Location,
///         DiagnoseSupportEnabled = true,
///         AutomaticUpgradeChannel = "stable",
///         FrontendPublic = new Azure.Nginx.Inputs.DeploymentFrontendPublicArgs
///         {
///             IpAddresses = new[]
///             {
///                 examplePublicIp.Id,
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Azure.Nginx.Inputs.DeploymentNetworkInterfaceArgs
///             {
///                 SubnetId = exampleSubnet.Id,
///             },
///         },
///         Capacity = 20,
///         Email = "user@test.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/nginx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 			Sku:               pulumi.String("Standard"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example-vnet"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("delegation"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("NGINX.NGINXPLUS/nginxDeployments"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nginx.NewDeployment(ctx, "example", &nginx.DeploymentArgs{
/// 			Name:                    pulumi.String("example-nginx"),
/// 			ResourceGroupName:       example.Name,
/// 			Sku:                     pulumi.String("standardv3_Monthly"),
/// 			Location:                example.Location,
/// 			DiagnoseSupportEnabled:  pulumi.Bool(true),
/// 			AutomaticUpgradeChannel: pulumi.String("stable"),
/// 			FrontendPublic: &nginx.DeploymentFrontendPublicArgs{
/// 				IpAddresses: pulumi.StringArray{
/// 					examplePublicIp.ID(),
/// 				},
/// 			},
/// 			NetworkInterfaces: nginx.DeploymentNetworkInterfaceArray{
/// 				&nginx.DeploymentNetworkInterfaceArgs{
/// 					SubnetId: exampleSubnet.ID(),
/// 				},
/// 			},
/// 			Capacity: pulumi.Int(20),
/// 			Email:    pulumi.String("user@test.com"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.nginx.Deployment;
/// import com.pulumi.azure.nginx.DeploymentArgs;
/// import com.pulumi.azure.nginx.inputs.DeploymentFrontendPublicArgs;
/// import com.pulumi.azure.nginx.inputs.DeploymentNetworkInterfaceArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .allocationMethod("Static")
///             .sku("Standard")
///             .tags(Map.of("environment", "Production"))
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("delegation")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("NGINX.NGINXPLUS/nginxDeployments")
///                     .actions("Microsoft.Network/virtualNetworks/subnets/join/action")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleDeployment = new Deployment("exampleDeployment", DeploymentArgs.builder()
///             .name("example-nginx")
///             .resourceGroupName(example.name())
///             .sku("standardv3_Monthly")
///             .location(example.location())
///             .diagnoseSupportEnabled(true)
///             .automaticUpgradeChannel("stable")
///             .frontendPublic(DeploymentFrontendPublicArgs.builder()
///                 .ipAddresses(examplePublicIp.id())
///                 .build())
///             .networkInterfaces(DeploymentNetworkInterfaceArgs.builder()
///                 .subnetId(exampleSubnet.id())
///                 .build())
///             .capacity(20)
///             .email("user@test.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-rg
///       location: West Europe
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       allocationMethod: Static
///       sku: Standard
///       tags:
///         environment: Production
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///       delegations:
///         - name: delegation
///           serviceDelegation:
///             name: NGINX.NGINXPLUS/nginxDeployments
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///   exampleDeployment:
///     type: azure:nginx:Deployment
///     name: example
///     properties:
///       name: example-nginx
///       resourceGroupName: ${example.name}
///       sku: standardv3_Monthly
///       location: ${example.location}
///       diagnoseSupportEnabled: true
///       automaticUpgradeChannel: stable
///       frontendPublic:
///         ipAddresses:
///           - ${examplePublicIp.id}
///       networkInterfaces:
///         - subnetId: ${exampleSubnet.id}
///       capacity: 20
///       email: user@test.com
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Nginx.NginxPlus` - 2024-11-01-preview
///
/// ## Import
///
/// NGINX Deployments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:nginx/deployment:Deployment example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Nginx.NginxPlus/nginxDeployments/dep1
/// ```
class DeploymentType extends pulumi.CustomResource {
  /// An `auto_scale_profile` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> autoScaleProfiles;
  /// Specify the automatic upgrade channel for the NGINX deployment. Defaults to `stable`. The possible values are `stable` and `preview`.
  late final pulumi.Output<String?> automaticUpgradeChannel;
  /// Specify the number of NGINX capacity units for this NGINX deployment.
  ///
  /// &gt; **Note:** For more information on NGINX capacity units, please refer to the [NGINX scaling guidance documentation](https://docs.nginx.com/nginxaas/azure/quickstart/scaling/)
  late final pulumi.Output<int?> capacity;
  /// The dataplane API endpoint of the NGINX Deployment.
  late final pulumi.Output<String> dataplaneApiEndpoint;
  /// Should the metrics be exported to Azure Monitor?
  late final pulumi.Output<bool?> diagnoseSupportEnabled;
  /// Specify the preferred support contact email address for receiving alerts and notifications.
  late final pulumi.Output<String?> email;
  /// One or more `frontend_private` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> frontendPrivates;
  /// A `frontend_public` block as defined below.
  late final pulumi.Output<DeploymentFrontendPublic?> frontendPublic;
  /// An `identity` block as defined below.
  late final pulumi.Output<DeploymentIdentity?> identity;
  /// The IP address of the NGINX Deployment.
  late final pulumi.Output<String> ipAddress;
  /// The Azure Region where the NGINX Deployment should exist. Changing this forces a new NGINX Deployment to be created.
  late final pulumi.Output<String> location;
  late final pulumi.Output<List<Map<String, dynamic>>?> loggingStorageAccounts;
  late final pulumi.Output<String> managedResourceGroup;
  /// The name which should be used for this NGINX Deployment. Changing this forces a new NGINX Deployment to be created.
  late final pulumi.Output<String> name;
  /// One or more `network_interface` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> networkInterfaces;
  /// The version of the NGINX Deployment.
  late final pulumi.Output<String> nginxVersion;
  /// The name of the Resource Group where the NGINX Deployment should exist. Changing this forces a new NGINX Deployment to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies the NGINX Deployment SKU.
  ///
  /// &gt; **Note:** For a list of available SKUs, please reference the [NGINXaaS for Azure documentation](https://docs.nginx.com/nginxaas/azure/billing/overview)
  ///
  /// &gt; **Note:** If you are setting the `sku` to `basic_Monthly`, you cannot specify a `capacity` or `auto_scale_profile`; basic plans do not support scaling. Other `sku`s require either `capacity` or `auto_scale_profile`. If you're using `basic_Monthly` with deployments created before v4.0, you may need to use Terraform's `ignore_changes` functionality to ignore changes to the `capacity` field.
  late final pulumi.Output<String> sku;
  /// A mapping of tags which should be assigned to the NGINX Deployment.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A `web_application_firewall` blocks as defined below.
  late final pulumi.Output<DeploymentWebApplicationFirewall?> webApplicationFirewall;

  /// Creates a new [DeploymentType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentType]. {@macro pulumi_nginx_deployment_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentType(
    String name, {
    DeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:nginx/deployment:Deployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoScaleProfiles = registerOutput<List<Map<String, dynamic>>?>('autoScaleProfiles');
    automaticUpgradeChannel = registerOutput<String?>('automaticUpgradeChannel');
    capacity = registerOutput<int?>('capacity');
    dataplaneApiEndpoint = registerOutput<String>('dataplaneApiEndpoint');
    diagnoseSupportEnabled = registerOutput<bool?>('diagnoseSupportEnabled');
    email = registerOutput<String?>('email');
    frontendPrivates = registerOutput<List<Map<String, dynamic>>?>('frontendPrivates');
    frontendPublic = registerOutput<DeploymentFrontendPublic?>('frontendPublic', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentFrontendPublic.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<DeploymentIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipAddress = registerOutput<String>('ipAddress');
    location = registerOutput<String>('location');
    loggingStorageAccounts = registerOutput<List<Map<String, dynamic>>?>('loggingStorageAccounts');
    managedResourceGroup = registerOutput<String>('managedResourceGroup');
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<List<Map<String, dynamic>>?>('networkInterfaces');
    nginxVersion = registerOutput<String>('nginxVersion');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
    webApplicationFirewall = registerOutput<DeploymentWebApplicationFirewall?>('webApplicationFirewall', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentWebApplicationFirewall.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [DeploymentType] resource's state with the given [name] and [id].
  static DeploymentType get(
    String name,
    pulumi.Input<String> id, {
    DeploymentState? state,
  }) {
    return DeploymentType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DeploymentType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:nginx/deployment:Deployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoScaleProfiles = registerOutput<List<Map<String, dynamic>>?>('autoScaleProfiles');
    automaticUpgradeChannel = registerOutput<String?>('automaticUpgradeChannel');
    capacity = registerOutput<int?>('capacity');
    dataplaneApiEndpoint = registerOutput<String>('dataplaneApiEndpoint');
    diagnoseSupportEnabled = registerOutput<bool?>('diagnoseSupportEnabled');
    email = registerOutput<String?>('email');
    frontendPrivates = registerOutput<List<Map<String, dynamic>>?>('frontendPrivates');
    frontendPublic = registerOutput<DeploymentFrontendPublic?>('frontendPublic', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentFrontendPublic.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<DeploymentIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipAddress = registerOutput<String>('ipAddress');
    location = registerOutput<String>('location');
    loggingStorageAccounts = registerOutput<List<Map<String, dynamic>>?>('loggingStorageAccounts');
    managedResourceGroup = registerOutput<String>('managedResourceGroup');
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<List<Map<String, dynamic>>?>('networkInterfaces');
    nginxVersion = registerOutput<String>('nginxVersion');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
    webApplicationFirewall = registerOutput<DeploymentWebApplicationFirewall?>('webApplicationFirewall', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentWebApplicationFirewall.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
