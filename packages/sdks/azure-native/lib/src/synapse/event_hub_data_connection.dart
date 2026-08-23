import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_hub_data_connection_args.dart';
import 'system_data_response.dart';

/// Class representing an event hub data connection.
///
/// Uses Azure REST API version 2021-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KustoPoolDataConnectionsCreateOrUpdate.json
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eventHubDataConnection = new AzureNative.Synapse.EventHubDataConnection("eventHubDataConnection", new()
///     {
///         ConsumerGroup = "testConsumerGroup1",
///         DataConnectionName = "DataConnections8",
///         DatabaseName = "KustoDatabase8",
///         EventHubResourceId = "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest1",
///         Kind = "EventHub",
///         KustoPoolName = "kustoclusterrptest4",
///         Location = "westus",
///         ResourceGroupName = "kustorptest",
///         WorkspaceName = "synapseWorkspaceName",
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
/// 	synapse "github.com/pulumi/pulumi-azure-native-sdk/synapse/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synapse.NewEventHubDataConnection(ctx, "eventHubDataConnection", &synapse.EventHubDataConnectionArgs{
/// 			ConsumerGroup:      pulumi.String("testConsumerGroup1"),
/// 			DataConnectionName: pulumi.String("DataConnections8"),
/// 			DatabaseName:       pulumi.String("KustoDatabase8"),
/// 			EventHubResourceId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest1"),
/// 			Kind:               pulumi.String("EventHub"),
/// 			KustoPoolName:      pulumi.String("kustoclusterrptest4"),
/// 			Location:           pulumi.String("westus"),
/// 			ResourceGroupName:  pulumi.String("kustorptest"),
/// 			WorkspaceName:      pulumi.String("synapseWorkspaceName"),
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
/// resource "azure-native_synapse_eventhubdataconnection" "eventHubDataConnection" {
///   consumer_group        = "testConsumerGroup1"
///   data_connection_name  = "DataConnections8"
///   database_name         = "KustoDatabase8"
///   event_hub_resource_id = "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest1"
///   kind                  = "EventHub"
///   kusto_pool_name       = "kustoclusterrptest4"
///   location              = "westus"
///   resource_group_name   = "kustorptest"
///   workspace_name        = "synapseWorkspaceName"
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
/// import com.pulumi.azurenative.synapse.EventHubDataConnection;
/// import com.pulumi.azurenative.synapse.EventHubDataConnectionArgs;
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
///         var eventHubDataConnection = new EventHubDataConnection("eventHubDataConnection", EventHubDataConnectionArgs.builder()
///             .consumerGroup("testConsumerGroup1")
///             .dataConnectionName("DataConnections8")
///             .databaseName("KustoDatabase8")
///             .eventHubResourceId("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest1")
///             .kind("EventHub")
///             .kustoPoolName("kustoclusterrptest4")
///             .location("westus")
///             .resourceGroupName("kustorptest")
///             .workspaceName("synapseWorkspaceName")
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
/// const eventHubDataConnection = new azure_native.synapse.EventHubDataConnection("eventHubDataConnection", {
///     consumerGroup: "testConsumerGroup1",
///     dataConnectionName: "DataConnections8",
///     databaseName: "KustoDatabase8",
///     eventHubResourceId: "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest1",
///     kind: "EventHub",
///     kustoPoolName: "kustoclusterrptest4",
///     location: "westus",
///     resourceGroupName: "kustorptest",
///     workspaceName: "synapseWorkspaceName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// event_hub_data_connection = azure_native.synapse.EventHubDataConnection("eventHubDataConnection",
///     consumer_group="testConsumerGroup1",
///     data_connection_name="DataConnections8",
///     database_name="KustoDatabase8",
///     event_hub_resource_id="/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest1",
///     kind="EventHub",
///     kusto_pool_name="kustoclusterrptest4",
///     location="westus",
///     resource_group_name="kustorptest",
///     workspace_name="synapseWorkspaceName")
///
/// ```
///
/// ```yaml
/// resources:
///   eventHubDataConnection:
///     type: azure-native:synapse:EventHubDataConnection
///     properties:
///       consumerGroup: testConsumerGroup1
///       dataConnectionName: DataConnections8
///       databaseName: KustoDatabase8
///       eventHubResourceId: /subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest1
///       kind: EventHub
///       kustoPoolName: kustoclusterrptest4
///       location: westus
///       resourceGroupName: kustorptest
///       workspaceName: synapseWorkspaceName
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
/// $ pulumi import azure-native:synapse:EventHubDataConnection KustoClusterRPTest4/KustoDatabase8/DataConnections8 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/kustoPools/{kustoPoolName}/databases/{databaseName}/dataConnections/{dataConnectionName}
/// ```
class EventHubDataConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The event hub messages compression type
  late final pulumi.Output<String?> compression;
  /// The event hub consumer group.
  late final pulumi.Output<String> consumerGroup;
  /// The data format of the message. Optionally the data format can be added to each message.
  late final pulumi.Output<String?> dataFormat;
  /// The resource ID of the event hub to be used to create a data connection.
  late final pulumi.Output<String> eventHubResourceId;
  /// System properties of the event hub
  late final pulumi.Output<List<String>?> eventSystemProperties;
  /// Kind of the endpoint for the data connection
  /// Expected value is 'EventHub'.
  late final pulumi.Output<String> kind;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub.
  late final pulumi.Output<String?> managedIdentityResourceId;
  /// The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  late final pulumi.Output<String?> mappingRuleName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioned state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The table where the data should be ingested. Optionally the table information can be added to each message.
  late final pulumi.Output<String?> tableName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EventHubDataConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventHubDataConnection]. {@macro pulumi_synapse_event_hub_data_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventHubDataConnection(
    String name, {
    EventHubDataConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:synapse:EventHubDataConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    compression = registerOutput<String?>('compression');
    consumerGroup = registerOutput<String>('consumerGroup');
    dataFormat = registerOutput<String?>('dataFormat');
    eventHubResourceId = registerOutput<String>('eventHubResourceId');
    eventSystemProperties = registerOutput<List<String>?>('eventSystemProperties');
    kind = registerOutput<String>('kind');
    location = registerOutput<String?>('location');
    managedIdentityResourceId = registerOutput<String?>('managedIdentityResourceId');
    mappingRuleName = registerOutput<String?>('mappingRuleName');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableName = registerOutput<String?>('tableName');
    type = registerOutput<String>('type');
  }
}
