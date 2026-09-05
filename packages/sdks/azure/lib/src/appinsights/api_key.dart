import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_key_args.dart';
import 'api_key_state.dart';

/// Manages an Application Insights API key.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// export = async () => {
///     const example = new azure.core.ResourceGroup("example", {
///         name: "tf-test",
///         location: "West Europe",
///     });
///     const exampleInsights = new azure.appinsights.Insights("example", {
///         name: "tf-test-appinsights",
///         location: example.location,
///         resourceGroupName: example.name,
///         applicationType: "web",
///     });
///     const readTelemetry = new azure.appinsights.ApiKey("read_telemetry", {
///         name: "tf-test-appinsights-read-telemetry-api-key",
///         applicationInsightsId: exampleInsights.id,
///         readPermissions: [
///             "aggregate",
///             "api",
///             "draft",
///             "extendqueries",
///             "search",
///         ],
///     });
///     const writeAnnotations = new azure.appinsights.ApiKey("write_annotations", {
///         name: "tf-test-appinsights-write-annotations-api-key",
///         applicationInsightsId: exampleInsights.id,
///         writePermissions: ["annotations"],
///     });
///     const authenticateSdkControlChannel = new azure.appinsights.ApiKey("authenticate_sdk_control_channel", {
///         name: "tf-test-appinsights-authenticate-sdk-control-channel-api-key",
///         applicationInsightsId: exampleInsights.id,
///         readPermissions: ["agentconfig"],
///     });
///     const fullPermissions = new azure.appinsights.ApiKey("full_permissions", {
///         name: "tf-test-appinsights-full-permissions-api-key",
///         applicationInsightsId: exampleInsights.id,
///         readPermissions: [
///             "agentconfig",
///             "aggregate",
///             "api",
///             "draft",
///             "extendqueries",
///             "search",
///         ],
///         writePermissions: ["annotations"],
///     });
///     return {
///         readTelemetryApiKey: readTelemetry.apiKey,
///         writeAnnotationsApiKey: writeAnnotations.apiKey,
///         authenticateSdkControlChannel: authenticateSdkControlChannel.apiKey,
///         fullPermissionsApiKey: fullPermissions.apiKey,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="tf-test",
///     location="West Europe")
/// example_insights = azure.appinsights.Insights("example",
///     name="tf-test-appinsights",
///     location=example.location,
///     resource_group_name=example.name,
///     application_type="web")
/// read_telemetry = azure.appinsights.ApiKey("read_telemetry",
///     name="tf-test-appinsights-read-telemetry-api-key",
///     application_insights_id=example_insights.id,
///     read_permissions=[
///         "aggregate",
///         "api",
///         "draft",
///         "extendqueries",
///         "search",
///     ])
/// write_annotations = azure.appinsights.ApiKey("write_annotations",
///     name="tf-test-appinsights-write-annotations-api-key",
///     application_insights_id=example_insights.id,
///     write_permissions=["annotations"])
/// authenticate_sdk_control_channel = azure.appinsights.ApiKey("authenticate_sdk_control_channel",
///     name="tf-test-appinsights-authenticate-sdk-control-channel-api-key",
///     application_insights_id=example_insights.id,
///     read_permissions=["agentconfig"])
/// full_permissions = azure.appinsights.ApiKey("full_permissions",
///     name="tf-test-appinsights-full-permissions-api-key",
///     application_insights_id=example_insights.id,
///     read_permissions=[
///         "agentconfig",
///         "aggregate",
///         "api",
///         "draft",
///         "extendqueries",
///         "search",
///     ],
///     write_permissions=["annotations"])
/// pulumi.export("readTelemetryApiKey", read_telemetry.api_key)
/// pulumi.export("writeAnnotationsApiKey", write_annotations.api_key)
/// pulumi.export("authenticateSdkControlChannel", authenticate_sdk_control_channel.api_key)
/// pulumi.export("fullPermissionsApiKey", full_permissions.api_key)
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
///         Name = "tf-test",
///         Location = "West Europe",
///     });
///
///     var exampleInsights = new Azure.AppInsights.Insights("example", new()
///     {
///         Name = "tf-test-appinsights",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationType = "web",
///     });
///
///     var readTelemetry = new Azure.AppInsights.ApiKey("read_telemetry", new()
///     {
///         Name = "tf-test-appinsights-read-telemetry-api-key",
///         ApplicationInsightsId = exampleInsights.Id,
///         ReadPermissions = new[]
///         {
///             "aggregate",
///             "api",
///             "draft",
///             "extendqueries",
///             "search",
///         },
///     });
///
///     var writeAnnotations = new Azure.AppInsights.ApiKey("write_annotations", new()
///     {
///         Name = "tf-test-appinsights-write-annotations-api-key",
///         ApplicationInsightsId = exampleInsights.Id,
///         WritePermissions = new[]
///         {
///             "annotations",
///         },
///     });
///
///     var authenticateSdkControlChannel = new Azure.AppInsights.ApiKey("authenticate_sdk_control_channel", new()
///     {
///         Name = "tf-test-appinsights-authenticate-sdk-control-channel-api-key",
///         ApplicationInsightsId = exampleInsights.Id,
///         ReadPermissions = new[]
///         {
///             "agentconfig",
///         },
///     });
///
///     var fullPermissions = new Azure.AppInsights.ApiKey("full_permissions", new()
///     {
///         Name = "tf-test-appinsights-full-permissions-api-key",
///         ApplicationInsightsId = exampleInsights.Id,
///         ReadPermissions = new[]
///         {
///             "agentconfig",
///             "aggregate",
///             "api",
///             "draft",
///             "extendqueries",
///             "search",
///         },
///         WritePermissions = new[]
///         {
///             "annotations",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["readTelemetryApiKey"] = readTelemetry.ApiKey,
///         ["writeAnnotationsApiKey"] = writeAnnotations.ApiKey,
///         ["authenticateSdkControlChannel"] = authenticateSdkControlChannel.ApiKey,
///         ["fullPermissionsApiKey"] = fullPermissions.ApiKey,
///     };
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
/// 			Name:     pulumi.String("tf-test"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInsights, err := appinsights.NewInsights(ctx, "example", &appinsights.InsightsArgs{
/// 			Name:              pulumi.String("tf-test-appinsights"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ApplicationType:   pulumi.String("web"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		readTelemetry, err := appinsights.NewApiKey(ctx, "read_telemetry", &appinsights.ApiKeyArgs{
/// 			Name:                  pulumi.String("tf-test-appinsights-read-telemetry-api-key"),
/// 			ApplicationInsightsId: exampleInsights.ID().ToIDOutput().ToStringOutput(),
/// 			ReadPermissions: pulumi.StringArray{
/// 				pulumi.String("aggregate"),
/// 				pulumi.String("api"),
/// 				pulumi.String("draft"),
/// 				pulumi.String("extendqueries"),
/// 				pulumi.String("search"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		writeAnnotations, err := appinsights.NewApiKey(ctx, "write_annotations", &appinsights.ApiKeyArgs{
/// 			Name:                  pulumi.String("tf-test-appinsights-write-annotations-api-key"),
/// 			ApplicationInsightsId: exampleInsights.ID().ToIDOutput().ToStringOutput(),
/// 			WritePermissions: pulumi.StringArray{
/// 				pulumi.String("annotations"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		authenticateSdkControlChannel, err := appinsights.NewApiKey(ctx, "authenticate_sdk_control_channel", &appinsights.ApiKeyArgs{
/// 			Name:                  pulumi.String("tf-test-appinsights-authenticate-sdk-control-channel-api-key"),
/// 			ApplicationInsightsId: exampleInsights.ID().ToIDOutput().ToStringOutput(),
/// 			ReadPermissions: pulumi.StringArray{
/// 				pulumi.String("agentconfig"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fullPermissions, err := appinsights.NewApiKey(ctx, "full_permissions", &appinsights.ApiKeyArgs{
/// 			Name:                  pulumi.String("tf-test-appinsights-full-permissions-api-key"),
/// 			ApplicationInsightsId: exampleInsights.ID().ToIDOutput().ToStringOutput(),
/// 			ReadPermissions: pulumi.StringArray{
/// 				pulumi.String("agentconfig"),
/// 				pulumi.String("aggregate"),
/// 				pulumi.String("api"),
/// 				pulumi.String("draft"),
/// 				pulumi.String("extendqueries"),
/// 				pulumi.String("search"),
/// 			},
/// 			WritePermissions: pulumi.StringArray{
/// 				pulumi.String("annotations"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("readTelemetryApiKey", readTelemetry.ApiKey)
/// 		ctx.Export("writeAnnotationsApiKey", writeAnnotations.ApiKey)
/// 		ctx.Export("authenticateSdkControlChannel", authenticateSdkControlChannel.ApiKey)
/// 		ctx.Export("fullPermissionsApiKey", fullPermissions.ApiKey)
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
///   name     = "tf-test"
///   location = "West Europe"
/// }
/// resource "azure_appinsights_insights" "example" {
///   name                = "tf-test-appinsights"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   application_type    = "web"
/// }
/// resource "azure_appinsights_apikey" "read_telemetry" {
///   name                    = "tf-test-appinsights-read-telemetry-api-key"
///   application_insights_id = azure_appinsights_insights.example.id
///   read_permissions        = ["aggregate", "api", "draft", "extendqueries", "search"]
/// }
/// resource "azure_appinsights_apikey" "write_annotations" {
///   name                    = "tf-test-appinsights-write-annotations-api-key"
///   application_insights_id = azure_appinsights_insights.example.id
///   write_permissions       = ["annotations"]
/// }
/// resource "azure_appinsights_apikey" "authenticate_sdk_control_channel" {
///   name                    = "tf-test-appinsights-authenticate-sdk-control-channel-api-key"
///   application_insights_id = azure_appinsights_insights.example.id
///   read_permissions        = ["agentconfig"]
/// }
/// resource "azure_appinsights_apikey" "full_permissions" {
///   name                    = "tf-test-appinsights-full-permissions-api-key"
///   application_insights_id = azure_appinsights_insights.example.id
///   read_permissions        = ["agentconfig", "aggregate", "api", "draft", "extendqueries", "search"]
///   write_permissions       = ["annotations"]
/// }
/// output "readTelemetryApiKey" {
///   value = azure_appinsights_apikey.read_telemetry.api_key
/// }
/// output "writeAnnotationsApiKey" {
///   value = azure_appinsights_apikey.write_annotations.api_key
/// }
/// output "authenticateSdkControlChannel" {
///   value = azure_appinsights_apikey.authenticate_sdk_control_channel.api_key
/// }
/// output "fullPermissionsApiKey" {
///   value = azure_appinsights_apikey.full_permissions.api_key
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
/// import com.pulumi.azure.appinsights.ApiKey;
/// import com.pulumi.azure.appinsights.ApiKeyArgs;
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
///             .name("tf-test")
///             .location("West Europe")
///             .build());
///
///         var exampleInsights = new Insights("exampleInsights", InsightsArgs.builder()
///             .name("tf-test-appinsights")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationType("web")
///             .build());
///
///         var readTelemetry = new ApiKey("readTelemetry", ApiKeyArgs.builder()
///             .name("tf-test-appinsights-read-telemetry-api-key")
///             .applicationInsightsId(exampleInsights.id())
///             .readPermissions(
///                 "aggregate",
///                 "api",
///                 "draft",
///                 "extendqueries",
///                 "search")
///             .build());
///
///         var writeAnnotations = new ApiKey("writeAnnotations", ApiKeyArgs.builder()
///             .name("tf-test-appinsights-write-annotations-api-key")
///             .applicationInsightsId(exampleInsights.id())
///             .writePermissions("annotations")
///             .build());
///
///         var authenticateSdkControlChannel = new ApiKey("authenticateSdkControlChannel", ApiKeyArgs.builder()
///             .name("tf-test-appinsights-authenticate-sdk-control-channel-api-key")
///             .applicationInsightsId(exampleInsights.id())
///             .readPermissions("agentconfig")
///             .build());
///
///         var fullPermissions = new ApiKey("fullPermissions", ApiKeyArgs.builder()
///             .name("tf-test-appinsights-full-permissions-api-key")
///             .applicationInsightsId(exampleInsights.id())
///             .readPermissions(
///                 "agentconfig",
///                 "aggregate",
///                 "api",
///                 "draft",
///                 "extendqueries",
///                 "search")
///             .writePermissions("annotations")
///             .build());
///
///         ctx.export("readTelemetryApiKey", readTelemetry.apiKey());
///         ctx.export("writeAnnotationsApiKey", writeAnnotations.apiKey());
///         ctx.export("authenticateSdkControlChannel", authenticateSdkControlChannel.apiKey());
///         ctx.export("fullPermissionsApiKey", fullPermissions.apiKey());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: tf-test
///       location: West Europe
///   exampleInsights:
///     type: azure:appinsights:Insights
///     name: example
///     properties:
///       name: tf-test-appinsights
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationType: web
///   readTelemetry:
///     type: azure:appinsights:ApiKey
///     name: read_telemetry
///     properties:
///       name: tf-test-appinsights-read-telemetry-api-key
///       applicationInsightsId: ${exampleInsights.id}
///       readPermissions:
///         - aggregate
///         - api
///         - draft
///         - extendqueries
///         - search
///   writeAnnotations:
///     type: azure:appinsights:ApiKey
///     name: write_annotations
///     properties:
///       name: tf-test-appinsights-write-annotations-api-key
///       applicationInsightsId: ${exampleInsights.id}
///       writePermissions:
///         - annotations
///   authenticateSdkControlChannel:
///     type: azure:appinsights:ApiKey
///     name: authenticate_sdk_control_channel
///     properties:
///       name: tf-test-appinsights-authenticate-sdk-control-channel-api-key
///       applicationInsightsId: ${exampleInsights.id}
///       readPermissions:
///         - agentconfig
///   fullPermissions:
///     type: azure:appinsights:ApiKey
///     name: full_permissions
///     properties:
///       name: tf-test-appinsights-full-permissions-api-key
///       applicationInsightsId: ${exampleInsights.id}
///       readPermissions:
///         - agentconfig
///         - aggregate
///         - api
///         - draft
///         - extendqueries
///         - search
///       writePermissions:
///         - annotations
/// outputs:
///   readTelemetryApiKey: ${readTelemetry.apiKey}
///   writeAnnotationsApiKey: ${writeAnnotations.apiKey}
///   authenticateSdkControlChannel: ${authenticateSdkControlChannel.apiKey}
///   fullPermissionsApiKey: ${fullPermissions.apiKey}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2015-05-01
///
/// ## Import
///
/// Application Insights API keys can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appinsights/apiKey:ApiKey my_key /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Insights/components/instance1/apiKeys/00000000-0000-0000-0000-000000000000
/// ```
///
/// &gt; **Note:** The secret `apiKey` cannot be retrieved during an import. You will need to edit the state by hand to set the secret value if you happen to have it backed up somewhere.
class ApiKey extends pulumi.CustomResource {
  /// The API Key secret (Sensitive).
  late final pulumi.Output<String> apiKey;
  /// The ID of the Application Insights component on which the API key operates. Changing this forces a new resource to be created.
  late final pulumi.Output<String> applicationInsightsId;
  /// Specifies the name of the Application Insights API key. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the list of read permissions granted to the API key. Valid values are `agentconfig`, `aggregate`, `api`, `draft`, `extendqueries`, `search`. Please note these values are case sensitive. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>?> readPermissions;
  /// Specifies the list of write permissions granted to the API key. Valid values are `annotations`. Please note these values are case sensitive. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** At least one read or write permission must be defined.
  late final pulumi.Output<List<String>?> writePermissions;

  /// Creates a new [ApiKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiKey]. {@macro pulumi_appinsights_api_key_api_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiKey(
    String name, {
    ApiKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appinsights/apiKey:ApiKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['apiKey'],
        ) {
    apiKey = registerOutput<String>('apiKey', isSecret: true);
    applicationInsightsId = registerOutput<String>('applicationInsightsId');
    this.name = registerOutput<String>('name');
    readPermissions = registerOutput<List<String>?>('readPermissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    writePermissions = registerOutput<List<String>?>('writePermissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [ApiKey] resource's state with the given [name] and [id].
  static ApiKey get(
    String name,
    pulumi.Input<String> id, {
    ApiKeyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ApiKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ApiKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appinsights/apiKey:ApiKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiKey = registerOutput<String>('apiKey', isSecret: true);
    applicationInsightsId = registerOutput<String>('applicationInsightsId');
    this.name = registerOutput<String>('name');
    readPermissions = registerOutput<List<String>?>('readPermissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    writePermissions = registerOutput<List<String>?>('writePermissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [ApiKey] resource.
  ApiKey.reference(String urn)
    : super(
        'azure:appinsights/apiKey:ApiKey',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['apiKey'],
        isResourceReference: true,
      ) {
    apiKey = registerOutput<String>('apiKey', isSecret: true);
    applicationInsightsId = registerOutput<String>('applicationInsightsId');
    this.name = registerOutput<String>('name');
    readPermissions = registerOutput<List<String>?>('readPermissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    writePermissions = registerOutput<List<String>?>('writePermissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
