import 'package:pulumi/pulumi.dart' as pulumi;
import 'copilot_setting_args.dart';
import 'system_data_response.dart';

/// The copilot settings tenant resource definition.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2024-04-01-preview.
///
/// Other available API versions: 2024-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native portalservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a new Copilot settings or update an existing one
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var copilotSetting = new AzureNative.PortalServices.CopilotSetting("copilotSetting", new()
///     {
///         AccessControlEnabled = true,
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
/// 	portalservices "github.com/pulumi/pulumi-azure-native-sdk/portalservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := portalservices.NewCopilotSetting(ctx, "copilotSetting", &portalservices.CopilotSettingArgs{
/// 			AccessControlEnabled: pulumi.Bool(true),
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
/// import com.pulumi.azurenative.portalservices.CopilotSetting;
/// import com.pulumi.azurenative.portalservices.CopilotSettingArgs;
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
///         var copilotSetting = new CopilotSetting("copilotSetting", CopilotSettingArgs.builder()
///             .accessControlEnabled(true)
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
/// const copilotSetting = new azure_native.portalservices.CopilotSetting("copilotSetting", {accessControlEnabled: true});
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// copilot_setting = azure_native.portalservices.CopilotSetting("copilotSetting", access_control_enabled=True)
///
/// ```
///
/// ```yaml
/// resources:
///   copilotSetting:
///     type: azure-native:portalservices:CopilotSetting
///     properties:
///       accessControlEnabled: true
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
/// $ pulumi import azure-native:portalservices:CopilotSetting default /providers/Microsoft.PortalServices/copilotSettings/default
/// ```
class CopilotSetting extends pulumi.CustomResource {
  /// Boolean indicating if role-based access control is enabled for copilot in this tenant.
  late final pulumi.Output<bool> accessControlEnabled;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last provisioning operation performed on the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CopilotSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CopilotSetting]. {@macro pulumi_portalservices_copilot_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CopilotSetting(
    String name, {
    CopilotSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:portalservices:CopilotSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessControlEnabled = registerOutput<bool>('accessControlEnabled');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
