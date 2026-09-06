import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_registration_args.dart';
import 'notification_registration_properties_response.dart';
import 'system_data_response.dart';

/// Concrete proxy resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2021-09-01-preview.
///
/// Other available API versions: 2021-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native providerhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NotificationRegistrations_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var notificationRegistration = new AzureNative.ProviderHub.NotificationRegistration("notificationRegistration", new()
///     {
///         NotificationRegistrationName = "fooNotificationRegistration",
///         Properties = new AzureNative.ProviderHub.Inputs.NotificationRegistrationPropertiesArgs
///         {
///             IncludedEvents = new[]
///             {
///                 "*/write",
///                 "Microsoft.Contoso/employees/delete",
///             },
///             MessageScope = AzureNative.ProviderHub.MessageScope.RegisteredSubscriptions,
///             NotificationEndpoints = new[]
///             {
///                 new AzureNative.ProviderHub.Inputs.NotificationEndpointArgs
///                 {
///                     Locations = new[]
///                     {
///                         "",
///                         "East US",
///                     },
///                     NotificationDestination = "/subscriptions/ac6bcfb5-3dc1-491f-95a6-646b89bf3e88/resourceGroups/mgmtexp-eastus/providers/Microsoft.EventHub/namespaces/unitedstates-mgmtexpint/eventhubs/armlinkednotifications",
///                 },
///                 new AzureNative.ProviderHub.Inputs.NotificationEndpointArgs
///                 {
///                     Locations = new[]
///                     {
///                         "North Europe",
///                     },
///                     NotificationDestination = "/subscriptions/ac6bcfb5-3dc1-491f-95a6-646b89bf3e88/resourceGroups/mgmtexp-northeurope/providers/Microsoft.EventHub/namespaces/europe-mgmtexpint/eventhubs/armlinkednotifications",
///                 },
///             },
///             NotificationMode = AzureNative.ProviderHub.NotificationMode.EventHub,
///         },
///         ProviderNamespace = "Microsoft.Contoso",
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
/// 	providerhub "github.com/pulumi/pulumi-azure-native-sdk/providerhub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := providerhub.NewNotificationRegistration(ctx, "notificationRegistration", &providerhub.NotificationRegistrationArgs{
/// 			NotificationRegistrationName: pulumi.String("fooNotificationRegistration"),
/// 			Properties: &providerhub.NotificationRegistrationPropertiesArgs{
/// 				IncludedEvents: pulumi.StringArray{
/// 					pulumi.String("*/write"),
/// 					pulumi.String("Microsoft.Contoso/employees/delete"),
/// 				},
/// 				MessageScope: pulumi.String(providerhub.MessageScopeRegisteredSubscriptions),
/// 				NotificationEndpoints: providerhub.NotificationEndpointArray{
/// 					&providerhub.NotificationEndpointArgs{
/// 						Locations: pulumi.StringArray{
/// 							pulumi.String(""),
/// 							pulumi.String("East US"),
/// 						},
/// 						NotificationDestination: pulumi.String("/subscriptions/ac6bcfb5-3dc1-491f-95a6-646b89bf3e88/resourceGroups/mgmtexp-eastus/providers/Microsoft.EventHub/namespaces/unitedstates-mgmtexpint/eventhubs/armlinkednotifications"),
/// 					},
/// 					&providerhub.NotificationEndpointArgs{
/// 						Locations: pulumi.StringArray{
/// 							pulumi.String("North Europe"),
/// 						},
/// 						NotificationDestination: pulumi.String("/subscriptions/ac6bcfb5-3dc1-491f-95a6-646b89bf3e88/resourceGroups/mgmtexp-northeurope/providers/Microsoft.EventHub/namespaces/europe-mgmtexpint/eventhubs/armlinkednotifications"),
/// 					},
/// 				},
/// 				NotificationMode: pulumi.String(providerhub.NotificationModeEventHub),
/// 			},
/// 			ProviderNamespace: pulumi.String("Microsoft.Contoso"),
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
/// resource "azure-native_providerhub_notificationregistration" "notificationRegistration" {
///   notification_registration_name = "fooNotificationRegistration"
///   properties = {
///     included_events = ["*/write", "Microsoft.Contoso/employees/delete"]
///     message_scope   = "RegisteredSubscriptions"
///     notification_endpoints = [{
///       "locations"               = ["", "East US"]
///       "notificationDestination" = "/subscriptions/ac6bcfb5-3dc1-491f-95a6-646b89bf3e88/resourceGroups/mgmtexp-eastus/providers/Microsoft.EventHub/namespaces/unitedstates-mgmtexpint/eventhubs/armlinkednotifications"
///       }, {
///       "locations"               = ["North Europe"]
///       "notificationDestination" = "/subscriptions/ac6bcfb5-3dc1-491f-95a6-646b89bf3e88/resourceGroups/mgmtexp-northeurope/providers/Microsoft.EventHub/namespaces/europe-mgmtexpint/eventhubs/armlinkednotifications"
///     }]
///     notification_mode = "EventHub"
///   }
///   provider_namespace = "Microsoft.Contoso"
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
/// import com.pulumi.azurenative.providerhub.NotificationRegistration;
/// import com.pulumi.azurenative.providerhub.NotificationRegistrationArgs;
/// import com.pulumi.azurenative.providerhub.inputs.NotificationRegistrationPropertiesArgs;
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
///         var notificationRegistration = new NotificationRegistration("notificationRegistration", NotificationRegistrationArgs.builder()
///             .notificationRegistrationName("fooNotificationRegistration")
///             .properties(NotificationRegistrationPropertiesArgs.builder()
///                 .includedEvents(
///                     "*/write",
///                     "Microsoft.Contoso/employees/delete")
///                 .messageScope("RegisteredSubscriptions")
///                 .notificationEndpoints(
///                     NotificationEndpointArgs.builder()
///                         .locations(
///                             "",
///                             "East US")
///                         .notificationDestination("/subscriptions/ac6bcfb5-3dc1-491f-95a6-646b89bf3e88/resourceGroups/mgmtexp-eastus/providers/Microsoft.EventHub/namespaces/unitedstates-mgmtexpint/eventhubs/armlinkednotifications")
///                         .build(),
///                     NotificationEndpointArgs.builder()
///                         .locations("North Europe")
///                         .notificationDestination("/subscriptions/ac6bcfb5-3dc1-491f-95a6-646b89bf3e88/resourceGroups/mgmtexp-northeurope/providers/Microsoft.EventHub/namespaces/europe-mgmtexpint/eventhubs/armlinkednotifications")
///                         .build())
///                 .notificationMode("EventHub")
///                 .build())
///             .providerNamespace("Microsoft.Contoso")
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
/// const notificationRegistration = new azure_native.providerhub.NotificationRegistration("notificationRegistration", {
///     notificationRegistrationName: "fooNotificationRegistration",
///     properties: {
///         includedEvents: [
///             "*/write",
///             "Microsoft.Contoso/employees/delete",
///         ],
///         messageScope: azure_native.providerhub.MessageScope.RegisteredSubscriptions,
///         notificationEndpoints: [
///             {
///                 locations: [
///                     "",
///                     "East US",
///                 ],
///                 notificationDestination: "/subscriptions/ac6bcfb5-3dc1-491f-95a6-646b89bf3e88/resourceGroups/mgmtexp-eastus/providers/Microsoft.EventHub/namespaces/unitedstates-mgmtexpint/eventhubs/armlinkednotifications",
///             },
///             {
///                 locations: ["North Europe"],
///                 notificationDestination: "/subscriptions/ac6bcfb5-3dc1-491f-95a6-646b89bf3e88/resourceGroups/mgmtexp-northeurope/providers/Microsoft.EventHub/namespaces/europe-mgmtexpint/eventhubs/armlinkednotifications",
///             },
///         ],
///         notificationMode: azure_native.providerhub.NotificationMode.EventHub,
///     },
///     providerNamespace: "Microsoft.Contoso",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// notification_registration = azure_native.providerhub.NotificationRegistration("notificationRegistration",
///     notification_registration_name="fooNotificationRegistration",
///     properties={
///         "included_events": [
///             "*/write",
///             "Microsoft.Contoso/employees/delete",
///         ],
///         "message_scope": azure_native.providerhub.MessageScope.REGISTERED_SUBSCRIPTIONS,
///         "notification_endpoints": [
///             {
///                 "locations": [
///                     "",
///                     "East US",
///                 ],
///                 "notification_destination": "/subscriptions/ac6bcfb5-3dc1-491f-95a6-646b89bf3e88/resourceGroups/mgmtexp-eastus/providers/Microsoft.EventHub/namespaces/unitedstates-mgmtexpint/eventhubs/armlinkednotifications",
///             },
///             {
///                 "locations": ["North Europe"],
///                 "notification_destination": "/subscriptions/ac6bcfb5-3dc1-491f-95a6-646b89bf3e88/resourceGroups/mgmtexp-northeurope/providers/Microsoft.EventHub/namespaces/europe-mgmtexpint/eventhubs/armlinkednotifications",
///             },
///         ],
///         "notification_mode": azure_native.providerhub.NotificationMode.EVENT_HUB,
///     },
///     provider_namespace="Microsoft.Contoso")
///
/// ```
///
/// ```yaml
/// resources:
///   notificationRegistration:
///     type: azure-native:providerhub:NotificationRegistration
///     properties:
///       notificationRegistrationName: fooNotificationRegistration
///       properties:
///         includedEvents:
///           - '*/write'
///           - Microsoft.Contoso/employees/delete
///         messageScope: RegisteredSubscriptions
///         notificationEndpoints:
///           - locations:
///               - ""
///               - East US
///             notificationDestination: /subscriptions/ac6bcfb5-3dc1-491f-95a6-646b89bf3e88/resourceGroups/mgmtexp-eastus/providers/Microsoft.EventHub/namespaces/unitedstates-mgmtexpint/eventhubs/armlinkednotifications
///           - locations:
///               - North Europe
///             notificationDestination: /subscriptions/ac6bcfb5-3dc1-491f-95a6-646b89bf3e88/resourceGroups/mgmtexp-northeurope/providers/Microsoft.EventHub/namespaces/europe-mgmtexpint/eventhubs/armlinkednotifications
///         notificationMode: EventHub
///       providerNamespace: Microsoft.Contoso
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
/// $ pulumi import azure-native:providerhub:NotificationRegistration fooNotificationRegistration /subscriptions/{subscriptionId}/providers/Microsoft.ProviderHub/providerRegistrations/{providerNamespace}/notificationRegistrations/{notificationRegistrationName}
/// ```
class NotificationRegistration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<NotificationRegistrationPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NotificationRegistration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotificationRegistration]. {@macro pulumi_providerhub_notification_registration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotificationRegistration(
    String name, {
    NotificationRegistrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:providerhub:NotificationRegistration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<NotificationRegistrationPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NotificationRegistrationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [NotificationRegistration] resource.
  NotificationRegistration.reference(String urn)
    : super(
        'azure-native:providerhub:NotificationRegistration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<NotificationRegistrationPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NotificationRegistrationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
