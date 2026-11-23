import 'package:pulumi/pulumi.dart' as pulumi;
import 'hook_args.dart';
import 'hook_push_option.dart';
import 'hook_state.dart';

/// Hook is a user-defined HTTP callback triggered by an event.
///
///
/// To get more information about Hook, see:
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/secure-source-manager/docs/overview)
///
///
///
///
/// ## Example Usage
///
/// ### Secure Source Manager Hook Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.securesourcemanager.Instance("instance", {
///     location: "asia-east1",
///     instanceId: "my-basic-instance",
///     deletionPolicy: "PREVENT",
/// });
/// const repository = new gcp.securesourcemanager.Repository("repository", {
///     repositoryId: "my-basic-repository",
///     location: instance.location,
///     instance: instance.name,
///     deletionPolicy: "PREVENT",
/// });
/// const _default = new gcp.securesourcemanager.Hook("default", {
///     hookId: "my-basic-hook",
///     repositoryId: repository.repositoryId,
///     location: repository.location,
///     targetUri: "https://www.example.com",
///     events: ["PUSH"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.securesourcemanager.Instance("instance",
///     location="asia-east1",
///     instance_id="my-basic-instance",
///     deletion_policy="PREVENT")
/// repository = gcp.securesourcemanager.Repository("repository",
///     repository_id="my-basic-repository",
///     location=instance.location,
///     instance=instance.name,
///     deletion_policy="PREVENT")
/// default = gcp.securesourcemanager.Hook("default",
///     hook_id="my-basic-hook",
///     repository_id=repository.repository_id,
///     location=repository.location,
///     target_uri="https://www.example.com",
///     events=["PUSH"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.SecureSourceManager.Instance("instance", new()
///     {
///         Location = "asia-east1",
///         InstanceId = "my-basic-instance",
///         DeletionPolicy = "PREVENT",
///     });
///
///     var repository = new Gcp.SecureSourceManager.Repository("repository", new()
///     {
///         RepositoryId = "my-basic-repository",
///         Location = instance.Location,
///         Instance = instance.Name,
///         DeletionPolicy = "PREVENT",
///     });
///
///     var @default = new Gcp.SecureSourceManager.Hook("default", new()
///     {
///         HookId = "my-basic-hook",
///         RepositoryId = repository.RepositoryId,
///         Location = repository.Location,
///         TargetUri = "https://www.example.com",
///         Events = new[]
///         {
///             "PUSH",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := securesourcemanager.NewInstance(ctx, "instance", &securesourcemanager.InstanceArgs{
/// 			Location:       pulumi.String("asia-east1"),
/// 			InstanceId:     pulumi.String("my-basic-instance"),
/// 			DeletionPolicy: pulumi.String("PREVENT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		repository, err := securesourcemanager.NewRepository(ctx, "repository", &securesourcemanager.RepositoryArgs{
/// 			RepositoryId:   pulumi.String("my-basic-repository"),
/// 			Location:       instance.Location,
/// 			Instance:       instance.Name,
/// 			DeletionPolicy: pulumi.String("PREVENT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securesourcemanager.NewHook(ctx, "default", &securesourcemanager.HookArgs{
/// 			HookId:       pulumi.String("my-basic-hook"),
/// 			RepositoryId: repository.RepositoryId,
/// 			Location:     repository.Location,
/// 			TargetUri:    pulumi.String("https://www.example.com"),
/// 			Events: pulumi.StringArray{
/// 				pulumi.String("PUSH"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_securesourcemanager_instance" "instance" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location        = "asia-east1"
///   instance_id     = "my-basic-instance"
///   deletion_policy = "PREVENT"
/// }
/// resource "gcp_securesourcemanager_repository" "repository" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   repository_id   = "my-basic-repository"
///   location        = gcp_securesourcemanager_instance.instance.location
///   instance        = gcp_securesourcemanager_instance.instance.name
///   deletion_policy = "PREVENT"
/// }
/// resource "gcp_securesourcemanager_hook" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   hook_id       = "my-basic-hook"
///   repository_id = gcp_securesourcemanager_repository.repository.repository_id
///   location      = gcp_securesourcemanager_repository.repository.location
///   target_uri    = "https://www.example.com"
///   events        = ["PUSH"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.securesourcemanager.Instance;
/// import com.pulumi.gcp.securesourcemanager.InstanceArgs;
/// import com.pulumi.gcp.securesourcemanager.Repository;
/// import com.pulumi.gcp.securesourcemanager.RepositoryArgs;
/// import com.pulumi.gcp.securesourcemanager.Hook;
/// import com.pulumi.gcp.securesourcemanager.HookArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .location("asia-east1")
///             .instanceId("my-basic-instance")
///             .deletionPolicy("PREVENT")
///             .build());
///
///         var repository = new Repository("repository", RepositoryArgs.builder()
///             .repositoryId("my-basic-repository")
///             .location(instance.location())
///             .instance(instance.name())
///             .deletionPolicy("PREVENT")
///             .build());
///
///         var default_ = new Hook("default", HookArgs.builder()
///             .hookId("my-basic-hook")
///             .repositoryId(repository.repositoryId())
///             .location(repository.location())
///             .targetUri("https://www.example.com")
///             .events("PUSH")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:securesourcemanager:Instance
///     properties:
///       location: asia-east1
///       instanceId: my-basic-instance
///       deletionPolicy: PREVENT
///   repository:
///     type: gcp:securesourcemanager:Repository
///     properties:
///       repositoryId: my-basic-repository
///       location: ${instance.location}
///       instance: ${instance.name}
///       deletionPolicy: PREVENT
///   default:
///     type: gcp:securesourcemanager:Hook
///     properties:
///       hookId: my-basic-hook
///       repositoryId: ${repository.repositoryId}
///       location: ${repository.location}
///       targetUri: https://www.example.com
///       events:
///         - PUSH
/// ```
///
///
/// ### Secure Source Manager Hook With Fields
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.securesourcemanager.Instance("instance", {
///     location: "asia-east1",
///     instanceId: "my-basic-instance",
///     deletionPolicy: "PREVENT",
/// });
/// const sa = new gcp.serviceaccount.Account("sa", {
///     accountId: "my-basic-sa",
///     displayName: "Test Service Account",
/// });
/// const repository = new gcp.securesourcemanager.Repository("repository", {
///     repositoryId: "my-basic-repository",
///     instance: instance.name,
///     location: instance.location,
///     serviceAccount: sa.email,
///     deletionPolicy: "PREVENT",
/// });
/// const _default = new gcp.securesourcemanager.Hook("default", {
///     hookId: "my-basic-hook",
///     location: repository.location,
///     repositoryId: repository.repositoryId,
///     targetUri: "https://www.example.com",
///     sensitiveQueryString: "auth=fake_token",
///     disabled: false,
///     serviceAccountAuth: true,
///     pushOption: {
///         branchFilter: "main",
///     },
///     events: [
///         "PUSH",
///         "PULL_REQUEST",
///         "PULL_REQUEST_COMMENT",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.securesourcemanager.Instance("instance",
///     location="asia-east1",
///     instance_id="my-basic-instance",
///     deletion_policy="PREVENT")
/// sa = gcp.serviceaccount.Account("sa",
///     account_id="my-basic-sa",
///     display_name="Test Service Account")
/// repository = gcp.securesourcemanager.Repository("repository",
///     repository_id="my-basic-repository",
///     instance=instance.name,
///     location=instance.location,
///     service_account=sa.email,
///     deletion_policy="PREVENT")
/// default = gcp.securesourcemanager.Hook("default",
///     hook_id="my-basic-hook",
///     location=repository.location,
///     repository_id=repository.repository_id,
///     target_uri="https://www.example.com",
///     sensitive_query_string="auth=fake_token",
///     disabled=False,
///     service_account_auth=True,
///     push_option={
///         "branch_filter": "main",
///     },
///     events=[
///         "PUSH",
///         "PULL_REQUEST",
///         "PULL_REQUEST_COMMENT",
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
///     var instance = new Gcp.SecureSourceManager.Instance("instance", new()
///     {
///         Location = "asia-east1",
///         InstanceId = "my-basic-instance",
///         DeletionPolicy = "PREVENT",
///     });
///
///     var sa = new Gcp.ServiceAccount.Account("sa", new()
///     {
///         AccountId = "my-basic-sa",
///         DisplayName = "Test Service Account",
///     });
///
///     var repository = new Gcp.SecureSourceManager.Repository("repository", new()
///     {
///         RepositoryId = "my-basic-repository",
///         Instance = instance.Name,
///         Location = instance.Location,
///         ServiceAccount = sa.Email,
///         DeletionPolicy = "PREVENT",
///     });
///
///     var @default = new Gcp.SecureSourceManager.Hook("default", new()
///     {
///         HookId = "my-basic-hook",
///         Location = repository.Location,
///         RepositoryId = repository.RepositoryId,
///         TargetUri = "https://www.example.com",
///         SensitiveQueryString = "auth=fake_token",
///         Disabled = false,
///         ServiceAccountAuth = true,
///         PushOption = new Gcp.SecureSourceManager.Inputs.HookPushOptionArgs
///         {
///             BranchFilter = "main",
///         },
///         Events = new[]
///         {
///             "PUSH",
///             "PULL_REQUEST",
///             "PULL_REQUEST_COMMENT",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := securesourcemanager.NewInstance(ctx, "instance", &securesourcemanager.InstanceArgs{
/// 			Location:       pulumi.String("asia-east1"),
/// 			InstanceId:     pulumi.String("my-basic-instance"),
/// 			DeletionPolicy: pulumi.String("PREVENT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sa, err := serviceaccount.NewAccount(ctx, "sa", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("my-basic-sa"),
/// 			DisplayName: pulumi.String("Test Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		repository, err := securesourcemanager.NewRepository(ctx, "repository", &securesourcemanager.RepositoryArgs{
/// 			RepositoryId:   pulumi.String("my-basic-repository"),
/// 			Instance:       instance.Name,
/// 			Location:       instance.Location,
/// 			ServiceAccount: sa.Email,
/// 			DeletionPolicy: pulumi.String("PREVENT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securesourcemanager.NewHook(ctx, "default", &securesourcemanager.HookArgs{
/// 			HookId:               pulumi.String("my-basic-hook"),
/// 			Location:             repository.Location,
/// 			RepositoryId:         repository.RepositoryId,
/// 			TargetUri:            pulumi.String("https://www.example.com"),
/// 			SensitiveQueryString: pulumi.String("auth=fake_token"),
/// 			Disabled:             pulumi.Bool(false),
/// 			ServiceAccountAuth:   pulumi.Bool(true),
/// 			PushOption: &securesourcemanager.HookPushOptionArgs{
/// 				BranchFilter: pulumi.String("main"),
/// 			},
/// 			Events: pulumi.StringArray{
/// 				pulumi.String("PUSH"),
/// 				pulumi.String("PULL_REQUEST"),
/// 				pulumi.String("PULL_REQUEST_COMMENT"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_securesourcemanager_instance" "instance" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location        = "asia-east1"
///   instance_id     = "my-basic-instance"
///   deletion_policy = "PREVENT"
/// }
/// resource "gcp_serviceaccount_account" "sa" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id   = "my-basic-sa"
///   display_name = "Test Service Account"
/// }
/// resource "gcp_securesourcemanager_repository" "repository" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   repository_id   = "my-basic-repository"
///   instance        = gcp_securesourcemanager_instance.instance.name
///   location        = gcp_securesourcemanager_instance.instance.location
///   service_account = gcp_serviceaccount_account.sa.email
///   deletion_policy = "PREVENT"
/// }
/// resource "gcp_securesourcemanager_hook" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   hook_id                = "my-basic-hook"
///   location               = gcp_securesourcemanager_repository.repository.location
///   repository_id          = gcp_securesourcemanager_repository.repository.repository_id
///   target_uri             = "https://www.example.com"
///   sensitive_query_string = "auth=fake_token"
///   disabled               = false
///   service_account_auth   = true
///   push_option = {
///     branch_filter = "main"
///   }
///   events = ["PUSH", "PULL_REQUEST", "PULL_REQUEST_COMMENT"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.securesourcemanager.Instance;
/// import com.pulumi.gcp.securesourcemanager.InstanceArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.securesourcemanager.Repository;
/// import com.pulumi.gcp.securesourcemanager.RepositoryArgs;
/// import com.pulumi.gcp.securesourcemanager.Hook;
/// import com.pulumi.gcp.securesourcemanager.HookArgs;
/// import com.pulumi.gcp.securesourcemanager.inputs.HookPushOptionArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .location("asia-east1")
///             .instanceId("my-basic-instance")
///             .deletionPolicy("PREVENT")
///             .build());
///
///         var sa = new Account("sa", AccountArgs.builder()
///             .accountId("my-basic-sa")
///             .displayName("Test Service Account")
///             .build());
///
///         var repository = new Repository("repository", RepositoryArgs.builder()
///             .repositoryId("my-basic-repository")
///             .instance(instance.name())
///             .location(instance.location())
///             .serviceAccount(sa.email())
///             .deletionPolicy("PREVENT")
///             .build());
///
///         var default_ = new Hook("default", HookArgs.builder()
///             .hookId("my-basic-hook")
///             .location(repository.location())
///             .repositoryId(repository.repositoryId())
///             .targetUri("https://www.example.com")
///             .sensitiveQueryString("auth=fake_token")
///             .disabled(false)
///             .serviceAccountAuth(true)
///             .pushOption(HookPushOptionArgs.builder()
///                 .branchFilter("main")
///                 .build())
///             .events(
///                 "PUSH",
///                 "PULL_REQUEST",
///                 "PULL_REQUEST_COMMENT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:securesourcemanager:Instance
///     properties:
///       location: asia-east1
///       instanceId: my-basic-instance
///       deletionPolicy: PREVENT
///   sa:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: my-basic-sa
///       displayName: Test Service Account
///   repository:
///     type: gcp:securesourcemanager:Repository
///     properties:
///       repositoryId: my-basic-repository
///       instance: ${instance.name}
///       location: ${instance.location}
///       serviceAccount: ${sa.email}
///       deletionPolicy: PREVENT
///   default:
///     type: gcp:securesourcemanager:Hook
///     properties:
///       hookId: my-basic-hook
///       location: ${repository.location}
///       repositoryId: ${repository.repositoryId}
///       targetUri: https://www.example.com
///       sensitiveQueryString: auth=fake_token
///       disabled: false
///       serviceAccountAuth: true
///       pushOption:
///         branchFilter: main
///       events:
///         - PUSH
///         - PULL_REQUEST
///         - PULL_REQUEST_COMMENT
/// ```
///
///
/// ## Import
///
/// Hook can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}/hooks/{{hook_id}}`
/// * `{{project}}/{{location}}/{{repository_id}}/{{hook_id}}`
/// * `{{location}}/{{repository_id}}/{{hook_id}}`
/// * `{{hook_id}}`
///
///
/// When using the `pulumi import` command, Hook can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/hook:Hook default projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}/hooks/{{hook_id}}
/// $ pulumi import gcp:securesourcemanager/hook:Hook default {{project}}/{{location}}/{{repository_id}}/{{hook_id}}
/// $ pulumi import gcp:securesourcemanager/hook:Hook default {{location}}/{{repository_id}}/{{hook_id}}
/// $ pulumi import gcp:securesourcemanager/hook:Hook default {{hook_id}}
/// ```
class Hook extends pulumi.CustomResource {
  /// Create timestamp.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Determines if the hook disabled or not.
  /// Set to true to stop sending traffic.
  late final pulumi.Output<bool?> disabled;
  /// The events that trigger hook on.
  /// Each value may be one of: `PUSH`, `PULL_REQUEST`, `PULL_REQUEST_COMMENT`.
  late final pulumi.Output<List<String>> events;
  /// The ID for the Hook.
  late final pulumi.Output<String> hookId;
  /// The location for the Repository.
  late final pulumi.Output<String> location;
  /// A unique identifier for a Hook. The name should be of the format:
  /// `projects/{project}/locations/{location_id}/repositories/{repository_id}/hooks/{hook_id}`
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The trigger option for push events.
  /// Structure is documented below.
  late final pulumi.Output<HookPushOption> pushOption;
  /// The ID for the Repository.
  late final pulumi.Output<String> repositoryId;
  /// The sensitive query string to be appended to the target URI.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String?> sensitiveQueryString;
  /// Determines if the hook uses the Repository Service Account to
  /// generate an OIDC ID Token for webhook authentication.
  late final pulumi.Output<bool?> serviceAccountAuth;
  /// The target URI to which the payloads will be delivered.
  late final pulumi.Output<String> targetUri;
  /// Unique identifier of the hook.
  late final pulumi.Output<String> uid;
  /// Update timestamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Hook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Hook]. {@macro pulumi_securesourcemanager_hook_hook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Hook(
    String name, {
    HookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/hook:Hook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
          additionalSecretOutputs: const ['sensitiveQueryString'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disabled = registerOutput<bool?>('disabled');
    events = registerOutput<List<String>>('events', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    hookId = registerOutput<String>('hookId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pushOption = registerOutput<HookPushOption>('pushOption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HookPushOption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    repositoryId = registerOutput<String>('repositoryId');
    sensitiveQueryString = registerOutput<String?>('sensitiveQueryString', isSecret: true);
    serviceAccountAuth = registerOutput<bool?>('serviceAccountAuth');
    targetUri = registerOutput<String>('targetUri');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Hook] resource's state with the given [name] and [id].
  static Hook get(
    String name,
    pulumi.Input<String> id, {
    HookState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Hook._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Hook._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/hook:Hook',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disabled = registerOutput<bool?>('disabled');
    events = registerOutput<List<String>>('events', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    hookId = registerOutput<String>('hookId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pushOption = registerOutput<HookPushOption>('pushOption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HookPushOption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    repositoryId = registerOutput<String>('repositoryId');
    sensitiveQueryString = registerOutput<String?>('sensitiveQueryString', isSecret: true);
    serviceAccountAuth = registerOutput<bool?>('serviceAccountAuth');
    targetUri = registerOutput<String>('targetUri');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Hook] resource.
  Hook.reference(String urn)
    : super(
        'gcp:securesourcemanager/hook:Hook',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['sensitiveQueryString'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disabled = registerOutput<bool?>('disabled');
    events = registerOutput<List<String>>('events', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    hookId = registerOutput<String>('hookId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pushOption = registerOutput<HookPushOption>('pushOption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HookPushOption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    repositoryId = registerOutput<String>('repositoryId');
    sensitiveQueryString = registerOutput<String?>('sensitiveQueryString', isSecret: true);
    serviceAccountAuth = registerOutput<bool?>('serviceAccountAuth');
    targetUri = registerOutput<String>('targetUri');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
