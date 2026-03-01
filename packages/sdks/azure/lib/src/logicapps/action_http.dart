import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_http_args.dart';
import 'action_http_run_after.dart';
import 'action_http_state.dart';

/// Manages an HTTP Action within a Logic App Workflow
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
/// const exampleActionHttp = new azure.logicapps.ActionHttp("example", {
///     name: "webhook",
///     logicAppId: exampleWorkflow.id,
///     method: "GET",
///     uri: "http://example.com/some-webhook",
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
/// example_action_http = azure.logicapps.ActionHttp("example",
///     name="webhook",
///     logic_app_id=example_workflow.id,
///     method="GET",
///     uri="http://example.com/some-webhook")
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
///     var exampleActionHttp = new Azure.LogicApps.ActionHttp("example", new()
///     {
///         Name = "webhook",
///         LogicAppId = exampleWorkflow.Id,
///         Method = "GET",
///         Uri = "http://example.com/some-webhook",
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
/// 		_, err = logicapps.NewActionHttp(ctx, "example", &logicapps.ActionHttpArgs{
/// 			Name:       pulumi.String("webhook"),
/// 			LogicAppId: exampleWorkflow.ID(),
/// 			Method:     pulumi.String("GET"),
/// 			Uri:        pulumi.String("http://example.com/some-webhook"),
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
/// import com.pulumi.azure.logicapps.ActionHttp;
/// import com.pulumi.azure.logicapps.ActionHttpArgs;
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
///         var exampleActionHttp = new ActionHttp("exampleActionHttp", ActionHttpArgs.builder()
///             .name("webhook")
///             .logicAppId(exampleWorkflow.id())
///             .method("GET")
///             .uri("http://example.com/some-webhook")
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
///   exampleActionHttp:
///     type: azure:logicapps:ActionHttp
///     name: example
///     properties:
///       name: webhook
///       logicAppId: ${exampleWorkflow.id}
///       method: GET
///       uri: http://example.com/some-webhook
/// ```
///
///
/// ## Import
///
/// Logic App HTTP Actions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:logicapps/actionHttp:ActionHttp webhook1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Logic/workflows/workflow1/actions/webhook1
/// ```
///
/// > **NOTE:** This ID is unique to this provider and doesn't directly match to any other resource. To compose this ID, you can take the ID Logic App Workflow and append `/actions/{name of the action}`.
class ActionHttp extends pulumi.CustomResource {
  /// Specifies the HTTP Body that should be sent to the `uri` when this HTTP Action is triggered.
  late final pulumi.Output<String?> body;
  /// Specifies a Map of Key-Value Pairs that should be sent to the `uri` when this HTTP Action is triggered.
  late final pulumi.Output<Map<String, String>?> headers;
  /// Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  late final pulumi.Output<String> logicAppId;
  /// Specifies the HTTP Method which should be used for this HTTP Action. Possible values include `DELETE`, `GET`, `PATCH`, `POST` and `PUT`.
  late final pulumi.Output<String> method;
  /// Specifies the name of the HTTP Action to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** This name must be unique across all Actions within the Logic App Workflow.
  late final pulumi.Output<String> name;
  /// Specifies a Map of Key-Value Pairs that should be sent to the `uri` when this HTTP Action is triggered.
  late final pulumi.Output<Map<String, String>?> queries;
  /// Specifies the place of the HTTP Action in the Logic App Workflow. If not specified, the HTTP Action is right after the Trigger. A `run_after` block is as defined below.
  late final pulumi.Output<List<ActionHttpRunAfter>?> runAfters;
  /// Specifies the URI which will be called when this HTTP Action is triggered.
  late final pulumi.Output<String> uri;

  /// Creates a new [ActionHttp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ActionHttp]. {@macro pulumi_logicapps_action_http_action_http_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ActionHttp(
    String name, {
    ActionHttpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/actionHttp:ActionHttp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.body = registerOutput<String?>('body');
    this.headers = registerOutput<Map<String, String>?>('headers');
    this.logicAppId = registerOutput<String>('logicAppId');
    this.method = registerOutput<String>('method');
    this.name = registerOutput<String>('name');
    this.queries = registerOutput<Map<String, String>?>('queries');
    this.runAfters = registerOutput<List<ActionHttpRunAfter>?>('runAfters');
    this.uri = registerOutput<String>('uri');
  }

  /// Gets an existing [ActionHttp] resource's state with the given [name] and [id].
  static ActionHttp get(
    String name,
    pulumi.Input<String> id, {
    ActionHttpState? state,
  }) {
    return ActionHttp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ActionHttp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/actionHttp:ActionHttp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.body = registerOutput<String?>('body');
    this.headers = registerOutput<Map<String, String>?>('headers');
    this.logicAppId = registerOutput<String>('logicAppId');
    this.method = registerOutput<String>('method');
    this.name = registerOutput<String>('name');
    this.queries = registerOutput<Map<String, String>?>('queries');
    this.runAfters = registerOutput<List<ActionHttpRunAfter>?>('runAfters');
    this.uri = registerOutput<String>('uri');
  }
}
