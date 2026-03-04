import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_custom_args.dart';
import 'action_custom_state.dart';

/// Manages a Custom Action within a Logic App Workflow
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
/// const exampleActionCustom = new azure.logicapps.ActionCustom("example", {
///     name: "example-action",
///     logicAppId: exampleWorkflow.id,
///     body: `{
///     \\"description\\": \\"A variable to configure the auto expiration age in days. Configured in negative number. Default is -30 (30 days old).\\",
///     \\"inputs\\": {
///         \\"variables\\": [
///             {
///                 \\"name\\": \\"ExpirationAgeInDays\\",
///                 \\"type\\": \\"Integer\\",
///                 \\"value\\": -30
///             }
///         ]
///     },
///     \\"runAfter\\": {},
///     \\"type\\": \\"InitializeVariable\\"
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
/// example_action_custom = azure.logicapps.ActionCustom("example",
///     name="example-action",
///     logic_app_id=example_workflow.id,
///     body="""{
///     \"description\": \"A variable to configure the auto expiration age in days. Configured in negative number. Default is -30 (30 days old).\",
///     \"inputs\": {
///         \"variables\": [
///             {
///                 \"name\": \"ExpirationAgeInDays\",
///                 \"type\": \"Integer\",
///                 \"value\": -30
///             }
///         ]
///     },
///     \"runAfter\": {},
///     \"type\": \"InitializeVariable\"
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
///     var exampleActionCustom = new Azure.LogicApps.ActionCustom("example", new()
///     {
///         Name = "example-action",
///         LogicAppId = exampleWorkflow.Id,
///         Body = @"{
///     \""description\"": \""A variable to configure the auto expiration age in days. Configured in negative number. Default is -30 (30 days old).\"",
///     \""inputs\"": {
///         \""variables\"": [
///             {
///                 \""name\"": \""ExpirationAgeInDays\"",
///                 \""type\"": \""Integer\"",
///                 \""value\"": -30
///             }
///         ]
///     },
///     \""runAfter\"": {},
///     \""type\"": \""InitializeVariable\""
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
/// 		_, err = logicapps.NewActionCustom(ctx, "example", &logicapps.ActionCustomArgs{
/// 			Name:       pulumi.String("example-action"),
/// 			LogicAppId: exampleWorkflow.ID(),
/// 			Body: pulumi.String(`{
///     \"description\": \"A variable to configure the auto expiration age in days. Configured in negative number. Default is -30 (30 days old).\",
///     \"inputs\": {
///         \"variables\": [
///             {
///                 \"name\": \"ExpirationAgeInDays\",
///                 \"type\": \"Integer\",
///                 \"value\": -30
///             }
///         ]
///     },
///     \"runAfter\": {},
///     \"type\": \"InitializeVariable\"
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
/// import com.pulumi.azure.logicapps.ActionCustom;
/// import com.pulumi.azure.logicapps.ActionCustomArgs;
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
///         var exampleActionCustom = new ActionCustom("exampleActionCustom", ActionCustomArgs.builder()
///             .name("example-action")
///             .logicAppId(exampleWorkflow.id())
///             .body("""
/// {
///     \"description\": \"A variable to configure the auto expiration age in days. Configured in negative number. Default is -30 (30 days old).\",
///     \"inputs\": {
///         \"variables\": [
///             {
///                 \"name\": \"ExpirationAgeInDays\",
///                 \"type\": \"Integer\",
///                 \"value\": -30
///             }
///         ]
///     },
///     \"runAfter\": {},
///     \"type\": \"InitializeVariable\"
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
///   exampleActionCustom:
///     type: azure:logicapps:ActionCustom
///     name: example
///     properties:
///       name: example-action
///       logicAppId: ${exampleWorkflow.id}
///       body: |
///         {
///             \"description\": \"A variable to configure the auto expiration age in days. Configured in negative number. Default is -30 (30 days old).\",
///             \"inputs\": {
///                 \"variables\": [
///                     {
///                         \"name\": \"ExpirationAgeInDays\",
///                         \"type\": \"Integer\",
///                         \"value\": -30
///                     }
///                 ]
///             },
///             \"runAfter\": {},
///             \"type\": \"InitializeVariable\"
///         }
/// ```
///
///
/// ## Import
///
/// Logic App Custom Actions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:logicapps/actionCustom:ActionCustom custom1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Logic/workflows/workflow1/actions/custom1
/// ```
///
/// &gt; **NOTE:** This ID is unique to this provider and doesn't directly match to any other resource. To compose this ID, you can take the ID Logic App Workflow and append `/actions/{name of the action}`.
class ActionCustom extends pulumi.CustomResource {
  /// Specifies the JSON Blob defining the Body of this Custom Action.
  late final pulumi.Output<String> body;

  /// Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  late final pulumi.Output<String> logicAppId;

  /// Specifies the name of the HTTP Action to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** This name must be unique across all Actions within the Logic App Workflow.
  late final pulumi.Output<String> name;

  /// Creates a new [ActionCustom].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ActionCustom]. {@macro pulumi_logicapps_action_custom_action_custom_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ActionCustom(
    String name, {
    ActionCustomArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:logicapps/actionCustom:ActionCustom',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    body = registerOutput<String>('body');
    logicAppId = registerOutput<String>('logicAppId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [ActionCustom] resource's state with the given [name] and [id].
  static ActionCustom get(
    String name,
    pulumi.Input<String> id, {
    ActionCustomState? state,
  }) {
    return ActionCustom._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ActionCustom._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:logicapps/actionCustom:ActionCustom',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    body = registerOutput<String>('body');
    logicAppId = registerOutput<String>('logicAppId');
    this.name = registerOutput<String>('name');
  }
}
