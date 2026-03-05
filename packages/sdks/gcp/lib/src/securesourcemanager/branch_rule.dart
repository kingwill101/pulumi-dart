import 'package:pulumi/pulumi.dart' as pulumi;
import 'branch_rule_args.dart';
import 'branch_rule_state.dart';

/// BranchRule is the protection rule to enforce pre-defined rules on designated branches within a repository.
///
///
/// To get more information about BranchRule, see:
///
/// * [API documentation](https://cloud.google.com/secure-source-manager/docs/reference/rest/v1/projects.locations.repositories.branchRules)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/secure-source-manager/docs/overview)
///
/// ## Example Usage
///
/// ### Secure Source Manager Branch Rule Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.securesourcemanager.Instance("instance", {
///     location: "us-central1",
///     instanceId: "my-basic-instance",
///     deletionPolicy: "PREVENT",
/// });
/// const repository = new gcp.securesourcemanager.Repository("repository", {
///     repositoryId: "my-basic-repository",
///     location: instance.location,
///     instance: instance.name,
///     deletionPolicy: "PREVENT",
/// });
/// const basic = new gcp.securesourcemanager.BranchRule("basic", {
///     branchRuleId: "my-basic-branchrule",
///     repositoryId: repository.repositoryId,
///     location: repository.location,
///     includePattern: "main",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.securesourcemanager.Instance("instance",
///     location="us-central1",
///     instance_id="my-basic-instance",
///     deletion_policy="PREVENT")
/// repository = gcp.securesourcemanager.Repository("repository",
///     repository_id="my-basic-repository",
///     location=instance.location,
///     instance=instance.name,
///     deletion_policy="PREVENT")
/// basic = gcp.securesourcemanager.BranchRule("basic",
///     branch_rule_id="my-basic-branchrule",
///     repository_id=repository.repository_id,
///     location=repository.location,
///     include_pattern="main")
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
///         Location = "us-central1",
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
///     var basic = new Gcp.SecureSourceManager.BranchRule("basic", new()
///     {
///         BranchRuleId = "my-basic-branchrule",
///         RepositoryId = repository.RepositoryId,
///         Location = repository.Location,
///         IncludePattern = "main",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := securesourcemanager.NewInstance(ctx, "instance", &securesourcemanager.InstanceArgs{
/// 			Location:       pulumi.String("us-central1"),
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
/// 		_, err = securesourcemanager.NewBranchRule(ctx, "basic", &securesourcemanager.BranchRuleArgs{
/// 			BranchRuleId:   pulumi.String("my-basic-branchrule"),
/// 			RepositoryId:   repository.RepositoryId,
/// 			Location:       repository.Location,
/// 			IncludePattern: pulumi.String("main"),
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
/// import com.pulumi.gcp.securesourcemanager.Instance;
/// import com.pulumi.gcp.securesourcemanager.InstanceArgs;
/// import com.pulumi.gcp.securesourcemanager.Repository;
/// import com.pulumi.gcp.securesourcemanager.RepositoryArgs;
/// import com.pulumi.gcp.securesourcemanager.BranchRule;
/// import com.pulumi.gcp.securesourcemanager.BranchRuleArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .location("us-central1")
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
///         var basic = new BranchRule("basic", BranchRuleArgs.builder()
///             .branchRuleId("my-basic-branchrule")
///             .repositoryId(repository.repositoryId())
///             .location(repository.location())
///             .includePattern("main")
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
///       location: us-central1
///       instanceId: my-basic-instance
///       deletionPolicy: PREVENT
///   repository:
///     type: gcp:securesourcemanager:Repository
///     properties:
///       repositoryId: my-basic-repository
///       location: ${instance.location}
///       instance: ${instance.name}
///       deletionPolicy: PREVENT
///   basic:
///     type: gcp:securesourcemanager:BranchRule
///     properties:
///       branchRuleId: my-basic-branchrule
///       repositoryId: ${repository.repositoryId}
///       location: ${repository.location}
///       includePattern: main
/// ```
///
/// ### Secure Source Manager Branch Rule With Fields
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.securesourcemanager.Instance("instance", {
///     location: "us-central1",
///     instanceId: "my-initial-instance",
///     deletionPolicy: "PREVENT",
/// });
/// const repository = new gcp.securesourcemanager.Repository("repository", {
///     repositoryId: "my-initial-repository",
///     instance: instance.name,
///     location: instance.location,
///     deletionPolicy: "PREVENT",
/// });
/// const _default = new gcp.securesourcemanager.BranchRule("default", {
///     branchRuleId: "my-initial-branchrule",
///     location: repository.location,
///     repositoryId: repository.repositoryId,
///     includePattern: "test",
///     minimumApprovalsCount: 2,
///     minimumReviewsCount: 2,
///     requireCommentsResolved: true,
///     requireLinearHistory: true,
///     requirePullRequest: true,
///     disabled: false,
///     allowStaleReviews: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.securesourcemanager.Instance("instance",
///     location="us-central1",
///     instance_id="my-initial-instance",
///     deletion_policy="PREVENT")
/// repository = gcp.securesourcemanager.Repository("repository",
///     repository_id="my-initial-repository",
///     instance=instance.name,
///     location=instance.location,
///     deletion_policy="PREVENT")
/// default = gcp.securesourcemanager.BranchRule("default",
///     branch_rule_id="my-initial-branchrule",
///     location=repository.location,
///     repository_id=repository.repository_id,
///     include_pattern="test",
///     minimum_approvals_count=2,
///     minimum_reviews_count=2,
///     require_comments_resolved=True,
///     require_linear_history=True,
///     require_pull_request=True,
///     disabled=False,
///     allow_stale_reviews=False)
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
///         Location = "us-central1",
///         InstanceId = "my-initial-instance",
///         DeletionPolicy = "PREVENT",
///     });
///
///     var repository = new Gcp.SecureSourceManager.Repository("repository", new()
///     {
///         RepositoryId = "my-initial-repository",
///         Instance = instance.Name,
///         Location = instance.Location,
///         DeletionPolicy = "PREVENT",
///     });
///
///     var @default = new Gcp.SecureSourceManager.BranchRule("default", new()
///     {
///         BranchRuleId = "my-initial-branchrule",
///         Location = repository.Location,
///         RepositoryId = repository.RepositoryId,
///         IncludePattern = "test",
///         MinimumApprovalsCount = 2,
///         MinimumReviewsCount = 2,
///         RequireCommentsResolved = true,
///         RequireLinearHistory = true,
///         RequirePullRequest = true,
///         Disabled = false,
///         AllowStaleReviews = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := securesourcemanager.NewInstance(ctx, "instance", &securesourcemanager.InstanceArgs{
/// 			Location:       pulumi.String("us-central1"),
/// 			InstanceId:     pulumi.String("my-initial-instance"),
/// 			DeletionPolicy: pulumi.String("PREVENT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		repository, err := securesourcemanager.NewRepository(ctx, "repository", &securesourcemanager.RepositoryArgs{
/// 			RepositoryId:   pulumi.String("my-initial-repository"),
/// 			Instance:       instance.Name,
/// 			Location:       instance.Location,
/// 			DeletionPolicy: pulumi.String("PREVENT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securesourcemanager.NewBranchRule(ctx, "default", &securesourcemanager.BranchRuleArgs{
/// 			BranchRuleId:            pulumi.String("my-initial-branchrule"),
/// 			Location:                repository.Location,
/// 			RepositoryId:            repository.RepositoryId,
/// 			IncludePattern:          pulumi.String("test"),
/// 			MinimumApprovalsCount:   pulumi.Int(2),
/// 			MinimumReviewsCount:     pulumi.Int(2),
/// 			RequireCommentsResolved: pulumi.Bool(true),
/// 			RequireLinearHistory:    pulumi.Bool(true),
/// 			RequirePullRequest:      pulumi.Bool(true),
/// 			Disabled:                pulumi.Bool(false),
/// 			AllowStaleReviews:       pulumi.Bool(false),
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
/// import com.pulumi.gcp.securesourcemanager.Instance;
/// import com.pulumi.gcp.securesourcemanager.InstanceArgs;
/// import com.pulumi.gcp.securesourcemanager.Repository;
/// import com.pulumi.gcp.securesourcemanager.RepositoryArgs;
/// import com.pulumi.gcp.securesourcemanager.BranchRule;
/// import com.pulumi.gcp.securesourcemanager.BranchRuleArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .location("us-central1")
///             .instanceId("my-initial-instance")
///             .deletionPolicy("PREVENT")
///             .build());
///
///         var repository = new Repository("repository", RepositoryArgs.builder()
///             .repositoryId("my-initial-repository")
///             .instance(instance.name())
///             .location(instance.location())
///             .deletionPolicy("PREVENT")
///             .build());
///
///         var default_ = new BranchRule("default", BranchRuleArgs.builder()
///             .branchRuleId("my-initial-branchrule")
///             .location(repository.location())
///             .repositoryId(repository.repositoryId())
///             .includePattern("test")
///             .minimumApprovalsCount(2)
///             .minimumReviewsCount(2)
///             .requireCommentsResolved(true)
///             .requireLinearHistory(true)
///             .requirePullRequest(true)
///             .disabled(false)
///             .allowStaleReviews(false)
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
///       location: us-central1
///       instanceId: my-initial-instance
///       deletionPolicy: PREVENT
///   repository:
///     type: gcp:securesourcemanager:Repository
///     properties:
///       repositoryId: my-initial-repository
///       instance: ${instance.name}
///       location: ${instance.location}
///       deletionPolicy: PREVENT
///   default:
///     type: gcp:securesourcemanager:BranchRule
///     properties:
///       branchRuleId: my-initial-branchrule
///       location: ${repository.location}
///       repositoryId: ${repository.repositoryId}
///       includePattern: test
///       minimumApprovalsCount: 2
///       minimumReviewsCount: 2
///       requireCommentsResolved: true
///       requireLinearHistory: true
///       requirePullRequest: true
///       disabled: false
///       allowStaleReviews: false
/// ```
///
///
/// ## Import
///
/// BranchRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}/branchRules/{{branch_rule_id}}`
///
/// * `{{project}}/{{location}}/{{repository_id}}/{{branch_rule_id}}`
///
/// * `{{location}}/{{repository_id}}/{{branch_rule_id}}`
///
/// * `{{branch_rule_id}}`
///
/// When using the `pulumi import` command, BranchRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/branchRule:BranchRule default projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}/branchRules/{{branch_rule_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/branchRule:BranchRule default {{project}}/{{location}}/{{repository_id}}/{{branch_rule_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/branchRule:BranchRule default {{location}}/{{repository_id}}/{{branch_rule_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/branchRule:BranchRule default {{branch_rule_id}}
/// ```
class BranchRule extends pulumi.CustomResource {
  /// Determines if allow stale reviews or approvals before merging to the branch.
  late final pulumi.Output<bool?> allowStaleReviews;
  /// The ID for the BranchRule.
  late final pulumi.Output<String> branchRuleId;
  /// Time the BranchRule was created in UTC.
  late final pulumi.Output<String> createTime;
  /// Determines if the branch rule is disabled or not.
  late final pulumi.Output<bool?> disabled;
  /// The BranchRule matches branches based on the specified regular expression. Use .* to match all branches.
  late final pulumi.Output<String> includePattern;
  /// The location for the Repository.
  late final pulumi.Output<String> location;
  /// The minimum number of approvals required for the branch rule to be matched.
  late final pulumi.Output<int?> minimumApprovalsCount;
  /// The minimum number of reviews required for the branch rule to be matched.
  late final pulumi.Output<int?> minimumReviewsCount;
  /// The resource name for the BranchRule.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The ID for the Repository.
  late final pulumi.Output<String> repositoryId;
  /// Determines if require comments resolved before merging to the branch.
  late final pulumi.Output<bool?> requireCommentsResolved;
  /// Determines if require linear history before merging to the branch.
  late final pulumi.Output<bool?> requireLinearHistory;
  /// Determines if the branch rule requires a pull request or not.
  late final pulumi.Output<bool?> requirePullRequest;
  /// Unique identifier of the BranchRule.
  late final pulumi.Output<String> uid;
  /// Time the BranchRule was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [BranchRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BranchRule]. {@macro pulumi_securesourcemanager_branch_rule_branch_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BranchRule(
    String name, {
    BranchRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/branchRule:BranchRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowStaleReviews = registerOutput<bool?>('allowStaleReviews');
    branchRuleId = registerOutput<String>('branchRuleId');
    createTime = registerOutput<String>('createTime');
    disabled = registerOutput<bool?>('disabled');
    includePattern = registerOutput<String>('includePattern');
    location = registerOutput<String>('location');
    minimumApprovalsCount = registerOutput<int?>('minimumApprovalsCount');
    minimumReviewsCount = registerOutput<int?>('minimumReviewsCount');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    repositoryId = registerOutput<String>('repositoryId');
    requireCommentsResolved = registerOutput<bool?>('requireCommentsResolved');
    requireLinearHistory = registerOutput<bool?>('requireLinearHistory');
    requirePullRequest = registerOutput<bool?>('requirePullRequest');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [BranchRule] resource's state with the given [name] and [id].
  static BranchRule get(
    String name,
    pulumi.Input<String> id, {
    BranchRuleState? state,
  }) {
    return BranchRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BranchRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/branchRule:BranchRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowStaleReviews = registerOutput<bool?>('allowStaleReviews');
    branchRuleId = registerOutput<String>('branchRuleId');
    createTime = registerOutput<String>('createTime');
    disabled = registerOutput<bool?>('disabled');
    includePattern = registerOutput<String>('includePattern');
    location = registerOutput<String>('location');
    minimumApprovalsCount = registerOutput<int?>('minimumApprovalsCount');
    minimumReviewsCount = registerOutput<int?>('minimumReviewsCount');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    repositoryId = registerOutput<String>('repositoryId');
    requireCommentsResolved = registerOutput<bool?>('requireCommentsResolved');
    requireLinearHistory = registerOutput<bool?>('requireLinearHistory');
    requirePullRequest = registerOutput<bool?>('requirePullRequest');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
