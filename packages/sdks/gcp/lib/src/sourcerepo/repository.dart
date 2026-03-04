import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_args.dart';
import 'repository_state.dart';

/// A repository (or repo) is a Git repository storing versioned source content.
///
///
/// To get more information about Repository, see:
///
/// * [API documentation](https://cloud.google.com/source-repositories/docs/reference/rest/v1/projects.repos)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/source-repositories/)
///
/// ## Example Usage
///
/// ### Sourcerepo Repository Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_repo = new gcp.sourcerepo.Repository("my-repo", {name: "my/repository"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_repo = gcp.sourcerepo.Repository("my-repo", name="my/repository")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_repo = new Gcp.SourceRepo.Repository("my-repo", new()
///     {
///         Name = "my/repository",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sourcerepo"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sourcerepo.NewRepository(ctx, "my-repo", &sourcerepo.RepositoryArgs{
/// 			Name: pulumi.String("my/repository"),
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
/// import com.pulumi.gcp.sourcerepo.Repository;
/// import com.pulumi.gcp.sourcerepo.RepositoryArgs;
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
///         var my_repo = new Repository("my-repo", RepositoryArgs.builder()
///             .name("my/repository")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-repo:
///     type: gcp:sourcerepo:Repository
///     properties:
///       name: my/repository
/// ```
///
/// ### Sourcerepo Repository Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testAccount = new gcp.serviceaccount.Account("test_account", {
///     accountId: "my-account",
///     displayName: "Test Service Account",
/// });
/// const topic = new gcp.pubsub.Topic("topic", {name: "my-topic"});
/// const my_repo = new gcp.sourcerepo.Repository("my-repo", {
///     name: "my-repository",
///     pubsubConfigs: [{
///         topic: topic.id,
///         messageFormat: "JSON",
///         serviceAccountEmail: testAccount.email,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_account = gcp.serviceaccount.Account("test_account",
///     account_id="my-account",
///     display_name="Test Service Account")
/// topic = gcp.pubsub.Topic("topic", name="my-topic")
/// my_repo = gcp.sourcerepo.Repository("my-repo",
///     name="my-repository",
///     pubsub_configs=[{
///         "topic": topic.id,
///         "message_format": "JSON",
///         "service_account_email": test_account.email,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testAccount = new Gcp.ServiceAccount.Account("test_account", new()
///     {
///         AccountId = "my-account",
///         DisplayName = "Test Service Account",
///     });
///
///     var topic = new Gcp.PubSub.Topic("topic", new()
///     {
///         Name = "my-topic",
///     });
///
///     var my_repo = new Gcp.SourceRepo.Repository("my-repo", new()
///     {
///         Name = "my-repository",
///         PubsubConfigs = new[]
///         {
///             new Gcp.SourceRepo.Inputs.RepositoryPubsubConfigArgs
///             {
///                 Topic = topic.Id,
///                 MessageFormat = "JSON",
///                 ServiceAccountEmail = testAccount.Email,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sourcerepo"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testAccount, err := serviceaccount.NewAccount(ctx, "test_account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("my-account"),
/// 			DisplayName: pulumi.String("Test Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		topic, err := pubsub.NewTopic(ctx, "topic", &pubsub.TopicArgs{
/// 			Name: pulumi.String("my-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sourcerepo.NewRepository(ctx, "my-repo", &sourcerepo.RepositoryArgs{
/// 			Name: pulumi.String("my-repository"),
/// 			PubsubConfigs: sourcerepo.RepositoryPubsubConfigArray{
/// 				&sourcerepo.RepositoryPubsubConfigArgs{
/// 					Topic:               topic.ID(),
/// 					MessageFormat:       pulumi.String("JSON"),
/// 					ServiceAccountEmail: testAccount.Email,
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.sourcerepo.Repository;
/// import com.pulumi.gcp.sourcerepo.RepositoryArgs;
/// import com.pulumi.gcp.sourcerepo.inputs.RepositoryPubsubConfigArgs;
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
///         var testAccount = new Account("testAccount", AccountArgs.builder()
///             .accountId("my-account")
///             .displayName("Test Service Account")
///             .build());
///
///         var topic = new Topic("topic", TopicArgs.builder()
///             .name("my-topic")
///             .build());
///
///         var my_repo = new Repository("my-repo", RepositoryArgs.builder()
///             .name("my-repository")
///             .pubsubConfigs(RepositoryPubsubConfigArgs.builder()
///                 .topic(topic.id())
///                 .messageFormat("JSON")
///                 .serviceAccountEmail(testAccount.email())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testAccount:
///     type: gcp:serviceaccount:Account
///     name: test_account
///     properties:
///       accountId: my-account
///       displayName: Test Service Account
///   topic:
///     type: gcp:pubsub:Topic
///     properties:
///       name: my-topic
///   my-repo:
///     type: gcp:sourcerepo:Repository
///     properties:
///       name: my-repository
///       pubsubConfigs:
///         - topic: ${topic.id}
///           messageFormat: JSON
///           serviceAccountEmail: ${testAccount.email}
/// ```
///
///
/// ## Import
///
/// Repository can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/repos/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Repository can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:sourcerepo/repository:Repository default projects/{{project}}/repos/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:sourcerepo/repository:Repository default {{name}}
/// ```
class Repository extends pulumi.CustomResource {
  /// If set to true, skip repository creation if a repository with the same name already exists.
  late final pulumi.Output<bool?> createIgnoreAlreadyExists;

  /// Resource name of the repository, of the form `{{repo}}`.
  /// The repo name may contain slashes. eg, `name/with/slash`
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// How this repository publishes a change in the repository through Cloud Pub/Sub.
  /// Keyed by the topic names.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> pubsubConfigs;

  /// The disk usage of the repo, in bytes.
  late final pulumi.Output<int> size;

  /// URL to clone the repository from Google Cloud Source Repositories.
  late final pulumi.Output<String> url;

  /// Creates a new [Repository].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Repository]. {@macro pulumi_sourcerepo_repository_repository_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Repository(
    String name, {
    RepositoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:sourcerepo/repository:Repository',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createIgnoreAlreadyExists = registerOutput<bool?>(
      'createIgnoreAlreadyExists',
    );
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pubsubConfigs = registerOutput<List<Map<String, dynamic>>?>(
      'pubsubConfigs',
    );
    size = registerOutput<int>('size');
    url = registerOutput<String>('url');
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
         'gcp:sourcerepo/repository:Repository',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createIgnoreAlreadyExists = registerOutput<bool?>(
      'createIgnoreAlreadyExists',
    );
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pubsubConfigs = registerOutput<List<Map<String, dynamic>>?>(
      'pubsubConfigs',
    );
    size = registerOutput<int>('size');
    url = registerOutput<String>('url');
  }
}
