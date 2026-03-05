import 'package:pulumi/pulumi.dart' as pulumi;
import 'three_tier_virtual_instance_args.dart';
import 'three_tier_virtual_instance_identity.dart';
import 'three_tier_virtual_instance_state.dart';
import 'three_tier_virtual_instance_three_tier_configuration.dart';

/// Manages an SAP Three Tier Virtual Instance with a new SAP System.
///
/// &gt; **Note:** Before using this resource, it's required to submit the request of registering the Resource Provider with Azure CLI `az provider register --namespace "Microsoft.Workloads"`. The Resource Provider can take a while to register, you can check the status by running `az provider show --namespace "Microsoft.Workloads" --query "registrationState"`. Once this outputs "Registered" the Resource Provider is available for use.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as tls from "@pulumi/tls";
///
/// const examplePrivateKey = new tls.index.PrivateKey("example", {
///     algorithm: "RSA",
///     rsaBits: 4096,
/// });
/// const example = tls.index.PublicKey({
///     privateKeyPem: examplePrivateKey.privateKeyPem,
/// });
/// const current = azure.core.getSubscription({});
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     name: "example-uai",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleAssignment = new azure.authorization.Assignment("example", {
///     scope: current.then(current => current.id),
///     roleDefinitionName: "Azure Center for SAP solutions service role",
///     principalId: exampleUserAssignedIdentity.principalId,
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     addressSpaces: ["10.0.0.0/16"],
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: exampleResourceGroup.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const app = new azure.core.ResourceGroup("app", {
///     name: "example-sapapp",
///     location: "West Europe",
/// }, {
///     dependsOn: [exampleSubnet],
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplesa",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleThreeTierVirtualInstance = new azure.workloadssap.ThreeTierVirtualInstance("example", {
///     name: "X05",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     environment: "NonProd",
///     sapProduct: "S4HANA",
///     managedResourceGroupName: "exampleManagedRG",
///     appLocation: app.location,
///     sapFqdn: "sap.bpaas.com",
///     threeTierConfiguration: {
///         appResourceGroupName: app.name,
///         secondaryIpEnabled: true,
///         applicationServerConfiguration: {
///             instanceCount: 1,
///             subnetId: exampleSubnet.id,
///             virtualMachineConfiguration: {
///                 virtualMachineSize: "Standard_D16ds_v4",
///                 image: {
///                     offer: "RHEL-SAP-HA",
///                     publisher: "RedHat",
///                     sku: "82sapha-gen2",
///                     version: "latest",
///                 },
///                 osProfile: {
///                     adminUsername: "testAdmin",
///                     sshPrivateKey: examplePrivateKey.privateKeyPem,
///                     sshPublicKey: example.publicKeyOpenssh,
///                 },
///             },
///         },
///         centralServerConfiguration: {
///             instanceCount: 1,
///             subnetId: exampleSubnet.id,
///             virtualMachineConfiguration: {
///                 virtualMachineSize: "Standard_D16ds_v4",
///                 image: {
///                     offer: "RHEL-SAP-HA",
///                     publisher: "RedHat",
///                     sku: "82sapha-gen2",
///                     version: "latest",
///                 },
///                 osProfile: {
///                     adminUsername: "testAdmin",
///                     sshPrivateKey: examplePrivateKey.privateKeyPem,
///                     sshPublicKey: example.publicKeyOpenssh,
///                 },
///             },
///         },
///         databaseServerConfiguration: {
///             instanceCount: 1,
///             subnetId: exampleSubnet.id,
///             databaseType: "HANA",
///             virtualMachineConfiguration: {
///                 virtualMachineSize: "Standard_E16ds_v4",
///                 image: {
///                     offer: "RHEL-SAP-HA",
///                     publisher: "RedHat",
///                     sku: "82sapha-gen2",
///                     version: "latest",
///                 },
///                 osProfile: {
///                     adminUsername: "testAdmin",
///                     sshPrivateKey: examplePrivateKey.privateKeyPem,
///                     sshPublicKey: example.publicKeyOpenssh,
///                 },
///             },
///             diskVolumeConfigurations: [
///                 {
///                     volumeName: "hana/data",
///                     numberOfDisks: 3,
///                     sizeInGb: 128,
///                     skuName: "Premium_LRS",
///                 },
///                 {
///                     volumeName: "hana/log",
///                     numberOfDisks: 3,
///                     sizeInGb: 128,
///                     skuName: "Premium_LRS",
///                 },
///                 {
///                     volumeName: "hana/shared",
///                     numberOfDisks: 1,
///                     sizeInGb: 256,
///                     skuName: "Premium_LRS",
///                 },
///                 {
///                     volumeName: "usr/sap",
///                     numberOfDisks: 1,
///                     sizeInGb: 128,
///                     skuName: "Premium_LRS",
///                 },
///                 {
///                     volumeName: "backup",
///                     numberOfDisks: 2,
///                     sizeInGb: 256,
///                     skuName: "StandardSSD_LRS",
///                 },
///                 {
///                     volumeName: "os",
///                     numberOfDisks: 1,
///                     sizeInGb: 64,
///                     skuName: "StandardSSD_LRS",
///                 },
///             ],
///         },
///         resourceNames: {
///             applicationServer: {
///                 availabilitySetName: "appAvSet",
///                 virtualMachines: [{
///                     hostName: "apphostName0",
///                     osDiskName: "app0osdisk",
///                     virtualMachineName: "appvm0",
///                     networkInterfaceNames: ["appnic0"],
///                     dataDisks: [{
///                         volumeName: "default",
///                         names: ["app0disk0"],
///                     }],
///                 }],
///             },
///             centralServer: {
///                 availabilitySetName: "csAvSet",
///                 loadBalancer: {
///                     name: "ascslb",
///                     backendPoolNames: ["ascsBackendPool"],
///                     frontendIpConfigurationNames: ["ascsip0"],
///                     healthProbeNames: ["ascsHealthProbe"],
///                 },
///                 virtualMachines: [{
///                     hostName: "ascshostName",
///                     osDiskName: "ascsosdisk",
///                     virtualMachineName: "ascsvm",
///                     networkInterfaceNames: ["ascsnic"],
///                     dataDisks: [{
///                         volumeName: "default",
///                         names: ["ascsdisk"],
///                     }],
///                 }],
///             },
///             databaseServer: {
///                 availabilitySetName: "dbAvSet",
///                 loadBalancer: {
///                     name: "dblb",
///                     backendPoolNames: ["dbBackendPool"],
///                     frontendIpConfigurationNames: ["dbip"],
///                     healthProbeNames: ["dbHealthProbe"],
///                 },
///                 virtualMachines: [{
///                     hostName: "dbprhost",
///                     osDiskName: "dbprosdisk",
///                     virtualMachineName: "dbvmpr",
///                     networkInterfaceNames: ["dbprnic"],
///                     dataDisks: [
///                         {
///                             volumeName: "hanaData",
///                             names: [
///                                 "hanadatapr0",
///                                 "hanadatapr1",
///                             ],
///                         },
///                         {
///                             volumeName: "hanaLog",
///                             names: [
///                                 "hanalogpr0",
///                                 "hanalogpr1",
///                                 "hanalogpr2",
///                             ],
///                         },
///                         {
///                             volumeName: "usrSap",
///                             names: ["usrsappr0"],
///                         },
///                         {
///                             volumeName: "hanaShared",
///                             names: [
///                                 "hanasharedpr0",
///                                 "hanasharedpr1",
///                             ],
///                         },
///                     ],
///                 }],
///             },
///             sharedStorage: {
///                 accountName: "sharedexamplesa",
///                 privateEndpointName: "examplePE",
///             },
///         },
///         transportCreateAndMount: {
///             resourceGroupId: app.id,
///             storageAccountName: "exampletranssa",
///         },
///     },
///     identity: {
///         type: "UserAssigned",
///         identityIds: [exampleUserAssignedIdentity.id],
///     },
///     tags: {
///         Env: "Test",
///     },
/// }, {
///     dependsOn: [exampleAssignment],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_tls as tls
///
/// example_private_key = tls.index.PrivateKey("example",
///     algorithm=RSA,
///     rsa_bits=4096)
/// example = tls.index.public_key(private_key_pem=example_private_key["privateKeyPem"])
/// current = azure.core.get_subscription()
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     name="example-uai",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name)
/// example_assignment = azure.authorization.Assignment("example",
///     scope=current.id,
///     role_definition_name="Azure Center for SAP solutions service role",
///     principal_id=example_user_assigned_identity.principal_id)
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     address_spaces=["10.0.0.0/16"],
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name)
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example_resource_group.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// app = azure.core.ResourceGroup("app",
///     name="example-sapapp",
///     location="West Europe",
///     opts = pulumi.ResourceOptions(depends_on=[example_subnet]))
/// example_account = azure.storage.Account("example",
///     name="examplesa",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_three_tier_virtual_instance = azure.workloadssap.ThreeTierVirtualInstance("example",
///     name="X05",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     environment="NonProd",
///     sap_product="S4HANA",
///     managed_resource_group_name="exampleManagedRG",
///     app_location=app.location,
///     sap_fqdn="sap.bpaas.com",
///     three_tier_configuration={
///         "app_resource_group_name": app.name,
///         "secondary_ip_enabled": True,
///         "application_server_configuration": {
///             "instance_count": 1,
///             "subnet_id": example_subnet.id,
///             "virtual_machine_configuration": {
///                 "virtual_machine_size": "Standard_D16ds_v4",
///                 "image": {
///                     "offer": "RHEL-SAP-HA",
///                     "publisher": "RedHat",
///                     "sku": "82sapha-gen2",
///                     "version": "latest",
///                 },
///                 "os_profile": {
///                     "admin_username": "testAdmin",
///                     "ssh_private_key": example_private_key["privateKeyPem"],
///                     "ssh_public_key": example["publicKeyOpenssh"],
///                 },
///             },
///         },
///         "central_server_configuration": {
///             "instance_count": 1,
///             "subnet_id": example_subnet.id,
///             "virtual_machine_configuration": {
///                 "virtual_machine_size": "Standard_D16ds_v4",
///                 "image": {
///                     "offer": "RHEL-SAP-HA",
///                     "publisher": "RedHat",
///                     "sku": "82sapha-gen2",
///                     "version": "latest",
///                 },
///                 "os_profile": {
///                     "admin_username": "testAdmin",
///                     "ssh_private_key": example_private_key["privateKeyPem"],
///                     "ssh_public_key": example["publicKeyOpenssh"],
///                 },
///             },
///         },
///         "database_server_configuration": {
///             "instance_count": 1,
///             "subnet_id": example_subnet.id,
///             "database_type": "HANA",
///             "virtual_machine_configuration": {
///                 "virtual_machine_size": "Standard_E16ds_v4",
///                 "image": {
///                     "offer": "RHEL-SAP-HA",
///                     "publisher": "RedHat",
///                     "sku": "82sapha-gen2",
///                     "version": "latest",
///                 },
///                 "os_profile": {
///                     "admin_username": "testAdmin",
///                     "ssh_private_key": example_private_key["privateKeyPem"],
///                     "ssh_public_key": example["publicKeyOpenssh"],
///                 },
///             },
///             "disk_volume_configurations": [
///                 {
///                     "volume_name": "hana/data",
///                     "number_of_disks": 3,
///                     "size_in_gb": 128,
///                     "sku_name": "Premium_LRS",
///                 },
///                 {
///                     "volume_name": "hana/log",
///                     "number_of_disks": 3,
///                     "size_in_gb": 128,
///                     "sku_name": "Premium_LRS",
///                 },
///                 {
///                     "volume_name": "hana/shared",
///                     "number_of_disks": 1,
///                     "size_in_gb": 256,
///                     "sku_name": "Premium_LRS",
///                 },
///                 {
///                     "volume_name": "usr/sap",
///                     "number_of_disks": 1,
///                     "size_in_gb": 128,
///                     "sku_name": "Premium_LRS",
///                 },
///                 {
///                     "volume_name": "backup",
///                     "number_of_disks": 2,
///                     "size_in_gb": 256,
///                     "sku_name": "StandardSSD_LRS",
///                 },
///                 {
///                     "volume_name": "os",
///                     "number_of_disks": 1,
///                     "size_in_gb": 64,
///                     "sku_name": "StandardSSD_LRS",
///                 },
///             ],
///         },
///         "resource_names": {
///             "application_server": {
///                 "availability_set_name": "appAvSet",
///                 "virtual_machines": [{
///                     "host_name": "apphostName0",
///                     "os_disk_name": "app0osdisk",
///                     "virtual_machine_name": "appvm0",
///                     "network_interface_names": ["appnic0"],
///                     "data_disks": [{
///                         "volume_name": "default",
///                         "names": ["app0disk0"],
///                     }],
///                 }],
///             },
///             "central_server": {
///                 "availability_set_name": "csAvSet",
///                 "load_balancer": {
///                     "name": "ascslb",
///                     "backend_pool_names": ["ascsBackendPool"],
///                     "frontend_ip_configuration_names": ["ascsip0"],
///                     "health_probe_names": ["ascsHealthProbe"],
///                 },
///                 "virtual_machines": [{
///                     "host_name": "ascshostName",
///                     "os_disk_name": "ascsosdisk",
///                     "virtual_machine_name": "ascsvm",
///                     "network_interface_names": ["ascsnic"],
///                     "data_disks": [{
///                         "volume_name": "default",
///                         "names": ["ascsdisk"],
///                     }],
///                 }],
///             },
///             "database_server": {
///                 "availability_set_name": "dbAvSet",
///                 "load_balancer": {
///                     "name": "dblb",
///                     "backend_pool_names": ["dbBackendPool"],
///                     "frontend_ip_configuration_names": ["dbip"],
///                     "health_probe_names": ["dbHealthProbe"],
///                 },
///                 "virtual_machines": [{
///                     "host_name": "dbprhost",
///                     "os_disk_name": "dbprosdisk",
///                     "virtual_machine_name": "dbvmpr",
///                     "network_interface_names": ["dbprnic"],
///                     "data_disks": [
///                         {
///                             "volume_name": "hanaData",
///                             "names": [
///                                 "hanadatapr0",
///                                 "hanadatapr1",
///                             ],
///                         },
///                         {
///                             "volume_name": "hanaLog",
///                             "names": [
///                                 "hanalogpr0",
///                                 "hanalogpr1",
///                                 "hanalogpr2",
///                             ],
///                         },
///                         {
///                             "volume_name": "usrSap",
///                             "names": ["usrsappr0"],
///                         },
///                         {
///                             "volume_name": "hanaShared",
///                             "names": [
///                                 "hanasharedpr0",
///                                 "hanasharedpr1",
///                             ],
///                         },
///                     ],
///                 }],
///             },
///             "shared_storage": {
///                 "account_name": "sharedexamplesa",
///                 "private_endpoint_name": "examplePE",
///             },
///         },
///         "transport_create_and_mount": {
///             "resource_group_id": app.id,
///             "storage_account_name": "exampletranssa",
///         },
///     },
///     identity={
///         "type": "UserAssigned",
///         "identity_ids": [example_user_assigned_identity.id],
///     },
///     tags={
///         "Env": "Test",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_assignment]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Tls = Pulumi.Tls;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var examplePrivateKey = new Tls.Index.PrivateKey("example", new()
///     {
///         Algorithm = "RSA",
///         RsaBits = 4096,
///     });
///
///     var example = Tls.Index.PublicKey.Invoke(new()
///     {
///         PrivateKeyPem = examplePrivateKey.PrivateKeyPem,
///     });
///
///     var current = Azure.Core.GetSubscription.Invoke();
///
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         Name = "example-uai",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleAssignment = new Azure.Authorization.Assignment("example", new()
///     {
///         Scope = current.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         RoleDefinitionName = "Azure Center for SAP solutions service role",
///         PrincipalId = exampleUserAssignedIdentity.PrincipalId,
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
///         Name = "example-subnet",
///         ResourceGroupName = exampleResourceGroup.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///     });
///
///     var app = new Azure.Core.ResourceGroup("app", new()
///     {
///         Name = "example-sapapp",
///         Location = "West Europe",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleSubnet,
///         },
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplesa",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleThreeTierVirtualInstance = new Azure.WorkloadsSAP.ThreeTierVirtualInstance("example", new()
///     {
///         Name = "X05",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         Environment = "NonProd",
///         SapProduct = "S4HANA",
///         ManagedResourceGroupName = "exampleManagedRG",
///         AppLocation = app.Location,
///         SapFqdn = "sap.bpaas.com",
///         ThreeTierConfiguration = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationArgs
///         {
///             AppResourceGroupName = app.Name,
///             SecondaryIpEnabled = true,
///             ApplicationServerConfiguration = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationArgs
///             {
///                 InstanceCount = 1,
///                 SubnetId = exampleSubnet.Id,
///                 VirtualMachineConfiguration = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfigurationArgs
///                 {
///                     VirtualMachineSize = "Standard_D16ds_v4",
///                     Image = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfigurationImageArgs
///                     {
///                         Offer = "RHEL-SAP-HA",
///                         Publisher = "RedHat",
///                         Sku = "82sapha-gen2",
///                         Version = "latest",
///                     },
///                     OsProfile = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfigurationOsProfileArgs
///                     {
///                         AdminUsername = "testAdmin",
///                         SshPrivateKey = examplePrivateKey.PrivateKeyPem,
///                         SshPublicKey = example.PublicKeyOpenssh,
///                     },
///                 },
///             },
///             CentralServerConfiguration = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationArgs
///             {
///                 InstanceCount = 1,
///                 SubnetId = exampleSubnet.Id,
///                 VirtualMachineConfiguration = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationArgs
///                 {
///                     VirtualMachineSize = "Standard_D16ds_v4",
///                     Image = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationImageArgs
///                     {
///                         Offer = "RHEL-SAP-HA",
///                         Publisher = "RedHat",
///                         Sku = "82sapha-gen2",
///                         Version = "latest",
///                     },
///                     OsProfile = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationOsProfileArgs
///                     {
///                         AdminUsername = "testAdmin",
///                         SshPrivateKey = examplePrivateKey.PrivateKeyPem,
///                         SshPublicKey = example.PublicKeyOpenssh,
///                     },
///                 },
///             },
///             DatabaseServerConfiguration = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationArgs
///             {
///                 InstanceCount = 1,
///                 SubnetId = exampleSubnet.Id,
///                 DatabaseType = "HANA",
///                 VirtualMachineConfiguration = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationArgs
///                 {
///                     VirtualMachineSize = "Standard_E16ds_v4",
///                     Image = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationImageArgs
///                     {
///                         Offer = "RHEL-SAP-HA",
///                         Publisher = "RedHat",
///                         Sku = "82sapha-gen2",
///                         Version = "latest",
///                     },
///                     OsProfile = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationOsProfileArgs
///                     {
///                         AdminUsername = "testAdmin",
///                         SshPrivateKey = examplePrivateKey.PrivateKeyPem,
///                         SshPublicKey = example.PublicKeyOpenssh,
///                     },
///                 },
///                 DiskVolumeConfigurations = new[]
///                 {
///                     new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfigurationArgs
///                     {
///                         VolumeName = "hana/data",
///                         NumberOfDisks = 3,
///                         SizeInGb = 128,
///                         SkuName = "Premium_LRS",
///                     },
///                     new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfigurationArgs
///                     {
///                         VolumeName = "hana/log",
///                         NumberOfDisks = 3,
///                         SizeInGb = 128,
///                         SkuName = "Premium_LRS",
///                     },
///                     new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfigurationArgs
///                     {
///                         VolumeName = "hana/shared",
///                         NumberOfDisks = 1,
///                         SizeInGb = 256,
///                         SkuName = "Premium_LRS",
///                     },
///                     new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfigurationArgs
///                     {
///                         VolumeName = "usr/sap",
///                         NumberOfDisks = 1,
///                         SizeInGb = 128,
///                         SkuName = "Premium_LRS",
///                     },
///                     new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfigurationArgs
///                     {
///                         VolumeName = "backup",
///                         NumberOfDisks = 2,
///                         SizeInGb = 256,
///                         SkuName = "StandardSSD_LRS",
///                     },
///                     new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfigurationArgs
///                     {
///                         VolumeName = "os",
///                         NumberOfDisks = 1,
///                         SizeInGb = 64,
///                         SkuName = "StandardSSD_LRS",
///                     },
///                 },
///             },
///             ResourceNames = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesArgs
///             {
///                 ApplicationServer = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerArgs
///                 {
///                     AvailabilitySetName = "appAvSet",
///                     VirtualMachines = new[]
///                     {
///                         new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachineArgs
///                         {
///                             HostName = "apphostName0",
///                             OsDiskName = "app0osdisk",
///                             VirtualMachineName = "appvm0",
///                             NetworkInterfaceNames = new[]
///                             {
///                                 "appnic0",
///                             },
///                             DataDisks = new[]
///                             {
///                                 new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachineDataDiskArgs
///                                 {
///                                     VolumeName = "default",
///                                     Names = new[]
///                                     {
///                                         "app0disk0",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 CentralServer = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerArgs
///                 {
///                     AvailabilitySetName = "csAvSet",
///                     LoadBalancer = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerLoadBalancerArgs
///                     {
///                         Name = "ascslb",
///                         BackendPoolNames = new[]
///                         {
///                             "ascsBackendPool",
///                         },
///                         FrontendIpConfigurationNames = new[]
///                         {
///                             "ascsip0",
///                         },
///                         HealthProbeNames = new[]
///                         {
///                             "ascsHealthProbe",
///                         },
///                     },
///                     VirtualMachines = new[]
///                     {
///                         new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachineArgs
///                         {
///                             HostName = "ascshostName",
///                             OsDiskName = "ascsosdisk",
///                             VirtualMachineName = "ascsvm",
///                             NetworkInterfaceNames = new[]
///                             {
///                                 "ascsnic",
///                             },
///                             DataDisks = new[]
///                             {
///                                 new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachineDataDiskArgs
///                                 {
///                                     VolumeName = "default",
///                                     Names = new[]
///                                     {
///                                         "ascsdisk",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 DatabaseServer = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerArgs
///                 {
///                     AvailabilitySetName = "dbAvSet",
///                     LoadBalancer = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerLoadBalancerArgs
///                     {
///                         Name = "dblb",
///                         BackendPoolNames = new[]
///                         {
///                             "dbBackendPool",
///                         },
///                         FrontendIpConfigurationNames = new[]
///                         {
///                             "dbip",
///                         },
///                         HealthProbeNames = new[]
///                         {
///                             "dbHealthProbe",
///                         },
///                     },
///                     VirtualMachines = new[]
///                     {
///                         new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineArgs
///                         {
///                             HostName = "dbprhost",
///                             OsDiskName = "dbprosdisk",
///                             VirtualMachineName = "dbvmpr",
///                             NetworkInterfaceNames = new[]
///                             {
///                                 "dbprnic",
///                             },
///                             DataDisks = new[]
///                             {
///                                 new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDiskArgs
///                                 {
///                                     VolumeName = "hanaData",
///                                     Names = new[]
///                                     {
///                                         "hanadatapr0",
///                                         "hanadatapr1",
///                                     },
///                                 },
///                                 new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDiskArgs
///                                 {
///                                     VolumeName = "hanaLog",
///                                     Names = new[]
///                                     {
///                                         "hanalogpr0",
///                                         "hanalogpr1",
///                                         "hanalogpr2",
///                                     },
///                                 },
///                                 new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDiskArgs
///                                 {
///                                     VolumeName = "usrSap",
///                                     Names = new[]
///                                     {
///                                         "usrsappr0",
///                                     },
///                                 },
///                                 new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDiskArgs
///                                 {
///                                     VolumeName = "hanaShared",
///                                     Names = new[]
///                                     {
///                                         "hanasharedpr0",
///                                         "hanasharedpr1",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 SharedStorage = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesSharedStorageArgs
///                 {
///                     AccountName = "sharedexamplesa",
///                     PrivateEndpointName = "examplePE",
///                 },
///             },
///             TransportCreateAndMount = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceThreeTierConfigurationTransportCreateAndMountArgs
///             {
///                 ResourceGroupId = app.Id,
///                 StorageAccountName = "exampletranssa",
///             },
///         },
///         Identity = new Azure.WorkloadsSAP.Inputs.ThreeTierVirtualInstanceIdentityArgs
///         {
///             Type = "UserAssigned",
///             IdentityIds = new[]
///             {
///                 exampleUserAssignedIdentity.Id,
///             },
///         },
///         Tags =
///         {
///             { "Env", "Test" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAssignment,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/workloadssap"
/// 	"github.com/pulumi/pulumi-tls/sdk/go/tls"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		examplePrivateKey, err := tls.NewPrivateKey(ctx, "example", &tls.PrivateKeyArgs{
/// 			Algorithm: "RSA",
/// 			RsaBits:   4096,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := tls.PublicKey(ctx, map[string]interface{}{
/// 			"privateKeyPem": examplePrivateKey.PrivateKeyPem,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			Name:              pulumi.String("example-uai"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAssignment, err := authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
/// 			Scope:              pulumi.String(current.Id),
/// 			RoleDefinitionName: pulumi.String("Azure Center for SAP solutions service role"),
/// 			PrincipalId:        exampleUserAssignedIdentity.PrincipalId,
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
/// 			Name:               pulumi.String("example-subnet"),
/// 			ResourceGroupName:  exampleResourceGroup.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		app, err := core.NewResourceGroup(ctx, "app", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-sapapp"),
/// 			Location: pulumi.String("West Europe"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleSubnet,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplesa"),
/// 			ResourceGroupName:      exampleResourceGroup.Name,
/// 			Location:               exampleResourceGroup.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workloadssap.NewThreeTierVirtualInstance(ctx, "example", &workloadssap.ThreeTierVirtualInstanceArgs{
/// 			Name:                     pulumi.String("X05"),
/// 			ResourceGroupName:        exampleResourceGroup.Name,
/// 			Location:                 exampleResourceGroup.Location,
/// 			Environment:              pulumi.String("NonProd"),
/// 			SapProduct:               pulumi.String("S4HANA"),
/// 			ManagedResourceGroupName: pulumi.String("exampleManagedRG"),
/// 			AppLocation:              app.Location,
/// 			SapFqdn:                  pulumi.String("sap.bpaas.com"),
/// 			ThreeTierConfiguration: &workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationArgs{
/// 				AppResourceGroupName: app.Name,
/// 				SecondaryIpEnabled:   pulumi.Bool(true),
/// 				ApplicationServerConfiguration: &workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationArgs{
/// 					InstanceCount: pulumi.Int(1),
/// 					SubnetId:      exampleSubnet.ID(),
/// 					VirtualMachineConfiguration: &workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfigurationArgs{
/// 						VirtualMachineSize: pulumi.String("Standard_D16ds_v4"),
/// 						Image: &workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfigurationImageArgs{
/// 							Offer:     pulumi.String("RHEL-SAP-HA"),
/// 							Publisher: pulumi.String("RedHat"),
/// 							Sku:       pulumi.String("82sapha-gen2"),
/// 							Version:   pulumi.String("latest"),
/// 						},
/// 						OsProfile: &workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfigurationOsProfileArgs{
/// 							AdminUsername: pulumi.String("testAdmin"),
/// 							SshPrivateKey: examplePrivateKey.PrivateKeyPem,
/// 							SshPublicKey:  pulumi.Any(example.PublicKeyOpenssh),
/// 						},
/// 					},
/// 				},
/// 				CentralServerConfiguration: &workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationArgs{
/// 					InstanceCount: pulumi.Int(1),
/// 					SubnetId:      exampleSubnet.ID(),
/// 					VirtualMachineConfiguration: &workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationArgs{
/// 						VirtualMachineSize: pulumi.String("Standard_D16ds_v4"),
/// 						Image: &workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationImageArgs{
/// 							Offer:     pulumi.String("RHEL-SAP-HA"),
/// 							Publisher: pulumi.String("RedHat"),
/// 							Sku:       pulumi.String("82sapha-gen2"),
/// 							Version:   pulumi.String("latest"),
/// 						},
/// 						OsProfile: &workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationOsProfileArgs{
/// 							AdminUsername: pulumi.String("testAdmin"),
/// 							SshPrivateKey: examplePrivateKey.PrivateKeyPem,
/// 							SshPublicKey:  pulumi.Any(example.PublicKeyOpenssh),
/// 						},
/// 					},
/// 				},
/// 				DatabaseServerConfiguration: &workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationArgs{
/// 					InstanceCount: pulumi.Int(1),
/// 					SubnetId:      exampleSubnet.ID(),
/// 					DatabaseType:  pulumi.String("HANA"),
/// 					VirtualMachineConfiguration: &workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationArgs{
/// 						VirtualMachineSize: pulumi.String("Standard_E16ds_v4"),
/// 						Image: &workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationImageArgs{
/// 							Offer:     pulumi.String("RHEL-SAP-HA"),
/// 							Publisher: pulumi.String("RedHat"),
/// 							Sku:       pulumi.String("82sapha-gen2"),
/// 							Version:   pulumi.String("latest"),
/// 						},
/// 						OsProfile: &workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationOsProfileArgs{
/// 							AdminUsername: pulumi.String("testAdmin"),
/// 							SshPrivateKey: examplePrivateKey.PrivateKeyPem,
/// 							SshPublicKey:  pulumi.Any(example.PublicKeyOpenssh),
/// 						},
/// 					},
/// 					DiskVolumeConfigurations: workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfigurationArray{
/// 						&workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfigurationArgs{
/// 							VolumeName:    pulumi.String("hana/data"),
/// 							NumberOfDisks: pulumi.Int(3),
/// 							SizeInGb:      pulumi.Int(128),
/// 							SkuName:       pulumi.String("Premium_LRS"),
/// 						},
/// 						&workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfigurationArgs{
/// 							VolumeName:    pulumi.String("hana/log"),
/// 							NumberOfDisks: pulumi.Int(3),
/// 							SizeInGb:      pulumi.Int(128),
/// 							SkuName:       pulumi.String("Premium_LRS"),
/// 						},
/// 						&workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfigurationArgs{
/// 							VolumeName:    pulumi.String("hana/shared"),
/// 							NumberOfDisks: pulumi.Int(1),
/// 							SizeInGb:      pulumi.Int(256),
/// 							SkuName:       pulumi.String("Premium_LRS"),
/// 						},
/// 						&workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfigurationArgs{
/// 							VolumeName:    pulumi.String("usr/sap"),
/// 							NumberOfDisks: pulumi.Int(1),
/// 							SizeInGb:      pulumi.Int(128),
/// 							SkuName:       pulumi.String("Premium_LRS"),
/// 						},
/// 						&workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfigurationArgs{
/// 							VolumeName:    pulumi.String("backup"),
/// 							NumberOfDisks: pulumi.Int(2),
/// 							SizeInGb:      pulumi.Int(256),
/// 							SkuName:       pulumi.String("StandardSSD_LRS"),
/// 						},
/// 						&workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfigurationArgs{
/// 							VolumeName:    pulumi.String("os"),
/// 							NumberOfDisks: pulumi.Int(1),
/// 							SizeInGb:      pulumi.Int(64),
/// 							SkuName:       pulumi.String("StandardSSD_LRS"),
/// 						},
/// 					},
/// 				},
/// 				ResourceNames: &workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesArgs{
/// 					ApplicationServer: &workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerArgs{
/// 						AvailabilitySetName: pulumi.String("appAvSet"),
/// 						VirtualMachines: workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachineArray{
/// 							&workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachineArgs{
/// 								HostName:           pulumi.String("apphostName0"),
/// 								OsDiskName:         pulumi.String("app0osdisk"),
/// 								VirtualMachineName: pulumi.String("appvm0"),
/// 								NetworkInterfaceNames: pulumi.StringArray{
/// 									pulumi.String("appnic0"),
/// 								},
/// 								DataDisks: workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachineDataDiskArray{
/// 									&workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachineDataDiskArgs{
/// 										VolumeName: pulumi.String("default"),
/// 										Names: pulumi.StringArray{
/// 											pulumi.String("app0disk0"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					CentralServer: &workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerArgs{
/// 						AvailabilitySetName: pulumi.String("csAvSet"),
/// 						LoadBalancer: &workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerLoadBalancerArgs{
/// 							Name: pulumi.String("ascslb"),
/// 							BackendPoolNames: pulumi.StringArray{
/// 								pulumi.String("ascsBackendPool"),
/// 							},
/// 							FrontendIpConfigurationNames: pulumi.StringArray{
/// 								pulumi.String("ascsip0"),
/// 							},
/// 							HealthProbeNames: pulumi.StringArray{
/// 								pulumi.String("ascsHealthProbe"),
/// 							},
/// 						},
/// 						VirtualMachines: workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachineArray{
/// 							&workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachineArgs{
/// 								HostName:           pulumi.String("ascshostName"),
/// 								OsDiskName:         pulumi.String("ascsosdisk"),
/// 								VirtualMachineName: pulumi.String("ascsvm"),
/// 								NetworkInterfaceNames: pulumi.StringArray{
/// 									pulumi.String("ascsnic"),
/// 								},
/// 								DataDisks: workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachineDataDiskArray{
/// 									&workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachineDataDiskArgs{
/// 										VolumeName: pulumi.String("default"),
/// 										Names: pulumi.StringArray{
/// 											pulumi.String("ascsdisk"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					DatabaseServer: &workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerArgs{
/// 						AvailabilitySetName: pulumi.String("dbAvSet"),
/// 						LoadBalancer: &workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerLoadBalancerArgs{
/// 							Name: pulumi.String("dblb"),
/// 							BackendPoolNames: pulumi.StringArray{
/// 								pulumi.String("dbBackendPool"),
/// 							},
/// 							FrontendIpConfigurationNames: pulumi.StringArray{
/// 								pulumi.String("dbip"),
/// 							},
/// 							HealthProbeNames: pulumi.StringArray{
/// 								pulumi.String("dbHealthProbe"),
/// 							},
/// 						},
/// 						VirtualMachines: workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineArray{
/// 							&workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineArgs{
/// 								HostName:           pulumi.String("dbprhost"),
/// 								OsDiskName:         pulumi.String("dbprosdisk"),
/// 								VirtualMachineName: pulumi.String("dbvmpr"),
/// 								NetworkInterfaceNames: pulumi.StringArray{
/// 									pulumi.String("dbprnic"),
/// 								},
/// 								DataDisks: workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDiskArray{
/// 									&workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDiskArgs{
/// 										VolumeName: pulumi.String("hanaData"),
/// 										Names: pulumi.StringArray{
/// 											pulumi.String("hanadatapr0"),
/// 											pulumi.String("hanadatapr1"),
/// 										},
/// 									},
/// 									&workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDiskArgs{
/// 										VolumeName: pulumi.String("hanaLog"),
/// 										Names: pulumi.StringArray{
/// 											pulumi.String("hanalogpr0"),
/// 											pulumi.String("hanalogpr1"),
/// 											pulumi.String("hanalogpr2"),
/// 										},
/// 									},
/// 									&workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDiskArgs{
/// 										VolumeName: pulumi.String("usrSap"),
/// 										Names: pulumi.StringArray{
/// 											pulumi.String("usrsappr0"),
/// 										},
/// 									},
/// 									&workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDiskArgs{
/// 										VolumeName: pulumi.String("hanaShared"),
/// 										Names: pulumi.StringArray{
/// 											pulumi.String("hanasharedpr0"),
/// 											pulumi.String("hanasharedpr1"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					SharedStorage: &workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesSharedStorageArgs{
/// 						AccountName:         pulumi.String("sharedexamplesa"),
/// 						PrivateEndpointName: pulumi.String("examplePE"),
/// 					},
/// 				},
/// 				TransportCreateAndMount: &workloadssap.ThreeTierVirtualInstanceThreeTierConfigurationTransportCreateAndMountArgs{
/// 					ResourceGroupId:    app.ID(),
/// 					StorageAccountName: pulumi.String("exampletranssa"),
/// 				},
/// 			},
/// 			Identity: &workloadssap.ThreeTierVirtualInstanceIdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID(),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Env": pulumi.String("Test"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAssignment,
/// 		}))
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
/// import com.pulumi.tls.PrivateKey;
/// import com.pulumi.tls.PrivateKeyArgs;
/// import com.pulumi.tls.TlsFunctions;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.workloadssap.ThreeTierVirtualInstance;
/// import com.pulumi.azure.workloadssap.ThreeTierVirtualInstanceArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceThreeTierConfigurationArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfigurationArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfigurationImageArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfigurationOsProfileArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationImageArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationOsProfileArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationImageArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationOsProfileArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerLoadBalancerArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerLoadBalancerArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesSharedStorageArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceThreeTierConfigurationTransportCreateAndMountArgs;
/// import com.pulumi.azure.workloadssap.inputs.ThreeTierVirtualInstanceIdentityArgs;
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
///         var examplePrivateKey = new PrivateKey("examplePrivateKey", PrivateKeyArgs.builder()
///             .algorithm("RSA")
///             .rsaBits(4096)
///             .build());
///
///         final var example = TlsFunctions.PublicKey(Map.of("privateKeyPem", examplePrivateKey.privateKeyPem()));
///
///         final var current = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .name("example-uai")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleAssignment = new Assignment("exampleAssignment", AssignmentArgs.builder()
///             .scope(current.id())
///             .roleDefinitionName("Azure Center for SAP solutions service role")
///             .principalId(exampleUserAssignedIdentity.principalId())
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
///             .name("example-subnet")
///             .resourceGroupName(exampleResourceGroup.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var app = new ResourceGroup("app", ResourceGroupArgs.builder()
///             .name("example-sapapp")
///             .location("West Europe")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleSubnet)
///                 .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplesa")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleThreeTierVirtualInstance = new ThreeTierVirtualInstance("exampleThreeTierVirtualInstance", ThreeTierVirtualInstanceArgs.builder()
///             .name("X05")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .environment("NonProd")
///             .sapProduct("S4HANA")
///             .managedResourceGroupName("exampleManagedRG")
///             .appLocation(app.location())
///             .sapFqdn("sap.bpaas.com")
///             .threeTierConfiguration(ThreeTierVirtualInstanceThreeTierConfigurationArgs.builder()
///                 .appResourceGroupName(app.name())
///                 .secondaryIpEnabled(true)
///                 .applicationServerConfiguration(ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationArgs.builder()
///                     .instanceCount(1)
///                     .subnetId(exampleSubnet.id())
///                     .virtualMachineConfiguration(ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfigurationArgs.builder()
///                         .virtualMachineSize("Standard_D16ds_v4")
///                         .image(ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfigurationImageArgs.builder()
///                             .offer("RHEL-SAP-HA")
///                             .publisher("RedHat")
///                             .sku("82sapha-gen2")
///                             .version("latest")
///                             .build())
///                         .osProfile(ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfigurationOsProfileArgs.builder()
///                             .adminUsername("testAdmin")
///                             .sshPrivateKey(examplePrivateKey.privateKeyPem())
///                             .sshPublicKey(example.publicKeyOpenssh())
///                             .build())
///                         .build())
///                     .build())
///                 .centralServerConfiguration(ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationArgs.builder()
///                     .instanceCount(1)
///                     .subnetId(exampleSubnet.id())
///                     .virtualMachineConfiguration(ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationArgs.builder()
///                         .virtualMachineSize("Standard_D16ds_v4")
///                         .image(ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationImageArgs.builder()
///                             .offer("RHEL-SAP-HA")
///                             .publisher("RedHat")
///                             .sku("82sapha-gen2")
///                             .version("latest")
///                             .build())
///                         .osProfile(ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationOsProfileArgs.builder()
///                             .adminUsername("testAdmin")
///                             .sshPrivateKey(examplePrivateKey.privateKeyPem())
///                             .sshPublicKey(example.publicKeyOpenssh())
///                             .build())
///                         .build())
///                     .build())
///                 .databaseServerConfiguration(ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationArgs.builder()
///                     .instanceCount(1)
///                     .subnetId(exampleSubnet.id())
///                     .databaseType("HANA")
///                     .virtualMachineConfiguration(ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationArgs.builder()
///                         .virtualMachineSize("Standard_E16ds_v4")
///                         .image(ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationImageArgs.builder()
///                             .offer("RHEL-SAP-HA")
///                             .publisher("RedHat")
///                             .sku("82sapha-gen2")
///                             .version("latest")
///                             .build())
///                         .osProfile(ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationOsProfileArgs.builder()
///                             .adminUsername("testAdmin")
///                             .sshPrivateKey(examplePrivateKey.privateKeyPem())
///                             .sshPublicKey(example.publicKeyOpenssh())
///                             .build())
///                         .build())
///                     .diskVolumeConfigurations(
///                         ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfigurationArgs.builder()
///                             .volumeName("hana/data")
///                             .numberOfDisks(3)
///                             .sizeInGb(128)
///                             .skuName("Premium_LRS")
///                             .build(),
///                         ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfigurationArgs.builder()
///                             .volumeName("hana/log")
///                             .numberOfDisks(3)
///                             .sizeInGb(128)
///                             .skuName("Premium_LRS")
///                             .build(),
///                         ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfigurationArgs.builder()
///                             .volumeName("hana/shared")
///                             .numberOfDisks(1)
///                             .sizeInGb(256)
///                             .skuName("Premium_LRS")
///                             .build(),
///                         ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfigurationArgs.builder()
///                             .volumeName("usr/sap")
///                             .numberOfDisks(1)
///                             .sizeInGb(128)
///                             .skuName("Premium_LRS")
///                             .build(),
///                         ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfigurationArgs.builder()
///                             .volumeName("backup")
///                             .numberOfDisks(2)
///                             .sizeInGb(256)
///                             .skuName("StandardSSD_LRS")
///                             .build(),
///                         ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfigurationArgs.builder()
///                             .volumeName("os")
///                             .numberOfDisks(1)
///                             .sizeInGb(64)
///                             .skuName("StandardSSD_LRS")
///                             .build())
///                     .build())
///                 .resourceNames(ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesArgs.builder()
///                     .applicationServer(ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerArgs.builder()
///                         .availabilitySetName("appAvSet")
///                         .virtualMachines(ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachineArgs.builder()
///                             .hostName("apphostName0")
///                             .osDiskName("app0osdisk")
///                             .virtualMachineName("appvm0")
///                             .networkInterfaceNames("appnic0")
///                             .dataDisks(ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachineDataDiskArgs.builder()
///                                 .volumeName("default")
///                                 .names("app0disk0")
///                                 .build())
///                             .build())
///                         .build())
///                     .centralServer(ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerArgs.builder()
///                         .availabilitySetName("csAvSet")
///                         .loadBalancer(ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerLoadBalancerArgs.builder()
///                             .name("ascslb")
///                             .backendPoolNames("ascsBackendPool")
///                             .frontendIpConfigurationNames("ascsip0")
///                             .healthProbeNames("ascsHealthProbe")
///                             .build())
///                         .virtualMachines(ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachineArgs.builder()
///                             .hostName("ascshostName")
///                             .osDiskName("ascsosdisk")
///                             .virtualMachineName("ascsvm")
///                             .networkInterfaceNames("ascsnic")
///                             .dataDisks(ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachineDataDiskArgs.builder()
///                                 .volumeName("default")
///                                 .names("ascsdisk")
///                                 .build())
///                             .build())
///                         .build())
///                     .databaseServer(ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerArgs.builder()
///                         .availabilitySetName("dbAvSet")
///                         .loadBalancer(ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerLoadBalancerArgs.builder()
///                             .name("dblb")
///                             .backendPoolNames("dbBackendPool")
///                             .frontendIpConfigurationNames("dbip")
///                             .healthProbeNames("dbHealthProbe")
///                             .build())
///                         .virtualMachines(ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineArgs.builder()
///                             .hostName("dbprhost")
///                             .osDiskName("dbprosdisk")
///                             .virtualMachineName("dbvmpr")
///                             .networkInterfaceNames("dbprnic")
///                             .dataDisks(
///                                 ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDiskArgs.builder()
///                                     .volumeName("hanaData")
///                                     .names(
///                                         "hanadatapr0",
///                                         "hanadatapr1")
///                                     .build(),
///                                 ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDiskArgs.builder()
///                                     .volumeName("hanaLog")
///                                     .names(
///                                         "hanalogpr0",
///                                         "hanalogpr1",
///                                         "hanalogpr2")
///                                     .build(),
///                                 ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDiskArgs.builder()
///                                     .volumeName("usrSap")
///                                     .names("usrsappr0")
///                                     .build(),
///                                 ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDiskArgs.builder()
///                                     .volumeName("hanaShared")
///                                     .names(
///                                         "hanasharedpr0",
///                                         "hanasharedpr1")
///                                     .build())
///                             .build())
///                         .build())
///                     .sharedStorage(ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesSharedStorageArgs.builder()
///                         .accountName("sharedexamplesa")
///                         .privateEndpointName("examplePE")
///                         .build())
///                     .build())
///                 .transportCreateAndMount(ThreeTierVirtualInstanceThreeTierConfigurationTransportCreateAndMountArgs.builder()
///                     .resourceGroupId(app.id())
///                     .storageAccountName("exampletranssa")
///                     .build())
///                 .build())
///             .identity(ThreeTierVirtualInstanceIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .identityIds(exampleUserAssignedIdentity.id())
///                 .build())
///             .tags(Map.of("Env", "Test"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAssignment)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplePrivateKey:
///     type: tls:PrivateKey
///     name: example
///     properties:
///       algorithm: RSA
///       rsaBits: 4096
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       name: example-uai
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///   exampleAssignment:
///     type: azure:authorization:Assignment
///     name: example
///     properties:
///       scope: ${current.id}
///       roleDefinitionName: Azure Center for SAP solutions service role
///       principalId: ${exampleUserAssignedIdentity.principalId}
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
///       name: example-subnet
///       resourceGroupName: ${exampleResourceGroup.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   app:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-sapapp
///       location: West Europe
///     options:
///       dependsOn:
///         - ${exampleSubnet}
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplesa
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleThreeTierVirtualInstance:
///     type: azure:workloadssap:ThreeTierVirtualInstance
///     name: example
///     properties:
///       name: X05
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       environment: NonProd
///       sapProduct: S4HANA
///       managedResourceGroupName: exampleManagedRG
///       appLocation: ${app.location}
///       sapFqdn: sap.bpaas.com
///       threeTierConfiguration:
///         appResourceGroupName: ${app.name}
///         secondaryIpEnabled: true
///         applicationServerConfiguration:
///           instanceCount: 1
///           subnetId: ${exampleSubnet.id}
///           virtualMachineConfiguration:
///             virtualMachineSize: Standard_D16ds_v4
///             image:
///               offer: RHEL-SAP-HA
///               publisher: RedHat
///               sku: 82sapha-gen2
///               version: latest
///             osProfile:
///               adminUsername: testAdmin
///               sshPrivateKey: ${examplePrivateKey.privateKeyPem}
///               sshPublicKey: ${example.publicKeyOpenssh}
///         centralServerConfiguration:
///           instanceCount: 1
///           subnetId: ${exampleSubnet.id}
///           virtualMachineConfiguration:
///             virtualMachineSize: Standard_D16ds_v4
///             image:
///               offer: RHEL-SAP-HA
///               publisher: RedHat
///               sku: 82sapha-gen2
///               version: latest
///             osProfile:
///               adminUsername: testAdmin
///               sshPrivateKey: ${examplePrivateKey.privateKeyPem}
///               sshPublicKey: ${example.publicKeyOpenssh}
///         databaseServerConfiguration:
///           instanceCount: 1
///           subnetId: ${exampleSubnet.id}
///           databaseType: HANA
///           virtualMachineConfiguration:
///             virtualMachineSize: Standard_E16ds_v4
///             image:
///               offer: RHEL-SAP-HA
///               publisher: RedHat
///               sku: 82sapha-gen2
///               version: latest
///             osProfile:
///               adminUsername: testAdmin
///               sshPrivateKey: ${examplePrivateKey.privateKeyPem}
///               sshPublicKey: ${example.publicKeyOpenssh}
///           diskVolumeConfigurations:
///             - volumeName: hana/data
///               numberOfDisks: 3
///               sizeInGb: 128
///               skuName: Premium_LRS
///             - volumeName: hana/log
///               numberOfDisks: 3
///               sizeInGb: 128
///               skuName: Premium_LRS
///             - volumeName: hana/shared
///               numberOfDisks: 1
///               sizeInGb: 256
///               skuName: Premium_LRS
///             - volumeName: usr/sap
///               numberOfDisks: 1
///               sizeInGb: 128
///               skuName: Premium_LRS
///             - volumeName: backup
///               numberOfDisks: 2
///               sizeInGb: 256
///               skuName: StandardSSD_LRS
///             - volumeName: os
///               numberOfDisks: 1
///               sizeInGb: 64
///               skuName: StandardSSD_LRS
///         resourceNames:
///           applicationServer:
///             availabilitySetName: appAvSet
///             virtualMachines:
///               - hostName: apphostName0
///                 osDiskName: app0osdisk
///                 virtualMachineName: appvm0
///                 networkInterfaceNames:
///                   - appnic0
///                 dataDisks:
///                   - volumeName: default
///                     names:
///                       - app0disk0
///           centralServer:
///             availabilitySetName: csAvSet
///             loadBalancer:
///               name: ascslb
///               backendPoolNames:
///                 - ascsBackendPool
///               frontendIpConfigurationNames:
///                 - ascsip0
///               healthProbeNames:
///                 - ascsHealthProbe
///             virtualMachines:
///               - hostName: ascshostName
///                 osDiskName: ascsosdisk
///                 virtualMachineName: ascsvm
///                 networkInterfaceNames:
///                   - ascsnic
///                 dataDisks:
///                   - volumeName: default
///                     names:
///                       - ascsdisk
///           databaseServer:
///             availabilitySetName: dbAvSet
///             loadBalancer:
///               name: dblb
///               backendPoolNames:
///                 - dbBackendPool
///               frontendIpConfigurationNames:
///                 - dbip
///               healthProbeNames:
///                 - dbHealthProbe
///             virtualMachines:
///               - hostName: dbprhost
///                 osDiskName: dbprosdisk
///                 virtualMachineName: dbvmpr
///                 networkInterfaceNames:
///                   - dbprnic
///                 dataDisks:
///                   - volumeName: hanaData
///                     names:
///                       - hanadatapr0
///                       - hanadatapr1
///                   - volumeName: hanaLog
///                     names:
///                       - hanalogpr0
///                       - hanalogpr1
///                       - hanalogpr2
///                   - volumeName: usrSap
///                     names:
///                       - usrsappr0
///                   - volumeName: hanaShared
///                     names:
///                       - hanasharedpr0
///                       - hanasharedpr1
///           sharedStorage:
///             accountName: sharedexamplesa
///             privateEndpointName: examplePE
///         transportCreateAndMount:
///           resourceGroupId: ${app.id}
///           storageAccountName: exampletranssa
///       identity:
///         type: UserAssigned
///         identityIds:
///           - ${exampleUserAssignedIdentity.id}
///       tags:
///         Env: Test
///     options:
///       dependsOn:
///         - ${exampleAssignment}
/// variables:
///   example:
///     fn::invoke:
///       function: tls:PublicKey
///       arguments:
///         privateKeyPem: ${examplePrivateKey.privateKeyPem}
///   current:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
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
/// SAP Three Tier Virtual Instances with new SAP Systems can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:workloadssap/threeTierVirtualInstance:ThreeTierVirtualInstance example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Workloads/sapVirtualInstances/vis1
/// ```
class ThreeTierVirtualInstance extends pulumi.CustomResource {
  /// The Geo-Location where the SAP system is to be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> appLocation;

  /// The environment type for the SAP Three Tier Virtual Instance. Possible values are `NonProd` and `Prod`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> environment;

  /// An `identity` block as defined below.
  late final pulumi.Output<ThreeTierVirtualInstanceIdentity?> identity;

  /// The Azure Region where the SAP Three Tier Virtual Instance should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// The name of the managed Resource Group for the SAP Three Tier Virtual Instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> managedResourceGroupName;

  /// The network access type for managed resources. Possible values are `Private` and `Public`. Defaults to `Public`.
  late final pulumi.Output<String?> managedResourcesNetworkAccessType;

  /// Specifies the name of this SAP Three Tier Virtual Instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the Resource Group where the SAP Three Tier Virtual Instance should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The FQDN of the SAP system. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sapFqdn;

  /// The SAP Product type for the SAP Three Tier Virtual Instance. Possible values are `ECC`, `Other` and `S4HANA`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sapProduct;

  /// A mapping of tags which should be assigned to the SAP Three Tier Virtual Instance.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A `three_tier_configuration` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<ThreeTierVirtualInstanceThreeTierConfiguration>
  threeTierConfiguration;

  /// Creates a new [ThreeTierVirtualInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ThreeTierVirtualInstance]. {@macro pulumi_workloadssap_three_tier_virtual_instance_three_tier_virtual_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ThreeTierVirtualInstance(
    String name, {
    ThreeTierVirtualInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:workloadssap/threeTierVirtualInstance:ThreeTierVirtualInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appLocation = registerOutput<String>('appLocation');
    environment = registerOutput<String>('environment');
    identity = registerOutput<ThreeTierVirtualInstanceIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ThreeTierVirtualInstanceIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    managedResourceGroupName = registerOutput<String?>(
      'managedResourceGroupName',
    );
    managedResourcesNetworkAccessType = registerOutput<String?>(
      'managedResourcesNetworkAccessType',
    );
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sapFqdn = registerOutput<String>('sapFqdn');
    sapProduct = registerOutput<String>('sapProduct');
    tags = registerOutput<Map<String, String>?>('tags');
    threeTierConfiguration =
        registerOutput<ThreeTierVirtualInstanceThreeTierConfiguration>(
          'threeTierConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ThreeTierVirtualInstanceThreeTierConfiguration.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
  }

  /// Gets an existing [ThreeTierVirtualInstance] resource's state with the given [name] and [id].
  static ThreeTierVirtualInstance get(
    String name,
    pulumi.Input<String> id, {
    ThreeTierVirtualInstanceState? state,
  }) {
    return ThreeTierVirtualInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ThreeTierVirtualInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:workloadssap/threeTierVirtualInstance:ThreeTierVirtualInstance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appLocation = registerOutput<String>('appLocation');
    environment = registerOutput<String>('environment');
    identity = registerOutput<ThreeTierVirtualInstanceIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ThreeTierVirtualInstanceIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    managedResourceGroupName = registerOutput<String?>(
      'managedResourceGroupName',
    );
    managedResourcesNetworkAccessType = registerOutput<String?>(
      'managedResourcesNetworkAccessType',
    );
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sapFqdn = registerOutput<String>('sapFqdn');
    sapProduct = registerOutput<String>('sapProduct');
    tags = registerOutput<Map<String, String>?>('tags');
    threeTierConfiguration =
        registerOutput<ThreeTierVirtualInstanceThreeTierConfiguration>(
          'threeTierConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ThreeTierVirtualInstanceThreeTierConfiguration.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
  }
}
