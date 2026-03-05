import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_storage_args.dart';
import 'defender_for_storage_setting_properties_response.dart';

/// The Defender for Storage resource.
///
/// Uses Azure REST API version 2024-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-12-01-preview.
///
/// Other available API versions: 2022-12-01-preview, 2024-08-01-preview, 2025-01-01, 2025-02-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates the Defender for Storage settings on a specified resource.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defenderForStorage = new AzureNative.Security.DefenderForStorage("defenderForStorage", new()
///     {
///         Properties = new AzureNative.Security.Inputs.DefenderForStorageSettingPropertiesArgs
///         {
///             IsEnabled = true,
///             MalwareScanning = new AzureNative.Security.Inputs.MalwareScanningPropertiesArgs
///             {
///                 OnUpload = new AzureNative.Security.Inputs.OnUploadPropertiesArgs
///                 {
///                     CapGBPerMonth = -1,
///                     IsEnabled = true,
///                 },
///                 ScanResultsEventGridTopicResourceId = "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/SampleRG/providers/Microsoft.EventGrid/topics/sampletopic",
///             },
///             OverrideSubscriptionLevelSettings = true,
///             SensitiveDataDiscovery = new AzureNative.Security.Inputs.SensitiveDataDiscoveryPropertiesArgs
///             {
///                 IsEnabled = true,
///             },
///         },
///         ResourceId = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/SampleRG/providers/Microsoft.Storage/storageAccounts/samplestorageaccount",
///         SettingName = "current",
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewDefenderForStorage(ctx, "defenderForStorage", &security.DefenderForStorageArgs{
/// 			Properties: &security.DefenderForStorageSettingPropertiesArgs{
/// 				IsEnabled: pulumi.Bool(true),
/// 				MalwareScanning: &security.MalwareScanningPropertiesArgs{
/// 					OnUpload: &security.OnUploadPropertiesArgs{
/// 						CapGBPerMonth: pulumi.Int(-1),
/// 						IsEnabled:     pulumi.Bool(true),
/// 					},
/// 					ScanResultsEventGridTopicResourceId: pulumi.String("/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/SampleRG/providers/Microsoft.EventGrid/topics/sampletopic"),
/// 				},
/// 				OverrideSubscriptionLevelSettings: pulumi.Bool(true),
/// 				SensitiveDataDiscovery: &security.SensitiveDataDiscoveryPropertiesArgs{
/// 					IsEnabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ResourceId:  pulumi.String("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/SampleRG/providers/Microsoft.Storage/storageAccounts/samplestorageaccount"),
/// 			SettingName: pulumi.String("current"),
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
/// import com.pulumi.azurenative.security.DefenderForStorage;
/// import com.pulumi.azurenative.security.DefenderForStorageArgs;
/// import com.pulumi.azurenative.security.inputs.DefenderForStorageSettingPropertiesArgs;
/// import com.pulumi.azurenative.security.inputs.MalwareScanningPropertiesArgs;
/// import com.pulumi.azurenative.security.inputs.OnUploadPropertiesArgs;
/// import com.pulumi.azurenative.security.inputs.SensitiveDataDiscoveryPropertiesArgs;
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
///         var defenderForStorage = new DefenderForStorage("defenderForStorage", DefenderForStorageArgs.builder()
///             .properties(DefenderForStorageSettingPropertiesArgs.builder()
///                 .isEnabled(true)
///                 .malwareScanning(MalwareScanningPropertiesArgs.builder()
///                     .onUpload(OnUploadPropertiesArgs.builder()
///                         .capGBPerMonth(-1)
///                         .isEnabled(true)
///                         .build())
///                     .scanResultsEventGridTopicResourceId("/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/SampleRG/providers/Microsoft.EventGrid/topics/sampletopic")
///                     .build())
///                 .overrideSubscriptionLevelSettings(true)
///                 .sensitiveDataDiscovery(SensitiveDataDiscoveryPropertiesArgs.builder()
///                     .isEnabled(true)
///                     .build())
///                 .build())
///             .resourceId("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/SampleRG/providers/Microsoft.Storage/storageAccounts/samplestorageaccount")
///             .settingName("current")
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
/// const defenderForStorage = new azure_native.security.DefenderForStorage("defenderForStorage", {
///     properties: {
///         isEnabled: true,
///         malwareScanning: {
///             onUpload: {
///                 capGBPerMonth: -1,
///                 isEnabled: true,
///             },
///             scanResultsEventGridTopicResourceId: "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/SampleRG/providers/Microsoft.EventGrid/topics/sampletopic",
///         },
///         overrideSubscriptionLevelSettings: true,
///         sensitiveDataDiscovery: {
///             isEnabled: true,
///         },
///     },
///     resourceId: "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/SampleRG/providers/Microsoft.Storage/storageAccounts/samplestorageaccount",
///     settingName: "current",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// defender_for_storage = azure_native.security.DefenderForStorage("defenderForStorage",
///     properties={
///         "is_enabled": True,
///         "malware_scanning": {
///             "on_upload": {
///                 "cap_gb_per_month": -1,
///                 "is_enabled": True,
///             },
///             "scan_results_event_grid_topic_resource_id": "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/SampleRG/providers/Microsoft.EventGrid/topics/sampletopic",
///         },
///         "override_subscription_level_settings": True,
///         "sensitive_data_discovery": {
///             "is_enabled": True,
///         },
///     },
///     resource_id="subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/SampleRG/providers/Microsoft.Storage/storageAccounts/samplestorageaccount",
///     setting_name="current")
///
/// ```
///
/// ```yaml
/// resources:
///   defenderForStorage:
///     type: azure-native:security:DefenderForStorage
///     properties:
///       properties:
///         isEnabled: true
///         malwareScanning:
///           onUpload:
///             capGBPerMonth: -1
///             isEnabled: true
///           scanResultsEventGridTopicResourceId: /subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/SampleRG/providers/Microsoft.EventGrid/topics/sampletopic
///         overrideSubscriptionLevelSettings: true
///         sensitiveDataDiscovery:
///           isEnabled: true
///       resourceId: subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/SampleRG/providers/Microsoft.Storage/storageAccounts/samplestorageaccount
///       settingName: current
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
/// $ pulumi import azure-native:security:DefenderForStorage current /{resourceId}/providers/Microsoft.Security/defenderForStorageSettings/{settingName}
/// ```
class DefenderForStorage extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Resource name
  late final pulumi.Output<String> name;

  /// Defender for Storage resource properties.
  late final pulumi.Output<DefenderForStorageSettingPropertiesResponse>
  properties;

  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [DefenderForStorage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefenderForStorage]. {@macro pulumi_security_defender_for_storage_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefenderForStorage(
    String name, {
    DefenderForStorageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:security:DefenderForStorage',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DefenderForStorageSettingPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DefenderForStorageSettingPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
