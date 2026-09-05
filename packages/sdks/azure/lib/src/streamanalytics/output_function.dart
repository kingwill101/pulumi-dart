import 'package:pulumi/pulumi.dart' as pulumi;
import 'output_function_args.dart';
import 'output_function_state.dart';

/// Manages a Stream Analytics Output Function.
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
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestorageaccount",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const examplePlan = new azure.appservice.Plan("example", {
///     name: "exampleappserviceplan",
///     location: example.location,
///     resourceGroupName: example.name,
///     kind: "FunctionApp",
///     reserved: true,
///     sku: {
///         tier: "Dynamic",
///         size: "Y1",
///     },
/// });
/// const exampleFunctionApp = new azure.appservice.FunctionApp("example", {
///     name: "examplefunctionapp",
///     location: example.location,
///     resourceGroupName: example.name,
///     appServicePlanId: examplePlan.id,
///     storageAccountName: exampleAccount.name,
///     storageAccountAccessKey: exampleAccount.primaryAccessKey,
///     osType: "linux",
///     version: "~3",
/// });
/// const exampleJob = new azure.streamanalytics.Job("example", {
///     name: "examplestreamanalyticsjob",
///     resourceGroupName: example.name,
///     location: example.location,
///     streamingUnits: 3,
///     transformationQuery: `    SELECT *
///     INTO [YourOutputAlias]
///     FROM [YourInputAlias]
/// `,
/// });
/// const exampleOutputFunction = new azure.streamanalytics.OutputFunction("example", {
///     name: "exampleoutput",
///     resourceGroupName: exampleJob.resourceGroupName,
///     streamAnalyticsJobName: exampleJob.name,
///     functionApp: exampleFunctionApp.name,
///     functionName: "examplefunctionname",
///     apiKey: "exampleapikey",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="examplestorageaccount",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_plan = azure.appservice.Plan("example",
///     name="exampleappserviceplan",
///     location=example.location,
///     resource_group_name=example.name,
///     kind="FunctionApp",
///     reserved=True,
///     sku={
///         "tier": "Dynamic",
///         "size": "Y1",
///     })
/// example_function_app = azure.appservice.FunctionApp("example",
///     name="examplefunctionapp",
///     location=example.location,
///     resource_group_name=example.name,
///     app_service_plan_id=example_plan.id,
///     storage_account_name=example_account.name,
///     storage_account_access_key=example_account.primary_access_key,
///     os_type="linux",
///     version="~3")
/// example_job = azure.streamanalytics.Job("example",
///     name="examplestreamanalyticsjob",
///     resource_group_name=example.name,
///     location=example.location,
///     streaming_units=3,
///     transformation_query="""    SELECT *
///     INTO [YourOutputAlias]
///     FROM [YourInputAlias]
/// """)
/// example_output_function = azure.streamanalytics.OutputFunction("example",
///     name="exampleoutput",
///     resource_group_name=example_job.resource_group_name,
///     stream_analytics_job_name=example_job.name,
///     function_app=example_function_app.name,
///     function_name="examplefunctionname",
///     api_key="exampleapikey")
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestorageaccount",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var examplePlan = new Azure.AppService.Plan("example", new()
///     {
///         Name = "exampleappserviceplan",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Kind = "FunctionApp",
///         Reserved = true,
///         Sku = new Azure.AppService.Inputs.PlanSkuArgs
///         {
///             Tier = "Dynamic",
///             Size = "Y1",
///         },
///     });
///
///     var exampleFunctionApp = new Azure.AppService.FunctionApp("example", new()
///     {
///         Name = "examplefunctionapp",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AppServicePlanId = examplePlan.Id,
///         StorageAccountName = exampleAccount.Name,
///         StorageAccountAccessKey = exampleAccount.PrimaryAccessKey,
///         OsType = "linux",
///         Version = "~3",
///     });
///
///     var exampleJob = new Azure.StreamAnalytics.Job("example", new()
///     {
///         Name = "examplestreamanalyticsjob",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         StreamingUnits = 3,
///         TransformationQuery = @"    SELECT *
///     INTO [YourOutputAlias]
///     FROM [YourInputAlias]
/// ",
///     });
///
///     var exampleOutputFunction = new Azure.StreamAnalytics.OutputFunction("example", new()
///     {
///         Name = "exampleoutput",
///         ResourceGroupName = exampleJob.ResourceGroupName,
///         StreamAnalyticsJobName = exampleJob.Name,
///         FunctionApp = exampleFunctionApp.Name,
///         FunctionName = "examplefunctionname",
///         ApiKey = "exampleapikey",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/streamanalytics"
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
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorageaccount"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePlan, err := appservice.NewPlan(ctx, "example", &appservice.PlanArgs{
/// 			Name:              pulumi.String("exampleappserviceplan"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Kind:              pulumi.Any("FunctionApp"),
/// 			Reserved:          pulumi.Bool(true),
/// 			Sku: &appservice.PlanSkuArgs{
/// 				Tier: pulumi.String("Dynamic"),
/// 				Size: pulumi.String("Y1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFunctionApp, err := appservice.NewFunctionApp(ctx, "example", &appservice.FunctionAppArgs{
/// 			Name:                    pulumi.String("examplefunctionapp"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			AppServicePlanId:        examplePlan.ID().ToIDOutput().ToStringOutput(),
/// 			StorageAccountName:      exampleAccount.Name,
/// 			StorageAccountAccessKey: exampleAccount.PrimaryAccessKey,
/// 			OsType:                  pulumi.String("linux"),
/// 			Version:                 pulumi.String("~3"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleJob, err := streamanalytics.NewJob(ctx, "example", &streamanalytics.JobArgs{
/// 			Name:                pulumi.String("examplestreamanalyticsjob"),
/// 			ResourceGroupName:   example.Name,
/// 			Location:            example.Location,
/// 			StreamingUnits:      pulumi.Int(3),
/// 			TransformationQuery: pulumi.String("    SELECT *\n    INTO [YourOutputAlias]\n    FROM [YourInputAlias]\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = streamanalytics.NewOutputFunction(ctx, "example", &streamanalytics.OutputFunctionArgs{
/// 			Name:                   pulumi.String("exampleoutput"),
/// 			ResourceGroupName:      exampleJob.ResourceGroupName,
/// 			StreamAnalyticsJobName: exampleJob.Name,
/// 			FunctionApp:            exampleFunctionApp.Name,
/// 			FunctionName:           pulumi.String("examplefunctionname"),
/// 			ApiKey:                 pulumi.String("exampleapikey"),
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
/// resource "azure_storage_account" "example" {
///   name                     = "examplestorageaccount"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_appservice_plan" "example" {
///   name                = "exampleappserviceplan"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   kind                = "FunctionApp"
///   reserved            = true
///   sku = {
///     tier = "Dynamic"
///     size = "Y1"
///   }
/// }
/// resource "azure_appservice_functionapp" "example" {
///   name                       = "examplefunctionapp"
///   location                   = azure_core_resourcegroup.example.location
///   resource_group_name        = azure_core_resourcegroup.example.name
///   app_service_plan_id        = azure_appservice_plan.example.id
///   storage_account_name       = azure_storage_account.example.name
///   storage_account_access_key = azure_storage_account.example.primary_access_key
///   os_type                    = "linux"
///   version                    = "~3"
/// }
/// resource "azure_streamanalytics_job" "example" {
///   name                 = "examplestreamanalyticsjob"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   location             = azure_core_resourcegroup.example.location
///   streaming_units      = 3
///   transformation_query = "    SELECT *\n    INTO [YourOutputAlias]\n    FROM [YourInputAlias]\n"
/// }
/// resource "azure_streamanalytics_outputfunction" "example" {
///   name                      = "exampleoutput"
///   resource_group_name       = azure_streamanalytics_job.example.resource_group_name
///   stream_analytics_job_name = azure_streamanalytics_job.example.name
///   function_app              = azure_appservice_functionapp.example.name
///   function_name             = "examplefunctionname"
///   api_key                   = "exampleapikey"
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.appservice.Plan;
/// import com.pulumi.azure.appservice.PlanArgs;
/// import com.pulumi.azure.appservice.inputs.PlanSkuArgs;
/// import com.pulumi.azure.appservice.FunctionApp;
/// import com.pulumi.azure.appservice.FunctionAppArgs;
/// import com.pulumi.azure.streamanalytics.Job;
/// import com.pulumi.azure.streamanalytics.JobArgs;
/// import com.pulumi.azure.streamanalytics.OutputFunction;
/// import com.pulumi.azure.streamanalytics.OutputFunctionArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestorageaccount")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var examplePlan = new Plan("examplePlan", PlanArgs.builder()
///             .name("exampleappserviceplan")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .kind("FunctionApp")
///             .reserved(true)
///             .sku(PlanSkuArgs.builder()
///                 .tier("Dynamic")
///                 .size("Y1")
///                 .build())
///             .build());
///
///         var exampleFunctionApp = new FunctionApp("exampleFunctionApp", FunctionAppArgs.builder()
///             .name("examplefunctionapp")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .appServicePlanId(examplePlan.id())
///             .storageAccountName(exampleAccount.name())
///             .storageAccountAccessKey(exampleAccount.primaryAccessKey())
///             .osType("linux")
///             .version("~3")
///             .build());
///
///         var exampleJob = new Job("exampleJob", JobArgs.builder()
///             .name("examplestreamanalyticsjob")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .streamingUnits(3)
///             .transformationQuery("""
///     SELECT *
///     INTO [YourOutputAlias]
///     FROM [YourInputAlias]
///             """)
///             .build());
///
///         var exampleOutputFunction = new OutputFunction("exampleOutputFunction", OutputFunctionArgs.builder()
///             .name("exampleoutput")
///             .resourceGroupName(exampleJob.resourceGroupName())
///             .streamAnalyticsJobName(exampleJob.name())
///             .functionApp(exampleFunctionApp.name())
///             .functionName("examplefunctionname")
///             .apiKey("exampleapikey")
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
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestorageaccount
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///     properties:
///       name: exampleappserviceplan
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       kind: FunctionApp
///       reserved: true
///       sku:
///         tier: Dynamic
///         size: Y1
///   exampleFunctionApp:
///     type: azure:appservice:FunctionApp
///     name: example
///     properties:
///       name: examplefunctionapp
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       appServicePlanId: ${examplePlan.id}
///       storageAccountName: ${exampleAccount.name}
///       storageAccountAccessKey: ${exampleAccount.primaryAccessKey}
///       osType: linux
///       version: ~3
///   exampleJob:
///     type: azure:streamanalytics:Job
///     name: example
///     properties:
///       name: examplestreamanalyticsjob
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       streamingUnits: 3
///       transformationQuery: |2
///             SELECT *
///             INTO [YourOutputAlias]
///             FROM [YourInputAlias]
///   exampleOutputFunction:
///     type: azure:streamanalytics:OutputFunction
///     name: example
///     properties:
///       name: exampleoutput
///       resourceGroupName: ${exampleJob.resourceGroupName}
///       streamAnalyticsJobName: ${exampleJob.name}
///       functionApp: ${exampleFunctionApp.name}
///       functionName: examplefunctionname
///       apiKey: exampleapikey
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StreamAnalytics` - 2021-10-01-preview
///
/// ## Import
///
/// Stream Analytics Output Functions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:streamanalytics/outputFunction:OutputFunction example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StreamAnalytics/streamingJobs/job1/outputs/output1
/// ```
class OutputFunction extends pulumi.CustomResource {
  /// The API key for the Function.
  late final pulumi.Output<String> apiKey;
  /// The maximum number of events in each batch that's sent to the function. Defaults to `100`.
  late final pulumi.Output<int?> batchMaxCount;
  /// The maximum batch size in bytes that's sent to the function. Defaults to `262144` (256 kB).
  late final pulumi.Output<int?> batchMaxInBytes;
  /// The name of the Function App.
  late final pulumi.Output<String> functionApp;
  /// The name of the function in the Function App.
  late final pulumi.Output<String> functionName;
  /// The name which should be used for this Stream Analytics Output. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Stream Analytics Output should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  late final pulumi.Output<String> streamAnalyticsJobName;

  /// Creates a new [OutputFunction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OutputFunction]. {@macro pulumi_streamanalytics_output_function_output_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OutputFunction(
    String name, {
    OutputFunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/outputFunction:OutputFunction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['apiKey'],
        ) {
    apiKey = registerOutput<String>('apiKey', isSecret: true);
    batchMaxCount = registerOutput<int?>('batchMaxCount');
    batchMaxInBytes = registerOutput<int?>('batchMaxInBytes');
    functionApp = registerOutput<String>('functionApp');
    functionName = registerOutput<String>('functionName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
  }

  /// Gets an existing [OutputFunction] resource's state with the given [name] and [id].
  static OutputFunction get(
    String name,
    pulumi.Input<String> id, {
    OutputFunctionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OutputFunction._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OutputFunction._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/outputFunction:OutputFunction',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiKey = registerOutput<String>('apiKey', isSecret: true);
    batchMaxCount = registerOutput<int?>('batchMaxCount');
    batchMaxInBytes = registerOutput<int?>('batchMaxInBytes');
    functionApp = registerOutput<String>('functionApp');
    functionName = registerOutput<String>('functionName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
  }

  /// Creates a typed reference to an existing [OutputFunction] resource.
  OutputFunction.reference(String urn)
    : super(
        'azure:streamanalytics/outputFunction:OutputFunction',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['apiKey'],
        isResourceReference: true,
      ) {
    apiKey = registerOutput<String>('apiKey', isSecret: true);
    batchMaxCount = registerOutput<int?>('batchMaxCount');
    batchMaxInBytes = registerOutput<int?>('batchMaxInBytes');
    functionApp = registerOutput<String>('functionApp');
    functionName = registerOutput<String>('functionName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
  }
}
