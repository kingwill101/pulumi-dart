import 'package:pulumi/pulumi.dart' as pulumi;
import 'findings_refinement_deployment_args.dart';
import 'findings_refinement_deployment_detection_exclusion_application.dart';
import 'findings_refinement_deployment_state.dart';

/// The FindingsRefinementDeployment resource represents the deployment state of a findings refinement.
///
///
/// To get more information about FindingsRefinementDeployment, see:
///
/// * [API documentation](https://docs.cloud.google.com/chronicle/docs/reference/rest/v1/FindingsRefinementDeployment)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Findings Refinement Deployment Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const my_findings_refinement = new gcp.chronicle.FindingsRefinement("my-findings-refinement", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     displayName: "findings_refinement_display_name",
///     type: "DETECTION_EXCLUSION",
///     query: "network.dns.response = true",
///     outcomeFilters: [{
///         outcomeVariable: "risk_score",
///         outcomeFilterOperator: "EQUAL",
///         outcomeValue: "value",
///     }],
/// });
/// const example = new gcp.chronicle.FindingsRefinementDeployment("example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     findingsRefinement: pulumi.all([std.split({
///         separator: "/",
///         text: googleChronicleFindingsRefinement["my-findings-refinement"].name,
///     }), std.split({
///         separator: "/",
///         text: googleChronicleFindingsRefinement["my-findings-refinement"].name,
///     }).then(invoke => invoke.result).length]).apply(([invoke, length]) => invoke.result[length - 1]).apply(x =>String(x)),
///     enabled: true,
///     archived: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// my_findings_refinement = gcp.chronicle.FindingsRefinement("my-findings-refinement",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     display_name="findings_refinement_display_name",
///     type="DETECTION_EXCLUSION",
///     query="network.dns.response = true",
///     outcome_filters=[{
///         "outcome_variable": "risk_score",
///         "outcome_filter_operator": "EQUAL",
///         "outcome_value": "value",
///     }])
/// example = gcp.chronicle.FindingsRefinementDeployment("example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     findings_refinement=len(std.split(separator="/",
///         text=google_chronicle_findings_refinement["my-findings-refinement"]["name"]).result).apply(lambda length: std.split(separator="/",
///         text=google_chronicle_findings_refinement["my-findings-refinement"]["name"]).result[int(length - 1)]).apply(lambda x: str(x)),
///     enabled=True,
///     archived=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_findings_refinement = new Gcp.Chronicle.FindingsRefinement("my-findings-refinement", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         DisplayName = "findings_refinement_display_name",
///         Type = "DETECTION_EXCLUSION",
///         Query = "network.dns.response = true",
///         OutcomeFilters = new[]
///         {
///             new Gcp.Chronicle.Inputs.FindingsRefinementOutcomeFilterArgs
///             {
///                 OutcomeVariable = "risk_score",
///                 OutcomeFilterOperator = "EQUAL",
///                 OutcomeValue = "value",
///             },
///         },
///     });
///
///     var example = new Gcp.Chronicle.FindingsRefinementDeployment("example", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         FindingsRefinement = Output.Tuple(Std.Split.Invoke(new()
///         {
///             Separator = "/",
///             Text = googleChronicleFindingsRefinement.My_findings_refinement.Name,
///         }), Std.Split.Invoke(new()
///         {
///             Separator = "/",
///             Text = googleChronicleFindingsRefinement.My_findings_refinement.Name,
///         }).Apply(invoke => invoke.Result).Length()).Apply(values =>
///         {
///             var invoke = values.Item1;
///             var length = values.Item2;
///             return invoke.Result[(int)(length - 1)];
///         }).Apply(x => x.ToString(System.Globalization.CultureInfo.InvariantCulture)),
///         Enabled = true,
///         Archived = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := chronicle.NewFindingsRefinement(ctx, "my-findings-refinement", &chronicle.FindingsRefinementArgs{
/// Location: pulumi.String("us"),
/// Instance: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// DisplayName: pulumi.String("findings_refinement_display_name"),
/// Type: pulumi.String("DETECTION_EXCLUSION"),
/// Query: pulumi.String("network.dns.response = true"),
/// OutcomeFilters: chronicle.FindingsRefinementOutcomeFilterArray{
/// &chronicle.FindingsRefinementOutcomeFilterArgs{
/// OutcomeVariable: pulumi.String("risk_score"),
/// OutcomeFilterOperator: pulumi.String("EQUAL"),
/// OutcomeValue: pulumi.String("value"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// invokeSplit, err := std.Split(ctx, &std.SplitArgs{
/// Separator: "/",
/// Text: googleChronicleFindingsRefinement.MyFindingsRefinement.Name,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// invokeSplit1, err := std.Split(ctx, &std.SplitArgs{
/// Separator: "/",
/// Text: googleChronicleFindingsRefinement.MyFindingsRefinement.Name,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = chronicle.NewFindingsRefinementDeployment(ctx, "example", &chronicle.FindingsRefinementDeploymentArgs{
/// Location: pulumi.String("us"),
/// Instance: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// FindingsRefinement: pulumi.String(len(invokeSplit.Result).ApplyT(func(length int) (pulumi.Any, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(pulumi.AnyOutput)),
/// Enabled: pulumi.Bool(true),
/// Archived: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_chronicle_findingsrefinement" "my-findings-refinement" {
///   location     = "us"
///   instance     = "00000000-0000-0000-0000-000000000000"
///   display_name = "findings_refinement_display_name"
///   type         = "DETECTION_EXCLUSION"
///   query        = "network.dns.response = true"
///   outcome_filters {
///     outcome_variable        = "risk_score"
///     outcome_filter_operator = "EQUAL"
///     outcome_value           = "value"
///   }
/// }
/// resource "gcp_chronicle_findingsrefinementdeployment" "example" {
///   location            = "us"
///   instance            = "00000000-0000-0000-0000-000000000000"
///   findings_refinement = element(split("/", googleChronicleFindingsRefinement.my-findings-refinement.name), length(split("/", googleChronicleFindingsRefinement.my-findings-refinement.name)) - 1)
///   enabled             = "true"
///   archived            = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.FindingsRefinement;
/// import com.pulumi.gcp.chronicle.FindingsRefinementArgs;
/// import com.pulumi.gcp.chronicle.inputs.FindingsRefinementOutcomeFilterArgs;
/// import com.pulumi.gcp.chronicle.FindingsRefinementDeployment;
/// import com.pulumi.gcp.chronicle.FindingsRefinementDeploymentArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.SplitArgs;
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
///         var my_findings_refinement = new FindingsRefinement("my-findings-refinement", FindingsRefinementArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .displayName("findings_refinement_display_name")
///             .type("DETECTION_EXCLUSION")
///             .query("network.dns.response = true")
///             .outcomeFilters(FindingsRefinementOutcomeFilterArgs.builder()
///                 .outcomeVariable("risk_score")
///                 .outcomeFilterOperator("EQUAL")
///                 .outcomeValue("value")
///                 .build())
///             .build());
///
///         var example = new FindingsRefinementDeployment("example", FindingsRefinementDeploymentArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .findingsRefinement(((String) StdFunctions.split(SplitArgs.builder()
///                 .separator("/")
///                 .text(googleChronicleFindingsRefinement.get("my-findings-refinement").get("name"))
///                 .build()).result().size().applyValue(_length -> StdFunctions.split(SplitArgs.builder()
///                 .separator("/")
///                 .text(googleChronicleFindingsRefinement.get("my-findings-refinement").get("name"))
///                 .build()).result()[_length - 1])))
///             .enabled(true)
///             .archived(false)
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// FindingsRefinementDeployment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/findingsRefinements/{{findings_refinement}}/deployment`
/// * `{{project}}/{{location}}/{{instance}}/{{findings_refinement}}`
/// * `{{location}}/{{instance}}/{{findings_refinement}}`
///
///
/// When using the `pulumi import` command, FindingsRefinementDeployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/findingsRefinementDeployment:FindingsRefinementDeployment default projects/{{project}}/locations/{{location}}/instances/{{instance}}/findingsRefinements/{{findings_refinement}}/deployment
/// $ pulumi import gcp:chronicle/findingsRefinementDeployment:FindingsRefinementDeployment default {{project}}/{{location}}/{{instance}}/{{findings_refinement}}
/// $ pulumi import gcp:chronicle/findingsRefinementDeployment:FindingsRefinementDeployment default {{location}}/{{instance}}/{{findings_refinement}}
/// ```
class FindingsRefinementDeployment extends pulumi.CustomResource {
  /// The archive state of the findings refinement deployment.
  /// Cannot be set to true unless enabled is set to false.
  /// If currently set to true, enabled cannot be updated to true.
  late final pulumi.Output<bool?> archived;
  /// Describes the detectors a detection exclusion is applied to.
  /// Structure is documented below.
  late final pulumi.Output<FindingsRefinementDeploymentDetectionExclusionApplication?> detectionExclusionApplication;
  /// Whether the findings refinement is currently deployed continuously against
  /// incoming findings.
  late final pulumi.Output<bool?> enabled;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> findingsRefinement;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// The resource name of the findings refinement deployment.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/findingsRefinements/{findings_refinement}/deployment
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The timestamp when the findings refinement deployment was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [FindingsRefinementDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FindingsRefinementDeployment]. {@macro pulumi_chronicle_findings_refinement_deployment_findings_refinement_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FindingsRefinementDeployment(
    String name, {
    FindingsRefinementDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/findingsRefinementDeployment:FindingsRefinementDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    archived = registerOutput<bool?>('archived');
    detectionExclusionApplication = registerOutput<FindingsRefinementDeploymentDetectionExclusionApplication?>('detectionExclusionApplication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FindingsRefinementDeploymentDetectionExclusionApplication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool?>('enabled');
    findingsRefinement = registerOutput<String>('findingsRefinement');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [FindingsRefinementDeployment] resource's state with the given [name] and [id].
  static FindingsRefinementDeployment get(
    String name,
    pulumi.Input<String> id, {
    FindingsRefinementDeploymentState? state,
  }) {
    return FindingsRefinementDeployment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FindingsRefinementDeployment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/findingsRefinementDeployment:FindingsRefinementDeployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    archived = registerOutput<bool?>('archived');
    detectionExclusionApplication = registerOutput<FindingsRefinementDeploymentDetectionExclusionApplication?>('detectionExclusionApplication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FindingsRefinementDeploymentDetectionExclusionApplication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool?>('enabled');
    findingsRefinement = registerOutput<String>('findingsRefinement');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }
}
