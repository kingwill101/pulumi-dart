import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_authorization_args.dart';
import 'express_route_authorization_state.dart';

/// Manages an Azure VMware Solution ExpressRoute Circuit Authorization.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const examplePrivateCloud = new azure.avs.PrivateCloud("example", {
///     name: "example-vmware-private-cloud",
///     resourceGroupName: example.name,
///     location: example.location,
///     skuName: "av36",
///     managementCluster: {
///         size: 3,
///     },
///     networkSubnetCidr: "192.168.48.0/22",
///     internetConnectionEnabled: false,
///     nsxtPassword: "QazWsx13$Edc",
///     vcenterPassword: "WsxEdc23$Rfv",
/// });
/// const exampleExpressRouteAuthorization = new azure.avs.ExpressRouteAuthorization("example", {
///     name: "example-authorization",
///     privateCloudId: examplePrivateCloud.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_private_cloud = azure.avs.PrivateCloud("example",
///     name="example-vmware-private-cloud",
///     resource_group_name=example.name,
///     location=example.location,
///     sku_name="av36",
///     management_cluster={
///         "size": 3,
///     },
///     network_subnet_cidr="192.168.48.0/22",
///     internet_connection_enabled=False,
///     nsxt_password="QazWsx13$Edc",
///     vcenter_password="WsxEdc23$Rfv")
/// example_express_route_authorization = azure.avs.ExpressRouteAuthorization("example",
///     name="example-authorization",
///     private_cloud_id=example_private_cloud.id)
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var examplePrivateCloud = new Azure.Avs.PrivateCloud("example", new()
///     {
///         Name = "example-vmware-private-cloud",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SkuName = "av36",
///         ManagementCluster = new Azure.Avs.Inputs.PrivateCloudManagementClusterArgs
///         {
///             Size = 3,
///         },
///         NetworkSubnetCidr = "192.168.48.0/22",
///         InternetConnectionEnabled = false,
///         NsxtPassword = "QazWsx13$Edc",
///         VcenterPassword = "WsxEdc23$Rfv",
///     });
///
///     var exampleExpressRouteAuthorization = new Azure.Avs.ExpressRouteAuthorization("example", new()
///     {
///         Name = "example-authorization",
///         PrivateCloudId = examplePrivateCloud.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/avs"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePrivateCloud, err := avs.NewPrivateCloud(ctx, "example", &avs.PrivateCloudArgs{
/// 			Name:              pulumi.String("example-vmware-private-cloud"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SkuName:           pulumi.String("av36"),
/// 			ManagementCluster: &avs.PrivateCloudManagementClusterArgs{
/// 				Size: pulumi.Int(3),
/// 			},
/// 			NetworkSubnetCidr:         pulumi.String("192.168.48.0/22"),
/// 			InternetConnectionEnabled: pulumi.Bool(false),
/// 			NsxtPassword:              pulumi.String("QazWsx13$Edc"),
/// 			VcenterPassword:           pulumi.String("WsxEdc23$Rfv"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = avs.NewExpressRouteAuthorization(ctx, "example", &avs.ExpressRouteAuthorizationArgs{
/// 			Name:           pulumi.String("example-authorization"),
/// 			PrivateCloudId: examplePrivateCloud.ID(),
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_avs_privatecloud" "example" {
///   name                = "example-vmware-private-cloud"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   sku_name            = "av36"
///   management_cluster = {
///     size = 3
///   }
///   network_subnet_cidr         = "192.168.48.0/22"
///   internet_connection_enabled = false
///   nsxt_password               = "QazWsx13$Edc"
///   vcenter_password            = "WsxEdc23$Rfv"
/// }
/// resource "azure_avs_expressrouteauthorization" "example" {
///   name             = "example-authorization"
///   private_cloud_id = azure_avs_privatecloud.example.id
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
/// import com.pulumi.azure.avs.PrivateCloud;
/// import com.pulumi.azure.avs.PrivateCloudArgs;
/// import com.pulumi.azure.avs.inputs.PrivateCloudManagementClusterArgs;
/// import com.pulumi.azure.avs.ExpressRouteAuthorization;
/// import com.pulumi.azure.avs.ExpressRouteAuthorizationArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var examplePrivateCloud = new PrivateCloud("examplePrivateCloud", PrivateCloudArgs.builder()
///             .name("example-vmware-private-cloud")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .skuName("av36")
///             .managementCluster(PrivateCloudManagementClusterArgs.builder()
///                 .size(3)
///                 .build())
///             .networkSubnetCidr("192.168.48.0/22")
///             .internetConnectionEnabled(false)
///             .nsxtPassword("QazWsx13$Edc")
///             .vcenterPassword("WsxEdc23$Rfv")
///             .build());
///
///         var exampleExpressRouteAuthorization = new ExpressRouteAuthorization("exampleExpressRouteAuthorization", ExpressRouteAuthorizationArgs.builder()
///             .name("example-authorization")
///             .privateCloudId(examplePrivateCloud.id())
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
///       name: example-resources
///       location: West Europe
///   examplePrivateCloud:
///     type: azure:avs:PrivateCloud
///     name: example
///     properties:
///       name: example-vmware-private-cloud
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       skuName: av36
///       managementCluster:
///         size: 3
///       networkSubnetCidr: 192.168.48.0/22
///       internetConnectionEnabled: false
///       nsxtPassword: QazWsx13$Edc
///       vcenterPassword: WsxEdc23$Rfv
///   exampleExpressRouteAuthorization:
///     type: azure:avs:ExpressRouteAuthorization
///     name: example
///     properties:
///       name: example-authorization
///       privateCloudId: ${examplePrivateCloud.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AVS` - 2022-05-01
///
/// ## Import
///
/// Azure VMware Solution ExpressRoute Circuit Authorizations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:avs/expressRouteAuthorization:ExpressRouteAuthorization example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.AVS/privateClouds/privateCloud1/authorizations/authorization1
/// ```
class ExpressRouteAuthorization extends pulumi.CustomResource {
  /// The ID of the Azure VMware Solution ExpressRoute Circuit Authorization.
  late final pulumi.Output<String> expressRouteAuthorizationId;
  /// The key of the Azure VMware Solution ExpressRoute Circuit Authorization.
  late final pulumi.Output<String> expressRouteAuthorizationKey;
  /// The name which should be used for this Azure VMware Solution ExpressRoute Circuit Authorization. Changing this forces a new Azure VMware Solution ExpressRoute Circuit Authorization to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Azure VMware Solution Private Cloud in which to create this Azure VMware Solution ExpressRoute Circuit Authorization. Changing this forces a new Azure VMware Solution ExpressRoute Circuit Authorization to be created.
  late final pulumi.Output<String> privateCloudId;

  /// Creates a new [ExpressRouteAuthorization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExpressRouteAuthorization]. {@macro pulumi_avs_express_route_authorization_express_route_authorization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExpressRouteAuthorization(
    String name, {
    ExpressRouteAuthorizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:avs/expressRouteAuthorization:ExpressRouteAuthorization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    expressRouteAuthorizationId = registerOutput<String>('expressRouteAuthorizationId');
    expressRouteAuthorizationKey = registerOutput<String>('expressRouteAuthorizationKey');
    this.name = registerOutput<String>('name');
    privateCloudId = registerOutput<String>('privateCloudId');
  }

  /// Gets an existing [ExpressRouteAuthorization] resource's state with the given [name] and [id].
  static ExpressRouteAuthorization get(
    String name,
    pulumi.Input<String> id, {
    ExpressRouteAuthorizationState? state,
  }) {
    return ExpressRouteAuthorization._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ExpressRouteAuthorization._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:avs/expressRouteAuthorization:ExpressRouteAuthorization',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    expressRouteAuthorizationId = registerOutput<String>('expressRouteAuthorizationId');
    expressRouteAuthorizationKey = registerOutput<String>('expressRouteAuthorizationKey');
    this.name = registerOutput<String>('name');
    privateCloudId = registerOutput<String>('privateCloudId');
  }
}
