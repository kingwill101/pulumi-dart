import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_action_args.dart';
import 'scheduled_action_state.dart';

/// Manages an Azure Cost Management Scheduled Action.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.costmanagement.ScheduledAction("example", {
///     name: "examplescheduledaction",
///     displayName: "Report Last 6 Months",
///     viewId: "/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.CostManagement/views/ms:CostByService",
///     emailAddressSender: "platformteam@test.com",
///     emailSubject: "Cost Management Report",
///     emailAddresses: ["example@example.com"],
///     message: "Hi all, take a look at last 6 months spending!",
///     frequency: "Daily",
///     startDate: "2023-01-02T00:00:00Z",
///     endDate: "2023-02-02T00:00:00Z",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.costmanagement.ScheduledAction("example",
///     name="examplescheduledaction",
///     display_name="Report Last 6 Months",
///     view_id="/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.CostManagement/views/ms:CostByService",
///     email_address_sender="platformteam@test.com",
///     email_subject="Cost Management Report",
///     email_addresses=["example@example.com"],
///     message="Hi all, take a look at last 6 months spending!",
///     frequency="Daily",
///     start_date="2023-01-02T00:00:00Z",
///     end_date="2023-02-02T00:00:00Z")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.CostManagement.ScheduledAction("example", new()
///     {
///         Name = "examplescheduledaction",
///         DisplayName = "Report Last 6 Months",
///         ViewId = "/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.CostManagement/views/ms:CostByService",
///         EmailAddressSender = "platformteam@test.com",
///         EmailSubject = "Cost Management Report",
///         EmailAddresses = new[]
///         {
///             "example@example.com",
///         },
///         Message = "Hi all, take a look at last 6 months spending!",
///         Frequency = "Daily",
///         StartDate = "2023-01-02T00:00:00Z",
///         EndDate = "2023-02-02T00:00:00Z",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/costmanagement"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costmanagement.NewScheduledAction(ctx, "example", &costmanagement.ScheduledActionArgs{
/// 			Name:               pulumi.String("examplescheduledaction"),
/// 			DisplayName:        pulumi.String("Report Last 6 Months"),
/// 			ViewId:             pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.CostManagement/views/ms:CostByService"),
/// 			EmailAddressSender: pulumi.String("platformteam@test.com"),
/// 			EmailSubject:       pulumi.String("Cost Management Report"),
/// 			EmailAddresses: pulumi.StringArray{
/// 				pulumi.String("example@example.com"),
/// 			},
/// 			Message:   pulumi.String("Hi all, take a look at last 6 months spending!"),
/// 			Frequency: pulumi.String("Daily"),
/// 			StartDate: pulumi.String("2023-01-02T00:00:00Z"),
/// 			EndDate:   pulumi.String("2023-02-02T00:00:00Z"),
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
/// import com.pulumi.azure.costmanagement.ScheduledAction;
/// import com.pulumi.azure.costmanagement.ScheduledActionArgs;
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
///         var example = new ScheduledAction("example", ScheduledActionArgs.builder()
///             .name("examplescheduledaction")
///             .displayName("Report Last 6 Months")
///             .viewId("/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.CostManagement/views/ms:CostByService")
///             .emailAddressSender("platformteam@test.com")
///             .emailSubject("Cost Management Report")
///             .emailAddresses("example@example.com")
///             .message("Hi all, take a look at last 6 months spending!")
///             .frequency("Daily")
///             .startDate("2023-01-02T00:00:00Z")
///             .endDate("2023-02-02T00:00:00Z")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:costmanagement:ScheduledAction
///     properties:
///       name: examplescheduledaction
///       displayName: Report Last 6 Months
///       viewId: /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.CostManagement/views/ms:CostByService
///       emailAddressSender: platformteam@test.com
///       emailSubject: Cost Management Report
///       emailAddresses:
///         - example@example.com
///       message: Hi all, take a look at last 6 months spending!
///       frequency: Daily
///       startDate: 2023-01-02T00:00:00Z
///       endDate: 2023-02-02T00:00:00Z
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.CostManagement` - 2023-08-01
///
/// ## Import
///
/// Azure Cost Management Scheduled Actions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:costmanagement/scheduledAction:ScheduledAction example /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.CostManagement/scheduledActions/scheduledaction1
/// ```
class ScheduledAction extends pulumi.CustomResource {
  /// UTC day on which cost analysis data will be emailed. Must be between `1` and `31`. This property is applicable when `frequency` is `Monthly`.
  late final pulumi.Output<int?> dayOfMonth;
  /// Specifies a list of day names on which cost analysis data will be emailed. This property is applicable when frequency is `Weekly` or `Monthly`. Possible values are `Friday`, `Monday`, `Saturday`, `Sunday`, `Thursday`, `Tuesday` and `Wednesday`.
  late final pulumi.Output<List<String>?> daysOfWeeks;
  /// User visible input name of the Cost Management Scheduled Action.
  late final pulumi.Output<String> displayName;
  /// Email address of the point of contact that should get the unsubscribe requests of Scheduled Action notification emails.
  late final pulumi.Output<String> emailAddressSender;
  /// Specifies a list of email addresses that will receive the Scheduled Action.
  late final pulumi.Output<List<String>> emailAddresses;
  /// Subject of the email. Length is limited to 70 characters.
  late final pulumi.Output<String> emailSubject;
  /// The end date and time of the Scheduled Action (UTC).
  late final pulumi.Output<String> endDate;
  /// Frequency of the schedule. Possible values are `Daily`, `Monthly` and `Weekly`. Value `Monthly` requires either `weeks_of_month` and `days_of_week` or `day_of_month` to be specified. Value `Weekly` requires `days_of_week` to be specified.
  late final pulumi.Output<String> frequency;
  /// UTC time at which cost analysis data will be emailed. Must be between `0` and `23`.
  late final pulumi.Output<int?> hourOfDay;
  /// Message to be added in the email. Length is limited to 250 characters.
  late final pulumi.Output<String?> message;
  /// The name which should be used for this Azure Cost Management Scheduled Action. Changing this forces a new Azure Cost Management Scheduled Action to be created.
  late final pulumi.Output<String> name;
  /// The start date and time of the Scheduled Action (UTC).
  late final pulumi.Output<String> startDate;
  /// The ID of the Cost Management View that is used by the Scheduled Action. Changing this forces a new resource to be created.
  late final pulumi.Output<String> viewId;
  /// Specifies a list of weeks in which cost analysis data will be emailed. This property is applicable when `frequency` is `Monthly` and used in combination with `days_of_week`. Possible values are `First`, `Fourth`, `Last`, `Second` and `Third`.
  late final pulumi.Output<List<String>?> weeksOfMonths;

  /// Creates a new [ScheduledAction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScheduledAction]. {@macro pulumi_costmanagement_scheduled_action_scheduled_action_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScheduledAction(
    String name, {
    ScheduledActionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:costmanagement/scheduledAction:ScheduledAction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dayOfMonth = registerOutput<int?>('dayOfMonth');
    daysOfWeeks = registerOutput<List<String>?>('daysOfWeeks');
    displayName = registerOutput<String>('displayName');
    emailAddressSender = registerOutput<String>('emailAddressSender');
    emailAddresses = registerOutput<List<String>>('emailAddresses');
    emailSubject = registerOutput<String>('emailSubject');
    endDate = registerOutput<String>('endDate');
    frequency = registerOutput<String>('frequency');
    hourOfDay = registerOutput<int?>('hourOfDay');
    message = registerOutput<String?>('message');
    this.name = registerOutput<String>('name');
    startDate = registerOutput<String>('startDate');
    viewId = registerOutput<String>('viewId');
    weeksOfMonths = registerOutput<List<String>?>('weeksOfMonths');
  }

  /// Gets an existing [ScheduledAction] resource's state with the given [name] and [id].
  static ScheduledAction get(
    String name,
    pulumi.Input<String> id, {
    ScheduledActionState? state,
  }) {
    return ScheduledAction._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ScheduledAction._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:costmanagement/scheduledAction:ScheduledAction',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dayOfMonth = registerOutput<int?>('dayOfMonth');
    daysOfWeeks = registerOutput<List<String>?>('daysOfWeeks');
    displayName = registerOutput<String>('displayName');
    emailAddressSender = registerOutput<String>('emailAddressSender');
    emailAddresses = registerOutput<List<String>>('emailAddresses');
    emailSubject = registerOutput<String>('emailSubject');
    endDate = registerOutput<String>('endDate');
    frequency = registerOutput<String>('frequency');
    hourOfDay = registerOutput<int?>('hourOfDay');
    message = registerOutput<String?>('message');
    this.name = registerOutput<String>('name');
    startDate = registerOutput<String>('startDate');
    viewId = registerOutput<String>('viewId');
    weeksOfMonths = registerOutput<List<String>?>('weeksOfMonths');
  }
}
