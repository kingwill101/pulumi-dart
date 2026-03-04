import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_extension_args.dart';
import 'hci_extension_state.dart';

/// Manages an Azure Stack HCI Extension.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-hci-ext",
///     location: "West Europe",
/// });
/// const exampleHciExtension = new azure.stack.HciExtension("example", {
///     name: "AzureMonitorWindowsAgent",
///     arcSettingId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-hci/providers/Microsoft.AzureStackHCI/clusters/hci-cl/arcSettings/default",
///     publisher: "Microsoft.Azure.Monitor",
///     type: "MicrosoftMonitoringAgent",
///     autoUpgradeMinorVersionEnabled: true,
///     automaticUpgradeEnabled: true,
///     typeHandlerVersion: "1.22.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-hci-ext",
///     location="West Europe")
/// example_hci_extension = azure.stack.HciExtension("example",
///     name="AzureMonitorWindowsAgent",
///     arc_setting_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-hci/providers/Microsoft.AzureStackHCI/clusters/hci-cl/arcSettings/default",
///     publisher="Microsoft.Azure.Monitor",
///     type="MicrosoftMonitoringAgent",
///     auto_upgrade_minor_version_enabled=True,
///     automatic_upgrade_enabled=True,
///     type_handler_version="1.22.0")
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
///         Name = "example-hci-ext",
///         Location = "West Europe",
///     });
///
///     var exampleHciExtension = new Azure.Stack.HciExtension("example", new()
///     {
///         Name = "AzureMonitorWindowsAgent",
///         ArcSettingId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-hci/providers/Microsoft.AzureStackHCI/clusters/hci-cl/arcSettings/default",
///         Publisher = "Microsoft.Azure.Monitor",
///         Type = "MicrosoftMonitoringAgent",
///         AutoUpgradeMinorVersionEnabled = true,
///         AutomaticUpgradeEnabled = true,
///         TypeHandlerVersion = "1.22.0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/stack"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-hci-ext"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = stack.NewHciExtension(ctx, "example", &stack.HciExtensionArgs{
/// 			Name:                           pulumi.String("AzureMonitorWindowsAgent"),
/// 			ArcSettingId:                   pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-hci/providers/Microsoft.AzureStackHCI/clusters/hci-cl/arcSettings/default"),
/// 			Publisher:                      pulumi.String("Microsoft.Azure.Monitor"),
/// 			Type:                           pulumi.String("MicrosoftMonitoringAgent"),
/// 			AutoUpgradeMinorVersionEnabled: pulumi.Bool(true),
/// 			AutomaticUpgradeEnabled:        pulumi.Bool(true),
/// 			TypeHandlerVersion:             pulumi.String("1.22.0"),
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
/// import com.pulumi.azure.stack.HciExtension;
/// import com.pulumi.azure.stack.HciExtensionArgs;
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
///             .name("example-hci-ext")
///             .location("West Europe")
///             .build());
///
///         var exampleHciExtension = new HciExtension("exampleHciExtension", HciExtensionArgs.builder()
///             .name("AzureMonitorWindowsAgent")
///             .arcSettingId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-hci/providers/Microsoft.AzureStackHCI/clusters/hci-cl/arcSettings/default")
///             .publisher("Microsoft.Azure.Monitor")
///             .type("MicrosoftMonitoringAgent")
///             .autoUpgradeMinorVersionEnabled(true)
///             .automaticUpgradeEnabled(true)
///             .typeHandlerVersion("1.22.0")
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
///       name: example-hci-ext
///       location: West Europe
///   exampleHciExtension:
///     type: azure:stack:HciExtension
///     name: example
///     properties:
///       name: AzureMonitorWindowsAgent
///       arcSettingId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-hci/providers/Microsoft.AzureStackHCI/clusters/hci-cl/arcSettings/default
///       publisher: Microsoft.Azure.Monitor
///       type: MicrosoftMonitoringAgent
///       autoUpgradeMinorVersionEnabled: true
///       automaticUpgradeEnabled: true
///       typeHandlerVersion: 1.22.0
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AzureStackHCI` - 2024-01-01
///
/// ## Import
///
/// Azure Stack HCI Extension can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:stack/hciExtension:HciExtension example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AzureStackHCI/clusters/cluster1/arcSettings/default/extensions/extension1
/// ```
class HciExtension extends pulumi.CustomResource {
  /// The ID of the Azure Stack HCI Cluster Arc Setting. Changing this forces a new resource to be created.
  late final pulumi.Output<String> arcSettingId;

  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true. Changing this forces a new resource to be created. Possible values are `true` and `false`. Defaults to `true`.
  late final pulumi.Output<bool?> autoUpgradeMinorVersionEnabled;

  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available. Possible values are `true` and `false`. Defaults to `true`.
  late final pulumi.Output<bool?> automaticUpgradeEnabled;

  /// The name which should be used for this Azure Stack HCI Extension. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The json formatted protected settings for the extension.
  late final pulumi.Output<String?> protectedSettings;

  /// The name of the extension handler publisher, such as `Microsoft.Azure.Monitor`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> publisher;

  /// The json formatted public settings for the extension.
  late final pulumi.Output<String?> settings;

  /// Specifies the type of the extension. For example `CustomScriptExtension` or `AzureMonitorLinuxAgent`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> type;

  /// Specifies the version of the script handler.
  ///
  /// &gt; **Note:** `type_handler_version` cannot be set when `automatic_upgrade_enabled` is set to `true`.
  late final pulumi.Output<String?> typeHandlerVersion;

  /// Creates a new [HciExtension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HciExtension]. {@macro pulumi_stack_hci_extension_hci_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HciExtension(
    String name, {
    HciExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:stack/hciExtension:HciExtension',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arcSettingId = registerOutput<String>('arcSettingId');
    autoUpgradeMinorVersionEnabled = registerOutput<bool?>(
      'autoUpgradeMinorVersionEnabled',
    );
    automaticUpgradeEnabled = registerOutput<bool?>('automaticUpgradeEnabled');
    this.name = registerOutput<String>('name');
    protectedSettings = registerOutput<String?>('protectedSettings');
    publisher = registerOutput<String>('publisher');
    settings = registerOutput<String?>('settings');
    type = registerOutput<String>('type');
    typeHandlerVersion = registerOutput<String?>('typeHandlerVersion');
  }

  /// Gets an existing [HciExtension] resource's state with the given [name] and [id].
  static HciExtension get(
    String name,
    pulumi.Input<String> id, {
    HciExtensionState? state,
  }) {
    return HciExtension._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HciExtension._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:stack/hciExtension:HciExtension',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arcSettingId = registerOutput<String>('arcSettingId');
    autoUpgradeMinorVersionEnabled = registerOutput<bool?>(
      'autoUpgradeMinorVersionEnabled',
    );
    automaticUpgradeEnabled = registerOutput<bool?>('automaticUpgradeEnabled');
    this.name = registerOutput<String>('name');
    protectedSettings = registerOutput<String?>('protectedSettings');
    publisher = registerOutput<String>('publisher');
    settings = registerOutput<String?>('settings');
    type = registerOutput<String>('type');
    typeHandlerVersion = registerOutput<String?>('typeHandlerVersion');
  }
}
