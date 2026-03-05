import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_args.dart';
import 'extension_state.dart';

/// Manages a Hybrid Compute Machine Extension.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const example = azure.arcmachine.getOutput({
///     name: "existing-hcmachine",
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleExtension = new azure.arcmachine.Extension("example", {
///     name: "example",
///     location: "West Europe",
///     arcMachineId: example.apply(example => example.id),
///     publisher: "Microsoft.Azure.Monitor",
///     type: "AzureMonitorLinuxAgent",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example = azure.arcmachine.get_output(name="existing-hcmachine",
///     resource_group_name=example_resource_group.name)
/// example_extension = azure.arcmachine.Extension("example",
///     name="example",
///     location="West Europe",
///     arc_machine_id=example.id,
///     publisher="Microsoft.Azure.Monitor",
///     type="AzureMonitorLinuxAgent")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var example = Azure.ArcMachine.Get.Invoke(new()
///     {
///         Name = "existing-hcmachine",
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleExtension = new Azure.ArcMachine.Extension("example", new()
///     {
///         Name = "example",
///         Location = "West Europe",
///         ArcMachineId = example.Apply(getResult => getResult.Id),
///         Publisher = "Microsoft.Azure.Monitor",
///         Type = "AzureMonitorLinuxAgent",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/arcmachine"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := arcmachine.GetOutput(ctx, arcmachine.GetOutputArgs{
/// 			Name:              pulumi.String("existing-hcmachine"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		}, nil)
/// 		_, err = arcmachine.NewExtension(ctx, "example", &arcmachine.ExtensionArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 			ArcMachineId: pulumi.String(example.ApplyT(func(example arcmachine.GetResult) (*string, error) {
/// 				return &example.Id, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Publisher: pulumi.String("Microsoft.Azure.Monitor"),
/// 			Type:      pulumi.String("AzureMonitorLinuxAgent"),
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
/// import com.pulumi.azure.arcmachine.ArcmachineFunctions;
/// import com.pulumi.azure.arcmachine.inputs.GetArgs;
/// import com.pulumi.azure.arcmachine.Extension;
/// import com.pulumi.azure.arcmachine.ExtensionArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         final var example = ArcmachineFunctions.get(GetArgs.builder()
///             .name("existing-hcmachine")
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleExtension = new Extension("exampleExtension", ExtensionArgs.builder()
///             .name("example")
///             .location("West Europe")
///             .arcMachineId(example.applyValue(_example -> _example.id()))
///             .publisher("Microsoft.Azure.Monitor")
///             .type("AzureMonitorLinuxAgent")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example
///       location: West Europe
///   exampleExtension:
///     type: azure:arcmachine:Extension
///     name: example
///     properties:
///       name: example
///       location: West Europe
///       arcMachineId: ${example.id}
///       publisher: Microsoft.Azure.Monitor
///       type: AzureMonitorLinuxAgent
/// variables:
///   example:
///     fn::invoke:
///       function: azure:arcmachine:get
///       arguments:
///         name: existing-hcmachine
///         resourceGroupName: ${exampleResourceGroup.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.HybridCompute` - 2022-11-10
///
/// ## Import
///
/// Hybrid Compute Machine Extensions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:arcmachine/extension:Extension example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.HybridCompute/machines/hcmachine1/extensions/ext1
/// ```
class Extension extends pulumi.CustomResource {
  /// The ID of the Hybrid Compute Machine Extension. Changing this forces a new Hybrid Compute Machine Extension to be created.
  late final pulumi.Output<String> arcMachineId;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available. Supported values are `true` and `false`. Defaults to `true`.
  ///
  /// &gt; **Note:** When `automatic_upgrade_enabled` can only be set during creation. Any later change will be ignored.
  ///
  /// &gt; **Note:** When `automatic_upgrade_enabled` is set to `true`, the `type_handler_version` is automatically updated by the Azure platform when a new version is available and any change in `type_handler_version` will be automatically ignored.
  late final pulumi.Output<bool?> automaticUpgradeEnabled;
  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  late final pulumi.Output<String?> forceUpdateTag;
  /// The Azure Region where the Hybrid Compute Machine Extension should exist. Changing this forces a new Hybrid Compute Machine Extension to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Hybrid Compute Machine Extension. Changing this forces a new Hybrid Compute Machine Extension to be created.
  late final pulumi.Output<String> name;
  /// Json formatted protected settings for the extension.
  late final pulumi.Output<String?> protectedSettings;
  /// The name of the extension handler publisher, such as `Microsoft.Azure.Monitor`. Changing this forces a new Hybrid Compute Machine Extension to be created.
  late final pulumi.Output<String> publisher;
  /// Json formatted public settings for the extension.
  late final pulumi.Output<String?> settings;
  /// A mapping of tags which should be assigned to the Hybrid Compute Machine Extension.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the type of the extension. For example `CustomScriptExtension` or `AzureMonitorLinuxAgent`. Changing this forces a new Hybrid Compute Machine Extension to be created.
  late final pulumi.Output<String> type;
  /// Specifies the version of the script handler.
  ///
  /// &gt; **Note:** 1. When `automatic_upgrade_enabled` is set to `false` and no `type_handler_version` is specified, the `type_handler_version` change should be manually ignored by `ignore_changes` lifecycle block. This is because the `type_handler_version` is set by the Azure platform when the extension is created. 2. When `automatic_upgrade_enabled` is set to `false` and `type_handler_version` is specified, the provider will check whether the version prefix is aligned with user input. For example, if user specifies `1.24` in `type_handler_version`, `1.24.1` will be considered as no diff.
  late final pulumi.Output<String?> typeHandlerVersion;

  /// Creates a new [Extension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Extension]. {@macro pulumi_arcmachine_extension_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Extension(
    String name, {
    ExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:arcmachine/extension:Extension',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arcMachineId = registerOutput<String>('arcMachineId');
    automaticUpgradeEnabled = registerOutput<bool?>('automaticUpgradeEnabled');
    forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    protectedSettings = registerOutput<String?>('protectedSettings');
    publisher = registerOutput<String>('publisher');
    settings = registerOutput<String?>('settings');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    typeHandlerVersion = registerOutput<String?>('typeHandlerVersion');
  }

  /// Gets an existing [Extension] resource's state with the given [name] and [id].
  static Extension get(
    String name,
    pulumi.Input<String> id, {
    ExtensionState? state,
  }) {
    return Extension._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Extension._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:arcmachine/extension:Extension',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arcMachineId = registerOutput<String>('arcMachineId');
    automaticUpgradeEnabled = registerOutput<bool?>('automaticUpgradeEnabled');
    forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    protectedSettings = registerOutput<String?>('protectedSettings');
    publisher = registerOutput<String>('publisher');
    settings = registerOutput<String?>('settings');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    typeHandlerVersion = registerOutput<String?>('typeHandlerVersion');
  }
}
