import 'package:pulumi/pulumi.dart' as pulumi;
import 'incident_relation_args.dart';
import 'system_data_response.dart';

/// Represents a relation between two resources
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates an incident relation.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var incidentRelation = new AzureNative.SecurityInsights.IncidentRelation("incidentRelation", new()
///     {
///         IncidentId = "afbd324f-6c48-459c-8710-8d1e1cd03812",
///         RelatedResourceId = "/subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/bookmarks/2216d0e1-91e3-4902-89fd-d2df8c535096",
///         RelationName = "4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014",
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
/// 		_, err := securityinsights.NewIncidentRelation(ctx, "incidentRelation", &securityinsights.IncidentRelationArgs{
/// 			IncidentId:        pulumi.String("afbd324f-6c48-459c-8710-8d1e1cd03812"),
/// 			RelatedResourceId: pulumi.String("/subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/bookmarks/2216d0e1-91e3-4902-89fd-d2df8c535096"),
/// 			RelationName:      pulumi.String("4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014"),
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
/// import com.pulumi.azurenative.securityinsights.IncidentRelation;
/// import com.pulumi.azurenative.securityinsights.IncidentRelationArgs;
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
///         var incidentRelation = new IncidentRelation("incidentRelation", IncidentRelationArgs.builder()
///             .incidentId("afbd324f-6c48-459c-8710-8d1e1cd03812")
///             .relatedResourceId("/subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/bookmarks/2216d0e1-91e3-4902-89fd-d2df8c535096")
///             .relationName("4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014")
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
/// const incidentRelation = new azure_native.securityinsights.IncidentRelation("incidentRelation", {
///     incidentId: "afbd324f-6c48-459c-8710-8d1e1cd03812",
///     relatedResourceId: "/subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/bookmarks/2216d0e1-91e3-4902-89fd-d2df8c535096",
///     relationName: "4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014",
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
/// incident_relation = azure_native.securityinsights.IncidentRelation("incidentRelation",
///     incident_id="afbd324f-6c48-459c-8710-8d1e1cd03812",
///     related_resource_id="/subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/bookmarks/2216d0e1-91e3-4902-89fd-d2df8c535096",
///     relation_name="4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   incidentRelation:
///     type: azure-native:securityinsights:IncidentRelation
///     properties:
///       incidentId: afbd324f-6c48-459c-8710-8d1e1cd03812
///       relatedResourceId: /subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/bookmarks/2216d0e1-91e3-4902-89fd-d2df8c535096
///       relationName: 4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014
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
/// $ pulumi import azure-native:securityinsights:IncidentRelation 4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/incidents/{incidentId}/relations/{relationName}
/// ```
class IncidentRelation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource ID of the related resource
  late final pulumi.Output<String> relatedResourceId;
  /// The resource kind of the related resource
  late final pulumi.Output<String> relatedResourceKind;
  /// The name of the related resource
  late final pulumi.Output<String> relatedResourceName;
  /// The resource type of the related resource
  late final pulumi.Output<String> relatedResourceType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IncidentRelation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IncidentRelation]. {@macro pulumi_securityinsights_incident_relation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IncidentRelation(
    String name, {
    IncidentRelationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:IncidentRelation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.etag = registerOutput<String?>('etag');
    this.name = registerOutput<String>('name');
    this.relatedResourceId = registerOutput<String>('relatedResourceId');
    this.relatedResourceKind = registerOutput<String>('relatedResourceKind');
    this.relatedResourceName = registerOutput<String>('relatedResourceName');
    this.relatedResourceType = registerOutput<String>('relatedResourceType');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
