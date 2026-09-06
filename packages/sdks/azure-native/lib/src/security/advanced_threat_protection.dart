import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_threat_protection_args.dart';
import 'system_data_response.dart';

/// The Advanced Threat Protection resource.
///
/// Uses Azure REST API version 2019-01-01. In version 2.x of the Azure Native provider, it used API version 2019-01-01.
///
/// Other available API versions: 2017-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates the Advanced Threat Protection settings on a specified resource.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var advancedThreatProtection = new AzureNative.Security.AdvancedThreatProtection("advancedThreatProtection", new()
///     {
///         IsEnabled = true,
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
/// 		_, err := security.NewAdvancedThreatProtection(ctx, "advancedThreatProtection", &security.AdvancedThreatProtectionArgs{
/// 			IsEnabled:   pulumi.Bool(true),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_security_advancedthreatprotection" "advancedThreatProtection" {
///   is_enabled   = true
///   resource_id  = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/SampleRG/providers/Microsoft.Storage/storageAccounts/samplestorageaccount"
///   setting_name = "current"
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
/// import com.pulumi.azurenative.security.AdvancedThreatProtection;
/// import com.pulumi.azurenative.security.AdvancedThreatProtectionArgs;
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
///         var advancedThreatProtection = new AdvancedThreatProtection("advancedThreatProtection", AdvancedThreatProtectionArgs.builder()
///             .isEnabled(true)
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
/// const advancedThreatProtection = new azure_native.security.AdvancedThreatProtection("advancedThreatProtection", {
///     isEnabled: true,
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
/// advanced_threat_protection = azure_native.security.AdvancedThreatProtection("advancedThreatProtection",
///     is_enabled=True,
///     resource_id="subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/SampleRG/providers/Microsoft.Storage/storageAccounts/samplestorageaccount",
///     setting_name="current")
///
/// ```
///
/// ```yaml
/// resources:
///   advancedThreatProtection:
///     type: azure-native:security:AdvancedThreatProtection
///     properties:
///       isEnabled: true
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
/// $ pulumi import azure-native:security:AdvancedThreatProtection current /{resourceId}/providers/Microsoft.Security/advancedThreatProtectionSettings/{settingName}
/// ```
class AdvancedThreatProtection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Indicates whether Advanced Threat Protection is enabled.
  late final pulumi.Output<bool?> isEnabled;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AdvancedThreatProtection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AdvancedThreatProtection]. {@macro pulumi_security_advanced_threat_protection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AdvancedThreatProtection(
    String name, {
    AdvancedThreatProtectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:AdvancedThreatProtection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    isEnabled = registerOutput<bool?>('isEnabled');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AdvancedThreatProtection] resource.
  AdvancedThreatProtection.reference(String urn)
    : super(
        'azure-native:security:AdvancedThreatProtection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    isEnabled = registerOutput<bool?>('isEnabled');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
