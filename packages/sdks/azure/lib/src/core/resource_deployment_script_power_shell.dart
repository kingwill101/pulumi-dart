import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_deployment_script_power_shell_args.dart';
import 'resource_deployment_script_power_shell_container.dart';
import 'resource_deployment_script_power_shell_environment_variable.dart';
import 'resource_deployment_script_power_shell_identity.dart';
import 'resource_deployment_script_power_shell_state.dart';
import 'resource_deployment_script_power_shell_storage_account.dart';

/// Manages a Resource Deployment Script of Azure PowerShell.
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
/// const exampleResourceDeploymentScriptPowerShell = new azure.core.ResourceDeploymentScriptPowerShell("example", {
///     name: "example-rdsaps",
///     resourceGroupName: example.name,
///     location: "West Europe",
///     version: "8.3",
///     retentionInterval: "P1D",
///     commandLine: "-name \"John Dole\"",
///     cleanupPreference: "OnSuccess",
///     forceUpdateTag: "1",
///     timeout: "PT30M",
///     scriptContent: `          param([string] name)
///             output = 'Hello {0}.' -f name
///             Write-Output output
///             DeploymentScriptOutputs = @{}
///             DeploymentScriptOutputs['text'] = output
/// `,
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
/// example_resource_deployment_script_power_shell = azure.core.ResourceDeploymentScriptPowerShell("example",
///     name="example-rdsaps",
///     resource_group_name=example.name,
///     location="West Europe",
///     version="8.3",
///     retention_interval="P1D",
///     command_line="-name \"John Dole\"",
///     cleanup_preference="OnSuccess",
///     force_update_tag="1",
///     timeout="PT30M",
///     script_content="""          param([string] $name)
///             $output = 'Hello {0}.' -f $name
///             Write-Output $output
///             $DeploymentScriptOutputs = @{}
///             $DeploymentScriptOutputs['text'] = $output
/// """,
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
///     var exampleResourceDeploymentScriptPowerShell = new Azure.Core.ResourceDeploymentScriptPowerShell("example", new()
///     {
///         Name = "example-rdsaps",
///         ResourceGroupName = example.Name,
///         Location = "West Europe",
///         Version = "8.3",
///         RetentionInterval = "P1D",
///         CommandLine = "-name \"John Dole\"",
///         CleanupPreference = "OnSuccess",
///         ForceUpdateTag = "1",
///         Timeout = "PT30M",
///         ScriptContent = @"          param([string] $name)
///             $output = 'Hello {0}.' -f $name
///             Write-Output $output
///             $DeploymentScriptOutputs = @{}
///             $DeploymentScriptOutputs['text'] = $output
/// ",
///         Identity = new Azure.Core.Inputs.ResourceDeploymentScriptPowerShellIdentityArgs
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
/// 		_, err = core.NewResourceDeploymentScriptPowerShell(ctx, "example", &core.ResourceDeploymentScriptPowerShellArgs{
/// 			Name:              pulumi.String("example-rdsaps"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          pulumi.String("West Europe"),
/// 			Version:           pulumi.String("8.3"),
/// 			RetentionInterval: pulumi.String("P1D"),
/// 			CommandLine:       pulumi.String("-name \"John Dole\""),
/// 			CleanupPreference: pulumi.String("OnSuccess"),
/// 			ForceUpdateTag:    pulumi.String("1"),
/// 			Timeout:           pulumi.String("PT30M"),
/// 			ScriptContent: pulumi.String(`          param([string] $name)
///             $output = 'Hello {0}.' -f $name
///             Write-Output $output
///             $DeploymentScriptOutputs = @{}
///             $DeploymentScriptOutputs['text'] = $output
/// `),
/// 			Identity: &core.ResourceDeploymentScriptPowerShellIdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID().ToIDOutput().ToStringOutput(),
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
/// resource "azure_authorization_userassignedidentity" "example" {
///   name                = "example-uai"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_core_resourcedeploymentscriptpowershell" "example" {
///   name                = "example-rdsaps"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = "West Europe"
///   version             = "8.3"
///   retention_interval  = "P1D"
///   command_line        = "-name \"John Dole\""
///   cleanup_preference  = "OnSuccess"
///   force_update_tag    = "1"
///   timeout             = "PT30M"
///   script_content      = "          param([string] $name)\n            $output = 'Hello {0}.' -f $name\n            Write-Output $output\n            $DeploymentScriptOutputs = @{}\n            $DeploymentScriptOutputs['text'] = $output\n"
///   identity = {
///     type         = "UserAssigned"
///     identity_ids = [azure_authorization_userassignedidentity.example.id]
///   }
///   tags = {
///     "key" = "value"
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
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.core.ResourceDeploymentScriptPowerShell;
/// import com.pulumi.azure.core.ResourceDeploymentScriptPowerShellArgs;
/// import com.pulumi.azure.core.inputs.ResourceDeploymentScriptPowerShellIdentityArgs;
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
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .name("example-uai")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleResourceDeploymentScriptPowerShell = new ResourceDeploymentScriptPowerShell("exampleResourceDeploymentScriptPowerShell", ResourceDeploymentScriptPowerShellArgs.builder()
///             .name("example-rdsaps")
///             .resourceGroupName(example.name())
///             .location("West Europe")
///             .version("8.3")
///             .retentionInterval("P1D")
///             .commandLine("-name \"John Dole\"")
///             .cleanupPreference("OnSuccess")
///             .forceUpdateTag("1")
///             .timeout("PT30M")
///             .scriptContent("""
///           param([string] $name)
///             $output = 'Hello {0}.' -f $name
///             Write-Output $output
///             $DeploymentScriptOutputs = @{}
///             $DeploymentScriptOutputs['text'] = $output
///             """)
///             .identity(ResourceDeploymentScriptPowerShellIdentityArgs.builder()
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
///   exampleResourceDeploymentScriptPowerShell:
///     type: azure:core:ResourceDeploymentScriptPowerShell
///     name: example
///     properties:
///       name: example-rdsaps
///       resourceGroupName: ${example.name}
///       location: West Europe
///       version: '8.3'
///       retentionInterval: P1D
///       commandLine: -name "John Dole"
///       cleanupPreference: OnSuccess
///       forceUpdateTag: '1'
///       timeout: PT30M
///       scriptContent: |2
///                   param([string] $name)
///                     $output = 'Hello {0}.' -f $name
///                     Write-Output $output
///                     $DeploymentScriptOutputs = @{}
///                     $DeploymentScriptOutputs['text'] = $output
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
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Resources` - 2020-10-01
///
/// ## Import
///
/// Resource Deployment Script can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:core/resourceDeploymentScriptPowerShell:ResourceDeploymentScriptPowerShell example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Resources/deploymentScripts/script1
/// ```
class ResourceDeploymentScriptPowerShell extends pulumi.CustomResource {
  /// Specifies the cleanup preference when the script execution gets in a terminal state. Possible values are `Always`, `OnExpiration`, `OnSuccess`. Defaults to `Always`. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<String?> cleanupPreference;
  /// Command line arguments to pass to the script. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<String?> commandLine;
  /// A `container` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<ResourceDeploymentScriptPowerShellContainer?> container;
  /// An `environmentVariable` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<List<ResourceDeploymentScriptPowerShellEnvironmentVariable>?> environmentVariables;
  /// Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<String?> forceUpdateTag;
  /// An `identity` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<ResourceDeploymentScriptPowerShellIdentity?> identity;
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
  /// A `storageAccount` block as defined below. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<ResourceDeploymentScriptPowerShellStorageAccount?> storageAccount;
  /// Supporting files for the external script. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<List<String>?> supportingScriptUris;
  /// A mapping of tags which should be assigned to the Resource Deployment Script.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Maximum allowed script execution time specified in ISO 8601 format. Needs to be greater than 0 and smaller than 1 day. Defaults to `P1D`. Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<String?> timeout;
  /// Specifies the version of the Azure PowerShell that should be used in the format `X.Y` (e.g. `9.7`). A canonical list of versions [is available from the Microsoft Container Registry API](https://mcr.microsoft.com/v2/azure-powershell/tags/list). Changing this forces a new Resource Deployment Script to be created.
  late final pulumi.Output<String> version;

  /// Creates a new [ResourceDeploymentScriptPowerShell].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceDeploymentScriptPowerShell]. {@macro pulumi_core_resource_deployment_script_power_shell_resource_deployment_script_power_shell_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceDeploymentScriptPowerShell(
    String name, {
    ResourceDeploymentScriptPowerShellArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/resourceDeploymentScriptPowerShell:ResourceDeploymentScriptPowerShell',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    cleanupPreference = registerOutput<String?>('cleanupPreference');
    commandLine = registerOutput<String?>('commandLine');
    container = registerOutput<ResourceDeploymentScriptPowerShellContainer?>('container', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceDeploymentScriptPowerShellContainer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    environmentVariables = registerOutput<List<ResourceDeploymentScriptPowerShellEnvironmentVariable>?>('environmentVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceDeploymentScriptPowerShellEnvironmentVariable>(guardedValue, (value) => ResourceDeploymentScriptPowerShellEnvironmentVariable.fromMap((value as Map).cast<String, dynamic>())); });
    forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    identity = registerOutput<ResourceDeploymentScriptPowerShellIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceDeploymentScriptPowerShellIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outputs = registerOutput<String>('outputs');
    primaryScriptUri = registerOutput<String?>('primaryScriptUri');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retentionInterval = registerOutput<String>('retentionInterval');
    scriptContent = registerOutput<String?>('scriptContent');
    storageAccount = registerOutput<ResourceDeploymentScriptPowerShellStorageAccount?>('storageAccount', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceDeploymentScriptPowerShellStorageAccount.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    supportingScriptUris = registerOutput<List<String>?>('supportingScriptUris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeout = registerOutput<String?>('timeout');
    version = registerOutput<String>('version');
  }

  /// Gets an existing [ResourceDeploymentScriptPowerShell] resource's state with the given [name] and [id].
  static ResourceDeploymentScriptPowerShell get(
    String name,
    pulumi.Input<String> id, {
    ResourceDeploymentScriptPowerShellState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResourceDeploymentScriptPowerShell._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResourceDeploymentScriptPowerShell._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/resourceDeploymentScriptPowerShell:ResourceDeploymentScriptPowerShell',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cleanupPreference = registerOutput<String?>('cleanupPreference');
    commandLine = registerOutput<String?>('commandLine');
    container = registerOutput<ResourceDeploymentScriptPowerShellContainer?>('container', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceDeploymentScriptPowerShellContainer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    environmentVariables = registerOutput<List<ResourceDeploymentScriptPowerShellEnvironmentVariable>?>('environmentVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceDeploymentScriptPowerShellEnvironmentVariable>(guardedValue, (value) => ResourceDeploymentScriptPowerShellEnvironmentVariable.fromMap((value as Map).cast<String, dynamic>())); });
    forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    identity = registerOutput<ResourceDeploymentScriptPowerShellIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceDeploymentScriptPowerShellIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outputs = registerOutput<String>('outputs');
    primaryScriptUri = registerOutput<String?>('primaryScriptUri');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retentionInterval = registerOutput<String>('retentionInterval');
    scriptContent = registerOutput<String?>('scriptContent');
    storageAccount = registerOutput<ResourceDeploymentScriptPowerShellStorageAccount?>('storageAccount', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceDeploymentScriptPowerShellStorageAccount.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    supportingScriptUris = registerOutput<List<String>?>('supportingScriptUris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeout = registerOutput<String?>('timeout');
    version = registerOutput<String>('version');
  }

  /// Creates a typed reference to an existing [ResourceDeploymentScriptPowerShell] resource.
  ResourceDeploymentScriptPowerShell.reference(String urn)
    : super(
        'azure:core/resourceDeploymentScriptPowerShell:ResourceDeploymentScriptPowerShell',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cleanupPreference = registerOutput<String?>('cleanupPreference');
    commandLine = registerOutput<String?>('commandLine');
    container = registerOutput<ResourceDeploymentScriptPowerShellContainer?>('container', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceDeploymentScriptPowerShellContainer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    environmentVariables = registerOutput<List<ResourceDeploymentScriptPowerShellEnvironmentVariable>?>('environmentVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceDeploymentScriptPowerShellEnvironmentVariable>(guardedValue, (value) => ResourceDeploymentScriptPowerShellEnvironmentVariable.fromMap((value as Map).cast<String, dynamic>())); });
    forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    identity = registerOutput<ResourceDeploymentScriptPowerShellIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceDeploymentScriptPowerShellIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outputs = registerOutput<String>('outputs');
    primaryScriptUri = registerOutput<String?>('primaryScriptUri');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retentionInterval = registerOutput<String>('retentionInterval');
    scriptContent = registerOutput<String?>('scriptContent');
    storageAccount = registerOutput<ResourceDeploymentScriptPowerShellStorageAccount?>('storageAccount', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceDeploymentScriptPowerShellStorageAccount.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    supportingScriptUris = registerOutput<List<String>?>('supportingScriptUris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeout = registerOutput<String?>('timeout');
    version = registerOutput<String>('version');
  }
}
