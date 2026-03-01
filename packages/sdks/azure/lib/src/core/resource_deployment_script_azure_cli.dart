import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_deployment_script_azure_cli_args.dart';
import 'resource_deployment_script_azure_cli_container.dart';
import 'resource_deployment_script_azure_cli_environment_variable.dart';
import 'resource_deployment_script_azure_cli_identity.dart';
import 'resource_deployment_script_azure_cli_state.dart';
import 'resource_deployment_script_azure_cli_storage_account.dart';

/// Manages a Resource Deployment Script of Azure Cli.
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
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     name: "example-uai",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleResourceDeploymentScriptAzureCli = new azure.core.ResourceDeploymentScriptAzureCli("example", {
///     name: "example-rdsac",
///     resourceGroupName: example.name,
///     location: "West Europe",
///     version: "2.40.0",
///     retentionInterval: "P1D",
///     commandLine: "'foo' 'bar'",
///     cleanupPreference: "OnSuccess",
///     forceUpdateTag: "1",
///     timeout: "PT30M",
///     scriptContent: "            echo \\\"{\\\\\\\"name\\\\\\\":{\\\\\\\"displayName\\\\\\\":\\\\\\\"$1 $2\\\\\\\"}}\\\" > $AZ_SCRIPTS_OUTPUT_PATH\n",
///     identity: {
///         type: "UserAssigned",
///         identityIds: [exampleUserAssignedIdentity.id],
///     },
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
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     name="example-uai",
///     location=example.location,
///     resource_group_name=example.name)
/// example_resource_deployment_script_azure_cli = azure.core.ResourceDeploymentScriptAzureCli("example",
///     name="example-rdsac",
///     resource_group_name=example.name,
///     location="West Europe",
///     version="2.40.0",
///     retention_interval="P1D",
///     command_line="'foo' 'bar'",
///     cleanup_preference="OnSuccess",
///     force_update_tag="1",
///     timeout="PT30M",
///     script_content="            echo \\\"{\\\\\\\"name\\\\\\\":{\\\\\\\"displayName\\\\\\\":\\\\\\\"$1 $2\\\\\\\"}}\\\" > $AZ_SCRIPTS_OUTPUT_PATH\n",
///     identity={
///         "type": "UserAssigned",
///         "identity_ids": [example_user_assigned_identity.id],
///     },
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
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         Name = "example-uai",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleResourceDeploymentScriptAzureCli = new Azure.Core.ResourceDeploymentScriptAzureCli("example", new()
///     {
///         Name = "example-rdsac",
///         ResourceGroupName = example.Name,
///         Location = "West Europe",
///         Version = "2.40.0",
///         RetentionInterval = "P1D",
///         CommandLine = "'foo' 'bar'",
///         CleanupPreference = "OnSuccess",
///         ForceUpdateTag = "1",
///         Timeout = "PT30M",
///         ScriptContent = @"            echo \""{\\\""name\\\"":{\\\""displayName\\\"":\\\""$1 $2\\\""}}\"" > $AZ_SCRIPTS_OUTPUT_PATH
/// ",
///         Identity = new Azure.Core.Inputs.ResourceDeploymentScriptAzureCliIdentityArgs
///         {
///             Type = "UserAssigned",
///             IdentityIds = new[]
///             {
///                 exampleUserAssignedIdentity.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
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
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			Name:              pulumi.String("example-uai"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.NewResourceDeploymentScriptAzureCli(ctx, "example", &core.ResourceDeploymentScriptAzureCliArgs{
/// 			Name:              pulumi.String("example-rdsac"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          pulumi.String("West Europe"),
/// 			Version:           pulumi.String("2.40.0"),
/// 			RetentionInterval: pulumi.String("P1D"),
/// 			CommandLine:       pulumi.String("'foo' 'bar'"),
/// 			CleanupPreference: pulumi.String("OnSuccess"),
/// 			ForceUpdateTag:    pulumi.String("1"),
/// 			Timeout:           pulumi.String("PT30M"),
/// 			ScriptContent:     pulumi.String("            echo \\\"{\\\\\\\"name\\\\\\\":{\\\\\\\"displayName\\\\\\\":\\\\\\\"$1 $2\\\\\\\"}}\\\" > $AZ_SCRIPTS_OUTPUT_PATH\n"),
/// 			Identity: &core.ResourceDeploymentScriptAzureCliIdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID(),
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
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.core.ResourceDeploymentScriptAzureCli;
/// import com.pulumi.azure.core.ResourceDeploymentScriptAzureCliArgs;
/// import com.pulumi.azure.core.inputs.ResourceDeploymentScriptAzureCliIdentityArgs;
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
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .name("example-uai")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleResourceDeploymentScriptAzureCli = new ResourceDeploymentScriptAzureCli("exampleResourceDeploymentScriptAzureCli", ResourceDeploymentScriptAzureCliArgs.builder()
///             .name("example-rdsac")
///             .resourceGroupName(example.name())
///             .location("West Europe")
///             .version("2.40.0")
///             .retentionInterval("P1D")
///             .commandLine("'foo' 'bar'")
///             .cleanupPreference("OnSuccess")
///             .forceUpdateTag("1")
///             .timeout("PT30M")
///             .scriptContent("""
///             echo \"{\\\"name\\\":{\\\"displayName\\\":\\\"$1 $2\\\"}}\" > $AZ_SCRIPTS_OUTPUT_PATH
///             """)
///             .identity(ResourceDeploymentScriptAzureCliIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .identityIds(exampleUserAssignedIdentity.id())
///                 .build())
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
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       name: example-uai
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleResourceDeploymentScriptAzureCli:
///     type: azure:core:ResourceDeploymentScriptAzureCli
///     name: example
///     properties:
///       name: example-rdsac
///       resourceGroupName: ${example.name}
///       location: West Europe
///       version: 2.40.0
///       retentionInterval: P1D
///       commandLine: '''foo'' ''bar'''
///       cleanupPreference: OnSuccess
///       forceUpdateTag: '1'
///       timeout: PT30M
///       scriptContent: |2
///                     echo \"{\\\"name\\\":{\\\"displayName\\\":\\\"$1 $2\\\"}}\" > $AZ_SCRIPTS_OUTPUT_PATH
///       identity:
///         type: UserAssigned
///         identityIds:
///           - ${exampleUserAssignedIdentity.id}
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
/// * `Microsoft.Resources` - 2020-10-01
///
/// ## Import
///
/// Resource Deployment Script can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:core/resourceDeploymentScriptAzureCli:ResourceDeploymentScriptAzureCli example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Resources/deploymentScripts/script1
/// ```
class ResourceDeploymentScriptAzureCli extends pulumi.CustomResource {
  /// Specifies the cleanup preference when the script execution gets in a terminal state. Possible values are `Always`, `OnExpiration`, `OnSuccess`. Defaults to `Always`. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<String?> cleanupPreference;
  /// Command line arguments to pass to the script. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<String?> commandLine;
  /// A `container` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<ResourceDeploymentScriptAzureCliContainer?> container;
  /// An `environment_variable` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<List<ResourceDeploymentScriptAzureCliEnvironmentVariable>?> environmentVariables;
  /// Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<String?> forceUpdateTag;
  /// An `identity` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<ResourceDeploymentScriptAzureCliIdentity?> identity;
  /// Specifies the Azure Region where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name which should be used for this Resource Deployment Script. The name length must be from 1 to 260 characters. The name can only contain alphanumeric, underscore, parentheses, hyphen and period, and it cannot end with a period. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<String> name;
  /// List of script outputs.
  late final pulumi.Output<String> outputs;
  /// Uri for the script. This is the entry point for the external script. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<String?> primaryScriptUri;
  /// Specifies the name of the Resource Group where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. The time duration should be between `1` hour and `26` hours (inclusive) and should be specified in ISO 8601 format. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<String> retentionInterval;
  /// Script body. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<String?> scriptContent;
  /// A `storage_account` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<ResourceDeploymentScriptAzureCliStorageAccount?> storageAccount;
  /// Supporting files for the external script. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<List<String>?> supportingScriptUris;
  /// A mapping of tags which should be assigned to the Resource Deployment Script.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Maximum allowed script execution time specified in ISO 8601 format. Needs to be greater than 0 and smaller than 1 day. Defaults to `P1D`. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<String?> timeout;
  /// Specifies the version of the Azure CLI that should be used in the format `X.Y.Z` (e.g. `2.30.0`). A canonical list of versions [is available from the Microsoft Container Registry API](https://mcr.microsoft.com/v2/azure-cli/tags/list). Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<String> version;

  /// Creates a new [ResourceDeploymentScriptAzureCli].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceDeploymentScriptAzureCli]. {@macro pulumi_core_resource_deployment_script_azure_cli_resource_deployment_script_azure_cli_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceDeploymentScriptAzureCli(
    String name, {
    ResourceDeploymentScriptAzureCliArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/resourceDeploymentScriptAzureCli:ResourceDeploymentScriptAzureCli',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cleanupPreference = registerOutput<String?>('cleanupPreference');
    this.commandLine = registerOutput<String?>('commandLine');
    this.container = registerOutput<ResourceDeploymentScriptAzureCliContainer?>('container');
    this.environmentVariables = registerOutput<List<ResourceDeploymentScriptAzureCliEnvironmentVariable>?>('environmentVariables');
    this.forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    this.identity = registerOutput<ResourceDeploymentScriptAzureCliIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.outputs = registerOutput<String>('outputs');
    this.primaryScriptUri = registerOutput<String?>('primaryScriptUri');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.retentionInterval = registerOutput<String>('retentionInterval');
    this.scriptContent = registerOutput<String?>('scriptContent');
    this.storageAccount = registerOutput<ResourceDeploymentScriptAzureCliStorageAccount?>('storageAccount');
    this.supportingScriptUris = registerOutput<List<String>?>('supportingScriptUris');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.timeout = registerOutput<String?>('timeout');
    this.version = registerOutput<String>('version');
  }

  /// Gets an existing [ResourceDeploymentScriptAzureCli] resource's state with the given [name] and [id].
  static ResourceDeploymentScriptAzureCli get(
    String name,
    pulumi.Input<String> id, {
    ResourceDeploymentScriptAzureCliState? state,
  }) {
    return ResourceDeploymentScriptAzureCli._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResourceDeploymentScriptAzureCli._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/resourceDeploymentScriptAzureCli:ResourceDeploymentScriptAzureCli',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cleanupPreference = registerOutput<String?>('cleanupPreference');
    this.commandLine = registerOutput<String?>('commandLine');
    this.container = registerOutput<ResourceDeploymentScriptAzureCliContainer?>('container');
    this.environmentVariables = registerOutput<List<ResourceDeploymentScriptAzureCliEnvironmentVariable>?>('environmentVariables');
    this.forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    this.identity = registerOutput<ResourceDeploymentScriptAzureCliIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.outputs = registerOutput<String>('outputs');
    this.primaryScriptUri = registerOutput<String?>('primaryScriptUri');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.retentionInterval = registerOutput<String>('retentionInterval');
    this.scriptContent = registerOutput<String?>('scriptContent');
    this.storageAccount = registerOutput<ResourceDeploymentScriptAzureCliStorageAccount?>('storageAccount');
    this.supportingScriptUris = registerOutput<List<String>?>('supportingScriptUris');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.timeout = registerOutput<String?>('timeout');
    this.version = registerOutput<String>('version');
  }
}
