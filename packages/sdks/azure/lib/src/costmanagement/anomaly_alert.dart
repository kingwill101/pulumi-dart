import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomaly_alert_args.dart';
import 'anomaly_alert_state.dart';

/// Manages a Cost Anomaly Alert.
///
/// &gt; **Note:** Anomaly alerts are sent based on the current access of the rule creator at the time that the email is sent. Learn more [here](https://learn.microsoft.com/en-us/azure/cost-management-billing/understand/analyze-unexpected-charges#create-an-anomaly-alert).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.costmanagement.AnomalyAlert("example", {
///     name: "alertname",
///     displayName: "Alert DisplayName",
///     subscriptionId: "/subscriptions/00000000-0000-0000-0000-000000000000",
///     emailSubject: "My Test Anomaly Alert",
///     emailAddresses: ["example@test.net"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.costmanagement.AnomalyAlert("example",
///     name="alertname",
///     display_name="Alert DisplayName",
///     subscription_id="/subscriptions/00000000-0000-0000-0000-000000000000",
///     email_subject="My Test Anomaly Alert",
///     email_addresses=["example@test.net"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.CostManagement.AnomalyAlert("example", new()
///     {
///         Name = "alertname",
///         DisplayName = "Alert DisplayName",
///         SubscriptionId = "/subscriptions/00000000-0000-0000-0000-000000000000",
///         EmailSubject = "My Test Anomaly Alert",
///         EmailAddresses = new[]
///         {
///             "example@test.net",
///         },
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
/// 		_, err := costmanagement.NewAnomalyAlert(ctx, "example", &costmanagement.AnomalyAlertArgs{
/// 			Name:           pulumi.String("alertname"),
/// 			DisplayName:    pulumi.String("Alert DisplayName"),
/// 			SubscriptionId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000"),
/// 			EmailSubject:   pulumi.String("My Test Anomaly Alert"),
/// 			EmailAddresses: pulumi.StringArray{
/// 				pulumi.String("example@test.net"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_costmanagement_anomalyalert" "example" {
///   name            = "alertname"
///   display_name    = "Alert DisplayName"
///   subscription_id = "/subscriptions/00000000-0000-0000-0000-000000000000"
///   email_subject   = "My Test Anomaly Alert"
///   email_addresses = ["example@test.net"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.costmanagement.AnomalyAlert;
/// import com.pulumi.azure.costmanagement.AnomalyAlertArgs;
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
///         var example = new AnomalyAlert("example", AnomalyAlertArgs.builder()
///             .name("alertname")
///             .displayName("Alert DisplayName")
///             .subscriptionId("/subscriptions/00000000-0000-0000-0000-000000000000")
///             .emailSubject("My Test Anomaly Alert")
///             .emailAddresses("example@test.net")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:costmanagement:AnomalyAlert
///     properties:
///       name: alertname
///       displayName: Alert DisplayName
///       subscriptionId: /subscriptions/00000000-0000-0000-0000-000000000000
///       emailSubject: My Test Anomaly Alert
///       emailAddresses:
///         - example@test.net
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
/// Cost Anomaly Alerts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:costmanagement/anomalyAlert:AnomalyAlert example /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.CostManagement/scheduledActions/dailyanomalybyresourcegroup
/// ```
class AnomalyAlert extends pulumi.CustomResource {
  /// The display name which should be used for this Cost Anomaly Alert.
  late final pulumi.Output<String> displayName;
  /// Specifies a list of email addresses which the Anomaly Alerts are send to.
  late final pulumi.Output<List<String>> emailAddresses;
  /// The email subject of the Cost Anomaly Alerts. Maximum length of the subject is 50.
  late final pulumi.Output<String> emailSubject;
  /// The message of the Cost Anomaly Alert. Maximum length of the message is 100.
  late final pulumi.Output<String?> message;
  /// The name which should be used for this Cost Anomaly Alert. Changing this forces a new resource to be created. The name can contain only lowercase letters, numbers and hyphens.
  late final pulumi.Output<String> name;
  /// The email address of the point of contact that should get the unsubscribe requests and notification emails.
  late final pulumi.Output<String> notificationEmail;
  /// The ID of the Subscription this Cost Anomaly Alert is scoped to. Changing this forces a new resource to be created. When not supplied this defaults to the subscription configured in the provider.
  late final pulumi.Output<String> subscriptionId;

  /// Creates a new [AnomalyAlert].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AnomalyAlert]. {@macro pulumi_costmanagement_anomaly_alert_anomaly_alert_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AnomalyAlert(
    String name, {
    AnomalyAlertArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:costmanagement/anomalyAlert:AnomalyAlert',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    displayName = registerOutput<String>('displayName');
    emailAddresses = registerOutput<List<String>>('emailAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    emailSubject = registerOutput<String>('emailSubject');
    message = registerOutput<String?>('message');
    this.name = registerOutput<String>('name');
    notificationEmail = registerOutput<String>('notificationEmail');
    subscriptionId = registerOutput<String>('subscriptionId');
  }

  /// Gets an existing [AnomalyAlert] resource's state with the given [name] and [id].
  static AnomalyAlert get(
    String name,
    pulumi.Input<String> id, {
    AnomalyAlertState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AnomalyAlert._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AnomalyAlert._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:costmanagement/anomalyAlert:AnomalyAlert',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    displayName = registerOutput<String>('displayName');
    emailAddresses = registerOutput<List<String>>('emailAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    emailSubject = registerOutput<String>('emailSubject');
    message = registerOutput<String?>('message');
    this.name = registerOutput<String>('name');
    notificationEmail = registerOutput<String>('notificationEmail');
    subscriptionId = registerOutput<String>('subscriptionId');
  }

  /// Creates a typed reference to an existing [AnomalyAlert] resource.
  AnomalyAlert.reference(String urn)
    : super(
        'azure:costmanagement/anomalyAlert:AnomalyAlert',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    displayName = registerOutput<String>('displayName');
    emailAddresses = registerOutput<List<String>>('emailAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    emailSubject = registerOutput<String>('emailSubject');
    message = registerOutput<String?>('message');
    this.name = registerOutput<String>('name');
    notificationEmail = registerOutput<String>('notificationEmail');
    subscriptionId = registerOutput<String>('subscriptionId');
  }
}
