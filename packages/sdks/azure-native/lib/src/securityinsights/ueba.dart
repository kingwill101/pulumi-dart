import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'ueba_args.dart';

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
///     var ueba = new AzureNative.SecurityInsights.Ueba("ueba", new()
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
/// 		_, err := securityinsights.NewUeba(ctx, "ueba", &securityinsights.UebaArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_securityinsights_ueba" "ueba" {
///   resource_group_name = "myRg"
///   settings_name       = "EyesOn"
///   workspace_name      = "myWorkspace"
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
/// import com.pulumi.azurenative.securityinsights.Ueba;
/// import com.pulumi.azurenative.securityinsights.UebaArgs;
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
///         var ueba = new Ueba("ueba", UebaArgs.builder()
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
/// const ueba = new azure_native.securityinsights.Ueba("ueba", {
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
/// ueba = azure_native.securityinsights.Ueba("ueba",
///     resource_group_name="myRg",
///     settings_name="EyesOn",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   ueba:
///     type: azure-native:securityinsights:Ueba
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
/// $ pulumi import azure-native:securityinsights:Ueba EyesOn /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/settings/{settingsName}
/// ```
class Ueba extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The relevant data sources that enriched by ueba
  late final pulumi.Output<List<String>?> dataSources;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// The kind of the setting
  /// Expected value is 'Ueba'.
  late final pulumi.Output<String> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Ueba].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ueba]. {@macro pulumi_securityinsights_ueba_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ueba(
    String name, {
    UebaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:Ueba',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataSources = registerOutput<List<String>?>('dataSources');
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
