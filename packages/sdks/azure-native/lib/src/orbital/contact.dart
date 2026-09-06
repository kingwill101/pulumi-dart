import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_args.dart';
import 'contacts_properties_response_antenna_configuration.dart';
import 'contacts_properties_response_contact_profile.dart';
import 'system_data_response.dart';

/// Customer creates a contact resource for a spacecraft resource.
///
/// Uses Azure REST API version 2022-11-01. In version 2.x of the Azure Native provider, it used API version 2022-11-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a contact
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var contact = new AzureNative.Orbital.Contact("contact", new()
///     {
///         ContactName = "contact1",
///         ContactProfile = new AzureNative.Orbital.Inputs.ContactsPropertiesContactProfileArgs
///         {
///             Id = "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/contoso-Rgp/providers/Microsoft.Orbital/contactProfiles/CONTOSO-CP",
///         },
///         GroundStationName = "EASTUS2_0",
///         ReservationEndTime = "2023-02-22T11:10:45Z",
///         ReservationStartTime = "2023-02-22T10:58:30Z",
///         ResourceGroupName = "contoso-Rgp",
///         SpacecraftName = "CONTOSO_SAT",
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
/// 		_, err := orbital.NewContact(ctx, "contact", &orbital.ContactArgs{
/// 			ContactName: pulumi.String("contact1"),
/// 			ContactProfile: &orbital.ContactsPropertiesContactProfileArgs{
/// 				Id: pulumi.String("/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/contoso-Rgp/providers/Microsoft.Orbital/contactProfiles/CONTOSO-CP"),
/// 			},
/// 			GroundStationName:    pulumi.String("EASTUS2_0"),
/// 			ReservationEndTime:   pulumi.String("2023-02-22T11:10:45Z"),
/// 			ReservationStartTime: pulumi.String("2023-02-22T10:58:30Z"),
/// 			ResourceGroupName:    pulumi.String("contoso-Rgp"),
/// 			SpacecraftName:       pulumi.String("CONTOSO_SAT"),
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
/// resource "azure-native_orbital_contact" "contact" {
///   contact_name = "contact1"
///   contact_profile = {
///     id = "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/contoso-Rgp/providers/Microsoft.Orbital/contactProfiles/CONTOSO-CP"
///   }
///   ground_station_name    = "EASTUS2_0"
///   reservation_end_time   = "2023-02-22T11:10:45Z"
///   reservation_start_time = "2023-02-22T10:58:30Z"
///   resource_group_name    = "contoso-Rgp"
///   spacecraft_name        = "CONTOSO_SAT"
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
/// import com.pulumi.azurenative.orbital.Contact;
/// import com.pulumi.azurenative.orbital.ContactArgs;
/// import com.pulumi.azurenative.orbital.inputs.ContactsPropertiesContactProfileArgs;
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
///         var contact = new Contact("contact", ContactArgs.builder()
///             .contactName("contact1")
///             .contactProfile(ContactsPropertiesContactProfileArgs.builder()
///                 .id("/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/contoso-Rgp/providers/Microsoft.Orbital/contactProfiles/CONTOSO-CP")
///                 .build())
///             .groundStationName("EASTUS2_0")
///             .reservationEndTime("2023-02-22T11:10:45Z")
///             .reservationStartTime("2023-02-22T10:58:30Z")
///             .resourceGroupName("contoso-Rgp")
///             .spacecraftName("CONTOSO_SAT")
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
/// const contact = new azure_native.orbital.Contact("contact", {
///     contactName: "contact1",
///     contactProfile: {
///         id: "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/contoso-Rgp/providers/Microsoft.Orbital/contactProfiles/CONTOSO-CP",
///     },
///     groundStationName: "EASTUS2_0",
///     reservationEndTime: "2023-02-22T11:10:45Z",
///     reservationStartTime: "2023-02-22T10:58:30Z",
///     resourceGroupName: "contoso-Rgp",
///     spacecraftName: "CONTOSO_SAT",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// contact = azure_native.orbital.Contact("contact",
///     contact_name="contact1",
///     contact_profile={
///         "id": "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/contoso-Rgp/providers/Microsoft.Orbital/contactProfiles/CONTOSO-CP",
///     },
///     ground_station_name="EASTUS2_0",
///     reservation_end_time="2023-02-22T11:10:45Z",
///     reservation_start_time="2023-02-22T10:58:30Z",
///     resource_group_name="contoso-Rgp",
///     spacecraft_name="CONTOSO_SAT")
///
/// ```
///
/// ```yaml
/// resources:
///   contact:
///     type: azure-native:orbital:Contact
///     properties:
///       contactName: contact1
///       contactProfile:
///         id: /subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/contoso-Rgp/providers/Microsoft.Orbital/contactProfiles/CONTOSO-CP
///       groundStationName: EASTUS2_0
///       reservationEndTime: 2023-02-22T11:10:45Z
///       reservationStartTime: 2023-02-22T10:58:30Z
///       resourceGroupName: contoso-Rgp
///       spacecraftName: CONTOSO_SAT
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
/// $ pulumi import azure-native:orbital:Contact contact1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Orbital/spacecrafts/{spacecraftName}/contacts/{contactName}
/// ```
class Contact extends pulumi.CustomResource {
  /// The configuration associated with the allocated antenna.
  late final pulumi.Output<ContactsPropertiesResponseAntennaConfiguration> antennaConfiguration;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The reference to the contact profile resource.
  late final pulumi.Output<ContactsPropertiesResponseContactProfile> contactProfile;
  /// Azimuth of the antenna at the end of the contact in decimal degrees.
  late final pulumi.Output<double> endAzimuthDegrees;
  /// Spacecraft elevation above the horizon at contact end.
  late final pulumi.Output<double> endElevationDegrees;
  /// Any error message while scheduling a contact.
  late final pulumi.Output<String> errorMessage;
  /// Azure Ground Station name.
  late final pulumi.Output<String> groundStationName;
  /// Maximum elevation of the antenna during the contact in decimal degrees.
  late final pulumi.Output<double> maximumElevationDegrees;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Reservation end time of a contact (ISO 8601 UTC standard).
  late final pulumi.Output<String> reservationEndTime;
  /// Reservation start time of a contact (ISO 8601 UTC standard).
  late final pulumi.Output<String> reservationStartTime;
  /// Receive end time of a contact (ISO 8601 UTC standard).
  late final pulumi.Output<String> rxEndTime;
  /// Receive start time of a contact (ISO 8601 UTC standard).
  late final pulumi.Output<String> rxStartTime;
  /// Azimuth of the antenna at the start of the contact in decimal degrees.
  late final pulumi.Output<double> startAzimuthDegrees;
  /// Spacecraft elevation above the horizon at contact start.
  late final pulumi.Output<double> startElevationDegrees;
  /// Status of a contact.
  late final pulumi.Output<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Transmit end time of a contact (ISO 8601 UTC standard).
  late final pulumi.Output<String> txEndTime;
  /// Transmit start time of a contact (ISO 8601 UTC standard).
  late final pulumi.Output<String> txStartTime;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Contact].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Contact]. {@macro pulumi_orbital_contact_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Contact(
    String name, {
    ContactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:orbital:Contact',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    antennaConfiguration = registerOutput<ContactsPropertiesResponseAntennaConfiguration>('antennaConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContactsPropertiesResponseAntennaConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    contactProfile = registerOutput<ContactsPropertiesResponseContactProfile>('contactProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContactsPropertiesResponseContactProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endAzimuthDegrees = registerOutput<double>('endAzimuthDegrees');
    endElevationDegrees = registerOutput<double>('endElevationDegrees');
    errorMessage = registerOutput<String>('errorMessage');
    groundStationName = registerOutput<String>('groundStationName');
    maximumElevationDegrees = registerOutput<double>('maximumElevationDegrees');
    this.name = registerOutput<String>('name');
    reservationEndTime = registerOutput<String>('reservationEndTime');
    reservationStartTime = registerOutput<String>('reservationStartTime');
    rxEndTime = registerOutput<String>('rxEndTime');
    rxStartTime = registerOutput<String>('rxStartTime');
    startAzimuthDegrees = registerOutput<double>('startAzimuthDegrees');
    startElevationDegrees = registerOutput<double>('startElevationDegrees');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    txEndTime = registerOutput<String>('txEndTime');
    txStartTime = registerOutput<String>('txStartTime');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Contact] resource.
  Contact.reference(String urn)
    : super(
        'azure-native:orbital:Contact',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    antennaConfiguration = registerOutput<ContactsPropertiesResponseAntennaConfiguration>('antennaConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContactsPropertiesResponseAntennaConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    contactProfile = registerOutput<ContactsPropertiesResponseContactProfile>('contactProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContactsPropertiesResponseContactProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endAzimuthDegrees = registerOutput<double>('endAzimuthDegrees');
    endElevationDegrees = registerOutput<double>('endElevationDegrees');
    errorMessage = registerOutput<String>('errorMessage');
    groundStationName = registerOutput<String>('groundStationName');
    maximumElevationDegrees = registerOutput<double>('maximumElevationDegrees');
    this.name = registerOutput<String>('name');
    reservationEndTime = registerOutput<String>('reservationEndTime');
    reservationStartTime = registerOutput<String>('reservationStartTime');
    rxEndTime = registerOutput<String>('rxEndTime');
    rxStartTime = registerOutput<String>('rxStartTime');
    startAzimuthDegrees = registerOutput<double>('startAzimuthDegrees');
    startElevationDegrees = registerOutput<double>('startElevationDegrees');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    txEndTime = registerOutput<String>('txEndTime');
    txStartTime = registerOutput<String>('txStartTime');
    type = registerOutput<String>('type');
  }
}
