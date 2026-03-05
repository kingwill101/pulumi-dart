import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_monitor_setting_args.dart';
import 'provider_monitor_setting_properties_response.dart';
import 'system_data_response.dart';

/// Concrete tracked resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2024-09-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ProviderMonitorSettings_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var providerMonitorSetting = new AzureNative.ProviderHub.ProviderMonitorSetting("providerMonitorSetting", new()
///     {
///         Location = "eastus",
///         ProviderMonitorSettingName = "ContosoMonitorSetting",
///         ResourceGroupName = "default",
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
/// 	providerhub "github.com/pulumi/pulumi-azure-native-sdk/providerhub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := providerhub.NewProviderMonitorSetting(ctx, "providerMonitorSetting", &providerhub.ProviderMonitorSettingArgs{
/// 			Location:                   pulumi.String("eastus"),
/// 			ProviderMonitorSettingName: pulumi.String("ContosoMonitorSetting"),
/// 			ResourceGroupName:          pulumi.String("default"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.providerhub.ProviderMonitorSetting;
/// import com.pulumi.azurenative.providerhub.ProviderMonitorSettingArgs;
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
///         var providerMonitorSetting = new ProviderMonitorSetting("providerMonitorSetting", ProviderMonitorSettingArgs.builder()
///             .location("eastus")
///             .providerMonitorSettingName("ContosoMonitorSetting")
///             .resourceGroupName("default")
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
/// const providerMonitorSetting = new azure_native.providerhub.ProviderMonitorSetting("providerMonitorSetting", {
///     location: "eastus",
///     providerMonitorSettingName: "ContosoMonitorSetting",
///     resourceGroupName: "default",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// provider_monitor_setting = azure_native.providerhub.ProviderMonitorSetting("providerMonitorSetting",
///     location="eastus",
///     provider_monitor_setting_name="ContosoMonitorSetting",
///     resource_group_name="default")
///
/// ```
///
/// ```yaml
/// resources:
///   providerMonitorSetting:
///     type: azure-native:providerhub:ProviderMonitorSetting
///     properties:
///       location: eastus
///       providerMonitorSettingName: ContosoMonitorSetting
///       resourceGroupName: default
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
/// $ pulumi import azure-native:providerhub:ProviderMonitorSetting ContosoMonitorSetting /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ProviderHub/providerMonitorSettings/{providerMonitorSettingName}
/// ```
class ProviderMonitorSetting extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<ProviderMonitorSettingPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ProviderMonitorSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderMonitorSetting]. {@macro pulumi_providerhub_provider_monitor_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderMonitorSetting(
    String name, {
    ProviderMonitorSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:providerhub:ProviderMonitorSetting',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ProviderMonitorSettingPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ProviderMonitorSettingPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
