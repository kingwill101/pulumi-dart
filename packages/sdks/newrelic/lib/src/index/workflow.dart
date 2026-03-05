import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_args.dart';
import 'workflow_enrichments.dart';
import 'workflow_issues_filter.dart';
import 'workflow_state.dart';

/// Use this resource to create and manage New Relic workflows.
///
/// ## Example Usage
///
/// ##### Workflow
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.Workflow("foo", {
///     name: "workflow-example",
///     mutingRulesHandling: "NOTIFY_ALL_ISSUES",
///     issuesFilter: {
///         name: "filter-name",
///         type: "FILTER",
///         predicates: [{
///             attribute: "accumulations.tag.team",
///             operator: "EXACTLY_MATCHES",
///             values: ["growth"],
///         }],
///     },
///     destinations: [{
///         channelId: someChannel.id,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.Workflow("foo",
///     name="workflow-example",
///     muting_rules_handling="NOTIFY_ALL_ISSUES",
///     issues_filter={
///         "name": "filter-name",
///         "type": "FILTER",
///         "predicates": [{
///             "attribute": "accumulations.tag.team",
///             "operator": "EXACTLY_MATCHES",
///             "values": ["growth"],
///         }],
///     },
///     destinations=[{
///         "channel_id": some_channel["id"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.Workflow("foo", new()
///     {
///         Name = "workflow-example",
///         MutingRulesHandling = "NOTIFY_ALL_ISSUES",
///         IssuesFilter = new NewRelic.Inputs.WorkflowIssuesFilterArgs
///         {
///             Name = "filter-name",
///             Type = "FILTER",
///             Predicates = new[]
///             {
///                 new NewRelic.Inputs.WorkflowIssuesFilterPredicateArgs
///                 {
///                     Attribute = "accumulations.tag.team",
///                     Operator = "EXACTLY_MATCHES",
///                     Values = new[]
///                     {
///                         "growth",
///                     },
///                 },
///             },
///         },
///         Destinations = new[]
///         {
///             new NewRelic.Inputs.WorkflowDestinationArgs
///             {
///                 ChannelId = someChannel.Id,
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
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := newrelic.NewWorkflow(ctx, "foo", &newrelic.WorkflowArgs{
/// 			Name:                pulumi.String("workflow-example"),
/// 			MutingRulesHandling: pulumi.String("NOTIFY_ALL_ISSUES"),
/// 			IssuesFilter: &newrelic.WorkflowIssuesFilterArgs{
/// 				Name: pulumi.String("filter-name"),
/// 				Type: pulumi.String("FILTER"),
/// 				Predicates: newrelic.WorkflowIssuesFilterPredicateArray{
/// 					&newrelic.WorkflowIssuesFilterPredicateArgs{
/// 						Attribute: pulumi.String("accumulations.tag.team"),
/// 						Operator:  pulumi.String("EXACTLY_MATCHES"),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("growth"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Destinations: newrelic.WorkflowDestinationArray{
/// 				&newrelic.WorkflowDestinationArgs{
/// 					ChannelId: pulumi.Any(someChannel.Id),
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
/// import com.pulumi.newrelic.Workflow;
/// import com.pulumi.newrelic.WorkflowArgs;
/// import com.pulumi.newrelic.inputs.WorkflowIssuesFilterArgs;
/// import com.pulumi.newrelic.inputs.WorkflowDestinationArgs;
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
///         var foo = new Workflow("foo", WorkflowArgs.builder()
///             .name("workflow-example")
///             .mutingRulesHandling("NOTIFY_ALL_ISSUES")
///             .issuesFilter(WorkflowIssuesFilterArgs.builder()
///                 .name("filter-name")
///                 .type("FILTER")
///                 .predicates(WorkflowIssuesFilterPredicateArgs.builder()
///                     .attribute("accumulations.tag.team")
///                     .operator("EXACTLY_MATCHES")
///                     .values("growth")
///                     .build())
///                 .build())
///             .destinations(WorkflowDestinationArgs.builder()
///                 .channelId(someChannel.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:Workflow
///     properties:
///       name: workflow-example
///       mutingRulesHandling: NOTIFY_ALL_ISSUES
///       issuesFilter:
///         name: filter-name
///         type: FILTER
///         predicates:
///           - attribute: accumulations.tag.team
///             operator: EXACTLY_MATCHES
///             values:
///               - growth
///       destinations:
///         - channelId: ${someChannel.id}
/// ```
///
///
/// ## Policy-Based Workflow Example
///
/// This scenario describes one of most common ways of using workflows by defining a set of policies the workflow handles
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// // Create a policy to track
/// const my_policy = new newrelic.AlertPolicy("my-policy", {name: "my_policy"});
/// // Create a reusable notification destination
/// const webhook_destination = new newrelic.NotificationDestination("webhook-destination", {
///     name: "destination-webhook",
///     type: "WEBHOOK",
///     properties: [{
///         key: "url",
///         value: "https://example.com",
///     }],
///     authBasic: {
///         user: "username",
///         password: "password",
///     },
/// });
/// // Create a notification channel to use in the workflow
/// const webhook_channel = new newrelic.NotificationChannel("webhook-channel", {
///     name: "channel-webhook",
///     type: "WEBHOOK",
///     destinationId: webhook_destination.id,
///     product: "IINT",
///     properties: [{
///         key: "payload",
///         value: "{}",
///         label: "Payload Template",
///     }],
/// });
/// // A workflow that matches issues that include incidents triggered by the policy
/// const workflow_example = new newrelic.Workflow("workflow-example", {
///     name: "workflow-example",
///     mutingRulesHandling: "NOTIFY_ALL_ISSUES",
///     issuesFilter: {
///         name: "Filter-name",
///         type: "FILTER",
///         predicates: [{
///             attribute: "labels.policyIds",
///             operator: "EXACTLY_MATCHES",
///             values: [my_policy.id],
///         }],
///     },
///     destinations: [{
///         channelId: webhook_channel.id,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// # Create a policy to track
/// my_policy = newrelic.AlertPolicy("my-policy", name="my_policy")
/// # Create a reusable notification destination
/// webhook_destination = newrelic.NotificationDestination("webhook-destination",
///     name="destination-webhook",
///     type="WEBHOOK",
///     properties=[{
///         "key": "url",
///         "value": "https://example.com",
///     }],
///     auth_basic={
///         "user": "username",
///         "password": "password",
///     })
/// # Create a notification channel to use in the workflow
/// webhook_channel = newrelic.NotificationChannel("webhook-channel",
///     name="channel-webhook",
///     type="WEBHOOK",
///     destination_id=webhook_destination.id,
///     product="IINT",
///     properties=[{
///         "key": "payload",
///         "value": "{}",
///         "label": "Payload Template",
///     }])
/// # A workflow that matches issues that include incidents triggered by the policy
/// workflow_example = newrelic.Workflow("workflow-example",
///     name="workflow-example",
///     muting_rules_handling="NOTIFY_ALL_ISSUES",
///     issues_filter={
///         "name": "Filter-name",
///         "type": "FILTER",
///         "predicates": [{
///             "attribute": "labels.policyIds",
///             "operator": "EXACTLY_MATCHES",
///             "values": [my_policy.id],
///         }],
///     },
///     destinations=[{
///         "channel_id": webhook_channel.id,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a policy to track
///     var my_policy = new NewRelic.AlertPolicy("my-policy", new()
///     {
///         Name = "my_policy",
///     });
///
///     // Create a reusable notification destination
///     var webhook_destination = new NewRelic.NotificationDestination("webhook-destination", new()
///     {
///         Name = "destination-webhook",
///         Type = "WEBHOOK",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationDestinationPropertyArgs
///             {
///                 Key = "url",
///                 Value = "https://example.com",
///             },
///         },
///         AuthBasic = new NewRelic.Inputs.NotificationDestinationAuthBasicArgs
///         {
///             User = "username",
///             Password = "password",
///         },
///     });
///
///     // Create a notification channel to use in the workflow
///     var webhook_channel = new NewRelic.NotificationChannel("webhook-channel", new()
///     {
///         Name = "channel-webhook",
///         Type = "WEBHOOK",
///         DestinationId = webhook_destination.Id,
///         Product = "IINT",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "payload",
///                 Value = "{}",
///                 Label = "Payload Template",
///             },
///         },
///     });
///
///     // A workflow that matches issues that include incidents triggered by the policy
///     var workflow_example = new NewRelic.Workflow("workflow-example", new()
///     {
///         Name = "workflow-example",
///         MutingRulesHandling = "NOTIFY_ALL_ISSUES",
///         IssuesFilter = new NewRelic.Inputs.WorkflowIssuesFilterArgs
///         {
///             Name = "Filter-name",
///             Type = "FILTER",
///             Predicates = new[]
///             {
///                 new NewRelic.Inputs.WorkflowIssuesFilterPredicateArgs
///                 {
///                     Attribute = "labels.policyIds",
///                     Operator = "EXACTLY_MATCHES",
///                     Values = new[]
///                     {
///                         my_policy.Id,
///                     },
///                 },
///             },
///         },
///         Destinations = new[]
///         {
///             new NewRelic.Inputs.WorkflowDestinationArgs
///             {
///                 ChannelId = webhook_channel.Id,
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
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create a policy to track
/// 		my_policy, err := newrelic.NewAlertPolicy(ctx, "my-policy", &newrelic.AlertPolicyArgs{
/// 			Name: pulumi.String("my_policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a reusable notification destination
/// 		webhook_destination, err := newrelic.NewNotificationDestination(ctx, "webhook-destination", &newrelic.NotificationDestinationArgs{
/// 			Name: pulumi.String("destination-webhook"),
/// 			Type: pulumi.String("WEBHOOK"),
/// 			Properties: newrelic.NotificationDestinationPropertyArray{
/// 				&newrelic.NotificationDestinationPropertyArgs{
/// 					Key:   pulumi.String("url"),
/// 					Value: pulumi.String("https://example.com"),
/// 				},
/// 			},
/// 			AuthBasic: &newrelic.NotificationDestinationAuthBasicArgs{
/// 				User:     pulumi.String("username"),
/// 				Password: pulumi.String("password"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a notification channel to use in the workflow
/// 		webhook_channel, err := newrelic.NewNotificationChannel(ctx, "webhook-channel", &newrelic.NotificationChannelArgs{
/// 			Name:          pulumi.String("channel-webhook"),
/// 			Type:          pulumi.String("WEBHOOK"),
/// 			DestinationId: webhook_destination.ID(),
/// 			Product:       pulumi.String("IINT"),
/// 			Properties: newrelic.NotificationChannelPropertyArray{
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("payload"),
/// 					Value: pulumi.String("{}"),
/// 					Label: pulumi.String("Payload Template"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// A workflow that matches issues that include incidents triggered by the policy
/// 		_, err = newrelic.NewWorkflow(ctx, "workflow-example", &newrelic.WorkflowArgs{
/// 			Name:                pulumi.String("workflow-example"),
/// 			MutingRulesHandling: pulumi.String("NOTIFY_ALL_ISSUES"),
/// 			IssuesFilter: &newrelic.WorkflowIssuesFilterArgs{
/// 				Name: pulumi.String("Filter-name"),
/// 				Type: pulumi.String("FILTER"),
/// 				Predicates: newrelic.WorkflowIssuesFilterPredicateArray{
/// 					&newrelic.WorkflowIssuesFilterPredicateArgs{
/// 						Attribute: pulumi.String("labels.policyIds"),
/// 						Operator:  pulumi.String("EXACTLY_MATCHES"),
/// 						Values: pulumi.StringArray{
/// 							my_policy.ID(),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Destinations: newrelic.WorkflowDestinationArray{
/// 				&newrelic.WorkflowDestinationArgs{
/// 					ChannelId: webhook_channel.ID(),
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
/// import com.pulumi.newrelic.AlertPolicy;
/// import com.pulumi.newrelic.AlertPolicyArgs;
/// import com.pulumi.newrelic.NotificationDestination;
/// import com.pulumi.newrelic.NotificationDestinationArgs;
/// import com.pulumi.newrelic.inputs.NotificationDestinationPropertyArgs;
/// import com.pulumi.newrelic.inputs.NotificationDestinationAuthBasicArgs;
/// import com.pulumi.newrelic.NotificationChannel;
/// import com.pulumi.newrelic.NotificationChannelArgs;
/// import com.pulumi.newrelic.inputs.NotificationChannelPropertyArgs;
/// import com.pulumi.newrelic.Workflow;
/// import com.pulumi.newrelic.WorkflowArgs;
/// import com.pulumi.newrelic.inputs.WorkflowIssuesFilterArgs;
/// import com.pulumi.newrelic.inputs.WorkflowDestinationArgs;
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
///         // Create a policy to track
///         var my_policy = new AlertPolicy("my-policy", AlertPolicyArgs.builder()
///             .name("my_policy")
///             .build());
///
///         // Create a reusable notification destination
///         var webhook_destination = new NotificationDestination("webhook-destination", NotificationDestinationArgs.builder()
///             .name("destination-webhook")
///             .type("WEBHOOK")
///             .properties(NotificationDestinationPropertyArgs.builder()
///                 .key("url")
///                 .value("https://example.com")
///                 .build())
///             .authBasic(NotificationDestinationAuthBasicArgs.builder()
///                 .user("username")
///                 .password("password")
///                 .build())
///             .build());
///
///         // Create a notification channel to use in the workflow
///         var webhook_channel = new NotificationChannel("webhook-channel", NotificationChannelArgs.builder()
///             .name("channel-webhook")
///             .type("WEBHOOK")
///             .destinationId(webhook_destination.id())
///             .product("IINT")
///             .properties(NotificationChannelPropertyArgs.builder()
///                 .key("payload")
///                 .value("{}")
///                 .label("Payload Template")
///                 .build())
///             .build());
///
///         // A workflow that matches issues that include incidents triggered by the policy
///         var workflow_example = new Workflow("workflow-example", WorkflowArgs.builder()
///             .name("workflow-example")
///             .mutingRulesHandling("NOTIFY_ALL_ISSUES")
///             .issuesFilter(WorkflowIssuesFilterArgs.builder()
///                 .name("Filter-name")
///                 .type("FILTER")
///                 .predicates(WorkflowIssuesFilterPredicateArgs.builder()
///                     .attribute("labels.policyIds")
///                     .operator("EXACTLY_MATCHES")
///                     .values(my_policy.id())
///                     .build())
///                 .build())
///             .destinations(WorkflowDestinationArgs.builder()
///                 .channelId(webhook_channel.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a policy to track
///   my-policy:
///     type: newrelic:AlertPolicy
///     properties:
///       name: my_policy
///   # Create a reusable notification destination
///   webhook-destination:
///     type: newrelic:NotificationDestination
///     properties:
///       name: destination-webhook
///       type: WEBHOOK
///       properties:
///         - key: url
///           value: https://example.com
///       authBasic:
///         user: username
///         password: password
///   # Create a notification channel to use in the workflow
///   webhook-channel:
///     type: newrelic:NotificationChannel
///     properties:
///       name: channel-webhook
///       type: WEBHOOK
///       destinationId: ${["webhook-destination"].id}
///       product: IINT
///       properties:
///         - key: payload
///           value: '{}'
///           label: Payload Template
///   # A workflow that matches issues that include incidents triggered by the policy
///   workflow-example:
///     type: newrelic:Workflow
///     properties:
///       name: workflow-example
///       mutingRulesHandling: NOTIFY_ALL_ISSUES
///       issuesFilter:
///         name: Filter-name
///         type: FILTER
///         predicates:
///           - attribute: labels.policyIds
///             operator: EXACTLY_MATCHES
///             values:
///               - ${["my-policy"].id}
///       destinations:
///         - channelId: ${["webhook-channel"].id}
/// ```
///
///
/// ### An example of a workflow with enrichments
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const workflow_example = new newrelic.Workflow("workflow-example", {
///     name: "workflow-enrichment-example",
///     mutingRulesHandling: "NOTIFY_ALL_ISSUES",
///     issuesFilter: {
///         name: "Filter-name",
///         type: "FILTER",
///         predicates: [{
///             attribute: "accumulations.tag.team",
///             operator: "EXACTLY_MATCHES",
///             values: ["my_team"],
///         }],
///     },
///     enrichments: {
///         nrqls: [{
///             name: "Log Count",
///             configurations: [{
///                 query: "SELECT count(*) FROM Log WHERE message like '%error%' since 10 minutes ago",
///             }],
///         }],
///     },
///     destinations: [{
///         channelId: webhook_channel.id,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// workflow_example = newrelic.Workflow("workflow-example",
///     name="workflow-enrichment-example",
///     muting_rules_handling="NOTIFY_ALL_ISSUES",
///     issues_filter={
///         "name": "Filter-name",
///         "type": "FILTER",
///         "predicates": [{
///             "attribute": "accumulations.tag.team",
///             "operator": "EXACTLY_MATCHES",
///             "values": ["my_team"],
///         }],
///     },
///     enrichments={
///         "nrqls": [{
///             "name": "Log Count",
///             "configurations": [{
///                 "query": "SELECT count(*) FROM Log WHERE message like '%error%' since 10 minutes ago",
///             }],
///         }],
///     },
///     destinations=[{
///         "channel_id": webhook_channel["id"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workflow_example = new NewRelic.Workflow("workflow-example", new()
///     {
///         Name = "workflow-enrichment-example",
///         MutingRulesHandling = "NOTIFY_ALL_ISSUES",
///         IssuesFilter = new NewRelic.Inputs.WorkflowIssuesFilterArgs
///         {
///             Name = "Filter-name",
///             Type = "FILTER",
///             Predicates = new[]
///             {
///                 new NewRelic.Inputs.WorkflowIssuesFilterPredicateArgs
///                 {
///                     Attribute = "accumulations.tag.team",
///                     Operator = "EXACTLY_MATCHES",
///                     Values = new[]
///                     {
///                         "my_team",
///                     },
///                 },
///             },
///         },
///         Enrichments = new NewRelic.Inputs.WorkflowEnrichmentsArgs
///         {
///             Nrqls = new[]
///             {
///                 new NewRelic.Inputs.WorkflowEnrichmentsNrqlArgs
///                 {
///                     Name = "Log Count",
///                     Configurations = new[]
///                     {
///                         new NewRelic.Inputs.WorkflowEnrichmentsNrqlConfigurationArgs
///                         {
///                             Query = "SELECT count(*) FROM Log WHERE message like '%error%' since 10 minutes ago",
///                         },
///                     },
///                 },
///             },
///         },
///         Destinations = new[]
///         {
///             new NewRelic.Inputs.WorkflowDestinationArgs
///             {
///                 ChannelId = webhook_channel.Id,
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
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := newrelic.NewWorkflow(ctx, "workflow-example", &newrelic.WorkflowArgs{
/// 			Name:                pulumi.String("workflow-enrichment-example"),
/// 			MutingRulesHandling: pulumi.String("NOTIFY_ALL_ISSUES"),
/// 			IssuesFilter: &newrelic.WorkflowIssuesFilterArgs{
/// 				Name: pulumi.String("Filter-name"),
/// 				Type: pulumi.String("FILTER"),
/// 				Predicates: newrelic.WorkflowIssuesFilterPredicateArray{
/// 					&newrelic.WorkflowIssuesFilterPredicateArgs{
/// 						Attribute: pulumi.String("accumulations.tag.team"),
/// 						Operator:  pulumi.String("EXACTLY_MATCHES"),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("my_team"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Enrichments: &newrelic.WorkflowEnrichmentsArgs{
/// 				Nrqls: newrelic.WorkflowEnrichmentsNrqlArray{
/// 					&newrelic.WorkflowEnrichmentsNrqlArgs{
/// 						Name: pulumi.String("Log Count"),
/// 						Configurations: newrelic.WorkflowEnrichmentsNrqlConfigurationArray{
/// 							&newrelic.WorkflowEnrichmentsNrqlConfigurationArgs{
/// 								Query: pulumi.String("SELECT count(*) FROM Log WHERE message like '%error%' since 10 minutes ago"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Destinations: newrelic.WorkflowDestinationArray{
/// 				&newrelic.WorkflowDestinationArgs{
/// 					ChannelId: pulumi.Any(webhook_channel.Id),
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
/// import com.pulumi.newrelic.Workflow;
/// import com.pulumi.newrelic.WorkflowArgs;
/// import com.pulumi.newrelic.inputs.WorkflowIssuesFilterArgs;
/// import com.pulumi.newrelic.inputs.WorkflowEnrichmentsArgs;
/// import com.pulumi.newrelic.inputs.WorkflowDestinationArgs;
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
///         var workflow_example = new Workflow("workflow-example", WorkflowArgs.builder()
///             .name("workflow-enrichment-example")
///             .mutingRulesHandling("NOTIFY_ALL_ISSUES")
///             .issuesFilter(WorkflowIssuesFilterArgs.builder()
///                 .name("Filter-name")
///                 .type("FILTER")
///                 .predicates(WorkflowIssuesFilterPredicateArgs.builder()
///                     .attribute("accumulations.tag.team")
///                     .operator("EXACTLY_MATCHES")
///                     .values("my_team")
///                     .build())
///                 .build())
///             .enrichments(WorkflowEnrichmentsArgs.builder()
///                 .nrqls(WorkflowEnrichmentsNrqlArgs.builder()
///                     .name("Log Count")
///                     .configurations(WorkflowEnrichmentsNrqlConfigurationArgs.builder()
///                         .query("SELECT count(*) FROM Log WHERE message like '%error%' since 10 minutes ago")
///                         .build())
///                     .build())
///                 .build())
///             .destinations(WorkflowDestinationArgs.builder()
///                 .channelId(webhook_channel.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   workflow-example:
///     type: newrelic:Workflow
///     properties:
///       name: workflow-enrichment-example
///       mutingRulesHandling: NOTIFY_ALL_ISSUES
///       issuesFilter:
///         name: Filter-name
///         type: FILTER
///         predicates:
///           - attribute: accumulations.tag.team
///             operator: EXACTLY_MATCHES
///             values:
///               - my_team
///       enrichments:
///         nrqls:
///           - name: Log Count
///             configurations:
///               - query: SELECT count(*) FROM Log WHERE message like '%error%' since 10 minutes ago
///       destinations:
///         - channelId: ${["webhook-channel"].id}
/// ```
///
///
/// ### An example of a workflow with notification triggers
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const workflow_example = new newrelic.Workflow("workflow-example", {
///     name: "workflow-enrichment-example",
///     mutingRulesHandling: "NOTIFY_ALL_ISSUES",
///     issuesFilter: {
///         name: "Filter-name",
///         type: "FILTER",
///         predicates: [{
///             attribute: "accumulations.tag.team",
///             operator: "EXACTLY_MATCHES",
///             values: ["my_team"],
///         }],
///     },
///     destinations: [{
///         channelId: webhook_channel.id,
///         notificationTriggers: ["ACTIVATED"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// workflow_example = newrelic.Workflow("workflow-example",
///     name="workflow-enrichment-example",
///     muting_rules_handling="NOTIFY_ALL_ISSUES",
///     issues_filter={
///         "name": "Filter-name",
///         "type": "FILTER",
///         "predicates": [{
///             "attribute": "accumulations.tag.team",
///             "operator": "EXACTLY_MATCHES",
///             "values": ["my_team"],
///         }],
///     },
///     destinations=[{
///         "channel_id": webhook_channel["id"],
///         "notification_triggers": ["ACTIVATED"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workflow_example = new NewRelic.Workflow("workflow-example", new()
///     {
///         Name = "workflow-enrichment-example",
///         MutingRulesHandling = "NOTIFY_ALL_ISSUES",
///         IssuesFilter = new NewRelic.Inputs.WorkflowIssuesFilterArgs
///         {
///             Name = "Filter-name",
///             Type = "FILTER",
///             Predicates = new[]
///             {
///                 new NewRelic.Inputs.WorkflowIssuesFilterPredicateArgs
///                 {
///                     Attribute = "accumulations.tag.team",
///                     Operator = "EXACTLY_MATCHES",
///                     Values = new[]
///                     {
///                         "my_team",
///                     },
///                 },
///             },
///         },
///         Destinations = new[]
///         {
///             new NewRelic.Inputs.WorkflowDestinationArgs
///             {
///                 ChannelId = webhook_channel.Id,
///                 NotificationTriggers = new[]
///                 {
///                     "ACTIVATED",
///                 },
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
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := newrelic.NewWorkflow(ctx, "workflow-example", &newrelic.WorkflowArgs{
/// 			Name:                pulumi.String("workflow-enrichment-example"),
/// 			MutingRulesHandling: pulumi.String("NOTIFY_ALL_ISSUES"),
/// 			IssuesFilter: &newrelic.WorkflowIssuesFilterArgs{
/// 				Name: pulumi.String("Filter-name"),
/// 				Type: pulumi.String("FILTER"),
/// 				Predicates: newrelic.WorkflowIssuesFilterPredicateArray{
/// 					&newrelic.WorkflowIssuesFilterPredicateArgs{
/// 						Attribute: pulumi.String("accumulations.tag.team"),
/// 						Operator:  pulumi.String("EXACTLY_MATCHES"),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("my_team"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Destinations: newrelic.WorkflowDestinationArray{
/// 				&newrelic.WorkflowDestinationArgs{
/// 					ChannelId: pulumi.Any(webhook_channel.Id),
/// 					NotificationTriggers: pulumi.StringArray{
/// 						pulumi.String("ACTIVATED"),
/// 					},
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
/// import com.pulumi.newrelic.Workflow;
/// import com.pulumi.newrelic.WorkflowArgs;
/// import com.pulumi.newrelic.inputs.WorkflowIssuesFilterArgs;
/// import com.pulumi.newrelic.inputs.WorkflowDestinationArgs;
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
///         var workflow_example = new Workflow("workflow-example", WorkflowArgs.builder()
///             .name("workflow-enrichment-example")
///             .mutingRulesHandling("NOTIFY_ALL_ISSUES")
///             .issuesFilter(WorkflowIssuesFilterArgs.builder()
///                 .name("Filter-name")
///                 .type("FILTER")
///                 .predicates(WorkflowIssuesFilterPredicateArgs.builder()
///                     .attribute("accumulations.tag.team")
///                     .operator("EXACTLY_MATCHES")
///                     .values("my_team")
///                     .build())
///                 .build())
///             .destinations(WorkflowDestinationArgs.builder()
///                 .channelId(webhook_channel.id())
///                 .notificationTriggers("ACTIVATED")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   workflow-example:
///     type: newrelic:Workflow
///     properties:
///       name: workflow-enrichment-example
///       mutingRulesHandling: NOTIFY_ALL_ISSUES
///       issuesFilter:
///         name: Filter-name
///         type: FILTER
///         predicates:
///           - attribute: accumulations.tag.team
///             operator: EXACTLY_MATCHES
///             values:
///               - my_team
///       destinations:
///         - channelId: ${["webhook-channel"].id}
///           notificationTriggers:
///             - ACTIVATED
/// ```
///
///
/// ## Additional Information
///
/// More details about the workflows can be found [here](https://docs.newrelic.com/docs/alerts-applied-intelligence/applied-intelligence/incident-workflows/incident-workflows/).
///
/// ### Moving from Legacy Alert Policy Channels to Workflows
/// As described in the documentation of this resource, mapping alert channels (created using `newrelic.NotificationDestination` and `newrelic.NotificationChannel`) to policies can be performed using the `newrelic.Workflow` resource, which is an alternative to the legacy resource `newrelic.AlertPolicyChannel` (which consumes alert channels created using the legacy resource `newrelic.AlertChannel`).
///
/// Both of the legacy resources mentioned above, `newrelic.AlertChannel` and `newrelic.AlertPolicyChannel` are **deprecated** and will be **removed in a future major release**, as stated in the documentation of both of these resources.
///
/// If you're currently using `newrelic.AlertChannel` and `newrelic.AlertPolicyChannel` to manage alert channels linked to policies, we **strongly recommend** migrating to these workflows and notifications-based resources at the earliest.
///
/// Please refer to the examples in this page, or this example for illustrations on setting up channels and workflows with these resources.
///
/// ## v3.3 changes
///
/// In version v3.3 we renamed the following arguments:
///
/// - `workflow_enabled` changed to `enabled`.
/// - `destination_configuration` changed to `destination`.
/// - `predicates` changed to `predicate`.
/// - Enrichment's `configurations` changed to `configuration`.
///
/// ## Import
///
/// Workflows can be imported using the `id`, e.g.
///
/// ```bash
/// $ terraform import newrelic_workflow.foo <id>
/// ```
/// You can find the workflow ID from the workflow table by clicking on ... at the end of the row and choosing `Copy workflow id to clipboard`.
class Workflow extends pulumi.CustomResource {
  /// Determines the New Relic account in which the workflow is created. Defaults to the account defined in the provider section.
  late final pulumi.Output<String> accountId;

  /// Notification configuration. See Nested destination blocks below for details.
  late final pulumi.Output<List<Map<String, dynamic>>> destinations;

  /// **DEPRECATED** Whether destinations are enabled. Please use `enabled` instead:
  /// these two are different flags, but they are functionally identical. Defaults to true.
  late final pulumi.Output<bool?> destinationsEnabled;

  /// Whether workflow is enabled. Defaults to true.
  late final pulumi.Output<bool?> enabled;

  /// Workflow's enrichments. See Nested enrichments blocks below for details.
  late final pulumi.Output<WorkflowEnrichments?> enrichments;

  /// Whether enrichments are enabled. Defaults to true.
  late final pulumi.Output<bool?> enrichmentsEnabled;

  /// Workflow entity GUID
  late final pulumi.Output<String> guid;

  /// A filter used to identify issues handled by this workflow. See Nested issues_filter blocks below for details.
  late final pulumi.Output<WorkflowIssuesFilter> issuesFilter;

  /// The last time notification was sent for this workflow.
  late final pulumi.Output<String> lastRun;

  /// How to handle muted issues. See Muting Rules below for details.
  late final pulumi.Output<String> mutingRulesHandling;

  /// The name of the workflow.
  late final pulumi.Output<String> name;

  /// The id of the workflow.
  late final pulumi.Output<String> workflowId;

  /// Creates a new [Workflow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workflow]. {@macro pulumi_index_workflow_workflow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workflow(
    String name, {
    WorkflowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/workflow:Workflow',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    destinations = registerOutput<List<Map<String, dynamic>>>('destinations');
    destinationsEnabled = registerOutput<bool?>('destinationsEnabled');
    enabled = registerOutput<bool?>('enabled');
    enrichments = registerOutput<WorkflowEnrichments?>(
      'enrichments',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WorkflowEnrichments.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    enrichmentsEnabled = registerOutput<bool?>('enrichmentsEnabled');
    guid = registerOutput<String>('guid');
    issuesFilter = registerOutput<WorkflowIssuesFilter>(
      'issuesFilter',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WorkflowIssuesFilter.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    lastRun = registerOutput<String>('lastRun');
    mutingRulesHandling = registerOutput<String>('mutingRulesHandling');
    this.name = registerOutput<String>('name');
    workflowId = registerOutput<String>('workflowId');
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
         'newrelic:index/workflow:Workflow',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    destinations = registerOutput<List<Map<String, dynamic>>>('destinations');
    destinationsEnabled = registerOutput<bool?>('destinationsEnabled');
    enabled = registerOutput<bool?>('enabled');
    enrichments = registerOutput<WorkflowEnrichments?>(
      'enrichments',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WorkflowEnrichments.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    enrichmentsEnabled = registerOutput<bool?>('enrichmentsEnabled');
    guid = registerOutput<String>('guid');
    issuesFilter = registerOutput<WorkflowIssuesFilter>(
      'issuesFilter',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WorkflowIssuesFilter.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    lastRun = registerOutput<String>('lastRun');
    mutingRulesHandling = registerOutput<String>('mutingRulesHandling');
    this.name = registerOutput<String>('name');
    workflowId = registerOutput<String>('workflowId');
  }
}
