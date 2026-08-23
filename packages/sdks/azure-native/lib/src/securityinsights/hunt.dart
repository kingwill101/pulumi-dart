import 'package:pulumi/pulumi.dart' as pulumi;
import 'hunt_args.dart';
import 'hunt_owner_response.dart';
import 'system_data_response.dart';

/// Represents a Hunt in Azure Security Insights.
///
/// Uses Azure REST API version 2025-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a hunt.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hunt = new AzureNative.SecurityInsights.Hunt("hunt", new()
///     {
///         AttackTactics = new[]
///         {
///             AzureNative.SecurityInsights.AttackTactic.Reconnaissance,
///         },
///         AttackTechniques = new[]
///         {
///             "T1595",
///         },
///         Description = "Log4J Hunt Description",
///         DisplayName = "Log4J new hunt",
///         HuntId = "163e7b2a-a2ec-4041-aaba-d878a38f265f",
///         HypothesisStatus = AzureNative.SecurityInsights.HypothesisStatus.Unknown,
///         Labels = new[]
///         {
///             "Label1",
///             "Label2",
///         },
///         Owner = new AzureNative.SecurityInsights.Inputs.HuntOwnerArgs
///         {
///             ObjectId = "873b5263-5d34-4149-b356-ad341b01e123",
///         },
///         ResourceGroupName = "myRg",
///         Status = AzureNative.SecurityInsights.Status.New,
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
/// 		_, err := securityinsights.NewHunt(ctx, "hunt", &securityinsights.HuntArgs{
/// 			AttackTactics: pulumi.StringArray{
/// 				pulumi.String(securityinsights.AttackTacticReconnaissance),
/// 			},
/// 			AttackTechniques: pulumi.StringArray{
/// 				pulumi.String("T1595"),
/// 			},
/// 			Description:      pulumi.String("Log4J Hunt Description"),
/// 			DisplayName:      pulumi.String("Log4J new hunt"),
/// 			HuntId:           pulumi.String("163e7b2a-a2ec-4041-aaba-d878a38f265f"),
/// 			HypothesisStatus: pulumi.String(securityinsights.HypothesisStatusUnknown),
/// 			Labels: pulumi.StringArray{
/// 				pulumi.String("Label1"),
/// 				pulumi.String("Label2"),
/// 			},
/// 			Owner: &securityinsights.HuntOwnerArgs{
/// 				ObjectId: pulumi.String("873b5263-5d34-4149-b356-ad341b01e123"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			Status:            pulumi.String(securityinsights.StatusNew),
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
/// resource "azure-native_securityinsights_hunt" "hunt" {
///   attack_tactics    = ["Reconnaissance"]
///   attack_techniques = ["T1595"]
///   description       = "Log4J Hunt Description"
///   display_name      = "Log4J new hunt"
///   hunt_id           = "163e7b2a-a2ec-4041-aaba-d878a38f265f"
///   hypothesis_status = "Unknown"
///   labels            = ["Label1", "Label2"]
///   owner = {
///     object_id = "873b5263-5d34-4149-b356-ad341b01e123"
///   }
///   resource_group_name = "myRg"
///   status              = "New"
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
/// import com.pulumi.azurenative.securityinsights.Hunt;
/// import com.pulumi.azurenative.securityinsights.HuntArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.HuntOwnerArgs;
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
///         var hunt = new Hunt("hunt", HuntArgs.builder()
///             .attackTactics("Reconnaissance")
///             .attackTechniques("T1595")
///             .description("Log4J Hunt Description")
///             .displayName("Log4J new hunt")
///             .huntId("163e7b2a-a2ec-4041-aaba-d878a38f265f")
///             .hypothesisStatus("Unknown")
///             .labels(
///                 "Label1",
///                 "Label2")
///             .owner(HuntOwnerArgs.builder()
///                 .objectId("873b5263-5d34-4149-b356-ad341b01e123")
///                 .build())
///             .resourceGroupName("myRg")
///             .status("New")
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
/// const hunt = new azure_native.securityinsights.Hunt("hunt", {
///     attackTactics: [azure_native.securityinsights.AttackTactic.Reconnaissance],
///     attackTechniques: ["T1595"],
///     description: "Log4J Hunt Description",
///     displayName: "Log4J new hunt",
///     huntId: "163e7b2a-a2ec-4041-aaba-d878a38f265f",
///     hypothesisStatus: azure_native.securityinsights.HypothesisStatus.Unknown,
///     labels: [
///         "Label1",
///         "Label2",
///     ],
///     owner: {
///         objectId: "873b5263-5d34-4149-b356-ad341b01e123",
///     },
///     resourceGroupName: "myRg",
///     status: azure_native.securityinsights.Status.New,
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// hunt = azure_native.securityinsights.Hunt("hunt",
///     attack_tactics=[azure_native.securityinsights.AttackTactic.RECONNAISSANCE],
///     attack_techniques=["T1595"],
///     description="Log4J Hunt Description",
///     display_name="Log4J new hunt",
///     hunt_id="163e7b2a-a2ec-4041-aaba-d878a38f265f",
///     hypothesis_status=azure_native.securityinsights.HypothesisStatus.UNKNOWN,
///     labels=[
///         "Label1",
///         "Label2",
///     ],
///     owner={
///         "object_id": "873b5263-5d34-4149-b356-ad341b01e123",
///     },
///     resource_group_name="myRg",
///     status=azure_native.securityinsights.Status.NEW,
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   hunt:
///     type: azure-native:securityinsights:Hunt
///     properties:
///       attackTactics:
///         - Reconnaissance
///       attackTechniques:
///         - T1595
///       description: Log4J Hunt Description
///       displayName: Log4J new hunt
///       huntId: 163e7b2a-a2ec-4041-aaba-d878a38f265f
///       hypothesisStatus: Unknown
///       labels:
///         - Label1
///         - Label2
///       owner:
///         objectId: 873b5263-5d34-4149-b356-ad341b01e123
///       resourceGroupName: myRg
///       status: New
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
/// $ pulumi import azure-native:securityinsights:Hunt 163e7b2a-a2ec-4041-aaba-d878a38f265f /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/hunts/{huntId}
/// ```
class Hunt extends pulumi.CustomResource {
  /// A list of mitre attack tactics the hunt is associated with
  late final pulumi.Output<List<String>?> attackTactics;
  /// A list of a mitre attack techniques the hunt is associated with
  late final pulumi.Output<List<String>?> attackTechniques;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The description of the hunt
  late final pulumi.Output<String> description;
  /// The display name of the hunt
  late final pulumi.Output<String> displayName;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// The hypothesis status of the hunt.
  late final pulumi.Output<String?> hypothesisStatus;
  /// List of labels relevant to this hunt
  late final pulumi.Output<List<String>?> labels;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Describes a user that the hunt is assigned to
  late final pulumi.Output<HuntOwnerResponse?> owner;
  /// The status of the hunt.
  late final pulumi.Output<String?> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Hunt].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Hunt]. {@macro pulumi_securityinsights_hunt_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Hunt(
    String name, {
    HuntArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:Hunt',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attackTactics = registerOutput<List<String>?>('attackTactics');
    attackTechniques = registerOutput<List<String>?>('attackTechniques');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String?>('etag');
    hypothesisStatus = registerOutput<String?>('hypothesisStatus');
    labels = registerOutput<List<String>?>('labels');
    this.name = registerOutput<String>('name');
    owner = registerOutput<HuntOwnerResponse?>('owner', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HuntOwnerResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String?>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
