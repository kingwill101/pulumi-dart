import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_commitment_args.dart';
import 'capacity_commitment_state.dart';

/// Capacity commitment is a way to purchase compute capacity for BigQuery jobs (in the form of slots) with some committed period of usage. Annual commitments renew by default. Commitments can be removed after their commitment end time passes.
///
/// In order to remove annual commitment, its plan needs to be changed to monthly or flex first.
///
///
/// To get more information about CapacityCommitment, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/reservations/rest/v1/projects.locations.capacityCommitments)
/// * How-to Guides
/// * [Introduction to Reservations](https://cloud.google.com/bigquery/docs/reservations-intro)
///
/// ## Example Usage
///
/// ### Bigquery Reservation Capacity Commitment Docs
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.bigquery.CapacityCommitment("example", {
///     capacityCommitmentId: "example-commitment",
///     location: "us-west2",
///     slotCount: 100,
///     plan: "FLEX_FLAT_RATE",
///     edition: "ENTERPRISE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.bigquery.CapacityCommitment("example",
///     capacity_commitment_id="example-commitment",
///     location="us-west2",
///     slot_count=100,
///     plan="FLEX_FLAT_RATE",
///     edition="ENTERPRISE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.BigQuery.CapacityCommitment("example", new()
///     {
///         CapacityCommitmentId = "example-commitment",
///         Location = "us-west2",
///         SlotCount = 100,
///         Plan = "FLEX_FLAT_RATE",
///         Edition = "ENTERPRISE",
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
/// 		_, err := bigquery.NewCapacityCommitment(ctx, "example", &bigquery.CapacityCommitmentArgs{
/// 			CapacityCommitmentId: pulumi.String("example-commitment"),
/// 			Location:             pulumi.String("us-west2"),
/// 			SlotCount:            pulumi.Int(100),
/// 			Plan:                 pulumi.String("FLEX_FLAT_RATE"),
/// 			Edition:              pulumi.String("ENTERPRISE"),
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
/// resource "gcp_bigquery_capacitycommitment" "example" {
///   capacity_commitment_id = "example-commitment"
///   location               = "us-west2"
///   slot_count             = 100
///   plan                   = "FLEX_FLAT_RATE"
///   edition                = "ENTERPRISE"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.CapacityCommitment;
/// import com.pulumi.gcp.bigquery.CapacityCommitmentArgs;
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
///         var example = new CapacityCommitment("example", CapacityCommitmentArgs.builder()
///             .capacityCommitmentId("example-commitment")
///             .location("us-west2")
///             .slotCount(100)
///             .plan("FLEX_FLAT_RATE")
///             .edition("ENTERPRISE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:bigquery:CapacityCommitment
///     properties:
///       capacityCommitmentId: example-commitment
///       location: us-west2
///       slotCount: 100
///       plan: FLEX_FLAT_RATE
///       edition: ENTERPRISE
/// ```
///
///
/// ## Import
///
/// CapacityCommitment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/capacityCommitments/{{capacity_commitment_id}}`
/// * `{{project}}/{{location}}/{{capacity_commitment_id}}`
/// * `{{location}}/{{capacity_commitment_id}}`
///
///
/// When using the `pulumi import` command, CapacityCommitment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/capacityCommitment:CapacityCommitment default projects/{{project}}/locations/{{location}}/capacityCommitments/{{capacity_commitment_id}}
/// $ pulumi import gcp:bigquery/capacityCommitment:CapacityCommitment default {{project}}/{{location}}/{{capacity_commitment_id}}
/// $ pulumi import gcp:bigquery/capacityCommitment:CapacityCommitment default {{location}}/{{capacity_commitment_id}}
/// ```
class CapacityCommitment extends pulumi.CustomResource {
  /// The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is
  /// empty. This field must only contain lower case alphanumeric characters or dashes. The first and last character
  /// cannot be a dash. Max length is 64 characters. NOTE: this ID won't be kept if the capacity commitment is split
  /// or merged.
  late final pulumi.Output<String?> capacityCommitmentId;
  /// The start of the current commitment period. It is applicable only for ACTIVE capacity commitments.
  late final pulumi.Output<String> commitmentEndTime;
  /// The start of the current commitment period. It is applicable only for ACTIVE capacity commitments.
  late final pulumi.Output<String> commitmentStartTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The edition type. Valid values are STANDARD, ENTERPRISE, ENTERPRISE_PLUS
  late final pulumi.Output<String?> edition;
  /// If true, fail the request if another project in the organization has a capacity commitment.
  late final pulumi.Output<String?> enforceSingleAdminProjectPerOrg;
  /// The geographic location where the transfer config should reside.
  /// Examples: US, EU, asia-northeast1. The default value is US.
  late final pulumi.Output<String?> location;
  /// The resource name of the capacity commitment, e.g., projects/myproject/locations/US/capacityCommitments/123
  late final pulumi.Output<String> name;
  /// Capacity commitment plan. Valid values are at https://cloud.google.com/bigquery/docs/reference/reservations/rpc/google.cloud.bigquery.reservation.v1#commitmentplan
  late final pulumi.Output<String> plan;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The plan this capacity commitment is converted to after commitmentEndTime passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for some commitment plans.
  late final pulumi.Output<String?> renewalPlan;
  /// Number of slots in this commitment.
  late final pulumi.Output<int> slotCount;
  /// State of the commitment
  late final pulumi.Output<String> state;

  /// Creates a new [CapacityCommitment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapacityCommitment]. {@macro pulumi_bigquery_capacity_commitment_capacity_commitment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapacityCommitment(
    String name, {
    CapacityCommitmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/capacityCommitment:CapacityCommitment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    capacityCommitmentId = registerOutput<String?>('capacityCommitmentId');
    commitmentEndTime = registerOutput<String>('commitmentEndTime');
    commitmentStartTime = registerOutput<String>('commitmentStartTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    edition = registerOutput<String?>('edition');
    enforceSingleAdminProjectPerOrg = registerOutput<String?>('enforceSingleAdminProjectPerOrg');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    plan = registerOutput<String>('plan');
    project = registerOutput<String>('project');
    renewalPlan = registerOutput<String?>('renewalPlan');
    slotCount = registerOutput<int>('slotCount');
    state = registerOutput<String>('state');
  }

  /// Gets an existing [CapacityCommitment] resource's state with the given [name] and [id].
  static CapacityCommitment get(
    String name,
    pulumi.Input<String> id, {
    CapacityCommitmentState? state,
  }) {
    return CapacityCommitment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CapacityCommitment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/capacityCommitment:CapacityCommitment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    capacityCommitmentId = registerOutput<String?>('capacityCommitmentId');
    commitmentEndTime = registerOutput<String>('commitmentEndTime');
    commitmentStartTime = registerOutput<String>('commitmentStartTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    edition = registerOutput<String?>('edition');
    enforceSingleAdminProjectPerOrg = registerOutput<String?>('enforceSingleAdminProjectPerOrg');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    plan = registerOutput<String>('plan');
    project = registerOutput<String>('project');
    renewalPlan = registerOutput<String?>('renewalPlan');
    slotCount = registerOutput<int>('slotCount');
    this.state = registerOutput<String>('state');
  }
}
