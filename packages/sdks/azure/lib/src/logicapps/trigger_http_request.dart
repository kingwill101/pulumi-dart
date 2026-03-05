import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_http_request_args.dart';
import 'trigger_http_request_state.dart';

/// Manages a HTTP Request Trigger within a Logic App Workflow
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
/// const exampleTriggerHttpRequest = new azure.logicapps.TriggerHttpRequest("example", {
///     name: "some-http-trigger",
///     logicAppId: exampleWorkflow.id,
///     schema: `{
///     \\"type\\": \\"object\\",
///     \\"properties\\": {
///         \\"hello\\": {
///             \\"type\\": \\"string\\"
///         }
///     }
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
/// example_trigger_http_request = azure.logicapps.TriggerHttpRequest("example",
///     name="some-http-trigger",
///     logic_app_id=example_workflow.id,
///     schema="""{
///     \"type\": \"object\",
///     \"properties\": {
///         \"hello\": {
///             \"type\": \"string\"
///         }
///     }
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
///     var exampleTriggerHttpRequest = new Azure.LogicApps.TriggerHttpRequest("example", new()
///     {
///         Name = "some-http-trigger",
///         LogicAppId = exampleWorkflow.Id,
///         Schema = @"{
///     \""type\"": \""object\"",
///     \""properties\"": {
///         \""hello\"": {
///             \""type\"": \""string\""
///         }
///     }
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
/// 		_, err = logicapps.NewTriggerHttpRequest(ctx, "example", &logicapps.TriggerHttpRequestArgs{
/// 			Name:       pulumi.String("some-http-trigger"),
/// 			LogicAppId: exampleWorkflow.ID(),
/// 			Schema: pulumi.String(`{
///     \"type\": \"object\",
///     \"properties\": {
///         \"hello\": {
///             \"type\": \"string\"
///         }
///     }
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
/// import com.pulumi.azure.logicapps.TriggerHttpRequest;
/// import com.pulumi.azure.logicapps.TriggerHttpRequestArgs;
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
///         var exampleTriggerHttpRequest = new TriggerHttpRequest("exampleTriggerHttpRequest", TriggerHttpRequestArgs.builder()
///             .name("some-http-trigger")
///             .logicAppId(exampleWorkflow.id())
///             .schema("""
/// {
///     \"type\": \"object\",
///     \"properties\": {
///         \"hello\": {
///             \"type\": \"string\"
///         }
///     }
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
///   exampleTriggerHttpRequest:
///     type: azure:logicapps:TriggerHttpRequest
///     name: example
///     properties:
///       name: some-http-trigger
///       logicAppId: ${exampleWorkflow.id}
///       schema: |
///         {
///             \"type\": \"object\",
///             \"properties\": {
///                 \"hello\": {
///                     \"type\": \"string\"
///                 }
///             }
///         }
/// ```
///
///
/// ## Import
///
/// Logic App HTTP Request Triggers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:logicapps/triggerHttpRequest:TriggerHttpRequest request1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Logic/workflows/workflow1/triggers/request1
/// ```
///
/// &gt; **NOTE:** This ID is unique to this provider and doesn't directly match to any other resource. To compose this ID, you can take the ID Logic App Workflow and append `/triggers/{name of the trigger}`.
class TriggerHttpRequest extends pulumi.CustomResource {
  /// The URL of the Trigger within the Logic App Workflow. For use with certain resources like monitor_action_group and security_center_automation.
  late final pulumi.Output<String> callbackUrl;
  /// Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  late final pulumi.Output<String> logicAppId;
  /// Specifies the HTTP Method which the request be using. Possible values include `DELETE`, `GET`, `PATCH`, `POST` or `PUT`.
  late final pulumi.Output<String?> method;
  /// Specifies the name of the HTTP Request Trigger to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** This name must be unique across all Triggers within the Logic App Workflow.
  late final pulumi.Output<String> name;
  /// Specifies the Relative Path used for this Request.
  ///
  /// &gt; **NOTE:** When `relative_path` is set a `method` must also be set.
  late final pulumi.Output<String?> relativePath;
  /// A JSON Blob defining the Schema of the incoming request. This needs to be valid JSON.
  late final pulumi.Output<String> schema;

  /// Creates a new [TriggerHttpRequest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TriggerHttpRequest]. {@macro pulumi_logicapps_trigger_http_request_trigger_http_request_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TriggerHttpRequest(
    String name, {
    TriggerHttpRequestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/triggerHttpRequest:TriggerHttpRequest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    callbackUrl = registerOutput<String>('callbackUrl');
    logicAppId = registerOutput<String>('logicAppId');
    method = registerOutput<String?>('method');
    this.name = registerOutput<String>('name');
    relativePath = registerOutput<String?>('relativePath');
    schema = registerOutput<String>('schema');
  }

  /// Gets an existing [TriggerHttpRequest] resource's state with the given [name] and [id].
  static TriggerHttpRequest get(
    String name,
    pulumi.Input<String> id, {
    TriggerHttpRequestState? state,
  }) {
    return TriggerHttpRequest._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TriggerHttpRequest._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/triggerHttpRequest:TriggerHttpRequest',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    callbackUrl = registerOutput<String>('callbackUrl');
    logicAppId = registerOutput<String>('logicAppId');
    method = registerOutput<String?>('method');
    this.name = registerOutput<String>('name');
    relativePath = registerOutput<String?>('relativePath');
    schema = registerOutput<String>('schema');
  }
}
