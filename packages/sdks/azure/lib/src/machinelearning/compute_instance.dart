import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_instance_args.dart';
import 'compute_instance_assign_to_user.dart';
import 'compute_instance_identity.dart';
import 'compute_instance_ssh.dart';
import 'compute_instance_state.dart';

/// Manages a Machine Learning Compute Instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "west europe",
///     tags: {
///         stage: "example",
///     },
/// });
/// const exampleInsights = new azure.appinsights.Insights("example", {
///     name: "example-ai",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationType: "web",
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "example-kv",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     purgeProtectionEnabled: true,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplesa",
///     location: example.location,
///     resourceGroupName: example.name,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleWorkspace = new azure.machinelearning.Workspace("example", {
///     name: "example-mlw",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationInsightsId: exampleInsights.id,
///     keyVaultId: exampleKeyVault.id,
///     storageAccountId: exampleAccount.id,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     addressSpaces: ["10.1.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.1.0.0/24"],
/// });
/// const config = new pulumi.Config();
/// const sshKey = config.get("sshKey") || "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCqaZoyiz1qbdOQ8xEf6uEu1cCwYowo5FHtsBhqLoDnnp7KUTEBN+L2NxRIfQ781rxV6Iq5jSav6b2Q8z5KiseOlvKA/RF2wqU0UPYqQviQhLmW6THTpmrv/YkUCuzxDpsH7DUDhZcwySLKVVe0Qm3+5N2Ta6UYH3lsDf9R9wTP2K/+vAnflKebuypNlmocIvakFWoZda18FOmsOoIVXQ8HWFNCuw9ZCunMSN62QGamCe3dL5cXlkgHYv7ekJE15IA9aOJcM7e90oeTqo+7HTcWfdu0qQqPWY5ujyMw/llas8tsXY85LFqRnr3gJ02bAscjc477+X+j/gkpFoN1QEmt terraform@demo.tld";
/// const exampleComputeInstance = new azure.machinelearning.ComputeInstance("example", {
///     name: "example",
///     machineLearningWorkspaceId: exampleWorkspace.id,
///     virtualMachineSize: "STANDARD_DS2_V2",
///     authorizationType: "personal",
///     ssh: {
///         publicKey: sshKey,
///     },
///     subnetResourceId: exampleSubnet.id,
///     description: "foo",
///     tags: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="west europe",
///     tags={
///         "stage": "example",
///     })
/// example_insights = azure.appinsights.Insights("example",
///     name="example-ai",
///     location=example.location,
///     resource_group_name=example.name,
///     application_type="web")
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="example-kv",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     purge_protection_enabled=True)
/// example_account = azure.storage.Account("example",
///     name="examplesa",
///     location=example.location,
///     resource_group_name=example.name,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_workspace = azure.machinelearning.Workspace("example",
///     name="example-mlw",
///     location=example.location,
///     resource_group_name=example.name,
///     application_insights_id=example_insights.id,
///     key_vault_id=example_key_vault.id,
///     storage_account_id=example_account.id,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     address_spaces=["10.1.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.1.0.0/24"])
/// config = pulumi.Config()
/// ssh_key = config.get("sshKey")
/// if ssh_key is None:
///     ssh_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCqaZoyiz1qbdOQ8xEf6uEu1cCwYowo5FHtsBhqLoDnnp7KUTEBN+L2NxRIfQ781rxV6Iq5jSav6b2Q8z5KiseOlvKA/RF2wqU0UPYqQviQhLmW6THTpmrv/YkUCuzxDpsH7DUDhZcwySLKVVe0Qm3+5N2Ta6UYH3lsDf9R9wTP2K/+vAnflKebuypNlmocIvakFWoZda18FOmsOoIVXQ8HWFNCuw9ZCunMSN62QGamCe3dL5cXlkgHYv7ekJE15IA9aOJcM7e90oeTqo+7HTcWfdu0qQqPWY5ujyMw/llas8tsXY85LFqRnr3gJ02bAscjc477+X+j/gkpFoN1QEmt terraform@demo.tld"
/// example_compute_instance = azure.machinelearning.ComputeInstance("example",
///     name="example",
///     machine_learning_workspace_id=example_workspace.id,
///     virtual_machine_size="STANDARD_DS2_V2",
///     authorization_type="personal",
///     ssh={
///         "public_key": ssh_key,
///     },
///     subnet_resource_id=example_subnet.id,
///     description="foo",
///     tags={
///         "foo": "bar",
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
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-rg",
///         Location = "west europe",
///         Tags =
///         {
///             { "stage", "example" },
///         },
///     });
///
///     var exampleInsights = new Azure.AppInsights.Insights("example", new()
///     {
///         Name = "example-ai",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationType = "web",
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "example-kv",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         PurgeProtectionEnabled = true,
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplesa",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleWorkspace = new Azure.MachineLearning.Workspace("example", new()
///     {
///         Name = "example-mlw",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationInsightsId = exampleInsights.Id,
///         KeyVaultId = exampleKeyVault.Id,
///         StorageAccountId = exampleAccount.Id,
///         Identity = new Azure.MachineLearning.Inputs.WorkspaceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         AddressSpaces = new[]
///         {
///             "10.1.0.0/16",
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
///             "10.1.0.0/24",
///         },
///     });
///
///     var config = new Config();
///     var sshKey = config.Get("sshKey") ?? "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCqaZoyiz1qbdOQ8xEf6uEu1cCwYowo5FHtsBhqLoDnnp7KUTEBN+L2NxRIfQ781rxV6Iq5jSav6b2Q8z5KiseOlvKA/RF2wqU0UPYqQviQhLmW6THTpmrv/YkUCuzxDpsH7DUDhZcwySLKVVe0Qm3+5N2Ta6UYH3lsDf9R9wTP2K/+vAnflKebuypNlmocIvakFWoZda18FOmsOoIVXQ8HWFNCuw9ZCunMSN62QGamCe3dL5cXlkgHYv7ekJE15IA9aOJcM7e90oeTqo+7HTcWfdu0qQqPWY5ujyMw/llas8tsXY85LFqRnr3gJ02bAscjc477+X+j/gkpFoN1QEmt terraform@demo.tld";
///     var exampleComputeInstance = new Azure.MachineLearning.ComputeInstance("example", new()
///     {
///         Name = "example",
///         MachineLearningWorkspaceId = exampleWorkspace.Id,
///         VirtualMachineSize = "STANDARD_DS2_V2",
///         AuthorizationType = "personal",
///         Ssh = new Azure.MachineLearning.Inputs.ComputeInstanceSshArgs
///         {
///             PublicKey = sshKey,
///         },
///         SubnetResourceId = exampleSubnet.Id,
///         Description = "foo",
///         Tags =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/machinelearning"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("west europe"),
/// 			Tags: pulumi.StringMap{
/// 				"stage": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInsights, err := appinsights.NewInsights(ctx, "example", &appinsights.InsightsArgs{
/// 			Name:              pulumi.String("example-ai"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ApplicationType:   pulumi.String("web"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                   pulumi.String("example-kv"),
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			TenantId:               pulumi.String(current.TenantId),
/// 			SkuName:                pulumi.String("standard"),
/// 			PurgeProtectionEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplesa"),
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := machinelearning.NewWorkspace(ctx, "example", &machinelearning.WorkspaceArgs{
/// 			Name:                  pulumi.String("example-mlw"),
/// 			Location:              example.Location,
/// 			ResourceGroupName:     example.Name,
/// 			ApplicationInsightsId: exampleInsights.ID(),
/// 			KeyVaultId:            exampleKeyVault.ID(),
/// 			StorageAccountId:      exampleAccount.ID(),
/// 			Identity: &machinelearning.WorkspaceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example-vnet"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.1.0.0/16"),
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
/// 				pulumi.String("10.1.0.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cfg := config.New(ctx, "")
/// 		sshKey := "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCqaZoyiz1qbdOQ8xEf6uEu1cCwYowo5FHtsBhqLoDnnp7KUTEBN+L2NxRIfQ781rxV6Iq5jSav6b2Q8z5KiseOlvKA/RF2wqU0UPYqQviQhLmW6THTpmrv/YkUCuzxDpsH7DUDhZcwySLKVVe0Qm3+5N2Ta6UYH3lsDf9R9wTP2K/+vAnflKebuypNlmocIvakFWoZda18FOmsOoIVXQ8HWFNCuw9ZCunMSN62QGamCe3dL5cXlkgHYv7ekJE15IA9aOJcM7e90oeTqo+7HTcWfdu0qQqPWY5ujyMw/llas8tsXY85LFqRnr3gJ02bAscjc477+X+j/gkpFoN1QEmt terraform@demo.tld"
/// 		if param := cfg.Get("sshKey"); param != "" {
/// 			sshKey = param
/// 		}
/// 		_, err = machinelearning.NewComputeInstance(ctx, "example", &machinelearning.ComputeInstanceArgs{
/// 			Name:                       pulumi.String("example"),
/// 			MachineLearningWorkspaceId: exampleWorkspace.ID(),
/// 			VirtualMachineSize:         pulumi.String("STANDARD_DS2_V2"),
/// 			AuthorizationType:          pulumi.String("personal"),
/// 			Ssh: &machinelearning.ComputeInstanceSshArgs{
/// 				PublicKey: pulumi.String(sshKey),
/// 			},
/// 			SubnetResourceId: exampleSubnet.ID(),
/// 			Description:      pulumi.String("foo"),
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appinsights.Insights;
/// import com.pulumi.azure.appinsights.InsightsArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.machinelearning.Workspace;
/// import com.pulumi.azure.machinelearning.WorkspaceArgs;
/// import com.pulumi.azure.machinelearning.inputs.WorkspaceIdentityArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.machinelearning.ComputeInstance;
/// import com.pulumi.azure.machinelearning.ComputeInstanceArgs;
/// import com.pulumi.azure.machinelearning.inputs.ComputeInstanceSshArgs;
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
///         final var config = ctx.config();
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-rg")
///             .location("west europe")
///             .tags(Map.of("stage", "example"))
///             .build());
///
///         var exampleInsights = new Insights("exampleInsights", InsightsArgs.builder()
///             .name("example-ai")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationType("web")
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("example-kv")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .purgeProtectionEnabled(true)
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplesa")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example-mlw")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationInsightsId(exampleInsights.id())
///             .keyVaultId(exampleKeyVault.id())
///             .storageAccountId(exampleAccount.id())
///             .identity(WorkspaceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .addressSpaces("10.1.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.1.0.0/24")
///             .build());
///
///         final var sshKey = config.get("sshKey").orElse("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCqaZoyiz1qbdOQ8xEf6uEu1cCwYowo5FHtsBhqLoDnnp7KUTEBN+L2NxRIfQ781rxV6Iq5jSav6b2Q8z5KiseOlvKA/RF2wqU0UPYqQviQhLmW6THTpmrv/YkUCuzxDpsH7DUDhZcwySLKVVe0Qm3+5N2Ta6UYH3lsDf9R9wTP2K/+vAnflKebuypNlmocIvakFWoZda18FOmsOoIVXQ8HWFNCuw9ZCunMSN62QGamCe3dL5cXlkgHYv7ekJE15IA9aOJcM7e90oeTqo+7HTcWfdu0qQqPWY5ujyMw/llas8tsXY85LFqRnr3gJ02bAscjc477+X+j/gkpFoN1QEmt terraform@demo.tld");
///         var exampleComputeInstance = new ComputeInstance("exampleComputeInstance", ComputeInstanceArgs.builder()
///             .name("example")
///             .machineLearningWorkspaceId(exampleWorkspace.id())
///             .virtualMachineSize("STANDARD_DS2_V2")
///             .authorizationType("personal")
///             .ssh(ComputeInstanceSshArgs.builder()
///                 .publicKey(sshKey)
///                 .build())
///             .subnetResourceId(exampleSubnet.id())
///             .description("foo")
///             .tags(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   sshKey:
///     type: string
///     default: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCqaZoyiz1qbdOQ8xEf6uEu1cCwYowo5FHtsBhqLoDnnp7KUTEBN+L2NxRIfQ781rxV6Iq5jSav6b2Q8z5KiseOlvKA/RF2wqU0UPYqQviQhLmW6THTpmrv/YkUCuzxDpsH7DUDhZcwySLKVVe0Qm3+5N2Ta6UYH3lsDf9R9wTP2K/+vAnflKebuypNlmocIvakFWoZda18FOmsOoIVXQ8HWFNCuw9ZCunMSN62QGamCe3dL5cXlkgHYv7ekJE15IA9aOJcM7e90oeTqo+7HTcWfdu0qQqPWY5ujyMw/llas8tsXY85LFqRnr3gJ02bAscjc477+X+j/gkpFoN1QEmt terraform@demo.tld
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-rg
///       location: west europe
///       tags:
///         stage: example
///   exampleInsights:
///     type: azure:appinsights:Insights
///     name: example
///     properties:
///       name: example-ai
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationType: web
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: example-kv
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: standard
///       purgeProtectionEnabled: true
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplesa
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleWorkspace:
///     type: azure:machinelearning:Workspace
///     name: example
///     properties:
///       name: example-mlw
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationInsightsId: ${exampleInsights.id}
///       keyVaultId: ${exampleKeyVault.id}
///       storageAccountId: ${exampleAccount.id}
///       identity:
///         type: SystemAssigned
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       addressSpaces:
///         - 10.1.0.0/16
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
///         - 10.1.0.0/24
///   exampleComputeInstance:
///     type: azure:machinelearning:ComputeInstance
///     name: example
///     properties:
///       name: example
///       machineLearningWorkspaceId: ${exampleWorkspace.id}
///       virtualMachineSize: STANDARD_DS2_V2
///       authorizationType: personal
///       ssh:
///         publicKey: ${sshKey}
///       subnetResourceId: ${exampleSubnet.id}
///       description: foo
///       tags:
///         foo: bar
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.MachineLearningServices` - 2025-06-01
///
/// ## Import
///
/// Machine Learning Compute Instances can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:machinelearning/computeInstance:ComputeInstance example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.MachineLearningServices/workspaces/workspace1/computes/compute1
/// ```
class ComputeInstance extends pulumi.CustomResource {
  /// A `assign_to_user` block as defined below. A user explicitly assigned to a personal compute instance. Changing this forces a new Machine Learning Compute Instance to be created.
  late final pulumi.Output<ComputeInstanceAssignToUser?> assignToUser;

  /// The Compute Instance Authorization type. Possible values include: `personal`. Changing this forces a new Machine Learning Compute Instance to be created.
  late final pulumi.Output<String?> authorizationType;

  /// The description of the Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created.
  late final pulumi.Output<String?> description;

  /// An `identity` block as defined below. Changing this forces a new Machine Learning Compute Instance to be created.
  late final pulumi.Output<ComputeInstanceIdentity?> identity;

  /// Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Compute Instance to be created.
  late final pulumi.Output<bool?> localAuthEnabled;

  /// The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Compute Instance to be created.
  late final pulumi.Output<String> machineLearningWorkspaceId;

  /// The name which should be used for this Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created.
  late final pulumi.Output<String> name;

  /// Whether the compute instance will have a public ip. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created.
  ///
  /// &gt; **Note:** The property `subnet_resource_id` becomes required if `node_public_ip_enabled` is set to `false`, and the instance's workspace is not using a managed network (i.e. the workspace's outbound isolation mode is `Disabled`).
  late final pulumi.Output<bool?> nodePublicIpEnabled;

  /// A `ssh` block as defined below. Specifies policy and settings for SSH access. Changing this forces a new Machine Learning Compute Instance to be created.
  late final pulumi.Output<ComputeInstanceSsh?> ssh;

  /// Virtual network subnet resource ID the compute nodes belong to. Changing this forces a new Machine Learning Compute Instance to be created.
  ///
  /// &gt; **Note:** The property `subnet_resource_id` can be set only if the instance's workspace is not using Azure-managed networking.
  late final pulumi.Output<String?> subnetResourceId;

  /// A mapping of tags which should be assigned to the Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The Virtual Machine Size. Changing this forces a new Machine Learning Compute Instance to be created.
  late final pulumi.Output<String> virtualMachineSize;

  /// Creates a new [ComputeInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ComputeInstance]. {@macro pulumi_machinelearning_compute_instance_compute_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ComputeInstance(
    String name, {
    ComputeInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:machinelearning/computeInstance:ComputeInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    assignToUser = registerOutput<ComputeInstanceAssignToUser?>(
      'assignToUser',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ComputeInstanceAssignToUser.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    authorizationType = registerOutput<String?>('authorizationType');
    description = registerOutput<String?>('description');
    identity = registerOutput<ComputeInstanceIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ComputeInstanceIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    machineLearningWorkspaceId = registerOutput<String>(
      'machineLearningWorkspaceId',
    );
    this.name = registerOutput<String>('name');
    nodePublicIpEnabled = registerOutput<bool?>('nodePublicIpEnabled');
    ssh = registerOutput<ComputeInstanceSsh?>(
      'ssh',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ComputeInstanceSsh.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    subnetResourceId = registerOutput<String?>('subnetResourceId');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualMachineSize = registerOutput<String>('virtualMachineSize');
  }

  /// Gets an existing [ComputeInstance] resource's state with the given [name] and [id].
  static ComputeInstance get(
    String name,
    pulumi.Input<String> id, {
    ComputeInstanceState? state,
  }) {
    return ComputeInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ComputeInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:machinelearning/computeInstance:ComputeInstance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    assignToUser = registerOutput<ComputeInstanceAssignToUser?>(
      'assignToUser',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ComputeInstanceAssignToUser.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    authorizationType = registerOutput<String?>('authorizationType');
    description = registerOutput<String?>('description');
    identity = registerOutput<ComputeInstanceIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ComputeInstanceIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    machineLearningWorkspaceId = registerOutput<String>(
      'machineLearningWorkspaceId',
    );
    this.name = registerOutput<String>('name');
    nodePublicIpEnabled = registerOutput<bool?>('nodePublicIpEnabled');
    ssh = registerOutput<ComputeInstanceSsh?>(
      'ssh',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ComputeInstanceSsh.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    subnetResourceId = registerOutput<String?>('subnetResourceId');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualMachineSize = registerOutput<String>('virtualMachineSize');
  }
}
