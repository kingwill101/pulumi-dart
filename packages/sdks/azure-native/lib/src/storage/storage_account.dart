import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_files_identity_based_authentication_response.dart';
import 'blob_restore_status_response.dart';
import 'custom_domain_response.dart';
import 'encryption_response.dart';
import 'endpoints_response.dart';
import 'extended_location_response.dart';
import 'geo_replication_stats_response.dart';
import 'identity_response.dart';
import 'immutable_storage_account_response.dart';
import 'key_creation_time_response.dart';
import 'key_policy_response.dart';
import 'network_rule_set_response.dart';
import 'routing_preference_response.dart';
import 'sas_policy_response.dart';
import 'sku_response.dart';
import 'storage_account_args.dart';
import 'storage_account_sku_conversion_status_response.dart';

/// The storage account.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01, 2025-08-01, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NfsV3AccountCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageAccount = new AzureNative.Storage.StorageAccount("storageAccount", new()
///     {
///         AccountName = "sto4445",
///         EnableExtendedGroups = true,
///         EnableHttpsTrafficOnly = false,
///         EnableNfsV3 = true,
///         IsHnsEnabled = true,
///         Kind = AzureNative.Storage.Kind.BlockBlobStorage,
///         Location = "eastus",
///         NetworkRuleSet = new AzureNative.Storage.Inputs.NetworkRuleSetArgs
///         {
///             Bypass = AzureNative.Storage.Bypass.AzureServices,
///             DefaultAction = AzureNative.Storage.DefaultAction.Allow,
///             IpRules = new() { },
///             VirtualNetworkRules = new[]
///             {
///                 new AzureNative.Storage.Inputs.VirtualNetworkRuleArgs
///                 {
///                     VirtualNetworkResourceId = "/subscriptions/{subscription-id}/resourceGroups/res9101/providers/Microsoft.Network/virtualNetworks/net123/subnets/subnet12",
///                 },
///             },
///         },
///         ResourceGroupName = "res9101",
///         Sku = new AzureNative.Storage.Inputs.SkuArgs
///         {
///             Name = AzureNative.Storage.SkuName.Premium_LRS,
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewStorageAccount(ctx, "storageAccount", &storage.StorageAccountArgs{
/// 			AccountName:            pulumi.String("sto4445"),
/// 			EnableExtendedGroups:   pulumi.Bool(true),
/// 			EnableHttpsTrafficOnly: pulumi.Bool(false),
/// 			EnableNfsV3:            pulumi.Bool(true),
/// 			IsHnsEnabled:           pulumi.Bool(true),
/// 			Kind:                   pulumi.String(storage.KindBlockBlobStorage),
/// 			Location:               pulumi.String("eastus"),
/// 			NetworkRuleSet: &storage.NetworkRuleSetArgs{
/// 				Bypass:        pulumi.String(storage.BypassAzureServices),
/// 				DefaultAction: storage.DefaultActionAllow,
/// 				IpRules:       storage.IPRuleArray{},
/// 				VirtualNetworkRules: storage.VirtualNetworkRuleArray{
/// 					&storage.VirtualNetworkRuleArgs{
/// 						VirtualNetworkResourceId: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/res9101/providers/Microsoft.Network/virtualNetworks/net123/subnets/subnet12"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("res9101"),
/// 			Sku: &storage.SkuArgs{
/// 				Name: pulumi.String(storage.SkuName_Premium_LRS),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storage_storageaccount" "storageAccount" {
///   account_name              = "sto4445"
///   enable_extended_groups    = true
///   enable_https_traffic_only = false
///   enable_nfs_v3             = true
///   is_hns_enabled            = true
///   kind                      = "BlockBlobStorage"
///   location                  = "eastus"
///   network_rule_set = {
///     bypass         = "AzureServices"
///     default_action = "Allow"
///     ip_rules       = []
///     virtual_network_rules = [{
///       "virtualNetworkResourceId" = "/subscriptions/{subscription-id}/resourceGroups/res9101/providers/Microsoft.Network/virtualNetworks/net123/subnets/subnet12"
///     }]
///   }
///   resource_group_name = "res9101"
///   sku = {
///     name = "Premium_LRS"
///   }
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
/// import com.pulumi.azurenative.storage.StorageAccount;
/// import com.pulumi.azurenative.storage.StorageAccountArgs;
/// import com.pulumi.azurenative.storage.inputs.NetworkRuleSetArgs;
/// import com.pulumi.azurenative.storage.inputs.SkuArgs;
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
///         var storageAccount = new StorageAccount("storageAccount", StorageAccountArgs.builder()
///             .accountName("sto4445")
///             .enableExtendedGroups(true)
///             .enableHttpsTrafficOnly(false)
///             .enableNfsV3(true)
///             .isHnsEnabled(true)
///             .kind("BlockBlobStorage")
///             .location("eastus")
///             .networkRuleSet(NetworkRuleSetArgs.builder()
///                 .bypass("AzureServices")
///                 .defaultAction("Allow")
///                 .ipRules()
///                 .virtualNetworkRules(VirtualNetworkRuleArgs.builder()
///                     .virtualNetworkResourceId("/subscriptions/{subscription-id}/resourceGroups/res9101/providers/Microsoft.Network/virtualNetworks/net123/subnets/subnet12")
///                     .build())
///                 .build())
///             .resourceGroupName("res9101")
///             .sku(SkuArgs.builder()
///                 .name("Premium_LRS")
///                 .build())
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
/// const storageAccount = new azure_native.storage.StorageAccount("storageAccount", {
///     accountName: "sto4445",
///     enableExtendedGroups: true,
///     enableHttpsTrafficOnly: false,
///     enableNfsV3: true,
///     isHnsEnabled: true,
///     kind: azure_native.storage.Kind.BlockBlobStorage,
///     location: "eastus",
///     networkRuleSet: {
///         bypass: azure_native.storage.Bypass.AzureServices,
///         defaultAction: azure_native.storage.DefaultAction.Allow,
///         ipRules: [],
///         virtualNetworkRules: [{
///             virtualNetworkResourceId: "/subscriptions/{subscription-id}/resourceGroups/res9101/providers/Microsoft.Network/virtualNetworks/net123/subnets/subnet12",
///         }],
///     },
///     resourceGroupName: "res9101",
///     sku: {
///         name: azure_native.storage.SkuName.Premium_LRS,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_account = azure_native.storage.StorageAccount("storageAccount",
///     account_name="sto4445",
///     enable_extended_groups=True,
///     enable_https_traffic_only=False,
///     enable_nfs_v3=True,
///     is_hns_enabled=True,
///     kind=azure_native.storage.Kind.BLOCK_BLOB_STORAGE,
///     location="eastus",
///     network_rule_set={
///         "bypass": azure_native.storage.Bypass.AZURE_SERVICES,
///         "default_action": azure_native.storage.DefaultAction.ALLOW,
///         "ip_rules": [],
///         "virtual_network_rules": [{
///             "virtual_network_resource_id": "/subscriptions/{subscription-id}/resourceGroups/res9101/providers/Microsoft.Network/virtualNetworks/net123/subnets/subnet12",
///         }],
///     },
///     resource_group_name="res9101",
///     sku={
///         "name": azure_native.storage.SkuName.PREMIUM_LRS,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   storageAccount:
///     type: azure-native:storage:StorageAccount
///     properties:
///       accountName: sto4445
///       enableExtendedGroups: true
///       enableHttpsTrafficOnly: false
///       enableNfsV3: true
///       isHnsEnabled: true
///       kind: BlockBlobStorage
///       location: eastus
///       networkRuleSet:
///         bypass: AzureServices
///         defaultAction: Allow
///         ipRules: []
///         virtualNetworkRules:
///           - virtualNetworkResourceId: /subscriptions/{subscription-id}/resourceGroups/res9101/providers/Microsoft.Network/virtualNetworks/net123/subnets/subnet12
///       resourceGroupName: res9101
///       sku:
///         name: Premium_LRS
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageAccount = new AzureNative.Storage.StorageAccount("storageAccount", new()
///     {
///         AccountName = "sto4445",
///         AllowBlobPublicAccess = false,
///         AllowSharedKeyAccess = true,
///         DefaultToOAuthAuthentication = false,
///         Encryption = new AzureNative.Storage.Inputs.EncryptionArgs
///         {
///             KeySource = AzureNative.Storage.KeySource.Microsoft_Storage,
///             RequireInfrastructureEncryption = false,
///             Services = new AzureNative.Storage.Inputs.EncryptionServicesArgs
///             {
///                 Blob = new AzureNative.Storage.Inputs.EncryptionServiceArgs
///                 {
///                     Enabled = true,
///                     KeyType = AzureNative.Storage.KeyType.Account,
///                 },
///                 File = new AzureNative.Storage.Inputs.EncryptionServiceArgs
///                 {
///                     Enabled = true,
///                     KeyType = AzureNative.Storage.KeyType.Account,
///                 },
///             },
///         },
///         ExtendedLocation = new AzureNative.Storage.Inputs.ExtendedLocationArgs
///         {
///             Name = "losangeles001",
///             Type = AzureNative.Storage.ExtendedLocationTypes.EdgeZone,
///         },
///         IsHnsEnabled = true,
///         IsSftpEnabled = true,
///         KeyPolicy = new AzureNative.Storage.Inputs.KeyPolicyArgs
///         {
///             KeyExpirationPeriodInDays = 20,
///         },
///         Kind = AzureNative.Storage.Kind.Storage,
///         Location = "eastus",
///         MinimumTlsVersion = AzureNative.Storage.MinimumTlsVersion.TLS1_2,
///         ResourceGroupName = "res9101",
///         RoutingPreference = new AzureNative.Storage.Inputs.RoutingPreferenceArgs
///         {
///             PublishInternetEndpoints = true,
///             PublishMicrosoftEndpoints = true,
///             RoutingChoice = AzureNative.Storage.RoutingChoice.MicrosoftRouting,
///         },
///         SasPolicy = new AzureNative.Storage.Inputs.SasPolicyArgs
///         {
///             ExpirationAction = AzureNative.Storage.ExpirationAction.Log,
///             SasExpirationPeriod = "1.15:59:59",
///         },
///         Sku = new AzureNative.Storage.Inputs.SkuArgs
///         {
///             Name = AzureNative.Storage.SkuName.Standard_GRS,
///         },
///         Tags =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewStorageAccount(ctx, "storageAccount", &storage.StorageAccountArgs{
/// 			AccountName:                  pulumi.String("sto4445"),
/// 			AllowBlobPublicAccess:        pulumi.Bool(false),
/// 			AllowSharedKeyAccess:         pulumi.Bool(true),
/// 			DefaultToOAuthAuthentication: pulumi.Bool(false),
/// 			Encryption: &storage.EncryptionArgs{
/// 				KeySource:                       pulumi.String(storage.KeySource_Microsoft_Storage),
/// 				RequireInfrastructureEncryption: pulumi.Bool(false),
/// 				Services: &storage.EncryptionServicesArgs{
/// 					Blob: &storage.EncryptionServiceArgs{
/// 						Enabled: pulumi.Bool(true),
/// 						KeyType: pulumi.String(storage.KeyTypeAccount),
/// 					},
/// 					File: &storage.EncryptionServiceArgs{
/// 						Enabled: pulumi.Bool(true),
/// 						KeyType: pulumi.String(storage.KeyTypeAccount),
/// 					},
/// 				},
/// 			},
/// 			ExtendedLocation: &storage.ExtendedLocationArgs{
/// 				Name: pulumi.String("losangeles001"),
/// 				Type: pulumi.String(storage.ExtendedLocationTypesEdgeZone),
/// 			},
/// 			IsHnsEnabled:  pulumi.Bool(true),
/// 			IsSftpEnabled: pulumi.Bool(true),
/// 			KeyPolicy: &storage.KeyPolicyArgs{
/// 				KeyExpirationPeriodInDays: pulumi.Int(20),
/// 			},
/// 			Kind:              pulumi.String(storage.KindStorage),
/// 			Location:          pulumi.String("eastus"),
/// 			MinimumTlsVersion: pulumi.String(storage.MinimumTlsVersion_TLS1_2),
/// 			ResourceGroupName: pulumi.String("res9101"),
/// 			RoutingPreference: &storage.RoutingPreferenceArgs{
/// 				PublishInternetEndpoints:  pulumi.Bool(true),
/// 				PublishMicrosoftEndpoints: pulumi.Bool(true),
/// 				RoutingChoice:             pulumi.String(storage.RoutingChoiceMicrosoftRouting),
/// 			},
/// 			SasPolicy: &storage.SasPolicyArgs{
/// 				ExpirationAction:    pulumi.String(storage.ExpirationActionLog),
/// 				SasExpirationPeriod: pulumi.String("1.15:59:59"),
/// 			},
/// 			Sku: &storage.SkuArgs{
/// 				Name: pulumi.String(storage.SkuName_Standard_GRS),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storage_storageaccount" "storageAccount" {
///   account_name                     = "sto4445"
///   allow_blob_public_access         = false
///   allow_shared_key_access          = true
///   default_to_o_auth_authentication = false
///   encryption = {
///     key_source                        = "Microsoft.Storage"
///     require_infrastructure_encryption = false
///     services = {
///       blob = {
///         enabled  = true
///         key_type = "Account"
///       }
///       file = {
///         enabled  = true
///         key_type = "Account"
///       }
///     }
///   }
///   extended_location = {
///     name = "losangeles001"
///     type = "EdgeZone"
///   }
///   is_hns_enabled  = true
///   is_sftp_enabled = true
///   key_policy = {
///     key_expiration_period_in_days = 20
///   }
///   kind                = "Storage"
///   location            = "eastus"
///   minimum_tls_version = "TLS1_2"
///   resource_group_name = "res9101"
///   routing_preference = {
///     publish_internet_endpoints  = true
///     publish_microsoft_endpoints = true
///     routing_choice              = "MicrosoftRouting"
///   }
///   sas_policy = {
///     expiration_action     = "Log"
///     sas_expiration_period = "1.15:59:59"
///   }
///   sku = {
///     name = "Standard_GRS"
///   }
///   tags = {
///     "key1" = "value1"
///     "key2" = "value2"
///   }
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
/// import com.pulumi.azurenative.storage.StorageAccount;
/// import com.pulumi.azurenative.storage.StorageAccountArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionServicesArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionServiceArgs;
/// import com.pulumi.azurenative.storage.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.storage.inputs.KeyPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.RoutingPreferenceArgs;
/// import com.pulumi.azurenative.storage.inputs.SasPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.SkuArgs;
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
///         var storageAccount = new StorageAccount("storageAccount", StorageAccountArgs.builder()
///             .accountName("sto4445")
///             .allowBlobPublicAccess(false)
///             .allowSharedKeyAccess(true)
///             .defaultToOAuthAuthentication(false)
///             .encryption(EncryptionArgs.builder()
///                 .keySource("Microsoft.Storage")
///                 .requireInfrastructureEncryption(false)
///                 .services(EncryptionServicesArgs.builder()
///                     .blob(EncryptionServiceArgs.builder()
///                         .enabled(true)
///                         .keyType("Account")
///                         .build())
///                     .file(EncryptionServiceArgs.builder()
///                         .enabled(true)
///                         .keyType("Account")
///                         .build())
///                     .build())
///                 .build())
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("losangeles001")
///                 .type("EdgeZone")
///                 .build())
///             .isHnsEnabled(true)
///             .isSftpEnabled(true)
///             .keyPolicy(KeyPolicyArgs.builder()
///                 .keyExpirationPeriodInDays(20)
///                 .build())
///             .kind("Storage")
///             .location("eastus")
///             .minimumTlsVersion("TLS1_2")
///             .resourceGroupName("res9101")
///             .routingPreference(RoutingPreferenceArgs.builder()
///                 .publishInternetEndpoints(true)
///                 .publishMicrosoftEndpoints(true)
///                 .routingChoice("MicrosoftRouting")
///                 .build())
///             .sasPolicy(SasPolicyArgs.builder()
///                 .expirationAction("Log")
///                 .sasExpirationPeriod("1.15:59:59")
///                 .build())
///             .sku(SkuArgs.builder()
///                 .name("Standard_GRS")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
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
/// const storageAccount = new azure_native.storage.StorageAccount("storageAccount", {
///     accountName: "sto4445",
///     allowBlobPublicAccess: false,
///     allowSharedKeyAccess: true,
///     defaultToOAuthAuthentication: false,
///     encryption: {
///         keySource: azure_native.storage.KeySource.Microsoft_Storage,
///         requireInfrastructureEncryption: false,
///         services: {
///             blob: {
///                 enabled: true,
///                 keyType: azure_native.storage.KeyType.Account,
///             },
///             file: {
///                 enabled: true,
///                 keyType: azure_native.storage.KeyType.Account,
///             },
///         },
///     },
///     extendedLocation: {
///         name: "losangeles001",
///         type: azure_native.storage.ExtendedLocationTypes.EdgeZone,
///     },
///     isHnsEnabled: true,
///     isSftpEnabled: true,
///     keyPolicy: {
///         keyExpirationPeriodInDays: 20,
///     },
///     kind: azure_native.storage.Kind.Storage,
///     location: "eastus",
///     minimumTlsVersion: azure_native.storage.MinimumTlsVersion.TLS1_2,
///     resourceGroupName: "res9101",
///     routingPreference: {
///         publishInternetEndpoints: true,
///         publishMicrosoftEndpoints: true,
///         routingChoice: azure_native.storage.RoutingChoice.MicrosoftRouting,
///     },
///     sasPolicy: {
///         expirationAction: azure_native.storage.ExpirationAction.Log,
///         sasExpirationPeriod: "1.15:59:59",
///     },
///     sku: {
///         name: azure_native.storage.SkuName.Standard_GRS,
///     },
///     tags: {
///         key1: "value1",
///         key2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_account = azure_native.storage.StorageAccount("storageAccount",
///     account_name="sto4445",
///     allow_blob_public_access=False,
///     allow_shared_key_access=True,
///     default_to_o_auth_authentication=False,
///     encryption={
///         "key_source": azure_native.storage.KeySource.MICROSOFT_STORAGE,
///         "require_infrastructure_encryption": False,
///         "services": {
///             "blob": {
///                 "enabled": True,
///                 "key_type": azure_native.storage.KeyType.ACCOUNT,
///             },
///             "file": {
///                 "enabled": True,
///                 "key_type": azure_native.storage.KeyType.ACCOUNT,
///             },
///         },
///     },
///     extended_location={
///         "name": "losangeles001",
///         "type": azure_native.storage.ExtendedLocationTypes.EDGE_ZONE,
///     },
///     is_hns_enabled=True,
///     is_sftp_enabled=True,
///     key_policy={
///         "key_expiration_period_in_days": 20,
///     },
///     kind=azure_native.storage.Kind.STORAGE,
///     location="eastus",
///     minimum_tls_version=azure_native.storage.MinimumTlsVersion.TLS1_2,
///     resource_group_name="res9101",
///     routing_preference={
///         "publish_internet_endpoints": True,
///         "publish_microsoft_endpoints": True,
///         "routing_choice": azure_native.storage.RoutingChoice.MICROSOFT_ROUTING,
///     },
///     sas_policy={
///         "expiration_action": azure_native.storage.ExpirationAction.LOG,
///         "sas_expiration_period": "1.15:59:59",
///     },
///     sku={
///         "name": azure_native.storage.SkuName.STANDARD_GRS,
///     },
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   storageAccount:
///     type: azure-native:storage:StorageAccount
///     properties:
///       accountName: sto4445
///       allowBlobPublicAccess: false
///       allowSharedKeyAccess: true
///       defaultToOAuthAuthentication: false
///       encryption:
///         keySource: Microsoft.Storage
///         requireInfrastructureEncryption: false
///         services:
///           blob:
///             enabled: true
///             keyType: Account
///           file:
///             enabled: true
///             keyType: Account
///       extendedLocation:
///         name: losangeles001
///         type: EdgeZone
///       isHnsEnabled: true
///       isSftpEnabled: true
///       keyPolicy:
///         keyExpirationPeriodInDays: 20
///       kind: Storage
///       location: eastus
///       minimumTlsVersion: TLS1_2
///       resourceGroupName: res9101
///       routingPreference:
///         publishInternetEndpoints: true
///         publishMicrosoftEndpoints: true
///         routingChoice: MicrosoftRouting
///       sasPolicy:
///         expirationAction: Log
///         sasExpirationPeriod: 1.15:59:59
///       sku:
///         name: Standard_GRS
///       tags:
///         key1: value1
///         key2: value2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountCreateAllowedCopyScopeToAAD
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageAccount = new AzureNative.Storage.StorageAccount("storageAccount", new()
///     {
///         AccountName = "sto4445",
///         AllowBlobPublicAccess = false,
///         AllowSharedKeyAccess = true,
///         AllowedCopyScope = AzureNative.Storage.AllowedCopyScope.AAD,
///         Encryption = new AzureNative.Storage.Inputs.EncryptionArgs
///         {
///             KeySource = AzureNative.Storage.KeySource.Microsoft_Storage,
///             RequireInfrastructureEncryption = false,
///             Services = new AzureNative.Storage.Inputs.EncryptionServicesArgs
///             {
///                 Blob = new AzureNative.Storage.Inputs.EncryptionServiceArgs
///                 {
///                     Enabled = true,
///                     KeyType = AzureNative.Storage.KeyType.Account,
///                 },
///                 File = new AzureNative.Storage.Inputs.EncryptionServiceArgs
///                 {
///                     Enabled = true,
///                     KeyType = AzureNative.Storage.KeyType.Account,
///                 },
///             },
///         },
///         IsHnsEnabled = true,
///         KeyPolicy = new AzureNative.Storage.Inputs.KeyPolicyArgs
///         {
///             KeyExpirationPeriodInDays = 20,
///         },
///         Kind = AzureNative.Storage.Kind.Storage,
///         Location = "eastus",
///         MinimumTlsVersion = AzureNative.Storage.MinimumTlsVersion.TLS1_2,
///         ResourceGroupName = "res9101",
///         RoutingPreference = new AzureNative.Storage.Inputs.RoutingPreferenceArgs
///         {
///             PublishInternetEndpoints = true,
///             PublishMicrosoftEndpoints = true,
///             RoutingChoice = AzureNative.Storage.RoutingChoice.MicrosoftRouting,
///         },
///         SasPolicy = new AzureNative.Storage.Inputs.SasPolicyArgs
///         {
///             ExpirationAction = AzureNative.Storage.ExpirationAction.Log,
///             SasExpirationPeriod = "1.15:59:59",
///         },
///         Sku = new AzureNative.Storage.Inputs.SkuArgs
///         {
///             Name = AzureNative.Storage.SkuName.Standard_GRS,
///         },
///         Tags =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewStorageAccount(ctx, "storageAccount", &storage.StorageAccountArgs{
/// 			AccountName:           pulumi.String("sto4445"),
/// 			AllowBlobPublicAccess: pulumi.Bool(false),
/// 			AllowSharedKeyAccess:  pulumi.Bool(true),
/// 			AllowedCopyScope:      pulumi.String(storage.AllowedCopyScopeAAD),
/// 			Encryption: &storage.EncryptionArgs{
/// 				KeySource:                       pulumi.String(storage.KeySource_Microsoft_Storage),
/// 				RequireInfrastructureEncryption: pulumi.Bool(false),
/// 				Services: &storage.EncryptionServicesArgs{
/// 					Blob: &storage.EncryptionServiceArgs{
/// 						Enabled: pulumi.Bool(true),
/// 						KeyType: pulumi.String(storage.KeyTypeAccount),
/// 					},
/// 					File: &storage.EncryptionServiceArgs{
/// 						Enabled: pulumi.Bool(true),
/// 						KeyType: pulumi.String(storage.KeyTypeAccount),
/// 					},
/// 				},
/// 			},
/// 			IsHnsEnabled: pulumi.Bool(true),
/// 			KeyPolicy: &storage.KeyPolicyArgs{
/// 				KeyExpirationPeriodInDays: pulumi.Int(20),
/// 			},
/// 			Kind:              pulumi.String(storage.KindStorage),
/// 			Location:          pulumi.String("eastus"),
/// 			MinimumTlsVersion: pulumi.String(storage.MinimumTlsVersion_TLS1_2),
/// 			ResourceGroupName: pulumi.String("res9101"),
/// 			RoutingPreference: &storage.RoutingPreferenceArgs{
/// 				PublishInternetEndpoints:  pulumi.Bool(true),
/// 				PublishMicrosoftEndpoints: pulumi.Bool(true),
/// 				RoutingChoice:             pulumi.String(storage.RoutingChoiceMicrosoftRouting),
/// 			},
/// 			SasPolicy: &storage.SasPolicyArgs{
/// 				ExpirationAction:    pulumi.String(storage.ExpirationActionLog),
/// 				SasExpirationPeriod: pulumi.String("1.15:59:59"),
/// 			},
/// 			Sku: &storage.SkuArgs{
/// 				Name: pulumi.String(storage.SkuName_Standard_GRS),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storage_storageaccount" "storageAccount" {
///   account_name             = "sto4445"
///   allow_blob_public_access = false
///   allow_shared_key_access  = true
///   allowed_copy_scope       = "AAD"
///   encryption = {
///     key_source                        = "Microsoft.Storage"
///     require_infrastructure_encryption = false
///     services = {
///       blob = {
///         enabled  = true
///         key_type = "Account"
///       }
///       file = {
///         enabled  = true
///         key_type = "Account"
///       }
///     }
///   }
///   is_hns_enabled = true
///   key_policy = {
///     key_expiration_period_in_days = 20
///   }
///   kind                = "Storage"
///   location            = "eastus"
///   minimum_tls_version = "TLS1_2"
///   resource_group_name = "res9101"
///   routing_preference = {
///     publish_internet_endpoints  = true
///     publish_microsoft_endpoints = true
///     routing_choice              = "MicrosoftRouting"
///   }
///   sas_policy = {
///     expiration_action     = "Log"
///     sas_expiration_period = "1.15:59:59"
///   }
///   sku = {
///     name = "Standard_GRS"
///   }
///   tags = {
///     "key1" = "value1"
///     "key2" = "value2"
///   }
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
/// import com.pulumi.azurenative.storage.StorageAccount;
/// import com.pulumi.azurenative.storage.StorageAccountArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionServicesArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionServiceArgs;
/// import com.pulumi.azurenative.storage.inputs.KeyPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.RoutingPreferenceArgs;
/// import com.pulumi.azurenative.storage.inputs.SasPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.SkuArgs;
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
///         var storageAccount = new StorageAccount("storageAccount", StorageAccountArgs.builder()
///             .accountName("sto4445")
///             .allowBlobPublicAccess(false)
///             .allowSharedKeyAccess(true)
///             .allowedCopyScope("AAD")
///             .encryption(EncryptionArgs.builder()
///                 .keySource("Microsoft.Storage")
///                 .requireInfrastructureEncryption(false)
///                 .services(EncryptionServicesArgs.builder()
///                     .blob(EncryptionServiceArgs.builder()
///                         .enabled(true)
///                         .keyType("Account")
///                         .build())
///                     .file(EncryptionServiceArgs.builder()
///                         .enabled(true)
///                         .keyType("Account")
///                         .build())
///                     .build())
///                 .build())
///             .isHnsEnabled(true)
///             .keyPolicy(KeyPolicyArgs.builder()
///                 .keyExpirationPeriodInDays(20)
///                 .build())
///             .kind("Storage")
///             .location("eastus")
///             .minimumTlsVersion("TLS1_2")
///             .resourceGroupName("res9101")
///             .routingPreference(RoutingPreferenceArgs.builder()
///                 .publishInternetEndpoints(true)
///                 .publishMicrosoftEndpoints(true)
///                 .routingChoice("MicrosoftRouting")
///                 .build())
///             .sasPolicy(SasPolicyArgs.builder()
///                 .expirationAction("Log")
///                 .sasExpirationPeriod("1.15:59:59")
///                 .build())
///             .sku(SkuArgs.builder()
///                 .name("Standard_GRS")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
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
/// const storageAccount = new azure_native.storage.StorageAccount("storageAccount", {
///     accountName: "sto4445",
///     allowBlobPublicAccess: false,
///     allowSharedKeyAccess: true,
///     allowedCopyScope: azure_native.storage.AllowedCopyScope.AAD,
///     encryption: {
///         keySource: azure_native.storage.KeySource.Microsoft_Storage,
///         requireInfrastructureEncryption: false,
///         services: {
///             blob: {
///                 enabled: true,
///                 keyType: azure_native.storage.KeyType.Account,
///             },
///             file: {
///                 enabled: true,
///                 keyType: azure_native.storage.KeyType.Account,
///             },
///         },
///     },
///     isHnsEnabled: true,
///     keyPolicy: {
///         keyExpirationPeriodInDays: 20,
///     },
///     kind: azure_native.storage.Kind.Storage,
///     location: "eastus",
///     minimumTlsVersion: azure_native.storage.MinimumTlsVersion.TLS1_2,
///     resourceGroupName: "res9101",
///     routingPreference: {
///         publishInternetEndpoints: true,
///         publishMicrosoftEndpoints: true,
///         routingChoice: azure_native.storage.RoutingChoice.MicrosoftRouting,
///     },
///     sasPolicy: {
///         expirationAction: azure_native.storage.ExpirationAction.Log,
///         sasExpirationPeriod: "1.15:59:59",
///     },
///     sku: {
///         name: azure_native.storage.SkuName.Standard_GRS,
///     },
///     tags: {
///         key1: "value1",
///         key2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_account = azure_native.storage.StorageAccount("storageAccount",
///     account_name="sto4445",
///     allow_blob_public_access=False,
///     allow_shared_key_access=True,
///     allowed_copy_scope=azure_native.storage.AllowedCopyScope.AAD,
///     encryption={
///         "key_source": azure_native.storage.KeySource.MICROSOFT_STORAGE,
///         "require_infrastructure_encryption": False,
///         "services": {
///             "blob": {
///                 "enabled": True,
///                 "key_type": azure_native.storage.KeyType.ACCOUNT,
///             },
///             "file": {
///                 "enabled": True,
///                 "key_type": azure_native.storage.KeyType.ACCOUNT,
///             },
///         },
///     },
///     is_hns_enabled=True,
///     key_policy={
///         "key_expiration_period_in_days": 20,
///     },
///     kind=azure_native.storage.Kind.STORAGE,
///     location="eastus",
///     minimum_tls_version=azure_native.storage.MinimumTlsVersion.TLS1_2,
///     resource_group_name="res9101",
///     routing_preference={
///         "publish_internet_endpoints": True,
///         "publish_microsoft_endpoints": True,
///         "routing_choice": azure_native.storage.RoutingChoice.MICROSOFT_ROUTING,
///     },
///     sas_policy={
///         "expiration_action": azure_native.storage.ExpirationAction.LOG,
///         "sas_expiration_period": "1.15:59:59",
///     },
///     sku={
///         "name": azure_native.storage.SkuName.STANDARD_GRS,
///     },
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   storageAccount:
///     type: azure-native:storage:StorageAccount
///     properties:
///       accountName: sto4445
///       allowBlobPublicAccess: false
///       allowSharedKeyAccess: true
///       allowedCopyScope: AAD
///       encryption:
///         keySource: Microsoft.Storage
///         requireInfrastructureEncryption: false
///         services:
///           blob:
///             enabled: true
///             keyType: Account
///           file:
///             enabled: true
///             keyType: Account
///       isHnsEnabled: true
///       keyPolicy:
///         keyExpirationPeriodInDays: 20
///       kind: Storage
///       location: eastus
///       minimumTlsVersion: TLS1_2
///       resourceGroupName: res9101
///       routingPreference:
///         publishInternetEndpoints: true
///         publishMicrosoftEndpoints: true
///         routingChoice: MicrosoftRouting
///       sasPolicy:
///         expirationAction: Log
///         sasExpirationPeriod: 1.15:59:59
///       sku:
///         name: Standard_GRS
///       tags:
///         key1: value1
///         key2: value2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountCreateAllowedCopyScopeToPrivateLink
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageAccount = new AzureNative.Storage.StorageAccount("storageAccount", new()
///     {
///         AccountName = "sto4445",
///         AllowBlobPublicAccess = false,
///         AllowSharedKeyAccess = true,
///         AllowedCopyScope = AzureNative.Storage.AllowedCopyScope.PrivateLink,
///         Encryption = new AzureNative.Storage.Inputs.EncryptionArgs
///         {
///             KeySource = AzureNative.Storage.KeySource.Microsoft_Storage,
///             RequireInfrastructureEncryption = false,
///             Services = new AzureNative.Storage.Inputs.EncryptionServicesArgs
///             {
///                 Blob = new AzureNative.Storage.Inputs.EncryptionServiceArgs
///                 {
///                     Enabled = true,
///                     KeyType = AzureNative.Storage.KeyType.Account,
///                 },
///                 File = new AzureNative.Storage.Inputs.EncryptionServiceArgs
///                 {
///                     Enabled = true,
///                     KeyType = AzureNative.Storage.KeyType.Account,
///                 },
///             },
///         },
///         IsHnsEnabled = true,
///         KeyPolicy = new AzureNative.Storage.Inputs.KeyPolicyArgs
///         {
///             KeyExpirationPeriodInDays = 20,
///         },
///         Kind = AzureNative.Storage.Kind.Storage,
///         Location = "eastus",
///         MinimumTlsVersion = AzureNative.Storage.MinimumTlsVersion.TLS1_2,
///         ResourceGroupName = "res9101",
///         RoutingPreference = new AzureNative.Storage.Inputs.RoutingPreferenceArgs
///         {
///             PublishInternetEndpoints = true,
///             PublishMicrosoftEndpoints = true,
///             RoutingChoice = AzureNative.Storage.RoutingChoice.MicrosoftRouting,
///         },
///         SasPolicy = new AzureNative.Storage.Inputs.SasPolicyArgs
///         {
///             ExpirationAction = AzureNative.Storage.ExpirationAction.Log,
///             SasExpirationPeriod = "1.15:59:59",
///         },
///         Sku = new AzureNative.Storage.Inputs.SkuArgs
///         {
///             Name = AzureNative.Storage.SkuName.Standard_GRS,
///         },
///         Tags =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewStorageAccount(ctx, "storageAccount", &storage.StorageAccountArgs{
/// 			AccountName:           pulumi.String("sto4445"),
/// 			AllowBlobPublicAccess: pulumi.Bool(false),
/// 			AllowSharedKeyAccess:  pulumi.Bool(true),
/// 			AllowedCopyScope:      pulumi.String(storage.AllowedCopyScopePrivateLink),
/// 			Encryption: &storage.EncryptionArgs{
/// 				KeySource:                       pulumi.String(storage.KeySource_Microsoft_Storage),
/// 				RequireInfrastructureEncryption: pulumi.Bool(false),
/// 				Services: &storage.EncryptionServicesArgs{
/// 					Blob: &storage.EncryptionServiceArgs{
/// 						Enabled: pulumi.Bool(true),
/// 						KeyType: pulumi.String(storage.KeyTypeAccount),
/// 					},
/// 					File: &storage.EncryptionServiceArgs{
/// 						Enabled: pulumi.Bool(true),
/// 						KeyType: pulumi.String(storage.KeyTypeAccount),
/// 					},
/// 				},
/// 			},
/// 			IsHnsEnabled: pulumi.Bool(true),
/// 			KeyPolicy: &storage.KeyPolicyArgs{
/// 				KeyExpirationPeriodInDays: pulumi.Int(20),
/// 			},
/// 			Kind:              pulumi.String(storage.KindStorage),
/// 			Location:          pulumi.String("eastus"),
/// 			MinimumTlsVersion: pulumi.String(storage.MinimumTlsVersion_TLS1_2),
/// 			ResourceGroupName: pulumi.String("res9101"),
/// 			RoutingPreference: &storage.RoutingPreferenceArgs{
/// 				PublishInternetEndpoints:  pulumi.Bool(true),
/// 				PublishMicrosoftEndpoints: pulumi.Bool(true),
/// 				RoutingChoice:             pulumi.String(storage.RoutingChoiceMicrosoftRouting),
/// 			},
/// 			SasPolicy: &storage.SasPolicyArgs{
/// 				ExpirationAction:    pulumi.String(storage.ExpirationActionLog),
/// 				SasExpirationPeriod: pulumi.String("1.15:59:59"),
/// 			},
/// 			Sku: &storage.SkuArgs{
/// 				Name: pulumi.String(storage.SkuName_Standard_GRS),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storage_storageaccount" "storageAccount" {
///   account_name             = "sto4445"
///   allow_blob_public_access = false
///   allow_shared_key_access  = true
///   allowed_copy_scope       = "PrivateLink"
///   encryption = {
///     key_source                        = "Microsoft.Storage"
///     require_infrastructure_encryption = false
///     services = {
///       blob = {
///         enabled  = true
///         key_type = "Account"
///       }
///       file = {
///         enabled  = true
///         key_type = "Account"
///       }
///     }
///   }
///   is_hns_enabled = true
///   key_policy = {
///     key_expiration_period_in_days = 20
///   }
///   kind                = "Storage"
///   location            = "eastus"
///   minimum_tls_version = "TLS1_2"
///   resource_group_name = "res9101"
///   routing_preference = {
///     publish_internet_endpoints  = true
///     publish_microsoft_endpoints = true
///     routing_choice              = "MicrosoftRouting"
///   }
///   sas_policy = {
///     expiration_action     = "Log"
///     sas_expiration_period = "1.15:59:59"
///   }
///   sku = {
///     name = "Standard_GRS"
///   }
///   tags = {
///     "key1" = "value1"
///     "key2" = "value2"
///   }
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
/// import com.pulumi.azurenative.storage.StorageAccount;
/// import com.pulumi.azurenative.storage.StorageAccountArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionServicesArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionServiceArgs;
/// import com.pulumi.azurenative.storage.inputs.KeyPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.RoutingPreferenceArgs;
/// import com.pulumi.azurenative.storage.inputs.SasPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.SkuArgs;
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
///         var storageAccount = new StorageAccount("storageAccount", StorageAccountArgs.builder()
///             .accountName("sto4445")
///             .allowBlobPublicAccess(false)
///             .allowSharedKeyAccess(true)
///             .allowedCopyScope("PrivateLink")
///             .encryption(EncryptionArgs.builder()
///                 .keySource("Microsoft.Storage")
///                 .requireInfrastructureEncryption(false)
///                 .services(EncryptionServicesArgs.builder()
///                     .blob(EncryptionServiceArgs.builder()
///                         .enabled(true)
///                         .keyType("Account")
///                         .build())
///                     .file(EncryptionServiceArgs.builder()
///                         .enabled(true)
///                         .keyType("Account")
///                         .build())
///                     .build())
///                 .build())
///             .isHnsEnabled(true)
///             .keyPolicy(KeyPolicyArgs.builder()
///                 .keyExpirationPeriodInDays(20)
///                 .build())
///             .kind("Storage")
///             .location("eastus")
///             .minimumTlsVersion("TLS1_2")
///             .resourceGroupName("res9101")
///             .routingPreference(RoutingPreferenceArgs.builder()
///                 .publishInternetEndpoints(true)
///                 .publishMicrosoftEndpoints(true)
///                 .routingChoice("MicrosoftRouting")
///                 .build())
///             .sasPolicy(SasPolicyArgs.builder()
///                 .expirationAction("Log")
///                 .sasExpirationPeriod("1.15:59:59")
///                 .build())
///             .sku(SkuArgs.builder()
///                 .name("Standard_GRS")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
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
/// const storageAccount = new azure_native.storage.StorageAccount("storageAccount", {
///     accountName: "sto4445",
///     allowBlobPublicAccess: false,
///     allowSharedKeyAccess: true,
///     allowedCopyScope: azure_native.storage.AllowedCopyScope.PrivateLink,
///     encryption: {
///         keySource: azure_native.storage.KeySource.Microsoft_Storage,
///         requireInfrastructureEncryption: false,
///         services: {
///             blob: {
///                 enabled: true,
///                 keyType: azure_native.storage.KeyType.Account,
///             },
///             file: {
///                 enabled: true,
///                 keyType: azure_native.storage.KeyType.Account,
///             },
///         },
///     },
///     isHnsEnabled: true,
///     keyPolicy: {
///         keyExpirationPeriodInDays: 20,
///     },
///     kind: azure_native.storage.Kind.Storage,
///     location: "eastus",
///     minimumTlsVersion: azure_native.storage.MinimumTlsVersion.TLS1_2,
///     resourceGroupName: "res9101",
///     routingPreference: {
///         publishInternetEndpoints: true,
///         publishMicrosoftEndpoints: true,
///         routingChoice: azure_native.storage.RoutingChoice.MicrosoftRouting,
///     },
///     sasPolicy: {
///         expirationAction: azure_native.storage.ExpirationAction.Log,
///         sasExpirationPeriod: "1.15:59:59",
///     },
///     sku: {
///         name: azure_native.storage.SkuName.Standard_GRS,
///     },
///     tags: {
///         key1: "value1",
///         key2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_account = azure_native.storage.StorageAccount("storageAccount",
///     account_name="sto4445",
///     allow_blob_public_access=False,
///     allow_shared_key_access=True,
///     allowed_copy_scope=azure_native.storage.AllowedCopyScope.PRIVATE_LINK,
///     encryption={
///         "key_source": azure_native.storage.KeySource.MICROSOFT_STORAGE,
///         "require_infrastructure_encryption": False,
///         "services": {
///             "blob": {
///                 "enabled": True,
///                 "key_type": azure_native.storage.KeyType.ACCOUNT,
///             },
///             "file": {
///                 "enabled": True,
///                 "key_type": azure_native.storage.KeyType.ACCOUNT,
///             },
///         },
///     },
///     is_hns_enabled=True,
///     key_policy={
///         "key_expiration_period_in_days": 20,
///     },
///     kind=azure_native.storage.Kind.STORAGE,
///     location="eastus",
///     minimum_tls_version=azure_native.storage.MinimumTlsVersion.TLS1_2,
///     resource_group_name="res9101",
///     routing_preference={
///         "publish_internet_endpoints": True,
///         "publish_microsoft_endpoints": True,
///         "routing_choice": azure_native.storage.RoutingChoice.MICROSOFT_ROUTING,
///     },
///     sas_policy={
///         "expiration_action": azure_native.storage.ExpirationAction.LOG,
///         "sas_expiration_period": "1.15:59:59",
///     },
///     sku={
///         "name": azure_native.storage.SkuName.STANDARD_GRS,
///     },
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   storageAccount:
///     type: azure-native:storage:StorageAccount
///     properties:
///       accountName: sto4445
///       allowBlobPublicAccess: false
///       allowSharedKeyAccess: true
///       allowedCopyScope: PrivateLink
///       encryption:
///         keySource: Microsoft.Storage
///         requireInfrastructureEncryption: false
///         services:
///           blob:
///             enabled: true
///             keyType: Account
///           file:
///             enabled: true
///             keyType: Account
///       isHnsEnabled: true
///       keyPolicy:
///         keyExpirationPeriodInDays: 20
///       kind: Storage
///       location: eastus
///       minimumTlsVersion: TLS1_2
///       resourceGroupName: res9101
///       routingPreference:
///         publishInternetEndpoints: true
///         publishMicrosoftEndpoints: true
///         routingChoice: MicrosoftRouting
///       sasPolicy:
///         expirationAction: Log
///         sasExpirationPeriod: 1.15:59:59
///       sku:
///         name: Standard_GRS
///       tags:
///         key1: value1
///         key2: value2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountCreateDisallowPublicNetworkAccess
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageAccount = new AzureNative.Storage.StorageAccount("storageAccount", new()
///     {
///         AccountName = "sto4445",
///         AllowBlobPublicAccess = false,
///         AllowSharedKeyAccess = true,
///         Encryption = new AzureNative.Storage.Inputs.EncryptionArgs
///         {
///             KeySource = AzureNative.Storage.KeySource.Microsoft_Storage,
///             RequireInfrastructureEncryption = false,
///             Services = new AzureNative.Storage.Inputs.EncryptionServicesArgs
///             {
///                 Blob = new AzureNative.Storage.Inputs.EncryptionServiceArgs
///                 {
///                     Enabled = true,
///                     KeyType = AzureNative.Storage.KeyType.Account,
///                 },
///                 File = new AzureNative.Storage.Inputs.EncryptionServiceArgs
///                 {
///                     Enabled = true,
///                     KeyType = AzureNative.Storage.KeyType.Account,
///                 },
///             },
///         },
///         ExtendedLocation = new AzureNative.Storage.Inputs.ExtendedLocationArgs
///         {
///             Name = "losangeles001",
///             Type = AzureNative.Storage.ExtendedLocationTypes.EdgeZone,
///         },
///         IsHnsEnabled = true,
///         KeyPolicy = new AzureNative.Storage.Inputs.KeyPolicyArgs
///         {
///             KeyExpirationPeriodInDays = 20,
///         },
///         Kind = AzureNative.Storage.Kind.Storage,
///         Location = "eastus",
///         MinimumTlsVersion = AzureNative.Storage.MinimumTlsVersion.TLS1_2,
///         PublicNetworkAccess = AzureNative.Storage.PublicNetworkAccess.Disabled,
///         ResourceGroupName = "res9101",
///         RoutingPreference = new AzureNative.Storage.Inputs.RoutingPreferenceArgs
///         {
///             PublishInternetEndpoints = true,
///             PublishMicrosoftEndpoints = true,
///             RoutingChoice = AzureNative.Storage.RoutingChoice.MicrosoftRouting,
///         },
///         SasPolicy = new AzureNative.Storage.Inputs.SasPolicyArgs
///         {
///             ExpirationAction = AzureNative.Storage.ExpirationAction.Log,
///             SasExpirationPeriod = "1.15:59:59",
///         },
///         Sku = new AzureNative.Storage.Inputs.SkuArgs
///         {
///             Name = AzureNative.Storage.SkuName.Standard_GRS,
///         },
///         Tags =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewStorageAccount(ctx, "storageAccount", &storage.StorageAccountArgs{
/// 			AccountName:           pulumi.String("sto4445"),
/// 			AllowBlobPublicAccess: pulumi.Bool(false),
/// 			AllowSharedKeyAccess:  pulumi.Bool(true),
/// 			Encryption: &storage.EncryptionArgs{
/// 				KeySource:                       pulumi.String(storage.KeySource_Microsoft_Storage),
/// 				RequireInfrastructureEncryption: pulumi.Bool(false),
/// 				Services: &storage.EncryptionServicesArgs{
/// 					Blob: &storage.EncryptionServiceArgs{
/// 						Enabled: pulumi.Bool(true),
/// 						KeyType: pulumi.String(storage.KeyTypeAccount),
/// 					},
/// 					File: &storage.EncryptionServiceArgs{
/// 						Enabled: pulumi.Bool(true),
/// 						KeyType: pulumi.String(storage.KeyTypeAccount),
/// 					},
/// 				},
/// 			},
/// 			ExtendedLocation: &storage.ExtendedLocationArgs{
/// 				Name: pulumi.String("losangeles001"),
/// 				Type: pulumi.String(storage.ExtendedLocationTypesEdgeZone),
/// 			},
/// 			IsHnsEnabled: pulumi.Bool(true),
/// 			KeyPolicy: &storage.KeyPolicyArgs{
/// 				KeyExpirationPeriodInDays: pulumi.Int(20),
/// 			},
/// 			Kind:                pulumi.String(storage.KindStorage),
/// 			Location:            pulumi.String("eastus"),
/// 			MinimumTlsVersion:   pulumi.String(storage.MinimumTlsVersion_TLS1_2),
/// 			PublicNetworkAccess: pulumi.String(storage.PublicNetworkAccessDisabled),
/// 			ResourceGroupName:   pulumi.String("res9101"),
/// 			RoutingPreference: &storage.RoutingPreferenceArgs{
/// 				PublishInternetEndpoints:  pulumi.Bool(true),
/// 				PublishMicrosoftEndpoints: pulumi.Bool(true),
/// 				RoutingChoice:             pulumi.String(storage.RoutingChoiceMicrosoftRouting),
/// 			},
/// 			SasPolicy: &storage.SasPolicyArgs{
/// 				ExpirationAction:    pulumi.String(storage.ExpirationActionLog),
/// 				SasExpirationPeriod: pulumi.String("1.15:59:59"),
/// 			},
/// 			Sku: &storage.SkuArgs{
/// 				Name: pulumi.String(storage.SkuName_Standard_GRS),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storage_storageaccount" "storageAccount" {
///   account_name             = "sto4445"
///   allow_blob_public_access = false
///   allow_shared_key_access  = true
///   encryption = {
///     key_source                        = "Microsoft.Storage"
///     require_infrastructure_encryption = false
///     services = {
///       blob = {
///         enabled  = true
///         key_type = "Account"
///       }
///       file = {
///         enabled  = true
///         key_type = "Account"
///       }
///     }
///   }
///   extended_location = {
///     name = "losangeles001"
///     type = "EdgeZone"
///   }
///   is_hns_enabled = true
///   key_policy = {
///     key_expiration_period_in_days = 20
///   }
///   kind                  = "Storage"
///   location              = "eastus"
///   minimum_tls_version   = "TLS1_2"
///   public_network_access = "Disabled"
///   resource_group_name   = "res9101"
///   routing_preference = {
///     publish_internet_endpoints  = true
///     publish_microsoft_endpoints = true
///     routing_choice              = "MicrosoftRouting"
///   }
///   sas_policy = {
///     expiration_action     = "Log"
///     sas_expiration_period = "1.15:59:59"
///   }
///   sku = {
///     name = "Standard_GRS"
///   }
///   tags = {
///     "key1" = "value1"
///     "key2" = "value2"
///   }
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
/// import com.pulumi.azurenative.storage.StorageAccount;
/// import com.pulumi.azurenative.storage.StorageAccountArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionServicesArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionServiceArgs;
/// import com.pulumi.azurenative.storage.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.storage.inputs.KeyPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.RoutingPreferenceArgs;
/// import com.pulumi.azurenative.storage.inputs.SasPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.SkuArgs;
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
///         var storageAccount = new StorageAccount("storageAccount", StorageAccountArgs.builder()
///             .accountName("sto4445")
///             .allowBlobPublicAccess(false)
///             .allowSharedKeyAccess(true)
///             .encryption(EncryptionArgs.builder()
///                 .keySource("Microsoft.Storage")
///                 .requireInfrastructureEncryption(false)
///                 .services(EncryptionServicesArgs.builder()
///                     .blob(EncryptionServiceArgs.builder()
///                         .enabled(true)
///                         .keyType("Account")
///                         .build())
///                     .file(EncryptionServiceArgs.builder()
///                         .enabled(true)
///                         .keyType("Account")
///                         .build())
///                     .build())
///                 .build())
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("losangeles001")
///                 .type("EdgeZone")
///                 .build())
///             .isHnsEnabled(true)
///             .keyPolicy(KeyPolicyArgs.builder()
///                 .keyExpirationPeriodInDays(20)
///                 .build())
///             .kind("Storage")
///             .location("eastus")
///             .minimumTlsVersion("TLS1_2")
///             .publicNetworkAccess("Disabled")
///             .resourceGroupName("res9101")
///             .routingPreference(RoutingPreferenceArgs.builder()
///                 .publishInternetEndpoints(true)
///                 .publishMicrosoftEndpoints(true)
///                 .routingChoice("MicrosoftRouting")
///                 .build())
///             .sasPolicy(SasPolicyArgs.builder()
///                 .expirationAction("Log")
///                 .sasExpirationPeriod("1.15:59:59")
///                 .build())
///             .sku(SkuArgs.builder()
///                 .name("Standard_GRS")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
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
/// const storageAccount = new azure_native.storage.StorageAccount("storageAccount", {
///     accountName: "sto4445",
///     allowBlobPublicAccess: false,
///     allowSharedKeyAccess: true,
///     encryption: {
///         keySource: azure_native.storage.KeySource.Microsoft_Storage,
///         requireInfrastructureEncryption: false,
///         services: {
///             blob: {
///                 enabled: true,
///                 keyType: azure_native.storage.KeyType.Account,
///             },
///             file: {
///                 enabled: true,
///                 keyType: azure_native.storage.KeyType.Account,
///             },
///         },
///     },
///     extendedLocation: {
///         name: "losangeles001",
///         type: azure_native.storage.ExtendedLocationTypes.EdgeZone,
///     },
///     isHnsEnabled: true,
///     keyPolicy: {
///         keyExpirationPeriodInDays: 20,
///     },
///     kind: azure_native.storage.Kind.Storage,
///     location: "eastus",
///     minimumTlsVersion: azure_native.storage.MinimumTlsVersion.TLS1_2,
///     publicNetworkAccess: azure_native.storage.PublicNetworkAccess.Disabled,
///     resourceGroupName: "res9101",
///     routingPreference: {
///         publishInternetEndpoints: true,
///         publishMicrosoftEndpoints: true,
///         routingChoice: azure_native.storage.RoutingChoice.MicrosoftRouting,
///     },
///     sasPolicy: {
///         expirationAction: azure_native.storage.ExpirationAction.Log,
///         sasExpirationPeriod: "1.15:59:59",
///     },
///     sku: {
///         name: azure_native.storage.SkuName.Standard_GRS,
///     },
///     tags: {
///         key1: "value1",
///         key2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_account = azure_native.storage.StorageAccount("storageAccount",
///     account_name="sto4445",
///     allow_blob_public_access=False,
///     allow_shared_key_access=True,
///     encryption={
///         "key_source": azure_native.storage.KeySource.MICROSOFT_STORAGE,
///         "require_infrastructure_encryption": False,
///         "services": {
///             "blob": {
///                 "enabled": True,
///                 "key_type": azure_native.storage.KeyType.ACCOUNT,
///             },
///             "file": {
///                 "enabled": True,
///                 "key_type": azure_native.storage.KeyType.ACCOUNT,
///             },
///         },
///     },
///     extended_location={
///         "name": "losangeles001",
///         "type": azure_native.storage.ExtendedLocationTypes.EDGE_ZONE,
///     },
///     is_hns_enabled=True,
///     key_policy={
///         "key_expiration_period_in_days": 20,
///     },
///     kind=azure_native.storage.Kind.STORAGE,
///     location="eastus",
///     minimum_tls_version=azure_native.storage.MinimumTlsVersion.TLS1_2,
///     public_network_access=azure_native.storage.PublicNetworkAccess.DISABLED,
///     resource_group_name="res9101",
///     routing_preference={
///         "publish_internet_endpoints": True,
///         "publish_microsoft_endpoints": True,
///         "routing_choice": azure_native.storage.RoutingChoice.MICROSOFT_ROUTING,
///     },
///     sas_policy={
///         "expiration_action": azure_native.storage.ExpirationAction.LOG,
///         "sas_expiration_period": "1.15:59:59",
///     },
///     sku={
///         "name": azure_native.storage.SkuName.STANDARD_GRS,
///     },
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   storageAccount:
///     type: azure-native:storage:StorageAccount
///     properties:
///       accountName: sto4445
///       allowBlobPublicAccess: false
///       allowSharedKeyAccess: true
///       encryption:
///         keySource: Microsoft.Storage
///         requireInfrastructureEncryption: false
///         services:
///           blob:
///             enabled: true
///             keyType: Account
///           file:
///             enabled: true
///             keyType: Account
///       extendedLocation:
///         name: losangeles001
///         type: EdgeZone
///       isHnsEnabled: true
///       keyPolicy:
///         keyExpirationPeriodInDays: 20
///       kind: Storage
///       location: eastus
///       minimumTlsVersion: TLS1_2
///       publicNetworkAccess: Disabled
///       resourceGroupName: res9101
///       routingPreference:
///         publishInternetEndpoints: true
///         publishMicrosoftEndpoints: true
///         routingChoice: MicrosoftRouting
///       sasPolicy:
///         expirationAction: Log
///         sasExpirationPeriod: 1.15:59:59
///       sku:
///         name: Standard_GRS
///       tags:
///         key1: value1
///         key2: value2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountCreateDnsEndpointTypeToAzureDnsZone
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageAccount = new AzureNative.Storage.StorageAccount("storageAccount", new()
///     {
///         AccountName = "sto4445",
///         AllowBlobPublicAccess = false,
///         AllowSharedKeyAccess = true,
///         DefaultToOAuthAuthentication = false,
///         DnsEndpointType = AzureNative.Storage.DnsEndpointType.AzureDnsZone,
///         Encryption = new AzureNative.Storage.Inputs.EncryptionArgs
///         {
///             KeySource = AzureNative.Storage.KeySource.Microsoft_Storage,
///             RequireInfrastructureEncryption = false,
///             Services = new AzureNative.Storage.Inputs.EncryptionServicesArgs
///             {
///                 Blob = new AzureNative.Storage.Inputs.EncryptionServiceArgs
///                 {
///                     Enabled = true,
///                     KeyType = AzureNative.Storage.KeyType.Account,
///                 },
///                 File = new AzureNative.Storage.Inputs.EncryptionServiceArgs
///                 {
///                     Enabled = true,
///                     KeyType = AzureNative.Storage.KeyType.Account,
///                 },
///             },
///         },
///         ExtendedLocation = new AzureNative.Storage.Inputs.ExtendedLocationArgs
///         {
///             Name = "losangeles001",
///             Type = AzureNative.Storage.ExtendedLocationTypes.EdgeZone,
///         },
///         IsHnsEnabled = true,
///         IsSftpEnabled = true,
///         KeyPolicy = new AzureNative.Storage.Inputs.KeyPolicyArgs
///         {
///             KeyExpirationPeriodInDays = 20,
///         },
///         Kind = AzureNative.Storage.Kind.Storage,
///         Location = "eastus",
///         MinimumTlsVersion = AzureNative.Storage.MinimumTlsVersion.TLS1_2,
///         ResourceGroupName = "res9101",
///         RoutingPreference = new AzureNative.Storage.Inputs.RoutingPreferenceArgs
///         {
///             PublishInternetEndpoints = true,
///             PublishMicrosoftEndpoints = true,
///             RoutingChoice = AzureNative.Storage.RoutingChoice.MicrosoftRouting,
///         },
///         SasPolicy = new AzureNative.Storage.Inputs.SasPolicyArgs
///         {
///             ExpirationAction = AzureNative.Storage.ExpirationAction.Log,
///             SasExpirationPeriod = "1.15:59:59",
///         },
///         Sku = new AzureNative.Storage.Inputs.SkuArgs
///         {
///             Name = AzureNative.Storage.SkuName.Standard_GRS,
///         },
///         Tags =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewStorageAccount(ctx, "storageAccount", &storage.StorageAccountArgs{
/// 			AccountName:                  pulumi.String("sto4445"),
/// 			AllowBlobPublicAccess:        pulumi.Bool(false),
/// 			AllowSharedKeyAccess:         pulumi.Bool(true),
/// 			DefaultToOAuthAuthentication: pulumi.Bool(false),
/// 			DnsEndpointType:              pulumi.String(storage.DnsEndpointTypeAzureDnsZone),
/// 			Encryption: &storage.EncryptionArgs{
/// 				KeySource:                       pulumi.String(storage.KeySource_Microsoft_Storage),
/// 				RequireInfrastructureEncryption: pulumi.Bool(false),
/// 				Services: &storage.EncryptionServicesArgs{
/// 					Blob: &storage.EncryptionServiceArgs{
/// 						Enabled: pulumi.Bool(true),
/// 						KeyType: pulumi.String(storage.KeyTypeAccount),
/// 					},
/// 					File: &storage.EncryptionServiceArgs{
/// 						Enabled: pulumi.Bool(true),
/// 						KeyType: pulumi.String(storage.KeyTypeAccount),
/// 					},
/// 				},
/// 			},
/// 			ExtendedLocation: &storage.ExtendedLocationArgs{
/// 				Name: pulumi.String("losangeles001"),
/// 				Type: pulumi.String(storage.ExtendedLocationTypesEdgeZone),
/// 			},
/// 			IsHnsEnabled:  pulumi.Bool(true),
/// 			IsSftpEnabled: pulumi.Bool(true),
/// 			KeyPolicy: &storage.KeyPolicyArgs{
/// 				KeyExpirationPeriodInDays: pulumi.Int(20),
/// 			},
/// 			Kind:              pulumi.String(storage.KindStorage),
/// 			Location:          pulumi.String("eastus"),
/// 			MinimumTlsVersion: pulumi.String(storage.MinimumTlsVersion_TLS1_2),
/// 			ResourceGroupName: pulumi.String("res9101"),
/// 			RoutingPreference: &storage.RoutingPreferenceArgs{
/// 				PublishInternetEndpoints:  pulumi.Bool(true),
/// 				PublishMicrosoftEndpoints: pulumi.Bool(true),
/// 				RoutingChoice:             pulumi.String(storage.RoutingChoiceMicrosoftRouting),
/// 			},
/// 			SasPolicy: &storage.SasPolicyArgs{
/// 				ExpirationAction:    pulumi.String(storage.ExpirationActionLog),
/// 				SasExpirationPeriod: pulumi.String("1.15:59:59"),
/// 			},
/// 			Sku: &storage.SkuArgs{
/// 				Name: pulumi.String(storage.SkuName_Standard_GRS),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storage_storageaccount" "storageAccount" {
///   account_name                     = "sto4445"
///   allow_blob_public_access         = false
///   allow_shared_key_access          = true
///   default_to_o_auth_authentication = false
///   dns_endpoint_type                = "AzureDnsZone"
///   encryption = {
///     key_source                        = "Microsoft.Storage"
///     require_infrastructure_encryption = false
///     services = {
///       blob = {
///         enabled  = true
///         key_type = "Account"
///       }
///       file = {
///         enabled  = true
///         key_type = "Account"
///       }
///     }
///   }
///   extended_location = {
///     name = "losangeles001"
///     type = "EdgeZone"
///   }
///   is_hns_enabled  = true
///   is_sftp_enabled = true
///   key_policy = {
///     key_expiration_period_in_days = 20
///   }
///   kind                = "Storage"
///   location            = "eastus"
///   minimum_tls_version = "TLS1_2"
///   resource_group_name = "res9101"
///   routing_preference = {
///     publish_internet_endpoints  = true
///     publish_microsoft_endpoints = true
///     routing_choice              = "MicrosoftRouting"
///   }
///   sas_policy = {
///     expiration_action     = "Log"
///     sas_expiration_period = "1.15:59:59"
///   }
///   sku = {
///     name = "Standard_GRS"
///   }
///   tags = {
///     "key1" = "value1"
///     "key2" = "value2"
///   }
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
/// import com.pulumi.azurenative.storage.StorageAccount;
/// import com.pulumi.azurenative.storage.StorageAccountArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionServicesArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionServiceArgs;
/// import com.pulumi.azurenative.storage.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.storage.inputs.KeyPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.RoutingPreferenceArgs;
/// import com.pulumi.azurenative.storage.inputs.SasPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.SkuArgs;
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
///         var storageAccount = new StorageAccount("storageAccount", StorageAccountArgs.builder()
///             .accountName("sto4445")
///             .allowBlobPublicAccess(false)
///             .allowSharedKeyAccess(true)
///             .defaultToOAuthAuthentication(false)
///             .dnsEndpointType("AzureDnsZone")
///             .encryption(EncryptionArgs.builder()
///                 .keySource("Microsoft.Storage")
///                 .requireInfrastructureEncryption(false)
///                 .services(EncryptionServicesArgs.builder()
///                     .blob(EncryptionServiceArgs.builder()
///                         .enabled(true)
///                         .keyType("Account")
///                         .build())
///                     .file(EncryptionServiceArgs.builder()
///                         .enabled(true)
///                         .keyType("Account")
///                         .build())
///                     .build())
///                 .build())
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("losangeles001")
///                 .type("EdgeZone")
///                 .build())
///             .isHnsEnabled(true)
///             .isSftpEnabled(true)
///             .keyPolicy(KeyPolicyArgs.builder()
///                 .keyExpirationPeriodInDays(20)
///                 .build())
///             .kind("Storage")
///             .location("eastus")
///             .minimumTlsVersion("TLS1_2")
///             .resourceGroupName("res9101")
///             .routingPreference(RoutingPreferenceArgs.builder()
///                 .publishInternetEndpoints(true)
///                 .publishMicrosoftEndpoints(true)
///                 .routingChoice("MicrosoftRouting")
///                 .build())
///             .sasPolicy(SasPolicyArgs.builder()
///                 .expirationAction("Log")
///                 .sasExpirationPeriod("1.15:59:59")
///                 .build())
///             .sku(SkuArgs.builder()
///                 .name("Standard_GRS")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
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
/// const storageAccount = new azure_native.storage.StorageAccount("storageAccount", {
///     accountName: "sto4445",
///     allowBlobPublicAccess: false,
///     allowSharedKeyAccess: true,
///     defaultToOAuthAuthentication: false,
///     dnsEndpointType: azure_native.storage.DnsEndpointType.AzureDnsZone,
///     encryption: {
///         keySource: azure_native.storage.KeySource.Microsoft_Storage,
///         requireInfrastructureEncryption: false,
///         services: {
///             blob: {
///                 enabled: true,
///                 keyType: azure_native.storage.KeyType.Account,
///             },
///             file: {
///                 enabled: true,
///                 keyType: azure_native.storage.KeyType.Account,
///             },
///         },
///     },
///     extendedLocation: {
///         name: "losangeles001",
///         type: azure_native.storage.ExtendedLocationTypes.EdgeZone,
///     },
///     isHnsEnabled: true,
///     isSftpEnabled: true,
///     keyPolicy: {
///         keyExpirationPeriodInDays: 20,
///     },
///     kind: azure_native.storage.Kind.Storage,
///     location: "eastus",
///     minimumTlsVersion: azure_native.storage.MinimumTlsVersion.TLS1_2,
///     resourceGroupName: "res9101",
///     routingPreference: {
///         publishInternetEndpoints: true,
///         publishMicrosoftEndpoints: true,
///         routingChoice: azure_native.storage.RoutingChoice.MicrosoftRouting,
///     },
///     sasPolicy: {
///         expirationAction: azure_native.storage.ExpirationAction.Log,
///         sasExpirationPeriod: "1.15:59:59",
///     },
///     sku: {
///         name: azure_native.storage.SkuName.Standard_GRS,
///     },
///     tags: {
///         key1: "value1",
///         key2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_account = azure_native.storage.StorageAccount("storageAccount",
///     account_name="sto4445",
///     allow_blob_public_access=False,
///     allow_shared_key_access=True,
///     default_to_o_auth_authentication=False,
///     dns_endpoint_type=azure_native.storage.DnsEndpointType.AZURE_DNS_ZONE,
///     encryption={
///         "key_source": azure_native.storage.KeySource.MICROSOFT_STORAGE,
///         "require_infrastructure_encryption": False,
///         "services": {
///             "blob": {
///                 "enabled": True,
///                 "key_type": azure_native.storage.KeyType.ACCOUNT,
///             },
///             "file": {
///                 "enabled": True,
///                 "key_type": azure_native.storage.KeyType.ACCOUNT,
///             },
///         },
///     },
///     extended_location={
///         "name": "losangeles001",
///         "type": azure_native.storage.ExtendedLocationTypes.EDGE_ZONE,
///     },
///     is_hns_enabled=True,
///     is_sftp_enabled=True,
///     key_policy={
///         "key_expiration_period_in_days": 20,
///     },
///     kind=azure_native.storage.Kind.STORAGE,
///     location="eastus",
///     minimum_tls_version=azure_native.storage.MinimumTlsVersion.TLS1_2,
///     resource_group_name="res9101",
///     routing_preference={
///         "publish_internet_endpoints": True,
///         "publish_microsoft_endpoints": True,
///         "routing_choice": azure_native.storage.RoutingChoice.MICROSOFT_ROUTING,
///     },
///     sas_policy={
///         "expiration_action": azure_native.storage.ExpirationAction.LOG,
///         "sas_expiration_period": "1.15:59:59",
///     },
///     sku={
///         "name": azure_native.storage.SkuName.STANDARD_GRS,
///     },
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   storageAccount:
///     type: azure-native:storage:StorageAccount
///     properties:
///       accountName: sto4445
///       allowBlobPublicAccess: false
///       allowSharedKeyAccess: true
///       defaultToOAuthAuthentication: false
///       dnsEndpointType: AzureDnsZone
///       encryption:
///         keySource: Microsoft.Storage
///         requireInfrastructureEncryption: false
///         services:
///           blob:
///             enabled: true
///             keyType: Account
///           file:
///             enabled: true
///             keyType: Account
///       extendedLocation:
///         name: losangeles001
///         type: EdgeZone
///       isHnsEnabled: true
///       isSftpEnabled: true
///       keyPolicy:
///         keyExpirationPeriodInDays: 20
///       kind: Storage
///       location: eastus
///       minimumTlsVersion: TLS1_2
///       resourceGroupName: res9101
///       routingPreference:
///         publishInternetEndpoints: true
///         publishMicrosoftEndpoints: true
///         routingChoice: MicrosoftRouting
///       sasPolicy:
///         expirationAction: Log
///         sasExpirationPeriod: 1.15:59:59
///       sku:
///         name: Standard_GRS
///       tags:
///         key1: value1
///         key2: value2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountCreateDnsEndpointTypeToStandard
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageAccount = new AzureNative.Storage.StorageAccount("storageAccount", new()
///     {
///         AccountName = "sto4445",
///         AllowBlobPublicAccess = false,
///         AllowSharedKeyAccess = true,
///         DefaultToOAuthAuthentication = false,
///         DnsEndpointType = AzureNative.Storage.DnsEndpointType.Standard,
///         Encryption = new AzureNative.Storage.Inputs.EncryptionArgs
///         {
///             KeySource = AzureNative.Storage.KeySource.Microsoft_Storage,
///             RequireInfrastructureEncryption = false,
///             Services = new AzureNative.Storage.Inputs.EncryptionServicesArgs
///             {
///                 Blob = new AzureNative.Storage.Inputs.EncryptionServiceArgs
///                 {
///                     Enabled = true,
///                     KeyType = AzureNative.Storage.KeyType.Account,
///                 },
///                 File = new AzureNative.Storage.Inputs.EncryptionServiceArgs
///                 {
///                     Enabled = true,
///                     KeyType = AzureNative.Storage.KeyType.Account,
///                 },
///             },
///         },
///         ExtendedLocation = new AzureNative.Storage.Inputs.ExtendedLocationArgs
///         {
///             Name = "losangeles001",
///             Type = AzureNative.Storage.ExtendedLocationTypes.EdgeZone,
///         },
///         IsHnsEnabled = true,
///         IsSftpEnabled = true,
///         KeyPolicy = new AzureNative.Storage.Inputs.KeyPolicyArgs
///         {
///             KeyExpirationPeriodInDays = 20,
///         },
///         Kind = AzureNative.Storage.Kind.Storage,
///         Location = "eastus",
///         MinimumTlsVersion = AzureNative.Storage.MinimumTlsVersion.TLS1_2,
///         ResourceGroupName = "res9101",
///         RoutingPreference = new AzureNative.Storage.Inputs.RoutingPreferenceArgs
///         {
///             PublishInternetEndpoints = true,
///             PublishMicrosoftEndpoints = true,
///             RoutingChoice = AzureNative.Storage.RoutingChoice.MicrosoftRouting,
///         },
///         SasPolicy = new AzureNative.Storage.Inputs.SasPolicyArgs
///         {
///             ExpirationAction = AzureNative.Storage.ExpirationAction.Log,
///             SasExpirationPeriod = "1.15:59:59",
///         },
///         Sku = new AzureNative.Storage.Inputs.SkuArgs
///         {
///             Name = AzureNative.Storage.SkuName.Standard_GRS,
///         },
///         Tags =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewStorageAccount(ctx, "storageAccount", &storage.StorageAccountArgs{
/// 			AccountName:                  pulumi.String("sto4445"),
/// 			AllowBlobPublicAccess:        pulumi.Bool(false),
/// 			AllowSharedKeyAccess:         pulumi.Bool(true),
/// 			DefaultToOAuthAuthentication: pulumi.Bool(false),
/// 			DnsEndpointType:              pulumi.String(storage.DnsEndpointTypeStandard),
/// 			Encryption: &storage.EncryptionArgs{
/// 				KeySource:                       pulumi.String(storage.KeySource_Microsoft_Storage),
/// 				RequireInfrastructureEncryption: pulumi.Bool(false),
/// 				Services: &storage.EncryptionServicesArgs{
/// 					Blob: &storage.EncryptionServiceArgs{
/// 						Enabled: pulumi.Bool(true),
/// 						KeyType: pulumi.String(storage.KeyTypeAccount),
/// 					},
/// 					File: &storage.EncryptionServiceArgs{
/// 						Enabled: pulumi.Bool(true),
/// 						KeyType: pulumi.String(storage.KeyTypeAccount),
/// 					},
/// 				},
/// 			},
/// 			ExtendedLocation: &storage.ExtendedLocationArgs{
/// 				Name: pulumi.String("losangeles001"),
/// 				Type: pulumi.String(storage.ExtendedLocationTypesEdgeZone),
/// 			},
/// 			IsHnsEnabled:  pulumi.Bool(true),
/// 			IsSftpEnabled: pulumi.Bool(true),
/// 			KeyPolicy: &storage.KeyPolicyArgs{
/// 				KeyExpirationPeriodInDays: pulumi.Int(20),
/// 			},
/// 			Kind:              pulumi.String(storage.KindStorage),
/// 			Location:          pulumi.String("eastus"),
/// 			MinimumTlsVersion: pulumi.String(storage.MinimumTlsVersion_TLS1_2),
/// 			ResourceGroupName: pulumi.String("res9101"),
/// 			RoutingPreference: &storage.RoutingPreferenceArgs{
/// 				PublishInternetEndpoints:  pulumi.Bool(true),
/// 				PublishMicrosoftEndpoints: pulumi.Bool(true),
/// 				RoutingChoice:             pulumi.String(storage.RoutingChoiceMicrosoftRouting),
/// 			},
/// 			SasPolicy: &storage.SasPolicyArgs{
/// 				ExpirationAction:    pulumi.String(storage.ExpirationActionLog),
/// 				SasExpirationPeriod: pulumi.String("1.15:59:59"),
/// 			},
/// 			Sku: &storage.SkuArgs{
/// 				Name: pulumi.String(storage.SkuName_Standard_GRS),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storage_storageaccount" "storageAccount" {
///   account_name                     = "sto4445"
///   allow_blob_public_access         = false
///   allow_shared_key_access          = true
///   default_to_o_auth_authentication = false
///   dns_endpoint_type                = "Standard"
///   encryption = {
///     key_source                        = "Microsoft.Storage"
///     require_infrastructure_encryption = false
///     services = {
///       blob = {
///         enabled  = true
///         key_type = "Account"
///       }
///       file = {
///         enabled  = true
///         key_type = "Account"
///       }
///     }
///   }
///   extended_location = {
///     name = "losangeles001"
///     type = "EdgeZone"
///   }
///   is_hns_enabled  = true
///   is_sftp_enabled = true
///   key_policy = {
///     key_expiration_period_in_days = 20
///   }
///   kind                = "Storage"
///   location            = "eastus"
///   minimum_tls_version = "TLS1_2"
///   resource_group_name = "res9101"
///   routing_preference = {
///     publish_internet_endpoints  = true
///     publish_microsoft_endpoints = true
///     routing_choice              = "MicrosoftRouting"
///   }
///   sas_policy = {
///     expiration_action     = "Log"
///     sas_expiration_period = "1.15:59:59"
///   }
///   sku = {
///     name = "Standard_GRS"
///   }
///   tags = {
///     "key1" = "value1"
///     "key2" = "value2"
///   }
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
/// import com.pulumi.azurenative.storage.StorageAccount;
/// import com.pulumi.azurenative.storage.StorageAccountArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionServicesArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionServiceArgs;
/// import com.pulumi.azurenative.storage.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.storage.inputs.KeyPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.RoutingPreferenceArgs;
/// import com.pulumi.azurenative.storage.inputs.SasPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.SkuArgs;
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
///         var storageAccount = new StorageAccount("storageAccount", StorageAccountArgs.builder()
///             .accountName("sto4445")
///             .allowBlobPublicAccess(false)
///             .allowSharedKeyAccess(true)
///             .defaultToOAuthAuthentication(false)
///             .dnsEndpointType("Standard")
///             .encryption(EncryptionArgs.builder()
///                 .keySource("Microsoft.Storage")
///                 .requireInfrastructureEncryption(false)
///                 .services(EncryptionServicesArgs.builder()
///                     .blob(EncryptionServiceArgs.builder()
///                         .enabled(true)
///                         .keyType("Account")
///                         .build())
///                     .file(EncryptionServiceArgs.builder()
///                         .enabled(true)
///                         .keyType("Account")
///                         .build())
///                     .build())
///                 .build())
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("losangeles001")
///                 .type("EdgeZone")
///                 .build())
///             .isHnsEnabled(true)
///             .isSftpEnabled(true)
///             .keyPolicy(KeyPolicyArgs.builder()
///                 .keyExpirationPeriodInDays(20)
///                 .build())
///             .kind("Storage")
///             .location("eastus")
///             .minimumTlsVersion("TLS1_2")
///             .resourceGroupName("res9101")
///             .routingPreference(RoutingPreferenceArgs.builder()
///                 .publishInternetEndpoints(true)
///                 .publishMicrosoftEndpoints(true)
///                 .routingChoice("MicrosoftRouting")
///                 .build())
///             .sasPolicy(SasPolicyArgs.builder()
///                 .expirationAction("Log")
///                 .sasExpirationPeriod("1.15:59:59")
///                 .build())
///             .sku(SkuArgs.builder()
///                 .name("Standard_GRS")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
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
/// const storageAccount = new azure_native.storage.StorageAccount("storageAccount", {
///     accountName: "sto4445",
///     allowBlobPublicAccess: false,
///     allowSharedKeyAccess: true,
///     defaultToOAuthAuthentication: false,
///     dnsEndpointType: azure_native.storage.DnsEndpointType.Standard,
///     encryption: {
///         keySource: azure_native.storage.KeySource.Microsoft_Storage,
///         requireInfrastructureEncryption: false,
///         services: {
///             blob: {
///                 enabled: true,
///                 keyType: azure_native.storage.KeyType.Account,
///             },
///             file: {
///                 enabled: true,
///                 keyType: azure_native.storage.KeyType.Account,
///             },
///         },
///     },
///     extendedLocation: {
///         name: "losangeles001",
///         type: azure_native.storage.ExtendedLocationTypes.EdgeZone,
///     },
///     isHnsEnabled: true,
///     isSftpEnabled: true,
///     keyPolicy: {
///         keyExpirationPeriodInDays: 20,
///     },
///     kind: azure_native.storage.Kind.Storage,
///     location: "eastus",
///     minimumTlsVersion: azure_native.storage.MinimumTlsVersion.TLS1_2,
///     resourceGroupName: "res9101",
///     routingPreference: {
///         publishInternetEndpoints: true,
///         publishMicrosoftEndpoints: true,
///         routingChoice: azure_native.storage.RoutingChoice.MicrosoftRouting,
///     },
///     sasPolicy: {
///         expirationAction: azure_native.storage.ExpirationAction.Log,
///         sasExpirationPeriod: "1.15:59:59",
///     },
///     sku: {
///         name: azure_native.storage.SkuName.Standard_GRS,
///     },
///     tags: {
///         key1: "value1",
///         key2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_account = azure_native.storage.StorageAccount("storageAccount",
///     account_name="sto4445",
///     allow_blob_public_access=False,
///     allow_shared_key_access=True,
///     default_to_o_auth_authentication=False,
///     dns_endpoint_type=azure_native.storage.DnsEndpointType.STANDARD,
///     encryption={
///         "key_source": azure_native.storage.KeySource.MICROSOFT_STORAGE,
///         "require_infrastructure_encryption": False,
///         "services": {
///             "blob": {
///                 "enabled": True,
///                 "key_type": azure_native.storage.KeyType.ACCOUNT,
///             },
///             "file": {
///                 "enabled": True,
///                 "key_type": azure_native.storage.KeyType.ACCOUNT,
///             },
///         },
///     },
///     extended_location={
///         "name": "losangeles001",
///         "type": azure_native.storage.ExtendedLocationTypes.EDGE_ZONE,
///     },
///     is_hns_enabled=True,
///     is_sftp_enabled=True,
///     key_policy={
///         "key_expiration_period_in_days": 20,
///     },
///     kind=azure_native.storage.Kind.STORAGE,
///     location="eastus",
///     minimum_tls_version=azure_native.storage.MinimumTlsVersion.TLS1_2,
///     resource_group_name="res9101",
///     routing_preference={
///         "publish_internet_endpoints": True,
///         "publish_microsoft_endpoints": True,
///         "routing_choice": azure_native.storage.RoutingChoice.MICROSOFT_ROUTING,
///     },
///     sas_policy={
///         "expiration_action": azure_native.storage.ExpirationAction.LOG,
///         "sas_expiration_period": "1.15:59:59",
///     },
///     sku={
///         "name": azure_native.storage.SkuName.STANDARD_GRS,
///     },
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   storageAccount:
///     type: azure-native:storage:StorageAccount
///     properties:
///       accountName: sto4445
///       allowBlobPublicAccess: false
///       allowSharedKeyAccess: true
///       defaultToOAuthAuthentication: false
///       dnsEndpointType: Standard
///       encryption:
///         keySource: Microsoft.Storage
///         requireInfrastructureEncryption: false
///         services:
///           blob:
///             enabled: true
///             keyType: Account
///           file:
///             enabled: true
///             keyType: Account
///       extendedLocation:
///         name: losangeles001
///         type: EdgeZone
///       isHnsEnabled: true
///       isSftpEnabled: true
///       keyPolicy:
///         keyExpirationPeriodInDays: 20
///       kind: Storage
///       location: eastus
///       minimumTlsVersion: TLS1_2
///       resourceGroupName: res9101
///       routingPreference:
///         publishInternetEndpoints: true
///         publishMicrosoftEndpoints: true
///         routingChoice: MicrosoftRouting
///       sasPolicy:
///         expirationAction: Log
///         sasExpirationPeriod: 1.15:59:59
///       sku:
///         name: Standard_GRS
///       tags:
///         key1: value1
///         key2: value2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountCreateEnablePublicNetworkAccess
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageAccount = new AzureNative.Storage.StorageAccount("storageAccount", new()
///     {
///         AccountName = "sto4445",
///         AllowBlobPublicAccess = false,
///         AllowSharedKeyAccess = true,
///         Encryption = new AzureNative.Storage.Inputs.EncryptionArgs
///         {
///             KeySource = AzureNative.Storage.KeySource.Microsoft_Storage,
///             RequireInfrastructureEncryption = false,
///             Services = new AzureNative.Storage.Inputs.EncryptionServicesArgs
///             {
///                 Blob = new AzureNative.Storage.Inputs.EncryptionServiceArgs
///                 {
///                     Enabled = true,
///                     KeyType = AzureNative.Storage.KeyType.Account,
///                 },
///                 File = new AzureNative.Storage.Inputs.EncryptionServiceArgs
///                 {
///                     Enabled = true,
///                     KeyType = AzureNative.Storage.KeyType.Account,
///                 },
///             },
///         },
///         ExtendedLocation = new AzureNative.Storage.Inputs.ExtendedLocationArgs
///         {
///             Name = "losangeles001",
///             Type = AzureNative.Storage.ExtendedLocationTypes.EdgeZone,
///         },
///         IsHnsEnabled = true,
///         KeyPolicy = new AzureNative.Storage.Inputs.KeyPolicyArgs
///         {
///             KeyExpirationPeriodInDays = 20,
///         },
///         Kind = AzureNative.Storage.Kind.Storage,
///         Location = "eastus",
///         MinimumTlsVersion = AzureNative.Storage.MinimumTlsVersion.TLS1_2,
///         PublicNetworkAccess = AzureNative.Storage.PublicNetworkAccess.Enabled,
///         ResourceGroupName = "res9101",
///         RoutingPreference = new AzureNative.Storage.Inputs.RoutingPreferenceArgs
///         {
///             PublishInternetEndpoints = true,
///             PublishMicrosoftEndpoints = true,
///             RoutingChoice = AzureNative.Storage.RoutingChoice.MicrosoftRouting,
///         },
///         SasPolicy = new AzureNative.Storage.Inputs.SasPolicyArgs
///         {
///             ExpirationAction = AzureNative.Storage.ExpirationAction.Log,
///             SasExpirationPeriod = "1.15:59:59",
///         },
///         Sku = new AzureNative.Storage.Inputs.SkuArgs
///         {
///             Name = AzureNative.Storage.SkuName.Standard_GRS,
///         },
///         Tags =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewStorageAccount(ctx, "storageAccount", &storage.StorageAccountArgs{
/// 			AccountName:           pulumi.String("sto4445"),
/// 			AllowBlobPublicAccess: pulumi.Bool(false),
/// 			AllowSharedKeyAccess:  pulumi.Bool(true),
/// 			Encryption: &storage.EncryptionArgs{
/// 				KeySource:                       pulumi.String(storage.KeySource_Microsoft_Storage),
/// 				RequireInfrastructureEncryption: pulumi.Bool(false),
/// 				Services: &storage.EncryptionServicesArgs{
/// 					Blob: &storage.EncryptionServiceArgs{
/// 						Enabled: pulumi.Bool(true),
/// 						KeyType: pulumi.String(storage.KeyTypeAccount),
/// 					},
/// 					File: &storage.EncryptionServiceArgs{
/// 						Enabled: pulumi.Bool(true),
/// 						KeyType: pulumi.String(storage.KeyTypeAccount),
/// 					},
/// 				},
/// 			},
/// 			ExtendedLocation: &storage.ExtendedLocationArgs{
/// 				Name: pulumi.String("losangeles001"),
/// 				Type: pulumi.String(storage.ExtendedLocationTypesEdgeZone),
/// 			},
/// 			IsHnsEnabled: pulumi.Bool(true),
/// 			KeyPolicy: &storage.KeyPolicyArgs{
/// 				KeyExpirationPeriodInDays: pulumi.Int(20),
/// 			},
/// 			Kind:                pulumi.String(storage.KindStorage),
/// 			Location:            pulumi.String("eastus"),
/// 			MinimumTlsVersion:   pulumi.String(storage.MinimumTlsVersion_TLS1_2),
/// 			PublicNetworkAccess: pulumi.String(storage.PublicNetworkAccessEnabled),
/// 			ResourceGroupName:   pulumi.String("res9101"),
/// 			RoutingPreference: &storage.RoutingPreferenceArgs{
/// 				PublishInternetEndpoints:  pulumi.Bool(true),
/// 				PublishMicrosoftEndpoints: pulumi.Bool(true),
/// 				RoutingChoice:             pulumi.String(storage.RoutingChoiceMicrosoftRouting),
/// 			},
/// 			SasPolicy: &storage.SasPolicyArgs{
/// 				ExpirationAction:    pulumi.String(storage.ExpirationActionLog),
/// 				SasExpirationPeriod: pulumi.String("1.15:59:59"),
/// 			},
/// 			Sku: &storage.SkuArgs{
/// 				Name: pulumi.String(storage.SkuName_Standard_GRS),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storage_storageaccount" "storageAccount" {
///   account_name             = "sto4445"
///   allow_blob_public_access = false
///   allow_shared_key_access  = true
///   encryption = {
///     key_source                        = "Microsoft.Storage"
///     require_infrastructure_encryption = false
///     services = {
///       blob = {
///         enabled  = true
///         key_type = "Account"
///       }
///       file = {
///         enabled  = true
///         key_type = "Account"
///       }
///     }
///   }
///   extended_location = {
///     name = "losangeles001"
///     type = "EdgeZone"
///   }
///   is_hns_enabled = true
///   key_policy = {
///     key_expiration_period_in_days = 20
///   }
///   kind                  = "Storage"
///   location              = "eastus"
///   minimum_tls_version   = "TLS1_2"
///   public_network_access = "Enabled"
///   resource_group_name   = "res9101"
///   routing_preference = {
///     publish_internet_endpoints  = true
///     publish_microsoft_endpoints = true
///     routing_choice              = "MicrosoftRouting"
///   }
///   sas_policy = {
///     expiration_action     = "Log"
///     sas_expiration_period = "1.15:59:59"
///   }
///   sku = {
///     name = "Standard_GRS"
///   }
///   tags = {
///     "key1" = "value1"
///     "key2" = "value2"
///   }
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
/// import com.pulumi.azurenative.storage.StorageAccount;
/// import com.pulumi.azurenative.storage.StorageAccountArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionServicesArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionServiceArgs;
/// import com.pulumi.azurenative.storage.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.storage.inputs.KeyPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.RoutingPreferenceArgs;
/// import com.pulumi.azurenative.storage.inputs.SasPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.SkuArgs;
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
///         var storageAccount = new StorageAccount("storageAccount", StorageAccountArgs.builder()
///             .accountName("sto4445")
///             .allowBlobPublicAccess(false)
///             .allowSharedKeyAccess(true)
///             .encryption(EncryptionArgs.builder()
///                 .keySource("Microsoft.Storage")
///                 .requireInfrastructureEncryption(false)
///                 .services(EncryptionServicesArgs.builder()
///                     .blob(EncryptionServiceArgs.builder()
///                         .enabled(true)
///                         .keyType("Account")
///                         .build())
///                     .file(EncryptionServiceArgs.builder()
///                         .enabled(true)
///                         .keyType("Account")
///                         .build())
///                     .build())
///                 .build())
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("losangeles001")
///                 .type("EdgeZone")
///                 .build())
///             .isHnsEnabled(true)
///             .keyPolicy(KeyPolicyArgs.builder()
///                 .keyExpirationPeriodInDays(20)
///                 .build())
///             .kind("Storage")
///             .location("eastus")
///             .minimumTlsVersion("TLS1_2")
///             .publicNetworkAccess("Enabled")
///             .resourceGroupName("res9101")
///             .routingPreference(RoutingPreferenceArgs.builder()
///                 .publishInternetEndpoints(true)
///                 .publishMicrosoftEndpoints(true)
///                 .routingChoice("MicrosoftRouting")
///                 .build())
///             .sasPolicy(SasPolicyArgs.builder()
///                 .expirationAction("Log")
///                 .sasExpirationPeriod("1.15:59:59")
///                 .build())
///             .sku(SkuArgs.builder()
///                 .name("Standard_GRS")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
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
/// const storageAccount = new azure_native.storage.StorageAccount("storageAccount", {
///     accountName: "sto4445",
///     allowBlobPublicAccess: false,
///     allowSharedKeyAccess: true,
///     encryption: {
///         keySource: azure_native.storage.KeySource.Microsoft_Storage,
///         requireInfrastructureEncryption: false,
///         services: {
///             blob: {
///                 enabled: true,
///                 keyType: azure_native.storage.KeyType.Account,
///             },
///             file: {
///                 enabled: true,
///                 keyType: azure_native.storage.KeyType.Account,
///             },
///         },
///     },
///     extendedLocation: {
///         name: "losangeles001",
///         type: azure_native.storage.ExtendedLocationTypes.EdgeZone,
///     },
///     isHnsEnabled: true,
///     keyPolicy: {
///         keyExpirationPeriodInDays: 20,
///     },
///     kind: azure_native.storage.Kind.Storage,
///     location: "eastus",
///     minimumTlsVersion: azure_native.storage.MinimumTlsVersion.TLS1_2,
///     publicNetworkAccess: azure_native.storage.PublicNetworkAccess.Enabled,
///     resourceGroupName: "res9101",
///     routingPreference: {
///         publishInternetEndpoints: true,
///         publishMicrosoftEndpoints: true,
///         routingChoice: azure_native.storage.RoutingChoice.MicrosoftRouting,
///     },
///     sasPolicy: {
///         expirationAction: azure_native.storage.ExpirationAction.Log,
///         sasExpirationPeriod: "1.15:59:59",
///     },
///     sku: {
///         name: azure_native.storage.SkuName.Standard_GRS,
///     },
///     tags: {
///         key1: "value1",
///         key2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_account = azure_native.storage.StorageAccount("storageAccount",
///     account_name="sto4445",
///     allow_blob_public_access=False,
///     allow_shared_key_access=True,
///     encryption={
///         "key_source": azure_native.storage.KeySource.MICROSOFT_STORAGE,
///         "require_infrastructure_encryption": False,
///         "services": {
///             "blob": {
///                 "enabled": True,
///                 "key_type": azure_native.storage.KeyType.ACCOUNT,
///             },
///             "file": {
///                 "enabled": True,
///                 "key_type": azure_native.storage.KeyType.ACCOUNT,
///             },
///         },
///     },
///     extended_location={
///         "name": "losangeles001",
///         "type": azure_native.storage.ExtendedLocationTypes.EDGE_ZONE,
///     },
///     is_hns_enabled=True,
///     key_policy={
///         "key_expiration_period_in_days": 20,
///     },
///     kind=azure_native.storage.Kind.STORAGE,
///     location="eastus",
///     minimum_tls_version=azure_native.storage.MinimumTlsVersion.TLS1_2,
///     public_network_access=azure_native.storage.PublicNetworkAccess.ENABLED,
///     resource_group_name="res9101",
///     routing_preference={
///         "publish_internet_endpoints": True,
///         "publish_microsoft_endpoints": True,
///         "routing_choice": azure_native.storage.RoutingChoice.MICROSOFT_ROUTING,
///     },
///     sas_policy={
///         "expiration_action": azure_native.storage.ExpirationAction.LOG,
///         "sas_expiration_period": "1.15:59:59",
///     },
///     sku={
///         "name": azure_native.storage.SkuName.STANDARD_GRS,
///     },
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   storageAccount:
///     type: azure-native:storage:StorageAccount
///     properties:
///       accountName: sto4445
///       allowBlobPublicAccess: false
///       allowSharedKeyAccess: true
///       encryption:
///         keySource: Microsoft.Storage
///         requireInfrastructureEncryption: false
///         services:
///           blob:
///             enabled: true
///             keyType: Account
///           file:
///             enabled: true
///             keyType: Account
///       extendedLocation:
///         name: losangeles001
///         type: EdgeZone
///       isHnsEnabled: true
///       keyPolicy:
///         keyExpirationPeriodInDays: 20
///       kind: Storage
///       location: eastus
///       minimumTlsVersion: TLS1_2
///       publicNetworkAccess: Enabled
///       resourceGroupName: res9101
///       routingPreference:
///         publishInternetEndpoints: true
///         publishMicrosoftEndpoints: true
///         routingChoice: MicrosoftRouting
///       sasPolicy:
///         expirationAction: Log
///         sasExpirationPeriod: 1.15:59:59
///       sku:
///         name: Standard_GRS
///       tags:
///         key1: value1
///         key2: value2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountCreatePremiumBlockBlobStorage
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageAccount = new AzureNative.Storage.StorageAccount("storageAccount", new()
///     {
///         AccountName = "sto4445",
///         AllowSharedKeyAccess = true,
///         Encryption = new AzureNative.Storage.Inputs.EncryptionArgs
///         {
///             KeySource = AzureNative.Storage.KeySource.Microsoft_Storage,
///             RequireInfrastructureEncryption = false,
///             Services = new AzureNative.Storage.Inputs.EncryptionServicesArgs
///             {
///                 Blob = new AzureNative.Storage.Inputs.EncryptionServiceArgs
///                 {
///                     Enabled = true,
///                     KeyType = AzureNative.Storage.KeyType.Account,
///                 },
///                 File = new AzureNative.Storage.Inputs.EncryptionServiceArgs
///                 {
///                     Enabled = true,
///                     KeyType = AzureNative.Storage.KeyType.Account,
///                 },
///             },
///         },
///         Kind = AzureNative.Storage.Kind.BlockBlobStorage,
///         Location = "eastus",
///         MinimumTlsVersion = AzureNative.Storage.MinimumTlsVersion.TLS1_2,
///         ResourceGroupName = "res9101",
///         Sku = new AzureNative.Storage.Inputs.SkuArgs
///         {
///             Name = AzureNative.Storage.SkuName.Premium_LRS,
///         },
///         Tags =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewStorageAccount(ctx, "storageAccount", &storage.StorageAccountArgs{
/// 			AccountName:          pulumi.String("sto4445"),
/// 			AllowSharedKeyAccess: pulumi.Bool(true),
/// 			Encryption: &storage.EncryptionArgs{
/// 				KeySource:                       pulumi.String(storage.KeySource_Microsoft_Storage),
/// 				RequireInfrastructureEncryption: pulumi.Bool(false),
/// 				Services: &storage.EncryptionServicesArgs{
/// 					Blob: &storage.EncryptionServiceArgs{
/// 						Enabled: pulumi.Bool(true),
/// 						KeyType: pulumi.String(storage.KeyTypeAccount),
/// 					},
/// 					File: &storage.EncryptionServiceArgs{
/// 						Enabled: pulumi.Bool(true),
/// 						KeyType: pulumi.String(storage.KeyTypeAccount),
/// 					},
/// 				},
/// 			},
/// 			Kind:              pulumi.String(storage.KindBlockBlobStorage),
/// 			Location:          pulumi.String("eastus"),
/// 			MinimumTlsVersion: pulumi.String(storage.MinimumTlsVersion_TLS1_2),
/// 			ResourceGroupName: pulumi.String("res9101"),
/// 			Sku: &storage.SkuArgs{
/// 				Name: pulumi.String(storage.SkuName_Premium_LRS),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storage_storageaccount" "storageAccount" {
///   account_name            = "sto4445"
///   allow_shared_key_access = true
///   encryption = {
///     key_source                        = "Microsoft.Storage"
///     require_infrastructure_encryption = false
///     services = {
///       blob = {
///         enabled  = true
///         key_type = "Account"
///       }
///       file = {
///         enabled  = true
///         key_type = "Account"
///       }
///     }
///   }
///   kind                = "BlockBlobStorage"
///   location            = "eastus"
///   minimum_tls_version = "TLS1_2"
///   resource_group_name = "res9101"
///   sku = {
///     name = "Premium_LRS"
///   }
///   tags = {
///     "key1" = "value1"
///     "key2" = "value2"
///   }
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
/// import com.pulumi.azurenative.storage.StorageAccount;
/// import com.pulumi.azurenative.storage.StorageAccountArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionServicesArgs;
/// import com.pulumi.azurenative.storage.inputs.EncryptionServiceArgs;
/// import com.pulumi.azurenative.storage.inputs.SkuArgs;
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
///         var storageAccount = new StorageAccount("storageAccount", StorageAccountArgs.builder()
///             .accountName("sto4445")
///             .allowSharedKeyAccess(true)
///             .encryption(EncryptionArgs.builder()
///                 .keySource("Microsoft.Storage")
///                 .requireInfrastructureEncryption(false)
///                 .services(EncryptionServicesArgs.builder()
///                     .blob(EncryptionServiceArgs.builder()
///                         .enabled(true)
///                         .keyType("Account")
///                         .build())
///                     .file(EncryptionServiceArgs.builder()
///                         .enabled(true)
///                         .keyType("Account")
///                         .build())
///                     .build())
///                 .build())
///             .kind("BlockBlobStorage")
///             .location("eastus")
///             .minimumTlsVersion("TLS1_2")
///             .resourceGroupName("res9101")
///             .sku(SkuArgs.builder()
///                 .name("Premium_LRS")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
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
/// const storageAccount = new azure_native.storage.StorageAccount("storageAccount", {
///     accountName: "sto4445",
///     allowSharedKeyAccess: true,
///     encryption: {
///         keySource: azure_native.storage.KeySource.Microsoft_Storage,
///         requireInfrastructureEncryption: false,
///         services: {
///             blob: {
///                 enabled: true,
///                 keyType: azure_native.storage.KeyType.Account,
///             },
///             file: {
///                 enabled: true,
///                 keyType: azure_native.storage.KeyType.Account,
///             },
///         },
///     },
///     kind: azure_native.storage.Kind.BlockBlobStorage,
///     location: "eastus",
///     minimumTlsVersion: azure_native.storage.MinimumTlsVersion.TLS1_2,
///     resourceGroupName: "res9101",
///     sku: {
///         name: azure_native.storage.SkuName.Premium_LRS,
///     },
///     tags: {
///         key1: "value1",
///         key2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_account = azure_native.storage.StorageAccount("storageAccount",
///     account_name="sto4445",
///     allow_shared_key_access=True,
///     encryption={
///         "key_source": azure_native.storage.KeySource.MICROSOFT_STORAGE,
///         "require_infrastructure_encryption": False,
///         "services": {
///             "blob": {
///                 "enabled": True,
///                 "key_type": azure_native.storage.KeyType.ACCOUNT,
///             },
///             "file": {
///                 "enabled": True,
///                 "key_type": azure_native.storage.KeyType.ACCOUNT,
///             },
///         },
///     },
///     kind=azure_native.storage.Kind.BLOCK_BLOB_STORAGE,
///     location="eastus",
///     minimum_tls_version=azure_native.storage.MinimumTlsVersion.TLS1_2,
///     resource_group_name="res9101",
///     sku={
///         "name": azure_native.storage.SkuName.PREMIUM_LRS,
///     },
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   storageAccount:
///     type: azure-native:storage:StorageAccount
///     properties:
///       accountName: sto4445
///       allowSharedKeyAccess: true
///       encryption:
///         keySource: Microsoft.Storage
///         requireInfrastructureEncryption: false
///         services:
///           blob:
///             enabled: true
///             keyType: Account
///           file:
///             enabled: true
///             keyType: Account
///       kind: BlockBlobStorage
///       location: eastus
///       minimumTlsVersion: TLS1_2
///       resourceGroupName: res9101
///       sku:
///         name: Premium_LRS
///       tags:
///         key1: value1
///         key2: value2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountCreateWithImmutabilityPolicy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageAccount = new AzureNative.Storage.StorageAccount("storageAccount", new()
///     {
///         AccountName = "sto4445",
///         ExtendedLocation = new AzureNative.Storage.Inputs.ExtendedLocationArgs
///         {
///             Name = "losangeles001",
///             Type = AzureNative.Storage.ExtendedLocationTypes.EdgeZone,
///         },
///         ImmutableStorageWithVersioning = new AzureNative.Storage.Inputs.ImmutableStorageAccountArgs
///         {
///             Enabled = true,
///             ImmutabilityPolicy = new AzureNative.Storage.Inputs.AccountImmutabilityPolicyPropertiesArgs
///             {
///                 AllowProtectedAppendWrites = true,
///                 ImmutabilityPeriodSinceCreationInDays = 15,
///                 State = AzureNative.Storage.AccountImmutabilityPolicyState.Unlocked,
///             },
///         },
///         Kind = AzureNative.Storage.Kind.Storage,
///         Location = "eastus",
///         ResourceGroupName = "res9101",
///         Sku = new AzureNative.Storage.Inputs.SkuArgs
///         {
///             Name = AzureNative.Storage.SkuName.Standard_GRS,
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewStorageAccount(ctx, "storageAccount", &storage.StorageAccountArgs{
/// 			AccountName: pulumi.String("sto4445"),
/// 			ExtendedLocation: &storage.ExtendedLocationArgs{
/// 				Name: pulumi.String("losangeles001"),
/// 				Type: pulumi.String(storage.ExtendedLocationTypesEdgeZone),
/// 			},
/// 			ImmutableStorageWithVersioning: &storage.ImmutableStorageAccountArgs{
/// 				Enabled: pulumi.Bool(true),
/// 				ImmutabilityPolicy: &storage.AccountImmutabilityPolicyPropertiesArgs{
/// 					AllowProtectedAppendWrites:            pulumi.Bool(true),
/// 					ImmutabilityPeriodSinceCreationInDays: pulumi.Int(15),
/// 					State:                                 pulumi.String(storage.AccountImmutabilityPolicyStateUnlocked),
/// 				},
/// 			},
/// 			Kind:              pulumi.String(storage.KindStorage),
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("res9101"),
/// 			Sku: &storage.SkuArgs{
/// 				Name: pulumi.String(storage.SkuName_Standard_GRS),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storage_storageaccount" "storageAccount" {
///   account_name = "sto4445"
///   extended_location = {
///     name = "losangeles001"
///     type = "EdgeZone"
///   }
///   immutable_storage_with_versioning = {
///     enabled = true
///     immutability_policy = {
///       allow_protected_append_writes              = true
///       immutability_period_since_creation_in_days = 15
///       state                                      = "Unlocked"
///     }
///   }
///   kind                = "Storage"
///   location            = "eastus"
///   resource_group_name = "res9101"
///   sku = {
///     name = "Standard_GRS"
///   }
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
/// import com.pulumi.azurenative.storage.StorageAccount;
/// import com.pulumi.azurenative.storage.StorageAccountArgs;
/// import com.pulumi.azurenative.storage.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.storage.inputs.ImmutableStorageAccountArgs;
/// import com.pulumi.azurenative.storage.inputs.AccountImmutabilityPolicyPropertiesArgs;
/// import com.pulumi.azurenative.storage.inputs.SkuArgs;
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
///         var storageAccount = new StorageAccount("storageAccount", StorageAccountArgs.builder()
///             .accountName("sto4445")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("losangeles001")
///                 .type("EdgeZone")
///                 .build())
///             .immutableStorageWithVersioning(ImmutableStorageAccountArgs.builder()
///                 .enabled(true)
///                 .immutabilityPolicy(AccountImmutabilityPolicyPropertiesArgs.builder()
///                     .allowProtectedAppendWrites(true)
///                     .immutabilityPeriodSinceCreationInDays(15)
///                     .state("Unlocked")
///                     .build())
///                 .build())
///             .kind("Storage")
///             .location("eastus")
///             .resourceGroupName("res9101")
///             .sku(SkuArgs.builder()
///                 .name("Standard_GRS")
///                 .build())
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
/// const storageAccount = new azure_native.storage.StorageAccount("storageAccount", {
///     accountName: "sto4445",
///     extendedLocation: {
///         name: "losangeles001",
///         type: azure_native.storage.ExtendedLocationTypes.EdgeZone,
///     },
///     immutableStorageWithVersioning: {
///         enabled: true,
///         immutabilityPolicy: {
///             allowProtectedAppendWrites: true,
///             immutabilityPeriodSinceCreationInDays: 15,
///             state: azure_native.storage.AccountImmutabilityPolicyState.Unlocked,
///         },
///     },
///     kind: azure_native.storage.Kind.Storage,
///     location: "eastus",
///     resourceGroupName: "res9101",
///     sku: {
///         name: azure_native.storage.SkuName.Standard_GRS,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_account = azure_native.storage.StorageAccount("storageAccount",
///     account_name="sto4445",
///     extended_location={
///         "name": "losangeles001",
///         "type": azure_native.storage.ExtendedLocationTypes.EDGE_ZONE,
///     },
///     immutable_storage_with_versioning={
///         "enabled": True,
///         "immutability_policy": {
///             "allow_protected_append_writes": True,
///             "immutability_period_since_creation_in_days": 15,
///             "state": azure_native.storage.AccountImmutabilityPolicyState.UNLOCKED,
///         },
///     },
///     kind=azure_native.storage.Kind.STORAGE,
///     location="eastus",
///     resource_group_name="res9101",
///     sku={
///         "name": azure_native.storage.SkuName.STANDARD_GRS,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   storageAccount:
///     type: azure-native:storage:StorageAccount
///     properties:
///       accountName: sto4445
///       extendedLocation:
///         name: losangeles001
///         type: EdgeZone
///       immutableStorageWithVersioning:
///         enabled: true
///         immutabilityPolicy:
///           allowProtectedAppendWrites: true
///           immutabilityPeriodSinceCreationInDays: 15
///           state: Unlocked
///       kind: Storage
///       location: eastus
///       resourceGroupName: res9101
///       sku:
///         name: Standard_GRS
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
/// $ pulumi import azure-native:storage:StorageAccount sto4445 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}
/// ```
class StorageAccount extends pulumi.CustomResource {
  /// Required for storage accounts where kind = BlobStorage. The access tier is used for billing. The 'Premium' access tier is the default value for premium block blobs storage account type and it cannot be changed for the premium block blobs storage account type.
  late final pulumi.Output<String> accessTier;
  /// If customer initiated account migration is in progress, the value will be true else it will be null.
  late final pulumi.Output<bool> accountMigrationInProgress;
  /// Allow or disallow public access to all blobs or containers in the storage account. The default interpretation is false for this property.
  late final pulumi.Output<bool?> allowBlobPublicAccess;
  /// Allow or disallow cross AAD tenant object replication. Set this property to true for new or existing accounts only if object replication policies will involve storage accounts in different AAD tenants. The default interpretation is false for new accounts to follow best security practices by default.
  late final pulumi.Output<bool?> allowCrossTenantReplication;
  /// Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). The default value is null, which is equivalent to true.
  late final pulumi.Output<bool?> allowSharedKeyAccess;
  /// Restrict copy to and from Storage Accounts within an AAD tenant or with Private Links to the same VNet.
  late final pulumi.Output<String?> allowedCopyScope;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Provides the identity based authentication settings for Azure Files.
  late final pulumi.Output<AzureFilesIdentityBasedAuthenticationResponse?> azureFilesIdentityBasedAuthentication;
  /// Blob restore status
  late final pulumi.Output<BlobRestoreStatusResponse> blobRestoreStatus;
  /// Gets the creation date and time of the storage account in UTC.
  late final pulumi.Output<String> creationTime;
  /// Gets the custom domain the user assigned to this storage account.
  late final pulumi.Output<CustomDomainResponse> customDomain;
  /// A boolean flag which indicates whether the default authentication is OAuth or not. The default interpretation is false for this property.
  late final pulumi.Output<bool?> defaultToOAuthAuthentication;
  /// Allows you to specify the type of endpoint. Set this to AzureDNSZone to create a large number of accounts in a single subscription, which creates accounts in an Azure DNS Zone and the endpoint URL will have an alphanumeric DNS Zone identifier.
  late final pulumi.Output<String?> dnsEndpointType;
  /// Enables extended group support with local users feature, if set to true
  late final pulumi.Output<bool?> enableExtendedGroups;
  /// Allows https traffic only to storage service if sets to true.
  late final pulumi.Output<bool?> enableHttpsTrafficOnly;
  /// NFS 3.0 protocol support enabled if set to true.
  late final pulumi.Output<bool?> enableNfsV3;
  /// Encryption settings to be used for server-side encryption for the storage account.
  late final pulumi.Output<EncryptionResponse> encryption;
  /// The extendedLocation of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// If the failover is in progress, the value will be true, otherwise, it will be null.
  late final pulumi.Output<bool> failoverInProgress;
  /// Geo Replication Stats
  late final pulumi.Output<GeoReplicationStatsResponse> geoReplicationStats;
  /// The identity of the resource.
  late final pulumi.Output<IdentityResponse?> identity;
  /// The property is immutable and can only be set to true at the account creation time. When set to true, it enables object level immutability for all the containers in the account by default.
  late final pulumi.Output<ImmutableStorageAccountResponse?> immutableStorageWithVersioning;
  /// Account HierarchicalNamespace enabled if sets to true.
  late final pulumi.Output<bool?> isHnsEnabled;
  /// Enables local users feature, if set to true
  late final pulumi.Output<bool?> isLocalUserEnabled;
  /// Enables Secure File Transfer Protocol, if set to true
  late final pulumi.Output<bool?> isSftpEnabled;
  /// This property will be set to true or false on an event of ongoing migration. Default value is null.
  late final pulumi.Output<bool> isSkuConversionBlocked;
  /// Storage account keys creation time.
  late final pulumi.Output<KeyCreationTimeResponse> keyCreationTime;
  /// KeyPolicy assigned to the storage account.
  late final pulumi.Output<KeyPolicyResponse> keyPolicy;
  /// Gets the Kind.
  late final pulumi.Output<String> kind;
  /// Allow large file shares if sets to Enabled. It cannot be disabled once it is enabled.
  late final pulumi.Output<String?> largeFileSharesState;
  /// Gets the timestamp of the most recent instance of a failover to the secondary location. Only the most recent timestamp is retained. This element is not returned if there has never been a failover instance. Only available if the accountType is Standard_GRS or Standard_RAGRS.
  late final pulumi.Output<String> lastGeoFailoverTime;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Set the minimum TLS version to be permitted on requests to storage. The default interpretation is TLS 1.0 for this property. Minimum TLS version 1.3 version is not supported.
  late final pulumi.Output<String?> minimumTlsVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Network rule set
  late final pulumi.Output<NetworkRuleSetResponse> networkRuleSet;
  /// Gets the URLs that are used to perform a retrieval of a public blob, queue, or table object. Note that Standard_ZRS and Premium_LRS accounts only return the blob endpoint.
  late final pulumi.Output<EndpointsResponse> primaryEndpoints;
  /// Gets the location of the primary data center for the storage account.
  late final pulumi.Output<String> primaryLocation;
  /// List of private endpoint connection associated with the specified storage account
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// Gets the status of the storage account at the time the operation was called.
  late final pulumi.Output<String> provisioningState;
  /// Allow, disallow, or let Network Security Perimeter configuration to evaluate public network access to Storage Account.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Maintains information about the network routing choice opted by the user for data transfer
  late final pulumi.Output<RoutingPreferenceResponse?> routingPreference;
  /// SasPolicy assigned to the storage account.
  late final pulumi.Output<SasPolicyResponse> sasPolicy;
  /// Gets the URLs that are used to perform a retrieval of a public blob, queue, or table object from the secondary location of the storage account. Only available if the SKU name is Standard_RAGRS.
  late final pulumi.Output<EndpointsResponse> secondaryEndpoints;
  /// Gets the location of the geo-replicated secondary for the storage account. Only available if the accountType is Standard_GRS or Standard_RAGRS.
  late final pulumi.Output<String> secondaryLocation;
  /// Gets the SKU.
  late final pulumi.Output<SkuResponse> sku;
  /// Gets the status indicating whether the primary location of the storage account is available or unavailable.
  late final pulumi.Output<String> statusOfPrimary;
  /// Gets the status indicating whether the secondary location of the storage account is available or unavailable. Only available if the SKU name is Standard_GRS or Standard_RAGRS.
  late final pulumi.Output<String> statusOfSecondary;
  /// This property is readOnly and is set by server during asynchronous storage account sku conversion operations.
  late final pulumi.Output<StorageAccountSkuConversionStatusResponse?> storageAccountSkuConversionStatus;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [StorageAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageAccount]. {@macro pulumi_storage_storage_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageAccount(
    String name, {
    StorageAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storage:StorageAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessTier = registerOutput<String>('accessTier');
    accountMigrationInProgress = registerOutput<bool>('accountMigrationInProgress');
    allowBlobPublicAccess = registerOutput<bool?>('allowBlobPublicAccess');
    allowCrossTenantReplication = registerOutput<bool?>('allowCrossTenantReplication');
    allowSharedKeyAccess = registerOutput<bool?>('allowSharedKeyAccess');
    allowedCopyScope = registerOutput<String?>('allowedCopyScope');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureFilesIdentityBasedAuthentication = registerOutput<AzureFilesIdentityBasedAuthenticationResponse?>('azureFilesIdentityBasedAuthentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureFilesIdentityBasedAuthenticationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    blobRestoreStatus = registerOutput<BlobRestoreStatusResponse>('blobRestoreStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BlobRestoreStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTime = registerOutput<String>('creationTime');
    customDomain = registerOutput<CustomDomainResponse>('customDomain', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomDomainResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultToOAuthAuthentication = registerOutput<bool?>('defaultToOAuthAuthentication');
    dnsEndpointType = registerOutput<String?>('dnsEndpointType');
    enableExtendedGroups = registerOutput<bool?>('enableExtendedGroups');
    enableHttpsTrafficOnly = registerOutput<bool?>('enableHttpsTrafficOnly');
    enableNfsV3 = registerOutput<bool?>('enableNfsV3');
    encryption = registerOutput<EncryptionResponse>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    failoverInProgress = registerOutput<bool>('failoverInProgress');
    geoReplicationStats = registerOutput<GeoReplicationStatsResponse>('geoReplicationStats', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GeoReplicationStatsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<IdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    immutableStorageWithVersioning = registerOutput<ImmutableStorageAccountResponse?>('immutableStorageWithVersioning', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImmutableStorageAccountResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isHnsEnabled = registerOutput<bool?>('isHnsEnabled');
    isLocalUserEnabled = registerOutput<bool?>('isLocalUserEnabled');
    isSftpEnabled = registerOutput<bool?>('isSftpEnabled');
    isSkuConversionBlocked = registerOutput<bool>('isSkuConversionBlocked');
    keyCreationTime = registerOutput<KeyCreationTimeResponse>('keyCreationTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KeyCreationTimeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyPolicy = registerOutput<KeyPolicyResponse>('keyPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KeyPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    largeFileSharesState = registerOutput<String?>('largeFileSharesState');
    lastGeoFailoverTime = registerOutput<String>('lastGeoFailoverTime');
    location = registerOutput<String>('location');
    minimumTlsVersion = registerOutput<String?>('minimumTlsVersion');
    this.name = registerOutput<String>('name');
    networkRuleSet = registerOutput<NetworkRuleSetResponse>('networkRuleSet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkRuleSetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    primaryEndpoints = registerOutput<EndpointsResponse>('primaryEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    primaryLocation = registerOutput<String>('primaryLocation');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    routingPreference = registerOutput<RoutingPreferenceResponse?>('routingPreference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoutingPreferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sasPolicy = registerOutput<SasPolicyResponse>('sasPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SasPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secondaryEndpoints = registerOutput<EndpointsResponse>('secondaryEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secondaryLocation = registerOutput<String>('secondaryLocation');
    sku = registerOutput<SkuResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    statusOfPrimary = registerOutput<String>('statusOfPrimary');
    statusOfSecondary = registerOutput<String>('statusOfSecondary');
    storageAccountSkuConversionStatus = registerOutput<StorageAccountSkuConversionStatusResponse?>('storageAccountSkuConversionStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageAccountSkuConversionStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
