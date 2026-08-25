import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_rule_args.dart';
import 'firewall_rule_state.dart';

/// A single firewall rule that is evaluated against incoming traffic
/// and provides an action to take on matched requests.
///
///
/// To get more information about FirewallRule, see:
///
/// * [API documentation](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.firewall.ingressRules)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/appengine/docs/standard/python/creating-firewalls#creating_firewall_rules)
///
/// ## Example Usage
///
/// ### App Engine Firewall Rule Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const myProject = new gcp.organizations.Project("my_project", {
///     name: "tf-test-project",
///     projectId: "ae-project",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const app = new gcp.appengine.Application("app", {
///     project: myProject.projectId,
///     locationId: "us-central",
/// });
/// // Wait for 5 minutes seconds to ensure IAM permission propagation completes
/// const wait300Seconds = new time.Sleep("wait_300_seconds", {createDuration: "300s"}, {
///     dependsOn: [app],
/// });
/// const rule = new gcp.appengine.FirewallRule("rule", {
///     project: app.project,
///     priority: 1000,
///     action: "ALLOW",
///     sourceRange: "*",
/// }, {
///     dependsOn: [wait300Seconds],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// my_project = gcp.organizations.Project("my_project",
///     name="tf-test-project",
///     project_id="ae-project",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// app = gcp.appengine.Application("app",
///     project=my_project.project_id,
///     location_id="us-central")
/// # Wait for 5 minutes seconds to ensure IAM permission propagation completes
/// wait300_seconds = time.Sleep("wait_300_seconds", create_duration="300s",
/// opts = pulumi.ResourceOptions(depends_on=[app]))
/// rule = gcp.appengine.FirewallRule("rule",
///     project=app.project,
///     priority=1000,
///     action="ALLOW",
///     source_range="*",
///     opts = pulumi.ResourceOptions(depends_on=[wait300_seconds]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myProject = new Gcp.Organizations.Project("my_project", new()
///     {
///         Name = "tf-test-project",
///         ProjectId = "ae-project",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var app = new Gcp.AppEngine.Application("app", new()
///     {
///         Project = myProject.ProjectId,
///         LocationId = "us-central",
///     });
///
///     // Wait for 5 minutes seconds to ensure IAM permission propagation completes
///     var wait300Seconds = new Time.Sleep("wait_300_seconds", new()
///     {
///         CreateDuration = "300s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             app,
///         },
///     });
///
///     var rule = new Gcp.AppEngine.FirewallRule("rule", new()
///     {
///         Project = app.Project,
///         Priority = 1000,
///         Action = "ALLOW",
///         SourceRange = "*",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait300Seconds,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/appengine"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myProject, err := organizations.NewProject(ctx, "my_project", &organizations.ProjectArgs{
/// 			Name:           pulumi.String("tf-test-project"),
/// 			ProjectId:      pulumi.String("ae-project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		app, err := appengine.NewApplication(ctx, "app", &appengine.ApplicationArgs{
/// 			Project:    myProject.ProjectId,
/// 			LocationId: pulumi.String("us-central"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Wait for 5 minutes seconds to ensure IAM permission propagation completes
/// 		wait300Seconds, err := time.NewSleep(ctx, "wait_300_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("300s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			app,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appengine.NewFirewallRule(ctx, "rule", &appengine.FirewallRuleArgs{
/// 			Project:     app.Project,
/// 			Priority:    pulumi.Int(1000),
/// 			Action:      pulumi.String("ALLOW"),
/// 			SourceRange: pulumi.String("*"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait300Seconds,
/// 		}))
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
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// resource "gcp_organizations_project" "my_project" {
///   name            = "tf-test-project"
///   project_id      = "ae-project"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// resource "gcp_appengine_application" "app" {
///   project     = gcp_organizations_project.my_project.project_id
///   location_id = "us-central"
/// }
/// # Wait for 5 minutes seconds to ensure IAM permission propagation completes
/// resource "time_sleep" "wait_300_seconds" {
///   depends_on      = [gcp_appengine_application.app]
///   create_duration = "300s"
/// }
/// resource "gcp_appengine_firewallrule" "rule" {
///   depends_on   = [time_sleep.wait_300_seconds]
///   project      = gcp_appengine_application.app.project
///   priority     = 1000
///   action       = "ALLOW"
///   source_range = "*"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.appengine.Application;
/// import com.pulumi.gcp.appengine.ApplicationArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.appengine.FirewallRule;
/// import com.pulumi.gcp.appengine.FirewallRuleArgs;
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
///         var myProject = new Project("myProject", ProjectArgs.builder()
///             .name("tf-test-project")
///             .projectId("ae-project")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var app = new Application("app", ApplicationArgs.builder()
///             .project(myProject.projectId())
///             .locationId("us-central")
///             .build());
///
///         // Wait for 5 minutes seconds to ensure IAM permission propagation completes
///         var wait300Seconds = new Sleep("wait300Seconds", SleepArgs.builder()
///             .createDuration("300s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(app)
///                 .build());
///
///         var rule = new FirewallRule("rule", FirewallRuleArgs.builder()
///             .project(app.project())
///             .priority(1000)
///             .action("ALLOW")
///             .sourceRange("*")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait300Seconds)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myProject:
///     type: gcp:organizations:Project
///     name: my_project
///     properties:
///       name: tf-test-project
///       projectId: ae-project
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   app:
///     type: gcp:appengine:Application
///     properties:
///       project: ${myProject.projectId}
///       locationId: us-central
///   # Wait for 5 minutes seconds to ensure IAM permission propagation completes
///   wait300Seconds:
///     type: time:Sleep
///     name: wait_300_seconds
///     properties:
///       createDuration: 300s
///     options:
///       dependsOn:
///         - ${app}
///   rule:
///     type: gcp:appengine:FirewallRule
///     properties:
///       project: ${app.project}
///       priority: 1000
///       action: ALLOW
///       sourceRange: '*'
///     options:
///       dependsOn:
///         - ${wait300Seconds}
/// ```
///
///
/// ## Import
///
/// FirewallRule can be imported using any of these accepted formats:
///
/// * `apps/{{project}}/firewall/ingressRules/{{priority}}`
/// * `{{project}}/{{priority}}`
/// * `{{priority}}`
///
///
/// When using the `pulumi import` command, FirewallRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:appengine/firewallRule:FirewallRule default apps/{{project}}/firewall/ingressRules/{{priority}}
/// $ pulumi import gcp:appengine/firewallRule:FirewallRule default {{project}}/{{priority}}
/// $ pulumi import gcp:appengine/firewallRule:FirewallRule default {{priority}}
/// ```
class FirewallRule extends pulumi.CustomResource {
  /// The action to take if this rule matches.
  /// Possible values are: `UNSPECIFIED_ACTION`, `ALLOW`, `DENY`.
  late final pulumi.Output<String> action;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional string description of this rule.
  late final pulumi.Output<String?> description;
  /// A positive integer that defines the order of rule evaluation.
  /// Rules with the lowest priority are evaluated first.
  /// A default rule at priority Int32.MaxValue matches all IPv4 and
  /// IPv6 traffic when no previous rule matches. Only the action of
  /// this rule can be modified by the user.
  late final pulumi.Output<int?> priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// IP address or range, defined using CIDR notation, of requests that this rule applies to.
  late final pulumi.Output<String> sourceRange;

  /// Creates a new [FirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallRule]. {@macro pulumi_appengine_firewall_rule_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallRule(
    String name, {
    FirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:appengine/firewallRule:FirewallRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    action = registerOutput<String>('action');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    priority = registerOutput<int?>('priority');
    project = registerOutput<String>('project');
    sourceRange = registerOutput<String>('sourceRange');
  }

  /// Gets an existing [FirewallRule] resource's state with the given [name] and [id].
  static FirewallRule get(
    String name,
    pulumi.Input<String> id, {
    FirewallRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FirewallRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FirewallRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:appengine/firewallRule:FirewallRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String>('action');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    priority = registerOutput<int?>('priority');
    project = registerOutput<String>('project');
    sourceRange = registerOutput<String>('sourceRange');
  }

  /// Creates a typed reference to an existing [FirewallRule] resource.
  FirewallRule.reference(String urn)
    : super(
        'gcp:appengine/firewallRule:FirewallRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    action = registerOutput<String>('action');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    priority = registerOutput<int?>('priority');
    project = registerOutput<String>('project');
    sourceRange = registerOutput<String>('sourceRange');
  }
}
