import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_project_attachment_args.dart';
import 'service_project_attachment_state.dart';

/// Represents a Service project attachment to the Host Project.
///
///
///
/// ## Example Usage
///
/// ### Service Project Attachment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const serviceProject = new gcp.organizations.Project("service_project", {
///     projectId: "project-1",
///     name: "Service Project",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const wait120s = new time.Sleep("wait_120s", {createDuration: "120s"}, {
///     dependsOn: [serviceProject],
/// });
/// const example = new gcp.apphub.ServiceProjectAttachment("example", {serviceProjectAttachmentId: serviceProject.projectId}, {
///     dependsOn: [wait120s],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// service_project = gcp.organizations.Project("service_project",
///     project_id="project-1",
///     name="Service Project",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// wait120s = time.Sleep("wait_120s", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[service_project]))
/// example = gcp.apphub.ServiceProjectAttachment("example", service_project_attachment_id=service_project.project_id,
/// opts = pulumi.ResourceOptions(depends_on=[wait120s]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceProject = new Gcp.Organizations.Project("service_project", new()
///     {
///         ProjectId = "project-1",
///         Name = "Service Project",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var wait120s = new Time.Sleep("wait_120s", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             serviceProject,
///         },
///     });
///
///     var example = new Gcp.Apphub.ServiceProjectAttachment("example", new()
///     {
///         ServiceProjectAttachmentId = serviceProject.ProjectId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait120s,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apphub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		serviceProject, err := organizations.NewProject(ctx, "service_project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("project-1"),
/// 			Name:           pulumi.String("Service Project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait120s, err := time.NewSleep(ctx, "wait_120s", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			serviceProject,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apphub.NewServiceProjectAttachment(ctx, "example", &apphub.ServiceProjectAttachmentArgs{
/// 			ServiceProjectAttachmentId: serviceProject.ProjectId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait120s,
/// 		}))
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
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.apphub.ServiceProjectAttachment;
/// import com.pulumi.gcp.apphub.ServiceProjectAttachmentArgs;
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
///         var serviceProject = new Project("serviceProject", ProjectArgs.builder()
///             .projectId("project-1")
///             .name("Service Project")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var wait120s = new Sleep("wait120s", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(serviceProject)
///                 .build());
///
///         var example = new ServiceProjectAttachment("example", ServiceProjectAttachmentArgs.builder()
///             .serviceProjectAttachmentId(serviceProject.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait120s)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:apphub:ServiceProjectAttachment
///     properties:
///       serviceProjectAttachmentId: ${serviceProject.projectId}
///     options:
///       dependsOn:
///         - ${wait120s}
///   serviceProject:
///     type: gcp:organizations:Project
///     name: service_project
///     properties:
///       projectId: project-1
///       name: Service Project
///       orgId: '123456789'
///       deletionPolicy: DELETE
///   wait120s:
///     type: time:Sleep
///     name: wait_120s
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${serviceProject}
/// ```
///
/// ### Service Project Attachment Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const serviceProjectFull = new gcp.organizations.Project("service_project_full", {
///     projectId: "project-1",
///     name: "Service Project Full",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const wait120s = new time.Sleep("wait_120s", {createDuration: "120s"}, {
///     dependsOn: [serviceProjectFull],
/// });
/// const example2 = new gcp.apphub.ServiceProjectAttachment("example2", {
///     serviceProjectAttachmentId: serviceProjectFull.projectId,
///     serviceProject: serviceProjectFull.projectId,
/// }, {
///     dependsOn: [wait120s],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// service_project_full = gcp.organizations.Project("service_project_full",
///     project_id="project-1",
///     name="Service Project Full",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// wait120s = time.Sleep("wait_120s", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[service_project_full]))
/// example2 = gcp.apphub.ServiceProjectAttachment("example2",
///     service_project_attachment_id=service_project_full.project_id,
///     service_project=service_project_full.project_id,
///     opts = pulumi.ResourceOptions(depends_on=[wait120s]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceProjectFull = new Gcp.Organizations.Project("service_project_full", new()
///     {
///         ProjectId = "project-1",
///         Name = "Service Project Full",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var wait120s = new Time.Sleep("wait_120s", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             serviceProjectFull,
///         },
///     });
///
///     var example2 = new Gcp.Apphub.ServiceProjectAttachment("example2", new()
///     {
///         ServiceProjectAttachmentId = serviceProjectFull.ProjectId,
///         ServiceProject = serviceProjectFull.ProjectId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait120s,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apphub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		serviceProjectFull, err := organizations.NewProject(ctx, "service_project_full", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("project-1"),
/// 			Name:           pulumi.String("Service Project Full"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait120s, err := time.NewSleep(ctx, "wait_120s", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			serviceProjectFull,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apphub.NewServiceProjectAttachment(ctx, "example2", &apphub.ServiceProjectAttachmentArgs{
/// 			ServiceProjectAttachmentId: serviceProjectFull.ProjectId,
/// 			ServiceProject:             serviceProjectFull.ProjectId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait120s,
/// 		}))
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
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.apphub.ServiceProjectAttachment;
/// import com.pulumi.gcp.apphub.ServiceProjectAttachmentArgs;
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
///         var serviceProjectFull = new Project("serviceProjectFull", ProjectArgs.builder()
///             .projectId("project-1")
///             .name("Service Project Full")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var wait120s = new Sleep("wait120s", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(serviceProjectFull)
///                 .build());
///
///         var example2 = new ServiceProjectAttachment("example2", ServiceProjectAttachmentArgs.builder()
///             .serviceProjectAttachmentId(serviceProjectFull.projectId())
///             .serviceProject(serviceProjectFull.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait120s)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example2:
///     type: gcp:apphub:ServiceProjectAttachment
///     properties:
///       serviceProjectAttachmentId: ${serviceProjectFull.projectId}
///       serviceProject: ${serviceProjectFull.projectId}
///     options:
///       dependsOn:
///         - ${wait120s}
///   serviceProjectFull:
///     type: gcp:organizations:Project
///     name: service_project_full
///     properties:
///       projectId: project-1
///       name: Service Project Full
///       orgId: '123456789'
///       deletionPolicy: DELETE
///   wait120s:
///     type: time:Sleep
///     name: wait_120s
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${serviceProjectFull}
/// ```
///
///
/// ## Import
///
/// ServiceProjectAttachment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/serviceProjectAttachments/{{service_project_attachment_id}}`
///
/// * `{{project}}/{{service_project_attachment_id}}`
///
/// * `{{service_project_attachment_id}}`
///
/// When using the `pulumi import` command, ServiceProjectAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apphub/serviceProjectAttachment:ServiceProjectAttachment default projects/{{project}}/locations/global/serviceProjectAttachments/{{service_project_attachment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apphub/serviceProjectAttachment:ServiceProjectAttachment default {{project}}/{{service_project_attachment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apphub/serviceProjectAttachment:ServiceProjectAttachment default {{service_project_attachment_id}}
/// ```
class ServiceProjectAttachment extends pulumi.CustomResource {
  /// Output only. Create time.
  late final pulumi.Output<String> createTime;
  /// "Identifier. The resource name of a ServiceProjectAttachment. Format:\"projects/{host-project-id}/locations/global/serviceProjectAttachments/{service-project-id}.\""
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// "Immutable. Service project name in the format: \"projects/abc\"
  /// or \"projects/123\". As input, project name with either project id or number
  /// are accepted. As output, this field will contain project number."
  late final pulumi.Output<String?> serviceProject;
  /// Required. The service project attachment identifier must contain the project_id of the service project specified in the service_project_attachment.service_project field. Hint: "projects/{project_id}"
  late final pulumi.Output<String> serviceProjectAttachmentId;
  /// ServiceProjectAttachment state.
  late final pulumi.Output<String> state;
  /// Output only. A globally unique identifier (in UUID4 format) for the `ServiceProjectAttachment`.
  late final pulumi.Output<String> uid;

  /// Creates a new [ServiceProjectAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceProjectAttachment]. {@macro pulumi_apphub_service_project_attachment_service_project_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceProjectAttachment(
    String name, {
    ServiceProjectAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apphub/serviceProjectAttachment:ServiceProjectAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    serviceProject = registerOutput<String?>('serviceProject');
    serviceProjectAttachmentId = registerOutput<String>('serviceProjectAttachmentId');
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
  }

  /// Gets an existing [ServiceProjectAttachment] resource's state with the given [name] and [id].
  static ServiceProjectAttachment get(
    String name,
    pulumi.Input<String> id, {
    ServiceProjectAttachmentState? state,
  }) {
    return ServiceProjectAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceProjectAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apphub/serviceProjectAttachment:ServiceProjectAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    serviceProject = registerOutput<String?>('serviceProject');
    serviceProjectAttachmentId = registerOutput<String>('serviceProjectAttachmentId');
    this.state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
  }
}
