import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_args.dart';
import 'repository_state.dart';

/// A repository associated to a parent connection.
///
///
/// To get more information about Repository, see:
///
/// * [API documentation](https://cloud.google.com/build/docs/api/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/build/docs)
///
/// ## Example Usage
///
/// ### Cloudbuildv2 Repository Ghe Doc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const private_key_secret = new gcp.secretmanager.Secret("private-key-secret", {
///     secretId: "ghe-pk-secret",
///     replication: {
///         auto: {},
///     },
/// });
/// const private_key_secret_version = new gcp.secretmanager.SecretVersion("private-key-secret-version", {
///     secret: private_key_secret.id,
///     secretData: std.file({
///         input: "private-key.pem",
///     }).then(invoke => invoke.result),
/// });
/// const webhook_secret_secret = new gcp.secretmanager.Secret("webhook-secret-secret", {
///     secretId: "github-token-secret",
///     replication: {
///         auto: {},
///     },
/// });
/// const webhook_secret_secret_version = new gcp.secretmanager.SecretVersion("webhook-secret-secret-version", {
///     secret: webhook_secret_secret.id,
///     secretData: "<webhook-secret-data>",
/// });
/// const p4sa_secretAccessor = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/secretmanager.secretAccessor",
///         members: ["serviceAccount:service-123456789@gcp-sa-cloudbuild.iam.gserviceaccount.com"],
///     }],
/// });
/// const policy_pk = new gcp.secretmanager.SecretIamPolicy("policy-pk", {
///     secretId: private_key_secret.secretId,
///     policyData: p4sa_secretAccessor.then(p4sa_secretAccessor => p4sa_secretAccessor.policyData),
/// });
/// const policy_whs = new gcp.secretmanager.SecretIamPolicy("policy-whs", {
///     secretId: webhook_secret_secret.secretId,
///     policyData: p4sa_secretAccessor.then(p4sa_secretAccessor => p4sa_secretAccessor.policyData),
/// });
/// const my_connection = new gcp.cloudbuildv2.Connection("my-connection", {
///     location: "us-central1",
///     name: "my-terraform-ghe-connection",
///     githubEnterpriseConfig: {
///         hostUri: "https://ghe.com",
///         privateKeySecretVersion: private_key_secret_version.id,
///         webhookSecretSecretVersion: webhook_secret_secret_version.id,
///         appId: 200,
///         appSlug: "gcb-app",
///         appInstallationId: 300,
///     },
/// }, {
///     dependsOn: [
///         policy_pk,
///         policy_whs,
///     ],
/// });
/// const my_repository = new gcp.cloudbuildv2.Repository("my-repository", {
///     name: "my-terraform-ghe-repo",
///     location: "us-central1",
///     parentConnection: my_connection.name,
///     remoteUri: "https://ghe.com/hashicorp/terraform-provider-google.git",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// private_key_secret = gcp.secretmanager.Secret("private-key-secret",
///     secret_id="ghe-pk-secret",
///     replication={
///         "auto": {},
///     })
/// private_key_secret_version = gcp.secretmanager.SecretVersion("private-key-secret-version",
///     secret=private_key_secret.id,
///     secret_data=std.file(input="private-key.pem").result)
/// webhook_secret_secret = gcp.secretmanager.Secret("webhook-secret-secret",
///     secret_id="github-token-secret",
///     replication={
///         "auto": {},
///     })
/// webhook_secret_secret_version = gcp.secretmanager.SecretVersion("webhook-secret-secret-version",
///     secret=webhook_secret_secret.id,
///     secret_data="<webhook-secret-data>")
/// p4sa_secret_accessor = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/secretmanager.secretAccessor",
///     "members": ["serviceAccount:service-123456789@gcp-sa-cloudbuild.iam.gserviceaccount.com"],
/// }])
/// policy_pk = gcp.secretmanager.SecretIamPolicy("policy-pk",
///     secret_id=private_key_secret.secret_id,
///     policy_data=p4sa_secret_accessor.policy_data)
/// policy_whs = gcp.secretmanager.SecretIamPolicy("policy-whs",
///     secret_id=webhook_secret_secret.secret_id,
///     policy_data=p4sa_secret_accessor.policy_data)
/// my_connection = gcp.cloudbuildv2.Connection("my-connection",
///     location="us-central1",
///     name="my-terraform-ghe-connection",
///     github_enterprise_config={
///         "host_uri": "https://ghe.com",
///         "private_key_secret_version": private_key_secret_version.id,
///         "webhook_secret_secret_version": webhook_secret_secret_version.id,
///         "app_id": 200,
///         "app_slug": "gcb-app",
///         "app_installation_id": 300,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             policy_pk,
///             policy_whs,
///         ]))
/// my_repository = gcp.cloudbuildv2.Repository("my-repository",
///     name="my-terraform-ghe-repo",
///     location="us-central1",
///     parent_connection=my_connection.name,
///     remote_uri="https://ghe.com/hashicorp/terraform-provider-google.git")
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
///     var private_key_secret = new Gcp.SecretManager.Secret("private-key-secret", new()
///     {
///         SecretId = "ghe-pk-secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var private_key_secret_version = new Gcp.SecretManager.SecretVersion("private-key-secret-version", new()
///     {
///         Secret = private_key_secret.Id,
///         SecretData = Std.File.Invoke(new()
///         {
///             Input = "private-key.pem",
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var webhook_secret_secret = new Gcp.SecretManager.Secret("webhook-secret-secret", new()
///     {
///         SecretId = "github-token-secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var webhook_secret_secret_version = new Gcp.SecretManager.SecretVersion("webhook-secret-secret-version", new()
///     {
///         Secret = webhook_secret_secret.Id,
///         SecretData = "<webhook-secret-data>",
///     });
///
///     var p4sa_secretAccessor = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/secretmanager.secretAccessor",
///                 Members = new[]
///                 {
///                     "serviceAccount:service-123456789@gcp-sa-cloudbuild.iam.gserviceaccount.com",
///                 },
///             },
///         },
///     });
///
///     var policy_pk = new Gcp.SecretManager.SecretIamPolicy("policy-pk", new()
///     {
///         SecretId = private_key_secret.SecretId,
///         PolicyData = p4sa_secretAccessor.Apply(p4sa_secretAccessor => p4sa_secretAccessor.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData)),
///     });
///
///     var policy_whs = new Gcp.SecretManager.SecretIamPolicy("policy-whs", new()
///     {
///         SecretId = webhook_secret_secret.SecretId,
///         PolicyData = p4sa_secretAccessor.Apply(p4sa_secretAccessor => p4sa_secretAccessor.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData)),
///     });
///
///     var my_connection = new Gcp.CloudBuildV2.Connection("my-connection", new()
///     {
///         Location = "us-central1",
///         Name = "my-terraform-ghe-connection",
///         GithubEnterpriseConfig = new Gcp.CloudBuildV2.Inputs.ConnectionGithubEnterpriseConfigArgs
///         {
///             HostUri = "https://ghe.com",
///             PrivateKeySecretVersion = private_key_secret_version.Id,
///             WebhookSecretSecretVersion = webhook_secret_secret_version.Id,
///             AppId = 200,
///             AppSlug = "gcb-app",
///             AppInstallationId = 300,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             policy_pk,
///             policy_whs,
///         },
///     });
///
///     var my_repository = new Gcp.CloudBuildV2.Repository("my-repository", new()
///     {
///         Name = "my-terraform-ghe-repo",
///         Location = "us-central1",
///         ParentConnection = my_connection.Name,
///         RemoteUri = "https://ghe.com/hashicorp/terraform-provider-google.git",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuildv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		private_key_secret, err := secretmanager.NewSecret(ctx, "private-key-secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("ghe-pk-secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "private-key.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		private_key_secret_version, err := secretmanager.NewSecretVersion(ctx, "private-key-secret-version", &secretmanager.SecretVersionArgs{
/// 			Secret:     private_key_secret.ID().ToIDOutput().ToStringOutput(),
/// 			SecretData: pulumi.String(invokeFile.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		webhook_secret_secret, err := secretmanager.NewSecret(ctx, "webhook-secret-secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("github-token-secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		webhook_secret_secret_version, err := secretmanager.NewSecretVersion(ctx, "webhook-secret-secret-version", &secretmanager.SecretVersionArgs{
/// 			Secret:     webhook_secret_secret.ID().ToIDOutput().ToStringOutput(),
/// 			SecretData: pulumi.String("<webhook-secret-data>"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		p4sa_secretAccessor, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/secretmanager.secretAccessor",
/// 					Members: []string{
/// 						"serviceAccount:service-123456789@gcp-sa-cloudbuild.iam.gserviceaccount.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policy_pk, err := secretmanager.NewSecretIamPolicy(ctx, "policy-pk", &secretmanager.SecretIamPolicyArgs{
/// 			SecretId:   private_key_secret.SecretId,
/// 			PolicyData: pulumi.String(p4sa_secretAccessor.PolicyData),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policy_whs, err := secretmanager.NewSecretIamPolicy(ctx, "policy-whs", &secretmanager.SecretIamPolicyArgs{
/// 			SecretId:   webhook_secret_secret.SecretId,
/// 			PolicyData: pulumi.String(p4sa_secretAccessor.PolicyData),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		my_connection, err := cloudbuildv2.NewConnection(ctx, "my-connection", &cloudbuildv2.ConnectionArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Name:     pulumi.String("my-terraform-ghe-connection"),
/// 			GithubEnterpriseConfig: &cloudbuildv2.ConnectionGithubEnterpriseConfigArgs{
/// 				HostUri:                    pulumi.String("https://ghe.com"),
/// 				PrivateKeySecretVersion:    private_key_secret_version.ID().ToIDOutput().ToStringOutput(),
/// 				WebhookSecretSecretVersion: webhook_secret_secret_version.ID().ToIDOutput().ToStringOutput(),
/// 				AppId:                      pulumi.Int(200),
/// 				AppSlug:                    pulumi.String("gcb-app"),
/// 				AppInstallationId:          pulumi.Int(300),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			policy_pk,
/// 			policy_whs,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudbuildv2.NewRepository(ctx, "my-repository", &cloudbuildv2.RepositoryArgs{
/// 			Name:             pulumi.String("my-terraform-ghe-repo"),
/// 			Location:         pulumi.String("us-central1"),
/// 			ParentConnection: my_connection.Name,
/// 			RemoteUri:        pulumi.String("https://ghe.com/hashicorp/terraform-provider-google.git"),
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
/// data "gcp_organizations_getiampolicy" "p4sa-secretAccessor" {
///   bindings {
///     role    = "roles/secretmanager.secretAccessor"
///     members = ["serviceAccount:service-123456789@gcp-sa-cloudbuild.iam.gserviceaccount.com"]
///   }
/// }
///
/// resource "gcp_secretmanager_secret" "private-key-secret" {
///   secret_id = "ghe-pk-secret"
///   replication = {
///     auto = {}
///   }
/// }
/// resource "gcp_secretmanager_secretversion" "private-key-secret-version" {
///   secret      = gcp_secretmanager_secret.private-key-secret.id
///   secret_data = file("private-key.pem")
/// }
/// resource "gcp_secretmanager_secret" "webhook-secret-secret" {
///   secret_id = "github-token-secret"
///   replication = {
///     auto = {}
///   }
/// }
/// resource "gcp_secretmanager_secretversion" "webhook-secret-secret-version" {
///   secret      = gcp_secretmanager_secret.webhook-secret-secret.id
///   secret_data = "<webhook-secret-data>"
/// }
/// // Here, 123456789 is the Google Cloud project number for the project that contains the connection.
/// resource "gcp_secretmanager_secretiampolicy" "policy-pk" {
///   secret_id   = gcp_secretmanager_secret.private-key-secret.secret_id
///   policy_data = data.gcp_organizations_getiampolicy.p4sa-secretAccessor.policy_data
/// }
/// resource "gcp_secretmanager_secretiampolicy" "policy-whs" {
///   secret_id   = gcp_secretmanager_secret.webhook-secret-secret.secret_id
///   policy_data = data.gcp_organizations_getiampolicy.p4sa-secretAccessor.policy_data
/// }
/// resource "gcp_cloudbuildv2_connection" "my-connection" {
///   depends_on = [gcp_secretmanager_secretiampolicy.policy-pk, gcp_secretmanager_secretiampolicy.policy-whs]
///   location   = "us-central1"
///   name       = "my-terraform-ghe-connection"
///   github_enterprise_config = {
///     host_uri                      = "https://ghe.com"
///     private_key_secret_version    = gcp_secretmanager_secretversion.private-key-secret-version.id
///     webhook_secret_secret_version = gcp_secretmanager_secretversion.webhook-secret-secret-version.id
///     app_id                        = 200
///     app_slug                      = "gcb-app"
///     app_installation_id           = 300
///   }
/// }
/// resource "gcp_cloudbuildv2_repository" "my-repository" {
///   name              = "my-terraform-ghe-repo"
///   location          = "us-central1"
///   parent_connection = gcp_cloudbuildv2_connection.my-connection.name
///   remote_uri        = "https://ghe.com/hashicorp/terraform-provider-google.git"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyBindingArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamPolicy;
/// import com.pulumi.gcp.secretmanager.SecretIamPolicyArgs;
/// import com.pulumi.gcp.cloudbuildv2.Connection;
/// import com.pulumi.gcp.cloudbuildv2.ConnectionArgs;
/// import com.pulumi.gcp.cloudbuildv2.inputs.ConnectionGithubEnterpriseConfigArgs;
/// import com.pulumi.gcp.cloudbuildv2.Repository;
/// import com.pulumi.gcp.cloudbuildv2.RepositoryArgs;
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
///         var private_key_secret = new Secret("private-key-secret", SecretArgs.builder()
///             .secretId("ghe-pk-secret")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var private_key_secret_version = new SecretVersion("private-key-secret-version", SecretVersionArgs.builder()
///             .secret(private_key_secret.id())
///             .secretData(StdFunctions.file(FileArgs.builder()
///                 .input("private-key.pem")
///                 .build()).result())
///             .build());
///
///         var webhook_secret_secret = new Secret("webhook-secret-secret", SecretArgs.builder()
///             .secretId("github-token-secret")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var webhook_secret_secret_version = new SecretVersion("webhook-secret-secret-version", SecretVersionArgs.builder()
///             .secret(webhook_secret_secret.id())
///             .secretData("<webhook-secret-data>")
///             .build());
///
///         final var p4sa-secretAccessor = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/secretmanager.secretAccessor")
///                 .members("serviceAccount:service-123456789@gcp-sa-cloudbuild.iam.gserviceaccount.com")
///                 .build())
///             .build());
///
///         var policy_pk = new SecretIamPolicy("policy-pk", SecretIamPolicyArgs.builder()
///             .secretId(private_key_secret.secretId())
///             .policyData(p4sa_secretAccessor.policyData())
///             .build());
///
///         var policy_whs = new SecretIamPolicy("policy-whs", SecretIamPolicyArgs.builder()
///             .secretId(webhook_secret_secret.secretId())
///             .policyData(p4sa_secretAccessor.policyData())
///             .build());
///
///         var my_connection = new Connection("my-connection", ConnectionArgs.builder()
///             .location("us-central1")
///             .name("my-terraform-ghe-connection")
///             .githubEnterpriseConfig(ConnectionGithubEnterpriseConfigArgs.builder()
///                 .hostUri("https://ghe.com")
///                 .privateKeySecretVersion(private_key_secret_version.id())
///                 .webhookSecretSecretVersion(webhook_secret_secret_version.id())
///                 .appId(200)
///                 .appSlug("gcb-app")
///                 .appInstallationId(300)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     policy_pk,
///                     policy_whs)
///                 .build());
///
///         var my_repository = new Repository("my-repository", RepositoryArgs.builder()
///             .name("my-terraform-ghe-repo")
///             .location("us-central1")
///             .parentConnection(my_connection.name())
///             .remoteUri("https://ghe.com/hashicorp/terraform-provider-google.git")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   private-key-secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: ghe-pk-secret
///       replication:
///         auto: {}
///   private-key-secret-version:
///     type: gcp:secretmanager:SecretVersion
///     properties:
///       secret: ${["private-key-secret"].id}
///       secretData:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: private-key.pem
///           return: result
///   webhook-secret-secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: github-token-secret
///       replication:
///         auto: {}
///   webhook-secret-secret-version:
///     type: gcp:secretmanager:SecretVersion
///     properties:
///       secret: ${["webhook-secret-secret"].id}
///       secretData: <webhook-secret-data>
///   policy-pk:
///     type: gcp:secretmanager:SecretIamPolicy
///     properties:
///       secretId: ${["private-key-secret"].secretId}
///       policyData: ${["p4sa-secretAccessor"].policyData}
///   policy-whs:
///     type: gcp:secretmanager:SecretIamPolicy
///     properties:
///       secretId: ${["webhook-secret-secret"].secretId}
///       policyData: ${["p4sa-secretAccessor"].policyData}
///   my-connection:
///     type: gcp:cloudbuildv2:Connection
///     properties:
///       location: us-central1
///       name: my-terraform-ghe-connection
///       githubEnterpriseConfig:
///         hostUri: https://ghe.com
///         privateKeySecretVersion: ${["private-key-secret-version"].id}
///         webhookSecretSecretVersion: ${["webhook-secret-secret-version"].id}
///         appId: 200
///         appSlug: gcb-app
///         appInstallationId: 300
///     options:
///       dependsOn:
///         - ${["policy-pk"]}
///         - ${["policy-whs"]}
///   my-repository:
///     type: gcp:cloudbuildv2:Repository
///     properties:
///       name: my-terraform-ghe-repo
///       location: us-central1
///       parentConnection: ${["my-connection"].name}
///       remoteUri: https://ghe.com/hashicorp/terraform-provider-google.git
/// variables:
///   p4sa-secretAccessor:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/secretmanager.secretAccessor
///             members:
///               - serviceAccount:service-123456789@gcp-sa-cloudbuild.iam.gserviceaccount.com
/// ```
///
/// ### Cloudbuildv2 Repository Github Doc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const github_token_secret = new gcp.secretmanager.Secret("github-token-secret", {
///     secretId: "github-token-secret",
///     replication: {
///         auto: {},
///     },
/// });
/// const github_token_secret_version = new gcp.secretmanager.SecretVersion("github-token-secret-version", {
///     secret: github_token_secret.id,
///     secretData: std.file({
///         input: "my-github-token.txt",
///     }).then(invoke => invoke.result),
/// });
/// const p4sa_secretAccessor = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/secretmanager.secretAccessor",
///         members: ["serviceAccount:service-123456789@gcp-sa-cloudbuild.iam.gserviceaccount.com"],
///     }],
/// });
/// const policy = new gcp.secretmanager.SecretIamPolicy("policy", {
///     secretId: github_token_secret.secretId,
///     policyData: p4sa_secretAccessor.then(p4sa_secretAccessor => p4sa_secretAccessor.policyData),
/// });
/// const my_connection = new gcp.cloudbuildv2.Connection("my-connection", {
///     location: "us-central1",
///     name: "my-connection",
///     githubConfig: {
///         appInstallationId: 123123,
///         authorizerCredential: {
///             oauthTokenSecretVersion: github_token_secret_version.id,
///         },
///     },
/// });
/// const my_repository = new gcp.cloudbuildv2.Repository("my-repository", {
///     location: "us-central1",
///     name: "my-repo",
///     parentConnection: my_connection.name,
///     remoteUri: "https://github.com/myuser/myrepo.git",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// github_token_secret = gcp.secretmanager.Secret("github-token-secret",
///     secret_id="github-token-secret",
///     replication={
///         "auto": {},
///     })
/// github_token_secret_version = gcp.secretmanager.SecretVersion("github-token-secret-version",
///     secret=github_token_secret.id,
///     secret_data=std.file(input="my-github-token.txt").result)
/// p4sa_secret_accessor = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/secretmanager.secretAccessor",
///     "members": ["serviceAccount:service-123456789@gcp-sa-cloudbuild.iam.gserviceaccount.com"],
/// }])
/// policy = gcp.secretmanager.SecretIamPolicy("policy",
///     secret_id=github_token_secret.secret_id,
///     policy_data=p4sa_secret_accessor.policy_data)
/// my_connection = gcp.cloudbuildv2.Connection("my-connection",
///     location="us-central1",
///     name="my-connection",
///     github_config={
///         "app_installation_id": 123123,
///         "authorizer_credential": {
///             "oauth_token_secret_version": github_token_secret_version.id,
///         },
///     })
/// my_repository = gcp.cloudbuildv2.Repository("my-repository",
///     location="us-central1",
///     name="my-repo",
///     parent_connection=my_connection.name,
///     remote_uri="https://github.com/myuser/myrepo.git")
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
///     var github_token_secret = new Gcp.SecretManager.Secret("github-token-secret", new()
///     {
///         SecretId = "github-token-secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var github_token_secret_version = new Gcp.SecretManager.SecretVersion("github-token-secret-version", new()
///     {
///         Secret = github_token_secret.Id,
///         SecretData = Std.File.Invoke(new()
///         {
///             Input = "my-github-token.txt",
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var p4sa_secretAccessor = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/secretmanager.secretAccessor",
///                 Members = new[]
///                 {
///                     "serviceAccount:service-123456789@gcp-sa-cloudbuild.iam.gserviceaccount.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.SecretManager.SecretIamPolicy("policy", new()
///     {
///         SecretId = github_token_secret.SecretId,
///         PolicyData = p4sa_secretAccessor.Apply(p4sa_secretAccessor => p4sa_secretAccessor.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData)),
///     });
///
///     var my_connection = new Gcp.CloudBuildV2.Connection("my-connection", new()
///     {
///         Location = "us-central1",
///         Name = "my-connection",
///         GithubConfig = new Gcp.CloudBuildV2.Inputs.ConnectionGithubConfigArgs
///         {
///             AppInstallationId = 123123,
///             AuthorizerCredential = new Gcp.CloudBuildV2.Inputs.ConnectionGithubConfigAuthorizerCredentialArgs
///             {
///                 OauthTokenSecretVersion = github_token_secret_version.Id,
///             },
///         },
///     });
///
///     var my_repository = new Gcp.CloudBuildV2.Repository("my-repository", new()
///     {
///         Location = "us-central1",
///         Name = "my-repo",
///         ParentConnection = my_connection.Name,
///         RemoteUri = "https://github.com/myuser/myrepo.git",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuildv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		github_token_secret, err := secretmanager.NewSecret(ctx, "github-token-secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("github-token-secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "my-github-token.txt",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		github_token_secret_version, err := secretmanager.NewSecretVersion(ctx, "github-token-secret-version", &secretmanager.SecretVersionArgs{
/// 			Secret:     github_token_secret.ID().ToIDOutput().ToStringOutput(),
/// 			SecretData: pulumi.String(invokeFile.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		p4sa_secretAccessor, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/secretmanager.secretAccessor",
/// 					Members: []string{
/// 						"serviceAccount:service-123456789@gcp-sa-cloudbuild.iam.gserviceaccount.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretIamPolicy(ctx, "policy", &secretmanager.SecretIamPolicyArgs{
/// 			SecretId:   github_token_secret.SecretId,
/// 			PolicyData: pulumi.String(p4sa_secretAccessor.PolicyData),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		my_connection, err := cloudbuildv2.NewConnection(ctx, "my-connection", &cloudbuildv2.ConnectionArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Name:     pulumi.String("my-connection"),
/// 			GithubConfig: &cloudbuildv2.ConnectionGithubConfigArgs{
/// 				AppInstallationId: pulumi.Int(123123),
/// 				AuthorizerCredential: &cloudbuildv2.ConnectionGithubConfigAuthorizerCredentialArgs{
/// 					OauthTokenSecretVersion: github_token_secret_version.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudbuildv2.NewRepository(ctx, "my-repository", &cloudbuildv2.RepositoryArgs{
/// 			Location:         pulumi.String("us-central1"),
/// 			Name:             pulumi.String("my-repo"),
/// 			ParentConnection: my_connection.Name,
/// 			RemoteUri:        pulumi.String("https://github.com/myuser/myrepo.git"),
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
/// data "gcp_organizations_getiampolicy" "p4sa-secretAccessor" {
///   bindings {
///     role    = "roles/secretmanager.secretAccessor"
///     members = ["serviceAccount:service-123456789@gcp-sa-cloudbuild.iam.gserviceaccount.com"]
///   }
/// }
///
/// resource "gcp_secretmanager_secret" "github-token-secret" {
///   secret_id = "github-token-secret"
///   replication = {
///     auto = {}
///   }
/// }
/// resource "gcp_secretmanager_secretversion" "github-token-secret-version" {
///   secret      = gcp_secretmanager_secret.github-token-secret.id
///   secret_data = file("my-github-token.txt")
/// }
/// // Here, 123456789 is the Google Cloud project number for the project that contains the connection.
/// resource "gcp_secretmanager_secretiampolicy" "policy" {
///   secret_id   = gcp_secretmanager_secret.github-token-secret.secret_id
///   policy_data = data.gcp_organizations_getiampolicy.p4sa-secretAccessor.policy_data
/// }
/// resource "gcp_cloudbuildv2_connection" "my-connection" {
///   location = "us-central1"
///   name     = "my-connection"
///   github_config = {
///     app_installation_id = 123123
///     authorizer_credential = {
///       oauth_token_secret_version = gcp_secretmanager_secretversion.github-token-secret-version.id
///     }
///   }
/// }
/// resource "gcp_cloudbuildv2_repository" "my-repository" {
///   location          = "us-central1"
///   name              = "my-repo"
///   parent_connection = gcp_cloudbuildv2_connection.my-connection.name
///   remote_uri        = "https://github.com/myuser/myrepo.git"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyBindingArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamPolicy;
/// import com.pulumi.gcp.secretmanager.SecretIamPolicyArgs;
/// import com.pulumi.gcp.cloudbuildv2.Connection;
/// import com.pulumi.gcp.cloudbuildv2.ConnectionArgs;
/// import com.pulumi.gcp.cloudbuildv2.inputs.ConnectionGithubConfigArgs;
/// import com.pulumi.gcp.cloudbuildv2.inputs.ConnectionGithubConfigAuthorizerCredentialArgs;
/// import com.pulumi.gcp.cloudbuildv2.Repository;
/// import com.pulumi.gcp.cloudbuildv2.RepositoryArgs;
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
///         var github_token_secret = new Secret("github-token-secret", SecretArgs.builder()
///             .secretId("github-token-secret")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var github_token_secret_version = new SecretVersion("github-token-secret-version", SecretVersionArgs.builder()
///             .secret(github_token_secret.id())
///             .secretData(StdFunctions.file(FileArgs.builder()
///                 .input("my-github-token.txt")
///                 .build()).result())
///             .build());
///
///         final var p4sa-secretAccessor = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/secretmanager.secretAccessor")
///                 .members("serviceAccount:service-123456789@gcp-sa-cloudbuild.iam.gserviceaccount.com")
///                 .build())
///             .build());
///
///         var policy = new SecretIamPolicy("policy", SecretIamPolicyArgs.builder()
///             .secretId(github_token_secret.secretId())
///             .policyData(p4sa_secretAccessor.policyData())
///             .build());
///
///         var my_connection = new Connection("my-connection", ConnectionArgs.builder()
///             .location("us-central1")
///             .name("my-connection")
///             .githubConfig(ConnectionGithubConfigArgs.builder()
///                 .appInstallationId(123123)
///                 .authorizerCredential(ConnectionGithubConfigAuthorizerCredentialArgs.builder()
///                     .oauthTokenSecretVersion(github_token_secret_version.id())
///                     .build())
///                 .build())
///             .build());
///
///         var my_repository = new Repository("my-repository", RepositoryArgs.builder()
///             .location("us-central1")
///             .name("my-repo")
///             .parentConnection(my_connection.name())
///             .remoteUri("https://github.com/myuser/myrepo.git")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   github-token-secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: github-token-secret
///       replication:
///         auto: {}
///   github-token-secret-version:
///     type: gcp:secretmanager:SecretVersion
///     properties:
///       secret: ${["github-token-secret"].id}
///       secretData:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: my-github-token.txt
///           return: result
///   policy:
///     type: gcp:secretmanager:SecretIamPolicy
///     properties:
///       secretId: ${["github-token-secret"].secretId}
///       policyData: ${["p4sa-secretAccessor"].policyData}
///   my-connection:
///     type: gcp:cloudbuildv2:Connection
///     properties:
///       location: us-central1
///       name: my-connection
///       githubConfig:
///         appInstallationId: 123123
///         authorizerCredential:
///           oauthTokenSecretVersion: ${["github-token-secret-version"].id}
///   my-repository:
///     type: gcp:cloudbuildv2:Repository
///     properties:
///       location: us-central1
///       name: my-repo
///       parentConnection: ${["my-connection"].name}
///       remoteUri: https://github.com/myuser/myrepo.git
/// variables:
///   p4sa-secretAccessor:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/secretmanager.secretAccessor
///             members:
///               - serviceAccount:service-123456789@gcp-sa-cloudbuild.iam.gserviceaccount.com
/// ```
///
///
/// ## Import
///
/// Repository can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/connections/{{parent_connection}}/repositories/{{name}}`
/// * `{{project}}/{{location}}/{{parent_connection}}/{{name}}`
/// * `{{location}}/{{parent_connection}}/{{name}}`
///
///
/// When using the `pulumi import` command, Repository can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudbuildv2/repository:Repository default projects/{{project}}/locations/{{location}}/connections/{{parent_connection}}/repositories/{{name}}
/// $ pulumi import gcp:cloudbuildv2/repository:Repository default {{project}}/{{location}}/{{parent_connection}}/{{name}}
/// $ pulumi import gcp:cloudbuildv2/repository:Repository default {{location}}/{{parent_connection}}/{{name}}
/// ```
class Repository extends pulumi.CustomResource {
  /// Allows clients to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// Output only. Server assigned timestamp for when the connection was created.
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
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// Name of the repository.
  late final pulumi.Output<String> name;
  /// The connection for the resource
  late final pulumi.Output<String> parentConnection;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Required. Git Clone HTTPS URI.
  late final pulumi.Output<String> remoteUri;
  /// Output only. Server assigned timestamp for when the connection was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Repository].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Repository]. {@macro pulumi_cloudbuildv2_repository_repository_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Repository(
    String name, {
    RepositoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudbuildv2/repository:Repository',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parentConnection = registerOutput<String>('parentConnection');
    project = registerOutput<String>('project');
    remoteUri = registerOutput<String>('remoteUri');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Repository] resource's state with the given [name] and [id].
  static Repository get(
    String name,
    pulumi.Input<String> id, {
    RepositoryState? state,
  }) {
    return Repository._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Repository._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudbuildv2/repository:Repository',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parentConnection = registerOutput<String>('parentConnection');
    project = registerOutput<String>('project');
    remoteUri = registerOutput<String>('remoteUri');
    updateTime = registerOutput<String>('updateTime');
  }
}
