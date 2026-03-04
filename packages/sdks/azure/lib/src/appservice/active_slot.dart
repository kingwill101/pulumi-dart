import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_slot_args.dart';
import 'active_slot_state.dart';

/// Promotes an App Service Slot to Production within an App Service.
///
/// !&gt; **NOTE:** This resource has been deprecated in version 5.0 of the provider and will be removed in version 6.0. Please use `azure.appservice.WebAppActiveSlot` resource instead.
///
/// &gt; **Note:** When using Slots - the `app_settings`, `connection_string` and `site_config` blocks on the `azure.appservice.AppService` resource will be overwritten when promoting a Slot using the `azure.appservice.ActiveSlot` resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as random from "@pulumi/random";
///
/// const server = new random.index.Id("server", {});
/// const example = new azure.core.ResourceGroup("example", {});
/// const examplePlan = new azure.appservice.Plan("example", {});
/// const exampleAppService = new azure.appservice.AppService("example", {});
/// const exampleSlot = new azure.appservice.Slot("example", {});
/// const exampleActiveSlot = new azure.appservice.ActiveSlot("example", {
///     resourceGroupName: example.name,
///     appServiceName: exampleAppService.name,
///     appServiceSlotName: exampleSlot.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_random as random
///
/// server = random.index.Id("server")
/// example = azure.core.ResourceGroup("example")
/// example_plan = azure.appservice.Plan("example")
/// example_app_service = azure.appservice.AppService("example")
/// example_slot = azure.appservice.Slot("example")
/// example_active_slot = azure.appservice.ActiveSlot("example",
///     resource_group_name=example.name,
///     app_service_name=example_app_service.name,
///     app_service_slot_name=example_slot.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new Random.Index.Id("server");
///
///     var example = new Azure.Core.ResourceGroup("example");
///
///     var examplePlan = new Azure.AppService.Plan("example");
///
///     var exampleAppService = new Azure.AppService.AppService("example");
///
///     var exampleSlot = new Azure.AppService.Slot("example");
///
///     var exampleActiveSlot = new Azure.AppService.ActiveSlot("example", new()
///     {
///         ResourceGroupName = example.Name,
///         AppServiceName = exampleAppService.Name,
///         AppServiceSlotName = exampleSlot.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := random.NewId(ctx, "server", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewPlan(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAppService, err := appservice.NewAppService(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSlot, err := appservice.NewSlot(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewActiveSlot(ctx, "example", &appservice.ActiveSlotArgs{
/// 			ResourceGroupName:  example.Name,
/// 			AppServiceName:     exampleAppService.Name,
/// 			AppServiceSlotName: exampleSlot.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.random.Id;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.appservice.Plan;
/// import com.pulumi.azure.appservice.AppService;
/// import com.pulumi.azure.appservice.Slot;
/// import com.pulumi.azure.appservice.ActiveSlot;
/// import com.pulumi.azure.appservice.ActiveSlotArgs;
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
///         var server = new Id("server");
///
///         var example = new ResourceGroup("example");
///
///         var examplePlan = new Plan("examplePlan");
///
///         var exampleAppService = new AppService("exampleAppService");
///
///         var exampleSlot = new Slot("exampleSlot");
///
///         var exampleActiveSlot = new ActiveSlot("exampleActiveSlot", ActiveSlotArgs.builder()
///             .resourceGroupName(example.name())
///             .appServiceName(exampleAppService.name())
///             .appServiceSlotName(exampleSlot.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   server:
///     type: random:Id
///   example:
///     type: azure:core:ResourceGroup
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///   exampleAppService:
///     type: azure:appservice:AppService
///     name: example
///   exampleSlot:
///     type: azure:appservice:Slot
///     name: example
///   exampleActiveSlot:
///     type: azure:appservice:ActiveSlot
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       appServiceName: ${exampleAppService.name}
///       appServiceSlotName: ${exampleSlot.name}
/// ```
class ActiveSlot extends pulumi.CustomResource {
  /// The name of the App Service within which the Slot exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> appServiceName;

  /// The name of the App Service Slot which should be promoted to the Production Slot within the App Service.
  late final pulumi.Output<String> appServiceSlotName;

  /// The name of the resource group in which the App Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [ActiveSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ActiveSlot]. {@macro pulumi_appservice_active_slot_active_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ActiveSlot(
    String name, {
    ActiveSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appservice/activeSlot:ActiveSlot',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appServiceName = registerOutput<String>('appServiceName');
    appServiceSlotName = registerOutput<String>('appServiceSlotName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [ActiveSlot] resource's state with the given [name] and [id].
  static ActiveSlot get(
    String name,
    pulumi.Input<String> id, {
    ActiveSlotState? state,
  }) {
    return ActiveSlot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ActiveSlot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appservice/activeSlot:ActiveSlot',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appServiceName = registerOutput<String>('appServiceName');
    appServiceSlotName = registerOutput<String>('appServiceSlotName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
