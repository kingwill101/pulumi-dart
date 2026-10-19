import 'package:pulumi/pulumi.dart' as pulumi;
import 'case_stage_definition_args.dart';
import 'case_stage_definition_state.dart';

/// CaseStageDefinition represents a stage in the lifecycle of a case.
///
///
/// To get more information about CaseStageDefinition, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.caseStageDefinitions)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Casestagedefinition Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.CaseStageDefinition("example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     displayName: "my_stage",
///     order: 100,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.CaseStageDefinition("example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     display_name="my_stage",
///     order=100)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Chronicle.CaseStageDefinition("example", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         DisplayName = "my_stage",
///         Order = 100,
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
/// 		_, err := chronicle.NewCaseStageDefinition(ctx, "example", &chronicle.CaseStageDefinitionArgs{
/// 			Location:    pulumi.String("us"),
/// 			Instance:    pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DisplayName: pulumi.String("my_stage"),
/// 			Order:       pulumi.Int(100),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_chronicle_case_stage_definition" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location     = "us"
///   instance     = "00000000-0000-0000-0000-000000000000"
///   display_name = "my_stage"
///   order        = 100
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.CaseStageDefinition;
/// import com.pulumi.gcp.chronicle.CaseStageDefinitionArgs;
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
///         var example = new CaseStageDefinition("example", CaseStageDefinitionArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .displayName("my_stage")
///             .order(100)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:chronicle:CaseStageDefinition
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       displayName: my_stage
///       order: 100
/// ```
///
///
/// ## Import
///
/// CaseStageDefinition can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/caseStageDefinitions/{{case_stage_definition_id}}`
/// * `{{project}}/{{location}}/{{instance}}/{{case_stage_definition_id}}`
/// * `{{location}}/{{instance}}/{{case_stage_definition_id}}`
///
///
/// When using the `pulumi import` command, CaseStageDefinition can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/caseStageDefinition:CaseStageDefinition default projects/{{project}}/locations/{{location}}/instances/{{instance}}/caseStageDefinitions/{{case_stage_definition_id}}
/// $ pulumi import gcp:chronicle/caseStageDefinition:CaseStageDefinition default {{project}}/{{location}}/{{instance}}/{{case_stage_definition_id}}
/// $ pulumi import gcp:chronicle/caseStageDefinition:CaseStageDefinition default {{location}}/{{instance}}/{{case_stage_definition_id}}
/// ```
class CaseStageDefinition extends pulumi.CustomResource {
  /// The unique identifier for the CaseStageDefinition.
  late final pulumi.Output<String> caseStageDefinitionId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The display name of the stage. The display name must be unique within the instance. The display name must not contain special characters.
  late final pulumi.Output<String> displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the CaseStageDefinition.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/caseStageDefinitions/{case_stage_definition}
  late final pulumi.Output<String> name;
  /// Defines the case stage order in the lifetime of a case.
  late final pulumi.Output<int> order;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [CaseStageDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CaseStageDefinition]. {@macro pulumi_chronicle_case_stage_definition_case_stage_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CaseStageDefinition(
    String name, {
    CaseStageDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/caseStageDefinition:CaseStageDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.1').merge(options),
        ) {
    caseStageDefinitionId = registerOutput<String>('caseStageDefinitionId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    order = registerOutput<int>('order');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [CaseStageDefinition] resource's state with the given [name] and [id].
  static CaseStageDefinition get(
    String name,
    pulumi.Input<String> id, {
    CaseStageDefinitionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CaseStageDefinition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CaseStageDefinition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/caseStageDefinition:CaseStageDefinition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    caseStageDefinitionId = registerOutput<String>('caseStageDefinitionId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    order = registerOutput<int>('order');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [CaseStageDefinition] resource.
  CaseStageDefinition.reference(String urn)
    : super(
        'gcp:chronicle/caseStageDefinition:CaseStageDefinition',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    caseStageDefinitionId = registerOutput<String>('caseStageDefinitionId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    order = registerOutput<int>('order');
    project = registerOutput<String>('project');
  }
}
