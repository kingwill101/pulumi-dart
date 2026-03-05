import 'package:pulumi/pulumi.dart' as pulumi;
import 'medtech_service_fhir_destination_args.dart';
import 'medtech_service_fhir_destination_state.dart';

/// Manages a Healthcare Med Tech Service Fhir Destination.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "West Europe",
/// });
/// const current = azure.core.getClientConfig({});
/// const exampleWorkspace = new azure.healthcare.Workspace("example", {
///     name: "exampleworkspace",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleEventHubNamespace = new azure.eventhub.EventHubNamespace("example", {
///     name: "example-ehn",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
/// });
/// const exampleEventHub = new azure.eventhub.EventHub("example", {
///     name: "example-eh",
///     namespaceName: exampleEventHubNamespace.name,
///     resourceGroupName: example.name,
///     partitionCount: 1,
///     messageRetention: 1,
/// });
/// const exampleConsumerGroup = new azure.eventhub.ConsumerGroup("example", {
///     name: "$default",
///     namespaceName: exampleEventHubNamespace.name,
///     eventhubName: exampleEventHub.name,
///     resourceGroupName: example.name,
/// });
/// const exampleFhirService = new azure.healthcare.FhirService("example", {
///     name: "examplefhir",
///     location: example.location,
///     resourceGroupName: example.name,
///     workspaceId: exampleWorkspace.id,
///     kind: "fhir-R4",
///     authentication: {
///         authority: "https://login.microsoftonline.com/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
///         audience: "https://examplefhir.fhir.azurehealthcareapis.com",
///     },
/// });
/// const exampleMedtechService = new azure.healthcare.MedtechService("example", {
///     name: "examplemt",
///     workspaceId: exampleWorkspace.id,
///     location: example.location,
///     eventhubNamespaceName: exampleEventHubNamespace.name,
///     eventhubName: exampleEventHub.name,
///     eventhubConsumerGroupName: exampleConsumerGroup.name,
///     deviceMappingJson: JSON.stringify({
///         templateType: "CollectionContent",
///         template: [],
///     }),
/// });
/// const exampleMedtechServiceFhirDestination = new azure.healthcare.MedtechServiceFhirDestination("example", {
///     name: "examplemtdes",
///     location: "east us",
///     medtechServiceId: exampleMedtechService.id,
///     destinationFhirServiceId: exampleFhirService.id,
///     destinationIdentityResolutionType: "Create",
///     destinationFhirMappingJson: JSON.stringify({
///         templateType: "CollectionFhirTemplate",
///         template: [{
///             templateType: "CodeValueFhir",
///             template: {
///                 codes: [{
///                     code: "8867-4",
///                     system: "http://loinc.org",
///                     display: "Heart rate",
///                 }],
///                 periodInterval: 60,
///                 typeName: "heartrate",
///                 value: {
///                     defaultPeriod: 5000,
///                     unit: "count/min",
///                     valueName: "hr",
///                     valueType: "SampledData",
///                 },
///             },
///         }],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// current = azure.core.get_client_config()
/// example_workspace = azure.healthcare.Workspace("example",
///     name="exampleworkspace",
///     location=example.location,
///     resource_group_name=example.name)
/// example_event_hub_namespace = azure.eventhub.EventHubNamespace("example",
///     name="example-ehn",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard")
/// example_event_hub = azure.eventhub.EventHub("example",
///     name="example-eh",
///     namespace_name=example_event_hub_namespace.name,
///     resource_group_name=example.name,
///     partition_count=1,
///     message_retention=1)
/// example_consumer_group = azure.eventhub.ConsumerGroup("example",
///     name="$default",
///     namespace_name=example_event_hub_namespace.name,
///     eventhub_name=example_event_hub.name,
///     resource_group_name=example.name)
/// example_fhir_service = azure.healthcare.FhirService("example",
///     name="examplefhir",
///     location=example.location,
///     resource_group_name=example.name,
///     workspace_id=example_workspace.id,
///     kind="fhir-R4",
///     authentication={
///         "authority": "https://login.microsoftonline.com/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
///         "audience": "https://examplefhir.fhir.azurehealthcareapis.com",
///     })
/// example_medtech_service = azure.healthcare.MedtechService("example",
///     name="examplemt",
///     workspace_id=example_workspace.id,
///     location=example.location,
///     eventhub_namespace_name=example_event_hub_namespace.name,
///     eventhub_name=example_event_hub.name,
///     eventhub_consumer_group_name=example_consumer_group.name,
///     device_mapping_json=json.dumps({
///         "templateType": "CollectionContent",
///         "template": [],
///     }))
/// example_medtech_service_fhir_destination = azure.healthcare.MedtechServiceFhirDestination("example",
///     name="examplemtdes",
///     location="east us",
///     medtech_service_id=example_medtech_service.id,
///     destination_fhir_service_id=example_fhir_service.id,
///     destination_identity_resolution_type="Create",
///     destination_fhir_mapping_json=json.dumps({
///         "templateType": "CollectionFhirTemplate",
///         "template": [{
///             "templateType": "CodeValueFhir",
///             "template": {
///                 "codes": [{
///                     "code": "8867-4",
///                     "system": "http://loinc.org",
///                     "display": "Heart rate",
///                 }],
///                 "periodInterval": 60,
///                 "typeName": "heartrate",
///                 "value": {
///                     "defaultPeriod": 5000,
///                     "unit": "count/min",
///                     "valueName": "hr",
///                     "valueType": "SampledData",
///                 },
///             },
///         }],
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleWorkspace = new Azure.Healthcare.Workspace("example", new()
///     {
///         Name = "exampleworkspace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleEventHubNamespace = new Azure.EventHub.EventHubNamespace("example", new()
///     {
///         Name = "example-ehn",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///     });
///
///     var exampleEventHub = new Azure.EventHub.EventHub("example", new()
///     {
///         Name = "example-eh",
///         NamespaceName = exampleEventHubNamespace.Name,
///         ResourceGroupName = example.Name,
///         PartitionCount = 1,
///         MessageRetention = 1,
///     });
///
///     var exampleConsumerGroup = new Azure.EventHub.ConsumerGroup("example", new()
///     {
///         Name = "$default",
///         NamespaceName = exampleEventHubNamespace.Name,
///         EventhubName = exampleEventHub.Name,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleFhirService = new Azure.Healthcare.FhirService("example", new()
///     {
///         Name = "examplefhir",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         WorkspaceId = exampleWorkspace.Id,
///         Kind = "fhir-R4",
///         Authentication = new Azure.Healthcare.Inputs.FhirServiceAuthenticationArgs
///         {
///             Authority = "https://login.microsoftonline.com/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
///             Audience = "https://examplefhir.fhir.azurehealthcareapis.com",
///         },
///     });
///
///     var exampleMedtechService = new Azure.Healthcare.MedtechService("example", new()
///     {
///         Name = "examplemt",
///         WorkspaceId = exampleWorkspace.Id,
///         Location = example.Location,
///         EventhubNamespaceName = exampleEventHubNamespace.Name,
///         EventhubName = exampleEventHub.Name,
///         EventhubConsumerGroupName = exampleConsumerGroup.Name,
///         DeviceMappingJson = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["templateType"] = "CollectionContent",
///             ["template"] = new[]
///             {
///             },
///         }),
///     });
///
///     var exampleMedtechServiceFhirDestination = new Azure.Healthcare.MedtechServiceFhirDestination("example", new()
///     {
///         Name = "examplemtdes",
///         Location = "east us",
///         MedtechServiceId = exampleMedtechService.Id,
///         DestinationFhirServiceId = exampleFhirService.Id,
///         DestinationIdentityResolutionType = "Create",
///         DestinationFhirMappingJson = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["templateType"] = "CollectionFhirTemplate",
///             ["template"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["templateType"] = "CodeValueFhir",
///                     ["template"] = new Dictionary<string, object?>
///                     {
///                         ["codes"] = new[]
///                         {
///                             new Dictionary<string, object?>
///                             {
///                                 ["code"] = "8867-4",
///                                 ["system"] = "http://loinc.org",
///                                 ["display"] = "Heart rate",
///                             },
///                         },
///                         ["periodInterval"] = 60,
///                         ["typeName"] = "heartrate",
///                         ["value"] = new Dictionary<string, object?>
///                         {
///                             ["defaultPeriod"] = 5000,
///                             ["unit"] = "count/min",
///                             ["valueName"] = "hr",
///                             ["valueType"] = "SampledData",
///                         },
///                     },
///                 },
///             },
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventhub"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := healthcare.NewWorkspace(ctx, "example", &healthcare.WorkspaceArgs{
/// 			Name:              pulumi.String("exampleworkspace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventHubNamespace, err := eventhub.NewEventHubNamespace(ctx, "example", &eventhub.EventHubNamespaceArgs{
/// 			Name:              pulumi.String("example-ehn"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventHub, err := eventhub.NewEventHub(ctx, "example", &eventhub.EventHubArgs{
/// 			Name:              pulumi.String("example-eh"),
/// 			NamespaceName:     exampleEventHubNamespace.Name,
/// 			ResourceGroupName: example.Name,
/// 			PartitionCount:    pulumi.Int(1),
/// 			MessageRetention:  pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleConsumerGroup, err := eventhub.NewConsumerGroup(ctx, "example", &eventhub.ConsumerGroupArgs{
/// 			Name:              pulumi.String("$default"),
/// 			NamespaceName:     exampleEventHubNamespace.Name,
/// 			EventhubName:      exampleEventHub.Name,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFhirService, err := healthcare.NewFhirService(ctx, "example", &healthcare.FhirServiceArgs{
/// 			Name:              pulumi.String("examplefhir"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			WorkspaceId:       exampleWorkspace.ID(),
/// 			Kind:              pulumi.String("fhir-R4"),
/// 			Authentication: &healthcare.FhirServiceAuthenticationArgs{
/// 				Authority: pulumi.String("https://login.microsoftonline.com/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"),
/// 				Audience:  pulumi.String("https://examplefhir.fhir.azurehealthcareapis.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"templateType": "CollectionContent",
/// 			"template":     []interface{}{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		exampleMedtechService, err := healthcare.NewMedtechService(ctx, "example", &healthcare.MedtechServiceArgs{
/// 			Name:                      pulumi.String("examplemt"),
/// 			WorkspaceId:               exampleWorkspace.ID(),
/// 			Location:                  example.Location,
/// 			EventhubNamespaceName:     exampleEventHubNamespace.Name,
/// 			EventhubName:              exampleEventHub.Name,
/// 			EventhubConsumerGroupName: exampleConsumerGroup.Name,
/// 			DeviceMappingJson:         pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"templateType": "CollectionFhirTemplate",
/// 			"template": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"templateType": "CodeValueFhir",
/// 					"template": map[string]interface{}{
/// 						"codes": []map[string]interface{}{
/// 							map[string]interface{}{
/// 								"code":    "8867-4",
/// 								"system":  "http://loinc.org",
/// 								"display": "Heart rate",
/// 							},
/// 						},
/// 						"periodInterval": 60,
/// 						"typeName":       "heartrate",
/// 						"value": map[string]interface{}{
/// 							"defaultPeriod": 5000,
/// 							"unit":          "count/min",
/// 							"valueName":     "hr",
/// 							"valueType":     "SampledData",
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = healthcare.NewMedtechServiceFhirDestination(ctx, "example", &healthcare.MedtechServiceFhirDestinationArgs{
/// 			Name:                              pulumi.String("examplemtdes"),
/// 			Location:                          pulumi.String("east us"),
/// 			MedtechServiceId:                  exampleMedtechService.ID(),
/// 			DestinationFhirServiceId:          exampleFhirService.ID(),
/// 			DestinationIdentityResolutionType: pulumi.String("Create"),
/// 			DestinationFhirMappingJson:        pulumi.String(json1),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.healthcare.Workspace;
/// import com.pulumi.azure.healthcare.WorkspaceArgs;
/// import com.pulumi.azure.eventhub.EventHubNamespace;
/// import com.pulumi.azure.eventhub.EventHubNamespaceArgs;
/// import com.pulumi.azure.eventhub.EventHub;
/// import com.pulumi.azure.eventhub.EventHubArgs;
/// import com.pulumi.azure.eventhub.ConsumerGroup;
/// import com.pulumi.azure.eventhub.ConsumerGroupArgs;
/// import com.pulumi.azure.healthcare.FhirService;
/// import com.pulumi.azure.healthcare.FhirServiceArgs;
/// import com.pulumi.azure.healthcare.inputs.FhirServiceAuthenticationArgs;
/// import com.pulumi.azure.healthcare.MedtechService;
/// import com.pulumi.azure.healthcare.MedtechServiceArgs;
/// import com.pulumi.azure.healthcare.MedtechServiceFhirDestination;
/// import com.pulumi.azure.healthcare.MedtechServiceFhirDestinationArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("exampleworkspace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleEventHubNamespace = new EventHubNamespace("exampleEventHubNamespace", EventHubNamespaceArgs.builder()
///             .name("example-ehn")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .build());
///
///         var exampleEventHub = new EventHub("exampleEventHub", EventHubArgs.builder()
///             .name("example-eh")
///             .namespaceName(exampleEventHubNamespace.name())
///             .resourceGroupName(example.name())
///             .partitionCount(1)
///             .messageRetention(1)
///             .build());
///
///         var exampleConsumerGroup = new ConsumerGroup("exampleConsumerGroup", ConsumerGroupArgs.builder()
///             .name("$default")
///             .namespaceName(exampleEventHubNamespace.name())
///             .eventhubName(exampleEventHub.name())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleFhirService = new FhirService("exampleFhirService", FhirServiceArgs.builder()
///             .name("examplefhir")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .workspaceId(exampleWorkspace.id())
///             .kind("fhir-R4")
///             .authentication(FhirServiceAuthenticationArgs.builder()
///                 .authority("https://login.microsoftonline.com/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx")
///                 .audience("https://examplefhir.fhir.azurehealthcareapis.com")
///                 .build())
///             .build());
///
///         var exampleMedtechService = new MedtechService("exampleMedtechService", MedtechServiceArgs.builder()
///             .name("examplemt")
///             .workspaceId(exampleWorkspace.id())
///             .location(example.location())
///             .eventhubNamespaceName(exampleEventHubNamespace.name())
///             .eventhubName(exampleEventHub.name())
///             .eventhubConsumerGroupName(exampleConsumerGroup.name())
///             .deviceMappingJson(serializeJson(
///                 jsonObject(
///                     jsonProperty("templateType", "CollectionContent"),
///                     jsonProperty("template", jsonArray(
///                     ))
///                 )))
///             .build());
///
///         var exampleMedtechServiceFhirDestination = new MedtechServiceFhirDestination("exampleMedtechServiceFhirDestination", MedtechServiceFhirDestinationArgs.builder()
///             .name("examplemtdes")
///             .location("east us")
///             .medtechServiceId(exampleMedtechService.id())
///             .destinationFhirServiceId(exampleFhirService.id())
///             .destinationIdentityResolutionType("Create")
///             .destinationFhirMappingJson(serializeJson(
///                 jsonObject(
///                     jsonProperty("templateType", "CollectionFhirTemplate"),
///                     jsonProperty("template", jsonArray(jsonObject(
///                         jsonProperty("templateType", "CodeValueFhir"),
///                         jsonProperty("template", jsonObject(
///                             jsonProperty("codes", jsonArray(jsonObject(
///                                 jsonProperty("code", "8867-4"),
///                                 jsonProperty("system", "http://loinc.org"),
///                                 jsonProperty("display", "Heart rate")
///                             ))),
///                             jsonProperty("periodInterval", 60),
///                             jsonProperty("typeName", "heartrate"),
///                             jsonProperty("value", jsonObject(
///                                 jsonProperty("defaultPeriod", 5000),
///                                 jsonProperty("unit", "count/min"),
///                                 jsonProperty("valueName", "hr"),
///                                 jsonProperty("valueType", "SampledData")
///                             ))
///                         ))
///                     )))
///                 )))
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
///       name: example-rg
///       location: West Europe
///   exampleWorkspace:
///     type: azure:healthcare:Workspace
///     name: example
///     properties:
///       name: exampleworkspace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleEventHubNamespace:
///     type: azure:eventhub:EventHubNamespace
///     name: example
///     properties:
///       name: example-ehn
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///   exampleEventHub:
///     type: azure:eventhub:EventHub
///     name: example
///     properties:
///       name: example-eh
///       namespaceName: ${exampleEventHubNamespace.name}
///       resourceGroupName: ${example.name}
///       partitionCount: 1
///       messageRetention: 1
///   exampleConsumerGroup:
///     type: azure:eventhub:ConsumerGroup
///     name: example
///     properties:
///       name: $default
///       namespaceName: ${exampleEventHubNamespace.name}
///       eventhubName: ${exampleEventHub.name}
///       resourceGroupName: ${example.name}
///   exampleFhirService:
///     type: azure:healthcare:FhirService
///     name: example
///     properties:
///       name: examplefhir
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       workspaceId: ${exampleWorkspace.id}
///       kind: fhir-R4
///       authentication:
///         authority: https://login.microsoftonline.com/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
///         audience: https://examplefhir.fhir.azurehealthcareapis.com
///   exampleMedtechService:
///     type: azure:healthcare:MedtechService
///     name: example
///     properties:
///       name: examplemt
///       workspaceId: ${exampleWorkspace.id}
///       location: ${example.location}
///       eventhubNamespaceName: ${exampleEventHubNamespace.name}
///       eventhubName: ${exampleEventHub.name}
///       eventhubConsumerGroupName: ${exampleConsumerGroup.name}
///       deviceMappingJson:
///         fn::toJSON:
///           templateType: CollectionContent
///           template: []
///   exampleMedtechServiceFhirDestination:
///     type: azure:healthcare:MedtechServiceFhirDestination
///     name: example
///     properties:
///       name: examplemtdes
///       location: east us
///       medtechServiceId: ${exampleMedtechService.id}
///       destinationFhirServiceId: ${exampleFhirService.id}
///       destinationIdentityResolutionType: Create
///       destinationFhirMappingJson:
///         fn::toJSON:
///           templateType: CollectionFhirTemplate
///           template:
///             - templateType: CodeValueFhir
///               template:
///                 codes:
///                   - code: 8867-4
///                     system: http://loinc.org
///                     display: Heart rate
///                 periodInterval: 60
///                 typeName: heartrate
///                 value:
///                   defaultPeriod: 5000
///                   unit: count/min
///                   valueName: hr
///                   valueType: SampledData
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.HealthcareApis` - 2022-12-01
///
/// ## Import
///
/// Healthcare Med Tech Service Fhir Destination can be imported using the resource`id`, e.g.
///
/// ```sh
/// $ pulumi import azure:healthcare/medtechServiceFhirDestination:MedtechServiceFhirDestination example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.HealthcareApis/workspaces/workspace1/iotConnectors/iotconnector1/fhirDestinations/destination1
/// ```
class MedtechServiceFhirDestination extends pulumi.CustomResource {
  /// Specifies the destination Fhir mappings of the Med Tech Service Fhir Destination.
  late final pulumi.Output<String> destinationFhirMappingJson;
  /// Specifies the destination fhir service id of the Med Tech Service Fhir Destination.
  late final pulumi.Output<String> destinationFhirServiceId;
  /// Specifies the destination identity resolution type where the Healthcare Med Tech Service Fhir Destination should be created. Possible values are `Create`, `Lookup`.
  late final pulumi.Output<String> destinationIdentityResolutionType;
  /// Specifies the Azure Region where the Healthcare Med Tech Service Fhir Destination should be created. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Healthcare Med Tech Service where the Healthcare Med Tech Service Fhir Destination should exist. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
  late final pulumi.Output<String> medtechServiceId;
  /// Specifies the name of the Healthcare Med Tech Service Fhir Destination. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
  late final pulumi.Output<String> name;

  /// Creates a new [MedtechServiceFhirDestination].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MedtechServiceFhirDestination]. {@macro pulumi_healthcare_medtech_service_fhir_destination_medtech_service_fhir_destination_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MedtechServiceFhirDestination(
    String name, {
    MedtechServiceFhirDestinationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:healthcare/medtechServiceFhirDestination:MedtechServiceFhirDestination',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinationFhirMappingJson = registerOutput<String>('destinationFhirMappingJson');
    destinationFhirServiceId = registerOutput<String>('destinationFhirServiceId');
    destinationIdentityResolutionType = registerOutput<String>('destinationIdentityResolutionType');
    location = registerOutput<String>('location');
    medtechServiceId = registerOutput<String>('medtechServiceId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [MedtechServiceFhirDestination] resource's state with the given [name] and [id].
  static MedtechServiceFhirDestination get(
    String name,
    pulumi.Input<String> id, {
    MedtechServiceFhirDestinationState? state,
  }) {
    return MedtechServiceFhirDestination._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MedtechServiceFhirDestination._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:healthcare/medtechServiceFhirDestination:MedtechServiceFhirDestination',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinationFhirMappingJson = registerOutput<String>('destinationFhirMappingJson');
    destinationFhirServiceId = registerOutput<String>('destinationFhirServiceId');
    destinationIdentityResolutionType = registerOutput<String>('destinationIdentityResolutionType');
    location = registerOutput<String>('location');
    medtechServiceId = registerOutput<String>('medtechServiceId');
    this.name = registerOutput<String>('name');
  }
}
