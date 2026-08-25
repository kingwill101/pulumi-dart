import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_workloads_config_map_args.dart';
import 'user_workloads_config_map_state.dart';

/// User workloads ConfigMap used by Airflow tasks that run with Kubernetes Executor or KubernetesPodOperator.
/// Intended for Composer 3 Environments.
///
///
/// To get more information about UserWorkloadsConfigMap, see:
///
/// * [API documentation](https://cloud.google.com/composer/docs/reference/rest/v1/projects.locations.environments.userWorkloadsConfigMaps)
///
/// ## Example Usage
///
/// ### Composer User Workloads Config Map Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const test = new gcp.serviceaccount.Account("test", {
///     accountId: "test-sa",
///     displayName: "Test Service Account for Composer Environment",
/// });
/// const composer_worker = new gcp.projects.IAMMember("composer-worker", {
///     project: project.then(project => project.projectId),
///     role: "roles/composer.worker",
///     member: pulumi.interpolate`serviceAccount:${test.email}`,
/// });
/// const environment = new gcp.composer.Environment("environment", {
///     name: "test-environment",
///     region: "us-central1",
///     config: {
///         softwareConfig: {
///             imageVersion: "composer-3-airflow-2",
///         },
///         nodeConfig: {
///             serviceAccount: test.name,
///         },
///     },
/// }, {
///     dependsOn: [composer_worker],
/// });
/// const configMap = new gcp.composer.UserWorkloadsConfigMap("config_map", {
///     name: "test-config-map",
///     region: "us-central1",
///     environment: environment.name,
///     data: {
///         api_host: "apihost:443",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// test = gcp.serviceaccount.Account("test",
///     account_id="test-sa",
///     display_name="Test Service Account for Composer Environment")
/// composer_worker = gcp.projects.IAMMember("composer-worker",
///     project=project.project_id,
///     role="roles/composer.worker",
///     member=test.email.apply(lambda email: f"serviceAccount:{email}"))
/// environment = gcp.composer.Environment("environment",
///     name="test-environment",
///     region="us-central1",
///     config={
///         "software_config": {
///             "image_version": "composer-3-airflow-2",
///         },
///         "node_config": {
///             "service_account": test.name,
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[composer_worker]))
/// config_map = gcp.composer.UserWorkloadsConfigMap("config_map",
///     name="test-config-map",
///     region="us-central1",
///     environment=environment.name,
///     data={
///         "api_host": "apihost:443",
///     })
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
///     var test = new Gcp.ServiceAccount.Account("test", new()
///     {
///         AccountId = "test-sa",
///         DisplayName = "Test Service Account for Composer Environment",
///     });
///
///     var composer_worker = new Gcp.Projects.IAMMember("composer-worker", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Role = "roles/composer.worker",
///         Member = test.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var environment = new Gcp.Composer.Environment("environment", new()
///     {
///         Name = "test-environment",
///         Region = "us-central1",
///         Config = new Gcp.Composer.Inputs.EnvironmentConfigArgs
///         {
///             SoftwareConfig = new Gcp.Composer.Inputs.EnvironmentConfigSoftwareConfigArgs
///             {
///                 ImageVersion = "composer-3-airflow-2",
///             },
///             NodeConfig = new Gcp.Composer.Inputs.EnvironmentConfigNodeConfigArgs
///             {
///                 ServiceAccount = test.Name,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             composer_worker,
///         },
///     });
///
///     var configMap = new Gcp.Composer.UserWorkloadsConfigMap("config_map", new()
///     {
///         Name = "test-config-map",
///         Region = "us-central1",
///         Environment = environment.Name,
///         Data =
///         {
///             { "api_host", "apihost:443" },
///         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/composer"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test, err := serviceaccount.NewAccount(ctx, "test", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("test-sa"),
/// 			DisplayName: pulumi.String("Test Service Account for Composer Environment"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		composer_worker, err := projects.NewIAMMember(ctx, "composer-worker", &projects.IAMMemberArgs{
/// 			Project: pulumi.String(project.ProjectId),
/// 			Role:    pulumi.String("roles/composer.worker"),
/// 			Member: test.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		environment, err := composer.NewEnvironment(ctx, "environment", &composer.EnvironmentArgs{
/// 			Name:   pulumi.String("test-environment"),
/// 			Region: pulumi.String("us-central1"),
/// 			Config: &composer.EnvironmentConfigArgs{
/// 				SoftwareConfig: &composer.EnvironmentConfigSoftwareConfigArgs{
/// 					ImageVersion: pulumi.String("composer-3-airflow-2"),
/// 				},
/// 				NodeConfig: &composer.EnvironmentConfigNodeConfigArgs{
/// 					ServiceAccount: test.Name,
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			composer_worker,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = composer.NewUserWorkloadsConfigMap(ctx, "config_map", &composer.UserWorkloadsConfigMapArgs{
/// 			Name:        pulumi.String("test-config-map"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Environment: environment.Name,
/// 			Data: pulumi.StringMap{
/// 				"api_host": pulumi.String("apihost:443"),
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_serviceaccount_account" "test" {
///   account_id   = "test-sa"
///   display_name = "Test Service Account for Composer Environment"
/// }
/// resource "gcp_projects_iammember" "composer-worker" {
///   project = data.gcp_organizations_getproject.project.project_id
///   role    = "roles/composer.worker"
///   member  ="serviceAccount:${gcp_serviceaccount_account.test.email}"
/// }
/// resource "gcp_composer_environment" "environment" {
///   depends_on = [gcp_projects_iammember.composer-worker]
///   name       = "test-environment"
///   region     = "us-central1"
///   config = {
///     software_config = {
///       image_version = "composer-3-airflow-2"
///     }
///     node_config = {
///       service_account = gcp_serviceaccount_account.test.name
///     }
///   }
/// }
/// resource "gcp_composer_userworkloadsconfigmap" "config_map" {
///   name        = "test-config-map"
///   region      = "us-central1"
///   environment = gcp_composer_environment.environment.name
///   data = {
///     "api_host" = "apihost:443"
///   }
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.composer.Environment;
/// import com.pulumi.gcp.composer.EnvironmentArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigSoftwareConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigNodeConfigArgs;
/// import com.pulumi.gcp.composer.UserWorkloadsConfigMap;
/// import com.pulumi.gcp.composer.UserWorkloadsConfigMapArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var test = new Account("test", AccountArgs.builder()
///             .accountId("test-sa")
///             .displayName("Test Service Account for Composer Environment")
///             .build());
///
///         var composer_worker = new IAMMember("composer-worker", IAMMemberArgs.builder()
///             .project(project.projectId())
///             .role("roles/composer.worker")
///             .member(test.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var environment = new Environment("environment", EnvironmentArgs.builder()
///             .name("test-environment")
///             .region("us-central1")
///             .config(EnvironmentConfigArgs.builder()
///                 .softwareConfig(EnvironmentConfigSoftwareConfigArgs.builder()
///                     .imageVersion("composer-3-airflow-2")
///                     .build())
///                 .nodeConfig(EnvironmentConfigNodeConfigArgs.builder()
///                     .serviceAccount(test.name())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(composer_worker)
///                 .build());
///
///         var configMap = new UserWorkloadsConfigMap("configMap", UserWorkloadsConfigMapArgs.builder()
///             .name("test-config-map")
///             .region("us-central1")
///             .environment(environment.name())
///             .data(Map.of("api_host", "apihost:443"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: test-sa
///       displayName: Test Service Account for Composer Environment
///   composer-worker:
///     type: gcp:projects:IAMMember
///     properties:
///       project: ${project.projectId}
///       role: roles/composer.worker
///       member: serviceAccount:${test.email}
///   environment:
///     type: gcp:composer:Environment
///     properties:
///       name: test-environment
///       region: us-central1
///       config:
///         softwareConfig:
///           imageVersion: composer-3-airflow-2
///         nodeConfig:
///           serviceAccount: ${test.name}
///     options:
///       dependsOn:
///         - ${["composer-worker"]}
///   configMap:
///     type: gcp:composer:UserWorkloadsConfigMap
///     name: config_map
///     properties:
///       name: test-config-map
///       region: us-central1
///       environment: ${environment.name}
///       data:
///         api_host: apihost:443
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
/// UserWorkloadsConfigMap can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/environments/{{environment}}/userWorkloadsConfigMaps/{{name}}`
/// * `{{project}}/{{region}}/{{environment}}/{{name}}`
/// * `{{region}}/{{environment}}/{{name}}`
/// * `{{environment}}/{{name}}`
///
///
/// When using the `pulumi import` command, UserWorkloadsConfigMap can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:composer/userWorkloadsConfigMap:UserWorkloadsConfigMap default projects/{{project}}/locations/{{region}}/environments/{{environment}}/userWorkloadsConfigMaps/{{name}}
/// $ pulumi import gcp:composer/userWorkloadsConfigMap:UserWorkloadsConfigMap default {{project}}/{{region}}/{{environment}}/{{name}}
/// $ pulumi import gcp:composer/userWorkloadsConfigMap:UserWorkloadsConfigMap default {{region}}/{{environment}}/{{name}}
/// $ pulumi import gcp:composer/userWorkloadsConfigMap:UserWorkloadsConfigMap default {{environment}}/{{name}}
/// ```
class UserWorkloadsConfigMap extends pulumi.CustomResource {
  /// The "data" field of Kubernetes ConfigMap, organized in key-value pairs.
  /// For details see: https://kubernetes.io/docs/concepts/configuration/configmap/
  late final pulumi.Output<Map<String, String>?> data;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Environment where the Kubernetes ConfigMap will be stored and used.
  late final pulumi.Output<String> environment;
  /// Name of the Kubernetes ConfigMap.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The location or Compute Engine region for the environment.
  late final pulumi.Output<String> region;

  /// Creates a new [UserWorkloadsConfigMap].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserWorkloadsConfigMap]. {@macro pulumi_composer_user_workloads_config_map_user_workloads_config_map_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserWorkloadsConfigMap(
    String name, {
    UserWorkloadsConfigMapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:composer/userWorkloadsConfigMap:UserWorkloadsConfigMap',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    data = registerOutput<Map<String, String>?>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    environment = registerOutput<String>('environment');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [UserWorkloadsConfigMap] resource's state with the given [name] and [id].
  static UserWorkloadsConfigMap get(
    String name,
    pulumi.Input<String> id, {
    UserWorkloadsConfigMapState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return UserWorkloadsConfigMap._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  UserWorkloadsConfigMap._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:composer/userWorkloadsConfigMap:UserWorkloadsConfigMap',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    data = registerOutput<Map<String, String>?>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    environment = registerOutput<String>('environment');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [UserWorkloadsConfigMap] resource.
  UserWorkloadsConfigMap.reference(String urn)
    : super(
        'gcp:composer/userWorkloadsConfigMap:UserWorkloadsConfigMap',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    data = registerOutput<Map<String, String>?>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    environment = registerOutput<String>('environment');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }
}
