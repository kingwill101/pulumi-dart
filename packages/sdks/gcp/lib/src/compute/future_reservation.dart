import 'package:pulumi/pulumi.dart' as pulumi;
import 'future_reservation_aggregate_reservation.dart';
import 'future_reservation_args.dart';
import 'future_reservation_auto_created_reservations_duration.dart';
import 'future_reservation_commitment_info.dart';
import 'future_reservation_share_settings.dart';
import 'future_reservation_specific_sku_properties.dart';
import 'future_reservation_state.dart';
import 'future_reservation_time_window.dart';

/// Represents a future reservation resource in Compute Engine. Future reservations allow users
/// to reserve capacity for a specified time window, ensuring that resources are available
/// when needed.
///
/// Reservations apply only to Compute Engine, Cloud Dataproc, and Google
/// Kubernetes Engine VM usage.Reservations do not apply to `f1-micro` or
/// `g1-small` machine types, preemptible VMs, sole tenant nodes, or other
/// services not listed above
/// like Cloud SQL and Dataflow.
///
/// To get more information about FutureReservation, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/futureReservations)
/// * How-to Guides
/// * [Future Reservations Guide](https://cloud.google.com/compute/docs/instances/future-reservations-overview)
///
/// ## Example Usage
///
/// ### Future Reservation Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const gceFutureReservation = new gcp.compute.FutureReservation("gce_future_reservation", {
///     name: "gce-future-reservation",
///     project: "my-project-name",
///     autoDeleteAutoCreatedReservations: true,
///     planningStatus: "DRAFT",
///     namePrefix: "fr-basic",
///     timeWindow: {
///         startTime: "2025-11-01T00:00:00Z",
///         endTime: "2025-11-02T00:00:00Z",
///     },
///     specificSkuProperties: {
///         totalCount: "1",
///         instanceProperties: {
///             machineType: "e2-standard-2",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// gce_future_reservation = gcp.compute.FutureReservation("gce_future_reservation",
///     name="gce-future-reservation",
///     project="my-project-name",
///     auto_delete_auto_created_reservations=True,
///     planning_status="DRAFT",
///     name_prefix="fr-basic",
///     time_window={
///         "start_time": "2025-11-01T00:00:00Z",
///         "end_time": "2025-11-02T00:00:00Z",
///     },
///     specific_sku_properties={
///         "total_count": "1",
///         "instance_properties": {
///             "machine_type": "e2-standard-2",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gceFutureReservation = new Gcp.Compute.FutureReservation("gce_future_reservation", new()
///     {
///         Name = "gce-future-reservation",
///         Project = "my-project-name",
///         AutoDeleteAutoCreatedReservations = true,
///         PlanningStatus = "DRAFT",
///         NamePrefix = "fr-basic",
///         TimeWindow = new Gcp.Compute.Inputs.FutureReservationTimeWindowArgs
///         {
///             StartTime = "2025-11-01T00:00:00Z",
///             EndTime = "2025-11-02T00:00:00Z",
///         },
///         SpecificSkuProperties = new Gcp.Compute.Inputs.FutureReservationSpecificSkuPropertiesArgs
///         {
///             TotalCount = "1",
///             InstanceProperties = new Gcp.Compute.Inputs.FutureReservationSpecificSkuPropertiesInstancePropertiesArgs
///             {
///                 MachineType = "e2-standard-2",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewFutureReservation(ctx, "gce_future_reservation", &compute.FutureReservationArgs{
/// 			Name:                              pulumi.String("gce-future-reservation"),
/// 			Project:                           pulumi.String("my-project-name"),
/// 			AutoDeleteAutoCreatedReservations: pulumi.Bool(true),
/// 			PlanningStatus:                    pulumi.String("DRAFT"),
/// 			NamePrefix:                        pulumi.String("fr-basic"),
/// 			TimeWindow: &compute.FutureReservationTimeWindowArgs{
/// 				StartTime: pulumi.String("2025-11-01T00:00:00Z"),
/// 				EndTime:   pulumi.String("2025-11-02T00:00:00Z"),
/// 			},
/// 			SpecificSkuProperties: &compute.FutureReservationSpecificSkuPropertiesArgs{
/// 				TotalCount: pulumi.String("1"),
/// 				InstanceProperties: &compute.FutureReservationSpecificSkuPropertiesInstancePropertiesArgs{
/// 					MachineType: pulumi.String("e2-standard-2"),
/// 				},
/// 			},
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
/// import com.pulumi.gcp.compute.FutureReservation;
/// import com.pulumi.gcp.compute.FutureReservationArgs;
/// import com.pulumi.gcp.compute.inputs.FutureReservationTimeWindowArgs;
/// import com.pulumi.gcp.compute.inputs.FutureReservationSpecificSkuPropertiesArgs;
/// import com.pulumi.gcp.compute.inputs.FutureReservationSpecificSkuPropertiesInstancePropertiesArgs;
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
///         var gceFutureReservation = new FutureReservation("gceFutureReservation", FutureReservationArgs.builder()
///             .name("gce-future-reservation")
///             .project("my-project-name")
///             .autoDeleteAutoCreatedReservations(true)
///             .planningStatus("DRAFT")
///             .namePrefix("fr-basic")
///             .timeWindow(FutureReservationTimeWindowArgs.builder()
///                 .startTime("2025-11-01T00:00:00Z")
///                 .endTime("2025-11-02T00:00:00Z")
///                 .build())
///             .specificSkuProperties(FutureReservationSpecificSkuPropertiesArgs.builder()
///                 .totalCount("1")
///                 .instanceProperties(FutureReservationSpecificSkuPropertiesInstancePropertiesArgs.builder()
///                     .machineType("e2-standard-2")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   gceFutureReservation:
///     type: gcp:compute:FutureReservation
///     name: gce_future_reservation
///     properties:
///       name: gce-future-reservation
///       project: my-project-name
///       autoDeleteAutoCreatedReservations: true
///       planningStatus: DRAFT
///       namePrefix: fr-basic
///       timeWindow:
///         startTime: 2025-11-01T00:00:00Z
///         endTime: 2025-11-02T00:00:00Z
///       specificSkuProperties:
///         totalCount: '1'
///         instanceProperties:
///           machineType: e2-standard-2
/// ```
///
/// ### Future Reservation Aggregate Reservation
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const gceFutureReservation = new gcp.compute.FutureReservation("gce_future_reservation", {
///     name: "gce-future-reservation-aggregate-reservation",
///     project: "my-project-name",
///     autoDeleteAutoCreatedReservations: true,
///     planningStatus: "DRAFT",
///     namePrefix: "fr-basic",
///     timeWindow: {
///         startTime: "2025-11-01T00:00:00Z",
///         endTime: "2025-11-02T00:00:00Z",
///     },
///     aggregateReservation: {
///         vmFamily: "VM_FAMILY_CLOUD_TPU_DEVICE_CT3",
///         workloadType: "UNSPECIFIED",
///         reservedResources: [
///             {
///                 accelerator: {
///                     acceleratorCount: 32,
///                     acceleratorType: "projects/my-project-name/zones/us-central1-a/acceleratorTypes/ct3",
///                 },
///             },
///             {
///                 accelerator: {
///                     acceleratorCount: 2,
///                     acceleratorType: "projects/my-project-name/zones/us-central1-a/acceleratorTypes/ct3",
///                 },
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// gce_future_reservation = gcp.compute.FutureReservation("gce_future_reservation",
///     name="gce-future-reservation-aggregate-reservation",
///     project="my-project-name",
///     auto_delete_auto_created_reservations=True,
///     planning_status="DRAFT",
///     name_prefix="fr-basic",
///     time_window={
///         "start_time": "2025-11-01T00:00:00Z",
///         "end_time": "2025-11-02T00:00:00Z",
///     },
///     aggregate_reservation={
///         "vm_family": "VM_FAMILY_CLOUD_TPU_DEVICE_CT3",
///         "workload_type": "UNSPECIFIED",
///         "reserved_resources": [
///             {
///                 "accelerator": {
///                     "accelerator_count": 32,
///                     "accelerator_type": "projects/my-project-name/zones/us-central1-a/acceleratorTypes/ct3",
///                 },
///             },
///             {
///                 "accelerator": {
///                     "accelerator_count": 2,
///                     "accelerator_type": "projects/my-project-name/zones/us-central1-a/acceleratorTypes/ct3",
///                 },
///             },
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gceFutureReservation = new Gcp.Compute.FutureReservation("gce_future_reservation", new()
///     {
///         Name = "gce-future-reservation-aggregate-reservation",
///         Project = "my-project-name",
///         AutoDeleteAutoCreatedReservations = true,
///         PlanningStatus = "DRAFT",
///         NamePrefix = "fr-basic",
///         TimeWindow = new Gcp.Compute.Inputs.FutureReservationTimeWindowArgs
///         {
///             StartTime = "2025-11-01T00:00:00Z",
///             EndTime = "2025-11-02T00:00:00Z",
///         },
///         AggregateReservation = new Gcp.Compute.Inputs.FutureReservationAggregateReservationArgs
///         {
///             VmFamily = "VM_FAMILY_CLOUD_TPU_DEVICE_CT3",
///             WorkloadType = "UNSPECIFIED",
///             ReservedResources = new[]
///             {
///                 new Gcp.Compute.Inputs.FutureReservationAggregateReservationReservedResourceArgs
///                 {
///                     Accelerator = new Gcp.Compute.Inputs.FutureReservationAggregateReservationReservedResourceAcceleratorArgs
///                     {
///                         AcceleratorCount = 32,
///                         AcceleratorType = "projects/my-project-name/zones/us-central1-a/acceleratorTypes/ct3",
///                     },
///                 },
///                 new Gcp.Compute.Inputs.FutureReservationAggregateReservationReservedResourceArgs
///                 {
///                     Accelerator = new Gcp.Compute.Inputs.FutureReservationAggregateReservationReservedResourceAcceleratorArgs
///                     {
///                         AcceleratorCount = 2,
///                         AcceleratorType = "projects/my-project-name/zones/us-central1-a/acceleratorTypes/ct3",
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewFutureReservation(ctx, "gce_future_reservation", &compute.FutureReservationArgs{
/// 			Name:                              pulumi.String("gce-future-reservation-aggregate-reservation"),
/// 			Project:                           pulumi.String("my-project-name"),
/// 			AutoDeleteAutoCreatedReservations: pulumi.Bool(true),
/// 			PlanningStatus:                    pulumi.String("DRAFT"),
/// 			NamePrefix:                        pulumi.String("fr-basic"),
/// 			TimeWindow: &compute.FutureReservationTimeWindowArgs{
/// 				StartTime: pulumi.String("2025-11-01T00:00:00Z"),
/// 				EndTime:   pulumi.String("2025-11-02T00:00:00Z"),
/// 			},
/// 			AggregateReservation: &compute.FutureReservationAggregateReservationArgs{
/// 				VmFamily:     pulumi.String("VM_FAMILY_CLOUD_TPU_DEVICE_CT3"),
/// 				WorkloadType: pulumi.String("UNSPECIFIED"),
/// 				ReservedResources: compute.FutureReservationAggregateReservationReservedResourceArray{
/// 					&compute.FutureReservationAggregateReservationReservedResourceArgs{
/// 						Accelerator: &compute.FutureReservationAggregateReservationReservedResourceAcceleratorArgs{
/// 							AcceleratorCount: pulumi.Int(32),
/// 							AcceleratorType:  pulumi.String("projects/my-project-name/zones/us-central1-a/acceleratorTypes/ct3"),
/// 						},
/// 					},
/// 					&compute.FutureReservationAggregateReservationReservedResourceArgs{
/// 						Accelerator: &compute.FutureReservationAggregateReservationReservedResourceAcceleratorArgs{
/// 							AcceleratorCount: pulumi.Int(2),
/// 							AcceleratorType:  pulumi.String("projects/my-project-name/zones/us-central1-a/acceleratorTypes/ct3"),
/// 						},
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.gcp.compute.FutureReservation;
/// import com.pulumi.gcp.compute.FutureReservationArgs;
/// import com.pulumi.gcp.compute.inputs.FutureReservationTimeWindowArgs;
/// import com.pulumi.gcp.compute.inputs.FutureReservationAggregateReservationArgs;
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
///         var gceFutureReservation = new FutureReservation("gceFutureReservation", FutureReservationArgs.builder()
///             .name("gce-future-reservation-aggregate-reservation")
///             .project("my-project-name")
///             .autoDeleteAutoCreatedReservations(true)
///             .planningStatus("DRAFT")
///             .namePrefix("fr-basic")
///             .timeWindow(FutureReservationTimeWindowArgs.builder()
///                 .startTime("2025-11-01T00:00:00Z")
///                 .endTime("2025-11-02T00:00:00Z")
///                 .build())
///             .aggregateReservation(FutureReservationAggregateReservationArgs.builder()
///                 .vmFamily("VM_FAMILY_CLOUD_TPU_DEVICE_CT3")
///                 .workloadType("UNSPECIFIED")
///                 .reservedResources(
///                     FutureReservationAggregateReservationReservedResourceArgs.builder()
///                         .accelerator(FutureReservationAggregateReservationReservedResourceAcceleratorArgs.builder()
///                             .acceleratorCount(32)
///                             .acceleratorType("projects/my-project-name/zones/us-central1-a/acceleratorTypes/ct3")
///                             .build())
///                         .build(),
///                     FutureReservationAggregateReservationReservedResourceArgs.builder()
///                         .accelerator(FutureReservationAggregateReservationReservedResourceAcceleratorArgs.builder()
///                             .acceleratorCount(2)
///                             .acceleratorType("projects/my-project-name/zones/us-central1-a/acceleratorTypes/ct3")
///                             .build())
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   gceFutureReservation:
///     type: gcp:compute:FutureReservation
///     name: gce_future_reservation
///     properties:
///       name: gce-future-reservation-aggregate-reservation
///       project: my-project-name
///       autoDeleteAutoCreatedReservations: true
///       planningStatus: DRAFT
///       namePrefix: fr-basic
///       timeWindow:
///         startTime: 2025-11-01T00:00:00Z
///         endTime: 2025-11-02T00:00:00Z
///       aggregateReservation:
///         vmFamily: VM_FAMILY_CLOUD_TPU_DEVICE_CT3
///         workloadType: UNSPECIFIED
///         reservedResources:
///           - accelerator:
///               acceleratorCount: 32
///               acceleratorType: projects/my-project-name/zones/us-central1-a/acceleratorTypes/ct3
///           - accelerator:
///               acceleratorCount: 2
///               acceleratorType: projects/my-project-name/zones/us-central1-a/acceleratorTypes/ct3
/// ```
///
///
/// ## Import
///
/// FutureReservation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/futureReservations/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, FutureReservation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/futureReservation:FutureReservation default projects/{{project}}/zones/{{zone}}/futureReservations/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/futureReservation:FutureReservation default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/futureReservation:FutureReservation default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/futureReservation:FutureReservation default {{name}}
/// ```
class FutureReservation extends pulumi.CustomResource {
  /// Aggregate reservation details for the future reservation.
  /// Structure is documented below.
  late final pulumi.Output<FutureReservationAggregateReservation?>
  aggregateReservation;

  /// Future timestamp when the FR auto-created reservations will be deleted by Compute Engine.
  late final pulumi.Output<String?> autoCreatedReservationsDeleteTime;

  /// Specifies the duration of auto-created reservations. It represents relative time to future reservation startTime when auto-created reservations will be automatically deleted by Compute Engine. Duration time unit is represented as a count of seconds and fractions of seconds at nanosecond resolution.
  /// Structure is documented below.
  late final pulumi.Output<FutureReservationAutoCreatedReservationsDuration?>
  autoCreatedReservationsDuration;

  /// Setting for enabling or disabling automatic deletion for auto-created reservation. If set to true, auto-created reservations will be deleted at Future Reservation's end time (default) or at user's defined timestamp if any of the [autoCreatedReservationsDeleteTime, autoCreatedReservationsDuration] values is specified. For keeping auto-created reservation indefinitely, this value should be set to false.
  late final pulumi.Output<bool?> autoDeleteAutoCreatedReservations;

  /// If not present, then FR will not deliver a new commitment or update an existing commitment.
  /// Structure is documented below.
  late final pulumi.Output<FutureReservationCommitmentInfo?> commitmentInfo;

  /// The creation timestamp for this future reservation in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// Type of the deployment requested as part of future reservation.
  /// Possible values are: `DENSE`, `FLEXIBLE`.
  late final pulumi.Output<String?> deploymentType;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the las
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// Name prefix for the reservations to be created at the time of delivery. The name prefix must comply with RFC1035. Maximum allowed length for name prefix is 20. Automatically created reservations name format will be -date-####.
  late final pulumi.Output<String?> namePrefix;

  /// Planning state before being submitted for evaluation
  /// Possible values are: `DRAFT`, `SUBMITTED`.
  late final pulumi.Output<String> planningStatus;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The reservation mode which determines reservation-termination behavior and expected pricing.
  /// Possible values are: `CALENDAR`, `DEFAULT`.
  late final pulumi.Output<String?> reservationMode;

  /// Name of reservations where the capacity is provisioned at the time of delivery of future reservations. If the reservation with the given name does not exist already, it is created automatically at the time of Approval with INACTIVE state till specified start-time. Either provide the reservationName or a namePrefix.
  late final pulumi.Output<String?> reservationName;

  /// Maintenance information for this reservation
  /// Possible values are: `GROUPED`, `INDEPENDENT`.
  late final pulumi.Output<String?> schedulingType;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithId;

  /// Settings for sharing the future reservation
  /// Structure is documented below.
  late final pulumi.Output<FutureReservationShareSettings?> shareSettings;

  /// Indicates whether the auto-created reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from the delivered reservation.
  late final pulumi.Output<bool?> specificReservationRequired;

  /// Future Reservation configuration to indicate instance properties and total count.
  /// Structure is documented below.
  late final pulumi.Output<FutureReservationSpecificSkuProperties?>
  specificSkuProperties;

  /// [Output only] Status of the Future Reservation
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> statuses;

  /// Time window for this Future Reservation.
  /// Structure is documented below.
  late final pulumi.Output<FutureReservationTimeWindow> timeWindow;

  /// URL of the Zone where this future reservation resides.
  late final pulumi.Output<String> zone;

  /// Creates a new [FutureReservation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FutureReservation]. {@macro pulumi_compute_future_reservation_future_reservation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FutureReservation(
    String name, {
    FutureReservationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/futureReservation:FutureReservation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aggregateReservation =
        registerOutput<FutureReservationAggregateReservation?>(
          'aggregateReservation',
        );
    autoCreatedReservationsDeleteTime = registerOutput<String?>(
      'autoCreatedReservationsDeleteTime',
    );
    autoCreatedReservationsDuration =
        registerOutput<FutureReservationAutoCreatedReservationsDuration?>(
          'autoCreatedReservationsDuration',
        );
    autoDeleteAutoCreatedReservations = registerOutput<bool?>(
      'autoDeleteAutoCreatedReservations',
    );
    commitmentInfo = registerOutput<FutureReservationCommitmentInfo?>(
      'commitmentInfo',
    );
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deploymentType = registerOutput<String?>('deploymentType');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String?>('namePrefix');
    planningStatus = registerOutput<String>('planningStatus');
    project = registerOutput<String>('project');
    reservationMode = registerOutput<String?>('reservationMode');
    reservationName = registerOutput<String?>('reservationName');
    schedulingType = registerOutput<String?>('schedulingType');
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithId = registerOutput<String>('selfLinkWithId');
    shareSettings = registerOutput<FutureReservationShareSettings?>(
      'shareSettings',
    );
    specificReservationRequired = registerOutput<bool?>(
      'specificReservationRequired',
    );
    specificSkuProperties =
        registerOutput<FutureReservationSpecificSkuProperties?>(
          'specificSkuProperties',
        );
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    timeWindow = registerOutput<FutureReservationTimeWindow>('timeWindow');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [FutureReservation] resource's state with the given [name] and [id].
  static FutureReservation get(
    String name,
    pulumi.Input<String> id, {
    FutureReservationState? state,
  }) {
    return FutureReservation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FutureReservation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/futureReservation:FutureReservation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aggregateReservation =
        registerOutput<FutureReservationAggregateReservation?>(
          'aggregateReservation',
        );
    autoCreatedReservationsDeleteTime = registerOutput<String?>(
      'autoCreatedReservationsDeleteTime',
    );
    autoCreatedReservationsDuration =
        registerOutput<FutureReservationAutoCreatedReservationsDuration?>(
          'autoCreatedReservationsDuration',
        );
    autoDeleteAutoCreatedReservations = registerOutput<bool?>(
      'autoDeleteAutoCreatedReservations',
    );
    commitmentInfo = registerOutput<FutureReservationCommitmentInfo?>(
      'commitmentInfo',
    );
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deploymentType = registerOutput<String?>('deploymentType');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String?>('namePrefix');
    planningStatus = registerOutput<String>('planningStatus');
    project = registerOutput<String>('project');
    reservationMode = registerOutput<String?>('reservationMode');
    reservationName = registerOutput<String?>('reservationName');
    schedulingType = registerOutput<String?>('schedulingType');
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithId = registerOutput<String>('selfLinkWithId');
    shareSettings = registerOutput<FutureReservationShareSettings?>(
      'shareSettings',
    );
    specificReservationRequired = registerOutput<bool?>(
      'specificReservationRequired',
    );
    specificSkuProperties =
        registerOutput<FutureReservationSpecificSkuProperties?>(
          'specificSkuProperties',
        );
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    timeWindow = registerOutput<FutureReservationTimeWindow>('timeWindow');
    zone = registerOutput<String>('zone');
  }
}
