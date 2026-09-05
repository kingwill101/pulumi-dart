import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_bucket_with_server_args.dart';
import 'volume_bucket_with_server_file_system_nfs_user.dart';
import 'volume_bucket_with_server_key_vault.dart';
import 'volume_bucket_with_server_server.dart';
import 'volume_bucket_with_server_state.dart';

/// Manages a NetApp Files Volume Bucket including its bucket server configuration. Buckets expose the contents of an Azure NetApp Files volume (or a sub-path within it) as an S3-compatible object endpoint via the Azure NetApp Files Object REST API.
///
/// Use this resource to create the **first** bucket on a volume. The first bucket establishes the bucket server (FQDN and certificate) that is shared by every bucket on the volume. Create any **subsequent** buckets with the server-less `azure.netapp.VolumeBucket` resource, which reuses the server configuration established here.
///
/// &gt; **Note:** Declaring a `server` block on more than one bucket of the same volume overwrites the shared server configuration. Only the first bucket should manage the server, via this resource.
///
/// &gt; **Note:** The Object REST API feature is in preview and must be registered on the subscription via `Microsoft.NetApp / ANFEnableObjectRESTAPI` before buckets can be created. See [Configure access to the Azure NetApp Files Object REST API](https://learn.microsoft.com/en-us/azure/azure-netapp-files/object-rest-api-access-configure) for the registration command and Key Vault prerequisites.
///
/// &gt; **Note:** Buckets are supported on cool-access and large NetApp volumes. Buckets are not supported on cache volumes. Deleting the parent volume cascade-deletes its buckets.
///
/// ## Example Usage
///
/// ### Inline Certificate)
///
/// This example generates a self-signed server certificate via the `hashicorp/tls` provider and passes it directly to the bucket through `server.certificate_pem`. Bucket credentials are minted separately by the `azurermNetappVolumeBucketCredentials` action and require the bucket to be configured with a `keyVault` block (see the Key Vault example below).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
/// import * as tls from "@pulumi/tls";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     location: example.location,
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.0.0/16"],
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-delegated",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
///     delegations: [{
///         name: "netapp",
///         serviceDelegation: {
///             name: "Microsoft.Netapp/volumes",
///             actions: [
///                 "Microsoft.Network/networkinterfaces/*",
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///             ],
///         },
///     }],
/// });
/// const exampleAccount = new azure.netapp.Account("example", {
///     name: "example-anfaccount",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const examplePool = new azure.netapp.Pool("example", {
///     name: "example-anfpool",
///     location: example.location,
///     resourceGroupName: example.name,
///     accountName: exampleAccount.name,
///     serviceLevel: "Standard",
///     sizeInTb: 4,
/// });
/// const exampleVolume = new azure.netapp.Volume("example", {
///     name: "example-anfvolume",
///     location: example.location,
///     resourceGroupName: example.name,
///     accountName: exampleAccount.name,
///     poolName: examplePool.name,
///     volumePath: "example-vol",
///     serviceLevel: "Standard",
///     subnetId: exampleSubnet.id,
///     storageQuotaInGb: 100,
///     protocols: ["NFSv3"],
/// });
/// const bucket = new tls.index.PrivateKey("bucket", {
///     algorithm: "RSA",
///     rsaBits: 2048,
/// });
/// const bucketSelfSignedCert = new tls.index.SelfSignedCert("bucket", {
///     privateKeyPem: bucket.privateKeyPem,
///     subject: [{
///         commonName: "example-bucket.example.internal",
///     }],
///     dnsNames: ["example-bucket.example.internal"],
///     validityPeriodHours: 8760,
///     allowedUses: [
///         "key_encipherment",
///         "digital_signature",
///         "server_auth",
///     ],
/// });
/// const exampleVolumeBucketWithServer = new azure.netapp.VolumeBucketWithServer("example", {
///     name: "example-bucket",
///     volumeId: exampleVolume.id,
///     fileSystemNfsUser: {
///         groupId: 1000,
///         userId: 1000,
///     },
///     server: {
///         fqdn: "example-bucket.example.internal",
///         certificatePem: std.base64encode({
///             input: `${bucketSelfSignedCert.certPem}${bucket.privateKeyPem}`,
///         }).then(invoke => invoke.result),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
/// import pulumi_tls as tls
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     location=example.location,
///     resource_group_name=example.name,
///     address_spaces=["10.0.0.0/16"])
/// example_subnet = azure.network.Subnet("example",
///     name="example-delegated",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"],
///     delegations=[{
///         "name": "netapp",
///         "service_delegation": {
///             "name": "Microsoft.Netapp/volumes",
///             "actions": [
///                 "Microsoft.Network/networkinterfaces/*",
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///             ],
///         },
///     }])
/// example_account = azure.netapp.Account("example",
///     name="example-anfaccount",
///     location=example.location,
///     resource_group_name=example.name)
/// example_pool = azure.netapp.Pool("example",
///     name="example-anfpool",
///     location=example.location,
///     resource_group_name=example.name,
///     account_name=example_account.name,
///     service_level="Standard",
///     size_in_tb=4)
/// example_volume = azure.netapp.Volume("example",
///     name="example-anfvolume",
///     location=example.location,
///     resource_group_name=example.name,
///     account_name=example_account.name,
///     pool_name=example_pool.name,
///     volume_path="example-vol",
///     service_level="Standard",
///     subnet_id=example_subnet.id,
///     storage_quota_in_gb=100,
///     protocols=["NFSv3"])
/// bucket = tls.PrivateKey("bucket",
///     algorithm=RSA,
///     rsa_bits=2048)
/// bucket_self_signed_cert = tls.SelfSignedCert("bucket",
///     private_key_pem=bucket.private_key_pem,
///     subject=[{
///         commonName: example-bucket.example.internal,
///     }],
///     dns_names=[example-bucket.example.internal],
///     validity_period_hours=8760,
///     allowed_uses=[
///         key_encipherment,
///         digital_signature,
///         server_auth,
///     ])
/// example_volume_bucket_with_server = azure.netapp.VolumeBucketWithServer("example",
///     name="example-bucket",
///     volume_id=example_volume.id,
///     file_system_nfs_user={
///         "group_id": 1000,
///         "user_id": 1000,
///     },
///     server={
///         "fqdn": "example-bucket.example.internal",
///         "certificate_pem": std.base64encode(input=f"{bucket_self_signed_cert['certPem']}{bucket['privateKeyPem']}").result,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
/// using Tls = Pulumi.Tls;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example-delegated",
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
///                 Name = "netapp",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "Microsoft.Netapp/volumes",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/networkinterfaces/*",
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleAccount = new Azure.NetApp.Account("example", new()
///     {
///         Name = "example-anfaccount",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var examplePool = new Azure.NetApp.Pool("example", new()
///     {
///         Name = "example-anfpool",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountName = exampleAccount.Name,
///         ServiceLevel = "Standard",
///         SizeInTb = 4,
///     });
///
///     var exampleVolume = new Azure.NetApp.Volume("example", new()
///     {
///         Name = "example-anfvolume",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountName = exampleAccount.Name,
///         PoolName = examplePool.Name,
///         VolumePath = "example-vol",
///         ServiceLevel = "Standard",
///         SubnetId = exampleSubnet.Id,
///         StorageQuotaInGb = 100,
///         Protocols = new[]
///         {
///             "NFSv3",
///         },
///     });
///
///     var bucket = new Tls.PrivateKey("bucket", new()
///     {
///         Algorithm = "RSA",
///         RsaBits = 2048,
///     });
///
///     var bucketSelfSignedCert = new Tls.SelfSignedCert("bucket", new()
///     {
///         PrivateKeyPem = bucket.PrivateKeyPem,
///         Subject = new[]
///         {
///
///             {
///                 { "commonName", "example-bucket.example.internal" },
///             },
///         },
///         DnsNames = new[]
///         {
///             "example-bucket.example.internal",
///         },
///         ValidityPeriodHours = 8760,
///         AllowedUses = new[]
///         {
///             "key_encipherment",
///             "digital_signature",
///             "server_auth",
///         },
///     });
///
///     var exampleVolumeBucketWithServer = new Azure.NetApp.VolumeBucketWithServer("example", new()
///     {
///         Name = "example-bucket",
///         VolumeId = exampleVolume.Id,
///         FileSystemNfsUser = new Azure.NetApp.Inputs.VolumeBucketWithServerFileSystemNfsUserArgs
///         {
///             GroupId = 1000,
///             UserId = 1000,
///         },
///         Server = new Azure.NetApp.Inputs.VolumeBucketWithServerServerArgs
///         {
///             Fqdn = "example-bucket.example.internal",
///             CertificatePem = Std.Base64encode.Invoke(new()
///             {
///                 Input = $"{bucketSelfSignedCert.CertPem}{bucket.PrivateKeyPem}",
///             }).Apply(invoke => invoke.Result),
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi-tls/sdk/go/tls"
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
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("example-vnet"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-delegated"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("netapp"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("Microsoft.Netapp/volumes"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/networkinterfaces/*"),
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := netapp.NewAccount(ctx, "example", &netapp.AccountArgs{
/// 			Name:              pulumi.String("example-anfaccount"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePool, err := netapp.NewPool(ctx, "example", &netapp.PoolArgs{
/// 			Name:              pulumi.String("example-anfpool"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AccountName:       exampleAccount.Name,
/// 			ServiceLevel:      pulumi.String("Standard"),
/// 			SizeInTb:          pulumi.Int(4),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVolume, err := netapp.NewVolume(ctx, "example", &netapp.VolumeArgs{
/// 			Name:              pulumi.String("example-anfvolume"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AccountName:       exampleAccount.Name,
/// 			PoolName:          examplePool.Name,
/// 			VolumePath:        pulumi.String("example-vol"),
/// 			ServiceLevel:      pulumi.String("Standard"),
/// 			SubnetId:          exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 			StorageQuotaInGb:  pulumi.Int(100),
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String("NFSv3"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := tls.NewPrivateKey(ctx, "bucket", &tls.PrivateKeyArgs{
/// 			Algorithm: "RSA",
/// 			RsaBits:   2048,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucketSelfSignedCert, err := tls.NewSelfSignedCert(ctx, "bucket", &tls.SelfSignedCertArgs{
/// 			PrivateKeyPem: bucket.PrivateKeyPem,
/// 			Subject: []map[string]string{
/// 				{
/// 					"commonName": "example-bucket.example.internal",
/// 				},
/// 			},
/// 			DnsNames: []string{
/// 				"example-bucket.example.internal",
/// 			},
/// 			ValidityPeriodHours: 8760,
/// 			AllowedUses: []string{
/// 				"key_encipherment",
/// 				"digital_signature",
/// 				"server_auth",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: fmt.Sprintf("%v%v", bucketSelfSignedCert.CertPem, bucket.PrivateKeyPem),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = netapp.NewVolumeBucketWithServer(ctx, "example", &netapp.VolumeBucketWithServerArgs{
/// 			Name:     pulumi.String("example-bucket"),
/// 			VolumeId: exampleVolume.ID().ToIDOutput().ToStringOutput(),
/// 			FileSystemNfsUser: &netapp.VolumeBucketWithServerFileSystemNfsUserArgs{
/// 				GroupId: pulumi.Int(1000),
/// 				UserId:  pulumi.Int(1000),
/// 			},
/// 			Server: &netapp.VolumeBucketWithServerServerArgs{
/// 				Fqdn:           pulumi.String("example-bucket.example.internal"),
/// 				CertificatePem: pulumi.String(invokeBase64encode.Result),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "example-vnet"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   address_spaces      = ["10.0.0.0/16"]
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "example-delegated"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.2.0/24"]
///   delegations {
///     name = "netapp"
///     service_delegation = {
///       name    = "Microsoft.Netapp/volumes"
///       actions = ["Microsoft.Network/networkinterfaces/*", "Microsoft.Network/virtualNetworks/subnets/join/action"]
///     }
///   }
/// }
/// resource "azure_netapp_account" "example" {
///   name                = "example-anfaccount"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_netapp_pool" "example" {
///   name                = "example-anfpool"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   account_name        = azure_netapp_account.example.name
///   service_level       = "Standard"
///   size_in_tb          = 4
/// }
/// resource "azure_netapp_volume" "example" {
///   name                = "example-anfvolume"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   account_name        = azure_netapp_account.example.name
///   pool_name           = azure_netapp_pool.example.name
///   volume_path         = "example-vol"
///   service_level       = "Standard"
///   subnet_id           = azure_network_subnet.example.id
///   storage_quota_in_gb = 100
///   protocols           = ["NFSv3"]
/// }
/// resource "tls_privatekey" "bucket" {
///   algorithm = "RSA"
///   rsa_bits  = 2048
/// }
/// resource "tls_selfsignedcert" "bucket" {
///   private_key_pem = tls_privatekey.bucket.privateKeyPem
///   subject = [{
///     "commonName" = "example-bucket.example.internal"
///   }]
///   dns_names             = ["example-bucket.example.internal"]
///   validity_period_hours = 8760
///   allowed_uses          = ["key_encipherment", "digital_signature", "server_auth"]
/// }
/// resource "azure_netapp_volumebucketwithserver" "example" {
///   name      = "example-bucket"
///   volume_id = azure_netapp_volume.example.id
///   file_system_nfs_user = {
///     group_id = 1000
///     user_id  = 1000
///   }
///   server = {
///     fqdn            = "example-bucket.example.internal"
///     certificate_pem = base64encode("${tls_selfsignedcert.bucket.certPem}${tls_privatekey.bucket.privateKeyPem}")
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.netapp.Account;
/// import com.pulumi.azure.netapp.AccountArgs;
/// import com.pulumi.azure.netapp.Pool;
/// import com.pulumi.azure.netapp.PoolArgs;
/// import com.pulumi.azure.netapp.Volume;
/// import com.pulumi.azure.netapp.VolumeArgs;
/// import com.pulumi.tls.PrivateKey;
/// import com.pulumi.tls.PrivateKeyArgs;
/// import com.pulumi.tls.SelfSignedCert;
/// import com.pulumi.tls.SelfSignedCertArgs;
/// import com.pulumi.azure.netapp.VolumeBucketWithServer;
/// import com.pulumi.azure.netapp.VolumeBucketWithServerArgs;
/// import com.pulumi.azure.netapp.inputs.VolumeBucketWithServerFileSystemNfsUserArgs;
/// import com.pulumi.azure.netapp.inputs.VolumeBucketWithServerServerArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
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
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-delegated")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("netapp")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("Microsoft.Netapp/volumes")
///                     .actions(
///                         "Microsoft.Network/networkinterfaces/*",
///                         "Microsoft.Network/virtualNetworks/subnets/join/action")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-anfaccount")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var examplePool = new Pool("examplePool", PoolArgs.builder()
///             .name("example-anfpool")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountName(exampleAccount.name())
///             .serviceLevel("Standard")
///             .sizeInTb(4)
///             .build());
///
///         var exampleVolume = new Volume("exampleVolume", VolumeArgs.builder()
///             .name("example-anfvolume")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountName(exampleAccount.name())
///             .poolName(examplePool.name())
///             .volumePath("example-vol")
///             .serviceLevel("Standard")
///             .subnetId(exampleSubnet.id())
///             .storageQuotaInGb(100)
///             .protocols("NFSv3")
///             .build());
///
///         var bucket = new PrivateKey("bucket", PrivateKeyArgs.builder()
///             .algorithm("RSA")
///             .rsaBits(2048)
///             .build());
///
///         var bucketSelfSignedCert = new SelfSignedCert("bucketSelfSignedCert", SelfSignedCertArgs.builder()
///             .privateKeyPem(bucket.privateKeyPem())
///             .subject(Arrays.asList(Map.of("commonName", "example-bucket.example.internal")))
///             .dnsNames(Arrays.asList("example-bucket.example.internal"))
///             .validityPeriodHours(8760)
///             .allowedUses(Arrays.asList(
///                 "key_encipherment",
///                 "digital_signature",
///                 "server_auth"))
///             .build());
///
///         var exampleVolumeBucketWithServer = new VolumeBucketWithServer("exampleVolumeBucketWithServer", VolumeBucketWithServerArgs.builder()
///             .name("example-bucket")
///             .volumeId(exampleVolume.id())
///             .fileSystemNfsUser(VolumeBucketWithServerFileSystemNfsUserArgs.builder()
///                 .groupId(1000)
///                 .userId(1000)
///                 .build())
///             .server(VolumeBucketWithServerServerArgs.builder()
///                 .fqdn("example-bucket.example.internal")
///                 .certificatePem(StdFunctions.base64encode(Base64encodeArgs.builder()
///                     .input(String.format("%s%s", bucketSelfSignedCert.certPem(),bucket.privateKeyPem()))
///                     .build()).result())
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
///       name: example-resources
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.0.0/16
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-delegated
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///       delegations:
///         - name: netapp
///           serviceDelegation:
///             name: Microsoft.Netapp/volumes
///             actions:
///               - Microsoft.Network/networkinterfaces/*
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///   exampleAccount:
///     type: azure:netapp:Account
///     name: example
///     properties:
///       name: example-anfaccount
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   examplePool:
///     type: azure:netapp:Pool
///     name: example
///     properties:
///       name: example-anfpool
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountName: ${exampleAccount.name}
///       serviceLevel: Standard
///       sizeInTb: 4
///   exampleVolume:
///     type: azure:netapp:Volume
///     name: example
///     properties:
///       name: example-anfvolume
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountName: ${exampleAccount.name}
///       poolName: ${examplePool.name}
///       volumePath: example-vol
///       serviceLevel: Standard
///       subnetId: ${exampleSubnet.id}
///       storageQuotaInGb: 100
///       protocols:
///         - NFSv3
///   bucket:
///     type: tls:PrivateKey
///     properties:
///       algorithm: RSA
///       rsaBits: 2048
///   bucketSelfSignedCert:
///     type: tls:SelfSignedCert
///     name: bucket
///     properties:
///       privateKeyPem: ${bucket.privateKeyPem}
///       subject:
///         - commonName: example-bucket.example.internal
///       dnsNames:
///         - example-bucket.example.internal
///       validityPeriodHours: 8760
///       allowedUses:
///         - key_encipherment
///         - digital_signature
///         - server_auth
///   exampleVolumeBucketWithServer:
///     type: azure:netapp:VolumeBucketWithServer
///     name: example
///     properties:
///       name: example-bucket
///       volumeId: ${exampleVolume.id}
///       fileSystemNfsUser:
///         groupId: 1000
///         userId: 1000
///       server:
///         fqdn: example-bucket.example.internal
///         certificatePem:
///           fn::invoke:
///             function: std:base64encode
///             arguments:
///               input: ${bucketSelfSignedCert.certPem}${bucket.privateKeyPem}
///             return: result
/// ```
///
///
///
/// ### Azure Key Vault)
///
/// This example sources the bucket server certificate from Azure Key Vault and persists the generated credentials to a second Azure Key Vault. The NetApp account uses a system-assigned managed identity to access both vaults.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     location: example.location,
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.0.0/16"],
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-delegated",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
///     delegations: [{
///         name: "netapp",
///         serviceDelegation: {
///             name: "Microsoft.Netapp/volumes",
///             actions: [
///                 "Microsoft.Network/networkinterfaces/*",
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///             ],
///         },
///     }],
/// });
/// const exampleAccount = new azure.netapp.Account("example", {
///     name: "example-anfaccount",
///     location: example.location,
///     resourceGroupName: example.name,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const examplePool = new azure.netapp.Pool("example", {
///     name: "example-anfpool",
///     location: example.location,
///     resourceGroupName: example.name,
///     accountName: exampleAccount.name,
///     serviceLevel: "Standard",
///     sizeInTb: 4,
/// });
/// const exampleVolume = new azure.netapp.Volume("example", {
///     name: "example-anfvolume",
///     location: example.location,
///     resourceGroupName: example.name,
///     accountName: exampleAccount.name,
///     poolName: examplePool.name,
///     volumePath: "example-vol",
///     serviceLevel: "Standard",
///     subnetId: exampleSubnet.id,
///     storageQuotaInGb: 100,
///     protocols: ["NFSv3"],
/// });
/// const certificate = new azure.keyvault.KeyVault("certificate", {
///     name: "example-cert-kv",
///     location: example.location,
///     resourceGroupName: example.name,
///     rbacAuthorizationEnabled: false,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     softDeleteRetentionDays: 7,
/// });
/// const credentials = new azure.keyvault.KeyVault("credentials", {
///     name: "example-creds-kv",
///     location: example.location,
///     resourceGroupName: example.name,
///     rbacAuthorizationEnabled: false,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     softDeleteRetentionDays: 7,
/// });
/// const deployerCertificate = new azure.keyvault.AccessPolicy("deployer_certificate", {
///     keyVaultId: certificate.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: current.then(current => current.objectId),
///     certificatePermissions: [
///         "Get",
///         "List",
///         "Create",
///         "Import",
///         "Update",
///         "Delete",
///         "Purge",
///         "Recover",
///     ],
///     secretPermissions: [
///         "Get",
///         "List",
///         "Set",
///         "Delete",
///         "Purge",
///         "Recover",
///     ],
/// });
/// const anfCertificate = new azure.keyvault.AccessPolicy("anf_certificate", {
///     keyVaultId: certificate.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: exampleAccount.identity.apply(identity => identity?.principalId),
///     certificatePermissions: [
///         "Get",
///         "List",
///         "Update",
///         "Create",
///         "Import",
///         "ManageContacts",
///         "GetIssuers",
///         "ListIssuers",
///         "SetIssuers",
///         "DeleteIssuers",
///     ],
///     secretPermissions: [
///         "Get",
///         "List",
///         "Set",
///         "Delete",
///     ],
/// });
/// const anfCredentials = new azure.keyvault.AccessPolicy("anf_credentials", {
///     keyVaultId: credentials.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: exampleAccount.identity.apply(identity => identity?.principalId),
///     secretPermissions: [
///         "Get",
///         "List",
///         "Set",
///         "Delete",
///     ],
/// });
/// const bucket = new azure.keyvault.Certificate("bucket", {
///     name: "example-bucket-cert",
///     keyVaultId: certificate.id,
///     certificatePolicy: {
///         issuerParameters: {
///             name: "Self",
///         },
///         keyProperties: {
///             exportable: true,
///             keySize: 2048,
///             keyType: "RSA",
///             reuseKey: false,
///         },
///         secretProperties: {
///             contentType: "application/x-pkcs12",
///         },
///         x509CertificateProperties: {
///             keyUsages: [
///                 "digitalSignature",
///                 "keyEncipherment",
///             ],
///             extendedKeyUsages: ["1.3.6.1.5.5.7.3.1"],
///             subject: "CN=example-bucket.example.internal",
///             subjectAlternativeNames: {
///                 dnsNames: ["example-bucket.example.internal"],
///             },
///             validityInMonths: 12,
///         },
///     },
/// }, {
///     dependsOn: [deployerCertificate],
/// });
/// const exampleVolumeBucketWithServer = new azure.netapp.VolumeBucketWithServer("example", {
///     name: "example-bucket",
///     volumeId: exampleVolume.id,
///     fileSystemNfsUser: {
///         groupId: 1000,
///         userId: 1000,
///     },
///     server: {
///         fqdn: "example-bucket.example.internal",
///     },
///     keyVault: {
///         certificateKeyVaultUri: certificate.vaultUri,
///         certificateName: bucket.name,
///         credentialsKeyVaultUri: credentials.vaultUri,
///         credentialsSecretName: "example-bucket-creds",
///     },
/// }, {
///     dependsOn: [
///         anfCertificate,
///         anfCredentials,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     location=example.location,
///     resource_group_name=example.name,
///     address_spaces=["10.0.0.0/16"])
/// example_subnet = azure.network.Subnet("example",
///     name="example-delegated",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"],
///     delegations=[{
///         "name": "netapp",
///         "service_delegation": {
///             "name": "Microsoft.Netapp/volumes",
///             "actions": [
///                 "Microsoft.Network/networkinterfaces/*",
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///             ],
///         },
///     }])
/// example_account = azure.netapp.Account("example",
///     name="example-anfaccount",
///     location=example.location,
///     resource_group_name=example.name,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_pool = azure.netapp.Pool("example",
///     name="example-anfpool",
///     location=example.location,
///     resource_group_name=example.name,
///     account_name=example_account.name,
///     service_level="Standard",
///     size_in_tb=4)
/// example_volume = azure.netapp.Volume("example",
///     name="example-anfvolume",
///     location=example.location,
///     resource_group_name=example.name,
///     account_name=example_account.name,
///     pool_name=example_pool.name,
///     volume_path="example-vol",
///     service_level="Standard",
///     subnet_id=example_subnet.id,
///     storage_quota_in_gb=100,
///     protocols=["NFSv3"])
/// certificate = azure.keyvault.KeyVault("certificate",
///     name="example-cert-kv",
///     location=example.location,
///     resource_group_name=example.name,
///     rbac_authorization_enabled=False,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     soft_delete_retention_days=7)
/// credentials = azure.keyvault.KeyVault("credentials",
///     name="example-creds-kv",
///     location=example.location,
///     resource_group_name=example.name,
///     rbac_authorization_enabled=False,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     soft_delete_retention_days=7)
/// deployer_certificate = azure.keyvault.AccessPolicy("deployer_certificate",
///     key_vault_id=certificate.id,
///     tenant_id=current.tenant_id,
///     object_id=current.object_id,
///     certificate_permissions=[
///         "Get",
///         "List",
///         "Create",
///         "Import",
///         "Update",
///         "Delete",
///         "Purge",
///         "Recover",
///     ],
///     secret_permissions=[
///         "Get",
///         "List",
///         "Set",
///         "Delete",
///         "Purge",
///         "Recover",
///     ])
/// anf_certificate = azure.keyvault.AccessPolicy("anf_certificate",
///     key_vault_id=certificate.id,
///     tenant_id=current.tenant_id,
///     object_id=example_account.identity.principal_id,
///     certificate_permissions=[
///         "Get",
///         "List",
///         "Update",
///         "Create",
///         "Import",
///         "ManageContacts",
///         "GetIssuers",
///         "ListIssuers",
///         "SetIssuers",
///         "DeleteIssuers",
///     ],
///     secret_permissions=[
///         "Get",
///         "List",
///         "Set",
///         "Delete",
///     ])
/// anf_credentials = azure.keyvault.AccessPolicy("anf_credentials",
///     key_vault_id=credentials.id,
///     tenant_id=current.tenant_id,
///     object_id=example_account.identity.principal_id,
///     secret_permissions=[
///         "Get",
///         "List",
///         "Set",
///         "Delete",
///     ])
/// bucket = azure.keyvault.Certificate("bucket",
///     name="example-bucket-cert",
///     key_vault_id=certificate.id,
///     certificate_policy={
///         "issuer_parameters": {
///             "name": "Self",
///         },
///         "key_properties": {
///             "exportable": True,
///             "key_size": 2048,
///             "key_type": "RSA",
///             "reuse_key": False,
///         },
///         "secret_properties": {
///             "content_type": "application/x-pkcs12",
///         },
///         "x509_certificate_properties": {
///             "key_usages": [
///                 "digitalSignature",
///                 "keyEncipherment",
///             ],
///             "extended_key_usages": ["1.3.6.1.5.5.7.3.1"],
///             "subject": "CN=example-bucket.example.internal",
///             "subject_alternative_names": {
///                 "dns_names": ["example-bucket.example.internal"],
///             },
///             "validity_in_months": 12,
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[deployer_certificate]))
/// example_volume_bucket_with_server = azure.netapp.VolumeBucketWithServer("example",
///     name="example-bucket",
///     volume_id=example_volume.id,
///     file_system_nfs_user={
///         "group_id": 1000,
///         "user_id": 1000,
///     },
///     server={
///         "fqdn": "example-bucket.example.internal",
///     },
///     key_vault={
///         "certificate_key_vault_uri": certificate.vault_uri,
///         "certificate_name": bucket.name,
///         "credentials_key_vault_uri": credentials.vault_uri,
///         "credentials_secret_name": "example-bucket-creds",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             anf_certificate,
///             anf_credentials,
///         ]))
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example-delegated",
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
///                 Name = "netapp",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "Microsoft.Netapp/volumes",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/networkinterfaces/*",
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleAccount = new Azure.NetApp.Account("example", new()
///     {
///         Name = "example-anfaccount",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Identity = new Azure.NetApp.Inputs.AccountIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var examplePool = new Azure.NetApp.Pool("example", new()
///     {
///         Name = "example-anfpool",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountName = exampleAccount.Name,
///         ServiceLevel = "Standard",
///         SizeInTb = 4,
///     });
///
///     var exampleVolume = new Azure.NetApp.Volume("example", new()
///     {
///         Name = "example-anfvolume",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountName = exampleAccount.Name,
///         PoolName = examplePool.Name,
///         VolumePath = "example-vol",
///         ServiceLevel = "Standard",
///         SubnetId = exampleSubnet.Id,
///         StorageQuotaInGb = 100,
///         Protocols = new[]
///         {
///             "NFSv3",
///         },
///     });
///
///     var certificate = new Azure.KeyVault.KeyVault("certificate", new()
///     {
///         Name = "example-cert-kv",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         RbacAuthorizationEnabled = false,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         SoftDeleteRetentionDays = 7,
///     });
///
///     var credentials = new Azure.KeyVault.KeyVault("credentials", new()
///     {
///         Name = "example-creds-kv",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         RbacAuthorizationEnabled = false,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         SoftDeleteRetentionDays = 7,
///     });
///
///     var deployerCertificate = new Azure.KeyVault.AccessPolicy("deployer_certificate", new()
///     {
///         KeyVaultId = certificate.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         CertificatePermissions = new[]
///         {
///             "Get",
///             "List",
///             "Create",
///             "Import",
///             "Update",
///             "Delete",
///             "Purge",
///             "Recover",
///         },
///         SecretPermissions = new[]
///         {
///             "Get",
///             "List",
///             "Set",
///             "Delete",
///             "Purge",
///             "Recover",
///         },
///     });
///
///     var anfCertificate = new Azure.KeyVault.AccessPolicy("anf_certificate", new()
///     {
///         KeyVaultId = certificate.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = exampleAccount.Identity.Apply(identity => identity?.PrincipalId),
///         CertificatePermissions = new[]
///         {
///             "Get",
///             "List",
///             "Update",
///             "Create",
///             "Import",
///             "ManageContacts",
///             "GetIssuers",
///             "ListIssuers",
///             "SetIssuers",
///             "DeleteIssuers",
///         },
///         SecretPermissions = new[]
///         {
///             "Get",
///             "List",
///             "Set",
///             "Delete",
///         },
///     });
///
///     var anfCredentials = new Azure.KeyVault.AccessPolicy("anf_credentials", new()
///     {
///         KeyVaultId = credentials.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = exampleAccount.Identity.Apply(identity => identity?.PrincipalId),
///         SecretPermissions = new[]
///         {
///             "Get",
///             "List",
///             "Set",
///             "Delete",
///         },
///     });
///
///     var bucket = new Azure.KeyVault.Certificate("bucket", new()
///     {
///         Name = "example-bucket-cert",
///         KeyVaultId = certificate.Id,
///         CertificatePolicy = new Azure.KeyVault.Inputs.CertificateCertificatePolicyArgs
///         {
///             IssuerParameters = new Azure.KeyVault.Inputs.CertificateCertificatePolicyIssuerParametersArgs
///             {
///                 Name = "Self",
///             },
///             KeyProperties = new Azure.KeyVault.Inputs.CertificateCertificatePolicyKeyPropertiesArgs
///             {
///                 Exportable = true,
///                 KeySize = 2048,
///                 KeyType = "RSA",
///                 ReuseKey = false,
///             },
///             SecretProperties = new Azure.KeyVault.Inputs.CertificateCertificatePolicySecretPropertiesArgs
///             {
///                 ContentType = "application/x-pkcs12",
///             },
///             X509CertificateProperties = new Azure.KeyVault.Inputs.CertificateCertificatePolicyX509CertificatePropertiesArgs
///             {
///                 KeyUsages = new[]
///                 {
///                     "digitalSignature",
///                     "keyEncipherment",
///                 },
///                 ExtendedKeyUsages = new[]
///                 {
///                     "1.3.6.1.5.5.7.3.1",
///                 },
///                 Subject = "CN=example-bucket.example.internal",
///                 SubjectAlternativeNames = new Azure.KeyVault.Inputs.CertificateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNamesArgs
///                 {
///                     DnsNames = new[]
///                     {
///                         "example-bucket.example.internal",
///                     },
///                 },
///                 ValidityInMonths = 12,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             deployerCertificate,
///         },
///     });
///
///     var exampleVolumeBucketWithServer = new Azure.NetApp.VolumeBucketWithServer("example", new()
///     {
///         Name = "example-bucket",
///         VolumeId = exampleVolume.Id,
///         FileSystemNfsUser = new Azure.NetApp.Inputs.VolumeBucketWithServerFileSystemNfsUserArgs
///         {
///             GroupId = 1000,
///             UserId = 1000,
///         },
///         Server = new Azure.NetApp.Inputs.VolumeBucketWithServerServerArgs
///         {
///             Fqdn = "example-bucket.example.internal",
///         },
///         KeyVault = new Azure.NetApp.Inputs.VolumeBucketWithServerKeyVaultArgs
///         {
///             CertificateKeyVaultUri = certificate.VaultUri,
///             CertificateName = bucket.Name,
///             CredentialsKeyVaultUri = credentials.VaultUri,
///             CredentialsSecretName = "example-bucket-creds",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             anfCertificate,
///             anfCredentials,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("example-vnet"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-delegated"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("netapp"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("Microsoft.Netapp/volumes"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/networkinterfaces/*"),
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := netapp.NewAccount(ctx, "example", &netapp.AccountArgs{
/// 			Name:              pulumi.String("example-anfaccount"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Identity: &netapp.AccountIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePool, err := netapp.NewPool(ctx, "example", &netapp.PoolArgs{
/// 			Name:              pulumi.String("example-anfpool"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AccountName:       exampleAccount.Name,
/// 			ServiceLevel:      pulumi.String("Standard"),
/// 			SizeInTb:          pulumi.Int(4),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVolume, err := netapp.NewVolume(ctx, "example", &netapp.VolumeArgs{
/// 			Name:              pulumi.String("example-anfvolume"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AccountName:       exampleAccount.Name,
/// 			PoolName:          examplePool.Name,
/// 			VolumePath:        pulumi.String("example-vol"),
/// 			ServiceLevel:      pulumi.String("Standard"),
/// 			SubnetId:          exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 			StorageQuotaInGb:  pulumi.Int(100),
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String("NFSv3"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		certificate, err := keyvault.NewKeyVault(ctx, "certificate", &keyvault.KeyVaultArgs{
/// 			Name:                     pulumi.String("example-cert-kv"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			RbacAuthorizationEnabled: pulumi.Bool(false),
/// 			TenantId:                 pulumi.String(current.TenantId),
/// 			SkuName:                  pulumi.String("standard"),
/// 			SoftDeleteRetentionDays:  pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		credentials, err := keyvault.NewKeyVault(ctx, "credentials", &keyvault.KeyVaultArgs{
/// 			Name:                     pulumi.String("example-creds-kv"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			RbacAuthorizationEnabled: pulumi.Bool(false),
/// 			TenantId:                 pulumi.String(current.TenantId),
/// 			SkuName:                  pulumi.String("standard"),
/// 			SoftDeleteRetentionDays:  pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		deployerCertificate, err := keyvault.NewAccessPolicy(ctx, "deployer_certificate", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: certificate.ID().ToIDOutput().ToStringOutput(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId:   pulumi.String(current.ObjectId),
/// 			CertificatePermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 				pulumi.String("List"),
/// 				pulumi.String("Create"),
/// 				pulumi.String("Import"),
/// 				pulumi.String("Update"),
/// 				pulumi.String("Delete"),
/// 				pulumi.String("Purge"),
/// 				pulumi.String("Recover"),
/// 			},
/// 			SecretPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 				pulumi.String("List"),
/// 				pulumi.String("Set"),
/// 				pulumi.String("Delete"),
/// 				pulumi.String("Purge"),
/// 				pulumi.String("Recover"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		anfCertificate, err := keyvault.NewAccessPolicy(ctx, "anf_certificate", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: certificate.ID().ToIDOutput().ToStringOutput(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId:   exampleAccount.Identity.PrincipalId(),
/// 			CertificatePermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 				pulumi.String("List"),
/// 				pulumi.String("Update"),
/// 				pulumi.String("Create"),
/// 				pulumi.String("Import"),
/// 				pulumi.String("ManageContacts"),
/// 				pulumi.String("GetIssuers"),
/// 				pulumi.String("ListIssuers"),
/// 				pulumi.String("SetIssuers"),
/// 				pulumi.String("DeleteIssuers"),
/// 			},
/// 			SecretPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 				pulumi.String("List"),
/// 				pulumi.String("Set"),
/// 				pulumi.String("Delete"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		anfCredentials, err := keyvault.NewAccessPolicy(ctx, "anf_credentials", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: credentials.ID().ToIDOutput().ToStringOutput(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId:   exampleAccount.Identity.PrincipalId(),
/// 			SecretPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 				pulumi.String("List"),
/// 				pulumi.String("Set"),
/// 				pulumi.String("Delete"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := keyvault.NewCertificate(ctx, "bucket", &keyvault.CertificateArgs{
/// 			Name:       pulumi.String("example-bucket-cert"),
/// 			KeyVaultId: certificate.ID().ToIDOutput().ToStringOutput(),
/// 			CertificatePolicy: &keyvault.CertificateCertificatePolicyArgs{
/// 				IssuerParameters: &keyvault.CertificateCertificatePolicyIssuerParametersArgs{
/// 					Name: pulumi.String("Self"),
/// 				},
/// 				KeyProperties: &keyvault.CertificateCertificatePolicyKeyPropertiesArgs{
/// 					Exportable: pulumi.Bool(true),
/// 					KeySize:    pulumi.Int(2048),
/// 					KeyType:    pulumi.String("RSA"),
/// 					ReuseKey:   pulumi.Bool(false),
/// 				},
/// 				SecretProperties: &keyvault.CertificateCertificatePolicySecretPropertiesArgs{
/// 					ContentType: pulumi.String("application/x-pkcs12"),
/// 				},
/// 				X509CertificateProperties: &keyvault.CertificateCertificatePolicyX509CertificatePropertiesArgs{
/// 					KeyUsages: pulumi.StringArray{
/// 						pulumi.String("digitalSignature"),
/// 						pulumi.String("keyEncipherment"),
/// 					},
/// 					ExtendedKeyUsages: pulumi.StringArray{
/// 						pulumi.String("1.3.6.1.5.5.7.3.1"),
/// 					},
/// 					Subject: pulumi.String("CN=example-bucket.example.internal"),
/// 					SubjectAlternativeNames: &keyvault.CertificateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNamesArgs{
/// 						DnsNames: pulumi.StringArray{
/// 							pulumi.String("example-bucket.example.internal"),
/// 						},
/// 					},
/// 					ValidityInMonths: pulumi.Int(12),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			deployerCertificate,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = netapp.NewVolumeBucketWithServer(ctx, "example", &netapp.VolumeBucketWithServerArgs{
/// 			Name:     pulumi.String("example-bucket"),
/// 			VolumeId: exampleVolume.ID().ToIDOutput().ToStringOutput(),
/// 			FileSystemNfsUser: &netapp.VolumeBucketWithServerFileSystemNfsUserArgs{
/// 				GroupId: pulumi.Int(1000),
/// 				UserId:  pulumi.Int(1000),
/// 			},
/// 			Server: &netapp.VolumeBucketWithServerServerArgs{
/// 				Fqdn: pulumi.String("example-bucket.example.internal"),
/// 			},
/// 			KeyVault: &netapp.VolumeBucketWithServerKeyVaultArgs{
/// 				CertificateKeyVaultUri: certificate.VaultUri,
/// 				CertificateName:        bucket.Name,
/// 				CredentialsKeyVaultUri: credentials.VaultUri,
/// 				CredentialsSecretName:  pulumi.String("example-bucket-creds"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			anfCertificate,
/// 			anfCredentials,
/// 		}))
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
/// data "azure_core_getclientconfig" "current" {
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "example-vnet"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   address_spaces      = ["10.0.0.0/16"]
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "example-delegated"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.2.0/24"]
///   delegations {
///     name = "netapp"
///     service_delegation = {
///       name    = "Microsoft.Netapp/volumes"
///       actions = ["Microsoft.Network/networkinterfaces/*", "Microsoft.Network/virtualNetworks/subnets/join/action"]
///     }
///   }
/// }
/// resource "azure_netapp_account" "example" {
///   name                = "example-anfaccount"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_netapp_pool" "example" {
///   name                = "example-anfpool"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   account_name        = azure_netapp_account.example.name
///   service_level       = "Standard"
///   size_in_tb          = 4
/// }
/// resource "azure_netapp_volume" "example" {
///   name                = "example-anfvolume"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   account_name        = azure_netapp_account.example.name
///   pool_name           = azure_netapp_pool.example.name
///   volume_path         = "example-vol"
///   service_level       = "Standard"
///   subnet_id           = azure_network_subnet.example.id
///   storage_quota_in_gb = 100
///   protocols           = ["NFSv3"]
/// }
/// resource "azure_keyvault_keyvault" "certificate" {
///   name                       = "example-cert-kv"
///   location                   = azure_core_resourcegroup.example.location
///   resource_group_name        = azure_core_resourcegroup.example.name
///   rbac_authorization_enabled = false
///   tenant_id                  = data.azure_core_getclientconfig.current.tenant_id
///   sku_name                   = "standard"
///   soft_delete_retention_days = 7
/// }
/// resource "azure_keyvault_keyvault" "credentials" {
///   name                       = "example-creds-kv"
///   location                   = azure_core_resourcegroup.example.location
///   resource_group_name        = azure_core_resourcegroup.example.name
///   rbac_authorization_enabled = false
///   tenant_id                  = data.azure_core_getclientconfig.current.tenant_id
///   sku_name                   = "standard"
///   soft_delete_retention_days = 7
/// }
/// resource "azure_keyvault_accesspolicy" "deployer_certificate" {
///   key_vault_id            = azure_keyvault_keyvault.certificate.id
///   tenant_id               = data.azure_core_getclientconfig.current.tenant_id
///   object_id               = data.azure_core_getclientconfig.current.object_id
///   certificate_permissions = ["Get", "List", "Create", "Import", "Update", "Delete", "Purge", "Recover"]
///   secret_permissions      = ["Get", "List", "Set", "Delete", "Purge", "Recover"]
/// }
/// resource "azure_keyvault_accesspolicy" "anf_certificate" {
///   key_vault_id            = azure_keyvault_keyvault.certificate.id
///   tenant_id               = data.azure_core_getclientconfig.current.tenant_id
///   object_id               = azure_netapp_account.example.identity.principal_id
///   certificate_permissions = ["Get", "List", "Update", "Create", "Import", "ManageContacts", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers"]
///   secret_permissions      = ["Get", "List", "Set", "Delete"]
/// }
/// resource "azure_keyvault_accesspolicy" "anf_credentials" {
///   key_vault_id       = azure_keyvault_keyvault.credentials.id
///   tenant_id          = data.azure_core_getclientconfig.current.tenant_id
///   object_id          = azure_netapp_account.example.identity.principal_id
///   secret_permissions = ["Get", "List", "Set", "Delete"]
/// }
/// resource "azure_keyvault_certificate" "bucket" {
///   depends_on   = [azure_keyvault_accesspolicy.deployer_certificate]
///   name         = "example-bucket-cert"
///   key_vault_id = azure_keyvault_keyvault.certificate.id
///   certificate_policy = {
///     issuer_parameters = {
///       name = "Self"
///     }
///     key_properties = {
///       exportable = true
///       key_size   = 2048
///       key_type   = "RSA"
///       reuse_key  = false
///     }
///     secret_properties = {
///       content_type = "application/x-pkcs12"
///     }
///     x509_certificate_properties = {
///       key_usages          = ["digitalSignature", "keyEncipherment"]
///       extended_key_usages = ["1.3.6.1.5.5.7.3.1"]
///       subject             = "CN=example-bucket.example.internal"
///       subject_alternative_names = {
///         dns_names = ["example-bucket.example.internal"]
///       }
///       validity_in_months = 12
///     }
///   }
/// }
/// resource "azure_netapp_volumebucketwithserver" "example" {
///   depends_on = [azure_keyvault_accesspolicy.anf_certificate, azure_keyvault_accesspolicy.anf_credentials]
///   name       = "example-bucket"
///   volume_id  = azure_netapp_volume.example.id
///   file_system_nfs_user = {
///     group_id = 1000
///     user_id  = 1000
///   }
///   server = {
///     fqdn = "example-bucket.example.internal"
///   }
///   key_vault = {
///     certificate_key_vault_uri = azure_keyvault_keyvault.certificate.vault_uri
///     certificate_name          = azure_keyvault_certificate.bucket.name
///     credentials_key_vault_uri = azure_keyvault_keyvault.credentials.vault_uri
///     credentials_secret_name   = "example-bucket-creds"
///   }
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.netapp.Account;
/// import com.pulumi.azure.netapp.AccountArgs;
/// import com.pulumi.azure.netapp.inputs.AccountIdentityArgs;
/// import com.pulumi.azure.netapp.Pool;
/// import com.pulumi.azure.netapp.PoolArgs;
/// import com.pulumi.azure.netapp.Volume;
/// import com.pulumi.azure.netapp.VolumeArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.AccessPolicy;
/// import com.pulumi.azure.keyvault.AccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Certificate;
/// import com.pulumi.azure.keyvault.CertificateArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicyArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicyIssuerParametersArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicyKeyPropertiesArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicySecretPropertiesArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicyX509CertificatePropertiesArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNamesArgs;
/// import com.pulumi.azure.netapp.VolumeBucketWithServer;
/// import com.pulumi.azure.netapp.VolumeBucketWithServerArgs;
/// import com.pulumi.azure.netapp.inputs.VolumeBucketWithServerFileSystemNfsUserArgs;
/// import com.pulumi.azure.netapp.inputs.VolumeBucketWithServerServerArgs;
/// import com.pulumi.azure.netapp.inputs.VolumeBucketWithServerKeyVaultArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-delegated")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("netapp")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("Microsoft.Netapp/volumes")
///                     .actions(
///                         "Microsoft.Network/networkinterfaces/*",
///                         "Microsoft.Network/virtualNetworks/subnets/join/action")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-anfaccount")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .identity(AccountIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var examplePool = new Pool("examplePool", PoolArgs.builder()
///             .name("example-anfpool")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountName(exampleAccount.name())
///             .serviceLevel("Standard")
///             .sizeInTb(4)
///             .build());
///
///         var exampleVolume = new Volume("exampleVolume", VolumeArgs.builder()
///             .name("example-anfvolume")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountName(exampleAccount.name())
///             .poolName(examplePool.name())
///             .volumePath("example-vol")
///             .serviceLevel("Standard")
///             .subnetId(exampleSubnet.id())
///             .storageQuotaInGb(100)
///             .protocols("NFSv3")
///             .build());
///
///         var certificate = new KeyVault("certificate", KeyVaultArgs.builder()
///             .name("example-cert-kv")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .rbacAuthorizationEnabled(false)
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .softDeleteRetentionDays(7)
///             .build());
///
///         var credentials = new KeyVault("credentials", KeyVaultArgs.builder()
///             .name("example-creds-kv")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .rbacAuthorizationEnabled(false)
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .softDeleteRetentionDays(7)
///             .build());
///
///         var deployerCertificate = new AccessPolicy("deployerCertificate", AccessPolicyArgs.builder()
///             .keyVaultId(certificate.id())
///             .tenantId(current.tenantId())
///             .objectId(current.objectId())
///             .certificatePermissions(
///                 "Get",
///                 "List",
///                 "Create",
///                 "Import",
///                 "Update",
///                 "Delete",
///                 "Purge",
///                 "Recover")
///             .secretPermissions(
///                 "Get",
///                 "List",
///                 "Set",
///                 "Delete",
///                 "Purge",
///                 "Recover")
///             .build());
///
///         var anfCertificate = new AccessPolicy("anfCertificate", AccessPolicyArgs.builder()
///             .keyVaultId(certificate.id())
///             .tenantId(current.tenantId())
///             .objectId(exampleAccount.identity().applyValue(_identity -> _identity.principalId()))
///             .certificatePermissions(
///                 "Get",
///                 "List",
///                 "Update",
///                 "Create",
///                 "Import",
///                 "ManageContacts",
///                 "GetIssuers",
///                 "ListIssuers",
///                 "SetIssuers",
///                 "DeleteIssuers")
///             .secretPermissions(
///                 "Get",
///                 "List",
///                 "Set",
///                 "Delete")
///             .build());
///
///         var anfCredentials = new AccessPolicy("anfCredentials", AccessPolicyArgs.builder()
///             .keyVaultId(credentials.id())
///             .tenantId(current.tenantId())
///             .objectId(exampleAccount.identity().applyValue(_identity -> _identity.principalId()))
///             .secretPermissions(
///                 "Get",
///                 "List",
///                 "Set",
///                 "Delete")
///             .build());
///
///         var bucket = new Certificate("bucket", CertificateArgs.builder()
///             .name("example-bucket-cert")
///             .keyVaultId(certificate.id())
///             .certificatePolicy(CertificateCertificatePolicyArgs.builder()
///                 .issuerParameters(CertificateCertificatePolicyIssuerParametersArgs.builder()
///                     .name("Self")
///                     .build())
///                 .keyProperties(CertificateCertificatePolicyKeyPropertiesArgs.builder()
///                     .exportable(true)
///                     .keySize(2048)
///                     .keyType("RSA")
///                     .reuseKey(false)
///                     .build())
///                 .secretProperties(CertificateCertificatePolicySecretPropertiesArgs.builder()
///                     .contentType("application/x-pkcs12")
///                     .build())
///                 .x509CertificateProperties(CertificateCertificatePolicyX509CertificatePropertiesArgs.builder()
///                     .keyUsages(
///                         "digitalSignature",
///                         "keyEncipherment")
///                     .extendedKeyUsages("1.3.6.1.5.5.7.3.1")
///                     .subject("CN=example-bucket.example.internal")
///                     .subjectAlternativeNames(CertificateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNamesArgs.builder()
///                         .dnsNames("example-bucket.example.internal")
///                         .build())
///                     .validityInMonths(12)
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(deployerCertificate)
///                 .build());
///
///         var exampleVolumeBucketWithServer = new VolumeBucketWithServer("exampleVolumeBucketWithServer", VolumeBucketWithServerArgs.builder()
///             .name("example-bucket")
///             .volumeId(exampleVolume.id())
///             .fileSystemNfsUser(VolumeBucketWithServerFileSystemNfsUserArgs.builder()
///                 .groupId(1000)
///                 .userId(1000)
///                 .build())
///             .server(VolumeBucketWithServerServerArgs.builder()
///                 .fqdn("example-bucket.example.internal")
///                 .build())
///             .keyVault(VolumeBucketWithServerKeyVaultArgs.builder()
///                 .certificateKeyVaultUri(certificate.vaultUri())
///                 .certificateName(bucket.name())
///                 .credentialsKeyVaultUri(credentials.vaultUri())
///                 .credentialsSecretName("example-bucket-creds")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     anfCertificate,
///                     anfCredentials)
///                 .build());
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
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.0.0/16
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-delegated
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///       delegations:
///         - name: netapp
///           serviceDelegation:
///             name: Microsoft.Netapp/volumes
///             actions:
///               - Microsoft.Network/networkinterfaces/*
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///   exampleAccount:
///     type: azure:netapp:Account
///     name: example
///     properties:
///       name: example-anfaccount
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       identity:
///         type: SystemAssigned
///   examplePool:
///     type: azure:netapp:Pool
///     name: example
///     properties:
///       name: example-anfpool
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountName: ${exampleAccount.name}
///       serviceLevel: Standard
///       sizeInTb: 4
///   exampleVolume:
///     type: azure:netapp:Volume
///     name: example
///     properties:
///       name: example-anfvolume
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountName: ${exampleAccount.name}
///       poolName: ${examplePool.name}
///       volumePath: example-vol
///       serviceLevel: Standard
///       subnetId: ${exampleSubnet.id}
///       storageQuotaInGb: 100
///       protocols:
///         - NFSv3
///   certificate:
///     type: azure:keyvault:KeyVault
///     properties:
///       name: example-cert-kv
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       rbacAuthorizationEnabled: false
///       tenantId: ${current.tenantId}
///       skuName: standard
///       softDeleteRetentionDays: 7
///   credentials:
///     type: azure:keyvault:KeyVault
///     properties:
///       name: example-creds-kv
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       rbacAuthorizationEnabled: false
///       tenantId: ${current.tenantId}
///       skuName: standard
///       softDeleteRetentionDays: 7
///   deployerCertificate:
///     type: azure:keyvault:AccessPolicy
///     name: deployer_certificate
///     properties:
///       keyVaultId: ${certificate.id}
///       tenantId: ${current.tenantId}
///       objectId: ${current.objectId}
///       certificatePermissions:
///         - Get
///         - List
///         - Create
///         - Import
///         - Update
///         - Delete
///         - Purge
///         - Recover
///       secretPermissions:
///         - Get
///         - List
///         - Set
///         - Delete
///         - Purge
///         - Recover
///   anfCertificate:
///     type: azure:keyvault:AccessPolicy
///     name: anf_certificate
///     properties:
///       keyVaultId: ${certificate.id}
///       tenantId: ${current.tenantId}
///       objectId: ${exampleAccount.identity.principalId}
///       certificatePermissions:
///         - Get
///         - List
///         - Update
///         - Create
///         - Import
///         - ManageContacts
///         - GetIssuers
///         - ListIssuers
///         - SetIssuers
///         - DeleteIssuers
///       secretPermissions:
///         - Get
///         - List
///         - Set
///         - Delete
///   anfCredentials:
///     type: azure:keyvault:AccessPolicy
///     name: anf_credentials
///     properties:
///       keyVaultId: ${credentials.id}
///       tenantId: ${current.tenantId}
///       objectId: ${exampleAccount.identity.principalId}
///       secretPermissions:
///         - Get
///         - List
///         - Set
///         - Delete
///   bucket:
///     type: azure:keyvault:Certificate
///     properties:
///       name: example-bucket-cert
///       keyVaultId: ${certificate.id}
///       certificatePolicy:
///         issuerParameters:
///           name: Self
///         keyProperties:
///           exportable: true
///           keySize: 2048
///           keyType: RSA
///           reuseKey: false
///         secretProperties:
///           contentType: application/x-pkcs12
///         x509CertificateProperties:
///           keyUsages:
///             - digitalSignature
///             - keyEncipherment
///           extendedKeyUsages:
///             - 1.3.6.1.5.5.7.3.1
///           subject: CN=example-bucket.example.internal
///           subjectAlternativeNames:
///             dnsNames:
///               - example-bucket.example.internal
///           validityInMonths: 12
///     options:
///       dependsOn:
///         - ${deployerCertificate}
///   exampleVolumeBucketWithServer:
///     type: azure:netapp:VolumeBucketWithServer
///     name: example
///     properties:
///       name: example-bucket
///       volumeId: ${exampleVolume.id}
///       fileSystemNfsUser:
///         groupId: 1000
///         userId: 1000
///       server:
///         fqdn: example-bucket.example.internal
///       keyVault:
///         certificateKeyVaultUri: ${certificate.vaultUri}
///         certificateName: ${bucket.name}
///         credentialsKeyVaultUri: ${credentials.vaultUri}
///         credentialsSecretName: example-bucket-creds
///     options:
///       dependsOn:
///         - ${anfCertificate}
///         - ${anfCredentials}
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
/// * `Microsoft.NetApp` - 2026-01-01
///
/// ## Import
///
/// NetApp Volume Buckets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:netapp/volumeBucketWithServer:VolumeBucketWithServer example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1/volumes/vol1/buckets/bucket1
/// ```
class VolumeBucketWithServer extends pulumi.CustomResource {
  /// The CIFS username used by the bucket when accessing volume data over SMB. Exactly one of `fileSystemNfsUser` or `fileSystemCifsUsername` must be specified.
  late final pulumi.Output<String?> fileSystemCifsUsername;
  /// A `fileSystemNfsUser` block as defined below. Exactly one of `fileSystemNfsUser` or `fileSystemCifsUsername` must be specified.
  late final pulumi.Output<VolumeBucketWithServerFileSystemNfsUser?> fileSystemNfsUser;
  /// A `keyVault` block as defined below. Used to source the server certificate and to store generated credentials in Azure Key Vault. Mutually exclusive with `server.0.certificate_pem`.
  late final pulumi.Output<VolumeBucketWithServerKeyVault?> keyVault;
  /// The S3-compatible name of the bucket. Must be 3-63 characters long, DNS-compliant (lowercase letters, digits, hyphens or periods), must start and end with a letter or number and must not look like an IPv4 address. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The volume sub-path mounted inside the bucket. Defaults to `/`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> path;
  /// The bucket permission level. Possible values are `ReadOnly` and `ReadWrite`. Defaults to `ReadOnly`.
  late final pulumi.Output<String?> permissions;
  /// A `server` block as defined below. Used to provide the bucket server FQDN and a directly uploaded PEM certificate. The certificate source (`server.0.certificate_pem`) is mutually exclusive with `keyVault`.
  late final pulumi.Output<VolumeBucketWithServerServer> server;
  /// The Common Name (CN) of the bucket server certificate.
  late final pulumi.Output<String> serverCertificateCommonName;
  /// The expiry date of the bucket server certificate, in RFC3339 format.
  late final pulumi.Output<String> serverCertificateExpiryDate;
  /// The IP address that backs the bucket endpoint.
  late final pulumi.Output<String> serverIpAddress;
  /// The credentials status of the bucket. Possible values are `NoCredentialsSet`, `CredentialsExpired` and `Active`.
  late final pulumi.Output<String> status;
  /// The ARM ID of the parent NetApp Volume the bucket attaches to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> volumeId;

  /// Creates a new [VolumeBucketWithServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeBucketWithServer]. {@macro pulumi_netapp_volume_bucket_with_server_volume_bucket_with_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeBucketWithServer(
    String name, {
    VolumeBucketWithServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/volumeBucketWithServer:VolumeBucketWithServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    fileSystemCifsUsername = registerOutput<String?>('fileSystemCifsUsername');
    fileSystemNfsUser = registerOutput<VolumeBucketWithServerFileSystemNfsUser?>('fileSystemNfsUser', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeBucketWithServerFileSystemNfsUser.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVault = registerOutput<VolumeBucketWithServerKeyVault?>('keyVault', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeBucketWithServerKeyVault.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    path = registerOutput<String?>('path');
    permissions = registerOutput<String?>('permissions');
    server = registerOutput<VolumeBucketWithServerServer>('server', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeBucketWithServerServer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serverCertificateCommonName = registerOutput<String>('serverCertificateCommonName');
    serverCertificateExpiryDate = registerOutput<String>('serverCertificateExpiryDate');
    serverIpAddress = registerOutput<String>('serverIpAddress');
    status = registerOutput<String>('status');
    volumeId = registerOutput<String>('volumeId');
  }

  /// Gets an existing [VolumeBucketWithServer] resource's state with the given [name] and [id].
  static VolumeBucketWithServer get(
    String name,
    pulumi.Input<String> id, {
    VolumeBucketWithServerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VolumeBucketWithServer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VolumeBucketWithServer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/volumeBucketWithServer:VolumeBucketWithServer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    fileSystemCifsUsername = registerOutput<String?>('fileSystemCifsUsername');
    fileSystemNfsUser = registerOutput<VolumeBucketWithServerFileSystemNfsUser?>('fileSystemNfsUser', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeBucketWithServerFileSystemNfsUser.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVault = registerOutput<VolumeBucketWithServerKeyVault?>('keyVault', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeBucketWithServerKeyVault.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    path = registerOutput<String?>('path');
    permissions = registerOutput<String?>('permissions');
    server = registerOutput<VolumeBucketWithServerServer>('server', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeBucketWithServerServer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serverCertificateCommonName = registerOutput<String>('serverCertificateCommonName');
    serverCertificateExpiryDate = registerOutput<String>('serverCertificateExpiryDate');
    serverIpAddress = registerOutput<String>('serverIpAddress');
    status = registerOutput<String>('status');
    volumeId = registerOutput<String>('volumeId');
  }

  /// Creates a typed reference to an existing [VolumeBucketWithServer] resource.
  VolumeBucketWithServer.reference(String urn)
    : super(
        'azure:netapp/volumeBucketWithServer:VolumeBucketWithServer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    fileSystemCifsUsername = registerOutput<String?>('fileSystemCifsUsername');
    fileSystemNfsUser = registerOutput<VolumeBucketWithServerFileSystemNfsUser?>('fileSystemNfsUser', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeBucketWithServerFileSystemNfsUser.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVault = registerOutput<VolumeBucketWithServerKeyVault?>('keyVault', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeBucketWithServerKeyVault.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    path = registerOutput<String?>('path');
    permissions = registerOutput<String?>('permissions');
    server = registerOutput<VolumeBucketWithServerServer>('server', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeBucketWithServerServer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serverCertificateCommonName = registerOutput<String>('serverCertificateCommonName');
    serverCertificateExpiryDate = registerOutput<String>('serverCertificateExpiryDate');
    serverIpAddress = registerOutput<String>('serverIpAddress');
    status = registerOutput<String>('status');
    volumeId = registerOutput<String>('volumeId');
  }
}
