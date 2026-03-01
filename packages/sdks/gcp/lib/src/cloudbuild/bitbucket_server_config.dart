import 'package:pulumi/pulumi.dart' as pulumi;
import 'bitbucket_server_config_args.dart';
import 'bitbucket_server_config_connected_repository.dart';
import 'bitbucket_server_config_secrets.dart';
import 'bitbucket_server_config_state.dart';

/// BitbucketServerConfig represents the configuration for a Bitbucket Server.
///
///
/// To get more information about BitbucketServerConfig, see:
///
/// * [API documentation](https://cloud.google.com/build/docs/api/reference/rest/v1/projects.locations.bitbucketServerConfigs)
/// * How-to Guides
/// * [Connect to a Bitbucket Server host](https://cloud.google.com/build/docs/automating-builds/bitbucket/connect-host-bitbucket-server)
///
/// ## Example Usage
///
/// ### Cloudbuild Bitbucket Server Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bbs_config = new gcp.cloudbuild.BitbucketServerConfig("bbs-config", {
///     configId: "bbs-config",
///     location: "us-central1",
///     hostUri: "https://bbs.com",
///     secrets: {
///         adminAccessTokenVersionName: "projects/myProject/secrets/mybbspat/versions/1",
///         readAccessTokenVersionName: "projects/myProject/secrets/mybbspat/versions/1",
///         webhookSecretVersionName: "projects/myProject/secrets/mybbspat/versions/1",
///     },
///     username: "test",
///     apiKey: "<api-key>",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bbs_config = gcp.cloudbuild.BitbucketServerConfig("bbs-config",
///     config_id="bbs-config",
///     location="us-central1",
///     host_uri="https://bbs.com",
///     secrets={
///         "admin_access_token_version_name": "projects/myProject/secrets/mybbspat/versions/1",
///         "read_access_token_version_name": "projects/myProject/secrets/mybbspat/versions/1",
///         "webhook_secret_version_name": "projects/myProject/secrets/mybbspat/versions/1",
///     },
///     username="test",
///     api_key="<api-key>")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bbs_config = new Gcp.CloudBuild.BitbucketServerConfig("bbs-config", new()
///     {
///         ConfigId = "bbs-config",
///         Location = "us-central1",
///         HostUri = "https://bbs.com",
///         Secrets = new Gcp.CloudBuild.Inputs.BitbucketServerConfigSecretsArgs
///         {
///             AdminAccessTokenVersionName = "projects/myProject/secrets/mybbspat/versions/1",
///             ReadAccessTokenVersionName = "projects/myProject/secrets/mybbspat/versions/1",
///             WebhookSecretVersionName = "projects/myProject/secrets/mybbspat/versions/1",
///         },
///         Username = "test",
///         ApiKey = "<api-key>",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudbuild.NewBitbucketServerConfig(ctx, "bbs-config", &cloudbuild.BitbucketServerConfigArgs{
/// 			ConfigId: pulumi.String("bbs-config"),
/// 			Location: pulumi.String("us-central1"),
/// 			HostUri:  pulumi.String("https://bbs.com"),
/// 			Secrets: &cloudbuild.BitbucketServerConfigSecretsArgs{
/// 				AdminAccessTokenVersionName: pulumi.String("projects/myProject/secrets/mybbspat/versions/1"),
/// 				ReadAccessTokenVersionName:  pulumi.String("projects/myProject/secrets/mybbspat/versions/1"),
/// 				WebhookSecretVersionName:    pulumi.String("projects/myProject/secrets/mybbspat/versions/1"),
/// 			},
/// 			Username: pulumi.String("test"),
/// 			ApiKey:   pulumi.String("<api-key>"),
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
/// import com.pulumi.gcp.cloudbuild.BitbucketServerConfig;
/// import com.pulumi.gcp.cloudbuild.BitbucketServerConfigArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.BitbucketServerConfigSecretsArgs;
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
///         var bbs_config = new BitbucketServerConfig("bbs-config", BitbucketServerConfigArgs.builder()
///             .configId("bbs-config")
///             .location("us-central1")
///             .hostUri("https://bbs.com")
///             .secrets(BitbucketServerConfigSecretsArgs.builder()
///                 .adminAccessTokenVersionName("projects/myProject/secrets/mybbspat/versions/1")
///                 .readAccessTokenVersionName("projects/myProject/secrets/mybbspat/versions/1")
///                 .webhookSecretVersionName("projects/myProject/secrets/mybbspat/versions/1")
///                 .build())
///             .username("test")
///             .apiKey("<api-key>")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bbs-config:
///     type: gcp:cloudbuild:BitbucketServerConfig
///     properties:
///       configId: bbs-config
///       location: us-central1
///       hostUri: https://bbs.com
///       secrets:
///         adminAccessTokenVersionName: projects/myProject/secrets/mybbspat/versions/1
///         readAccessTokenVersionName: projects/myProject/secrets/mybbspat/versions/1
///         webhookSecretVersionName: projects/myProject/secrets/mybbspat/versions/1
///       username: test
///       apiKey: <api-key>
/// ```
///
/// ### Cloudbuild Bitbucket Server Config Repositories
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bbs_config_with_repos = new gcp.cloudbuild.BitbucketServerConfig("bbs-config-with-repos", {
///     configId: "bbs-config",
///     location: "us-central1",
///     hostUri: "https://bbs.com",
///     secrets: {
///         adminAccessTokenVersionName: "projects/myProject/secrets/mybbspat/versions/1",
///         readAccessTokenVersionName: "projects/myProject/secrets/mybbspat/versions/1",
///         webhookSecretVersionName: "projects/myProject/secrets/mybbspat/versions/1",
///     },
///     username: "test",
///     apiKey: "<api-key>",
///     connectedRepositories: [
///         {
///             projectKey: "DEV",
///             repoSlug: "repo1",
///         },
///         {
///             projectKey: "PROD",
///             repoSlug: "repo1",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bbs_config_with_repos = gcp.cloudbuild.BitbucketServerConfig("bbs-config-with-repos",
///     config_id="bbs-config",
///     location="us-central1",
///     host_uri="https://bbs.com",
///     secrets={
///         "admin_access_token_version_name": "projects/myProject/secrets/mybbspat/versions/1",
///         "read_access_token_version_name": "projects/myProject/secrets/mybbspat/versions/1",
///         "webhook_secret_version_name": "projects/myProject/secrets/mybbspat/versions/1",
///     },
///     username="test",
///     api_key="<api-key>",
///     connected_repositories=[
///         {
///             "project_key": "DEV",
///             "repo_slug": "repo1",
///         },
///         {
///             "project_key": "PROD",
///             "repo_slug": "repo1",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bbs_config_with_repos = new Gcp.CloudBuild.BitbucketServerConfig("bbs-config-with-repos", new()
///     {
///         ConfigId = "bbs-config",
///         Location = "us-central1",
///         HostUri = "https://bbs.com",
///         Secrets = new Gcp.CloudBuild.Inputs.BitbucketServerConfigSecretsArgs
///         {
///             AdminAccessTokenVersionName = "projects/myProject/secrets/mybbspat/versions/1",
///             ReadAccessTokenVersionName = "projects/myProject/secrets/mybbspat/versions/1",
///             WebhookSecretVersionName = "projects/myProject/secrets/mybbspat/versions/1",
///         },
///         Username = "test",
///         ApiKey = "<api-key>",
///         ConnectedRepositories = new[]
///         {
///             new Gcp.CloudBuild.Inputs.BitbucketServerConfigConnectedRepositoryArgs
///             {
///                 ProjectKey = "DEV",
///                 RepoSlug = "repo1",
///             },
///             new Gcp.CloudBuild.Inputs.BitbucketServerConfigConnectedRepositoryArgs
///             {
///                 ProjectKey = "PROD",
///                 RepoSlug = "repo1",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudbuild.NewBitbucketServerConfig(ctx, "bbs-config-with-repos", &cloudbuild.BitbucketServerConfigArgs{
/// 			ConfigId: pulumi.String("bbs-config"),
/// 			Location: pulumi.String("us-central1"),
/// 			HostUri:  pulumi.String("https://bbs.com"),
/// 			Secrets: &cloudbuild.BitbucketServerConfigSecretsArgs{
/// 				AdminAccessTokenVersionName: pulumi.String("projects/myProject/secrets/mybbspat/versions/1"),
/// 				ReadAccessTokenVersionName:  pulumi.String("projects/myProject/secrets/mybbspat/versions/1"),
/// 				WebhookSecretVersionName:    pulumi.String("projects/myProject/secrets/mybbspat/versions/1"),
/// 			},
/// 			Username: pulumi.String("test"),
/// 			ApiKey:   pulumi.String("<api-key>"),
/// 			ConnectedRepositories: cloudbuild.BitbucketServerConfigConnectedRepositoryArray{
/// 				&cloudbuild.BitbucketServerConfigConnectedRepositoryArgs{
/// 					ProjectKey: pulumi.String("DEV"),
/// 					RepoSlug:   pulumi.String("repo1"),
/// 				},
/// 				&cloudbuild.BitbucketServerConfigConnectedRepositoryArgs{
/// 					ProjectKey: pulumi.String("PROD"),
/// 					RepoSlug:   pulumi.String("repo1"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudbuild.BitbucketServerConfig;
/// import com.pulumi.gcp.cloudbuild.BitbucketServerConfigArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.BitbucketServerConfigSecretsArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.BitbucketServerConfigConnectedRepositoryArgs;
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
///         var bbs_config_with_repos = new BitbucketServerConfig("bbs-config-with-repos", BitbucketServerConfigArgs.builder()
///             .configId("bbs-config")
///             .location("us-central1")
///             .hostUri("https://bbs.com")
///             .secrets(BitbucketServerConfigSecretsArgs.builder()
///                 .adminAccessTokenVersionName("projects/myProject/secrets/mybbspat/versions/1")
///                 .readAccessTokenVersionName("projects/myProject/secrets/mybbspat/versions/1")
///                 .webhookSecretVersionName("projects/myProject/secrets/mybbspat/versions/1")
///                 .build())
///             .username("test")
///             .apiKey("<api-key>")
///             .connectedRepositories(
///                 BitbucketServerConfigConnectedRepositoryArgs.builder()
///                     .projectKey("DEV")
///                     .repoSlug("repo1")
///                     .build(),
///                 BitbucketServerConfigConnectedRepositoryArgs.builder()
///                     .projectKey("PROD")
///                     .repoSlug("repo1")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bbs-config-with-repos:
///     type: gcp:cloudbuild:BitbucketServerConfig
///     properties:
///       configId: bbs-config
///       location: us-central1
///       hostUri: https://bbs.com
///       secrets:
///         adminAccessTokenVersionName: projects/myProject/secrets/mybbspat/versions/1
///         readAccessTokenVersionName: projects/myProject/secrets/mybbspat/versions/1
///         webhookSecretVersionName: projects/myProject/secrets/mybbspat/versions/1
///       username: test
///       apiKey: <api-key>
///       connectedRepositories:
///         - projectKey: DEV
///           repoSlug: repo1
///         - projectKey: PROD
///           repoSlug: repo1
/// ```
///
/// ### Cloudbuild Bitbucket Server Config Peered Network
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const project = gcp.organizations.getProject({});
/// const servicenetworking = new gcp.projects.Service("servicenetworking", {service: "servicenetworking.googleapis.com"});
/// const vpcNetwork = new gcp.compute.Network("vpc_network", {name: "vpc-network"}, {
///     dependsOn: [servicenetworking],
/// });
/// const privateIpAlloc = new gcp.compute.GlobalAddress("private_ip_alloc", {
///     name: "private-ip-alloc",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 16,
///     network: vpcNetwork.id,
/// });
/// const _default = new gcp.servicenetworking.Connection("default", {
///     network: vpcNetwork.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [privateIpAlloc.name],
/// }, {
///     dependsOn: [servicenetworking],
/// });
/// const bbs_config_with_peered_network = new gcp.cloudbuild.BitbucketServerConfig("bbs-config-with-peered-network", {
///     configId: "bbs-config",
///     location: "us-central1",
///     hostUri: "https://bbs.com",
///     secrets: {
///         adminAccessTokenVersionName: "projects/myProject/secrets/mybbspat/versions/1",
///         readAccessTokenVersionName: "projects/myProject/secrets/mybbspat/versions/1",
///         webhookSecretVersionName: "projects/myProject/secrets/mybbspat/versions/1",
///     },
///     username: "test",
///     apiKey: "<api-key>",
///     peeredNetwork: pulumi.all([vpcNetwork.id, project, project]).apply(([id, project, project1]) => std.replaceOutput({
///         text: id,
///         search: project.name,
///         replace: project1.number,
///     })).apply(invoke => invoke.result),
///     sslCa: `-----BEGIN CERTIFICATE-----
/// -----END CERTIFICATE-----
/// -----BEGIN CERTIFICATE-----
/// -----END CERTIFICATE-----
/// `,
/// }, {
///     dependsOn: [_default],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// project = gcp.organizations.get_project()
/// servicenetworking = gcp.projects.Service("servicenetworking", service="servicenetworking.googleapis.com")
/// vpc_network = gcp.compute.Network("vpc_network", name="vpc-network",
/// opts = pulumi.ResourceOptions(depends_on=[servicenetworking]))
/// private_ip_alloc = gcp.compute.GlobalAddress("private_ip_alloc",
///     name="private-ip-alloc",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=16,
///     network=vpc_network.id)
/// default = gcp.servicenetworking.Connection("default",
///     network=vpc_network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[private_ip_alloc.name],
///     opts = pulumi.ResourceOptions(depends_on=[servicenetworking]))
/// bbs_config_with_peered_network = gcp.cloudbuild.BitbucketServerConfig("bbs-config-with-peered-network",
///     config_id="bbs-config",
///     location="us-central1",
///     host_uri="https://bbs.com",
///     secrets={
///         "admin_access_token_version_name": "projects/myProject/secrets/mybbspat/versions/1",
///         "read_access_token_version_name": "projects/myProject/secrets/mybbspat/versions/1",
///         "webhook_secret_version_name": "projects/myProject/secrets/mybbspat/versions/1",
///     },
///     username="test",
///     api_key="<api-key>",
///     peered_network=vpc_network.id.apply(lambda id: std.replace(text=id,
///         search=project.name,
///         replace=project.number)).apply(lambda invoke: invoke.result),
///     ssl_ca="""-----BEGIN CERTIFICATE-----
/// -----END CERTIFICATE-----
/// -----BEGIN CERTIFICATE-----
/// -----END CERTIFICATE-----
/// """,
///     opts = pulumi.ResourceOptions(depends_on=[default]))
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
///     var servicenetworking = new Gcp.Projects.Service("servicenetworking", new()
///     {
///         ServiceName = "servicenetworking.googleapis.com",
///     });
///
///     var vpcNetwork = new Gcp.Compute.Network("vpc_network", new()
///     {
///         Name = "vpc-network",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             servicenetworking,
///         },
///     });
///
///     var privateIpAlloc = new Gcp.Compute.GlobalAddress("private_ip_alloc", new()
///     {
///         Name = "private-ip-alloc",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 16,
///         Network = vpcNetwork.Id,
///     });
///
///     var @default = new Gcp.ServiceNetworking.Connection("default", new()
///     {
///         Network = vpcNetwork.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             privateIpAlloc.Name,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             servicenetworking,
///         },
///     });
///
///     var bbs_config_with_peered_network = new Gcp.CloudBuild.BitbucketServerConfig("bbs-config-with-peered-network", new()
///     {
///         ConfigId = "bbs-config",
///         Location = "us-central1",
///         HostUri = "https://bbs.com",
///         Secrets = new Gcp.CloudBuild.Inputs.BitbucketServerConfigSecretsArgs
///         {
///             AdminAccessTokenVersionName = "projects/myProject/secrets/mybbspat/versions/1",
///             ReadAccessTokenVersionName = "projects/myProject/secrets/mybbspat/versions/1",
///             WebhookSecretVersionName = "projects/myProject/secrets/mybbspat/versions/1",
///         },
///         Username = "test",
///         ApiKey = "<api-key>",
///         PeeredNetwork = Output.Tuple(vpcNetwork.Id, project, project).Apply(values =>
///         {
///             var id = values.Item1;
///             var project = values.Item2;
///             var project1 = values.Item3;
///             return Std.Replace.Invoke(new()
///             {
///                 Text = id,
///                 Search = project.Apply(getProjectResult => getProjectResult.Name),
///                 Replace = project1.Number,
///             });
///         }).Apply(invoke => invoke.Result),
///         SslCa = @"-----BEGIN CERTIFICATE-----
/// -----END CERTIFICATE-----
/// -----BEGIN CERTIFICATE-----
/// -----END CERTIFICATE-----
/// ",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @default,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// servicenetworking, err := projects.NewService(ctx, "servicenetworking", &projects.ServiceArgs{
/// Service: pulumi.String("servicenetworking.googleapis.com"),
/// })
/// if err != nil {
/// return err
/// }
/// vpcNetwork, err := compute.NewNetwork(ctx, "vpc_network", &compute.NetworkArgs{
/// Name: pulumi.String("vpc-network"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// servicenetworking,
/// }))
/// if err != nil {
/// return err
/// }
/// privateIpAlloc, err := compute.NewGlobalAddress(ctx, "private_ip_alloc", &compute.GlobalAddressArgs{
/// Name: pulumi.String("private-ip-alloc"),
/// Purpose: pulumi.String("VPC_PEERING"),
/// AddressType: pulumi.String("INTERNAL"),
/// PrefixLength: pulumi.Int(16),
/// Network: vpcNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _default, err := servicenetworking.NewConnection(ctx, "default", &servicenetworking.ConnectionArgs{
/// Network: vpcNetwork.ID(),
/// Service: pulumi.String("servicenetworking.googleapis.com"),
/// ReservedPeeringRanges: pulumi.StringArray{
/// privateIpAlloc.Name,
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// servicenetworking,
/// }))
/// if err != nil {
/// return err
/// }
/// invokeReplace, err := std.Replace(ctx, &std.ReplaceArgs{
/// Text: id,
/// Search: project.Name,
/// Replace: project.Number,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = cloudbuild.NewBitbucketServerConfig(ctx, "bbs-config-with-peered-network", &cloudbuild.BitbucketServerConfigArgs{
/// ConfigId: pulumi.String("bbs-config"),
/// Location: pulumi.String("us-central1"),
/// HostUri: pulumi.String("https://bbs.com"),
/// Secrets: &cloudbuild.BitbucketServerConfigSecretsArgs{
/// AdminAccessTokenVersionName: pulumi.String("projects/myProject/secrets/mybbspat/versions/1"),
/// ReadAccessTokenVersionName: pulumi.String("projects/myProject/secrets/mybbspat/versions/1"),
/// WebhookSecretVersionName: pulumi.String("projects/myProject/secrets/mybbspat/versions/1"),
/// },
/// Username: pulumi.String("test"),
/// ApiKey: pulumi.String("<api-key>"),
/// PeeredNetwork: pulumi.String(vpcNetwork.ID().ApplyT(func(id string) (std.ReplaceResult, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(std.ReplaceResultOutput).ApplyT(func(invoke std.ReplaceResult) (*string, error) {
/// return invoke.Result, nil
/// }).(pulumi.StringPtrOutput)),
/// SslCa: pulumi.String("-----BEGIN CERTIFICATE-----\n-----END CERTIFICATE-----\n-----BEGIN CERTIFICATE-----\n-----END CERTIFICATE-----\n"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// _default,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.cloudbuild.BitbucketServerConfig;
/// import com.pulumi.gcp.cloudbuild.BitbucketServerConfigArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.BitbucketServerConfigSecretsArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.ReplaceArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var servicenetworking = new Service("servicenetworking", ServiceArgs.builder()
///             .service("servicenetworking.googleapis.com")
///             .build());
///
///         var vpcNetwork = new Network("vpcNetwork", NetworkArgs.builder()
///             .name("vpc-network")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(servicenetworking)
///                 .build());
///
///         var privateIpAlloc = new GlobalAddress("privateIpAlloc", GlobalAddressArgs.builder()
///             .name("private-ip-alloc")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(16)
///             .network(vpcNetwork.id())
///             .build());
///
///         var default_ = new Connection("default", ConnectionArgs.builder()
///             .network(vpcNetwork.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(privateIpAlloc.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(servicenetworking)
///                 .build());
///
///         var bbs_config_with_peered_network = new BitbucketServerConfig("bbs-config-with-peered-network", BitbucketServerConfigArgs.builder()
///             .configId("bbs-config")
///             .location("us-central1")
///             .hostUri("https://bbs.com")
///             .secrets(BitbucketServerConfigSecretsArgs.builder()
///                 .adminAccessTokenVersionName("projects/myProject/secrets/mybbspat/versions/1")
///                 .readAccessTokenVersionName("projects/myProject/secrets/mybbspat/versions/1")
///                 .webhookSecretVersionName("projects/myProject/secrets/mybbspat/versions/1")
///                 .build())
///             .username("test")
///             .apiKey("<api-key>")
///             .peeredNetwork(vpcNetwork.id().applyValue(_id -> StdFunctions.replace(ReplaceArgs.builder()
///                 .text(_id)
///                 .search(project.name())
///                 .replace(project.number())
///                 .build())).applyValue(_invoke -> _invoke.result()))
///             .sslCa("""
/// -----BEGIN CERTIFICATE-----
/// -----END CERTIFICATE-----
/// -----BEGIN CERTIFICATE-----
/// -----END CERTIFICATE-----
///             """)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(default_)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   servicenetworking:
///     type: gcp:projects:Service
///     properties:
///       service: servicenetworking.googleapis.com
///   vpcNetwork:
///     type: gcp:compute:Network
///     name: vpc_network
///     properties:
///       name: vpc-network
///     options:
///       dependsOn:
///         - ${servicenetworking}
///   privateIpAlloc:
///     type: gcp:compute:GlobalAddress
///     name: private_ip_alloc
///     properties:
///       name: private-ip-alloc
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 16
///       network: ${vpcNetwork.id}
///   default:
///     type: gcp:servicenetworking:Connection
///     properties:
///       network: ${vpcNetwork.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${privateIpAlloc.name}
///     options:
///       dependsOn:
///         - ${servicenetworking}
///   bbs-config-with-peered-network:
///     type: gcp:cloudbuild:BitbucketServerConfig
///     properties:
///       configId: bbs-config
///       location: us-central1
///       hostUri: https://bbs.com
///       secrets:
///         adminAccessTokenVersionName: projects/myProject/secrets/mybbspat/versions/1
///         readAccessTokenVersionName: projects/myProject/secrets/mybbspat/versions/1
///         webhookSecretVersionName: projects/myProject/secrets/mybbspat/versions/1
///       username: test
///       apiKey: <api-key>
///       peeredNetwork:
///         fn::invoke:
///           function: std:replace
///           arguments:
///             text: ${vpcNetwork.id}
///             search: ${project.name}
///             replace: ${project.number}
///           return: result
///       sslCa: |
///         -----BEGIN CERTIFICATE-----
///         -----END CERTIFICATE-----
///         -----BEGIN CERTIFICATE-----
///         -----END CERTIFICATE-----
///     options:
///       dependsOn:
///         - ${default}
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
/// BitbucketServerConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/bitbucketServerConfigs/{{config_id}}`
///
/// * `{{project}}/{{location}}/{{config_id}}`
///
/// * `{{location}}/{{config_id}}`
///
/// When using the `pulumi import` command, BitbucketServerConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudbuild/bitbucketServerConfig:BitbucketServerConfig default projects/{{project}}/locations/{{location}}/bitbucketServerConfigs/{{config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuild/bitbucketServerConfig:BitbucketServerConfig default {{project}}/{{location}}/{{config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuild/bitbucketServerConfig:BitbucketServerConfig default {{location}}/{{config_id}}
/// ```
class BitbucketServerConfig extends pulumi.CustomResource {
  /// Immutable. API Key that will be attached to webhook. Once this field has been set, it cannot be changed.
  /// Changing this field will result in deleting/ recreating the resource.
  late final pulumi.Output<String> apiKey;
  /// The ID to use for the BitbucketServerConfig, which will become the final component of the BitbucketServerConfig's resource name.
  late final pulumi.Output<String> configId;
  /// Connected Bitbucket Server repositories for this config.
  /// Structure is documented below.
  late final pulumi.Output<List<BitbucketServerConfigConnectedRepository>?> connectedRepositories;
  /// Immutable. The URI of the Bitbucket Server host. Once this field has been set, it cannot be changed.
  /// If you need to change it, please create another BitbucketServerConfig.
  late final pulumi.Output<String> hostUri;
  /// The location of this bitbucket server config.
  late final pulumi.Output<String> location;
  /// The resource name for the config.
  late final pulumi.Output<String> name;
  /// The network to be used when reaching out to the Bitbucket Server instance. The VPC network must be enabled for private service connection.
  /// This should be set if the Bitbucket Server instance is hosted on-premises and not reachable by public internet. If this field is left empty,
  /// no network peering will occur and calls to the Bitbucket Server instance will be made over the public internet. Must be in the format
  /// projects/{project}/global/networks/{network}, where {project} is a project number or id and {network} is the name of a VPC network in the project.
  late final pulumi.Output<String?> peeredNetwork;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Secret Manager secrets needed by the config.
  /// Structure is documented below.
  late final pulumi.Output<BitbucketServerConfigSecrets> secrets;
  /// SSL certificate to use for requests to Bitbucket Server. The format should be PEM format but the extension can be one of .pem, .cer, or .crt.
  late final pulumi.Output<String?> sslCa;
  /// Username of the account Cloud Build will use on Bitbucket Server.
  late final pulumi.Output<String> username;
  /// Output only. UUID included in webhook requests. The UUID is used to look up the corresponding config.
  late final pulumi.Output<String> webhookKey;

  /// Creates a new [BitbucketServerConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BitbucketServerConfig]. {@macro pulumi_cloudbuild_bitbucket_server_config_bitbucket_server_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BitbucketServerConfig(
    String name, {
    BitbucketServerConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudbuild/bitbucketServerConfig:BitbucketServerConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiKey = registerOutput<String>('apiKey');
    this.configId = registerOutput<String>('configId');
    this.connectedRepositories = registerOutput<List<BitbucketServerConfigConnectedRepository>?>('connectedRepositories');
    this.hostUri = registerOutput<String>('hostUri');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.peeredNetwork = registerOutput<String?>('peeredNetwork');
    this.project = registerOutput<String>('project');
    this.secrets = registerOutput<BitbucketServerConfigSecrets>('secrets');
    this.sslCa = registerOutput<String?>('sslCa');
    this.username = registerOutput<String>('username');
    this.webhookKey = registerOutput<String>('webhookKey');
  }

  /// Gets an existing [BitbucketServerConfig] resource's state with the given [name] and [id].
  static BitbucketServerConfig get(
    String name,
    pulumi.Input<String> id, {
    BitbucketServerConfigState? state,
  }) {
    return BitbucketServerConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BitbucketServerConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudbuild/bitbucketServerConfig:BitbucketServerConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiKey = registerOutput<String>('apiKey');
    this.configId = registerOutput<String>('configId');
    this.connectedRepositories = registerOutput<List<BitbucketServerConfigConnectedRepository>?>('connectedRepositories');
    this.hostUri = registerOutput<String>('hostUri');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.peeredNetwork = registerOutput<String?>('peeredNetwork');
    this.project = registerOutput<String>('project');
    this.secrets = registerOutput<BitbucketServerConfigSecrets>('secrets');
    this.sslCa = registerOutput<String?>('sslCa');
    this.username = registerOutput<String>('username');
    this.webhookKey = registerOutput<String>('webhookKey');
  }
}
