import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_cost_management_export_args.dart';
import 'account_cost_management_export_export_data_options.dart';
import 'account_cost_management_export_export_data_storage_location.dart';
import 'account_cost_management_export_state.dart';

/// Manages a Cost Management Export for a Billing Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "examplecontainer",
///     storageAccountName: exampleAccount.name,
/// });
/// const exampleAccountCostManagementExport = new azure.billing.AccountCostManagementExport("example", {
///     name: "example",
///     billingAccountId: "example",
///     recurrenceType: "Monthly",
///     recurrencePeriodStartDate: "2020-08-18T00:00:00Z",
///     recurrencePeriodEndDate: "2020-09-18T00:00:00Z",
///     fileFormat: "Csv",
///     exportDataStorageLocation: {
///         containerId: exampleContainer.id,
///         rootFolderPath: "/root/updated",
///     },
///     exportDataOptions: {
///         type: "Usage",
///         timeFrame: "WeekToDate",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_container = azure.storage.Container("example",
///     name="examplecontainer",
///     storage_account_name=example_account.name)
/// example_account_cost_management_export = azure.billing.AccountCostManagementExport("example",
///     name="example",
///     billing_account_id="example",
///     recurrence_type="Monthly",
///     recurrence_period_start_date="2020-08-18T00:00:00Z",
///     recurrence_period_end_date="2020-09-18T00:00:00Z",
///     file_format="Csv",
///     export_data_storage_location={
///         "container_id": example_container.id,
///         "root_folder_path": "/root/updated",
///     },
///     export_data_options={
///         "type": "Usage",
///         "time_frame": "WeekToDate",
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
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "examplecontainer",
///         StorageAccountName = exampleAccount.Name,
///     });
///
///     var exampleAccountCostManagementExport = new Azure.Billing.AccountCostManagementExport("example", new()
///     {
///         Name = "example",
///         BillingAccountId = "example",
///         RecurrenceType = "Monthly",
///         RecurrencePeriodStartDate = "2020-08-18T00:00:00Z",
///         RecurrencePeriodEndDate = "2020-09-18T00:00:00Z",
///         FileFormat = "Csv",
///         ExportDataStorageLocation = new Azure.Billing.Inputs.AccountCostManagementExportExportDataStorageLocationArgs
///         {
///             ContainerId = exampleContainer.Id,
///             RootFolderPath = "/root/updated",
///         },
///         ExportDataOptions = new Azure.Billing.Inputs.AccountCostManagementExportExportDataOptionsArgs
///         {
///             Type = "Usage",
///             TimeFrame = "WeekToDate",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/billing"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("example"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:               pulumi.String("examplecontainer"),
/// 			StorageAccountName: exampleAccount.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = billing.NewAccountCostManagementExport(ctx, "example", &billing.AccountCostManagementExportArgs{
/// 			Name:                      pulumi.String("example"),
/// 			BillingAccountId:          pulumi.String("example"),
/// 			RecurrenceType:            pulumi.String("Monthly"),
/// 			RecurrencePeriodStartDate: pulumi.String("2020-08-18T00:00:00Z"),
/// 			RecurrencePeriodEndDate:   pulumi.String("2020-09-18T00:00:00Z"),
/// 			FileFormat:                pulumi.String("Csv"),
/// 			ExportDataStorageLocation: &billing.AccountCostManagementExportExportDataStorageLocationArgs{
/// 				ContainerId:    exampleContainer.ID(),
/// 				RootFolderPath: pulumi.String("/root/updated"),
/// 			},
/// 			ExportDataOptions: &billing.AccountCostManagementExportExportDataOptionsArgs{
/// 				Type:      pulumi.String("Usage"),
/// 				TimeFrame: pulumi.String("WeekToDate"),
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
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "example"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_storage_container" "example" {
///   name                 = "examplecontainer"
///   storage_account_name = azure_storage_account.example.name
/// }
/// resource "azure_billing_accountcostmanagementexport" "example" {
///   name                         = "example"
///   billing_account_id           = "example"
///   recurrence_type              = "Monthly"
///   recurrence_period_start_date = "2020-08-18T00:00:00Z"
///   recurrence_period_end_date   = "2020-09-18T00:00:00Z"
///   file_format                  = "Csv"
///   export_data_storage_location = {
///     container_id     = azure_storage_container.example.id
///     root_folder_path = "/root/updated"
///   }
///   export_data_options = {
///     type       = "Usage"
///     time_frame = "WeekToDate"
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.billing.AccountCostManagementExport;
/// import com.pulumi.azure.billing.AccountCostManagementExportArgs;
/// import com.pulumi.azure.billing.inputs.AccountCostManagementExportExportDataStorageLocationArgs;
/// import com.pulumi.azure.billing.inputs.AccountCostManagementExportExportDataOptionsArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("examplecontainer")
///             .storageAccountName(exampleAccount.name())
///             .build());
///
///         var exampleAccountCostManagementExport = new AccountCostManagementExport("exampleAccountCostManagementExport", AccountCostManagementExportArgs.builder()
///             .name("example")
///             .billingAccountId("example")
///             .recurrenceType("Monthly")
///             .recurrencePeriodStartDate("2020-08-18T00:00:00Z")
///             .recurrencePeriodEndDate("2020-09-18T00:00:00Z")
///             .fileFormat("Csv")
///             .exportDataStorageLocation(AccountCostManagementExportExportDataStorageLocationArgs.builder()
///                 .containerId(exampleContainer.id())
///                 .rootFolderPath("/root/updated")
///                 .build())
///             .exportDataOptions(AccountCostManagementExportExportDataOptionsArgs.builder()
///                 .type("Usage")
///                 .timeFrame("WeekToDate")
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
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: examplecontainer
///       storageAccountName: ${exampleAccount.name}
///   exampleAccountCostManagementExport:
///     type: azure:billing:AccountCostManagementExport
///     name: example
///     properties:
///       name: example
///       billingAccountId: example
///       recurrenceType: Monthly
///       recurrencePeriodStartDate: 2020-08-18T00:00:00Z
///       recurrencePeriodEndDate: 2020-09-18T00:00:00Z
///       fileFormat: Csv
///       exportDataStorageLocation:
///         containerId: ${exampleContainer.id}
///         rootFolderPath: /root/updated
///       exportDataOptions:
///         type: Usage
///         timeFrame: WeekToDate
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.CostManagement` - 2023-08-01
///
/// ## Import
///
/// Billing Account Cost Management Exports can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:billing/accountCostManagementExport:AccountCostManagementExport example /providers/Microsoft.Billing/billingAccounts/12345678/providers/Microsoft.CostManagement/exports/export1
/// ```
class AccountCostManagementExport extends pulumi.CustomResource {
  /// Is the cost management export active? Default is `true`.
  late final pulumi.Output<bool?> active;
  /// The id of the billing account on which to create an export. Changing this forces a new resource to be created.
  late final pulumi.Output<String> billingAccountId;
  /// A `exportDataOptions` block as defined below.
  late final pulumi.Output<AccountCostManagementExportExportDataOptions> exportDataOptions;
  /// A `exportDataStorageLocation` block as defined below.
  late final pulumi.Output<AccountCostManagementExportExportDataStorageLocation> exportDataStorageLocation;
  /// Format for export. Valid values are `Csv` only. Default is `Csv`.
  late final pulumi.Output<String?> fileFormat;
  /// Specifies the name of the Cost Management Export. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The date the export will stop capturing information.
  late final pulumi.Output<String> recurrencePeriodEndDate;
  /// The date the export will start capturing information.
  late final pulumi.Output<String> recurrencePeriodStartDate;
  /// How often the requested information will be exported. Valid values include `Annually`, `Daily`, `Monthly`, `Weekly`.
  late final pulumi.Output<String> recurrenceType;

  /// Creates a new [AccountCostManagementExport].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountCostManagementExport]. {@macro pulumi_billing_account_cost_management_export_account_cost_management_export_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountCostManagementExport(
    String name, {
    AccountCostManagementExportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:billing/accountCostManagementExport:AccountCostManagementExport',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    active = registerOutput<bool?>('active');
    billingAccountId = registerOutput<String>('billingAccountId');
    exportDataOptions = registerOutput<AccountCostManagementExportExportDataOptions>('exportDataOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountCostManagementExportExportDataOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    exportDataStorageLocation = registerOutput<AccountCostManagementExportExportDataStorageLocation>('exportDataStorageLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountCostManagementExportExportDataStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fileFormat = registerOutput<String?>('fileFormat');
    this.name = registerOutput<String>('name');
    recurrencePeriodEndDate = registerOutput<String>('recurrencePeriodEndDate');
    recurrencePeriodStartDate = registerOutput<String>('recurrencePeriodStartDate');
    recurrenceType = registerOutput<String>('recurrenceType');
  }

  /// Gets an existing [AccountCostManagementExport] resource's state with the given [name] and [id].
  static AccountCostManagementExport get(
    String name,
    pulumi.Input<String> id, {
    AccountCostManagementExportState? state,
  }) {
    return AccountCostManagementExport._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccountCostManagementExport._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:billing/accountCostManagementExport:AccountCostManagementExport',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    active = registerOutput<bool?>('active');
    billingAccountId = registerOutput<String>('billingAccountId');
    exportDataOptions = registerOutput<AccountCostManagementExportExportDataOptions>('exportDataOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountCostManagementExportExportDataOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    exportDataStorageLocation = registerOutput<AccountCostManagementExportExportDataStorageLocation>('exportDataStorageLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountCostManagementExportExportDataStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fileFormat = registerOutput<String?>('fileFormat');
    this.name = registerOutput<String>('name');
    recurrencePeriodEndDate = registerOutput<String>('recurrencePeriodEndDate');
    recurrencePeriodStartDate = registerOutput<String>('recurrencePeriodStartDate');
    recurrenceType = registerOutput<String>('recurrenceType');
  }
}
