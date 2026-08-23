import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_config_args.dart';
import 'insights_config_state.dart';
import 'insights_config_target_projects.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Developer Connect Insights Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "dci-tf-_26240",
///     name: "Service Project",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// // Grant Permissions
/// const apphubPermissions = new gcp.projects.IAMMember("apphub_permissions", {
///     project: project.projectId,
///     role: "roles/apphub.admin",
///     member: "serviceAccount:hashicorp-test-runner@ci-test-project-188019.iam.gserviceaccount.com",
/// });
/// const insightsAgent = new gcp.projects.IAMMember("insights_agent", {
///     project: project.projectId,
///     role: "roles/developerconnect.insightsAgent",
///     member: "serviceAccount:66214305248-compute@developer.gserviceaccount.com",
/// });
/// // Enable APIs
/// const apphubApiService = new gcp.projects.Service("apphub_api_service", {
///     project: project.projectId,
///     service: "apphub.googleapis.com",
///     disableDependentServices: true,
/// }, {
///     dependsOn: [project],
/// });
/// const containeranalysisApi = new gcp.projects.Service("containeranalysis_api", {
///     project: project.projectId,
///     service: "containeranalysis.googleapis.com",
///     disableDependentServices: true,
/// }, {
///     dependsOn: [project],
/// });
/// const containerscanningApi = new gcp.projects.Service("containerscanning_api", {
///     project: project.projectId,
///     service: "containerscanning.googleapis.com",
///     disableDependentServices: true,
/// }, {
///     dependsOn: [project],
/// });
/// const containerApi = new gcp.projects.Service("container_api", {
///     project: project.projectId,
///     service: "container.googleapis.com",
///     disableDependentServices: true,
/// }, {
///     dependsOn: [project],
/// });
/// const artifactregistryApi = new gcp.projects.Service("artifactregistry_api", {
///     project: project.projectId,
///     service: "artifactregistry.googleapis.com",
///     disableDependentServices: true,
/// }, {
///     dependsOn: [project],
/// });
/// const cloudbuildApi = new gcp.projects.Service("cloudbuild_api", {
///     project: project.projectId,
///     service: "cloudbuild.googleapis.com",
///     disableDependentServices: true,
/// }, {
///     dependsOn: [project],
/// });
/// const cloudassetApi = new gcp.projects.Service("cloudasset_api", {
///     project: project.projectId,
///     service: "cloudasset.googleapis.com",
///     disableDependentServices: true,
/// }, {
///     dependsOn: [project],
/// });
/// const computeApi = new gcp.projects.Service("compute_api", {
///     project: project.projectId,
///     service: "compute.googleapis.com",
///     disableDependentServices: true,
/// }, {
///     dependsOn: [project],
/// });
/// const devconnectApi = new gcp.projects.Service("devconnect_api", {
///     project: project.projectId,
///     service: "developerconnect.googleapis.com",
/// }, {
///     dependsOn: [project],
/// });
/// // Wait delay after enabling APIs and granting permissions
/// const waitForPropagation = new time.Sleep("wait_for_propagation", {createDuration: "120s"}, {
///     dependsOn: [
///         apphubPermissions,
///         insightsAgent,
///         apphubApiService,
///         containeranalysisApi,
///         containerscanningApi,
///         containerApi,
///         artifactregistryApi,
///         artifactregistryApi,
///         cloudbuildApi,
///         cloudassetApi,
///         computeApi,
///         devconnectApi,
///     ],
/// });
/// const myApphubApplication = new gcp.apphub.Application("my_apphub_application", {
///     location: "us-central1",
///     applicationId: "tf-test-example-application_35711",
///     scope: {
///         type: "REGIONAL",
///     },
///     project: project.projectId,
/// }, {
///     dependsOn: [waitForPropagation],
/// });
/// const insightsConfig = new gcp.developerconnect.InsightsConfig("insights_config", {
///     location: "us-central1",
///     insightsConfigId: "tf-test-ic-apphub-_85072",
///     project: project.projectId,
///     annotations: {},
///     labels: {},
///     appHubApplication: std.format({
///         input: "//apphub.googleapis.com/projects/%s/locations/%s/applications/%s",
///         args: [
///             project.number,
///             myApphubApplication.location,
///             myApphubApplication.applicationId,
///         ],
///     }).then(invoke => invoke.result),
///     artifactConfigs: [{
///         googleArtifactAnalysis: {
///             projectId: project.projectId,
///         },
///         googleArtifactRegistry: {
///             artifactRegistryPackage: "my-package",
///             projectId: project.projectId,
///         },
///         uri: "us-docker.pkg.dev/my-project/my-repo/my-image",
///     }],
/// }, {
///     dependsOn: [waitForPropagation],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
///     project_id="dci-tf-_26240",
///     name="Service Project",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// # Grant Permissions
/// apphub_permissions = gcp.projects.IAMMember("apphub_permissions",
///     project=project.project_id,
///     role="roles/apphub.admin",
///     member="serviceAccount:hashicorp-test-runner@ci-test-project-188019.iam.gserviceaccount.com")
/// insights_agent = gcp.projects.IAMMember("insights_agent",
///     project=project.project_id,
///     role="roles/developerconnect.insightsAgent",
///     member="serviceAccount:66214305248-compute@developer.gserviceaccount.com")
/// # Enable APIs
/// apphub_api_service = gcp.projects.Service("apphub_api_service",
///     project=project.project_id,
///     service="apphub.googleapis.com",
///     disable_dependent_services=True,
///     opts = pulumi.ResourceOptions(depends_on=[project]))
/// containeranalysis_api = gcp.projects.Service("containeranalysis_api",
///     project=project.project_id,
///     service="containeranalysis.googleapis.com",
///     disable_dependent_services=True,
///     opts = pulumi.ResourceOptions(depends_on=[project]))
/// containerscanning_api = gcp.projects.Service("containerscanning_api",
///     project=project.project_id,
///     service="containerscanning.googleapis.com",
///     disable_dependent_services=True,
///     opts = pulumi.ResourceOptions(depends_on=[project]))
/// container_api = gcp.projects.Service("container_api",
///     project=project.project_id,
///     service="container.googleapis.com",
///     disable_dependent_services=True,
///     opts = pulumi.ResourceOptions(depends_on=[project]))
/// artifactregistry_api = gcp.projects.Service("artifactregistry_api",
///     project=project.project_id,
///     service="artifactregistry.googleapis.com",
///     disable_dependent_services=True,
///     opts = pulumi.ResourceOptions(depends_on=[project]))
/// cloudbuild_api = gcp.projects.Service("cloudbuild_api",
///     project=project.project_id,
///     service="cloudbuild.googleapis.com",
///     disable_dependent_services=True,
///     opts = pulumi.ResourceOptions(depends_on=[project]))
/// cloudasset_api = gcp.projects.Service("cloudasset_api",
///     project=project.project_id,
///     service="cloudasset.googleapis.com",
///     disable_dependent_services=True,
///     opts = pulumi.ResourceOptions(depends_on=[project]))
/// compute_api = gcp.projects.Service("compute_api",
///     project=project.project_id,
///     service="compute.googleapis.com",
///     disable_dependent_services=True,
///     opts = pulumi.ResourceOptions(depends_on=[project]))
/// devconnect_api = gcp.projects.Service("devconnect_api",
///     project=project.project_id,
///     service="developerconnect.googleapis.com",
///     opts = pulumi.ResourceOptions(depends_on=[project]))
/// # Wait delay after enabling APIs and granting permissions
/// wait_for_propagation = time.Sleep("wait_for_propagation", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[
///         apphub_permissions,
///         insights_agent,
///         apphub_api_service,
///         containeranalysis_api,
///         containerscanning_api,
///         container_api,
///         artifactregistry_api,
///         artifactregistry_api,
///         cloudbuild_api,
///         cloudasset_api,
///         compute_api,
///         devconnect_api,
///     ]))
/// my_apphub_application = gcp.apphub.Application("my_apphub_application",
///     location="us-central1",
///     application_id="tf-test-example-application_35711",
///     scope={
///         "type": "REGIONAL",
///     },
///     project=project.project_id,
///     opts = pulumi.ResourceOptions(depends_on=[wait_for_propagation]))
/// insights_config = gcp.developerconnect.InsightsConfig("insights_config",
///     location="us-central1",
///     insights_config_id="tf-test-ic-apphub-_85072",
///     project=project.project_id,
///     annotations={},
///     labels={},
///     app_hub_application=std.format(input="//apphub.googleapis.com/projects/%s/locations/%s/applications/%s",
///         args=[
///             project.number,
///             my_apphub_application.location,
///             my_apphub_application.application_id,
///         ]).result,
///     artifact_configs=[{
///         "google_artifact_analysis": {
///             "project_id": project.project_id,
///         },
///         "google_artifact_registry": {
///             "artifact_registry_package": "my-package",
///             "project_id": project.project_id,
///         },
///         "uri": "us-docker.pkg.dev/my-project/my-repo/my-image",
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[wait_for_propagation]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "dci-tf-_26240",
///         Name = "Service Project",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     // Grant Permissions
///     var apphubPermissions = new Gcp.Projects.IAMMember("apphub_permissions", new()
///     {
///         Project = project.ProjectId,
///         Role = "roles/apphub.admin",
///         Member = "serviceAccount:hashicorp-test-runner@ci-test-project-188019.iam.gserviceaccount.com",
///     });
///
///     var insightsAgent = new Gcp.Projects.IAMMember("insights_agent", new()
///     {
///         Project = project.ProjectId,
///         Role = "roles/developerconnect.insightsAgent",
///         Member = "serviceAccount:66214305248-compute@developer.gserviceaccount.com",
///     });
///
///     // Enable APIs
///     var apphubApiService = new Gcp.Projects.Service("apphub_api_service", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "apphub.googleapis.com",
///         DisableDependentServices = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var containeranalysisApi = new Gcp.Projects.Service("containeranalysis_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "containeranalysis.googleapis.com",
///         DisableDependentServices = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var containerscanningApi = new Gcp.Projects.Service("containerscanning_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "containerscanning.googleapis.com",
///         DisableDependentServices = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var containerApi = new Gcp.Projects.Service("container_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "container.googleapis.com",
///         DisableDependentServices = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var artifactregistryApi = new Gcp.Projects.Service("artifactregistry_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "artifactregistry.googleapis.com",
///         DisableDependentServices = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var cloudbuildApi = new Gcp.Projects.Service("cloudbuild_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "cloudbuild.googleapis.com",
///         DisableDependentServices = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var cloudassetApi = new Gcp.Projects.Service("cloudasset_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "cloudasset.googleapis.com",
///         DisableDependentServices = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var computeApi = new Gcp.Projects.Service("compute_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "compute.googleapis.com",
///         DisableDependentServices = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var devconnectApi = new Gcp.Projects.Service("devconnect_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "developerconnect.googleapis.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     // Wait delay after enabling APIs and granting permissions
///     var waitForPropagation = new Time.Sleep("wait_for_propagation", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apphubPermissions,
///             insightsAgent,
///             apphubApiService,
///             containeranalysisApi,
///             containerscanningApi,
///             containerApi,
///             artifactregistryApi,
///             artifactregistryApi,
///             cloudbuildApi,
///             cloudassetApi,
///             computeApi,
///             devconnectApi,
///         },
///     });
///
///     var myApphubApplication = new Gcp.Apphub.Application("my_apphub_application", new()
///     {
///         Location = "us-central1",
///         ApplicationId = "tf-test-example-application_35711",
///         Scope = new Gcp.Apphub.Inputs.ApplicationScopeArgs
///         {
///             Type = "REGIONAL",
///         },
///         Project = project.ProjectId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitForPropagation,
///         },
///     });
///
///     var insightsConfig = new Gcp.DeveloperConnect.InsightsConfig("insights_config", new()
///     {
///         Location = "us-central1",
///         InsightsConfigId = "tf-test-ic-apphub-_85072",
///         Project = project.ProjectId,
///         Annotations = null,
///         Labels = null,
///         AppHubApplication = Std.Format.Invoke(new()
///         {
///             Input = "//apphub.googleapis.com/projects/%s/locations/%s/applications/%s",
///             Args = new[]
///             {
///                 project.Number,
///                 myApphubApplication.Location,
///                 myApphubApplication.ApplicationId,
///             },
///         }).Apply(invoke => invoke.Result),
///         ArtifactConfigs = new[]
///         {
///             new Gcp.DeveloperConnect.Inputs.InsightsConfigArtifactConfigArgs
///             {
///                 GoogleArtifactAnalysis = new Gcp.DeveloperConnect.Inputs.InsightsConfigArtifactConfigGoogleArtifactAnalysisArgs
///                 {
///                     ProjectId = project.ProjectId,
///                 },
///                 GoogleArtifactRegistry = new Gcp.DeveloperConnect.Inputs.InsightsConfigArtifactConfigGoogleArtifactRegistryArgs
///                 {
///                     ArtifactRegistryPackage = "my-package",
///                     ProjectId = project.ProjectId,
///                 },
///                 Uri = "us-docker.pkg.dev/my-project/my-repo/my-image",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitForPropagation,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("dci-tf-_26240"),
/// 			Name:           pulumi.String("Service Project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Grant Permissions
/// 		apphubPermissions, err := projects.NewIAMMember(ctx, "apphub_permissions", &projects.IAMMemberArgs{
/// 			Project: project.ProjectId,
/// 			Role:    pulumi.String("roles/apphub.admin"),
/// 			Member:  pulumi.String("serviceAccount:hashicorp-test-runner@ci-test-project-188019.iam.gserviceaccount.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		insightsAgent, err := projects.NewIAMMember(ctx, "insights_agent", &projects.IAMMemberArgs{
/// 			Project: project.ProjectId,
/// 			Role:    pulumi.String("roles/developerconnect.insightsAgent"),
/// 			Member:  pulumi.String("serviceAccount:66214305248-compute@developer.gserviceaccount.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Enable APIs
/// 		apphubApiService, err := projects.NewService(ctx, "apphub_api_service", &projects.ServiceArgs{
/// 			Project:                  project.ProjectId,
/// 			Service:                  pulumi.String("apphub.googleapis.com"),
/// 			DisableDependentServices: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		containeranalysisApi, err := projects.NewService(ctx, "containeranalysis_api", &projects.ServiceArgs{
/// 			Project:                  project.ProjectId,
/// 			Service:                  pulumi.String("containeranalysis.googleapis.com"),
/// 			DisableDependentServices: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		containerscanningApi, err := projects.NewService(ctx, "containerscanning_api", &projects.ServiceArgs{
/// 			Project:                  project.ProjectId,
/// 			Service:                  pulumi.String("containerscanning.googleapis.com"),
/// 			DisableDependentServices: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		containerApi, err := projects.NewService(ctx, "container_api", &projects.ServiceArgs{
/// 			Project:                  project.ProjectId,
/// 			Service:                  pulumi.String("container.googleapis.com"),
/// 			DisableDependentServices: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		artifactregistryApi, err := projects.NewService(ctx, "artifactregistry_api", &projects.ServiceArgs{
/// 			Project:                  project.ProjectId,
/// 			Service:                  pulumi.String("artifactregistry.googleapis.com"),
/// 			DisableDependentServices: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cloudbuildApi, err := projects.NewService(ctx, "cloudbuild_api", &projects.ServiceArgs{
/// 			Project:                  project.ProjectId,
/// 			Service:                  pulumi.String("cloudbuild.googleapis.com"),
/// 			DisableDependentServices: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cloudassetApi, err := projects.NewService(ctx, "cloudasset_api", &projects.ServiceArgs{
/// 			Project:                  project.ProjectId,
/// 			Service:                  pulumi.String("cloudasset.googleapis.com"),
/// 			DisableDependentServices: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		computeApi, err := projects.NewService(ctx, "compute_api", &projects.ServiceArgs{
/// 			Project:                  project.ProjectId,
/// 			Service:                  pulumi.String("compute.googleapis.com"),
/// 			DisableDependentServices: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		devconnectApi, err := projects.NewService(ctx, "devconnect_api", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("developerconnect.googleapis.com"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Wait delay after enabling APIs and granting permissions
/// 		waitForPropagation, err := time.NewSleep(ctx, "wait_for_propagation", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apphubPermissions,
/// 			insightsAgent,
/// 			apphubApiService,
/// 			containeranalysisApi,
/// 			containerscanningApi,
/// 			containerApi,
/// 			artifactregistryApi,
/// 			artifactregistryApi,
/// 			cloudbuildApi,
/// 			cloudassetApi,
/// 			computeApi,
/// 			devconnectApi,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myApphubApplication, err := apphub.NewApplication(ctx, "my_apphub_application", &apphub.ApplicationArgs{
/// 			Location:      pulumi.String("us-central1"),
/// 			ApplicationId: pulumi.String("tf-test-example-application_35711"),
/// 			Scope: &apphub.ApplicationScopeArgs{
/// 				Type: pulumi.String("REGIONAL"),
/// 			},
/// 			Project: project.ProjectId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitForPropagation,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "//apphub.googleapis.com/projects/%s/locations/%s/applications/%s",
/// 			Args: pulumi.StringArray{
/// 				project.Number,
/// 				myApphubApplication.Location,
/// 				myApphubApplication.ApplicationId,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = developerconnect.NewInsightsConfig(ctx, "insights_config", &developerconnect.InsightsConfigArgs{
/// 			Location:          pulumi.String("us-central1"),
/// 			InsightsConfigId:  pulumi.String("tf-test-ic-apphub-_85072"),
/// 			Project:           project.ProjectId,
/// 			Annotations:       pulumi.StringMap{},
/// 			Labels:            pulumi.StringMap{},
/// 			AppHubApplication: pulumi.String(invokeFormat.Result),
/// 			ArtifactConfigs: developerconnect.InsightsConfigArtifactConfigArray{
/// 				&developerconnect.InsightsConfigArtifactConfigArgs{
/// 					GoogleArtifactAnalysis: &developerconnect.InsightsConfigArtifactConfigGoogleArtifactAnalysisArgs{
/// 						ProjectId: project.ProjectId,
/// 					},
/// 					GoogleArtifactRegistry: &developerconnect.InsightsConfigArtifactConfigGoogleArtifactRegistryArgs{
/// 						ArtifactRegistryPackage: pulumi.String("my-package"),
/// 						ProjectId:               project.ProjectId,
/// 					},
/// 					Uri: pulumi.String("us-docker.pkg.dev/my-project/my-repo/my-image"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitForPropagation,
/// 		}))
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
///     std = {
///       source = "pulumi/std"
///     }
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// data "std_format" "invoke_0" {
///   input = "//apphub.googleapis.com/projects/%s/locations/%s/applications/%s"
///   args  = [gcp_organizations_project.project.number, gcp_apphub_application.my_apphub_application.location, gcp_apphub_application.my_apphub_application.application_id]
/// }
///
/// resource "gcp_organizations_project" "project" {
///   project_id      = "dci-tf-_26240"
///   name            = "Service Project"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// # Grant Permissions
/// resource "gcp_projects_iammember" "apphub_permissions" {
///   project = gcp_organizations_project.project.project_id
///   role    = "roles/apphub.admin"
///   member  = "serviceAccount:hashicorp-test-runner@ci-test-project-188019.iam.gserviceaccount.com"
/// }
/// resource "gcp_projects_iammember" "insights_agent" {
///   project = gcp_organizations_project.project.project_id
///   role    = "roles/developerconnect.insightsAgent"
///   member  = "serviceAccount:66214305248-compute@developer.gserviceaccount.com"
/// }
/// # Enable APIs
/// resource "gcp_projects_service" "apphub_api_service" {
///   depends_on                 = [gcp_organizations_project.project]
///   project                    = gcp_organizations_project.project.project_id
///   service                    = "apphub.googleapis.com"
///   disable_dependent_services = true
/// }
/// resource "gcp_projects_service" "containeranalysis_api" {
///   depends_on                 = [gcp_organizations_project.project]
///   project                    = gcp_organizations_project.project.project_id
///   service                    = "containeranalysis.googleapis.com"
///   disable_dependent_services = true
/// }
/// resource "gcp_projects_service" "containerscanning_api" {
///   depends_on                 = [gcp_organizations_project.project]
///   project                    = gcp_organizations_project.project.project_id
///   service                    = "containerscanning.googleapis.com"
///   disable_dependent_services = true
/// }
/// resource "gcp_projects_service" "container_api" {
///   depends_on                 = [gcp_organizations_project.project]
///   project                    = gcp_organizations_project.project.project_id
///   service                    = "container.googleapis.com"
///   disable_dependent_services = true
/// }
/// resource "gcp_projects_service" "artifactregistry_api" {
///   depends_on                 = [gcp_organizations_project.project]
///   project                    = gcp_organizations_project.project.project_id
///   service                    = "artifactregistry.googleapis.com"
///   disable_dependent_services = true
/// }
/// resource "gcp_projects_service" "cloudbuild_api" {
///   depends_on                 = [gcp_organizations_project.project]
///   project                    = gcp_organizations_project.project.project_id
///   service                    = "cloudbuild.googleapis.com"
///   disable_dependent_services = true
/// }
/// resource "gcp_projects_service" "cloudasset_api" {
///   depends_on                 = [gcp_organizations_project.project]
///   project                    = gcp_organizations_project.project.project_id
///   service                    = "cloudasset.googleapis.com"
///   disable_dependent_services = true
/// }
/// resource "gcp_projects_service" "compute_api" {
///   depends_on                 = [gcp_organizations_project.project]
///   project                    = gcp_organizations_project.project.project_id
///   service                    = "compute.googleapis.com"
///   disable_dependent_services = true
/// }
/// resource "gcp_projects_service" "devconnect_api" {
///   depends_on = [gcp_organizations_project.project]
///   project    = gcp_organizations_project.project.project_id
///   service    = "developerconnect.googleapis.com"
/// }
/// # Wait delay after enabling APIs and granting permissions
/// resource "time_sleep" "wait_for_propagation" {
///   depends_on      = [gcp_projects_iammember.apphub_permissions, gcp_projects_iammember.insights_agent, gcp_projects_service.apphub_api_service, gcp_projects_service.containeranalysis_api, gcp_projects_service.containerscanning_api, gcp_projects_service.container_api, gcp_projects_service.artifactregistry_api, gcp_projects_service.artifactregistry_api, gcp_projects_service.cloudbuild_api, gcp_projects_service.cloudasset_api, gcp_projects_service.compute_api, gcp_projects_service.devconnect_api]
///   create_duration = "120s"
/// }
/// resource "gcp_apphub_application" "my_apphub_application" {
///   depends_on     = [time_sleep.wait_for_propagation]
///   location       = "us-central1"
///   application_id = "tf-test-example-application_35711"
///   scope = {
///     type = "REGIONAL"
///   }
///   project = gcp_organizations_project.project.project_id
/// }
/// resource "gcp_developerconnect_insightsconfig" "insights_config" {
///   depends_on          = [time_sleep.wait_for_propagation]
///   location            = "us-central1"
///   insights_config_id  = "tf-test-ic-apphub-_85072"
///   project             = gcp_organizations_project.project.project_id
///   annotations         = {}
///   labels              = {}
///   app_hub_application = data.std_format.invoke_0.result
///   artifact_configs {
///     google_artifact_analysis = {
///       project_id = gcp_organizations_project.project.project_id
///     }
///     google_artifact_registry = {
///       artifact_registry_package = "my-package"
///       project_id                = gcp_organizations_project.project.project_id
///     }
///     uri = "us-docker.pkg.dev/my-project/my-repo/my-image"
///   }
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
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.apphub.Application;
/// import com.pulumi.gcp.apphub.ApplicationArgs;
/// import com.pulumi.gcp.apphub.inputs.ApplicationScopeArgs;
/// import com.pulumi.gcp.developerconnect.InsightsConfig;
/// import com.pulumi.gcp.developerconnect.InsightsConfigArgs;
/// import com.pulumi.gcp.developerconnect.inputs.InsightsConfigArtifactConfigArgs;
/// import com.pulumi.gcp.developerconnect.inputs.InsightsConfigArtifactConfigGoogleArtifactAnalysisArgs;
/// import com.pulumi.gcp.developerconnect.inputs.InsightsConfigArtifactConfigGoogleArtifactRegistryArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("dci-tf-_26240")
///             .name("Service Project")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         // Grant Permissions
///         var apphubPermissions = new IAMMember("apphubPermissions", IAMMemberArgs.builder()
///             .project(project.projectId())
///             .role("roles/apphub.admin")
///             .member("serviceAccount:hashicorp-test-runner@ci-test-project-188019.iam.gserviceaccount.com")
///             .build());
///
///         var insightsAgent = new IAMMember("insightsAgent", IAMMemberArgs.builder()
///             .project(project.projectId())
///             .role("roles/developerconnect.insightsAgent")
///             .member("serviceAccount:66214305248-compute@developer.gserviceaccount.com")
///             .build());
///
///         // Enable APIs
///         var apphubApiService = new Service("apphubApiService", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("apphub.googleapis.com")
///             .disableDependentServices(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var containeranalysisApi = new Service("containeranalysisApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("containeranalysis.googleapis.com")
///             .disableDependentServices(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var containerscanningApi = new Service("containerscanningApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("containerscanning.googleapis.com")
///             .disableDependentServices(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var containerApi = new Service("containerApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("container.googleapis.com")
///             .disableDependentServices(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var artifactregistryApi = new Service("artifactregistryApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("artifactregistry.googleapis.com")
///             .disableDependentServices(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var cloudbuildApi = new Service("cloudbuildApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("cloudbuild.googleapis.com")
///             .disableDependentServices(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var cloudassetApi = new Service("cloudassetApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("cloudasset.googleapis.com")
///             .disableDependentServices(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var computeApi = new Service("computeApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("compute.googleapis.com")
///             .disableDependentServices(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var devconnectApi = new Service("devconnectApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("developerconnect.googleapis.com")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         // Wait delay after enabling APIs and granting permissions
///         var waitForPropagation = new Sleep("waitForPropagation", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     apphubPermissions,
///                     insightsAgent,
///                     apphubApiService,
///                     containeranalysisApi,
///                     containerscanningApi,
///                     containerApi,
///                     artifactregistryApi,
///                     artifactregistryApi,
///                     cloudbuildApi,
///                     cloudassetApi,
///                     computeApi,
///                     devconnectApi)
///                 .build());
///
///         var myApphubApplication = new Application("myApphubApplication", ApplicationArgs.builder()
///             .location("us-central1")
///             .applicationId("tf-test-example-application_35711")
///             .scope(ApplicationScopeArgs.builder()
///                 .type("REGIONAL")
///                 .build())
///             .project(project.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitForPropagation)
///                 .build());
///
///         var insightsConfig = new InsightsConfig("insightsConfig", InsightsConfigArgs.builder()
///             .location("us-central1")
///             .insightsConfigId("tf-test-ic-apphub-_85072")
///             .project(project.projectId())
///             .annotations(Map.ofEntries(
///             ))
///             .labels(Map.ofEntries(
///             ))
///             .appHubApplication(StdFunctions.format(FormatArgs.builder()
///                 .input("//apphub.googleapis.com/projects/%s/locations/%s/applications/%s")
///                 .args(
///                     project.number(),
///                     myApphubApplication.location(),
///                     myApphubApplication.applicationId())
///                 .build()).result())
///             .artifactConfigs(InsightsConfigArtifactConfigArgs.builder()
///                 .googleArtifactAnalysis(InsightsConfigArtifactConfigGoogleArtifactAnalysisArgs.builder()
///                     .projectId(project.projectId())
///                     .build())
///                 .googleArtifactRegistry(InsightsConfigArtifactConfigGoogleArtifactRegistryArgs.builder()
///                     .artifactRegistryPackage("my-package")
///                     .projectId(project.projectId())
///                     .build())
///                 .uri("us-docker.pkg.dev/my-project/my-repo/my-image")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitForPropagation)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: dci-tf-_26240
///       name: Service Project
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   # Grant Permissions
///   apphubPermissions:
///     type: gcp:projects:IAMMember
///     name: apphub_permissions
///     properties:
///       project: ${project.projectId}
///       role: roles/apphub.admin
///       member: serviceAccount:hashicorp-test-runner@ci-test-project-188019.iam.gserviceaccount.com
///   insightsAgent:
///     type: gcp:projects:IAMMember
///     name: insights_agent
///     properties:
///       project: ${project.projectId}
///       role: roles/developerconnect.insightsAgent
///       member: serviceAccount:66214305248-compute@developer.gserviceaccount.com
///   # Enable APIs
///   apphubApiService:
///     type: gcp:projects:Service
///     name: apphub_api_service
///     properties:
///       project: ${project.projectId}
///       service: apphub.googleapis.com
///       disableDependentServices: true
///     options:
///       dependsOn:
///         - ${project}
///   containeranalysisApi:
///     type: gcp:projects:Service
///     name: containeranalysis_api
///     properties:
///       project: ${project.projectId}
///       service: containeranalysis.googleapis.com
///       disableDependentServices: true
///     options:
///       dependsOn:
///         - ${project}
///   containerscanningApi:
///     type: gcp:projects:Service
///     name: containerscanning_api
///     properties:
///       project: ${project.projectId}
///       service: containerscanning.googleapis.com
///       disableDependentServices: true
///     options:
///       dependsOn:
///         - ${project}
///   containerApi:
///     type: gcp:projects:Service
///     name: container_api
///     properties:
///       project: ${project.projectId}
///       service: container.googleapis.com
///       disableDependentServices: true
///     options:
///       dependsOn:
///         - ${project}
///   artifactregistryApi:
///     type: gcp:projects:Service
///     name: artifactregistry_api
///     properties:
///       project: ${project.projectId}
///       service: artifactregistry.googleapis.com
///       disableDependentServices: true
///     options:
///       dependsOn:
///         - ${project}
///   cloudbuildApi:
///     type: gcp:projects:Service
///     name: cloudbuild_api
///     properties:
///       project: ${project.projectId}
///       service: cloudbuild.googleapis.com
///       disableDependentServices: true
///     options:
///       dependsOn:
///         - ${project}
///   cloudassetApi:
///     type: gcp:projects:Service
///     name: cloudasset_api
///     properties:
///       project: ${project.projectId}
///       service: cloudasset.googleapis.com
///       disableDependentServices: true
///     options:
///       dependsOn:
///         - ${project}
///   computeApi:
///     type: gcp:projects:Service
///     name: compute_api
///     properties:
///       project: ${project.projectId}
///       service: compute.googleapis.com
///       disableDependentServices: true
///     options:
///       dependsOn:
///         - ${project}
///   devconnectApi:
///     type: gcp:projects:Service
///     name: devconnect_api
///     properties:
///       project: ${project.projectId}
///       service: developerconnect.googleapis.com
///     options:
///       dependsOn:
///         - ${project}
///   # Wait delay after enabling APIs and granting permissions
///   waitForPropagation:
///     type: time:Sleep
///     name: wait_for_propagation
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${apphubPermissions}
///         - ${insightsAgent}
///         - ${apphubApiService}
///         - ${containeranalysisApi}
///         - ${containerscanningApi}
///         - ${containerApi}
///         - ${artifactregistryApi}
///         - ${artifactregistryApi}
///         - ${cloudbuildApi}
///         - ${cloudassetApi}
///         - ${computeApi}
///         - ${devconnectApi}
///   myApphubApplication:
///     type: gcp:apphub:Application
///     name: my_apphub_application
///     properties:
///       location: us-central1
///       applicationId: tf-test-example-application_35711
///       scope:
///         type: REGIONAL
///       project: ${project.projectId}
///     options:
///       dependsOn:
///         - ${waitForPropagation}
///   insightsConfig:
///     type: gcp:developerconnect:InsightsConfig
///     name: insights_config
///     properties:
///       location: us-central1
///       insightsConfigId: tf-test-ic-apphub-_85072
///       project: ${project.projectId}
///       annotations: {}
///       labels: {}
///       appHubApplication:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: //apphub.googleapis.com/projects/%s/locations/%s/applications/%s
///             args:
///               - ${project.number}
///               - ${myApphubApplication.location}
///               - ${myApphubApplication.applicationId}
///           return: result
///       artifactConfigs:
///         - googleArtifactAnalysis:
///             projectId: ${project.projectId}
///           googleArtifactRegistry:
///             artifactRegistryPackage: my-package
///             projectId: ${project.projectId}
///           uri: us-docker.pkg.dev/my-project/my-repo/my-image
///     options:
///       dependsOn:
///         - ${waitForPropagation}
/// ```
///
/// ### Developer Connect Insights Config Projects
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "dci-tf-_35762",
///     name: "Service Project",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// // Grant Permissions
/// const apphubPermissions = new gcp.projects.IAMMember("apphub_permissions", {
///     project: project.projectId,
///     role: "roles/apphub.admin",
///     member: "serviceAccount:hashicorp-test-runner@ci-test-project-188019.iam.gserviceaccount.com",
/// });
/// const insightsAgent = new gcp.projects.IAMMember("insights_agent", {
///     project: project.projectId,
///     role: "roles/developerconnect.insightsAgent",
///     member: "serviceAccount:66214305248-compute@developer.gserviceaccount.com",
/// });
/// // Enable APIs
/// const apphubApiService = new gcp.projects.Service("apphub_api_service", {
///     project: project.projectId,
///     service: "apphub.googleapis.com",
///     disableDependentServices: true,
/// }, {
///     dependsOn: [project],
/// });
/// const containeranalysisApi = new gcp.projects.Service("containeranalysis_api", {
///     project: project.projectId,
///     service: "containeranalysis.googleapis.com",
///     disableDependentServices: true,
/// }, {
///     dependsOn: [project],
/// });
/// const containerscanningApi = new gcp.projects.Service("containerscanning_api", {
///     project: project.projectId,
///     service: "containerscanning.googleapis.com",
///     disableDependentServices: true,
/// }, {
///     dependsOn: [project],
/// });
/// const containerApi = new gcp.projects.Service("container_api", {
///     project: project.projectId,
///     service: "container.googleapis.com",
///     disableDependentServices: true,
/// }, {
///     dependsOn: [project],
/// });
/// const artifactregistryApi = new gcp.projects.Service("artifactregistry_api", {
///     project: project.projectId,
///     service: "artifactregistry.googleapis.com",
///     disableDependentServices: true,
/// }, {
///     dependsOn: [project],
/// });
/// const cloudbuildApi = new gcp.projects.Service("cloudbuild_api", {
///     project: project.projectId,
///     service: "cloudbuild.googleapis.com",
///     disableDependentServices: true,
/// }, {
///     dependsOn: [project],
/// });
/// const cloudassetApi = new gcp.projects.Service("cloudasset_api", {
///     project: project.projectId,
///     service: "cloudasset.googleapis.com",
///     disableDependentServices: true,
/// }, {
///     dependsOn: [project],
/// });
/// const computeApi = new gcp.projects.Service("compute_api", {
///     project: project.projectId,
///     service: "compute.googleapis.com",
///     disableDependentServices: true,
/// }, {
///     dependsOn: [project],
/// });
/// const devconnectApi = new gcp.projects.Service("devconnect_api", {
///     project: project.projectId,
///     service: "developerconnect.googleapis.com",
/// }, {
///     dependsOn: [project],
/// });
/// // Wait delay after enabling APIs and granting permissions
/// const waitForPropagation = new time.Sleep("wait_for_propagation", {createDuration: "120s"}, {
///     dependsOn: [
///         apphubPermissions,
///         insightsAgent,
///         apphubApiService,
///         containeranalysisApi,
///         containerscanningApi,
///         containerApi,
///         artifactregistryApi,
///         artifactregistryApi,
///         cloudbuildApi,
///         cloudassetApi,
///         computeApi,
///         devconnectApi,
///     ],
/// });
/// const insightsConfigProjects = new gcp.developerconnect.InsightsConfig("insights_config_projects", {
///     location: "us-central1",
///     insightsConfigId: "tf-test-ic-projects-_24469",
///     project: project.projectId,
///     annotations: {},
///     labels: {},
///     targetProjects: {
///         projectIds: [pulumi.interpolate`projects/${project.projectId}`],
///     },
///     artifactConfigs: [{
///         googleArtifactAnalysis: {
///             projectId: project.projectId,
///         },
///         googleArtifactRegistry: {
///             artifactRegistryPackage: "my-package",
///             projectId: project.projectId,
///         },
///         uri: "us-docker.pkg.dev/my-project/my-repo/my-image",
///     }],
/// }, {
///     dependsOn: [waitForPropagation],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
///     project_id="dci-tf-_35762",
///     name="Service Project",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// # Grant Permissions
/// apphub_permissions = gcp.projects.IAMMember("apphub_permissions",
///     project=project.project_id,
///     role="roles/apphub.admin",
///     member="serviceAccount:hashicorp-test-runner@ci-test-project-188019.iam.gserviceaccount.com")
/// insights_agent = gcp.projects.IAMMember("insights_agent",
///     project=project.project_id,
///     role="roles/developerconnect.insightsAgent",
///     member="serviceAccount:66214305248-compute@developer.gserviceaccount.com")
/// # Enable APIs
/// apphub_api_service = gcp.projects.Service("apphub_api_service",
///     project=project.project_id,
///     service="apphub.googleapis.com",
///     disable_dependent_services=True,
///     opts = pulumi.ResourceOptions(depends_on=[project]))
/// containeranalysis_api = gcp.projects.Service("containeranalysis_api",
///     project=project.project_id,
///     service="containeranalysis.googleapis.com",
///     disable_dependent_services=True,
///     opts = pulumi.ResourceOptions(depends_on=[project]))
/// containerscanning_api = gcp.projects.Service("containerscanning_api",
///     project=project.project_id,
///     service="containerscanning.googleapis.com",
///     disable_dependent_services=True,
///     opts = pulumi.ResourceOptions(depends_on=[project]))
/// container_api = gcp.projects.Service("container_api",
///     project=project.project_id,
///     service="container.googleapis.com",
///     disable_dependent_services=True,
///     opts = pulumi.ResourceOptions(depends_on=[project]))
/// artifactregistry_api = gcp.projects.Service("artifactregistry_api",
///     project=project.project_id,
///     service="artifactregistry.googleapis.com",
///     disable_dependent_services=True,
///     opts = pulumi.ResourceOptions(depends_on=[project]))
/// cloudbuild_api = gcp.projects.Service("cloudbuild_api",
///     project=project.project_id,
///     service="cloudbuild.googleapis.com",
///     disable_dependent_services=True,
///     opts = pulumi.ResourceOptions(depends_on=[project]))
/// cloudasset_api = gcp.projects.Service("cloudasset_api",
///     project=project.project_id,
///     service="cloudasset.googleapis.com",
///     disable_dependent_services=True,
///     opts = pulumi.ResourceOptions(depends_on=[project]))
/// compute_api = gcp.projects.Service("compute_api",
///     project=project.project_id,
///     service="compute.googleapis.com",
///     disable_dependent_services=True,
///     opts = pulumi.ResourceOptions(depends_on=[project]))
/// devconnect_api = gcp.projects.Service("devconnect_api",
///     project=project.project_id,
///     service="developerconnect.googleapis.com",
///     opts = pulumi.ResourceOptions(depends_on=[project]))
/// # Wait delay after enabling APIs and granting permissions
/// wait_for_propagation = time.Sleep("wait_for_propagation", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[
///         apphub_permissions,
///         insights_agent,
///         apphub_api_service,
///         containeranalysis_api,
///         containerscanning_api,
///         container_api,
///         artifactregistry_api,
///         artifactregistry_api,
///         cloudbuild_api,
///         cloudasset_api,
///         compute_api,
///         devconnect_api,
///     ]))
/// insights_config_projects = gcp.developerconnect.InsightsConfig("insights_config_projects",
///     location="us-central1",
///     insights_config_id="tf-test-ic-projects-_24469",
///     project=project.project_id,
///     annotations={},
///     labels={},
///     target_projects={
///         "project_ids": [project.project_id.apply(lambda project_id: f"projects/{project_id}")],
///     },
///     artifact_configs=[{
///         "google_artifact_analysis": {
///             "project_id": project.project_id,
///         },
///         "google_artifact_registry": {
///             "artifact_registry_package": "my-package",
///             "project_id": project.project_id,
///         },
///         "uri": "us-docker.pkg.dev/my-project/my-repo/my-image",
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[wait_for_propagation]))
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
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "dci-tf-_35762",
///         Name = "Service Project",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     // Grant Permissions
///     var apphubPermissions = new Gcp.Projects.IAMMember("apphub_permissions", new()
///     {
///         Project = project.ProjectId,
///         Role = "roles/apphub.admin",
///         Member = "serviceAccount:hashicorp-test-runner@ci-test-project-188019.iam.gserviceaccount.com",
///     });
///
///     var insightsAgent = new Gcp.Projects.IAMMember("insights_agent", new()
///     {
///         Project = project.ProjectId,
///         Role = "roles/developerconnect.insightsAgent",
///         Member = "serviceAccount:66214305248-compute@developer.gserviceaccount.com",
///     });
///
///     // Enable APIs
///     var apphubApiService = new Gcp.Projects.Service("apphub_api_service", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "apphub.googleapis.com",
///         DisableDependentServices = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var containeranalysisApi = new Gcp.Projects.Service("containeranalysis_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "containeranalysis.googleapis.com",
///         DisableDependentServices = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var containerscanningApi = new Gcp.Projects.Service("containerscanning_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "containerscanning.googleapis.com",
///         DisableDependentServices = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var containerApi = new Gcp.Projects.Service("container_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "container.googleapis.com",
///         DisableDependentServices = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var artifactregistryApi = new Gcp.Projects.Service("artifactregistry_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "artifactregistry.googleapis.com",
///         DisableDependentServices = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var cloudbuildApi = new Gcp.Projects.Service("cloudbuild_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "cloudbuild.googleapis.com",
///         DisableDependentServices = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var cloudassetApi = new Gcp.Projects.Service("cloudasset_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "cloudasset.googleapis.com",
///         DisableDependentServices = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var computeApi = new Gcp.Projects.Service("compute_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "compute.googleapis.com",
///         DisableDependentServices = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var devconnectApi = new Gcp.Projects.Service("devconnect_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "developerconnect.googleapis.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     // Wait delay after enabling APIs and granting permissions
///     var waitForPropagation = new Time.Sleep("wait_for_propagation", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apphubPermissions,
///             insightsAgent,
///             apphubApiService,
///             containeranalysisApi,
///             containerscanningApi,
///             containerApi,
///             artifactregistryApi,
///             artifactregistryApi,
///             cloudbuildApi,
///             cloudassetApi,
///             computeApi,
///             devconnectApi,
///         },
///     });
///
///     var insightsConfigProjects = new Gcp.DeveloperConnect.InsightsConfig("insights_config_projects", new()
///     {
///         Location = "us-central1",
///         InsightsConfigId = "tf-test-ic-projects-_24469",
///         Project = project.ProjectId,
///         Annotations = null,
///         Labels = null,
///         TargetProjects = new Gcp.DeveloperConnect.Inputs.InsightsConfigTargetProjectsArgs
///         {
///             ProjectIds = new[]
///             {
///                 project.ProjectId.Apply(projectId => $"projects/{projectId}"),
///             },
///         },
///         ArtifactConfigs = new[]
///         {
///             new Gcp.DeveloperConnect.Inputs.InsightsConfigArtifactConfigArgs
///             {
///                 GoogleArtifactAnalysis = new Gcp.DeveloperConnect.Inputs.InsightsConfigArtifactConfigGoogleArtifactAnalysisArgs
///                 {
///                     ProjectId = project.ProjectId,
///                 },
///                 GoogleArtifactRegistry = new Gcp.DeveloperConnect.Inputs.InsightsConfigArtifactConfigGoogleArtifactRegistryArgs
///                 {
///                     ArtifactRegistryPackage = "my-package",
///                     ProjectId = project.ProjectId,
///                 },
///                 Uri = "us-docker.pkg.dev/my-project/my-repo/my-image",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitForPropagation,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("dci-tf-_35762"),
/// 			Name:           pulumi.String("Service Project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Grant Permissions
/// 		apphubPermissions, err := projects.NewIAMMember(ctx, "apphub_permissions", &projects.IAMMemberArgs{
/// 			Project: project.ProjectId,
/// 			Role:    pulumi.String("roles/apphub.admin"),
/// 			Member:  pulumi.String("serviceAccount:hashicorp-test-runner@ci-test-project-188019.iam.gserviceaccount.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		insightsAgent, err := projects.NewIAMMember(ctx, "insights_agent", &projects.IAMMemberArgs{
/// 			Project: project.ProjectId,
/// 			Role:    pulumi.String("roles/developerconnect.insightsAgent"),
/// 			Member:  pulumi.String("serviceAccount:66214305248-compute@developer.gserviceaccount.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Enable APIs
/// 		apphubApiService, err := projects.NewService(ctx, "apphub_api_service", &projects.ServiceArgs{
/// 			Project:                  project.ProjectId,
/// 			Service:                  pulumi.String("apphub.googleapis.com"),
/// 			DisableDependentServices: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		containeranalysisApi, err := projects.NewService(ctx, "containeranalysis_api", &projects.ServiceArgs{
/// 			Project:                  project.ProjectId,
/// 			Service:                  pulumi.String("containeranalysis.googleapis.com"),
/// 			DisableDependentServices: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		containerscanningApi, err := projects.NewService(ctx, "containerscanning_api", &projects.ServiceArgs{
/// 			Project:                  project.ProjectId,
/// 			Service:                  pulumi.String("containerscanning.googleapis.com"),
/// 			DisableDependentServices: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		containerApi, err := projects.NewService(ctx, "container_api", &projects.ServiceArgs{
/// 			Project:                  project.ProjectId,
/// 			Service:                  pulumi.String("container.googleapis.com"),
/// 			DisableDependentServices: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		artifactregistryApi, err := projects.NewService(ctx, "artifactregistry_api", &projects.ServiceArgs{
/// 			Project:                  project.ProjectId,
/// 			Service:                  pulumi.String("artifactregistry.googleapis.com"),
/// 			DisableDependentServices: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cloudbuildApi, err := projects.NewService(ctx, "cloudbuild_api", &projects.ServiceArgs{
/// 			Project:                  project.ProjectId,
/// 			Service:                  pulumi.String("cloudbuild.googleapis.com"),
/// 			DisableDependentServices: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cloudassetApi, err := projects.NewService(ctx, "cloudasset_api", &projects.ServiceArgs{
/// 			Project:                  project.ProjectId,
/// 			Service:                  pulumi.String("cloudasset.googleapis.com"),
/// 			DisableDependentServices: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		computeApi, err := projects.NewService(ctx, "compute_api", &projects.ServiceArgs{
/// 			Project:                  project.ProjectId,
/// 			Service:                  pulumi.String("compute.googleapis.com"),
/// 			DisableDependentServices: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		devconnectApi, err := projects.NewService(ctx, "devconnect_api", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("developerconnect.googleapis.com"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Wait delay after enabling APIs and granting permissions
/// 		waitForPropagation, err := time.NewSleep(ctx, "wait_for_propagation", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apphubPermissions,
/// 			insightsAgent,
/// 			apphubApiService,
/// 			containeranalysisApi,
/// 			containerscanningApi,
/// 			containerApi,
/// 			artifactregistryApi,
/// 			artifactregistryApi,
/// 			cloudbuildApi,
/// 			cloudassetApi,
/// 			computeApi,
/// 			devconnectApi,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = developerconnect.NewInsightsConfig(ctx, "insights_config_projects", &developerconnect.InsightsConfigArgs{
/// 			Location:         pulumi.String("us-central1"),
/// 			InsightsConfigId: pulumi.String("tf-test-ic-projects-_24469"),
/// 			Project:          project.ProjectId,
/// 			Annotations:      pulumi.StringMap{},
/// 			Labels:           pulumi.StringMap{},
/// 			TargetProjects: &developerconnect.InsightsConfigTargetProjectsArgs{
/// 				ProjectIds: pulumi.StringArray{
/// 					project.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 						return fmt.Sprintf("projects/%v", projectId), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 			ArtifactConfigs: developerconnect.InsightsConfigArtifactConfigArray{
/// 				&developerconnect.InsightsConfigArtifactConfigArgs{
/// 					GoogleArtifactAnalysis: &developerconnect.InsightsConfigArtifactConfigGoogleArtifactAnalysisArgs{
/// 						ProjectId: project.ProjectId,
/// 					},
/// 					GoogleArtifactRegistry: &developerconnect.InsightsConfigArtifactConfigGoogleArtifactRegistryArgs{
/// 						ArtifactRegistryPackage: pulumi.String("my-package"),
/// 						ProjectId:               project.ProjectId,
/// 					},
/// 					Uri: pulumi.String("us-docker.pkg.dev/my-project/my-repo/my-image"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitForPropagation,
/// 		}))
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
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// resource "gcp_organizations_project" "project" {
///   project_id      = "dci-tf-_35762"
///   name            = "Service Project"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// # Grant Permissions
/// resource "gcp_projects_iammember" "apphub_permissions" {
///   project = gcp_organizations_project.project.project_id
///   role    = "roles/apphub.admin"
///   member  = "serviceAccount:hashicorp-test-runner@ci-test-project-188019.iam.gserviceaccount.com"
/// }
/// resource "gcp_projects_iammember" "insights_agent" {
///   project = gcp_organizations_project.project.project_id
///   role    = "roles/developerconnect.insightsAgent"
///   member  = "serviceAccount:66214305248-compute@developer.gserviceaccount.com"
/// }
/// # Enable APIs
/// resource "gcp_projects_service" "apphub_api_service" {
///   depends_on                 = [gcp_organizations_project.project]
///   project                    = gcp_organizations_project.project.project_id
///   service                    = "apphub.googleapis.com"
///   disable_dependent_services = true
/// }
/// resource "gcp_projects_service" "containeranalysis_api" {
///   depends_on                 = [gcp_organizations_project.project]
///   project                    = gcp_organizations_project.project.project_id
///   service                    = "containeranalysis.googleapis.com"
///   disable_dependent_services = true
/// }
/// resource "gcp_projects_service" "containerscanning_api" {
///   depends_on                 = [gcp_organizations_project.project]
///   project                    = gcp_organizations_project.project.project_id
///   service                    = "containerscanning.googleapis.com"
///   disable_dependent_services = true
/// }
/// resource "gcp_projects_service" "container_api" {
///   depends_on                 = [gcp_organizations_project.project]
///   project                    = gcp_organizations_project.project.project_id
///   service                    = "container.googleapis.com"
///   disable_dependent_services = true
/// }
/// resource "gcp_projects_service" "artifactregistry_api" {
///   depends_on                 = [gcp_organizations_project.project]
///   project                    = gcp_organizations_project.project.project_id
///   service                    = "artifactregistry.googleapis.com"
///   disable_dependent_services = true
/// }
/// resource "gcp_projects_service" "cloudbuild_api" {
///   depends_on                 = [gcp_organizations_project.project]
///   project                    = gcp_organizations_project.project.project_id
///   service                    = "cloudbuild.googleapis.com"
///   disable_dependent_services = true
/// }
/// resource "gcp_projects_service" "cloudasset_api" {
///   depends_on                 = [gcp_organizations_project.project]
///   project                    = gcp_organizations_project.project.project_id
///   service                    = "cloudasset.googleapis.com"
///   disable_dependent_services = true
/// }
/// resource "gcp_projects_service" "compute_api" {
///   depends_on                 = [gcp_organizations_project.project]
///   project                    = gcp_organizations_project.project.project_id
///   service                    = "compute.googleapis.com"
///   disable_dependent_services = true
/// }
/// resource "gcp_projects_service" "devconnect_api" {
///   depends_on = [gcp_organizations_project.project]
///   project    = gcp_organizations_project.project.project_id
///   service    = "developerconnect.googleapis.com"
/// }
/// # Wait delay after enabling APIs and granting permissions
/// resource "time_sleep" "wait_for_propagation" {
///   depends_on      = [gcp_projects_iammember.apphub_permissions, gcp_projects_iammember.insights_agent, gcp_projects_service.apphub_api_service, gcp_projects_service.containeranalysis_api, gcp_projects_service.containerscanning_api, gcp_projects_service.container_api, gcp_projects_service.artifactregistry_api, gcp_projects_service.artifactregistry_api, gcp_projects_service.cloudbuild_api, gcp_projects_service.cloudasset_api, gcp_projects_service.compute_api, gcp_projects_service.devconnect_api]
///   create_duration = "120s"
/// }
/// resource "gcp_developerconnect_insightsconfig" "insights_config_projects" {
///   depends_on         = [time_sleep.wait_for_propagation]
///   location           = "us-central1"
///   insights_config_id = "tf-test-ic-projects-_24469"
///   project            = gcp_organizations_project.project.project_id
///   annotations        = {}
///   labels             = {}
///   target_projects = {
///     project_ids = ["projects/${gcp_organizations_project.project.project_id}"]
///   }
///   artifact_configs {
///     google_artifact_analysis = {
///       project_id = gcp_organizations_project.project.project_id
///     }
///     google_artifact_registry = {
///       artifact_registry_package = "my-package"
///       project_id                = gcp_organizations_project.project.project_id
///     }
///     uri = "us-docker.pkg.dev/my-project/my-repo/my-image"
///   }
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
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.developerconnect.InsightsConfig;
/// import com.pulumi.gcp.developerconnect.InsightsConfigArgs;
/// import com.pulumi.gcp.developerconnect.inputs.InsightsConfigTargetProjectsArgs;
/// import com.pulumi.gcp.developerconnect.inputs.InsightsConfigArtifactConfigArgs;
/// import com.pulumi.gcp.developerconnect.inputs.InsightsConfigArtifactConfigGoogleArtifactAnalysisArgs;
/// import com.pulumi.gcp.developerconnect.inputs.InsightsConfigArtifactConfigGoogleArtifactRegistryArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("dci-tf-_35762")
///             .name("Service Project")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         // Grant Permissions
///         var apphubPermissions = new IAMMember("apphubPermissions", IAMMemberArgs.builder()
///             .project(project.projectId())
///             .role("roles/apphub.admin")
///             .member("serviceAccount:hashicorp-test-runner@ci-test-project-188019.iam.gserviceaccount.com")
///             .build());
///
///         var insightsAgent = new IAMMember("insightsAgent", IAMMemberArgs.builder()
///             .project(project.projectId())
///             .role("roles/developerconnect.insightsAgent")
///             .member("serviceAccount:66214305248-compute@developer.gserviceaccount.com")
///             .build());
///
///         // Enable APIs
///         var apphubApiService = new Service("apphubApiService", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("apphub.googleapis.com")
///             .disableDependentServices(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var containeranalysisApi = new Service("containeranalysisApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("containeranalysis.googleapis.com")
///             .disableDependentServices(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var containerscanningApi = new Service("containerscanningApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("containerscanning.googleapis.com")
///             .disableDependentServices(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var containerApi = new Service("containerApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("container.googleapis.com")
///             .disableDependentServices(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var artifactregistryApi = new Service("artifactregistryApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("artifactregistry.googleapis.com")
///             .disableDependentServices(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var cloudbuildApi = new Service("cloudbuildApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("cloudbuild.googleapis.com")
///             .disableDependentServices(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var cloudassetApi = new Service("cloudassetApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("cloudasset.googleapis.com")
///             .disableDependentServices(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var computeApi = new Service("computeApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("compute.googleapis.com")
///             .disableDependentServices(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var devconnectApi = new Service("devconnectApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("developerconnect.googleapis.com")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         // Wait delay after enabling APIs and granting permissions
///         var waitForPropagation = new Sleep("waitForPropagation", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     apphubPermissions,
///                     insightsAgent,
///                     apphubApiService,
///                     containeranalysisApi,
///                     containerscanningApi,
///                     containerApi,
///                     artifactregistryApi,
///                     artifactregistryApi,
///                     cloudbuildApi,
///                     cloudassetApi,
///                     computeApi,
///                     devconnectApi)
///                 .build());
///
///         var insightsConfigProjects = new InsightsConfig("insightsConfigProjects", InsightsConfigArgs.builder()
///             .location("us-central1")
///             .insightsConfigId("tf-test-ic-projects-_24469")
///             .project(project.projectId())
///             .annotations(Map.ofEntries(
///             ))
///             .labels(Map.ofEntries(
///             ))
///             .targetProjects(InsightsConfigTargetProjectsArgs.builder()
///                 .projectIds(project.projectId().applyValue(_projectId -> String.format("projects/%s", _projectId)))
///                 .build())
///             .artifactConfigs(InsightsConfigArtifactConfigArgs.builder()
///                 .googleArtifactAnalysis(InsightsConfigArtifactConfigGoogleArtifactAnalysisArgs.builder()
///                     .projectId(project.projectId())
///                     .build())
///                 .googleArtifactRegistry(InsightsConfigArtifactConfigGoogleArtifactRegistryArgs.builder()
///                     .artifactRegistryPackage("my-package")
///                     .projectId(project.projectId())
///                     .build())
///                 .uri("us-docker.pkg.dev/my-project/my-repo/my-image")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitForPropagation)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: dci-tf-_35762
///       name: Service Project
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   # Grant Permissions
///   apphubPermissions:
///     type: gcp:projects:IAMMember
///     name: apphub_permissions
///     properties:
///       project: ${project.projectId}
///       role: roles/apphub.admin
///       member: serviceAccount:hashicorp-test-runner@ci-test-project-188019.iam.gserviceaccount.com
///   insightsAgent:
///     type: gcp:projects:IAMMember
///     name: insights_agent
///     properties:
///       project: ${project.projectId}
///       role: roles/developerconnect.insightsAgent
///       member: serviceAccount:66214305248-compute@developer.gserviceaccount.com
///   # Enable APIs
///   apphubApiService:
///     type: gcp:projects:Service
///     name: apphub_api_service
///     properties:
///       project: ${project.projectId}
///       service: apphub.googleapis.com
///       disableDependentServices: true
///     options:
///       dependsOn:
///         - ${project}
///   containeranalysisApi:
///     type: gcp:projects:Service
///     name: containeranalysis_api
///     properties:
///       project: ${project.projectId}
///       service: containeranalysis.googleapis.com
///       disableDependentServices: true
///     options:
///       dependsOn:
///         - ${project}
///   containerscanningApi:
///     type: gcp:projects:Service
///     name: containerscanning_api
///     properties:
///       project: ${project.projectId}
///       service: containerscanning.googleapis.com
///       disableDependentServices: true
///     options:
///       dependsOn:
///         - ${project}
///   containerApi:
///     type: gcp:projects:Service
///     name: container_api
///     properties:
///       project: ${project.projectId}
///       service: container.googleapis.com
///       disableDependentServices: true
///     options:
///       dependsOn:
///         - ${project}
///   artifactregistryApi:
///     type: gcp:projects:Service
///     name: artifactregistry_api
///     properties:
///       project: ${project.projectId}
///       service: artifactregistry.googleapis.com
///       disableDependentServices: true
///     options:
///       dependsOn:
///         - ${project}
///   cloudbuildApi:
///     type: gcp:projects:Service
///     name: cloudbuild_api
///     properties:
///       project: ${project.projectId}
///       service: cloudbuild.googleapis.com
///       disableDependentServices: true
///     options:
///       dependsOn:
///         - ${project}
///   cloudassetApi:
///     type: gcp:projects:Service
///     name: cloudasset_api
///     properties:
///       project: ${project.projectId}
///       service: cloudasset.googleapis.com
///       disableDependentServices: true
///     options:
///       dependsOn:
///         - ${project}
///   computeApi:
///     type: gcp:projects:Service
///     name: compute_api
///     properties:
///       project: ${project.projectId}
///       service: compute.googleapis.com
///       disableDependentServices: true
///     options:
///       dependsOn:
///         - ${project}
///   devconnectApi:
///     type: gcp:projects:Service
///     name: devconnect_api
///     properties:
///       project: ${project.projectId}
///       service: developerconnect.googleapis.com
///     options:
///       dependsOn:
///         - ${project}
///   # Wait delay after enabling APIs and granting permissions
///   waitForPropagation:
///     type: time:Sleep
///     name: wait_for_propagation
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${apphubPermissions}
///         - ${insightsAgent}
///         - ${apphubApiService}
///         - ${containeranalysisApi}
///         - ${containerscanningApi}
///         - ${containerApi}
///         - ${artifactregistryApi}
///         - ${artifactregistryApi}
///         - ${cloudbuildApi}
///         - ${cloudassetApi}
///         - ${computeApi}
///         - ${devconnectApi}
///   insightsConfigProjects:
///     type: gcp:developerconnect:InsightsConfig
///     name: insights_config_projects
///     properties:
///       location: us-central1
///       insightsConfigId: tf-test-ic-projects-_24469
///       project: ${project.projectId}
///       annotations: {}
///       labels: {}
///       targetProjects:
///         projectIds:
///           - projects/${project.projectId}
///       artifactConfigs:
///         - googleArtifactAnalysis:
///             projectId: ${project.projectId}
///           googleArtifactRegistry:
///             artifactRegistryPackage: my-package
///             projectId: ${project.projectId}
///           uri: us-docker.pkg.dev/my-project/my-repo/my-image
///     options:
///       dependsOn:
///         - ${waitForPropagation}
/// ```
///
///
/// ## Import
///
/// InsightsConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/insightsConfigs/{{insights_config_id}}`
/// * `{{project}}/{{location}}/{{insights_config_id}}`
/// * `{{location}}/{{insights_config_id}}`
///
///
/// When using the `pulumi import` command, InsightsConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:developerconnect/insightsConfig:InsightsConfig default projects/{{project}}/locations/{{location}}/insightsConfigs/{{insights_config_id}}
/// $ pulumi import gcp:developerconnect/insightsConfig:InsightsConfig default {{project}}/{{location}}/{{insights_config_id}}
/// $ pulumi import gcp:developerconnect/insightsConfig:InsightsConfig default {{location}}/{{insights_config_id}}
/// ```
class InsightsConfig extends pulumi.CustomResource {
  /// User specified annotations. See https://google.aip.dev/148#annotations
  /// for more details such as format and size limitations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// The name of the App Hub Application.
  /// Format:
  /// projects/{project}/locations/{location}/applications/{application}
  late final pulumi.Output<String?> appHubApplication;
  /// The artifact configurations of the artifacts that are deployed.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> artifactConfigs;
  /// [Output only] Create timestamp
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Any errors that occurred while setting up the InsightsConfig.
  /// Each error will be in the format: `field_name: errorMessage`, e.g.
  /// GetAppHubApplication: Permission denied while getting App Hub
  /// application. Please grant permissions to the P4SA.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> errors;
  /// ID of the requesting InsightsConfig.
  late final pulumi.Output<String> insightsConfigId;
  /// Set of labels associated with an InsightsConfig.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The name of the InsightsConfig.
  /// Format:
  /// projects/{project}/locations/{location}/insightsConfigs/{insightsConfig}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Reconciling (https://google.aip.dev/128#reconciliation).
  /// Set to true if the current state of InsightsConfig does not match the
  /// user's intended state, and the service is actively updating the resource to
  /// reconcile them. This can happen due to user-triggered updates or
  /// system actions like failover or maintenance.
  late final pulumi.Output<bool> reconciling;
  /// The runtime configurations where the application is deployed.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> runtimeConfigs;
  /// (Output)
  /// The state of the Runtime.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// LINKED
  /// UNLINKED
  late final pulumi.Output<String> state;
  /// The projects to track with the InsightsConfig.
  /// Structure is documented below.
  late final pulumi.Output<InsightsConfigTargetProjects?> targetProjects;
  /// [Output only] Update timestamp
  late final pulumi.Output<String> updateTime;

  /// Creates a new [InsightsConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InsightsConfig]. {@macro pulumi_developerconnect_insights_config_insights_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InsightsConfig(
    String name, {
    InsightsConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:developerconnect/insightsConfig:InsightsConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    appHubApplication = registerOutput<String?>('appHubApplication');
    artifactConfigs = registerOutput<List<Map<String, dynamic>>?>('artifactConfigs');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    errors = registerOutput<List<Map<String, dynamic>>>('errors');
    insightsConfigId = registerOutput<String>('insightsConfigId');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    reconciling = registerOutput<bool>('reconciling');
    runtimeConfigs = registerOutput<List<Map<String, dynamic>>>('runtimeConfigs');
    state = registerOutput<String>('state');
    targetProjects = registerOutput<InsightsConfigTargetProjects?>('targetProjects', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InsightsConfigTargetProjects.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [InsightsConfig] resource's state with the given [name] and [id].
  static InsightsConfig get(
    String name,
    pulumi.Input<String> id, {
    InsightsConfigState? state,
  }) {
    return InsightsConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InsightsConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:developerconnect/insightsConfig:InsightsConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    appHubApplication = registerOutput<String?>('appHubApplication');
    artifactConfigs = registerOutput<List<Map<String, dynamic>>?>('artifactConfigs');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    errors = registerOutput<List<Map<String, dynamic>>>('errors');
    insightsConfigId = registerOutput<String>('insightsConfigId');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    reconciling = registerOutput<bool>('reconciling');
    runtimeConfigs = registerOutput<List<Map<String, dynamic>>>('runtimeConfigs');
    this.state = registerOutput<String>('state');
    targetProjects = registerOutput<InsightsConfigTargetProjects?>('targetProjects', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InsightsConfigTargetProjects.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }
}
