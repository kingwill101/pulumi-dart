import 'package:pulumi/pulumi.dart' as pulumi;
import 'spacecraft_args.dart';
import 'system_data_response.dart';

/// Customer creates a spacecraft resource to schedule a contact.
///
/// Uses Azure REST API version 2022-11-01. In version 2.x of the Azure Native provider, it used API version 2022-11-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a spacecraft
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var spacecraft = new AzureNative.Orbital.Spacecraft("spacecraft", new()
///     {
///         Links = new[]
///         {
///             new AzureNative.Orbital.Inputs.SpacecraftLinkArgs
///             {
///                 BandwidthMHz = 2,
///                 CenterFrequencyMHz = 2250,
///                 Direction = AzureNative.Orbital.Direction.Uplink,
///                 Name = "uplink_lhcp1",
///                 Polarization = AzureNative.Orbital.Polarization.LHCP,
///             },
///             new AzureNative.Orbital.Inputs.SpacecraftLinkArgs
///             {
///                 BandwidthMHz = 15,
///                 CenterFrequencyMHz = 8160,
///                 Direction = AzureNative.Orbital.Direction.Downlink,
///                 Name = "downlink_rhcp1",
///                 Polarization = AzureNative.Orbital.Polarization.RHCP,
///             },
///         },
///         Location = "eastus2",
///         NoradId = "36411",
///         ResourceGroupName = "contoso-Rgp",
///         SpacecraftName = "CONTOSO_SAT",
///         TitleLine = "CONTOSO_SAT",
///         TleLine1 = "1 27424U 02022A   22167.05119303  .00000638  00000+0  15103-3 0  9994",
///         TleLine2 = "2 27424  98.2477 108.9546 0000928  92.9194 327.0802 14.57300770 69982",
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
/// 		_, err := orbital.NewSpacecraft(ctx, "spacecraft", &orbital.SpacecraftArgs{
/// 			Links: orbital.SpacecraftLinkArray{
/// 				&orbital.SpacecraftLinkArgs{
/// 					BandwidthMHz:       pulumi.Float64(2),
/// 					CenterFrequencyMHz: pulumi.Float64(2250),
/// 					Direction:          pulumi.String(orbital.DirectionUplink),
/// 					Name:               pulumi.String("uplink_lhcp1"),
/// 					Polarization:       pulumi.String(orbital.PolarizationLHCP),
/// 				},
/// 				&orbital.SpacecraftLinkArgs{
/// 					BandwidthMHz:       pulumi.Float64(15),
/// 					CenterFrequencyMHz: pulumi.Float64(8160),
/// 					Direction:          pulumi.String(orbital.DirectionDownlink),
/// 					Name:               pulumi.String("downlink_rhcp1"),
/// 					Polarization:       pulumi.String(orbital.PolarizationRHCP),
/// 				},
/// 			},
/// 			Location:          pulumi.String("eastus2"),
/// 			NoradId:           pulumi.String("36411"),
/// 			ResourceGroupName: pulumi.String("contoso-Rgp"),
/// 			SpacecraftName:    pulumi.String("CONTOSO_SAT"),
/// 			TitleLine:         pulumi.String("CONTOSO_SAT"),
/// 			TleLine1:          pulumi.String("1 27424U 02022A   22167.05119303  .00000638  00000+0  15103-3 0  9994"),
/// 			TleLine2:          pulumi.String("2 27424  98.2477 108.9546 0000928  92.9194 327.0802 14.57300770 69982"),
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
/// resource "azure-native_orbital_spacecraft" "spacecraft" {
///   links {
///     bandwidth_m_hz        = 2
///     center_frequency_m_hz = 2250
///     direction             = "Uplink"
///     name                  = "uplink_lhcp1"
///     polarization          = "LHCP"
///   }
///   links {
///     bandwidth_m_hz        = 15
///     center_frequency_m_hz = 8160
///     direction             = "Downlink"
///     name                  = "downlink_rhcp1"
///     polarization          = "RHCP"
///   }
///   location            = "eastus2"
///   norad_id            = "36411"
///   resource_group_name = "contoso-Rgp"
///   spacecraft_name     = "CONTOSO_SAT"
///   title_line          = "CONTOSO_SAT"
///   tle_line1           = "1 27424U 02022A   22167.05119303  .00000638  00000+0  15103-3 0  9994"
///   tle_line2           = "2 27424  98.2477 108.9546 0000928  92.9194 327.0802 14.57300770 69982"
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
/// import com.pulumi.azurenative.orbital.Spacecraft;
/// import com.pulumi.azurenative.orbital.SpacecraftArgs;
/// import com.pulumi.azurenative.orbital.inputs.SpacecraftLinkArgs;
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
///         var spacecraft = new Spacecraft("spacecraft", SpacecraftArgs.builder()
///             .links(
///                 SpacecraftLinkArgs.builder()
///                     .bandwidthMHz(2.0)
///                     .centerFrequencyMHz(2250.0)
///                     .direction("Uplink")
///                     .name("uplink_lhcp1")
///                     .polarization("LHCP")
///                     .build(),
///                 SpacecraftLinkArgs.builder()
///                     .bandwidthMHz(15.0)
///                     .centerFrequencyMHz(8160.0)
///                     .direction("Downlink")
///                     .name("downlink_rhcp1")
///                     .polarization("RHCP")
///                     .build())
///             .location("eastus2")
///             .noradId("36411")
///             .resourceGroupName("contoso-Rgp")
///             .spacecraftName("CONTOSO_SAT")
///             .titleLine("CONTOSO_SAT")
///             .tleLine1("1 27424U 02022A   22167.05119303  .00000638  00000+0  15103-3 0  9994")
///             .tleLine2("2 27424  98.2477 108.9546 0000928  92.9194 327.0802 14.57300770 69982")
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
/// const spacecraft = new azure_native.orbital.Spacecraft("spacecraft", {
///     links: [
///         {
///             bandwidthMHz: 2,
///             centerFrequencyMHz: 2250,
///             direction: azure_native.orbital.Direction.Uplink,
///             name: "uplink_lhcp1",
///             polarization: azure_native.orbital.Polarization.LHCP,
///         },
///         {
///             bandwidthMHz: 15,
///             centerFrequencyMHz: 8160,
///             direction: azure_native.orbital.Direction.Downlink,
///             name: "downlink_rhcp1",
///             polarization: azure_native.orbital.Polarization.RHCP,
///         },
///     ],
///     location: "eastus2",
///     noradId: "36411",
///     resourceGroupName: "contoso-Rgp",
///     spacecraftName: "CONTOSO_SAT",
///     titleLine: "CONTOSO_SAT",
///     tleLine1: "1 27424U 02022A   22167.05119303  .00000638  00000+0  15103-3 0  9994",
///     tleLine2: "2 27424  98.2477 108.9546 0000928  92.9194 327.0802 14.57300770 69982",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// spacecraft = azure_native.orbital.Spacecraft("spacecraft",
///     links=[
///         {
///             "bandwidth_m_hz": float(2),
///             "center_frequency_m_hz": float(2250),
///             "direction": azure_native.orbital.Direction.UPLINK,
///             "name": "uplink_lhcp1",
///             "polarization": azure_native.orbital.Polarization.LHCP,
///         },
///         {
///             "bandwidth_m_hz": float(15),
///             "center_frequency_m_hz": float(8160),
///             "direction": azure_native.orbital.Direction.DOWNLINK,
///             "name": "downlink_rhcp1",
///             "polarization": azure_native.orbital.Polarization.RHCP,
///         },
///     ],
///     location="eastus2",
///     norad_id="36411",
///     resource_group_name="contoso-Rgp",
///     spacecraft_name="CONTOSO_SAT",
///     title_line="CONTOSO_SAT",
///     tle_line1="1 27424U 02022A   22167.05119303  .00000638  00000+0  15103-3 0  9994",
///     tle_line2="2 27424  98.2477 108.9546 0000928  92.9194 327.0802 14.57300770 69982")
///
/// ```
///
/// ```yaml
/// resources:
///   spacecraft:
///     type: azure-native:orbital:Spacecraft
///     properties:
///       links:
///         - bandwidthMHz: 2
///           centerFrequencyMHz: 2250
///           direction: Uplink
///           name: uplink_lhcp1
///           polarization: LHCP
///         - bandwidthMHz: 15
///           centerFrequencyMHz: 8160
///           direction: Downlink
///           name: downlink_rhcp1
///           polarization: RHCP
///       location: eastus2
///       noradId: '36411'
///       resourceGroupName: contoso-Rgp
///       spacecraftName: CONTOSO_SAT
///       titleLine: CONTOSO_SAT
///       tleLine1: 1 27424U 02022A   22167.05119303  .00000638  00000+0  15103-3 0  9994
///       tleLine2: 2 27424  98.2477 108.9546 0000928  92.9194 327.0802 14.57300770 69982
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
/// $ pulumi import azure-native:orbital:Spacecraft CONTOSO_SAT /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Orbital/spacecrafts/{spacecraftName}
/// ```
class Spacecraft extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Immutable list of Spacecraft links.
  late final pulumi.Output<List<Map<String, dynamic>>> links;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// NORAD ID of the spacecraft.
  late final pulumi.Output<String?> noradId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Title line of the two-line element set (TLE).
  late final pulumi.Output<String> titleLine;
  /// Line 1 of the two-line element set (TLE).
  late final pulumi.Output<String> tleLine1;
  /// Line 2 of the two-line element set (TLE).
  late final pulumi.Output<String> tleLine2;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Spacecraft].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Spacecraft]. {@macro pulumi_orbital_spacecraft_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Spacecraft(
    String name, {
    SpacecraftArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:orbital:Spacecraft',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    links = registerOutput<List<Map<String, dynamic>>>('links');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    noradId = registerOutput<String?>('noradId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    titleLine = registerOutput<String>('titleLine');
    tleLine1 = registerOutput<String>('tleLine1');
    tleLine2 = registerOutput<String>('tleLine2');
    type = registerOutput<String>('type');
  }
}
