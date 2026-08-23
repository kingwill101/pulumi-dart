import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_bucket_args.dart';
import 'volume_bucket_file_system_nfs_user.dart';
import 'volume_bucket_key_vault.dart';
import 'volume_bucket_state.dart';

/// Manages a NetApp Files Volume Bucket. Buckets expose the contents of an Azure NetApp Files volume (or a sub-path within it) as an S3-compatible object endpoint via the Azure NetApp Files Object REST API.
///
/// Use this resource to create **subsequent** buckets on a volume. This resource does not manage the bucket server (FQDN and certificate); it reuses the server configuration established by the first bucket on the volume.
///
/// &gt; **Note:** The **first** bucket on a volume must be created with the `azure.netapp.VolumeBucketWithServer` resource, which sets up the shared bucket server (FQDN and certificate). Every additional bucket on the same volume is then created with this server-less resource. Declaring a `server` block on more than one bucket would overwrite the shared server configuration, which is why this resource intentionally does not expose one.
///
/// &gt; **Note:** The Object REST API feature is in preview and must be registered on the subscription via `Microsoft.NetApp / ANFEnableObjectRESTAPI` before buckets can be created. See [Configure access to the Azure NetApp Files Object REST API](https://learn.microsoft.com/en-us/azure/azure-netapp-files/object-rest-api-access-configure) for the registration command and Key Vault prerequisites.
///
/// &gt; **Note:** Buckets are supported on cool-access and large NetApp volumes. Buckets are not supported on cache volumes. Deleting the parent volume cascade-deletes its buckets.
///
/// ## Example Usage
///
/// This example creates the first bucket on the volume with `azure.netapp.VolumeBucketWithServer` (which establishes the server) and then adds a second, server-less bucket with `azure.netapp.VolumeBucket`.
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
/// // First bucket - establishes the shared bucket server.
/// const first = new azure.netapp.VolumeBucketWithServer("first", {
///     name: "example-bucket-first",
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
/// // Subsequent bucket - reuses the server configured by the first bucket.
/// const exampleVolumeBucket = new azure.netapp.VolumeBucket("example", {
///     name: "example-bucket-second",
///     volumeId: exampleVolume.id,
///     fileSystemNfsUser: {
///         groupId: 2000,
///         userId: 2000,
///     },
/// }, {
///     dependsOn: [first],
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
/// # First bucket - establishes the shared bucket server.
/// first = azure.netapp.VolumeBucketWithServer("first",
///     name="example-bucket-first",
///     volume_id=example_volume.id,
///     file_system_nfs_user={
///         "group_id": 1000,
///         "user_id": 1000,
///     },
///     server={
///         "fqdn": "example-bucket.example.internal",
///         "certificate_pem": std.base64encode(input=f"{bucket_self_signed_cert['certPem']}{bucket['privateKeyPem']}").result,
///     })
/// # Subsequent bucket - reuses the server configured by the first bucket.
/// example_volume_bucket = azure.netapp.VolumeBucket("example",
///     name="example-bucket-second",
///     volume_id=example_volume.id,
///     file_system_nfs_user={
///         "group_id": 2000,
///         "user_id": 2000,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[first]))
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
///     // First bucket - establishes the shared bucket server.
///     var first = new Azure.NetApp.VolumeBucketWithServer("first", new()
///     {
///         Name = "example-bucket-first",
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
///     // Subsequent bucket - reuses the server configured by the first bucket.
///     var exampleVolumeBucket = new Azure.NetApp.VolumeBucket("example", new()
///     {
///         Name = "example-bucket-second",
///         VolumeId = exampleVolume.Id,
///         FileSystemNfsUser = new Azure.NetApp.Inputs.VolumeBucketFileSystemNfsUserArgs
///         {
///             GroupId = 2000,
///             UserId = 2000,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             first,
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
/// 			SubnetId:          exampleSubnet.ID(),
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
/// 			Subject: []map[string]interface{}{
/// 				map[string]interface{}{
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
/// 		// First bucket - establishes the shared bucket server.
/// 		first, err := netapp.NewVolumeBucketWithServer(ctx, "first", &netapp.VolumeBucketWithServerArgs{
/// 			Name:     pulumi.String("example-bucket-first"),
/// 			VolumeId: exampleVolume.ID(),
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
/// 		// Subsequent bucket - reuses the server configured by the first bucket.
/// 		_, err = netapp.NewVolumeBucket(ctx, "example", &netapp.VolumeBucketArgs{
/// 			Name:     pulumi.String("example-bucket-second"),
/// 			VolumeId: exampleVolume.ID(),
/// 			FileSystemNfsUser: &netapp.VolumeBucketFileSystemNfsUserArgs{
/// 				GroupId: pulumi.Int(2000),
/// 				UserId:  pulumi.Int(2000),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			first,
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
/// # First bucket - establishes the shared bucket server.
/// resource "azure_netapp_volumebucketwithserver" "first" {
///   name      = "example-bucket-first"
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
/// # Subsequent bucket - reuses the server configured by the first bucket.
/// resource "azure_netapp_volumebucket" "example" {
///   depends_on = [azure_netapp_volumebucketwithserver.first]
///   name       = "example-bucket-second"
///   volume_id  = azure_netapp_volume.example.id
///   file_system_nfs_user = {
///     group_id = 2000
///     user_id  = 2000
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
/// import com.pulumi.azure.netapp.VolumeBucket;
/// import com.pulumi.azure.netapp.VolumeBucketArgs;
/// import com.pulumi.azure.netapp.inputs.VolumeBucketFileSystemNfsUserArgs;
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
///         // First bucket - establishes the shared bucket server.
///         var first = new VolumeBucketWithServer("first", VolumeBucketWithServerArgs.builder()
///             .name("example-bucket-first")
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
///         // Subsequent bucket - reuses the server configured by the first bucket.
///         var exampleVolumeBucket = new VolumeBucket("exampleVolumeBucket", VolumeBucketArgs.builder()
///             .name("example-bucket-second")
///             .volumeId(exampleVolume.id())
///             .fileSystemNfsUser(VolumeBucketFileSystemNfsUserArgs.builder()
///                 .groupId(2000)
///                 .userId(2000)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(first)
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
///   # First bucket - establishes the shared bucket server.
///   first:
///     type: azure:netapp:VolumeBucketWithServer
///     properties:
///       name: example-bucket-first
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
///   # Subsequent bucket - reuses the server configured by the first bucket.
///   exampleVolumeBucket:
///     type: azure:netapp:VolumeBucket
///     name: example
///     properties:
///       name: example-bucket-second
///       volumeId: ${exampleVolume.id}
///       fileSystemNfsUser:
///         groupId: 2000
///         userId: 2000
///     options:
///       dependsOn:
///         - ${first}
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
/// $ pulumi import azure:netapp/volumeBucket:VolumeBucket example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1/volumes/vol1/buckets/bucket1
/// ```
class VolumeBucket extends pulumi.CustomResource {
  /// The CIFS username used by the bucket when accessing volume data over SMB. Exactly one of `fileSystemNfsUser` or `fileSystemCifsUsername` must be specified.
  late final pulumi.Output<String?> fileSystemCifsUsername;
  /// A `fileSystemNfsUser` block as defined below. Exactly one of `fileSystemNfsUser` or `fileSystemCifsUsername` must be specified.
  late final pulumi.Output<VolumeBucketFileSystemNfsUser?> fileSystemNfsUser;
  /// A `keyVault` block as defined below. Used to store the generated bucket credentials in Azure Key Vault.
  late final pulumi.Output<VolumeBucketKeyVault?> keyVault;
  /// The S3-compatible name of the bucket. Must be 3-63 characters long, DNS-compliant (lowercase letters, digits, hyphens or periods), must start and end with a letter or number and must not look like an IPv4 address. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The volume sub-path mounted inside the bucket. Defaults to `/`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> path;
  /// The bucket permission level. Possible values are `ReadOnly` and `ReadWrite`. Defaults to `ReadOnly`.
  late final pulumi.Output<String?> permissions;
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

  /// Creates a new [VolumeBucket].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeBucket]. {@macro pulumi_netapp_volume_bucket_volume_bucket_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeBucket(
    String name, {
    VolumeBucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/volumeBucket:VolumeBucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    fileSystemCifsUsername = registerOutput<String?>('fileSystemCifsUsername');
    fileSystemNfsUser = registerOutput<VolumeBucketFileSystemNfsUser?>('fileSystemNfsUser', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeBucketFileSystemNfsUser.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVault = registerOutput<VolumeBucketKeyVault?>('keyVault', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeBucketKeyVault.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    path = registerOutput<String?>('path');
    permissions = registerOutput<String?>('permissions');
    serverCertificateCommonName = registerOutput<String>('serverCertificateCommonName');
    serverCertificateExpiryDate = registerOutput<String>('serverCertificateExpiryDate');
    serverIpAddress = registerOutput<String>('serverIpAddress');
    status = registerOutput<String>('status');
    volumeId = registerOutput<String>('volumeId');
  }

  /// Gets an existing [VolumeBucket] resource's state with the given [name] and [id].
  static VolumeBucket get(
    String name,
    pulumi.Input<String> id, {
    VolumeBucketState? state,
  }) {
    return VolumeBucket._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VolumeBucket._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/volumeBucket:VolumeBucket',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    fileSystemCifsUsername = registerOutput<String?>('fileSystemCifsUsername');
    fileSystemNfsUser = registerOutput<VolumeBucketFileSystemNfsUser?>('fileSystemNfsUser', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeBucketFileSystemNfsUser.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVault = registerOutput<VolumeBucketKeyVault?>('keyVault', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeBucketKeyVault.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    path = registerOutput<String?>('path');
    permissions = registerOutput<String?>('permissions');
    serverCertificateCommonName = registerOutput<String>('serverCertificateCommonName');
    serverCertificateExpiryDate = registerOutput<String>('serverCertificateExpiryDate');
    serverIpAddress = registerOutput<String>('serverIpAddress');
    status = registerOutput<String>('status');
    volumeId = registerOutput<String>('volumeId');
  }
}
