import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_analytics_args.dart';
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
///     var entityAnalytics = new AzureNative.SecurityInsights.EntityAnalytics("entityAnalytics", new()
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
/// 		_, err := securityinsights.NewEntityAnalytics(ctx, "entityAnalytics", &securityinsights.EntityAnalyticsArgs{
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
/// resource "azure-native_securityinsights_entityanalytics" "entityAnalytics" {
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
/// import com.pulumi.azurenative.securityinsights.EntityAnalytics;
/// import com.pulumi.azurenative.securityinsights.EntityAnalyticsArgs;
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
///         var entityAnalytics = new EntityAnalytics("entityAnalytics", EntityAnalyticsArgs.builder()
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
/// const entityAnalytics = new azure_native.securityinsights.EntityAnalytics("entityAnalytics", {
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
/// entity_analytics = azure_native.securityinsights.EntityAnalytics("entityAnalytics",
///     resource_group_name="myRg",
///     settings_name="EyesOn",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   entityAnalytics:
///     type: azure-native:securityinsights:EntityAnalytics
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
/// $ pulumi import azure-native:securityinsights:EntityAnalytics EyesOn /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/settings/{settingsName}
/// ```
class EntityAnalytics extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The relevant entity providers that are synced
  late final pulumi.Output<List<String>?> entityProviders;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// The kind of the setting
  /// Expected value is 'EntityAnalytics'.
  late final pulumi.Output<String> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EntityAnalytics].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EntityAnalytics]. {@macro pulumi_securityinsights_entity_analytics_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EntityAnalytics(
    String name, {
    EntityAnalyticsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:EntityAnalytics',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    entityProviders = registerOutput<List<String>?>('entityProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [EntityAnalytics] resource.
  EntityAnalytics.reference(String urn)
    : super(
        'azure-native:securityinsights:EntityAnalytics',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    entityProviders = registerOutput<List<String>?>('entityProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
