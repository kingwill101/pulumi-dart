import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_workspace_args.dart';
import 'analytics_workspace_identity.dart';
import 'analytics_workspace_state.dart';

/// Manages a Log Analytics (formally Operational Insights) Workspace.
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
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
///     retentionInDays: 30,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018",
///     retention_in_days=30)
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
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///         RetentionInDays = 30,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
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
/// 		_, err = operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 			RetentionInDays:   pulumi.Int(30),
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
/// resource "azure_operationalinsights_analyticsworkspace" "example" {
///   name                = "example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "PerGB2018"
///   retention_in_days   = 30
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
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
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
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .retentionInDays(30)
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
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///       retentionInDays: 30
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.OperationalInsights` - 2023-09-01, 2020-08-01
///
/// ## Import
///
/// Log Analytics Workspaces can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:operationalinsights/analyticsWorkspace:AnalyticsWorkspace workspace1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.OperationalInsights/workspaces/workspace1
/// ```
class AnalyticsWorkspace extends pulumi.CustomResource {
  /// Specifies if the log Analytics Workspace allows users accessing to data associated with the resources they have permission to view, without permission to workspace. Defaults to `true`.
  late final pulumi.Output<bool?> allowResourceOnlyPermissions;
  /// Is Customer Managed Storage mandatory for query management?
  late final pulumi.Output<bool?> cmkForQueryForced;
  /// The workspace daily quota for ingestion in GB. Defaults to `-1` (unlimited) if omitted.
  late final pulumi.Output<double?> dailyQuotaGb;
  /// The ID of the Data Collection Rule to use for this workspace.
  late final pulumi.Output<String?> dataCollectionRuleId;
  /// An `identity` block as defined below.
  late final pulumi.Output<AnalyticsWorkspaceIdentity?> identity;
  /// Whether to remove the data in the Log Analytics Workspace immediately after 30 days.
  late final pulumi.Output<bool?> immediateDataPurgeOn30DaysEnabled;
  /// Should the Log Analytics Workspace support ingestion over the Public Internet? Defaults to `true`.
  late final pulumi.Output<bool?> internetIngestionEnabled;
  /// Should the Log Analytics Workspace support querying over the Public Internet? Defaults to `true`.
  late final pulumi.Output<bool?> internetQueryEnabled;
  late final pulumi.Output<bool> localAuthenticationDisabled;
  /// Specifies if the log Analytics workspace should allow local authentication methods in addition to Microsoft Entra (Azure AD). Defaults to `true`.
  late final pulumi.Output<bool> localAuthenticationEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Log Analytics Workspace. Workspace name should include 4-63 letters, digits or '-'. The '-' shouldn't be the first or the last symbol. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The Primary shared key for the Log Analytics Workspace.
  late final pulumi.Output<String> primarySharedKey;
  /// The capacity reservation level in GB for this workspace. Possible values are `100`, `200`, `300`, `400`, `500`, `1000`, `2000`, `5000`, `10000`, `25000`, and `50000`.
  ///
  /// &gt; **Note:** `reservationCapacityInGbPerDay` can only be used when the `sku` is set to `CapacityReservation`.
  late final pulumi.Output<int?> reservationCapacityInGbPerDay;
  /// The name of the resource group in which the Log Analytics workspace is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The workspace data retention in days. Possible values are between `30` and `730`.
  late final pulumi.Output<int> retentionInDays;
  /// The Secondary shared key for the Log Analytics Workspace.
  late final pulumi.Output<String> secondarySharedKey;
  /// Specifies the SKU of the Log Analytics Workspace. Possible values are `PerGB2018`, `PerNode`, `Premium`, `Standalone`, `Standard`, `CapacityReservation`, `LACluster` and `Unlimited`. Defaults to `PerGB2018`.
  ///
  /// &gt; **Note:** `sku` should only be set to `LACluster` when the Log Analytics Workspace is linked to a Log Analytics Cluster. Additionally, `sku` cannot be modified while linked.
  ///
  /// &gt; **Note:** Changing `sku` forces a new Log Analytics Workspace to be created, except when changing between `PerGB2018` and `CapacityReservation`. Changing `sku` to `CapacityReservation` or changing `reservationCapacityInGbPerDay` to a higher tier will lead to a 31-days commitment period, during which the SKU cannot be changed to a lower one. Please refer to [official documentation](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/cost-logs#commitment-tiers) for further information.
  ///
  /// &gt; **Note:** A new pricing model took effect on `2018-04-03`, which requires the SKU `PerGB2018`. If you've provisioned resources before this date you have the option of remaining with the previous Pricing SKU and using the other SKUs defined above. More information about [the Pricing SKUs is available at the following URI](https://aka.ms/PricingTierWarning).
  late final pulumi.Output<String> sku;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The Workspace (or Customer) ID for the Log Analytics Workspace.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [AnalyticsWorkspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AnalyticsWorkspace]. {@macro pulumi_operationalinsights_analytics_workspace_analytics_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AnalyticsWorkspace(
    String name, {
    AnalyticsWorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:operationalinsights/analyticsWorkspace:AnalyticsWorkspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowResourceOnlyPermissions = registerOutput<bool?>('allowResourceOnlyPermissions');
    cmkForQueryForced = registerOutput<bool?>('cmkForQueryForced');
    dailyQuotaGb = registerOutput<double?>('dailyQuotaGb');
    dataCollectionRuleId = registerOutput<String?>('dataCollectionRuleId');
    identity = registerOutput<AnalyticsWorkspaceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnalyticsWorkspaceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    immediateDataPurgeOn30DaysEnabled = registerOutput<bool?>('immediateDataPurgeOn30DaysEnabled');
    internetIngestionEnabled = registerOutput<bool?>('internetIngestionEnabled');
    internetQueryEnabled = registerOutput<bool?>('internetQueryEnabled');
    localAuthenticationDisabled = registerOutput<bool>('localAuthenticationDisabled');
    localAuthenticationEnabled = registerOutput<bool>('localAuthenticationEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    primarySharedKey = registerOutput<String>('primarySharedKey');
    reservationCapacityInGbPerDay = registerOutput<int?>('reservationCapacityInGbPerDay');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retentionInDays = registerOutput<int>('retentionInDays');
    secondarySharedKey = registerOutput<String>('secondarySharedKey');
    sku = registerOutput<String>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [AnalyticsWorkspace] resource's state with the given [name] and [id].
  static AnalyticsWorkspace get(
    String name,
    pulumi.Input<String> id, {
    AnalyticsWorkspaceState? state,
  }) {
    return AnalyticsWorkspace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AnalyticsWorkspace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:operationalinsights/analyticsWorkspace:AnalyticsWorkspace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowResourceOnlyPermissions = registerOutput<bool?>('allowResourceOnlyPermissions');
    cmkForQueryForced = registerOutput<bool?>('cmkForQueryForced');
    dailyQuotaGb = registerOutput<double?>('dailyQuotaGb');
    dataCollectionRuleId = registerOutput<String?>('dataCollectionRuleId');
    identity = registerOutput<AnalyticsWorkspaceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnalyticsWorkspaceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    immediateDataPurgeOn30DaysEnabled = registerOutput<bool?>('immediateDataPurgeOn30DaysEnabled');
    internetIngestionEnabled = registerOutput<bool?>('internetIngestionEnabled');
    internetQueryEnabled = registerOutput<bool?>('internetQueryEnabled');
    localAuthenticationDisabled = registerOutput<bool>('localAuthenticationDisabled');
    localAuthenticationEnabled = registerOutput<bool>('localAuthenticationEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    primarySharedKey = registerOutput<String>('primarySharedKey');
    reservationCapacityInGbPerDay = registerOutput<int?>('reservationCapacityInGbPerDay');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retentionInDays = registerOutput<int>('retentionInDays');
    secondarySharedKey = registerOutput<String>('secondarySharedKey');
    sku = registerOutput<String>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
    workspaceId = registerOutput<String>('workspaceId');
  }
}
