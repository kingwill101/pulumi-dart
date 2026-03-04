import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_use_benefit_args.dart';
import 'sku_response.dart';

/// Response on GET of a hybrid use benefit
///
/// Uses Azure REST API version 2019-12-01. In version 2.x of the Azure Native provider, it used API version 2019-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### HybridUseBenefit
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hybridUseBenefit = new AzureNative.SoftwarePlan.HybridUseBenefit("hybridUseBenefit", new()
///     {
///         PlanId = "94f46eda-45f8-493a-8425-251921463a89",
///         Scope = "subscriptions/{sub-id}/resourceGroups/{rg-name}/providers/Microsoft.Compute/HostGroups/{host-group-name}/hosts/{host-name}",
///         Sku = new AzureNative.SoftwarePlan.Inputs.SkuArgs
///         {
///             Name = "SQL_Server_Perpetual",
///         },
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
/// 	softwareplan "github.com/pulumi/pulumi-azure-native-sdk/softwareplan/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := softwareplan.NewHybridUseBenefit(ctx, "hybridUseBenefit", &softwareplan.HybridUseBenefitArgs{
/// 			PlanId: pulumi.String("94f46eda-45f8-493a-8425-251921463a89"),
/// 			Scope:  pulumi.String("subscriptions/{sub-id}/resourceGroups/{rg-name}/providers/Microsoft.Compute/HostGroups/{host-group-name}/hosts/{host-name}"),
/// 			Sku: &softwareplan.SkuArgs{
/// 				Name: pulumi.String("SQL_Server_Perpetual"),
/// 			},
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
/// import com.pulumi.azurenative.softwareplan.HybridUseBenefit;
/// import com.pulumi.azurenative.softwareplan.HybridUseBenefitArgs;
/// import com.pulumi.azurenative.softwareplan.inputs.SkuArgs;
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
///         var hybridUseBenefit = new HybridUseBenefit("hybridUseBenefit", HybridUseBenefitArgs.builder()
///             .planId("94f46eda-45f8-493a-8425-251921463a89")
///             .scope("subscriptions/{sub-id}/resourceGroups/{rg-name}/providers/Microsoft.Compute/HostGroups/{host-group-name}/hosts/{host-name}")
///             .sku(SkuArgs.builder()
///                 .name("SQL_Server_Perpetual")
///                 .build())
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
/// const hybridUseBenefit = new azure_native.softwareplan.HybridUseBenefit("hybridUseBenefit", {
///     planId: "94f46eda-45f8-493a-8425-251921463a89",
///     scope: "subscriptions/{sub-id}/resourceGroups/{rg-name}/providers/Microsoft.Compute/HostGroups/{host-group-name}/hosts/{host-name}",
///     sku: {
///         name: "SQL_Server_Perpetual",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// hybrid_use_benefit = azure_native.softwareplan.HybridUseBenefit("hybridUseBenefit",
///     plan_id="94f46eda-45f8-493a-8425-251921463a89",
///     scope="subscriptions/{sub-id}/resourceGroups/{rg-name}/providers/Microsoft.Compute/HostGroups/{host-group-name}/hosts/{host-name}",
///     sku={
///         "name": "SQL_Server_Perpetual",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   hybridUseBenefit:
///     type: azure-native:softwareplan:HybridUseBenefit
///     properties:
///       planId: 94f46eda-45f8-493a-8425-251921463a89
///       scope: subscriptions/{sub-id}/resourceGroups/{rg-name}/providers/Microsoft.Compute/HostGroups/{host-group-name}/hosts/{host-name}
///       sku:
///         name: SQL_Server_Perpetual
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
/// $ pulumi import azure-native:softwareplan:HybridUseBenefit SQL_{hostGroupName}_{hostName} /{scope}/providers/Microsoft.SoftwarePlan/hybridUseBenefits/{planId}
/// ```
class HybridUseBenefit extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Created date
  late final pulumi.Output<String> createdDate;

  /// Indicates the revision of the hybrid use benefit
  late final pulumi.Output<int> etag;

  /// Last updated date
  late final pulumi.Output<String> lastUpdatedDate;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Provisioning state
  late final pulumi.Output<String> provisioningState;

  /// Hybrid use benefit SKU
  late final pulumi.Output<SkuResponse> sku;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [HybridUseBenefit].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HybridUseBenefit]. {@macro pulumi_softwareplan_hybrid_use_benefit_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HybridUseBenefit(
    String name, {
    HybridUseBenefitArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:softwareplan:HybridUseBenefit',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdDate = registerOutput<String>('createdDate');
    etag = registerOutput<int>('etag');
    lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<SkuResponse>('sku');
    type = registerOutput<String>('type');
  }
}
