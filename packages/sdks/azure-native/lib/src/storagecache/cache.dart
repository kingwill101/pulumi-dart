import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_args.dart';
import 'cache_directory_settings_response.dart';
import 'cache_encryption_settings_response.dart';
import 'cache_health_response.dart';
import 'cache_identity_response.dart';
import 'cache_network_settings_response.dart';
import 'cache_response_sku.dart';
import 'cache_security_settings_response.dart';
import 'cache_upgrade_settings_response.dart';
import 'cache_upgrade_status_response.dart';
import 'system_data_response.dart';

/// A cache instance. Follows Azure Resource Manager standards: https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/resource-api-reference.md
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-11-01-preview, 2024-07-01, 2025-07-01, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagecache [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Caches_CreateOrUpdate_ldap_only
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cache = new AzureNative.StorageCache.Cache("cache", new()
///     {
///         CacheName = "sc1",
///         CacheSizeGB = 3072,
///         DirectoryServicesSettings = new AzureNative.StorageCache.Inputs.CacheDirectorySettingsArgs
///         {
///             UsernameDownload = new AzureNative.StorageCache.Inputs.CacheUsernameDownloadSettingsArgs
///             {
///                 Credentials = new AzureNative.StorageCache.Inputs.CacheUsernameDownloadSettingsCredentialsArgs
///                 {
///                     BindDn = "cn=ldapadmin,dc=contosoad,dc=contoso,dc=local",
///                     BindPassword = "<bindPassword>",
///                 },
///                 ExtendedGroups = true,
///                 LdapBaseDN = "dc=contosoad,dc=contoso,dc=local",
///                 LdapServer = "192.0.2.12",
///                 UsernameSource = AzureNative.StorageCache.UsernameSource.LDAP,
///             },
///         },
///         EncryptionSettings = new AzureNative.StorageCache.Inputs.CacheEncryptionSettingsArgs
///         {
///             KeyEncryptionKey = new AzureNative.StorageCache.Inputs.KeyVaultKeyReferenceArgs
///             {
///                 KeyUrl = "https://keyvault-cmk.vault.azure.net/keys/key2048/test",
///                 SourceVault = new AzureNative.StorageCache.Inputs.KeyVaultKeyReferenceSourceVaultArgs
///                 {
///                     Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/scgroup/providers/Microsoft.KeyVault/vaults/keyvault-cmk",
///                 },
///             },
///         },
///         Location = "westus",
///         ResourceGroupName = "scgroup",
///         SecuritySettings = new AzureNative.StorageCache.Inputs.CacheSecuritySettingsArgs
///         {
///             AccessPolicies = new[]
///             {
///                 new AzureNative.StorageCache.Inputs.NfsAccessPolicyArgs
///                 {
///                     AccessRules = new[]
///                     {
///                         new AzureNative.StorageCache.Inputs.NfsAccessRuleArgs
///                         {
///                             Access = AzureNative.StorageCache.NfsAccessRuleAccess.Rw,
///                             RootSquash = false,
///                             Scope = AzureNative.StorageCache.NfsAccessRuleScope.@Default,
///                             SubmountAccess = true,
///                             Suid = false,
///                         },
///                     },
///                     Name = "default",
///                 },
///             },
///         },
///         Sku = new AzureNative.StorageCache.Inputs.CacheSkuArgs
///         {
///             Name = "Standard_2G",
///         },
///         Subnet = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/scgroup/providers/Microsoft.Network/virtualNetworks/scvnet/subnets/sub1",
///         Tags =
///         {
///             { "Dept", "Contoso" },
///         },
///         UpgradeSettings = new AzureNative.StorageCache.Inputs.CacheUpgradeSettingsArgs
///         {
///             ScheduledTime = "2022-04-26T18:25:43.511Z",
///             UpgradeScheduleEnabled = true,
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
/// 	storagecache "github.com/pulumi/pulumi-azure-native-sdk/storagecache/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagecache.NewCache(ctx, "cache", &storagecache.CacheArgs{
/// 			CacheName:   pulumi.String("sc1"),
/// 			CacheSizeGB: pulumi.Int(3072),
/// 			DirectoryServicesSettings: &storagecache.CacheDirectorySettingsArgs{
/// 				UsernameDownload: &storagecache.CacheUsernameDownloadSettingsArgs{
/// 					Credentials: &storagecache.CacheUsernameDownloadSettingsCredentialsArgs{
/// 						BindDn:       pulumi.String("cn=ldapadmin,dc=contosoad,dc=contoso,dc=local"),
/// 						BindPassword: pulumi.String("<bindPassword>"),
/// 					},
/// 					ExtendedGroups: pulumi.Bool(true),
/// 					LdapBaseDN:     pulumi.String("dc=contosoad,dc=contoso,dc=local"),
/// 					LdapServer:     pulumi.String("192.0.2.12"),
/// 					UsernameSource: pulumi.String(storagecache.UsernameSourceLDAP),
/// 				},
/// 			},
/// 			EncryptionSettings: &storagecache.CacheEncryptionSettingsArgs{
/// 				KeyEncryptionKey: &storagecache.KeyVaultKeyReferenceArgs{
/// 					KeyUrl: pulumi.String("https://keyvault-cmk.vault.azure.net/keys/key2048/test"),
/// 					SourceVault: &storagecache.KeyVaultKeyReferenceSourceVaultArgs{
/// 						Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/scgroup/providers/Microsoft.KeyVault/vaults/keyvault-cmk"),
/// 					},
/// 				},
/// 			},
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("scgroup"),
/// 			SecuritySettings: &storagecache.CacheSecuritySettingsArgs{
/// 				AccessPolicies: storagecache.NfsAccessPolicyArray{
/// 					&storagecache.NfsAccessPolicyArgs{
/// 						AccessRules: storagecache.NfsAccessRuleArray{
/// 							&storagecache.NfsAccessRuleArgs{
/// 								Access:         pulumi.String(storagecache.NfsAccessRuleAccessRw),
/// 								RootSquash:     pulumi.Bool(false),
/// 								Scope:          pulumi.String(storagecache.NfsAccessRuleScopeDefault),
/// 								SubmountAccess: pulumi.Bool(true),
/// 								Suid:           pulumi.Bool(false),
/// 							},
/// 						},
/// 						Name: pulumi.String("default"),
/// 					},
/// 				},
/// 			},
/// 			Sku: &storagecache.CacheSkuArgs{
/// 				Name: pulumi.String("Standard_2G"),
/// 			},
/// 			Subnet: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/scgroup/providers/Microsoft.Network/virtualNetworks/scvnet/subnets/sub1"),
/// 			Tags: pulumi.StringMap{
/// 				"Dept": pulumi.String("Contoso"),
/// 			},
/// 			UpgradeSettings: &storagecache.CacheUpgradeSettingsArgs{
/// 				ScheduledTime:          pulumi.String("2022-04-26T18:25:43.511Z"),
/// 				UpgradeScheduleEnabled: pulumi.Bool(true),
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
/// resource "azure-native_storagecache_cache" "cache" {
///   cache_name    = "sc1"
///   cache_size_gb = 3072
///   directory_services_settings = {
///     username_download = {
///       credentials = {
///         bind_dn       = "cn=ldapadmin,dc=contosoad,dc=contoso,dc=local"
///         bind_password = "<bindPassword>"
///       }
///       extended_groups = true
///       ldap_base_dn    = "dc=contosoad,dc=contoso,dc=local"
///       ldap_server     = "192.0.2.12"
///       username_source = "LDAP"
///     }
///   }
///   encryption_settings = {
///     key_encryption_key = {
///       key_url = "https://keyvault-cmk.vault.azure.net/keys/key2048/test"
///       source_vault = {
///         id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/scgroup/providers/Microsoft.KeyVault/vaults/keyvault-cmk"
///       }
///     }
///   }
///   location            = "westus"
///   resource_group_name = "scgroup"
///   security_settings = {
///     access_policies = [{
///       "accessRules" = [{
///         "access"         = "rw"
///         "rootSquash"     = false
///         "scope"          = "default"
///         "submountAccess" = true
///         "suid"           = false
///       }]
///       "name" = "default"
///     }]
///   }
///   sku = {
///     name = "Standard_2G"
///   }
///   subnet = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/scgroup/providers/Microsoft.Network/virtualNetworks/scvnet/subnets/sub1"
///   tags = {
///     "Dept" = "Contoso"
///   }
///   upgrade_settings = {
///     scheduled_time           = "2022-04-26T18:25:43.511Z"
///     upgrade_schedule_enabled = true
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
/// import com.pulumi.azurenative.storagecache.Cache;
/// import com.pulumi.azurenative.storagecache.CacheArgs;
/// import com.pulumi.azurenative.storagecache.inputs.CacheDirectorySettingsArgs;
/// import com.pulumi.azurenative.storagecache.inputs.CacheUsernameDownloadSettingsArgs;
/// import com.pulumi.azurenative.storagecache.inputs.CacheUsernameDownloadSettingsCredentialsArgs;
/// import com.pulumi.azurenative.storagecache.inputs.CacheEncryptionSettingsArgs;
/// import com.pulumi.azurenative.storagecache.inputs.KeyVaultKeyReferenceArgs;
/// import com.pulumi.azurenative.storagecache.inputs.KeyVaultKeyReferenceSourceVaultArgs;
/// import com.pulumi.azurenative.storagecache.inputs.CacheSecuritySettingsArgs;
/// import com.pulumi.azurenative.storagecache.inputs.CacheSkuArgs;
/// import com.pulumi.azurenative.storagecache.inputs.CacheUpgradeSettingsArgs;
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
///         var cache = new Cache("cache", CacheArgs.builder()
///             .cacheName("sc1")
///             .cacheSizeGB(3072)
///             .directoryServicesSettings(CacheDirectorySettingsArgs.builder()
///                 .usernameDownload(CacheUsernameDownloadSettingsArgs.builder()
///                     .credentials(CacheUsernameDownloadSettingsCredentialsArgs.builder()
///                         .bindDn("cn=ldapadmin,dc=contosoad,dc=contoso,dc=local")
///                         .bindPassword("<bindPassword>")
///                         .build())
///                     .extendedGroups(true)
///                     .ldapBaseDN("dc=contosoad,dc=contoso,dc=local")
///                     .ldapServer("192.0.2.12")
///                     .usernameSource("LDAP")
///                     .build())
///                 .build())
///             .encryptionSettings(CacheEncryptionSettingsArgs.builder()
///                 .keyEncryptionKey(KeyVaultKeyReferenceArgs.builder()
///                     .keyUrl("https://keyvault-cmk.vault.azure.net/keys/key2048/test")
///                     .sourceVault(KeyVaultKeyReferenceSourceVaultArgs.builder()
///                         .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/scgroup/providers/Microsoft.KeyVault/vaults/keyvault-cmk")
///                         .build())
///                     .build())
///                 .build())
///             .location("westus")
///             .resourceGroupName("scgroup")
///             .securitySettings(CacheSecuritySettingsArgs.builder()
///                 .accessPolicies(NfsAccessPolicyArgs.builder()
///                     .accessRules(NfsAccessRuleArgs.builder()
///                         .access("rw")
///                         .rootSquash(false)
///                         .scope("default")
///                         .submountAccess(true)
///                         .suid(false)
///                         .build())
///                     .name("default")
///                     .build())
///                 .build())
///             .sku(CacheSkuArgs.builder()
///                 .name("Standard_2G")
///                 .build())
///             .subnet("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/scgroup/providers/Microsoft.Network/virtualNetworks/scvnet/subnets/sub1")
///             .tags(Map.of("Dept", "Contoso"))
///             .upgradeSettings(CacheUpgradeSettingsArgs.builder()
///                 .scheduledTime("2022-04-26T18:25:43.511Z")
///                 .upgradeScheduleEnabled(true)
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
/// const cache = new azure_native.storagecache.Cache("cache", {
///     cacheName: "sc1",
///     cacheSizeGB: 3072,
///     directoryServicesSettings: {
///         usernameDownload: {
///             credentials: {
///                 bindDn: "cn=ldapadmin,dc=contosoad,dc=contoso,dc=local",
///                 bindPassword: "<bindPassword>",
///             },
///             extendedGroups: true,
///             ldapBaseDN: "dc=contosoad,dc=contoso,dc=local",
///             ldapServer: "192.0.2.12",
///             usernameSource: azure_native.storagecache.UsernameSource.LDAP,
///         },
///     },
///     encryptionSettings: {
///         keyEncryptionKey: {
///             keyUrl: "https://keyvault-cmk.vault.azure.net/keys/key2048/test",
///             sourceVault: {
///                 id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/scgroup/providers/Microsoft.KeyVault/vaults/keyvault-cmk",
///             },
///         },
///     },
///     location: "westus",
///     resourceGroupName: "scgroup",
///     securitySettings: {
///         accessPolicies: [{
///             accessRules: [{
///                 access: azure_native.storagecache.NfsAccessRuleAccess.Rw,
///                 rootSquash: false,
///                 scope: azure_native.storagecache.NfsAccessRuleScope.Default,
///                 submountAccess: true,
///                 suid: false,
///             }],
///             name: "default",
///         }],
///     },
///     sku: {
///         name: "Standard_2G",
///     },
///     subnet: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/scgroup/providers/Microsoft.Network/virtualNetworks/scvnet/subnets/sub1",
///     tags: {
///         Dept: "Contoso",
///     },
///     upgradeSettings: {
///         scheduledTime: "2022-04-26T18:25:43.511Z",
///         upgradeScheduleEnabled: true,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cache = azure_native.storagecache.Cache("cache",
///     cache_name="sc1",
///     cache_size_gb=3072,
///     directory_services_settings={
///         "username_download": {
///             "credentials": {
///                 "bind_dn": "cn=ldapadmin,dc=contosoad,dc=contoso,dc=local",
///                 "bind_password": "<bindPassword>",
///             },
///             "extended_groups": True,
///             "ldap_base_dn": "dc=contosoad,dc=contoso,dc=local",
///             "ldap_server": "192.0.2.12",
///             "username_source": azure_native.storagecache.UsernameSource.LDAP,
///         },
///     },
///     encryption_settings={
///         "key_encryption_key": {
///             "key_url": "https://keyvault-cmk.vault.azure.net/keys/key2048/test",
///             "source_vault": {
///                 "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/scgroup/providers/Microsoft.KeyVault/vaults/keyvault-cmk",
///             },
///         },
///     },
///     location="westus",
///     resource_group_name="scgroup",
///     security_settings={
///         "access_policies": [{
///             "access_rules": [{
///                 "access": azure_native.storagecache.NfsAccessRuleAccess.RW,
///                 "root_squash": False,
///                 "scope": azure_native.storagecache.NfsAccessRuleScope.DEFAULT,
///                 "submount_access": True,
///                 "suid": False,
///             }],
///             "name": "default",
///         }],
///     },
///     sku={
///         "name": "Standard_2G",
///     },
///     subnet="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/scgroup/providers/Microsoft.Network/virtualNetworks/scvnet/subnets/sub1",
///     tags={
///         "Dept": "Contoso",
///     },
///     upgrade_settings={
///         "scheduled_time": "2022-04-26T18:25:43.511Z",
///         "upgrade_schedule_enabled": True,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   cache:
///     type: azure-native:storagecache:Cache
///     properties:
///       cacheName: sc1
///       cacheSizeGB: 3072
///       directoryServicesSettings:
///         usernameDownload:
///           credentials:
///             bindDn: cn=ldapadmin,dc=contosoad,dc=contoso,dc=local
///             bindPassword: <bindPassword>
///           extendedGroups: true
///           ldapBaseDN: dc=contosoad,dc=contoso,dc=local
///           ldapServer: 192.0.2.12
///           usernameSource: LDAP
///       encryptionSettings:
///         keyEncryptionKey:
///           keyUrl: https://keyvault-cmk.vault.azure.net/keys/key2048/test
///           sourceVault:
///             id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/scgroup/providers/Microsoft.KeyVault/vaults/keyvault-cmk
///       location: westus
///       resourceGroupName: scgroup
///       securitySettings:
///         accessPolicies:
///           - accessRules:
///               - access: rw
///                 rootSquash: false
///                 scope: default
///                 submountAccess: true
///                 suid: false
///             name: default
///       sku:
///         name: Standard_2G
///       subnet: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/scgroup/providers/Microsoft.Network/virtualNetworks/scvnet/subnets/sub1
///       tags:
///         Dept: Contoso
///       upgradeSettings:
///         scheduledTime: 2022-04-26T18:25:43.511Z
///         upgradeScheduleEnabled: true
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
/// $ pulumi import azure-native:storagecache:Cache sc1 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.StorageCache/caches/{cacheName}
/// ```
class Cache extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The size of this Cache, in GB.
  late final pulumi.Output<int?> cacheSizeGB;
  /// Specifies Directory Services settings of the cache.
  late final pulumi.Output<CacheDirectorySettingsResponse?> directoryServicesSettings;
  /// Specifies encryption settings of the cache.
  late final pulumi.Output<CacheEncryptionSettingsResponse?> encryptionSettings;
  /// Health of the cache.
  late final pulumi.Output<CacheHealthResponse> health;
  /// The identity of the cache, if configured.
  late final pulumi.Output<CacheIdentityResponse?> identity;
  /// Region name string.
  late final pulumi.Output<String?> location;
  /// Array of IPv4 addresses that can be used by clients mounting this cache.
  late final pulumi.Output<List<String>> mountAddresses;
  /// Name of cache.
  late final pulumi.Output<String> name;
  /// Specifies network settings of the cache.
  late final pulumi.Output<CacheNetworkSettingsResponse?> networkSettings;
  /// Specifies the priming jobs defined in the cache.
  late final pulumi.Output<List<Map<String, dynamic>>> primingJobs;
  /// ARM provisioning state, see https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/Addendum.md#provisioningstate-property
  late final pulumi.Output<String> provisioningState;
  /// Specifies security settings of the cache.
  late final pulumi.Output<CacheSecuritySettingsResponse?> securitySettings;
  /// SKU for the cache.
  late final pulumi.Output<CacheResponseSku?> sku;
  /// Specifies the space allocation percentage for each storage target in the cache.
  late final pulumi.Output<List<Map<String, dynamic>>> spaceAllocation;
  /// Subnet used for the cache.
  late final pulumi.Output<String?> subnet;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Type of the cache; Microsoft.StorageCache/Cache
  late final pulumi.Output<String> type;
  /// Upgrade settings of the cache.
  late final pulumi.Output<CacheUpgradeSettingsResponse?> upgradeSettings;
  /// Upgrade status of the cache.
  late final pulumi.Output<CacheUpgradeStatusResponse> upgradeStatus;
  /// Availability zones for resources. This field should only contain a single element in the array.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [Cache].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cache]. {@macro pulumi_storagecache_cache_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cache(
    String name, {
    CacheArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storagecache:Cache',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cacheSizeGB = registerOutput<int?>('cacheSizeGB');
    directoryServicesSettings = registerOutput<CacheDirectorySettingsResponse?>('directoryServicesSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CacheDirectorySettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    encryptionSettings = registerOutput<CacheEncryptionSettingsResponse?>('encryptionSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CacheEncryptionSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    health = registerOutput<CacheHealthResponse>('health', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CacheHealthResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<CacheIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CacheIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    mountAddresses = registerOutput<List<String>>('mountAddresses');
    this.name = registerOutput<String>('name');
    networkSettings = registerOutput<CacheNetworkSettingsResponse?>('networkSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CacheNetworkSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    primingJobs = registerOutput<List<Map<String, dynamic>>>('primingJobs');
    provisioningState = registerOutput<String>('provisioningState');
    securitySettings = registerOutput<CacheSecuritySettingsResponse?>('securitySettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CacheSecuritySettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<CacheResponseSku?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CacheResponseSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spaceAllocation = registerOutput<List<Map<String, dynamic>>>('spaceAllocation');
    subnet = registerOutput<String?>('subnet');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    upgradeSettings = registerOutput<CacheUpgradeSettingsResponse?>('upgradeSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CacheUpgradeSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    upgradeStatus = registerOutput<CacheUpgradeStatusResponse>('upgradeStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CacheUpgradeStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zones = registerOutput<List<String>?>('zones');
  }
}
