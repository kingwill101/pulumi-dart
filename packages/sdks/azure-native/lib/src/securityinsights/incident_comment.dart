import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_info_response.dart';
import 'incident_comment_args.dart';
import 'system_data_response.dart';

/// Represents an incident comment
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates an incident comment.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var incidentComment = new AzureNative.SecurityInsights.IncidentComment("incidentComment", new()
///     {
///         IncidentCommentId = "4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014",
///         IncidentId = "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///         Message = "Some message",
///         ResourceGroupName = "myRg",
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
/// 		_, err := securityinsights.NewIncidentComment(ctx, "incidentComment", &securityinsights.IncidentCommentArgs{
/// 			IncidentCommentId: pulumi.String("4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014"),
/// 			IncidentId:        pulumi.String("73e01a99-5cd7-4139-a149-9f2736ff2ab5"),
/// 			Message:           pulumi.String("Some message"),
/// 			ResourceGroupName: pulumi.String("myRg"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_securityinsights_incidentcomment" "incidentComment" {
///   incident_comment_id = "4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014"
///   incident_id         = "73e01a99-5cd7-4139-a149-9f2736ff2ab5"
///   message             = "Some message"
///   resource_group_name = "myRg"
///   workspace_name      = "myWorkspace"
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
/// import com.pulumi.azurenative.securityinsights.IncidentComment;
/// import com.pulumi.azurenative.securityinsights.IncidentCommentArgs;
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
///         var incidentComment = new IncidentComment("incidentComment", IncidentCommentArgs.builder()
///             .incidentCommentId("4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014")
///             .incidentId("73e01a99-5cd7-4139-a149-9f2736ff2ab5")
///             .message("Some message")
///             .resourceGroupName("myRg")
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
/// const incidentComment = new azure_native.securityinsights.IncidentComment("incidentComment", {
///     incidentCommentId: "4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014",
///     incidentId: "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     message: "Some message",
///     resourceGroupName: "myRg",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// incident_comment = azure_native.securityinsights.IncidentComment("incidentComment",
///     incident_comment_id="4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014",
///     incident_id="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     message="Some message",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   incidentComment:
///     type: azure-native:securityinsights:IncidentComment
///     properties:
///       incidentCommentId: 4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014
///       incidentId: 73e01a99-5cd7-4139-a149-9f2736ff2ab5
///       message: Some message
///       resourceGroupName: myRg
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
/// $ pulumi import azure-native:securityinsights:IncidentComment 4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/incidents/{incidentId}/comments/{incidentCommentId}
/// ```
class IncidentComment extends pulumi.CustomResource {
  /// Describes the client that created the comment
  late final pulumi.Output<ClientInfoResponse> author;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The time the comment was created
  late final pulumi.Output<String> createdTimeUtc;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// The time the comment was updated
  late final pulumi.Output<String> lastModifiedTimeUtc;
  /// The comment message
  late final pulumi.Output<String> message;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IncidentComment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IncidentComment]. {@macro pulumi_securityinsights_incident_comment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IncidentComment(
    String name, {
    IncidentCommentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:IncidentComment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    author = registerOutput<ClientInfoResponse>('author', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClientInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdTimeUtc = registerOutput<String>('createdTimeUtc');
    etag = registerOutput<String?>('etag');
    lastModifiedTimeUtc = registerOutput<String>('lastModifiedTimeUtc');
    message = registerOutput<String>('message');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
