import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_plan_args.dart';
import 'service_plan_state.dart';

/// Manages an App Service: Service Plan.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleServicePlan = new azure.appservice.ServicePlan("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     osType: "Linux",
///     skuName: "P1v2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service_plan = azure.appservice.ServicePlan("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     os_type="Linux",
///     sku_name="P1v2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleServicePlan = new Azure.AppService.ServicePlan("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         OsType = "Linux",
///         SkuName = "P1v2",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewServicePlan(ctx, "example", &appservice.ServicePlanArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			OsType:            pulumi.String("Linux"),
/// 			SkuName:           pulumi.String("P1v2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_appservice_serviceplan" "example" {
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   os_type             = "Linux"
///   sku_name            = "P1v2"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appservice.ServicePlan;
/// import com.pulumi.azure.appservice.ServicePlanArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleServicePlan = new ServicePlan("exampleServicePlan", ServicePlanArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .osType("Linux")
///             .skuName("P1v2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleServicePlan:
///     type: azure:appservice:ServicePlan
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       osType: Linux
///       skuName: P1v2
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2023-12-01
///
/// ## Import
///
/// AppServices can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/servicePlan:ServicePlan example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Web/serverFarms/farm1
/// ```
class ServicePlan extends pulumi.CustomResource {
  /// The ID of the App Service Environment to create this Service Plan in.
  ///
  /// &gt; **Note:** Requires an Isolated SKU for `azure.appservice.EnvironmentV3`, supported values include `I1v2`, `I1mv2`, `I2v2`, `I2mv2`, `I3v2`, `I3mv2`, `I4v2`, `I4mv2`, `I5v2`, `I5mv2`, and `I6v2`.
  late final pulumi.Output<String?> appServiceEnvironmentId;
  /// A string representing the Kind of Service Plan.
  late final pulumi.Output<String> kind;
  /// The Azure Region where the Service Plan should exist. Changing this forces a new Service Plan to be created.
  late final pulumi.Output<String> location;
  /// The maximum number of workers to use in an Elastic SKU Plan or Premium Plan that have `premiumPlanAutoScaleEnabled` set to `true`. Cannot be set unless using an Elastic or Premium SKU.
  late final pulumi.Output<int> maximumElasticWorkerCount;
  /// The name which should be used for this Service Plan. Changing this forces a new Service Plan to be created.
  late final pulumi.Output<String> name;
  /// The O/S type for the App Services to be hosted in this plan. Possible values include `Windows`, `Linux`, and `WindowsContainer`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> osType;
  /// Should Per Site Scaling be enabled. Defaults to `false`.
  late final pulumi.Output<bool?> perSiteScalingEnabled;
  /// Should automatic scaling be enabled for the Premium SKU Plan. Defaults to `false`. Cannot be set unless using a Premium SKU.
  late final pulumi.Output<bool?> premiumPlanAutoScaleEnabled;
  /// Whether this is a reserved Service Plan Type. `true` if `osType` is `Linux`, otherwise `false`.
  late final pulumi.Output<bool> reserved;
  /// The name of the Resource Group where the Service Plan should exist. Changing this forces a new Service Plan to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The SKU for the plan. Possible values include `B1`, `B2`, `B3`, `D1`, `F1`, `I1`, `I2`, `I3`, `I1v2`, `I1mv2`, `I2v2`, `I2mv2`, `I3v2`, `I3mv2`, `I4v2`, `I4mv2`, `I5v2`, `I5mv2`, `I6v2`, `P1v2`, `P2v2`, `P3v2`, `P0v3`, `P1v3`, `P2v3`, `P3v3`, `P1mv3`, `P2mv3`, `P3mv3`, `P4mv3`, `P5mv3`, `P0v4`, `P1v4`, `P2v4`, `P3v4`, `P1mv4`, `P2mv4`, `P3mv4`, `P4mv4`, `P5mv4`, `S1`, `S2`, `S3`, `SHARED`, `EP1`, `EP2`, `EP3`, `FC1`, `WS1`, `WS2`, `WS3`, and `Y1`.
  ///
  /// &gt; **Note:** Isolated SKUs (`I1`, `I2`, `I3`, `I1v2`, `I1mv2`, `I2v2`, `I2mv2`, `I3v2`, `I3mv2`) can only be used with App Service Environments
  ///
  /// &gt; **Note:** Elastic and Consumption SKUs (`Y1`, `FC1`, `EP1`, `EP2`, and `EP3`) are for use with Function Apps.
  ///
  /// &gt; **Note:** Hosting Azure Functions on Linux using the Consumption plan will be retired after September 30, 2028. It is recommended to use the Flex Consumption plan for Linux Function Apps. See [here](https://learn.microsoft.com/en-us/azure/azure-functions/consumption-plan) for more information.
  late final pulumi.Output<String> skuName;
  /// A mapping of tags which should be assigned to the AppService.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The number of Workers (instances) to be allocated.
  late final pulumi.Output<int> workerCount;
  /// Should the Service Plan balance across Availability Zones in the region.
  ///
  /// &gt; **Note:** If this setting is set to `true` and the `workerCount` value is specified, it should be set to a multiple of the number of availability zones in the region. Please see the Azure documentation for the number of Availability Zones in your region.
  ///
  /// &gt; **Note:** `zoneBalancingEnabled` can only be set to `true` on Consumption, Premium, Isolated, or Workflow SKUs. It can be disabled. To enable it, the `workerCount` must be greater than `1`, and the Service Plan must support more than one availability zone. In all other cases, changing this forces a new resource to be created. For more information, please see the [Availability Zone Support](https://learn.microsoft.com/en-us/azure/reliability/reliability-app-service?tabs=azurecli&pivots=free-shared-basic#availability-zone-support).
  late final pulumi.Output<bool?> zoneBalancingEnabled;

  /// Creates a new [ServicePlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServicePlan]. {@macro pulumi_appservice_service_plan_service_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServicePlan(
    String name, {
    ServicePlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/servicePlan:ServicePlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    appServiceEnvironmentId = registerOutput<String?>('appServiceEnvironmentId');
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    maximumElasticWorkerCount = registerOutput<int>('maximumElasticWorkerCount');
    this.name = registerOutput<String>('name');
    osType = registerOutput<String>('osType');
    perSiteScalingEnabled = registerOutput<bool?>('perSiteScalingEnabled');
    premiumPlanAutoScaleEnabled = registerOutput<bool?>('premiumPlanAutoScaleEnabled');
    reserved = registerOutput<bool>('reserved');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    workerCount = registerOutput<int>('workerCount');
    zoneBalancingEnabled = registerOutput<bool?>('zoneBalancingEnabled');
  }

  /// Gets an existing [ServicePlan] resource's state with the given [name] and [id].
  static ServicePlan get(
    String name,
    pulumi.Input<String> id, {
    ServicePlanState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ServicePlan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ServicePlan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/servicePlan:ServicePlan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appServiceEnvironmentId = registerOutput<String?>('appServiceEnvironmentId');
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    maximumElasticWorkerCount = registerOutput<int>('maximumElasticWorkerCount');
    this.name = registerOutput<String>('name');
    osType = registerOutput<String>('osType');
    perSiteScalingEnabled = registerOutput<bool?>('perSiteScalingEnabled');
    premiumPlanAutoScaleEnabled = registerOutput<bool?>('premiumPlanAutoScaleEnabled');
    reserved = registerOutput<bool>('reserved');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    workerCount = registerOutput<int>('workerCount');
    zoneBalancingEnabled = registerOutput<bool?>('zoneBalancingEnabled');
  }

  /// Creates a typed reference to an existing [ServicePlan] resource.
  ServicePlan.reference(String urn)
    : super(
        'azure:appservice/servicePlan:ServicePlan',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    appServiceEnvironmentId = registerOutput<String?>('appServiceEnvironmentId');
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    maximumElasticWorkerCount = registerOutput<int>('maximumElasticWorkerCount');
    this.name = registerOutput<String>('name');
    osType = registerOutput<String>('osType');
    perSiteScalingEnabled = registerOutput<bool?>('perSiteScalingEnabled');
    premiumPlanAutoScaleEnabled = registerOutput<bool?>('premiumPlanAutoScaleEnabled');
    reserved = registerOutput<bool>('reserved');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    workerCount = registerOutput<int>('workerCount');
    zoneBalancingEnabled = registerOutput<bool?>('zoneBalancingEnabled');
  }
}
