import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_security_perimeter_association_args.dart';
import 'network_security_perimeter_association_state.dart';

/// Manages a Network Security Perimeter Association.
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
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "example",
///     location: "West Europe",
///     resourceGroupName: example.name,
/// });
/// const exampleNetworkSecurityPerimeter = new azure.network.NetworkSecurityPerimeter("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: "West Europe",
/// });
/// const exampleNetworkSecurityPerimeterProfile = new azure.network.NetworkSecurityPerimeterProfile("example", {
///     name: "example",
///     networkSecurityPerimeterId: exampleNetworkSecurityPerimeter.id,
/// });
/// const exampleNetworkSecurityPerimeterAssociation = new azure.network.NetworkSecurityPerimeterAssociation("example", {
///     name: "example",
///     accessMode: "Enforced",
///     networkSecurityPerimeterProfileId: exampleNetworkSecurityPerimeterProfile.id,
///     resourceId: exampleAnalyticsWorkspace.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="example",
///     location="West Europe",
///     resource_group_name=example.name)
/// example_network_security_perimeter = azure.network.NetworkSecurityPerimeter("example",
///     name="example",
///     resource_group_name=example.name,
///     location="West Europe")
/// example_network_security_perimeter_profile = azure.network.NetworkSecurityPerimeterProfile("example",
///     name="example",
///     network_security_perimeter_id=example_network_security_perimeter.id)
/// example_network_security_perimeter_association = azure.network.NetworkSecurityPerimeterAssociation("example",
///     name="example",
///     access_mode="Enforced",
///     network_security_perimeter_profile_id=example_network_security_perimeter_profile.id,
///     resource_id=example_analytics_workspace.id)
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
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "example",
///         Location = "West Europe",
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleNetworkSecurityPerimeter = new Azure.Network.NetworkSecurityPerimeter("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = "West Europe",
///     });
///
///     var exampleNetworkSecurityPerimeterProfile = new Azure.Network.NetworkSecurityPerimeterProfile("example", new()
///     {
///         Name = "example",
///         NetworkSecurityPerimeterId = exampleNetworkSecurityPerimeter.Id,
///     });
///
///     var exampleNetworkSecurityPerimeterAssociation = new Azure.Network.NetworkSecurityPerimeterAssociation("example", new()
///     {
///         Name = "example",
///         AccessMode = "Enforced",
///         NetworkSecurityPerimeterProfileId = exampleNetworkSecurityPerimeterProfile.Id,
///         ResourceId = exampleAnalyticsWorkspace.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
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
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          pulumi.String("West Europe"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkSecurityPerimeter, err := network.NewNetworkSecurityPerimeter(ctx, "example", &network.NetworkSecurityPerimeterArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkSecurityPerimeterProfile, err := network.NewNetworkSecurityPerimeterProfile(ctx, "example", &network.NetworkSecurityPerimeterProfileArgs{
/// 			Name:                       pulumi.String("example"),
/// 			NetworkSecurityPerimeterId: exampleNetworkSecurityPerimeter.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkSecurityPerimeterAssociation(ctx, "example", &network.NetworkSecurityPerimeterAssociationArgs{
/// 			Name:                              pulumi.String("example"),
/// 			AccessMode:                        pulumi.String("Enforced"),
/// 			NetworkSecurityPerimeterProfileId: exampleNetworkSecurityPerimeterProfile.ID(),
/// 			ResourceId:                        exampleAnalyticsWorkspace.ID(),
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
/// resource "azure_operationalinsights_analyticsworkspace" "example" {
///   name                = "example"
///   location            = "West Europe"
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_networksecurityperimeter" "example" {
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = "West Europe"
/// }
/// resource "azure_network_networksecurityperimeterprofile" "example" {
///   name                          = "example"
///   network_security_perimeter_id = azure_network_networksecurityperimeter.example.id
/// }
/// resource "azure_network_networksecurityperimeterassociation" "example" {
///   name                                  = "example"
///   access_mode                           = "Enforced"
///   network_security_perimeter_profile_id = azure_network_networksecurityperimeterprofile.example.id
///   resource_id                           = azure_operationalinsights_analyticsworkspace.example.id
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
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.network.NetworkSecurityPerimeter;
/// import com.pulumi.azure.network.NetworkSecurityPerimeterArgs;
/// import com.pulumi.azure.network.NetworkSecurityPerimeterProfile;
/// import com.pulumi.azure.network.NetworkSecurityPerimeterProfileArgs;
/// import com.pulumi.azure.network.NetworkSecurityPerimeterAssociation;
/// import com.pulumi.azure.network.NetworkSecurityPerimeterAssociationArgs;
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
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("example")
///             .location("West Europe")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleNetworkSecurityPerimeter = new NetworkSecurityPerimeter("exampleNetworkSecurityPerimeter", NetworkSecurityPerimeterArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location("West Europe")
///             .build());
///
///         var exampleNetworkSecurityPerimeterProfile = new NetworkSecurityPerimeterProfile("exampleNetworkSecurityPerimeterProfile", NetworkSecurityPerimeterProfileArgs.builder()
///             .name("example")
///             .networkSecurityPerimeterId(exampleNetworkSecurityPerimeter.id())
///             .build());
///
///         var exampleNetworkSecurityPerimeterAssociation = new NetworkSecurityPerimeterAssociation("exampleNetworkSecurityPerimeterAssociation", NetworkSecurityPerimeterAssociationArgs.builder()
///             .name("example")
///             .accessMode("Enforced")
///             .networkSecurityPerimeterProfileId(exampleNetworkSecurityPerimeterProfile.id())
///             .resourceId(exampleAnalyticsWorkspace.id())
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
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: example
///       location: West Europe
///       resourceGroupName: ${example.name}
///   exampleNetworkSecurityPerimeter:
///     type: azure:network:NetworkSecurityPerimeter
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: West Europe
///   exampleNetworkSecurityPerimeterProfile:
///     type: azure:network:NetworkSecurityPerimeterProfile
///     name: example
///     properties:
///       name: example
///       networkSecurityPerimeterId: ${exampleNetworkSecurityPerimeter.id}
///   exampleNetworkSecurityPerimeterAssociation:
///     type: azure:network:NetworkSecurityPerimeterAssociation
///     name: example
///     properties:
///       name: example
///       accessMode: Enforced
///       networkSecurityPerimeterProfileId: ${exampleNetworkSecurityPerimeterProfile.id}
///       resourceId: ${exampleAnalyticsWorkspace.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Network Security Perimeter Associations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkSecurityPerimeterAssociation:NetworkSecurityPerimeterAssociation example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.Network/networkSecurityPerimeters/example-nsp/resourceAssociations/example-assoc
/// ```
class NetworkSecurityPerimeterAssociation extends pulumi.CustomResource {
  /// Access mode for the associated resource on the Network Security Perimeter. Possible values are `Audit`, `Enforced`, and `Learning`.
  late final pulumi.Output<String> accessMode;
  /// The name which should be used for this Network Security Perimeter Association. Changing this forces a new Network Security Perimeter Association to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Network Security Perimeter Profile. Changing this forces a new Network Security Perimeter Association to be created.
  late final pulumi.Output<String> networkSecurityPerimeterProfileId;
  /// The ID of the associated resource. Changing this forces a new Network Security Perimeter Association to be created.
  ///
  /// &gt; **Note:** A resource can only be associated with one Network Security Perimeter at a time.
  /// If the target resource is already associated with another Network Security Perimeter, the creation of this association may appear to succeed in Terraform but will not be reflected in Azure. In such cases, the association will not actually exist and subsequent Terraform operations may show unexpected behavior.
  late final pulumi.Output<String> resourceId;

  /// Creates a new [NetworkSecurityPerimeterAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkSecurityPerimeterAssociation]. {@macro pulumi_network_network_security_perimeter_association_network_security_perimeter_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkSecurityPerimeterAssociation(
    String name, {
    NetworkSecurityPerimeterAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkSecurityPerimeterAssociation:NetworkSecurityPerimeterAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessMode = registerOutput<String>('accessMode');
    this.name = registerOutput<String>('name');
    networkSecurityPerimeterProfileId = registerOutput<String>('networkSecurityPerimeterProfileId');
    resourceId = registerOutput<String>('resourceId');
  }

  /// Gets an existing [NetworkSecurityPerimeterAssociation] resource's state with the given [name] and [id].
  static NetworkSecurityPerimeterAssociation get(
    String name,
    pulumi.Input<String> id, {
    NetworkSecurityPerimeterAssociationState? state,
  }) {
    return NetworkSecurityPerimeterAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkSecurityPerimeterAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkSecurityPerimeterAssociation:NetworkSecurityPerimeterAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessMode = registerOutput<String>('accessMode');
    this.name = registerOutput<String>('name');
    networkSecurityPerimeterProfileId = registerOutput<String>('networkSecurityPerimeterProfileId');
    resourceId = registerOutput<String>('resourceId');
  }
}
