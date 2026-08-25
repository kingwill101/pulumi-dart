import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_args.dart';
import 'rule_condition.dart';
import 'rule_state.dart';

/// A rule defines the deny or allow action of the operation it applies to and the conditions required for the rule to apply. You can set one rule for an entire repository and one rule for each package within.
///
///
/// To get more information about Rule, see:
///
/// * [API documentation](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.rules)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/sdk/gcloud/reference/artifacts/rules)
///
/// ## Example Usage
///
/// ### Artifact Registry Rule Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.artifactregistry.Repository("default", {
///     location: "us-central1",
///     repositoryId: "my-repository",
///     description: "example docker repository",
///     format: "DOCKER",
/// });
/// const my_rule = new gcp.artifactregistry.Rule("my-rule", {
///     repositoryId: _default.repositoryId,
///     location: _default.location,
///     ruleId: "my-repo-rule-id",
///     action: "DENY",
///     operation: "DOWNLOAD",
///     condition: {
///         expression: "pkg.version.id < '2.0'",
///         title: "Block legacy versions",
///         description: "Prevents downloading images with version IDs less than 2.0",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.artifactregistry.Repository("default",
///     location="us-central1",
///     repository_id="my-repository",
///     description="example docker repository",
///     format="DOCKER")
/// my_rule = gcp.artifactregistry.Rule("my-rule",
///     repository_id=default.repository_id,
///     location=default.location,
///     rule_id="my-repo-rule-id",
///     action="DENY",
///     operation="DOWNLOAD",
///     condition={
///         "expression": "pkg.version.id < '2.0'",
///         "title": "Block legacy versions",
///         "description": "Prevents downloading images with version IDs less than 2.0",
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
///     var @default = new Gcp.ArtifactRegistry.Repository("default", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "my-repository",
///         Description = "example docker repository",
///         Format = "DOCKER",
///     });
///
///     var my_rule = new Gcp.ArtifactRegistry.Rule("my-rule", new()
///     {
///         RepositoryId = @default.RepositoryId,
///         Location = @default.Location,
///         RuleId = "my-repo-rule-id",
///         Action = "DENY",
///         Operation = "DOWNLOAD",
///         Condition = new Gcp.ArtifactRegistry.Inputs.RuleConditionArgs
///         {
///             Expression = "pkg.version.id < '2.0'",
///             Title = "Block legacy versions",
///             Description = "Prevents downloading images with version IDs less than 2.0",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := artifactregistry.NewRepository(ctx, "default", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("my-repository"),
/// 			Description:  pulumi.String("example docker repository"),
/// 			Format:       pulumi.String("DOCKER"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = artifactregistry.NewRule(ctx, "my-rule", &artifactregistry.RuleArgs{
/// 			RepositoryId: _default.RepositoryId,
/// 			Location:     _default.Location,
/// 			RuleId:       pulumi.String("my-repo-rule-id"),
/// 			Action:       pulumi.String("DENY"),
/// 			Operation:    pulumi.String("DOWNLOAD"),
/// 			Condition: &artifactregistry.RuleConditionArgs{
/// 				Expression:  pulumi.String("pkg.version.id < '2.0'"),
/// 				Title:       pulumi.String("Block legacy versions"),
/// 				Description: pulumi.String("Prevents downloading images with version IDs less than 2.0"),
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
/// resource "gcp_artifactregistry_repository" "default" {
///   location      = "us-central1"
///   repository_id = "my-repository"
///   description   = "example docker repository"
///   format        = "DOCKER"
/// }
/// resource "gcp_artifactregistry_rule" "my-rule" {
///   repository_id = gcp_artifactregistry_repository.default.repository_id
///   location      = gcp_artifactregistry_repository.default.location
///   rule_id       = "my-repo-rule-id"
///   action        = "DENY"
///   operation     = "DOWNLOAD"
///   condition = {
///     expression  = "pkg.version.id < '2.0'"
///     title       = "Block legacy versions"
///     description = "Prevents downloading images with version IDs less than 2.0"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.Rule;
/// import com.pulumi.gcp.artifactregistry.RuleArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RuleConditionArgs;
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
///         var default_ = new Repository("default", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("my-repository")
///             .description("example docker repository")
///             .format("DOCKER")
///             .build());
///
///         var my_rule = new Rule("my-rule", RuleArgs.builder()
///             .repositoryId(default_.repositoryId())
///             .location(default_.location())
///             .ruleId("my-repo-rule-id")
///             .action("DENY")
///             .operation("DOWNLOAD")
///             .condition(RuleConditionArgs.builder()
///                 .expression("pkg.version.id < '2.0'")
///                 .title("Block legacy versions")
///                 .description("Prevents downloading images with version IDs less than 2.0")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: my-repository
///       description: example docker repository
///       format: DOCKER
///   my-rule:
///     type: gcp:artifactregistry:Rule
///     properties:
///       repositoryId: ${default.repositoryId}
///       location: ${default.location}
///       ruleId: my-repo-rule-id
///       action: DENY
///       operation: DOWNLOAD
///       condition:
///         expression: pkg.version.id < '2.0'
///         title: Block legacy versions
///         description: Prevents downloading images with version IDs less than 2.0
/// ```
///
/// ### Artifact Registry Rule Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.artifactregistry.Repository("default", {
///     location: "us-central1",
///     repositoryId: "my-repository",
///     description: "example docker repository",
///     format: "DOCKER",
/// });
/// const my_rule = new gcp.artifactregistry.Rule("my-rule", {
///     repositoryId: _default.repositoryId,
///     location: _default.location,
///     ruleId: "my-repo-rule-full-id",
///     action: "DENY",
///     operation: "DOWNLOAD",
///     packageId: "foo",
///     condition: {
///         expression: "pkg.version.id < '2.0'",
///         title: "Block legacy versions",
///         description: "Prevents downloading images with version IDs less than 2.0",
///         location: "artifact-registry-rules/policy.cel:1",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.artifactregistry.Repository("default",
///     location="us-central1",
///     repository_id="my-repository",
///     description="example docker repository",
///     format="DOCKER")
/// my_rule = gcp.artifactregistry.Rule("my-rule",
///     repository_id=default.repository_id,
///     location=default.location,
///     rule_id="my-repo-rule-full-id",
///     action="DENY",
///     operation="DOWNLOAD",
///     package_id="foo",
///     condition={
///         "expression": "pkg.version.id < '2.0'",
///         "title": "Block legacy versions",
///         "description": "Prevents downloading images with version IDs less than 2.0",
///         "location": "artifact-registry-rules/policy.cel:1",
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
///     var @default = new Gcp.ArtifactRegistry.Repository("default", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "my-repository",
///         Description = "example docker repository",
///         Format = "DOCKER",
///     });
///
///     var my_rule = new Gcp.ArtifactRegistry.Rule("my-rule", new()
///     {
///         RepositoryId = @default.RepositoryId,
///         Location = @default.Location,
///         RuleId = "my-repo-rule-full-id",
///         Action = "DENY",
///         Operation = "DOWNLOAD",
///         PackageId = "foo",
///         Condition = new Gcp.ArtifactRegistry.Inputs.RuleConditionArgs
///         {
///             Expression = "pkg.version.id < '2.0'",
///             Title = "Block legacy versions",
///             Description = "Prevents downloading images with version IDs less than 2.0",
///             Location = "artifact-registry-rules/policy.cel:1",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := artifactregistry.NewRepository(ctx, "default", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("my-repository"),
/// 			Description:  pulumi.String("example docker repository"),
/// 			Format:       pulumi.String("DOCKER"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = artifactregistry.NewRule(ctx, "my-rule", &artifactregistry.RuleArgs{
/// 			RepositoryId: _default.RepositoryId,
/// 			Location:     _default.Location,
/// 			RuleId:       pulumi.String("my-repo-rule-full-id"),
/// 			Action:       pulumi.String("DENY"),
/// 			Operation:    pulumi.String("DOWNLOAD"),
/// 			PackageId:    pulumi.String("foo"),
/// 			Condition: &artifactregistry.RuleConditionArgs{
/// 				Expression:  pulumi.String("pkg.version.id < '2.0'"),
/// 				Title:       pulumi.String("Block legacy versions"),
/// 				Description: pulumi.String("Prevents downloading images with version IDs less than 2.0"),
/// 				Location:    pulumi.String("artifact-registry-rules/policy.cel:1"),
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
/// resource "gcp_artifactregistry_repository" "default" {
///   location      = "us-central1"
///   repository_id = "my-repository"
///   description   = "example docker repository"
///   format        = "DOCKER"
/// }
/// resource "gcp_artifactregistry_rule" "my-rule" {
///   repository_id = gcp_artifactregistry_repository.default.repository_id
///   location      = gcp_artifactregistry_repository.default.location
///   rule_id       = "my-repo-rule-full-id"
///   action        = "DENY"
///   operation     = "DOWNLOAD"
///   package_id    = "foo"
///   condition = {
///     expression  = "pkg.version.id < '2.0'"
///     title       = "Block legacy versions"
///     description = "Prevents downloading images with version IDs less than 2.0"
///     location    = "artifact-registry-rules/policy.cel:1"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.Rule;
/// import com.pulumi.gcp.artifactregistry.RuleArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RuleConditionArgs;
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
///         var default_ = new Repository("default", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("my-repository")
///             .description("example docker repository")
///             .format("DOCKER")
///             .build());
///
///         var my_rule = new Rule("my-rule", RuleArgs.builder()
///             .repositoryId(default_.repositoryId())
///             .location(default_.location())
///             .ruleId("my-repo-rule-full-id")
///             .action("DENY")
///             .operation("DOWNLOAD")
///             .packageId("foo")
///             .condition(RuleConditionArgs.builder()
///                 .expression("pkg.version.id < '2.0'")
///                 .title("Block legacy versions")
///                 .description("Prevents downloading images with version IDs less than 2.0")
///                 .location("artifact-registry-rules/policy.cel:1")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: my-repository
///       description: example docker repository
///       format: DOCKER
///   my-rule:
///     type: gcp:artifactregistry:Rule
///     properties:
///       repositoryId: ${default.repositoryId}
///       location: ${default.location}
///       ruleId: my-repo-rule-full-id
///       action: DENY
///       operation: DOWNLOAD
///       packageId: foo
///       condition:
///         expression: pkg.version.id < '2.0'
///         title: Block legacy versions
///         description: Prevents downloading images with version IDs less than 2.0
///         location: artifact-registry-rules/policy.cel:1
/// ```
///
///
/// ## Regional Endpoint Policies
///
/// This resource supports Regional Endpoint Policies (REP). See the provider reference for more details on configuration.
///
/// ## Import
///
/// Rule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}/rules/{{rule_id}}`
/// * `{{project}}/{{location}}/{{repository_id}}/{{rule_id}}`
/// * `{{location}}/{{repository_id}}/{{rule_id}}`
///
///
/// When using the `pulumi import` command, Rule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/rule:Rule default projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}/rules/{{rule_id}}
/// $ pulumi import gcp:artifactregistry/rule:Rule default {{project}}/{{location}}/{{repository_id}}/{{rule_id}}
/// $ pulumi import gcp:artifactregistry/rule:Rule default {{location}}/{{repository_id}}/{{rule_id}}
/// ```
class Rule extends pulumi.CustomResource {
  /// The action this rule takes.
  /// Possible values are: `ACTION_UNSPECIFIED`, `ALLOW`, `DENY`.
  late final pulumi.Output<String?> action;
  /// Optional. A CEL expression for conditions that must be met in order for the
  /// rule to apply. If not provided, the rule matches all objects.
  /// Structure is documented below.
  late final pulumi.Output<RuleCondition?> condition;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The name of the repository's location. In addition to specific regions,
  /// special values for multi-region locations are `asia`, `europe`, and `us`.
  /// See [here](https://cloud.google.com/artifact-registry/docs/repositories/repo-locations),
  /// or use the
  /// gcp.artifactregistry.getLocations
  /// data source for possible values.
  late final pulumi.Output<String> location;
  /// The name of the rule, for example:
  /// "projects/p1/locations/us-central1/repositories/repo1/rules/rule1".
  late final pulumi.Output<String> name;
  /// The operation the rule applies to.
  /// Possible values are: `OPERATION_UNSPECIFIED`, `DOWNLOAD`.
  late final pulumi.Output<String?> operation;
  /// The package ID the rule applies to. If empty, this rule applies to all
  /// packages inside the repository.
  late final pulumi.Output<String?> packageId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The last part of the repository name, for example:
  /// "repo1"
  late final pulumi.Output<String> repositoryId;
  /// The rule id to use for this repository.
  late final pulumi.Output<String> ruleId;

  /// Creates a new [Rule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rule]. {@macro pulumi_artifactregistry_rule_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rule(
    String name, {
    RuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:artifactregistry/rule:Rule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    action = registerOutput<String?>('action');
    condition = registerOutput<RuleCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    operation = registerOutput<String?>('operation');
    packageId = registerOutput<String?>('packageId');
    project = registerOutput<String>('project');
    repositoryId = registerOutput<String>('repositoryId');
    ruleId = registerOutput<String>('ruleId');
  }

  /// Gets an existing [Rule] resource's state with the given [name] and [id].
  static Rule get(
    String name,
    pulumi.Input<String> id, {
    RuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Rule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Rule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:artifactregistry/rule:Rule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String?>('action');
    condition = registerOutput<RuleCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    operation = registerOutput<String?>('operation');
    packageId = registerOutput<String?>('packageId');
    project = registerOutput<String>('project');
    repositoryId = registerOutput<String>('repositoryId');
    ruleId = registerOutput<String>('ruleId');
  }

  /// Creates a typed reference to an existing [Rule] resource.
  Rule.reference(String urn)
    : super(
        'gcp:artifactregistry/rule:Rule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    action = registerOutput<String?>('action');
    condition = registerOutput<RuleCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    operation = registerOutput<String?>('operation');
    packageId = registerOutput<String?>('packageId');
    project = registerOutput<String>('project');
    repositoryId = registerOutput<String>('repositoryId');
    ruleId = registerOutput<String>('ruleId');
  }
}
