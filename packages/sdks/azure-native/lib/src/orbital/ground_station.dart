import 'package:pulumi/pulumi.dart' as pulumi;
import 'ground_station_args.dart';
import 'ground_stations_properties_response_global_communications_site.dart';
import 'system_data_response.dart';

/// Ground Station contains one or more antennas.
///
/// Uses Azure REST API version 2024-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-03-01-preview.
///
/// Other available API versions: 2024-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native orbital [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a ground station
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var groundStation = new AzureNative.Orbital.GroundStation("groundStation", new()
///     {
///         AltitudeMeters = 1500.83,
///         Capabilities = new[]
///         {
///             AzureNative.Orbital.Capability.Communication,
///         },
///         City = "redmond",
///         GlobalCommunicationsSite = new AzureNative.Orbital.Inputs.GroundStationsPropertiesGlobalCommunicationsSiteArgs
///         {
///             Id = "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/providers/Microsoft.Orbital/globalCommunicationsSites/contoso-Vernon",
///         },
///         GroundStationName = "westus_gs1",
///         LatitudeDegrees = -122.122,
///         Location = "westus",
///         LongitudeDegrees = 47.674,
///         ProviderName = "Microsoft",
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
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
/// 	orbital "github.com/pulumi/pulumi-azure-native-sdk/orbital/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := orbital.NewGroundStation(ctx, "groundStation", &orbital.GroundStationArgs{
/// 			AltitudeMeters: pulumi.Float64(1500.83),
/// 			Capabilities: pulumi.StringArray{
/// 				pulumi.String(orbital.CapabilityCommunication),
/// 			},
/// 			City: pulumi.String("redmond"),
/// 			GlobalCommunicationsSite: &orbital.GroundStationsPropertiesGlobalCommunicationsSiteArgs{
/// 				Id: pulumi.String("/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/providers/Microsoft.Orbital/globalCommunicationsSites/contoso-Vernon"),
/// 			},
/// 			GroundStationName: pulumi.String("westus_gs1"),
/// 			LatitudeDegrees:   pulumi.Float64(-122.122),
/// 			Location:          pulumi.String("westus"),
/// 			LongitudeDegrees:  pulumi.Float64(47.674),
/// 			ProviderName:      pulumi.String("Microsoft"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.orbital.GroundStation;
/// import com.pulumi.azurenative.orbital.GroundStationArgs;
/// import com.pulumi.azurenative.orbital.inputs.GroundStationsPropertiesGlobalCommunicationsSiteArgs;
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
///         var groundStation = new GroundStation("groundStation", GroundStationArgs.builder()
///             .altitudeMeters(1500.83)
///             .capabilities("Communication")
///             .city("redmond")
///             .globalCommunicationsSite(GroundStationsPropertiesGlobalCommunicationsSiteArgs.builder()
///                 .id("/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/providers/Microsoft.Orbital/globalCommunicationsSites/contoso-Vernon")
///                 .build())
///             .groundStationName("westus_gs1")
///             .latitudeDegrees(-122.122)
///             .location("westus")
///             .longitudeDegrees(47.674)
///             .providerName("Microsoft")
///             .resourceGroupName("rg1")
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
///             ))
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
/// const groundStation = new azure_native.orbital.GroundStation("groundStation", {
///     altitudeMeters: 1500.83,
///     capabilities: [azure_native.orbital.Capability.Communication],
///     city: "redmond",
///     globalCommunicationsSite: {
///         id: "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/providers/Microsoft.Orbital/globalCommunicationsSites/contoso-Vernon",
///     },
///     groundStationName: "westus_gs1",
///     latitudeDegrees: -122.122,
///     location: "westus",
///     longitudeDegrees: 47.674,
///     providerName: "Microsoft",
///     resourceGroupName: "rg1",
///     tags: {
///         key1: "value1",
///         key2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ground_station = azure_native.orbital.GroundStation("groundStation",
///     altitude_meters=1500.83,
///     capabilities=[azure_native.orbital.Capability.COMMUNICATION],
///     city="redmond",
///     global_communications_site={
///         "id": "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/providers/Microsoft.Orbital/globalCommunicationsSites/contoso-Vernon",
///     },
///     ground_station_name="westus_gs1",
///     latitude_degrees=-122.122,
///     location="westus",
///     longitude_degrees=47.674,
///     provider_name="Microsoft",
///     resource_group_name="rg1",
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   groundStation:
///     type: azure-native:orbital:GroundStation
///     properties:
///       altitudeMeters: 1500.83
///       capabilities:
///         - Communication
///       city: redmond
///       globalCommunicationsSite:
///         id: /subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/providers/Microsoft.Orbital/globalCommunicationsSites/contoso-Vernon
///       groundStationName: westus_gs1
///       latitudeDegrees: -122.122
///       location: westus
///       longitudeDegrees: 47.674
///       providerName: Microsoft
///       resourceGroupName: rg1
///       tags:
///         key1: value1
///         key2: value2
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
/// $ pulumi import azure-native:orbital:GroundStation westus_gs1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Orbital/groundStations/{groundStationName}
/// ```
class GroundStation extends pulumi.CustomResource {
  /// Altitude of the ground station.
  late final pulumi.Output<double?> altitudeMeters;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Ground station capabilities.
  late final pulumi.Output<List<String>> capabilities;
  /// City of ground station.
  late final pulumi.Output<String?> city;
  /// A reference to global communications site.
  late final pulumi.Output<GroundStationsPropertiesResponseGlobalCommunicationsSite> globalCommunicationsSite;
  /// Latitude of the ground station in decimal degrees.
  late final pulumi.Output<double?> latitudeDegrees;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Longitude of the ground station in decimal degrees.
  late final pulumi.Output<double?> longitudeDegrees;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Ground station provider name.
  late final pulumi.Output<String?> providerName;
  /// Release Status of a ground station.
  late final pulumi.Output<String> releaseMode;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [GroundStation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroundStation]. {@macro pulumi_orbital_ground_station_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroundStation(
    String name, {
    GroundStationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:orbital:GroundStation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    altitudeMeters = registerOutput<double?>('altitudeMeters');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    capabilities = registerOutput<List<String>>('capabilities');
    city = registerOutput<String?>('city');
    globalCommunicationsSite = registerOutput<GroundStationsPropertiesResponseGlobalCommunicationsSite>('globalCommunicationsSite', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroundStationsPropertiesResponseGlobalCommunicationsSite.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    latitudeDegrees = registerOutput<double?>('latitudeDegrees');
    location = registerOutput<String>('location');
    longitudeDegrees = registerOutput<double?>('longitudeDegrees');
    this.name = registerOutput<String>('name');
    providerName = registerOutput<String?>('providerName');
    releaseMode = registerOutput<String>('releaseMode');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
