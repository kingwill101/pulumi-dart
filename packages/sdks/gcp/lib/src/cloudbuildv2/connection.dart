import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'connection_bitbucket_cloud_config.dart';
import 'connection_bitbucket_data_center_config.dart';
import 'connection_github_config.dart';
import 'connection_github_enterprise_config.dart';
import 'connection_gitlab_config.dart';
import 'connection_state.dart';

/// A connection to a SCM like GitHub, GitHub Enterprise, Bitbucket Data Center/Cloud or GitLab.
///
///
/// To get more information about Connection, see:
///
/// * [API documentation](https://cloud.google.com/build/docs/api/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/build/docs)
///
/// ## Example Usage
///
/// ### Cloudbuildv2 Connection
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_connection = new gcp.cloudbuildv2.Connection("my-connection", {
///     location: "us-central1",
///     name: "tf-test-connection",
///     githubConfig: {
///         appInstallationId: 0,
///         authorizerCredential: {
///             oauthTokenSecretVersion: "projects/gcb-terraform-creds/secrets/github-pat/versions/1",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_connection = gcp.cloudbuildv2.Connection("my-connection",
///     location="us-central1",
///     name="tf-test-connection",
///     github_config={
///         "app_installation_id": 0,
///         "authorizer_credential": {
///             "oauth_token_secret_version": "projects/gcb-terraform-creds/secrets/github-pat/versions/1",
///         },
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
///     var my_connection = new Gcp.CloudBuildV2.Connection("my-connection", new()
///     {
///         Location = "us-central1",
///         Name = "tf-test-connection",
///         GithubConfig = new Gcp.CloudBuildV2.Inputs.ConnectionGithubConfigArgs
///         {
///             AppInstallationId = 0,
///             AuthorizerCredential = new Gcp.CloudBuildV2.Inputs.ConnectionGithubConfigAuthorizerCredentialArgs
///             {
///                 OauthTokenSecretVersion = "projects/gcb-terraform-creds/secrets/github-pat/versions/1",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuildv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudbuildv2.NewConnection(ctx, "my-connection", &cloudbuildv2.ConnectionArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Name:     pulumi.String("tf-test-connection"),
/// 			GithubConfig: &cloudbuildv2.ConnectionGithubConfigArgs{
/// 				AppInstallationId: pulumi.Int(0),
/// 				AuthorizerCredential: &cloudbuildv2.ConnectionGithubConfigAuthorizerCredentialArgs{
/// 					OauthTokenSecretVersion: pulumi.String("projects/gcb-terraform-creds/secrets/github-pat/versions/1"),
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
/// import com.pulumi.gcp.cloudbuildv2.Connection;
/// import com.pulumi.gcp.cloudbuildv2.ConnectionArgs;
/// import com.pulumi.gcp.cloudbuildv2.inputs.ConnectionGithubConfigArgs;
/// import com.pulumi.gcp.cloudbuildv2.inputs.ConnectionGithubConfigAuthorizerCredentialArgs;
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
///         var my_connection = new Connection("my-connection", ConnectionArgs.builder()
///             .location("us-central1")
///             .name("tf-test-connection")
///             .githubConfig(ConnectionGithubConfigArgs.builder()
///                 .appInstallationId(0)
///                 .authorizerCredential(ConnectionGithubConfigAuthorizerCredentialArgs.builder()
///                     .oauthTokenSecretVersion("projects/gcb-terraform-creds/secrets/github-pat/versions/1")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-connection:
///     type: gcp:cloudbuildv2:Connection
///     properties:
///       location: us-central1
///       name: tf-test-connection
///       githubConfig:
///         appInstallationId: 0
///         authorizerCredential:
///           oauthTokenSecretVersion: projects/gcb-terraform-creds/secrets/github-pat/versions/1
/// ```
///
/// ### Cloudbuildv2 Connection Ghe
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
/// 			Secret:     private_key_secret.ID(),
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
/// 			Secret:     webhook_secret_secret.ID(),
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
/// 		_, err = cloudbuildv2.NewConnection(ctx, "my-connection", &cloudbuildv2.ConnectionArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Name:     pulumi.String("my-terraform-ghe-connection"),
/// 			GithubEnterpriseConfig: &cloudbuildv2.ConnectionGithubEnterpriseConfigArgs{
/// 				HostUri:                    pulumi.String("https://ghe.com"),
/// 				PrivateKeySecretVersion:    private_key_secret_version.ID(),
/// 				WebhookSecretSecretVersion: webhook_secret_secret_version.ID(),
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
/// import com.pulumi.gcp.secretmanager.SecretIamPolicy;
/// import com.pulumi.gcp.secretmanager.SecretIamPolicyArgs;
/// import com.pulumi.gcp.cloudbuildv2.Connection;
/// import com.pulumi.gcp.cloudbuildv2.ConnectionArgs;
/// import com.pulumi.gcp.cloudbuildv2.inputs.ConnectionGithubEnterpriseConfigArgs;
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
/// ### Cloudbuildv2 Connection Github
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
/// 			Secret:     github_token_secret.ID(),
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
/// 		_, err = cloudbuildv2.NewConnection(ctx, "my-connection", &cloudbuildv2.ConnectionArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Name:     pulumi.String("my-connection"),
/// 			GithubConfig: &cloudbuildv2.ConnectionGithubConfigArgs{
/// 				AppInstallationId: pulumi.Int(123123),
/// 				AuthorizerCredential: &cloudbuildv2.ConnectionGithubConfigAuthorizerCredentialArgs{
/// 					OauthTokenSecretVersion: github_token_secret_version.ID(),
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
/// import com.pulumi.gcp.secretmanager.SecretIamPolicy;
/// import com.pulumi.gcp.secretmanager.SecretIamPolicyArgs;
/// import com.pulumi.gcp.cloudbuildv2.Connection;
/// import com.pulumi.gcp.cloudbuildv2.ConnectionArgs;
/// import com.pulumi.gcp.cloudbuildv2.inputs.ConnectionGithubConfigArgs;
/// import com.pulumi.gcp.cloudbuildv2.inputs.ConnectionGithubConfigAuthorizerCredentialArgs;
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
/// Connection can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/connections/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Connection can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudbuildv2/connection:Connection default projects/{{project}}/locations/{{location}}/connections/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuildv2/connection:Connection default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuildv2/connection:Connection default {{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuildv2/connection:Connection default {{name}}
/// ```
class Connection extends pulumi.CustomResource {
  /// Allows clients to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Configuration for connections to Bitbucket Cloud.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionBitbucketCloudConfig?>
  bitbucketCloudConfig;

  /// Configuration for connections to Bitbucket Data Center.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionBitbucketDataCenterConfig?>
  bitbucketDataCenterConfig;

  /// Output only. Server assigned timestamp for when the connection was created.
  late final pulumi.Output<String> createTime;

  /// If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled.
  late final pulumi.Output<bool?> disabled;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Configuration for connections to github.com.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionGithubConfig?> githubConfig;

  /// Configuration for connections to an instance of GitHub Enterprise.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionGithubEnterpriseConfig?>
  githubEnterpriseConfig;

  /// Configuration for connections to gitlab.com or an instance of GitLab Enterprise.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionGitlabConfig?> gitlabConfig;

  /// Output only. Installation state of the Connection.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> installationStates;

  /// The location for the resource
  late final pulumi.Output<String> location;

  /// Immutable. The resource name of the connection.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Output only. Set to true when the connection is being set up or updated in the background.
  late final pulumi.Output<bool> reconciling;

  /// Output only. Server assigned timestamp for when the connection was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_cloudbuildv2_connection_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:cloudbuildv2/connection:Connection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    bitbucketCloudConfig = registerOutput<ConnectionBitbucketCloudConfig?>(
      'bitbucketCloudConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConnectionBitbucketCloudConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    bitbucketDataCenterConfig =
        registerOutput<ConnectionBitbucketDataCenterConfig?>(
          'bitbucketDataCenterConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ConnectionBitbucketDataCenterConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    createTime = registerOutput<String>('createTime');
    disabled = registerOutput<bool?>('disabled');
    effectiveAnnotations = registerOutput<Map<String, String>>(
      'effectiveAnnotations',
    );
    etag = registerOutput<String>('etag');
    githubConfig = registerOutput<ConnectionGithubConfig?>(
      'githubConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConnectionGithubConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    githubEnterpriseConfig = registerOutput<ConnectionGithubEnterpriseConfig?>(
      'githubEnterpriseConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConnectionGithubEnterpriseConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    gitlabConfig = registerOutput<ConnectionGitlabConfig?>(
      'gitlabConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConnectionGitlabConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    installationStates = registerOutput<List<Map<String, dynamic>>>(
      'installationStates',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    reconciling = registerOutput<bool>('reconciling');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Connection] resource's state with the given [name] and [id].
  static Connection get(
    String name,
    pulumi.Input<String> id, {
    ConnectionState? state,
  }) {
    return Connection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Connection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:cloudbuildv2/connection:Connection',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    bitbucketCloudConfig = registerOutput<ConnectionBitbucketCloudConfig?>(
      'bitbucketCloudConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConnectionBitbucketCloudConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    bitbucketDataCenterConfig =
        registerOutput<ConnectionBitbucketDataCenterConfig?>(
          'bitbucketDataCenterConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ConnectionBitbucketDataCenterConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    createTime = registerOutput<String>('createTime');
    disabled = registerOutput<bool?>('disabled');
    effectiveAnnotations = registerOutput<Map<String, String>>(
      'effectiveAnnotations',
    );
    etag = registerOutput<String>('etag');
    githubConfig = registerOutput<ConnectionGithubConfig?>(
      'githubConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConnectionGithubConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    githubEnterpriseConfig = registerOutput<ConnectionGithubEnterpriseConfig?>(
      'githubEnterpriseConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConnectionGithubEnterpriseConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    gitlabConfig = registerOutput<ConnectionGitlabConfig?>(
      'gitlabConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConnectionGitlabConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    installationStates = registerOutput<List<Map<String, dynamic>>>(
      'installationStates',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    reconciling = registerOutput<bool>('reconciling');
    updateTime = registerOutput<String>('updateTime');
  }
}
