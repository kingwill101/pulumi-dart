import 'package:pulumi/pulumi.dart' as pulumi;
import 'incident_additional_data_response.dart';
import 'incident_args.dart';
import 'incident_label_response.dart';
import 'incident_owner_info_response.dart';
import 'system_data_response.dart';

/// Represents an incident in Azure Security Insights.
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates an incident.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var incident = new AzureNative.SecurityInsights.Incident("incident", new()
///     {
///         Classification = AzureNative.SecurityInsights.IncidentClassification.FalsePositive,
///         ClassificationComment = "Not a malicious activity",
///         ClassificationReason = AzureNative.SecurityInsights.IncidentClassificationReason.IncorrectAlertLogic,
///         Description = "This is a demo incident",
///         FirstActivityTimeUtc = "2019-01-01T13:00:30Z",
///         IncidentId = "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///         LastActivityTimeUtc = "2019-01-01T13:05:30Z",
///         Owner = new AzureNative.SecurityInsights.Inputs.IncidentOwnerInfoArgs
///         {
///             ObjectId = "2046feea-040d-4a46-9e2b-91c2941bfa70",
///         },
///         ResourceGroupName = "myRg",
///         Severity = AzureNative.SecurityInsights.IncidentSeverity.High,
///         Status = AzureNative.SecurityInsights.IncidentStatus.Closed,
///         Title = "My incident",
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
/// 		_, err := securityinsights.NewIncident(ctx, "incident", &securityinsights.IncidentArgs{
/// 			Classification:        pulumi.String(securityinsights.IncidentClassificationFalsePositive),
/// 			ClassificationComment: pulumi.String("Not a malicious activity"),
/// 			ClassificationReason:  pulumi.String(securityinsights.IncidentClassificationReasonIncorrectAlertLogic),
/// 			Description:           pulumi.String("This is a demo incident"),
/// 			FirstActivityTimeUtc:  pulumi.String("2019-01-01T13:00:30Z"),
/// 			IncidentId:            pulumi.String("73e01a99-5cd7-4139-a149-9f2736ff2ab5"),
/// 			LastActivityTimeUtc:   pulumi.String("2019-01-01T13:05:30Z"),
/// 			Owner: &securityinsights.IncidentOwnerInfoArgs{
/// 				ObjectId: pulumi.String("2046feea-040d-4a46-9e2b-91c2941bfa70"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			Severity:          pulumi.String(securityinsights.IncidentSeverityHigh),
/// 			Status:            pulumi.String(securityinsights.IncidentStatusClosed),
/// 			Title:             pulumi.String("My incident"),
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
/// import com.pulumi.azurenative.securityinsights.Incident;
/// import com.pulumi.azurenative.securityinsights.IncidentArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.IncidentOwnerInfoArgs;
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
///         var incident = new Incident("incident", IncidentArgs.builder()
///             .classification("FalsePositive")
///             .classificationComment("Not a malicious activity")
///             .classificationReason("IncorrectAlertLogic")
///             .description("This is a demo incident")
///             .firstActivityTimeUtc("2019-01-01T13:00:30Z")
///             .incidentId("73e01a99-5cd7-4139-a149-9f2736ff2ab5")
///             .lastActivityTimeUtc("2019-01-01T13:05:30Z")
///             .owner(IncidentOwnerInfoArgs.builder()
///                 .objectId("2046feea-040d-4a46-9e2b-91c2941bfa70")
///                 .build())
///             .resourceGroupName("myRg")
///             .severity("High")
///             .status("Closed")
///             .title("My incident")
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
/// const incident = new azure_native.securityinsights.Incident("incident", {
///     classification: azure_native.securityinsights.IncidentClassification.FalsePositive,
///     classificationComment: "Not a malicious activity",
///     classificationReason: azure_native.securityinsights.IncidentClassificationReason.IncorrectAlertLogic,
///     description: "This is a demo incident",
///     firstActivityTimeUtc: "2019-01-01T13:00:30Z",
///     incidentId: "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     lastActivityTimeUtc: "2019-01-01T13:05:30Z",
///     owner: {
///         objectId: "2046feea-040d-4a46-9e2b-91c2941bfa70",
///     },
///     resourceGroupName: "myRg",
///     severity: azure_native.securityinsights.IncidentSeverity.High,
///     status: azure_native.securityinsights.IncidentStatus.Closed,
///     title: "My incident",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// incident = azure_native.securityinsights.Incident("incident",
///     classification=azure_native.securityinsights.IncidentClassification.FALSE_POSITIVE,
///     classification_comment="Not a malicious activity",
///     classification_reason=azure_native.securityinsights.IncidentClassificationReason.INCORRECT_ALERT_LOGIC,
///     description="This is a demo incident",
///     first_activity_time_utc="2019-01-01T13:00:30Z",
///     incident_id="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     last_activity_time_utc="2019-01-01T13:05:30Z",
///     owner={
///         "object_id": "2046feea-040d-4a46-9e2b-91c2941bfa70",
///     },
///     resource_group_name="myRg",
///     severity=azure_native.securityinsights.IncidentSeverity.HIGH,
///     status=azure_native.securityinsights.IncidentStatus.CLOSED,
///     title="My incident",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   incident:
///     type: azure-native:securityinsights:Incident
///     properties:
///       classification: FalsePositive
///       classificationComment: Not a malicious activity
///       classificationReason: IncorrectAlertLogic
///       description: This is a demo incident
///       firstActivityTimeUtc: 2019-01-01T13:00:30Z
///       incidentId: 73e01a99-5cd7-4139-a149-9f2736ff2ab5
///       lastActivityTimeUtc: 2019-01-01T13:05:30Z
///       owner:
///         objectId: 2046feea-040d-4a46-9e2b-91c2941bfa70
///       resourceGroupName: myRg
///       severity: High
///       status: Closed
///       title: My incident
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
/// $ pulumi import azure-native:securityinsights:Incident 73e01a99-5cd7-4139-a149-9f2736ff2ab5 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/incidents/{incidentId}
/// ```
class Incident extends pulumi.CustomResource {
  /// Additional data on the incident
  late final pulumi.Output<IncidentAdditionalDataResponse> additionalData;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The reason the incident was closed
  late final pulumi.Output<String?> classification;
  /// Describes the reason the incident was closed
  late final pulumi.Output<String?> classificationComment;
  /// The classification reason the incident was closed with
  late final pulumi.Output<String?> classificationReason;
  /// The time the incident was created
  late final pulumi.Output<String> createdTimeUtc;
  /// The description of the incident
  late final pulumi.Output<String?> description;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// The time of the first activity in the incident
  late final pulumi.Output<String?> firstActivityTimeUtc;
  /// A sequential number
  late final pulumi.Output<int> incidentNumber;
  /// The deep-link url to the incident in Azure portal
  late final pulumi.Output<String> incidentUrl;
  /// List of labels relevant to this incident
  late final pulumi.Output<List<IncidentLabelResponse>?> labels;
  /// The time of the last activity in the incident
  late final pulumi.Output<String?> lastActivityTimeUtc;
  /// The last time the incident was updated
  late final pulumi.Output<String> lastModifiedTimeUtc;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Describes a user that the incident is assigned to
  late final pulumi.Output<IncidentOwnerInfoResponse?> owner;
  /// The incident ID assigned by the incident provider
  late final pulumi.Output<String> providerIncidentId;
  /// The name of the source provider that generated the incident
  late final pulumi.Output<String> providerName;
  /// List of resource ids of Analytic rules related to the incident
  late final pulumi.Output<List<String>> relatedAnalyticRuleIds;
  /// The severity of the incident
  late final pulumi.Output<String> severity;
  /// The status of the incident
  late final pulumi.Output<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The title of the incident
  late final pulumi.Output<String> title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Incident].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Incident]. {@macro pulumi_securityinsights_incident_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Incident(
    String name, {
    IncidentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:Incident',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalData = registerOutput<IncidentAdditionalDataResponse>('additionalData');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.classification = registerOutput<String?>('classification');
    this.classificationComment = registerOutput<String?>('classificationComment');
    this.classificationReason = registerOutput<String?>('classificationReason');
    this.createdTimeUtc = registerOutput<String>('createdTimeUtc');
    this.description = registerOutput<String?>('description');
    this.etag = registerOutput<String?>('etag');
    this.firstActivityTimeUtc = registerOutput<String?>('firstActivityTimeUtc');
    this.incidentNumber = registerOutput<int>('incidentNumber');
    this.incidentUrl = registerOutput<String>('incidentUrl');
    this.labels = registerOutput<List<IncidentLabelResponse>?>('labels');
    this.lastActivityTimeUtc = registerOutput<String?>('lastActivityTimeUtc');
    this.lastModifiedTimeUtc = registerOutput<String>('lastModifiedTimeUtc');
    this.name = registerOutput<String>('name');
    this.owner = registerOutput<IncidentOwnerInfoResponse?>('owner');
    this.providerIncidentId = registerOutput<String>('providerIncidentId');
    this.providerName = registerOutput<String>('providerName');
    this.relatedAnalyticRuleIds = registerOutput<List<String>>('relatedAnalyticRuleIds');
    this.severity = registerOutput<String>('severity');
    this.status = registerOutput<String>('status');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.title = registerOutput<String>('title');
    this.type = registerOutput<String>('type');
  }
}
