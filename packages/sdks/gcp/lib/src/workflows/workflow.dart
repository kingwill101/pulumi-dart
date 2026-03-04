import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_args.dart';
import 'workflow_state.dart';

/// Workflow program to be executed by Workflows.
///
///
/// To get more information about Workflow, see:
///
/// * [API documentation](https://cloud.google.com/workflows/docs/reference/rest/v1/projects.locations.workflows)
/// * How-to Guides
/// * [Managing Workflows](https://cloud.google.com/workflows/docs/creating-updating-workflow)
///
/// ## Example Usage
///
/// ### Workflow Basic
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
/// const example = new gcp.workflows.Workflow("example", {
///     name: "workflow",
///     region: "us-central1",
///     description: "Magic",
///     serviceAccount: testAccount.id,
///     callLogLevel: "LOG_ERRORS_ONLY",
///     labels: {
///         env: "test",
///     },
///     userEnvVars: {
///         url: "https://timeapi.io/api/Time/current/zone?timeZone=Europe/Amsterdam",
///     },
///     deletionProtection: false,
///     sourceContents: `# This is a sample workflow. You can replace it with your source code.
/// #
/// # This workflow does the following:
/// # - reads current time and date information from an external API and stores
/// #   the response in currentTime variable
/// # - retrieves a list of Wikipedia articles related to the day of the week
/// #   from currentTime
/// # - returns the list of articles as an output of the workflow
/// #
/// # Note: In Terraform you need to escape the  or it will cause errors.
///
/// - getCurrentTime:
///     call: http.get
///     args:
///         url: \${sys.get_env(\\"url\\")}
///     result: currentTime
/// - readWikipedia:
///     call: http.get
///     args:
///         url: https://en.wikipedia.org/w/api.php
///         query:
///             action: opensearch
///             search: \${currentTime.body.dayOfWeek}
///     result: wikiResult
/// - returnOutput:
///     return: \${wikiResult.body[1]}
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_account = gcp.serviceaccount.Account("test_account",
///     account_id="my-account",
///     display_name="Test Service Account")
/// example = gcp.workflows.Workflow("example",
///     name="workflow",
///     region="us-central1",
///     description="Magic",
///     service_account=test_account.id,
///     call_log_level="LOG_ERRORS_ONLY",
///     labels={
///         "env": "test",
///     },
///     user_env_vars={
///         "url": "https://timeapi.io/api/Time/current/zone?timeZone=Europe/Amsterdam",
///     },
///     deletion_protection=False,
///     source_contents="""# This is a sample workflow. You can replace it with your source code.
/// #
/// # This workflow does the following:
/// # - reads current time and date information from an external API and stores
/// #   the response in currentTime variable
/// # - retrieves a list of Wikipedia articles related to the day of the week
/// #   from currentTime
/// # - returns the list of articles as an output of the workflow
/// #
/// # Note: In Terraform you need to escape the $$ or it will cause errors.
///
/// - getCurrentTime:
///     call: http.get
///     args:
///         url: ${sys.get_env(\"url\")}
///     result: currentTime
/// - readWikipedia:
///     call: http.get
///     args:
///         url: https://en.wikipedia.org/w/api.php
///         query:
///             action: opensearch
///             search: ${currentTime.body.dayOfWeek}
///     result: wikiResult
/// - returnOutput:
///     return: ${wikiResult.body[1]}
/// """)
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
///     var example = new Gcp.Workflows.Workflow("example", new()
///     {
///         Name = "workflow",
///         Region = "us-central1",
///         Description = "Magic",
///         ServiceAccount = testAccount.Id,
///         CallLogLevel = "LOG_ERRORS_ONLY",
///         Labels =
///         {
///             { "env", "test" },
///         },
///         UserEnvVars =
///         {
///             { "url", "https://timeapi.io/api/Time/current/zone?timeZone=Europe/Amsterdam" },
///         },
///         DeletionProtection = false,
///         SourceContents = @"# This is a sample workflow. You can replace it with your source code.
/// #
/// # This workflow does the following:
/// # - reads current time and date information from an external API and stores
/// #   the response in currentTime variable
/// # - retrieves a list of Wikipedia articles related to the day of the week
/// #   from currentTime
/// # - returns the list of articles as an output of the workflow
/// #
/// # Note: In Terraform you need to escape the $$ or it will cause errors.
///
/// - getCurrentTime:
///     call: http.get
///     args:
///         url: ${sys.get_env(\""url\"")}
///     result: currentTime
/// - readWikipedia:
///     call: http.get
///     args:
///         url: https://en.wikipedia.org/w/api.php
///         query:
///             action: opensearch
///             search: ${currentTime.body.dayOfWeek}
///     result: wikiResult
/// - returnOutput:
///     return: ${wikiResult.body[1]}
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workflows"
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
/// 		_, err = workflows.NewWorkflow(ctx, "example", &workflows.WorkflowArgs{
/// 			Name:           pulumi.String("workflow"),
/// 			Region:         pulumi.String("us-central1"),
/// 			Description:    pulumi.String("Magic"),
/// 			ServiceAccount: testAccount.ID(),
/// 			CallLogLevel:   pulumi.String("LOG_ERRORS_ONLY"),
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("test"),
/// 			},
/// 			UserEnvVars: pulumi.StringMap{
/// 				"url": pulumi.String("https://timeapi.io/api/Time/current/zone?timeZone=Europe/Amsterdam"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
/// 			SourceContents: pulumi.String(`# This is a sample workflow. You can replace it with your source code.
/// #
/// # This workflow does the following:
/// # - reads current time and date information from an external API and stores
/// #   the response in currentTime variable
/// # - retrieves a list of Wikipedia articles related to the day of the week
/// #   from currentTime
/// # - returns the list of articles as an output of the workflow
/// #
/// # Note: In Terraform you need to escape the $$ or it will cause errors.
///
/// - getCurrentTime:
///     call: http.get
///     args:
///         url: ${sys.get_env(\"url\")}
///     result: currentTime
/// - readWikipedia:
///     call: http.get
///     args:
///         url: https://en.wikipedia.org/w/api.php
///         query:
///             action: opensearch
///             search: ${currentTime.body.dayOfWeek}
///     result: wikiResult
/// - returnOutput:
///     return: ${wikiResult.body[1]}
/// `),
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
/// import com.pulumi.gcp.workflows.Workflow;
/// import com.pulumi.gcp.workflows.WorkflowArgs;
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
///         var example = new Workflow("example", WorkflowArgs.builder()
///             .name("workflow")
///             .region("us-central1")
///             .description("Magic")
///             .serviceAccount(testAccount.id())
///             .callLogLevel("LOG_ERRORS_ONLY")
///             .labels(Map.of("env", "test"))
///             .userEnvVars(Map.of("url", "https://timeapi.io/api/Time/current/zone?timeZone=Europe/Amsterdam"))
///             .deletionProtection(false)
///             .sourceContents("""
/// # This is a sample workflow. You can replace it with your source code.
/// #
/// # This workflow does the following:
/// # - reads current time and date information from an external API and stores
/// #   the response in currentTime variable
/// # - retrieves a list of Wikipedia articles related to the day of the week
/// #   from currentTime
/// # - returns the list of articles as an output of the workflow
/// #
/// # Note: In Terraform you need to escape the $$ or it will cause errors.
///
/// - getCurrentTime:
///     call: http.get
///     args:
///         url: ${sys.get_env(\"url\")}
///     result: currentTime
/// - readWikipedia:
///     call: http.get
///     args:
///         url: https://en.wikipedia.org/w/api.php
///         query:
///             action: opensearch
///             search: ${currentTime.body.dayOfWeek}
///     result: wikiResult
/// - returnOutput:
///     return: ${wikiResult.body[1]}
///             """)
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
///   example:
///     type: gcp:workflows:Workflow
///     properties:
///       name: workflow
///       region: us-central1
///       description: Magic
///       serviceAccount: ${testAccount.id}
///       callLogLevel: LOG_ERRORS_ONLY
///       labels:
///         env: test
///       userEnvVars:
///         url: https://timeapi.io/api/Time/current/zone?timeZone=Europe/Amsterdam
///       deletionProtection: false
///       sourceContents: |
///         # This is a sample workflow. You can replace it with your source code.
///         #
///         # This workflow does the following:
///         # - reads current time and date information from an external API and stores
///         #   the response in currentTime variable
///         # - retrieves a list of Wikipedia articles related to the day of the week
///         #   from currentTime
///         # - returns the list of articles as an output of the workflow
///         #
///         # Note: In Terraform you need to escape the $$ or it will cause errors.
///
///         - getCurrentTime:
///             call: http.get
///             args:
///                 url: $${sys.get_env(\"url\")}
///             result: currentTime
///         - readWikipedia:
///             call: http.get
///             args:
///                 url: https://en.wikipedia.org/w/api.php
///                 query:
///                     action: opensearch
///                     search: $${currentTime.body.dayOfWeek}
///             result: wikiResult
///         - returnOutput:
///             return: $${wikiResult.body[1]}
/// ```
///
/// ### Workflow Tags
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const tagKey = new gcp.tags.TagKey("tag_key", {
///     parent: project.then(project => `projects/${project.number}`),
///     shortName: "tag_key",
/// });
/// const tagValue = new gcp.tags.TagValue("tag_value", {
///     parent: pulumi.interpolate`tagKeys/${tagKey.name}`,
///     shortName: "tag_value",
/// });
/// const testAccount = new gcp.serviceaccount.Account("test_account", {
///     accountId: "my-account",
///     displayName: "Test Service Account",
/// });
/// const example = new gcp.workflows.Workflow("example", {
///     name: "workflow",
///     region: "us-central1",
///     description: "Magic",
///     serviceAccount: testAccount.id,
///     deletionProtection: false,
///     tags: pulumi.all([project, tagKey.shortName, tagValue.shortName]).apply(([project, tagKeyShortName, tagValueShortName]) => {
///         [`${project.projectId}/${tagKeyShortName}`]: tagValueShortName,
///     }),
///     sourceContents: `# This is a sample workflow. You can replace it with your source code.
/// #
/// # This workflow does the following:
/// # - reads current time and date information from an external API and stores
/// #   the response in currentTime variable
/// # - retrieves a list of Wikipedia articles related to the day of the week
/// #   from currentTime
/// # - returns the list of articles as an output of the workflow
/// #
/// # Note: In Terraform you need to escape the  or it will cause errors.
///
/// - getCurrentTime:
///     call: http.get
///     args:
///         url: \${sys.get_env(\\"url\\")}
///     result: currentTime
/// - readWikipedia:
///     call: http.get
///     args:
///         url: https://en.wikipedia.org/w/api.php
///         query:
///             action: opensearch
///             search: \${currentTime.body.dayOfWeek}
///     result: wikiResult
/// - returnOutput:
///     return: \${wikiResult.body[1]}
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// tag_key = gcp.tags.TagKey("tag_key",
///     parent=f"projects/{project.number}",
///     short_name="tag_key")
/// tag_value = gcp.tags.TagValue("tag_value",
///     parent=tag_key.name.apply(lambda name: f"tagKeys/{name}"),
///     short_name="tag_value")
/// test_account = gcp.serviceaccount.Account("test_account",
///     account_id="my-account",
///     display_name="Test Service Account")
/// example = gcp.workflows.Workflow("example",
///     name="workflow",
///     region="us-central1",
///     description="Magic",
///     service_account=test_account.id,
///     deletion_protection=False,
///     tags=pulumi.Output.all(
///         tagKeyShort_name=tag_key.short_name,
///         tagValueShort_name=tag_value.short_name
/// ).apply(lambda resolved_outputs: {
///         f"{project.project_id}/{resolved_outputs['tagKeyShort_name']}": resolved_outputs['tagValueShort_name'],
///     })
/// ,
///     source_contents="""# This is a sample workflow. You can replace it with your source code.
/// #
/// # This workflow does the following:
/// # - reads current time and date information from an external API and stores
/// #   the response in currentTime variable
/// # - retrieves a list of Wikipedia articles related to the day of the week
/// #   from currentTime
/// # - returns the list of articles as an output of the workflow
/// #
/// # Note: In Terraform you need to escape the $$ or it will cause errors.
///
/// - getCurrentTime:
///     call: http.get
///     args:
///         url: ${sys.get_env(\"url\")}
///     result: currentTime
/// - readWikipedia:
///     call: http.get
///     args:
///         url: https://en.wikipedia.org/w/api.php
///         query:
///             action: opensearch
///             search: ${currentTime.body.dayOfWeek}
///     result: wikiResult
/// - returnOutput:
///     return: ${wikiResult.body[1]}
/// """)
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
///     var tagKey = new Gcp.Tags.TagKey("tag_key", new()
///     {
///         Parent = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///         ShortName = "tag_key",
///     });
///
///     var tagValue = new Gcp.Tags.TagValue("tag_value", new()
///     {
///         Parent = tagKey.Name.Apply(name => $"tagKeys/{name}"),
///         ShortName = "tag_value",
///     });
///
///     var testAccount = new Gcp.ServiceAccount.Account("test_account", new()
///     {
///         AccountId = "my-account",
///         DisplayName = "Test Service Account",
///     });
///
///     var example = new Gcp.Workflows.Workflow("example", new()
///     {
///         Name = "workflow",
///         Region = "us-central1",
///         Description = "Magic",
///         ServiceAccount = testAccount.Id,
///         DeletionProtection = false,
///         Tags = Output.Tuple(project, tagKey.ShortName, tagValue.ShortName).Apply(values =>
///         {
///             var project = values.Item1;
///             var tagKeyShortName = values.Item2;
///             var tagValueShortName = values.Item3;
///             return
///             {
///                 { $"{project.Apply(getProjectResult => getProjectResult.ProjectId)}/{tagKeyShortName}", tagValueShortName },
///             };
///         }),
///         SourceContents = @"# This is a sample workflow. You can replace it with your source code.
/// #
/// # This workflow does the following:
/// # - reads current time and date information from an external API and stores
/// #   the response in currentTime variable
/// # - retrieves a list of Wikipedia articles related to the day of the week
/// #   from currentTime
/// # - returns the list of articles as an output of the workflow
/// #
/// # Note: In Terraform you need to escape the $$ or it will cause errors.
///
/// - getCurrentTime:
///     call: http.get
///     args:
///         url: ${sys.get_env(\""url\"")}
///     result: currentTime
/// - readWikipedia:
///     call: http.get
///     args:
///         url: https://en.wikipedia.org/w/api.php
///         query:
///             action: opensearch
///             search: ${currentTime.body.dayOfWeek}
///     result: wikiResult
/// - returnOutput:
///     return: ${wikiResult.body[1]}
/// ",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workflows"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// tagKey, err := tags.NewTagKey(ctx, "tag_key", &tags.TagKeyArgs{
/// Parent: pulumi.Sprintf("projects/%v", project.Number),
/// ShortName: pulumi.String("tag_key"),
/// })
/// if err != nil {
/// return err
/// }
/// tagValue, err := tags.NewTagValue(ctx, "tag_value", &tags.TagValueArgs{
/// Parent: tagKey.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("tagKeys/%v", name), nil
/// }).(pulumi.StringOutput),
/// ShortName: pulumi.String("tag_value"),
/// })
/// if err != nil {
/// return err
/// }
/// testAccount, err := serviceaccount.NewAccount(ctx, "test_account", &serviceaccount.AccountArgs{
/// AccountId: pulumi.String("my-account"),
/// DisplayName: pulumi.String("Test Service Account"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = workflows.NewWorkflow(ctx, "example", &workflows.WorkflowArgs{
/// Name: pulumi.String("workflow"),
/// Region: pulumi.String("us-central1"),
/// Description: pulumi.String("Magic"),
/// ServiceAccount: testAccount.ID(),
/// DeletionProtection: pulumi.Bool(false),
/// Tags: pulumi.All(tagKey.ShortName,tagValue.ShortName).ApplyT(func(_args []interface{}) (map[string]string, error) {
/// tagKeyShortName := _args[0].(string)
/// tagValueShortName := _args[1].(string)
/// return map[string]string{
/// fmt.Sprintf("%v/%v", project.ProjectId, tagKeyShortName): tagValueShortName,
/// }, nil
/// }).(pulumi.Map[string]stringOutput),
/// SourceContents: pulumi.String(`# This is a sample workflow. You can replace it with your source code.
/// #
/// # This workflow does the following:
/// # - reads current time and date information from an external API and stores
/// #   the response in currentTime variable
/// # - retrieves a list of Wikipedia articles related to the day of the week
/// #   from currentTime
/// # - returns the list of articles as an output of the workflow
/// #
/// # Note: In Terraform you need to escape the $$ or it will cause errors.
///
/// - getCurrentTime:
///     call: http.get
///     args:
///         url: ${sys.get_env(\"url\")}
///     result: currentTime
/// - readWikipedia:
///     call: http.get
///     args:
///         url: https://en.wikipedia.org/w/api.php
///         query:
///             action: opensearch
///             search: ${currentTime.body.dayOfWeek}
///     result: wikiResult
/// - returnOutput:
///     return: ${wikiResult.body[1]}
/// `),
/// })
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
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.workflows.Workflow;
/// import com.pulumi.gcp.workflows.WorkflowArgs;
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
///         var tagKey = new TagKey("tagKey", TagKeyArgs.builder()
///             .parent(String.format("projects/%s", project.number()))
///             .shortName("tag_key")
///             .build());
///
///         var tagValue = new TagValue("tagValue", TagValueArgs.builder()
///             .parent(tagKey.name().applyValue(_name -> String.format("tagKeys/%s", _name)))
///             .shortName("tag_value")
///             .build());
///
///         var testAccount = new Account("testAccount", AccountArgs.builder()
///             .accountId("my-account")
///             .displayName("Test Service Account")
///             .build());
///
///         var example = new Workflow("example", WorkflowArgs.builder()
///             .name("workflow")
///             .region("us-central1")
///             .description("Magic")
///             .serviceAccount(testAccount.id())
///             .deletionProtection(false)
///             .tags(Output.tuple(tagKey.shortName(), tagValue.shortName()).applyValue(values -> {
///                 var tagKeyShortName = values.t1;
///                 var tagValueShortName = values.t2;
///                 return Map.of(String.format("%s/%s", project.projectId(),tagKeyShortName), tagValueShortName);
///             }))
///             .sourceContents("""
/// # This is a sample workflow. You can replace it with your source code.
/// #
/// # This workflow does the following:
/// # - reads current time and date information from an external API and stores
/// #   the response in currentTime variable
/// # - retrieves a list of Wikipedia articles related to the day of the week
/// #   from currentTime
/// # - returns the list of articles as an output of the workflow
/// #
/// # Note: In Terraform you need to escape the $$ or it will cause errors.
///
/// - getCurrentTime:
///     call: http.get
///     args:
///         url: ${sys.get_env(\"url\")}
///     result: currentTime
/// - readWikipedia:
///     call: http.get
///     args:
///         url: https://en.wikipedia.org/w/api.php
///         query:
///             action: opensearch
///             search: ${currentTime.body.dayOfWeek}
///     result: wikiResult
/// - returnOutput:
///     return: ${wikiResult.body[1]}
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tagKey:
///     type: gcp:tags:TagKey
///     name: tag_key
///     properties:
///       parent: projects/${project.number}
///       shortName: tag_key
///   tagValue:
///     type: gcp:tags:TagValue
///     name: tag_value
///     properties:
///       parent: tagKeys/${tagKey.name}
///       shortName: tag_value
///   testAccount:
///     type: gcp:serviceaccount:Account
///     name: test_account
///     properties:
///       accountId: my-account
///       displayName: Test Service Account
///   example:
///     type: gcp:workflows:Workflow
///     properties:
///       name: workflow
///       region: us-central1
///       description: Magic
///       serviceAccount: ${testAccount.id}
///       deletionProtection: false
///       tags:
///         ${project.projectId}/${tagKey.shortName}: ${tagValue.shortName}
///       sourceContents: |
///         # This is a sample workflow. You can replace it with your source code.
///         #
///         # This workflow does the following:
///         # - reads current time and date information from an external API and stores
///         #   the response in currentTime variable
///         # - retrieves a list of Wikipedia articles related to the day of the week
///         #   from currentTime
///         # - returns the list of articles as an output of the workflow
///         #
///         # Note: In Terraform you need to escape the $$ or it will cause errors.
///
///         - getCurrentTime:
///             call: http.get
///             args:
///                 url: $${sys.get_env(\"url\")}
///             result: currentTime
///         - readWikipedia:
///             call: http.get
///             args:
///                 url: https://en.wikipedia.org/w/api.php
///                 query:
///                     action: opensearch
///                     search: $${currentTime.body.dayOfWeek}
///             result: wikiResult
///         - returnOutput:
///             return: $${wikiResult.body[1]}
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
/// This resource does not support import.
class Workflow extends pulumi.CustomResource {
  /// Describes the level of platform logging to apply to calls and call responses during
  /// executions of this workflow. If both the workflow and the execution specify a logging level,
  /// the execution level takes precedence.
  /// Possible values are: `CALL_LOG_LEVEL_UNSPECIFIED`, `LOG_ALL_CALLS`, `LOG_ERRORS_ONLY`, `LOG_NONE`.
  late final pulumi.Output<String?> callLogLevel;

  /// The timestamp of when the workflow was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> createTime;

  /// The KMS key used to encrypt workflow and execution data.
  /// Format: projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey}
  late final pulumi.Output<String?> cryptoKeyName;
  late final pulumi.Output<bool?> deletionProtection;

  /// Description of the workflow provided by the user. Must be at most 1000 unicode characters long.
  late final pulumi.Output<String> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Describes the level of execution history to be stored for this workflow. This configuration
  /// determines how much information about workflow executions is preserved. If not specified,
  /// defaults to EXECUTION_HISTORY_LEVEL_UNSPECIFIED.
  /// Possible values are: `EXECUTION_HISTORY_LEVEL_UNSPECIFIED`, `EXECUTION_HISTORY_BASIC`, `EXECUTION_HISTORY_DETAILED`.
  late final pulumi.Output<String?> executionHistoryLevel;

  /// A set of key/value label pairs to assign to this Workflow.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Name of the Workflow.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the
  /// specified prefix. If this and name are unspecified, a random value is chosen for the name.
  late final pulumi.Output<String> namePrefix;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The region of the workflow.
  late final pulumi.Output<String?> region;

  /// The revision of the workflow. A new one is generated if the service account or source contents is changed.
  late final pulumi.Output<String> revisionId;

  /// Name of the service account associated with the latest workflow version. This service
  /// account represents the identity of the workflow and determines what permissions the workflow has.
  /// Format: projects/{project}/serviceAccounts/{account} or {account}.
  /// Using - as a wildcard for the {project} or not providing one at all will infer the project from the account.
  /// The {account} value can be the email address or the unique_id of the service account.
  /// If not provided, workflow will use the project's default service account.
  /// Modifying this field for an existing workflow results in a new workflow revision.
  late final pulumi.Output<String> serviceAccount;

  /// Workflow code to be executed. The size limit is 128KB.
  late final pulumi.Output<String?> sourceContents;

  /// State of the workflow deployment.
  late final pulumi.Output<String> state;

  /// A map of resource manager tags. Resource manager tag keys and values have the same definition
  /// as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in
  /// the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The timestamp of when the workflow was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> updateTime;

  /// User-defined environment variables associated with this workflow revision. This map has a maximum length of 20. Each string can take up to 4KiB. Keys cannot be empty strings and cannot start with "GOOGLE" or "WORKFLOWS".
  late final pulumi.Output<Map<String, String>?> userEnvVars;

  /// Creates a new [Workflow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workflow]. {@macro pulumi_workflows_workflow_workflow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workflow(
    String name, {
    WorkflowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:workflows/workflow:Workflow',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    callLogLevel = registerOutput<String?>('callLogLevel');
    createTime = registerOutput<String>('createTime');
    cryptoKeyName = registerOutput<String?>('cryptoKeyName');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    description = registerOutput<String>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    executionHistoryLevel = registerOutput<String?>('executionHistoryLevel');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String?>('region');
    revisionId = registerOutput<String>('revisionId');
    serviceAccount = registerOutput<String>('serviceAccount');
    sourceContents = registerOutput<String?>('sourceContents');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    updateTime = registerOutput<String>('updateTime');
    userEnvVars = registerOutput<Map<String, String>?>('userEnvVars');
  }

  /// Gets an existing [Workflow] resource's state with the given [name] and [id].
  static Workflow get(
    String name,
    pulumi.Input<String> id, {
    WorkflowState? state,
  }) {
    return Workflow._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Workflow._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:workflows/workflow:Workflow',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    callLogLevel = registerOutput<String?>('callLogLevel');
    createTime = registerOutput<String>('createTime');
    cryptoKeyName = registerOutput<String?>('cryptoKeyName');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    description = registerOutput<String>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    executionHistoryLevel = registerOutput<String?>('executionHistoryLevel');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String?>('region');
    revisionId = registerOutput<String>('revisionId');
    serviceAccount = registerOutput<String>('serviceAccount');
    sourceContents = registerOutput<String?>('sourceContents');
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    updateTime = registerOutput<String>('updateTime');
    userEnvVars = registerOutput<Map<String, String>?>('userEnvVars');
  }
}
