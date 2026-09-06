import 'package:pulumi/pulumi.dart' as pulumi;
import 'hunt_comment_args.dart';
import 'system_data_response.dart';

/// Represents a Hunt Comment in Azure Security Insights
///
/// Uses Azure REST API version 2025-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a hunt comment.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var huntComment = new AzureNative.SecurityInsights.HuntComment("huntComment", new()
///     {
///         HuntCommentId = "2216d0e1-91e3-4902-89fd-d2df8c535096",
///         HuntId = "163e7b2a-a2ec-4041-aaba-d878a38f265f",
///         Message = "This is a test comment.",
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
/// 		_, err := securityinsights.NewHuntComment(ctx, "huntComment", &securityinsights.HuntCommentArgs{
/// 			HuntCommentId:     pulumi.String("2216d0e1-91e3-4902-89fd-d2df8c535096"),
/// 			HuntId:            pulumi.String("163e7b2a-a2ec-4041-aaba-d878a38f265f"),
/// 			Message:           pulumi.String("This is a test comment."),
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
/// resource "azure-native_securityinsights_huntcomment" "huntComment" {
///   hunt_comment_id     = "2216d0e1-91e3-4902-89fd-d2df8c535096"
///   hunt_id             = "163e7b2a-a2ec-4041-aaba-d878a38f265f"
///   message             = "This is a test comment."
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
/// import com.pulumi.azurenative.securityinsights.HuntComment;
/// import com.pulumi.azurenative.securityinsights.HuntCommentArgs;
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
///         var huntComment = new HuntComment("huntComment", HuntCommentArgs.builder()
///             .huntCommentId("2216d0e1-91e3-4902-89fd-d2df8c535096")
///             .huntId("163e7b2a-a2ec-4041-aaba-d878a38f265f")
///             .message("This is a test comment.")
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
/// const huntComment = new azure_native.securityinsights.HuntComment("huntComment", {
///     huntCommentId: "2216d0e1-91e3-4902-89fd-d2df8c535096",
///     huntId: "163e7b2a-a2ec-4041-aaba-d878a38f265f",
///     message: "This is a test comment.",
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
/// hunt_comment = azure_native.securityinsights.HuntComment("huntComment",
///     hunt_comment_id="2216d0e1-91e3-4902-89fd-d2df8c535096",
///     hunt_id="163e7b2a-a2ec-4041-aaba-d878a38f265f",
///     message="This is a test comment.",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   huntComment:
///     type: azure-native:securityinsights:HuntComment
///     properties:
///       huntCommentId: 2216d0e1-91e3-4902-89fd-d2df8c535096
///       huntId: 163e7b2a-a2ec-4041-aaba-d878a38f265f
///       message: This is a test comment.
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
/// $ pulumi import azure-native:securityinsights:HuntComment 2216d0e1-91e3-4902-89fd-d2df8c123456 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/hunts/{huntId}/comments/{huntCommentId}
/// ```
class HuntComment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// The message for the comment
  late final pulumi.Output<String> message;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [HuntComment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HuntComment]. {@macro pulumi_securityinsights_hunt_comment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HuntComment(
    String name, {
    HuntCommentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:HuntComment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    message = registerOutput<String>('message');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [HuntComment] resource.
  HuntComment.reference(String urn)
    : super(
        'azure-native:securityinsights:HuntComment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    message = registerOutput<String>('message');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
