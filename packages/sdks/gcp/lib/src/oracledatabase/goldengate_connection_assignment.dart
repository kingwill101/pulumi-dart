import 'package:pulumi/pulumi.dart' as pulumi;
import 'goldengate_connection_assignment_args.dart';
import 'goldengate_connection_assignment_properties.dart';
import 'goldengate_connection_assignment_state.dart';

/// This resource helps to assign a GoldengateConnection to a GoldengateDeployment used for actual data replication and transformations.
///
///
///
/// ## Example Usage
///
/// ### Oracledatabase Goldengate Connection Assignment Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const assignment = new gcp.oracledatabase.GoldengateConnectionAssignment("assignment", {
///     goldengateConnectionAssignmentId: "my-assignment",
///     displayName: "my-assignment",
///     location: "us-east4",
///     project: "my-project",
///     labels: {
///         "label-one": "value-one",
///     },
///     properties: {
///         goldengateConnection: "projects/my-project/locations/us-east4/goldengateConnections/my-connection",
///         goldengateDeployment: "projects/my-project/locations/us-east4/goldengateDeployments/my-deployment",
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// assignment = gcp.oracledatabase.GoldengateConnectionAssignment("assignment",
///     goldengate_connection_assignment_id="my-assignment",
///     display_name="my-assignment",
///     location="us-east4",
///     project="my-project",
///     labels={
///         "label-one": "value-one",
///     },
///     properties={
///         "goldengate_connection": "projects/my-project/locations/us-east4/goldengateConnections/my-connection",
///         "goldengate_deployment": "projects/my-project/locations/us-east4/goldengateDeployments/my-deployment",
///     },
///     deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assignment = new Gcp.OracleDatabase.GoldengateConnectionAssignment("assignment", new()
///     {
///         GoldengateConnectionAssignmentId = "my-assignment",
///         DisplayName = "my-assignment",
///         Location = "us-east4",
///         Project = "my-project",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Properties = new Gcp.OracleDatabase.Inputs.GoldengateConnectionAssignmentPropertiesArgs
///         {
///             GoldengateConnection = "projects/my-project/locations/us-east4/goldengateConnections/my-connection",
///             GoldengateDeployment = "projects/my-project/locations/us-east4/goldengateDeployments/my-deployment",
///         },
///         DeletionProtection = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.NewGoldengateConnectionAssignment(ctx, "assignment", &oracledatabase.GoldengateConnectionAssignmentArgs{
/// 			GoldengateConnectionAssignmentId: pulumi.String("my-assignment"),
/// 			DisplayName:                      pulumi.String("my-assignment"),
/// 			Location:                         pulumi.String("us-east4"),
/// 			Project:                          pulumi.String("my-project"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Properties: &oracledatabase.GoldengateConnectionAssignmentPropertiesArgs{
/// 				GoldengateConnection: pulumi.String("projects/my-project/locations/us-east4/goldengateConnections/my-connection"),
/// 				GoldengateDeployment: pulumi.String("projects/my-project/locations/us-east4/goldengateDeployments/my-deployment"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
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
/// resource "gcp_oracledatabase_goldengateconnectionassignment" "assignment" {
///   goldengate_connection_assignment_id = "my-assignment"
///   display_name                        = "my-assignment"
///   location                            = "us-east4"
///   project                             = "my-project"
///   labels = {
///     "label-one" = "value-one"
///   }
///   properties = {
///     goldengate_connection = "projects/my-project/locations/us-east4/goldengateConnections/my-connection"
///     goldengate_deployment = "projects/my-project/locations/us-east4/goldengateDeployments/my-deployment"
///   }
///   deletion_protection = "true"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.GoldengateConnectionAssignment;
/// import com.pulumi.gcp.oracledatabase.GoldengateConnectionAssignmentArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateConnectionAssignmentPropertiesArgs;
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
///         var assignment = new GoldengateConnectionAssignment("assignment", GoldengateConnectionAssignmentArgs.builder()
///             .goldengateConnectionAssignmentId("my-assignment")
///             .displayName("my-assignment")
///             .location("us-east4")
///             .project("my-project")
///             .labels(Map.of("label-one", "value-one"))
///             .properties(GoldengateConnectionAssignmentPropertiesArgs.builder()
///                 .goldengateConnection("projects/my-project/locations/us-east4/goldengateConnections/my-connection")
///                 .goldengateDeployment("projects/my-project/locations/us-east4/goldengateDeployments/my-deployment")
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   assignment:
///     type: gcp:oracledatabase:GoldengateConnectionAssignment
///     properties:
///       goldengateConnectionAssignmentId: my-assignment
///       displayName: my-assignment
///       location: us-east4
///       project: my-project
///       labels:
///         label-one: value-one
///       properties:
///         goldengateConnection: projects/my-project/locations/us-east4/goldengateConnections/my-connection
///         goldengateDeployment: projects/my-project/locations/us-east4/goldengateDeployments/my-deployment
///       deletionProtection: 'true'
/// ```
///
///
/// ## Import
///
/// GoldengateConnectionAssignment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/goldengateConnectionAssignments/{{goldengate_connection_assignment_id}}`
/// * `{{project}}/{{location}}/{{goldengate_connection_assignment_id}}`
/// * `{{location}}/{{goldengate_connection_assignment_id}}`
///
///
/// When using the `pulumi import` command, GoldengateConnectionAssignment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/goldengateConnectionAssignment:GoldengateConnectionAssignment default projects/{{project}}/locations/{{location}}/goldengateConnectionAssignments/{{goldengate_connection_assignment_id}}
/// $ pulumi import gcp:oracledatabase/goldengateConnectionAssignment:GoldengateConnectionAssignment default {{project}}/{{location}}/{{goldengate_connection_assignment_id}}
/// $ pulumi import gcp:oracledatabase/goldengateConnectionAssignment:GoldengateConnectionAssignment default {{location}}/{{goldengate_connection_assignment_id}}
/// ```
class GoldengateConnectionAssignment extends pulumi.CustomResource {
  /// The time when the connection assignment was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or pulumi up that would delete the instance will fail.
  late final pulumi.Output<bool?> deletionProtection;
  /// The display name for the GoldengateConnectionAssignment.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The OCID of the entitlement linked to this resource.
  late final pulumi.Output<String> entitlementId;
  /// The ID of the GoldengateConnectionAssignment to create.
  late final pulumi.Output<String> goldengateConnectionAssignmentId;
  /// The labels or tags associated with the GoldengateConnectionAssignment.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The name of the GoldengateConnectionAssignment resource in the following
  /// format:
  /// projects/{project}/locations/{region}/goldengateConnectionAssignments/{goldengate_connection_assignment}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The properties of a GoldengateConnectionAssignment.
  /// Structure is documented below.
  late final pulumi.Output<GoldengateConnectionAssignmentProperties> properties;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Creates a new [GoldengateConnectionAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GoldengateConnectionAssignment]. {@macro pulumi_oracledatabase_goldengate_connection_assignment_goldengate_connection_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GoldengateConnectionAssignment(
    String name, {
    GoldengateConnectionAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/goldengateConnectionAssignment:GoldengateConnectionAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    entitlementId = registerOutput<String>('entitlementId');
    goldengateConnectionAssignmentId = registerOutput<String>('goldengateConnectionAssignmentId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    properties = registerOutput<GoldengateConnectionAssignmentProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoldengateConnectionAssignmentProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
  }

  /// Gets an existing [GoldengateConnectionAssignment] resource's state with the given [name] and [id].
  static GoldengateConnectionAssignment get(
    String name,
    pulumi.Input<String> id, {
    GoldengateConnectionAssignmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GoldengateConnectionAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GoldengateConnectionAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/goldengateConnectionAssignment:GoldengateConnectionAssignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    entitlementId = registerOutput<String>('entitlementId');
    goldengateConnectionAssignmentId = registerOutput<String>('goldengateConnectionAssignmentId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    properties = registerOutput<GoldengateConnectionAssignmentProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoldengateConnectionAssignmentProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
  }

  /// Creates a typed reference to an existing [GoldengateConnectionAssignment] resource.
  GoldengateConnectionAssignment.reference(String urn)
    : super(
        'gcp:oracledatabase/goldengateConnectionAssignment:GoldengateConnectionAssignment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    entitlementId = registerOutput<String>('entitlementId');
    goldengateConnectionAssignmentId = registerOutput<String>('goldengateConnectionAssignmentId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    properties = registerOutput<GoldengateConnectionAssignmentProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoldengateConnectionAssignmentProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
  }
}
