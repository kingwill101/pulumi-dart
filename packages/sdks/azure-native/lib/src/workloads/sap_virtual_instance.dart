import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_configuration_response.dart';
import 'managed_rgconfiguration_response.dart';
import 'sap_virtual_instance_args.dart';
import 'sapvirtual_instance_error_response.dart';
import 'sapvirtual_instance_identity_response.dart';
import 'system_data_response.dart';

/// Define the Virtual Instance for SAP solutions resource.
///
/// Uses Azure REST API version 2024-09-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Infrastructure (with OS configuration) with Azure Compute Gallery Image
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "Deployment",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.ThreeTierConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerConfigurationArgs
///                 {
///                     InstanceCount = 6,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Id = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/galleries/testgallery/images/rhelimagetest/versions/0.0.1",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 Ssh = new AzureNative.Workloads.Inputs.SshConfigurationArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.Workloads.Inputs.SshPublicKeyArgs
///                                         {
///                                             KeyData = "ssh-rsa public key",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E32ds_v4",
///                     },
///                 },
///                 CentralServer = new AzureNative.Workloads.Inputs.CentralServerConfigurationArgs
///                 {
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Id = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/galleries/testgallery/images/rhelimagetest/versions/0.0.1",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 Ssh = new AzureNative.Workloads.Inputs.SshConfigurationArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.Workloads.Inputs.SshPublicKeyArgs
///                                         {
///                                             KeyData = "ssh-rsa public key",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E16ds_v4",
///                     },
///                 },
///                 DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseConfigurationArgs
///                 {
///                     DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Id = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/galleries/testgallery/images/rhelimagetest/versions/0.0.1",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 Ssh = new AzureNative.Workloads.Inputs.SshConfigurationArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.Workloads.Inputs.SshPublicKeyArgs
///                                         {
///                                             KeyData = "ssh-rsa public key",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_M32ts",
///                     },
///                 },
///                 DeploymentType = "ThreeTier",
///                 HighAvailabilityConfig = new AzureNative.Workloads.Inputs.HighAvailabilityConfigurationArgs
///                 {
///                     HighAvailabilityType = AzureNative.Workloads.SAPHighAvailabilityType.AvailabilityZone,
///                 },
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.Prod,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("Deployment"),
/// 				InfrastructureConfiguration: workloads.ThreeTierConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					ApplicationServer: workloads.ApplicationServerConfiguration{
/// 						InstanceCount: 6,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Id: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/galleries/testgallery/images/rhelimagetest/versions/0.0.1",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									Ssh: workloads.SshConfiguration{
/// 										PublicKeys: []workloads.SshPublicKey{
/// 											{
/// 												KeyData: "ssh-rsa public key",
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E32ds_v4",
/// 						},
/// 					},
/// 					CentralServer: workloads.CentralServerConfiguration{
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Id: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/galleries/testgallery/images/rhelimagetest/versions/0.0.1",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									Ssh: workloads.SshConfiguration{
/// 										PublicKeys: []workloads.SshPublicKey{
/// 											{
/// 												KeyData: "ssh-rsa public key",
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E16ds_v4",
/// 						},
/// 					},
/// 					DatabaseServer: workloads.DatabaseConfiguration{
/// 						DatabaseType:  workloads.SAPDatabaseTypeHANA,
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Id: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/galleries/testgallery/images/rhelimagetest/versions/0.0.1",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									Ssh: workloads.SshConfiguration{
/// 										PublicKeys: []workloads.SshPublicKey{
/// 											{
/// 												KeyData: "ssh-rsa public key",
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_M32ts",
/// 						},
/// 					},
/// 					DeploymentType: "ThreeTier",
/// 					HighAvailabilityConfig: workloads.HighAvailabilityConfiguration{
/// 						HighAvailabilityType: workloads.SAPHighAvailabilityTypeAvailabilityZone,
/// 					},
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("Deployment")
///                 .infrastructureConfiguration(ThreeTierConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .applicationServer(ApplicationServerConfigurationArgs.builder()
///                         .instanceCount(6)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .id("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/galleries/testgallery/images/rhelimagetest/versions/0.0.1")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .ssh(SshConfigurationArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .keyData("ssh-rsa public key")
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E32ds_v4")
///                             .build())
///                         .build())
///                     .centralServer(CentralServerConfigurationArgs.builder()
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .id("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/galleries/testgallery/images/rhelimagetest/versions/0.0.1")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .ssh(SshConfigurationArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .keyData("ssh-rsa public key")
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E16ds_v4")
///                             .build())
///                         .build())
///                     .databaseServer(DatabaseConfigurationArgs.builder()
///                         .databaseType("HANA")
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .id("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/galleries/testgallery/images/rhelimagetest/versions/0.0.1")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .ssh(SshConfigurationArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .keyData("ssh-rsa public key")
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_M32ts")
///                             .build())
///                         .build())
///                     .deploymentType("ThreeTier")
///                     .highAvailabilityConfig(HighAvailabilityConfigurationArgs.builder()
///                         .highAvailabilityType("AvailabilityZone")
///                         .build())
///                     .build())
///                 .build())
///             .environment("Prod")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "Deployment",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             applicationServer: {
///                 instanceCount: 6,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         id: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/galleries/testgallery/images/rhelimagetest/versions/0.0.1",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             ssh: {
///                                 publicKeys: [{
///                                     keyData: "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E32ds_v4",
///                 },
///             },
///             centralServer: {
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         id: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/galleries/testgallery/images/rhelimagetest/versions/0.0.1",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             ssh: {
///                                 publicKeys: [{
///                                     keyData: "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E16ds_v4",
///                 },
///             },
///             databaseServer: {
///                 databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         id: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/galleries/testgallery/images/rhelimagetest/versions/0.0.1",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             ssh: {
///                                 publicKeys: [{
///                                     keyData: "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     vmSize: "Standard_M32ts",
///                 },
///             },
///             deploymentType: "ThreeTier",
///             highAvailabilityConfig: {
///                 highAvailabilityType: azure_native.workloads.SAPHighAvailabilityType.AvailabilityZone,
///             },
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.Prod,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "Deployment",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "application_server": {
///                 "instance_count": 6,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/galleries/testgallery/images/rhelimagetest/versions/0.0.1",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh": {
///                                 "public_keys": [{
///                                     "key_data": "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E32ds_v4",
///                 },
///             },
///             "central_server": {
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/galleries/testgallery/images/rhelimagetest/versions/0.0.1",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh": {
///                                 "public_keys": [{
///                                     "key_data": "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E16ds_v4",
///                 },
///             },
///             "database_server": {
///                 "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/galleries/testgallery/images/rhelimagetest/versions/0.0.1",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh": {
///                                 "public_keys": [{
///                                     "key_data": "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_M32ts",
///                 },
///             },
///             "deployment_type": "ThreeTier",
///             "high_availability_config": {
///                 "high_availability_type": azure_native.workloads.SAPHighAvailabilityType.AVAILABILITY_ZONE,
///             },
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: Deployment
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           applicationServer:
///             instanceCount: 6
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 id: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/galleries/testgallery/images/rhelimagetest/versions/0.0.1
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   ssh:
///                     publicKeys:
///                       - keyData: ssh-rsa public key
///               vmSize: Standard_E32ds_v4
///           centralServer:
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 id: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/galleries/testgallery/images/rhelimagetest/versions/0.0.1
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   ssh:
///                     publicKeys:
///                       - keyData: ssh-rsa public key
///               vmSize: Standard_E16ds_v4
///           databaseServer:
///             databaseType: HANA
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 id: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/galleries/testgallery/images/rhelimagetest/versions/0.0.1
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   ssh:
///                     publicKeys:
///                       - keyData: ssh-rsa public key
///               vmSize: Standard_M32ts
///           deploymentType: ThreeTier
///           highAvailabilityConfig:
///             highAvailabilityType: AvailabilityZone
///       environment: Prod
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Infrastructure (with OS configuration) with custom resource names for Distributed System
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.ThreeTierConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerConfigurationArgs
///                 {
///                     InstanceCount = 6,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E32ds_v4",
///                     },
///                 },
///                 CentralServer = new AzureNative.Workloads.Inputs.CentralServerConfigurationArgs
///                 {
///                     InstanceCount = 1,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E16ds_v4",
///                     },
///                 },
///                 CustomResourceNames = new AzureNative.Workloads.Inputs.ThreeTierFullResourceNamesArgs
///                 {
///                     ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerFullResourceNamesArgs
///                     {
///                         AvailabilitySetName = "appAvSet",
///                         VirtualMachines = new[]
///                         {
///                             new AzureNative.Workloads.Inputs.VirtualMachineResourceNamesArgs
///                             {
///                                 DataDiskNames =
///                                 {
///                                     { "default", new[]
///                                     {
///                                         "app0disk0",
///                                     } },
///                                 },
///                                 HostName = "apphostName0",
///                                 NetworkInterfaces = new[]
///                                 {
///                                     new AzureNative.Workloads.Inputs.NetworkInterfaceResourceNamesArgs
///                                     {
///                                         NetworkInterfaceName = "appnic0",
///                                     },
///                                 },
///                                 OsDiskName = "app0osdisk",
///                                 VmName = "appvm0",
///                             },
///                             new AzureNative.Workloads.Inputs.VirtualMachineResourceNamesArgs
///                             {
///                                 DataDiskNames =
///                                 {
///                                     { "default", new[]
///                                     {
///                                         "app1disk0",
///                                     } },
///                                 },
///                                 HostName = "apphostName1",
///                                 NetworkInterfaces = new[]
///                                 {
///                                     new AzureNative.Workloads.Inputs.NetworkInterfaceResourceNamesArgs
///                                     {
///                                         NetworkInterfaceName = "appnic1",
///                                     },
///                                 },
///                                 OsDiskName = "app1osdisk",
///                                 VmName = "appvm1",
///                             },
///                         },
///                     },
///                     CentralServer = new AzureNative.Workloads.Inputs.CentralServerFullResourceNamesArgs
///                     {
///                         VirtualMachines = new[]
///                         {
///                             new AzureNative.Workloads.Inputs.VirtualMachineResourceNamesArgs
///                             {
///                                 DataDiskNames =
///                                 {
///                                     { "default", new[]
///                                     {
///                                         "ascsdisk0",
///                                     } },
///                                 },
///                                 HostName = "ascshostName",
///                                 NetworkInterfaces = new[]
///                                 {
///                                     new AzureNative.Workloads.Inputs.NetworkInterfaceResourceNamesArgs
///                                     {
///                                         NetworkInterfaceName = "ascsnic",
///                                     },
///                                 },
///                                 OsDiskName = "ascsosdisk",
///                                 VmName = "ascsvm",
///                             },
///                         },
///                     },
///                     DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseServerFullResourceNamesArgs
///                     {
///                         VirtualMachines = new[]
///                         {
///                             new AzureNative.Workloads.Inputs.VirtualMachineResourceNamesArgs
///                             {
///                                 DataDiskNames =
///                                 {
///                                     { "hanaData", new[]
///                                     {
///                                         "hanadata0",
///                                         "hanadata1",
///                                     } },
///                                     { "hanaLog", new[]
///                                     {
///                                         "hanalog0",
///                                         "hanalog1",
///                                         "hanalog2",
///                                     } },
///                                     { "hanaShared", new[]
///                                     {
///                                         "hanashared0",
///                                         "hanashared1",
///                                     } },
///                                     { "usrSap", new[]
///                                     {
///                                         "usrsap0",
///                                     } },
///                                 },
///                                 HostName = "dbhostName",
///                                 NetworkInterfaces = new[]
///                                 {
///                                     new AzureNative.Workloads.Inputs.NetworkInterfaceResourceNamesArgs
///                                     {
///                                         NetworkInterfaceName = "dbnic",
///                                     },
///                                 },
///                                 OsDiskName = "dbosdisk",
///                                 VmName = "dbvm",
///                             },
///                         },
///                     },
///                     NamingPatternType = "FullResourceName",
///                     SharedStorage = new AzureNative.Workloads.Inputs.SharedStorageResourceNamesArgs
///                     {
///                         SharedStorageAccountName = "storageacc",
///                         SharedStorageAccountPrivateEndPointName = "peForxNFS",
///                     },
///                 },
///                 DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseConfigurationArgs
///                 {
///                     DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                     InstanceCount = 1,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_M32ts",
///                     },
///                 },
///                 DeploymentType = "ThreeTier",
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "xyz.test.com",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.Prod,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.ThreeTierConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					ApplicationServer: workloads.ApplicationServerConfiguration{
/// 						InstanceCount: 6,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E32ds_v4",
/// 						},
/// 					},
/// 					CentralServer: workloads.CentralServerConfiguration{
/// 						InstanceCount: 1,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E16ds_v4",
/// 						},
/// 					},
/// 					CustomResourceNames: workloads.ThreeTierFullResourceNames{
/// 						ApplicationServer: workloads.ApplicationServerFullResourceNames{
/// 							AvailabilitySetName: "appAvSet",
/// 							VirtualMachines: []workloads.VirtualMachineResourceNames{
/// 								{
/// 									DataDiskNames: {
/// 										"default": []string{
/// 											"app0disk0",
/// 										},
/// 									},
/// 									HostName: "apphostName0",
/// 									NetworkInterfaces: []workloads.NetworkInterfaceResourceNames{
/// 										{
/// 											NetworkInterfaceName: "appnic0",
/// 										},
/// 									},
/// 									OsDiskName: "app0osdisk",
/// 									VmName:     "appvm0",
/// 								},
/// 								{
/// 									DataDiskNames: {
/// 										"default": []string{
/// 											"app1disk0",
/// 										},
/// 									},
/// 									HostName: "apphostName1",
/// 									NetworkInterfaces: []workloads.NetworkInterfaceResourceNames{
/// 										{
/// 											NetworkInterfaceName: "appnic1",
/// 										},
/// 									},
/// 									OsDiskName: "app1osdisk",
/// 									VmName:     "appvm1",
/// 								},
/// 							},
/// 						},
/// 						CentralServer: workloads.CentralServerFullResourceNames{
/// 							VirtualMachines: []workloads.VirtualMachineResourceNames{
/// 								{
/// 									DataDiskNames: {
/// 										"default": []string{
/// 											"ascsdisk0",
/// 										},
/// 									},
/// 									HostName: "ascshostName",
/// 									NetworkInterfaces: []workloads.NetworkInterfaceResourceNames{
/// 										{
/// 											NetworkInterfaceName: "ascsnic",
/// 										},
/// 									},
/// 									OsDiskName: "ascsosdisk",
/// 									VmName:     "ascsvm",
/// 								},
/// 							},
/// 						},
/// 						DatabaseServer: workloads.DatabaseServerFullResourceNames{
/// 							VirtualMachines: []workloads.VirtualMachineResourceNames{
/// 								{
/// 									DataDiskNames: {
/// 										"hanaData": []string{
/// 											"hanadata0",
/// 											"hanadata1",
/// 										},
/// 										"hanaLog": []string{
/// 											"hanalog0",
/// 											"hanalog1",
/// 											"hanalog2",
/// 										},
/// 										"hanaShared": []string{
/// 											"hanashared0",
/// 											"hanashared1",
/// 										},
/// 										"usrSap": []string{
/// 											"usrsap0",
/// 										},
/// 									},
/// 									HostName: "dbhostName",
/// 									NetworkInterfaces: []workloads.NetworkInterfaceResourceNames{
/// 										{
/// 											NetworkInterfaceName: "dbnic",
/// 										},
/// 									},
/// 									OsDiskName: "dbosdisk",
/// 									VmName:     "dbvm",
/// 								},
/// 							},
/// 						},
/// 						NamingPatternType: "FullResourceName",
/// 						SharedStorage: workloads.SharedStorageResourceNames{
/// 							SharedStorageAccountName:                "storageacc",
/// 							SharedStorageAccountPrivateEndPointName: "peForxNFS",
/// 						},
/// 					},
/// 					DatabaseServer: workloads.DatabaseConfiguration{
/// 						DatabaseType:  workloads.SAPDatabaseTypeHANA,
/// 						InstanceCount: 1,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_M32ts",
/// 						},
/// 					},
/// 					DeploymentType: "ThreeTier",
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("xyz.test.com"),
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(ThreeTierConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .applicationServer(ApplicationServerConfigurationArgs.builder()
///                         .instanceCount(6)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E32ds_v4")
///                             .build())
///                         .build())
///                     .centralServer(CentralServerConfigurationArgs.builder()
///                         .instanceCount(1)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E16ds_v4")
///                             .build())
///                         .build())
///                     .customResourceNames(ThreeTierFullResourceNamesArgs.builder()
///                         .applicationServer(ApplicationServerFullResourceNamesArgs.builder()
///                             .availabilitySetName("appAvSet")
///                             .virtualMachines(
///                                 VirtualMachineResourceNamesArgs.builder()
///                                     .dataDiskNames(Map.of("default", "app0disk0"))
///                                     .hostName("apphostName0")
///                                     .networkInterfaces(NetworkInterfaceResourceNamesArgs.builder()
///                                         .networkInterfaceName("appnic0")
///                                         .build())
///                                     .osDiskName("app0osdisk")
///                                     .vmName("appvm0")
///                                     .build(),
///                                 VirtualMachineResourceNamesArgs.builder()
///                                     .dataDiskNames(Map.of("default", "app1disk0"))
///                                     .hostName("apphostName1")
///                                     .networkInterfaces(NetworkInterfaceResourceNamesArgs.builder()
///                                         .networkInterfaceName("appnic1")
///                                         .build())
///                                     .osDiskName("app1osdisk")
///                                     .vmName("appvm1")
///                                     .build())
///                             .build())
///                         .centralServer(CentralServerFullResourceNamesArgs.builder()
///                             .virtualMachines(VirtualMachineResourceNamesArgs.builder()
///                                 .dataDiskNames(Map.of("default", "ascsdisk0"))
///                                 .hostName("ascshostName")
///                                 .networkInterfaces(NetworkInterfaceResourceNamesArgs.builder()
///                                     .networkInterfaceName("ascsnic")
///                                     .build())
///                                 .osDiskName("ascsosdisk")
///                                 .vmName("ascsvm")
///                                 .build())
///                             .build())
///                         .databaseServer(DatabaseServerFullResourceNamesArgs.builder()
///                             .virtualMachines(VirtualMachineResourceNamesArgs.builder()
///                                 .dataDiskNames(Map.ofEntries(
///                                     Map.entry("hanaData",
///                                         "hanadata0",
///                                         "hanadata1"),
///                                     Map.entry("hanaLog",
///                                         "hanalog0",
///                                         "hanalog1",
///                                         "hanalog2"),
///                                     Map.entry("hanaShared",
///                                         "hanashared0",
///                                         "hanashared1"),
///                                     Map.entry("usrSap", "usrsap0")
///                                 ))
///                                 .hostName("dbhostName")
///                                 .networkInterfaces(NetworkInterfaceResourceNamesArgs.builder()
///                                     .networkInterfaceName("dbnic")
///                                     .build())
///                                 .osDiskName("dbosdisk")
///                                 .vmName("dbvm")
///                                 .build())
///                             .build())
///                         .namingPatternType("FullResourceName")
///                         .sharedStorage(SharedStorageResourceNamesArgs.builder()
///                             .sharedStorageAccountName("storageacc")
///                             .sharedStorageAccountPrivateEndPointName("peForxNFS")
///                             .build())
///                         .build())
///                     .databaseServer(DatabaseConfigurationArgs.builder()
///                         .databaseType("HANA")
///                         .instanceCount(1)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_M32ts")
///                             .build())
///                         .build())
///                     .deploymentType("ThreeTier")
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("xyz.test.com")
///                     .build())
///                 .build())
///             .environment("Prod")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             applicationServer: {
///                 instanceCount: 6,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E32ds_v4",
///                 },
///             },
///             centralServer: {
///                 instanceCount: 1,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E16ds_v4",
///                 },
///             },
///             customResourceNames: {
///                 applicationServer: {
///                     availabilitySetName: "appAvSet",
///                     virtualMachines: [
///                         {
///                             dataDiskNames: {
///                                 "default": ["app0disk0"],
///                             },
///                             hostName: "apphostName0",
///                             networkInterfaces: [{
///                                 networkInterfaceName: "appnic0",
///                             }],
///                             osDiskName: "app0osdisk",
///                             vmName: "appvm0",
///                         },
///                         {
///                             dataDiskNames: {
///                                 "default": ["app1disk0"],
///                             },
///                             hostName: "apphostName1",
///                             networkInterfaces: [{
///                                 networkInterfaceName: "appnic1",
///                             }],
///                             osDiskName: "app1osdisk",
///                             vmName: "appvm1",
///                         },
///                     ],
///                 },
///                 centralServer: {
///                     virtualMachines: [{
///                         dataDiskNames: {
///                             "default": ["ascsdisk0"],
///                         },
///                         hostName: "ascshostName",
///                         networkInterfaces: [{
///                             networkInterfaceName: "ascsnic",
///                         }],
///                         osDiskName: "ascsosdisk",
///                         vmName: "ascsvm",
///                     }],
///                 },
///                 databaseServer: {
///                     virtualMachines: [{
///                         dataDiskNames: {
///                             hanaData: [
///                                 "hanadata0",
///                                 "hanadata1",
///                             ],
///                             hanaLog: [
///                                 "hanalog0",
///                                 "hanalog1",
///                                 "hanalog2",
///                             ],
///                             hanaShared: [
///                                 "hanashared0",
///                                 "hanashared1",
///                             ],
///                             usrSap: ["usrsap0"],
///                         },
///                         hostName: "dbhostName",
///                         networkInterfaces: [{
///                             networkInterfaceName: "dbnic",
///                         }],
///                         osDiskName: "dbosdisk",
///                         vmName: "dbvm",
///                     }],
///                 },
///                 namingPatternType: "FullResourceName",
///                 sharedStorage: {
///                     sharedStorageAccountName: "storageacc",
///                     sharedStorageAccountPrivateEndPointName: "peForxNFS",
///                 },
///             },
///             databaseServer: {
///                 databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///                 instanceCount: 1,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_M32ts",
///                 },
///             },
///             deploymentType: "ThreeTier",
///         },
///         osSapConfiguration: {
///             sapFqdn: "xyz.test.com",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.Prod,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "application_server": {
///                 "instance_count": 6,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E32ds_v4",
///                 },
///             },
///             "central_server": {
///                 "instance_count": 1,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E16ds_v4",
///                 },
///             },
///             "custom_resource_names": {
///                 "application_server": {
///                     "availability_set_name": "appAvSet",
///                     "virtual_machines": [
///                         {
///                             "data_disk_names": {
///                                 "default": ["app0disk0"],
///                             },
///                             "host_name": "apphostName0",
///                             "network_interfaces": [{
///                                 "network_interface_name": "appnic0",
///                             }],
///                             "os_disk_name": "app0osdisk",
///                             "vm_name": "appvm0",
///                         },
///                         {
///                             "data_disk_names": {
///                                 "default": ["app1disk0"],
///                             },
///                             "host_name": "apphostName1",
///                             "network_interfaces": [{
///                                 "network_interface_name": "appnic1",
///                             }],
///                             "os_disk_name": "app1osdisk",
///                             "vm_name": "appvm1",
///                         },
///                     ],
///                 },
///                 "central_server": {
///                     "virtual_machines": [{
///                         "data_disk_names": {
///                             "default": ["ascsdisk0"],
///                         },
///                         "host_name": "ascshostName",
///                         "network_interfaces": [{
///                             "network_interface_name": "ascsnic",
///                         }],
///                         "os_disk_name": "ascsosdisk",
///                         "vm_name": "ascsvm",
///                     }],
///                 },
///                 "database_server": {
///                     "virtual_machines": [{
///                         "data_disk_names": {
///                             "hanaData": [
///                                 "hanadata0",
///                                 "hanadata1",
///                             ],
///                             "hanaLog": [
///                                 "hanalog0",
///                                 "hanalog1",
///                                 "hanalog2",
///                             ],
///                             "hanaShared": [
///                                 "hanashared0",
///                                 "hanashared1",
///                             ],
///                             "usrSap": ["usrsap0"],
///                         },
///                         "host_name": "dbhostName",
///                         "network_interfaces": [{
///                             "network_interface_name": "dbnic",
///                         }],
///                         "os_disk_name": "dbosdisk",
///                         "vm_name": "dbvm",
///                     }],
///                 },
///                 "naming_pattern_type": "FullResourceName",
///                 "shared_storage": {
///                     "shared_storage_account_name": "storageacc",
///                     "shared_storage_account_private_end_point_name": "peForxNFS",
///                 },
///             },
///             "database_server": {
///                 "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///                 "instance_count": 1,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_M32ts",
///                 },
///             },
///             "deployment_type": "ThreeTier",
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "xyz.test.com",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           applicationServer:
///             instanceCount: 6
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E32ds_v4
///           centralServer:
///             instanceCount: 1
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E16ds_v4
///           customResourceNames:
///             applicationServer:
///               availabilitySetName: appAvSet
///               virtualMachines:
///                 - dataDiskNames:
///                     default:
///                       - app0disk0
///                   hostName: apphostName0
///                   networkInterfaces:
///                     - networkInterfaceName: appnic0
///                   osDiskName: app0osdisk
///                   vmName: appvm0
///                 - dataDiskNames:
///                     default:
///                       - app1disk0
///                   hostName: apphostName1
///                   networkInterfaces:
///                     - networkInterfaceName: appnic1
///                   osDiskName: app1osdisk
///                   vmName: appvm1
///             centralServer:
///               virtualMachines:
///                 - dataDiskNames:
///                     default:
///                       - ascsdisk0
///                   hostName: ascshostName
///                   networkInterfaces:
///                     - networkInterfaceName: ascsnic
///                   osDiskName: ascsosdisk
///                   vmName: ascsvm
///             databaseServer:
///               virtualMachines:
///                 - dataDiskNames:
///                     hanaData:
///                       - hanadata0
///                       - hanadata1
///                     hanaLog:
///                       - hanalog0
///                       - hanalog1
///                       - hanalog2
///                     hanaShared:
///                       - hanashared0
///                       - hanashared1
///                     usrSap:
///                       - usrsap0
///                   hostName: dbhostName
///                   networkInterfaces:
///                     - networkInterfaceName: dbnic
///                   osDiskName: dbosdisk
///                   vmName: dbvm
///             namingPatternType: FullResourceName
///             sharedStorage:
///               sharedStorageAccountName: storageacc
///               sharedStorageAccountPrivateEndPointName: peForxNFS
///           databaseServer:
///             databaseType: HANA
///             instanceCount: 1
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_M32ts
///           deploymentType: ThreeTier
///         osSapConfiguration:
///           sapFqdn: xyz.test.com
///       environment: Prod
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Infrastructure (with OS configuration) with custom resource names for HA System with Availability Set
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.ThreeTierConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerConfigurationArgs
///                 {
///                     InstanceCount = 6,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E32ds_v4",
///                     },
///                 },
///                 CentralServer = new AzureNative.Workloads.Inputs.CentralServerConfigurationArgs
///                 {
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E16ds_v4",
///                     },
///                 },
///                 CustomResourceNames = new AzureNative.Workloads.Inputs.ThreeTierFullResourceNamesArgs
///                 {
///                     ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerFullResourceNamesArgs
///                     {
///                         AvailabilitySetName = "appAvSet",
///                         VirtualMachines = new[]
///                         {
///                             new AzureNative.Workloads.Inputs.VirtualMachineResourceNamesArgs
///                             {
///                                 DataDiskNames =
///                                 {
///                                     { "default", new[]
///                                     {
///                                         "app0disk0",
///                                     } },
///                                 },
///                                 HostName = "apphostName0",
///                                 NetworkInterfaces = new[]
///                                 {
///                                     new AzureNative.Workloads.Inputs.NetworkInterfaceResourceNamesArgs
///                                     {
///                                         NetworkInterfaceName = "appnic0",
///                                     },
///                                 },
///                                 OsDiskName = "app0osdisk",
///                                 VmName = "appvm0",
///                             },
///                             new AzureNative.Workloads.Inputs.VirtualMachineResourceNamesArgs
///                             {
///                                 DataDiskNames =
///                                 {
///                                     { "default", new[]
///                                     {
///                                         "app1disk0",
///                                     } },
///                                 },
///                                 HostName = "apphostName1",
///                                 NetworkInterfaces = new[]
///                                 {
///                                     new AzureNative.Workloads.Inputs.NetworkInterfaceResourceNamesArgs
///                                     {
///                                         NetworkInterfaceName = "appnic1",
///                                     },
///                                 },
///                                 OsDiskName = "app1osdisk",
///                                 VmName = "appvm1",
///                             },
///                         },
///                     },
///                     CentralServer = new AzureNative.Workloads.Inputs.CentralServerFullResourceNamesArgs
///                     {
///                         AvailabilitySetName = "csAvSet",
///                         LoadBalancer = new AzureNative.Workloads.Inputs.LoadBalancerResourceNamesArgs
///                         {
///                             BackendPoolNames = new[]
///                             {
///                                 "ascsBackendPool",
///                             },
///                             FrontendIpConfigurationNames = new[]
///                             {
///                                 "ascsip0",
///                                 "ersip0",
///                             },
///                             HealthProbeNames = new[]
///                             {
///                                 "ascsHealthProbe",
///                                 "ersHealthProbe",
///                             },
///                             LoadBalancerName = "ascslb",
///                         },
///                         VirtualMachines = new[]
///                         {
///                             new AzureNative.Workloads.Inputs.VirtualMachineResourceNamesArgs
///                             {
///                                 HostName = "ascshostName",
///                                 NetworkInterfaces = new[]
///                                 {
///                                     new AzureNative.Workloads.Inputs.NetworkInterfaceResourceNamesArgs
///                                     {
///                                         NetworkInterfaceName = "ascsnic",
///                                     },
///                                 },
///                                 OsDiskName = "ascsosdisk",
///                                 VmName = "ascsvm",
///                             },
///                             new AzureNative.Workloads.Inputs.VirtualMachineResourceNamesArgs
///                             {
///                                 HostName = "ershostName",
///                                 NetworkInterfaces = new[]
///                                 {
///                                     new AzureNative.Workloads.Inputs.NetworkInterfaceResourceNamesArgs
///                                     {
///                                         NetworkInterfaceName = "ersnic",
///                                     },
///                                 },
///                                 OsDiskName = "ersosdisk",
///                                 VmName = "ersvm",
///                             },
///                         },
///                     },
///                     DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseServerFullResourceNamesArgs
///                     {
///                         AvailabilitySetName = "dbAvSet",
///                         LoadBalancer = new AzureNative.Workloads.Inputs.LoadBalancerResourceNamesArgs
///                         {
///                             BackendPoolNames = new[]
///                             {
///                                 "dbBackendPool",
///                             },
///                             FrontendIpConfigurationNames = new[]
///                             {
///                                 "dbip",
///                             },
///                             HealthProbeNames = new[]
///                             {
///                                 "dbHealthProbe",
///                             },
///                             LoadBalancerName = "dblb",
///                         },
///                         VirtualMachines = new[]
///                         {
///                             new AzureNative.Workloads.Inputs.VirtualMachineResourceNamesArgs
///                             {
///                                 DataDiskNames =
///                                 {
///                                     { "hanaData", new[]
///                                     {
///                                         "hanadatapr0",
///                                         "hanadatapr1",
///                                     } },
///                                     { "hanaLog", new[]
///                                     {
///                                         "hanalogpr0",
///                                         "hanalogpr1",
///                                         "hanalogpr2",
///                                     } },
///                                     { "hanaShared", new[]
///                                     {
///                                         "hanasharedpr0",
///                                         "hanasharedpr1",
///                                     } },
///                                     { "usrSap", new[]
///                                     {
///                                         "usrsappr0",
///                                     } },
///                                 },
///                                 HostName = "dbprhostName",
///                                 NetworkInterfaces = new[]
///                                 {
///                                     new AzureNative.Workloads.Inputs.NetworkInterfaceResourceNamesArgs
///                                     {
///                                         NetworkInterfaceName = "dbprnic",
///                                     },
///                                 },
///                                 OsDiskName = "dbprosdisk",
///                                 VmName = "dbvmpr",
///                             },
///                             new AzureNative.Workloads.Inputs.VirtualMachineResourceNamesArgs
///                             {
///                                 DataDiskNames =
///                                 {
///                                     { "hanaData", new[]
///                                     {
///                                         "hanadatasr0",
///                                         "hanadatasr1",
///                                     } },
///                                     { "hanaLog", new[]
///                                     {
///                                         "hanalogsr0",
///                                         "hanalogsr1",
///                                         "hanalogsr2",
///                                     } },
///                                     { "hanaShared", new[]
///                                     {
///                                         "hanasharedsr0",
///                                         "hanasharedsr1",
///                                     } },
///                                     { "usrSap", new[]
///                                     {
///                                         "usrsapsr0",
///                                     } },
///                                 },
///                                 HostName = "dbsrhostName",
///                                 NetworkInterfaces = new[]
///                                 {
///                                     new AzureNative.Workloads.Inputs.NetworkInterfaceResourceNamesArgs
///                                     {
///                                         NetworkInterfaceName = "dbsrnic",
///                                     },
///                                 },
///                                 OsDiskName = "dbsrosdisk",
///                                 VmName = "dbvmsr",
///                             },
///                         },
///                     },
///                     NamingPatternType = "FullResourceName",
///                     SharedStorage = new AzureNative.Workloads.Inputs.SharedStorageResourceNamesArgs
///                     {
///                         SharedStorageAccountName = "storageacc",
///                         SharedStorageAccountPrivateEndPointName = "peForxNFS",
///                     },
///                 },
///                 DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseConfigurationArgs
///                 {
///                     DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_M32ts",
///                     },
///                 },
///                 DeploymentType = "ThreeTier",
///                 HighAvailabilityConfig = new AzureNative.Workloads.Inputs.HighAvailabilityConfigurationArgs
///                 {
///                     HighAvailabilityType = AzureNative.Workloads.SAPHighAvailabilityType.AvailabilitySet,
///                 },
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "xyz.test.com",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.Prod,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.ThreeTierConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					ApplicationServer: workloads.ApplicationServerConfiguration{
/// 						InstanceCount: 6,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E32ds_v4",
/// 						},
/// 					},
/// 					CentralServer: workloads.CentralServerConfiguration{
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E16ds_v4",
/// 						},
/// 					},
/// 					CustomResourceNames: workloads.ThreeTierFullResourceNames{
/// 						ApplicationServer: workloads.ApplicationServerFullResourceNames{
/// 							AvailabilitySetName: "appAvSet",
/// 							VirtualMachines: []workloads.VirtualMachineResourceNames{
/// 								{
/// 									DataDiskNames: {
/// 										"default": []string{
/// 											"app0disk0",
/// 										},
/// 									},
/// 									HostName: "apphostName0",
/// 									NetworkInterfaces: []workloads.NetworkInterfaceResourceNames{
/// 										{
/// 											NetworkInterfaceName: "appnic0",
/// 										},
/// 									},
/// 									OsDiskName: "app0osdisk",
/// 									VmName:     "appvm0",
/// 								},
/// 								{
/// 									DataDiskNames: {
/// 										"default": []string{
/// 											"app1disk0",
/// 										},
/// 									},
/// 									HostName: "apphostName1",
/// 									NetworkInterfaces: []workloads.NetworkInterfaceResourceNames{
/// 										{
/// 											NetworkInterfaceName: "appnic1",
/// 										},
/// 									},
/// 									OsDiskName: "app1osdisk",
/// 									VmName:     "appvm1",
/// 								},
/// 							},
/// 						},
/// 						CentralServer: workloads.CentralServerFullResourceNames{
/// 							AvailabilitySetName: "csAvSet",
/// 							LoadBalancer: workloads.LoadBalancerResourceNames{
/// 								BackendPoolNames: []string{
/// 									"ascsBackendPool",
/// 								},
/// 								FrontendIpConfigurationNames: []string{
/// 									"ascsip0",
/// 									"ersip0",
/// 								},
/// 								HealthProbeNames: []string{
/// 									"ascsHealthProbe",
/// 									"ersHealthProbe",
/// 								},
/// 								LoadBalancerName: "ascslb",
/// 							},
/// 							VirtualMachines: []workloads.VirtualMachineResourceNames{
/// 								{
/// 									HostName: "ascshostName",
/// 									NetworkInterfaces: []workloads.NetworkInterfaceResourceNames{
/// 										{
/// 											NetworkInterfaceName: "ascsnic",
/// 										},
/// 									},
/// 									OsDiskName: "ascsosdisk",
/// 									VmName:     "ascsvm",
/// 								},
/// 								{
/// 									HostName: "ershostName",
/// 									NetworkInterfaces: []workloads.NetworkInterfaceResourceNames{
/// 										{
/// 											NetworkInterfaceName: "ersnic",
/// 										},
/// 									},
/// 									OsDiskName: "ersosdisk",
/// 									VmName:     "ersvm",
/// 								},
/// 							},
/// 						},
/// 						DatabaseServer: workloads.DatabaseServerFullResourceNames{
/// 							AvailabilitySetName: "dbAvSet",
/// 							LoadBalancer: workloads.LoadBalancerResourceNames{
/// 								BackendPoolNames: []string{
/// 									"dbBackendPool",
/// 								},
/// 								FrontendIpConfigurationNames: []string{
/// 									"dbip",
/// 								},
/// 								HealthProbeNames: []string{
/// 									"dbHealthProbe",
/// 								},
/// 								LoadBalancerName: "dblb",
/// 							},
/// 							VirtualMachines: []workloads.VirtualMachineResourceNames{
/// 								{
/// 									DataDiskNames: {
/// 										"hanaData": []string{
/// 											"hanadatapr0",
/// 											"hanadatapr1",
/// 										},
/// 										"hanaLog": []string{
/// 											"hanalogpr0",
/// 											"hanalogpr1",
/// 											"hanalogpr2",
/// 										},
/// 										"hanaShared": []string{
/// 											"hanasharedpr0",
/// 											"hanasharedpr1",
/// 										},
/// 										"usrSap": []string{
/// 											"usrsappr0",
/// 										},
/// 									},
/// 									HostName: "dbprhostName",
/// 									NetworkInterfaces: []workloads.NetworkInterfaceResourceNames{
/// 										{
/// 											NetworkInterfaceName: "dbprnic",
/// 										},
/// 									},
/// 									OsDiskName: "dbprosdisk",
/// 									VmName:     "dbvmpr",
/// 								},
/// 								{
/// 									DataDiskNames: {
/// 										"hanaData": []string{
/// 											"hanadatasr0",
/// 											"hanadatasr1",
/// 										},
/// 										"hanaLog": []string{
/// 											"hanalogsr0",
/// 											"hanalogsr1",
/// 											"hanalogsr2",
/// 										},
/// 										"hanaShared": []string{
/// 											"hanasharedsr0",
/// 											"hanasharedsr1",
/// 										},
/// 										"usrSap": []string{
/// 											"usrsapsr0",
/// 										},
/// 									},
/// 									HostName: "dbsrhostName",
/// 									NetworkInterfaces: []workloads.NetworkInterfaceResourceNames{
/// 										{
/// 											NetworkInterfaceName: "dbsrnic",
/// 										},
/// 									},
/// 									OsDiskName: "dbsrosdisk",
/// 									VmName:     "dbvmsr",
/// 								},
/// 							},
/// 						},
/// 						NamingPatternType: "FullResourceName",
/// 						SharedStorage: workloads.SharedStorageResourceNames{
/// 							SharedStorageAccountName:                "storageacc",
/// 							SharedStorageAccountPrivateEndPointName: "peForxNFS",
/// 						},
/// 					},
/// 					DatabaseServer: workloads.DatabaseConfiguration{
/// 						DatabaseType:  workloads.SAPDatabaseTypeHANA,
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_M32ts",
/// 						},
/// 					},
/// 					DeploymentType: "ThreeTier",
/// 					HighAvailabilityConfig: workloads.HighAvailabilityConfiguration{
/// 						HighAvailabilityType: workloads.SAPHighAvailabilityTypeAvailabilitySet,
/// 					},
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("xyz.test.com"),
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(ThreeTierConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .applicationServer(ApplicationServerConfigurationArgs.builder()
///                         .instanceCount(6)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E32ds_v4")
///                             .build())
///                         .build())
///                     .centralServer(CentralServerConfigurationArgs.builder()
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E16ds_v4")
///                             .build())
///                         .build())
///                     .customResourceNames(ThreeTierFullResourceNamesArgs.builder()
///                         .applicationServer(ApplicationServerFullResourceNamesArgs.builder()
///                             .availabilitySetName("appAvSet")
///                             .virtualMachines(
///                                 VirtualMachineResourceNamesArgs.builder()
///                                     .dataDiskNames(Map.of("default", "app0disk0"))
///                                     .hostName("apphostName0")
///                                     .networkInterfaces(NetworkInterfaceResourceNamesArgs.builder()
///                                         .networkInterfaceName("appnic0")
///                                         .build())
///                                     .osDiskName("app0osdisk")
///                                     .vmName("appvm0")
///                                     .build(),
///                                 VirtualMachineResourceNamesArgs.builder()
///                                     .dataDiskNames(Map.of("default", "app1disk0"))
///                                     .hostName("apphostName1")
///                                     .networkInterfaces(NetworkInterfaceResourceNamesArgs.builder()
///                                         .networkInterfaceName("appnic1")
///                                         .build())
///                                     .osDiskName("app1osdisk")
///                                     .vmName("appvm1")
///                                     .build())
///                             .build())
///                         .centralServer(CentralServerFullResourceNamesArgs.builder()
///                             .availabilitySetName("csAvSet")
///                             .loadBalancer(LoadBalancerResourceNamesArgs.builder()
///                                 .backendPoolNames("ascsBackendPool")
///                                 .frontendIpConfigurationNames(
///                                     "ascsip0",
///                                     "ersip0")
///                                 .healthProbeNames(
///                                     "ascsHealthProbe",
///                                     "ersHealthProbe")
///                                 .loadBalancerName("ascslb")
///                                 .build())
///                             .virtualMachines(
///                                 VirtualMachineResourceNamesArgs.builder()
///                                     .hostName("ascshostName")
///                                     .networkInterfaces(NetworkInterfaceResourceNamesArgs.builder()
///                                         .networkInterfaceName("ascsnic")
///                                         .build())
///                                     .osDiskName("ascsosdisk")
///                                     .vmName("ascsvm")
///                                     .build(),
///                                 VirtualMachineResourceNamesArgs.builder()
///                                     .hostName("ershostName")
///                                     .networkInterfaces(NetworkInterfaceResourceNamesArgs.builder()
///                                         .networkInterfaceName("ersnic")
///                                         .build())
///                                     .osDiskName("ersosdisk")
///                                     .vmName("ersvm")
///                                     .build())
///                             .build())
///                         .databaseServer(DatabaseServerFullResourceNamesArgs.builder()
///                             .availabilitySetName("dbAvSet")
///                             .loadBalancer(LoadBalancerResourceNamesArgs.builder()
///                                 .backendPoolNames("dbBackendPool")
///                                 .frontendIpConfigurationNames("dbip")
///                                 .healthProbeNames("dbHealthProbe")
///                                 .loadBalancerName("dblb")
///                                 .build())
///                             .virtualMachines(
///                                 VirtualMachineResourceNamesArgs.builder()
///                                     .dataDiskNames(Map.ofEntries(
///                                         Map.entry("hanaData",
///                                             "hanadatapr0",
///                                             "hanadatapr1"),
///                                         Map.entry("hanaLog",
///                                             "hanalogpr0",
///                                             "hanalogpr1",
///                                             "hanalogpr2"),
///                                         Map.entry("hanaShared",
///                                             "hanasharedpr0",
///                                             "hanasharedpr1"),
///                                         Map.entry("usrSap", "usrsappr0")
///                                     ))
///                                     .hostName("dbprhostName")
///                                     .networkInterfaces(NetworkInterfaceResourceNamesArgs.builder()
///                                         .networkInterfaceName("dbprnic")
///                                         .build())
///                                     .osDiskName("dbprosdisk")
///                                     .vmName("dbvmpr")
///                                     .build(),
///                                 VirtualMachineResourceNamesArgs.builder()
///                                     .dataDiskNames(Map.ofEntries(
///                                         Map.entry("hanaData",
///                                             "hanadatasr0",
///                                             "hanadatasr1"),
///                                         Map.entry("hanaLog",
///                                             "hanalogsr0",
///                                             "hanalogsr1",
///                                             "hanalogsr2"),
///                                         Map.entry("hanaShared",
///                                             "hanasharedsr0",
///                                             "hanasharedsr1"),
///                                         Map.entry("usrSap", "usrsapsr0")
///                                     ))
///                                     .hostName("dbsrhostName")
///                                     .networkInterfaces(NetworkInterfaceResourceNamesArgs.builder()
///                                         .networkInterfaceName("dbsrnic")
///                                         .build())
///                                     .osDiskName("dbsrosdisk")
///                                     .vmName("dbvmsr")
///                                     .build())
///                             .build())
///                         .namingPatternType("FullResourceName")
///                         .sharedStorage(SharedStorageResourceNamesArgs.builder()
///                             .sharedStorageAccountName("storageacc")
///                             .sharedStorageAccountPrivateEndPointName("peForxNFS")
///                             .build())
///                         .build())
///                     .databaseServer(DatabaseConfigurationArgs.builder()
///                         .databaseType("HANA")
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_M32ts")
///                             .build())
///                         .build())
///                     .deploymentType("ThreeTier")
///                     .highAvailabilityConfig(HighAvailabilityConfigurationArgs.builder()
///                         .highAvailabilityType("AvailabilitySet")
///                         .build())
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("xyz.test.com")
///                     .build())
///                 .build())
///             .environment("Prod")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             applicationServer: {
///                 instanceCount: 6,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E32ds_v4",
///                 },
///             },
///             centralServer: {
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E16ds_v4",
///                 },
///             },
///             customResourceNames: {
///                 applicationServer: {
///                     availabilitySetName: "appAvSet",
///                     virtualMachines: [
///                         {
///                             dataDiskNames: {
///                                 "default": ["app0disk0"],
///                             },
///                             hostName: "apphostName0",
///                             networkInterfaces: [{
///                                 networkInterfaceName: "appnic0",
///                             }],
///                             osDiskName: "app0osdisk",
///                             vmName: "appvm0",
///                         },
///                         {
///                             dataDiskNames: {
///                                 "default": ["app1disk0"],
///                             },
///                             hostName: "apphostName1",
///                             networkInterfaces: [{
///                                 networkInterfaceName: "appnic1",
///                             }],
///                             osDiskName: "app1osdisk",
///                             vmName: "appvm1",
///                         },
///                     ],
///                 },
///                 centralServer: {
///                     availabilitySetName: "csAvSet",
///                     loadBalancer: {
///                         backendPoolNames: ["ascsBackendPool"],
///                         frontendIpConfigurationNames: [
///                             "ascsip0",
///                             "ersip0",
///                         ],
///                         healthProbeNames: [
///                             "ascsHealthProbe",
///                             "ersHealthProbe",
///                         ],
///                         loadBalancerName: "ascslb",
///                     },
///                     virtualMachines: [
///                         {
///                             hostName: "ascshostName",
///                             networkInterfaces: [{
///                                 networkInterfaceName: "ascsnic",
///                             }],
///                             osDiskName: "ascsosdisk",
///                             vmName: "ascsvm",
///                         },
///                         {
///                             hostName: "ershostName",
///                             networkInterfaces: [{
///                                 networkInterfaceName: "ersnic",
///                             }],
///                             osDiskName: "ersosdisk",
///                             vmName: "ersvm",
///                         },
///                     ],
///                 },
///                 databaseServer: {
///                     availabilitySetName: "dbAvSet",
///                     loadBalancer: {
///                         backendPoolNames: ["dbBackendPool"],
///                         frontendIpConfigurationNames: ["dbip"],
///                         healthProbeNames: ["dbHealthProbe"],
///                         loadBalancerName: "dblb",
///                     },
///                     virtualMachines: [
///                         {
///                             dataDiskNames: {
///                                 hanaData: [
///                                     "hanadatapr0",
///                                     "hanadatapr1",
///                                 ],
///                                 hanaLog: [
///                                     "hanalogpr0",
///                                     "hanalogpr1",
///                                     "hanalogpr2",
///                                 ],
///                                 hanaShared: [
///                                     "hanasharedpr0",
///                                     "hanasharedpr1",
///                                 ],
///                                 usrSap: ["usrsappr0"],
///                             },
///                             hostName: "dbprhostName",
///                             networkInterfaces: [{
///                                 networkInterfaceName: "dbprnic",
///                             }],
///                             osDiskName: "dbprosdisk",
///                             vmName: "dbvmpr",
///                         },
///                         {
///                             dataDiskNames: {
///                                 hanaData: [
///                                     "hanadatasr0",
///                                     "hanadatasr1",
///                                 ],
///                                 hanaLog: [
///                                     "hanalogsr0",
///                                     "hanalogsr1",
///                                     "hanalogsr2",
///                                 ],
///                                 hanaShared: [
///                                     "hanasharedsr0",
///                                     "hanasharedsr1",
///                                 ],
///                                 usrSap: ["usrsapsr0"],
///                             },
///                             hostName: "dbsrhostName",
///                             networkInterfaces: [{
///                                 networkInterfaceName: "dbsrnic",
///                             }],
///                             osDiskName: "dbsrosdisk",
///                             vmName: "dbvmsr",
///                         },
///                     ],
///                 },
///                 namingPatternType: "FullResourceName",
///                 sharedStorage: {
///                     sharedStorageAccountName: "storageacc",
///                     sharedStorageAccountPrivateEndPointName: "peForxNFS",
///                 },
///             },
///             databaseServer: {
///                 databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_M32ts",
///                 },
///             },
///             deploymentType: "ThreeTier",
///             highAvailabilityConfig: {
///                 highAvailabilityType: azure_native.workloads.SAPHighAvailabilityType.AvailabilitySet,
///             },
///         },
///         osSapConfiguration: {
///             sapFqdn: "xyz.test.com",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.Prod,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "application_server": {
///                 "instance_count": 6,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E32ds_v4",
///                 },
///             },
///             "central_server": {
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E16ds_v4",
///                 },
///             },
///             "custom_resource_names": {
///                 "application_server": {
///                     "availability_set_name": "appAvSet",
///                     "virtual_machines": [
///                         {
///                             "data_disk_names": {
///                                 "default": ["app0disk0"],
///                             },
///                             "host_name": "apphostName0",
///                             "network_interfaces": [{
///                                 "network_interface_name": "appnic0",
///                             }],
///                             "os_disk_name": "app0osdisk",
///                             "vm_name": "appvm0",
///                         },
///                         {
///                             "data_disk_names": {
///                                 "default": ["app1disk0"],
///                             },
///                             "host_name": "apphostName1",
///                             "network_interfaces": [{
///                                 "network_interface_name": "appnic1",
///                             }],
///                             "os_disk_name": "app1osdisk",
///                             "vm_name": "appvm1",
///                         },
///                     ],
///                 },
///                 "central_server": {
///                     "availability_set_name": "csAvSet",
///                     "load_balancer": {
///                         "backend_pool_names": ["ascsBackendPool"],
///                         "frontend_ip_configuration_names": [
///                             "ascsip0",
///                             "ersip0",
///                         ],
///                         "health_probe_names": [
///                             "ascsHealthProbe",
///                             "ersHealthProbe",
///                         ],
///                         "load_balancer_name": "ascslb",
///                     },
///                     "virtual_machines": [
///                         {
///                             "host_name": "ascshostName",
///                             "network_interfaces": [{
///                                 "network_interface_name": "ascsnic",
///                             }],
///                             "os_disk_name": "ascsosdisk",
///                             "vm_name": "ascsvm",
///                         },
///                         {
///                             "host_name": "ershostName",
///                             "network_interfaces": [{
///                                 "network_interface_name": "ersnic",
///                             }],
///                             "os_disk_name": "ersosdisk",
///                             "vm_name": "ersvm",
///                         },
///                     ],
///                 },
///                 "database_server": {
///                     "availability_set_name": "dbAvSet",
///                     "load_balancer": {
///                         "backend_pool_names": ["dbBackendPool"],
///                         "frontend_ip_configuration_names": ["dbip"],
///                         "health_probe_names": ["dbHealthProbe"],
///                         "load_balancer_name": "dblb",
///                     },
///                     "virtual_machines": [
///                         {
///                             "data_disk_names": {
///                                 "hanaData": [
///                                     "hanadatapr0",
///                                     "hanadatapr1",
///                                 ],
///                                 "hanaLog": [
///                                     "hanalogpr0",
///                                     "hanalogpr1",
///                                     "hanalogpr2",
///                                 ],
///                                 "hanaShared": [
///                                     "hanasharedpr0",
///                                     "hanasharedpr1",
///                                 ],
///                                 "usrSap": ["usrsappr0"],
///                             },
///                             "host_name": "dbprhostName",
///                             "network_interfaces": [{
///                                 "network_interface_name": "dbprnic",
///                             }],
///                             "os_disk_name": "dbprosdisk",
///                             "vm_name": "dbvmpr",
///                         },
///                         {
///                             "data_disk_names": {
///                                 "hanaData": [
///                                     "hanadatasr0",
///                                     "hanadatasr1",
///                                 ],
///                                 "hanaLog": [
///                                     "hanalogsr0",
///                                     "hanalogsr1",
///                                     "hanalogsr2",
///                                 ],
///                                 "hanaShared": [
///                                     "hanasharedsr0",
///                                     "hanasharedsr1",
///                                 ],
///                                 "usrSap": ["usrsapsr0"],
///                             },
///                             "host_name": "dbsrhostName",
///                             "network_interfaces": [{
///                                 "network_interface_name": "dbsrnic",
///                             }],
///                             "os_disk_name": "dbsrosdisk",
///                             "vm_name": "dbvmsr",
///                         },
///                     ],
///                 },
///                 "naming_pattern_type": "FullResourceName",
///                 "shared_storage": {
///                     "shared_storage_account_name": "storageacc",
///                     "shared_storage_account_private_end_point_name": "peForxNFS",
///                 },
///             },
///             "database_server": {
///                 "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_M32ts",
///                 },
///             },
///             "deployment_type": "ThreeTier",
///             "high_availability_config": {
///                 "high_availability_type": azure_native.workloads.SAPHighAvailabilityType.AVAILABILITY_SET,
///             },
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "xyz.test.com",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           applicationServer:
///             instanceCount: 6
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E32ds_v4
///           centralServer:
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E16ds_v4
///           customResourceNames:
///             applicationServer:
///               availabilitySetName: appAvSet
///               virtualMachines:
///                 - dataDiskNames:
///                     default:
///                       - app0disk0
///                   hostName: apphostName0
///                   networkInterfaces:
///                     - networkInterfaceName: appnic0
///                   osDiskName: app0osdisk
///                   vmName: appvm0
///                 - dataDiskNames:
///                     default:
///                       - app1disk0
///                   hostName: apphostName1
///                   networkInterfaces:
///                     - networkInterfaceName: appnic1
///                   osDiskName: app1osdisk
///                   vmName: appvm1
///             centralServer:
///               availabilitySetName: csAvSet
///               loadBalancer:
///                 backendPoolNames:
///                   - ascsBackendPool
///                 frontendIpConfigurationNames:
///                   - ascsip0
///                   - ersip0
///                 healthProbeNames:
///                   - ascsHealthProbe
///                   - ersHealthProbe
///                 loadBalancerName: ascslb
///               virtualMachines:
///                 - hostName: ascshostName
///                   networkInterfaces:
///                     - networkInterfaceName: ascsnic
///                   osDiskName: ascsosdisk
///                   vmName: ascsvm
///                 - hostName: ershostName
///                   networkInterfaces:
///                     - networkInterfaceName: ersnic
///                   osDiskName: ersosdisk
///                   vmName: ersvm
///             databaseServer:
///               availabilitySetName: dbAvSet
///               loadBalancer:
///                 backendPoolNames:
///                   - dbBackendPool
///                 frontendIpConfigurationNames:
///                   - dbip
///                 healthProbeNames:
///                   - dbHealthProbe
///                 loadBalancerName: dblb
///               virtualMachines:
///                 - dataDiskNames:
///                     hanaData:
///                       - hanadatapr0
///                       - hanadatapr1
///                     hanaLog:
///                       - hanalogpr0
///                       - hanalogpr1
///                       - hanalogpr2
///                     hanaShared:
///                       - hanasharedpr0
///                       - hanasharedpr1
///                     usrSap:
///                       - usrsappr0
///                   hostName: dbprhostName
///                   networkInterfaces:
///                     - networkInterfaceName: dbprnic
///                   osDiskName: dbprosdisk
///                   vmName: dbvmpr
///                 - dataDiskNames:
///                     hanaData:
///                       - hanadatasr0
///                       - hanadatasr1
///                     hanaLog:
///                       - hanalogsr0
///                       - hanalogsr1
///                       - hanalogsr2
///                     hanaShared:
///                       - hanasharedsr0
///                       - hanasharedsr1
///                     usrSap:
///                       - usrsapsr0
///                   hostName: dbsrhostName
///                   networkInterfaces:
///                     - networkInterfaceName: dbsrnic
///                   osDiskName: dbsrosdisk
///                   vmName: dbvmsr
///             namingPatternType: FullResourceName
///             sharedStorage:
///               sharedStorageAccountName: storageacc
///               sharedStorageAccountPrivateEndPointName: peForxNFS
///           databaseServer:
///             databaseType: HANA
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_M32ts
///           deploymentType: ThreeTier
///           highAvailabilityConfig:
///             highAvailabilityType: AvailabilitySet
///         osSapConfiguration:
///           sapFqdn: xyz.test.com
///       environment: Prod
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Infrastructure (with OS configuration) with custom resource names for HA system with Availability Zone
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.ThreeTierConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerConfigurationArgs
///                 {
///                     InstanceCount = 6,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E32ds_v4",
///                     },
///                 },
///                 CentralServer = new AzureNative.Workloads.Inputs.CentralServerConfigurationArgs
///                 {
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E16ds_v4",
///                     },
///                 },
///                 CustomResourceNames = new AzureNative.Workloads.Inputs.ThreeTierFullResourceNamesArgs
///                 {
///                     ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerFullResourceNamesArgs
///                     {
///                         VirtualMachines = new[]
///                         {
///                             new AzureNative.Workloads.Inputs.VirtualMachineResourceNamesArgs
///                             {
///                                 DataDiskNames =
///                                 {
///                                     { "default", new[]
///                                     {
///                                         "app0disk0",
///                                     } },
///                                 },
///                                 HostName = "apphostName0",
///                                 NetworkInterfaces = new[]
///                                 {
///                                     new AzureNative.Workloads.Inputs.NetworkInterfaceResourceNamesArgs
///                                     {
///                                         NetworkInterfaceName = "appnic0",
///                                     },
///                                 },
///                                 OsDiskName = "app0osdisk",
///                                 VmName = "appvm0",
///                             },
///                             new AzureNative.Workloads.Inputs.VirtualMachineResourceNamesArgs
///                             {
///                                 DataDiskNames =
///                                 {
///                                     { "default", new[]
///                                     {
///                                         "app1disk0",
///                                     } },
///                                 },
///                                 HostName = "apphostName1",
///                                 NetworkInterfaces = new[]
///                                 {
///                                     new AzureNative.Workloads.Inputs.NetworkInterfaceResourceNamesArgs
///                                     {
///                                         NetworkInterfaceName = "appnic1",
///                                     },
///                                 },
///                                 OsDiskName = "app1osdisk",
///                                 VmName = "appvm1",
///                             },
///                         },
///                     },
///                     CentralServer = new AzureNative.Workloads.Inputs.CentralServerFullResourceNamesArgs
///                     {
///                         LoadBalancer = new AzureNative.Workloads.Inputs.LoadBalancerResourceNamesArgs
///                         {
///                             BackendPoolNames = new[]
///                             {
///                                 "ascsBackendPool",
///                             },
///                             FrontendIpConfigurationNames = new[]
///                             {
///                                 "ascsip0",
///                                 "ersip0",
///                             },
///                             HealthProbeNames = new[]
///                             {
///                                 "ascsHealthProbe",
///                                 "ersHealthProbe",
///                             },
///                             LoadBalancerName = "ascslb",
///                         },
///                         VirtualMachines = new[]
///                         {
///                             new AzureNative.Workloads.Inputs.VirtualMachineResourceNamesArgs
///                             {
///                                 HostName = "ascshostName",
///                                 NetworkInterfaces = new[]
///                                 {
///                                     new AzureNative.Workloads.Inputs.NetworkInterfaceResourceNamesArgs
///                                     {
///                                         NetworkInterfaceName = "ascsnic",
///                                     },
///                                 },
///                                 OsDiskName = "ascsosdisk",
///                                 VmName = "ascsvm",
///                             },
///                             new AzureNative.Workloads.Inputs.VirtualMachineResourceNamesArgs
///                             {
///                                 HostName = "ershostName",
///                                 NetworkInterfaces = new[]
///                                 {
///                                     new AzureNative.Workloads.Inputs.NetworkInterfaceResourceNamesArgs
///                                     {
///                                         NetworkInterfaceName = "ersnic",
///                                     },
///                                 },
///                                 OsDiskName = "ersosdisk",
///                                 VmName = "ersvm",
///                             },
///                         },
///                     },
///                     DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseServerFullResourceNamesArgs
///                     {
///                         LoadBalancer = new AzureNative.Workloads.Inputs.LoadBalancerResourceNamesArgs
///                         {
///                             BackendPoolNames = new[]
///                             {
///                                 "dbBackendPool",
///                             },
///                             FrontendIpConfigurationNames = new[]
///                             {
///                                 "dbip",
///                             },
///                             HealthProbeNames = new[]
///                             {
///                                 "dbHealthProbe",
///                             },
///                             LoadBalancerName = "dblb",
///                         },
///                         VirtualMachines = new[]
///                         {
///                             new AzureNative.Workloads.Inputs.VirtualMachineResourceNamesArgs
///                             {
///                                 DataDiskNames =
///                                 {
///                                     { "hanaData", new[]
///                                     {
///                                         "hanadatapr0",
///                                         "hanadatapr1",
///                                     } },
///                                     { "hanaLog", new[]
///                                     {
///                                         "hanalogpr0",
///                                         "hanalogpr1",
///                                         "hanalogpr2",
///                                     } },
///                                     { "hanaShared", new[]
///                                     {
///                                         "hanasharedpr0",
///                                         "hanasharedpr1",
///                                     } },
///                                     { "usrSap", new[]
///                                     {
///                                         "usrsappr0",
///                                     } },
///                                 },
///                                 HostName = "dbprhostName",
///                                 NetworkInterfaces = new[]
///                                 {
///                                     new AzureNative.Workloads.Inputs.NetworkInterfaceResourceNamesArgs
///                                     {
///                                         NetworkInterfaceName = "dbprnic",
///                                     },
///                                 },
///                                 OsDiskName = "dbprosdisk",
///                                 VmName = "dbvmpr",
///                             },
///                             new AzureNative.Workloads.Inputs.VirtualMachineResourceNamesArgs
///                             {
///                                 DataDiskNames =
///                                 {
///                                     { "hanaData", new[]
///                                     {
///                                         "hanadatasr0",
///                                         "hanadatasr1",
///                                     } },
///                                     { "hanaLog", new[]
///                                     {
///                                         "hanalogsr0",
///                                         "hanalogsr1",
///                                         "hanalogsr2",
///                                     } },
///                                     { "hanaShared", new[]
///                                     {
///                                         "hanasharedsr0",
///                                         "hanasharedsr1",
///                                     } },
///                                     { "usrSap", new[]
///                                     {
///                                         "usrsapsr0",
///                                     } },
///                                 },
///                                 HostName = "dbsrhostName",
///                                 NetworkInterfaces = new[]
///                                 {
///                                     new AzureNative.Workloads.Inputs.NetworkInterfaceResourceNamesArgs
///                                     {
///                                         NetworkInterfaceName = "dbsrnic",
///                                     },
///                                 },
///                                 OsDiskName = "dbsrosdisk",
///                                 VmName = "dbvmsr",
///                             },
///                         },
///                     },
///                     NamingPatternType = "FullResourceName",
///                     SharedStorage = new AzureNative.Workloads.Inputs.SharedStorageResourceNamesArgs
///                     {
///                         SharedStorageAccountName = "storageacc",
///                         SharedStorageAccountPrivateEndPointName = "peForxNFS",
///                     },
///                 },
///                 DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseConfigurationArgs
///                 {
///                     DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_M32ts",
///                     },
///                 },
///                 DeploymentType = "ThreeTier",
///                 HighAvailabilityConfig = new AzureNative.Workloads.Inputs.HighAvailabilityConfigurationArgs
///                 {
///                     HighAvailabilityType = AzureNative.Workloads.SAPHighAvailabilityType.AvailabilityZone,
///                 },
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "xyz.test.com",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.Prod,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.ThreeTierConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					ApplicationServer: workloads.ApplicationServerConfiguration{
/// 						InstanceCount: 6,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E32ds_v4",
/// 						},
/// 					},
/// 					CentralServer: workloads.CentralServerConfiguration{
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E16ds_v4",
/// 						},
/// 					},
/// 					CustomResourceNames: workloads.ThreeTierFullResourceNames{
/// 						ApplicationServer: workloads.ApplicationServerFullResourceNames{
/// 							VirtualMachines: []workloads.VirtualMachineResourceNames{
/// 								{
/// 									DataDiskNames: {
/// 										"default": []string{
/// 											"app0disk0",
/// 										},
/// 									},
/// 									HostName: "apphostName0",
/// 									NetworkInterfaces: []workloads.NetworkInterfaceResourceNames{
/// 										{
/// 											NetworkInterfaceName: "appnic0",
/// 										},
/// 									},
/// 									OsDiskName: "app0osdisk",
/// 									VmName:     "appvm0",
/// 								},
/// 								{
/// 									DataDiskNames: {
/// 										"default": []string{
/// 											"app1disk0",
/// 										},
/// 									},
/// 									HostName: "apphostName1",
/// 									NetworkInterfaces: []workloads.NetworkInterfaceResourceNames{
/// 										{
/// 											NetworkInterfaceName: "appnic1",
/// 										},
/// 									},
/// 									OsDiskName: "app1osdisk",
/// 									VmName:     "appvm1",
/// 								},
/// 							},
/// 						},
/// 						CentralServer: workloads.CentralServerFullResourceNames{
/// 							LoadBalancer: workloads.LoadBalancerResourceNames{
/// 								BackendPoolNames: []string{
/// 									"ascsBackendPool",
/// 								},
/// 								FrontendIpConfigurationNames: []string{
/// 									"ascsip0",
/// 									"ersip0",
/// 								},
/// 								HealthProbeNames: []string{
/// 									"ascsHealthProbe",
/// 									"ersHealthProbe",
/// 								},
/// 								LoadBalancerName: "ascslb",
/// 							},
/// 							VirtualMachines: []workloads.VirtualMachineResourceNames{
/// 								{
/// 									HostName: "ascshostName",
/// 									NetworkInterfaces: []workloads.NetworkInterfaceResourceNames{
/// 										{
/// 											NetworkInterfaceName: "ascsnic",
/// 										},
/// 									},
/// 									OsDiskName: "ascsosdisk",
/// 									VmName:     "ascsvm",
/// 								},
/// 								{
/// 									HostName: "ershostName",
/// 									NetworkInterfaces: []workloads.NetworkInterfaceResourceNames{
/// 										{
/// 											NetworkInterfaceName: "ersnic",
/// 										},
/// 									},
/// 									OsDiskName: "ersosdisk",
/// 									VmName:     "ersvm",
/// 								},
/// 							},
/// 						},
/// 						DatabaseServer: workloads.DatabaseServerFullResourceNames{
/// 							LoadBalancer: workloads.LoadBalancerResourceNames{
/// 								BackendPoolNames: []string{
/// 									"dbBackendPool",
/// 								},
/// 								FrontendIpConfigurationNames: []string{
/// 									"dbip",
/// 								},
/// 								HealthProbeNames: []string{
/// 									"dbHealthProbe",
/// 								},
/// 								LoadBalancerName: "dblb",
/// 							},
/// 							VirtualMachines: []workloads.VirtualMachineResourceNames{
/// 								{
/// 									DataDiskNames: {
/// 										"hanaData": []string{
/// 											"hanadatapr0",
/// 											"hanadatapr1",
/// 										},
/// 										"hanaLog": []string{
/// 											"hanalogpr0",
/// 											"hanalogpr1",
/// 											"hanalogpr2",
/// 										},
/// 										"hanaShared": []string{
/// 											"hanasharedpr0",
/// 											"hanasharedpr1",
/// 										},
/// 										"usrSap": []string{
/// 											"usrsappr0",
/// 										},
/// 									},
/// 									HostName: "dbprhostName",
/// 									NetworkInterfaces: []workloads.NetworkInterfaceResourceNames{
/// 										{
/// 											NetworkInterfaceName: "dbprnic",
/// 										},
/// 									},
/// 									OsDiskName: "dbprosdisk",
/// 									VmName:     "dbvmpr",
/// 								},
/// 								{
/// 									DataDiskNames: {
/// 										"hanaData": []string{
/// 											"hanadatasr0",
/// 											"hanadatasr1",
/// 										},
/// 										"hanaLog": []string{
/// 											"hanalogsr0",
/// 											"hanalogsr1",
/// 											"hanalogsr2",
/// 										},
/// 										"hanaShared": []string{
/// 											"hanasharedsr0",
/// 											"hanasharedsr1",
/// 										},
/// 										"usrSap": []string{
/// 											"usrsapsr0",
/// 										},
/// 									},
/// 									HostName: "dbsrhostName",
/// 									NetworkInterfaces: []workloads.NetworkInterfaceResourceNames{
/// 										{
/// 											NetworkInterfaceName: "dbsrnic",
/// 										},
/// 									},
/// 									OsDiskName: "dbsrosdisk",
/// 									VmName:     "dbvmsr",
/// 								},
/// 							},
/// 						},
/// 						NamingPatternType: "FullResourceName",
/// 						SharedStorage: workloads.SharedStorageResourceNames{
/// 							SharedStorageAccountName:                "storageacc",
/// 							SharedStorageAccountPrivateEndPointName: "peForxNFS",
/// 						},
/// 					},
/// 					DatabaseServer: workloads.DatabaseConfiguration{
/// 						DatabaseType:  workloads.SAPDatabaseTypeHANA,
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_M32ts",
/// 						},
/// 					},
/// 					DeploymentType: "ThreeTier",
/// 					HighAvailabilityConfig: workloads.HighAvailabilityConfiguration{
/// 						HighAvailabilityType: workloads.SAPHighAvailabilityTypeAvailabilityZone,
/// 					},
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("xyz.test.com"),
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(ThreeTierConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .applicationServer(ApplicationServerConfigurationArgs.builder()
///                         .instanceCount(6)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E32ds_v4")
///                             .build())
///                         .build())
///                     .centralServer(CentralServerConfigurationArgs.builder()
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E16ds_v4")
///                             .build())
///                         .build())
///                     .customResourceNames(ThreeTierFullResourceNamesArgs.builder()
///                         .applicationServer(ApplicationServerFullResourceNamesArgs.builder()
///                             .virtualMachines(
///                                 VirtualMachineResourceNamesArgs.builder()
///                                     .dataDiskNames(Map.of("default", "app0disk0"))
///                                     .hostName("apphostName0")
///                                     .networkInterfaces(NetworkInterfaceResourceNamesArgs.builder()
///                                         .networkInterfaceName("appnic0")
///                                         .build())
///                                     .osDiskName("app0osdisk")
///                                     .vmName("appvm0")
///                                     .build(),
///                                 VirtualMachineResourceNamesArgs.builder()
///                                     .dataDiskNames(Map.of("default", "app1disk0"))
///                                     .hostName("apphostName1")
///                                     .networkInterfaces(NetworkInterfaceResourceNamesArgs.builder()
///                                         .networkInterfaceName("appnic1")
///                                         .build())
///                                     .osDiskName("app1osdisk")
///                                     .vmName("appvm1")
///                                     .build())
///                             .build())
///                         .centralServer(CentralServerFullResourceNamesArgs.builder()
///                             .loadBalancer(LoadBalancerResourceNamesArgs.builder()
///                                 .backendPoolNames("ascsBackendPool")
///                                 .frontendIpConfigurationNames(
///                                     "ascsip0",
///                                     "ersip0")
///                                 .healthProbeNames(
///                                     "ascsHealthProbe",
///                                     "ersHealthProbe")
///                                 .loadBalancerName("ascslb")
///                                 .build())
///                             .virtualMachines(
///                                 VirtualMachineResourceNamesArgs.builder()
///                                     .hostName("ascshostName")
///                                     .networkInterfaces(NetworkInterfaceResourceNamesArgs.builder()
///                                         .networkInterfaceName("ascsnic")
///                                         .build())
///                                     .osDiskName("ascsosdisk")
///                                     .vmName("ascsvm")
///                                     .build(),
///                                 VirtualMachineResourceNamesArgs.builder()
///                                     .hostName("ershostName")
///                                     .networkInterfaces(NetworkInterfaceResourceNamesArgs.builder()
///                                         .networkInterfaceName("ersnic")
///                                         .build())
///                                     .osDiskName("ersosdisk")
///                                     .vmName("ersvm")
///                                     .build())
///                             .build())
///                         .databaseServer(DatabaseServerFullResourceNamesArgs.builder()
///                             .loadBalancer(LoadBalancerResourceNamesArgs.builder()
///                                 .backendPoolNames("dbBackendPool")
///                                 .frontendIpConfigurationNames("dbip")
///                                 .healthProbeNames("dbHealthProbe")
///                                 .loadBalancerName("dblb")
///                                 .build())
///                             .virtualMachines(
///                                 VirtualMachineResourceNamesArgs.builder()
///                                     .dataDiskNames(Map.ofEntries(
///                                         Map.entry("hanaData",
///                                             "hanadatapr0",
///                                             "hanadatapr1"),
///                                         Map.entry("hanaLog",
///                                             "hanalogpr0",
///                                             "hanalogpr1",
///                                             "hanalogpr2"),
///                                         Map.entry("hanaShared",
///                                             "hanasharedpr0",
///                                             "hanasharedpr1"),
///                                         Map.entry("usrSap", "usrsappr0")
///                                     ))
///                                     .hostName("dbprhostName")
///                                     .networkInterfaces(NetworkInterfaceResourceNamesArgs.builder()
///                                         .networkInterfaceName("dbprnic")
///                                         .build())
///                                     .osDiskName("dbprosdisk")
///                                     .vmName("dbvmpr")
///                                     .build(),
///                                 VirtualMachineResourceNamesArgs.builder()
///                                     .dataDiskNames(Map.ofEntries(
///                                         Map.entry("hanaData",
///                                             "hanadatasr0",
///                                             "hanadatasr1"),
///                                         Map.entry("hanaLog",
///                                             "hanalogsr0",
///                                             "hanalogsr1",
///                                             "hanalogsr2"),
///                                         Map.entry("hanaShared",
///                                             "hanasharedsr0",
///                                             "hanasharedsr1"),
///                                         Map.entry("usrSap", "usrsapsr0")
///                                     ))
///                                     .hostName("dbsrhostName")
///                                     .networkInterfaces(NetworkInterfaceResourceNamesArgs.builder()
///                                         .networkInterfaceName("dbsrnic")
///                                         .build())
///                                     .osDiskName("dbsrosdisk")
///                                     .vmName("dbvmsr")
///                                     .build())
///                             .build())
///                         .namingPatternType("FullResourceName")
///                         .sharedStorage(SharedStorageResourceNamesArgs.builder()
///                             .sharedStorageAccountName("storageacc")
///                             .sharedStorageAccountPrivateEndPointName("peForxNFS")
///                             .build())
///                         .build())
///                     .databaseServer(DatabaseConfigurationArgs.builder()
///                         .databaseType("HANA")
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_M32ts")
///                             .build())
///                         .build())
///                     .deploymentType("ThreeTier")
///                     .highAvailabilityConfig(HighAvailabilityConfigurationArgs.builder()
///                         .highAvailabilityType("AvailabilityZone")
///                         .build())
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("xyz.test.com")
///                     .build())
///                 .build())
///             .environment("Prod")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             applicationServer: {
///                 instanceCount: 6,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E32ds_v4",
///                 },
///             },
///             centralServer: {
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E16ds_v4",
///                 },
///             },
///             customResourceNames: {
///                 applicationServer: {
///                     virtualMachines: [
///                         {
///                             dataDiskNames: {
///                                 "default": ["app0disk0"],
///                             },
///                             hostName: "apphostName0",
///                             networkInterfaces: [{
///                                 networkInterfaceName: "appnic0",
///                             }],
///                             osDiskName: "app0osdisk",
///                             vmName: "appvm0",
///                         },
///                         {
///                             dataDiskNames: {
///                                 "default": ["app1disk0"],
///                             },
///                             hostName: "apphostName1",
///                             networkInterfaces: [{
///                                 networkInterfaceName: "appnic1",
///                             }],
///                             osDiskName: "app1osdisk",
///                             vmName: "appvm1",
///                         },
///                     ],
///                 },
///                 centralServer: {
///                     loadBalancer: {
///                         backendPoolNames: ["ascsBackendPool"],
///                         frontendIpConfigurationNames: [
///                             "ascsip0",
///                             "ersip0",
///                         ],
///                         healthProbeNames: [
///                             "ascsHealthProbe",
///                             "ersHealthProbe",
///                         ],
///                         loadBalancerName: "ascslb",
///                     },
///                     virtualMachines: [
///                         {
///                             hostName: "ascshostName",
///                             networkInterfaces: [{
///                                 networkInterfaceName: "ascsnic",
///                             }],
///                             osDiskName: "ascsosdisk",
///                             vmName: "ascsvm",
///                         },
///                         {
///                             hostName: "ershostName",
///                             networkInterfaces: [{
///                                 networkInterfaceName: "ersnic",
///                             }],
///                             osDiskName: "ersosdisk",
///                             vmName: "ersvm",
///                         },
///                     ],
///                 },
///                 databaseServer: {
///                     loadBalancer: {
///                         backendPoolNames: ["dbBackendPool"],
///                         frontendIpConfigurationNames: ["dbip"],
///                         healthProbeNames: ["dbHealthProbe"],
///                         loadBalancerName: "dblb",
///                     },
///                     virtualMachines: [
///                         {
///                             dataDiskNames: {
///                                 hanaData: [
///                                     "hanadatapr0",
///                                     "hanadatapr1",
///                                 ],
///                                 hanaLog: [
///                                     "hanalogpr0",
///                                     "hanalogpr1",
///                                     "hanalogpr2",
///                                 ],
///                                 hanaShared: [
///                                     "hanasharedpr0",
///                                     "hanasharedpr1",
///                                 ],
///                                 usrSap: ["usrsappr0"],
///                             },
///                             hostName: "dbprhostName",
///                             networkInterfaces: [{
///                                 networkInterfaceName: "dbprnic",
///                             }],
///                             osDiskName: "dbprosdisk",
///                             vmName: "dbvmpr",
///                         },
///                         {
///                             dataDiskNames: {
///                                 hanaData: [
///                                     "hanadatasr0",
///                                     "hanadatasr1",
///                                 ],
///                                 hanaLog: [
///                                     "hanalogsr0",
///                                     "hanalogsr1",
///                                     "hanalogsr2",
///                                 ],
///                                 hanaShared: [
///                                     "hanasharedsr0",
///                                     "hanasharedsr1",
///                                 ],
///                                 usrSap: ["usrsapsr0"],
///                             },
///                             hostName: "dbsrhostName",
///                             networkInterfaces: [{
///                                 networkInterfaceName: "dbsrnic",
///                             }],
///                             osDiskName: "dbsrosdisk",
///                             vmName: "dbvmsr",
///                         },
///                     ],
///                 },
///                 namingPatternType: "FullResourceName",
///                 sharedStorage: {
///                     sharedStorageAccountName: "storageacc",
///                     sharedStorageAccountPrivateEndPointName: "peForxNFS",
///                 },
///             },
///             databaseServer: {
///                 databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_M32ts",
///                 },
///             },
///             deploymentType: "ThreeTier",
///             highAvailabilityConfig: {
///                 highAvailabilityType: azure_native.workloads.SAPHighAvailabilityType.AvailabilityZone,
///             },
///         },
///         osSapConfiguration: {
///             sapFqdn: "xyz.test.com",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.Prod,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "application_server": {
///                 "instance_count": 6,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E32ds_v4",
///                 },
///             },
///             "central_server": {
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E16ds_v4",
///                 },
///             },
///             "custom_resource_names": {
///                 "application_server": {
///                     "virtual_machines": [
///                         {
///                             "data_disk_names": {
///                                 "default": ["app0disk0"],
///                             },
///                             "host_name": "apphostName0",
///                             "network_interfaces": [{
///                                 "network_interface_name": "appnic0",
///                             }],
///                             "os_disk_name": "app0osdisk",
///                             "vm_name": "appvm0",
///                         },
///                         {
///                             "data_disk_names": {
///                                 "default": ["app1disk0"],
///                             },
///                             "host_name": "apphostName1",
///                             "network_interfaces": [{
///                                 "network_interface_name": "appnic1",
///                             }],
///                             "os_disk_name": "app1osdisk",
///                             "vm_name": "appvm1",
///                         },
///                     ],
///                 },
///                 "central_server": {
///                     "load_balancer": {
///                         "backend_pool_names": ["ascsBackendPool"],
///                         "frontend_ip_configuration_names": [
///                             "ascsip0",
///                             "ersip0",
///                         ],
///                         "health_probe_names": [
///                             "ascsHealthProbe",
///                             "ersHealthProbe",
///                         ],
///                         "load_balancer_name": "ascslb",
///                     },
///                     "virtual_machines": [
///                         {
///                             "host_name": "ascshostName",
///                             "network_interfaces": [{
///                                 "network_interface_name": "ascsnic",
///                             }],
///                             "os_disk_name": "ascsosdisk",
///                             "vm_name": "ascsvm",
///                         },
///                         {
///                             "host_name": "ershostName",
///                             "network_interfaces": [{
///                                 "network_interface_name": "ersnic",
///                             }],
///                             "os_disk_name": "ersosdisk",
///                             "vm_name": "ersvm",
///                         },
///                     ],
///                 },
///                 "database_server": {
///                     "load_balancer": {
///                         "backend_pool_names": ["dbBackendPool"],
///                         "frontend_ip_configuration_names": ["dbip"],
///                         "health_probe_names": ["dbHealthProbe"],
///                         "load_balancer_name": "dblb",
///                     },
///                     "virtual_machines": [
///                         {
///                             "data_disk_names": {
///                                 "hanaData": [
///                                     "hanadatapr0",
///                                     "hanadatapr1",
///                                 ],
///                                 "hanaLog": [
///                                     "hanalogpr0",
///                                     "hanalogpr1",
///                                     "hanalogpr2",
///                                 ],
///                                 "hanaShared": [
///                                     "hanasharedpr0",
///                                     "hanasharedpr1",
///                                 ],
///                                 "usrSap": ["usrsappr0"],
///                             },
///                             "host_name": "dbprhostName",
///                             "network_interfaces": [{
///                                 "network_interface_name": "dbprnic",
///                             }],
///                             "os_disk_name": "dbprosdisk",
///                             "vm_name": "dbvmpr",
///                         },
///                         {
///                             "data_disk_names": {
///                                 "hanaData": [
///                                     "hanadatasr0",
///                                     "hanadatasr1",
///                                 ],
///                                 "hanaLog": [
///                                     "hanalogsr0",
///                                     "hanalogsr1",
///                                     "hanalogsr2",
///                                 ],
///                                 "hanaShared": [
///                                     "hanasharedsr0",
///                                     "hanasharedsr1",
///                                 ],
///                                 "usrSap": ["usrsapsr0"],
///                             },
///                             "host_name": "dbsrhostName",
///                             "network_interfaces": [{
///                                 "network_interface_name": "dbsrnic",
///                             }],
///                             "os_disk_name": "dbsrosdisk",
///                             "vm_name": "dbvmsr",
///                         },
///                     ],
///                 },
///                 "naming_pattern_type": "FullResourceName",
///                 "shared_storage": {
///                     "shared_storage_account_name": "storageacc",
///                     "shared_storage_account_private_end_point_name": "peForxNFS",
///                 },
///             },
///             "database_server": {
///                 "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_M32ts",
///                 },
///             },
///             "deployment_type": "ThreeTier",
///             "high_availability_config": {
///                 "high_availability_type": azure_native.workloads.SAPHighAvailabilityType.AVAILABILITY_ZONE,
///             },
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "xyz.test.com",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           applicationServer:
///             instanceCount: 6
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E32ds_v4
///           centralServer:
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E16ds_v4
///           customResourceNames:
///             applicationServer:
///               virtualMachines:
///                 - dataDiskNames:
///                     default:
///                       - app0disk0
///                   hostName: apphostName0
///                   networkInterfaces:
///                     - networkInterfaceName: appnic0
///                   osDiskName: app0osdisk
///                   vmName: appvm0
///                 - dataDiskNames:
///                     default:
///                       - app1disk0
///                   hostName: apphostName1
///                   networkInterfaces:
///                     - networkInterfaceName: appnic1
///                   osDiskName: app1osdisk
///                   vmName: appvm1
///             centralServer:
///               loadBalancer:
///                 backendPoolNames:
///                   - ascsBackendPool
///                 frontendIpConfigurationNames:
///                   - ascsip0
///                   - ersip0
///                 healthProbeNames:
///                   - ascsHealthProbe
///                   - ersHealthProbe
///                 loadBalancerName: ascslb
///               virtualMachines:
///                 - hostName: ascshostName
///                   networkInterfaces:
///                     - networkInterfaceName: ascsnic
///                   osDiskName: ascsosdisk
///                   vmName: ascsvm
///                 - hostName: ershostName
///                   networkInterfaces:
///                     - networkInterfaceName: ersnic
///                   osDiskName: ersosdisk
///                   vmName: ersvm
///             databaseServer:
///               loadBalancer:
///                 backendPoolNames:
///                   - dbBackendPool
///                 frontendIpConfigurationNames:
///                   - dbip
///                 healthProbeNames:
///                   - dbHealthProbe
///                 loadBalancerName: dblb
///               virtualMachines:
///                 - dataDiskNames:
///                     hanaData:
///                       - hanadatapr0
///                       - hanadatapr1
///                     hanaLog:
///                       - hanalogpr0
///                       - hanalogpr1
///                       - hanalogpr2
///                     hanaShared:
///                       - hanasharedpr0
///                       - hanasharedpr1
///                     usrSap:
///                       - usrsappr0
///                   hostName: dbprhostName
///                   networkInterfaces:
///                     - networkInterfaceName: dbprnic
///                   osDiskName: dbprosdisk
///                   vmName: dbvmpr
///                 - dataDiskNames:
///                     hanaData:
///                       - hanadatasr0
///                       - hanadatasr1
///                     hanaLog:
///                       - hanalogsr0
///                       - hanalogsr1
///                       - hanalogsr2
///                     hanaShared:
///                       - hanasharedsr0
///                       - hanasharedsr1
///                     usrSap:
///                       - usrsapsr0
///                   hostName: dbsrhostName
///                   networkInterfaces:
///                     - networkInterfaceName: dbsrnic
///                   osDiskName: dbsrosdisk
///                   vmName: dbvmsr
///             namingPatternType: FullResourceName
///             sharedStorage:
///               sharedStorageAccountName: storageacc
///               sharedStorageAccountPrivateEndPointName: peForxNFS
///           databaseServer:
///             databaseType: HANA
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_M32ts
///           deploymentType: ThreeTier
///           highAvailabilityConfig:
///             highAvailabilityType: AvailabilityZone
///         osSapConfiguration:
///           sapFqdn: xyz.test.com
///       environment: Prod
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Infrastructure (with OS configuration) with custom resource names for Single Server System
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.SingleServerConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                 DeploymentType = "SingleServer",
///                 NetworkConfiguration = new AzureNative.Workloads.Inputs.NetworkConfigurationArgs
///                 {
///                     IsSecondaryIpEnabled = true,
///                 },
///                 SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                 {
///                     ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                     {
///                         Offer = "RHEL-SAP",
///                         Publisher = "RedHat",
///                         Sku = "84sapha-gen2",
///                         Version = "latest",
///                     },
///                     OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                     {
///                         AdminUsername = "{your-username}",
///                         OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                         {
///                             DisablePasswordAuthentication = true,
///                             OsType = "Linux",
///                             SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                             {
///                                 PrivateKey = "xyz",
///                                 PublicKey = "abc",
///                             },
///                         },
///                     },
///                     VmSize = "Standard_E32ds_v4",
///                 },
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "xyz.test.com",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.NonProd,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.SingleServerConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					DatabaseType:     workloads.SAPDatabaseTypeHANA,
/// 					DeploymentType:   "SingleServer",
/// 					NetworkConfiguration: workloads.NetworkConfiguration{
/// 						IsSecondaryIpEnabled: true,
/// 					},
/// 					SubnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 					VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 						ImageReference: workloads.ImageReference{
/// 							Offer:     "RHEL-SAP",
/// 							Publisher: "RedHat",
/// 							Sku:       "84sapha-gen2",
/// 							Version:   "latest",
/// 						},
/// 						OsProfile: workloads.OSProfile{
/// 							AdminUsername: "{your-username}",
/// 							OsConfiguration: workloads.LinuxConfiguration{
/// 								DisablePasswordAuthentication: true,
/// 								OsType:                        "Linux",
/// 								SshKeyPair: workloads.SshKeyPair{
/// 									PrivateKey: "xyz",
/// 									PublicKey:  "abc",
/// 								},
/// 							},
/// 						},
/// 						VmSize: "Standard_E32ds_v4",
/// 					},
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("xyz.test.com"),
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeNonProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(SingleServerConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .databaseType("HANA")
///                     .deploymentType("SingleServer")
///                     .networkConfiguration(NetworkConfigurationArgs.builder()
///                         .isSecondaryIpEnabled(true)
///                         .build())
///                     .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                     .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                         .imageReference(ImageReferenceArgs.builder()
///                             .offer("RHEL-SAP")
///                             .publisher("RedHat")
///                             .sku("84sapha-gen2")
///                             .version("latest")
///                             .build())
///                         .osProfile(OSProfileArgs.builder()
///                             .adminUsername("{your-username}")
///                             .osConfiguration(LinuxConfigurationArgs.builder()
///                                 .disablePasswordAuthentication(true)
///                                 .osType("Linux")
///                                 .sshKeyPair(SshKeyPairArgs.builder()
///                                     .privateKey("xyz")
///                                     .publicKey("abc")
///                                     .build())
///                                 .build())
///                             .build())
///                         .vmSize("Standard_E32ds_v4")
///                         .build())
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("xyz.test.com")
///                     .build())
///                 .build())
///             .environment("NonProd")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///             deploymentType: "SingleServer",
///             networkConfiguration: {
///                 isSecondaryIpEnabled: true,
///             },
///             subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///             virtualMachineConfiguration: {
///                 imageReference: {
///                     offer: "RHEL-SAP",
///                     publisher: "RedHat",
///                     sku: "84sapha-gen2",
///                     version: "latest",
///                 },
///                 osProfile: {
///                     adminUsername: "{your-username}",
///                     osConfiguration: {
///                         disablePasswordAuthentication: true,
///                         osType: "Linux",
///                         sshKeyPair: {
///                             privateKey: "xyz",
///                             publicKey: "abc",
///                         },
///                     },
///                 },
///                 vmSize: "Standard_E32ds_v4",
///             },
///         },
///         osSapConfiguration: {
///             sapFqdn: "xyz.test.com",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.NonProd,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///             "deployment_type": "SingleServer",
///             "network_configuration": {
///                 "is_secondary_ip_enabled": True,
///             },
///             "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///             "virtual_machine_configuration": {
///                 "image_reference": {
///                     "offer": "RHEL-SAP",
///                     "publisher": "RedHat",
///                     "sku": "84sapha-gen2",
///                     "version": "latest",
///                 },
///                 "os_profile": {
///                     "admin_username": "{your-username}",
///                     "os_configuration": {
///                         "disable_password_authentication": True,
///                         "os_type": "Linux",
///                         "ssh_key_pair": {
///                             "private_key": "xyz",
///                             "public_key": "abc",
///                         },
///                     },
///                 },
///                 "vm_size": "Standard_E32ds_v4",
///             },
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "xyz.test.com",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.NON_PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           databaseType: HANA
///           deploymentType: SingleServer
///           networkConfiguration:
///             isSecondaryIpEnabled: true
///           subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///           virtualMachineConfiguration:
///             imageReference:
///               offer: RHEL-SAP
///               publisher: RedHat
///               sku: 84sapha-gen2
///               version: latest
///             osProfile:
///               adminUsername: '{your-username}'
///               osConfiguration:
///                 disablePasswordAuthentication: true
///                 osType: Linux
///                 sshKeyPair:
///                   privateKey: xyz
///                   publicKey: abc
///             vmSize: Standard_E32ds_v4
///         osSapConfiguration:
///           sapFqdn: xyz.test.com
///       environment: NonProd
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Infrastructure (with OS configuration) with trusted access enabled
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.ThreeTierConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerConfigurationArgs
///                 {
///                     InstanceCount = 6,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E32ds_v4",
///                     },
///                 },
///                 CentralServer = new AzureNative.Workloads.Inputs.CentralServerConfigurationArgs
///                 {
///                     InstanceCount = 1,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E16ds_v4",
///                     },
///                 },
///                 DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseConfigurationArgs
///                 {
///                     DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                     InstanceCount = 1,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_M32ts",
///                     },
///                 },
///                 DeploymentType = "ThreeTier",
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "xyz.test.com",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.Prod,
///         Location = "westcentralus",
///         ManagedResourcesNetworkAccessType = AzureNative.Workloads.ManagedResourcesNetworkAccessType.Private,
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.ThreeTierConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					ApplicationServer: workloads.ApplicationServerConfiguration{
/// 						InstanceCount: 6,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E32ds_v4",
/// 						},
/// 					},
/// 					CentralServer: workloads.CentralServerConfiguration{
/// 						InstanceCount: 1,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E16ds_v4",
/// 						},
/// 					},
/// 					DatabaseServer: workloads.DatabaseConfiguration{
/// 						DatabaseType:  workloads.SAPDatabaseTypeHANA,
/// 						InstanceCount: 1,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_M32ts",
/// 						},
/// 					},
/// 					DeploymentType: "ThreeTier",
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("xyz.test.com"),
/// 				},
/// 			},
/// 			Environment:                       pulumi.String(workloads.SAPEnvironmentTypeProd),
/// 			Location:                          pulumi.String("westcentralus"),
/// 			ManagedResourcesNetworkAccessType: pulumi.String(workloads.ManagedResourcesNetworkAccessTypePrivate),
/// 			ResourceGroupName:                 pulumi.String("test-rg"),
/// 			SapProduct:                        pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName:            pulumi.String("X00"),
/// 			Tags:                              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(ThreeTierConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .applicationServer(ApplicationServerConfigurationArgs.builder()
///                         .instanceCount(6)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E32ds_v4")
///                             .build())
///                         .build())
///                     .centralServer(CentralServerConfigurationArgs.builder()
///                         .instanceCount(1)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E16ds_v4")
///                             .build())
///                         .build())
///                     .databaseServer(DatabaseConfigurationArgs.builder()
///                         .databaseType("HANA")
///                         .instanceCount(1)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_M32ts")
///                             .build())
///                         .build())
///                     .deploymentType("ThreeTier")
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("xyz.test.com")
///                     .build())
///                 .build())
///             .environment("Prod")
///             .location("westcentralus")
///             .managedResourcesNetworkAccessType("Private")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             applicationServer: {
///                 instanceCount: 6,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E32ds_v4",
///                 },
///             },
///             centralServer: {
///                 instanceCount: 1,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E16ds_v4",
///                 },
///             },
///             databaseServer: {
///                 databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///                 instanceCount: 1,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_M32ts",
///                 },
///             },
///             deploymentType: "ThreeTier",
///         },
///         osSapConfiguration: {
///             sapFqdn: "xyz.test.com",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.Prod,
///     location: "westcentralus",
///     managedResourcesNetworkAccessType: azure_native.workloads.ManagedResourcesNetworkAccessType.Private,
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "application_server": {
///                 "instance_count": 6,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E32ds_v4",
///                 },
///             },
///             "central_server": {
///                 "instance_count": 1,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E16ds_v4",
///                 },
///             },
///             "database_server": {
///                 "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///                 "instance_count": 1,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_M32ts",
///                 },
///             },
///             "deployment_type": "ThreeTier",
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "xyz.test.com",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.PROD,
///     location="westcentralus",
///     managed_resources_network_access_type=azure_native.workloads.ManagedResourcesNetworkAccessType.PRIVATE,
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           applicationServer:
///             instanceCount: 6
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E32ds_v4
///           centralServer:
///             instanceCount: 1
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E16ds_v4
///           databaseServer:
///             databaseType: HANA
///             instanceCount: 1
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_M32ts
///           deploymentType: ThreeTier
///         osSapConfiguration:
///           sapFqdn: xyz.test.com
///       environment: Prod
///       location: westcentralus
///       managedResourcesNetworkAccessType: Private
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Infrastructure only for Distributed System
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "Deployment",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.ThreeTierConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerConfigurationArgs
///                 {
///                     InstanceCount = 6,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 Ssh = new AzureNative.Workloads.Inputs.SshConfigurationArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.Workloads.Inputs.SshPublicKeyArgs
///                                         {
///                                             KeyData = "ssh-rsa public key",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E32ds_v4",
///                     },
///                 },
///                 CentralServer = new AzureNative.Workloads.Inputs.CentralServerConfigurationArgs
///                 {
///                     InstanceCount = 1,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 Ssh = new AzureNative.Workloads.Inputs.SshConfigurationArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.Workloads.Inputs.SshPublicKeyArgs
///                                         {
///                                             KeyData = "ssh-rsa public key",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E16ds_v4",
///                     },
///                 },
///                 DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseConfigurationArgs
///                 {
///                     DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                     InstanceCount = 1,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 Ssh = new AzureNative.Workloads.Inputs.SshConfigurationArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.Workloads.Inputs.SshPublicKeyArgs
///                                         {
///                                             KeyData = "ssh-rsa public key",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_M32ts",
///                     },
///                 },
///                 DeploymentType = "ThreeTier",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.Prod,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("Deployment"),
/// 				InfrastructureConfiguration: workloads.ThreeTierConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					ApplicationServer: workloads.ApplicationServerConfiguration{
/// 						InstanceCount: 6,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									Ssh: workloads.SshConfiguration{
/// 										PublicKeys: []workloads.SshPublicKey{
/// 											{
/// 												KeyData: "ssh-rsa public key",
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E32ds_v4",
/// 						},
/// 					},
/// 					CentralServer: workloads.CentralServerConfiguration{
/// 						InstanceCount: 1,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									Ssh: workloads.SshConfiguration{
/// 										PublicKeys: []workloads.SshPublicKey{
/// 											{
/// 												KeyData: "ssh-rsa public key",
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E16ds_v4",
/// 						},
/// 					},
/// 					DatabaseServer: workloads.DatabaseConfiguration{
/// 						DatabaseType:  workloads.SAPDatabaseTypeHANA,
/// 						InstanceCount: 1,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									Ssh: workloads.SshConfiguration{
/// 										PublicKeys: []workloads.SshPublicKey{
/// 											{
/// 												KeyData: "ssh-rsa public key",
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_M32ts",
/// 						},
/// 					},
/// 					DeploymentType: "ThreeTier",
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("Deployment")
///                 .infrastructureConfiguration(ThreeTierConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .applicationServer(ApplicationServerConfigurationArgs.builder()
///                         .instanceCount(6)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .ssh(SshConfigurationArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .keyData("ssh-rsa public key")
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E32ds_v4")
///                             .build())
///                         .build())
///                     .centralServer(CentralServerConfigurationArgs.builder()
///                         .instanceCount(1)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .ssh(SshConfigurationArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .keyData("ssh-rsa public key")
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E16ds_v4")
///                             .build())
///                         .build())
///                     .databaseServer(DatabaseConfigurationArgs.builder()
///                         .databaseType("HANA")
///                         .instanceCount(1)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .ssh(SshConfigurationArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .keyData("ssh-rsa public key")
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_M32ts")
///                             .build())
///                         .build())
///                     .deploymentType("ThreeTier")
///                     .build())
///                 .build())
///             .environment("Prod")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "Deployment",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             applicationServer: {
///                 instanceCount: 6,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             ssh: {
///                                 publicKeys: [{
///                                     keyData: "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E32ds_v4",
///                 },
///             },
///             centralServer: {
///                 instanceCount: 1,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             ssh: {
///                                 publicKeys: [{
///                                     keyData: "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E16ds_v4",
///                 },
///             },
///             databaseServer: {
///                 databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///                 instanceCount: 1,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             ssh: {
///                                 publicKeys: [{
///                                     keyData: "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     vmSize: "Standard_M32ts",
///                 },
///             },
///             deploymentType: "ThreeTier",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.Prod,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "Deployment",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "application_server": {
///                 "instance_count": 6,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh": {
///                                 "public_keys": [{
///                                     "key_data": "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E32ds_v4",
///                 },
///             },
///             "central_server": {
///                 "instance_count": 1,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh": {
///                                 "public_keys": [{
///                                     "key_data": "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E16ds_v4",
///                 },
///             },
///             "database_server": {
///                 "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///                 "instance_count": 1,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh": {
///                                 "public_keys": [{
///                                     "key_data": "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_M32ts",
///                 },
///             },
///             "deployment_type": "ThreeTier",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: Deployment
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           applicationServer:
///             instanceCount: 6
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   ssh:
///                     publicKeys:
///                       - keyData: ssh-rsa public key
///               vmSize: Standard_E32ds_v4
///           centralServer:
///             instanceCount: 1
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   ssh:
///                     publicKeys:
///                       - keyData: ssh-rsa public key
///               vmSize: Standard_E16ds_v4
///           databaseServer:
///             databaseType: HANA
///             instanceCount: 1
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   ssh:
///                     publicKeys:
///                       - keyData: ssh-rsa public key
///               vmSize: Standard_M32ts
///           deploymentType: ThreeTier
///       environment: Prod
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Infrastructure only for HA System with Availability Set
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "Deployment",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.ThreeTierConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerConfigurationArgs
///                 {
///                     InstanceCount = 5,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 Ssh = new AzureNative.Workloads.Inputs.SshConfigurationArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.Workloads.Inputs.SshPublicKeyArgs
///                                         {
///                                             KeyData = "ssh-rsa public key",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E32ds_v4",
///                     },
///                 },
///                 CentralServer = new AzureNative.Workloads.Inputs.CentralServerConfigurationArgs
///                 {
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 Ssh = new AzureNative.Workloads.Inputs.SshConfigurationArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.Workloads.Inputs.SshPublicKeyArgs
///                                         {
///                                             KeyData = "ssh-rsa public key",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E16ds_v4",
///                     },
///                 },
///                 DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseConfigurationArgs
///                 {
///                     DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 Ssh = new AzureNative.Workloads.Inputs.SshConfigurationArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.Workloads.Inputs.SshPublicKeyArgs
///                                         {
///                                             KeyData = "ssh-rsa public key",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_M32ts",
///                     },
///                 },
///                 DeploymentType = "ThreeTier",
///                 HighAvailabilityConfig = new AzureNative.Workloads.Inputs.HighAvailabilityConfigurationArgs
///                 {
///                     HighAvailabilityType = AzureNative.Workloads.SAPHighAvailabilityType.AvailabilitySet,
///                 },
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.Prod,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("Deployment"),
/// 				InfrastructureConfiguration: workloads.ThreeTierConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					ApplicationServer: workloads.ApplicationServerConfiguration{
/// 						InstanceCount: 5,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									Ssh: workloads.SshConfiguration{
/// 										PublicKeys: []workloads.SshPublicKey{
/// 											{
/// 												KeyData: "ssh-rsa public key",
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E32ds_v4",
/// 						},
/// 					},
/// 					CentralServer: workloads.CentralServerConfiguration{
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									Ssh: workloads.SshConfiguration{
/// 										PublicKeys: []workloads.SshPublicKey{
/// 											{
/// 												KeyData: "ssh-rsa public key",
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E16ds_v4",
/// 						},
/// 					},
/// 					DatabaseServer: workloads.DatabaseConfiguration{
/// 						DatabaseType:  workloads.SAPDatabaseTypeHANA,
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									Ssh: workloads.SshConfiguration{
/// 										PublicKeys: []workloads.SshPublicKey{
/// 											{
/// 												KeyData: "ssh-rsa public key",
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_M32ts",
/// 						},
/// 					},
/// 					DeploymentType: "ThreeTier",
/// 					HighAvailabilityConfig: workloads.HighAvailabilityConfiguration{
/// 						HighAvailabilityType: workloads.SAPHighAvailabilityTypeAvailabilitySet,
/// 					},
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("Deployment")
///                 .infrastructureConfiguration(ThreeTierConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .applicationServer(ApplicationServerConfigurationArgs.builder()
///                         .instanceCount(5)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .ssh(SshConfigurationArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .keyData("ssh-rsa public key")
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E32ds_v4")
///                             .build())
///                         .build())
///                     .centralServer(CentralServerConfigurationArgs.builder()
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .ssh(SshConfigurationArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .keyData("ssh-rsa public key")
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E16ds_v4")
///                             .build())
///                         .build())
///                     .databaseServer(DatabaseConfigurationArgs.builder()
///                         .databaseType("HANA")
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .ssh(SshConfigurationArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .keyData("ssh-rsa public key")
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_M32ts")
///                             .build())
///                         .build())
///                     .deploymentType("ThreeTier")
///                     .highAvailabilityConfig(HighAvailabilityConfigurationArgs.builder()
///                         .highAvailabilityType("AvailabilitySet")
///                         .build())
///                     .build())
///                 .build())
///             .environment("Prod")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "Deployment",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             applicationServer: {
///                 instanceCount: 5,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             ssh: {
///                                 publicKeys: [{
///                                     keyData: "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E32ds_v4",
///                 },
///             },
///             centralServer: {
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             ssh: {
///                                 publicKeys: [{
///                                     keyData: "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E16ds_v4",
///                 },
///             },
///             databaseServer: {
///                 databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             ssh: {
///                                 publicKeys: [{
///                                     keyData: "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     vmSize: "Standard_M32ts",
///                 },
///             },
///             deploymentType: "ThreeTier",
///             highAvailabilityConfig: {
///                 highAvailabilityType: azure_native.workloads.SAPHighAvailabilityType.AvailabilitySet,
///             },
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.Prod,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "Deployment",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "application_server": {
///                 "instance_count": 5,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh": {
///                                 "public_keys": [{
///                                     "key_data": "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E32ds_v4",
///                 },
///             },
///             "central_server": {
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh": {
///                                 "public_keys": [{
///                                     "key_data": "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E16ds_v4",
///                 },
///             },
///             "database_server": {
///                 "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh": {
///                                 "public_keys": [{
///                                     "key_data": "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_M32ts",
///                 },
///             },
///             "deployment_type": "ThreeTier",
///             "high_availability_config": {
///                 "high_availability_type": azure_native.workloads.SAPHighAvailabilityType.AVAILABILITY_SET,
///             },
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: Deployment
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           applicationServer:
///             instanceCount: 5
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   ssh:
///                     publicKeys:
///                       - keyData: ssh-rsa public key
///               vmSize: Standard_E32ds_v4
///           centralServer:
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   ssh:
///                     publicKeys:
///                       - keyData: ssh-rsa public key
///               vmSize: Standard_E16ds_v4
///           databaseServer:
///             databaseType: HANA
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   ssh:
///                     publicKeys:
///                       - keyData: ssh-rsa public key
///               vmSize: Standard_M32ts
///           deploymentType: ThreeTier
///           highAvailabilityConfig:
///             highAvailabilityType: AvailabilitySet
///       environment: Prod
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Infrastructure only for HA System with Availability Zone
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "Deployment",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.ThreeTierConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerConfigurationArgs
///                 {
///                     InstanceCount = 6,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 Ssh = new AzureNative.Workloads.Inputs.SshConfigurationArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.Workloads.Inputs.SshPublicKeyArgs
///                                         {
///                                             KeyData = "ssh-rsa public key",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E32ds_v4",
///                     },
///                 },
///                 CentralServer = new AzureNative.Workloads.Inputs.CentralServerConfigurationArgs
///                 {
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 Ssh = new AzureNative.Workloads.Inputs.SshConfigurationArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.Workloads.Inputs.SshPublicKeyArgs
///                                         {
///                                             KeyData = "ssh-rsa public key",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E16ds_v4",
///                     },
///                 },
///                 DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseConfigurationArgs
///                 {
///                     DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 Ssh = new AzureNative.Workloads.Inputs.SshConfigurationArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.Workloads.Inputs.SshPublicKeyArgs
///                                         {
///                                             KeyData = "ssh-rsa public key",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_M32ts",
///                     },
///                 },
///                 DeploymentType = "ThreeTier",
///                 HighAvailabilityConfig = new AzureNative.Workloads.Inputs.HighAvailabilityConfigurationArgs
///                 {
///                     HighAvailabilityType = AzureNative.Workloads.SAPHighAvailabilityType.AvailabilityZone,
///                 },
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.Prod,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("Deployment"),
/// 				InfrastructureConfiguration: workloads.ThreeTierConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					ApplicationServer: workloads.ApplicationServerConfiguration{
/// 						InstanceCount: 6,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									Ssh: workloads.SshConfiguration{
/// 										PublicKeys: []workloads.SshPublicKey{
/// 											{
/// 												KeyData: "ssh-rsa public key",
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E32ds_v4",
/// 						},
/// 					},
/// 					CentralServer: workloads.CentralServerConfiguration{
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									Ssh: workloads.SshConfiguration{
/// 										PublicKeys: []workloads.SshPublicKey{
/// 											{
/// 												KeyData: "ssh-rsa public key",
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E16ds_v4",
/// 						},
/// 					},
/// 					DatabaseServer: workloads.DatabaseConfiguration{
/// 						DatabaseType:  workloads.SAPDatabaseTypeHANA,
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									Ssh: workloads.SshConfiguration{
/// 										PublicKeys: []workloads.SshPublicKey{
/// 											{
/// 												KeyData: "ssh-rsa public key",
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_M32ts",
/// 						},
/// 					},
/// 					DeploymentType: "ThreeTier",
/// 					HighAvailabilityConfig: workloads.HighAvailabilityConfiguration{
/// 						HighAvailabilityType: workloads.SAPHighAvailabilityTypeAvailabilityZone,
/// 					},
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("Deployment")
///                 .infrastructureConfiguration(ThreeTierConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .applicationServer(ApplicationServerConfigurationArgs.builder()
///                         .instanceCount(6)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .ssh(SshConfigurationArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .keyData("ssh-rsa public key")
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E32ds_v4")
///                             .build())
///                         .build())
///                     .centralServer(CentralServerConfigurationArgs.builder()
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .ssh(SshConfigurationArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .keyData("ssh-rsa public key")
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E16ds_v4")
///                             .build())
///                         .build())
///                     .databaseServer(DatabaseConfigurationArgs.builder()
///                         .databaseType("HANA")
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .ssh(SshConfigurationArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .keyData("ssh-rsa public key")
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_M32ts")
///                             .build())
///                         .build())
///                     .deploymentType("ThreeTier")
///                     .highAvailabilityConfig(HighAvailabilityConfigurationArgs.builder()
///                         .highAvailabilityType("AvailabilityZone")
///                         .build())
///                     .build())
///                 .build())
///             .environment("Prod")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "Deployment",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             applicationServer: {
///                 instanceCount: 6,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             ssh: {
///                                 publicKeys: [{
///                                     keyData: "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E32ds_v4",
///                 },
///             },
///             centralServer: {
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             ssh: {
///                                 publicKeys: [{
///                                     keyData: "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E16ds_v4",
///                 },
///             },
///             databaseServer: {
///                 databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             ssh: {
///                                 publicKeys: [{
///                                     keyData: "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     vmSize: "Standard_M32ts",
///                 },
///             },
///             deploymentType: "ThreeTier",
///             highAvailabilityConfig: {
///                 highAvailabilityType: azure_native.workloads.SAPHighAvailabilityType.AvailabilityZone,
///             },
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.Prod,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "Deployment",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "application_server": {
///                 "instance_count": 6,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh": {
///                                 "public_keys": [{
///                                     "key_data": "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E32ds_v4",
///                 },
///             },
///             "central_server": {
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh": {
///                                 "public_keys": [{
///                                     "key_data": "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E16ds_v4",
///                 },
///             },
///             "database_server": {
///                 "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh": {
///                                 "public_keys": [{
///                                     "key_data": "ssh-rsa public key",
///                                 }],
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_M32ts",
///                 },
///             },
///             "deployment_type": "ThreeTier",
///             "high_availability_config": {
///                 "high_availability_type": azure_native.workloads.SAPHighAvailabilityType.AVAILABILITY_ZONE,
///             },
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: Deployment
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           applicationServer:
///             instanceCount: 6
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   ssh:
///                     publicKeys:
///                       - keyData: ssh-rsa public key
///               vmSize: Standard_E32ds_v4
///           centralServer:
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   ssh:
///                     publicKeys:
///                       - keyData: ssh-rsa public key
///               vmSize: Standard_E16ds_v4
///           databaseServer:
///             databaseType: HANA
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   ssh:
///                     publicKeys:
///                       - keyData: ssh-rsa public key
///               vmSize: Standard_M32ts
///           deploymentType: ThreeTier
///           highAvailabilityConfig:
///             highAvailabilityType: AvailabilityZone
///       environment: Prod
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Infrastructure only for Single Server System
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "Deployment",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.SingleServerConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                 DeploymentType = "SingleServer",
///                 NetworkConfiguration = new AzureNative.Workloads.Inputs.NetworkConfigurationArgs
///                 {
///                     IsSecondaryIpEnabled = true,
///                 },
///                 SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                 {
///                     ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                     {
///                         Offer = "RHEL-SAP",
///                         Publisher = "RedHat",
///                         Sku = "84sapha-gen2",
///                         Version = "latest",
///                     },
///                     OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                     {
///                         AdminUsername = "{your-username}",
///                         OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                         {
///                             DisablePasswordAuthentication = true,
///                             OsType = "Linux",
///                             Ssh = new AzureNative.Workloads.Inputs.SshConfigurationArgs
///                             {
///                                 PublicKeys = new[]
///                                 {
///                                     new AzureNative.Workloads.Inputs.SshPublicKeyArgs
///                                     {
///                                         KeyData = "ssh-rsa public key",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                     VmSize = "Standard_E32ds_v4",
///                 },
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.NonProd,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("Deployment"),
/// 				InfrastructureConfiguration: workloads.SingleServerConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					DatabaseType:     workloads.SAPDatabaseTypeHANA,
/// 					DeploymentType:   "SingleServer",
/// 					NetworkConfiguration: workloads.NetworkConfiguration{
/// 						IsSecondaryIpEnabled: true,
/// 					},
/// 					SubnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 					VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 						ImageReference: workloads.ImageReference{
/// 							Offer:     "RHEL-SAP",
/// 							Publisher: "RedHat",
/// 							Sku:       "84sapha-gen2",
/// 							Version:   "latest",
/// 						},
/// 						OsProfile: workloads.OSProfile{
/// 							AdminUsername: "{your-username}",
/// 							OsConfiguration: workloads.LinuxConfiguration{
/// 								DisablePasswordAuthentication: true,
/// 								OsType:                        "Linux",
/// 								Ssh: workloads.SshConfiguration{
/// 									PublicKeys: []workloads.SshPublicKey{
/// 										{
/// 											KeyData: "ssh-rsa public key",
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 						VmSize: "Standard_E32ds_v4",
/// 					},
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeNonProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("Deployment")
///                 .infrastructureConfiguration(SingleServerConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .databaseType("HANA")
///                     .deploymentType("SingleServer")
///                     .networkConfiguration(NetworkConfigurationArgs.builder()
///                         .isSecondaryIpEnabled(true)
///                         .build())
///                     .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                     .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                         .imageReference(ImageReferenceArgs.builder()
///                             .offer("RHEL-SAP")
///                             .publisher("RedHat")
///                             .sku("84sapha-gen2")
///                             .version("latest")
///                             .build())
///                         .osProfile(OSProfileArgs.builder()
///                             .adminUsername("{your-username}")
///                             .osConfiguration(LinuxConfigurationArgs.builder()
///                                 .disablePasswordAuthentication(true)
///                                 .osType("Linux")
///                                 .ssh(SshConfigurationArgs.builder()
///                                     .publicKeys(SshPublicKeyArgs.builder()
///                                         .keyData("ssh-rsa public key")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .vmSize("Standard_E32ds_v4")
///                         .build())
///                     .build())
///                 .build())
///             .environment("NonProd")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "Deployment",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///             deploymentType: "SingleServer",
///             networkConfiguration: {
///                 isSecondaryIpEnabled: true,
///             },
///             subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///             virtualMachineConfiguration: {
///                 imageReference: {
///                     offer: "RHEL-SAP",
///                     publisher: "RedHat",
///                     sku: "84sapha-gen2",
///                     version: "latest",
///                 },
///                 osProfile: {
///                     adminUsername: "{your-username}",
///                     osConfiguration: {
///                         disablePasswordAuthentication: true,
///                         osType: "Linux",
///                         ssh: {
///                             publicKeys: [{
///                                 keyData: "ssh-rsa public key",
///                             }],
///                         },
///                     },
///                 },
///                 vmSize: "Standard_E32ds_v4",
///             },
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.NonProd,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "Deployment",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///             "deployment_type": "SingleServer",
///             "network_configuration": {
///                 "is_secondary_ip_enabled": True,
///             },
///             "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///             "virtual_machine_configuration": {
///                 "image_reference": {
///                     "offer": "RHEL-SAP",
///                     "publisher": "RedHat",
///                     "sku": "84sapha-gen2",
///                     "version": "latest",
///                 },
///                 "os_profile": {
///                     "admin_username": "{your-username}",
///                     "os_configuration": {
///                         "disable_password_authentication": True,
///                         "os_type": "Linux",
///                         "ssh": {
///                             "public_keys": [{
///                                 "key_data": "ssh-rsa public key",
///                             }],
///                         },
///                     },
///                 },
///                 "vm_size": "Standard_E32ds_v4",
///             },
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.NON_PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: Deployment
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           databaseType: HANA
///           deploymentType: SingleServer
///           networkConfiguration:
///             isSecondaryIpEnabled: true
///           subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///           virtualMachineConfiguration:
///             imageReference:
///               offer: RHEL-SAP
///               publisher: RedHat
///               sku: 84sapha-gen2
///               version: latest
///             osProfile:
///               adminUsername: '{your-username}'
///               osConfiguration:
///                 disablePasswordAuthentication: true
///                 osType: Linux
///                 ssh:
///                   publicKeys:
///                     - keyData: ssh-rsa public key
///             vmSize: Standard_E32ds_v4
///       environment: NonProd
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Infrastructure with Disk and OS configuration for Distributed System (Recommended)
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.ThreeTierConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerConfigurationArgs
///                 {
///                     InstanceCount = 6,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E32ds_v4",
///                     },
///                 },
///                 CentralServer = new AzureNative.Workloads.Inputs.CentralServerConfigurationArgs
///                 {
///                     InstanceCount = 1,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E16ds_v4",
///                     },
///                 },
///                 DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseConfigurationArgs
///                 {
///                     DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                     DiskConfiguration = new AzureNative.Workloads.Inputs.DiskConfigurationArgs
///                     {
///                         DiskVolumeConfigurations =
///                         {
///                             { "backup", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                             {
///                                 Count = 2,
///                                 SizeGB = 256,
///                                 Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                                 {
///                                     Name = AzureNative.Workloads.DiskSkuName.StandardSSD_LRS,
///                                 },
///                             } },
///                             { "hana/data", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                             {
///                                 Count = 4,
///                                 SizeGB = 128,
///                                 Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                                 {
///                                     Name = AzureNative.Workloads.DiskSkuName.Premium_LRS,
///                                 },
///                             } },
///                             { "hana/log", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                             {
///                                 Count = 3,
///                                 SizeGB = 128,
///                                 Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                                 {
///                                     Name = AzureNative.Workloads.DiskSkuName.Premium_LRS,
///                                 },
///                             } },
///                             { "hana/shared", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                             {
///                                 Count = 1,
///                                 SizeGB = 256,
///                                 Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                                 {
///                                     Name = AzureNative.Workloads.DiskSkuName.StandardSSD_LRS,
///                                 },
///                             } },
///                             { "os", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                             {
///                                 Count = 1,
///                                 SizeGB = 64,
///                                 Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                                 {
///                                     Name = AzureNative.Workloads.DiskSkuName.StandardSSD_LRS,
///                                 },
///                             } },
///                             { "usr/sap", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                             {
///                                 Count = 1,
///                                 SizeGB = 128,
///                                 Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                                 {
///                                     Name = AzureNative.Workloads.DiskSkuName.Premium_LRS,
///                                 },
///                             } },
///                         },
///                     },
///                     InstanceCount = 1,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_M32ts",
///                     },
///                 },
///                 DeploymentType = "ThreeTier",
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "xyz.test.com",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.Prod,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.ThreeTierConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					ApplicationServer: workloads.ApplicationServerConfiguration{
/// 						InstanceCount: 6,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E32ds_v4",
/// 						},
/// 					},
/// 					CentralServer: workloads.CentralServerConfiguration{
/// 						InstanceCount: 1,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E16ds_v4",
/// 						},
/// 					},
/// 					DatabaseServer: workloads.DatabaseConfiguration{
/// 						DatabaseType: workloads.SAPDatabaseTypeHANA,
/// 						DiskConfiguration: workloads.DiskConfiguration{
/// 							DiskVolumeConfigurations: map[string]workloads.DiskVolumeConfiguration{
/// 								"backup": workloads.DiskVolumeConfiguration{
/// 									Count:  2,
/// 									SizeGB: 256,
/// 									Sku: workloads.DiskSku{
/// 										Name: workloads.DiskSkuName_StandardSSD_LRS,
/// 									},
/// 								},
/// 								"hana/data": workloads.DiskVolumeConfiguration{
/// 									Count:  4,
/// 									SizeGB: 128,
/// 									Sku: workloads.DiskSku{
/// 										Name: workloads.DiskSkuName_Premium_LRS,
/// 									},
/// 								},
/// 								"hana/log": workloads.DiskVolumeConfiguration{
/// 									Count:  3,
/// 									SizeGB: 128,
/// 									Sku: workloads.DiskSku{
/// 										Name: workloads.DiskSkuName_Premium_LRS,
/// 									},
/// 								},
/// 								"hana/shared": workloads.DiskVolumeConfiguration{
/// 									Count:  1,
/// 									SizeGB: 256,
/// 									Sku: workloads.DiskSku{
/// 										Name: workloads.DiskSkuName_StandardSSD_LRS,
/// 									},
/// 								},
/// 								"os": workloads.DiskVolumeConfiguration{
/// 									Count:  1,
/// 									SizeGB: 64,
/// 									Sku: workloads.DiskSku{
/// 										Name: workloads.DiskSkuName_StandardSSD_LRS,
/// 									},
/// 								},
/// 								"usr/sap": workloads.DiskVolumeConfiguration{
/// 									Count:  1,
/// 									SizeGB: 128,
/// 									Sku: workloads.DiskSku{
/// 										Name: workloads.DiskSkuName_Premium_LRS,
/// 									},
/// 								},
/// 							},
/// 						},
/// 						InstanceCount: 1,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_M32ts",
/// 						},
/// 					},
/// 					DeploymentType: "ThreeTier",
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("xyz.test.com"),
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(ThreeTierConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .applicationServer(ApplicationServerConfigurationArgs.builder()
///                         .instanceCount(6)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E32ds_v4")
///                             .build())
///                         .build())
///                     .centralServer(CentralServerConfigurationArgs.builder()
///                         .instanceCount(1)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E16ds_v4")
///                             .build())
///                         .build())
///                     .databaseServer(DatabaseConfigurationArgs.builder()
///                         .databaseType("HANA")
///                         .diskConfiguration(DiskConfigurationArgs.builder()
///                             .diskVolumeConfigurations(Map.ofEntries(
///                                 Map.entry("backup", DiskVolumeConfigurationArgs.builder()
///                                     .count(2)
///                                     .sizeGB(256)
///                                     .sku(DiskSkuArgs.builder()
///                                         .name("StandardSSD_LRS")
///                                         .build())
///                                     .build()),
///                                 Map.entry("hana/data", DiskVolumeConfigurationArgs.builder()
///                                     .count(4)
///                                     .sizeGB(128)
///                                     .sku(DiskSkuArgs.builder()
///                                         .name("Premium_LRS")
///                                         .build())
///                                     .build()),
///                                 Map.entry("hana/log", DiskVolumeConfigurationArgs.builder()
///                                     .count(3)
///                                     .sizeGB(128)
///                                     .sku(DiskSkuArgs.builder()
///                                         .name("Premium_LRS")
///                                         .build())
///                                     .build()),
///                                 Map.entry("hana/shared", DiskVolumeConfigurationArgs.builder()
///                                     .count(1)
///                                     .sizeGB(256)
///                                     .sku(DiskSkuArgs.builder()
///                                         .name("StandardSSD_LRS")
///                                         .build())
///                                     .build()),
///                                 Map.entry("os", DiskVolumeConfigurationArgs.builder()
///                                     .count(1)
///                                     .sizeGB(64)
///                                     .sku(DiskSkuArgs.builder()
///                                         .name("StandardSSD_LRS")
///                                         .build())
///                                     .build()),
///                                 Map.entry("usr/sap", DiskVolumeConfigurationArgs.builder()
///                                     .count(1)
///                                     .sizeGB(128)
///                                     .sku(DiskSkuArgs.builder()
///                                         .name("Premium_LRS")
///                                         .build())
///                                     .build())
///                             ))
///                             .build())
///                         .instanceCount(1)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_M32ts")
///                             .build())
///                         .build())
///                     .deploymentType("ThreeTier")
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("xyz.test.com")
///                     .build())
///                 .build())
///             .environment("Prod")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             applicationServer: {
///                 instanceCount: 6,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E32ds_v4",
///                 },
///             },
///             centralServer: {
///                 instanceCount: 1,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E16ds_v4",
///                 },
///             },
///             databaseServer: {
///                 databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///                 diskConfiguration: {
///                     diskVolumeConfigurations: {
///                         backup: {
///                             count: 2,
///                             sizeGB: 256,
///                             sku: {
///                                 name: azure_native.workloads.DiskSkuName.StandardSSD_LRS,
///                             },
///                         },
///                         "hana/data": {
///                             count: 4,
///                             sizeGB: 128,
///                             sku: {
///                                 name: azure_native.workloads.DiskSkuName.Premium_LRS,
///                             },
///                         },
///                         "hana/log": {
///                             count: 3,
///                             sizeGB: 128,
///                             sku: {
///                                 name: azure_native.workloads.DiskSkuName.Premium_LRS,
///                             },
///                         },
///                         "hana/shared": {
///                             count: 1,
///                             sizeGB: 256,
///                             sku: {
///                                 name: azure_native.workloads.DiskSkuName.StandardSSD_LRS,
///                             },
///                         },
///                         os: {
///                             count: 1,
///                             sizeGB: 64,
///                             sku: {
///                                 name: azure_native.workloads.DiskSkuName.StandardSSD_LRS,
///                             },
///                         },
///                         "usr/sap": {
///                             count: 1,
///                             sizeGB: 128,
///                             sku: {
///                                 name: azure_native.workloads.DiskSkuName.Premium_LRS,
///                             },
///                         },
///                     },
///                 },
///                 instanceCount: 1,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_M32ts",
///                 },
///             },
///             deploymentType: "ThreeTier",
///         },
///         osSapConfiguration: {
///             sapFqdn: "xyz.test.com",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.Prod,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "application_server": {
///                 "instance_count": 6,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E32ds_v4",
///                 },
///             },
///             "central_server": {
///                 "instance_count": 1,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E16ds_v4",
///                 },
///             },
///             "database_server": {
///                 "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///                 "disk_configuration": {
///                     "disk_volume_configurations": {
///                         "backup": {
///                             "count": 2,
///                             "size_gb": 256,
///                             "sku": {
///                                 "name": azure_native.workloads.DiskSkuName.STANDARD_SS_D_LRS,
///                             },
///                         },
///                         "hana/data": {
///                             "count": 4,
///                             "size_gb": 128,
///                             "sku": {
///                                 "name": azure_native.workloads.DiskSkuName.PREMIUM_LRS,
///                             },
///                         },
///                         "hana/log": {
///                             "count": 3,
///                             "size_gb": 128,
///                             "sku": {
///                                 "name": azure_native.workloads.DiskSkuName.PREMIUM_LRS,
///                             },
///                         },
///                         "hana/shared": {
///                             "count": 1,
///                             "size_gb": 256,
///                             "sku": {
///                                 "name": azure_native.workloads.DiskSkuName.STANDARD_SS_D_LRS,
///                             },
///                         },
///                         "os": {
///                             "count": 1,
///                             "size_gb": 64,
///                             "sku": {
///                                 "name": azure_native.workloads.DiskSkuName.STANDARD_SS_D_LRS,
///                             },
///                         },
///                         "usr/sap": {
///                             "count": 1,
///                             "size_gb": 128,
///                             "sku": {
///                                 "name": azure_native.workloads.DiskSkuName.PREMIUM_LRS,
///                             },
///                         },
///                     },
///                 },
///                 "instance_count": 1,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_M32ts",
///                 },
///             },
///             "deployment_type": "ThreeTier",
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "xyz.test.com",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           applicationServer:
///             instanceCount: 6
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E32ds_v4
///           centralServer:
///             instanceCount: 1
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E16ds_v4
///           databaseServer:
///             databaseType: HANA
///             diskConfiguration:
///               diskVolumeConfigurations:
///                 backup:
///                   count: 2
///                   sizeGB: 256
///                   sku:
///                     name: StandardSSD_LRS
///                 hana/data:
///                   count: 4
///                   sizeGB: 128
///                   sku:
///                     name: Premium_LRS
///                 hana/log:
///                   count: 3
///                   sizeGB: 128
///                   sku:
///                     name: Premium_LRS
///                 hana/shared:
///                   count: 1
///                   sizeGB: 256
///                   sku:
///                     name: StandardSSD_LRS
///                 os:
///                   count: 1
///                   sizeGB: 64
///                   sku:
///                     name: StandardSSD_LRS
///                 usr/sap:
///                   count: 1
///                   sizeGB: 128
///                   sku:
///                     name: Premium_LRS
///             instanceCount: 1
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_M32ts
///           deploymentType: ThreeTier
///         osSapConfiguration:
///           sapFqdn: xyz.test.com
///       environment: Prod
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Infrastructure with Disk and OS configuration for HA System with Availability Set (Recommended)
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.ThreeTierConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerConfigurationArgs
///                 {
///                     InstanceCount = 6,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E32ds_v4",
///                     },
///                 },
///                 CentralServer = new AzureNative.Workloads.Inputs.CentralServerConfigurationArgs
///                 {
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E16ds_v4",
///                     },
///                 },
///                 DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseConfigurationArgs
///                 {
///                     DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                     DiskConfiguration = new AzureNative.Workloads.Inputs.DiskConfigurationArgs
///                     {
///                         DiskVolumeConfigurations =
///                         {
///                             { "backup", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                             {
///                                 Count = 2,
///                                 SizeGB = 256,
///                                 Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                                 {
///                                     Name = AzureNative.Workloads.DiskSkuName.StandardSSD_LRS,
///                                 },
///                             } },
///                             { "hana/data", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                             {
///                                 Count = 4,
///                                 SizeGB = 128,
///                                 Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                                 {
///                                     Name = AzureNative.Workloads.DiskSkuName.Premium_LRS,
///                                 },
///                             } },
///                             { "hana/log", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                             {
///                                 Count = 3,
///                                 SizeGB = 128,
///                                 Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                                 {
///                                     Name = AzureNative.Workloads.DiskSkuName.Premium_LRS,
///                                 },
///                             } },
///                             { "hana/shared", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                             {
///                                 Count = 1,
///                                 SizeGB = 256,
///                                 Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                                 {
///                                     Name = AzureNative.Workloads.DiskSkuName.StandardSSD_LRS,
///                                 },
///                             } },
///                             { "os", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                             {
///                                 Count = 1,
///                                 SizeGB = 64,
///                                 Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                                 {
///                                     Name = AzureNative.Workloads.DiskSkuName.StandardSSD_LRS,
///                                 },
///                             } },
///                             { "usr/sap", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                             {
///                                 Count = 1,
///                                 SizeGB = 128,
///                                 Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                                 {
///                                     Name = AzureNative.Workloads.DiskSkuName.Premium_LRS,
///                                 },
///                             } },
///                         },
///                     },
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_M32ts",
///                     },
///                 },
///                 DeploymentType = "ThreeTier",
///                 HighAvailabilityConfig = new AzureNative.Workloads.Inputs.HighAvailabilityConfigurationArgs
///                 {
///                     HighAvailabilityType = AzureNative.Workloads.SAPHighAvailabilityType.AvailabilitySet,
///                 },
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "xyz.test.com",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.Prod,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.ThreeTierConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					ApplicationServer: workloads.ApplicationServerConfiguration{
/// 						InstanceCount: 6,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E32ds_v4",
/// 						},
/// 					},
/// 					CentralServer: workloads.CentralServerConfiguration{
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E16ds_v4",
/// 						},
/// 					},
/// 					DatabaseServer: workloads.DatabaseConfiguration{
/// 						DatabaseType: workloads.SAPDatabaseTypeHANA,
/// 						DiskConfiguration: workloads.DiskConfiguration{
/// 							DiskVolumeConfigurations: map[string]workloads.DiskVolumeConfiguration{
/// 								"backup": workloads.DiskVolumeConfiguration{
/// 									Count:  2,
/// 									SizeGB: 256,
/// 									Sku: workloads.DiskSku{
/// 										Name: workloads.DiskSkuName_StandardSSD_LRS,
/// 									},
/// 								},
/// 								"hana/data": workloads.DiskVolumeConfiguration{
/// 									Count:  4,
/// 									SizeGB: 128,
/// 									Sku: workloads.DiskSku{
/// 										Name: workloads.DiskSkuName_Premium_LRS,
/// 									},
/// 								},
/// 								"hana/log": workloads.DiskVolumeConfiguration{
/// 									Count:  3,
/// 									SizeGB: 128,
/// 									Sku: workloads.DiskSku{
/// 										Name: workloads.DiskSkuName_Premium_LRS,
/// 									},
/// 								},
/// 								"hana/shared": workloads.DiskVolumeConfiguration{
/// 									Count:  1,
/// 									SizeGB: 256,
/// 									Sku: workloads.DiskSku{
/// 										Name: workloads.DiskSkuName_StandardSSD_LRS,
/// 									},
/// 								},
/// 								"os": workloads.DiskVolumeConfiguration{
/// 									Count:  1,
/// 									SizeGB: 64,
/// 									Sku: workloads.DiskSku{
/// 										Name: workloads.DiskSkuName_StandardSSD_LRS,
/// 									},
/// 								},
/// 								"usr/sap": workloads.DiskVolumeConfiguration{
/// 									Count:  1,
/// 									SizeGB: 128,
/// 									Sku: workloads.DiskSku{
/// 										Name: workloads.DiskSkuName_Premium_LRS,
/// 									},
/// 								},
/// 							},
/// 						},
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_M32ts",
/// 						},
/// 					},
/// 					DeploymentType: "ThreeTier",
/// 					HighAvailabilityConfig: workloads.HighAvailabilityConfiguration{
/// 						HighAvailabilityType: workloads.SAPHighAvailabilityTypeAvailabilitySet,
/// 					},
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("xyz.test.com"),
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(ThreeTierConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .applicationServer(ApplicationServerConfigurationArgs.builder()
///                         .instanceCount(6)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E32ds_v4")
///                             .build())
///                         .build())
///                     .centralServer(CentralServerConfigurationArgs.builder()
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E16ds_v4")
///                             .build())
///                         .build())
///                     .databaseServer(DatabaseConfigurationArgs.builder()
///                         .databaseType("HANA")
///                         .diskConfiguration(DiskConfigurationArgs.builder()
///                             .diskVolumeConfigurations(Map.ofEntries(
///                                 Map.entry("backup", DiskVolumeConfigurationArgs.builder()
///                                     .count(2)
///                                     .sizeGB(256)
///                                     .sku(DiskSkuArgs.builder()
///                                         .name("StandardSSD_LRS")
///                                         .build())
///                                     .build()),
///                                 Map.entry("hana/data", DiskVolumeConfigurationArgs.builder()
///                                     .count(4)
///                                     .sizeGB(128)
///                                     .sku(DiskSkuArgs.builder()
///                                         .name("Premium_LRS")
///                                         .build())
///                                     .build()),
///                                 Map.entry("hana/log", DiskVolumeConfigurationArgs.builder()
///                                     .count(3)
///                                     .sizeGB(128)
///                                     .sku(DiskSkuArgs.builder()
///                                         .name("Premium_LRS")
///                                         .build())
///                                     .build()),
///                                 Map.entry("hana/shared", DiskVolumeConfigurationArgs.builder()
///                                     .count(1)
///                                     .sizeGB(256)
///                                     .sku(DiskSkuArgs.builder()
///                                         .name("StandardSSD_LRS")
///                                         .build())
///                                     .build()),
///                                 Map.entry("os", DiskVolumeConfigurationArgs.builder()
///                                     .count(1)
///                                     .sizeGB(64)
///                                     .sku(DiskSkuArgs.builder()
///                                         .name("StandardSSD_LRS")
///                                         .build())
///                                     .build()),
///                                 Map.entry("usr/sap", DiskVolumeConfigurationArgs.builder()
///                                     .count(1)
///                                     .sizeGB(128)
///                                     .sku(DiskSkuArgs.builder()
///                                         .name("Premium_LRS")
///                                         .build())
///                                     .build())
///                             ))
///                             .build())
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_M32ts")
///                             .build())
///                         .build())
///                     .deploymentType("ThreeTier")
///                     .highAvailabilityConfig(HighAvailabilityConfigurationArgs.builder()
///                         .highAvailabilityType("AvailabilitySet")
///                         .build())
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("xyz.test.com")
///                     .build())
///                 .build())
///             .environment("Prod")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             applicationServer: {
///                 instanceCount: 6,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E32ds_v4",
///                 },
///             },
///             centralServer: {
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E16ds_v4",
///                 },
///             },
///             databaseServer: {
///                 databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///                 diskConfiguration: {
///                     diskVolumeConfigurations: {
///                         backup: {
///                             count: 2,
///                             sizeGB: 256,
///                             sku: {
///                                 name: azure_native.workloads.DiskSkuName.StandardSSD_LRS,
///                             },
///                         },
///                         "hana/data": {
///                             count: 4,
///                             sizeGB: 128,
///                             sku: {
///                                 name: azure_native.workloads.DiskSkuName.Premium_LRS,
///                             },
///                         },
///                         "hana/log": {
///                             count: 3,
///                             sizeGB: 128,
///                             sku: {
///                                 name: azure_native.workloads.DiskSkuName.Premium_LRS,
///                             },
///                         },
///                         "hana/shared": {
///                             count: 1,
///                             sizeGB: 256,
///                             sku: {
///                                 name: azure_native.workloads.DiskSkuName.StandardSSD_LRS,
///                             },
///                         },
///                         os: {
///                             count: 1,
///                             sizeGB: 64,
///                             sku: {
///                                 name: azure_native.workloads.DiskSkuName.StandardSSD_LRS,
///                             },
///                         },
///                         "usr/sap": {
///                             count: 1,
///                             sizeGB: 128,
///                             sku: {
///                                 name: azure_native.workloads.DiskSkuName.Premium_LRS,
///                             },
///                         },
///                     },
///                 },
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_M32ts",
///                 },
///             },
///             deploymentType: "ThreeTier",
///             highAvailabilityConfig: {
///                 highAvailabilityType: azure_native.workloads.SAPHighAvailabilityType.AvailabilitySet,
///             },
///         },
///         osSapConfiguration: {
///             sapFqdn: "xyz.test.com",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.Prod,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "application_server": {
///                 "instance_count": 6,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E32ds_v4",
///                 },
///             },
///             "central_server": {
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E16ds_v4",
///                 },
///             },
///             "database_server": {
///                 "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///                 "disk_configuration": {
///                     "disk_volume_configurations": {
///                         "backup": {
///                             "count": 2,
///                             "size_gb": 256,
///                             "sku": {
///                                 "name": azure_native.workloads.DiskSkuName.STANDARD_SS_D_LRS,
///                             },
///                         },
///                         "hana/data": {
///                             "count": 4,
///                             "size_gb": 128,
///                             "sku": {
///                                 "name": azure_native.workloads.DiskSkuName.PREMIUM_LRS,
///                             },
///                         },
///                         "hana/log": {
///                             "count": 3,
///                             "size_gb": 128,
///                             "sku": {
///                                 "name": azure_native.workloads.DiskSkuName.PREMIUM_LRS,
///                             },
///                         },
///                         "hana/shared": {
///                             "count": 1,
///                             "size_gb": 256,
///                             "sku": {
///                                 "name": azure_native.workloads.DiskSkuName.STANDARD_SS_D_LRS,
///                             },
///                         },
///                         "os": {
///                             "count": 1,
///                             "size_gb": 64,
///                             "sku": {
///                                 "name": azure_native.workloads.DiskSkuName.STANDARD_SS_D_LRS,
///                             },
///                         },
///                         "usr/sap": {
///                             "count": 1,
///                             "size_gb": 128,
///                             "sku": {
///                                 "name": azure_native.workloads.DiskSkuName.PREMIUM_LRS,
///                             },
///                         },
///                     },
///                 },
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_M32ts",
///                 },
///             },
///             "deployment_type": "ThreeTier",
///             "high_availability_config": {
///                 "high_availability_type": azure_native.workloads.SAPHighAvailabilityType.AVAILABILITY_SET,
///             },
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "xyz.test.com",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           applicationServer:
///             instanceCount: 6
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E32ds_v4
///           centralServer:
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E16ds_v4
///           databaseServer:
///             databaseType: HANA
///             diskConfiguration:
///               diskVolumeConfigurations:
///                 backup:
///                   count: 2
///                   sizeGB: 256
///                   sku:
///                     name: StandardSSD_LRS
///                 hana/data:
///                   count: 4
///                   sizeGB: 128
///                   sku:
///                     name: Premium_LRS
///                 hana/log:
///                   count: 3
///                   sizeGB: 128
///                   sku:
///                     name: Premium_LRS
///                 hana/shared:
///                   count: 1
///                   sizeGB: 256
///                   sku:
///                     name: StandardSSD_LRS
///                 os:
///                   count: 1
///                   sizeGB: 64
///                   sku:
///                     name: StandardSSD_LRS
///                 usr/sap:
///                   count: 1
///                   sizeGB: 128
///                   sku:
///                     name: Premium_LRS
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_M32ts
///           deploymentType: ThreeTier
///           highAvailabilityConfig:
///             highAvailabilityType: AvailabilitySet
///         osSapConfiguration:
///           sapFqdn: xyz.test.com
///       environment: Prod
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Infrastructure with Disk and OS configuration for HA System with Availability Zone (Recommended)
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.ThreeTierConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerConfigurationArgs
///                 {
///                     InstanceCount = 6,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E32ds_v4",
///                     },
///                 },
///                 CentralServer = new AzureNative.Workloads.Inputs.CentralServerConfigurationArgs
///                 {
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E16ds_v4",
///                     },
///                 },
///                 DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseConfigurationArgs
///                 {
///                     DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                     DiskConfiguration = new AzureNative.Workloads.Inputs.DiskConfigurationArgs
///                     {
///                         DiskVolumeConfigurations =
///                         {
///                             { "backup", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                             {
///                                 Count = 2,
///                                 SizeGB = 256,
///                                 Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                                 {
///                                     Name = AzureNative.Workloads.DiskSkuName.StandardSSD_LRS,
///                                 },
///                             } },
///                             { "hana/data", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                             {
///                                 Count = 4,
///                                 SizeGB = 128,
///                                 Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                                 {
///                                     Name = AzureNative.Workloads.DiskSkuName.Premium_LRS,
///                                 },
///                             } },
///                             { "hana/log", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                             {
///                                 Count = 3,
///                                 SizeGB = 128,
///                                 Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                                 {
///                                     Name = AzureNative.Workloads.DiskSkuName.Premium_LRS,
///                                 },
///                             } },
///                             { "hana/shared", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                             {
///                                 Count = 1,
///                                 SizeGB = 256,
///                                 Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                                 {
///                                     Name = AzureNative.Workloads.DiskSkuName.StandardSSD_LRS,
///                                 },
///                             } },
///                             { "os", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                             {
///                                 Count = 1,
///                                 SizeGB = 64,
///                                 Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                                 {
///                                     Name = AzureNative.Workloads.DiskSkuName.StandardSSD_LRS,
///                                 },
///                             } },
///                             { "usr/sap", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                             {
///                                 Count = 1,
///                                 SizeGB = 128,
///                                 Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                                 {
///                                     Name = AzureNative.Workloads.DiskSkuName.Premium_LRS,
///                                 },
///                             } },
///                         },
///                     },
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_M32ts",
///                     },
///                 },
///                 DeploymentType = "ThreeTier",
///                 HighAvailabilityConfig = new AzureNative.Workloads.Inputs.HighAvailabilityConfigurationArgs
///                 {
///                     HighAvailabilityType = AzureNative.Workloads.SAPHighAvailabilityType.AvailabilityZone,
///                 },
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "xyz.test.com",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.Prod,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.ThreeTierConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					ApplicationServer: workloads.ApplicationServerConfiguration{
/// 						InstanceCount: 6,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E32ds_v4",
/// 						},
/// 					},
/// 					CentralServer: workloads.CentralServerConfiguration{
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E16ds_v4",
/// 						},
/// 					},
/// 					DatabaseServer: workloads.DatabaseConfiguration{
/// 						DatabaseType: workloads.SAPDatabaseTypeHANA,
/// 						DiskConfiguration: workloads.DiskConfiguration{
/// 							DiskVolumeConfigurations: map[string]workloads.DiskVolumeConfiguration{
/// 								"backup": workloads.DiskVolumeConfiguration{
/// 									Count:  2,
/// 									SizeGB: 256,
/// 									Sku: workloads.DiskSku{
/// 										Name: workloads.DiskSkuName_StandardSSD_LRS,
/// 									},
/// 								},
/// 								"hana/data": workloads.DiskVolumeConfiguration{
/// 									Count:  4,
/// 									SizeGB: 128,
/// 									Sku: workloads.DiskSku{
/// 										Name: workloads.DiskSkuName_Premium_LRS,
/// 									},
/// 								},
/// 								"hana/log": workloads.DiskVolumeConfiguration{
/// 									Count:  3,
/// 									SizeGB: 128,
/// 									Sku: workloads.DiskSku{
/// 										Name: workloads.DiskSkuName_Premium_LRS,
/// 									},
/// 								},
/// 								"hana/shared": workloads.DiskVolumeConfiguration{
/// 									Count:  1,
/// 									SizeGB: 256,
/// 									Sku: workloads.DiskSku{
/// 										Name: workloads.DiskSkuName_StandardSSD_LRS,
/// 									},
/// 								},
/// 								"os": workloads.DiskVolumeConfiguration{
/// 									Count:  1,
/// 									SizeGB: 64,
/// 									Sku: workloads.DiskSku{
/// 										Name: workloads.DiskSkuName_StandardSSD_LRS,
/// 									},
/// 								},
/// 								"usr/sap": workloads.DiskVolumeConfiguration{
/// 									Count:  1,
/// 									SizeGB: 128,
/// 									Sku: workloads.DiskSku{
/// 										Name: workloads.DiskSkuName_Premium_LRS,
/// 									},
/// 								},
/// 							},
/// 						},
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_M32ts",
/// 						},
/// 					},
/// 					DeploymentType: "ThreeTier",
/// 					HighAvailabilityConfig: workloads.HighAvailabilityConfiguration{
/// 						HighAvailabilityType: workloads.SAPHighAvailabilityTypeAvailabilityZone,
/// 					},
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("xyz.test.com"),
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(ThreeTierConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .applicationServer(ApplicationServerConfigurationArgs.builder()
///                         .instanceCount(6)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E32ds_v4")
///                             .build())
///                         .build())
///                     .centralServer(CentralServerConfigurationArgs.builder()
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E16ds_v4")
///                             .build())
///                         .build())
///                     .databaseServer(DatabaseConfigurationArgs.builder()
///                         .databaseType("HANA")
///                         .diskConfiguration(DiskConfigurationArgs.builder()
///                             .diskVolumeConfigurations(Map.ofEntries(
///                                 Map.entry("backup", DiskVolumeConfigurationArgs.builder()
///                                     .count(2)
///                                     .sizeGB(256)
///                                     .sku(DiskSkuArgs.builder()
///                                         .name("StandardSSD_LRS")
///                                         .build())
///                                     .build()),
///                                 Map.entry("hana/data", DiskVolumeConfigurationArgs.builder()
///                                     .count(4)
///                                     .sizeGB(128)
///                                     .sku(DiskSkuArgs.builder()
///                                         .name("Premium_LRS")
///                                         .build())
///                                     .build()),
///                                 Map.entry("hana/log", DiskVolumeConfigurationArgs.builder()
///                                     .count(3)
///                                     .sizeGB(128)
///                                     .sku(DiskSkuArgs.builder()
///                                         .name("Premium_LRS")
///                                         .build())
///                                     .build()),
///                                 Map.entry("hana/shared", DiskVolumeConfigurationArgs.builder()
///                                     .count(1)
///                                     .sizeGB(256)
///                                     .sku(DiskSkuArgs.builder()
///                                         .name("StandardSSD_LRS")
///                                         .build())
///                                     .build()),
///                                 Map.entry("os", DiskVolumeConfigurationArgs.builder()
///                                     .count(1)
///                                     .sizeGB(64)
///                                     .sku(DiskSkuArgs.builder()
///                                         .name("StandardSSD_LRS")
///                                         .build())
///                                     .build()),
///                                 Map.entry("usr/sap", DiskVolumeConfigurationArgs.builder()
///                                     .count(1)
///                                     .sizeGB(128)
///                                     .sku(DiskSkuArgs.builder()
///                                         .name("Premium_LRS")
///                                         .build())
///                                     .build())
///                             ))
///                             .build())
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_M32ts")
///                             .build())
///                         .build())
///                     .deploymentType("ThreeTier")
///                     .highAvailabilityConfig(HighAvailabilityConfigurationArgs.builder()
///                         .highAvailabilityType("AvailabilityZone")
///                         .build())
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("xyz.test.com")
///                     .build())
///                 .build())
///             .environment("Prod")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             applicationServer: {
///                 instanceCount: 6,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E32ds_v4",
///                 },
///             },
///             centralServer: {
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E16ds_v4",
///                 },
///             },
///             databaseServer: {
///                 databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///                 diskConfiguration: {
///                     diskVolumeConfigurations: {
///                         backup: {
///                             count: 2,
///                             sizeGB: 256,
///                             sku: {
///                                 name: azure_native.workloads.DiskSkuName.StandardSSD_LRS,
///                             },
///                         },
///                         "hana/data": {
///                             count: 4,
///                             sizeGB: 128,
///                             sku: {
///                                 name: azure_native.workloads.DiskSkuName.Premium_LRS,
///                             },
///                         },
///                         "hana/log": {
///                             count: 3,
///                             sizeGB: 128,
///                             sku: {
///                                 name: azure_native.workloads.DiskSkuName.Premium_LRS,
///                             },
///                         },
///                         "hana/shared": {
///                             count: 1,
///                             sizeGB: 256,
///                             sku: {
///                                 name: azure_native.workloads.DiskSkuName.StandardSSD_LRS,
///                             },
///                         },
///                         os: {
///                             count: 1,
///                             sizeGB: 64,
///                             sku: {
///                                 name: azure_native.workloads.DiskSkuName.StandardSSD_LRS,
///                             },
///                         },
///                         "usr/sap": {
///                             count: 1,
///                             sizeGB: 128,
///                             sku: {
///                                 name: azure_native.workloads.DiskSkuName.Premium_LRS,
///                             },
///                         },
///                     },
///                 },
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_M32ts",
///                 },
///             },
///             deploymentType: "ThreeTier",
///             highAvailabilityConfig: {
///                 highAvailabilityType: azure_native.workloads.SAPHighAvailabilityType.AvailabilityZone,
///             },
///         },
///         osSapConfiguration: {
///             sapFqdn: "xyz.test.com",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.Prod,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "application_server": {
///                 "instance_count": 6,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E32ds_v4",
///                 },
///             },
///             "central_server": {
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E16ds_v4",
///                 },
///             },
///             "database_server": {
///                 "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///                 "disk_configuration": {
///                     "disk_volume_configurations": {
///                         "backup": {
///                             "count": 2,
///                             "size_gb": 256,
///                             "sku": {
///                                 "name": azure_native.workloads.DiskSkuName.STANDARD_SS_D_LRS,
///                             },
///                         },
///                         "hana/data": {
///                             "count": 4,
///                             "size_gb": 128,
///                             "sku": {
///                                 "name": azure_native.workloads.DiskSkuName.PREMIUM_LRS,
///                             },
///                         },
///                         "hana/log": {
///                             "count": 3,
///                             "size_gb": 128,
///                             "sku": {
///                                 "name": azure_native.workloads.DiskSkuName.PREMIUM_LRS,
///                             },
///                         },
///                         "hana/shared": {
///                             "count": 1,
///                             "size_gb": 256,
///                             "sku": {
///                                 "name": azure_native.workloads.DiskSkuName.STANDARD_SS_D_LRS,
///                             },
///                         },
///                         "os": {
///                             "count": 1,
///                             "size_gb": 64,
///                             "sku": {
///                                 "name": azure_native.workloads.DiskSkuName.STANDARD_SS_D_LRS,
///                             },
///                         },
///                         "usr/sap": {
///                             "count": 1,
///                             "size_gb": 128,
///                             "sku": {
///                                 "name": azure_native.workloads.DiskSkuName.PREMIUM_LRS,
///                             },
///                         },
///                     },
///                 },
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_M32ts",
///                 },
///             },
///             "deployment_type": "ThreeTier",
///             "high_availability_config": {
///                 "high_availability_type": azure_native.workloads.SAPHighAvailabilityType.AVAILABILITY_ZONE,
///             },
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "xyz.test.com",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           applicationServer:
///             instanceCount: 6
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E32ds_v4
///           centralServer:
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E16ds_v4
///           databaseServer:
///             databaseType: HANA
///             diskConfiguration:
///               diskVolumeConfigurations:
///                 backup:
///                   count: 2
///                   sizeGB: 256
///                   sku:
///                     name: StandardSSD_LRS
///                 hana/data:
///                   count: 4
///                   sizeGB: 128
///                   sku:
///                     name: Premium_LRS
///                 hana/log:
///                   count: 3
///                   sizeGB: 128
///                   sku:
///                     name: Premium_LRS
///                 hana/shared:
///                   count: 1
///                   sizeGB: 256
///                   sku:
///                     name: StandardSSD_LRS
///                 os:
///                   count: 1
///                   sizeGB: 64
///                   sku:
///                     name: StandardSSD_LRS
///                 usr/sap:
///                   count: 1
///                   sizeGB: 128
///                   sku:
///                     name: Premium_LRS
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_M32ts
///           deploymentType: ThreeTier
///           highAvailabilityConfig:
///             highAvailabilityType: AvailabilityZone
///         osSapConfiguration:
///           sapFqdn: xyz.test.com
///       environment: Prod
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Infrastructure with Disk and OS configurations for Single Server System (Recommended)
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.SingleServerConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                 DbDiskConfiguration = new AzureNative.Workloads.Inputs.DiskConfigurationArgs
///                 {
///                     DiskVolumeConfigurations =
///                     {
///                         { "backup", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                         {
///                             Count = 2,
///                             SizeGB = 256,
///                             Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                             {
///                                 Name = AzureNative.Workloads.DiskSkuName.StandardSSD_LRS,
///                             },
///                         } },
///                         { "hana/data", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                         {
///                             Count = 4,
///                             SizeGB = 128,
///                             Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                             {
///                                 Name = AzureNative.Workloads.DiskSkuName.Premium_LRS,
///                             },
///                         } },
///                         { "hana/log", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                         {
///                             Count = 3,
///                             SizeGB = 128,
///                             Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                             {
///                                 Name = AzureNative.Workloads.DiskSkuName.Premium_LRS,
///                             },
///                         } },
///                         { "hana/shared", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                         {
///                             Count = 1,
///                             SizeGB = 256,
///                             Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                             {
///                                 Name = AzureNative.Workloads.DiskSkuName.StandardSSD_LRS,
///                             },
///                         } },
///                         { "os", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                         {
///                             Count = 1,
///                             SizeGB = 64,
///                             Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                             {
///                                 Name = AzureNative.Workloads.DiskSkuName.StandardSSD_LRS,
///                             },
///                         } },
///                         { "usr/sap", new AzureNative.Workloads.Inputs.DiskVolumeConfigurationArgs
///                         {
///                             Count = 1,
///                             SizeGB = 128,
///                             Sku = new AzureNative.Workloads.Inputs.DiskSkuArgs
///                             {
///                                 Name = AzureNative.Workloads.DiskSkuName.Premium_LRS,
///                             },
///                         } },
///                     },
///                 },
///                 DeploymentType = "SingleServer",
///                 NetworkConfiguration = new AzureNative.Workloads.Inputs.NetworkConfigurationArgs
///                 {
///                     IsSecondaryIpEnabled = true,
///                 },
///                 SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                 {
///                     ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                     {
///                         Offer = "RHEL-SAP",
///                         Publisher = "RedHat",
///                         Sku = "84sapha-gen2",
///                         Version = "latest",
///                     },
///                     OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                     {
///                         AdminUsername = "{your-username}",
///                         OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                         {
///                             DisablePasswordAuthentication = true,
///                             OsType = "Linux",
///                             SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                             {
///                                 PrivateKey = "xyz",
///                                 PublicKey = "abc",
///                             },
///                         },
///                     },
///                     VmSize = "Standard_E32ds_v4",
///                 },
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "xyz.test.com",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.NonProd,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.SingleServerConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					DatabaseType:     workloads.SAPDatabaseTypeHANA,
/// 					DbDiskConfiguration: workloads.DiskConfiguration{
/// 						DiskVolumeConfigurations: map[string]workloads.DiskVolumeConfiguration{
/// 							"backup": workloads.DiskVolumeConfiguration{
/// 								Count:  2,
/// 								SizeGB: 256,
/// 								Sku: workloads.DiskSku{
/// 									Name: workloads.DiskSkuName_StandardSSD_LRS,
/// 								},
/// 							},
/// 							"hana/data": workloads.DiskVolumeConfiguration{
/// 								Count:  4,
/// 								SizeGB: 128,
/// 								Sku: workloads.DiskSku{
/// 									Name: workloads.DiskSkuName_Premium_LRS,
/// 								},
/// 							},
/// 							"hana/log": workloads.DiskVolumeConfiguration{
/// 								Count:  3,
/// 								SizeGB: 128,
/// 								Sku: workloads.DiskSku{
/// 									Name: workloads.DiskSkuName_Premium_LRS,
/// 								},
/// 							},
/// 							"hana/shared": workloads.DiskVolumeConfiguration{
/// 								Count:  1,
/// 								SizeGB: 256,
/// 								Sku: workloads.DiskSku{
/// 									Name: workloads.DiskSkuName_StandardSSD_LRS,
/// 								},
/// 							},
/// 							"os": workloads.DiskVolumeConfiguration{
/// 								Count:  1,
/// 								SizeGB: 64,
/// 								Sku: workloads.DiskSku{
/// 									Name: workloads.DiskSkuName_StandardSSD_LRS,
/// 								},
/// 							},
/// 							"usr/sap": workloads.DiskVolumeConfiguration{
/// 								Count:  1,
/// 								SizeGB: 128,
/// 								Sku: workloads.DiskSku{
/// 									Name: workloads.DiskSkuName_Premium_LRS,
/// 								},
/// 							},
/// 						},
/// 					},
/// 					DeploymentType: "SingleServer",
/// 					NetworkConfiguration: workloads.NetworkConfiguration{
/// 						IsSecondaryIpEnabled: true,
/// 					},
/// 					SubnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 					VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 						ImageReference: workloads.ImageReference{
/// 							Offer:     "RHEL-SAP",
/// 							Publisher: "RedHat",
/// 							Sku:       "84sapha-gen2",
/// 							Version:   "latest",
/// 						},
/// 						OsProfile: workloads.OSProfile{
/// 							AdminUsername: "{your-username}",
/// 							OsConfiguration: workloads.LinuxConfiguration{
/// 								DisablePasswordAuthentication: true,
/// 								OsType:                        "Linux",
/// 								SshKeyPair: workloads.SshKeyPair{
/// 									PrivateKey: "xyz",
/// 									PublicKey:  "abc",
/// 								},
/// 							},
/// 						},
/// 						VmSize: "Standard_E32ds_v4",
/// 					},
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("xyz.test.com"),
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeNonProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(SingleServerConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .databaseType("HANA")
///                     .dbDiskConfiguration(DiskConfigurationArgs.builder()
///                         .diskVolumeConfigurations(Map.ofEntries(
///                             Map.entry("backup", DiskVolumeConfigurationArgs.builder()
///                                 .count(2)
///                                 .sizeGB(256)
///                                 .sku(DiskSkuArgs.builder()
///                                     .name("StandardSSD_LRS")
///                                     .build())
///                                 .build()),
///                             Map.entry("hana/data", DiskVolumeConfigurationArgs.builder()
///                                 .count(4)
///                                 .sizeGB(128)
///                                 .sku(DiskSkuArgs.builder()
///                                     .name("Premium_LRS")
///                                     .build())
///                                 .build()),
///                             Map.entry("hana/log", DiskVolumeConfigurationArgs.builder()
///                                 .count(3)
///                                 .sizeGB(128)
///                                 .sku(DiskSkuArgs.builder()
///                                     .name("Premium_LRS")
///                                     .build())
///                                 .build()),
///                             Map.entry("hana/shared", DiskVolumeConfigurationArgs.builder()
///                                 .count(1)
///                                 .sizeGB(256)
///                                 .sku(DiskSkuArgs.builder()
///                                     .name("StandardSSD_LRS")
///                                     .build())
///                                 .build()),
///                             Map.entry("os", DiskVolumeConfigurationArgs.builder()
///                                 .count(1)
///                                 .sizeGB(64)
///                                 .sku(DiskSkuArgs.builder()
///                                     .name("StandardSSD_LRS")
///                                     .build())
///                                 .build()),
///                             Map.entry("usr/sap", DiskVolumeConfigurationArgs.builder()
///                                 .count(1)
///                                 .sizeGB(128)
///                                 .sku(DiskSkuArgs.builder()
///                                     .name("Premium_LRS")
///                                     .build())
///                                 .build())
///                         ))
///                         .build())
///                     .deploymentType("SingleServer")
///                     .networkConfiguration(NetworkConfigurationArgs.builder()
///                         .isSecondaryIpEnabled(true)
///                         .build())
///                     .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                     .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                         .imageReference(ImageReferenceArgs.builder()
///                             .offer("RHEL-SAP")
///                             .publisher("RedHat")
///                             .sku("84sapha-gen2")
///                             .version("latest")
///                             .build())
///                         .osProfile(OSProfileArgs.builder()
///                             .adminUsername("{your-username}")
///                             .osConfiguration(LinuxConfigurationArgs.builder()
///                                 .disablePasswordAuthentication(true)
///                                 .osType("Linux")
///                                 .sshKeyPair(SshKeyPairArgs.builder()
///                                     .privateKey("xyz")
///                                     .publicKey("abc")
///                                     .build())
///                                 .build())
///                             .build())
///                         .vmSize("Standard_E32ds_v4")
///                         .build())
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("xyz.test.com")
///                     .build())
///                 .build())
///             .environment("NonProd")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///             dbDiskConfiguration: {
///                 diskVolumeConfigurations: {
///                     backup: {
///                         count: 2,
///                         sizeGB: 256,
///                         sku: {
///                             name: azure_native.workloads.DiskSkuName.StandardSSD_LRS,
///                         },
///                     },
///                     "hana/data": {
///                         count: 4,
///                         sizeGB: 128,
///                         sku: {
///                             name: azure_native.workloads.DiskSkuName.Premium_LRS,
///                         },
///                     },
///                     "hana/log": {
///                         count: 3,
///                         sizeGB: 128,
///                         sku: {
///                             name: azure_native.workloads.DiskSkuName.Premium_LRS,
///                         },
///                     },
///                     "hana/shared": {
///                         count: 1,
///                         sizeGB: 256,
///                         sku: {
///                             name: azure_native.workloads.DiskSkuName.StandardSSD_LRS,
///                         },
///                     },
///                     os: {
///                         count: 1,
///                         sizeGB: 64,
///                         sku: {
///                             name: azure_native.workloads.DiskSkuName.StandardSSD_LRS,
///                         },
///                     },
///                     "usr/sap": {
///                         count: 1,
///                         sizeGB: 128,
///                         sku: {
///                             name: azure_native.workloads.DiskSkuName.Premium_LRS,
///                         },
///                     },
///                 },
///             },
///             deploymentType: "SingleServer",
///             networkConfiguration: {
///                 isSecondaryIpEnabled: true,
///             },
///             subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///             virtualMachineConfiguration: {
///                 imageReference: {
///                     offer: "RHEL-SAP",
///                     publisher: "RedHat",
///                     sku: "84sapha-gen2",
///                     version: "latest",
///                 },
///                 osProfile: {
///                     adminUsername: "{your-username}",
///                     osConfiguration: {
///                         disablePasswordAuthentication: true,
///                         osType: "Linux",
///                         sshKeyPair: {
///                             privateKey: "xyz",
///                             publicKey: "abc",
///                         },
///                     },
///                 },
///                 vmSize: "Standard_E32ds_v4",
///             },
///         },
///         osSapConfiguration: {
///             sapFqdn: "xyz.test.com",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.NonProd,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///             "db_disk_configuration": {
///                 "disk_volume_configurations": {
///                     "backup": {
///                         "count": 2,
///                         "size_gb": 256,
///                         "sku": {
///                             "name": azure_native.workloads.DiskSkuName.STANDARD_SS_D_LRS,
///                         },
///                     },
///                     "hana/data": {
///                         "count": 4,
///                         "size_gb": 128,
///                         "sku": {
///                             "name": azure_native.workloads.DiskSkuName.PREMIUM_LRS,
///                         },
///                     },
///                     "hana/log": {
///                         "count": 3,
///                         "size_gb": 128,
///                         "sku": {
///                             "name": azure_native.workloads.DiskSkuName.PREMIUM_LRS,
///                         },
///                     },
///                     "hana/shared": {
///                         "count": 1,
///                         "size_gb": 256,
///                         "sku": {
///                             "name": azure_native.workloads.DiskSkuName.STANDARD_SS_D_LRS,
///                         },
///                     },
///                     "os": {
///                         "count": 1,
///                         "size_gb": 64,
///                         "sku": {
///                             "name": azure_native.workloads.DiskSkuName.STANDARD_SS_D_LRS,
///                         },
///                     },
///                     "usr/sap": {
///                         "count": 1,
///                         "size_gb": 128,
///                         "sku": {
///                             "name": azure_native.workloads.DiskSkuName.PREMIUM_LRS,
///                         },
///                     },
///                 },
///             },
///             "deployment_type": "SingleServer",
///             "network_configuration": {
///                 "is_secondary_ip_enabled": True,
///             },
///             "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///             "virtual_machine_configuration": {
///                 "image_reference": {
///                     "offer": "RHEL-SAP",
///                     "publisher": "RedHat",
///                     "sku": "84sapha-gen2",
///                     "version": "latest",
///                 },
///                 "os_profile": {
///                     "admin_username": "{your-username}",
///                     "os_configuration": {
///                         "disable_password_authentication": True,
///                         "os_type": "Linux",
///                         "ssh_key_pair": {
///                             "private_key": "xyz",
///                             "public_key": "abc",
///                         },
///                     },
///                 },
///                 "vm_size": "Standard_E32ds_v4",
///             },
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "xyz.test.com",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.NON_PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           databaseType: HANA
///           dbDiskConfiguration:
///             diskVolumeConfigurations:
///               backup:
///                 count: 2
///                 sizeGB: 256
///                 sku:
///                   name: StandardSSD_LRS
///               hana/data:
///                 count: 4
///                 sizeGB: 128
///                 sku:
///                   name: Premium_LRS
///               hana/log:
///                 count: 3
///                 sizeGB: 128
///                 sku:
///                   name: Premium_LRS
///               hana/shared:
///                 count: 1
///                 sizeGB: 256
///                 sku:
///                   name: StandardSSD_LRS
///               os:
///                 count: 1
///                 sizeGB: 64
///                 sku:
///                   name: StandardSSD_LRS
///               usr/sap:
///                 count: 1
///                 sizeGB: 128
///                 sku:
///                   name: Premium_LRS
///           deploymentType: SingleServer
///           networkConfiguration:
///             isSecondaryIpEnabled: true
///           subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/dindurkhya-e2etesting/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///           virtualMachineConfiguration:
///             imageReference:
///               offer: RHEL-SAP
///               publisher: RedHat
///               sku: 84sapha-gen2
///               version: latest
///             osProfile:
///               adminUsername: '{your-username}'
///               osConfiguration:
///                 disablePasswordAuthentication: true
///                 osType: Linux
///                 sshKeyPair:
///                   privateKey: xyz
///                   publicKey: abc
///             vmSize: Standard_E32ds_v4
///         osSapConfiguration:
///           sapFqdn: xyz.test.com
///       environment: NonProd
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Infrastructure with OS configuration for Distributed System (Recommended)
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.ThreeTierConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerConfigurationArgs
///                 {
///                     InstanceCount = 6,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E32ds_v4",
///                     },
///                 },
///                 CentralServer = new AzureNative.Workloads.Inputs.CentralServerConfigurationArgs
///                 {
///                     InstanceCount = 1,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E16ds_v4",
///                     },
///                 },
///                 DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseConfigurationArgs
///                 {
///                     DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                     InstanceCount = 1,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_M32ts",
///                     },
///                 },
///                 DeploymentType = "ThreeTier",
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "xyz.test.com",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.Prod,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.ThreeTierConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					ApplicationServer: workloads.ApplicationServerConfiguration{
/// 						InstanceCount: 6,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E32ds_v4",
/// 						},
/// 					},
/// 					CentralServer: workloads.CentralServerConfiguration{
/// 						InstanceCount: 1,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E16ds_v4",
/// 						},
/// 					},
/// 					DatabaseServer: workloads.DatabaseConfiguration{
/// 						DatabaseType:  workloads.SAPDatabaseTypeHANA,
/// 						InstanceCount: 1,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_M32ts",
/// 						},
/// 					},
/// 					DeploymentType: "ThreeTier",
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("xyz.test.com"),
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(ThreeTierConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .applicationServer(ApplicationServerConfigurationArgs.builder()
///                         .instanceCount(6)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E32ds_v4")
///                             .build())
///                         .build())
///                     .centralServer(CentralServerConfigurationArgs.builder()
///                         .instanceCount(1)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E16ds_v4")
///                             .build())
///                         .build())
///                     .databaseServer(DatabaseConfigurationArgs.builder()
///                         .databaseType("HANA")
///                         .instanceCount(1)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_M32ts")
///                             .build())
///                         .build())
///                     .deploymentType("ThreeTier")
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("xyz.test.com")
///                     .build())
///                 .build())
///             .environment("Prod")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             applicationServer: {
///                 instanceCount: 6,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E32ds_v4",
///                 },
///             },
///             centralServer: {
///                 instanceCount: 1,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E16ds_v4",
///                 },
///             },
///             databaseServer: {
///                 databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///                 instanceCount: 1,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_M32ts",
///                 },
///             },
///             deploymentType: "ThreeTier",
///         },
///         osSapConfiguration: {
///             sapFqdn: "xyz.test.com",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.Prod,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "application_server": {
///                 "instance_count": 6,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E32ds_v4",
///                 },
///             },
///             "central_server": {
///                 "instance_count": 1,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E16ds_v4",
///                 },
///             },
///             "database_server": {
///                 "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///                 "instance_count": 1,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_M32ts",
///                 },
///             },
///             "deployment_type": "ThreeTier",
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "xyz.test.com",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           applicationServer:
///             instanceCount: 6
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E32ds_v4
///           centralServer:
///             instanceCount: 1
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E16ds_v4
///           databaseServer:
///             databaseType: HANA
///             instanceCount: 1
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_M32ts
///           deploymentType: ThreeTier
///         osSapConfiguration:
///           sapFqdn: xyz.test.com
///       environment: Prod
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Infrastructure with OS configuration for HA System with Availability Set (Recommended)
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.ThreeTierConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerConfigurationArgs
///                 {
///                     InstanceCount = 6,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E32ds_v4",
///                     },
///                 },
///                 CentralServer = new AzureNative.Workloads.Inputs.CentralServerConfigurationArgs
///                 {
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E16ds_v4",
///                     },
///                 },
///                 DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseConfigurationArgs
///                 {
///                     DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_M32ts",
///                     },
///                 },
///                 DeploymentType = "ThreeTier",
///                 HighAvailabilityConfig = new AzureNative.Workloads.Inputs.HighAvailabilityConfigurationArgs
///                 {
///                     HighAvailabilityType = AzureNative.Workloads.SAPHighAvailabilityType.AvailabilitySet,
///                 },
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "xyz.test.com",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.Prod,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.ThreeTierConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					ApplicationServer: workloads.ApplicationServerConfiguration{
/// 						InstanceCount: 6,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E32ds_v4",
/// 						},
/// 					},
/// 					CentralServer: workloads.CentralServerConfiguration{
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E16ds_v4",
/// 						},
/// 					},
/// 					DatabaseServer: workloads.DatabaseConfiguration{
/// 						DatabaseType:  workloads.SAPDatabaseTypeHANA,
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_M32ts",
/// 						},
/// 					},
/// 					DeploymentType: "ThreeTier",
/// 					HighAvailabilityConfig: workloads.HighAvailabilityConfiguration{
/// 						HighAvailabilityType: workloads.SAPHighAvailabilityTypeAvailabilitySet,
/// 					},
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("xyz.test.com"),
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(ThreeTierConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .applicationServer(ApplicationServerConfigurationArgs.builder()
///                         .instanceCount(6)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E32ds_v4")
///                             .build())
///                         .build())
///                     .centralServer(CentralServerConfigurationArgs.builder()
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E16ds_v4")
///                             .build())
///                         .build())
///                     .databaseServer(DatabaseConfigurationArgs.builder()
///                         .databaseType("HANA")
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_M32ts")
///                             .build())
///                         .build())
///                     .deploymentType("ThreeTier")
///                     .highAvailabilityConfig(HighAvailabilityConfigurationArgs.builder()
///                         .highAvailabilityType("AvailabilitySet")
///                         .build())
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("xyz.test.com")
///                     .build())
///                 .build())
///             .environment("Prod")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             applicationServer: {
///                 instanceCount: 6,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E32ds_v4",
///                 },
///             },
///             centralServer: {
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E16ds_v4",
///                 },
///             },
///             databaseServer: {
///                 databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_M32ts",
///                 },
///             },
///             deploymentType: "ThreeTier",
///             highAvailabilityConfig: {
///                 highAvailabilityType: azure_native.workloads.SAPHighAvailabilityType.AvailabilitySet,
///             },
///         },
///         osSapConfiguration: {
///             sapFqdn: "xyz.test.com",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.Prod,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "application_server": {
///                 "instance_count": 6,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E32ds_v4",
///                 },
///             },
///             "central_server": {
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E16ds_v4",
///                 },
///             },
///             "database_server": {
///                 "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_M32ts",
///                 },
///             },
///             "deployment_type": "ThreeTier",
///             "high_availability_config": {
///                 "high_availability_type": azure_native.workloads.SAPHighAvailabilityType.AVAILABILITY_SET,
///             },
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "xyz.test.com",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           applicationServer:
///             instanceCount: 6
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E32ds_v4
///           centralServer:
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E16ds_v4
///           databaseServer:
///             databaseType: HANA
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_M32ts
///           deploymentType: ThreeTier
///           highAvailabilityConfig:
///             highAvailabilityType: AvailabilitySet
///         osSapConfiguration:
///           sapFqdn: xyz.test.com
///       environment: Prod
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Infrastructure with OS configuration for HA System with Availability Zone (Recommended)
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.ThreeTierConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerConfigurationArgs
///                 {
///                     InstanceCount = 6,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E32ds_v4",
///                     },
///                 },
///                 CentralServer = new AzureNative.Workloads.Inputs.CentralServerConfigurationArgs
///                 {
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E16ds_v4",
///                     },
///                 },
///                 DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseConfigurationArgs
///                 {
///                     DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_M32ts",
///                     },
///                 },
///                 DeploymentType = "ThreeTier",
///                 HighAvailabilityConfig = new AzureNative.Workloads.Inputs.HighAvailabilityConfigurationArgs
///                 {
///                     HighAvailabilityType = AzureNative.Workloads.SAPHighAvailabilityType.AvailabilityZone,
///                 },
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "xyz.test.com",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.Prod,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.ThreeTierConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					ApplicationServer: workloads.ApplicationServerConfiguration{
/// 						InstanceCount: 6,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E32ds_v4",
/// 						},
/// 					},
/// 					CentralServer: workloads.CentralServerConfiguration{
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E16ds_v4",
/// 						},
/// 					},
/// 					DatabaseServer: workloads.DatabaseConfiguration{
/// 						DatabaseType:  workloads.SAPDatabaseTypeHANA,
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_M32ts",
/// 						},
/// 					},
/// 					DeploymentType: "ThreeTier",
/// 					HighAvailabilityConfig: workloads.HighAvailabilityConfiguration{
/// 						HighAvailabilityType: workloads.SAPHighAvailabilityTypeAvailabilityZone,
/// 					},
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("xyz.test.com"),
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(ThreeTierConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .applicationServer(ApplicationServerConfigurationArgs.builder()
///                         .instanceCount(6)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E32ds_v4")
///                             .build())
///                         .build())
///                     .centralServer(CentralServerConfigurationArgs.builder()
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E16ds_v4")
///                             .build())
///                         .build())
///                     .databaseServer(DatabaseConfigurationArgs.builder()
///                         .databaseType("HANA")
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_M32ts")
///                             .build())
///                         .build())
///                     .deploymentType("ThreeTier")
///                     .highAvailabilityConfig(HighAvailabilityConfigurationArgs.builder()
///                         .highAvailabilityType("AvailabilityZone")
///                         .build())
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("xyz.test.com")
///                     .build())
///                 .build())
///             .environment("Prod")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             applicationServer: {
///                 instanceCount: 6,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E32ds_v4",
///                 },
///             },
///             centralServer: {
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E16ds_v4",
///                 },
///             },
///             databaseServer: {
///                 databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_M32ts",
///                 },
///             },
///             deploymentType: "ThreeTier",
///             highAvailabilityConfig: {
///                 highAvailabilityType: azure_native.workloads.SAPHighAvailabilityType.AvailabilityZone,
///             },
///         },
///         osSapConfiguration: {
///             sapFqdn: "xyz.test.com",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.Prod,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "application_server": {
///                 "instance_count": 6,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E32ds_v4",
///                 },
///             },
///             "central_server": {
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E16ds_v4",
///                 },
///             },
///             "database_server": {
///                 "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_M32ts",
///                 },
///             },
///             "deployment_type": "ThreeTier",
///             "high_availability_config": {
///                 "high_availability_type": azure_native.workloads.SAPHighAvailabilityType.AVAILABILITY_ZONE,
///             },
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "xyz.test.com",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           applicationServer:
///             instanceCount: 6
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E32ds_v4
///           centralServer:
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E16ds_v4
///           databaseServer:
///             databaseType: HANA
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_M32ts
///           deploymentType: ThreeTier
///           highAvailabilityConfig:
///             highAvailabilityType: AvailabilityZone
///         osSapConfiguration:
///           sapFqdn: xyz.test.com
///       environment: Prod
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Infrastructure with OS configuration for Single Server System (Recommended)
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.SingleServerConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                 DeploymentType = "SingleServer",
///                 NetworkConfiguration = new AzureNative.Workloads.Inputs.NetworkConfigurationArgs
///                 {
///                     IsSecondaryIpEnabled = true,
///                 },
///                 SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                 {
///                     ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                     {
///                         Offer = "RHEL-SAP",
///                         Publisher = "RedHat",
///                         Sku = "84sapha-gen2",
///                         Version = "latest",
///                     },
///                     OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                     {
///                         AdminUsername = "{your-username}",
///                         OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                         {
///                             DisablePasswordAuthentication = true,
///                             OsType = "Linux",
///                             SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                             {
///                                 PrivateKey = "xyz",
///                                 PublicKey = "abc",
///                             },
///                         },
///                     },
///                     VmSize = "Standard_E32ds_v4",
///                 },
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "xyz.test.com",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.NonProd,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.SingleServerConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					DatabaseType:     workloads.SAPDatabaseTypeHANA,
/// 					DeploymentType:   "SingleServer",
/// 					NetworkConfiguration: workloads.NetworkConfiguration{
/// 						IsSecondaryIpEnabled: true,
/// 					},
/// 					SubnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 					VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 						ImageReference: workloads.ImageReference{
/// 							Offer:     "RHEL-SAP",
/// 							Publisher: "RedHat",
/// 							Sku:       "84sapha-gen2",
/// 							Version:   "latest",
/// 						},
/// 						OsProfile: workloads.OSProfile{
/// 							AdminUsername: "{your-username}",
/// 							OsConfiguration: workloads.LinuxConfiguration{
/// 								DisablePasswordAuthentication: true,
/// 								OsType:                        "Linux",
/// 								SshKeyPair: workloads.SshKeyPair{
/// 									PrivateKey: "xyz",
/// 									PublicKey:  "abc",
/// 								},
/// 							},
/// 						},
/// 						VmSize: "Standard_E32ds_v4",
/// 					},
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("xyz.test.com"),
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeNonProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(SingleServerConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .databaseType("HANA")
///                     .deploymentType("SingleServer")
///                     .networkConfiguration(NetworkConfigurationArgs.builder()
///                         .isSecondaryIpEnabled(true)
///                         .build())
///                     .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                     .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                         .imageReference(ImageReferenceArgs.builder()
///                             .offer("RHEL-SAP")
///                             .publisher("RedHat")
///                             .sku("84sapha-gen2")
///                             .version("latest")
///                             .build())
///                         .osProfile(OSProfileArgs.builder()
///                             .adminUsername("{your-username}")
///                             .osConfiguration(LinuxConfigurationArgs.builder()
///                                 .disablePasswordAuthentication(true)
///                                 .osType("Linux")
///                                 .sshKeyPair(SshKeyPairArgs.builder()
///                                     .privateKey("xyz")
///                                     .publicKey("abc")
///                                     .build())
///                                 .build())
///                             .build())
///                         .vmSize("Standard_E32ds_v4")
///                         .build())
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("xyz.test.com")
///                     .build())
///                 .build())
///             .environment("NonProd")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///             deploymentType: "SingleServer",
///             networkConfiguration: {
///                 isSecondaryIpEnabled: true,
///             },
///             subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///             virtualMachineConfiguration: {
///                 imageReference: {
///                     offer: "RHEL-SAP",
///                     publisher: "RedHat",
///                     sku: "84sapha-gen2",
///                     version: "latest",
///                 },
///                 osProfile: {
///                     adminUsername: "{your-username}",
///                     osConfiguration: {
///                         disablePasswordAuthentication: true,
///                         osType: "Linux",
///                         sshKeyPair: {
///                             privateKey: "xyz",
///                             publicKey: "abc",
///                         },
///                     },
///                 },
///                 vmSize: "Standard_E32ds_v4",
///             },
///         },
///         osSapConfiguration: {
///             sapFqdn: "xyz.test.com",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.NonProd,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///             "deployment_type": "SingleServer",
///             "network_configuration": {
///                 "is_secondary_ip_enabled": True,
///             },
///             "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///             "virtual_machine_configuration": {
///                 "image_reference": {
///                     "offer": "RHEL-SAP",
///                     "publisher": "RedHat",
///                     "sku": "84sapha-gen2",
///                     "version": "latest",
///                 },
///                 "os_profile": {
///                     "admin_username": "{your-username}",
///                     "os_configuration": {
///                         "disable_password_authentication": True,
///                         "os_type": "Linux",
///                         "ssh_key_pair": {
///                             "private_key": "xyz",
///                             "public_key": "abc",
///                         },
///                     },
///                 },
///                 "vm_size": "Standard_E32ds_v4",
///             },
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "xyz.test.com",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.NON_PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           databaseType: HANA
///           deploymentType: SingleServer
///           networkConfiguration:
///             isSecondaryIpEnabled: true
///           subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///           virtualMachineConfiguration:
///             imageReference:
///               offer: RHEL-SAP
///               publisher: RedHat
///               sku: 84sapha-gen2
///               version: latest
///             osProfile:
///               adminUsername: '{your-username}'
///               osConfiguration:
///                 disablePasswordAuthentication: true
///                 osType: Linux
///                 sshKeyPair:
///                   privateKey: xyz
///                   publicKey: abc
///             vmSize: Standard_E32ds_v4
///         osSapConfiguration:
///           sapFqdn: xyz.test.com
///       environment: NonProd
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Infrastructure with a new SAP Transport Directory Fileshare
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.ThreeTierConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerConfigurationArgs
///                 {
///                     InstanceCount = 6,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E32ds_v4",
///                     },
///                 },
///                 CentralServer = new AzureNative.Workloads.Inputs.CentralServerConfigurationArgs
///                 {
///                     InstanceCount = 1,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E16ds_v4",
///                     },
///                 },
///                 DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseConfigurationArgs
///                 {
///                     DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                     InstanceCount = 1,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_M32ts",
///                     },
///                 },
///                 DeploymentType = "ThreeTier",
///                 StorageConfiguration = new AzureNative.Workloads.Inputs.StorageConfigurationArgs
///                 {
///                     TransportFileShareConfiguration = new AzureNative.Workloads.Inputs.CreateAndMountFileShareConfigurationArgs
///                     {
///                         ConfigurationType = "CreateAndMount",
///                         ResourceGroup = "rgName",
///                         StorageAccountName = "storageName",
///                     },
///                 },
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "xyz.test.com",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.Prod,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.ThreeTierConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					ApplicationServer: workloads.ApplicationServerConfiguration{
/// 						InstanceCount: 6,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E32ds_v4",
/// 						},
/// 					},
/// 					CentralServer: workloads.CentralServerConfiguration{
/// 						InstanceCount: 1,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E16ds_v4",
/// 						},
/// 					},
/// 					DatabaseServer: workloads.DatabaseConfiguration{
/// 						DatabaseType:  workloads.SAPDatabaseTypeHANA,
/// 						InstanceCount: 1,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_M32ts",
/// 						},
/// 					},
/// 					DeploymentType: "ThreeTier",
/// 					StorageConfiguration: workloads.StorageConfiguration{
/// 						TransportFileShareConfiguration: workloads.CreateAndMountFileShareConfiguration{
/// 							ConfigurationType:  "CreateAndMount",
/// 							ResourceGroup:      "rgName",
/// 							StorageAccountName: "storageName",
/// 						},
/// 					},
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("xyz.test.com"),
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(ThreeTierConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .applicationServer(ApplicationServerConfigurationArgs.builder()
///                         .instanceCount(6)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E32ds_v4")
///                             .build())
///                         .build())
///                     .centralServer(CentralServerConfigurationArgs.builder()
///                         .instanceCount(1)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E16ds_v4")
///                             .build())
///                         .build())
///                     .databaseServer(DatabaseConfigurationArgs.builder()
///                         .databaseType("HANA")
///                         .instanceCount(1)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_M32ts")
///                             .build())
///                         .build())
///                     .deploymentType("ThreeTier")
///                     .storageConfiguration(StorageConfigurationArgs.builder()
///                         .transportFileShareConfiguration(CreateAndMountFileShareConfigurationArgs.builder()
///                             .configurationType("CreateAndMount")
///                             .resourceGroup("rgName")
///                             .storageAccountName("storageName")
///                             .build())
///                         .build())
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("xyz.test.com")
///                     .build())
///                 .build())
///             .environment("Prod")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             applicationServer: {
///                 instanceCount: 6,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E32ds_v4",
///                 },
///             },
///             centralServer: {
///                 instanceCount: 1,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E16ds_v4",
///                 },
///             },
///             databaseServer: {
///                 databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///                 instanceCount: 1,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_M32ts",
///                 },
///             },
///             deploymentType: "ThreeTier",
///             storageConfiguration: {
///                 transportFileShareConfiguration: {
///                     configurationType: "CreateAndMount",
///                     resourceGroup: "rgName",
///                     storageAccountName: "storageName",
///                 },
///             },
///         },
///         osSapConfiguration: {
///             sapFqdn: "xyz.test.com",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.Prod,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "application_server": {
///                 "instance_count": 6,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E32ds_v4",
///                 },
///             },
///             "central_server": {
///                 "instance_count": 1,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E16ds_v4",
///                 },
///             },
///             "database_server": {
///                 "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///                 "instance_count": 1,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_M32ts",
///                 },
///             },
///             "deployment_type": "ThreeTier",
///             "storage_configuration": {
///                 "transport_file_share_configuration": {
///                     "configuration_type": "CreateAndMount",
///                     "resource_group": "rgName",
///                     "storage_account_name": "storageName",
///                 },
///             },
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "xyz.test.com",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           applicationServer:
///             instanceCount: 6
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E32ds_v4
///           centralServer:
///             instanceCount: 1
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E16ds_v4
///           databaseServer:
///             databaseType: HANA
///             instanceCount: 1
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_M32ts
///           deploymentType: ThreeTier
///           storageConfiguration:
///             transportFileShareConfiguration:
///               configurationType: CreateAndMount
///               resourceGroup: rgName
///               storageAccountName: storageName
///         osSapConfiguration:
///           sapFqdn: xyz.test.com
///       environment: Prod
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Infrastructure with an existing SAP Transport Directory Fileshare
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.ThreeTierConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerConfigurationArgs
///                 {
///                     InstanceCount = 6,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E32ds_v4",
///                     },
///                 },
///                 CentralServer = new AzureNative.Workloads.Inputs.CentralServerConfigurationArgs
///                 {
///                     InstanceCount = 1,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E16ds_v4",
///                     },
///                 },
///                 DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseConfigurationArgs
///                 {
///                     DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                     InstanceCount = 1,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_M32ts",
///                     },
///                 },
///                 DeploymentType = "ThreeTier",
///                 StorageConfiguration = new AzureNative.Workloads.Inputs.StorageConfigurationArgs
///                 {
///                     TransportFileShareConfiguration = new AzureNative.Workloads.Inputs.MountFileShareConfigurationArgs
///                     {
///                         ConfigurationType = "Mount",
///                         Id = "/subscriptions/49d64d54-e888-4c46-a868-1936802b762c/resourceGroups/testrg/providers/Microsoft.Network/privateEndpoints/endpoint",
///                         PrivateEndpointId = "/subscriptions/49d64d54-e888-4c46-a868-1936802b762c/resourceGroups/testrg/providers/Microsoft.Network/privateEndpoints/endpoint",
///                     },
///                 },
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "xyz.test.com",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.Prod,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.ThreeTierConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					ApplicationServer: workloads.ApplicationServerConfiguration{
/// 						InstanceCount: 6,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E32ds_v4",
/// 						},
/// 					},
/// 					CentralServer: workloads.CentralServerConfiguration{
/// 						InstanceCount: 1,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E16ds_v4",
/// 						},
/// 					},
/// 					DatabaseServer: workloads.DatabaseConfiguration{
/// 						DatabaseType:  workloads.SAPDatabaseTypeHANA,
/// 						InstanceCount: 1,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_M32ts",
/// 						},
/// 					},
/// 					DeploymentType: "ThreeTier",
/// 					StorageConfiguration: workloads.StorageConfiguration{
/// 						TransportFileShareConfiguration: workloads.MountFileShareConfiguration{
/// 							ConfigurationType: "Mount",
/// 							Id:                "/subscriptions/49d64d54-e888-4c46-a868-1936802b762c/resourceGroups/testrg/providers/Microsoft.Network/privateEndpoints/endpoint",
/// 							PrivateEndpointId: "/subscriptions/49d64d54-e888-4c46-a868-1936802b762c/resourceGroups/testrg/providers/Microsoft.Network/privateEndpoints/endpoint",
/// 						},
/// 					},
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("xyz.test.com"),
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(ThreeTierConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .applicationServer(ApplicationServerConfigurationArgs.builder()
///                         .instanceCount(6)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E32ds_v4")
///                             .build())
///                         .build())
///                     .centralServer(CentralServerConfigurationArgs.builder()
///                         .instanceCount(1)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E16ds_v4")
///                             .build())
///                         .build())
///                     .databaseServer(DatabaseConfigurationArgs.builder()
///                         .databaseType("HANA")
///                         .instanceCount(1)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_M32ts")
///                             .build())
///                         .build())
///                     .deploymentType("ThreeTier")
///                     .storageConfiguration(StorageConfigurationArgs.builder()
///                         .transportFileShareConfiguration(MountFileShareConfigurationArgs.builder()
///                             .configurationType("Mount")
///                             .id("/subscriptions/49d64d54-e888-4c46-a868-1936802b762c/resourceGroups/testrg/providers/Microsoft.Network/privateEndpoints/endpoint")
///                             .privateEndpointId("/subscriptions/49d64d54-e888-4c46-a868-1936802b762c/resourceGroups/testrg/providers/Microsoft.Network/privateEndpoints/endpoint")
///                             .build())
///                         .build())
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("xyz.test.com")
///                     .build())
///                 .build())
///             .environment("Prod")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             applicationServer: {
///                 instanceCount: 6,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E32ds_v4",
///                 },
///             },
///             centralServer: {
///                 instanceCount: 1,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E16ds_v4",
///                 },
///             },
///             databaseServer: {
///                 databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///                 instanceCount: 1,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_M32ts",
///                 },
///             },
///             deploymentType: "ThreeTier",
///             storageConfiguration: {
///                 transportFileShareConfiguration: {
///                     configurationType: "Mount",
///                     id: "/subscriptions/49d64d54-e888-4c46-a868-1936802b762c/resourceGroups/testrg/providers/Microsoft.Network/privateEndpoints/endpoint",
///                     privateEndpointId: "/subscriptions/49d64d54-e888-4c46-a868-1936802b762c/resourceGroups/testrg/providers/Microsoft.Network/privateEndpoints/endpoint",
///                 },
///             },
///         },
///         osSapConfiguration: {
///             sapFqdn: "xyz.test.com",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.Prod,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "application_server": {
///                 "instance_count": 6,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E32ds_v4",
///                 },
///             },
///             "central_server": {
///                 "instance_count": 1,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E16ds_v4",
///                 },
///             },
///             "database_server": {
///                 "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///                 "instance_count": 1,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_M32ts",
///                 },
///             },
///             "deployment_type": "ThreeTier",
///             "storage_configuration": {
///                 "transport_file_share_configuration": {
///                     "configuration_type": "Mount",
///                     "id": "/subscriptions/49d64d54-e888-4c46-a868-1936802b762c/resourceGroups/testrg/providers/Microsoft.Network/privateEndpoints/endpoint",
///                     "private_endpoint_id": "/subscriptions/49d64d54-e888-4c46-a868-1936802b762c/resourceGroups/testrg/providers/Microsoft.Network/privateEndpoints/endpoint",
///                 },
///             },
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "xyz.test.com",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           applicationServer:
///             instanceCount: 6
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E32ds_v4
///           centralServer:
///             instanceCount: 1
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E16ds_v4
///           databaseServer:
///             databaseType: HANA
///             instanceCount: 1
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_M32ts
///           deploymentType: ThreeTier
///           storageConfiguration:
///             transportFileShareConfiguration:
///               configurationType: Mount
///               id: /subscriptions/49d64d54-e888-4c46-a868-1936802b762c/resourceGroups/testrg/providers/Microsoft.Network/privateEndpoints/endpoint
///               privateEndpointId: /subscriptions/49d64d54-e888-4c46-a868-1936802b762c/resourceGroups/testrg/providers/Microsoft.Network/privateEndpoints/endpoint
///         osSapConfiguration:
///           sapFqdn: xyz.test.com
///       environment: Prod
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Infrastructure without a SAP Transport Directory Fileshare
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.ThreeTierConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerConfigurationArgs
///                 {
///                     InstanceCount = 6,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E32ds_v4",
///                     },
///                 },
///                 CentralServer = new AzureNative.Workloads.Inputs.CentralServerConfigurationArgs
///                 {
///                     InstanceCount = 1,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E16ds_v4",
///                     },
///                 },
///                 DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseConfigurationArgs
///                 {
///                     DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                     InstanceCount = 1,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_M32ts",
///                     },
///                 },
///                 DeploymentType = "ThreeTier",
///                 StorageConfiguration = new AzureNative.Workloads.Inputs.StorageConfigurationArgs
///                 {
///                     TransportFileShareConfiguration = new AzureNative.Workloads.Inputs.SkipFileShareConfigurationArgs
///                     {
///                         ConfigurationType = "Skip",
///                     },
///                 },
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "xyz.test.com",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.Prod,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.ThreeTierConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					ApplicationServer: workloads.ApplicationServerConfiguration{
/// 						InstanceCount: 6,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E32ds_v4",
/// 						},
/// 					},
/// 					CentralServer: workloads.CentralServerConfiguration{
/// 						InstanceCount: 1,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E16ds_v4",
/// 						},
/// 					},
/// 					DatabaseServer: workloads.DatabaseConfiguration{
/// 						DatabaseType:  workloads.SAPDatabaseTypeHANA,
/// 						InstanceCount: 1,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_M32ts",
/// 						},
/// 					},
/// 					DeploymentType: "ThreeTier",
/// 					StorageConfiguration: workloads.StorageConfiguration{
/// 						TransportFileShareConfiguration: workloads.SkipFileShareConfiguration{
/// 							ConfigurationType: "Skip",
/// 						},
/// 					},
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("xyz.test.com"),
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(ThreeTierConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .applicationServer(ApplicationServerConfigurationArgs.builder()
///                         .instanceCount(6)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E32ds_v4")
///                             .build())
///                         .build())
///                     .centralServer(CentralServerConfigurationArgs.builder()
///                         .instanceCount(1)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E16ds_v4")
///                             .build())
///                         .build())
///                     .databaseServer(DatabaseConfigurationArgs.builder()
///                         .databaseType("HANA")
///                         .instanceCount(1)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_M32ts")
///                             .build())
///                         .build())
///                     .deploymentType("ThreeTier")
///                     .storageConfiguration(StorageConfigurationArgs.builder()
///                         .transportFileShareConfiguration(SkipFileShareConfigurationArgs.builder()
///                             .configurationType("Skip")
///                             .build())
///                         .build())
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("xyz.test.com")
///                     .build())
///                 .build())
///             .environment("Prod")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             applicationServer: {
///                 instanceCount: 6,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E32ds_v4",
///                 },
///             },
///             centralServer: {
///                 instanceCount: 1,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E16ds_v4",
///                 },
///             },
///             databaseServer: {
///                 databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///                 instanceCount: 1,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_M32ts",
///                 },
///             },
///             deploymentType: "ThreeTier",
///             storageConfiguration: {
///                 transportFileShareConfiguration: {
///                     configurationType: "Skip",
///                 },
///             },
///         },
///         osSapConfiguration: {
///             sapFqdn: "xyz.test.com",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.Prod,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "application_server": {
///                 "instance_count": 6,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E32ds_v4",
///                 },
///             },
///             "central_server": {
///                 "instance_count": 1,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E16ds_v4",
///                 },
///             },
///             "database_server": {
///                 "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///                 "instance_count": 1,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_M32ts",
///                 },
///             },
///             "deployment_type": "ThreeTier",
///             "storage_configuration": {
///                 "transport_file_share_configuration": {
///                     "configuration_type": "Skip",
///                 },
///             },
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "xyz.test.com",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           applicationServer:
///             instanceCount: 6
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E32ds_v4
///           centralServer:
///             instanceCount: 1
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E16ds_v4
///           databaseServer:
///             databaseType: HANA
///             instanceCount: 1
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_M32ts
///           deploymentType: ThreeTier
///           storageConfiguration:
///             transportFileShareConfiguration:
///               configurationType: Skip
///         osSapConfiguration:
///           sapFqdn: xyz.test.com
///       environment: Prod
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Detect SAP Software Installation on a Distributed System
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.ThreeTierConfigurationArgs
///             {
///                 AppResourceGroup = "{{resourcegrp}}",
///                 ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerConfigurationArgs
///                 {
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP-HA",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "azureuser",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "{{privateKey}}",
///                                     PublicKey = "{{sshkey}}",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E4ds_v4",
///                     },
///                 },
///                 CentralServer = new AzureNative.Workloads.Inputs.CentralServerConfigurationArgs
///                 {
///                     InstanceCount = 1,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP-HA",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "azureuser",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "{{privateKey}}",
///                                     PublicKey = "{{sshkey}}",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E4ds_v4",
///                     },
///                 },
///                 DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseConfigurationArgs
///                 {
///                     InstanceCount = 1,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP-HA",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "azureuser",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "{{privateKey}}",
///                                     PublicKey = "{{sshkey}}",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_M32ts",
///                     },
///                 },
///                 DeploymentType = "ThreeTier",
///                 NetworkConfiguration = new AzureNative.Workloads.Inputs.NetworkConfigurationArgs
///                 {
///                     IsSecondaryIpEnabled = true,
///                 },
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "sap.bpaas.com",
///             },
///             SoftwareConfiguration = new AzureNative.Workloads.Inputs.ExternalInstallationSoftwareConfigurationArgs
///             {
///                 CentralServerVmId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
///                 SoftwareInstallationType = "External",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.Prod,
///         Location = "eastus2",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags =
///         {
///             { "created by", "azureuser" },
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.ThreeTierConfiguration{
/// 					AppResourceGroup: "{{resourcegrp}}",
/// 					ApplicationServer: workloads.ApplicationServerConfiguration{
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP-HA",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "azureuser",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "{{privateKey}}",
/// 										PublicKey:  "{{sshkey}}",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E4ds_v4",
/// 						},
/// 					},
/// 					CentralServer: workloads.CentralServerConfiguration{
/// 						InstanceCount: 1,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP-HA",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "azureuser",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "{{privateKey}}",
/// 										PublicKey:  "{{sshkey}}",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E4ds_v4",
/// 						},
/// 					},
/// 					DatabaseServer: workloads.DatabaseConfiguration{
/// 						InstanceCount: 1,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP-HA",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "azureuser",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "{{privateKey}}",
/// 										PublicKey:  "{{sshkey}}",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_M32ts",
/// 						},
/// 					},
/// 					DeploymentType: "ThreeTier",
/// 					NetworkConfiguration: workloads.NetworkConfiguration{
/// 						IsSecondaryIpEnabled: true,
/// 					},
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("sap.bpaas.com"),
/// 				},
/// 				SoftwareConfiguration: workloads.ExternalInstallationSoftwareConfiguration{
/// 					CentralServerVmId:        "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
/// 					SoftwareInstallationType: "External",
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeProd),
/// 			Location:               pulumi.String("eastus2"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags: pulumi.StringMap{
/// 				"created by": pulumi.String("azureuser"),
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(ThreeTierConfigurationArgs.builder()
///                     .appResourceGroup("{{resourcegrp}}")
///                     .applicationServer(ApplicationServerConfigurationArgs.builder()
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP-HA")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("azureuser")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("{{privateKey}}")
///                                         .publicKey("{{sshkey}}")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E4ds_v4")
///                             .build())
///                         .build())
///                     .centralServer(CentralServerConfigurationArgs.builder()
///                         .instanceCount(1)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP-HA")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("azureuser")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("{{privateKey}}")
///                                         .publicKey("{{sshkey}}")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E4ds_v4")
///                             .build())
///                         .build())
///                     .databaseServer(DatabaseConfigurationArgs.builder()
///                         .instanceCount(1)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP-HA")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("azureuser")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("{{privateKey}}")
///                                         .publicKey("{{sshkey}}")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_M32ts")
///                             .build())
///                         .build())
///                     .deploymentType("ThreeTier")
///                     .networkConfiguration(NetworkConfigurationArgs.builder()
///                         .isSecondaryIpEnabled(true)
///                         .build())
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("sap.bpaas.com")
///                     .build())
///                 .softwareConfiguration(ExternalInstallationSoftwareConfigurationArgs.builder()
///                     .centralServerVmId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0")
///                     .softwareInstallationType("External")
///                     .build())
///                 .build())
///             .environment("Prod")
///             .location("eastus2")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.of("created by", "azureuser"))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "{{resourcegrp}}",
///             applicationServer: {
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP-HA",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "azureuser",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "{{privateKey}}",
///                                 publicKey: "{{sshkey}}",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E4ds_v4",
///                 },
///             },
///             centralServer: {
///                 instanceCount: 1,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP-HA",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "azureuser",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "{{privateKey}}",
///                                 publicKey: "{{sshkey}}",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E4ds_v4",
///                 },
///             },
///             databaseServer: {
///                 instanceCount: 1,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP-HA",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "azureuser",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "{{privateKey}}",
///                                 publicKey: "{{sshkey}}",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_M32ts",
///                 },
///             },
///             deploymentType: "ThreeTier",
///             networkConfiguration: {
///                 isSecondaryIpEnabled: true,
///             },
///         },
///         osSapConfiguration: {
///             sapFqdn: "sap.bpaas.com",
///         },
///         softwareConfiguration: {
///             centralServerVmId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
///             softwareInstallationType: "External",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.Prod,
///     location: "eastus2",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {
///         "created by": "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "{{resourcegrp}}",
///             "application_server": {
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP-HA",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "azureuser",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "{{privateKey}}",
///                                 "public_key": "{{sshkey}}",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E4ds_v4",
///                 },
///             },
///             "central_server": {
///                 "instance_count": 1,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP-HA",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "azureuser",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "{{privateKey}}",
///                                 "public_key": "{{sshkey}}",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E4ds_v4",
///                 },
///             },
///             "database_server": {
///                 "instance_count": 1,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP-HA",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "azureuser",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "{{privateKey}}",
///                                 "public_key": "{{sshkey}}",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_M32ts",
///                 },
///             },
///             "deployment_type": "ThreeTier",
///             "network_configuration": {
///                 "is_secondary_ip_enabled": True,
///             },
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "sap.bpaas.com",
///         },
///         "software_configuration": {
///             "central_server_vm_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
///             "software_installation_type": "External",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.PROD,
///     location="eastus2",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={
///         "created by": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: '{{resourcegrp}}'
///           applicationServer:
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP-HA
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: azureuser
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: '{{privateKey}}'
///                     publicKey: '{{sshkey}}'
///               vmSize: Standard_E4ds_v4
///           centralServer:
///             instanceCount: 1
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP-HA
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: azureuser
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: '{{privateKey}}'
///                     publicKey: '{{sshkey}}'
///               vmSize: Standard_E4ds_v4
///           databaseServer:
///             instanceCount: 1
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP-HA
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: azureuser
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: '{{privateKey}}'
///                     publicKey: '{{sshkey}}'
///               vmSize: Standard_M32ts
///           deploymentType: ThreeTier
///           networkConfiguration:
///             isSecondaryIpEnabled: true
///         osSapConfiguration:
///           sapFqdn: sap.bpaas.com
///         softwareConfiguration:
///           centralServerVmId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0
///           softwareInstallationType: External
///       environment: Prod
///       location: eastus2
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags:
///         created by: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Detect SAP Software Installation on a Single Server System
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.SingleServerConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                 DeploymentType = "SingleServer",
///                 NetworkConfiguration = new AzureNative.Workloads.Inputs.NetworkConfigurationArgs
///                 {
///                     IsSecondaryIpEnabled = true,
///                 },
///                 SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                 {
///                     ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                     {
///                         Offer = "RHEL-SAP-HA",
///                         Publisher = "RedHat",
///                         Sku = "84sapha-gen2",
///                         Version = "latest",
///                     },
///                     OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                     {
///                         AdminUsername = "{your-username}",
///                         OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                         {
///                             DisablePasswordAuthentication = true,
///                             OsType = "Linux",
///                             SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                             {
///                                 PrivateKey = "xyz",
///                                 PublicKey = "abc",
///                             },
///                         },
///                     },
///                     VmSize = "Standard_E32ds_v4",
///                 },
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "xyz.test.com",
///             },
///             SoftwareConfiguration = new AzureNative.Workloads.Inputs.ExternalInstallationSoftwareConfigurationArgs
///             {
///                 CentralServerVmId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
///                 SoftwareInstallationType = "External",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.NonProd,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.SingleServerConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					DatabaseType:     workloads.SAPDatabaseTypeHANA,
/// 					DeploymentType:   "SingleServer",
/// 					NetworkConfiguration: workloads.NetworkConfiguration{
/// 						IsSecondaryIpEnabled: true,
/// 					},
/// 					SubnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 					VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 						ImageReference: workloads.ImageReference{
/// 							Offer:     "RHEL-SAP-HA",
/// 							Publisher: "RedHat",
/// 							Sku:       "84sapha-gen2",
/// 							Version:   "latest",
/// 						},
/// 						OsProfile: workloads.OSProfile{
/// 							AdminUsername: "{your-username}",
/// 							OsConfiguration: workloads.LinuxConfiguration{
/// 								DisablePasswordAuthentication: true,
/// 								OsType:                        "Linux",
/// 								SshKeyPair: workloads.SshKeyPair{
/// 									PrivateKey: "xyz",
/// 									PublicKey:  "abc",
/// 								},
/// 							},
/// 						},
/// 						VmSize: "Standard_E32ds_v4",
/// 					},
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("xyz.test.com"),
/// 				},
/// 				SoftwareConfiguration: workloads.ExternalInstallationSoftwareConfiguration{
/// 					CentralServerVmId:        "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
/// 					SoftwareInstallationType: "External",
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeNonProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(SingleServerConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .databaseType("HANA")
///                     .deploymentType("SingleServer")
///                     .networkConfiguration(NetworkConfigurationArgs.builder()
///                         .isSecondaryIpEnabled(true)
///                         .build())
///                     .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                     .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                         .imageReference(ImageReferenceArgs.builder()
///                             .offer("RHEL-SAP-HA")
///                             .publisher("RedHat")
///                             .sku("84sapha-gen2")
///                             .version("latest")
///                             .build())
///                         .osProfile(OSProfileArgs.builder()
///                             .adminUsername("{your-username}")
///                             .osConfiguration(LinuxConfigurationArgs.builder()
///                                 .disablePasswordAuthentication(true)
///                                 .osType("Linux")
///                                 .sshKeyPair(SshKeyPairArgs.builder()
///                                     .privateKey("xyz")
///                                     .publicKey("abc")
///                                     .build())
///                                 .build())
///                             .build())
///                         .vmSize("Standard_E32ds_v4")
///                         .build())
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("xyz.test.com")
///                     .build())
///                 .softwareConfiguration(ExternalInstallationSoftwareConfigurationArgs.builder()
///                     .centralServerVmId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0")
///                     .softwareInstallationType("External")
///                     .build())
///                 .build())
///             .environment("NonProd")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///             deploymentType: "SingleServer",
///             networkConfiguration: {
///                 isSecondaryIpEnabled: true,
///             },
///             subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///             virtualMachineConfiguration: {
///                 imageReference: {
///                     offer: "RHEL-SAP-HA",
///                     publisher: "RedHat",
///                     sku: "84sapha-gen2",
///                     version: "latest",
///                 },
///                 osProfile: {
///                     adminUsername: "{your-username}",
///                     osConfiguration: {
///                         disablePasswordAuthentication: true,
///                         osType: "Linux",
///                         sshKeyPair: {
///                             privateKey: "xyz",
///                             publicKey: "abc",
///                         },
///                     },
///                 },
///                 vmSize: "Standard_E32ds_v4",
///             },
///         },
///         osSapConfiguration: {
///             sapFqdn: "xyz.test.com",
///         },
///         softwareConfiguration: {
///             centralServerVmId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
///             softwareInstallationType: "External",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.NonProd,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///             "deployment_type": "SingleServer",
///             "network_configuration": {
///                 "is_secondary_ip_enabled": True,
///             },
///             "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///             "virtual_machine_configuration": {
///                 "image_reference": {
///                     "offer": "RHEL-SAP-HA",
///                     "publisher": "RedHat",
///                     "sku": "84sapha-gen2",
///                     "version": "latest",
///                 },
///                 "os_profile": {
///                     "admin_username": "{your-username}",
///                     "os_configuration": {
///                         "disable_password_authentication": True,
///                         "os_type": "Linux",
///                         "ssh_key_pair": {
///                             "private_key": "xyz",
///                             "public_key": "abc",
///                         },
///                     },
///                 },
///                 "vm_size": "Standard_E32ds_v4",
///             },
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "xyz.test.com",
///         },
///         "software_configuration": {
///             "central_server_vm_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
///             "software_installation_type": "External",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.NON_PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           databaseType: HANA
///           deploymentType: SingleServer
///           networkConfiguration:
///             isSecondaryIpEnabled: true
///           subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///           virtualMachineConfiguration:
///             imageReference:
///               offer: RHEL-SAP-HA
///               publisher: RedHat
///               sku: 84sapha-gen2
///               version: latest
///             osProfile:
///               adminUsername: '{your-username}'
///               osConfiguration:
///                 disablePasswordAuthentication: true
///                 osType: Linux
///                 sshKeyPair:
///                   privateKey: xyz
///                   publicKey: abc
///             vmSize: Standard_E32ds_v4
///         osSapConfiguration:
///           sapFqdn: xyz.test.com
///         softwareConfiguration:
///           centralServerVmId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0
///           softwareInstallationType: External
///       environment: NonProd
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Detect SAP Software Installation on an HA System with Availability Set
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.ThreeTierConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerConfigurationArgs
///                 {
///                     InstanceCount = 6,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP-HA",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E32ds_v4",
///                     },
///                 },
///                 CentralServer = new AzureNative.Workloads.Inputs.CentralServerConfigurationArgs
///                 {
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP-HA",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E16ds_v4",
///                     },
///                 },
///                 DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseConfigurationArgs
///                 {
///                     DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP-HA",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_M32ts",
///                     },
///                 },
///                 DeploymentType = "ThreeTier",
///                 HighAvailabilityConfig = new AzureNative.Workloads.Inputs.HighAvailabilityConfigurationArgs
///                 {
///                     HighAvailabilityType = AzureNative.Workloads.SAPHighAvailabilityType.AvailabilitySet,
///                 },
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "xyz.test.com",
///             },
///             SoftwareConfiguration = new AzureNative.Workloads.Inputs.ExternalInstallationSoftwareConfigurationArgs
///             {
///                 CentralServerVmId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
///                 SoftwareInstallationType = "External",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.Prod,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.ThreeTierConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					ApplicationServer: workloads.ApplicationServerConfiguration{
/// 						InstanceCount: 6,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP-HA",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E32ds_v4",
/// 						},
/// 					},
/// 					CentralServer: workloads.CentralServerConfiguration{
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP-HA",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E16ds_v4",
/// 						},
/// 					},
/// 					DatabaseServer: workloads.DatabaseConfiguration{
/// 						DatabaseType:  workloads.SAPDatabaseTypeHANA,
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP-HA",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_M32ts",
/// 						},
/// 					},
/// 					DeploymentType: "ThreeTier",
/// 					HighAvailabilityConfig: workloads.HighAvailabilityConfiguration{
/// 						HighAvailabilityType: workloads.SAPHighAvailabilityTypeAvailabilitySet,
/// 					},
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("xyz.test.com"),
/// 				},
/// 				SoftwareConfiguration: workloads.ExternalInstallationSoftwareConfiguration{
/// 					CentralServerVmId:        "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
/// 					SoftwareInstallationType: "External",
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(ThreeTierConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .applicationServer(ApplicationServerConfigurationArgs.builder()
///                         .instanceCount(6)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP-HA")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E32ds_v4")
///                             .build())
///                         .build())
///                     .centralServer(CentralServerConfigurationArgs.builder()
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP-HA")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E16ds_v4")
///                             .build())
///                         .build())
///                     .databaseServer(DatabaseConfigurationArgs.builder()
///                         .databaseType("HANA")
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP-HA")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_M32ts")
///                             .build())
///                         .build())
///                     .deploymentType("ThreeTier")
///                     .highAvailabilityConfig(HighAvailabilityConfigurationArgs.builder()
///                         .highAvailabilityType("AvailabilitySet")
///                         .build())
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("xyz.test.com")
///                     .build())
///                 .softwareConfiguration(ExternalInstallationSoftwareConfigurationArgs.builder()
///                     .centralServerVmId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0")
///                     .softwareInstallationType("External")
///                     .build())
///                 .build())
///             .environment("Prod")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             applicationServer: {
///                 instanceCount: 6,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP-HA",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E32ds_v4",
///                 },
///             },
///             centralServer: {
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP-HA",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E16ds_v4",
///                 },
///             },
///             databaseServer: {
///                 databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP-HA",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_M32ts",
///                 },
///             },
///             deploymentType: "ThreeTier",
///             highAvailabilityConfig: {
///                 highAvailabilityType: azure_native.workloads.SAPHighAvailabilityType.AvailabilitySet,
///             },
///         },
///         osSapConfiguration: {
///             sapFqdn: "xyz.test.com",
///         },
///         softwareConfiguration: {
///             centralServerVmId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
///             softwareInstallationType: "External",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.Prod,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "application_server": {
///                 "instance_count": 6,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP-HA",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E32ds_v4",
///                 },
///             },
///             "central_server": {
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP-HA",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E16ds_v4",
///                 },
///             },
///             "database_server": {
///                 "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP-HA",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_M32ts",
///                 },
///             },
///             "deployment_type": "ThreeTier",
///             "high_availability_config": {
///                 "high_availability_type": azure_native.workloads.SAPHighAvailabilityType.AVAILABILITY_SET,
///             },
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "xyz.test.com",
///         },
///         "software_configuration": {
///             "central_server_vm_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
///             "software_installation_type": "External",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           applicationServer:
///             instanceCount: 6
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP-HA
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E32ds_v4
///           centralServer:
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP-HA
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E16ds_v4
///           databaseServer:
///             databaseType: HANA
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP-HA
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_M32ts
///           deploymentType: ThreeTier
///           highAvailabilityConfig:
///             highAvailabilityType: AvailabilitySet
///         osSapConfiguration:
///           sapFqdn: xyz.test.com
///         softwareConfiguration:
///           centralServerVmId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0
///           softwareInstallationType: External
///       environment: Prod
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Detect SAP Software Installation on an HA System with Availability Zone
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.ThreeTierConfigurationArgs
///             {
///                 AppResourceGroup = "X00-RG",
///                 ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerConfigurationArgs
///                 {
///                     InstanceCount = 6,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP-HA",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E32ds_v4",
///                     },
///                 },
///                 CentralServer = new AzureNative.Workloads.Inputs.CentralServerConfigurationArgs
///                 {
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP-HA",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E16ds_v4",
///                     },
///                 },
///                 DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseConfigurationArgs
///                 {
///                     DatabaseType = AzureNative.Workloads.SAPDatabaseType.HANA,
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP-HA",
///                             Publisher = "RedHat",
///                             Sku = "84sapha-gen2",
///                             Version = "latest",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "{your-username}",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "xyz",
///                                     PublicKey = "abc",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_M32ts",
///                     },
///                 },
///                 DeploymentType = "ThreeTier",
///                 HighAvailabilityConfig = new AzureNative.Workloads.Inputs.HighAvailabilityConfigurationArgs
///                 {
///                     HighAvailabilityType = AzureNative.Workloads.SAPHighAvailabilityType.AvailabilityZone,
///                 },
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "xyz.test.com",
///             },
///             SoftwareConfiguration = new AzureNative.Workloads.Inputs.ExternalInstallationSoftwareConfigurationArgs
///             {
///                 CentralServerVmId = "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
///                 SoftwareInstallationType = "External",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.Prod,
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.ThreeTierConfiguration{
/// 					AppResourceGroup: "X00-RG",
/// 					ApplicationServer: workloads.ApplicationServerConfiguration{
/// 						InstanceCount: 6,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP-HA",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E32ds_v4",
/// 						},
/// 					},
/// 					CentralServer: workloads.CentralServerConfiguration{
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP-HA",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E16ds_v4",
/// 						},
/// 					},
/// 					DatabaseServer: workloads.DatabaseConfiguration{
/// 						DatabaseType:  workloads.SAPDatabaseTypeHANA,
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP-HA",
/// 								Publisher: "RedHat",
/// 								Sku:       "84sapha-gen2",
/// 								Version:   "latest",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "{your-username}",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "xyz",
/// 										PublicKey:  "abc",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_M32ts",
/// 						},
/// 					},
/// 					DeploymentType: "ThreeTier",
/// 					HighAvailabilityConfig: workloads.HighAvailabilityConfiguration{
/// 						HighAvailabilityType: workloads.SAPHighAvailabilityTypeAvailabilityZone,
/// 					},
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("xyz.test.com"),
/// 				},
/// 				SoftwareConfiguration: workloads.ExternalInstallationSoftwareConfiguration{
/// 					CentralServerVmId:        "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
/// 					SoftwareInstallationType: "External",
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeProd),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(ThreeTierConfigurationArgs.builder()
///                     .appResourceGroup("X00-RG")
///                     .applicationServer(ApplicationServerConfigurationArgs.builder()
///                         .instanceCount(6)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP-HA")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E32ds_v4")
///                             .build())
///                         .build())
///                     .centralServer(CentralServerConfigurationArgs.builder()
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP-HA")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E16ds_v4")
///                             .build())
///                         .build())
///                     .databaseServer(DatabaseConfigurationArgs.builder()
///                         .databaseType("HANA")
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP-HA")
///                                 .publisher("RedHat")
///                                 .sku("84sapha-gen2")
///                                 .version("latest")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("{your-username}")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("xyz")
///                                         .publicKey("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_M32ts")
///                             .build())
///                         .build())
///                     .deploymentType("ThreeTier")
///                     .highAvailabilityConfig(HighAvailabilityConfigurationArgs.builder()
///                         .highAvailabilityType("AvailabilityZone")
///                         .build())
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("xyz.test.com")
///                     .build())
///                 .softwareConfiguration(ExternalInstallationSoftwareConfigurationArgs.builder()
///                     .centralServerVmId("/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0")
///                     .softwareInstallationType("External")
///                     .build())
///                 .build())
///             .environment("Prod")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "X00-RG",
///             applicationServer: {
///                 instanceCount: 6,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP-HA",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E32ds_v4",
///                 },
///             },
///             centralServer: {
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP-HA",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E16ds_v4",
///                 },
///             },
///             databaseServer: {
///                 databaseType: azure_native.workloads.SAPDatabaseType.HANA,
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP-HA",
///                         publisher: "RedHat",
///                         sku: "84sapha-gen2",
///                         version: "latest",
///                     },
///                     osProfile: {
///                         adminUsername: "{your-username}",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "xyz",
///                                 publicKey: "abc",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_M32ts",
///                 },
///             },
///             deploymentType: "ThreeTier",
///             highAvailabilityConfig: {
///                 highAvailabilityType: azure_native.workloads.SAPHighAvailabilityType.AvailabilityZone,
///             },
///         },
///         osSapConfiguration: {
///             sapFqdn: "xyz.test.com",
///         },
///         softwareConfiguration: {
///             centralServerVmId: "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
///             softwareInstallationType: "External",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.Prod,
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "X00-RG",
///             "application_server": {
///                 "instance_count": 6,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP-HA",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E32ds_v4",
///                 },
///             },
///             "central_server": {
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP-HA",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E16ds_v4",
///                 },
///             },
///             "database_server": {
///                 "database_type": azure_native.workloads.SAPDatabaseType.HANA,
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP-HA",
///                         "publisher": "RedHat",
///                         "sku": "84sapha-gen2",
///                         "version": "latest",
///                     },
///                     "os_profile": {
///                         "admin_username": "{your-username}",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "xyz",
///                                 "public_key": "abc",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_M32ts",
///                 },
///             },
///             "deployment_type": "ThreeTier",
///             "high_availability_config": {
///                 "high_availability_type": azure_native.workloads.SAPHighAvailabilityType.AVAILABILITY_ZONE,
///             },
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "xyz.test.com",
///         },
///         "software_configuration": {
///             "central_server_vm_id": "/subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
///             "software_installation_type": "External",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.PROD,
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: X00-RG
///           applicationServer:
///             instanceCount: 6
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP-HA
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E32ds_v4
///           centralServer:
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/appsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP-HA
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_E16ds_v4
///           databaseServer:
///             databaseType: HANA
///             instanceCount: 2
///             subnetId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Networks/virtualNetworks/test-vnet/subnets/dbsubnet
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP-HA
///                 publisher: RedHat
///                 sku: 84sapha-gen2
///                 version: latest
///               osProfile:
///                 adminUsername: '{your-username}'
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: xyz
///                     publicKey: abc
///               vmSize: Standard_M32ts
///           deploymentType: ThreeTier
///           highAvailabilityConfig:
///             highAvailabilityType: AvailabilityZone
///         osSapConfiguration:
///           sapFqdn: xyz.test.com
///         softwareConfiguration:
///           centralServerVmId: /subscriptions/49d64d54-e966-4c46-a868-1999802b762c/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0
///           softwareInstallationType: External
///       environment: Prod
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Install SAP Software on Distributed System
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.ThreeTierConfigurationArgs
///             {
///                 AppResourceGroup = "{{resourcegrp}}",
///                 ApplicationServer = new AzureNative.Workloads.Inputs.ApplicationServerConfigurationArgs
///                 {
///                     InstanceCount = 2,
///                     SubnetId = "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP-HA",
///                             Publisher = "RedHat",
///                             Sku = "8.2",
///                             Version = "8.2.2021091201",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "azureuser",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "{{privateKey}}",
///                                     PublicKey = "{{sshkey}}",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E4ds_v4",
///                     },
///                 },
///                 CentralServer = new AzureNative.Workloads.Inputs.CentralServerConfigurationArgs
///                 {
///                     InstanceCount = 1,
///                     SubnetId = "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP-HA",
///                             Publisher = "RedHat",
///                             Sku = "8.2",
///                             Version = "8.2.2021091201",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "azureuser",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "{{privateKey}}",
///                                     PublicKey = "{{sshkey}}",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_E4ds_v4",
///                     },
///                 },
///                 DatabaseServer = new AzureNative.Workloads.Inputs.DatabaseConfigurationArgs
///                 {
///                     InstanceCount = 1,
///                     SubnetId = "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
///                     VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                     {
///                         ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                         {
///                             Offer = "RHEL-SAP-HA",
///                             Publisher = "RedHat",
///                             Sku = "8.2",
///                             Version = "8.2.2021091201",
///                         },
///                         OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                         {
///                             AdminUsername = "azureuser",
///                             OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                             {
///                                 DisablePasswordAuthentication = true,
///                                 OsType = "Linux",
///                                 SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                                 {
///                                     PrivateKey = "{{privateKey}}",
///                                     PublicKey = "{{sshkey}}",
///                                 },
///                             },
///                         },
///                         VmSize = "Standard_M32ts",
///                     },
///                 },
///                 DeploymentType = "ThreeTier",
///                 NetworkConfiguration = new AzureNative.Workloads.Inputs.NetworkConfigurationArgs
///                 {
///                     IsSecondaryIpEnabled = true,
///                 },
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "sap.bpaas.com",
///             },
///             SoftwareConfiguration = new AzureNative.Workloads.Inputs.SAPInstallWithoutOSConfigSoftwareConfigurationArgs
///             {
///                 BomUrl = "https://teststorageaccount.blob.core.windows.net/sapbits/sapfiles/boms/S41909SPS03_v0011ms/S41909SPS03_v0011ms.yaml",
///                 SapBitsStorageAccountId = "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Storage/storageAccounts/teststorageaccount",
///                 SoftwareInstallationType = "SAPInstallWithoutOSConfig",
///                 SoftwareVersion = "SAP S/4HANA 1909 SPS 03",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.Prod,
///         Location = "eastus2",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags =
///         {
///             { "created by", "azureuser" },
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.ThreeTierConfiguration{
/// 					AppResourceGroup: "{{resourcegrp}}",
/// 					ApplicationServer: workloads.ApplicationServerConfiguration{
/// 						InstanceCount: 2,
/// 						SubnetId:      "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP-HA",
/// 								Publisher: "RedHat",
/// 								Sku:       "8.2",
/// 								Version:   "8.2.2021091201",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "azureuser",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "{{privateKey}}",
/// 										PublicKey:  "{{sshkey}}",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E4ds_v4",
/// 						},
/// 					},
/// 					CentralServer: workloads.CentralServerConfiguration{
/// 						InstanceCount: 1,
/// 						SubnetId:      "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP-HA",
/// 								Publisher: "RedHat",
/// 								Sku:       "8.2",
/// 								Version:   "8.2.2021091201",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "azureuser",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "{{privateKey}}",
/// 										PublicKey:  "{{sshkey}}",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_E4ds_v4",
/// 						},
/// 					},
/// 					DatabaseServer: workloads.DatabaseConfiguration{
/// 						InstanceCount: 1,
/// 						SubnetId:      "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
/// 						VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 							ImageReference: workloads.ImageReference{
/// 								Offer:     "RHEL-SAP-HA",
/// 								Publisher: "RedHat",
/// 								Sku:       "8.2",
/// 								Version:   "8.2.2021091201",
/// 							},
/// 							OsProfile: workloads.OSProfile{
/// 								AdminUsername: "azureuser",
/// 								OsConfiguration: workloads.LinuxConfiguration{
/// 									DisablePasswordAuthentication: true,
/// 									OsType:                        "Linux",
/// 									SshKeyPair: workloads.SshKeyPair{
/// 										PrivateKey: "{{privateKey}}",
/// 										PublicKey:  "{{sshkey}}",
/// 									},
/// 								},
/// 							},
/// 							VmSize: "Standard_M32ts",
/// 						},
/// 					},
/// 					DeploymentType: "ThreeTier",
/// 					NetworkConfiguration: workloads.NetworkConfiguration{
/// 						IsSecondaryIpEnabled: true,
/// 					},
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("sap.bpaas.com"),
/// 				},
/// 				SoftwareConfiguration: workloads.SAPInstallWithoutOSConfigSoftwareConfiguration{
/// 					BomUrl:                   "https://teststorageaccount.blob.core.windows.net/sapbits/sapfiles/boms/S41909SPS03_v0011ms/S41909SPS03_v0011ms.yaml",
/// 					SapBitsStorageAccountId:  "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Storage/storageAccounts/teststorageaccount",
/// 					SoftwareInstallationType: "SAPInstallWithoutOSConfig",
/// 					SoftwareVersion:          "SAP S/4HANA 1909 SPS 03",
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeProd),
/// 			Location:               pulumi.String("eastus2"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags: pulumi.StringMap{
/// 				"created by": pulumi.String("azureuser"),
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(ThreeTierConfigurationArgs.builder()
///                     .appResourceGroup("{{resourcegrp}}")
///                     .applicationServer(ApplicationServerConfigurationArgs.builder()
///                         .instanceCount(2)
///                         .subnetId("/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP-HA")
///                                 .publisher("RedHat")
///                                 .sku("8.2")
///                                 .version("8.2.2021091201")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("azureuser")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("{{privateKey}}")
///                                         .publicKey("{{sshkey}}")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E4ds_v4")
///                             .build())
///                         .build())
///                     .centralServer(CentralServerConfigurationArgs.builder()
///                         .instanceCount(1)
///                         .subnetId("/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP-HA")
///                                 .publisher("RedHat")
///                                 .sku("8.2")
///                                 .version("8.2.2021091201")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("azureuser")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("{{privateKey}}")
///                                         .publicKey("{{sshkey}}")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_E4ds_v4")
///                             .build())
///                         .build())
///                     .databaseServer(DatabaseConfigurationArgs.builder()
///                         .instanceCount(1)
///                         .subnetId("/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app")
///                         .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                             .imageReference(ImageReferenceArgs.builder()
///                                 .offer("RHEL-SAP-HA")
///                                 .publisher("RedHat")
///                                 .sku("8.2")
///                                 .version("8.2.2021091201")
///                                 .build())
///                             .osProfile(OSProfileArgs.builder()
///                                 .adminUsername("azureuser")
///                                 .osConfiguration(LinuxConfigurationArgs.builder()
///                                     .disablePasswordAuthentication(true)
///                                     .osType("Linux")
///                                     .sshKeyPair(SshKeyPairArgs.builder()
///                                         .privateKey("{{privateKey}}")
///                                         .publicKey("{{sshkey}}")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .vmSize("Standard_M32ts")
///                             .build())
///                         .build())
///                     .deploymentType("ThreeTier")
///                     .networkConfiguration(NetworkConfigurationArgs.builder()
///                         .isSecondaryIpEnabled(true)
///                         .build())
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("sap.bpaas.com")
///                     .build())
///                 .softwareConfiguration(SAPInstallWithoutOSConfigSoftwareConfigurationArgs.builder()
///                     .bomUrl("https://teststorageaccount.blob.core.windows.net/sapbits/sapfiles/boms/S41909SPS03_v0011ms/S41909SPS03_v0011ms.yaml")
///                     .sapBitsStorageAccountId("/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Storage/storageAccounts/teststorageaccount")
///                     .softwareInstallationType("SAPInstallWithoutOSConfig")
///                     .softwareVersion("SAP S/4HANA 1909 SPS 03")
///                     .build())
///                 .build())
///             .environment("Prod")
///             .location("eastus2")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.of("created by", "azureuser"))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "{{resourcegrp}}",
///             applicationServer: {
///                 instanceCount: 2,
///                 subnetId: "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP-HA",
///                         publisher: "RedHat",
///                         sku: "8.2",
///                         version: "8.2.2021091201",
///                     },
///                     osProfile: {
///                         adminUsername: "azureuser",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "{{privateKey}}",
///                                 publicKey: "{{sshkey}}",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E4ds_v4",
///                 },
///             },
///             centralServer: {
///                 instanceCount: 1,
///                 subnetId: "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP-HA",
///                         publisher: "RedHat",
///                         sku: "8.2",
///                         version: "8.2.2021091201",
///                     },
///                     osProfile: {
///                         adminUsername: "azureuser",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "{{privateKey}}",
///                                 publicKey: "{{sshkey}}",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_E4ds_v4",
///                 },
///             },
///             databaseServer: {
///                 instanceCount: 1,
///                 subnetId: "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
///                 virtualMachineConfiguration: {
///                     imageReference: {
///                         offer: "RHEL-SAP-HA",
///                         publisher: "RedHat",
///                         sku: "8.2",
///                         version: "8.2.2021091201",
///                     },
///                     osProfile: {
///                         adminUsername: "azureuser",
///                         osConfiguration: {
///                             disablePasswordAuthentication: true,
///                             osType: "Linux",
///                             sshKeyPair: {
///                                 privateKey: "{{privateKey}}",
///                                 publicKey: "{{sshkey}}",
///                             },
///                         },
///                     },
///                     vmSize: "Standard_M32ts",
///                 },
///             },
///             deploymentType: "ThreeTier",
///             networkConfiguration: {
///                 isSecondaryIpEnabled: true,
///             },
///         },
///         osSapConfiguration: {
///             sapFqdn: "sap.bpaas.com",
///         },
///         softwareConfiguration: {
///             bomUrl: "https://teststorageaccount.blob.core.windows.net/sapbits/sapfiles/boms/S41909SPS03_v0011ms/S41909SPS03_v0011ms.yaml",
///             sapBitsStorageAccountId: "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Storage/storageAccounts/teststorageaccount",
///             softwareInstallationType: "SAPInstallWithoutOSConfig",
///             softwareVersion: "SAP S/4HANA 1909 SPS 03",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.Prod,
///     location: "eastus2",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {
///         "created by": "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "{{resourcegrp}}",
///             "application_server": {
///                 "instance_count": 2,
///                 "subnet_id": "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP-HA",
///                         "publisher": "RedHat",
///                         "sku": "8.2",
///                         "version": "8.2.2021091201",
///                     },
///                     "os_profile": {
///                         "admin_username": "azureuser",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "{{privateKey}}",
///                                 "public_key": "{{sshkey}}",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E4ds_v4",
///                 },
///             },
///             "central_server": {
///                 "instance_count": 1,
///                 "subnet_id": "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP-HA",
///                         "publisher": "RedHat",
///                         "sku": "8.2",
///                         "version": "8.2.2021091201",
///                     },
///                     "os_profile": {
///                         "admin_username": "azureuser",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "{{privateKey}}",
///                                 "public_key": "{{sshkey}}",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_E4ds_v4",
///                 },
///             },
///             "database_server": {
///                 "instance_count": 1,
///                 "subnet_id": "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app",
///                 "virtual_machine_configuration": {
///                     "image_reference": {
///                         "offer": "RHEL-SAP-HA",
///                         "publisher": "RedHat",
///                         "sku": "8.2",
///                         "version": "8.2.2021091201",
///                     },
///                     "os_profile": {
///                         "admin_username": "azureuser",
///                         "os_configuration": {
///                             "disable_password_authentication": True,
///                             "os_type": "Linux",
///                             "ssh_key_pair": {
///                                 "private_key": "{{privateKey}}",
///                                 "public_key": "{{sshkey}}",
///                             },
///                         },
///                     },
///                     "vm_size": "Standard_M32ts",
///                 },
///             },
///             "deployment_type": "ThreeTier",
///             "network_configuration": {
///                 "is_secondary_ip_enabled": True,
///             },
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "sap.bpaas.com",
///         },
///         "software_configuration": {
///             "bom_url": "https://teststorageaccount.blob.core.windows.net/sapbits/sapfiles/boms/S41909SPS03_v0011ms/S41909SPS03_v0011ms.yaml",
///             "sap_bits_storage_account_id": "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Storage/storageAccounts/teststorageaccount",
///             "software_installation_type": "SAPInstallWithoutOSConfig",
///             "software_version": "SAP S/4HANA 1909 SPS 03",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.PROD,
///     location="eastus2",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={
///         "created by": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: '{{resourcegrp}}'
///           applicationServer:
///             instanceCount: 2
///             subnetId: /subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP-HA
///                 publisher: RedHat
///                 sku: '8.2'
///                 version: 8.2.2021091201
///               osProfile:
///                 adminUsername: azureuser
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: '{{privateKey}}'
///                     publicKey: '{{sshkey}}'
///               vmSize: Standard_E4ds_v4
///           centralServer:
///             instanceCount: 1
///             subnetId: /subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP-HA
///                 publisher: RedHat
///                 sku: '8.2'
///                 version: 8.2.2021091201
///               osProfile:
///                 adminUsername: azureuser
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: '{{privateKey}}'
///                     publicKey: '{{sshkey}}'
///               vmSize: Standard_E4ds_v4
///           databaseServer:
///             instanceCount: 1
///             subnetId: /subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/app
///             virtualMachineConfiguration:
///               imageReference:
///                 offer: RHEL-SAP-HA
///                 publisher: RedHat
///                 sku: '8.2'
///                 version: 8.2.2021091201
///               osProfile:
///                 adminUsername: azureuser
///                 osConfiguration:
///                   disablePasswordAuthentication: true
///                   osType: Linux
///                   sshKeyPair:
///                     privateKey: '{{privateKey}}'
///                     publicKey: '{{sshkey}}'
///               vmSize: Standard_M32ts
///           deploymentType: ThreeTier
///           networkConfiguration:
///             isSecondaryIpEnabled: true
///         osSapConfiguration:
///           sapFqdn: sap.bpaas.com
///         softwareConfiguration:
///           bomUrl: https://teststorageaccount.blob.core.windows.net/sapbits/sapfiles/boms/S41909SPS03_v0011ms/S41909SPS03_v0011ms.yaml
///           sapBitsStorageAccountId: /subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Storage/storageAccounts/teststorageaccount
///           softwareInstallationType: SAPInstallWithoutOSConfig
///           softwareVersion: SAP S/4HANA 1909 SPS 03
///       environment: Prod
///       location: eastus2
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags:
///         created by: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Install SAP Software on Single Server System
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DeploymentWithOSConfigurationArgs
///         {
///             AppLocation = "eastus",
///             ConfigurationType = "DeploymentWithOSConfig",
///             InfrastructureConfiguration = new AzureNative.Workloads.Inputs.SingleServerConfigurationArgs
///             {
///                 AppResourceGroup = "test-rg",
///                 DeploymentType = "SingleServer",
///                 SubnetId = "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/testsubnet",
///                 VirtualMachineConfiguration = new AzureNative.Workloads.Inputs.VirtualMachineConfigurationArgs
///                 {
///                     ImageReference = new AzureNative.Workloads.Inputs.ImageReferenceArgs
///                     {
///                         Offer = "SLES-SAP",
///                         Publisher = "SUSE",
///                         Sku = "12-sp4-gen2",
///                         Version = "2022.02.01",
///                     },
///                     OsProfile = new AzureNative.Workloads.Inputs.OSProfileArgs
///                     {
///                         AdminUsername = "azureappadmin",
///                         OsConfiguration = new AzureNative.Workloads.Inputs.LinuxConfigurationArgs
///                         {
///                             DisablePasswordAuthentication = true,
///                             OsType = "Linux",
///                             SshKeyPair = new AzureNative.Workloads.Inputs.SshKeyPairArgs
///                             {
///                                 PrivateKey = "{{privateKey}}",
///                                 PublicKey = "{{sshkey}}",
///                             },
///                         },
///                     },
///                     VmSize = "Standard_E32ds_v4",
///                 },
///             },
///             OsSapConfiguration = new AzureNative.Workloads.Inputs.OsSapConfigurationArgs
///             {
///                 SapFqdn = "sap.bpaas.com",
///             },
///             SoftwareConfiguration = new AzureNative.Workloads.Inputs.SAPInstallWithoutOSConfigSoftwareConfigurationArgs
///             {
///                 BomUrl = "https://teststorageaccount.blob.core.windows.net/sapbits/sapfiles/boms/S41909SPS03_v0011ms/S41909SPS03_v0011ms.yaml",
///                 SapBitsStorageAccountId = "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Storage/storageAccounts/teststorageaccount",
///                 SoftwareInstallationType = "SAPInstallWithoutOSConfig",
///                 SoftwareVersion = "SAP S/4HANA 1909 SPS 03",
///             },
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.NonProd,
///         Location = "eastus2",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DeploymentWithOSConfigurationArgs{
/// 				AppLocation:       pulumi.String("eastus"),
/// 				ConfigurationType: pulumi.String("DeploymentWithOSConfig"),
/// 				InfrastructureConfiguration: workloads.SingleServerConfiguration{
/// 					AppResourceGroup: "test-rg",
/// 					DeploymentType:   "SingleServer",
/// 					SubnetId:         "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/testsubnet",
/// 					VirtualMachineConfiguration: workloads.VirtualMachineConfiguration{
/// 						ImageReference: workloads.ImageReference{
/// 							Offer:     "SLES-SAP",
/// 							Publisher: "SUSE",
/// 							Sku:       "12-sp4-gen2",
/// 							Version:   "2022.02.01",
/// 						},
/// 						OsProfile: workloads.OSProfile{
/// 							AdminUsername: "azureappadmin",
/// 							OsConfiguration: workloads.LinuxConfiguration{
/// 								DisablePasswordAuthentication: true,
/// 								OsType:                        "Linux",
/// 								SshKeyPair: workloads.SshKeyPair{
/// 									PrivateKey: "{{privateKey}}",
/// 									PublicKey:  "{{sshkey}}",
/// 								},
/// 							},
/// 						},
/// 						VmSize: "Standard_E32ds_v4",
/// 					},
/// 				},
/// 				OsSapConfiguration: &workloads.OsSapConfigurationArgs{
/// 					SapFqdn: pulumi.String("sap.bpaas.com"),
/// 				},
/// 				SoftwareConfiguration: workloads.SAPInstallWithoutOSConfigSoftwareConfiguration{
/// 					BomUrl:                   "https://teststorageaccount.blob.core.windows.net/sapbits/sapfiles/boms/S41909SPS03_v0011ms/S41909SPS03_v0011ms.yaml",
/// 					SapBitsStorageAccountId:  "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Storage/storageAccounts/teststorageaccount",
/// 					SoftwareInstallationType: "SAPInstallWithoutOSConfig",
/// 					SoftwareVersion:          "SAP S/4HANA 1909 SPS 03",
/// 				},
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeNonProd),
/// 			Location:               pulumi.String("eastus2"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DeploymentWithOSConfigurationArgs.builder()
///                 .appLocation("eastus")
///                 .configurationType("DeploymentWithOSConfig")
///                 .infrastructureConfiguration(SingleServerConfigurationArgs.builder()
///                     .appResourceGroup("test-rg")
///                     .deploymentType("SingleServer")
///                     .subnetId("/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/testsubnet")
///                     .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                         .imageReference(ImageReferenceArgs.builder()
///                             .offer("SLES-SAP")
///                             .publisher("SUSE")
///                             .sku("12-sp4-gen2")
///                             .version("2022.02.01")
///                             .build())
///                         .osProfile(OSProfileArgs.builder()
///                             .adminUsername("azureappadmin")
///                             .osConfiguration(LinuxConfigurationArgs.builder()
///                                 .disablePasswordAuthentication(true)
///                                 .osType("Linux")
///                                 .sshKeyPair(SshKeyPairArgs.builder()
///                                     .privateKey("{{privateKey}}")
///                                     .publicKey("{{sshkey}}")
///                                     .build())
///                                 .build())
///                             .build())
///                         .vmSize("Standard_E32ds_v4")
///                         .build())
///                     .build())
///                 .osSapConfiguration(OsSapConfigurationArgs.builder()
///                     .sapFqdn("sap.bpaas.com")
///                     .build())
///                 .softwareConfiguration(SAPInstallWithoutOSConfigSoftwareConfigurationArgs.builder()
///                     .bomUrl("https://teststorageaccount.blob.core.windows.net/sapbits/sapfiles/boms/S41909SPS03_v0011ms/S41909SPS03_v0011ms.yaml")
///                     .sapBitsStorageAccountId("/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Storage/storageAccounts/teststorageaccount")
///                     .softwareInstallationType("SAPInstallWithoutOSConfig")
///                     .softwareVersion("SAP S/4HANA 1909 SPS 03")
///                     .build())
///                 .build())
///             .environment("NonProd")
///             .location("eastus2")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         appLocation: "eastus",
///         configurationType: "DeploymentWithOSConfig",
///         infrastructureConfiguration: {
///             appResourceGroup: "test-rg",
///             deploymentType: "SingleServer",
///             subnetId: "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/testsubnet",
///             virtualMachineConfiguration: {
///                 imageReference: {
///                     offer: "SLES-SAP",
///                     publisher: "SUSE",
///                     sku: "12-sp4-gen2",
///                     version: "2022.02.01",
///                 },
///                 osProfile: {
///                     adminUsername: "azureappadmin",
///                     osConfiguration: {
///                         disablePasswordAuthentication: true,
///                         osType: "Linux",
///                         sshKeyPair: {
///                             privateKey: "{{privateKey}}",
///                             publicKey: "{{sshkey}}",
///                         },
///                     },
///                 },
///                 vmSize: "Standard_E32ds_v4",
///             },
///         },
///         osSapConfiguration: {
///             sapFqdn: "sap.bpaas.com",
///         },
///         softwareConfiguration: {
///             bomUrl: "https://teststorageaccount.blob.core.windows.net/sapbits/sapfiles/boms/S41909SPS03_v0011ms/S41909SPS03_v0011ms.yaml",
///             sapBitsStorageAccountId: "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Storage/storageAccounts/teststorageaccount",
///             softwareInstallationType: "SAPInstallWithoutOSConfig",
///             softwareVersion: "SAP S/4HANA 1909 SPS 03",
///         },
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.NonProd,
///     location: "eastus2",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "app_location": "eastus",
///         "configuration_type": "DeploymentWithOSConfig",
///         "infrastructure_configuration": {
///             "app_resource_group": "test-rg",
///             "deployment_type": "SingleServer",
///             "subnet_id": "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/testsubnet",
///             "virtual_machine_configuration": {
///                 "image_reference": {
///                     "offer": "SLES-SAP",
///                     "publisher": "SUSE",
///                     "sku": "12-sp4-gen2",
///                     "version": "2022.02.01",
///                 },
///                 "os_profile": {
///                     "admin_username": "azureappadmin",
///                     "os_configuration": {
///                         "disable_password_authentication": True,
///                         "os_type": "Linux",
///                         "ssh_key_pair": {
///                             "private_key": "{{privateKey}}",
///                             "public_key": "{{sshkey}}",
///                         },
///                     },
///                 },
///                 "vm_size": "Standard_E32ds_v4",
///             },
///         },
///         "os_sap_configuration": {
///             "sap_fqdn": "sap.bpaas.com",
///         },
///         "software_configuration": {
///             "bom_url": "https://teststorageaccount.blob.core.windows.net/sapbits/sapfiles/boms/S41909SPS03_v0011ms/S41909SPS03_v0011ms.yaml",
///             "sap_bits_storage_account_id": "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Storage/storageAccounts/teststorageaccount",
///             "software_installation_type": "SAPInstallWithoutOSConfig",
///             "software_version": "SAP S/4HANA 1909 SPS 03",
///         },
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.NON_PROD,
///     location="eastus2",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         appLocation: eastus
///         configurationType: DeploymentWithOSConfig
///         infrastructureConfiguration:
///           appResourceGroup: test-rg
///           deploymentType: SingleServer
///           subnetId: /subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/testsubnet
///           virtualMachineConfiguration:
///             imageReference:
///               offer: SLES-SAP
///               publisher: SUSE
///               sku: 12-sp4-gen2
///               version: 2022.02.01
///             osProfile:
///               adminUsername: azureappadmin
///               osConfiguration:
///                 disablePasswordAuthentication: true
///                 osType: Linux
///                 sshKeyPair:
///                   privateKey: '{{privateKey}}'
///                   publicKey: '{{sshkey}}'
///             vmSize: Standard_E32ds_v4
///         osSapConfiguration:
///           sapFqdn: sap.bpaas.com
///         softwareConfiguration:
///           bomUrl: https://teststorageaccount.blob.core.windows.net/sapbits/sapfiles/boms/S41909SPS03_v0011ms/S41909SPS03_v0011ms.yaml
///           sapBitsStorageAccountId: /subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Storage/storageAccounts/teststorageaccount
///           softwareInstallationType: SAPInstallWithoutOSConfig
///           softwareVersion: SAP S/4HANA 1909 SPS 03
///       environment: NonProd
///       location: eastus2
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Register existing SAP system as Virtual Instance for SAP solutions with optional customizations.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DiscoveryConfigurationArgs
///         {
///             CentralServerVmId = "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
///             ConfigurationType = "Discovery",
///             ManagedRgStorageAccountName = "q20saacssgrs",
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.NonProd,
///         Location = "northeurope",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags =
///         {
///             { "createdby", "abc@microsoft.com" },
///             { "test", "abc" },
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DiscoveryConfigurationArgs{
/// 				CentralServerVmId:           pulumi.String("/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0"),
/// 				ConfigurationType:           pulumi.String("Discovery"),
/// 				ManagedRgStorageAccountName: pulumi.String("q20saacssgrs"),
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeNonProd),
/// 			Location:               pulumi.String("northeurope"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags: pulumi.StringMap{
/// 				"createdby": pulumi.String("abc@microsoft.com"),
/// 				"test":      pulumi.String("abc"),
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DiscoveryConfigurationArgs.builder()
///                 .centralServerVmId("/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0")
///                 .configurationType("Discovery")
///                 .managedRgStorageAccountName("q20saacssgrs")
///                 .build())
///             .environment("NonProd")
///             .location("northeurope")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///                 Map.entry("createdby", "abc@microsoft.com"),
///                 Map.entry("test", "abc")
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         centralServerVmId: "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
///         configurationType: "Discovery",
///         managedRgStorageAccountName: "q20saacssgrs",
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.NonProd,
///     location: "northeurope",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {
///         createdby: "abc@microsoft.com",
///         test: "abc",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "central_server_vm_id": "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
///         "configuration_type": "Discovery",
///         "managed_rg_storage_account_name": "q20saacssgrs",
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.NON_PROD,
///     location="northeurope",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={
///         "createdby": "abc@microsoft.com",
///         "test": "abc",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         centralServerVmId: /subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0
///         configurationType: Discovery
///         managedRgStorageAccountName: q20saacssgrs
///       environment: NonProd
///       location: northeurope
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags:
///         createdby: abc@microsoft.com
///         test: abc
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Register existing SAP system as Virtual Instance for SAP solutions.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DiscoveryConfigurationArgs
///         {
///             CentralServerVmId = "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
///             ConfigurationType = "Discovery",
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.NonProd,
///         Location = "northeurope",
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags =
///         {
///             { "createdby", "abc@microsoft.com" },
///             { "test", "abc" },
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DiscoveryConfigurationArgs{
/// 				CentralServerVmId: pulumi.String("/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0"),
/// 				ConfigurationType: pulumi.String("Discovery"),
/// 			},
/// 			Environment:            pulumi.String(workloads.SAPEnvironmentTypeNonProd),
/// 			Location:               pulumi.String("northeurope"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapProduct:             pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags: pulumi.StringMap{
/// 				"createdby": pulumi.String("abc@microsoft.com"),
/// 				"test":      pulumi.String("abc"),
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DiscoveryConfigurationArgs.builder()
///                 .centralServerVmId("/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0")
///                 .configurationType("Discovery")
///                 .build())
///             .environment("NonProd")
///             .location("northeurope")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///                 Map.entry("createdby", "abc@microsoft.com"),
///                 Map.entry("test", "abc")
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         centralServerVmId: "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
///         configurationType: "Discovery",
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.NonProd,
///     location: "northeurope",
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {
///         createdby: "abc@microsoft.com",
///         test: "abc",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "central_server_vm_id": "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
///         "configuration_type": "Discovery",
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.NON_PROD,
///     location="northeurope",
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={
///         "createdby": "abc@microsoft.com",
///         "test": "abc",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         centralServerVmId: /subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0
///         configurationType: Discovery
///       environment: NonProd
///       location: northeurope
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags:
///         createdby: abc@microsoft.com
///         test: abc
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Register with trusted access enabled
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapVirtualInstance = new AzureNative.Workloads.SapVirtualInstance("sapVirtualInstance", new()
///     {
///         Configuration = new AzureNative.Workloads.Inputs.DiscoveryConfigurationArgs
///         {
///             CentralServerVmId = "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
///             ConfigurationType = "Discovery",
///         },
///         Environment = AzureNative.Workloads.SAPEnvironmentType.NonProd,
///         Location = "northeurope",
///         ManagedResourcesNetworkAccessType = AzureNative.Workloads.ManagedResourcesNetworkAccessType.Private,
///         ResourceGroupName = "test-rg",
///         SapProduct = AzureNative.Workloads.SAPProductType.S4HANA,
///         SapVirtualInstanceName = "X00",
///         Tags =
///         {
///             { "createdby", "abc@microsoft.com" },
///             { "test", "abc" },
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapVirtualInstance(ctx, "sapVirtualInstance", &workloads.SapVirtualInstanceArgs{
/// 			Configuration: &workloads.DiscoveryConfigurationArgs{
/// 				CentralServerVmId: pulumi.String("/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0"),
/// 				ConfigurationType: pulumi.String("Discovery"),
/// 			},
/// 			Environment:                       pulumi.String(workloads.SAPEnvironmentTypeNonProd),
/// 			Location:                          pulumi.String("northeurope"),
/// 			ManagedResourcesNetworkAccessType: pulumi.String(workloads.ManagedResourcesNetworkAccessTypePrivate),
/// 			ResourceGroupName:                 pulumi.String("test-rg"),
/// 			SapProduct:                        pulumi.String(workloads.SAPProductTypeS4HANA),
/// 			SapVirtualInstanceName:            pulumi.String("X00"),
/// 			Tags: pulumi.StringMap{
/// 				"createdby": pulumi.String("abc@microsoft.com"),
/// 				"test":      pulumi.String("abc"),
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
/// import com.pulumi.azurenative.workloads.SapVirtualInstance;
/// import com.pulumi.azurenative.workloads.SapVirtualInstanceArgs;
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
///         var sapVirtualInstance = new SapVirtualInstance("sapVirtualInstance", SapVirtualInstanceArgs.builder()
///             .configuration(DiscoveryConfigurationArgs.builder()
///                 .centralServerVmId("/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0")
///                 .configurationType("Discovery")
///                 .build())
///             .environment("NonProd")
///             .location("northeurope")
///             .managedResourcesNetworkAccessType("Private")
///             .resourceGroupName("test-rg")
///             .sapProduct("S4HANA")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
///                 Map.entry("createdby", "abc@microsoft.com"),
///                 Map.entry("test", "abc")
///             ))
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
/// const sapVirtualInstance = new azure_native.workloads.SapVirtualInstance("sapVirtualInstance", {
///     configuration: {
///         centralServerVmId: "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
///         configurationType: "Discovery",
///     },
///     environment: azure_native.workloads.SAPEnvironmentType.NonProd,
///     location: "northeurope",
///     managedResourcesNetworkAccessType: azure_native.workloads.ManagedResourcesNetworkAccessType.Private,
///     resourceGroupName: "test-rg",
///     sapProduct: azure_native.workloads.SAPProductType.S4HANA,
///     sapVirtualInstanceName: "X00",
///     tags: {
///         createdby: "abc@microsoft.com",
///         test: "abc",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_virtual_instance = azure_native.workloads.SapVirtualInstance("sapVirtualInstance",
///     configuration={
///         "central_server_vm_id": "/subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0",
///         "configuration_type": "Discovery",
///     },
///     environment=azure_native.workloads.SAPEnvironmentType.NON_PROD,
///     location="northeurope",
///     managed_resources_network_access_type=azure_native.workloads.ManagedResourcesNetworkAccessType.PRIVATE,
///     resource_group_name="test-rg",
///     sap_product=azure_native.workloads.SAPProductType.S4_HANA,
///     sap_virtual_instance_name="X00",
///     tags={
///         "createdby": "abc@microsoft.com",
///         "test": "abc",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   sapVirtualInstance:
///     type: azure-native:workloads:SapVirtualInstance
///     properties:
///       configuration:
///         centralServerVmId: /subscriptions/8e17e36c-42e9-4cd5-a078-7b44883414e0/resourceGroups/test-rg/providers/Microsoft.Compute/virtualMachines/sapq20scsvm0
///         configurationType: Discovery
///       environment: NonProd
///       location: northeurope
///       managedResourcesNetworkAccessType: Private
///       resourceGroupName: test-rg
///       sapProduct: S4HANA
///       sapVirtualInstanceName: X00
///       tags:
///         createdby: abc@microsoft.com
///         test: abc
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
/// $ pulumi import azure-native:workloads:SapVirtualInstance Q20 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Workloads/sapVirtualInstances/{sapVirtualInstanceName}
/// ```
class SapVirtualInstance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Defines if the SAP system is being created using Azure Center for SAP solutions (ACSS) or if an existing SAP system is being registered with ACSS
  late final pulumi.Output<DeploymentConfigurationResponse> configuration;
  /// Defines the environment type - Production/Non Production.
  late final pulumi.Output<String> environment;
  /// Indicates any errors on the Virtual Instance for SAP solutions resource.
  late final pulumi.Output<SAPVirtualInstanceErrorResponse> errors;
  /// Defines the health of SAP Instances.
  late final pulumi.Output<String> health;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<SAPVirtualInstanceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Managed resource group configuration
  late final pulumi.Output<ManagedRGConfigurationResponse?> managedResourceGroupConfiguration;
  /// Specifies the network access configuration for the resources that will be deployed in the Managed Resource Group. The options to choose from are Public and Private. If 'Private' is chosen, the Storage Account service tag should be enabled on the subnets in which the SAP VMs exist. This is required for establishing connectivity between VM extensions and the managed resource group storage account. This setting is currently applicable only to Storage Account. Learn more here https://go.microsoft.com/fwlink/?linkid=2247228
  late final pulumi.Output<String?> managedResourcesNetworkAccessType;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Defines the provisioning states.
  late final pulumi.Output<String> provisioningState;
  /// Defines the SAP Product type.
  late final pulumi.Output<String> sapProduct;
  /// Defines the Virtual Instance for SAP state.
  late final pulumi.Output<String> state;
  /// Defines the SAP Instance status.
  late final pulumi.Output<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SapVirtualInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SapVirtualInstance]. {@macro pulumi_workloads_sap_virtual_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SapVirtualInstance(
    String name, {
    SapVirtualInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:workloads:SapVirtualInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configuration = registerOutput<DeploymentConfigurationResponse>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    environment = registerOutput<String>('environment');
    errors = registerOutput<SAPVirtualInstanceErrorResponse>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SAPVirtualInstanceErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    health = registerOutput<String>('health');
    identity = registerOutput<SAPVirtualInstanceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SAPVirtualInstanceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    managedResourceGroupConfiguration = registerOutput<ManagedRGConfigurationResponse?>('managedResourceGroupConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedRGConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    managedResourcesNetworkAccessType = registerOutput<String?>('managedResourcesNetworkAccessType');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sapProduct = registerOutput<String>('sapProduct');
    state = registerOutput<String>('state');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
