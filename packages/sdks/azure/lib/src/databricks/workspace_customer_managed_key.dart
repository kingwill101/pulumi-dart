import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_customer_managed_key_args.dart';
import 'workspace_customer_managed_key_state.dart';

/// Manages a Databricks Workspace
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
/// const exampleWorkspace = new azure.databricks.Workspace("example", {
///     name: "databricks-test",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "standard",
///     tags: {
///         Environment: "Production",
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
/// example_workspace = azure.databricks.Workspace("example",
///     name="databricks-test",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="standard",
///     tags={
///         "Environment": "Production",
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
///     var exampleWorkspace = new Azure.DataBricks.Workspace("example", new()
///     {
///         Name = "databricks-test",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "standard",
///         Tags =
///         {
///             { "Environment", "Production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/databricks"
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
/// 		_, err = databricks.NewWorkspace(ctx, "example", &databricks.WorkspaceArgs{
/// 			Name:              pulumi.String("databricks-test"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("standard"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Production"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_databricks_workspace" "example" {
///   name                = "databricks-test"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   sku                 = "standard"
///   tags = {
///     "Environment" = "Production"
///   }
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
/// import com.pulumi.azure.databricks.Workspace;
/// import com.pulumi.azure.databricks.WorkspaceArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("databricks-test")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("standard")
///             .tags(Map.of("Environment", "Production"))
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
///   exampleWorkspace:
///     type: azure:databricks:Workspace
///     name: example
///     properties:
///       name: databricks-test
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: standard
///       tags:
///         Environment: Production
/// ```
///
///
/// &gt; **Note:** You can use the Databricks Terraform Provider to manage resources within the Databricks Workspace.
///
/// ## Example HCL Configurations
///
/// * Databricks Workspace Secure Connectivity Cluster with Load Balancer
/// * Databricks Workspace Secure Connectivity Cluster without Load Balancer
/// * Databricks Workspace with Private Endpoint
/// * Databricks Workspace with Private Endpoint, Customer Managed Keys for Managed Services and Databricks File System Customer Managed Keys
/// * Databricks Workspace with Root Databricks File System Customer Managed Keys
/// * Databricks Workspace with Root Databricks File System Customer Managed Keys in a Different Subscription
/// * Databricks Workspace with Customer Managed Keys for Managed Services
/// * Databricks Workspace with Customer Managed Keys for Managed Services with Key Vault and Key in a Different Subscription
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Databricks` - 2026-01-01
///
/// * `Microsoft.Network` - 2025-01-01, 2023-09-01
///
/// ## Import
///
/// Databrick Workspaces can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:databricks/workspaceCustomerManagedKey:WorkspaceCustomerManagedKey workspace1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Databricks/workspaces/workspace1
/// ```
class WorkspaceCustomerManagedKey extends pulumi.CustomResource {
  late final pulumi.Output<String> keyVaultKeyId;
  /// The unique identifier of the databricks workspace in Databricks control plane.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [WorkspaceCustomerManagedKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceCustomerManagedKey]. {@macro pulumi_databricks_workspace_customer_managed_key_workspace_customer_managed_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceCustomerManagedKey(
    String name, {
    WorkspaceCustomerManagedKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:databricks/workspaceCustomerManagedKey:WorkspaceCustomerManagedKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    keyVaultKeyId = registerOutput<String>('keyVaultKeyId');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [WorkspaceCustomerManagedKey] resource's state with the given [name] and [id].
  static WorkspaceCustomerManagedKey get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceCustomerManagedKeyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WorkspaceCustomerManagedKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WorkspaceCustomerManagedKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:databricks/workspaceCustomerManagedKey:WorkspaceCustomerManagedKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    keyVaultKeyId = registerOutput<String>('keyVaultKeyId');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Creates a typed reference to an existing [WorkspaceCustomerManagedKey] resource.
  WorkspaceCustomerManagedKey.reference(String urn)
    : super(
        'azure:databricks/workspaceCustomerManagedKey:WorkspaceCustomerManagedKey',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    keyVaultKeyId = registerOutput<String>('keyVaultKeyId');
    workspaceId = registerOutput<String>('workspaceId');
  }
}
