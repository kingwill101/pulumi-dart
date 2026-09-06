import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_pool_args.dart';
import 'sku_response.dart';

/// An Azure SQL instance pool.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2018-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create an instance pool with all properties.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instancePool = new AzureNative.Sql.InstancePool("instancePool", new()
///     {
///         InstancePoolName = "testIP",
///         LicenseType = AzureNative.Sql.InstancePoolLicenseType.LicenseIncluded,
///         Location = "japaneast",
///         MaintenanceConfigurationId = "/subscriptions/00000000-1111-2222-3333-444444444444/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_JapanEast_MI_1",
///         ResourceGroupName = "group1",
///         Sku = new AzureNative.Sql.Inputs.SkuArgs
///         {
///             Family = "Gen5",
///             Name = "GP_Gen5",
///             Tier = "GeneralPurpose",
///         },
///         SubnetId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Network/virtualNetworks/myvnet/subnets/mysubnet1",
///         Tags =
///         {
///             { "a", "b" },
///         },
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
/// 		_, err := sql.NewInstancePool(ctx, "instancePool", &sql.InstancePoolArgs{
/// 			InstancePoolName:           pulumi.String("testIP"),
/// 			LicenseType:                pulumi.String(sql.InstancePoolLicenseTypeLicenseIncluded),
/// 			Location:                   pulumi.String("japaneast"),
/// 			MaintenanceConfigurationId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_JapanEast_MI_1"),
/// 			ResourceGroupName:          pulumi.String("group1"),
/// 			Sku: &sql.SkuArgs{
/// 				Family: pulumi.String("Gen5"),
/// 				Name:   pulumi.String("GP_Gen5"),
/// 				Tier:   pulumi.String("GeneralPurpose"),
/// 			},
/// 			SubnetId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Network/virtualNetworks/myvnet/subnets/mysubnet1"),
/// 			Tags: pulumi.StringMap{
/// 				"a": pulumi.String("b"),
/// 			},
/// 			VCores: pulumi.Int(8),
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
/// resource "azure-native_sql_instancepool" "instancePool" {
///   instance_pool_name           = "testIP"
///   license_type                 = "LicenseIncluded"
///   location                     = "japaneast"
///   maintenance_configuration_id = "/subscriptions/00000000-1111-2222-3333-444444444444/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_JapanEast_MI_1"
///   resource_group_name          = "group1"
///   sku = {
///     family = "Gen5"
///     name   = "GP_Gen5"
///     tier   = "GeneralPurpose"
///   }
///   subnet_id = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Network/virtualNetworks/myvnet/subnets/mysubnet1"
///   tags = {
///     "a" = "b"
///   }
///   v_cores = 8
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
/// import com.pulumi.azurenative.sql.InstancePool;
/// import com.pulumi.azurenative.sql.InstancePoolArgs;
/// import com.pulumi.azurenative.sql.inputs.SkuArgs;
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
///         var instancePool = new InstancePool("instancePool", InstancePoolArgs.builder()
///             .instancePoolName("testIP")
///             .licenseType("LicenseIncluded")
///             .location("japaneast")
///             .maintenanceConfigurationId("/subscriptions/00000000-1111-2222-3333-444444444444/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_JapanEast_MI_1")
///             .resourceGroupName("group1")
///             .sku(SkuArgs.builder()
///                 .family("Gen5")
///                 .name("GP_Gen5")
///                 .tier("GeneralPurpose")
///                 .build())
///             .subnetId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Network/virtualNetworks/myvnet/subnets/mysubnet1")
///             .tags(Map.of("a", "b"))
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
/// const instancePool = new azure_native.sql.InstancePool("instancePool", {
///     instancePoolName: "testIP",
///     licenseType: azure_native.sql.InstancePoolLicenseType.LicenseIncluded,
///     location: "japaneast",
///     maintenanceConfigurationId: "/subscriptions/00000000-1111-2222-3333-444444444444/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_JapanEast_MI_1",
///     resourceGroupName: "group1",
///     sku: {
///         family: "Gen5",
///         name: "GP_Gen5",
///         tier: "GeneralPurpose",
///     },
///     subnetId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Network/virtualNetworks/myvnet/subnets/mysubnet1",
///     tags: {
///         a: "b",
///     },
///     vCores: 8,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// instance_pool = azure_native.sql.InstancePool("instancePool",
///     instance_pool_name="testIP",
///     license_type=azure_native.sql.InstancePoolLicenseType.LICENSE_INCLUDED,
///     location="japaneast",
///     maintenance_configuration_id="/subscriptions/00000000-1111-2222-3333-444444444444/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_JapanEast_MI_1",
///     resource_group_name="group1",
///     sku={
///         "family": "Gen5",
///         "name": "GP_Gen5",
///         "tier": "GeneralPurpose",
///     },
///     subnet_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Network/virtualNetworks/myvnet/subnets/mysubnet1",
///     tags={
///         "a": "b",
///     },
///     v_cores=8)
///
/// ```
///
/// ```yaml
/// resources:
///   instancePool:
///     type: azure-native:sql:InstancePool
///     properties:
///       instancePoolName: testIP
///       licenseType: LicenseIncluded
///       location: japaneast
///       maintenanceConfigurationId: /subscriptions/00000000-1111-2222-3333-444444444444/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_JapanEast_MI_1
///       resourceGroupName: group1
///       sku:
///         family: Gen5
///         name: GP_Gen5
///         tier: GeneralPurpose
///       subnetId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Network/virtualNetworks/myvnet/subnets/mysubnet1
///       tags:
///         a: b
///       vCores: 8
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create an instance pool with min properties.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instancePool = new AzureNative.Sql.InstancePool("instancePool", new()
///     {
///         InstancePoolName = "testIP",
///         LicenseType = AzureNative.Sql.InstancePoolLicenseType.LicenseIncluded,
///         Location = "japaneast",
///         ResourceGroupName = "group1",
///         Sku = new AzureNative.Sql.Inputs.SkuArgs
///         {
///             Family = "Gen5",
///             Name = "GP_Gen5",
///             Tier = "GeneralPurpose",
///         },
///         SubnetId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Network/virtualNetworks/myvnet/subnets/mysubnet1",
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
/// 		_, err := sql.NewInstancePool(ctx, "instancePool", &sql.InstancePoolArgs{
/// 			InstancePoolName:  pulumi.String("testIP"),
/// 			LicenseType:       pulumi.String(sql.InstancePoolLicenseTypeLicenseIncluded),
/// 			Location:          pulumi.String("japaneast"),
/// 			ResourceGroupName: pulumi.String("group1"),
/// 			Sku: &sql.SkuArgs{
/// 				Family: pulumi.String("Gen5"),
/// 				Name:   pulumi.String("GP_Gen5"),
/// 				Tier:   pulumi.String("GeneralPurpose"),
/// 			},
/// 			SubnetId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Network/virtualNetworks/myvnet/subnets/mysubnet1"),
/// 			VCores:   pulumi.Int(8),
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
/// resource "azure-native_sql_instancepool" "instancePool" {
///   instance_pool_name  = "testIP"
///   license_type        = "LicenseIncluded"
///   location            = "japaneast"
///   resource_group_name = "group1"
///   sku = {
///     family = "Gen5"
///     name   = "GP_Gen5"
///     tier   = "GeneralPurpose"
///   }
///   subnet_id = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Network/virtualNetworks/myvnet/subnets/mysubnet1"
///   v_cores   = 8
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
/// import com.pulumi.azurenative.sql.InstancePool;
/// import com.pulumi.azurenative.sql.InstancePoolArgs;
/// import com.pulumi.azurenative.sql.inputs.SkuArgs;
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
///         var instancePool = new InstancePool("instancePool", InstancePoolArgs.builder()
///             .instancePoolName("testIP")
///             .licenseType("LicenseIncluded")
///             .location("japaneast")
///             .resourceGroupName("group1")
///             .sku(SkuArgs.builder()
///                 .family("Gen5")
///                 .name("GP_Gen5")
///                 .tier("GeneralPurpose")
///                 .build())
///             .subnetId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Network/virtualNetworks/myvnet/subnets/mysubnet1")
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
/// const instancePool = new azure_native.sql.InstancePool("instancePool", {
///     instancePoolName: "testIP",
///     licenseType: azure_native.sql.InstancePoolLicenseType.LicenseIncluded,
///     location: "japaneast",
///     resourceGroupName: "group1",
///     sku: {
///         family: "Gen5",
///         name: "GP_Gen5",
///         tier: "GeneralPurpose",
///     },
///     subnetId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Network/virtualNetworks/myvnet/subnets/mysubnet1",
///     vCores: 8,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// instance_pool = azure_native.sql.InstancePool("instancePool",
///     instance_pool_name="testIP",
///     license_type=azure_native.sql.InstancePoolLicenseType.LICENSE_INCLUDED,
///     location="japaneast",
///     resource_group_name="group1",
///     sku={
///         "family": "Gen5",
///         "name": "GP_Gen5",
///         "tier": "GeneralPurpose",
///     },
///     subnet_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Network/virtualNetworks/myvnet/subnets/mysubnet1",
///     v_cores=8)
///
/// ```
///
/// ```yaml
/// resources:
///   instancePool:
///     type: azure-native:sql:InstancePool
///     properties:
///       instancePoolName: testIP
///       licenseType: LicenseIncluded
///       location: japaneast
///       resourceGroupName: group1
///       sku:
///         family: Gen5
///         name: GP_Gen5
///         tier: GeneralPurpose
///       subnetId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/group1/providers/Microsoft.Network/virtualNetworks/myvnet/subnets/mysubnet1
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
/// $ pulumi import azure-native:sql:InstancePool testIP /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/instancePools/{instancePoolName}
/// ```
class InstancePool extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The Dns Zone that the managed instance pool is in.
  late final pulumi.Output<String> dnsZone;
  /// The license type. Possible values are 'LicenseIncluded' (price for SQL license is included) and 'BasePrice' (without SQL license price).
  late final pulumi.Output<String> licenseType;
  /// Resource location.
  late final pulumi.Output<String> location;
  /// Specifies maintenance configuration id to apply to this managed instance.
  late final pulumi.Output<String?> maintenanceConfigurationId;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The name and tier of the SKU.
  late final pulumi.Output<SkuResponse?> sku;
  /// Resource ID of the subnet to place this instance pool in.
  late final pulumi.Output<String> subnetId;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// Count of vCores belonging to this instance pool.
  late final pulumi.Output<int> vCores;

  /// Creates a new [InstancePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstancePool]. {@macro pulumi_sql_instance_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstancePool(
    String name, {
    InstancePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:InstancePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dnsZone = registerOutput<String>('dnsZone');
    licenseType = registerOutput<String>('licenseType');
    location = registerOutput<String>('location');
    maintenanceConfigurationId = registerOutput<String?>('maintenanceConfigurationId');
    this.name = registerOutput<String>('name');
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subnetId = registerOutput<String>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    vCores = registerOutput<int>('vCores');
  }

  /// Creates a typed reference to an existing [InstancePool] resource.
  InstancePool.reference(String urn)
    : super(
        'azure-native:sql:InstancePool',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dnsZone = registerOutput<String>('dnsZone');
    licenseType = registerOutput<String>('licenseType');
    location = registerOutput<String>('location');
    maintenanceConfigurationId = registerOutput<String?>('maintenanceConfigurationId');
    this.name = registerOutput<String>('name');
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subnetId = registerOutput<String>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    vCores = registerOutput<int>('vCores');
  }
}
