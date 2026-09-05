import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_transit_connector_args.dart';
import 'magic_transit_connector_device.dart';
import 'magic_transit_connector_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleMagicTransitConnector = new cloudflare.MagicTransitConnector("example_magic_transit_connector", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     device: {
///         id: "id",
///         provisionLicense: true,
///         serialNumber: "serial_number",
///     },
///     activated: true,
///     interruptWindowDaysOfWeek: ["Sunday"],
///     interruptWindowDurationHours: 1,
///     interruptWindowEmbargoDates: ["string"],
///     interruptWindowHourOfDay: 0,
///     notes: "notes",
///     timezone: "timezone",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_magic_transit_connector = cloudflare.MagicTransitConnector("example_magic_transit_connector",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     device={
///         "id": "id",
///         "provision_license": True,
///         "serial_number": "serial_number",
///     },
///     activated=True,
///     interrupt_window_days_of_week=["Sunday"],
///     interrupt_window_duration_hours=float(1),
///     interrupt_window_embargo_dates=["string"],
///     interrupt_window_hour_of_day=float(0),
///     notes="notes",
///     timezone="timezone")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleMagicTransitConnector = new Cloudflare.MagicTransitConnector("example_magic_transit_connector", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Device = new Cloudflare.Inputs.MagicTransitConnectorDeviceArgs
///         {
///             Id = "id",
///             ProvisionLicense = true,
///             SerialNumber = "serial_number",
///         },
///         Activated = true,
///         InterruptWindowDaysOfWeek = new[]
///         {
///             "Sunday",
///         },
///         InterruptWindowDurationHours = 1,
///         InterruptWindowEmbargoDates = new[]
///         {
///             "string",
///         },
///         InterruptWindowHourOfDay = 0,
///         Notes = "notes",
///         Timezone = "timezone",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewMagicTransitConnector(ctx, "example_magic_transit_connector", &cloudflare.MagicTransitConnectorArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Device: &cloudflare.MagicTransitConnectorDeviceArgs{
/// 				Id:               pulumi.String("id"),
/// 				ProvisionLicense: pulumi.Bool(true),
/// 				SerialNumber:     pulumi.String("serial_number"),
/// 			},
/// 			Activated: pulumi.Bool(true),
/// 			InterruptWindowDaysOfWeek: []string{
/// 				"Sunday",
/// 			},
/// 			InterruptWindowDurationHours: pulumi.Float64(1),
/// 			InterruptWindowEmbargoDates: []string{
/// 				"string",
/// 			},
/// 			InterruptWindowHourOfDay: pulumi.Float64(0),
/// 			Notes:                    pulumi.String("notes"),
/// 			Timezone:                 pulumi.String("timezone"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_magictransitconnector" "example_magic_transit_connector" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   device = {
///     id                = "id"
///     provision_license = true
///     serial_number     = "serial_number"
///   }
///   activated                       = true
///   interrupt_window_days_of_week   = ["Sunday"]
///   interrupt_window_duration_hours = 1
///   interrupt_window_embargo_dates  = ["string"]
///   interrupt_window_hour_of_day    = 0
///   notes                           = "notes"
///   timezone                        = "timezone"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.MagicTransitConnector;
/// import com.pulumi.cloudflare.MagicTransitConnectorArgs;
/// import com.pulumi.cloudflare.inputs.MagicTransitConnectorDeviceArgs;
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
///         var exampleMagicTransitConnector = new MagicTransitConnector("exampleMagicTransitConnector", MagicTransitConnectorArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .device(MagicTransitConnectorDeviceArgs.builder()
///                 .id("id")
///                 .provisionLicense(true)
///                 .serialNumber("serial_number")
///                 .build())
///             .activated(true)
///             .interruptWindowDaysOfWeek(Arrays.asList("Sunday"))
///             .interruptWindowDurationHours(1.0)
///             .interruptWindowEmbargoDates(Arrays.asList("string"))
///             .interruptWindowHourOfDay(0.0)
///             .notes("notes")
///             .timezone("timezone")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleMagicTransitConnector:
///     type: cloudflare:MagicTransitConnector
///     name: example_magic_transit_connector
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       device:
///         id: id
///         provisionLicense: true
///         serialNumber: serial_number
///       activated: true
///       interruptWindowDaysOfWeek:
///         - Sunday
///       interruptWindowDurationHours: 1
///       interruptWindowEmbargoDates:
///         - string
///       interruptWindowHourOfDay: 0
///       notes: notes
///       timezone: timezone
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/magicTransitConnector:MagicTransitConnector example '<account_id>/<connector_id>'
/// ```
class MagicTransitConnector extends pulumi.CustomResource {
  /// Account identifier
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<bool> activated;
  late final pulumi.Output<MagicTransitConnectorDevice> device;
  late final pulumi.Output<double> interruptWindowDurationHours;
  late final pulumi.Output<double> interruptWindowHourOfDay;
  /// License key for the connector. This is only returned on creation and will not be available in subsequent reads.
  late final pulumi.Output<String> licenseKey;
  late final pulumi.Output<String> notes;
  late final pulumi.Output<String> timezone;

  /// Creates a new [MagicTransitConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MagicTransitConnector]. {@macro pulumi_index_magic_transit_connector_magic_transit_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MagicTransitConnector(
    String name, {
    MagicTransitConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicTransitConnector:MagicTransitConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
          additionalSecretOutputs: const ['licenseKey'],
        ) {
    accountId = registerOutput<String>('accountId');
    activated = registerOutput<bool>('activated');
    device = registerOutput<MagicTransitConnectorDevice>('device', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitConnectorDevice.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interruptWindowDurationHours = registerOutput<double>('interruptWindowDurationHours');
    interruptWindowHourOfDay = registerOutput<double>('interruptWindowHourOfDay');
    licenseKey = registerOutput<String>('licenseKey', isSecret: true);
    notes = registerOutput<String>('notes');
    timezone = registerOutput<String>('timezone');
  }

  /// Gets an existing [MagicTransitConnector] resource's state with the given [name] and [id].
  static MagicTransitConnector get(
    String name,
    pulumi.Input<String> id, {
    MagicTransitConnectorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MagicTransitConnector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MagicTransitConnector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicTransitConnector:MagicTransitConnector',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    activated = registerOutput<bool>('activated');
    device = registerOutput<MagicTransitConnectorDevice>('device', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitConnectorDevice.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interruptWindowDurationHours = registerOutput<double>('interruptWindowDurationHours');
    interruptWindowHourOfDay = registerOutput<double>('interruptWindowHourOfDay');
    licenseKey = registerOutput<String>('licenseKey', isSecret: true);
    notes = registerOutput<String>('notes');
    timezone = registerOutput<String>('timezone');
  }

  /// Creates a typed reference to an existing [MagicTransitConnector] resource.
  MagicTransitConnector.reference(String urn)
    : super(
        'cloudflare:index/magicTransitConnector:MagicTransitConnector',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['licenseKey'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    activated = registerOutput<bool>('activated');
    device = registerOutput<MagicTransitConnectorDevice>('device', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitConnectorDevice.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interruptWindowDurationHours = registerOutput<double>('interruptWindowDurationHours');
    interruptWindowHourOfDay = registerOutput<double>('interruptWindowHourOfDay');
    licenseKey = registerOutput<String>('licenseKey', isSecret: true);
    notes = registerOutput<String>('notes');
    timezone = registerOutput<String>('timezone');
  }
}
