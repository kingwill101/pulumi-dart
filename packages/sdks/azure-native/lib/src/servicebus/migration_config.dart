import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_config_args.dart';
import 'system_data_response.dart';

/// Single item in List or Get Migration Config operation
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-01-01-preview.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2025-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### MigrationConfigurationsStartMigration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var migrationConfig = new AzureNative.ServiceBus.MigrationConfig("migrationConfig", new()
///     {
///         ConfigName = "$default",
///         NamespaceName = "sdk-Namespace-41",
///         PostMigrationName = "sdk-PostMigration-5919",
///         ResourceGroupName = "ResourceGroup",
///         TargetNamespace = "/subscriptions/SubscriptionId/resourceGroups/ResourceGroup/providers/Microsoft.ServiceBus/namespaces/sdk-Namespace-4028",
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
/// 	servicebus "github.com/pulumi/pulumi-azure-native-sdk/servicebus/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicebus.NewMigrationConfig(ctx, "migrationConfig", &servicebus.MigrationConfigArgs{
/// 			ConfigName:        pulumi.String("$default"),
/// 			NamespaceName:     pulumi.String("sdk-Namespace-41"),
/// 			PostMigrationName: pulumi.String("sdk-PostMigration-5919"),
/// 			ResourceGroupName: pulumi.String("ResourceGroup"),
/// 			TargetNamespace:   pulumi.String("/subscriptions/SubscriptionId/resourceGroups/ResourceGroup/providers/Microsoft.ServiceBus/namespaces/sdk-Namespace-4028"),
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
/// import com.pulumi.azurenative.servicebus.MigrationConfig;
/// import com.pulumi.azurenative.servicebus.MigrationConfigArgs;
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
///         var migrationConfig = new MigrationConfig("migrationConfig", MigrationConfigArgs.builder()
///             .configName("$default")
///             .namespaceName("sdk-Namespace-41")
///             .postMigrationName("sdk-PostMigration-5919")
///             .resourceGroupName("ResourceGroup")
///             .targetNamespace("/subscriptions/SubscriptionId/resourceGroups/ResourceGroup/providers/Microsoft.ServiceBus/namespaces/sdk-Namespace-4028")
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
/// const migrationConfig = new azure_native.servicebus.MigrationConfig("migrationConfig", {
///     configName: "$default",
///     namespaceName: "sdk-Namespace-41",
///     postMigrationName: "sdk-PostMigration-5919",
///     resourceGroupName: "ResourceGroup",
///     targetNamespace: "/subscriptions/SubscriptionId/resourceGroups/ResourceGroup/providers/Microsoft.ServiceBus/namespaces/sdk-Namespace-4028",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// migration_config = azure_native.servicebus.MigrationConfig("migrationConfig",
///     config_name="$default",
///     namespace_name="sdk-Namespace-41",
///     post_migration_name="sdk-PostMigration-5919",
///     resource_group_name="ResourceGroup",
///     target_namespace="/subscriptions/SubscriptionId/resourceGroups/ResourceGroup/providers/Microsoft.ServiceBus/namespaces/sdk-Namespace-4028")
///
/// ```
///
/// ```yaml
/// resources:
///   migrationConfig:
///     type: azure-native:servicebus:MigrationConfig
///     properties:
///       configName: $default
///       namespaceName: sdk-Namespace-41
///       postMigrationName: sdk-PostMigration-5919
///       resourceGroupName: ResourceGroup
///       targetNamespace: /subscriptions/SubscriptionId/resourceGroups/ResourceGroup/providers/Microsoft.ServiceBus/namespaces/sdk-Namespace-4028
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
/// $ pulumi import azure-native:servicebus:MigrationConfig sdk-Namespace-41 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/migrationConfigurations/{configName}
/// ```
class MigrationConfig extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// State in which Standard to Premium Migration is, possible values : Unknown, Reverting, Completing, Initiating, Syncing, Active
  late final pulumi.Output<String> migrationState;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Number of entities pending to be replicated.
  late final pulumi.Output<double> pendingReplicationOperationsCount;

  /// Name to access Standard Namespace after migration
  late final pulumi.Output<String> postMigrationName;

  /// Provisioning state of Migration Configuration
  late final pulumi.Output<String> provisioningState;

  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Existing premium Namespace ARM Id name which has no entities, will be used for migration
  late final pulumi.Output<String> targetNamespace;

  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  late final pulumi.Output<String> type;

  /// Creates a new [MigrationConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MigrationConfig]. {@macro pulumi_servicebus_migration_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MigrationConfig(
    String name, {
    MigrationConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:servicebus:MigrationConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    migrationState = registerOutput<String>('migrationState');
    this.name = registerOutput<String>('name');
    pendingReplicationOperationsCount = registerOutput<double>(
      'pendingReplicationOperationsCount',
    );
    postMigrationName = registerOutput<String>('postMigrationName');
    provisioningState = registerOutput<String>('provisioningState');
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
    targetNamespace = registerOutput<String>('targetNamespace');
    type = registerOutput<String>('type');
  }
}
