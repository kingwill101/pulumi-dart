import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_tag_binding_args.dart';
import 'location_tag_binding_state.dart';

/// A LocationTagBinding represents a connection between a TagValue and a non-global target such as a Cloud Run Service or Compute Instance. Once a LocationTagBinding is created, the TagValue is applied to all the descendants of the cloud resource.
///
/// To get more information about LocationTagBinding, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest/v3/tagBindings)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing)
///
/// ## Example Usage
///
/// ### Cloud Run Service
///
/// To bind a tag to a Cloud Run service:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "project_id",
///     name: "project_id",
///     orgId: "123456789",
/// });
/// const key = new gcp.tags.TagKey("key", {
///     parent: "organizations/123456789",
///     shortName: "keyname",
///     description: "For keyname resources.",
/// });
/// const value = new gcp.tags.TagValue("value", {
///     parent: key.id,
///     shortName: "valuename",
///     description: "For valuename resources.",
/// });
/// const binding = new gcp.tags.LocationTagBinding("binding", {
///     parent: `//run.googleapis.com/projects/${projectGoogleProject.number}/locations/${_default.location}/services/${_default.name}`,
///     tagValue: value.id,
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.Project("project",
///     project_id="project_id",
///     name="project_id",
///     org_id="123456789")
/// key = gcp.tags.TagKey("key",
///     parent="organizations/123456789",
///     short_name="keyname",
///     description="For keyname resources.")
/// value = gcp.tags.TagValue("value",
///     parent=key.id,
///     short_name="valuename",
///     description="For valuename resources.")
/// binding = gcp.tags.LocationTagBinding("binding",
///     parent=f"//run.googleapis.com/projects/{project_google_project['number']}/locations/{default['location']}/services/{default['name']}",
///     tag_value=value.id,
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "project_id",
///         Name = "project_id",
///         OrgId = "123456789",
///     });
///
///     var key = new Gcp.Tags.TagKey("key", new()
///     {
///         Parent = "organizations/123456789",
///         ShortName = "keyname",
///         Description = "For keyname resources.",
///     });
///
///     var @value = new Gcp.Tags.TagValue("value", new()
///     {
///         Parent = key.Id,
///         ShortName = "valuename",
///         Description = "For valuename resources.",
///     });
///
///     var binding = new Gcp.Tags.LocationTagBinding("binding", new()
///     {
///         Parent = $"//run.googleapis.com/projects/{projectGoogleProject.Number}/locations/{@default.Location}/services/{@default.Name}",
///         TagValue = @value.Id,
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId: pulumi.String("project_id"),
/// 			Name:      pulumi.String("project_id"),
/// 			OrgId:     pulumi.String("123456789"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		key, err := tags.NewTagKey(ctx, "key", &tags.TagKeyArgs{
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			ShortName:   pulumi.String("keyname"),
/// 			Description: pulumi.String("For keyname resources."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		value, err := tags.NewTagValue(ctx, "value", &tags.TagValueArgs{
/// 			Parent:      key.ID(),
/// 			ShortName:   pulumi.String("valuename"),
/// 			Description: pulumi.String("For valuename resources."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = tags.NewLocationTagBinding(ctx, "binding", &tags.LocationTagBindingArgs{
/// 			Parent:   pulumi.Sprintf("//run.googleapis.com/projects/%v/locations/%v/services/%v", projectGoogleProject.Number, _default.Location, _default.Name),
/// 			TagValue: value.ID(),
/// 			Location: pulumi.String("us-central1"),
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
/// import com.pulumi.gcp.tags.LocationTagBinding;
/// import com.pulumi.gcp.tags.LocationTagBindingArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("project_id")
///             .name("project_id")
///             .orgId("123456789")
///             .build());
///
///         var key = new TagKey("key", TagKeyArgs.builder()
///             .parent("organizations/123456789")
///             .shortName("keyname")
///             .description("For keyname resources.")
///             .build());
///
///         var value = new TagValue("value", TagValueArgs.builder()
///             .parent(key.id())
///             .shortName("valuename")
///             .description("For valuename resources.")
///             .build());
///
///         var binding = new LocationTagBinding("binding", LocationTagBindingArgs.builder()
///             .parent(String.format("//run.googleapis.com/projects/%s/locations/%s/services/%s", projectGoogleProject.number(),default_.location(),default_.name()))
///             .tagValue(value.id())
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: project_id
///       name: project_id
///       orgId: '123456789'
///   key:
///     type: gcp:tags:TagKey
///     properties:
///       parent: organizations/123456789
///       shortName: keyname
///       description: For keyname resources.
///   value:
///     type: gcp:tags:TagValue
///     properties:
///       parent: ${key.id}
///       shortName: valuename
///       description: For valuename resources.
///   binding:
///     type: gcp:tags:LocationTagBinding
///     properties:
///       parent: //run.googleapis.com/projects/${projectGoogleProject.number}/locations/${default.location}/services/${default.name}
///       tagValue: ${value.id}
///       location: us-central1
/// ```
///
///
/// ### Compute Instance
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "project_id",
///     name: "project_id",
///     orgId: "123456789",
/// });
/// const key = new gcp.tags.TagKey("key", {
///     parent: "organizations/123456789",
///     shortName: "keyname",
///     description: "For keyname resources.",
/// });
/// const value = new gcp.tags.TagValue("value", {
///     parent: key.id,
///     shortName: "valuename",
///     description: "For valuename resources.",
/// });
/// const binding = new gcp.tags.LocationTagBinding("binding", {
///     parent: pulumi.interpolate`//compute.googleapis.com/projects/${project.number}/zones/us-central1-a/instances/${instance.instanceId}`,
///     tagValue: value.id,
///     location: "us-central1-a",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.Project("project",
///     project_id="project_id",
///     name="project_id",
///     org_id="123456789")
/// key = gcp.tags.TagKey("key",
///     parent="organizations/123456789",
///     short_name="keyname",
///     description="For keyname resources.")
/// value = gcp.tags.TagValue("value",
///     parent=key.id,
///     short_name="valuename",
///     description="For valuename resources.")
/// binding = gcp.tags.LocationTagBinding("binding",
///     parent=project.number.apply(lambda number: f"//compute.googleapis.com/projects/{number}/zones/us-central1-a/instances/{instance['instanceId']}"),
///     tag_value=value.id,
///     location="us-central1-a")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "project_id",
///         Name = "project_id",
///         OrgId = "123456789",
///     });
///
///     var key = new Gcp.Tags.TagKey("key", new()
///     {
///         Parent = "organizations/123456789",
///         ShortName = "keyname",
///         Description = "For keyname resources.",
///     });
///
///     var @value = new Gcp.Tags.TagValue("value", new()
///     {
///         Parent = key.Id,
///         ShortName = "valuename",
///         Description = "For valuename resources.",
///     });
///
///     var binding = new Gcp.Tags.LocationTagBinding("binding", new()
///     {
///         Parent = project.Number.Apply(number => $"//compute.googleapis.com/projects/{number}/zones/us-central1-a/instances/{instance.InstanceId}"),
///         TagValue = @value.Id,
///         Location = "us-central1-a",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId: pulumi.String("project_id"),
/// 			Name:      pulumi.String("project_id"),
/// 			OrgId:     pulumi.String("123456789"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		key, err := tags.NewTagKey(ctx, "key", &tags.TagKeyArgs{
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			ShortName:   pulumi.String("keyname"),
/// 			Description: pulumi.String("For keyname resources."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		value, err := tags.NewTagValue(ctx, "value", &tags.TagValueArgs{
/// 			Parent:      key.ID(),
/// 			ShortName:   pulumi.String("valuename"),
/// 			Description: pulumi.String("For valuename resources."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = tags.NewLocationTagBinding(ctx, "binding", &tags.LocationTagBindingArgs{
/// 			Parent: project.Number.ApplyT(func(number string) (string, error) {
/// 				return fmt.Sprintf("//compute.googleapis.com/projects/%v/zones/us-central1-a/instances/%v", number, instance.InstanceId), nil
/// 			}).(pulumi.StringOutput),
/// 			TagValue: value.ID(),
/// 			Location: pulumi.String("us-central1-a"),
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
/// import com.pulumi.gcp.tags.LocationTagBinding;
/// import com.pulumi.gcp.tags.LocationTagBindingArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("project_id")
///             .name("project_id")
///             .orgId("123456789")
///             .build());
///
///         var key = new TagKey("key", TagKeyArgs.builder()
///             .parent("organizations/123456789")
///             .shortName("keyname")
///             .description("For keyname resources.")
///             .build());
///
///         var value = new TagValue("value", TagValueArgs.builder()
///             .parent(key.id())
///             .shortName("valuename")
///             .description("For valuename resources.")
///             .build());
///
///         var binding = new LocationTagBinding("binding", LocationTagBindingArgs.builder()
///             .parent(project.number().applyValue(_number -> String.format("//compute.googleapis.com/projects/%s/zones/us-central1-a/instances/%s", _number,instance.instanceId())))
///             .tagValue(value.id())
///             .location("us-central1-a")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: project_id
///       name: project_id
///       orgId: '123456789'
///   key:
///     type: gcp:tags:TagKey
///     properties:
///       parent: organizations/123456789
///       shortName: keyname
///       description: For keyname resources.
///   value:
///     type: gcp:tags:TagValue
///     properties:
///       parent: ${key.id}
///       shortName: valuename
///       description: For valuename resources.
///   binding:
///     type: gcp:tags:LocationTagBinding
///     properties:
///       parent: //compute.googleapis.com/projects/${project.number}/zones/us-central1-a/instances/${instance.instanceId}
///       tagValue: ${value.id}
///       location: us-central1-a
/// ```
///
///
/// ### Compute Instance With Dynamic Tag Value
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "project_id",
///     name: "project_id",
///     orgId: "123456789",
/// });
/// const key = new gcp.tags.TagKey("key", {
///     parent: "organizations/123456789",
///     shortName: "keyname",
///     description: "For keyname resources.",
///     allowedValuesRegex: "^[a-z]+$",
/// });
/// const binding = new gcp.tags.LocationTagBinding("binding", {
///     parent: pulumi.interpolate`//compute.googleapis.com/projects/${project.number}/zones/us-central1-a/instances/${instance.instanceId}`,
///     tagValue: pulumi.interpolate`${key.namespacedName}/test-value`,
///     location: "us-central1-a",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.Project("project",
///     project_id="project_id",
///     name="project_id",
///     org_id="123456789")
/// key = gcp.tags.TagKey("key",
///     parent="organizations/123456789",
///     short_name="keyname",
///     description="For keyname resources.",
///     allowed_values_regex="^[a-z]+$")
/// binding = gcp.tags.LocationTagBinding("binding",
///     parent=project.number.apply(lambda number: f"//compute.googleapis.com/projects/{number}/zones/us-central1-a/instances/{instance['instanceId']}"),
///     tag_value=key.namespaced_name.apply(lambda namespaced_name: f"{namespaced_name}/test-value"),
///     location="us-central1-a")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "project_id",
///         Name = "project_id",
///         OrgId = "123456789",
///     });
///
///     var key = new Gcp.Tags.TagKey("key", new()
///     {
///         Parent = "organizations/123456789",
///         ShortName = "keyname",
///         Description = "For keyname resources.",
///         AllowedValuesRegex = "^[a-z]+$",
///     });
///
///     var binding = new Gcp.Tags.LocationTagBinding("binding", new()
///     {
///         Parent = project.Number.Apply(number => $"//compute.googleapis.com/projects/{number}/zones/us-central1-a/instances/{instance.InstanceId}"),
///         TagValue = key.NamespacedName.Apply(namespacedName => $"{namespacedName}/test-value"),
///         Location = "us-central1-a",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId: pulumi.String("project_id"),
/// 			Name:      pulumi.String("project_id"),
/// 			OrgId:     pulumi.String("123456789"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		key, err := tags.NewTagKey(ctx, "key", &tags.TagKeyArgs{
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			ShortName:          pulumi.String("keyname"),
/// 			Description:        pulumi.String("For keyname resources."),
/// 			AllowedValuesRegex: pulumi.String("^[a-z]+$"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = tags.NewLocationTagBinding(ctx, "binding", &tags.LocationTagBindingArgs{
/// 			Parent: project.Number.ApplyT(func(number string) (string, error) {
/// 				return fmt.Sprintf("//compute.googleapis.com/projects/%v/zones/us-central1-a/instances/%v", number, instance.InstanceId), nil
/// 			}).(pulumi.StringOutput),
/// 			TagValue: key.NamespacedName.ApplyT(func(namespacedName string) (string, error) {
/// 				return fmt.Sprintf("%v/test-value", namespacedName), nil
/// 			}).(pulumi.StringOutput),
/// 			Location: pulumi.String("us-central1-a"),
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.LocationTagBinding;
/// import com.pulumi.gcp.tags.LocationTagBindingArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("project_id")
///             .name("project_id")
///             .orgId("123456789")
///             .build());
///
///         var key = new TagKey("key", TagKeyArgs.builder()
///             .parent("organizations/123456789")
///             .shortName("keyname")
///             .description("For keyname resources.")
///             .allowedValuesRegex("^[a-z]+$")
///             .build());
///
///         var binding = new LocationTagBinding("binding", LocationTagBindingArgs.builder()
///             .parent(project.number().applyValue(_number -> String.format("//compute.googleapis.com/projects/%s/zones/us-central1-a/instances/%s", _number,instance.instanceId())))
///             .tagValue(key.namespacedName().applyValue(_namespacedName -> String.format("%s/test-value", _namespacedName)))
///             .location("us-central1-a")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: project_id
///       name: project_id
///       orgId: '123456789'
///   key:
///     type: gcp:tags:TagKey
///     properties:
///       parent: organizations/123456789
///       shortName: keyname
///       description: For keyname resources.
///       allowedValuesRegex: ^[a-z]+$
///   binding:
///     type: gcp:tags:LocationTagBinding
///     properties:
///       parent: //compute.googleapis.com/projects/${project.number}/zones/us-central1-a/instances/${instance.instanceId}
///       tagValue: ${key.namespacedName}/test-value
///       location: us-central1-a
/// ```
///
///
/// ## Import
///
/// LocationTagBinding can be imported using any of these accepted formats:
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, TagBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:tags/locationTagBinding:LocationTagBinding default {{location}}/{{name}}
/// ```
class LocationTagBinding extends pulumi.CustomResource {
  /// Location of the target resource.
  ///
  /// - - -
  late final pulumi.Output<String?> location;
  /// The generated id for the TagBinding. This is a string of the form `tagBindings/{full-resource-name}/{tag-value-name}` or `tagBindings/{full-resource-name}/{tag-key-name}`
  late final pulumi.Output<String> name;
  /// The full resource name of the resource the TagValue is bound to. E.g. //cloudresourcemanager.googleapis.com/projects/123
  late final pulumi.Output<String> parent;
  /// The TagValue of the TagBinding. Must be either in id format `tagValues/{tag-value-id}`, or namespaced format `{parent-id}/{tag-key-short-name}/{tag-value-short-name}`.
  late final pulumi.Output<String> tagValue;

  /// Creates a new [LocationTagBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocationTagBinding]. {@macro pulumi_tags_location_tag_binding_location_tag_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocationTagBinding(
    String name, {
    LocationTagBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:tags/locationTagBinding:LocationTagBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.tagValue = registerOutput<String>('tagValue');
  }

  /// Gets an existing [LocationTagBinding] resource's state with the given [name] and [id].
  static LocationTagBinding get(
    String name,
    pulumi.Input<String> id, {
    LocationTagBindingState? state,
  }) {
    return LocationTagBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LocationTagBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:tags/locationTagBinding:LocationTagBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.tagValue = registerOutput<String>('tagValue');
  }
}
