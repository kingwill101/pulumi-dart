import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_virtual_machine_group_args.dart';
import 'system_data_response.dart';
import 'wsfc_domain_profile_response.dart';

/// A SQL virtual machine group.
///
/// Uses Azure REST API version 2023-10-01. In version 2.x of the Azure Native provider, it used API version 2022-02-01.
///
/// Other available API versions: 2022-02-01, 2022-07-01-preview, 2022-08-01-preview, 2023-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sqlvirtualmachine [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a SQL virtual machine group.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlVirtualMachineGroup = new AzureNative.SqlVirtualMachine.SqlVirtualMachineGroup("sqlVirtualMachineGroup", new()
///     {
///         Location = "northeurope",
///         ResourceGroupName = "testrg",
///         SqlImageOffer = "SQL2016-WS2016",
///         SqlImageSku = AzureNative.SqlVirtualMachine.SqlVmGroupImageSku.Enterprise,
///         SqlVirtualMachineGroupName = "testvmgroup",
///         Tags =
///         {
///             { "mytag", "myval" },
///         },
///         WsfcDomainProfile = new AzureNative.SqlVirtualMachine.Inputs.WsfcDomainProfileArgs
///         {
///             ClusterBootstrapAccount = "testrpadmin",
///             ClusterOperatorAccount = "testrp@testdomain.com",
///             ClusterSubnetType = AzureNative.SqlVirtualMachine.ClusterSubnetType.MultiSubnet,
///             DomainFqdn = "testdomain.com",
///             IsSqlServiceAccountGmsa = false,
///             OuPath = "OU=WSCluster,DC=testdomain,DC=com",
///             SqlServiceAccount = "sqlservice@testdomain.com",
///             StorageAccountPrimaryKey = "<primary storage access key>",
///             StorageAccountUrl = "https://storgact.blob.core.windows.net/",
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
/// 	sqlvirtualmachine "github.com/pulumi/pulumi-azure-native-sdk/sqlvirtualmachine/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sqlvirtualmachine.NewSqlVirtualMachineGroup(ctx, "sqlVirtualMachineGroup", &sqlvirtualmachine.SqlVirtualMachineGroupArgs{
/// 			Location:                   pulumi.String("northeurope"),
/// 			ResourceGroupName:          pulumi.String("testrg"),
/// 			SqlImageOffer:              pulumi.String("SQL2016-WS2016"),
/// 			SqlImageSku:                pulumi.String(sqlvirtualmachine.SqlVmGroupImageSkuEnterprise),
/// 			SqlVirtualMachineGroupName: pulumi.String("testvmgroup"),
/// 			Tags: pulumi.StringMap{
/// 				"mytag": pulumi.String("myval"),
/// 			},
/// 			WsfcDomainProfile: &sqlvirtualmachine.WsfcDomainProfileArgs{
/// 				ClusterBootstrapAccount:  pulumi.String("testrpadmin"),
/// 				ClusterOperatorAccount:   pulumi.String("testrp@testdomain.com"),
/// 				ClusterSubnetType:        pulumi.String(sqlvirtualmachine.ClusterSubnetTypeMultiSubnet),
/// 				DomainFqdn:               pulumi.String("testdomain.com"),
/// 				IsSqlServiceAccountGmsa:  pulumi.Bool(false),
/// 				OuPath:                   pulumi.String("OU=WSCluster,DC=testdomain,DC=com"),
/// 				SqlServiceAccount:        pulumi.String("sqlservice@testdomain.com"),
/// 				StorageAccountPrimaryKey: pulumi.String("<primary storage access key>"),
/// 				StorageAccountUrl:        pulumi.String("https://storgact.blob.core.windows.net/"),
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
/// resource "azure-native_sqlvirtualmachine_sqlvirtualmachinegroup" "sqlVirtualMachineGroup" {
///   location                       = "northeurope"
///   resource_group_name            = "testrg"
///   sql_image_offer                = "SQL2016-WS2016"
///   sql_image_sku                  = "Enterprise"
///   sql_virtual_machine_group_name = "testvmgroup"
///   tags = {
///     "mytag" = "myval"
///   }
///   wsfc_domain_profile = {
///     cluster_bootstrap_account   = "testrpadmin"
///     cluster_operator_account    = "testrp@testdomain.com"
///     cluster_subnet_type         = "MultiSubnet"
///     domain_fqdn                 = "testdomain.com"
///     is_sql_service_account_gmsa = false
///     ou_path                     = "OU=WSCluster,DC=testdomain,DC=com"
///     sql_service_account         = "sqlservice@testdomain.com"
///     storage_account_primary_key = "<primary storage access key>"
///     storage_account_url         = "https://storgact.blob.core.windows.net/"
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
/// import com.pulumi.azurenative.sqlvirtualmachine.SqlVirtualMachineGroup;
/// import com.pulumi.azurenative.sqlvirtualmachine.SqlVirtualMachineGroupArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.WsfcDomainProfileArgs;
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
///         var sqlVirtualMachineGroup = new SqlVirtualMachineGroup("sqlVirtualMachineGroup", SqlVirtualMachineGroupArgs.builder()
///             .location("northeurope")
///             .resourceGroupName("testrg")
///             .sqlImageOffer("SQL2016-WS2016")
///             .sqlImageSku("Enterprise")
///             .sqlVirtualMachineGroupName("testvmgroup")
///             .tags(Map.of("mytag", "myval"))
///             .wsfcDomainProfile(WsfcDomainProfileArgs.builder()
///                 .clusterBootstrapAccount("testrpadmin")
///                 .clusterOperatorAccount("testrp@testdomain.com")
///                 .clusterSubnetType("MultiSubnet")
///                 .domainFqdn("testdomain.com")
///                 .isSqlServiceAccountGmsa(false)
///                 .ouPath("OU=WSCluster,DC=testdomain,DC=com")
///                 .sqlServiceAccount("sqlservice@testdomain.com")
///                 .storageAccountPrimaryKey("<primary storage access key>")
///                 .storageAccountUrl("https://storgact.blob.core.windows.net/")
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
/// const sqlVirtualMachineGroup = new azure_native.sqlvirtualmachine.SqlVirtualMachineGroup("sqlVirtualMachineGroup", {
///     location: "northeurope",
///     resourceGroupName: "testrg",
///     sqlImageOffer: "SQL2016-WS2016",
///     sqlImageSku: azure_native.sqlvirtualmachine.SqlVmGroupImageSku.Enterprise,
///     sqlVirtualMachineGroupName: "testvmgroup",
///     tags: {
///         mytag: "myval",
///     },
///     wsfcDomainProfile: {
///         clusterBootstrapAccount: "testrpadmin",
///         clusterOperatorAccount: "testrp@testdomain.com",
///         clusterSubnetType: azure_native.sqlvirtualmachine.ClusterSubnetType.MultiSubnet,
///         domainFqdn: "testdomain.com",
///         isSqlServiceAccountGmsa: false,
///         ouPath: "OU=WSCluster,DC=testdomain,DC=com",
///         sqlServiceAccount: "sqlservice@testdomain.com",
///         storageAccountPrimaryKey: "<primary storage access key>",
///         storageAccountUrl: "https://storgact.blob.core.windows.net/",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_virtual_machine_group = azure_native.sqlvirtualmachine.SqlVirtualMachineGroup("sqlVirtualMachineGroup",
///     location="northeurope",
///     resource_group_name="testrg",
///     sql_image_offer="SQL2016-WS2016",
///     sql_image_sku=azure_native.sqlvirtualmachine.SqlVmGroupImageSku.ENTERPRISE,
///     sql_virtual_machine_group_name="testvmgroup",
///     tags={
///         "mytag": "myval",
///     },
///     wsfc_domain_profile={
///         "cluster_bootstrap_account": "testrpadmin",
///         "cluster_operator_account": "testrp@testdomain.com",
///         "cluster_subnet_type": azure_native.sqlvirtualmachine.ClusterSubnetType.MULTI_SUBNET,
///         "domain_fqdn": "testdomain.com",
///         "is_sql_service_account_gmsa": False,
///         "ou_path": "OU=WSCluster,DC=testdomain,DC=com",
///         "sql_service_account": "sqlservice@testdomain.com",
///         "storage_account_primary_key": "<primary storage access key>",
///         "storage_account_url": "https://storgact.blob.core.windows.net/",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   sqlVirtualMachineGroup:
///     type: azure-native:sqlvirtualmachine:SqlVirtualMachineGroup
///     properties:
///       location: northeurope
///       resourceGroupName: testrg
///       sqlImageOffer: SQL2016-WS2016
///       sqlImageSku: Enterprise
///       sqlVirtualMachineGroupName: testvmgroup
///       tags:
///         mytag: myval
///       wsfcDomainProfile:
///         clusterBootstrapAccount: testrpadmin
///         clusterOperatorAccount: testrp@testdomain.com
///         clusterSubnetType: MultiSubnet
///         domainFqdn: testdomain.com
///         isSqlServiceAccountGmsa: false
///         ouPath: OU=WSCluster,DC=testdomain,DC=com
///         sqlServiceAccount: sqlservice@testdomain.com
///         storageAccountPrimaryKey: <primary storage access key>
///         storageAccountUrl: https://storgact.blob.core.windows.net/
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
/// $ pulumi import azure-native:sqlvirtualmachine:SqlVirtualMachineGroup testvmgroup /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachineGroups/{sqlVirtualMachineGroupName}
/// ```
class SqlVirtualMachineGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Cluster type.
  late final pulumi.Output<String> clusterConfiguration;
  /// Type of cluster manager: Windows Server Failover Cluster (WSFC), implied by the scale type of the group and the OS type.
  late final pulumi.Output<String> clusterManagerType;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state to track the async operation status.
  late final pulumi.Output<String> provisioningState;
  /// Scale type.
  late final pulumi.Output<String> scaleType;
  /// SQL image offer. Examples may include SQL2016-WS2016, SQL2017-WS2016.
  late final pulumi.Output<String?> sqlImageOffer;
  /// SQL image sku.
  late final pulumi.Output<String?> sqlImageSku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Cluster Active Directory domain profile.
  late final pulumi.Output<WsfcDomainProfileResponse?> wsfcDomainProfile;

  /// Creates a new [SqlVirtualMachineGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlVirtualMachineGroup]. {@macro pulumi_sqlvirtualmachine_sql_virtual_machine_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlVirtualMachineGroup(
    String name, {
    SqlVirtualMachineGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sqlvirtualmachine:SqlVirtualMachineGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterConfiguration = registerOutput<String>('clusterConfiguration');
    clusterManagerType = registerOutput<String>('clusterManagerType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    scaleType = registerOutput<String>('scaleType');
    sqlImageOffer = registerOutput<String?>('sqlImageOffer');
    sqlImageSku = registerOutput<String?>('sqlImageSku');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    wsfcDomainProfile = registerOutput<WsfcDomainProfileResponse?>('wsfcDomainProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WsfcDomainProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
