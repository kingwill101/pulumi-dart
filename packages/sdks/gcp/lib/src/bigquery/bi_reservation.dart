import 'package:pulumi/pulumi.dart' as pulumi;
import 'bi_reservation_args.dart';
import 'bi_reservation_state.dart';

/// Represents a BI Reservation.
///
///
/// To get more information about BiReservation, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/reservations/rest/v1/BiReservation)
/// * How-to Guides
/// * [Introduction to Reservations](https://cloud.google.com/bigquery/docs/reservations-intro)
///
/// ## Example Usage
///
/// ### Bigquery Reservation Bi Reservation Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const reservation = new gcp.bigquery.BiReservation("reservation", {
///     location: "us-west2",
///     size: 3000000000,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// reservation = gcp.bigquery.BiReservation("reservation",
///     location="us-west2",
///     size=int(3000000000))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var reservation = new Gcp.BigQuery.BiReservation("reservation", new()
///     {
///         Location = "us-west2",
///         Size = (int)3000000000,
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
/// 		_, err := bigquery.NewBiReservation(ctx, "reservation", &bigquery.BiReservationArgs{
/// 			Location: pulumi.String("us-west2"),
/// 			Size:     pulumi.Int(3000000000),
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
/// resource "gcp_bigquery_bireservation" "reservation" {
///   location = "us-west2"
///   size     = "3000000000"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.BiReservation;
/// import com.pulumi.gcp.bigquery.BiReservationArgs;
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
///         var reservation = new BiReservation("reservation", BiReservationArgs.builder()
///             .location("us-west2")
///             .size(3000000000)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   reservation:
///     type: gcp:bigquery:BiReservation
///     properties:
///       location: us-west2
///       size: '3000000000'
/// ```
///
///
/// ## Import
///
/// BiReservation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/biReservation`
/// * `{{project}}/{{location}}`
/// * `{{location}}`
///
///
/// When using the `pulumi import` command, BiReservation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/biReservation:BiReservation default projects/{{project}}/locations/{{location}}/biReservation
/// $ pulumi import gcp:bigquery/biReservation:BiReservation default {{project}}/{{location}}
/// $ pulumi import gcp:bigquery/biReservation:BiReservation default {{location}}
/// ```
class BiReservation extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// LOCATION_DESCRIPTION
  late final pulumi.Output<String> location;
  /// The resource name of the singleton BI reservation. Reservation names have the form `projects/{projectId}/locations/{locationId}/biReservation`.
  late final pulumi.Output<String> name;
  /// Preferred tables to use BI capacity for.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> preferredTables;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Size of a reservation, in bytes.
  late final pulumi.Output<int?> size;
  /// The last update timestamp of a reservation.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [BiReservation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BiReservation]. {@macro pulumi_bigquery_bi_reservation_bi_reservation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BiReservation(
    String name, {
    BiReservationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/biReservation:BiReservation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    preferredTables = registerOutput<List<Map<String, dynamic>>?>('preferredTables');
    project = registerOutput<String>('project');
    size = registerOutput<int?>('size');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [BiReservation] resource's state with the given [name] and [id].
  static BiReservation get(
    String name,
    pulumi.Input<String> id, {
    BiReservationState? state,
  }) {
    return BiReservation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BiReservation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/biReservation:BiReservation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    preferredTables = registerOutput<List<Map<String, dynamic>>?>('preferredTables');
    project = registerOutput<String>('project');
    size = registerOutput<int?>('size');
    updateTime = registerOutput<String>('updateTime');
  }
}
