import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_environment_type_args.dart';
import 'project_environment_type_identity.dart';
import 'project_environment_type_state.dart';

/// Manages a Dev Center Project Environment Type.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleDevCenter = new azure.devcenter.DevCenter("example", {
///     name: "example-dc",
///     resourceGroupName: example.name,
///     location: example.location,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleEnvironmentType = new azure.devcenter.EnvironmentType("example", {
///     name: "example-et",
///     devCenterId: exampleDevCenter.id,
/// });
/// const exampleProject = new azure.devcenter.Project("example", {
///     name: "example-dcp",
///     resourceGroupName: example.name,
///     location: example.location,
///     devCenterId: exampleDevCenter.id,
/// }, {
///     dependsOn: [exampleEnvironmentType],
/// });
/// const exampleProjectEnvironmentType = new azure.devcenter.ProjectEnvironmentType("example", {
///     name: "example-et",
///     location: example.location,
///     devCenterProjectId: exampleProject.id,
///     deploymentTargetId: current.then(current => `/subscriptions/${current.subscriptionId}`),
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_dev_center = azure.devcenter.DevCenter("example",
///     name="example-dc",
///     resource_group_name=example.name,
///     location=example.location,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_environment_type = azure.devcenter.EnvironmentType("example",
///     name="example-et",
///     dev_center_id=example_dev_center.id)
/// example_project = azure.devcenter.Project("example",
///     name="example-dcp",
///     resource_group_name=example.name,
///     location=example.location,
///     dev_center_id=example_dev_center.id,
///     opts = pulumi.ResourceOptions(depends_on=[example_environment_type]))
/// example_project_environment_type = azure.devcenter.ProjectEnvironmentType("example",
///     name="example-et",
///     location=example.location,
///     dev_center_project_id=example_project.id,
///     deployment_target_id=f"/subscriptions/{current.subscription_id}",
///     identity={
///         "type": "SystemAssigned",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleDevCenter = new Azure.DevCenter.DevCenter("example", new()
///     {
///         Name = "example-dc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Identity = new Azure.DevCenter.Inputs.DevCenterIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleEnvironmentType = new Azure.DevCenter.EnvironmentType("example", new()
///     {
///         Name = "example-et",
///         DevCenterId = exampleDevCenter.Id,
///     });
///
///     var exampleProject = new Azure.DevCenter.Project("example", new()
///     {
///         Name = "example-dcp",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         DevCenterId = exampleDevCenter.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleEnvironmentType,
///         },
///     });
///
///     var exampleProjectEnvironmentType = new Azure.DevCenter.ProjectEnvironmentType("example", new()
///     {
///         Name = "example-et",
///         Location = example.Location,
///         DevCenterProjectId = exampleProject.Id,
///         DeploymentTargetId = $"/subscriptions/{current.Apply(getClientConfigResult => getClientConfigResult.SubscriptionId)}",
///         Identity = new Azure.DevCenter.Inputs.ProjectEnvironmentTypeIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDevCenter, err := devcenter.NewDevCenter(ctx, "example", &devcenter.DevCenterArgs{
/// 			Name:              pulumi.String("example-dc"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Identity: &devcenter.DevCenterIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEnvironmentType, err := devcenter.NewEnvironmentType(ctx, "example", &devcenter.EnvironmentTypeArgs{
/// 			Name:        pulumi.String("example-et"),
/// 			DevCenterId: exampleDevCenter.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleProject, err := devcenter.NewProject(ctx, "example", &devcenter.ProjectArgs{
/// 			Name:              pulumi.String("example-dcp"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			DevCenterId:       exampleDevCenter.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleEnvironmentType,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = devcenter.NewProjectEnvironmentType(ctx, "example", &devcenter.ProjectEnvironmentTypeArgs{
/// 			Name:               pulumi.String("example-et"),
/// 			Location:           example.Location,
/// 			DevCenterProjectId: exampleProject.ID(),
/// 			DeploymentTargetId: pulumi.Sprintf("/subscriptions/%v", current.SubscriptionId),
/// 			Identity: &devcenter.ProjectEnvironmentTypeIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.devcenter.DevCenter;
/// import com.pulumi.azure.devcenter.DevCenterArgs;
/// import com.pulumi.azure.devcenter.inputs.DevCenterIdentityArgs;
/// import com.pulumi.azure.devcenter.EnvironmentType;
/// import com.pulumi.azure.devcenter.EnvironmentTypeArgs;
/// import com.pulumi.azure.devcenter.Project;
/// import com.pulumi.azure.devcenter.ProjectArgs;
/// import com.pulumi.azure.devcenter.ProjectEnvironmentType;
/// import com.pulumi.azure.devcenter.ProjectEnvironmentTypeArgs;
/// import com.pulumi.azure.devcenter.inputs.ProjectEnvironmentTypeIdentityArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleDevCenter = new DevCenter("exampleDevCenter", DevCenterArgs.builder()
///             .name("example-dc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .identity(DevCenterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleEnvironmentType = new EnvironmentType("exampleEnvironmentType", EnvironmentTypeArgs.builder()
///             .name("example-et")
///             .devCenterId(exampleDevCenter.id())
///             .build());
///
///         var exampleProject = new Project("exampleProject", ProjectArgs.builder()
///             .name("example-dcp")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .devCenterId(exampleDevCenter.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleEnvironmentType)
///                 .build());
///
///         var exampleProjectEnvironmentType = new ProjectEnvironmentType("exampleProjectEnvironmentType", ProjectEnvironmentTypeArgs.builder()
///             .name("example-et")
///             .location(example.location())
///             .devCenterProjectId(exampleProject.id())
///             .deploymentTargetId(String.format("/subscriptions/%s", current.subscriptionId()))
///             .identity(ProjectEnvironmentTypeIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleDevCenter:
///     type: azure:devcenter:DevCenter
///     name: example
///     properties:
///       name: example-dc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       identity:
///         type: SystemAssigned
///   exampleEnvironmentType:
///     type: azure:devcenter:EnvironmentType
///     name: example
///     properties:
///       name: example-et
///       devCenterId: ${exampleDevCenter.id}
///   exampleProject:
///     type: azure:devcenter:Project
///     name: example
///     properties:
///       name: example-dcp
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       devCenterId: ${exampleDevCenter.id}
///     options:
///       dependsOn:
///         - ${exampleEnvironmentType}
///   exampleProjectEnvironmentType:
///     type: azure:devcenter:ProjectEnvironmentType
///     name: example
///     properties:
///       name: example-et
///       location: ${example.location}
///       devCenterProjectId: ${exampleProject.id}
///       deploymentTargetId: /subscriptions/${current.subscriptionId}
///       identity:
///         type: SystemAssigned
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DevCenter` - 2025-02-01
///
/// ## Import
///
/// An existing Dev Center Project Environment Type can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:devcenter/projectEnvironmentType:ProjectEnvironmentType example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DevCenter/projects/project1/environmentTypes/et1
/// ```
class ProjectEnvironmentType extends pulumi.CustomResource {
  /// A list of roles to assign to the environment creator.
  late final pulumi.Output<List<String>?> creatorRoleAssignmentRoles;

  /// The ID of the subscription that the Environment Type will be mapped to. The environment's resources will be deployed into this subscription.
  late final pulumi.Output<String> deploymentTargetId;

  /// The ID of the associated Dev Center Project. Changing this forces a new resource to be created.
  late final pulumi.Output<String> devCenterProjectId;

  /// An `identity` block as defined below.
  late final pulumi.Output<ProjectEnvironmentTypeIdentity> identity;

  /// The Azure Region where the Dev Center Project Environment Type should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Specifies the name of this Dev Center Project Environment Type. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// A mapping of tags which should be assigned to the Dev Center Project Environment Type.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A `user_role_assignment` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> userRoleAssignments;

  /// Creates a new [ProjectEnvironmentType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectEnvironmentType]. {@macro pulumi_devcenter_project_environment_type_project_environment_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectEnvironmentType(
    String name, {
    ProjectEnvironmentTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:devcenter/projectEnvironmentType:ProjectEnvironmentType',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    creatorRoleAssignmentRoles = registerOutput<List<String>?>(
      'creatorRoleAssignmentRoles',
    );
    deploymentTargetId = registerOutput<String>('deploymentTargetId');
    devCenterProjectId = registerOutput<String>('devCenterProjectId');
    identity = registerOutput<ProjectEnvironmentTypeIdentity>('identity');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
    userRoleAssignments = registerOutput<List<Map<String, dynamic>>?>(
      'userRoleAssignments',
    );
  }

  /// Gets an existing [ProjectEnvironmentType] resource's state with the given [name] and [id].
  static ProjectEnvironmentType get(
    String name,
    pulumi.Input<String> id, {
    ProjectEnvironmentTypeState? state,
  }) {
    return ProjectEnvironmentType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProjectEnvironmentType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:devcenter/projectEnvironmentType:ProjectEnvironmentType',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    creatorRoleAssignmentRoles = registerOutput<List<String>?>(
      'creatorRoleAssignmentRoles',
    );
    deploymentTargetId = registerOutput<String>('deploymentTargetId');
    devCenterProjectId = registerOutput<String>('devCenterProjectId');
    identity = registerOutput<ProjectEnvironmentTypeIdentity>('identity');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
    userRoleAssignments = registerOutput<List<Map<String, dynamic>>?>(
      'userRoleAssignments',
    );
  }
}
