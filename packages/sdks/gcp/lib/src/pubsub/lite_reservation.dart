import 'package:pulumi/pulumi.dart' as pulumi;
import 'lite_reservation_args.dart';
import 'lite_reservation_state.dart';

/// &gt; **Warning:** [Pubsub Lite is deprecated and will be turned down effective March 18, 2026](https://cloud.google.com/pubsub/lite/docs/release-notes#June_17_2024). The resource will be removed in a future major release, please use `googlePubsubReservation` instead.
///
/// A named resource representing a shared pool of capacity.
///
///
/// To get more information about Reservation, see:
///
/// * [API documentation](https://cloud.google.com/pubsub/lite/docs/reference/rest/v1/admin.projects.locations.reservations)
/// * How-to Guides
/// * [Managing Reservations](https://cloud.google.com/pubsub/lite/docs/reservations)
///
/// ## Example Usage
///
/// ### Pubsub Lite Reservation Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.pubsub.LiteReservation("example", {
///     name: "example-reservation",
///     project: project.then(project => project.number),
///     throughputCapacity: 2,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example = gcp.pubsub.LiteReservation("example",
///     name="example-reservation",
///     project=project.number,
///     throughput_capacity=2)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example = new Gcp.PubSub.LiteReservation("example", new()
///     {
///         Name = "example-reservation",
///         Project = project.Apply(getProjectResult => getProjectResult.Number),
///         ThroughputCapacity = 2,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewLiteReservation(ctx, "example", &pubsub.LiteReservationArgs{
/// 			Name:               pulumi.String("example-reservation"),
/// 			Project:            pulumi.String(project.Number),
/// 			ThroughputCapacity: pulumi.Int(2),
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_pubsub_litereservation" "example" {
///   name                = "example-reservation"
///   project             = data.gcp_organizations_getproject.project.number
///   throughput_capacity = 2
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.pubsub.LiteReservation;
/// import com.pulumi.gcp.pubsub.LiteReservationArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var example = new LiteReservation("example", LiteReservationArgs.builder()
///             .name("example-reservation")
///             .project(project.number())
///             .throughputCapacity(2)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:LiteReservation
///     properties:
///       name: example-reservation
///       project: ${project.number}
///       throughputCapacity: 2
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Reservation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/reservations/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Reservation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteReservation:LiteReservation default projects/{{project}}/locations/{{region}}/reservations/{{name}}
/// $ pulumi import gcp:pubsub/liteReservation:LiteReservation default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:pubsub/liteReservation:LiteReservation default {{region}}/{{name}}
/// $ pulumi import gcp:pubsub/liteReservation:LiteReservation default {{name}}
/// ```
class LiteReservation extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Name of the reservation.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The region of the pubsub lite reservation.
  late final pulumi.Output<String?> region;
  /// The reserved throughput capacity. Every unit of throughput capacity is
  /// equivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed
  /// messages.
  late final pulumi.Output<int> throughputCapacity;

  /// Creates a new [LiteReservation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LiteReservation]. {@macro pulumi_pubsub_lite_reservation_lite_reservation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LiteReservation(
    String name, {
    LiteReservationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/liteReservation:LiteReservation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String?>('region');
    throughputCapacity = registerOutput<int>('throughputCapacity');
  }

  /// Gets an existing [LiteReservation] resource's state with the given [name] and [id].
  static LiteReservation get(
    String name,
    pulumi.Input<String> id, {
    LiteReservationState? state,
  }) {
    return LiteReservation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LiteReservation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/liteReservation:LiteReservation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String?>('region');
    throughputCapacity = registerOutput<int>('throughputCapacity');
  }
}
