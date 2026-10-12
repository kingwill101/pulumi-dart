import 'package:pulumi/pulumi.dart' as pulumi;
import 'case_close_definition_args.dart';
import 'case_close_definition_state.dart';

/// CaseCloseDefinition provides predefined root cause options for closing security cases in SecOps. These definitions ensure consistent documentation and reporting across case investigations upon closure.
///
///
/// To get more information about CaseCloseDefinition, see:
///
/// * [API documentation](https://docs.cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.caseCloseDefinitions)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Caseclosedefinition Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.CaseCloseDefinition("example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     closeReason: "MAINTENANCE",
///     rootCause: "Scheduled maintenance activity",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.CaseCloseDefinition("example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     close_reason="MAINTENANCE",
///     root_cause="Scheduled maintenance activity")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Chronicle.CaseCloseDefinition("example", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         CloseReason = "MAINTENANCE",
///         RootCause = "Scheduled maintenance activity",
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
/// 		_, err := chronicle.NewCaseCloseDefinition(ctx, "example", &chronicle.CaseCloseDefinitionArgs{
/// 			Location:    pulumi.String("us"),
/// 			Instance:    pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			CloseReason: pulumi.String("MAINTENANCE"),
/// 			RootCause:   pulumi.String("Scheduled maintenance activity"),
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
/// resource "gcp_chronicle_caseclosedefinition" "example" {
///   location     = "us"
///   instance     = "00000000-0000-0000-0000-000000000000"
///   close_reason = "MAINTENANCE"
///   root_cause   = "Scheduled maintenance activity"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.CaseCloseDefinition;
/// import com.pulumi.gcp.chronicle.CaseCloseDefinitionArgs;
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
///         var example = new CaseCloseDefinition("example", CaseCloseDefinitionArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .closeReason("MAINTENANCE")
///             .rootCause("Scheduled maintenance activity")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:chronicle:CaseCloseDefinition
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       closeReason: MAINTENANCE
///       rootCause: Scheduled maintenance activity
/// ```
///
///
/// ## Import
///
/// CaseCloseDefinition can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/caseCloseDefinitions/{{case_close_definition_id}}`
/// * `{{project}}/{{location}}/{{instance}}/{{case_close_definition_id}}`
/// * `{{location}}/{{instance}}/{{case_close_definition_id}}`
///
///
/// When using the `pulumi import` command, CaseCloseDefinition can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/caseCloseDefinition:CaseCloseDefinition default projects/{{project}}/locations/{{location}}/instances/{{instance}}/caseCloseDefinitions/{{case_close_definition_id}}
/// $ pulumi import gcp:chronicle/caseCloseDefinition:CaseCloseDefinition default {{project}}/{{location}}/{{instance}}/{{case_close_definition_id}}
/// $ pulumi import gcp:chronicle/caseCloseDefinition:CaseCloseDefinition default {{location}}/{{instance}}/{{case_close_definition_id}}
/// ```
class CaseCloseDefinition extends pulumi.CustomResource {
  /// The ID of the case close definition.
  late final pulumi.Output<String> caseCloseDefinitionId;
  /// Specify why the case was closed.
  /// Possible values are: `MALICIOUS`, `NOT_MALICIOUS`, `MAINTENANCE`, `INCONCLUSIVE`.
  late final pulumi.Output<String> closeReason;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  late final pulumi.Output<String> instance;
  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  late final pulumi.Output<String> location;
  /// Identifier. The unique name(ID) of the CaseCloseDefinition.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/caseCloseDefinitions/{case_close_definition}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Provides detailed description about the specific root cause option.
  late final pulumi.Output<String> rootCause;

  /// Creates a new [CaseCloseDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CaseCloseDefinition]. {@macro pulumi_chronicle_case_close_definition_case_close_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CaseCloseDefinition(
    String name, {
    CaseCloseDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/caseCloseDefinition:CaseCloseDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.0').merge(options),
        ) {
    caseCloseDefinitionId = registerOutput<String>('caseCloseDefinitionId');
    closeReason = registerOutput<String>('closeReason');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rootCause = registerOutput<String>('rootCause');
  }

  /// Gets an existing [CaseCloseDefinition] resource's state with the given [name] and [id].
  static CaseCloseDefinition get(
    String name,
    pulumi.Input<String> id, {
    CaseCloseDefinitionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CaseCloseDefinition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CaseCloseDefinition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/caseCloseDefinition:CaseCloseDefinition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    caseCloseDefinitionId = registerOutput<String>('caseCloseDefinitionId');
    closeReason = registerOutput<String>('closeReason');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rootCause = registerOutput<String>('rootCause');
  }

  /// Creates a typed reference to an existing [CaseCloseDefinition] resource.
  CaseCloseDefinition.reference(String urn)
    : super(
        'gcp:chronicle/caseCloseDefinition:CaseCloseDefinition',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    caseCloseDefinitionId = registerOutput<String>('caseCloseDefinitionId');
    closeReason = registerOutput<String>('closeReason');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rootCause = registerOutput<String>('rootCause');
  }
}
