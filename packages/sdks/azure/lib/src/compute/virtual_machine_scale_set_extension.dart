import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_scale_set_extension_args.dart';
import 'virtual_machine_scale_set_extension_protected_settings_from_key_vault.dart';
import 'virtual_machine_scale_set_extension_state.dart';

/// Manages an Extension for a Virtual Machine Scale Set.
///
/// > **Note:** This resource is not intended to be used with the `azure.compute.ScaleSet` resource - instead it's intended for this to be used with the `azure.compute.LinuxVirtualMachineScaleSet` and `azure.compute.WindowsVirtualMachineScaleSet` resources.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const exampleLinuxVirtualMachineScaleSet = new azure.compute.LinuxVirtualMachineScaleSet("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "Standard_F2",
///     adminUsername: "adminuser",
///     instances: 1,
///     sourceImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
///     networkInterfaces: [{
///         name: "example",
///         ipConfigurations: [{
///             name: "internal",
///         }],
///     }],
///     osDisk: {
///         storageAccountType: "Standard_LRS",
///         caching: "ReadWrite",
///     },
/// });
/// const exampleVirtualMachineScaleSetExtension = new azure.compute.VirtualMachineScaleSetExtension("example", {
///     name: "example",
///     virtualMachineScaleSetId: exampleLinuxVirtualMachineScaleSet.id,
///     publisher: "Microsoft.Azure.Extensions",
///     type: "CustomScript",
///     typeHandlerVersion: "2.0",
///     settings: JSON.stringify({
///         commandToExecute: "echo $HOSTNAME",
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_linux_virtual_machine_scale_set = azure.compute.LinuxVirtualMachineScaleSet("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="Standard_F2",
///     admin_username="adminuser",
///     instances=1,
///     source_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     },
///     network_interfaces=[{
///         "name": "example",
///         "ip_configurations": [{
///             "name": "internal",
///         }],
///     }],
///     os_disk={
///         "storage_account_type": "Standard_LRS",
///         "caching": "ReadWrite",
///     })
/// example_virtual_machine_scale_set_extension = azure.compute.VirtualMachineScaleSetExtension("example",
///     name="example",
///     virtual_machine_scale_set_id=example_linux_virtual_machine_scale_set.id,
///     publisher="Microsoft.Azure.Extensions",
///     type="CustomScript",
///     type_handler_version="2.0",
///     settings=json.dumps({
///         "commandToExecute": "echo $HOSTNAME",
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var exampleLinuxVirtualMachineScaleSet = new Azure.Compute.LinuxVirtualMachineScaleSet("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "Standard_F2",
///         AdminUsername = "adminuser",
///         Instances = 1,
///         SourceImageReference = new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetSourceImageReferenceArgs
///         {
///             Publisher = "Canonical",
///             Offer = "0001-com-ubuntu-server-jammy",
///             Sku = "22_04-lts",
///             Version = "latest",
///         },
///         NetworkInterfaces = new[]
///         {
///             new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetNetworkInterfaceArgs
///             {
///                 Name = "example",
///                 IpConfigurations = new[]
///                 {
///                     new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs
///                     {
///                         Name = "internal",
///                     },
///                 },
///             },
///         },
///         OsDisk = new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetOsDiskArgs
///         {
///             StorageAccountType = "Standard_LRS",
///             Caching = "ReadWrite",
///         },
///     });
///
///     var exampleVirtualMachineScaleSetExtension = new Azure.Compute.VirtualMachineScaleSetExtension("example", new()
///     {
///         Name = "example",
///         VirtualMachineScaleSetId = exampleLinuxVirtualMachineScaleSet.Id,
///         Publisher = "Microsoft.Azure.Extensions",
///         Type = "CustomScript",
///         TypeHandlerVersion = "2.0",
///         Settings = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["commandToExecute"] = "echo $HOSTNAME",
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxVirtualMachineScaleSet, err := compute.NewLinuxVirtualMachineScaleSet(ctx, "example", &compute.LinuxVirtualMachineScaleSetArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("Standard_F2"),
/// 			AdminUsername:     pulumi.String("adminuser"),
/// 			Instances:         pulumi.Int(1),
/// 			SourceImageReference: &compute.LinuxVirtualMachineScaleSetSourceImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 			NetworkInterfaces: compute.LinuxVirtualMachineScaleSetNetworkInterfaceArray{
/// 				&compute.LinuxVirtualMachineScaleSetNetworkInterfaceArgs{
/// 					Name: pulumi.String("example"),
/// 					IpConfigurations: compute.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArray{
/// 						&compute.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs{
/// 							Name: pulumi.String("internal"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			OsDisk: &compute.LinuxVirtualMachineScaleSetOsDiskArgs{
/// 				StorageAccountType: pulumi.String("Standard_LRS"),
/// 				Caching:            pulumi.String("ReadWrite"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"commandToExecute": "echo $HOSTNAME",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = compute.NewVirtualMachineScaleSetExtension(ctx, "example", &compute.VirtualMachineScaleSetExtensionArgs{
/// 			Name:                     pulumi.String("example"),
/// 			VirtualMachineScaleSetId: exampleLinuxVirtualMachineScaleSet.ID(),
/// 			Publisher:                pulumi.String("Microsoft.Azure.Extensions"),
/// 			Type:                     pulumi.String("CustomScript"),
/// 			TypeHandlerVersion:       pulumi.String("2.0"),
/// 			Settings:                 pulumi.String(json0),
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
/// import com.pulumi.azure.compute.LinuxVirtualMachineScaleSet;
/// import com.pulumi.azure.compute.LinuxVirtualMachineScaleSetArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetSourceImageReferenceArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetNetworkInterfaceArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetOsDiskArgs;
/// import com.pulumi.azure.compute.VirtualMachineScaleSetExtension;
/// import com.pulumi.azure.compute.VirtualMachineScaleSetExtensionArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         var exampleLinuxVirtualMachineScaleSet = new LinuxVirtualMachineScaleSet("exampleLinuxVirtualMachineScaleSet", LinuxVirtualMachineScaleSetArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("Standard_F2")
///             .adminUsername("adminuser")
///             .instances(1)
///             .sourceImageReference(LinuxVirtualMachineScaleSetSourceImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
///                 .version("latest")
///                 .build())
///             .networkInterfaces(LinuxVirtualMachineScaleSetNetworkInterfaceArgs.builder()
///                 .name("example")
///                 .ipConfigurations(LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs.builder()
///                     .name("internal")
///                     .build())
///                 .build())
///             .osDisk(LinuxVirtualMachineScaleSetOsDiskArgs.builder()
///                 .storageAccountType("Standard_LRS")
///                 .caching("ReadWrite")
///                 .build())
///             .build());
///
///         var exampleVirtualMachineScaleSetExtension = new VirtualMachineScaleSetExtension("exampleVirtualMachineScaleSetExtension", VirtualMachineScaleSetExtensionArgs.builder()
///             .name("example")
///             .virtualMachineScaleSetId(exampleLinuxVirtualMachineScaleSet.id())
///             .publisher("Microsoft.Azure.Extensions")
///             .type("CustomScript")
///             .typeHandlerVersion("2.0")
///             .settings(serializeJson(
///                 jsonObject(
///                     jsonProperty("commandToExecute", "echo $HOSTNAME")
///                 )))
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
///       name: example
///       location: West Europe
///   exampleLinuxVirtualMachineScaleSet:
///     type: azure:compute:LinuxVirtualMachineScaleSet
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: Standard_F2
///       adminUsername: adminuser
///       instances: 1
///       sourceImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
///       networkInterfaces:
///         - name: example
///           ipConfigurations:
///             - name: internal
///       osDisk:
///         storageAccountType: Standard_LRS
///         caching: ReadWrite
///   exampleVirtualMachineScaleSetExtension:
///     type: azure:compute:VirtualMachineScaleSetExtension
///     name: example
///     properties:
///       name: example
///       virtualMachineScaleSetId: ${exampleLinuxVirtualMachineScaleSet.id}
///       publisher: Microsoft.Azure.Extensions
///       type: CustomScript
///       typeHandlerVersion: '2.0'
///       settings:
///         fn::toJSON:
///           commandToExecute: echo $HOSTNAME
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2024-11-01, 2024-03-01
///
/// ## Import
///
/// Virtual Machine Scale Set Extensions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/virtualMachineScaleSetExtension:VirtualMachineScaleSetExtension test /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Compute/virtualMachineScaleSets/scaleSet1/extensions/extension1
/// ```
class VirtualMachineScaleSetExtension extends pulumi.CustomResource {
  /// Should the latest version of the Extension be used at Deployment Time, if one is available? This won't auto-update the extension on existing installation. Defaults to `true`.
  late final pulumi.Output<bool?> autoUpgradeMinorVersion;
  /// Should the Extension be automatically updated whenever the Publisher releases a new version of this VM Extension?
  late final pulumi.Output<bool?> automaticUpgradeEnabled;
  /// Should failures from the extension be suppressed? Possible values are `true` or `false`. Defaults to `false`.
  ///
  /// > **Note:** Operational failures such as not connecting to the VM will not be suppressed regardless of the `failure_suppression_enabled` value.
  late final pulumi.Output<bool?> failureSuppressionEnabled;
  /// A value which, when different to the previous value can be used to force-run the Extension even if the Extension Configuration hasn't changed.
  late final pulumi.Output<String?> forceUpdateTag;
  /// The name for the Virtual Machine Scale Set Extension. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A JSON String which specifies Sensitive Settings (such as Passwords) for the Extension.
  ///
  /// > **Note:** Keys within the `protected_settings` block are notoriously case-sensitive, where the casing required (e.g. TitleCase vs snakeCase) depends on the Extension being used. Please refer to the documentation for the specific Virtual Machine Extension you're looking to use for more information.
  late final pulumi.Output<String?> protectedSettings;
  /// A `protected_settings_from_key_vault` block as defined below.
  ///
  /// > **Note:** `protected_settings_from_key_vault` cannot be used with `protected_settings`
  late final pulumi.Output<VirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault?> protectedSettingsFromKeyVault;
  /// An ordered list of Extension names which this should be provisioned after.
  late final pulumi.Output<List<String>?> provisionAfterExtensions;
  /// Specifies the Publisher of the Extension. Changing this forces a new resource to be created.
  late final pulumi.Output<String> publisher;
  /// A JSON String which specifies Settings for the Extension.
  ///
  /// > **Note:** Keys within the `settings` block are notoriously case-sensitive, where the casing required (e.g. TitleCase vs snakeCase) depends on the Extension being used. Please refer to the documentation for the specific Virtual Machine Extension you're looking to use for more information.
  late final pulumi.Output<String?> settings;
  /// Specifies the Type of the Extension. Changing this forces a new resource to be created.
  late final pulumi.Output<String> type;
  /// Specifies the version of the extension to use, available versions can be found using the Azure CLI.
  ///
  /// > **Note:** The `Publisher` and `Type` of Virtual Machine Scale Set Extensions can be found using the Azure CLI, via:
  ///
  /// ```shell
  /// az vmss extension image list --location westus -o table
  /// ```
  late final pulumi.Output<String> typeHandlerVersion;
  /// The ID of the Virtual Machine Scale Set. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This should be the ID from the `azure.compute.LinuxVirtualMachineScaleSet` or `azure.compute.WindowsVirtualMachineScaleSet` resource - when using the older `azure.compute.ScaleSet` resource extensions should instead be defined inline.
  late final pulumi.Output<String> virtualMachineScaleSetId;

  /// Creates a new [VirtualMachineScaleSetExtension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachineScaleSetExtension]. {@macro pulumi_compute_virtual_machine_scale_set_extension_virtual_machine_scale_set_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachineScaleSetExtension(
    String name, {
    VirtualMachineScaleSetExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/virtualMachineScaleSetExtension:VirtualMachineScaleSetExtension',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoUpgradeMinorVersion = registerOutput<bool?>('autoUpgradeMinorVersion');
    this.automaticUpgradeEnabled = registerOutput<bool?>('automaticUpgradeEnabled');
    this.failureSuppressionEnabled = registerOutput<bool?>('failureSuppressionEnabled');
    this.forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    this.name = registerOutput<String>('name');
    this.protectedSettings = registerOutput<String?>('protectedSettings');
    this.protectedSettingsFromKeyVault = registerOutput<VirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault?>('protectedSettingsFromKeyVault');
    this.provisionAfterExtensions = registerOutput<List<String>?>('provisionAfterExtensions');
    this.publisher = registerOutput<String>('publisher');
    this.settings = registerOutput<String?>('settings');
    this.type = registerOutput<String>('type');
    this.typeHandlerVersion = registerOutput<String>('typeHandlerVersion');
    this.virtualMachineScaleSetId = registerOutput<String>('virtualMachineScaleSetId');
  }

  /// Gets an existing [VirtualMachineScaleSetExtension] resource's state with the given [name] and [id].
  static VirtualMachineScaleSetExtension get(
    String name,
    pulumi.Input<String> id, {
    VirtualMachineScaleSetExtensionState? state,
  }) {
    return VirtualMachineScaleSetExtension._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualMachineScaleSetExtension._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/virtualMachineScaleSetExtension:VirtualMachineScaleSetExtension',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoUpgradeMinorVersion = registerOutput<bool?>('autoUpgradeMinorVersion');
    this.automaticUpgradeEnabled = registerOutput<bool?>('automaticUpgradeEnabled');
    this.failureSuppressionEnabled = registerOutput<bool?>('failureSuppressionEnabled');
    this.forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    this.name = registerOutput<String>('name');
    this.protectedSettings = registerOutput<String?>('protectedSettings');
    this.protectedSettingsFromKeyVault = registerOutput<VirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault?>('protectedSettingsFromKeyVault');
    this.provisionAfterExtensions = registerOutput<List<String>?>('provisionAfterExtensions');
    this.publisher = registerOutput<String>('publisher');
    this.settings = registerOutput<String?>('settings');
    this.type = registerOutput<String>('type');
    this.typeHandlerVersion = registerOutput<String>('typeHandlerVersion');
    this.virtualMachineScaleSetId = registerOutput<String>('virtualMachineScaleSetId');
  }
}
