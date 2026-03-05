import 'package:pulumi/pulumi.dart' as pulumi;
import 'credentials_response.dart';
import 'kafka_configuration_args.dart';
import 'proxy_resource_response_system_data.dart';

/// The configuration of the event streaming service resource attached to the Purview account for kafka notifications.
///
/// Uses Azure REST API version 2024-04-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-12-01.
///
/// Other available API versions: 2021-12-01, 2023-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native purview [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KafkaConfigurations_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kafkaConfiguration = new AzureNative.Purview.KafkaConfiguration("kafkaConfiguration", new()
///     {
///         AccountName = "account1",
///         ConsumerGroup = "consumerGroup",
///         Credentials = new AzureNative.Purview.Inputs.CredentialsArgs
///         {
///             IdentityId = "/subscriptions/47e8596d-ee73-4eb2-b6b4-cc13c2b87ssd/resourceGroups/testRG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testId",
///             Type = AzureNative.Purview.KafkaConfigurationIdentityType.UserAssigned,
///         },
///         EventHubPartitionId = "partitionId",
///         EventHubResourceId = "/subscriptions/225be6fe-ec1c-4d51-a368-f69348d2e6c5/resourceGroups/testRG/providers/Microsoft.EventHub/namespaces/eventHubNameSpaceName",
///         EventHubType = AzureNative.Purview.EventHubType.Notification,
///         EventStreamingState = AzureNative.Purview.EventStreamingState.Enabled,
///         EventStreamingType = AzureNative.Purview.EventStreamingType.Azure,
///         KafkaConfigurationName = "kafkaConfigName",
///         ResourceGroupName = "rgpurview",
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
/// 	purview "github.com/pulumi/pulumi-azure-native-sdk/purview/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := purview.NewKafkaConfiguration(ctx, "kafkaConfiguration", &purview.KafkaConfigurationArgs{
/// 			AccountName:   pulumi.String("account1"),
/// 			ConsumerGroup: pulumi.String("consumerGroup"),
/// 			Credentials: &purview.CredentialsArgs{
/// 				IdentityId: pulumi.String("/subscriptions/47e8596d-ee73-4eb2-b6b4-cc13c2b87ssd/resourceGroups/testRG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testId"),
/// 				Type:       pulumi.String(purview.KafkaConfigurationIdentityTypeUserAssigned),
/// 			},
/// 			EventHubPartitionId:    pulumi.String("partitionId"),
/// 			EventHubResourceId:     pulumi.String("/subscriptions/225be6fe-ec1c-4d51-a368-f69348d2e6c5/resourceGroups/testRG/providers/Microsoft.EventHub/namespaces/eventHubNameSpaceName"),
/// 			EventHubType:           pulumi.String(purview.EventHubTypeNotification),
/// 			EventStreamingState:    pulumi.String(purview.EventStreamingStateEnabled),
/// 			EventStreamingType:     pulumi.String(purview.EventStreamingTypeAzure),
/// 			KafkaConfigurationName: pulumi.String("kafkaConfigName"),
/// 			ResourceGroupName:      pulumi.String("rgpurview"),
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
/// import com.pulumi.azurenative.purview.KafkaConfiguration;
/// import com.pulumi.azurenative.purview.KafkaConfigurationArgs;
/// import com.pulumi.azurenative.purview.inputs.CredentialsArgs;
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
///         var kafkaConfiguration = new KafkaConfiguration("kafkaConfiguration", KafkaConfigurationArgs.builder()
///             .accountName("account1")
///             .consumerGroup("consumerGroup")
///             .credentials(CredentialsArgs.builder()
///                 .identityId("/subscriptions/47e8596d-ee73-4eb2-b6b4-cc13c2b87ssd/resourceGroups/testRG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testId")
///                 .type("UserAssigned")
///                 .build())
///             .eventHubPartitionId("partitionId")
///             .eventHubResourceId("/subscriptions/225be6fe-ec1c-4d51-a368-f69348d2e6c5/resourceGroups/testRG/providers/Microsoft.EventHub/namespaces/eventHubNameSpaceName")
///             .eventHubType("Notification")
///             .eventStreamingState("Enabled")
///             .eventStreamingType("Azure")
///             .kafkaConfigurationName("kafkaConfigName")
///             .resourceGroupName("rgpurview")
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
/// const kafkaConfiguration = new azure_native.purview.KafkaConfiguration("kafkaConfiguration", {
///     accountName: "account1",
///     consumerGroup: "consumerGroup",
///     credentials: {
///         identityId: "/subscriptions/47e8596d-ee73-4eb2-b6b4-cc13c2b87ssd/resourceGroups/testRG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testId",
///         type: azure_native.purview.KafkaConfigurationIdentityType.UserAssigned,
///     },
///     eventHubPartitionId: "partitionId",
///     eventHubResourceId: "/subscriptions/225be6fe-ec1c-4d51-a368-f69348d2e6c5/resourceGroups/testRG/providers/Microsoft.EventHub/namespaces/eventHubNameSpaceName",
///     eventHubType: azure_native.purview.EventHubType.Notification,
///     eventStreamingState: azure_native.purview.EventStreamingState.Enabled,
///     eventStreamingType: azure_native.purview.EventStreamingType.Azure,
///     kafkaConfigurationName: "kafkaConfigName",
///     resourceGroupName: "rgpurview",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// kafka_configuration = azure_native.purview.KafkaConfiguration("kafkaConfiguration",
///     account_name="account1",
///     consumer_group="consumerGroup",
///     credentials={
///         "identity_id": "/subscriptions/47e8596d-ee73-4eb2-b6b4-cc13c2b87ssd/resourceGroups/testRG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testId",
///         "type": azure_native.purview.KafkaConfigurationIdentityType.USER_ASSIGNED,
///     },
///     event_hub_partition_id="partitionId",
///     event_hub_resource_id="/subscriptions/225be6fe-ec1c-4d51-a368-f69348d2e6c5/resourceGroups/testRG/providers/Microsoft.EventHub/namespaces/eventHubNameSpaceName",
///     event_hub_type=azure_native.purview.EventHubType.NOTIFICATION,
///     event_streaming_state=azure_native.purview.EventStreamingState.ENABLED,
///     event_streaming_type=azure_native.purview.EventStreamingType.AZURE,
///     kafka_configuration_name="kafkaConfigName",
///     resource_group_name="rgpurview")
///
/// ```
///
/// ```yaml
/// resources:
///   kafkaConfiguration:
///     type: azure-native:purview:KafkaConfiguration
///     properties:
///       accountName: account1
///       consumerGroup: consumerGroup
///       credentials:
///         identityId: /subscriptions/47e8596d-ee73-4eb2-b6b4-cc13c2b87ssd/resourceGroups/testRG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testId
///         type: UserAssigned
///       eventHubPartitionId: partitionId
///       eventHubResourceId: /subscriptions/225be6fe-ec1c-4d51-a368-f69348d2e6c5/resourceGroups/testRG/providers/Microsoft.EventHub/namespaces/eventHubNameSpaceName
///       eventHubType: Notification
///       eventStreamingState: Enabled
///       eventStreamingType: Azure
///       kafkaConfigurationName: kafkaConfigName
///       resourceGroupName: rgpurview
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
/// $ pulumi import azure-native:purview:KafkaConfiguration kafkaConfigName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Purview/accounts/{accountName}/kafkaConfigurations/{kafkaConfigurationName}
/// ```
class KafkaConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Consumer group for hook event hub.
  late final pulumi.Output<String?> consumerGroup;
  /// Credentials to access the event streaming service attached to the purview account.
  late final pulumi.Output<CredentialsResponse?> credentials;
  /// Optional partition Id for notification event hub. If not set, all partitions will be leveraged.
  late final pulumi.Output<String?> eventHubPartitionId;
  late final pulumi.Output<String?> eventHubResourceId;
  /// The event hub type.
  late final pulumi.Output<String?> eventHubType;
  /// The state of the event streaming service
  late final pulumi.Output<String?> eventStreamingState;
  /// The event streaming service type
  late final pulumi.Output<String?> eventStreamingType;
  /// Gets or sets the name.
  late final pulumi.Output<String> name;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<ProxyResourceResponseSystemData> systemData;
  /// Gets or sets the type.
  late final pulumi.Output<String> type;

  /// Creates a new [KafkaConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KafkaConfiguration]. {@macro pulumi_purview_kafka_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KafkaConfiguration(
    String name, {
    KafkaConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:purview:KafkaConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    consumerGroup = registerOutput<String?>('consumerGroup');
    credentials = registerOutput<CredentialsResponse?>('credentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CredentialsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eventHubPartitionId = registerOutput<String?>('eventHubPartitionId');
    eventHubResourceId = registerOutput<String?>('eventHubResourceId');
    eventHubType = registerOutput<String?>('eventHubType');
    eventStreamingState = registerOutput<String?>('eventStreamingState');
    eventStreamingType = registerOutput<String?>('eventStreamingType');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<ProxyResourceResponseSystemData>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProxyResourceResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
