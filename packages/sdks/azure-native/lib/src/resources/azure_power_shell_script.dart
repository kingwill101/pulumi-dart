import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_power_shell_script_args.dart';
import 'container_configuration_response.dart';
import 'environment_variable_response.dart';
import 'managed_service_identity_response.dart';
import 'script_status_response.dart';
import 'storage_account_configuration_response.dart';
import 'system_data_response.dart';

/// Object model for the Azure PowerShell script.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2020-10-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DeploymentScriptsCreateNoUserManagedIdentity
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azurePowerShellScript = new AzureNative.Resources.AzurePowerShellScript("azurePowerShellScript", new()
///     {
///         Arguments = "-Location 'westus' -Name \"*rg2\"",
///         AzPowerShellVersion = "1.7.0",
///         CleanupPreference = AzureNative.Resources.CleanupOptions.Always,
///         Kind = "AzurePowerShell",
///         Location = "westus",
///         ResourceGroupName = "script-rg",
///         RetentionInterval = "P7D",
///         ScriptContent = "Param([string]$Location,[string]$Name) $deploymentScriptOutputs['test'] = 'value' Get-AzResourceGroup -Location $Location -Name $Name",
///         ScriptName = "MyDeploymentScript",
///         SupportingScriptUris = new[]
///         {
///             "https://uri1.to.supporting.script",
///             "https://uri2.to.supporting.script",
///         },
///         Timeout = "PT1H",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	resources "github.com/pulumi/pulumi-azure-native-sdk/resources/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resources.NewAzurePowerShellScript(ctx, "azurePowerShellScript", &resources.AzurePowerShellScriptArgs{
/// 			Arguments:           pulumi.String("-Location 'westus' -Name \"*rg2\""),
/// 			AzPowerShellVersion: pulumi.String("1.7.0"),
/// 			CleanupPreference:   pulumi.String(resources.CleanupOptionsAlways),
/// 			Kind:                pulumi.String("AzurePowerShell"),
/// 			Location:            pulumi.String("westus"),
/// 			ResourceGroupName:   pulumi.String("script-rg"),
/// 			RetentionInterval:   pulumi.String("P7D"),
/// 			ScriptContent:       pulumi.String("Param([string]$Location,[string]$Name) $deploymentScriptOutputs['test'] = 'value' Get-AzResourceGroup -Location $Location -Name $Name"),
/// 			ScriptName:          pulumi.String("MyDeploymentScript"),
/// 			SupportingScriptUris: pulumi.StringArray{
/// 				pulumi.String("https://uri1.to.supporting.script"),
/// 				pulumi.String("https://uri2.to.supporting.script"),
/// 			},
/// 			Timeout: pulumi.String("PT1H"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_resources_azurepowershellscript" "azurePowerShellScript" {
///   arguments              = "-Location 'westus' -Name \"*rg2\""
///   az_power_shell_version = "1.7.0"
///   cleanup_preference     = "Always"
///   kind                   = "AzurePowerShell"
///   location               = "westus"
///   resource_group_name    = "script-rg"
///   retention_interval     = "P7D"
///   script_content         = "Param([string]$Location,[string]$Name) $deploymentScriptOutputs['test'] = 'value' Get-AzResourceGroup -Location $Location -Name $Name"
///   script_name            = "MyDeploymentScript"
///   supporting_script_uris = ["https://uri1.to.supporting.script", "https://uri2.to.supporting.script"]
///   timeout                = "PT1H"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.resources.AzurePowerShellScript;
/// import com.pulumi.azurenative.resources.AzurePowerShellScriptArgs;
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
///         var azurePowerShellScript = new AzurePowerShellScript("azurePowerShellScript", AzurePowerShellScriptArgs.builder()
///             .arguments("-Location 'westus' -Name \"*rg2\"")
///             .azPowerShellVersion("1.7.0")
///             .cleanupPreference("Always")
///             .kind("AzurePowerShell")
///             .location("westus")
///             .resourceGroupName("script-rg")
///             .retentionInterval("P7D")
///             .scriptContent("Param([string]$Location,[string]$Name) $deploymentScriptOutputs['test'] = 'value' Get-AzResourceGroup -Location $Location -Name $Name")
///             .scriptName("MyDeploymentScript")
///             .supportingScriptUris(
///                 "https://uri1.to.supporting.script",
///                 "https://uri2.to.supporting.script")
///             .timeout("PT1H")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const azurePowerShellScript = new azure_native.resources.AzurePowerShellScript("azurePowerShellScript", {
///     arguments: "-Location 'westus' -Name \"*rg2\"",
///     azPowerShellVersion: "1.7.0",
///     cleanupPreference: azure_native.resources.CleanupOptions.Always,
///     kind: "AzurePowerShell",
///     location: "westus",
///     resourceGroupName: "script-rg",
///     retentionInterval: "P7D",
///     scriptContent: "Param([string]$Location,[string]$Name) $deploymentScriptOutputs['test'] = 'value' Get-AzResourceGroup -Location $Location -Name $Name",
///     scriptName: "MyDeploymentScript",
///     supportingScriptUris: [
///         "https://uri1.to.supporting.script",
///         "https://uri2.to.supporting.script",
///     ],
///     timeout: "PT1H",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// azure_power_shell_script = azure_native.resources.AzurePowerShellScript("azurePowerShellScript",
///     arguments="-Location 'westus' -Name \"*rg2\"",
///     az_power_shell_version="1.7.0",
///     cleanup_preference=azure_native.resources.CleanupOptions.ALWAYS,
///     kind="AzurePowerShell",
///     location="westus",
///     resource_group_name="script-rg",
///     retention_interval="P7D",
///     script_content="Param([string]$Location,[string]$Name) $deploymentScriptOutputs['test'] = 'value' Get-AzResourceGroup -Location $Location -Name $Name",
///     script_name="MyDeploymentScript",
///     supporting_script_uris=[
///         "https://uri1.to.supporting.script",
///         "https://uri2.to.supporting.script",
///     ],
///     timeout="PT1H")
///
/// ```
///
/// ```yaml
/// resources:
///   azurePowerShellScript:
///     type: azure-native:resources:AzurePowerShellScript
///     properties:
///       arguments: -Location 'westus' -Name "*rg2"
///       azPowerShellVersion: 1.7.0
///       cleanupPreference: Always
///       kind: AzurePowerShell
///       location: westus
///       resourceGroupName: script-rg
///       retentionInterval: P7D
///       scriptContent: Param([string]$Location,[string]$Name) $deploymentScriptOutputs['test'] = 'value' Get-AzResourceGroup -Location $Location -Name $Name
///       scriptName: MyDeploymentScript
///       supportingScriptUris:
///         - https://uri1.to.supporting.script
///         - https://uri2.to.supporting.script
///       timeout: PT1H
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:resources:AzurePowerShellScript myresource1 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.Resources/deploymentScripts/{scriptName}
/// ```
class AzurePowerShellScript extends pulumi.CustomResource {
  /// Command line arguments to pass to the script. Arguments are separated by spaces. ex: -Name blue* -Location 'West US 2'
  late final pulumi.Output<String?> arguments;
  /// Azure PowerShell module version to be used.
  late final pulumi.Output<String> azPowerShellVersion;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The clean up preference when the script execution gets in a terminal state. Default setting is 'Always'.
  late final pulumi.Output<String?> cleanupPreference;
  /// Container settings.
  late final pulumi.Output<ContainerConfigurationResponse?> containerSettings;
  /// The environment variables to pass over to the script.
  late final pulumi.Output<List<EnvironmentVariableResponse>?> environmentVariables;
  /// Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID.
  late final pulumi.Output<String?> forceUpdateTag;
  /// Optional property. Managed identity to be used for this deployment script. Currently, only user-assigned MSI is supported.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// Type of the script.
  /// Expected value is 'AzurePowerShell'.
  late final pulumi.Output<String> kind;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// List of script outputs.
  late final pulumi.Output<dynamic> outputs;
  /// Uri for the script. This is the entry point for the external script.
  late final pulumi.Output<String?> primaryScriptUri;
  /// State of the script execution. This only appears in the response.
  late final pulumi.Output<String> provisioningState;
  /// Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. Duration is based on ISO 8601 pattern (for example P1D means one day).
  late final pulumi.Output<String> retentionInterval;
  /// Script body.
  late final pulumi.Output<String?> scriptContent;
  /// Contains the results of script execution.
  late final pulumi.Output<ScriptStatusResponse> status;
  /// Storage Account settings.
  late final pulumi.Output<StorageAccountConfigurationResponse?> storageAccountSettings;
  /// Supporting files for the external script.
  late final pulumi.Output<List<String>?> supportingScriptUris;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Maximum allowed script execution time specified in ISO 8601 format. Default value is P1D
  late final pulumi.Output<String?> timeout;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AzurePowerShellScript].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AzurePowerShellScript]. {@macro pulumi_resources_azure_power_shell_script_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AzurePowerShellScript(
    String name, {
    AzurePowerShellScriptArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:resources:AzurePowerShellScript',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arguments = registerOutput<String?>('arguments');
    azPowerShellVersion = registerOutput<String>('azPowerShellVersion');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cleanupPreference = registerOutput<String?>('cleanupPreference');
    containerSettings = registerOutput<ContainerConfigurationResponse?>('containerSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    environmentVariables = registerOutput<List<EnvironmentVariableResponse>?>('environmentVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EnvironmentVariableResponse>(guardedValue, (value) => EnvironmentVariableResponse.fromMap((value as Map).cast<String, dynamic>())); });
    forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outputs = registerOutput<dynamic>('outputs');
    primaryScriptUri = registerOutput<String?>('primaryScriptUri');
    provisioningState = registerOutput<String>('provisioningState');
    retentionInterval = registerOutput<String>('retentionInterval');
    scriptContent = registerOutput<String?>('scriptContent');
    status = registerOutput<ScriptStatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScriptStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageAccountSettings = registerOutput<StorageAccountConfigurationResponse?>('storageAccountSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageAccountConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    supportingScriptUris = registerOutput<List<String>?>('supportingScriptUris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeout = registerOutput<String?>('timeout');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AzurePowerShellScript] resource.
  AzurePowerShellScript.reference(String urn)
    : super(
        'azure-native:resources:AzurePowerShellScript',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arguments = registerOutput<String?>('arguments');
    azPowerShellVersion = registerOutput<String>('azPowerShellVersion');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cleanupPreference = registerOutput<String?>('cleanupPreference');
    containerSettings = registerOutput<ContainerConfigurationResponse?>('containerSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    environmentVariables = registerOutput<List<EnvironmentVariableResponse>?>('environmentVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EnvironmentVariableResponse>(guardedValue, (value) => EnvironmentVariableResponse.fromMap((value as Map).cast<String, dynamic>())); });
    forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outputs = registerOutput<dynamic>('outputs');
    primaryScriptUri = registerOutput<String?>('primaryScriptUri');
    provisioningState = registerOutput<String>('provisioningState');
    retentionInterval = registerOutput<String>('retentionInterval');
    scriptContent = registerOutput<String?>('scriptContent');
    status = registerOutput<ScriptStatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScriptStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageAccountSettings = registerOutput<StorageAccountConfigurationResponse?>('storageAccountSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageAccountConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    supportingScriptUris = registerOutput<List<String>?>('supportingScriptUris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeout = registerOutput<String?>('timeout');
    type = registerOutput<String>('type');
  }
}
