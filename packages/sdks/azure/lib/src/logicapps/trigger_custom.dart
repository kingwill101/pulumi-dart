import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_custom_args.dart';
import 'trigger_custom_state.dart';

/// Manages a Custom Trigger within a Logic App Workflow
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "workflow-resources",
///     location: "West Europe",
/// });
/// const exampleWorkflow = new azure.logicapps.Workflow("example", {
///     name: "workflow1",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleTriggerCustom = new azure.logicapps.TriggerCustom("example", {
///     name: "example-trigger",
///     logicAppId: exampleWorkflow.id,
///     body: `{
///   \\"recurrence\\": {
///     \\"frequency\\": \\"Day\\",
///     \\"interval\\": 1
///   },
///   \\"type\\": \\"Recurrence\\"
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="workflow-resources",
///     location="West Europe")
/// example_workflow = azure.logicapps.Workflow("example",
///     name="workflow1",
///     location=example.location,
///     resource_group_name=example.name)
/// example_trigger_custom = azure.logicapps.TriggerCustom("example",
///     name="example-trigger",
///     logic_app_id=example_workflow.id,
///     body="""{
///   \"recurrence\": {
///     \"frequency\": \"Day\",
///     \"interval\": 1
///   },
///   \"type\": \"Recurrence\"
/// }
/// """)
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
///         Name = "workflow-resources",
///         Location = "West Europe",
///     });
///
///     var exampleWorkflow = new Azure.LogicApps.Workflow("example", new()
///     {
///         Name = "workflow1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleTriggerCustom = new Azure.LogicApps.TriggerCustom("example", new()
///     {
///         Name = "example-trigger",
///         LogicAppId = exampleWorkflow.Id,
///         Body = @"{
///   \""recurrence\"": {
///     \""frequency\"": \""Day\"",
///     \""interval\"": 1
///   },
///   \""type\"": \""Recurrence\""
/// }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/logicapps"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("workflow-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkflow, err := logicapps.NewWorkflow(ctx, "example", &logicapps.WorkflowArgs{
/// 			Name:              pulumi.String("workflow1"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logicapps.NewTriggerCustom(ctx, "example", &logicapps.TriggerCustomArgs{
/// 			Name:       pulumi.String("example-trigger"),
/// 			LogicAppId: exampleWorkflow.ID(),
/// 			Body: pulumi.String(`{
///   \"recurrence\": {
///     \"frequency\": \"Day\",
///     \"interval\": 1
///   },
///   \"type\": \"Recurrence\"
/// }
/// `),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.logicapps.Workflow;
/// import com.pulumi.azure.logicapps.WorkflowArgs;
/// import com.pulumi.azure.logicapps.TriggerCustom;
/// import com.pulumi.azure.logicapps.TriggerCustomArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("workflow-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleWorkflow = new Workflow("exampleWorkflow", WorkflowArgs.builder()
///             .name("workflow1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleTriggerCustom = new TriggerCustom("exampleTriggerCustom", TriggerCustomArgs.builder()
///             .name("example-trigger")
///             .logicAppId(exampleWorkflow.id())
///             .body("""
/// {
///   \"recurrence\": {
///     \"frequency\": \"Day\",
///     \"interval\": 1
///   },
///   \"type\": \"Recurrence\"
/// }
///             """)
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
///       name: workflow-resources
///       location: West Europe
///   exampleWorkflow:
///     type: azure:logicapps:Workflow
///     name: example
///     properties:
///       name: workflow1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleTriggerCustom:
///     type: azure:logicapps:TriggerCustom
///     name: example
///     properties:
///       name: example-trigger
///       logicAppId: ${exampleWorkflow.id}
///       body: |
///         {
///           \"recurrence\": {
///             \"frequency\": \"Day\",
///             \"interval\": 1
///           },
///           \"type\": \"Recurrence\"
///         }
/// ```
///
///
/// ## Import
///
/// Logic App Custom Triggers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:logicapps/triggerCustom:TriggerCustom custom1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Logic/workflows/workflow1/triggers/custom1
/// ```
///
/// > **NOTE:** This ID is unique to this provider and doesn't directly match to any other resource. To compose this ID, you can take the ID Logic App Workflow and append `/triggers/{name of the trigger}`.
class TriggerCustom extends pulumi.CustomResource {
  /// Specifies the JSON Blob defining the Body of this Custom Trigger.
  late final pulumi.Output<String> body;
  /// The URL of the Trigger within the Logic App Workflow. For use with certain resources like monitor_action_group and security_center_automation.
  late final pulumi.Output<String> callbackUrl;
  /// Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  late final pulumi.Output<String> logicAppId;
  /// Specifies the name of the HTTP Trigger to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** This name must be unique across all Triggers within the Logic App Workflow.
  late final pulumi.Output<String> name;

  /// Creates a new [TriggerCustom].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TriggerCustom]. {@macro pulumi_logicapps_trigger_custom_trigger_custom_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TriggerCustom(
    String name, {
    TriggerCustomArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/triggerCustom:TriggerCustom',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.body = registerOutput<String>('body');
    this.callbackUrl = registerOutput<String>('callbackUrl');
    this.logicAppId = registerOutput<String>('logicAppId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [TriggerCustom] resource's state with the given [name] and [id].
  static TriggerCustom get(
    String name,
    pulumi.Input<String> id, {
    TriggerCustomState? state,
  }) {
    return TriggerCustom._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TriggerCustom._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/triggerCustom:TriggerCustom',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.body = registerOutput<String>('body');
    this.callbackUrl = registerOutput<String>('callbackUrl');
    this.logicAppId = registerOutput<String>('logicAppId');
    this.name = registerOutput<String>('name');
  }
}
