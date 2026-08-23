import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_args.dart';
import 'reservation_autoscale.dart';
import 'reservation_state.dart';

/// A reservation is a mechanism used to guarantee BigQuery slots to users.
///
///
/// To get more information about Reservation, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/reservations/rest/v1/projects.locations.reservations/create)
/// * How-to Guides
/// * [Introduction to Reservations](https://cloud.google.com/bigquery/docs/reservations-intro)
///
/// ## Example Usage
///
/// ### Bigquery Reservation Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const reservation = new gcp.bigquery.Reservation("reservation", {
///     name: "my-reservation",
///     location: "us-west2",
///     slotCapacity: 0,
///     edition: "STANDARD",
///     ignoreIdleSlots: true,
///     concurrency: 0,
///     autoscale: {
///         maxSlots: 100,
///     },
///     labels: {
///         environment: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// reservation = gcp.bigquery.Reservation("reservation",
///     name="my-reservation",
///     location="us-west2",
///     slot_capacity=0,
///     edition="STANDARD",
///     ignore_idle_slots=True,
///     concurrency=0,
///     autoscale={
///         "max_slots": 100,
///     },
///     labels={
///         "environment": "production",
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
///     var reservation = new Gcp.BigQuery.Reservation("reservation", new()
///     {
///         Name = "my-reservation",
///         Location = "us-west2",
///         SlotCapacity = 0,
///         Edition = "STANDARD",
///         IgnoreIdleSlots = true,
///         Concurrency = 0,
///         Autoscale = new Gcp.BigQuery.Inputs.ReservationAutoscaleArgs
///         {
///             MaxSlots = 100,
///         },
///         Labels =
///         {
///             { "environment", "production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewReservation(ctx, "reservation", &bigquery.ReservationArgs{
/// 			Name:            pulumi.String("my-reservation"),
/// 			Location:        pulumi.String("us-west2"),
/// 			SlotCapacity:    pulumi.Int(0),
/// 			Edition:         pulumi.String("STANDARD"),
/// 			IgnoreIdleSlots: pulumi.Bool(true),
/// 			Concurrency:     pulumi.Int(0),
/// 			Autoscale: &bigquery.ReservationAutoscaleArgs{
/// 				MaxSlots: pulumi.Int(100),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"environment": pulumi.String("production"),
/// 			},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_bigquery_reservation" "reservation" {
///   name              = "my-reservation"
///   location          = "us-west2"
///   slot_capacity     = 0
///   edition           = "STANDARD"
///   ignore_idle_slots = true
///   concurrency       = 0
///   autoscale = {
///     max_slots = 100
///   }
///   labels = {
///     "environment" = "production"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Reservation;
/// import com.pulumi.gcp.bigquery.ReservationArgs;
/// import com.pulumi.gcp.bigquery.inputs.ReservationAutoscaleArgs;
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
///         var reservation = new Reservation("reservation", ReservationArgs.builder()
///             .name("my-reservation")
///             .location("us-west2")
///             .slotCapacity(0)
///             .edition("STANDARD")
///             .ignoreIdleSlots(true)
///             .concurrency(0)
///             .autoscale(ReservationAutoscaleArgs.builder()
///                 .maxSlots(100)
///                 .build())
///             .labels(Map.of("environment", "production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   reservation:
///     type: gcp:bigquery:Reservation
///     properties:
///       name: my-reservation
///       location: us-west2
///       slotCapacity: 0
///       edition: STANDARD
///       ignoreIdleSlots: true
///       concurrency: 0
///       autoscale:
///         maxSlots: 100
///       labels:
///         environment: production
/// ```
///
///
/// ## Import
///
/// Reservation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/reservations/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Reservation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/reservation:Reservation default projects/{{project}}/locations/{{location}}/reservations/{{name}}
/// $ pulumi import gcp:bigquery/reservation:Reservation default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:bigquery/reservation:Reservation default {{location}}/{{name}}
/// ```
class Reservation extends pulumi.CustomResource {
  /// The configuration parameters for the auto scaling feature.
  /// Structure is documented below.
  late final pulumi.Output<ReservationAutoscale?> autoscale;
  /// Maximum number of queries that are allowed to run concurrently in this reservation. This is a soft limit due to asynchronous nature of the system and various optimizations for small queries. Default value is 0 which means that concurrency will be automatically set based on the reservation size.
  late final pulumi.Output<int?> concurrency;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The edition type. Valid values are STANDARD, ENTERPRISE, ENTERPRISE_PLUS
  late final pulumi.Output<String> edition;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// If false, any query using this reservation will use idle slots from other reservations within
  /// the same admin project. If true, a query using this reservation will execute with the slot
  /// capacity specified above at most.
  late final pulumi.Output<bool?> ignoreIdleSlots;
  /// The labels associated with this reservation. You can use these to
  /// organize and group your reservations.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The geographic location where the transfer config should reside.
  /// Examples: US, EU, asia-northeast1. The default value is US.
  late final pulumi.Output<String?> location;
  /// (Optional, Beta)
  /// The overall max slots for the reservation, covering slotCapacity (baseline), idle slots
  /// (if ignoreIdleSlots is false) and scaled slots. If present, the reservation won't use
  /// more than the specified number of slots, even if there is demand and supply (from idle
  /// slots). NOTE: capping a reservation's idle slot usage is best effort and its usage may
  /// exceed the maxSlots value. However, in terms of autoscale.current_slots (which accounts
  /// for the additional added slots), it will never exceed the maxSlots - baseline.
  /// This field must be set together with the scalingMode enum value, otherwise the request
  /// will be rejected with error code google.rpc.Code.INVALID_ARGUMENT.
  /// If the maxSlots and scalingMode are set, the autoscale or autoscale.max_slots field
  /// must be unset. Otherwise the request will be rejected with error code
  /// google.rpc.Code.INVALID_ARGUMENT. However, the autoscale field may still be in the
  /// output. The autopscale.max_slots will always show as 0 and the autoscaler.current_slots
  /// will represent the current slots from autoscaler excluding idle slots. For example,
  /// if the maxSlots is 1000 and scalingMode is AUTOSCALE_ONLY, then in the output, the
  /// autoscaler.max_slots will be 0 and the autoscaler.current_slots may be any value
  /// between 0 and 1000.
  /// If the maxSlots is 1000, scalingMode is ALL_SLOTS, the baseline is 100 and idle slots
  /// usage is 200, then in the output, the autoscaler.max_slots will be 0 and the
  /// autoscaler.current_slots will not be higher than 700.
  /// If the maxSlots is 1000, scalingMode is IDLE_SLOTS_ONLY, then in the output, the
  /// autoscaler field will be null.
  /// If the maxSlots and scalingMode are set, then the ignoreIdleSlots field must be
  /// aligned with the scalingMode enum value.(See details in ScalingMode comments).
  /// Otherwise the request will be rejected with error code google.rpc.Code.INVALID_ARGUMENT.
  /// Please note, the maxSlots is for user to manage the part of slots greater than the
  /// baseline. Therefore, we don't allow users to set maxSlots smaller or equal to the
  /// baseline as it will not be meaningful. If the field is present and
  /// slotCapacity&gt;=maxSlots, requests will be rejected with error code
  /// google.rpc.Code.INVALID_ARGUMENT.
  /// Please note that if maxSlots is set to 0, we will treat it as unset. Customers can set
  /// maxSlots to 0 and set scalingMode to SCALING_MODE_UNSPECIFIED to disable the maxSlots
  /// feature.
  late final pulumi.Output<int?> maxSlots;
  /// The name of the reservation. This field must only contain alphanumeric characters or dash.
  late final pulumi.Output<String> name;
  /// The location where the reservation was originally created. This is set only during the
  /// failover reservation's creation. All billing charges for the failover reservation will be
  /// applied to this location.
  late final pulumi.Output<String> originalPrimaryLocation;
  /// The current location of the reservation's primary replica. This field is only set for
  /// reservations using the managed disaster recovery feature.
  late final pulumi.Output<String> primaryLocation;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The Disaster Recovery(DR) replication status of the reservation. This is only available for
  /// the primary replicas of DR/failover reservations and provides information about the both the
  /// staleness of the secondary and the last error encountered while trying to replicate changes
  /// from the primary to the secondary. If this field is blank, it means that the reservation is
  /// either not a DR reservation or the reservation is a DR secondary or that any replication
  /// operations on the reservation have succeeded.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> replicationStatuses;
  /// The reservation group that this reservation belongs to.
  late final pulumi.Output<String?> reservationGroup;
  /// (Optional, Beta)
  /// The scaling mode for the reservation. If the field is present but maxSlots is not present,
  /// requests will be rejected with error code google.rpc.Code.INVALID_ARGUMENT.
  /// Enum values:
  /// `SCALING_MODE_UNSPECIFIED`: Default value of ScalingMode.
  /// `AUTOSCALE_ONLY`: The reservation will scale up only using slots from autoscaling. It will
  /// not use any idle slots even if there may be some available. The upper limit that autoscaling
  /// can scale up to will be maxSlots - baseline. For example, if maxSlots is 1000, baseline is 200
  /// and customer sets ScalingMode to AUTOSCALE_ONLY, then autoscalerg will scale up to 800 slots
  /// and no idle slots will be used. Please note, in this mode, the ignoreIdleSlots field must be
  /// set to true. Otherwise the request will be rejected with error code
  /// google.rpc.Code.INVALID_ARGUMENT.
  /// `IDLE_SLOTS_ONLY`: The reservation will scale up using only idle slots contributed by other
  /// reservations or from unassigned commitments. If no idle slots are available it will not scale
  /// up further. If the idle slots which it is using are reclaimed by the contributing reservation(s)
  /// it may be forced to scale down. The max idle slots the reservation can be maxSlots - baseline
  /// capacity. For example, if maxSlots is 1000, baseline is 200 and customer sets ScalingMode to
  /// IDLE_SLOTS_ONLY, 1. if there are 1000 idle slots available in other reservations, the
  /// reservation will scale up to 1000 slots with 200 baseline and 800 idle slots. 2. if there are
  /// 500 idle slots available in other reservations, the reservation will scale up to 700 slots with
  /// 200 baseline and 300 idle slots. Please note, in this mode, the reservation might not be able to
  /// scale up to maxSlots. Please note, in this mode, the ignoreIdleSlots field must be set to false.
  /// Otherwise the request will be rejected with error code google.rpc.Code.INVALID_ARGUMENT
  /// `ALL_SLOTS`: The reservation will scale up using all slots available to it. It will use idle slots
  /// contributed by other reservations or from unassigned commitments first. If no idle slots are
  /// available it will scale up using autoscaling. For example, if maxSlots is 1000, baseline is 200
  /// and customer sets ScalingMode to ALL_SLOTS, 1. if there are 800 idle slots available in other
  /// reservations, the reservation will scale up to 1000 slots with 200 baseline and 800 idle slots. 2.
  /// if there are 500 idle slots available in other reservations, the reservation will scale up to 1000
  /// slots with 200 baseline, 500 idle slots and 300 autoscaling slots. 3. if there are no idle slots
  /// available in other reservations, it will scale up to 1000 slots with 200 baseline and 800
  /// autoscaling slots. Please note, in this mode, the ignoreIdleSlots field must be set to false.
  /// Otherwise the request will be rejected with error code google.rpc.Code.INVALID_ARGUMENT.
  /// Possible values are: `SCALING_MODE_UNSPECIFIED`, `AUTOSCALE_ONLY`, `IDLE_SLOTS_ONLY`, `ALL_SLOTS`.
  late final pulumi.Output<String?> scalingMode;
  /// The current location of the reservation's secondary replica. This field is only set for
  /// reservations using the managed disaster recovery feature. Users can set this in create
  /// reservation calls to create a failover reservation or in update reservation calls to convert
  /// a non-failover reservation to a failover reservation(or vice versa).
  late final pulumi.Output<String?> secondaryLocation;
  /// Minimum slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the
  /// unit of parallelism. Queries using this reservation might use more slots during runtime if ignoreIdleSlots is set to false.
  late final pulumi.Output<int> slotCapacity;

  /// Creates a new [Reservation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Reservation]. {@macro pulumi_bigquery_reservation_reservation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Reservation(
    String name, {
    ReservationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/reservation:Reservation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoscale = registerOutput<ReservationAutoscale?>('autoscale', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReservationAutoscale.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    concurrency = registerOutput<int?>('concurrency');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    edition = registerOutput<String>('edition');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    ignoreIdleSlots = registerOutput<bool?>('ignoreIdleSlots');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    maxSlots = registerOutput<int?>('maxSlots');
    this.name = registerOutput<String>('name');
    originalPrimaryLocation = registerOutput<String>('originalPrimaryLocation');
    primaryLocation = registerOutput<String>('primaryLocation');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    replicationStatuses = registerOutput<List<Map<String, dynamic>>>('replicationStatuses');
    reservationGroup = registerOutput<String?>('reservationGroup');
    scalingMode = registerOutput<String?>('scalingMode');
    secondaryLocation = registerOutput<String?>('secondaryLocation');
    slotCapacity = registerOutput<int>('slotCapacity');
  }

  /// Gets an existing [Reservation] resource's state with the given [name] and [id].
  static Reservation get(
    String name,
    pulumi.Input<String> id, {
    ReservationState? state,
  }) {
    return Reservation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Reservation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/reservation:Reservation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoscale = registerOutput<ReservationAutoscale?>('autoscale', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReservationAutoscale.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    concurrency = registerOutput<int?>('concurrency');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    edition = registerOutput<String>('edition');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    ignoreIdleSlots = registerOutput<bool?>('ignoreIdleSlots');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    maxSlots = registerOutput<int?>('maxSlots');
    this.name = registerOutput<String>('name');
    originalPrimaryLocation = registerOutput<String>('originalPrimaryLocation');
    primaryLocation = registerOutput<String>('primaryLocation');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    replicationStatuses = registerOutput<List<Map<String, dynamic>>>('replicationStatuses');
    reservationGroup = registerOutput<String?>('reservationGroup');
    scalingMode = registerOutput<String?>('scalingMode');
    secondaryLocation = registerOutput<String?>('secondaryLocation');
    slotCapacity = registerOutput<int>('slotCapacity');
  }
}
