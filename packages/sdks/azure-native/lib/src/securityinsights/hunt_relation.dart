import 'package:pulumi/pulumi.dart' as pulumi;
import 'hunt_relation_args.dart';
import 'system_data_response.dart';

/// Represents a Hunt Relation in Azure Security Insights.
///
/// Uses Azure REST API version 2025-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a hunt relation.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var huntRelation = new AzureNative.SecurityInsights.HuntRelation("huntRelation", new()
///     {
///         HuntId = "163e7b2a-a2ec-4041-aaba-d878a38f265f",
///         HuntRelationId = "2216d0e1-91e3-4902-89fd-d2df8c535096",
///         Labels = new[]
///         {
///             "Test Label",
///         },
///         RelatedResourceId = "/subscriptions/bd794837-4d29-4647-9105-6339bfdb4e6a/resourceGroups/mms-eus/providers/Microsoft.OperationalInsights/workspaces/avdvirint/providers/Microsoft.SecurityInsights/Bookmarks/2216d0e1-91e3-4902-89fd-d2df8c535096",
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
/// 		_, err := securityinsights.NewHuntRelation(ctx, "huntRelation", &securityinsights.HuntRelationArgs{
/// 			HuntId:         pulumi.String("163e7b2a-a2ec-4041-aaba-d878a38f265f"),
/// 			HuntRelationId: pulumi.String("2216d0e1-91e3-4902-89fd-d2df8c535096"),
/// 			Labels: pulumi.StringArray{
/// 				pulumi.String("Test Label"),
/// 			},
/// 			RelatedResourceId: pulumi.String("/subscriptions/bd794837-4d29-4647-9105-6339bfdb4e6a/resourceGroups/mms-eus/providers/Microsoft.OperationalInsights/workspaces/avdvirint/providers/Microsoft.SecurityInsights/Bookmarks/2216d0e1-91e3-4902-89fd-d2df8c535096"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.securityinsights.HuntRelation;
/// import com.pulumi.azurenative.securityinsights.HuntRelationArgs;
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
///         var huntRelation = new HuntRelation("huntRelation", HuntRelationArgs.builder()
///             .huntId("163e7b2a-a2ec-4041-aaba-d878a38f265f")
///             .huntRelationId("2216d0e1-91e3-4902-89fd-d2df8c535096")
///             .labels("Test Label")
///             .relatedResourceId("/subscriptions/bd794837-4d29-4647-9105-6339bfdb4e6a/resourceGroups/mms-eus/providers/Microsoft.OperationalInsights/workspaces/avdvirint/providers/Microsoft.SecurityInsights/Bookmarks/2216d0e1-91e3-4902-89fd-d2df8c535096")
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
/// const huntRelation = new azure_native.securityinsights.HuntRelation("huntRelation", {
///     huntId: "163e7b2a-a2ec-4041-aaba-d878a38f265f",
///     huntRelationId: "2216d0e1-91e3-4902-89fd-d2df8c535096",
///     labels: ["Test Label"],
///     relatedResourceId: "/subscriptions/bd794837-4d29-4647-9105-6339bfdb4e6a/resourceGroups/mms-eus/providers/Microsoft.OperationalInsights/workspaces/avdvirint/providers/Microsoft.SecurityInsights/Bookmarks/2216d0e1-91e3-4902-89fd-d2df8c535096",
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
/// hunt_relation = azure_native.securityinsights.HuntRelation("huntRelation",
///     hunt_id="163e7b2a-a2ec-4041-aaba-d878a38f265f",
///     hunt_relation_id="2216d0e1-91e3-4902-89fd-d2df8c535096",
///     labels=["Test Label"],
///     related_resource_id="/subscriptions/bd794837-4d29-4647-9105-6339bfdb4e6a/resourceGroups/mms-eus/providers/Microsoft.OperationalInsights/workspaces/avdvirint/providers/Microsoft.SecurityInsights/Bookmarks/2216d0e1-91e3-4902-89fd-d2df8c535096",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   huntRelation:
///     type: azure-native:securityinsights:HuntRelation
///     properties:
///       huntId: 163e7b2a-a2ec-4041-aaba-d878a38f265f
///       huntRelationId: 2216d0e1-91e3-4902-89fd-d2df8c535096
///       labels:
///         - Test Label
///       relatedResourceId: /subscriptions/bd794837-4d29-4647-9105-6339bfdb4e6a/resourceGroups/mms-eus/providers/Microsoft.OperationalInsights/workspaces/avdvirint/providers/Microsoft.SecurityInsights/Bookmarks/2216d0e1-91e3-4902-89fd-d2df8c535096
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
/// $ pulumi import azure-native:securityinsights:HuntRelation 2216d0e1-91e3-4902-89fd-d2df8c535096 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/hunts/{huntId}/relations/{huntRelationId}
/// ```
class HuntRelation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// List of labels relevant to this hunt
  late final pulumi.Output<List<String>?> labels;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The id of the related resource
  late final pulumi.Output<String> relatedResourceId;
  /// The resource that the relation is related to
  late final pulumi.Output<String> relatedResourceKind;
  /// The name of the related resource
  late final pulumi.Output<String> relatedResourceName;
  /// The type of the hunt relation
  late final pulumi.Output<String> relationType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [HuntRelation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HuntRelation]. {@macro pulumi_securityinsights_hunt_relation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HuntRelation(
    String name, {
    HuntRelationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:HuntRelation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    labels = registerOutput<List<String>?>('labels');
    this.name = registerOutput<String>('name');
    relatedResourceId = registerOutput<String>('relatedResourceId');
    relatedResourceKind = registerOutput<String>('relatedResourceKind');
    relatedResourceName = registerOutput<String>('relatedResourceName');
    relationType = registerOutput<String>('relationType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
