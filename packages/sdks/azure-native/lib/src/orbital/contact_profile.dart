import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_profile_args.dart';
import 'contact_profiles_properties_response_network_configuration.dart';
import 'system_data_response.dart';

/// Customer creates a Contact Profile Resource, which will contain all of the configurations required for scheduling a contact.
///
/// Uses Azure REST API version 2022-11-01. In version 2.x of the Azure Native provider, it used API version 2022-11-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a contact profile
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var contactProfile = new AzureNative.Orbital.ContactProfile("contactProfile", new()
///     {
///         AutoTrackingConfiguration = AzureNative.Orbital.AutoTrackingConfiguration.Disabled,
///         ContactProfileName = "CONTOSO-CP",
///         EventHubUri = "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/contoso-Rgp/providers/Microsoft.EventHub/namespaces/contosoHub/eventhubs/contosoHub",
///         Links = new[]
///         {
///             new AzureNative.Orbital.Inputs.ContactProfileLinkArgs
///             {
///                 Channels = new[]
///                 {
///                     new AzureNative.Orbital.Inputs.ContactProfileLinkChannelArgs
///                     {
///                         BandwidthMHz = 2,
///                         CenterFrequencyMHz = 2250,
///                         EndPoint = new AzureNative.Orbital.Inputs.EndPointArgs
///                         {
///                             EndPointName = "ContosoTest_Uplink",
///                             IpAddress = "10.1.0.4",
///                             Port = "50000",
///                             Protocol = AzureNative.Orbital.Protocol.TCP,
///                         },
///                         Name = "contoso-uplink-channel",
///                     },
///                 },
///                 Direction = AzureNative.Orbital.Direction.Uplink,
///                 EirpdBW = 45,
///                 GainOverTemperature = 0,
///                 Name = "contoso-uplink",
///                 Polarization = AzureNative.Orbital.Polarization.LHCP,
///             },
///             new AzureNative.Orbital.Inputs.ContactProfileLinkArgs
///             {
///                 Channels = new[]
///                 {
///                     new AzureNative.Orbital.Inputs.ContactProfileLinkChannelArgs
///                     {
///                         BandwidthMHz = 15,
///                         CenterFrequencyMHz = 8160,
///                         EndPoint = new AzureNative.Orbital.Inputs.EndPointArgs
///                         {
///                             EndPointName = "ContosoTest_Downlink",
///                             IpAddress = "10.1.0.5",
///                             Port = "50001",
///                             Protocol = AzureNative.Orbital.Protocol.UDP,
///                         },
///                         Name = "contoso-downlink-channel",
///                     },
///                 },
///                 Direction = AzureNative.Orbital.Direction.Downlink,
///                 EirpdBW = 0,
///                 GainOverTemperature = 25,
///                 Name = "contoso-downlink",
///                 Polarization = AzureNative.Orbital.Polarization.RHCP,
///             },
///         },
///         Location = "eastus2",
///         MinimumElevationDegrees = 5,
///         MinimumViableContactDuration = "PT1M",
///         NetworkConfiguration = new AzureNative.Orbital.Inputs.ContactProfilesPropertiesNetworkConfigurationArgs
///         {
///             SubnetId = "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/contoso-Rgp/providers/Microsoft.Network/virtualNetworks/contoso-vnet/subnets/orbital-delegated-subnet",
///         },
///         ResourceGroupName = "contoso-Rgp",
///         ThirdPartyConfigurations = new[]
///         {
///             new AzureNative.Orbital.Inputs.ContactProfileThirdPartyConfigurationArgs
///             {
///                 MissionConfiguration = "Ksat_MissionConfiguration",
///                 ProviderName = "KSAT",
///             },
///             new AzureNative.Orbital.Inputs.ContactProfileThirdPartyConfigurationArgs
///             {
///                 MissionConfiguration = "Viasat_Configuration",
///                 ProviderName = "VIASAT",
///             },
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
/// 		_, err := orbital.NewContactProfile(ctx, "contactProfile", &orbital.ContactProfileArgs{
/// 			AutoTrackingConfiguration: orbital.AutoTrackingConfigurationDisabled,
/// 			ContactProfileName:        pulumi.String("CONTOSO-CP"),
/// 			EventHubUri:               pulumi.String("/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/contoso-Rgp/providers/Microsoft.EventHub/namespaces/contosoHub/eventhubs/contosoHub"),
/// 			Links: orbital.ContactProfileLinkArray{
/// 				&orbital.ContactProfileLinkArgs{
/// 					Channels: orbital.ContactProfileLinkChannelArray{
/// 						&orbital.ContactProfileLinkChannelArgs{
/// 							BandwidthMHz:       pulumi.Float64(2),
/// 							CenterFrequencyMHz: pulumi.Float64(2250),
/// 							EndPoint: &orbital.EndPointArgs{
/// 								EndPointName: pulumi.String("ContosoTest_Uplink"),
/// 								IpAddress:    pulumi.String("10.1.0.4"),
/// 								Port:         pulumi.String("50000"),
/// 								Protocol:     pulumi.String(orbital.ProtocolTCP),
/// 							},
/// 							Name: pulumi.String("contoso-uplink-channel"),
/// 						},
/// 					},
/// 					Direction:           pulumi.String(orbital.DirectionUplink),
/// 					EirpdBW:             pulumi.Float64(45),
/// 					GainOverTemperature: pulumi.Float64(0),
/// 					Name:                pulumi.String("contoso-uplink"),
/// 					Polarization:        pulumi.String(orbital.PolarizationLHCP),
/// 				},
/// 				&orbital.ContactProfileLinkArgs{
/// 					Channels: orbital.ContactProfileLinkChannelArray{
/// 						&orbital.ContactProfileLinkChannelArgs{
/// 							BandwidthMHz:       pulumi.Float64(15),
/// 							CenterFrequencyMHz: pulumi.Float64(8160),
/// 							EndPoint: &orbital.EndPointArgs{
/// 								EndPointName: pulumi.String("ContosoTest_Downlink"),
/// 								IpAddress:    pulumi.String("10.1.0.5"),
/// 								Port:         pulumi.String("50001"),
/// 								Protocol:     pulumi.String(orbital.ProtocolUDP),
/// 							},
/// 							Name: pulumi.String("contoso-downlink-channel"),
/// 						},
/// 					},
/// 					Direction:           pulumi.String(orbital.DirectionDownlink),
/// 					EirpdBW:             pulumi.Float64(0),
/// 					GainOverTemperature: pulumi.Float64(25),
/// 					Name:                pulumi.String("contoso-downlink"),
/// 					Polarization:        pulumi.String(orbital.PolarizationRHCP),
/// 				},
/// 			},
/// 			Location:                     pulumi.String("eastus2"),
/// 			MinimumElevationDegrees:      pulumi.Float64(5),
/// 			MinimumViableContactDuration: pulumi.String("PT1M"),
/// 			NetworkConfiguration: &orbital.ContactProfilesPropertiesNetworkConfigurationArgs{
/// 				SubnetId: pulumi.String("/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/contoso-Rgp/providers/Microsoft.Network/virtualNetworks/contoso-vnet/subnets/orbital-delegated-subnet"),
/// 			},
/// 			ResourceGroupName: pulumi.String("contoso-Rgp"),
/// 			ThirdPartyConfigurations: orbital.ContactProfileThirdPartyConfigurationArray{
/// 				&orbital.ContactProfileThirdPartyConfigurationArgs{
/// 					MissionConfiguration: pulumi.String("Ksat_MissionConfiguration"),
/// 					ProviderName:         pulumi.String("KSAT"),
/// 				},
/// 				&orbital.ContactProfileThirdPartyConfigurationArgs{
/// 					MissionConfiguration: pulumi.String("Viasat_Configuration"),
/// 					ProviderName:         pulumi.String("VIASAT"),
/// 				},
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
/// import com.pulumi.azurenative.orbital.ContactProfile;
/// import com.pulumi.azurenative.orbital.ContactProfileArgs;
/// import com.pulumi.azurenative.orbital.inputs.ContactProfileLinkArgs;
/// import com.pulumi.azurenative.orbital.inputs.ContactProfilesPropertiesNetworkConfigurationArgs;
/// import com.pulumi.azurenative.orbital.inputs.ContactProfileThirdPartyConfigurationArgs;
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
///         var contactProfile = new ContactProfile("contactProfile", ContactProfileArgs.builder()
///             .autoTrackingConfiguration("disabled")
///             .contactProfileName("CONTOSO-CP")
///             .eventHubUri("/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/contoso-Rgp/providers/Microsoft.EventHub/namespaces/contosoHub/eventhubs/contosoHub")
///             .links(
///                 ContactProfileLinkArgs.builder()
///                     .channels(ContactProfileLinkChannelArgs.builder()
///                         .bandwidthMHz(2.0)
///                         .centerFrequencyMHz(2250.0)
///                         .endPoint(EndPointArgs.builder()
///                             .endPointName("ContosoTest_Uplink")
///                             .ipAddress("10.1.0.4")
///                             .port("50000")
///                             .protocol("TCP")
///                             .build())
///                         .name("contoso-uplink-channel")
///                         .build())
///                     .direction("Uplink")
///                     .eirpdBW(45.0)
///                     .gainOverTemperature(0.0)
///                     .name("contoso-uplink")
///                     .polarization("LHCP")
///                     .build(),
///                 ContactProfileLinkArgs.builder()
///                     .channels(ContactProfileLinkChannelArgs.builder()
///                         .bandwidthMHz(15.0)
///                         .centerFrequencyMHz(8160.0)
///                         .endPoint(EndPointArgs.builder()
///                             .endPointName("ContosoTest_Downlink")
///                             .ipAddress("10.1.0.5")
///                             .port("50001")
///                             .protocol("UDP")
///                             .build())
///                         .name("contoso-downlink-channel")
///                         .build())
///                     .direction("Downlink")
///                     .eirpdBW(0.0)
///                     .gainOverTemperature(25.0)
///                     .name("contoso-downlink")
///                     .polarization("RHCP")
///                     .build())
///             .location("eastus2")
///             .minimumElevationDegrees(5.0)
///             .minimumViableContactDuration("PT1M")
///             .networkConfiguration(ContactProfilesPropertiesNetworkConfigurationArgs.builder()
///                 .subnetId("/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/contoso-Rgp/providers/Microsoft.Network/virtualNetworks/contoso-vnet/subnets/orbital-delegated-subnet")
///                 .build())
///             .resourceGroupName("contoso-Rgp")
///             .thirdPartyConfigurations(
///                 ContactProfileThirdPartyConfigurationArgs.builder()
///                     .missionConfiguration("Ksat_MissionConfiguration")
///                     .providerName("KSAT")
///                     .build(),
///                 ContactProfileThirdPartyConfigurationArgs.builder()
///                     .missionConfiguration("Viasat_Configuration")
///                     .providerName("VIASAT")
///                     .build())
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
/// const contactProfile = new azure_native.orbital.ContactProfile("contactProfile", {
///     autoTrackingConfiguration: azure_native.orbital.AutoTrackingConfiguration.Disabled,
///     contactProfileName: "CONTOSO-CP",
///     eventHubUri: "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/contoso-Rgp/providers/Microsoft.EventHub/namespaces/contosoHub/eventhubs/contosoHub",
///     links: [
///         {
///             channels: [{
///                 bandwidthMHz: 2,
///                 centerFrequencyMHz: 2250,
///                 endPoint: {
///                     endPointName: "ContosoTest_Uplink",
///                     ipAddress: "10.1.0.4",
///                     port: "50000",
///                     protocol: azure_native.orbital.Protocol.TCP,
///                 },
///                 name: "contoso-uplink-channel",
///             }],
///             direction: azure_native.orbital.Direction.Uplink,
///             eirpdBW: 45,
///             gainOverTemperature: 0,
///             name: "contoso-uplink",
///             polarization: azure_native.orbital.Polarization.LHCP,
///         },
///         {
///             channels: [{
///                 bandwidthMHz: 15,
///                 centerFrequencyMHz: 8160,
///                 endPoint: {
///                     endPointName: "ContosoTest_Downlink",
///                     ipAddress: "10.1.0.5",
///                     port: "50001",
///                     protocol: azure_native.orbital.Protocol.UDP,
///                 },
///                 name: "contoso-downlink-channel",
///             }],
///             direction: azure_native.orbital.Direction.Downlink,
///             eirpdBW: 0,
///             gainOverTemperature: 25,
///             name: "contoso-downlink",
///             polarization: azure_native.orbital.Polarization.RHCP,
///         },
///     ],
///     location: "eastus2",
///     minimumElevationDegrees: 5,
///     minimumViableContactDuration: "PT1M",
///     networkConfiguration: {
///         subnetId: "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/contoso-Rgp/providers/Microsoft.Network/virtualNetworks/contoso-vnet/subnets/orbital-delegated-subnet",
///     },
///     resourceGroupName: "contoso-Rgp",
///     thirdPartyConfigurations: [
///         {
///             missionConfiguration: "Ksat_MissionConfiguration",
///             providerName: "KSAT",
///         },
///         {
///             missionConfiguration: "Viasat_Configuration",
///             providerName: "VIASAT",
///         },
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// contact_profile = azure_native.orbital.ContactProfile("contactProfile",
///     auto_tracking_configuration=azure_native.orbital.AutoTrackingConfiguration.DISABLED,
///     contact_profile_name="CONTOSO-CP",
///     event_hub_uri="/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/contoso-Rgp/providers/Microsoft.EventHub/namespaces/contosoHub/eventhubs/contosoHub",
///     links=[
///         {
///             "channels": [{
///                 "bandwidth_m_hz": 2,
///                 "center_frequency_m_hz": 2250,
///                 "end_point": {
///                     "end_point_name": "ContosoTest_Uplink",
///                     "ip_address": "10.1.0.4",
///                     "port": "50000",
///                     "protocol": azure_native.orbital.Protocol.TCP,
///                 },
///                 "name": "contoso-uplink-channel",
///             }],
///             "direction": azure_native.orbital.Direction.UPLINK,
///             "eirpd_bw": 45,
///             "gain_over_temperature": 0,
///             "name": "contoso-uplink",
///             "polarization": azure_native.orbital.Polarization.LHCP,
///         },
///         {
///             "channels": [{
///                 "bandwidth_m_hz": 15,
///                 "center_frequency_m_hz": 8160,
///                 "end_point": {
///                     "end_point_name": "ContosoTest_Downlink",
///                     "ip_address": "10.1.0.5",
///                     "port": "50001",
///                     "protocol": azure_native.orbital.Protocol.UDP,
///                 },
///                 "name": "contoso-downlink-channel",
///             }],
///             "direction": azure_native.orbital.Direction.DOWNLINK,
///             "eirpd_bw": 0,
///             "gain_over_temperature": 25,
///             "name": "contoso-downlink",
///             "polarization": azure_native.orbital.Polarization.RHCP,
///         },
///     ],
///     location="eastus2",
///     minimum_elevation_degrees=5,
///     minimum_viable_contact_duration="PT1M",
///     network_configuration={
///         "subnet_id": "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/contoso-Rgp/providers/Microsoft.Network/virtualNetworks/contoso-vnet/subnets/orbital-delegated-subnet",
///     },
///     resource_group_name="contoso-Rgp",
///     third_party_configurations=[
///         {
///             "mission_configuration": "Ksat_MissionConfiguration",
///             "provider_name": "KSAT",
///         },
///         {
///             "mission_configuration": "Viasat_Configuration",
///             "provider_name": "VIASAT",
///         },
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   contactProfile:
///     type: azure-native:orbital:ContactProfile
///     properties:
///       autoTrackingConfiguration: disabled
///       contactProfileName: CONTOSO-CP
///       eventHubUri: /subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/contoso-Rgp/providers/Microsoft.EventHub/namespaces/contosoHub/eventhubs/contosoHub
///       links:
///         - channels:
///             - bandwidthMHz: 2
///               centerFrequencyMHz: 2250
///               endPoint:
///                 endPointName: ContosoTest_Uplink
///                 ipAddress: 10.1.0.4
///                 port: '50000'
///                 protocol: TCP
///               name: contoso-uplink-channel
///           direction: Uplink
///           eirpdBW: 45
///           gainOverTemperature: 0
///           name: contoso-uplink
///           polarization: LHCP
///         - channels:
///             - bandwidthMHz: 15
///               centerFrequencyMHz: 8160
///               endPoint:
///                 endPointName: ContosoTest_Downlink
///                 ipAddress: 10.1.0.5
///                 port: '50001'
///                 protocol: UDP
///               name: contoso-downlink-channel
///           direction: Downlink
///           eirpdBW: 0
///           gainOverTemperature: 25
///           name: contoso-downlink
///           polarization: RHCP
///       location: eastus2
///       minimumElevationDegrees: 5
///       minimumViableContactDuration: PT1M
///       networkConfiguration:
///         subnetId: /subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/contoso-Rgp/providers/Microsoft.Network/virtualNetworks/contoso-vnet/subnets/orbital-delegated-subnet
///       resourceGroupName: contoso-Rgp
///       thirdPartyConfigurations:
///         - missionConfiguration: Ksat_MissionConfiguration
///           providerName: KSAT
///         - missionConfiguration: Viasat_Configuration
///           providerName: VIASAT
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
/// $ pulumi import azure-native:orbital:ContactProfile CONTOSO-CP /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Orbital/contactProfiles/{contactProfileName}
/// ```
class ContactProfile extends pulumi.CustomResource {
  /// Auto-tracking configuration.
  late final pulumi.Output<String?> autoTrackingConfiguration;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// ARM resource identifier of the Event Hub used for telemetry. Requires granting Orbital Resource Provider the rights to send telemetry into the hub.
  late final pulumi.Output<String?> eventHubUri;

  /// Links of the Contact Profile. Describes RF links, modem processing, and IP endpoints.
  late final pulumi.Output<List<Map<String, dynamic>>> links;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// Minimum viable elevation for the contact in decimal degrees. Used for listing the available contacts with a spacecraft at a given ground station.
  late final pulumi.Output<double?> minimumElevationDegrees;

  /// Minimum viable contact duration in ISO 8601 format. Used for listing the available contacts with a spacecraft at a given ground station.
  late final pulumi.Output<String?> minimumViableContactDuration;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Network configuration of customer virtual network.
  late final pulumi.Output<
    ContactProfilesPropertiesResponseNetworkConfiguration
  >
  networkConfiguration;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Third-party mission configuration of the Contact Profile. Describes RF links, modem processing, and IP endpoints.
  late final pulumi.Output<List<Map<String, dynamic>>?>
  thirdPartyConfigurations;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ContactProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContactProfile]. {@macro pulumi_orbital_contact_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContactProfile(
    String name, {
    ContactProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:orbital:ContactProfile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoTrackingConfiguration = registerOutput<String?>(
      'autoTrackingConfiguration',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eventHubUri = registerOutput<String?>('eventHubUri');
    links = registerOutput<List<Map<String, dynamic>>>('links');
    location = registerOutput<String>('location');
    minimumElevationDegrees = registerOutput<double?>(
      'minimumElevationDegrees',
    );
    minimumViableContactDuration = registerOutput<String?>(
      'minimumViableContactDuration',
    );
    this.name = registerOutput<String>('name');
    networkConfiguration =
        registerOutput<ContactProfilesPropertiesResponseNetworkConfiguration>(
          'networkConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ContactProfilesPropertiesResponseNetworkConfiguration.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
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
    tags = registerOutput<Map<String, String>?>('tags');
    thirdPartyConfigurations = registerOutput<List<Map<String, dynamic>>?>(
      'thirdPartyConfigurations',
    );
    type = registerOutput<String>('type');
  }
}
