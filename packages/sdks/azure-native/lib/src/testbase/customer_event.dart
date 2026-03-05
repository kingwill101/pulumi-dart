import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_event_args.dart';
import 'system_data_response.dart';

/// The Customer Notification Event resource.
///
/// Uses Azure REST API version 2023-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-04-01-preview.
///
/// Other available API versions: 2022-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native testbase [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CustomerEventCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customerEvent = new AzureNative.TestBase.CustomerEvent("customerEvent", new()
///     {
///         CustomerEventName = "WeeklySummary",
///         EventName = "WeeklySummary",
///         Receivers = new[]
///         {
///             new AzureNative.TestBase.Inputs.NotificationEventReceiverArgs
///             {
///                 ReceiverType = "UserObjects",
///                 ReceiverValue = new AzureNative.TestBase.Inputs.NotificationReceiverValueArgs
///                 {
///                     UserObjectReceiverValue = new AzureNative.TestBase.Inputs.UserObjectReceiverValueArgs
///                     {
///                         UserObjectIds = new[]
///                         {
///                             "245245245245325",
///                             "365365365363565",
///                         },
///                     },
///                 },
///             },
///             new AzureNative.TestBase.Inputs.NotificationEventReceiverArgs
///             {
///                 ReceiverType = "DistributionGroup",
///                 ReceiverValue = new AzureNative.TestBase.Inputs.NotificationReceiverValueArgs
///                 {
///                     DistributionGroupListReceiverValue = new AzureNative.TestBase.Inputs.DistributionGroupListReceiverValueArgs
///                     {
///                         DistributionGroups = new[]
///                         {
///                             "test@microsoft.com",
///                         },
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "contoso-rg1",
///         TestBaseAccountName = "contoso-testBaseAccount1",
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
/// 	testbase "github.com/pulumi/pulumi-azure-native-sdk/testbase/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := testbase.NewCustomerEvent(ctx, "customerEvent", &testbase.CustomerEventArgs{
/// 			CustomerEventName: pulumi.String("WeeklySummary"),
/// 			EventName:         pulumi.String("WeeklySummary"),
/// 			Receivers: testbase.NotificationEventReceiverArray{
/// 				&testbase.NotificationEventReceiverArgs{
/// 					ReceiverType: pulumi.String("UserObjects"),
/// 					ReceiverValue: &testbase.NotificationReceiverValueArgs{
/// 						UserObjectReceiverValue: &testbase.UserObjectReceiverValueArgs{
/// 							UserObjectIds: pulumi.StringArray{
/// 								pulumi.String("245245245245325"),
/// 								pulumi.String("365365365363565"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&testbase.NotificationEventReceiverArgs{
/// 					ReceiverType: pulumi.String("DistributionGroup"),
/// 					ReceiverValue: &testbase.NotificationReceiverValueArgs{
/// 						DistributionGroupListReceiverValue: &testbase.DistributionGroupListReceiverValueArgs{
/// 							DistributionGroups: pulumi.StringArray{
/// 								pulumi.String("test@microsoft.com"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName:   pulumi.String("contoso-rg1"),
/// 			TestBaseAccountName: pulumi.String("contoso-testBaseAccount1"),
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
/// import com.pulumi.azurenative.testbase.CustomerEvent;
/// import com.pulumi.azurenative.testbase.CustomerEventArgs;
/// import com.pulumi.azurenative.testbase.inputs.NotificationEventReceiverArgs;
/// import com.pulumi.azurenative.testbase.inputs.NotificationReceiverValueArgs;
/// import com.pulumi.azurenative.testbase.inputs.UserObjectReceiverValueArgs;
/// import com.pulumi.azurenative.testbase.inputs.DistributionGroupListReceiverValueArgs;
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
///         var customerEvent = new CustomerEvent("customerEvent", CustomerEventArgs.builder()
///             .customerEventName("WeeklySummary")
///             .eventName("WeeklySummary")
///             .receivers(
///                 NotificationEventReceiverArgs.builder()
///                     .receiverType("UserObjects")
///                     .receiverValue(NotificationReceiverValueArgs.builder()
///                         .userObjectReceiverValue(UserObjectReceiverValueArgs.builder()
///                             .userObjectIds(
///                                 "245245245245325",
///                                 "365365365363565")
///                             .build())
///                         .build())
///                     .build(),
///                 NotificationEventReceiverArgs.builder()
///                     .receiverType("DistributionGroup")
///                     .receiverValue(NotificationReceiverValueArgs.builder()
///                         .distributionGroupListReceiverValue(DistributionGroupListReceiverValueArgs.builder()
///                             .distributionGroups("test@microsoft.com")
///                             .build())
///                         .build())
///                     .build())
///             .resourceGroupName("contoso-rg1")
///             .testBaseAccountName("contoso-testBaseAccount1")
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
/// const customerEvent = new azure_native.testbase.CustomerEvent("customerEvent", {
///     customerEventName: "WeeklySummary",
///     eventName: "WeeklySummary",
///     receivers: [
///         {
///             receiverType: "UserObjects",
///             receiverValue: {
///                 userObjectReceiverValue: {
///                     userObjectIds: [
///                         "245245245245325",
///                         "365365365363565",
///                     ],
///                 },
///             },
///         },
///         {
///             receiverType: "DistributionGroup",
///             receiverValue: {
///                 distributionGroupListReceiverValue: {
///                     distributionGroups: ["test@microsoft.com"],
///                 },
///             },
///         },
///     ],
///     resourceGroupName: "contoso-rg1",
///     testBaseAccountName: "contoso-testBaseAccount1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// customer_event = azure_native.testbase.CustomerEvent("customerEvent",
///     customer_event_name="WeeklySummary",
///     event_name="WeeklySummary",
///     receivers=[
///         {
///             "receiver_type": "UserObjects",
///             "receiver_value": {
///                 "user_object_receiver_value": {
///                     "user_object_ids": [
///                         "245245245245325",
///                         "365365365363565",
///                     ],
///                 },
///             },
///         },
///         {
///             "receiver_type": "DistributionGroup",
///             "receiver_value": {
///                 "distribution_group_list_receiver_value": {
///                     "distribution_groups": ["test@microsoft.com"],
///                 },
///             },
///         },
///     ],
///     resource_group_name="contoso-rg1",
///     test_base_account_name="contoso-testBaseAccount1")
///
/// ```
///
/// ```yaml
/// resources:
///   customerEvent:
///     type: azure-native:testbase:CustomerEvent
///     properties:
///       customerEventName: WeeklySummary
///       eventName: WeeklySummary
///       receivers:
///         - receiverType: UserObjects
///           receiverValue:
///             userObjectReceiverValue:
///               userObjectIds:
///                 - '245245245245325'
///                 - '365365365363565'
///         - receiverType: DistributionGroup
///           receiverValue:
///             distributionGroupListReceiverValue:
///               distributionGroups:
///                 - test@microsoft.com
///       resourceGroupName: contoso-rg1
///       testBaseAccountName: contoso-testBaseAccount1
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
/// $ pulumi import azure-native:testbase:CustomerEvent WeeklySummary /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TestBase/testBaseAccounts/{testBaseAccountName}/customerEvents/{customerEventName}
/// ```
class CustomerEvent extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the event subscribed to.
  late final pulumi.Output<String> eventName;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The notification event receivers.
  late final pulumi.Output<List<Map<String, dynamic>>> receivers;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CustomerEvent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomerEvent]. {@macro pulumi_testbase_customer_event_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomerEvent(
    String name, {
    CustomerEventArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:testbase:CustomerEvent',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eventName = registerOutput<String>('eventName');
    this.name = registerOutput<String>('name');
    receivers = registerOutput<List<Map<String, dynamic>>>('receivers');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
