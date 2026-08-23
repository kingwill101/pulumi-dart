import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_connector_aws_cloud_trail_args.dart';
import 'data_connector_aws_cloud_trail_state.dart';

/// Manages a AWS CloudTrail Data Connector.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "West Europe",
/// });
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "example-workspace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
/// });
/// const exampleLogAnalyticsWorkspaceOnboarding = new azure.sentinel.LogAnalyticsWorkspaceOnboarding("example", {workspaceId: exampleAnalyticsWorkspace.id});
/// const exampleDataConnectorAwsCloudTrail = new azure.sentinel.DataConnectorAwsCloudTrail("example", {
///     name: "example",
///     logAnalyticsWorkspaceId: exampleLogAnalyticsWorkspaceOnboarding.workspaceId,
///     awsRoleArn: "arn:aws:iam::000000000000:role/role1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="example-workspace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018")
/// example_log_analytics_workspace_onboarding = azure.sentinel.LogAnalyticsWorkspaceOnboarding("example", workspace_id=example_analytics_workspace.id)
/// example_data_connector_aws_cloud_trail = azure.sentinel.DataConnectorAwsCloudTrail("example",
///     name="example",
///     log_analytics_workspace_id=example_log_analytics_workspace_onboarding.workspace_id,
///     aws_role_arn="arn:aws:iam::000000000000:role/role1")
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
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "example-workspace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///     });
///
///     var exampleLogAnalyticsWorkspaceOnboarding = new Azure.Sentinel.LogAnalyticsWorkspaceOnboarding("example", new()
///     {
///         WorkspaceId = exampleAnalyticsWorkspace.Id,
///     });
///
///     var exampleDataConnectorAwsCloudTrail = new Azure.Sentinel.DataConnectorAwsCloudTrail("example", new()
///     {
///         Name = "example",
///         LogAnalyticsWorkspaceId = exampleLogAnalyticsWorkspaceOnboarding.WorkspaceId,
///         AwsRoleArn = "arn:aws:iam::000000000000:role/role1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/sentinel"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("example-workspace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLogAnalyticsWorkspaceOnboarding, err := sentinel.NewLogAnalyticsWorkspaceOnboarding(ctx, "example", &sentinel.LogAnalyticsWorkspaceOnboardingArgs{
/// 			WorkspaceId: exampleAnalyticsWorkspace.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sentinel.NewDataConnectorAwsCloudTrail(ctx, "example", &sentinel.DataConnectorAwsCloudTrailArgs{
/// 			Name:                    pulumi.String("example"),
/// 			LogAnalyticsWorkspaceId: exampleLogAnalyticsWorkspaceOnboarding.WorkspaceId,
/// 			AwsRoleArn:              pulumi.String("arn:aws:iam::000000000000:role/role1"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-rg"
///   location = "West Europe"
/// }
/// resource "azure_operationalinsights_analyticsworkspace" "example" {
///   name                = "example-workspace"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "PerGB2018"
/// }
/// resource "azure_sentinel_loganalyticsworkspaceonboarding" "example" {
///   workspace_id = azure_operationalinsights_analyticsworkspace.example.id
/// }
/// resource "azure_sentinel_dataconnectorawscloudtrail" "example" {
///   name                       = "example"
///   log_analytics_workspace_id = azure_sentinel_loganalyticsworkspaceonboarding.example.workspace_id
///   aws_role_arn               = "arn:aws:iam::000000000000:role/role1"
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
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.sentinel.LogAnalyticsWorkspaceOnboarding;
/// import com.pulumi.azure.sentinel.LogAnalyticsWorkspaceOnboardingArgs;
/// import com.pulumi.azure.sentinel.DataConnectorAwsCloudTrail;
/// import com.pulumi.azure.sentinel.DataConnectorAwsCloudTrailArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("example-workspace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .build());
///
///         var exampleLogAnalyticsWorkspaceOnboarding = new LogAnalyticsWorkspaceOnboarding("exampleLogAnalyticsWorkspaceOnboarding", LogAnalyticsWorkspaceOnboardingArgs.builder()
///             .workspaceId(exampleAnalyticsWorkspace.id())
///             .build());
///
///         var exampleDataConnectorAwsCloudTrail = new DataConnectorAwsCloudTrail("exampleDataConnectorAwsCloudTrail", DataConnectorAwsCloudTrailArgs.builder()
///             .name("example")
///             .logAnalyticsWorkspaceId(exampleLogAnalyticsWorkspaceOnboarding.workspaceId())
///             .awsRoleArn("arn:aws:iam::000000000000:role/role1")
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
///       name: example-rg
///       location: West Europe
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: example-workspace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///   exampleLogAnalyticsWorkspaceOnboarding:
///     type: azure:sentinel:LogAnalyticsWorkspaceOnboarding
///     name: example
///     properties:
///       workspaceId: ${exampleAnalyticsWorkspace.id}
///   exampleDataConnectorAwsCloudTrail:
///     type: azure:sentinel:DataConnectorAwsCloudTrail
///     name: example
///     properties:
///       name: example
///       logAnalyticsWorkspaceId: ${exampleLogAnalyticsWorkspaceOnboarding.workspaceId}
///       awsRoleArn: arn:aws:iam::000000000000:role/role1
/// ```
///
///
/// ## Import
///
/// AWS CloudTrail Data Connectors can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:sentinel/dataConnectorAwsCloudTrail:DataConnectorAwsCloudTrail example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.OperationalInsights/workspaces/workspace1/providers/Microsoft.SecurityInsights/dataConnectors/dc1
/// ```
class DataConnectorAwsCloudTrail extends pulumi.CustomResource {
  /// The ARN of the AWS CloudTrail role, which is connected to this AWS CloudTrail Data Connector.
  late final pulumi.Output<String> awsRoleArn;
  /// The ID of the Log Analytics Workspace that this AWS CloudTrail Data Connector resides in. Changing this forces a new AWS CloudTrail Data Connector to be created.
  late final pulumi.Output<String> logAnalyticsWorkspaceId;
  /// The name which should be used for this AWS CloudTrail Data Connector. Changing this forces a new AWS CloudTrail Data Connector to be created.
  late final pulumi.Output<String> name;

  /// Creates a new [DataConnectorAwsCloudTrail].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataConnectorAwsCloudTrail]. {@macro pulumi_sentinel_data_connector_aws_cloud_trail_data_connector_aws_cloud_trail_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataConnectorAwsCloudTrail(
    String name, {
    DataConnectorAwsCloudTrailArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/dataConnectorAwsCloudTrail:DataConnectorAwsCloudTrail',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    awsRoleArn = registerOutput<String>('awsRoleArn');
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [DataConnectorAwsCloudTrail] resource's state with the given [name] and [id].
  static DataConnectorAwsCloudTrail get(
    String name,
    pulumi.Input<String> id, {
    DataConnectorAwsCloudTrailState? state,
  }) {
    return DataConnectorAwsCloudTrail._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataConnectorAwsCloudTrail._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/dataConnectorAwsCloudTrail:DataConnectorAwsCloudTrail',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    awsRoleArn = registerOutput<String>('awsRoleArn');
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
  }
}
