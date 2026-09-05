import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_group_args.dart';
import 'reservation_group_state.dart';

/// A reservation group is a container for reservations.
///
///
/// To get more information about ReservationGroup, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/reservations/rest/v1/projects.locations.reservationGroups)
///
/// ## Example Usage
///
/// ### Bigquery Reservation Group Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const reservationGroup = new gcp.bigquery.ReservationGroup("reservation_group", {
///     name: "my-reservation-group",
///     location: "us-west2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// reservation_group = gcp.bigquery.ReservationGroup("reservation_group",
///     name="my-reservation-group",
///     location="us-west2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var reservationGroup = new Gcp.BigQuery.ReservationGroup("reservation_group", new()
///     {
///         Name = "my-reservation-group",
///         Location = "us-west2",
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
/// 		_, err := bigquery.NewReservationGroup(ctx, "reservation_group", &bigquery.ReservationGroupArgs{
/// 			Name:     pulumi.String("my-reservation-group"),
/// 			Location: pulumi.String("us-west2"),
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
/// resource "gcp_bigquery_reservationgroup" "reservation_group" {
///   name     = "my-reservation-group"
///   location = "us-west2"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.ReservationGroup;
/// import com.pulumi.gcp.bigquery.ReservationGroupArgs;
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
///         var reservationGroup = new ReservationGroup("reservationGroup", ReservationGroupArgs.builder()
///             .name("my-reservation-group")
///             .location("us-west2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   reservationGroup:
///     type: gcp:bigquery:ReservationGroup
///     name: reservation_group
///     properties:
///       name: my-reservation-group
///       location: us-west2
/// ```
///
///
/// ## Import
///
/// ReservationGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/reservationGroups/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, ReservationGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/reservationGroup:ReservationGroup default projects/{{project}}/locations/{{location}}/reservationGroups/{{name}}
/// $ pulumi import gcp:bigquery/reservationGroup:ReservationGroup default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:bigquery/reservationGroup:ReservationGroup default {{location}}/{{name}}
/// ```
class ReservationGroup extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The geographic location where the transfer config should reside.
  /// Examples: US, EU, asia-northeast1. The default value is US.
  late final pulumi.Output<String?> location;
  /// The name of the reservation group. This field must only contain alphanumeric characters or dash.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [ReservationGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReservationGroup]. {@macro pulumi_bigquery_reservation_group_reservation_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReservationGroup(
    String name, {
    ReservationGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/reservationGroup:ReservationGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [ReservationGroup] resource's state with the given [name] and [id].
  static ReservationGroup get(
    String name,
    pulumi.Input<String> id, {
    ReservationGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ReservationGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ReservationGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/reservationGroup:ReservationGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [ReservationGroup] resource.
  ReservationGroup.reference(String urn)
    : super(
        'gcp:bigquery/reservationGroup:ReservationGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
