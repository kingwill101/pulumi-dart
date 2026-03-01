import 'package:pulumi/pulumi.dart' as pulumi;
import 'governance_assignment_additional_data_response.dart';
import 'governance_assignment_args.dart';
import 'governance_email_notification_response.dart';
import 'remediation_eta_response.dart';

/// Governance assignment over a given scope
///
/// Uses Azure REST API version 2022-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-01-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Governance assignment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var governanceAssignment = new AzureNative.Security.GovernanceAssignment("governanceAssignment", new()
///     {
///         AdditionalData = new AzureNative.Security.Inputs.GovernanceAssignmentAdditionalDataArgs
///         {
///             TicketLink = "https://snow.com",
///             TicketNumber = 123123,
///             TicketStatus = "Active",
///         },
///         AssessmentName = "6b9421dd-5555-2251-9b3d-2be58e2f82cd",
///         AssignmentKey = "6634ff9f-127b-4bf2-8e6e-b1737f5e789c",
///         GovernanceEmailNotification = new AzureNative.Security.Inputs.GovernanceEmailNotificationArgs
///         {
///             DisableManagerEmailNotification = false,
///             DisableOwnerEmailNotification = false,
///         },
///         IsGracePeriod = true,
///         Owner = "user@contoso.com",
///         RemediationDueDate = "2022-01-07T13:00:00.0000000Z",
///         RemediationEta = new AzureNative.Security.Inputs.RemediationEtaArgs
///         {
///             Eta = "2022-01-08T13:00:00.0000000Z",
///             Justification = "Justification of ETA",
///         },
///         Scope = "subscriptions/c32e05d9-7207-4e22-bdf4-4f7d9c72e5fd/resourceGroups/compute_servers/providers/Microsoft.Compute/virtualMachines/win2012",
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewGovernanceAssignment(ctx, "governanceAssignment", &security.GovernanceAssignmentArgs{
/// 			AdditionalData: &security.GovernanceAssignmentAdditionalDataArgs{
/// 				TicketLink:   pulumi.String("https://snow.com"),
/// 				TicketNumber: pulumi.Int(123123),
/// 				TicketStatus: pulumi.String("Active"),
/// 			},
/// 			AssessmentName: pulumi.String("6b9421dd-5555-2251-9b3d-2be58e2f82cd"),
/// 			AssignmentKey:  pulumi.String("6634ff9f-127b-4bf2-8e6e-b1737f5e789c"),
/// 			GovernanceEmailNotification: &security.GovernanceEmailNotificationArgs{
/// 				DisableManagerEmailNotification: pulumi.Bool(false),
/// 				DisableOwnerEmailNotification:   pulumi.Bool(false),
/// 			},
/// 			IsGracePeriod:      pulumi.Bool(true),
/// 			Owner:              pulumi.String("user@contoso.com"),
/// 			RemediationDueDate: pulumi.String("2022-01-07T13:00:00.0000000Z"),
/// 			RemediationEta: &security.RemediationEtaArgs{
/// 				Eta:           pulumi.String("2022-01-08T13:00:00.0000000Z"),
/// 				Justification: pulumi.String("Justification of ETA"),
/// 			},
/// 			Scope: pulumi.String("subscriptions/c32e05d9-7207-4e22-bdf4-4f7d9c72e5fd/resourceGroups/compute_servers/providers/Microsoft.Compute/virtualMachines/win2012"),
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
/// import com.pulumi.azurenative.security.GovernanceAssignment;
/// import com.pulumi.azurenative.security.GovernanceAssignmentArgs;
/// import com.pulumi.azurenative.security.inputs.GovernanceAssignmentAdditionalDataArgs;
/// import com.pulumi.azurenative.security.inputs.GovernanceEmailNotificationArgs;
/// import com.pulumi.azurenative.security.inputs.RemediationEtaArgs;
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
///         var governanceAssignment = new GovernanceAssignment("governanceAssignment", GovernanceAssignmentArgs.builder()
///             .additionalData(GovernanceAssignmentAdditionalDataArgs.builder()
///                 .ticketLink("https://snow.com")
///                 .ticketNumber(123123)
///                 .ticketStatus("Active")
///                 .build())
///             .assessmentName("6b9421dd-5555-2251-9b3d-2be58e2f82cd")
///             .assignmentKey("6634ff9f-127b-4bf2-8e6e-b1737f5e789c")
///             .governanceEmailNotification(GovernanceEmailNotificationArgs.builder()
///                 .disableManagerEmailNotification(false)
///                 .disableOwnerEmailNotification(false)
///                 .build())
///             .isGracePeriod(true)
///             .owner("user@contoso.com")
///             .remediationDueDate("2022-01-07T13:00:00.0000000Z")
///             .remediationEta(RemediationEtaArgs.builder()
///                 .eta("2022-01-08T13:00:00.0000000Z")
///                 .justification("Justification of ETA")
///                 .build())
///             .scope("subscriptions/c32e05d9-7207-4e22-bdf4-4f7d9c72e5fd/resourceGroups/compute_servers/providers/Microsoft.Compute/virtualMachines/win2012")
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
/// const governanceAssignment = new azure_native.security.GovernanceAssignment("governanceAssignment", {
///     additionalData: {
///         ticketLink: "https://snow.com",
///         ticketNumber: 123123,
///         ticketStatus: "Active",
///     },
///     assessmentName: "6b9421dd-5555-2251-9b3d-2be58e2f82cd",
///     assignmentKey: "6634ff9f-127b-4bf2-8e6e-b1737f5e789c",
///     governanceEmailNotification: {
///         disableManagerEmailNotification: false,
///         disableOwnerEmailNotification: false,
///     },
///     isGracePeriod: true,
///     owner: "user@contoso.com",
///     remediationDueDate: "2022-01-07T13:00:00.0000000Z",
///     remediationEta: {
///         eta: "2022-01-08T13:00:00.0000000Z",
///         justification: "Justification of ETA",
///     },
///     scope: "subscriptions/c32e05d9-7207-4e22-bdf4-4f7d9c72e5fd/resourceGroups/compute_servers/providers/Microsoft.Compute/virtualMachines/win2012",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// governance_assignment = azure_native.security.GovernanceAssignment("governanceAssignment",
///     additional_data={
///         "ticket_link": "https://snow.com",
///         "ticket_number": 123123,
///         "ticket_status": "Active",
///     },
///     assessment_name="6b9421dd-5555-2251-9b3d-2be58e2f82cd",
///     assignment_key="6634ff9f-127b-4bf2-8e6e-b1737f5e789c",
///     governance_email_notification={
///         "disable_manager_email_notification": False,
///         "disable_owner_email_notification": False,
///     },
///     is_grace_period=True,
///     owner="user@contoso.com",
///     remediation_due_date="2022-01-07T13:00:00.0000000Z",
///     remediation_eta={
///         "eta": "2022-01-08T13:00:00.0000000Z",
///         "justification": "Justification of ETA",
///     },
///     scope="subscriptions/c32e05d9-7207-4e22-bdf4-4f7d9c72e5fd/resourceGroups/compute_servers/providers/Microsoft.Compute/virtualMachines/win2012")
///
/// ```
///
/// ```yaml
/// resources:
///   governanceAssignment:
///     type: azure-native:security:GovernanceAssignment
///     properties:
///       additionalData:
///         ticketLink: https://snow.com
///         ticketNumber: 123123
///         ticketStatus: Active
///       assessmentName: 6b9421dd-5555-2251-9b3d-2be58e2f82cd
///       assignmentKey: 6634ff9f-127b-4bf2-8e6e-b1737f5e789c
///       governanceEmailNotification:
///         disableManagerEmailNotification: false
///         disableOwnerEmailNotification: false
///       isGracePeriod: true
///       owner: user@contoso.com
///       remediationDueDate: 2022-01-07T13:00:00.0000000Z
///       remediationEta:
///         eta: 2022-01-08T13:00:00.0000000Z
///         justification: Justification of ETA
///       scope: subscriptions/c32e05d9-7207-4e22-bdf4-4f7d9c72e5fd/resourceGroups/compute_servers/providers/Microsoft.Compute/virtualMachines/win2012
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
/// $ pulumi import azure-native:security:GovernanceAssignment 6634ff9f-127b-4bf2-8e6e-b1737f5e789c /{scope}/providers/Microsoft.Security/assessments/{assessmentName}/governanceAssignments/{assignmentKey}
/// ```
class GovernanceAssignment extends pulumi.CustomResource {
  /// The additional data for the governance assignment - e.g. links to ticket (optional), see example
  late final pulumi.Output<GovernanceAssignmentAdditionalDataResponse?> additionalData;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The email notifications settings for the governance rule, states whether to disable notifications for mangers and owners
  late final pulumi.Output<GovernanceEmailNotificationResponse?> governanceEmailNotification;
  /// Defines whether there is a grace period on the governance assignment
  late final pulumi.Output<bool?> isGracePeriod;
  /// Resource name
  late final pulumi.Output<String> name;
  /// The Owner for the governance assignment - e.g. user@contoso.com - see example
  late final pulumi.Output<String?> owner;
  /// The remediation due-date - after this date Secure Score will be affected (in case of  active grace-period)
  late final pulumi.Output<String> remediationDueDate;
  /// The ETA (estimated time of arrival) for remediation (optional), see example
  late final pulumi.Output<RemediationEtaResponse?> remediationEta;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [GovernanceAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GovernanceAssignment]. {@macro pulumi_security_governance_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GovernanceAssignment(
    String name, {
    GovernanceAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:GovernanceAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalData = registerOutput<GovernanceAssignmentAdditionalDataResponse?>('additionalData');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.governanceEmailNotification = registerOutput<GovernanceEmailNotificationResponse?>('governanceEmailNotification');
    this.isGracePeriod = registerOutput<bool?>('isGracePeriod');
    this.name = registerOutput<String>('name');
    this.owner = registerOutput<String?>('owner');
    this.remediationDueDate = registerOutput<String>('remediationDueDate');
    this.remediationEta = registerOutput<RemediationEtaResponse?>('remediationEta');
    this.type = registerOutput<String>('type');
  }
}
