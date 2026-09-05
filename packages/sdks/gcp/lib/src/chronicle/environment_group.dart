import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_group_args.dart';
import 'environment_group_state.dart';

/// Environment groups let you organize multiple environments into logical categories, making it easier to manage large organizations or multiple customers as a Managed Security Service Provider (MSSP).
///
///
/// To get more information about EnvironmentGroup, see:
///
/// * [API documentation](https://docs.cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.environmentGroups)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Environmentgroup Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sample = new gcp.chronicle.EnvironmentGroup("sample", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     displayName: "myEnvironmentGroup",
///     description: "My Environment Description",
///     environmentsIds: ["Default Environment"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// sample = gcp.chronicle.EnvironmentGroup("sample",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     display_name="myEnvironmentGroup",
///     description="My Environment Description",
///     environments_ids=["Default Environment"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sample = new Gcp.Chronicle.EnvironmentGroup("sample", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         DisplayName = "myEnvironmentGroup",
///         Description = "My Environment Description",
///         EnvironmentsIds = new[]
///         {
///             "Default Environment",
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
/// 		_, err := chronicle.NewEnvironmentGroup(ctx, "sample", &chronicle.EnvironmentGroupArgs{
/// 			Location:    pulumi.String("us"),
/// 			Instance:    pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DisplayName: pulumi.String("myEnvironmentGroup"),
/// 			Description: pulumi.String("My Environment Description"),
/// 			EnvironmentsIds: pulumi.StringArray{
/// 				pulumi.String("Default Environment"),
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
/// resource "gcp_chronicle_environmentgroup" "sample" {
///   location         = "us"
///   instance         = "00000000-0000-0000-0000-000000000000"
///   display_name     = "myEnvironmentGroup"
///   description      = "My Environment Description"
///   environments_ids = ["Default Environment"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.EnvironmentGroup;
/// import com.pulumi.gcp.chronicle.EnvironmentGroupArgs;
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
///         var sample = new EnvironmentGroup("sample", EnvironmentGroupArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .displayName("myEnvironmentGroup")
///             .description("My Environment Description")
///             .environmentsIds("Default Environment")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sample:
///     type: gcp:chronicle:EnvironmentGroup
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       displayName: myEnvironmentGroup
///       description: My Environment Description
///       environmentsIds:
///         - Default Environment
/// ```
///
///
/// ## Import
///
/// EnvironmentGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/environmentGroups/{{environment_group_id}}`
/// * `{{project}}/{{location}}/{{instance}}/{{environment_group_id}}`
/// * `{{location}}/{{instance}}/{{environment_group_id}}`
///
///
/// When using the `pulumi import` command, EnvironmentGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/environmentGroup:EnvironmentGroup default projects/{{project}}/locations/{{location}}/instances/{{instance}}/environmentGroups/{{environment_group_id}}
/// $ pulumi import gcp:chronicle/environmentGroup:EnvironmentGroup default {{project}}/{{location}}/{{instance}}/{{environment_group_id}}
/// $ pulumi import gcp:chronicle/environmentGroup:EnvironmentGroup default {{location}}/{{instance}}/{{environment_group_id}}
/// ```
class EnvironmentGroup extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The EnvironmentGroup description.
  /// This value is optional. This value should be up to
  /// 250 characters, and valid characters are /a-z-/.
  late final pulumi.Output<String> description;
  /// The group name.
  late final pulumi.Output<String> displayName;
  /// Id of the environment group record.
  late final pulumi.Output<String> environmentGroupId;
  /// The environment IDs for the group.
  late final pulumi.Output<List<String>> environmentsIds;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the environment group.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/environmentGroups/{environment_group}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [EnvironmentGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentGroup]. {@macro pulumi_chronicle_environment_group_environment_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentGroup(
    String name, {
    EnvironmentGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/environmentGroup:EnvironmentGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    environmentGroupId = registerOutput<String>('environmentGroupId');
    environmentsIds = registerOutput<List<String>>('environmentsIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [EnvironmentGroup] resource's state with the given [name] and [id].
  static EnvironmentGroup get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EnvironmentGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EnvironmentGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/environmentGroup:EnvironmentGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    environmentGroupId = registerOutput<String>('environmentGroupId');
    environmentsIds = registerOutput<List<String>>('environmentsIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [EnvironmentGroup] resource.
  EnvironmentGroup.reference(String urn)
    : super(
        'gcp:chronicle/environmentGroup:EnvironmentGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    environmentGroupId = registerOutput<String>('environmentGroupId');
    environmentsIds = registerOutput<List<String>>('environmentsIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
