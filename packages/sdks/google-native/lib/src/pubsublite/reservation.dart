import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_args.dart';

/// Creates a new reservation.
class Reservation extends pulumi.CustomResource {
  late final pulumi.Output<String> location;
  /// The name of the reservation. Structured like: projects/{project_number}/locations/{location}/reservations/{reservation_id}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Required. The ID to use for the reservation, which will become the final component of the reservation's name. This value is structured like: `my-reservation-name`.
  late final pulumi.Output<String> reservationId;
  /// The reserved throughput capacity. Every unit of throughput capacity is equivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed messages. Any topics which are declared as using capacity from a Reservation will consume resources from this reservation instead of being charged individually.
  late final pulumi.Output<String> throughputCapacity;

  /// Creates a new [Reservation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Reservation]. {@macro pulumi_pubsublite_v1_reservation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Reservation(
    String name, {
    ReservationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:pubsublite/v1:Reservation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['location', 'project', 'reservationId']).merge(options),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    reservationId = registerOutput<String>('reservationId');
    throughputCapacity = registerOutput<String>('throughputCapacity');
  }

  /// Creates a typed reference to an existing [Reservation] resource.
  Reservation.reference(String urn)
    : super(
        'google-native:pubsublite/v1:Reservation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    reservationId = registerOutput<String>('reservationId');
    throughputCapacity = registerOutput<String>('throughputCapacity');
  }
}
