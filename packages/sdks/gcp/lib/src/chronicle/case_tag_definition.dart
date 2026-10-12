import 'package:pulumi/pulumi.dart' as pulumi;
import 'case_tag_definition_args.dart';
import 'case_tag_definition_state.dart';

/// A CaseTagDefinition is used to classify and tag cases based on criteria.
///
///
/// To get more information about CaseTagDefinition, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.caseTagDefinitions)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Casetagdefinition Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.CaseTagDefinition("example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     displayName: "tag__89605",
///     matchCriteria: "BY_VENDOR",
///     value: "test_value",
///     comparisonType: "EXACT",
///     priority: 1,
///     canBeCaseTitle: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.CaseTagDefinition("example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     display_name="tag__89605",
///     match_criteria="BY_VENDOR",
///     value="test_value",
///     comparison_type="EXACT",
///     priority=1,
///     can_be_case_title=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Chronicle.CaseTagDefinition("example", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         DisplayName = "tag__89605",
///         MatchCriteria = "BY_VENDOR",
///         Value = "test_value",
///         ComparisonType = "EXACT",
///         Priority = 1,
///         CanBeCaseTitle = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chronicle.NewCaseTagDefinition(ctx, "example", &chronicle.CaseTagDefinitionArgs{
/// 			Location:       pulumi.String("us"),
/// 			Instance:       pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DisplayName:    pulumi.String("tag__89605"),
/// 			MatchCriteria:  pulumi.String("BY_VENDOR"),
/// 			Value:          pulumi.String("test_value"),
/// 			ComparisonType: pulumi.String("EXACT"),
/// 			Priority:       pulumi.Int(1),
/// 			CanBeCaseTitle: pulumi.Bool(false),
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
/// resource "gcp_chronicle_casetagdefinition" "example" {
///   location          = "us"
///   instance          = "00000000-0000-0000-0000-000000000000"
///   display_name      = "tag__89605"
///   match_criteria    = "BY_VENDOR"
///   value             = "test_value"
///   comparison_type   = "EXACT"
///   priority          = 1
///   can_be_case_title = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.CaseTagDefinition;
/// import com.pulumi.gcp.chronicle.CaseTagDefinitionArgs;
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
///         var example = new CaseTagDefinition("example", CaseTagDefinitionArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .displayName("tag__89605")
///             .matchCriteria("BY_VENDOR")
///             .value("test_value")
///             .comparisonType("EXACT")
///             .priority(1)
///             .canBeCaseTitle(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:chronicle:CaseTagDefinition
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       displayName: tag__89605
///       matchCriteria: BY_VENDOR
///       value: test_value
///       comparisonType: EXACT
///       priority: 1
///       canBeCaseTitle: false
/// ```
///
///
/// ## Import
///
/// CaseTagDefinition can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/caseTagDefinitions/{{case_tag_definition_id}}`
/// * `{{project}}/{{location}}/{{instance}}/{{case_tag_definition_id}}`
/// * `{{location}}/{{instance}}/{{case_tag_definition_id}}`
///
///
/// When using the `pulumi import` command, CaseTagDefinition can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/caseTagDefinition:CaseTagDefinition default projects/{{project}}/locations/{{location}}/instances/{{instance}}/caseTagDefinitions/{{case_tag_definition_id}}
/// $ pulumi import gcp:chronicle/caseTagDefinition:CaseTagDefinition default {{project}}/{{location}}/{{instance}}/{{case_tag_definition_id}}
/// $ pulumi import gcp:chronicle/caseTagDefinition:CaseTagDefinition default {{location}}/{{instance}}/{{case_tag_definition_id}}
/// ```
class CaseTagDefinition extends pulumi.CustomResource {
  /// When checked, the tag will be assigned as the title of the case if it meets the conditions.
  late final pulumi.Output<bool> canBeCaseTitle;
  /// The unique identifier of the CaseTagDefinition.
  late final pulumi.Output<String> caseTagDefinitionId;
  /// The type of comparison to be used when comparing the value to the case.
  /// Possible values are: `EXACT`, `START_WITH`, `CONTAIN`, `ENDS_WITH`.
  late final pulumi.Output<String> comparisonType;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// This is the name of the tag that will be applied to the case.
  late final pulumi.Output<String> displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// The criteria to match the case against.
  /// Possible values are: `BY_VENDOR`, `BY_PRODUCT`, `BY_RULE_GENERATOR`, `BY_ENTITY_PROPERTY_NAME`, `DATA_DRIVEN`, `SYSTEM`.
  late final pulumi.Output<String> matchCriteria;
  /// Identifier. The unique name(ID) of the CaseTagDefinition.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/caseTagDefinitions/{case_tag_definition_id}
  late final pulumi.Output<String> name;
  /// Note that Google Security Operations merges priority with other alerts and
  /// entities and events so that the priority here is not absolute.
  late final pulumi.Output<int> priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Specific Entity property name to search in case.
  /// This is relevant only when a SearchIn of type BY_ENTITY_PROPERTY_NAME was chosen.
  late final pulumi.Output<String?> propertyName;
  /// Specific value to search in case - in addition to SearchIn property.
  late final pulumi.Output<String> value;

  /// Creates a new [CaseTagDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CaseTagDefinition]. {@macro pulumi_chronicle_case_tag_definition_case_tag_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CaseTagDefinition(
    String name, {
    CaseTagDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/caseTagDefinition:CaseTagDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.0').merge(options),
        ) {
    canBeCaseTitle = registerOutput<bool>('canBeCaseTitle');
    caseTagDefinitionId = registerOutput<String>('caseTagDefinitionId');
    comparisonType = registerOutput<String>('comparisonType');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    matchCriteria = registerOutput<String>('matchCriteria');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    propertyName = registerOutput<String?>('propertyName');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [CaseTagDefinition] resource's state with the given [name] and [id].
  static CaseTagDefinition get(
    String name,
    pulumi.Input<String> id, {
    CaseTagDefinitionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CaseTagDefinition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CaseTagDefinition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/caseTagDefinition:CaseTagDefinition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    canBeCaseTitle = registerOutput<bool>('canBeCaseTitle');
    caseTagDefinitionId = registerOutput<String>('caseTagDefinitionId');
    comparisonType = registerOutput<String>('comparisonType');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    matchCriteria = registerOutput<String>('matchCriteria');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    propertyName = registerOutput<String?>('propertyName');
    value = registerOutput<String>('value');
  }

  /// Creates a typed reference to an existing [CaseTagDefinition] resource.
  CaseTagDefinition.reference(String urn)
    : super(
        'gcp:chronicle/caseTagDefinition:CaseTagDefinition',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    canBeCaseTitle = registerOutput<bool>('canBeCaseTitle');
    caseTagDefinitionId = registerOutput<String>('caseTagDefinitionId');
    comparisonType = registerOutput<String>('comparisonType');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    matchCriteria = registerOutput<String>('matchCriteria');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    propertyName = registerOutput<String?>('propertyName');
    value = registerOutput<String>('value');
  }
}
