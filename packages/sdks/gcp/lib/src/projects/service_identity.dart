import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_identity_args.dart';
import 'service_identity_state.dart';

/// Generate service identity for a service.
///
/// &gt; **Note:** Once created, this resource cannot be updated or destroyed. These
/// actions are a no-op.
///
/// &gt; **Note:** This resource can be used to retrieve the emails of the [Google-managed service accounts](https://cloud.google.com/iam/docs/service-agents)
/// of the APIs that Google has configured with a Service Identity. You can run `gcloud beta services identity create --service SERVICE_NAME.googleapis.com` to
/// verify if an API supports this.
///
/// To get more information about Service Identity, see:
///
/// * [API documentation](https://cloud.google.com/service-usage/docs/reference/rest/v1beta1/services/generateServiceIdentity)
///
/// ## Example Usage
///
/// ### Service Identity Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const hcSa = new gcp.projects.ServiceIdentity("hc_sa", {
///     project: project.then(project => project.projectId),
///     service: "healthcare.googleapis.com",
/// });
/// const hcSaBqJobuser = new gcp.projects.IAMMember("hc_sa_bq_jobuser", {
///     project: project.then(project => project.projectId),
///     role: "roles/bigquery.jobUser",
///     member: hcSa.member,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// hc_sa = gcp.projects.ServiceIdentity("hc_sa",
///     project=project.project_id,
///     service="healthcare.googleapis.com")
/// hc_sa_bq_jobuser = gcp.projects.IAMMember("hc_sa_bq_jobuser",
///     project=project.project_id,
///     role="roles/bigquery.jobUser",
///     member=hc_sa.member)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var hcSa = new Gcp.Projects.ServiceIdentity("hc_sa", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Service = "healthcare.googleapis.com",
///     });
///
///     var hcSaBqJobuser = new Gcp.Projects.IAMMember("hc_sa_bq_jobuser", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Role = "roles/bigquery.jobUser",
///         Member = hcSa.Member,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		hcSa, err := projects.NewServiceIdentity(ctx, "hc_sa", &projects.ServiceIdentityArgs{
/// 			Project: pulumi.String(project.ProjectId),
/// 			Service: pulumi.String("healthcare.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMMember(ctx, "hc_sa_bq_jobuser", &projects.IAMMemberArgs{
/// 			Project: pulumi.String(project.ProjectId),
/// 			Role:    pulumi.String("roles/bigquery.jobUser"),
/// 			Member:  hcSa.Member,
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.projects.ServiceIdentity;
/// import com.pulumi.gcp.projects.ServiceIdentityArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var hcSa = new ServiceIdentity("hcSa", ServiceIdentityArgs.builder()
///             .project(project.projectId())
///             .service("healthcare.googleapis.com")
///             .build());
///
///         var hcSaBqJobuser = new IAMMember("hcSaBqJobuser", IAMMemberArgs.builder()
///             .project(project.projectId())
///             .role("roles/bigquery.jobUser")
///             .member(hcSa.member())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   hcSa:
///     type: gcp:projects:ServiceIdentity
///     name: hc_sa
///     properties:
///       project: ${project.projectId}
///       service: healthcare.googleapis.com
///   hcSaBqJobuser:
///     type: gcp:projects:IAMMember
///     name: hc_sa_bq_jobuser
///     properties:
///       project: ${project.projectId}
///       role: roles/bigquery.jobUser
///       member: ${hcSa.member}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// This resource does not support import.
class ServiceIdentity extends pulumi.CustomResource {
  /// The email address of the Google managed service account.
  late final pulumi.Output<String> email;

  /// The Identity of the Google managed service account in the form 'serviceAccount:{email}'. This value is often used to refer to the service account in order to grant IAM permissions.
  late final pulumi.Output<String> member;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The service to generate identity for.
  ///
  /// - - -
  late final pulumi.Output<String> service;

  /// Creates a new [ServiceIdentity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceIdentity]. {@macro pulumi_projects_service_identity_service_identity_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceIdentity(
    String name, {
    ServiceIdentityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:projects/serviceIdentity:ServiceIdentity',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    email = registerOutput<String>('email');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    service = registerOutput<String>('service');
  }

  /// Gets an existing [ServiceIdentity] resource's state with the given [name] and [id].
  static ServiceIdentity get(
    String name,
    pulumi.Input<String> id, {
    ServiceIdentityState? state,
  }) {
    return ServiceIdentity._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceIdentity._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:projects/serviceIdentity:ServiceIdentity',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    email = registerOutput<String>('email');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    service = registerOutput<String>('service');
  }
}
