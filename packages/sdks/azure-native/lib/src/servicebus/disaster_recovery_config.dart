import 'package:pulumi/pulumi.dart' as pulumi;
import 'disaster_recovery_config_args.dart';
import 'system_data_response.dart';

/// Single item in List or Get Alias(Disaster Recovery configuration) operation
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-01-01-preview.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2025-05-01-preview, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SBAliasCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disasterRecoveryConfig = new AzureNative.ServiceBus.DisasterRecoveryConfig("disasterRecoveryConfig", new()
///     {
///         Alias = "sdk-Namespace-8860",
///         AlternateName = "alternameforAlias-Namespace-8860",
///         NamespaceName = "sdk-Namespace-8860",
///         PartnerNamespace = "sdk-Namespace-37",
///         ResourceGroupName = "ardsouzatestRG",
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
/// 		_, err := servicebus.NewDisasterRecoveryConfig(ctx, "disasterRecoveryConfig", &servicebus.DisasterRecoveryConfigArgs{
/// 			Alias:             pulumi.String("sdk-Namespace-8860"),
/// 			AlternateName:     pulumi.String("alternameforAlias-Namespace-8860"),
/// 			NamespaceName:     pulumi.String("sdk-Namespace-8860"),
/// 			PartnerNamespace:  pulumi.String("sdk-Namespace-37"),
/// 			ResourceGroupName: pulumi.String("ardsouzatestRG"),
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
/// resource "azure-native_servicebus_disasterrecoveryconfig" "disasterRecoveryConfig" {
///   alias               = "sdk-Namespace-8860"
///   alternate_name      = "alternameforAlias-Namespace-8860"
///   namespace_name      = "sdk-Namespace-8860"
///   partner_namespace   = "sdk-Namespace-37"
///   resource_group_name = "ardsouzatestRG"
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
/// import com.pulumi.azurenative.servicebus.DisasterRecoveryConfig;
/// import com.pulumi.azurenative.servicebus.DisasterRecoveryConfigArgs;
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
///         var disasterRecoveryConfig = new DisasterRecoveryConfig("disasterRecoveryConfig", DisasterRecoveryConfigArgs.builder()
///             .alias("sdk-Namespace-8860")
///             .alternateName("alternameforAlias-Namespace-8860")
///             .namespaceName("sdk-Namespace-8860")
///             .partnerNamespace("sdk-Namespace-37")
///             .resourceGroupName("ardsouzatestRG")
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
/// const disasterRecoveryConfig = new azure_native.servicebus.DisasterRecoveryConfig("disasterRecoveryConfig", {
///     alias: "sdk-Namespace-8860",
///     alternateName: "alternameforAlias-Namespace-8860",
///     namespaceName: "sdk-Namespace-8860",
///     partnerNamespace: "sdk-Namespace-37",
///     resourceGroupName: "ardsouzatestRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disaster_recovery_config = azure_native.servicebus.DisasterRecoveryConfig("disasterRecoveryConfig",
///     alias="sdk-Namespace-8860",
///     alternate_name="alternameforAlias-Namespace-8860",
///     namespace_name="sdk-Namespace-8860",
///     partner_namespace="sdk-Namespace-37",
///     resource_group_name="ardsouzatestRG")
///
/// ```
///
/// ```yaml
/// resources:
///   disasterRecoveryConfig:
///     type: azure-native:servicebus:DisasterRecoveryConfig
///     properties:
///       alias: sdk-Namespace-8860
///       alternateName: alternameforAlias-Namespace-8860
///       namespaceName: sdk-Namespace-8860
///       partnerNamespace: sdk-Namespace-37
///       resourceGroupName: ardsouzatestRG
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
/// $ pulumi import azure-native:servicebus:DisasterRecoveryConfig sdk-Namespace-8860 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/disasterRecoveryConfigs/{alias}
/// ```
class DisasterRecoveryConfig extends pulumi.CustomResource {
  /// Primary/Secondary eventhub namespace name, which is part of GEO DR pairing
  late final pulumi.Output<String?> alternateName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// ARM Id of the Primary/Secondary eventhub namespace name, which is part of GEO DR pairing
  late final pulumi.Output<String?> partnerNamespace;
  /// Number of entities pending to be replicated.
  late final pulumi.Output<double> pendingReplicationOperationsCount;
  /// Provisioning state of the Alias(Disaster Recovery configuration) - possible values 'Accepted' or 'Succeeded' or 'Failed'
  late final pulumi.Output<String> provisioningState;
  /// role of namespace in GEO DR - possible values 'Primary' or 'PrimaryNotReplicating' or 'Secondary'
  late final pulumi.Output<String> role;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  late final pulumi.Output<String> type;

  /// Creates a new [DisasterRecoveryConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DisasterRecoveryConfig]. {@macro pulumi_servicebus_disaster_recovery_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DisasterRecoveryConfig(
    String name, {
    DisasterRecoveryConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicebus:DisasterRecoveryConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alternateName = registerOutput<String?>('alternateName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    partnerNamespace = registerOutput<String?>('partnerNamespace');
    pendingReplicationOperationsCount = registerOutput<double>('pendingReplicationOperationsCount');
    provisioningState = registerOutput<String>('provisioningState');
    role = registerOutput<String>('role');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
