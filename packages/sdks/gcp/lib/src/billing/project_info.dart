import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_info_args.dart';
import 'project_info_state.dart';

/// Billing information for a project.
///
///
/// To get more information about ProjectInfo, see:
///
/// * [API documentation](https://cloud.google.com/billing/docs/reference/rest/v1/projects)
/// * How-to Guides
/// * [Enable, disable, or change billing for a project](https://cloud.google.com/billing/docs/how-to/modify-project)
///
/// ## Example Usage
///
/// ### Billing Project Info Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "tf-test_22811",
///     name: "tf-test_91042",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const _default = new gcp.billing.ProjectInfo("default", {
///     project: project.projectId,
///     billingAccount: "000000-0000000-0000000-000000",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.Project("project",
///     project_id="tf-test_22811",
///     name="tf-test_91042",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// default = gcp.billing.ProjectInfo("default",
///     project=project.project_id,
///     billing_account="000000-0000000-0000000-000000")
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
///         ProjectId = "tf-test_22811",
///         Name = "tf-test_91042",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var @default = new Gcp.Billing.ProjectInfo("default", new()
///     {
///         Project = project.ProjectId,
///         BillingAccount = "000000-0000000-0000000-000000",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("tf-test_22811"),
/// 			Name:           pulumi.String("tf-test_91042"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = billing.NewProjectInfo(ctx, "default", &billing.ProjectInfoArgs{
/// 			Project:        project.ProjectId,
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
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
/// resource "gcp_organizations_project" "project" {
///   project_id      = "tf-test_22811"
///   name            = "tf-test_91042"
///   org_id          = "123456789"
///   deletion_policy = "DELETE"
/// }
/// resource "gcp_billing_projectinfo" "default" {
///   project         = gcp_organizations_project.project.project_id
///   billing_account = "000000-0000000-0000000-000000"
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
/// import com.pulumi.gcp.billing.ProjectInfo;
/// import com.pulumi.gcp.billing.ProjectInfoArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("tf-test_22811")
///             .name("tf-test_91042")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var default_ = new ProjectInfo("default", ProjectInfoArgs.builder()
///             .project(project.projectId())
///             .billingAccount("000000-0000000-0000000-000000")
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
///       projectId: tf-test_22811
///       name: tf-test_91042
///       orgId: '123456789'
///       deletionPolicy: DELETE
///   default:
///     type: gcp:billing:ProjectInfo
///     properties:
///       project: ${project.projectId}
///       billingAccount: 000000-0000000-0000000-000000
/// ```
///
///
/// ## Import
///
/// ProjectInfo can be imported using any of these accepted formats:
///
/// * `projects/{{project}}`
/// * `{{project}}`
///
///
/// When using the `pulumi import` command, ProjectInfo can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:billing/projectInfo:ProjectInfo default projects/{{project}}
/// $ pulumi import gcp:billing/projectInfo:ProjectInfo default {{project}}
/// ```
class ProjectInfo extends pulumi.CustomResource {
  /// The ID of the billing account associated with the project, if
  /// any. Set to empty string to disable billing for the project.
  /// For example, `"012345-567890-ABCDEF"` or `""`.
  late final pulumi.Output<String> billingAccount;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [ProjectInfo].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectInfo]. {@macro pulumi_billing_project_info_project_info_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectInfo(
    String name, {
    ProjectInfoArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:billing/projectInfo:ProjectInfo',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    billingAccount = registerOutput<String>('billingAccount');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [ProjectInfo] resource's state with the given [name] and [id].
  static ProjectInfo get(
    String name,
    pulumi.Input<String> id, {
    ProjectInfoState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ProjectInfo._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ProjectInfo._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:billing/projectInfo:ProjectInfo',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    billingAccount = registerOutput<String>('billingAccount');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [ProjectInfo] resource.
  ProjectInfo.reference(String urn)
    : super(
        'gcp:billing/projectInfo:ProjectInfo',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    billingAccount = registerOutput<String>('billingAccount');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    project = registerOutput<String>('project');
  }
}
