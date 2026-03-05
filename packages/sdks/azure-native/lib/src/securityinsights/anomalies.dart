import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomalies_args.dart';
import 'system_data_response.dart';

/// Settings with single toggle.
///
/// Uses Azure REST API version 2025-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update EyesOn settings.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var anomalies = new AzureNative.SecurityInsights.Anomalies("anomalies", new()
///     {
///         ResourceGroupName = "myRg",
///         SettingsName = "EyesOn",
///         WorkspaceName = "myWorkspace",
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
/// 	securityinsights "github.com/pulumi/pulumi-azure-native-sdk/securityinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityinsights.NewAnomalies(ctx, "anomalies", &securityinsights.AnomaliesArgs{
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			SettingsName:      pulumi.String("EyesOn"),
/// 			WorkspaceName:     pulumi.String("myWorkspace"),
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
/// import com.pulumi.azurenative.securityinsights.Anomalies;
/// import com.pulumi.azurenative.securityinsights.AnomaliesArgs;
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
///         var anomalies = new Anomalies("anomalies", AnomaliesArgs.builder()
///             .resourceGroupName("myRg")
///             .settingsName("EyesOn")
///             .workspaceName("myWorkspace")
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
/// const anomalies = new azure_native.securityinsights.Anomalies("anomalies", {
///     resourceGroupName: "myRg",
///     settingsName: "EyesOn",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// anomalies = azure_native.securityinsights.Anomalies("anomalies",
///     resource_group_name="myRg",
///     settings_name="EyesOn",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   anomalies:
///     type: azure-native:securityinsights:Anomalies
///     properties:
///       resourceGroupName: myRg
///       settingsName: EyesOn
///       workspaceName: myWorkspace
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
/// $ pulumi import azure-native:securityinsights:Anomalies EyesOn /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/settings/{settingsName}
/// ```
class Anomalies extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;

  /// Determines whether the setting is enable or disabled.
  late final pulumi.Output<bool> isEnabled;

  /// The kind of the setting
  /// Expected value is 'Anomalies'.
  late final pulumi.Output<String> kind;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Anomalies].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Anomalies]. {@macro pulumi_securityinsights_anomalies_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Anomalies(
    String name, {
    AnomaliesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:securityinsights:Anomalies',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    isEnabled = registerOutput<bool>('isEnabled');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
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
    type = registerOutput<String>('type');
  }
}
