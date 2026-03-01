import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_prometheus_rule_group_args.dart';
import 'alert_prometheus_rule_group_rule.dart';
import 'alert_prometheus_rule_group_state.dart';

/// Manages an Alert Management Prometheus Rule Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleActionGroup = new azure.monitoring.ActionGroup("example", {
///     name: "example-mag",
///     resourceGroupName: example.name,
///     shortName: "testag",
/// });
/// const exampleWorkspace = new azure.monitoring.Workspace("example", {
///     name: "example-amw",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleKubernetesCluster = new azure.containerservice.KubernetesCluster("example", {
///     name: "example-cluster",
///     location: example.location,
///     resourceGroupName: example.name,
///     dnsPrefix: "example-aks",
///     defaultNodePool: {
///         name: "default",
///         nodeCount: 1,
///         vmSize: "Standard_DS2_v2",
///         hostEncryptionEnabled: true,
///     },
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleAlertPrometheusRuleGroup = new azure.monitoring.AlertPrometheusRuleGroup("example", {
///     name: "example-amprg",
///     location: "West Europe",
///     resourceGroupName: example.name,
///     clusterName: exampleKubernetesCluster.name,
///     description: "This is the description of the following rule group",
///     ruleGroupEnabled: false,
///     interval: "PT1M",
///     scopes: [exampleWorkspace.id],
///     rules: [
///         {
///             enabled: false,
///             expression: "histogram_quantile(0.99, sum(rate(jobs_duration_seconds_bucket{service=\\\"billing-processing\\\"}[5m])) by (job_type))\n",
///             record: "job_type:billing_jobs_duration_seconds:99p5m",
///             labels: {
///                 team: "prod",
///             },
///         },
///         {
///             alert: "Billing_Processing_Very_Slow",
///             enabled: true,
///             expression: "histogram_quantile(0.99, sum(rate(jobs_duration_seconds_bucket{service=\\\"billing-processing\\\"}[5m])) by (job_type))\n",
///             "for": "PT5M",
///             severity: 2,
///             actions: [{
///                 actionGroupId: exampleActionGroup.id,
///             }],
///             alertResolution: {
///                 autoResolved: true,
///                 timeToResolve: "PT10M",
///             },
///             annotations: {
///                 annotationName: "annotationValue",
///             },
///             labels: {
///                 team: "prod",
///             },
///         },
///     ],
///     tags: {
///         key: "value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_action_group = azure.monitoring.ActionGroup("example",
///     name="example-mag",
///     resource_group_name=example.name,
///     short_name="testag")
/// example_workspace = azure.monitoring.Workspace("example",
///     name="example-amw",
///     resource_group_name=example.name,
///     location=example.location)
/// example_kubernetes_cluster = azure.containerservice.KubernetesCluster("example",
///     name="example-cluster",
///     location=example.location,
///     resource_group_name=example.name,
///     dns_prefix="example-aks",
///     default_node_pool={
///         "name": "default",
///         "node_count": 1,
///         "vm_size": "Standard_DS2_v2",
///         "host_encryption_enabled": True,
///     },
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_alert_prometheus_rule_group = azure.monitoring.AlertPrometheusRuleGroup("example",
///     name="example-amprg",
///     location="West Europe",
///     resource_group_name=example.name,
///     cluster_name=example_kubernetes_cluster.name,
///     description="This is the description of the following rule group",
///     rule_group_enabled=False,
///     interval="PT1M",
///     scopes=[example_workspace.id],
///     rules=[
///         {
///             "enabled": False,
///             "expression": "histogram_quantile(0.99, sum(rate(jobs_duration_seconds_bucket{service=\\\"billing-processing\\\"}[5m])) by (job_type))\n",
///             "record": "job_type:billing_jobs_duration_seconds:99p5m",
///             "labels": {
///                 "team": "prod",
///             },
///         },
///         {
///             "alert": "Billing_Processing_Very_Slow",
///             "enabled": True,
///             "expression": "histogram_quantile(0.99, sum(rate(jobs_duration_seconds_bucket{service=\\\"billing-processing\\\"}[5m])) by (job_type))\n",
///             "for_": "PT5M",
///             "severity": 2,
///             "actions": [{
///                 "action_group_id": example_action_group.id,
///             }],
///             "alert_resolution": {
///                 "auto_resolved": True,
///                 "time_to_resolve": "PT10M",
///             },
///             "annotations": {
///                 "annotationName": "annotationValue",
///             },
///             "labels": {
///                 "team": "prod",
///             },
///         },
///     ],
///     tags={
///         "key": "value",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleActionGroup = new Azure.Monitoring.ActionGroup("example", new()
///     {
///         Name = "example-mag",
///         ResourceGroupName = example.Name,
///         ShortName = "testag",
///     });
///
///     var exampleWorkspace = new Azure.Monitoring.Workspace("example", new()
///     {
///         Name = "example-amw",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleKubernetesCluster = new Azure.ContainerService.KubernetesCluster("example", new()
///     {
///         Name = "example-cluster",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         DnsPrefix = "example-aks",
///         DefaultNodePool = new Azure.ContainerService.Inputs.KubernetesClusterDefaultNodePoolArgs
///         {
///             Name = "default",
///             NodeCount = 1,
///             VmSize = "Standard_DS2_v2",
///             HostEncryptionEnabled = true,
///         },
///         Identity = new Azure.ContainerService.Inputs.KubernetesClusterIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleAlertPrometheusRuleGroup = new Azure.Monitoring.AlertPrometheusRuleGroup("example", new()
///     {
///         Name = "example-amprg",
///         Location = "West Europe",
///         ResourceGroupName = example.Name,
///         ClusterName = exampleKubernetesCluster.Name,
///         Description = "This is the description of the following rule group",
///         RuleGroupEnabled = false,
///         Interval = "PT1M",
///         Scopes = new[]
///         {
///             exampleWorkspace.Id,
///         },
///         Rules = new[]
///         {
///             new Azure.Monitoring.Inputs.AlertPrometheusRuleGroupRuleArgs
///             {
///                 Enabled = false,
///                 Expression = @"histogram_quantile(0.99, sum(rate(jobs_duration_seconds_bucket{service=\""billing-processing\""}[5m])) by (job_type))
/// ",
///                 Record = "job_type:billing_jobs_duration_seconds:99p5m",
///                 Labels =
///                 {
///                     { "team", "prod" },
///                 },
///             },
///             new Azure.Monitoring.Inputs.AlertPrometheusRuleGroupRuleArgs
///             {
///                 Alert = "Billing_Processing_Very_Slow",
///                 Enabled = true,
///                 Expression = @"histogram_quantile(0.99, sum(rate(jobs_duration_seconds_bucket{service=\""billing-processing\""}[5m])) by (job_type))
/// ",
///                 For = "PT5M",
///                 Severity = 2,
///                 Actions = new[]
///                 {
///                     new Azure.Monitoring.Inputs.AlertPrometheusRuleGroupRuleActionArgs
///                     {
///                         ActionGroupId = exampleActionGroup.Id,
///                     },
///                 },
///                 AlertResolution = new Azure.Monitoring.Inputs.AlertPrometheusRuleGroupRuleAlertResolutionArgs
///                 {
///                     AutoResolved = true,
///                     TimeToResolve = "PT10M",
///                 },
///                 Annotations =
///                 {
///                     { "annotationName", "annotationValue" },
///                 },
///                 Labels =
///                 {
///                     { "team", "prod" },
///                 },
///             },
///         },
///         Tags =
///         {
///             { "key", "value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleActionGroup, err := monitoring.NewActionGroup(ctx, "example", &monitoring.ActionGroupArgs{
/// 			Name:              pulumi.String("example-mag"),
/// 			ResourceGroupName: example.Name,
/// 			ShortName:         pulumi.String("testag"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := monitoring.NewWorkspace(ctx, "example", &monitoring.WorkspaceArgs{
/// 			Name:              pulumi.String("example-amw"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKubernetesCluster, err := containerservice.NewKubernetesCluster(ctx, "example", &containerservice.KubernetesClusterArgs{
/// 			Name:              pulumi.String("example-cluster"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			DnsPrefix:         pulumi.String("example-aks"),
/// 			DefaultNodePool: &containerservice.KubernetesClusterDefaultNodePoolArgs{
/// 				Name:                  pulumi.String("default"),
/// 				NodeCount:             pulumi.Int(1),
/// 				VmSize:                pulumi.String("Standard_DS2_v2"),
/// 				HostEncryptionEnabled: pulumi.Bool(true),
/// 			},
/// 			Identity: &containerservice.KubernetesClusterIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewAlertPrometheusRuleGroup(ctx, "example", &monitoring.AlertPrometheusRuleGroupArgs{
/// 			Name:              pulumi.String("example-amprg"),
/// 			Location:          pulumi.String("West Europe"),
/// 			ResourceGroupName: example.Name,
/// 			ClusterName:       exampleKubernetesCluster.Name,
/// 			Description:       pulumi.String("This is the description of the following rule group"),
/// 			RuleGroupEnabled:  pulumi.Bool(false),
/// 			Interval:          pulumi.String("PT1M"),
/// 			Scopes: pulumi.StringArray{
/// 				exampleWorkspace.ID(),
/// 			},
/// 			Rules: monitoring.AlertPrometheusRuleGroupRuleArray{
/// 				&monitoring.AlertPrometheusRuleGroupRuleArgs{
/// 					Enabled:    pulumi.Bool(false),
/// 					Expression: pulumi.String("histogram_quantile(0.99, sum(rate(jobs_duration_seconds_bucket{service=\\\"billing-processing\\\"}[5m])) by (job_type))\n"),
/// 					Record:     pulumi.String("job_type:billing_jobs_duration_seconds:99p5m"),
/// 					Labels: pulumi.StringMap{
/// 						"team": pulumi.String("prod"),
/// 					},
/// 				},
/// 				&monitoring.AlertPrometheusRuleGroupRuleArgs{
/// 					Alert:      pulumi.String("Billing_Processing_Very_Slow"),
/// 					Enabled:    pulumi.Bool(true),
/// 					Expression: pulumi.String("histogram_quantile(0.99, sum(rate(jobs_duration_seconds_bucket{service=\\\"billing-processing\\\"}[5m])) by (job_type))\n"),
/// 					For:        pulumi.String("PT5M"),
/// 					Severity:   pulumi.Int(2),
/// 					Actions: monitoring.AlertPrometheusRuleGroupRuleActionArray{
/// 						&monitoring.AlertPrometheusRuleGroupRuleActionArgs{
/// 							ActionGroupId: exampleActionGroup.ID(),
/// 						},
/// 					},
/// 					AlertResolution: &monitoring.AlertPrometheusRuleGroupRuleAlertResolutionArgs{
/// 						AutoResolved:  pulumi.Bool(true),
/// 						TimeToResolve: pulumi.String("PT10M"),
/// 					},
/// 					Annotations: pulumi.StringMap{
/// 						"annotationName": pulumi.String("annotationValue"),
/// 					},
/// 					Labels: pulumi.StringMap{
/// 						"team": pulumi.String("prod"),
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.monitoring.ActionGroup;
/// import com.pulumi.azure.monitoring.ActionGroupArgs;
/// import com.pulumi.azure.monitoring.Workspace;
/// import com.pulumi.azure.monitoring.WorkspaceArgs;
/// import com.pulumi.azure.containerservice.KubernetesCluster;
/// import com.pulumi.azure.containerservice.KubernetesClusterArgs;
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterDefaultNodePoolArgs;
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterIdentityArgs;
/// import com.pulumi.azure.monitoring.AlertPrometheusRuleGroup;
/// import com.pulumi.azure.monitoring.AlertPrometheusRuleGroupArgs;
/// import com.pulumi.azure.monitoring.inputs.AlertPrometheusRuleGroupRuleArgs;
/// import com.pulumi.azure.monitoring.inputs.AlertPrometheusRuleGroupRuleAlertResolutionArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleActionGroup = new ActionGroup("exampleActionGroup", ActionGroupArgs.builder()
///             .name("example-mag")
///             .resourceGroupName(example.name())
///             .shortName("testag")
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example-amw")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleKubernetesCluster = new KubernetesCluster("exampleKubernetesCluster", KubernetesClusterArgs.builder()
///             .name("example-cluster")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .dnsPrefix("example-aks")
///             .defaultNodePool(KubernetesClusterDefaultNodePoolArgs.builder()
///                 .name("default")
///                 .nodeCount(1)
///                 .vmSize("Standard_DS2_v2")
///                 .hostEncryptionEnabled(true)
///                 .build())
///             .identity(KubernetesClusterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleAlertPrometheusRuleGroup = new AlertPrometheusRuleGroup("exampleAlertPrometheusRuleGroup", AlertPrometheusRuleGroupArgs.builder()
///             .name("example-amprg")
///             .location("West Europe")
///             .resourceGroupName(example.name())
///             .clusterName(exampleKubernetesCluster.name())
///             .description("This is the description of the following rule group")
///             .ruleGroupEnabled(false)
///             .interval("PT1M")
///             .scopes(exampleWorkspace.id())
///             .rules(
///                 AlertPrometheusRuleGroupRuleArgs.builder()
///                     .enabled(false)
///                     .expression("""
/// histogram_quantile(0.99, sum(rate(jobs_duration_seconds_bucket{service=\"billing-processing\"}[5m])) by (job_type))
///                     """)
///                     .record("job_type:billing_jobs_duration_seconds:99p5m")
///                     .labels(Map.of("team", "prod"))
///                     .build(),
///                 AlertPrometheusRuleGroupRuleArgs.builder()
///                     .alert("Billing_Processing_Very_Slow")
///                     .enabled(true)
///                     .expression("""
/// histogram_quantile(0.99, sum(rate(jobs_duration_seconds_bucket{service=\"billing-processing\"}[5m])) by (job_type))
///                     """)
///                     .for_("PT5M")
///                     .severity(2)
///                     .actions(AlertPrometheusRuleGroupRuleActionArgs.builder()
///                         .actionGroupId(exampleActionGroup.id())
///                         .build())
///                     .alertResolution(AlertPrometheusRuleGroupRuleAlertResolutionArgs.builder()
///                         .autoResolved(true)
///                         .timeToResolve("PT10M")
///                         .build())
///                     .annotations(Map.of("annotationName", "annotationValue"))
///                     .labels(Map.of("team", "prod"))
///                     .build())
///             .tags(Map.of("key", "value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleActionGroup:
///     type: azure:monitoring:ActionGroup
///     name: example
///     properties:
///       name: example-mag
///       resourceGroupName: ${example.name}
///       shortName: testag
///   exampleWorkspace:
///     type: azure:monitoring:Workspace
///     name: example
///     properties:
///       name: example-amw
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleKubernetesCluster:
///     type: azure:containerservice:KubernetesCluster
///     name: example
///     properties:
///       name: example-cluster
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       dnsPrefix: example-aks
///       defaultNodePool:
///         name: default
///         nodeCount: 1
///         vmSize: Standard_DS2_v2
///         hostEncryptionEnabled: true
///       identity:
///         type: SystemAssigned
///   exampleAlertPrometheusRuleGroup:
///     type: azure:monitoring:AlertPrometheusRuleGroup
///     name: example
///     properties:
///       name: example-amprg
///       location: West Europe
///       resourceGroupName: ${example.name}
///       clusterName: ${exampleKubernetesCluster.name}
///       description: This is the description of the following rule group
///       ruleGroupEnabled: false
///       interval: PT1M
///       scopes:
///         - ${exampleWorkspace.id}
///       rules:
///         - enabled: false
///           expression: |
///             histogram_quantile(0.99, sum(rate(jobs_duration_seconds_bucket{service=\"billing-processing\"}[5m])) by (job_type))
///           record: job_type:billing_jobs_duration_seconds:99p5m
///           labels:
///             team: prod
///         - alert: Billing_Processing_Very_Slow
///           enabled: true
///           expression: |
///             histogram_quantile(0.99, sum(rate(jobs_duration_seconds_bucket{service=\"billing-processing\"}[5m])) by (job_type))
///           for: PT5M
///           severity: 2
///           actions:
///             - actionGroupId: ${exampleActionGroup.id}
///           alertResolution:
///             autoResolved: true
///             timeToResolve: PT10M
///           annotations:
///             annotationName: annotationValue
///           labels:
///             team: prod
///       tags:
///         key: value
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AlertsManagement` - 2023-03-01
///
/// ## Import
///
/// Alert Management Prometheus Rule Group can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:monitoring/alertPrometheusRuleGroup:AlertPrometheusRuleGroup example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.AlertsManagement/prometheusRuleGroups/ruleGroup1
/// ```
class AlertPrometheusRuleGroup extends pulumi.CustomResource {
  /// Specifies the name of the Managed Kubernetes Cluster.
  late final pulumi.Output<String?> clusterName;
  /// The description of the Alert Management Prometheus Rule Group.
  late final pulumi.Output<String?> description;
  /// Specifies the interval in which to run the Alert Management Prometheus Rule Group represented in ISO 8601 duration format. Possible values are between `PT1M` and `PT15M`.
  late final pulumi.Output<String?> interval;
  /// Specifies the Azure Region where the Alert Management Prometheus Rule Group should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name which should be used for this Alert Management Prometheus Rule Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the name of the Resource Group where the Alert Management Prometheus Rule Group should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Is this Alert Management Prometheus Rule Group enabled? Possible values are `true` and `false`.
  late final pulumi.Output<bool?> ruleGroupEnabled;
  /// One or more `rule` blocks as defined below.
  late final pulumi.Output<List<AlertPrometheusRuleGroupRule>> rules;
  /// Specifies the resource ID of the Azure Monitor Workspace.
  late final pulumi.Output<List<String>> scopes;
  /// A mapping of tags to assign to the Alert Management Prometheus Rule Group.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [AlertPrometheusRuleGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertPrometheusRuleGroup]. {@macro pulumi_monitoring_alert_prometheus_rule_group_alert_prometheus_rule_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertPrometheusRuleGroup(
    String name, {
    AlertPrometheusRuleGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/alertPrometheusRuleGroup:AlertPrometheusRuleGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterName = registerOutput<String?>('clusterName');
    this.description = registerOutput<String?>('description');
    this.interval = registerOutput<String?>('interval');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.ruleGroupEnabled = registerOutput<bool?>('ruleGroupEnabled');
    this.rules = registerOutput<List<AlertPrometheusRuleGroupRule>>('rules');
    this.scopes = registerOutput<List<String>>('scopes');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [AlertPrometheusRuleGroup] resource's state with the given [name] and [id].
  static AlertPrometheusRuleGroup get(
    String name,
    pulumi.Input<String> id, {
    AlertPrometheusRuleGroupState? state,
  }) {
    return AlertPrometheusRuleGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AlertPrometheusRuleGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/alertPrometheusRuleGroup:AlertPrometheusRuleGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterName = registerOutput<String?>('clusterName');
    this.description = registerOutput<String?>('description');
    this.interval = registerOutput<String?>('interval');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.ruleGroupEnabled = registerOutput<bool?>('ruleGroupEnabled');
    this.rules = registerOutput<List<AlertPrometheusRuleGroupRule>>('rules');
    this.scopes = registerOutput<List<String>>('scopes');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
