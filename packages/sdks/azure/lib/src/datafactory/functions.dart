import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_factory_args.dart';
import 'get_factory_result.dart';
import 'get_trigger_schedule_args.dart';
import 'get_trigger_schedule_result.dart';
import 'get_trigger_schedules_args.dart';
import 'get_trigger_schedules_result.dart';

/// Use this data source to access information about an existing Azure Data Factory (Version 2).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.datafactory.getFactory({
///     name: "existing-adf",
///     resourceGroupName: "existing-rg",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.datafactory.get_factory(name="existing-adf",
///     resource_group_name="existing-rg")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.DataFactory.GetFactory.Invoke(new()
///     {
///         Name = "existing-adf",
///         ResourceGroupName = "existing-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getFactoryResult => getFactoryResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := datafactory.LookupFactory(ctx, &datafactory.LookupFactoryArgs{
/// 			Name:              "existing-adf",
/// 			ResourceGroupName: "existing-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.datafactory.DatafactoryFunctions;
/// import com.pulumi.azure.datafactory.inputs.GetFactoryArgs;
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
///         final var example = DatafactoryFunctions.getFactory(GetFactoryArgs.builder()
///             .name("existing-adf")
///             .resourceGroupName("existing-rg")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:datafactory:getFactory
///       arguments:
///         name: existing-adf
///         resourceGroupName: existing-rg
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.DataFactory` - 2018-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_factory_get_factory_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFactoryResult> getFactory(
  GetFactoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:datafactory/getFactory:getFactory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFactoryResult.fromMap(result);
}

/// Use this data source to access information about a trigger schedule in Azure Data Factory.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.datafactory.getTriggerSchedule({
///     name: "example_trigger",
///     dataFactoryId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.DataFactory/factories/datafactory1",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.datafactory.get_trigger_schedule(name="example_trigger",
///     data_factory_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.DataFactory/factories/datafactory1")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.DataFactory.GetTriggerSchedule.Invoke(new()
///     {
///         Name = "example_trigger",
///         DataFactoryId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.DataFactory/factories/datafactory1",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getTriggerScheduleResult => getTriggerScheduleResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := datafactory.LookupTriggerSchedule(ctx, &datafactory.LookupTriggerScheduleArgs{
/// 			Name:          "example_trigger",
/// 			DataFactoryId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.DataFactory/factories/datafactory1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.datafactory.DatafactoryFunctions;
/// import com.pulumi.azure.datafactory.inputs.GetTriggerScheduleArgs;
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
///         final var example = DatafactoryFunctions.getTriggerSchedule(GetTriggerScheduleArgs.builder()
///             .name("example_trigger")
///             .dataFactoryId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.DataFactory/factories/datafactory1")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:datafactory:getTriggerSchedule
///       arguments:
///         name: example_trigger
///         dataFactoryId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.DataFactory/factories/datafactory1
/// outputs:
///   id: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_trigger_schedule_get_trigger_schedule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTriggerScheduleResult> getTriggerSchedule(
  GetTriggerScheduleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:datafactory/getTriggerSchedule:getTriggerSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTriggerScheduleResult.fromMap(result);
}

/// Use this data source to access information about all existing trigger schedules in Azure Data Factory.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.datafactory.getTriggerSchedules({
///     dataFactoryId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.DataFactory/factories/datafactory1",
/// });
/// export const items = example.then(example => example.items);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.datafactory.get_trigger_schedules(data_factory_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.DataFactory/factories/datafactory1")
/// pulumi.export("items", example.items)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.DataFactory.GetTriggerSchedules.Invoke(new()
///     {
///         DataFactoryId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.DataFactory/factories/datafactory1",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["items"] = example.Apply(getTriggerSchedulesResult => getTriggerSchedulesResult.Items),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := datafactory.GetTriggerSchedules(ctx, &datafactory.GetTriggerSchedulesArgs{
/// 			DataFactoryId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.DataFactory/factories/datafactory1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("items", example.Items)
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
/// import com.pulumi.azure.datafactory.DatafactoryFunctions;
/// import com.pulumi.azure.datafactory.inputs.GetTriggerSchedulesArgs;
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
///         final var example = DatafactoryFunctions.getTriggerSchedules(GetTriggerSchedulesArgs.builder()
///             .dataFactoryId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.DataFactory/factories/datafactory1")
///             .build());
///
///         ctx.export("items", example.items());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:datafactory:getTriggerSchedules
///       arguments:
///         dataFactoryId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.DataFactory/factories/datafactory1
/// outputs:
///   items: ${example.items}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_trigger_schedules_get_trigger_schedules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTriggerSchedulesResult> getTriggerSchedules(
  GetTriggerSchedulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:datafactory/getTriggerSchedules:getTriggerSchedules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTriggerSchedulesResult.fromMap(result);
}
