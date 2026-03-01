import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_repository_link_args.dart';
import 'git_repository_link_state.dart';

/// A git repository link to a parent connection.
///
///
/// To get more information about GitRepositoryLink, see:
///
/// * [API documentation](https://cloud.google.com/developer-connect/docs/api/reference/rest/v1/projects.locations.connections.gitRepositoryLinks)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/developer-connect/docs/overview)
///
/// ## Example Usage
///
/// ### Developer Connect Git Repository Link Github Doc
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
///         members: ["serviceAccount:service-123456789@gcp-sa-devconnect.iam.gserviceaccount.com"],
///     }],
/// });
/// const policy = new gcp.secretmanager.SecretIamPolicy("policy", {
///     secretId: github_token_secret.secretId,
///     policyData: p4sa_secretAccessor.then(p4sa_secretAccessor => p4sa_secretAccessor.policyData),
/// });
/// const my_connection = new gcp.developerconnect.Connection("my-connection", {
///     location: "us-central1",
///     connectionId: "my-connection",
///     githubConfig: {
///         githubApp: "DEVELOPER_CONNECT",
///         appInstallationId: "123123",
///         authorizerCredential: {
///             oauthTokenSecretVersion: github_token_secret_version.id,
///         },
///     },
/// });
/// const my_repository = new gcp.developerconnect.GitRepositoryLink("my-repository", {
///     location: "us-central1",
///     gitRepositoryLinkId: "my-repo",
///     parentConnection: my_connection.connectionId,
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
///     "members": ["serviceAccount:service-123456789@gcp-sa-devconnect.iam.gserviceaccount.com"],
/// }])
/// policy = gcp.secretmanager.SecretIamPolicy("policy",
///     secret_id=github_token_secret.secret_id,
///     policy_data=p4sa_secret_accessor.policy_data)
/// my_connection = gcp.developerconnect.Connection("my-connection",
///     location="us-central1",
///     connection_id="my-connection",
///     github_config={
///         "github_app": "DEVELOPER_CONNECT",
///         "app_installation_id": "123123",
///         "authorizer_credential": {
///             "oauth_token_secret_version": github_token_secret_version.id,
///         },
///     })
/// my_repository = gcp.developerconnect.GitRepositoryLink("my-repository",
///     location="us-central1",
///     git_repository_link_id="my-repo",
///     parent_connection=my_connection.connection_id,
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
///                     "serviceAccount:service-123456789@gcp-sa-devconnect.iam.gserviceaccount.com",
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
///     var my_connection = new Gcp.DeveloperConnect.Connection("my-connection", new()
///     {
///         Location = "us-central1",
///         ConnectionId = "my-connection",
///         GithubConfig = new Gcp.DeveloperConnect.Inputs.ConnectionGithubConfigArgs
///         {
///             GithubApp = "DEVELOPER_CONNECT",
///             AppInstallationId = "123123",
///             AuthorizerCredential = new Gcp.DeveloperConnect.Inputs.ConnectionGithubConfigAuthorizerCredentialArgs
///             {
///                 OauthTokenSecretVersion = github_token_secret_version.Id,
///             },
///         },
///     });
///
///     var my_repository = new Gcp.DeveloperConnect.GitRepositoryLink("my-repository", new()
///     {
///         Location = "us-central1",
///         GitRepositoryLinkId = "my-repo",
///         ParentConnection = my_connection.ConnectionId,
///         RemoteUri = "https://github.com/myuser/myrepo.git",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
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
/// 						"serviceAccount:service-123456789@gcp-sa-devconnect.iam.gserviceaccount.com",
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
/// 		my_connection, err := developerconnect.NewConnection(ctx, "my-connection", &developerconnect.ConnectionArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			ConnectionId: pulumi.String("my-connection"),
/// 			GithubConfig: &developerconnect.ConnectionGithubConfigArgs{
/// 				GithubApp:         pulumi.String("DEVELOPER_CONNECT"),
/// 				AppInstallationId: pulumi.String("123123"),
/// 				AuthorizerCredential: &developerconnect.ConnectionGithubConfigAuthorizerCredentialArgs{
/// 					OauthTokenSecretVersion: github_token_secret_version.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = developerconnect.NewGitRepositoryLink(ctx, "my-repository", &developerconnect.GitRepositoryLinkArgs{
/// 			Location:            pulumi.String("us-central1"),
/// 			GitRepositoryLinkId: pulumi.String("my-repo"),
/// 			ParentConnection:    my_connection.ConnectionId,
/// 			RemoteUri:           "https://github.com/myuser/myrepo.git",
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
/// import com.pulumi.gcp.developerconnect.Connection;
/// import com.pulumi.gcp.developerconnect.ConnectionArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionGithubConfigArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionGithubConfigAuthorizerCredentialArgs;
/// import com.pulumi.gcp.developerconnect.GitRepositoryLink;
/// import com.pulumi.gcp.developerconnect.GitRepositoryLinkArgs;
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
///                 .members("serviceAccount:service-123456789@gcp-sa-devconnect.iam.gserviceaccount.com")
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
///             .connectionId("my-connection")
///             .githubConfig(ConnectionGithubConfigArgs.builder()
///                 .githubApp("DEVELOPER_CONNECT")
///                 .appInstallationId("123123")
///                 .authorizerCredential(ConnectionGithubConfigAuthorizerCredentialArgs.builder()
///                     .oauthTokenSecretVersion(github_token_secret_version.id())
///                     .build())
///                 .build())
///             .build());
///
///         var my_repository = new GitRepositoryLink("my-repository", GitRepositoryLinkArgs.builder()
///             .location("us-central1")
///             .gitRepositoryLinkId("my-repo")
///             .parentConnection(my_connection.connectionId())
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
///     type: gcp:developerconnect:Connection
///     properties:
///       location: us-central1
///       connectionId: my-connection
///       githubConfig:
///         githubApp: DEVELOPER_CONNECT
///         appInstallationId: 123123
///         authorizerCredential:
///           oauthTokenSecretVersion: ${["github-token-secret-version"].id}
///   my-repository:
///     type: gcp:developerconnect:GitRepositoryLink
///     properties:
///       location: us-central1
///       gitRepositoryLinkId: my-repo
///       parentConnection: ${["my-connection"].connectionId}
///       remoteUri: https://github.com/myuser/myrepo.git
/// variables:
///   p4sa-secretAccessor:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/secretmanager.secretAccessor
///             members:
///               - serviceAccount:service-123456789@gcp-sa-devconnect.iam.gserviceaccount.com
/// ```
///
///
/// ## Import
///
/// GitRepositoryLink can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/connections/{{parent_connection}}/gitRepositoryLinks/{{git_repository_link_id}}`
///
/// * `{{project}}/{{location}}/{{parent_connection}}/{{git_repository_link_id}}`
///
/// * `{{location}}/{{parent_connection}}/{{git_repository_link_id}}`
///
/// When using the `pulumi import` command, GitRepositoryLink can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:developerconnect/gitRepositoryLink:GitRepositoryLink default projects/{{project}}/locations/{{location}}/connections/{{parent_connection}}/gitRepositoryLinks/{{git_repository_link_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:developerconnect/gitRepositoryLink:GitRepositoryLink default {{project}}/{{location}}/{{parent_connection}}/{{git_repository_link_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:developerconnect/gitRepositoryLink:GitRepositoryLink default {{location}}/{{parent_connection}}/{{git_repository_link_id}}
/// ```
class GitRepositoryLink extends pulumi.CustomResource {
  /// Optional. Allows clients to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// Required. Git Clone URI.
  late final pulumi.Output<String> cloneUri;
  /// Output only. [Output only] Create timestamp
  late final pulumi.Output<String> createTime;
  /// Output only. [Output only] Delete timestamp
  late final pulumi.Output<String> deleteTime;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Optional. This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  late final pulumi.Output<String?> etag;
  /// Required. The ID to use for the repository, which will become the final component of
  /// the repository's resource name. This ID should be unique in the connection.
  /// Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
  late final pulumi.Output<String> gitRepositoryLinkId;
  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `developerconnect.googleapis.com/GitRepositoryLink`.
  late final pulumi.Output<String> location;
  /// Identifier. Resource name of the repository, in the format
  /// `projects/*/locations/*/connections/*/gitRepositoryLinks/*`.
  late final pulumi.Output<String> name;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `developerconnect.googleapis.com/GitRepositoryLink`.
  late final pulumi.Output<String> parentConnection;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Output only. Set to true when the connection is being set up or updated in the
  /// background.
  late final pulumi.Output<bool> reconciling;
  /// Output only. A system-assigned unique identifier for a the GitRepositoryLink.
  late final pulumi.Output<String> uid;
  /// Output only. [Output only] Update timestamp
  late final pulumi.Output<String> updateTime;

  /// Creates a new [GitRepositoryLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GitRepositoryLink]. {@macro pulumi_developerconnect_git_repository_link_git_repository_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GitRepositoryLink(
    String name, {
    GitRepositoryLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:developerconnect/gitRepositoryLink:GitRepositoryLink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.cloneUri = registerOutput<String>('cloneUri');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String?>('etag');
    this.gitRepositoryLinkId = registerOutput<String>('gitRepositoryLinkId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parentConnection = registerOutput<String>('parentConnection');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [GitRepositoryLink] resource's state with the given [name] and [id].
  static GitRepositoryLink get(
    String name,
    pulumi.Input<String> id, {
    GitRepositoryLinkState? state,
  }) {
    return GitRepositoryLink._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GitRepositoryLink._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:developerconnect/gitRepositoryLink:GitRepositoryLink',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.cloneUri = registerOutput<String>('cloneUri');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String?>('etag');
    this.gitRepositoryLinkId = registerOutput<String>('gitRepositoryLinkId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parentConnection = registerOutput<String>('parentConnection');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
