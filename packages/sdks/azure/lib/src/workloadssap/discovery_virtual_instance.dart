import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovery_virtual_instance_args.dart';
import 'discovery_virtual_instance_identity.dart';
import 'discovery_virtual_instance_state.dart';

/// Manages an SAP Discovery Virtual Instance.
///
/// &gt; **Note:** Before using this resource, it's required to submit the request of registering the Resource Provider with Azure CLI `az provider register --namespace "Microsoft.Workloads"`. The Resource Provider can take a while to register, you can check the status by running `az provider show --namespace "Microsoft.Workloads" --query "registrationState"`. Once this outputs "Registered" the Resource Provider is available for use.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-sapvis",
///     location: "West Europe",
/// });
/// const exampleDiscoveryVirtualInstance = new azure.workloadssap.DiscoveryVirtualInstance("example", {
///     name: "X01",
///     resourceGroupName: example.name,
///     location: example.location,
///     environment: "NonProd",
///     sapProduct: "S4HANA",
///     centralServerVirtualMachineId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/exampleRG/providers/Microsoft.Compute/virtualMachines/csvm1",
///     managedStorageAccountName: "managedsa",
///     identity: {
///         type: "UserAssigned",
///         identityIds: ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/exampleRG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/uai1"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-sapvis",
///     location="West Europe")
/// example_discovery_virtual_instance = azure.workloadssap.DiscoveryVirtualInstance("example",
///     name="X01",
///     resource_group_name=example.name,
///     location=example.location,
///     environment="NonProd",
///     sap_product="S4HANA",
///     central_server_virtual_machine_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/exampleRG/providers/Microsoft.Compute/virtualMachines/csvm1",
///     managed_storage_account_name="managedsa",
///     identity={
///         "type": "UserAssigned",
///         "identity_ids": ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/exampleRG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/uai1"],
///     })
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
///         Name = "example-sapvis",
///         Location = "West Europe",
///     });
///
///     var exampleDiscoveryVirtualInstance = new Azure.WorkloadsSAP.DiscoveryVirtualInstance("example", new()
///     {
///         Name = "X01",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Environment = "NonProd",
///         SapProduct = "S4HANA",
///         CentralServerVirtualMachineId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/exampleRG/providers/Microsoft.Compute/virtualMachines/csvm1",
///         ManagedStorageAccountName = "managedsa",
///         Identity = new Azure.WorkloadsSAP.Inputs.DiscoveryVirtualInstanceIdentityArgs
///         {
///             Type = "UserAssigned",
///             IdentityIds = new[]
///             {
///                 "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/exampleRG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/uai1",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/workloadssap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-sapvis"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workloadssap.NewDiscoveryVirtualInstance(ctx, "example", &workloadssap.DiscoveryVirtualInstanceArgs{
/// 			Name:                          pulumi.String("X01"),
/// 			ResourceGroupName:             example.Name,
/// 			Location:                      example.Location,
/// 			Environment:                   pulumi.String("NonProd"),
/// 			SapProduct:                    pulumi.String("S4HANA"),
/// 			CentralServerVirtualMachineId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/exampleRG/providers/Microsoft.Compute/virtualMachines/csvm1"),
/// 			ManagedStorageAccountName:     pulumi.String("managedsa"),
/// 			Identity: &workloadssap.DiscoveryVirtualInstanceIdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/exampleRG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/uai1"),
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-sapvis"
///   location = "West Europe"
/// }
/// resource "azure_workloadssap_discoveryvirtualinstance" "example" {
///   name                              = "X01"
///   resource_group_name               = azure_core_resourcegroup.example.name
///   location                          = azure_core_resourcegroup.example.location
///   environment                       = "NonProd"
///   sap_product                       = "S4HANA"
///   central_server_virtual_machine_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/exampleRG/providers/Microsoft.Compute/virtualMachines/csvm1"
///   managed_storage_account_name      = "managedsa"
///   identity = {
///     type         = "UserAssigned"
///     identity_ids = ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/exampleRG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/uai1"]
///   }
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
/// import com.pulumi.azure.workloadssap.DiscoveryVirtualInstance;
/// import com.pulumi.azure.workloadssap.DiscoveryVirtualInstanceArgs;
/// import com.pulumi.azure.workloadssap.inputs.DiscoveryVirtualInstanceIdentityArgs;
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
///             .name("example-sapvis")
///             .location("West Europe")
///             .build());
///
///         var exampleDiscoveryVirtualInstance = new DiscoveryVirtualInstance("exampleDiscoveryVirtualInstance", DiscoveryVirtualInstanceArgs.builder()
///             .name("X01")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .environment("NonProd")
///             .sapProduct("S4HANA")
///             .centralServerVirtualMachineId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/exampleRG/providers/Microsoft.Compute/virtualMachines/csvm1")
///             .managedStorageAccountName("managedsa")
///             .identity(DiscoveryVirtualInstanceIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .identityIds("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/exampleRG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/uai1")
///                 .build())
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
///       name: example-sapvis
///       location: West Europe
///   exampleDiscoveryVirtualInstance:
///     type: azure:workloadssap:DiscoveryVirtualInstance
///     name: example
///     properties:
///       name: X01
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       environment: NonProd
///       sapProduct: S4HANA
///       centralServerVirtualMachineId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/exampleRG/providers/Microsoft.Compute/virtualMachines/csvm1
///       managedStorageAccountName: managedsa
///       identity:
///         type: UserAssigned
///         identityIds:
///           - /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/exampleRG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/uai1
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Workloads` - 2024-09-01
///
/// ## Import
///
/// SAP Discovery Virtual Instances can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:workloadssap/discoveryVirtualInstance:DiscoveryVirtualInstance example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Workloads/sapVirtualInstances/vis1
/// ```
class DiscoveryVirtualInstance extends pulumi.CustomResource {
  /// The ID of the Virtual Machine of the Central Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> centralServerVirtualMachineId;
  /// The environment type for the SAP Discovery Virtual Instance. Possible values are `NonProd` and `Prod`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> environment;
  /// An `identity` block as defined below.
  late final pulumi.Output<DiscoveryVirtualInstanceIdentity?> identity;
  /// The Azure Region where the SAP Discovery Virtual Instance should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the managed Resource Group for the SAP Discovery Virtual Instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> managedResourceGroupName;
  /// The network access type for managed resources. Possible values are `Private` and `Public`. Defaults to `Public`.
  late final pulumi.Output<String?> managedResourcesNetworkAccessType;
  /// The name of the custom Storage Account created by the service in the managed Resource Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> managedStorageAccountName;
  /// Specifies the name of the SAP Discovery Virtual Instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the SAP Discovery Virtual Instance should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The SAP Product type for the SAP Discovery Virtual Instance. Possible values are `ECC`, `Other` and `S4HANA`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sapProduct;
  /// A mapping of tags which should be assigned to the SAP Discovery Virtual Instance.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [DiscoveryVirtualInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiscoveryVirtualInstance]. {@macro pulumi_workloadssap_discovery_virtual_instance_discovery_virtual_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiscoveryVirtualInstance(
    String name, {
    DiscoveryVirtualInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:workloadssap/discoveryVirtualInstance:DiscoveryVirtualInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    centralServerVirtualMachineId = registerOutput<String>('centralServerVirtualMachineId');
    environment = registerOutput<String>('environment');
    identity = registerOutput<DiscoveryVirtualInstanceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiscoveryVirtualInstanceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    managedResourceGroupName = registerOutput<String?>('managedResourceGroupName');
    managedResourcesNetworkAccessType = registerOutput<String?>('managedResourcesNetworkAccessType');
    managedStorageAccountName = registerOutput<String?>('managedStorageAccountName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sapProduct = registerOutput<String>('sapProduct');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [DiscoveryVirtualInstance] resource's state with the given [name] and [id].
  static DiscoveryVirtualInstance get(
    String name,
    pulumi.Input<String> id, {
    DiscoveryVirtualInstanceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DiscoveryVirtualInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DiscoveryVirtualInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:workloadssap/discoveryVirtualInstance:DiscoveryVirtualInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    centralServerVirtualMachineId = registerOutput<String>('centralServerVirtualMachineId');
    environment = registerOutput<String>('environment');
    identity = registerOutput<DiscoveryVirtualInstanceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiscoveryVirtualInstanceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    managedResourceGroupName = registerOutput<String?>('managedResourceGroupName');
    managedResourcesNetworkAccessType = registerOutput<String?>('managedResourcesNetworkAccessType');
    managedStorageAccountName = registerOutput<String?>('managedStorageAccountName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sapProduct = registerOutput<String>('sapProduct');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [DiscoveryVirtualInstance] resource.
  DiscoveryVirtualInstance.reference(String urn)
    : super(
        'azure:workloadssap/discoveryVirtualInstance:DiscoveryVirtualInstance',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    centralServerVirtualMachineId = registerOutput<String>('centralServerVirtualMachineId');
    environment = registerOutput<String>('environment');
    identity = registerOutput<DiscoveryVirtualInstanceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiscoveryVirtualInstanceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    managedResourceGroupName = registerOutput<String?>('managedResourceGroupName');
    managedResourcesNetworkAccessType = registerOutput<String?>('managedResourcesNetworkAccessType');
    managedStorageAccountName = registerOutput<String?>('managedStorageAccountName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sapProduct = registerOutput<String>('sapProduct');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
