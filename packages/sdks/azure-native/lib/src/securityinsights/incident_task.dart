import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_info_response.dart';
import 'incident_task_args.dart';
import 'system_data_response.dart';

/// Describes incident task properties
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IncidentTasks_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var incidentTask = new AzureNative.SecurityInsights.IncidentTask("incidentTask", new()
///     {
///         Description = "Task description",
///         IncidentId = "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///         IncidentTaskId = "4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014",
///         ResourceGroupName = "myRg",
///         Status = AzureNative.SecurityInsights.IncidentTaskStatus.New,
///         Title = "Task title",
///         WorkspaceName = "myWorkspace",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	securityinsights "github.com/pulumi/pulumi-azure-native-sdk/securityinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityinsights.NewIncidentTask(ctx, "incidentTask", &securityinsights.IncidentTaskArgs{
/// 			Description:       pulumi.String("Task description"),
/// 			IncidentId:        pulumi.String("73e01a99-5cd7-4139-a149-9f2736ff2ab5"),
/// 			IncidentTaskId:    pulumi.String("4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014"),
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			Status:            pulumi.String(securityinsights.IncidentTaskStatusNew),
/// 			Title:             pulumi.String("Task title"),
/// 			WorkspaceName:     pulumi.String("myWorkspace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.securityinsights.IncidentTask;
/// import com.pulumi.azurenative.securityinsights.IncidentTaskArgs;
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
///         var incidentTask = new IncidentTask("incidentTask", IncidentTaskArgs.builder()
///             .description("Task description")
///             .incidentId("73e01a99-5cd7-4139-a149-9f2736ff2ab5")
///             .incidentTaskId("4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014")
///             .resourceGroupName("myRg")
///             .status("New")
///             .title("Task title")
///             .workspaceName("myWorkspace")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const incidentTask = new azure_native.securityinsights.IncidentTask("incidentTask", {
///     description: "Task description",
///     incidentId: "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     incidentTaskId: "4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014",
///     resourceGroupName: "myRg",
///     status: azure_native.securityinsights.IncidentTaskStatus.New,
///     title: "Task title",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// incident_task = azure_native.securityinsights.IncidentTask("incidentTask",
///     description="Task description",
///     incident_id="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     incident_task_id="4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014",
///     resource_group_name="myRg",
///     status=azure_native.securityinsights.IncidentTaskStatus.NEW,
///     title="Task title",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   incidentTask:
///     type: azure-native:securityinsights:IncidentTask
///     properties:
///       description: Task description
///       incidentId: 73e01a99-5cd7-4139-a149-9f2736ff2ab5
///       incidentTaskId: 4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014
///       resourceGroupName: myRg
///       status: New
///       title: Task title
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:securityinsights:IncidentTask 4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/incidents/{incidentId}/tasks/{incidentTaskId}
/// ```
class IncidentTask extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Information on the client (user or application) that made some action
  late final pulumi.Output<ClientInfoResponse?> createdBy;
  /// The time the task was created
  late final pulumi.Output<String> createdTimeUtc;
  /// The description of the task
  late final pulumi.Output<String?> description;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// Information on the client (user or application) that made some action
  late final pulumi.Output<ClientInfoResponse?> lastModifiedBy;
  /// The last time the task was updated
  late final pulumi.Output<String> lastModifiedTimeUtc;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the task
  late final pulumi.Output<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The title of the task
  late final pulumi.Output<String> title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IncidentTask].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IncidentTask]. {@macro pulumi_securityinsights_incident_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IncidentTask(
    String name, {
    IncidentTaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:IncidentTask',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.createdBy = registerOutput<ClientInfoResponse?>('createdBy');
    this.createdTimeUtc = registerOutput<String>('createdTimeUtc');
    this.description = registerOutput<String?>('description');
    this.etag = registerOutput<String?>('etag');
    this.lastModifiedBy = registerOutput<ClientInfoResponse?>('lastModifiedBy');
    this.lastModifiedTimeUtc = registerOutput<String>('lastModifiedTimeUtc');
    this.name = registerOutput<String>('name');
    this.status = registerOutput<String>('status');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.title = registerOutput<String>('title');
    this.type = registerOutput<String>('type');
  }
}
