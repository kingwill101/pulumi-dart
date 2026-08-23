import 'package:pulumi/pulumi.dart' as pulumi;
import 'findings_refinement_args.dart';
import 'findings_refinement_state.dart';

/// Represents a set of logic conditions used to refine various types of findings such as curated rule detections.
///
///
/// To get more information about FindingsRefinement, see:
///
/// * [API documentation](https://docs.cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.findingsRefinements)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Findings Refinement Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const findingsRefinementExample = new gcp.chronicle.FindingsRefinement("findings_refinement_example", {
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// findings_refinement_example = gcp.chronicle.FindingsRefinement("findings_refinement_example",
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
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var findingsRefinementExample = new Gcp.Chronicle.FindingsRefinement("findings_refinement_example", new()
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
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chronicle.NewFindingsRefinement(ctx, "findings_refinement_example", &chronicle.FindingsRefinementArgs{
/// 			Location:    pulumi.String("us"),
/// 			Instance:    pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DisplayName: pulumi.String("findings_refinement_display_name"),
/// 			Type:        pulumi.String("DETECTION_EXCLUSION"),
/// 			Query:       pulumi.String("network.dns.response = true"),
/// 			OutcomeFilters: chronicle.FindingsRefinementOutcomeFilterArray{
/// 				&chronicle.FindingsRefinementOutcomeFilterArgs{
/// 					OutcomeVariable:       pulumi.String("risk_score"),
/// 					OutcomeFilterOperator: pulumi.String("EQUAL"),
/// 					OutcomeValue:          pulumi.String("value"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_chronicle_findingsrefinement" "findings_refinement_example" {
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
///         var findingsRefinementExample = new FindingsRefinement("findingsRefinementExample", FindingsRefinementArgs.builder()
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   findingsRefinementExample:
///     type: gcp:chronicle:FindingsRefinement
///     name: findings_refinement_example
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       displayName: findings_refinement_display_name
///       type: DETECTION_EXCLUSION
///       query: network.dns.response = true
///       outcomeFilters:
///         - outcomeVariable: risk_score
///           outcomeFilterOperator: EQUAL
///           outcomeValue: value
/// ```
///
/// ### Chronicle Findings Refinement Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const findingsRefinementExample = new gcp.chronicle.FindingsRefinement("findings_refinement_example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     displayName: "findings_refinement_display_name",
///     type: "DETECTION_EXCLUSION",
///     query: "network.dns.response = true",
///     outcomeFilters: [{
///         outcomeVariable: "network.dns.response = true",
///         outcomeFilterOperator: "EQUAL",
///         outcomeValue: "value1",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// findings_refinement_example = gcp.chronicle.FindingsRefinement("findings_refinement_example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     display_name="findings_refinement_display_name",
///     type="DETECTION_EXCLUSION",
///     query="network.dns.response = true",
///     outcome_filters=[{
///         "outcome_variable": "network.dns.response = true",
///         "outcome_filter_operator": "EQUAL",
///         "outcome_value": "value1",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var findingsRefinementExample = new Gcp.Chronicle.FindingsRefinement("findings_refinement_example", new()
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
///                 OutcomeVariable = "network.dns.response = true",
///                 OutcomeFilterOperator = "EQUAL",
///                 OutcomeValue = "value1",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chronicle.NewFindingsRefinement(ctx, "findings_refinement_example", &chronicle.FindingsRefinementArgs{
/// 			Location:    pulumi.String("us"),
/// 			Instance:    pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DisplayName: pulumi.String("findings_refinement_display_name"),
/// 			Type:        pulumi.String("DETECTION_EXCLUSION"),
/// 			Query:       pulumi.String("network.dns.response = true"),
/// 			OutcomeFilters: chronicle.FindingsRefinementOutcomeFilterArray{
/// 				&chronicle.FindingsRefinementOutcomeFilterArgs{
/// 					OutcomeVariable:       pulumi.String("network.dns.response = true"),
/// 					OutcomeFilterOperator: pulumi.String("EQUAL"),
/// 					OutcomeValue:          pulumi.String("value1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_chronicle_findingsrefinement" "findings_refinement_example" {
///   location     = "us"
///   instance     = "00000000-0000-0000-0000-000000000000"
///   display_name = "findings_refinement_display_name"
///   type         = "DETECTION_EXCLUSION"
///   query        = "network.dns.response = true"
///   outcome_filters {
///     outcome_variable        = "network.dns.response = true"
///     outcome_filter_operator = "EQUAL"
///     outcome_value           = "value1"
///   }
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
///         var findingsRefinementExample = new FindingsRefinement("findingsRefinementExample", FindingsRefinementArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .displayName("findings_refinement_display_name")
///             .type("DETECTION_EXCLUSION")
///             .query("network.dns.response = true")
///             .outcomeFilters(FindingsRefinementOutcomeFilterArgs.builder()
///                 .outcomeVariable("network.dns.response = true")
///                 .outcomeFilterOperator("EQUAL")
///                 .outcomeValue("value1")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   findingsRefinementExample:
///     type: gcp:chronicle:FindingsRefinement
///     name: findings_refinement_example
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       displayName: findings_refinement_display_name
///       type: DETECTION_EXCLUSION
///       query: network.dns.response = true
///       outcomeFilters:
///         - outcomeVariable: network.dns.response = true
///           outcomeFilterOperator: EQUAL
///           outcomeValue: value1
/// ```
///
///
/// ## Import
///
/// FindingsRefinement can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/findingsRefinements/{{name}}`
/// * `{{project}}/{{location}}/{{instance}}/{{name}}`
/// * `{{location}}/{{instance}}/{{name}}`
///
///
/// When using the `pulumi import` command, FindingsRefinement can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/findingsRefinement:FindingsRefinement default projects/{{project}}/locations/{{location}}/instances/{{instance}}/findingsRefinements/{{name}}
/// $ pulumi import gcp:chronicle/findingsRefinement:FindingsRefinement default {{project}}/{{location}}/{{instance}}/{{name}}
/// $ pulumi import gcp:chronicle/findingsRefinement:FindingsRefinement default {{location}}/{{instance}}/{{name}}
/// ```
class FindingsRefinement extends pulumi.CustomResource {
  /// The timestamp of when the findings refinement was created.
  late final pulumi.Output<String> createTime;
  /// Display name of the findings refinement.
  late final pulumi.Output<String?> displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Full resource name for the findings refinement.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/findingsRefinements/{findings_refinement}
  late final pulumi.Output<String> name;
  /// The outcome filters for the findings refinement. These allow you to specify
  /// filters that are applied to the outcome variables in the detection.
  /// All filters must be true for a detection to match the findings refinement.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> outcomeFilters;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The query for the findings refinement. Works in conjunction with the type
  /// field to determine the findings refinement behavior. The syntax of this
  /// query is the same as a UDM search string. See the following for more
  /// information:
  /// https://cloud.google.com/chronicle/docs/investigation/udm-search
  late final pulumi.Output<String?> query;
  /// DETECTION_EXCLUSION is the only supported type of findings refinement.
  /// Possible values:
  /// DETECTION_EXCLUSION
  late final pulumi.Output<String?> type;
  /// The timestamp of when the findings refinement was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [FindingsRefinement].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FindingsRefinement]. {@macro pulumi_chronicle_findings_refinement_findings_refinement_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FindingsRefinement(
    String name, {
    FindingsRefinementArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/findingsRefinement:FindingsRefinement',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String?>('displayName');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outcomeFilters = registerOutput<List<Map<String, dynamic>>?>('outcomeFilters');
    project = registerOutput<String>('project');
    query = registerOutput<String?>('query');
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [FindingsRefinement] resource's state with the given [name] and [id].
  static FindingsRefinement get(
    String name,
    pulumi.Input<String> id, {
    FindingsRefinementState? state,
  }) {
    return FindingsRefinement._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FindingsRefinement._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/findingsRefinement:FindingsRefinement',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String?>('displayName');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outcomeFilters = registerOutput<List<Map<String, dynamic>>?>('outcomeFilters');
    project = registerOutput<String>('project');
    query = registerOutput<String?>('query');
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
