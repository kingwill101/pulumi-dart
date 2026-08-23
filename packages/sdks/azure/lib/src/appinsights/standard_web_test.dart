import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_web_test_args.dart';
import 'standard_web_test_request.dart';
import 'standard_web_test_state.dart';
import 'standard_web_test_validation_rules.dart';

/// Manages a Application Insights Standard WebTest.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "rg-example",
///     location: "West Europe",
/// });
/// const exampleInsights = new azure.appinsights.Insights("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationType: "web",
/// });
/// const exampleStandardWebTest = new azure.appinsights.StandardWebTest("example", {
///     name: "example-test",
///     resourceGroupName: example.name,
///     location: "West Europe",
///     applicationInsightsId: exampleInsights.id,
///     geoLocations: ["example"],
///     request: {
///         url: "http://www.example.com",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="rg-example",
///     location="West Europe")
/// example_insights = azure.appinsights.Insights("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     application_type="web")
/// example_standard_web_test = azure.appinsights.StandardWebTest("example",
///     name="example-test",
///     resource_group_name=example.name,
///     location="West Europe",
///     application_insights_id=example_insights.id,
///     geo_locations=["example"],
///     request={
///         "url": "http://www.example.com",
///     })
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
///         Name = "rg-example",
///         Location = "West Europe",
///     });
///
///     var exampleInsights = new Azure.AppInsights.Insights("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationType = "web",
///     });
///
///     var exampleStandardWebTest = new Azure.AppInsights.StandardWebTest("example", new()
///     {
///         Name = "example-test",
///         ResourceGroupName = example.Name,
///         Location = "West Europe",
///         ApplicationInsightsId = exampleInsights.Id,
///         GeoLocations = new[]
///         {
///             "example",
///         },
///         Request = new Azure.AppInsights.Inputs.StandardWebTestRequestArgs
///         {
///             Url = "http://www.example.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("rg-example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInsights, err := appinsights.NewInsights(ctx, "example", &appinsights.InsightsArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ApplicationType:   pulumi.String("web"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appinsights.NewStandardWebTest(ctx, "example", &appinsights.StandardWebTestArgs{
/// 			Name:                  pulumi.String("example-test"),
/// 			ResourceGroupName:     example.Name,
/// 			Location:              pulumi.String("West Europe"),
/// 			ApplicationInsightsId: exampleInsights.ID(),
/// 			GeoLocations: pulumi.StringArray{
/// 				pulumi.String("example"),
/// 			},
/// 			Request: &appinsights.StandardWebTestRequestArgs{
/// 				Url: pulumi.String("http://www.example.com"),
/// 			},
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
///   name     = "rg-example"
///   location = "West Europe"
/// }
/// resource "azure_appinsights_insights" "example" {
///   name                = "example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   application_type    = "web"
/// }
/// resource "azure_appinsights_standardwebtest" "example" {
///   name                    = "example-test"
///   resource_group_name     = azure_core_resourcegroup.example.name
///   location                = "West Europe"
///   application_insights_id = azure_appinsights_insights.example.id
///   geo_locations           = ["example"]
///   request = {
///     url = "http://www.example.com"
///   }
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
/// import com.pulumi.azure.appinsights.Insights;
/// import com.pulumi.azure.appinsights.InsightsArgs;
/// import com.pulumi.azure.appinsights.StandardWebTest;
/// import com.pulumi.azure.appinsights.StandardWebTestArgs;
/// import com.pulumi.azure.appinsights.inputs.StandardWebTestRequestArgs;
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
///             .name("rg-example")
///             .location("West Europe")
///             .build());
///
///         var exampleInsights = new Insights("exampleInsights", InsightsArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationType("web")
///             .build());
///
///         var exampleStandardWebTest = new StandardWebTest("exampleStandardWebTest", StandardWebTestArgs.builder()
///             .name("example-test")
///             .resourceGroupName(example.name())
///             .location("West Europe")
///             .applicationInsightsId(exampleInsights.id())
///             .geoLocations("example")
///             .request(StandardWebTestRequestArgs.builder()
///                 .url("http://www.example.com")
///                 .build())
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
///       name: rg-example
///       location: West Europe
///   exampleInsights:
///     type: azure:appinsights:Insights
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationType: web
///   exampleStandardWebTest:
///     type: azure:appinsights:StandardWebTest
///     name: example
///     properties:
///       name: example-test
///       resourceGroupName: ${example.name}
///       location: West Europe
///       applicationInsightsId: ${exampleInsights.id}
///       geoLocations:
///         - example
///       request:
///         url: http://www.example.com
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2022-06-15
///
/// ## Import
///
/// Application Insights Standard WebTests can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appinsights/standardWebTest:StandardWebTest example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Insights/webTests/appinsightswebtest
/// ```
class StandardWebTest extends pulumi.CustomResource {
  /// The ID of the Application Insights instance on which the WebTest operates. Changing this forces a new Application Insights Standard WebTest to be created.
  late final pulumi.Output<String> applicationInsightsId;
  /// Purpose/user defined descriptive test for this WebTest.
  late final pulumi.Output<String?> description;
  /// Should the WebTest be enabled?
  late final pulumi.Output<bool?> enabled;
  /// Interval in seconds between test runs for this WebTest. Valid options are `300`, `600` and `900`. Defaults to `300`.
  late final pulumi.Output<int?> frequency;
  /// Specifies a list of where to physically run the tests from to give global coverage for accessibility of your application.
  ///
  /// &gt; **Note:** [Valid options for geo locations are described here](https://docs.microsoft.com/azure/azure-monitor/app/monitor-web-app-availability#location-population-tags)
  late final pulumi.Output<List<String>> geoLocations;
  /// The Azure Region where the Application Insights Standard WebTest should exist. Changing this forces a new Application Insights Standard WebTest to be created. It needs to correlate with location of the parent resource (azurerm_application_insights)
  late final pulumi.Output<String> location;
  /// The name which should be used for this Application Insights Standard WebTest. Changing this forces a new Application Insights Standard WebTest to be created.
  late final pulumi.Output<String> name;
  /// A `request` block as defined below.
  late final pulumi.Output<StandardWebTestRequest> request;
  /// The name of the Resource Group where the Application Insights Standard WebTest should exist. Changing this forces a new Application Insights Standard WebTest to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Should the retry on WebTest failure be enabled?
  late final pulumi.Output<bool?> retryEnabled;
  /// Unique ID of this WebTest. This is typically the same value as the Name field.
  late final pulumi.Output<String> syntheticMonitorId;
  /// A mapping of tags which should be assigned to the Application Insights Standard WebTest.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Seconds until this WebTest will timeout and fail. Default is `30`.
  late final pulumi.Output<int?> timeout;
  /// A `validationRules` block as defined below.
  late final pulumi.Output<StandardWebTestValidationRules?> validationRules;

  /// Creates a new [StandardWebTest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StandardWebTest]. {@macro pulumi_appinsights_standard_web_test_standard_web_test_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StandardWebTest(
    String name, {
    StandardWebTestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appinsights/standardWebTest:StandardWebTest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationInsightsId = registerOutput<String>('applicationInsightsId');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    frequency = registerOutput<int?>('frequency');
    geoLocations = registerOutput<List<String>>('geoLocations');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    request = registerOutput<StandardWebTestRequest>('request', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardWebTestRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retryEnabled = registerOutput<bool?>('retryEnabled');
    syntheticMonitorId = registerOutput<String>('syntheticMonitorId');
    tags = registerOutput<Map<String, String>?>('tags');
    timeout = registerOutput<int?>('timeout');
    validationRules = registerOutput<StandardWebTestValidationRules?>('validationRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardWebTestValidationRules.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [StandardWebTest] resource's state with the given [name] and [id].
  static StandardWebTest get(
    String name,
    pulumi.Input<String> id, {
    StandardWebTestState? state,
  }) {
    return StandardWebTest._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StandardWebTest._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appinsights/standardWebTest:StandardWebTest',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationInsightsId = registerOutput<String>('applicationInsightsId');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    frequency = registerOutput<int?>('frequency');
    geoLocations = registerOutput<List<String>>('geoLocations');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    request = registerOutput<StandardWebTestRequest>('request', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardWebTestRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retryEnabled = registerOutput<bool?>('retryEnabled');
    syntheticMonitorId = registerOutput<String>('syntheticMonitorId');
    tags = registerOutput<Map<String, String>?>('tags');
    timeout = registerOutput<int?>('timeout');
    validationRules = registerOutput<StandardWebTestValidationRules?>('validationRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardWebTestValidationRules.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
