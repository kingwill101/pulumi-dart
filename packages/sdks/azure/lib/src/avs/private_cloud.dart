import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_cloud_args.dart';
import 'private_cloud_management_cluster.dart';
import 'private_cloud_state.dart';

/// Manages an Azure VMware Solution Private Cloud.
///
/// ## Example Usage
///
/// &gt; **Note:** Normal `pulumi up` could ignore this note. Please disable correlation request id for continuous operations in one build (like acctest). The continuous operations like `update` or `delete` could not be triggered when it shares the same `correlation-id` with its previous operation.
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
/// 		_, err = avs.NewPrivateCloud(ctx, "example", &avs.PrivateCloudArgs{
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
/// import com.pulumi.azure.avs.PrivateCloud;
/// import com.pulumi.azure.avs.PrivateCloudArgs;
/// import com.pulumi.azure.avs.inputs.PrivateCloudManagementClusterArgs;
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
/// Azure VMware Solution Private Clouds can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:avs/privateCloud:PrivateCloud example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/privateCloud1
/// ```
class PrivateCloud extends pulumi.CustomResource {
  /// A `circuit` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> circuits;

  /// The endpoint for the VMware HCX Cloud Manager.
  late final pulumi.Output<String> hcxCloudManagerEndpoint;

  /// Is the Azure VMware Solution Private Cloud connected to the internet? This field can not be updated with `management_cluster[0].size` together.
  /// &gt; **Note:** `internet_connection_enabled` and `management_cluster[0].size` cannot be updated at the same time.
  late final pulumi.Output<bool?> internetConnectionEnabled;

  /// The Azure Region where the Azure VMware Solution Private Cloud should exist. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  late final pulumi.Output<String> location;

  /// A `management_cluster` block as defined below.
  /// &gt; **Note:** `internet_connection_enabled` and `management_cluster[0].size` cannot be updated at the same time.
  late final pulumi.Output<PrivateCloudManagementCluster> managementCluster;

  /// The network used to access VMware vCenter Server and NSX Manager.
  late final pulumi.Output<String> managementSubnetCidr;

  /// The name which should be used for this Azure VMware Solution Private Cloud. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  late final pulumi.Output<String> name;

  /// The subnet which should be unique across virtual network in your subscription as well as on-premise. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  late final pulumi.Output<String> networkSubnetCidr;

  /// The thumbprint of the VMware NSX Manager SSL certificate.
  late final pulumi.Output<String> nsxtCertificateThumbprint;

  /// The endpoint for the VMware NSX Manager.
  late final pulumi.Output<String> nsxtManagerEndpoint;

  /// The password of the VMware NSX Manager cloudadmin. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  late final pulumi.Output<String?> nsxtPassword;

  /// The network which is used for virtual machine cold migration, cloning, and snapshot migration.
  late final pulumi.Output<String> provisioningSubnetCidr;

  /// The name of the Resource Group where the Azure VMware Solution Private Cloud should exist. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The Name of the SKU used for this Azure VMware Solution Private Cloud. Possible values are `av20`, `av36`, `av36t`, `av36p`, `av36pt`, `av48`, `av48t`, `av52`, `av52t`, and `av64`. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  late final pulumi.Output<String> skuName;

  /// A mapping of tags which should be assigned to the Azure VMware Solution Private Cloud.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The thumbprint of the VMware vCenter Server SSL certificate.
  late final pulumi.Output<String> vcenterCertificateThumbprint;

  /// The password of the VMware vCenter Server cloudadmin. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  late final pulumi.Output<String?> vcenterPassword;

  /// The endpoint for VMware vCenter Server Appliance.
  late final pulumi.Output<String> vcsaEndpoint;

  /// The network which is used for live migration of virtual machines.
  late final pulumi.Output<String> vmotionSubnetCidr;

  /// Creates a new [PrivateCloud].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateCloud]. {@macro pulumi_avs_private_cloud_private_cloud_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateCloud(
    String name, {
    PrivateCloudArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:avs/privateCloud:PrivateCloud',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    circuits = registerOutput<List<Map<String, dynamic>>>('circuits');
    hcxCloudManagerEndpoint = registerOutput<String>('hcxCloudManagerEndpoint');
    internetConnectionEnabled = registerOutput<bool?>(
      'internetConnectionEnabled',
    );
    location = registerOutput<String>('location');
    managementCluster = registerOutput<PrivateCloudManagementCluster>(
      'managementCluster',
    );
    managementSubnetCidr = registerOutput<String>('managementSubnetCidr');
    this.name = registerOutput<String>('name');
    networkSubnetCidr = registerOutput<String>('networkSubnetCidr');
    nsxtCertificateThumbprint = registerOutput<String>(
      'nsxtCertificateThumbprint',
    );
    nsxtManagerEndpoint = registerOutput<String>('nsxtManagerEndpoint');
    nsxtPassword = registerOutput<String?>('nsxtPassword');
    provisioningSubnetCidr = registerOutput<String>('provisioningSubnetCidr');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
    vcenterCertificateThumbprint = registerOutput<String>(
      'vcenterCertificateThumbprint',
    );
    vcenterPassword = registerOutput<String?>('vcenterPassword');
    vcsaEndpoint = registerOutput<String>('vcsaEndpoint');
    vmotionSubnetCidr = registerOutput<String>('vmotionSubnetCidr');
  }

  /// Gets an existing [PrivateCloud] resource's state with the given [name] and [id].
  static PrivateCloud get(
    String name,
    pulumi.Input<String> id, {
    PrivateCloudState? state,
  }) {
    return PrivateCloud._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PrivateCloud._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:avs/privateCloud:PrivateCloud',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    circuits = registerOutput<List<Map<String, dynamic>>>('circuits');
    hcxCloudManagerEndpoint = registerOutput<String>('hcxCloudManagerEndpoint');
    internetConnectionEnabled = registerOutput<bool?>(
      'internetConnectionEnabled',
    );
    location = registerOutput<String>('location');
    managementCluster = registerOutput<PrivateCloudManagementCluster>(
      'managementCluster',
    );
    managementSubnetCidr = registerOutput<String>('managementSubnetCidr');
    this.name = registerOutput<String>('name');
    networkSubnetCidr = registerOutput<String>('networkSubnetCidr');
    nsxtCertificateThumbprint = registerOutput<String>(
      'nsxtCertificateThumbprint',
    );
    nsxtManagerEndpoint = registerOutput<String>('nsxtManagerEndpoint');
    nsxtPassword = registerOutput<String?>('nsxtPassword');
    provisioningSubnetCidr = registerOutput<String>('provisioningSubnetCidr');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
    vcenterCertificateThumbprint = registerOutput<String>(
      'vcenterCertificateThumbprint',
    );
    vcenterPassword = registerOutput<String?>('vcenterPassword');
    vcsaEndpoint = registerOutput<String>('vcsaEndpoint');
    vmotionSubnetCidr = registerOutput<String>('vmotionSubnetCidr');
  }
}
