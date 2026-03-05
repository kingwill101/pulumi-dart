import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_servers_setting_args.dart';
import 'system_data_response.dart';

/// A vulnerability assessments setting on Azure servers in the defined scope.
///
/// Uses Azure REST API version 2023-05-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Set a server vulnerability assessments setting of the kind settingKind on the subscription
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azureServersSetting = new AzureNative.Security.AzureServersSetting("azureServersSetting", new()
///     {
///         Kind = "AzureServersSetting",
///         SelectedProvider = AzureNative.Security.ServerVulnerabilityAssessmentsAzureSettingSelectedProvider.MdeTvm,
///         SettingKind = "azureServersSetting",
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
/// 		_, err := security.NewAzureServersSetting(ctx, "azureServersSetting", &security.AzureServersSettingArgs{
/// 			Kind:             pulumi.String("AzureServersSetting"),
/// 			SelectedProvider: pulumi.String(security.ServerVulnerabilityAssessmentsAzureSettingSelectedProviderMdeTvm),
/// 			SettingKind:      pulumi.String("azureServersSetting"),
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
/// import com.pulumi.azurenative.security.AzureServersSetting;
/// import com.pulumi.azurenative.security.AzureServersSettingArgs;
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
///         var azureServersSetting = new AzureServersSetting("azureServersSetting", AzureServersSettingArgs.builder()
///             .kind("AzureServersSetting")
///             .selectedProvider("MdeTvm")
///             .settingKind("azureServersSetting")
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
/// const azureServersSetting = new azure_native.security.AzureServersSetting("azureServersSetting", {
///     kind: "AzureServersSetting",
///     selectedProvider: azure_native.security.ServerVulnerabilityAssessmentsAzureSettingSelectedProvider.MdeTvm,
///     settingKind: "azureServersSetting",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// azure_servers_setting = azure_native.security.AzureServersSetting("azureServersSetting",
///     kind="AzureServersSetting",
///     selected_provider=azure_native.security.ServerVulnerabilityAssessmentsAzureSettingSelectedProvider.MDE_TVM,
///     setting_kind="azureServersSetting")
///
/// ```
///
/// ```yaml
/// resources:
///   azureServersSetting:
///     type: azure-native:security:AzureServersSetting
///     properties:
///       kind: AzureServersSetting
///       selectedProvider: MdeTvm
///       settingKind: azureServersSetting
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
/// $ pulumi import azure-native:security:AzureServersSetting azureServersSetting /subscriptions/{subscriptionId}/providers/Microsoft.Security/serverVulnerabilityAssessmentsSettings/{settingKind}
/// ```
class AzureServersSetting extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The kind of the server vulnerability assessments setting
  /// Expected value is 'AzureServersSetting'.
  late final pulumi.Output<String> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The selected vulnerability assessments provider on Azure servers in the defined scope.
  late final pulumi.Output<String> selectedProvider;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AzureServersSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AzureServersSetting]. {@macro pulumi_security_azure_servers_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AzureServersSetting(
    String name, {
    AzureServersSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:AzureServersSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    selectedProvider = registerOutput<String>('selectedProvider');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
