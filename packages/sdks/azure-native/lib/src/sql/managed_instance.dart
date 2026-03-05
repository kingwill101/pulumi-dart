import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_args.dart';
import 'managed_instance_external_administrator_response.dart';
import 'resource_identity_response.dart';
import 'service_principal_response.dart';
import 'sku_response.dart';

/// An Azure SQL managed instance.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2015-05-01-preview, 2018-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create managed instance with all properties
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedInstance = new AzureNative.Sql.ManagedInstance("managedInstance", new()
///     {
///         AdministratorLogin = "dummylogin",
///         AdministratorLoginPassword = "PLACEHOLDER",
///         Administrators = new AzureNative.Sql.Inputs.ManagedInstanceExternalAdministratorArgs
///         {
///             AzureADOnlyAuthentication = true,
///             Login = "bob@contoso.com",
///             PrincipalType = AzureNative.Sql.PrincipalType.User,
///             Sid = "00000011-1111-2222-2222-123456789111",
///             TenantId = "00000011-1111-2222-2222-123456789111",
///         },
///         AuthenticationMetadata = AzureNative.Sql.AuthMetadataLookupModes.AzureAD,
///         Collation = "SQL_Latin1_General_CP1_CI_AS",
///         DatabaseFormat = AzureNative.Sql.ManagedInstanceDatabaseFormat.AlwaysUpToDate,
///         DnsZonePartner = "/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Sql/managedInstances/testinstance",
///         HybridSecondaryUsage = AzureNative.Sql.HybridSecondaryUsage.Passive,
///         InstancePoolId = "/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Sql/instancePools/pool1",
///         LicenseType = AzureNative.Sql.ManagedInstanceLicenseType.LicenseIncluded,
///         Location = "Japan East",
///         MaintenanceConfigurationId = "/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_JapanEast_MI_1",
///         ManagedInstanceName = "testinstance",
///         MinimalTlsVersion = "1.2",
///         ProxyOverride = AzureNative.Sql.ManagedInstanceProxyOverride.Redirect,
///         PublicDataEndpointEnabled = false,
///         RequestedBackupStorageRedundancy = AzureNative.Sql.BackupStorageRedundancy.Geo,
///         ResourceGroupName = "testrg",
///         ServicePrincipal = new AzureNative.Sql.Inputs.ServicePrincipalArgs
///         {
///             Type = AzureNative.Sql.ServicePrincipalType.SystemAssigned,
///         },
///         Sku = new AzureNative.Sql.Inputs.SkuArgs
///         {
///             Name = "GP_Gen5",
///             Tier = "GeneralPurpose",
///         },
///         StorageSizeInGB = 1024,
///         SubnetId = "/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1",
///         Tags =
///         {
///             { "tagKey1", "TagValue1" },
///         },
///         TimezoneId = "UTC",
///         VCores = 8,
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewManagedInstance(ctx, "managedInstance", &sql.ManagedInstanceArgs{
/// 			AdministratorLogin:         pulumi.String("dummylogin"),
/// 			AdministratorLoginPassword: pulumi.String("PLACEHOLDER"),
/// 			Administrators: &sql.ManagedInstanceExternalAdministratorArgs{
/// 				AzureADOnlyAuthentication: pulumi.Bool(true),
/// 				Login:                     pulumi.String("bob@contoso.com"),
/// 				PrincipalType:             pulumi.String(sql.PrincipalTypeUser),
/// 				Sid:                       pulumi.String("00000011-1111-2222-2222-123456789111"),
/// 				TenantId:                  pulumi.String("00000011-1111-2222-2222-123456789111"),
/// 			},
/// 			AuthenticationMetadata:           pulumi.String(sql.AuthMetadataLookupModesAzureAD),
/// 			Collation:                        pulumi.String("SQL_Latin1_General_CP1_CI_AS"),
/// 			DatabaseFormat:                   pulumi.String(sql.ManagedInstanceDatabaseFormatAlwaysUpToDate),
/// 			DnsZonePartner:                   pulumi.String("/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Sql/managedInstances/testinstance"),
/// 			HybridSecondaryUsage:             pulumi.String(sql.HybridSecondaryUsagePassive),
/// 			InstancePoolId:                   pulumi.String("/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Sql/instancePools/pool1"),
/// 			LicenseType:                      pulumi.String(sql.ManagedInstanceLicenseTypeLicenseIncluded),
/// 			Location:                         pulumi.String("Japan East"),
/// 			MaintenanceConfigurationId:       pulumi.String("/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_JapanEast_MI_1"),
/// 			ManagedInstanceName:              pulumi.String("testinstance"),
/// 			MinimalTlsVersion:                pulumi.String("1.2"),
/// 			ProxyOverride:                    pulumi.String(sql.ManagedInstanceProxyOverrideRedirect),
/// 			PublicDataEndpointEnabled:        pulumi.Bool(false),
/// 			RequestedBackupStorageRedundancy: pulumi.String(sql.BackupStorageRedundancyGeo),
/// 			ResourceGroupName:                pulumi.String("testrg"),
/// 			ServicePrincipal: &sql.ServicePrincipalArgs{
/// 				Type: pulumi.String(sql.ServicePrincipalTypeSystemAssigned),
/// 			},
/// 			Sku: &sql.SkuArgs{
/// 				Name: pulumi.String("GP_Gen5"),
/// 				Tier: pulumi.String("GeneralPurpose"),
/// 			},
/// 			StorageSizeInGB: pulumi.Int(1024),
/// 			SubnetId:        pulumi.String("/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1"),
/// 			Tags: pulumi.StringMap{
/// 				"tagKey1": pulumi.String("TagValue1"),
/// 			},
/// 			TimezoneId: pulumi.String("UTC"),
/// 			VCores:     pulumi.Int(8),
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
/// import com.pulumi.azurenative.sql.ManagedInstance;
/// import com.pulumi.azurenative.sql.ManagedInstanceArgs;
/// import com.pulumi.azurenative.sql.inputs.ManagedInstanceExternalAdministratorArgs;
/// import com.pulumi.azurenative.sql.inputs.ServicePrincipalArgs;
/// import com.pulumi.azurenative.sql.inputs.SkuArgs;
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
///         var managedInstance = new ManagedInstance("managedInstance", ManagedInstanceArgs.builder()
///             .administratorLogin("dummylogin")
///             .administratorLoginPassword("PLACEHOLDER")
///             .administrators(ManagedInstanceExternalAdministratorArgs.builder()
///                 .azureADOnlyAuthentication(true)
///                 .login("bob@contoso.com")
///                 .principalType("User")
///                 .sid("00000011-1111-2222-2222-123456789111")
///                 .tenantId("00000011-1111-2222-2222-123456789111")
///                 .build())
///             .authenticationMetadata("AzureAD")
///             .collation("SQL_Latin1_General_CP1_CI_AS")
///             .databaseFormat("AlwaysUpToDate")
///             .dnsZonePartner("/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Sql/managedInstances/testinstance")
///             .hybridSecondaryUsage("Passive")
///             .instancePoolId("/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Sql/instancePools/pool1")
///             .licenseType("LicenseIncluded")
///             .location("Japan East")
///             .maintenanceConfigurationId("/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_JapanEast_MI_1")
///             .managedInstanceName("testinstance")
///             .minimalTlsVersion("1.2")
///             .proxyOverride("Redirect")
///             .publicDataEndpointEnabled(false)
///             .requestedBackupStorageRedundancy("Geo")
///             .resourceGroupName("testrg")
///             .servicePrincipal(ServicePrincipalArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .sku(SkuArgs.builder()
///                 .name("GP_Gen5")
///                 .tier("GeneralPurpose")
///                 .build())
///             .storageSizeInGB(1024)
///             .subnetId("/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1")
///             .tags(Map.of("tagKey1", "TagValue1"))
///             .timezoneId("UTC")
///             .vCores(8)
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
/// const managedInstance = new azure_native.sql.ManagedInstance("managedInstance", {
///     administratorLogin: "dummylogin",
///     administratorLoginPassword: "PLACEHOLDER",
///     administrators: {
///         azureADOnlyAuthentication: true,
///         login: "bob@contoso.com",
///         principalType: azure_native.sql.PrincipalType.User,
///         sid: "00000011-1111-2222-2222-123456789111",
///         tenantId: "00000011-1111-2222-2222-123456789111",
///     },
///     authenticationMetadata: azure_native.sql.AuthMetadataLookupModes.AzureAD,
///     collation: "SQL_Latin1_General_CP1_CI_AS",
///     databaseFormat: azure_native.sql.ManagedInstanceDatabaseFormat.AlwaysUpToDate,
///     dnsZonePartner: "/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Sql/managedInstances/testinstance",
///     hybridSecondaryUsage: azure_native.sql.HybridSecondaryUsage.Passive,
///     instancePoolId: "/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Sql/instancePools/pool1",
///     licenseType: azure_native.sql.ManagedInstanceLicenseType.LicenseIncluded,
///     location: "Japan East",
///     maintenanceConfigurationId: "/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_JapanEast_MI_1",
///     managedInstanceName: "testinstance",
///     minimalTlsVersion: "1.2",
///     proxyOverride: azure_native.sql.ManagedInstanceProxyOverride.Redirect,
///     publicDataEndpointEnabled: false,
///     requestedBackupStorageRedundancy: azure_native.sql.BackupStorageRedundancy.Geo,
///     resourceGroupName: "testrg",
///     servicePrincipal: {
///         type: azure_native.sql.ServicePrincipalType.SystemAssigned,
///     },
///     sku: {
///         name: "GP_Gen5",
///         tier: "GeneralPurpose",
///     },
///     storageSizeInGB: 1024,
///     subnetId: "/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1",
///     tags: {
///         tagKey1: "TagValue1",
///     },
///     timezoneId: "UTC",
///     vCores: 8,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_instance = azure_native.sql.ManagedInstance("managedInstance",
///     administrator_login="dummylogin",
///     administrator_login_password="PLACEHOLDER",
///     administrators={
///         "azure_ad_only_authentication": True,
///         "login": "bob@contoso.com",
///         "principal_type": azure_native.sql.PrincipalType.USER,
///         "sid": "00000011-1111-2222-2222-123456789111",
///         "tenant_id": "00000011-1111-2222-2222-123456789111",
///     },
///     authentication_metadata=azure_native.sql.AuthMetadataLookupModes.AZURE_AD,
///     collation="SQL_Latin1_General_CP1_CI_AS",
///     database_format=azure_native.sql.ManagedInstanceDatabaseFormat.ALWAYS_UP_TO_DATE,
///     dns_zone_partner="/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Sql/managedInstances/testinstance",
///     hybrid_secondary_usage=azure_native.sql.HybridSecondaryUsage.PASSIVE,
///     instance_pool_id="/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Sql/instancePools/pool1",
///     license_type=azure_native.sql.ManagedInstanceLicenseType.LICENSE_INCLUDED,
///     location="Japan East",
///     maintenance_configuration_id="/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_JapanEast_MI_1",
///     managed_instance_name="testinstance",
///     minimal_tls_version="1.2",
///     proxy_override=azure_native.sql.ManagedInstanceProxyOverride.REDIRECT,
///     public_data_endpoint_enabled=False,
///     requested_backup_storage_redundancy=azure_native.sql.BackupStorageRedundancy.GEO,
///     resource_group_name="testrg",
///     service_principal={
///         "type": azure_native.sql.ServicePrincipalType.SYSTEM_ASSIGNED,
///     },
///     sku={
///         "name": "GP_Gen5",
///         "tier": "GeneralPurpose",
///     },
///     storage_size_in_gb=1024,
///     subnet_id="/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1",
///     tags={
///         "tagKey1": "TagValue1",
///     },
///     timezone_id="UTC",
///     v_cores=8)
///
/// ```
///
/// ```yaml
/// resources:
///   managedInstance:
///     type: azure-native:sql:ManagedInstance
///     properties:
///       administratorLogin: dummylogin
///       administratorLoginPassword: PLACEHOLDER
///       administrators:
///         azureADOnlyAuthentication: true
///         login: bob@contoso.com
///         principalType: User
///         sid: 00000011-1111-2222-2222-123456789111
///         tenantId: 00000011-1111-2222-2222-123456789111
///       authenticationMetadata: AzureAD
///       collation: SQL_Latin1_General_CP1_CI_AS
///       databaseFormat: AlwaysUpToDate
///       dnsZonePartner: /subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Sql/managedInstances/testinstance
///       hybridSecondaryUsage: Passive
///       instancePoolId: /subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Sql/instancePools/pool1
///       licenseType: LicenseIncluded
///       location: Japan East
///       maintenanceConfigurationId: /subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_JapanEast_MI_1
///       managedInstanceName: testinstance
///       minimalTlsVersion: '1.2'
///       proxyOverride: Redirect
///       publicDataEndpointEnabled: false
///       requestedBackupStorageRedundancy: Geo
///       resourceGroupName: testrg
///       servicePrincipal:
///         type: SystemAssigned
///       sku:
///         name: GP_Gen5
///         tier: GeneralPurpose
///       storageSizeInGB: 1024
///       subnetId: /subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1
///       tags:
///         tagKey1: TagValue1
///       timezoneId: UTC
///       vCores: 8
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create managed instance with minimal properties
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedInstance = new AzureNative.Sql.ManagedInstance("managedInstance", new()
///     {
///         AdministratorLogin = "dummylogin",
///         AdministratorLoginPassword = "PLACEHOLDER",
///         LicenseType = AzureNative.Sql.ManagedInstanceLicenseType.LicenseIncluded,
///         Location = "Japan East",
///         ManagedInstanceName = "testinstance",
///         ResourceGroupName = "testrg",
///         Sku = new AzureNative.Sql.Inputs.SkuArgs
///         {
///             Name = "GP_Gen5",
///             Tier = "GeneralPurpose",
///         },
///         StorageSizeInGB = 1024,
///         SubnetId = "/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1",
///         VCores = 8,
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewManagedInstance(ctx, "managedInstance", &sql.ManagedInstanceArgs{
/// 			AdministratorLogin:         pulumi.String("dummylogin"),
/// 			AdministratorLoginPassword: pulumi.String("PLACEHOLDER"),
/// 			LicenseType:                pulumi.String(sql.ManagedInstanceLicenseTypeLicenseIncluded),
/// 			Location:                   pulumi.String("Japan East"),
/// 			ManagedInstanceName:        pulumi.String("testinstance"),
/// 			ResourceGroupName:          pulumi.String("testrg"),
/// 			Sku: &sql.SkuArgs{
/// 				Name: pulumi.String("GP_Gen5"),
/// 				Tier: pulumi.String("GeneralPurpose"),
/// 			},
/// 			StorageSizeInGB: pulumi.Int(1024),
/// 			SubnetId:        pulumi.String("/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1"),
/// 			VCores:          pulumi.Int(8),
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
/// import com.pulumi.azurenative.sql.ManagedInstance;
/// import com.pulumi.azurenative.sql.ManagedInstanceArgs;
/// import com.pulumi.azurenative.sql.inputs.SkuArgs;
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
///         var managedInstance = new ManagedInstance("managedInstance", ManagedInstanceArgs.builder()
///             .administratorLogin("dummylogin")
///             .administratorLoginPassword("PLACEHOLDER")
///             .licenseType("LicenseIncluded")
///             .location("Japan East")
///             .managedInstanceName("testinstance")
///             .resourceGroupName("testrg")
///             .sku(SkuArgs.builder()
///                 .name("GP_Gen5")
///                 .tier("GeneralPurpose")
///                 .build())
///             .storageSizeInGB(1024)
///             .subnetId("/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1")
///             .vCores(8)
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
/// const managedInstance = new azure_native.sql.ManagedInstance("managedInstance", {
///     administratorLogin: "dummylogin",
///     administratorLoginPassword: "PLACEHOLDER",
///     licenseType: azure_native.sql.ManagedInstanceLicenseType.LicenseIncluded,
///     location: "Japan East",
///     managedInstanceName: "testinstance",
///     resourceGroupName: "testrg",
///     sku: {
///         name: "GP_Gen5",
///         tier: "GeneralPurpose",
///     },
///     storageSizeInGB: 1024,
///     subnetId: "/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1",
///     vCores: 8,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_instance = azure_native.sql.ManagedInstance("managedInstance",
///     administrator_login="dummylogin",
///     administrator_login_password="PLACEHOLDER",
///     license_type=azure_native.sql.ManagedInstanceLicenseType.LICENSE_INCLUDED,
///     location="Japan East",
///     managed_instance_name="testinstance",
///     resource_group_name="testrg",
///     sku={
///         "name": "GP_Gen5",
///         "tier": "GeneralPurpose",
///     },
///     storage_size_in_gb=1024,
///     subnet_id="/subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1",
///     v_cores=8)
///
/// ```
///
/// ```yaml
/// resources:
///   managedInstance:
///     type: azure-native:sql:ManagedInstance
///     properties:
///       administratorLogin: dummylogin
///       administratorLoginPassword: PLACEHOLDER
///       licenseType: LicenseIncluded
///       location: Japan East
///       managedInstanceName: testinstance
///       resourceGroupName: testrg
///       sku:
///         name: GP_Gen5
///         tier: GeneralPurpose
///       storageSizeInGB: 1024
///       subnetId: /subscriptions/20D7082A-0FC7-4468-82BD-542694D5042B/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1
///       vCores: 8
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
/// $ pulumi import azure-native:sql:ManagedInstance testinstance /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/managedInstances/{managedInstanceName}
/// ```
class ManagedInstance extends pulumi.CustomResource {
  /// Administrator username for the managed instance. Can only be specified when the managed instance is being created (and is required for creation).
  late final pulumi.Output<String?> administratorLogin;

  /// The Azure Active Directory administrator of the instance. This can only be used at instance create time. If used for instance update, it will be ignored or it will result in an error. For updates individual APIs will need to be used.
  late final pulumi.Output<ManagedInstanceExternalAdministratorResponse?>
  administrators;

  /// The managed instance's authentication metadata lookup mode.
  late final pulumi.Output<String?> authenticationMetadata;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Collation of the managed instance.
  late final pulumi.Output<String?> collation;

  /// Specifies the point in time (ISO8601 format) of the Managed Instance creation.
  late final pulumi.Output<String> createTime;

  /// The storage account type used to store backups for this instance. The options are Local (LocallyRedundantStorage), Zone (ZoneRedundantStorage), Geo (GeoRedundantStorage) and GeoZone(GeoZoneRedundantStorage)
  late final pulumi.Output<String> currentBackupStorageRedundancy;

  /// Specifies the internal format of instance databases specific to the SQL engine version.
  late final pulumi.Output<String?> databaseFormat;

  /// The Dns Zone that the managed instance is in.
  late final pulumi.Output<String> dnsZone;

  /// Status of external governance.
  late final pulumi.Output<String> externalGovernanceStatus;

  /// The fully qualified domain name of the managed instance.
  late final pulumi.Output<String> fullyQualifiedDomainName;

  /// Hybrid secondary usage. Possible values are 'Active' (default value) and 'Passive' (customer uses the secondary as Passive DR).
  late final pulumi.Output<String?> hybridSecondaryUsage;

  /// Hybrid secondary usage detected. Possible values are 'Active' (customer does not meet the requirements to use the secondary as Passive DR) and 'Passive' (customer meets the requirements to use the secondary as Passive DR).
  late final pulumi.Output<String> hybridSecondaryUsageDetected;

  /// The Azure Active Directory identity of the managed instance.
  late final pulumi.Output<ResourceIdentityResponse?> identity;

  /// The Id of the instance pool this managed server belongs to.
  late final pulumi.Output<String?> instancePoolId;

  /// Whether or not this is a GPv2 variant of General Purpose edition.
  late final pulumi.Output<bool?> isGeneralPurposeV2;

  /// A CMK URI of the key to use for encryption.
  late final pulumi.Output<String?> keyId;

  /// The license type. Possible values are 'LicenseIncluded' (regular price inclusive of a new SQL license) and 'BasePrice' (discounted AHB price for bringing your own SQL licenses).
  late final pulumi.Output<String?> licenseType;

  /// Resource location.
  late final pulumi.Output<String> location;

  /// Specifies maintenance configuration id to apply to this managed instance.
  late final pulumi.Output<String?> maintenanceConfigurationId;

  /// Minimal TLS version. Allowed values: 'None', '1.0', '1.1', '1.2'
  late final pulumi.Output<String?> minimalTlsVersion;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Pricing model of Managed Instance.
  late final pulumi.Output<String?> pricingModel;

  /// The resource id of a user assigned identity to be used by default.
  late final pulumi.Output<String?> primaryUserAssignedIdentityId;

  /// List of private endpoint connections on a managed instance.
  late final pulumi.Output<List<Map<String, dynamic>>>
  privateEndpointConnections;

  /// Provisioning state of managed instance.
  late final pulumi.Output<String> provisioningState;

  /// Connection type used for connecting to the instance.
  late final pulumi.Output<String?> proxyOverride;

  /// Whether or not the public data endpoint is enabled.
  late final pulumi.Output<bool?> publicDataEndpointEnabled;

  /// The storage account type to be used to store backups for this instance. The options are Local (LocallyRedundantStorage), Zone (ZoneRedundantStorage), Geo (GeoRedundantStorage) and GeoZone(GeoZoneRedundantStorage)
  late final pulumi.Output<String?> requestedBackupStorageRedundancy;

  /// The managed instance's service principal.
  late final pulumi.Output<ServicePrincipalResponse?> servicePrincipal;

  /// Managed instance SKU. Allowed values for sku.name: GP_Gen5, GP_G8IM, GP_G8IH, BC_Gen5, BC_G8IM, BC_G8IH
  late final pulumi.Output<SkuResponse?> sku;

  /// The state of the managed instance.
  late final pulumi.Output<String> state;

  /// Storage IOps. Minimum value: 300. Maximum value: 80000. Increments of 1 IOps allowed only. Maximum value depends on the selected hardware family and number of vCores.
  late final pulumi.Output<int?> storageIOps;

  /// Storage size in GB. Minimum value: 32. Maximum value: 16384. Increments of 32 GB allowed only. Maximum value depends on the selected hardware family and number of vCores.
  late final pulumi.Output<int?> storageSizeInGB;

  /// Storage throughput MBps parameter is not supported in the instance create/update operation.
  late final pulumi.Output<int?> storageThroughputMBps;

  /// Subnet resource ID for the managed instance.
  late final pulumi.Output<String?> subnetId;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Id of the timezone. Allowed values are timezones supported by Windows.
  /// Windows keeps details on supported timezones, including the id, in registry under
  /// KEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Time Zones.
  /// You can get those registry values via SQL Server by querying SELECT name AS timezone_id FROM sys.time_zone_info.
  /// List of Ids can also be obtained by executing [System.TimeZoneInfo]::GetSystemTimeZones() in PowerShell.
  /// An example of valid timezone id is "Pacific Standard Time" or "W. Europe Standard Time".
  late final pulumi.Output<String?> timezoneId;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// The number of vCores. Allowed values: 8, 16, 24, 32, 40, 64, 80.
  late final pulumi.Output<int?> vCores;

  /// Virtual cluster resource id for the Managed Instance.
  late final pulumi.Output<String> virtualClusterId;

  /// Whether or not the multi-az is enabled.
  late final pulumi.Output<bool?> zoneRedundant;

  /// Creates a new [ManagedInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedInstance]. {@macro pulumi_sql_managed_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedInstance(
    String name, {
    ManagedInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:sql:ManagedInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    administratorLogin = registerOutput<String?>('administratorLogin');
    administrators =
        registerOutput<ManagedInstanceExternalAdministratorResponse?>(
          'administrators',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ManagedInstanceExternalAdministratorResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    authenticationMetadata = registerOutput<String?>('authenticationMetadata');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    collation = registerOutput<String?>('collation');
    createTime = registerOutput<String>('createTime');
    currentBackupStorageRedundancy = registerOutput<String>(
      'currentBackupStorageRedundancy',
    );
    databaseFormat = registerOutput<String?>('databaseFormat');
    dnsZone = registerOutput<String>('dnsZone');
    externalGovernanceStatus = registerOutput<String>(
      'externalGovernanceStatus',
    );
    fullyQualifiedDomainName = registerOutput<String>(
      'fullyQualifiedDomainName',
    );
    hybridSecondaryUsage = registerOutput<String?>('hybridSecondaryUsage');
    hybridSecondaryUsageDetected = registerOutput<String>(
      'hybridSecondaryUsageDetected',
    );
    identity = registerOutput<ResourceIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ResourceIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    instancePoolId = registerOutput<String?>('instancePoolId');
    isGeneralPurposeV2 = registerOutput<bool?>('isGeneralPurposeV2');
    keyId = registerOutput<String?>('keyId');
    licenseType = registerOutput<String?>('licenseType');
    location = registerOutput<String>('location');
    maintenanceConfigurationId = registerOutput<String?>(
      'maintenanceConfigurationId',
    );
    minimalTlsVersion = registerOutput<String?>('minimalTlsVersion');
    this.name = registerOutput<String>('name');
    pricingModel = registerOutput<String?>('pricingModel');
    primaryUserAssignedIdentityId = registerOutput<String?>(
      'primaryUserAssignedIdentityId',
    );
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>(
      'privateEndpointConnections',
    );
    provisioningState = registerOutput<String>('provisioningState');
    proxyOverride = registerOutput<String?>('proxyOverride');
    publicDataEndpointEnabled = registerOutput<bool?>(
      'publicDataEndpointEnabled',
    );
    requestedBackupStorageRedundancy = registerOutput<String?>(
      'requestedBackupStorageRedundancy',
    );
    servicePrincipal = registerOutput<ServicePrincipalResponse?>(
      'servicePrincipal',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServicePrincipalResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sku = registerOutput<SkuResponse?>(
      'sku',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    state = registerOutput<String>('state');
    storageIOps = registerOutput<int?>('storageIOps');
    storageSizeInGB = registerOutput<int?>('storageSizeInGB');
    storageThroughputMBps = registerOutput<int?>('storageThroughputMBps');
    subnetId = registerOutput<String?>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags');
    timezoneId = registerOutput<String?>('timezoneId');
    type = registerOutput<String>('type');
    vCores = registerOutput<int?>('vCores');
    virtualClusterId = registerOutput<String>('virtualClusterId');
    zoneRedundant = registerOutput<bool?>('zoneRedundant');
  }
}
