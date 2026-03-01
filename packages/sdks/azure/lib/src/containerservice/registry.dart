import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_args.dart';
import 'registry_encryption.dart';
import 'registry_georeplication.dart';
import 'registry_identity.dart';
import 'registry_network_rule_set.dart';
import 'registry_state.dart';

/// Manages an Azure Container Registry.
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
/// const acr = new azure.containerservice.Registry("acr", {
///     name: "containerRegistry1",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "Premium",
///     adminEnabled: false,
///     georeplications: [
///         {
///             location: "East US",
///             zoneRedundancyEnabled: true,
///             tags: {},
///         },
///         {
///             location: "North Europe",
///             zoneRedundancyEnabled: true,
///             tags: {},
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// acr = azure.containerservice.Registry("acr",
///     name="containerRegistry1",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="Premium",
///     admin_enabled=False,
///     georeplications=[
///         {
///             "location": "East US",
///             "zone_redundancy_enabled": True,
///             "tags": {},
///         },
///         {
///             "location": "North Europe",
///             "zone_redundancy_enabled": True,
///             "tags": {},
///         },
///     ])
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
///     var acr = new Azure.ContainerService.Registry("acr", new()
///     {
///         Name = "containerRegistry1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "Premium",
///         AdminEnabled = false,
///         Georeplications = new[]
///         {
///             new Azure.ContainerService.Inputs.RegistryGeoreplicationArgs
///             {
///                 Location = "East US",
///                 ZoneRedundancyEnabled = true,
///                 Tags = null,
///             },
///             new Azure.ContainerService.Inputs.RegistryGeoreplicationArgs
///             {
///                 Location = "North Europe",
///                 ZoneRedundancyEnabled = true,
///                 Tags = null,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
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
/// 		_, err = containerservice.NewRegistry(ctx, "acr", &containerservice.RegistryArgs{
/// 			Name:              pulumi.String("containerRegistry1"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("Premium"),
/// 			AdminEnabled:      pulumi.Bool(false),
/// 			Georeplications: containerservice.RegistryGeoreplicationArray{
/// 				&containerservice.RegistryGeoreplicationArgs{
/// 					Location:              pulumi.String("East US"),
/// 					ZoneRedundancyEnabled: pulumi.Bool(true),
/// 					Tags:                  pulumi.StringMap{},
/// 				},
/// 				&containerservice.RegistryGeoreplicationArgs{
/// 					Location:              pulumi.String("North Europe"),
/// 					ZoneRedundancyEnabled: pulumi.Bool(true),
/// 					Tags:                  pulumi.StringMap{},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.containerservice.Registry;
/// import com.pulumi.azure.containerservice.RegistryArgs;
/// import com.pulumi.azure.containerservice.inputs.RegistryGeoreplicationArgs;
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
///         var acr = new Registry("acr", RegistryArgs.builder()
///             .name("containerRegistry1")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("Premium")
///             .adminEnabled(false)
///             .georeplications(
///                 RegistryGeoreplicationArgs.builder()
///                     .location("East US")
///                     .zoneRedundancyEnabled(true)
///                     .tags(Map.ofEntries(
///                     ))
///                     .build(),
///                 RegistryGeoreplicationArgs.builder()
///                     .location("North Europe")
///                     .zoneRedundancyEnabled(true)
///                     .tags(Map.ofEntries(
///                     ))
///                     .build())
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
///   acr:
///     type: azure:containerservice:Registry
///     properties:
///       name: containerRegistry1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: Premium
///       adminEnabled: false
///       georeplications:
///         - location: East US
///           zoneRedundancyEnabled: true
///           tags: {}
///         - location: North Europe
///           zoneRedundancyEnabled: true
///           tags: {}
/// ```
///
///
///
/// ### Encryption)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     name: "registry-uai",
/// });
/// const example = azure.keyvault.getKey({
///     name: "super-secret",
///     keyVaultId: existing.id,
/// });
/// const acr = new azure.containerservice.Registry("acr", {
///     name: "containerRegistry1",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     sku: "Premium",
///     identity: {
///         type: "UserAssigned",
///         identityIds: [exampleUserAssignedIdentity.id],
///     },
///     encryption: {
///         keyVaultKeyId: example.then(example => example.id),
///         identityClientId: exampleUserAssignedIdentity.clientId,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     name="registry-uai")
/// example = azure.keyvault.get_key(name="super-secret",
///     key_vault_id=existing["id"])
/// acr = azure.containerservice.Registry("acr",
///     name="containerRegistry1",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     sku="Premium",
///     identity={
///         "type": "UserAssigned",
///         "identity_ids": [example_user_assigned_identity.id],
///     },
///     encryption={
///         "key_vault_key_id": example.id,
///         "identity_client_id": example_user_assigned_identity.client_id,
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
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         Name = "registry-uai",
///     });
///
///     var example = Azure.KeyVault.GetKey.Invoke(new()
///     {
///         Name = "super-secret",
///         KeyVaultId = existing.Id,
///     });
///
///     var acr = new Azure.ContainerService.Registry("acr", new()
///     {
///         Name = "containerRegistry1",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         Sku = "Premium",
///         Identity = new Azure.ContainerService.Inputs.RegistryIdentityArgs
///         {
///             Type = "UserAssigned",
///             IdentityIds = new[]
///             {
///                 exampleUserAssignedIdentity.Id,
///             },
///         },
///         Encryption = new Azure.ContainerService.Inputs.RegistryEncryptionArgs
///         {
///             KeyVaultKeyId = example.Apply(getKeyResult => getKeyResult.Id),
///             IdentityClientId = exampleUserAssignedIdentity.ClientId,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Location:          exampleResourceGroup.Location,
/// 			Name:              pulumi.String("registry-uai"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := keyvault.LookupKey(ctx, &keyvault.LookupKeyArgs{
/// 			Name:       "super-secret",
/// 			KeyVaultId: existing.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerservice.NewRegistry(ctx, "acr", &containerservice.RegistryArgs{
/// 			Name:              pulumi.String("containerRegistry1"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Location:          exampleResourceGroup.Location,
/// 			Sku:               pulumi.String("Premium"),
/// 			Identity: &containerservice.RegistryIdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID(),
/// 				},
/// 			},
/// 			Encryption: &containerservice.RegistryEncryptionArgs{
/// 				KeyVaultKeyId:    pulumi.String(example.Id),
/// 				IdentityClientId: exampleUserAssignedIdentity.ClientId,
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.keyvault.KeyvaultFunctions;
/// import com.pulumi.azure.keyvault.inputs.GetKeyArgs;
/// import com.pulumi.azure.containerservice.Registry;
/// import com.pulumi.azure.containerservice.RegistryArgs;
/// import com.pulumi.azure.containerservice.inputs.RegistryIdentityArgs;
/// import com.pulumi.azure.containerservice.inputs.RegistryEncryptionArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .name("registry-uai")
///             .build());
///
///         final var example = KeyvaultFunctions.getKey(GetKeyArgs.builder()
///             .name("super-secret")
///             .keyVaultId(existing.id())
///             .build());
///
///         var acr = new Registry("acr", RegistryArgs.builder()
///             .name("containerRegistry1")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .sku("Premium")
///             .identity(RegistryIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .identityIds(exampleUserAssignedIdentity.id())
///                 .build())
///             .encryption(RegistryEncryptionArgs.builder()
///                 .keyVaultKeyId(example.id())
///                 .identityClientId(exampleUserAssignedIdentity.clientId())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   acr:
///     type: azure:containerservice:Registry
///     properties:
///       name: containerRegistry1
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       sku: Premium
///       identity:
///         type: UserAssigned
///         identityIds:
///           - ${exampleUserAssignedIdentity.id}
///       encryption:
///         keyVaultKeyId: ${example.id}
///         identityClientId: ${exampleUserAssignedIdentity.clientId}
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       name: registry-uai
/// variables:
///   example:
///     fn::invoke:
///       function: azure:keyvault:getKey
///       arguments:
///         name: super-secret
///         keyVaultId: ${existing.id}
/// ```
///
///
///
/// ### Attaching A Container Registry To A Kubernetes Cluster)
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
/// const exampleRegistry = new azure.containerservice.Registry("example", {
///     name: "containerRegistry1",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "Premium",
/// });
/// const exampleKubernetesCluster = new azure.containerservice.KubernetesCluster("example", {
///     name: "example-aks1",
///     location: example.location,
///     resourceGroupName: example.name,
///     dnsPrefix: "exampleaks1",
///     defaultNodePool: {
///         name: "default",
///         nodeCount: 1,
///         vmSize: "Standard_D2_v2",
///     },
///     identity: {
///         type: "SystemAssigned",
///     },
///     tags: {
///         Environment: "Production",
///     },
/// });
/// const exampleAssignment = new azure.authorization.Assignment("example", {
///     principalId: exampleKubernetesCluster.kubeletIdentity.apply(kubeletIdentity => kubeletIdentity.objectId),
///     roleDefinitionName: "AcrPull",
///     scope: exampleRegistry.id,
///     skipServicePrincipalAadCheck: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_registry = azure.containerservice.Registry("example",
///     name="containerRegistry1",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="Premium")
/// example_kubernetes_cluster = azure.containerservice.KubernetesCluster("example",
///     name="example-aks1",
///     location=example.location,
///     resource_group_name=example.name,
///     dns_prefix="exampleaks1",
///     default_node_pool={
///         "name": "default",
///         "node_count": 1,
///         "vm_size": "Standard_D2_v2",
///     },
///     identity={
///         "type": "SystemAssigned",
///     },
///     tags={
///         "Environment": "Production",
///     })
/// example_assignment = azure.authorization.Assignment("example",
///     principal_id=example_kubernetes_cluster.kubelet_identity.object_id,
///     role_definition_name="AcrPull",
///     scope=example_registry.id,
///     skip_service_principal_aad_check=True)
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
///     var exampleRegistry = new Azure.ContainerService.Registry("example", new()
///     {
///         Name = "containerRegistry1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "Premium",
///     });
///
///     var exampleKubernetesCluster = new Azure.ContainerService.KubernetesCluster("example", new()
///     {
///         Name = "example-aks1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         DnsPrefix = "exampleaks1",
///         DefaultNodePool = new Azure.ContainerService.Inputs.KubernetesClusterDefaultNodePoolArgs
///         {
///             Name = "default",
///             NodeCount = 1,
///             VmSize = "Standard_D2_v2",
///         },
///         Identity = new Azure.ContainerService.Inputs.KubernetesClusterIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         Tags =
///         {
///             { "Environment", "Production" },
///         },
///     });
///
///     var exampleAssignment = new Azure.Authorization.Assignment("example", new()
///     {
///         PrincipalId = exampleKubernetesCluster.KubeletIdentity.Apply(kubeletIdentity => kubeletIdentity.ObjectId),
///         RoleDefinitionName = "AcrPull",
///         Scope = exampleRegistry.Id,
///         SkipServicePrincipalAadCheck = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
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
/// 		exampleRegistry, err := containerservice.NewRegistry(ctx, "example", &containerservice.RegistryArgs{
/// 			Name:              pulumi.String("containerRegistry1"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("Premium"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKubernetesCluster, err := containerservice.NewKubernetesCluster(ctx, "example", &containerservice.KubernetesClusterArgs{
/// 			Name:              pulumi.String("example-aks1"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			DnsPrefix:         pulumi.String("exampleaks1"),
/// 			DefaultNodePool: &containerservice.KubernetesClusterDefaultNodePoolArgs{
/// 				Name:      pulumi.String("default"),
/// 				NodeCount: pulumi.Int(1),
/// 				VmSize:    pulumi.String("Standard_D2_v2"),
/// 			},
/// 			Identity: &containerservice.KubernetesClusterIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
/// 			PrincipalId: pulumi.String(exampleKubernetesCluster.KubeletIdentity.ApplyT(func(kubeletIdentity containerservice.KubernetesClusterKubeletIdentity) (*string, error) {
/// 				return &kubeletIdentity.ObjectId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			RoleDefinitionName:           pulumi.String("AcrPull"),
/// 			Scope:                        exampleRegistry.ID(),
/// 			SkipServicePrincipalAadCheck: pulumi.Bool(true),
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
/// import com.pulumi.azure.containerservice.Registry;
/// import com.pulumi.azure.containerservice.RegistryArgs;
/// import com.pulumi.azure.containerservice.KubernetesCluster;
/// import com.pulumi.azure.containerservice.KubernetesClusterArgs;
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterDefaultNodePoolArgs;
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterIdentityArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
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
///         var exampleRegistry = new Registry("exampleRegistry", RegistryArgs.builder()
///             .name("containerRegistry1")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("Premium")
///             .build());
///
///         var exampleKubernetesCluster = new KubernetesCluster("exampleKubernetesCluster", KubernetesClusterArgs.builder()
///             .name("example-aks1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .dnsPrefix("exampleaks1")
///             .defaultNodePool(KubernetesClusterDefaultNodePoolArgs.builder()
///                 .name("default")
///                 .nodeCount(1)
///                 .vmSize("Standard_D2_v2")
///                 .build())
///             .identity(KubernetesClusterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .tags(Map.of("Environment", "Production"))
///             .build());
///
///         var exampleAssignment = new Assignment("exampleAssignment", AssignmentArgs.builder()
///             .principalId(exampleKubernetesCluster.kubeletIdentity().applyValue(_kubeletIdentity -> _kubeletIdentity.objectId()))
///             .roleDefinitionName("AcrPull")
///             .scope(exampleRegistry.id())
///             .skipServicePrincipalAadCheck(true)
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
///   exampleRegistry:
///     type: azure:containerservice:Registry
///     name: example
///     properties:
///       name: containerRegistry1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: Premium
///   exampleKubernetesCluster:
///     type: azure:containerservice:KubernetesCluster
///     name: example
///     properties:
///       name: example-aks1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       dnsPrefix: exampleaks1
///       defaultNodePool:
///         name: default
///         nodeCount: 1
///         vmSize: Standard_D2_v2
///       identity:
///         type: SystemAssigned
///       tags:
///         Environment: Production
///   exampleAssignment:
///     type: azure:authorization:Assignment
///     name: example
///     properties:
///       principalId: ${exampleKubernetesCluster.kubeletIdentity.objectId}
///       roleDefinitionName: AcrPull
///       scope: ${exampleRegistry.id}
///       skipServicePrincipalAadCheck: true
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ContainerRegistry` - 2025-11-01
///
/// ## Import
///
/// Container Registries can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerservice/registry:Registry example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ContainerRegistry/registries/myregistry1
/// ```
class Registry extends pulumi.CustomResource {
  /// Specifies whether the admin user is enabled. Defaults to `false`.
  late final pulumi.Output<bool?> adminEnabled;
  /// The Password associated with the Container Registry Admin account - if the admin account is enabled.
  late final pulumi.Output<String> adminPassword;
  /// The Username associated with the Container Registry Admin account - if the admin account is enabled.
  late final pulumi.Output<String> adminUsername;
  /// Whether to allow anonymous (unauthenticated) pull access to this Container Registry. This is only supported on resources with the `Standard` or `Premium` SKU.
  late final pulumi.Output<bool?> anonymousPullEnabled;
  /// Whether to enable dedicated data endpoints for this Container Registry? This is only supported on resources with the `Premium` SKU.
  late final pulumi.Output<bool?> dataEndpointEnabled;
  /// A set of data endpoint hostnames associated with the container registry if data endpoints are enabled.
  late final pulumi.Output<List<String>> dataEndpointHostNames;
  /// An `encryption` block as documented below.
  late final pulumi.Output<RegistryEncryption> encryption;
  /// Boolean value that indicates whether export policy is enabled. Defaults to `true`. In order to set it to `false`, make sure the `public_network_access_enabled` is also set to `false`.
  ///
  /// > **Note:** `quarantine_policy_enabled`, `retention_policy_in_days`, `trust_policy_enabled`, `export_policy_enabled` and `zone_redundancy_enabled` are only supported on resources with the `Premium` SKU.
  late final pulumi.Output<bool?> exportPolicyEnabled;
  /// One or more `georeplications` blocks as documented below.
  ///
  /// > **Note:** The `georeplications` is only supported on new resources with the `Premium` SKU.
  ///
  /// > **Note:** The `georeplications` list cannot contain the location where the Container Registry exists.
  ///
  /// > **Note:** If more than one `georeplications` block is specified, they are expected to follow the alphabetic order on the `location` property.
  late final pulumi.Output<List<RegistryGeoreplication>?> georeplications;
  /// An `identity` block as defined below.
  late final pulumi.Output<RegistryIdentity?> identity;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The URL that can be used to log into the container registry.
  late final pulumi.Output<String> loginServer;
  /// Specifies the name of the Container Registry. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Whether to allow trusted Azure services to access a network-restricted Container Registry? Possible values are `None` and `AzureServices`. Defaults to `AzureServices`.
  late final pulumi.Output<String?> networkRuleBypassOption;
  /// A `network_rule_set` block as documented below.
  late final pulumi.Output<RegistryNetworkRuleSet> networkRuleSet;
  /// Whether public network access is allowed for the container registry. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// Boolean value that indicates whether quarantine policy is enabled.
  late final pulumi.Output<bool?> quarantinePolicyEnabled;
  /// The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The number of days to retain and untagged manifest after which it gets purged.
  late final pulumi.Output<int?> retentionPolicyInDays;
  /// The SKU name of the container registry. Possible values are `Basic`, `Standard` and `Premium`.
  late final pulumi.Output<String> sku;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Boolean value that indicated whether trust policy is enabled. Defaults to `false`.
  late final pulumi.Output<bool?> trustPolicyEnabled;
  /// Whether zone redundancy is enabled for this Container Registry? Changing this forces a new resource to be created. Defaults to `false`.
  late final pulumi.Output<bool?> zoneRedundancyEnabled;

  /// Creates a new [Registry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Registry]. {@macro pulumi_containerservice_registry_registry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Registry(
    String name, {
    RegistryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/registry:Registry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminEnabled = registerOutput<bool?>('adminEnabled');
    this.adminPassword = registerOutput<String>('adminPassword');
    this.adminUsername = registerOutput<String>('adminUsername');
    this.anonymousPullEnabled = registerOutput<bool?>('anonymousPullEnabled');
    this.dataEndpointEnabled = registerOutput<bool?>('dataEndpointEnabled');
    this.dataEndpointHostNames = registerOutput<List<String>>('dataEndpointHostNames');
    this.encryption = registerOutput<RegistryEncryption>('encryption');
    this.exportPolicyEnabled = registerOutput<bool?>('exportPolicyEnabled');
    this.georeplications = registerOutput<List<RegistryGeoreplication>?>('georeplications');
    this.identity = registerOutput<RegistryIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.loginServer = registerOutput<String>('loginServer');
    this.name = registerOutput<String>('name');
    this.networkRuleBypassOption = registerOutput<String?>('networkRuleBypassOption');
    this.networkRuleSet = registerOutput<RegistryNetworkRuleSet>('networkRuleSet');
    this.publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    this.quarantinePolicyEnabled = registerOutput<bool?>('quarantinePolicyEnabled');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.retentionPolicyInDays = registerOutput<int?>('retentionPolicyInDays');
    this.sku = registerOutput<String>('sku');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.trustPolicyEnabled = registerOutput<bool?>('trustPolicyEnabled');
    this.zoneRedundancyEnabled = registerOutput<bool?>('zoneRedundancyEnabled');
  }

  /// Gets an existing [Registry] resource's state with the given [name] and [id].
  static Registry get(
    String name,
    pulumi.Input<String> id, {
    RegistryState? state,
  }) {
    return Registry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Registry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/registry:Registry',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminEnabled = registerOutput<bool?>('adminEnabled');
    this.adminPassword = registerOutput<String>('adminPassword');
    this.adminUsername = registerOutput<String>('adminUsername');
    this.anonymousPullEnabled = registerOutput<bool?>('anonymousPullEnabled');
    this.dataEndpointEnabled = registerOutput<bool?>('dataEndpointEnabled');
    this.dataEndpointHostNames = registerOutput<List<String>>('dataEndpointHostNames');
    this.encryption = registerOutput<RegistryEncryption>('encryption');
    this.exportPolicyEnabled = registerOutput<bool?>('exportPolicyEnabled');
    this.georeplications = registerOutput<List<RegistryGeoreplication>?>('georeplications');
    this.identity = registerOutput<RegistryIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.loginServer = registerOutput<String>('loginServer');
    this.name = registerOutput<String>('name');
    this.networkRuleBypassOption = registerOutput<String?>('networkRuleBypassOption');
    this.networkRuleSet = registerOutput<RegistryNetworkRuleSet>('networkRuleSet');
    this.publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    this.quarantinePolicyEnabled = registerOutput<bool?>('quarantinePolicyEnabled');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.retentionPolicyInDays = registerOutput<int?>('retentionPolicyInDays');
    this.sku = registerOutput<String>('sku');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.trustPolicyEnabled = registerOutput<bool?>('trustPolicyEnabled');
    this.zoneRedundancyEnabled = registerOutput<bool?>('zoneRedundancyEnabled');
  }
}
