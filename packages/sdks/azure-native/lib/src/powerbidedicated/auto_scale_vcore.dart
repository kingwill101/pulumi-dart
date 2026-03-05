import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_scale_vcore_args.dart';
import 'auto_scale_vcore_sku_response.dart';
import 'system_data_response.dart';

/// Represents an instance of an auto scale v-core resource.
///
/// Uses Azure REST API version 2021-01-01. In version 2.x of the Azure Native provider, it used API version 2021-01-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create auto scale v-core
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var autoScaleVCore = new AzureNative.PowerBIDedicated.AutoScaleVCore("autoScaleVCore", new()
///     {
///         CapacityLimit = 10,
///         CapacityObjectId = "a28f00bd-5330-4572-88f1-fa883e074785",
///         Location = "West US",
///         ResourceGroupName = "TestRG",
///         Sku = new AzureNative.PowerBIDedicated.Inputs.AutoScaleVCoreSkuArgs
///         {
///             Capacity = 0,
///             Name = "AutoScale",
///             Tier = AzureNative.PowerBIDedicated.VCoreSkuTier.AutoScale,
///         },
///         Tags =
///         {
///             { "testKey", "testValue" },
///         },
///         VcoreName = "testvcore",
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
/// 	powerbidedicated "github.com/pulumi/pulumi-azure-native-sdk/powerbidedicated/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := powerbidedicated.NewAutoScaleVCore(ctx, "autoScaleVCore", &powerbidedicated.AutoScaleVCoreArgs{
/// 			CapacityLimit:     pulumi.Int(10),
/// 			CapacityObjectId:  pulumi.String("a28f00bd-5330-4572-88f1-fa883e074785"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("TestRG"),
/// 			Sku: &powerbidedicated.AutoScaleVCoreSkuArgs{
/// 				Capacity: pulumi.Int(0),
/// 				Name:     pulumi.String("AutoScale"),
/// 				Tier:     pulumi.String(powerbidedicated.VCoreSkuTierAutoScale),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"testKey": pulumi.String("testValue"),
/// 			},
/// 			VcoreName: pulumi.String("testvcore"),
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
/// import com.pulumi.azurenative.powerbidedicated.AutoScaleVCore;
/// import com.pulumi.azurenative.powerbidedicated.AutoScaleVCoreArgs;
/// import com.pulumi.azurenative.powerbidedicated.inputs.AutoScaleVCoreSkuArgs;
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
///         var autoScaleVCore = new AutoScaleVCore("autoScaleVCore", AutoScaleVCoreArgs.builder()
///             .capacityLimit(10)
///             .capacityObjectId("a28f00bd-5330-4572-88f1-fa883e074785")
///             .location("West US")
///             .resourceGroupName("TestRG")
///             .sku(AutoScaleVCoreSkuArgs.builder()
///                 .capacity(0)
///                 .name("AutoScale")
///                 .tier("AutoScale")
///                 .build())
///             .tags(Map.of("testKey", "testValue"))
///             .vcoreName("testvcore")
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
/// const autoScaleVCore = new azure_native.powerbidedicated.AutoScaleVCore("autoScaleVCore", {
///     capacityLimit: 10,
///     capacityObjectId: "a28f00bd-5330-4572-88f1-fa883e074785",
///     location: "West US",
///     resourceGroupName: "TestRG",
///     sku: {
///         capacity: 0,
///         name: "AutoScale",
///         tier: azure_native.powerbidedicated.VCoreSkuTier.AutoScale,
///     },
///     tags: {
///         testKey: "testValue",
///     },
///     vcoreName: "testvcore",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// auto_scale_v_core = azure_native.powerbidedicated.AutoScaleVCore("autoScaleVCore",
///     capacity_limit=10,
///     capacity_object_id="a28f00bd-5330-4572-88f1-fa883e074785",
///     location="West US",
///     resource_group_name="TestRG",
///     sku={
///         "capacity": 0,
///         "name": "AutoScale",
///         "tier": azure_native.powerbidedicated.VCoreSkuTier.AUTO_SCALE,
///     },
///     tags={
///         "testKey": "testValue",
///     },
///     vcore_name="testvcore")
///
/// ```
///
/// ```yaml
/// resources:
///   autoScaleVCore:
///     type: azure-native:powerbidedicated:AutoScaleVCore
///     properties:
///       capacityLimit: 10
///       capacityObjectId: a28f00bd-5330-4572-88f1-fa883e074785
///       location: West US
///       resourceGroupName: TestRG
///       sku:
///         capacity: 0
///         name: AutoScale
///         tier: AutoScale
///       tags:
///         testKey: testValue
///       vcoreName: testvcore
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
/// $ pulumi import azure-native:powerbidedicated:AutoScaleVCore testvcore /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.PowerBIDedicated/autoScaleVCores/{vcoreName}
/// ```
class AutoScaleVCore extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The maximum capacity of an auto scale v-core resource.
  late final pulumi.Output<int?> capacityLimit;

  /// The object ID of the capacity resource associated with the auto scale v-core resource.
  late final pulumi.Output<String?> capacityObjectId;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The current deployment state of an auto scale v-core resource. The provisioningState is to indicate states for resource provisioning.
  late final pulumi.Output<String> provisioningState;

  /// The SKU of the auto scale v-core resource.
  late final pulumi.Output<AutoScaleVCoreSkuResponse> sku;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AutoScaleVCore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoScaleVCore]. {@macro pulumi_powerbidedicated_auto_scale_vcore_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoScaleVCore(
    String name, {
    AutoScaleVCoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:powerbidedicated:AutoScaleVCore',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    capacityLimit = registerOutput<int?>('capacityLimit');
    capacityObjectId = registerOutput<String?>('capacityObjectId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<AutoScaleVCoreSkuResponse>(
      'sku',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AutoScaleVCoreSkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
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
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
