import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_aggregate_reservation_response.dart';
import 'allocation_resource_status_response.dart';
import 'allocation_specific_skureservation_response.dart';
import 'duration_response.dart';
import 'reservation_args.dart';
import 'share_settings_response.dart';

/// Creates a new reservation. For more information, read Reserving zonal resources.
class ReservationComputeAlpha extends pulumi.CustomResource {
  /// Reservation for aggregated resources, providing shape flexibility.
  late final pulumi.Output<AllocationAggregateReservationResponse>
  aggregateReservation;

  /// Full or partial URL to a parent commitment. This field displays for reservations that are tied to a commitment.
  late final pulumi.Output<String> commitment;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// Duration time relative to reservation creation when GCE will automatically delete this resource.
  late final pulumi.Output<DurationResponse> deleteAfterDuration;

  /// Absolute time in future when the reservation will be auto-deleted by GCE. Timestamp is represented in RFC3339 text format.
  late final pulumi.Output<String> deleteAtTime;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;

  /// Type of the resource. Always compute#reservations for reservations.
  late final pulumi.Output<String> kind;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Resource policies to be added to this reservation. The key is defined by user, and the value is resource policy url. This is to define placement policy with reservation.
  late final pulumi.Output<Map<String, String>> resourcePolicies;

  /// Status information for Reservation resource.
  late final pulumi.Output<AllocationResourceStatusResponse> resourceStatus;

  /// Reserved for future use.
  late final pulumi.Output<bool> satisfiesPzs;

  /// Server-defined fully-qualified URL for this resource.
  late final pulumi.Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithId;

  /// Specify share-settings to create a shared reservation. This property is optional. For more information about the syntax and options for this field and its subfields, see the guide for creating a shared reservation.
  late final pulumi.Output<ShareSettingsResponse> shareSettings;

  /// Reservation for instances with specific machine shapes.
  late final pulumi.Output<AllocationSpecificSKUReservationResponse>
  specificReservation;

  /// Indicates whether the reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from this reservation.
  late final pulumi.Output<bool> specificReservationRequired;

  /// The status of the reservation.
  late final pulumi.Output<String> status;
  late final pulumi.Output<String> zone;

  /// Creates a new [ReservationComputeAlpha].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReservationComputeAlpha]. {@macro pulumi_compute_alpha_reservation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReservationComputeAlpha(
    String name, {
    ReservationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:compute/alpha:Reservation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aggregateReservation =
        registerOutput<AllocationAggregateReservationResponse>(
          'aggregateReservation',
        );
    commitment = registerOutput<String>('commitment');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deleteAfterDuration = registerOutput<DurationResponse>(
      'deleteAfterDuration',
    );
    deleteAtTime = registerOutput<String>('deleteAtTime');
    description = registerOutput<String>('description');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    resourcePolicies = registerOutput<Map<String, String>>('resourcePolicies');
    resourceStatus = registerOutput<AllocationResourceStatusResponse>(
      'resourceStatus',
    );
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithId = registerOutput<String>('selfLinkWithId');
    shareSettings = registerOutput<ShareSettingsResponse>('shareSettings');
    specificReservation =
        registerOutput<AllocationSpecificSKUReservationResponse>(
          'specificReservation',
        );
    specificReservationRequired = registerOutput<bool>(
      'specificReservationRequired',
    );
    status = registerOutput<String>('status');
    zone = registerOutput<String>('zone');
  }
}
