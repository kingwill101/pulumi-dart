import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_pack_query_args.dart';
import 'query_pack_query_state.dart';

/// Manages a Log Analytics Query Pack Query.
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
/// const exampleQueryPack = new azure.loganalytics.QueryPack("example", {
///     name: "example-laqp",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleQueryPackQuery = new azure.operationalinsights.QueryPackQuery("example", {
///     name: "19952bc3-0bf9-49eb-b713-6b80e7a41847",
///     queryPackId: exampleQueryPack.id,
///     body: `let newExceptionsTimeRange = 1d;
/// let timeRangeToCheckBefore = 7d;
/// exceptions
/// | where timestamp < ago(timeRangeToCheckBefore)
/// | summarize count() by problemId
/// | join kind= rightanti (
/// exceptions
/// | where timestamp >= ago(newExceptionsTimeRange)
/// | extend stack = tostring(details[0].rawStack)
/// | summarize count(), dcount(user_AuthenticatedId), min(timestamp), max(timestamp), any(stack) by problemId
/// ) on problemId
/// | order by  count_ desc
/// `,
///     displayName: "Exceptions - New in the last 24 hours",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_query_pack = azure.loganalytics.QueryPack("example",
///     name="example-laqp",
///     resource_group_name=example.name,
///     location=example.location)
/// example_query_pack_query = azure.operationalinsights.QueryPackQuery("example",
///     name="19952bc3-0bf9-49eb-b713-6b80e7a41847",
///     query_pack_id=example_query_pack.id,
///     body="""let newExceptionsTimeRange = 1d;
/// let timeRangeToCheckBefore = 7d;
/// exceptions
/// | where timestamp < ago(timeRangeToCheckBefore)
/// | summarize count() by problemId
/// | join kind= rightanti (
/// exceptions
/// | where timestamp >= ago(newExceptionsTimeRange)
/// | extend stack = tostring(details[0].rawStack)
/// | summarize count(), dcount(user_AuthenticatedId), min(timestamp), max(timestamp), any(stack) by problemId
/// ) on problemId
/// | order by  count_ desc
/// """,
///     display_name="Exceptions - New in the last 24 hours")
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
///     var exampleQueryPack = new Azure.LogAnalytics.QueryPack("example", new()
///     {
///         Name = "example-laqp",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleQueryPackQuery = new Azure.OperationalInsights.QueryPackQuery("example", new()
///     {
///         Name = "19952bc3-0bf9-49eb-b713-6b80e7a41847",
///         QueryPackId = exampleQueryPack.Id,
///         Body = @"let newExceptionsTimeRange = 1d;
/// let timeRangeToCheckBefore = 7d;
/// exceptions
/// | where timestamp < ago(timeRangeToCheckBefore)
/// | summarize count() by problemId
/// | join kind= rightanti (
/// exceptions
/// | where timestamp >= ago(newExceptionsTimeRange)
/// | extend stack = tostring(details[0].rawStack)
/// | summarize count(), dcount(user_AuthenticatedId), min(timestamp), max(timestamp), any(stack) by problemId
/// ) on problemId
/// | order by  count_ desc
/// ",
///         DisplayName = "Exceptions - New in the last 24 hours",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/loganalytics"
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
/// 		exampleQueryPack, err := loganalytics.NewQueryPack(ctx, "example", &loganalytics.QueryPackArgs{
/// 			Name:              pulumi.String("example-laqp"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = operationalinsights.NewQueryPackQuery(ctx, "example", &operationalinsights.QueryPackQueryArgs{
/// 			Name:        pulumi.String("19952bc3-0bf9-49eb-b713-6b80e7a41847"),
/// 			QueryPackId: exampleQueryPack.ID(),
/// 			Body: pulumi.String(`let newExceptionsTimeRange = 1d;
/// let timeRangeToCheckBefore = 7d;
/// exceptions
/// | where timestamp < ago(timeRangeToCheckBefore)
/// | summarize count() by problemId
/// | join kind= rightanti (
/// exceptions
/// | where timestamp >= ago(newExceptionsTimeRange)
/// | extend stack = tostring(details[0].rawStack)
/// | summarize count(), dcount(user_AuthenticatedId), min(timestamp), max(timestamp), any(stack) by problemId
/// ) on problemId
/// | order by  count_ desc
/// `),
/// 			DisplayName: pulumi.String("Exceptions - New in the last 24 hours"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.azure.loganalytics.QueryPack;
/// import com.pulumi.azure.loganalytics.QueryPackArgs;
/// import com.pulumi.azure.operationalinsights.QueryPackQuery;
/// import com.pulumi.azure.operationalinsights.QueryPackQueryArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleQueryPack = new QueryPack("exampleQueryPack", QueryPackArgs.builder()
///             .name("example-laqp")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleQueryPackQuery = new QueryPackQuery("exampleQueryPackQuery", QueryPackQueryArgs.builder()
///             .name("19952bc3-0bf9-49eb-b713-6b80e7a41847")
///             .queryPackId(exampleQueryPack.id())
///             .body("""
/// let newExceptionsTimeRange = 1d;
/// let timeRangeToCheckBefore = 7d;
/// exceptions
/// | where timestamp < ago(timeRangeToCheckBefore)
/// | summarize count() by problemId
/// | join kind= rightanti (
/// exceptions
/// | where timestamp >= ago(newExceptionsTimeRange)
/// | extend stack = tostring(details[0].rawStack)
/// | summarize count(), dcount(user_AuthenticatedId), min(timestamp), max(timestamp), any(stack) by problemId
/// ) on problemId
/// | order by  count_ desc
///             """)
///             .displayName("Exceptions - New in the last 24 hours")
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
///   exampleQueryPack:
///     type: azure:loganalytics:QueryPack
///     name: example
///     properties:
///       name: example-laqp
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleQueryPackQuery:
///     type: azure:operationalinsights:QueryPackQuery
///     name: example
///     properties:
///       name: 19952bc3-0bf9-49eb-b713-6b80e7a41847
///       queryPackId: ${exampleQueryPack.id}
///       body: "let newExceptionsTimeRange = 1d;\nlet timeRangeToCheckBefore = 7d;\nexceptions\n| where timestamp < ago(timeRangeToCheckBefore)\n| summarize count() by problemId\n| join kind= rightanti (\nexceptions\n| where timestamp >= ago(newExceptionsTimeRange)\n| extend stack = tostring(details[0].rawStack)\n| summarize count(), dcount(user_AuthenticatedId), min(timestamp), max(timestamp), any(stack) by problemId  \n) on problemId \n| order by  count_ desc\n"
///       displayName: Exceptions - New in the last 24 hours
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.OperationalInsights` - 2019-09-01
///
/// ## Import
///
/// Log Analytics Query Pack Queries can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:operationalinsights/queryPackQuery:QueryPackQuery example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.OperationalInsights/queryPacks/queryPack1/queries/15b49e87-8555-4d92-8a7b-2014b469a9df
/// ```
class QueryPackQuery extends pulumi.CustomResource {
  /// The additional properties that can be set for the Log Analytics Query Pack Query.
  late final pulumi.Output<String?> additionalSettingsJson;

  /// The body of the Log Analytics Query Pack Query.
  late final pulumi.Output<String> body;

  /// A list of the related categories for the function. Possible values are `applications`, `audit`, `container`, `databases`, `desktopanalytics`, `management`, `monitor`, `network`, `resources`, `security`, `virtualmachines`, `windowsvirtualdesktop` and `workloads`.
  late final pulumi.Output<List<String>?> categories;

  /// The description of the Log Analytics Query Pack Query.
  late final pulumi.Output<String?> description;

  /// The unique display name for the query within the Log Analytics Query Pack.
  late final pulumi.Output<String> displayName;

  /// An unique UUID/GUID which identifies this Log Analytics Query Pack Query - one will be generated if not specified. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The ID of the Log Analytics Query Pack. Changing this forces a new resource to be created.
  late final pulumi.Output<String> queryPackId;

  /// A list of the related resource types for the function. Possible values are `default`, `microsoft.aad/domainservices`, `microsoft.aadiam/tenants`, `microsoft.agfoodplatform/farmbeats`, `microsoft.analysisservices/servers`, `microsoft.apimanagement/service`, `microsoft.appconfiguration/configurationstores`, `microsoft.appplatform/spring`, `microsoft.attestation/attestationproviders`, `microsoft.authorization/tenants`, `microsoft.automation/automationaccounts`, `microsoft.autonomousdevelopmentplatform/accounts`, `microsoft.azurestackhci/virtualmachines`, `microsoft.batch/batchaccounts`, `microsoft.blockchain/blockchainmembers`, `microsoft.botservice/botservices`, `microsoft.cache/redis`, `microsoft.cdn/profiles`, `microsoft.cognitiveservices/accounts`, `microsoft.communication/communicationservices`, `microsoft.compute/virtualmachines`, `microsoft.compute/virtualmachinescalesets`, `microsoft.connectedcache/cachenodes`, `microsoft.connectedvehicle/platformaccounts`, `microsoft.conenctedvmwarevsphere/virtualmachines`, `microsoft.containerregistry/registries`, `microsoft.containerservice/managedclusters`, `microsoft.d365customerinsights/instances`, `microsoft.dashboard/grafana`, `microsoft.databricks/workspaces`, `microsoft.datacollaboration/workspaces`, `microsoft.datafactory/factories`, `microsoft.datalakeanalytics/accounts`, `microsoft.datalakestore/accounts`, `microsoft.datashare/accounts`, `microsoft.dbformariadb/servers`, `microsoft.dbformysql/servers`, `microsoft.dbforpostgresql/flexibleservers`, `microsoft.dbforpostgresql/servers`, `microsoft.dbforpostgresql/serversv2`, `microsoft.digitaltwins/digitaltwinsinstances`, `microsoft.documentdb/cassandraclusters`, `microsoft.documentdb/databaseaccounts`, `microsoft.desktopvirtualization/applicationgroups`, `microsoft.desktopvirtualization/hostpools`, `microsoft.desktopvirtualization/workspaces`, `microsoft.devices/iothubs`, `microsoft.devices/provisioningservices`, `microsoft.dynamics/fraudprotection/purchase`, `microsoft.eventgrid/domains`, `microsoft.eventgrid/topics`, `microsoft.eventgrid/partnernamespaces`, `microsoft.eventgrid/partnertopics`, `microsoft.eventgrid/systemtopics`, `microsoft.eventhub/namespaces`, `microsoft.experimentation/experimentworkspaces`, `microsoft.hdinsight/clusters`, `microsoft.healthcareapis/services`, `microsoft.informationprotection/datasecuritymanagement`, `microsoft.intune/operations`, `microsoft.insights/autoscalesettings`, `microsoft.insights/components`, `microsoft.insights/workloadmonitoring`, `microsoft.keyvault/vaults`, `microsoft.kubernetes/connectedclusters`, `microsoft.kusto/clusters`, `microsoft.loadtestservice/loadtests`, `microsoft.logic/workflows`, `microsoft.machinelearningservices/workspaces`, `microsoft.media/mediaservices`, `microsoft.netapp/netappaccounts/capacitypools`, `microsoft.network/applicationgateways`, `microsoft.network/azurefirewalls`, `microsoft.network/bastionhosts`, `microsoft.network/expressroutecircuits`, `microsoft.network/frontdoors`, `microsoft.network/loadbalancers`, `microsoft.network/networkinterfaces`, `microsoft.network/networksecuritygroups`, `microsoft.network/networksecurityperimeters`, `microsoft.network/networkwatchers/connectionmonitors`, `microsoft.network/networkwatchers/trafficanalytics`, `microsoft.network/publicipaddresses`, `microsoft.network/trafficmanagerprofiles`, `microsoft.network/virtualnetworks`, `microsoft.network/virtualnetworkgateways`, `microsoft.network/vpngateways`, `microsoft.networkfunction/azuretrafficcollectors`, `microsoft.openenergyplatform/energyservices`, `microsoft.openlogisticsplatform/workspaces`, `microsoft.operationalinsights/workspaces`, `microsoft.powerbi/tenants`, `microsoft.powerbi/tenants/workspaces`, `microsoft.powerbidedicated/capacities`, `microsoft.purview/accounts`, `microsoft.recoveryservices/vaults`, `microsoft.resources/azureactivity`, `microsoft.scvmm/virtualmachines`, `microsoft.search/searchservices`, `microsoft.security/antimalwaresettings`, `microsoft.securityinsights/amazon`, `microsoft.securityinsights/anomalies`, `microsoft.securityinsights/cef`, `microsoft.securityinsights/datacollection`, `microsoft.securityinsights/dnsnormalized`, `microsoft.securityinsights/mda`, `microsoft.securityinsights/mde`, `microsoft.securityinsights/mdi`, `microsoft.securityinsights/mdo`, `microsoft.securityinsights/networksessionnormalized`, `microsoft.securityinsights/office365`, `microsoft.securityinsights/purview`, `microsoft.securityinsights/securityinsights`, `microsoft.securityinsights/securityinsights/mcas`, `microsoft.securityinsights/tvm`, `microsoft.securityinsights/watchlists`, `microsoft.servicebus/namespaces`, `microsoft.servicefabric/clusters`, `microsoft.signalrservice/signalr`, `microsoft.signalrservice/webpubsub`, `microsoft.sql/managedinstances`, `microsoft.sql/servers`, `microsoft.sql/servers/databases`, `microsoft.storage/storageaccounts`, `microsoft.storagecache/caches`, `microsoft.streamanalytics/streamingjobs`, `microsoft.synapse/workspaces`, `microsoft.timeseriesinsights/environments`, `microsoft.videoindexer/accounts`, `microsoft.web/sites`, `microsoft.workloadmonitor/monitors`, `resourcegroup` and `subscription`.
  late final pulumi.Output<List<String>?> resourceTypes;

  /// A list of the related Log Analytics solutions for the function. Possible values are `AADDomainServices`, `ADAssessment`, `ADAssessmentPlus`, `ADReplication`, `ADSecurityAssessment`, `AlertManagement`, `AntiMalware`, `ApplicationInsights`, `AzureAssessment`, `AzureSecurityOfThings`, `AzureSentinelDSRE`, `AzureSentinelPrivatePreview`, `BehaviorAnalyticsInsights`, `ChangeTracking`, `CompatibilityAssessment`, `ContainerInsights`, `Containers`, `CustomizedWindowsEventsFiltering`, `DeviceHealthProd`, `DnsAnalytics`, `ExchangeAssessment`, `ExchangeOnlineAssessment`, `IISAssessmentPlus`, `InfrastructureInsights`, `InternalWindowsEvent`, `LogManagement`, `Microsoft365Analytics`, `NetworkMonitoring`, `SCCMAssessmentPlus`, `SCOMAssessment`, `SCOMAssessmentPlus`, `Security`, `SecurityCenter`, `SecurityCenterFree`, `SecurityInsights`, `ServiceMap`, `SfBAssessment`, `SfBOnlineAssessment`, `SharePointOnlineAssessment`, `SPAssessment`, `SQLAdvancedThreatProtection`, `SQLAssessment`, `SQLAssessmentPlus`, `SQLDataClassification`, `SQLThreatDetection`, `SQLVulnerabilityAssessment`, `SurfaceHub`, `Updates`, `VMInsights`, `WEFInternalUat`, `WEF_10x`, `WEF_10xDSRE`, `WaaSUpdateInsights`, `WinLog`, `WindowsClientAssessmentPlus`, `WindowsEventForwarding`, `WindowsFirewall`, `WindowsServerAssessment`, `WireData` and `WireData2`.
  late final pulumi.Output<List<String>?> solutions;

  /// A mapping of tags which should be assigned to the Log Analytics Query Pack Query.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [QueryPackQuery].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QueryPackQuery]. {@macro pulumi_operationalinsights_query_pack_query_query_pack_query_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QueryPackQuery(
    String name, {
    QueryPackQueryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:operationalinsights/queryPackQuery:QueryPackQuery',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    additionalSettingsJson = registerOutput<String?>('additionalSettingsJson');
    body = registerOutput<String>('body');
    categories = registerOutput<List<String>?>('categories');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    queryPackId = registerOutput<String>('queryPackId');
    resourceTypes = registerOutput<List<String>?>('resourceTypes');
    solutions = registerOutput<List<String>?>('solutions');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [QueryPackQuery] resource's state with the given [name] and [id].
  static QueryPackQuery get(
    String name,
    pulumi.Input<String> id, {
    QueryPackQueryState? state,
  }) {
    return QueryPackQuery._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  QueryPackQuery._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:operationalinsights/queryPackQuery:QueryPackQuery',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    additionalSettingsJson = registerOutput<String?>('additionalSettingsJson');
    body = registerOutput<String>('body');
    categories = registerOutput<List<String>?>('categories');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    queryPackId = registerOutput<String>('queryPackId');
    resourceTypes = registerOutput<List<String>?>('resourceTypes');
    solutions = registerOutput<List<String>?>('solutions');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
