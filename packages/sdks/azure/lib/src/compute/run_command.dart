import 'package:pulumi/pulumi.dart' as pulumi;
import 'run_command_args.dart';
import 'run_command_error_blob_managed_identity.dart';
import 'run_command_output_blob_managed_identity.dart';
import 'run_command_source.dart';
import 'run_command_state.dart';

/// Manages a Virtual Machine Run Command.
///
/// ## Example Usage
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
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     addressSpaces: ["10.0.0.0/16"],
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "internal",
///     resourceGroupName: exampleResourceGroup.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const exampleNetworkInterface = new azure.network.NetworkInterface("example", {
///     name: "example-nic",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     ipConfigurations: [{
///         name: "internal",
///         subnetId: exampleSubnet.id,
///         privateIpAddressAllocation: "Dynamic",
///     }],
/// });
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     name: "example-uai",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
/// });
/// const exampleLinuxVirtualMachine = new azure.compute.LinuxVirtualMachine("example", {
///     name: "example-VM",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     size: "Standard_B2s",
///     adminUsername: "adminuser",
///     adminPassword: "P@$$w0rd1234!",
///     disablePasswordAuthentication: false,
///     networkInterfaceIds: [exampleNetworkInterface.id],
///     osDisk: {
///         caching: "ReadWrite",
///         storageAccountType: "Premium_LRS",
///     },
///     sourceImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
///     identity: {
///         type: "SystemAssigned, UserAssigned",
///         identityIds: [exampleUserAssignedIdentity.id],
///     },
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "exampleaccount",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleAssignment = new azure.authorization.Assignment("example", {
///     scope: exampleAccount.id,
///     roleDefinitionName: "Storage Blob Data Contributor",
///     principalId: exampleUserAssignedIdentity.principalId,
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "example-sc",
///     storageAccountName: exampleAccount.name,
///     containerAccessType: "blob",
/// });
/// const example1 = new azure.storage.Blob("example1", {
///     name: "script1",
///     storageAccountName: exampleAccount.name,
///     storageContainerName: exampleContainer.name,
///     type: "Block",
///     sourceContent: "echo 'hello world'",
/// });
/// const example2 = new azure.storage.Blob("example2", {
///     name: "output",
///     storageAccountName: exampleAccount.name,
///     storageContainerName: exampleContainer.name,
///     type: "Append",
/// });
/// const example3 = new azure.storage.Blob("example3", {
///     name: "error",
///     storageAccountName: exampleAccount.name,
///     storageContainerName: exampleContainer.name,
///     type: "Append",
/// });
/// const example = azure.storage.getAccountSASOutput({
///     connectionString: exampleAccount.primaryConnectionString,
///     httpsOnly: true,
///     signedVersion: "2019-10-10",
///     start: "2023-04-01T00:00:00Z",
///     expiry: "2024-04-01T00:00:00Z",
///     resourceTypes: {
///         service: false,
///         container: false,
///         object: true,
///     },
///     services: {
///         blob: true,
///         queue: false,
///         table: false,
///         file: false,
///     },
///     permissions: {
///         read: true,
///         write: true,
///         "delete": false,
///         list: false,
///         add: true,
///         create: true,
///         update: false,
///         process: false,
///         tag: false,
///         filter: false,
///     },
/// });
/// // basic example
/// const exampleRunCommand = new azure.compute.RunCommand("example", {
///     name: "example-vmrc",
///     location: exampleResourceGroup.location,
///     virtualMachineId: exampleLinuxVirtualMachine.id,
///     source: {
///         script: "echo 'hello world'",
///     },
/// });
/// // authorize to storage blob using user assigned identity
/// const example2RunCommand = new azure.compute.RunCommand("example2", {
///     location: exampleResourceGroup.location,
///     name: "example2-vmrc",
///     virtualMachineId: exampleLinuxVirtualMachine.id,
///     outputBlobUri: example2.id,
///     errorBlobUri: example3.id,
///     runAsPassword: "P@$$w0rd1234!",
///     runAsUser: "adminuser",
///     source: {
///         scriptUri: example1.id,
///         scriptUriManagedIdentity: {
///             clientId: exampleUserAssignedIdentity.clientId,
///         },
///     },
///     errorBlobManagedIdentity: {
///         clientId: exampleUserAssignedIdentity.clientId,
///     },
///     outputBlobManagedIdentity: {
///         clientId: exampleUserAssignedIdentity.clientId,
///     },
///     parameters: [{
///         name: "examplev1",
///         value: "val1",
///     }],
///     protectedParameters: [{
///         name: "examplev2",
///         value: "val2",
///     }],
///     tags: {
///         environment: "terraform-examples",
///         some_key: "some-value",
///     },
/// }, {
///     dependsOn: [exampleAssignment],
/// });
/// // authorize to storage blob using SAS token
/// const example3RunCommand = new azure.compute.RunCommand("example3", {
///     location: exampleResourceGroup.location,
///     name: "example3-vmrc",
///     virtualMachineId: exampleLinuxVirtualMachine.id,
///     runAsPassword: "P@$$w0rd1234!",
///     runAsUser: "adminuser",
///     errorBlobUri: pulumi.all([example3.id, example]).apply(([id, example]) => `${id}${example.sas}`),
///     outputBlobUri: pulumi.all([example2.id, example]).apply(([id, example]) => `${id}${example.sas}`),
///     source: {
///         scriptUri: pulumi.all([example1.id, example]).apply(([id, example]) => `${id}${example.sas}`),
///     },
///     parameters: [{
///         name: "example-vm1",
///         value: "val1",
///     }],
///     tags: {
///         environment: "terraform-example-s",
///         some_key: "some-value",
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
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     address_spaces=["10.0.0.0/16"],
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name)
/// example_subnet = azure.network.Subnet("example",
///     name="internal",
///     resource_group_name=example_resource_group.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_network_interface = azure.network.NetworkInterface("example",
///     name="example-nic",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     ip_configurations=[{
///         "name": "internal",
///         "subnet_id": example_subnet.id,
///         "private_ip_address_allocation": "Dynamic",
///     }])
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     name="example-uai",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location)
/// example_linux_virtual_machine = azure.compute.LinuxVirtualMachine("example",
///     name="example-VM",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     size="Standard_B2s",
///     admin_username="adminuser",
///     admin_password="P@$$w0rd1234!",
///     disable_password_authentication=False,
///     network_interface_ids=[example_network_interface.id],
///     os_disk={
///         "caching": "ReadWrite",
///         "storage_account_type": "Premium_LRS",
///     },
///     source_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     },
///     identity={
///         "type": "SystemAssigned, UserAssigned",
///         "identity_ids": [example_user_assigned_identity.id],
///     })
/// example_account = azure.storage.Account("example",
///     name="exampleaccount",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_assignment = azure.authorization.Assignment("example",
///     scope=example_account.id,
///     role_definition_name="Storage Blob Data Contributor",
///     principal_id=example_user_assigned_identity.principal_id)
/// example_container = azure.storage.Container("example",
///     name="example-sc",
///     storage_account_name=example_account.name,
///     container_access_type="blob")
/// example1 = azure.storage.Blob("example1",
///     name="script1",
///     storage_account_name=example_account.name,
///     storage_container_name=example_container.name,
///     type="Block",
///     source_content="echo 'hello world'")
/// example2 = azure.storage.Blob("example2",
///     name="output",
///     storage_account_name=example_account.name,
///     storage_container_name=example_container.name,
///     type="Append")
/// example3 = azure.storage.Blob("example3",
///     name="error",
///     storage_account_name=example_account.name,
///     storage_container_name=example_container.name,
///     type="Append")
/// example = azure.storage.get_account_sas_output(connection_string=example_account.primary_connection_string,
///     https_only=True,
///     signed_version="2019-10-10",
///     start="2023-04-01T00:00:00Z",
///     expiry="2024-04-01T00:00:00Z",
///     resource_types={
///         "service": False,
///         "container": False,
///         "object": True,
///     },
///     services={
///         "blob": True,
///         "queue": False,
///         "table": False,
///         "file": False,
///     },
///     permissions={
///         "read": True,
///         "write": True,
///         "delete": False,
///         "list": False,
///         "add": True,
///         "create": True,
///         "update": False,
///         "process": False,
///         "tag": False,
///         "filter": False,
///     })
/// # basic example
/// example_run_command = azure.compute.RunCommand("example",
///     name="example-vmrc",
///     location=example_resource_group.location,
///     virtual_machine_id=example_linux_virtual_machine.id,
///     source={
///         "script": "echo 'hello world'",
///     })
/// # authorize to storage blob using user assigned identity
/// example2_run_command = azure.compute.RunCommand("example2",
///     location=example_resource_group.location,
///     name="example2-vmrc",
///     virtual_machine_id=example_linux_virtual_machine.id,
///     output_blob_uri=example2.id,
///     error_blob_uri=example3.id,
///     run_as_password="P@$$w0rd1234!",
///     run_as_user="adminuser",
///     source={
///         "script_uri": example1.id,
///         "script_uri_managed_identity": {
///             "client_id": example_user_assigned_identity.client_id,
///         },
///     },
///     error_blob_managed_identity={
///         "client_id": example_user_assigned_identity.client_id,
///     },
///     output_blob_managed_identity={
///         "client_id": example_user_assigned_identity.client_id,
///     },
///     parameters=[{
///         "name": "examplev1",
///         "value": "val1",
///     }],
///     protected_parameters=[{
///         "name": "examplev2",
///         "value": "val2",
///     }],
///     tags={
///         "environment": "terraform-examples",
///         "some_key": "some-value",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_assignment]))
/// # authorize to storage blob using SAS token
/// example3_run_command = azure.compute.RunCommand("example3",
///     location=example_resource_group.location,
///     name="example3-vmrc",
///     virtual_machine_id=example_linux_virtual_machine.id,
///     run_as_password="P@$$w0rd1234!",
///     run_as_user="adminuser",
///     error_blob_uri=pulumi.Output.all(
///         id=example3.id,
///         example=example
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['id']}{example.sas}")
/// ,
///     output_blob_uri=pulumi.Output.all(
///         id=example2.id,
///         example=example
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['id']}{example.sas}")
/// ,
///     source={
///         "script_uri": pulumi.Output.all(
///             id=example1.id,
///             example=example
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['id']}{example.sas}")
/// ,
///     },
///     parameters=[{
///         "name": "example-vm1",
///         "value": "val1",
///     }],
///     tags={
///         "environment": "terraform-example-s",
///         "some_key": "some-value",
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
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "internal",
///         ResourceGroupName = exampleResourceGroup.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///     });
///
///     var exampleNetworkInterface = new Azure.Network.NetworkInterface("example", new()
///     {
///         Name = "example-nic",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.NetworkInterfaceIpConfigurationArgs
///             {
///                 Name = "internal",
///                 SubnetId = exampleSubnet.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///             },
///         },
///     });
///
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         Name = "example-uai",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///     });
///
///     var exampleLinuxVirtualMachine = new Azure.Compute.LinuxVirtualMachine("example", new()
///     {
///         Name = "example-VM",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         Size = "Standard_B2s",
///         AdminUsername = "adminuser",
///         AdminPassword = "P@$$w0rd1234!",
///         DisablePasswordAuthentication = false,
///         NetworkInterfaceIds = new[]
///         {
///             exampleNetworkInterface.Id,
///         },
///         OsDisk = new Azure.Compute.Inputs.LinuxVirtualMachineOsDiskArgs
///         {
///             Caching = "ReadWrite",
///             StorageAccountType = "Premium_LRS",
///         },
///         SourceImageReference = new Azure.Compute.Inputs.LinuxVirtualMachineSourceImageReferenceArgs
///         {
///             Publisher = "Canonical",
///             Offer = "0001-com-ubuntu-server-jammy",
///             Sku = "22_04-lts",
///             Version = "latest",
///         },
///         Identity = new Azure.Compute.Inputs.LinuxVirtualMachineIdentityArgs
///         {
///             Type = "SystemAssigned, UserAssigned",
///             IdentityIds = new[]
///             {
///                 exampleUserAssignedIdentity.Id,
///             },
///         },
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "exampleaccount",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleAssignment = new Azure.Authorization.Assignment("example", new()
///     {
///         Scope = exampleAccount.Id,
///         RoleDefinitionName = "Storage Blob Data Contributor",
///         PrincipalId = exampleUserAssignedIdentity.PrincipalId,
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "example-sc",
///         StorageAccountName = exampleAccount.Name,
///         ContainerAccessType = "blob",
///     });
///
///     var example1 = new Azure.Storage.Blob("example1", new()
///     {
///         Name = "script1",
///         StorageAccountName = exampleAccount.Name,
///         StorageContainerName = exampleContainer.Name,
///         Type = "Block",
///         SourceContent = "echo 'hello world'",
///     });
///
///     var example2 = new Azure.Storage.Blob("example2", new()
///     {
///         Name = "output",
///         StorageAccountName = exampleAccount.Name,
///         StorageContainerName = exampleContainer.Name,
///         Type = "Append",
///     });
///
///     var example3 = new Azure.Storage.Blob("example3", new()
///     {
///         Name = "error",
///         StorageAccountName = exampleAccount.Name,
///         StorageContainerName = exampleContainer.Name,
///         Type = "Append",
///     });
///
///     var example = Azure.Storage.GetAccountSAS.Invoke(new()
///     {
///         ConnectionString = exampleAccount.PrimaryConnectionString,
///         HttpsOnly = true,
///         SignedVersion = "2019-10-10",
///         Start = "2023-04-01T00:00:00Z",
///         Expiry = "2024-04-01T00:00:00Z",
///         ResourceTypes = new Azure.Storage.Inputs.GetAccountSASResourceTypesInputArgs
///         {
///             Service = false,
///             Container = false,
///             Object = true,
///         },
///         Services = new Azure.Storage.Inputs.GetAccountSASServicesInputArgs
///         {
///             Blob = true,
///             Queue = false,
///             Table = false,
///             File = false,
///         },
///         Permissions = new Azure.Storage.Inputs.GetAccountSASPermissionsInputArgs
///         {
///             Read = true,
///             Write = true,
///             Delete = false,
///             List = false,
///             Add = true,
///             Create = true,
///             Update = false,
///             Process = false,
///             Tag = false,
///             Filter = false,
///         },
///     });
///
///     // basic example
///     var exampleRunCommand = new Azure.Compute.RunCommand("example", new()
///     {
///         Name = "example-vmrc",
///         Location = exampleResourceGroup.Location,
///         VirtualMachineId = exampleLinuxVirtualMachine.Id,
///         Source = new Azure.Compute.Inputs.RunCommandSourceArgs
///         {
///             Script = "echo 'hello world'",
///         },
///     });
///
///     // authorize to storage blob using user assigned identity
///     var example2RunCommand = new Azure.Compute.RunCommand("example2", new()
///     {
///         Location = exampleResourceGroup.Location,
///         Name = "example2-vmrc",
///         VirtualMachineId = exampleLinuxVirtualMachine.Id,
///         OutputBlobUri = example2.Id,
///         ErrorBlobUri = example3.Id,
///         RunAsPassword = "P@$$w0rd1234!",
///         RunAsUser = "adminuser",
///         Source = new Azure.Compute.Inputs.RunCommandSourceArgs
///         {
///             ScriptUri = example1.Id,
///             ScriptUriManagedIdentity = new Azure.Compute.Inputs.RunCommandSourceScriptUriManagedIdentityArgs
///             {
///                 ClientId = exampleUserAssignedIdentity.ClientId,
///             },
///         },
///         ErrorBlobManagedIdentity = new Azure.Compute.Inputs.RunCommandErrorBlobManagedIdentityArgs
///         {
///             ClientId = exampleUserAssignedIdentity.ClientId,
///         },
///         OutputBlobManagedIdentity = new Azure.Compute.Inputs.RunCommandOutputBlobManagedIdentityArgs
///         {
///             ClientId = exampleUserAssignedIdentity.ClientId,
///         },
///         Parameters = new[]
///         {
///             new Azure.Compute.Inputs.RunCommandParameterArgs
///             {
///                 Name = "examplev1",
///                 Value = "val1",
///             },
///         },
///         ProtectedParameters = new[]
///         {
///             new Azure.Compute.Inputs.RunCommandProtectedParameterArgs
///             {
///                 Name = "examplev2",
///                 Value = "val2",
///             },
///         },
///         Tags =
///         {
///             { "environment", "terraform-examples" },
///             { "some_key", "some-value" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAssignment,
///         },
///     });
///
///     // authorize to storage blob using SAS token
///     var example3RunCommand = new Azure.Compute.RunCommand("example3", new()
///     {
///         Location = exampleResourceGroup.Location,
///         Name = "example3-vmrc",
///         VirtualMachineId = exampleLinuxVirtualMachine.Id,
///         RunAsPassword = "P@$$w0rd1234!",
///         RunAsUser = "adminuser",
///         ErrorBlobUri = Output.Tuple(example3.Id, example).Apply(values =>
///         {
///             var id = values.Item1;
///             var example = values.Item2;
///             return $"{id}{example.Apply(getAccountSASResult => getAccountSASResult.Sas)}";
///         }),
///         OutputBlobUri = Output.Tuple(example2.Id, example).Apply(values =>
///         {
///             var id = values.Item1;
///             var example = values.Item2;
///             return $"{id}{example.Apply(getAccountSASResult => getAccountSASResult.Sas)}";
///         }),
///         Source = new Azure.Compute.Inputs.RunCommandSourceArgs
///         {
///             ScriptUri = Output.Tuple(example1.Id, example).Apply(values =>
///             {
///                 var id = values.Item1;
///                 var example = values.Item2;
///                 return $"{id}{example.Apply(getAccountSASResult => getAccountSASResult.Sas)}";
///             }),
///         },
///         Parameters = new[]
///         {
///             new Azure.Compute.Inputs.RunCommandParameterArgs
///             {
///                 Name = "example-vm1",
///                 Value = "val1",
///             },
///         },
///         Tags =
///         {
///             { "environment", "terraform-example-s" },
///             { "some_key", "some-value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example-vnet"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("internal"),
/// 			ResourceGroupName:  exampleResourceGroup.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkInterface, err := network.NewNetworkInterface(ctx, "example", &network.NetworkInterfaceArgs{
/// 			Name:              pulumi.String("example-nic"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			IpConfigurations: network.NetworkInterfaceIpConfigurationArray{
/// 				&network.NetworkInterfaceIpConfigurationArgs{
/// 					Name:                       pulumi.String("internal"),
/// 					SubnetId:                   exampleSubnet.ID(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			Name:              pulumi.String("example-uai"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Location:          exampleResourceGroup.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxVirtualMachine, err := compute.NewLinuxVirtualMachine(ctx, "example", &compute.LinuxVirtualMachineArgs{
/// 			Name:                          pulumi.String("example-VM"),
/// 			ResourceGroupName:             exampleResourceGroup.Name,
/// 			Location:                      exampleResourceGroup.Location,
/// 			Size:                          pulumi.String("Standard_B2s"),
/// 			AdminUsername:                 pulumi.String("adminuser"),
/// 			AdminPassword:                 pulumi.String("P@$$w0rd1234!"),
/// 			DisablePasswordAuthentication: pulumi.Bool(false),
/// 			NetworkInterfaceIds: pulumi.StringArray{
/// 				exampleNetworkInterface.ID(),
/// 			},
/// 			OsDisk: &compute.LinuxVirtualMachineOsDiskArgs{
/// 				Caching:            pulumi.String("ReadWrite"),
/// 				StorageAccountType: pulumi.String("Premium_LRS"),
/// 			},
/// 			SourceImageReference: &compute.LinuxVirtualMachineSourceImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 			Identity: &compute.LinuxVirtualMachineIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned, UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("exampleaccount"),
/// 			ResourceGroupName:      exampleResourceGroup.Name,
/// 			Location:               exampleResourceGroup.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAssignment, err := authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
/// 			Scope:              exampleAccount.ID(),
/// 			RoleDefinitionName: pulumi.String("Storage Blob Data Contributor"),
/// 			PrincipalId:        exampleUserAssignedIdentity.PrincipalId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("example-sc"),
/// 			StorageAccountName:  exampleAccount.Name,
/// 			ContainerAccessType: pulumi.String("blob"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example1, err := storage.NewBlob(ctx, "example1", &storage.BlobArgs{
/// 			Name:                 pulumi.String("script1"),
/// 			StorageAccountName:   exampleAccount.Name,
/// 			StorageContainerName: exampleContainer.Name,
/// 			Type:                 pulumi.String("Block"),
/// 			SourceContent:        pulumi.String("echo 'hello world'"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example2, err := storage.NewBlob(ctx, "example2", &storage.BlobArgs{
/// 			Name:                 pulumi.String("output"),
/// 			StorageAccountName:   exampleAccount.Name,
/// 			StorageContainerName: exampleContainer.Name,
/// 			Type:                 pulumi.String("Append"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example3, err := storage.NewBlob(ctx, "example3", &storage.BlobArgs{
/// 			Name:                 pulumi.String("error"),
/// 			StorageAccountName:   exampleAccount.Name,
/// 			StorageContainerName: exampleContainer.Name,
/// 			Type:                 pulumi.String("Append"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := storage.GetAccountSASOutput(ctx, storage.GetAccountSASOutputArgs{
/// 			ConnectionString: exampleAccount.PrimaryConnectionString,
/// 			HttpsOnly:        pulumi.Bool(true),
/// 			SignedVersion:    pulumi.String("2019-10-10"),
/// 			Start:            pulumi.String("2023-04-01T00:00:00Z"),
/// 			Expiry:           pulumi.String("2024-04-01T00:00:00Z"),
/// 			ResourceTypes: &storage.GetAccountSASResourceTypesArgs{
/// 				Service:   pulumi.Bool(false),
/// 				Container: pulumi.Bool(false),
/// 				Object:    pulumi.Bool(true),
/// 			},
/// 			Services: &storage.GetAccountSASServicesArgs{
/// 				Blob:  pulumi.Bool(true),
/// 				Queue: pulumi.Bool(false),
/// 				Table: pulumi.Bool(false),
/// 				File:  pulumi.Bool(false),
/// 			},
/// 			Permissions: &storage.GetAccountSASPermissionsArgs{
/// 				Read:    pulumi.Bool(true),
/// 				Write:   pulumi.Bool(true),
/// 				Delete:  pulumi.Bool(false),
/// 				List:    pulumi.Bool(false),
/// 				Add:     pulumi.Bool(true),
/// 				Create:  pulumi.Bool(true),
/// 				Update:  pulumi.Bool(false),
/// 				Process: pulumi.Bool(false),
/// 				Tag:     pulumi.Bool(false),
/// 				Filter:  pulumi.Bool(false),
/// 			},
/// 		}, nil)
/// 		// basic example
/// 		_, err = compute.NewRunCommand(ctx, "example", &compute.RunCommandArgs{
/// 			Name:             pulumi.String("example-vmrc"),
/// 			Location:         exampleResourceGroup.Location,
/// 			VirtualMachineId: exampleLinuxVirtualMachine.ID(),
/// 			Source: &compute.RunCommandSourceArgs{
/// 				Script: pulumi.String("echo 'hello world'"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// authorize to storage blob using user assigned identity
/// 		_, err = compute.NewRunCommand(ctx, "example2", &compute.RunCommandArgs{
/// 			Location:         exampleResourceGroup.Location,
/// 			Name:             pulumi.String("example2-vmrc"),
/// 			VirtualMachineId: exampleLinuxVirtualMachine.ID(),
/// 			OutputBlobUri:    example2.ID(),
/// 			ErrorBlobUri:     example3.ID(),
/// 			RunAsPassword:    pulumi.String("P@$$w0rd1234!"),
/// 			RunAsUser:        pulumi.String("adminuser"),
/// 			Source: &compute.RunCommandSourceArgs{
/// 				ScriptUri: example1.ID(),
/// 				ScriptUriManagedIdentity: &compute.RunCommandSourceScriptUriManagedIdentityArgs{
/// 					ClientId: exampleUserAssignedIdentity.ClientId,
/// 				},
/// 			},
/// 			ErrorBlobManagedIdentity: &compute.RunCommandErrorBlobManagedIdentityArgs{
/// 				ClientId: exampleUserAssignedIdentity.ClientId,
/// 			},
/// 			OutputBlobManagedIdentity: &compute.RunCommandOutputBlobManagedIdentityArgs{
/// 				ClientId: exampleUserAssignedIdentity.ClientId,
/// 			},
/// 			Parameters: compute.RunCommandParameterArray{
/// 				&compute.RunCommandParameterArgs{
/// 					Name:  pulumi.String("examplev1"),
/// 					Value: pulumi.String("val1"),
/// 				},
/// 			},
/// 			ProtectedParameters: compute.RunCommandProtectedParameterArray{
/// 				&compute.RunCommandProtectedParameterArgs{
/// 					Name:  pulumi.String("examplev2"),
/// 					Value: pulumi.String("val2"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("terraform-examples"),
/// 				"some_key":    pulumi.String("some-value"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAssignment,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// authorize to storage blob using SAS token
/// 		_, err = compute.NewRunCommand(ctx, "example3", &compute.RunCommandArgs{
/// 			Location:         exampleResourceGroup.Location,
/// 			Name:             pulumi.String("example3-vmrc"),
/// 			VirtualMachineId: exampleLinuxVirtualMachine.ID(),
/// 			RunAsPassword:    pulumi.String("P@$$w0rd1234!"),
/// 			RunAsUser:        pulumi.String("adminuser"),
/// 			ErrorBlobUri: pulumi.All(example3.ID(), example).ApplyT(func(_args []interface{}) (string, error) {
/// 				id := _args[0].(string)
/// 				example := _args[1].(storage.GetAccountSASResult)
/// 				return fmt.Sprintf("%v%v", id, example.Sas), nil
/// 			}).(pulumi.StringOutput),
/// 			OutputBlobUri: pulumi.All(example2.ID(), example).ApplyT(func(_args []interface{}) (string, error) {
/// 				id := _args[0].(string)
/// 				example := _args[1].(storage.GetAccountSASResult)
/// 				return fmt.Sprintf("%v%v", id, example.Sas), nil
/// 			}).(pulumi.StringOutput),
/// 			Source: &compute.RunCommandSourceArgs{
/// 				ScriptUri: pulumi.All(example1.ID(), example).ApplyT(func(_args []interface{}) (string, error) {
/// 					id := _args[0].(string)
/// 					example := _args[1].(storage.GetAccountSASResult)
/// 					return fmt.Sprintf("%v%v", id, example.Sas), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			Parameters: compute.RunCommandParameterArray{
/// 				&compute.RunCommandParameterArgs{
/// 					Name:  pulumi.String("example-vm1"),
/// 					Value: pulumi.String("val1"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("terraform-example-s"),
/// 				"some_key":    pulumi.String("some-value"),
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.NetworkInterface;
/// import com.pulumi.azure.network.NetworkInterfaceArgs;
/// import com.pulumi.azure.network.inputs.NetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.compute.LinuxVirtualMachine;
/// import com.pulumi.azure.compute.LinuxVirtualMachineArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineSourceImageReferenceArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineIdentityArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.storage.Blob;
/// import com.pulumi.azure.storage.BlobArgs;
/// import com.pulumi.azure.storage.StorageFunctions;
/// import com.pulumi.azure.storage.inputs.GetAccountSASArgs;
/// import com.pulumi.azure.storage.inputs.GetAccountSASResourceTypesArgs;
/// import com.pulumi.azure.storage.inputs.GetAccountSASServicesArgs;
/// import com.pulumi.azure.storage.inputs.GetAccountSASPermissionsArgs;
/// import com.pulumi.azure.compute.RunCommand;
/// import com.pulumi.azure.compute.RunCommandArgs;
/// import com.pulumi.azure.compute.inputs.RunCommandSourceArgs;
/// import com.pulumi.azure.compute.inputs.RunCommandSourceScriptUriManagedIdentityArgs;
/// import com.pulumi.azure.compute.inputs.RunCommandErrorBlobManagedIdentityArgs;
/// import com.pulumi.azure.compute.inputs.RunCommandOutputBlobManagedIdentityArgs;
/// import com.pulumi.azure.compute.inputs.RunCommandParameterArgs;
/// import com.pulumi.azure.compute.inputs.RunCommandProtectedParameterArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .addressSpaces("10.0.0.0/16")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("internal")
///             .resourceGroupName(exampleResourceGroup.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var exampleNetworkInterface = new NetworkInterface("exampleNetworkInterface", NetworkInterfaceArgs.builder()
///             .name("example-nic")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .ipConfigurations(NetworkInterfaceIpConfigurationArgs.builder()
///                 .name("internal")
///                 .subnetId(exampleSubnet.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .build())
///             .build());
///
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .name("example-uai")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .build());
///
///         var exampleLinuxVirtualMachine = new LinuxVirtualMachine("exampleLinuxVirtualMachine", LinuxVirtualMachineArgs.builder()
///             .name("example-VM")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .size("Standard_B2s")
///             .adminUsername("adminuser")
///             .adminPassword("P@$$w0rd1234!")
///             .disablePasswordAuthentication(false)
///             .networkInterfaceIds(exampleNetworkInterface.id())
///             .osDisk(LinuxVirtualMachineOsDiskArgs.builder()
///                 .caching("ReadWrite")
///                 .storageAccountType("Premium_LRS")
///                 .build())
///             .sourceImageReference(LinuxVirtualMachineSourceImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
///                 .version("latest")
///                 .build())
///             .identity(LinuxVirtualMachineIdentityArgs.builder()
///                 .type("SystemAssigned, UserAssigned")
///                 .identityIds(exampleUserAssignedIdentity.id())
///                 .build())
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("exampleaccount")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleAssignment = new Assignment("exampleAssignment", AssignmentArgs.builder()
///             .scope(exampleAccount.id())
///             .roleDefinitionName("Storage Blob Data Contributor")
///             .principalId(exampleUserAssignedIdentity.principalId())
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("example-sc")
///             .storageAccountName(exampleAccount.name())
///             .containerAccessType("blob")
///             .build());
///
///         var example1 = new Blob("example1", BlobArgs.builder()
///             .name("script1")
///             .storageAccountName(exampleAccount.name())
///             .storageContainerName(exampleContainer.name())
///             .type("Block")
///             .sourceContent("echo 'hello world'")
///             .build());
///
///         var example2 = new Blob("example2", BlobArgs.builder()
///             .name("output")
///             .storageAccountName(exampleAccount.name())
///             .storageContainerName(exampleContainer.name())
///             .type("Append")
///             .build());
///
///         var example3 = new Blob("example3", BlobArgs.builder()
///             .name("error")
///             .storageAccountName(exampleAccount.name())
///             .storageContainerName(exampleContainer.name())
///             .type("Append")
///             .build());
///
///         final var example = StorageFunctions.getAccountSAS(GetAccountSASArgs.builder()
///             .connectionString(exampleAccount.primaryConnectionString())
///             .httpsOnly(true)
///             .signedVersion("2019-10-10")
///             .start("2023-04-01T00:00:00Z")
///             .expiry("2024-04-01T00:00:00Z")
///             .resourceTypes(GetAccountSASResourceTypesArgs.builder()
///                 .service(false)
///                 .container(false)
///                 .object(true)
///                 .build())
///             .services(GetAccountSASServicesArgs.builder()
///                 .blob(true)
///                 .queue(false)
///                 .table(false)
///                 .file(false)
///                 .build())
///             .permissions(GetAccountSASPermissionsArgs.builder()
///                 .read(true)
///                 .write(true)
///                 .delete(false)
///                 .list(false)
///                 .add(true)
///                 .create(true)
///                 .update(false)
///                 .process(false)
///                 .tag(false)
///                 .filter(false)
///                 .build())
///             .build());
///
///         // basic example
///         var exampleRunCommand = new RunCommand("exampleRunCommand", RunCommandArgs.builder()
///             .name("example-vmrc")
///             .location(exampleResourceGroup.location())
///             .virtualMachineId(exampleLinuxVirtualMachine.id())
///             .source(RunCommandSourceArgs.builder()
///                 .script("echo 'hello world'")
///                 .build())
///             .build());
///
///         // authorize to storage blob using user assigned identity
///         var example2RunCommand = new RunCommand("example2RunCommand", RunCommandArgs.builder()
///             .location(exampleResourceGroup.location())
///             .name("example2-vmrc")
///             .virtualMachineId(exampleLinuxVirtualMachine.id())
///             .outputBlobUri(example2.id())
///             .errorBlobUri(example3.id())
///             .runAsPassword("P@$$w0rd1234!")
///             .runAsUser("adminuser")
///             .source(RunCommandSourceArgs.builder()
///                 .scriptUri(example1.id())
///                 .scriptUriManagedIdentity(RunCommandSourceScriptUriManagedIdentityArgs.builder()
///                     .clientId(exampleUserAssignedIdentity.clientId())
///                     .build())
///                 .build())
///             .errorBlobManagedIdentity(RunCommandErrorBlobManagedIdentityArgs.builder()
///                 .clientId(exampleUserAssignedIdentity.clientId())
///                 .build())
///             .outputBlobManagedIdentity(RunCommandOutputBlobManagedIdentityArgs.builder()
///                 .clientId(exampleUserAssignedIdentity.clientId())
///                 .build())
///             .parameters(RunCommandParameterArgs.builder()
///                 .name("examplev1")
///                 .value("val1")
///                 .build())
///             .protectedParameters(RunCommandProtectedParameterArgs.builder()
///                 .name("examplev2")
///                 .value("val2")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("environment", "terraform-examples"),
///                 Map.entry("some_key", "some-value")
///             ))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAssignment)
///                 .build());
///
///         // authorize to storage blob using SAS token
///         var example3RunCommand = new RunCommand("example3RunCommand", RunCommandArgs.builder()
///             .location(exampleResourceGroup.location())
///             .name("example3-vmrc")
///             .virtualMachineId(exampleLinuxVirtualMachine.id())
///             .runAsPassword("P@$$w0rd1234!")
///             .runAsUser("adminuser")
///             .errorBlobUri(Output.tuple(example3.id(), example).applyValue(values -> {
///                 var id = values.t1;
///                 var example = values.t2;
///                 return String.format("%s%s", id,example.sas());
///             }))
///             .outputBlobUri(Output.tuple(example2.id(), example).applyValue(values -> {
///                 var id = values.t1;
///                 var example = values.t2;
///                 return String.format("%s%s", id,example.sas());
///             }))
///             .source(RunCommandSourceArgs.builder()
///                 .scriptUri(Output.tuple(example1.id(), example).applyValue(values -> {
///                     var id = values.t1;
///                     var example = values.t2;
///                     return String.format("%s%s", id,example.sas());
///                 }))
///                 .build())
///             .parameters(RunCommandParameterArgs.builder()
///                 .name("example-vm1")
///                 .value("val1")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("environment", "terraform-example-s"),
///                 Map.entry("some_key", "some-value")
///             ))
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
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: internal
///       resourceGroupName: ${exampleResourceGroup.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   exampleNetworkInterface:
///     type: azure:network:NetworkInterface
///     name: example
///     properties:
///       name: example-nic
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       ipConfigurations:
///         - name: internal
///           subnetId: ${exampleSubnet.id}
///           privateIpAddressAllocation: Dynamic
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       name: example-uai
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///   exampleLinuxVirtualMachine:
///     type: azure:compute:LinuxVirtualMachine
///     name: example
///     properties:
///       name: example-VM
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       size: Standard_B2s
///       adminUsername: adminuser
///       adminPassword: P@$$w0rd1234!
///       disablePasswordAuthentication: false
///       networkInterfaceIds:
///         - ${exampleNetworkInterface.id}
///       osDisk:
///         caching: ReadWrite
///         storageAccountType: Premium_LRS
///       sourceImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
///       identity:
///         type: SystemAssigned, UserAssigned
///         identityIds:
///           - ${exampleUserAssignedIdentity.id}
///   exampleAssignment:
///     type: azure:authorization:Assignment
///     name: example
///     properties:
///       scope: ${exampleAccount.id}
///       roleDefinitionName: Storage Blob Data Contributor
///       principalId: ${exampleUserAssignedIdentity.principalId}
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: exampleaccount
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: example-sc
///       storageAccountName: ${exampleAccount.name}
///       containerAccessType: blob
///   example1:
///     type: azure:storage:Blob
///     properties:
///       name: script1
///       storageAccountName: ${exampleAccount.name}
///       storageContainerName: ${exampleContainer.name}
///       type: Block
///       sourceContent: echo 'hello world'
///   example2:
///     type: azure:storage:Blob
///     properties:
///       name: output
///       storageAccountName: ${exampleAccount.name}
///       storageContainerName: ${exampleContainer.name}
///       type: Append
///   example3:
///     type: azure:storage:Blob
///     properties:
///       name: error
///       storageAccountName: ${exampleAccount.name}
///       storageContainerName: ${exampleContainer.name}
///       type: Append
///   # basic example
///   exampleRunCommand:
///     type: azure:compute:RunCommand
///     name: example
///     properties:
///       name: example-vmrc
///       location: ${exampleResourceGroup.location}
///       virtualMachineId: ${exampleLinuxVirtualMachine.id}
///       source:
///         script: echo 'hello world'
///   # authorize to storage blob using user assigned identity
///   example2RunCommand:
///     type: azure:compute:RunCommand
///     name: example2
///     properties:
///       location: ${exampleResourceGroup.location}
///       name: example2-vmrc
///       virtualMachineId: ${exampleLinuxVirtualMachine.id}
///       outputBlobUri: ${example2.id}
///       errorBlobUri: ${example3.id}
///       runAsPassword: P@$$w0rd1234!
///       runAsUser: adminuser
///       source:
///         scriptUri: ${example1.id}
///         scriptUriManagedIdentity:
///           clientId: ${exampleUserAssignedIdentity.clientId}
///       errorBlobManagedIdentity:
///         clientId: ${exampleUserAssignedIdentity.clientId}
///       outputBlobManagedIdentity:
///         clientId: ${exampleUserAssignedIdentity.clientId}
///       parameters:
///         - name: examplev1
///           value: val1
///       protectedParameters:
///         - name: examplev2
///           value: val2
///       tags:
///         environment: terraform-examples
///         some_key: some-value
///     options:
///       dependsOn:
///         - ${exampleAssignment}
///   # authorize to storage blob using SAS token
///   example3RunCommand:
///     type: azure:compute:RunCommand
///     name: example3
///     properties:
///       location: ${exampleResourceGroup.location}
///       name: example3-vmrc
///       virtualMachineId: ${exampleLinuxVirtualMachine.id}
///       runAsPassword: P@$$w0rd1234!
///       runAsUser: adminuser
///       errorBlobUri: ${example3.id}${example.sas}
///       outputBlobUri: ${example2.id}${example.sas}
///       source:
///         scriptUri: ${example1.id}${example.sas}
///       parameters:
///         - name: example-vm1
///           value: val1
///       tags:
///         environment: terraform-example-s
///         some_key: some-value
/// variables:
///   example:
///     fn::invoke:
///       function: azure:storage:getAccountSAS
///       arguments:
///         connectionString: ${exampleAccount.primaryConnectionString}
///         httpsOnly: true
///         signedVersion: 2019-10-10
///         start: 2023-04-01T00:00:00Z
///         expiry: 2024-04-01T00:00:00Z
///         resourceTypes:
///           service: false
///           container: false
///           object: true
///         services:
///           blob: true
///           queue: false
///           table: false
///           file: false
///         permissions:
///           read: true
///           write: true
///           delete: false
///           list: false
///           add: true
///           create: true
///           update: false
///           process: false
///           tag: false
///           filter: false
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2023-03-01
///
/// ## Import
///
/// An existing Virtual Machine Run Command can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/runCommand:RunCommand example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Compute/virtualMachines/vm1/runCommands/rc1
/// ```
class RunCommand extends pulumi.CustomResource {
  /// An `error_blob_managed_identity` block as defined below. User-assigned managed Identity that has access to errorBlobUri storage blob.
  late final pulumi.Output<RunCommandErrorBlobManagedIdentity?> errorBlobManagedIdentity;
  /// Specifies the Azure storage blob where script error stream will be uploaded.
  late final pulumi.Output<String?> errorBlobUri;
  late final pulumi.Output<List<Map<String, dynamic>>> instanceViews;
  /// The Azure Region where the Virtual Machine Run Command should exist. Changing this forces a new Virtual Machine Run Command to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of this Virtual Machine Run Command. Changing this forces a new Virtual Machine Run Command to be created.
  late final pulumi.Output<String> name;
  /// An `output_blob_managed_identity` block as defined below. User-assigned managed Identity that has access to outputBlobUri storage blob.
  late final pulumi.Output<RunCommandOutputBlobManagedIdentity?> outputBlobManagedIdentity;
  /// Specifies the Azure storage blob where script output stream will be uploaded. It can be basic blob URI with SAS token.
  late final pulumi.Output<String?> outputBlobUri;
  /// A list of `parameter` blocks as defined below. The parameters used by the script.
  late final pulumi.Output<List<Map<String, dynamic>>?> parameters;
  /// A list of `protected_parameter` blocks as defined below. The protected parameters used by the script.
  late final pulumi.Output<List<Map<String, dynamic>>?> protectedParameters;
  /// Specifies the user account password on the VM when executing the Virtual Machine Run Command.
  late final pulumi.Output<String?> runAsPassword;
  /// Specifies the user account on the VM when executing the Virtual Machine Run Command.
  late final pulumi.Output<String?> runAsUser;
  /// A `source` block as defined below. The source of the run command script.
  late final pulumi.Output<RunCommandSource> source;
  /// A mapping of tags which should be assigned to the Virtual Machine Run Command.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the Virtual Machine ID within which this Virtual Machine Run Command should exist. Changing this forces a new Virtual Machine Run Command to be created.
  late final pulumi.Output<String> virtualMachineId;

  /// Creates a new [RunCommand].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RunCommand]. {@macro pulumi_compute_run_command_run_command_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RunCommand(
    String name, {
    RunCommandArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/runCommand:RunCommand',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    errorBlobManagedIdentity = registerOutput<RunCommandErrorBlobManagedIdentity?>('errorBlobManagedIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RunCommandErrorBlobManagedIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    errorBlobUri = registerOutput<String?>('errorBlobUri');
    instanceViews = registerOutput<List<Map<String, dynamic>>>('instanceViews');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outputBlobManagedIdentity = registerOutput<RunCommandOutputBlobManagedIdentity?>('outputBlobManagedIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RunCommandOutputBlobManagedIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    outputBlobUri = registerOutput<String?>('outputBlobUri');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    protectedParameters = registerOutput<List<Map<String, dynamic>>?>('protectedParameters');
    runAsPassword = registerOutput<String?>('runAsPassword');
    runAsUser = registerOutput<String?>('runAsUser');
    source = registerOutput<RunCommandSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RunCommandSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    virtualMachineId = registerOutput<String>('virtualMachineId');
  }

  /// Gets an existing [RunCommand] resource's state with the given [name] and [id].
  static RunCommand get(
    String name,
    pulumi.Input<String> id, {
    RunCommandState? state,
  }) {
    return RunCommand._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RunCommand._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/runCommand:RunCommand',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    errorBlobManagedIdentity = registerOutput<RunCommandErrorBlobManagedIdentity?>('errorBlobManagedIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RunCommandErrorBlobManagedIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    errorBlobUri = registerOutput<String?>('errorBlobUri');
    instanceViews = registerOutput<List<Map<String, dynamic>>>('instanceViews');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outputBlobManagedIdentity = registerOutput<RunCommandOutputBlobManagedIdentity?>('outputBlobManagedIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RunCommandOutputBlobManagedIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    outputBlobUri = registerOutput<String?>('outputBlobUri');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    protectedParameters = registerOutput<List<Map<String, dynamic>>?>('protectedParameters');
    runAsPassword = registerOutput<String?>('runAsPassword');
    runAsUser = registerOutput<String?>('runAsUser');
    source = registerOutput<RunCommandSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RunCommandSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    virtualMachineId = registerOutput<String>('virtualMachineId');
  }
}
