import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_schedule_args.dart';
import 'job_schedule_state.dart';

/// Links an Automation Runbook and Schedule.
///
/// > **Note:** AzureRM provides this stand-alone azure.automation.JobSchedule and an inlined `job_schedule` property in azurerm_runbook to manage the job schedules. You can only make use of one of these methods to manage a job schedule.
///
/// ## Example Usage
///
/// This is an example of just the Job Schedule.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.automation.JobSchedule("example", {
///     resourceGroupName: "tf-rgr-automation",
///     automationAccountName: "tf-automation-account",
///     scheduleName: "hour",
///     runbookName: "Get-VirtualMachine",
///     parameters: {
///         resourcegroup: "tf-rgr-vm",
///         vmname: "TF-VM-01",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.automation.JobSchedule("example",
///     resource_group_name="tf-rgr-automation",
///     automation_account_name="tf-automation-account",
///     schedule_name="hour",
///     runbook_name="Get-VirtualMachine",
///     parameters={
///         "resourcegroup": "tf-rgr-vm",
///         "vmname": "TF-VM-01",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Automation.JobSchedule("example", new()
///     {
///         ResourceGroupName = "tf-rgr-automation",
///         AutomationAccountName = "tf-automation-account",
///         ScheduleName = "hour",
///         RunbookName = "Get-VirtualMachine",
///         Parameters =
///         {
///             { "resourcegroup", "tf-rgr-vm" },
///             { "vmname", "TF-VM-01" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/automation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := automation.NewJobSchedule(ctx, "example", &automation.JobScheduleArgs{
/// 			ResourceGroupName:     pulumi.String("tf-rgr-automation"),
/// 			AutomationAccountName: pulumi.String("tf-automation-account"),
/// 			ScheduleName:          pulumi.String("hour"),
/// 			RunbookName:           pulumi.String("Get-VirtualMachine"),
/// 			Parameters: pulumi.StringMap{
/// 				"resourcegroup": pulumi.String("tf-rgr-vm"),
/// 				"vmname":        pulumi.String("TF-VM-01"),
/// 			},
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
/// import com.pulumi.azure.automation.JobSchedule;
/// import com.pulumi.azure.automation.JobScheduleArgs;
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
///         var example = new JobSchedule("example", JobScheduleArgs.builder()
///             .resourceGroupName("tf-rgr-automation")
///             .automationAccountName("tf-automation-account")
///             .scheduleName("hour")
///             .runbookName("Get-VirtualMachine")
///             .parameters(Map.ofEntries(
///                 Map.entry("resourcegroup", "tf-rgr-vm"),
///                 Map.entry("vmname", "TF-VM-01")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:automation:JobSchedule
///     properties:
///       resourceGroupName: tf-rgr-automation
///       automationAccountName: tf-automation-account
///       scheduleName: hour
///       runbookName: Get-VirtualMachine
///       parameters:
///         resourcegroup: tf-rgr-vm
///         vmname: TF-VM-01
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Automation` - 2024-10-23
///
/// ## Import
///
/// Automation Job Schedules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/jobSchedule:JobSchedule example "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/schedules/schedule1|/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/runbooks/runbook1"
/// ```
class JobSchedule extends pulumi.CustomResource {
  /// The name of the Automation Account in which the Job Schedule is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> automationAccountName;
  /// The UUID identifying the Automation Job Schedule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> jobScheduleId;
  /// A map of key/value pairs corresponding to the arguments that can be passed to the Runbook. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The parameter keys/names must strictly be in lowercase, even if this is not the case in the runbook. This is due to a limitation in Azure Automation where the parameter names are normalized. The values specified don't have this limitation.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The name of the resource group in which the Job Schedule is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The Resource Manager ID of the Automation Job Schedule.
  late final pulumi.Output<String> resourceManagerId;
  /// Name of a Hybrid Worker Group the Runbook will be executed on. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> runOn;
  /// The name of a Runbook to link to a Schedule. It needs to be in the same Automation Account as the Schedule and Job Schedule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> runbookName;
  /// The name of the Schedule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> scheduleName;

  /// Creates a new [JobSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobSchedule]. {@macro pulumi_automation_job_schedule_job_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobSchedule(
    String name, {
    JobScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/jobSchedule:JobSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.automationAccountName = registerOutput<String>('automationAccountName');
    this.jobScheduleId = registerOutput<String>('jobScheduleId');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.resourceManagerId = registerOutput<String>('resourceManagerId');
    this.runOn = registerOutput<String?>('runOn');
    this.runbookName = registerOutput<String>('runbookName');
    this.scheduleName = registerOutput<String>('scheduleName');
  }

  /// Gets an existing [JobSchedule] resource's state with the given [name] and [id].
  static JobSchedule get(
    String name,
    pulumi.Input<String> id, {
    JobScheduleState? state,
  }) {
    return JobSchedule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  JobSchedule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/jobSchedule:JobSchedule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.automationAccountName = registerOutput<String>('automationAccountName');
    this.jobScheduleId = registerOutput<String>('jobScheduleId');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.resourceManagerId = registerOutput<String>('resourceManagerId');
    this.runOn = registerOutput<String?>('runOn');
    this.runbookName = registerOutput<String>('runbookName');
    this.scheduleName = registerOutput<String>('scheduleName');
  }
}
