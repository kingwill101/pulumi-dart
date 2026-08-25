import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_cluster_args.dart';
import 'attached_cluster_authorization.dart';
import 'attached_cluster_binary_authorization.dart';
import 'attached_cluster_error.dart';
import 'attached_cluster_fleet.dart';
import 'attached_cluster_logging_config.dart';
import 'attached_cluster_monitoring_config.dart';
import 'attached_cluster_oidc_config.dart';
import 'attached_cluster_proxy_config.dart';
import 'attached_cluster_security_posture_config.dart';
import 'attached_cluster_state.dart';
import 'attached_cluster_workload_identity_config.dart';

/// An Anthos cluster running on customer owned infrastructure.
///
///
/// To get more information about Cluster, see:
///
/// * [API documentation](https://cloud.google.com/anthos/clusters/docs/multi-cloud/reference/rest)
/// * How-to Guides
/// * [API reference](https://cloud.google.com/anthos/clusters/docs/multi-cloud/reference/rest/v1/projects.locations.attachedClusters)
/// * [Multicloud overview](https://cloud.google.com/anthos/clusters/docs/multi-cloud)
///
/// ## Example Usage
///
/// ### Container Attached Cluster Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const versions = project.then(project => gcp.container.getAttachedVersions({
///     location: "us-west1",
///     project: project.projectId,
/// }));
/// const primary = new gcp.container.AttachedCluster("primary", {
///     name: "basic",
///     location: "us-west1",
///     project: project.then(project => project.projectId),
///     description: "Test cluster",
///     distribution: "aks",
///     oidcConfig: {
///         issuerUrl: "https://oidc.issuer.url",
///     },
///     platformVersion: versions.then(versions => versions.validVersions?.[0]),
///     fleet: {
///         project: project.then(project => `projects/${project.number}`),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// versions = gcp.container.get_attached_versions(location="us-west1",
///     project=project.project_id)
/// primary = gcp.container.AttachedCluster("primary",
///     name="basic",
///     location="us-west1",
///     project=project.project_id,
///     description="Test cluster",
///     distribution="aks",
///     oidc_config={
///         "issuer_url": "https://oidc.issuer.url",
///     },
///     platform_version=versions.valid_versions[0],
///     fleet={
///         "project": f"projects/{project.number}",
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
///     var versions = Gcp.Container.GetAttachedVersions.Invoke(new()
///     {
///         Location = "us-west1",
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///     });
///
///     var primary = new Gcp.Container.AttachedCluster("primary", new()
///     {
///         Name = "basic",
///         Location = "us-west1",
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Description = "Test cluster",
///         Distribution = "aks",
///         OidcConfig = new Gcp.Container.Inputs.AttachedClusterOidcConfigArgs
///         {
///             IssuerUrl = "https://oidc.issuer.url",
///         },
///         PlatformVersion = versions.Apply(getAttachedVersionsResult => getAttachedVersionsResult.ValidVersions[0]),
///         Fleet = new Gcp.Container.Inputs.AttachedClusterFleetArgs
///         {
///             Project = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		versions, err := container.GetAttachedVersions(ctx, &container.GetAttachedVersionsArgs{
/// 			Location: "us-west1",
/// 			Project:  project.ProjectId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = container.NewAttachedCluster(ctx, "primary", &container.AttachedClusterArgs{
/// 			Name:         pulumi.String("basic"),
/// 			Location:     pulumi.String("us-west1"),
/// 			Project:      pulumi.String(project.ProjectId),
/// 			Description:  pulumi.String("Test cluster"),
/// 			Distribution: pulumi.String("aks"),
/// 			OidcConfig: &container.AttachedClusterOidcConfigArgs{
/// 				IssuerUrl: pulumi.String("https://oidc.issuer.url"),
/// 			},
/// 			PlatformVersion: pulumi.String(versions.ValidVersions[0]),
/// 			Fleet: &container.AttachedClusterFleetArgs{
/// 				Project: pulumi.Sprintf("projects/%v", project.Number),
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
/// data "gcp_container_getattachedversions" "versions" {
///   location = "us-west1"
///   project  = data.gcp_organizations_getproject.project.project_id
/// }
///
/// resource "gcp_container_attachedcluster" "primary" {
///   name         = "basic"
///   location     = "us-west1"
///   project      = data.gcp_organizations_getproject.project.project_id
///   description  = "Test cluster"
///   distribution = "aks"
///   oidc_config = {
///     issuer_url = "https://oidc.issuer.url"
///   }
///   platform_version = data.gcp_container_getattachedversions.versions.valid_versions[0]
///   fleet = {
///     project ="projects/${data.gcp_organizations_getproject.project.number}"
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
/// import com.pulumi.gcp.container.ContainerFunctions;
/// import com.pulumi.gcp.container.inputs.GetAttachedVersionsArgs;
/// import com.pulumi.gcp.container.AttachedCluster;
/// import com.pulumi.gcp.container.AttachedClusterArgs;
/// import com.pulumi.gcp.container.inputs.AttachedClusterOidcConfigArgs;
/// import com.pulumi.gcp.container.inputs.AttachedClusterFleetArgs;
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
///         final var versions = ContainerFunctions.getAttachedVersions(GetAttachedVersionsArgs.builder()
///             .location("us-west1")
///             .project(project.projectId())
///             .build());
///
///         var primary = new AttachedCluster("primary", AttachedClusterArgs.builder()
///             .name("basic")
///             .location("us-west1")
///             .project(project.projectId())
///             .description("Test cluster")
///             .distribution("aks")
///             .oidcConfig(AttachedClusterOidcConfigArgs.builder()
///                 .issuerUrl("https://oidc.issuer.url")
///                 .build())
///             .platformVersion(versions.validVersions()[0])
///             .fleet(AttachedClusterFleetArgs.builder()
///                 .project(String.format("projects/%s", project.number()))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:AttachedCluster
///     properties:
///       name: basic
///       location: us-west1
///       project: ${project.projectId}
///       description: Test cluster
///       distribution: aks
///       oidcConfig:
///         issuerUrl: https://oidc.issuer.url
///       platformVersion: ${versions.validVersions[0]}
///       fleet:
///         project: projects/${project.number}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
///   versions:
///     fn::invoke:
///       function: gcp:container:getAttachedVersions
///       arguments:
///         location: us-west1
///         project: ${project.projectId}
/// ```
///
/// ### Container Attached Cluster Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const project = gcp.organizations.getProject({});
/// const versions = project.then(project => gcp.container.getAttachedVersions({
///     location: "us-west1",
///     project: project.projectId,
/// }));
/// const primary = new gcp.container.AttachedCluster("primary", {
///     name: "basic",
///     project: project.then(project => project.projectId),
///     location: "us-west1",
///     description: "Test cluster",
///     distribution: "aks",
///     annotations: {
///         "label-one": "value-one",
///     },
///     authorization: {
///         adminUsers: [
///             "user1@example.com",
///             "user2@example.com",
///         ],
///         adminGroups: [
///             "group1@example.com",
///             "group2@example.com",
///         ],
///     },
///     oidcConfig: {
///         issuerUrl: "https://oidc.issuer.url",
///         jwks: std.base64encode({
///             input: "{\"keys\":[{\"use\":\"sig\",\"kty\":\"RSA\",\"kid\":\"testid\",\"alg\":\"RS256\",\"n\":\"somedata\",\"e\":\"AQAB\"}]}",
///         }).then(invoke => invoke.result),
///     },
///     platformVersion: versions.then(versions => versions.validVersions?.[0]),
///     fleet: {
///         project: project.then(project => `projects/${project.number}`),
///     },
///     loggingConfig: {
///         componentConfig: {
///             enableComponents: [
///                 "SYSTEM_COMPONENTS",
///                 "WORKLOADS",
///             ],
///         },
///     },
///     monitoringConfig: {
///         managedPrometheusConfig: {
///             enabled: true,
///         },
///     },
///     binaryAuthorization: {
///         evaluationMode: "PROJECT_SINGLETON_POLICY_ENFORCE",
///     },
///     proxyConfig: {
///         kubernetesSecret: {
///             name: "proxy-config",
///             namespace: "default",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// project = gcp.organizations.get_project()
/// versions = gcp.container.get_attached_versions(location="us-west1",
///     project=project.project_id)
/// primary = gcp.container.AttachedCluster("primary",
///     name="basic",
///     project=project.project_id,
///     location="us-west1",
///     description="Test cluster",
///     distribution="aks",
///     annotations={
///         "label-one": "value-one",
///     },
///     authorization={
///         "admin_users": [
///             "user1@example.com",
///             "user2@example.com",
///         ],
///         "admin_groups": [
///             "group1@example.com",
///             "group2@example.com",
///         ],
///     },
///     oidc_config={
///         "issuer_url": "https://oidc.issuer.url",
///         "jwks": std.base64encode(input="{\"keys\":[{\"use\":\"sig\",\"kty\":\"RSA\",\"kid\":\"testid\",\"alg\":\"RS256\",\"n\":\"somedata\",\"e\":\"AQAB\"}]}").result,
///     },
///     platform_version=versions.valid_versions[0],
///     fleet={
///         "project": f"projects/{project.number}",
///     },
///     logging_config={
///         "component_config": {
///             "enable_components": [
///                 "SYSTEM_COMPONENTS",
///                 "WORKLOADS",
///             ],
///         },
///     },
///     monitoring_config={
///         "managed_prometheus_config": {
///             "enabled": True,
///         },
///     },
///     binary_authorization={
///         "evaluation_mode": "PROJECT_SINGLETON_POLICY_ENFORCE",
///     },
///     proxy_config={
///         "kubernetes_secret": {
///             "name": "proxy-config",
///             "namespace": "default",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var versions = Gcp.Container.GetAttachedVersions.Invoke(new()
///     {
///         Location = "us-west1",
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///     });
///
///     var primary = new Gcp.Container.AttachedCluster("primary", new()
///     {
///         Name = "basic",
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Location = "us-west1",
///         Description = "Test cluster",
///         Distribution = "aks",
///         Annotations =
///         {
///             { "label-one", "value-one" },
///         },
///         Authorization = new Gcp.Container.Inputs.AttachedClusterAuthorizationArgs
///         {
///             AdminUsers = new[]
///             {
///                 "user1@example.com",
///                 "user2@example.com",
///             },
///             AdminGroups = new[]
///             {
///                 "group1@example.com",
///                 "group2@example.com",
///             },
///         },
///         OidcConfig = new Gcp.Container.Inputs.AttachedClusterOidcConfigArgs
///         {
///             IssuerUrl = "https://oidc.issuer.url",
///             Jwks = Std.Base64encode.Invoke(new()
///             {
///                 Input = "{\"keys\":[{\"use\":\"sig\",\"kty\":\"RSA\",\"kid\":\"testid\",\"alg\":\"RS256\",\"n\":\"somedata\",\"e\":\"AQAB\"}]}",
///             }).Apply(invoke => invoke.Result),
///         },
///         PlatformVersion = versions.Apply(getAttachedVersionsResult => getAttachedVersionsResult.ValidVersions[0]),
///         Fleet = new Gcp.Container.Inputs.AttachedClusterFleetArgs
///         {
///             Project = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///         },
///         LoggingConfig = new Gcp.Container.Inputs.AttachedClusterLoggingConfigArgs
///         {
///             ComponentConfig = new Gcp.Container.Inputs.AttachedClusterLoggingConfigComponentConfigArgs
///             {
///                 EnableComponents = new[]
///                 {
///                     "SYSTEM_COMPONENTS",
///                     "WORKLOADS",
///                 },
///             },
///         },
///         MonitoringConfig = new Gcp.Container.Inputs.AttachedClusterMonitoringConfigArgs
///         {
///             ManagedPrometheusConfig = new Gcp.Container.Inputs.AttachedClusterMonitoringConfigManagedPrometheusConfigArgs
///             {
///                 Enabled = true,
///             },
///         },
///         BinaryAuthorization = new Gcp.Container.Inputs.AttachedClusterBinaryAuthorizationArgs
///         {
///             EvaluationMode = "PROJECT_SINGLETON_POLICY_ENFORCE",
///         },
///         ProxyConfig = new Gcp.Container.Inputs.AttachedClusterProxyConfigArgs
///         {
///             KubernetesSecret = new Gcp.Container.Inputs.AttachedClusterProxyConfigKubernetesSecretArgs
///             {
///                 Name = "proxy-config",
///                 Namespace = "default",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		versions, err := container.GetAttachedVersions(ctx, &container.GetAttachedVersionsArgs{
/// 			Location: "us-west1",
/// 			Project:  project.ProjectId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: "{\"keys\":[{\"use\":\"sig\",\"kty\":\"RSA\",\"kid\":\"testid\",\"alg\":\"RS256\",\"n\":\"somedata\",\"e\":\"AQAB\"}]}",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = container.NewAttachedCluster(ctx, "primary", &container.AttachedClusterArgs{
/// 			Name:         pulumi.String("basic"),
/// 			Project:      pulumi.String(project.ProjectId),
/// 			Location:     pulumi.String("us-west1"),
/// 			Description:  pulumi.String("Test cluster"),
/// 			Distribution: pulumi.String("aks"),
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Authorization: &container.AttachedClusterAuthorizationArgs{
/// 				AdminUsers: pulumi.StringArray{
/// 					pulumi.String("user1@example.com"),
/// 					pulumi.String("user2@example.com"),
/// 				},
/// 				AdminGroups: pulumi.StringArray{
/// 					pulumi.String("group1@example.com"),
/// 					pulumi.String("group2@example.com"),
/// 				},
/// 			},
/// 			OidcConfig: &container.AttachedClusterOidcConfigArgs{
/// 				IssuerUrl: pulumi.String("https://oidc.issuer.url"),
/// 				Jwks:      pulumi.String(invokeBase64encode.Result),
/// 			},
/// 			PlatformVersion: pulumi.String(versions.ValidVersions[0]),
/// 			Fleet: &container.AttachedClusterFleetArgs{
/// 				Project: pulumi.Sprintf("projects/%v", project.Number),
/// 			},
/// 			LoggingConfig: &container.AttachedClusterLoggingConfigArgs{
/// 				ComponentConfig: &container.AttachedClusterLoggingConfigComponentConfigArgs{
/// 					EnableComponents: pulumi.StringArray{
/// 						pulumi.String("SYSTEM_COMPONENTS"),
/// 						pulumi.String("WORKLOADS"),
/// 					},
/// 				},
/// 			},
/// 			MonitoringConfig: &container.AttachedClusterMonitoringConfigArgs{
/// 				ManagedPrometheusConfig: &container.AttachedClusterMonitoringConfigManagedPrometheusConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			BinaryAuthorization: &container.AttachedClusterBinaryAuthorizationArgs{
/// 				EvaluationMode: pulumi.String("PROJECT_SINGLETON_POLICY_ENFORCE"),
/// 			},
/// 			ProxyConfig: &container.AttachedClusterProxyConfigArgs{
/// 				KubernetesSecret: &container.AttachedClusterProxyConfigKubernetesSecretArgs{
/// 					Name:      pulumi.String("proxy-config"),
/// 					Namespace: pulumi.String("default"),
/// 				},
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
/// data "gcp_container_getattachedversions" "versions" {
///   location = "us-west1"
///   project  = data.gcp_organizations_getproject.project.project_id
/// }
///
/// resource "gcp_container_attachedcluster" "primary" {
///   name         = "basic"
///   project      = data.gcp_organizations_getproject.project.project_id
///   location     = "us-west1"
///   description  = "Test cluster"
///   distribution = "aks"
///   annotations = {
///     "label-one" = "value-one"
///   }
///   authorization = {
///     admin_users  = ["user1@example.com", "user2@example.com"]
///     admin_groups = ["group1@example.com", "group2@example.com"]
///   }
///   oidc_config = {
///     issuer_url = "https://oidc.issuer.url"
///     jwks       = base64encode("{\"keys\":[{\"use\":\"sig\",\"kty\":\"RSA\",\"kid\":\"testid\",\"alg\":\"RS256\",\"n\":\"somedata\",\"e\":\"AQAB\"}]}")
///   }
///   platform_version = data.gcp_container_getattachedversions.versions.valid_versions[0]
///   fleet = {
///     project ="projects/${data.gcp_organizations_getproject.project.number}"
///   }
///   logging_config = {
///     component_config = {
///       enable_components = ["SYSTEM_COMPONENTS", "WORKLOADS"]
///     }
///   }
///   monitoring_config = {
///     managed_prometheus_config = {
///       enabled = true
///     }
///   }
///   binary_authorization = {
///     evaluation_mode = "PROJECT_SINGLETON_POLICY_ENFORCE"
///   }
///   proxy_config = {
///     kubernetes_secret = {
///       name      = "proxy-config"
///       namespace = "default"
///     }
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
/// import com.pulumi.gcp.container.ContainerFunctions;
/// import com.pulumi.gcp.container.inputs.GetAttachedVersionsArgs;
/// import com.pulumi.gcp.container.AttachedCluster;
/// import com.pulumi.gcp.container.AttachedClusterArgs;
/// import com.pulumi.gcp.container.inputs.AttachedClusterAuthorizationArgs;
/// import com.pulumi.gcp.container.inputs.AttachedClusterOidcConfigArgs;
/// import com.pulumi.gcp.container.inputs.AttachedClusterFleetArgs;
/// import com.pulumi.gcp.container.inputs.AttachedClusterLoggingConfigArgs;
/// import com.pulumi.gcp.container.inputs.AttachedClusterLoggingConfigComponentConfigArgs;
/// import com.pulumi.gcp.container.inputs.AttachedClusterMonitoringConfigArgs;
/// import com.pulumi.gcp.container.inputs.AttachedClusterMonitoringConfigManagedPrometheusConfigArgs;
/// import com.pulumi.gcp.container.inputs.AttachedClusterBinaryAuthorizationArgs;
/// import com.pulumi.gcp.container.inputs.AttachedClusterProxyConfigArgs;
/// import com.pulumi.gcp.container.inputs.AttachedClusterProxyConfigKubernetesSecretArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
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
///         final var versions = ContainerFunctions.getAttachedVersions(GetAttachedVersionsArgs.builder()
///             .location("us-west1")
///             .project(project.projectId())
///             .build());
///
///         var primary = new AttachedCluster("primary", AttachedClusterArgs.builder()
///             .name("basic")
///             .project(project.projectId())
///             .location("us-west1")
///             .description("Test cluster")
///             .distribution("aks")
///             .annotations(Map.of("label-one", "value-one"))
///             .authorization(AttachedClusterAuthorizationArgs.builder()
///                 .adminUsers(
///                     "user1@example.com",
///                     "user2@example.com")
///                 .adminGroups(
///                     "group1@example.com",
///                     "group2@example.com")
///                 .build())
///             .oidcConfig(AttachedClusterOidcConfigArgs.builder()
///                 .issuerUrl("https://oidc.issuer.url")
///                 .jwks(StdFunctions.base64encode(Base64encodeArgs.builder()
///                     .input("{\"keys\":[{\"use\":\"sig\",\"kty\":\"RSA\",\"kid\":\"testid\",\"alg\":\"RS256\",\"n\":\"somedata\",\"e\":\"AQAB\"}]}")
///                     .build()).result())
///                 .build())
///             .platformVersion(versions.validVersions()[0])
///             .fleet(AttachedClusterFleetArgs.builder()
///                 .project(String.format("projects/%s", project.number()))
///                 .build())
///             .loggingConfig(AttachedClusterLoggingConfigArgs.builder()
///                 .componentConfig(AttachedClusterLoggingConfigComponentConfigArgs.builder()
///                     .enableComponents(
///                         "SYSTEM_COMPONENTS",
///                         "WORKLOADS")
///                     .build())
///                 .build())
///             .monitoringConfig(AttachedClusterMonitoringConfigArgs.builder()
///                 .managedPrometheusConfig(AttachedClusterMonitoringConfigManagedPrometheusConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .binaryAuthorization(AttachedClusterBinaryAuthorizationArgs.builder()
///                 .evaluationMode("PROJECT_SINGLETON_POLICY_ENFORCE")
///                 .build())
///             .proxyConfig(AttachedClusterProxyConfigArgs.builder()
///                 .kubernetesSecret(AttachedClusterProxyConfigKubernetesSecretArgs.builder()
///                     .name("proxy-config")
///                     .namespace("default")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:AttachedCluster
///     properties:
///       name: basic
///       project: ${project.projectId}
///       location: us-west1
///       description: Test cluster
///       distribution: aks
///       annotations:
///         label-one: value-one
///       authorization:
///         adminUsers:
///           - user1@example.com
///           - user2@example.com
///         adminGroups:
///           - group1@example.com
///           - group2@example.com
///       oidcConfig:
///         issuerUrl: https://oidc.issuer.url
///         jwks:
///           fn::invoke:
///             function: std:base64encode
///             arguments:
///               input: '{"keys":[{"use":"sig","kty":"RSA","kid":"testid","alg":"RS256","n":"somedata","e":"AQAB"}]}'
///             return: result
///       platformVersion: ${versions.validVersions[0]}
///       fleet:
///         project: projects/${project.number}
///       loggingConfig:
///         componentConfig:
///           enableComponents:
///             - SYSTEM_COMPONENTS
///             - WORKLOADS
///       monitoringConfig:
///         managedPrometheusConfig:
///           enabled: true
///       binaryAuthorization:
///         evaluationMode: PROJECT_SINGLETON_POLICY_ENFORCE
///       proxyConfig:
///         kubernetesSecret:
///           name: proxy-config
///           namespace: default
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
///   versions:
///     fn::invoke:
///       function: gcp:container:getAttachedVersions
///       arguments:
///         location: us-west1
///         project: ${project.projectId}
/// ```
///
/// ### Container Attached Cluster Ignore Errors
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const versions = project.then(project => gcp.container.getAttachedVersions({
///     location: "us-west1",
///     project: project.projectId,
/// }));
/// const primary = new gcp.container.AttachedCluster("primary", {
///     name: "basic",
///     location: "us-west1",
///     project: project.then(project => project.projectId),
///     description: "Test cluster",
///     distribution: "aks",
///     oidcConfig: {
///         issuerUrl: "https://oidc.issuer.url",
///     },
///     platformVersion: versions.then(versions => versions.validVersions?.[0]),
///     fleet: {
///         project: project.then(project => `projects/${project.number}`),
///     },
///     deletionPolicy: "DELETE_IGNORE_ERRORS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// versions = gcp.container.get_attached_versions(location="us-west1",
///     project=project.project_id)
/// primary = gcp.container.AttachedCluster("primary",
///     name="basic",
///     location="us-west1",
///     project=project.project_id,
///     description="Test cluster",
///     distribution="aks",
///     oidc_config={
///         "issuer_url": "https://oidc.issuer.url",
///     },
///     platform_version=versions.valid_versions[0],
///     fleet={
///         "project": f"projects/{project.number}",
///     },
///     deletion_policy="DELETE_IGNORE_ERRORS")
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
///     var versions = Gcp.Container.GetAttachedVersions.Invoke(new()
///     {
///         Location = "us-west1",
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///     });
///
///     var primary = new Gcp.Container.AttachedCluster("primary", new()
///     {
///         Name = "basic",
///         Location = "us-west1",
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Description = "Test cluster",
///         Distribution = "aks",
///         OidcConfig = new Gcp.Container.Inputs.AttachedClusterOidcConfigArgs
///         {
///             IssuerUrl = "https://oidc.issuer.url",
///         },
///         PlatformVersion = versions.Apply(getAttachedVersionsResult => getAttachedVersionsResult.ValidVersions[0]),
///         Fleet = new Gcp.Container.Inputs.AttachedClusterFleetArgs
///         {
///             Project = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///         },
///         DeletionPolicy = "DELETE_IGNORE_ERRORS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		versions, err := container.GetAttachedVersions(ctx, &container.GetAttachedVersionsArgs{
/// 			Location: "us-west1",
/// 			Project:  project.ProjectId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = container.NewAttachedCluster(ctx, "primary", &container.AttachedClusterArgs{
/// 			Name:         pulumi.String("basic"),
/// 			Location:     pulumi.String("us-west1"),
/// 			Project:      pulumi.String(project.ProjectId),
/// 			Description:  pulumi.String("Test cluster"),
/// 			Distribution: pulumi.String("aks"),
/// 			OidcConfig: &container.AttachedClusterOidcConfigArgs{
/// 				IssuerUrl: pulumi.String("https://oidc.issuer.url"),
/// 			},
/// 			PlatformVersion: pulumi.String(versions.ValidVersions[0]),
/// 			Fleet: &container.AttachedClusterFleetArgs{
/// 				Project: pulumi.Sprintf("projects/%v", project.Number),
/// 			},
/// 			DeletionPolicy: pulumi.String("DELETE_IGNORE_ERRORS"),
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
/// data "gcp_container_getattachedversions" "versions" {
///   location = "us-west1"
///   project  = data.gcp_organizations_getproject.project.project_id
/// }
///
/// resource "gcp_container_attachedcluster" "primary" {
///   name         = "basic"
///   location     = "us-west1"
///   project      = data.gcp_organizations_getproject.project.project_id
///   description  = "Test cluster"
///   distribution = "aks"
///   oidc_config = {
///     issuer_url = "https://oidc.issuer.url"
///   }
///   platform_version = data.gcp_container_getattachedversions.versions.valid_versions[0]
///   fleet = {
///     project ="projects/${data.gcp_organizations_getproject.project.number}"
///   }
///   deletion_policy = "DELETE_IGNORE_ERRORS"
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
/// import com.pulumi.gcp.container.ContainerFunctions;
/// import com.pulumi.gcp.container.inputs.GetAttachedVersionsArgs;
/// import com.pulumi.gcp.container.AttachedCluster;
/// import com.pulumi.gcp.container.AttachedClusterArgs;
/// import com.pulumi.gcp.container.inputs.AttachedClusterOidcConfigArgs;
/// import com.pulumi.gcp.container.inputs.AttachedClusterFleetArgs;
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
///         final var versions = ContainerFunctions.getAttachedVersions(GetAttachedVersionsArgs.builder()
///             .location("us-west1")
///             .project(project.projectId())
///             .build());
///
///         var primary = new AttachedCluster("primary", AttachedClusterArgs.builder()
///             .name("basic")
///             .location("us-west1")
///             .project(project.projectId())
///             .description("Test cluster")
///             .distribution("aks")
///             .oidcConfig(AttachedClusterOidcConfigArgs.builder()
///                 .issuerUrl("https://oidc.issuer.url")
///                 .build())
///             .platformVersion(versions.validVersions()[0])
///             .fleet(AttachedClusterFleetArgs.builder()
///                 .project(String.format("projects/%s", project.number()))
///                 .build())
///             .deletionPolicy("DELETE_IGNORE_ERRORS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:AttachedCluster
///     properties:
///       name: basic
///       location: us-west1
///       project: ${project.projectId}
///       description: Test cluster
///       distribution: aks
///       oidcConfig:
///         issuerUrl: https://oidc.issuer.url
///       platformVersion: ${versions.validVersions[0]}
///       fleet:
///         project: projects/${project.number}
///       deletionPolicy: DELETE_IGNORE_ERRORS
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
///   versions:
///     fn::invoke:
///       function: gcp:container:getAttachedVersions
///       arguments:
///         location: us-west1
///         project: ${project.projectId}
/// ```
///
///
/// ## Import
///
/// Cluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/attachedClusters/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Cluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:container/attachedCluster:AttachedCluster default projects/{{project}}/locations/{{location}}/attachedClusters/{{name}}
/// $ pulumi import gcp:container/attachedCluster:AttachedCluster default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:container/attachedCluster:AttachedCluster default {{location}}/{{name}}
/// ```
class AttachedCluster extends pulumi.CustomResource {
  /// Optional. Annotations on the cluster. This field has the same
  /// restrictions as Kubernetes annotations. The total size of all keys and
  /// values combined is limited to 256k. Key can have 2 segments: prefix (optional)
  /// and name (required), separated by a slash (/). Prefix must be a DNS subdomain.
  /// Name must be 63 characters or less, begin and end with alphanumerics,
  /// with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// Configuration related to the cluster RBAC settings.
  /// Structure is documented below.
  late final pulumi.Output<AttachedClusterAuthorization?> authorization;
  /// Binary Authorization configuration.
  /// Structure is documented below.
  late final pulumi.Output<AttachedClusterBinaryAuthorization> binaryAuthorization;
  /// Output only. The region where this cluster runs.
  /// For EKS clusters, this is an AWS region. For AKS clusters,
  /// this is an Azure region.
  late final pulumi.Output<String> clusterRegion;
  /// Output only. The time at which this cluster was created.
  late final pulumi.Output<String> createTime;
  /// Policy to determine what flags to send on delete.
  ///
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  ///
  /// Possible values: DELETE, DELETE_IGNORE_ERRORS, PREVENT, ABANDON'. Defaults to 'DELETE'.
  late final pulumi.Output<String> deletionPolicy;
  /// A human readable description of this attached cluster. Cannot be longer
  /// than 255 UTF-8 encoded bytes.
  late final pulumi.Output<String?> description;
  /// The Kubernetes distribution of the underlying attached cluster. Supported values:
  /// "eks", "aks", "generic". The generic distribution provides the ability to register
  /// or migrate any CNCF conformant cluster.
  late final pulumi.Output<String> distribution;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// A set of errors found in the cluster.
  /// Structure is documented below.
  late final pulumi.Output<List<AttachedClusterError>> errors;
  /// Fleet configuration.
  /// Structure is documented below.
  late final pulumi.Output<AttachedClusterFleet> fleet;
  /// The Kubernetes version of the cluster.
  late final pulumi.Output<String> kubernetesVersion;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// Logging configuration.
  /// Structure is documented below.
  late final pulumi.Output<AttachedClusterLoggingConfig?> loggingConfig;
  /// Monitoring configuration.
  /// Structure is documented below.
  late final pulumi.Output<AttachedClusterMonitoringConfig> monitoringConfig;
  /// The name of this resource.
  late final pulumi.Output<String> name;
  /// OIDC discovery information of the target cluster.
  /// Kubernetes Service Account (KSA) tokens are JWT tokens signed by the cluster
  /// API server. This fields indicates how GCP services
  /// validate KSA tokens in order to allow system workloads (such as GKE Connect
  /// and telemetry agents) to authenticate back to GCP.
  /// Both clusters with public and private issuer URLs are supported.
  /// Clusters with public issuers only need to specify the `issuerUrl` field
  /// while clusters with private issuers need to provide both
  /// `issuerUrl` and `jwks`.
  /// Structure is documented below.
  late final pulumi.Output<AttachedClusterOidcConfig> oidcConfig;
  /// The platform version for the cluster (e.g. `1.23.0-gke.1`).
  late final pulumi.Output<String> platformVersion;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Support for proxy configuration.
  /// Structure is documented below.
  late final pulumi.Output<AttachedClusterProxyConfig?> proxyConfig;
  /// If set, there are currently changes in flight to the cluster.
  late final pulumi.Output<bool> reconciling;
  /// (Optional, Deprecated)
  /// Enable/Disable Security Posture API features for the cluster.
  /// Structure is documented below.
  ///
  /// &gt; **Warning:** `securityPostureConfig` is deprecated and will be removed in a future major release.
  late final pulumi.Output<AttachedClusterSecurityPostureConfig> securityPostureConfig;
  /// The current state of the cluster. Possible values:
  /// STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR,
  /// DEGRADED
  late final pulumi.Output<String> state;
  /// A globally unique identifier for the cluster.
  late final pulumi.Output<String> uid;
  /// The time at which this cluster was last updated.
  late final pulumi.Output<String> updateTime;
  /// Workload Identity settings.
  /// Structure is documented below.
  late final pulumi.Output<List<AttachedClusterWorkloadIdentityConfig>> workloadIdentityConfigs;

  /// Creates a new [AttachedCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AttachedCluster]. {@macro pulumi_container_attached_cluster_attached_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AttachedCluster(
    String name, {
    AttachedClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:container/attachedCluster:AttachedCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    authorization = registerOutput<AttachedClusterAuthorization?>('authorization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    binaryAuthorization = registerOutput<AttachedClusterBinaryAuthorization>('binaryAuthorization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterBinaryAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterRegion = registerOutput<String>('clusterRegion');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    distribution = registerOutput<String>('distribution');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    errors = registerOutput<List<AttachedClusterError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AttachedClusterError>(guardedValue, (value) => AttachedClusterError.fromMap((value as Map).cast<String, dynamic>())); });
    fleet = registerOutput<AttachedClusterFleet>('fleet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterFleet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kubernetesVersion = registerOutput<String>('kubernetesVersion');
    location = registerOutput<String>('location');
    loggingConfig = registerOutput<AttachedClusterLoggingConfig?>('loggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    monitoringConfig = registerOutput<AttachedClusterMonitoringConfig>('monitoringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterMonitoringConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    oidcConfig = registerOutput<AttachedClusterOidcConfig>('oidcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterOidcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    platformVersion = registerOutput<String>('platformVersion');
    project = registerOutput<String>('project');
    proxyConfig = registerOutput<AttachedClusterProxyConfig?>('proxyConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterProxyConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reconciling = registerOutput<bool>('reconciling');
    securityPostureConfig = registerOutput<AttachedClusterSecurityPostureConfig>('securityPostureConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterSecurityPostureConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    workloadIdentityConfigs = registerOutput<List<AttachedClusterWorkloadIdentityConfig>>('workloadIdentityConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AttachedClusterWorkloadIdentityConfig>(guardedValue, (value) => AttachedClusterWorkloadIdentityConfig.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [AttachedCluster] resource's state with the given [name] and [id].
  static AttachedCluster get(
    String name,
    pulumi.Input<String> id, {
    AttachedClusterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AttachedCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AttachedCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:container/attachedCluster:AttachedCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    authorization = registerOutput<AttachedClusterAuthorization?>('authorization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    binaryAuthorization = registerOutput<AttachedClusterBinaryAuthorization>('binaryAuthorization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterBinaryAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterRegion = registerOutput<String>('clusterRegion');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    distribution = registerOutput<String>('distribution');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    errors = registerOutput<List<AttachedClusterError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AttachedClusterError>(guardedValue, (value) => AttachedClusterError.fromMap((value as Map).cast<String, dynamic>())); });
    fleet = registerOutput<AttachedClusterFleet>('fleet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterFleet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kubernetesVersion = registerOutput<String>('kubernetesVersion');
    location = registerOutput<String>('location');
    loggingConfig = registerOutput<AttachedClusterLoggingConfig?>('loggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    monitoringConfig = registerOutput<AttachedClusterMonitoringConfig>('monitoringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterMonitoringConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    oidcConfig = registerOutput<AttachedClusterOidcConfig>('oidcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterOidcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    platformVersion = registerOutput<String>('platformVersion');
    project = registerOutput<String>('project');
    proxyConfig = registerOutput<AttachedClusterProxyConfig?>('proxyConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterProxyConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reconciling = registerOutput<bool>('reconciling');
    securityPostureConfig = registerOutput<AttachedClusterSecurityPostureConfig>('securityPostureConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterSecurityPostureConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    workloadIdentityConfigs = registerOutput<List<AttachedClusterWorkloadIdentityConfig>>('workloadIdentityConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AttachedClusterWorkloadIdentityConfig>(guardedValue, (value) => AttachedClusterWorkloadIdentityConfig.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [AttachedCluster] resource.
  AttachedCluster.reference(String urn)
    : super(
        'gcp:container/attachedCluster:AttachedCluster',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    authorization = registerOutput<AttachedClusterAuthorization?>('authorization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    binaryAuthorization = registerOutput<AttachedClusterBinaryAuthorization>('binaryAuthorization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterBinaryAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterRegion = registerOutput<String>('clusterRegion');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    distribution = registerOutput<String>('distribution');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    errors = registerOutput<List<AttachedClusterError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AttachedClusterError>(guardedValue, (value) => AttachedClusterError.fromMap((value as Map).cast<String, dynamic>())); });
    fleet = registerOutput<AttachedClusterFleet>('fleet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterFleet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kubernetesVersion = registerOutput<String>('kubernetesVersion');
    location = registerOutput<String>('location');
    loggingConfig = registerOutput<AttachedClusterLoggingConfig?>('loggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    monitoringConfig = registerOutput<AttachedClusterMonitoringConfig>('monitoringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterMonitoringConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    oidcConfig = registerOutput<AttachedClusterOidcConfig>('oidcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterOidcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    platformVersion = registerOutput<String>('platformVersion');
    project = registerOutput<String>('project');
    proxyConfig = registerOutput<AttachedClusterProxyConfig?>('proxyConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterProxyConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reconciling = registerOutput<bool>('reconciling');
    securityPostureConfig = registerOutput<AttachedClusterSecurityPostureConfig>('securityPostureConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedClusterSecurityPostureConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    workloadIdentityConfigs = registerOutput<List<AttachedClusterWorkloadIdentityConfig>>('workloadIdentityConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AttachedClusterWorkloadIdentityConfig>(guardedValue, (value) => AttachedClusterWorkloadIdentityConfig.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
