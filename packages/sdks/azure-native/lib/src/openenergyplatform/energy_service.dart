import 'package:pulumi/pulumi.dart' as pulumi;
import 'energy_service_args.dart';
import 'energy_service_properties_response.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2022-04-04-preview. In version 2.x of the Azure Native provider, it used API version 2022-04-04-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### OepResource_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var energyService = new AzureNative.OpenEnergyPlatform.EnergyService("energyService", new()
///     {
///         ResourceGroupName = "DummyResourceGroupName",
///         ResourceName = "DummyResourceName",
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
/// 	openenergyplatform "github.com/pulumi/pulumi-azure-native-sdk/openenergyplatform/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := openenergyplatform.NewEnergyService(ctx, "energyService", &openenergyplatform.EnergyServiceArgs{
/// 			ResourceGroupName: pulumi.String("DummyResourceGroupName"),
/// 			ResourceName:      pulumi.String("DummyResourceName"),
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
/// import com.pulumi.azurenative.openenergyplatform.EnergyService;
/// import com.pulumi.azurenative.openenergyplatform.EnergyServiceArgs;
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
///         var energyService = new EnergyService("energyService", EnergyServiceArgs.builder()
///             .resourceGroupName("DummyResourceGroupName")
///             .resourceName("DummyResourceName")
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
/// const energyService = new azure_native.openenergyplatform.EnergyService("energyService", {
///     resourceGroupName: "DummyResourceGroupName",
///     resourceName: "DummyResourceName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// energy_service = azure_native.openenergyplatform.EnergyService("energyService",
///     resource_group_name="DummyResourceGroupName",
///     resource_name_="DummyResourceName")
///
/// ```
///
/// ```yaml
/// resources:
///   energyService:
///     type: azure-native:openenergyplatform:EnergyService
///     properties:
///       resourceGroupName: DummyResourceGroupName
///       resourceName: DummyResourceName
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
/// $ pulumi import azure-native:openenergyplatform:EnergyService DummyResourceName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OpenEnergyPlatform/energyServices/{resourceName}
/// ```
class EnergyService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Geo-location where the resource lives.
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<EnergyServicePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EnergyService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnergyService]. {@macro pulumi_openenergyplatform_energy_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnergyService(
    String name, {
    EnergyServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:openenergyplatform:EnergyService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<EnergyServicePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnergyServicePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
