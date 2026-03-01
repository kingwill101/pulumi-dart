import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_policy_channel_args.dart';
import 'alert_policy_channel_state.dart';

/// Use this resource to map alert policies to alert channels in New Relic.
///
/// > **WARNING:** The `newrelic.AlertPolicyChannel` resource is **deprecated** and will be **removed in a future major release**. As an alternative, you can map channels to policies using the resource `newrelic.Workflow`, with the channels to be mapped created using a combination of the newer resources `newrelic.NotificationDestination` and `newrelic.NotificationChannel`. We **strongly recommend** migrating to these new resources at the earliest. Please refer to this example for a detailed illustration on setting up channels and workflows with these resources.
///
/// ## Example Usage
///
/// The example below will apply multiple alert channels to an existing New Relic alert policy.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// // Fetches the data for this policy from your New Relic account
/// // and is referenced in the newrelic_alert_policy_channel block below.
/// const examplePolicy = newrelic.getAlertPolicy({
///     name: "my-alert-policy",
/// });
/// // Creates an email alert channel.
/// const emailChannel = new newrelic.AlertChannel("email_channel", {
///     name: "bar",
///     type: "email",
///     config: {
///         recipients: "foo@example.com",
///         includeJsonAttachment: "1",
///     },
/// });
/// // Creates a Slack alert channel.
/// const slackChannel = new newrelic.AlertChannel("slack_channel", {
///     name: "slack-channel-example",
///     type: "slack",
///     config: {
///         channel: "#example-channel",
///         url: "http://example-org.slack.com",
///     },
/// });
/// // Applies the created channels above to the alert policy
/// // referenced at the top of the config.
/// const foo = new newrelic.AlertPolicyChannel("foo", {
///     policyId: examplePolicy.then(examplePolicy => examplePolicy.id),
///     channelIds: [
///         emailChannel.id,
///         slackChannel.id,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// # Fetches the data for this policy from your New Relic account
/// # and is referenced in the newrelic_alert_policy_channel block below.
/// example_policy = newrelic.get_alert_policy(name="my-alert-policy")
/// # Creates an email alert channel.
/// email_channel = newrelic.AlertChannel("email_channel",
///     name="bar",
///     type="email",
///     config={
///         "recipients": "foo@example.com",
///         "include_json_attachment": "1",
///     })
/// # Creates a Slack alert channel.
/// slack_channel = newrelic.AlertChannel("slack_channel",
///     name="slack-channel-example",
///     type="slack",
///     config={
///         "channel": "#example-channel",
///         "url": "http://example-org.slack.com",
///     })
/// # Applies the created channels above to the alert policy
/// # referenced at the top of the config.
/// foo = newrelic.AlertPolicyChannel("foo",
///     policy_id=example_policy.id,
///     channel_ids=[
///         email_channel.id,
///         slack_channel.id,
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Fetches the data for this policy from your New Relic account
///     // and is referenced in the newrelic_alert_policy_channel block below.
///     var examplePolicy = NewRelic.GetAlertPolicy.Invoke(new()
///     {
///         Name = "my-alert-policy",
///     });
///
///     // Creates an email alert channel.
///     var emailChannel = new NewRelic.AlertChannel("email_channel", new()
///     {
///         Name = "bar",
///         Type = "email",
///         Config = new NewRelic.Inputs.AlertChannelConfigArgs
///         {
///             Recipients = "foo@example.com",
///             IncludeJsonAttachment = "1",
///         },
///     });
///
///     // Creates a Slack alert channel.
///     var slackChannel = new NewRelic.AlertChannel("slack_channel", new()
///     {
///         Name = "slack-channel-example",
///         Type = "slack",
///         Config = new NewRelic.Inputs.AlertChannelConfigArgs
///         {
///             Channel = "#example-channel",
///             Url = "http://example-org.slack.com",
///         },
///     });
///
///     // Applies the created channels above to the alert policy
///     // referenced at the top of the config.
///     var foo = new NewRelic.AlertPolicyChannel("foo", new()
///     {
///         PolicyId = examplePolicy.Apply(getAlertPolicyResult => getAlertPolicyResult.Id),
///         ChannelIds = new[]
///         {
///             emailChannel.Id,
///             slackChannel.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Fetches the data for this policy from your New Relic account
/// 		// and is referenced in the newrelic_alert_policy_channel block below.
/// 		examplePolicy, err := newrelic.LookupAlertPolicy(ctx, &newrelic.LookupAlertPolicyArgs{
/// 			Name: "my-alert-policy",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Creates an email alert channel.
/// 		emailChannel, err := newrelic.NewAlertChannel(ctx, "email_channel", &newrelic.AlertChannelArgs{
/// 			Name: pulumi.String("bar"),
/// 			Type: pulumi.String("email"),
/// 			Config: &newrelic.AlertChannelConfigArgs{
/// 				Recipients:            pulumi.String("foo@example.com"),
/// 				IncludeJsonAttachment: pulumi.String("1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Creates a Slack alert channel.
/// 		slackChannel, err := newrelic.NewAlertChannel(ctx, "slack_channel", &newrelic.AlertChannelArgs{
/// 			Name: pulumi.String("slack-channel-example"),
/// 			Type: pulumi.String("slack"),
/// 			Config: &newrelic.AlertChannelConfigArgs{
/// 				Channel: pulumi.String("#example-channel"),
/// 				Url:     pulumi.String("http://example-org.slack.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Applies the created channels above to the alert policy
/// 		// referenced at the top of the config.
/// 		_, err = newrelic.NewAlertPolicyChannel(ctx, "foo", &newrelic.AlertPolicyChannelArgs{
/// 			PolicyId: pulumi.String(examplePolicy.Id),
/// 			ChannelIds: pulumi.StringArray{
/// 				emailChannel.ID(),
/// 				slackChannel.ID(),
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
/// import com.pulumi.newrelic.NewrelicFunctions;
/// import com.pulumi.newrelic.inputs.GetAlertPolicyArgs;
/// import com.pulumi.newrelic.AlertChannel;
/// import com.pulumi.newrelic.AlertChannelArgs;
/// import com.pulumi.newrelic.inputs.AlertChannelConfigArgs;
/// import com.pulumi.newrelic.AlertPolicyChannel;
/// import com.pulumi.newrelic.AlertPolicyChannelArgs;
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
///         // Fetches the data for this policy from your New Relic account
///         // and is referenced in the newrelic_alert_policy_channel block below.
///         final var examplePolicy = NewrelicFunctions.getAlertPolicy(GetAlertPolicyArgs.builder()
///             .name("my-alert-policy")
///             .build());
///
///         // Creates an email alert channel.
///         var emailChannel = new AlertChannel("emailChannel", AlertChannelArgs.builder()
///             .name("bar")
///             .type("email")
///             .config(AlertChannelConfigArgs.builder()
///                 .recipients("foo@example.com")
///                 .includeJsonAttachment("1")
///                 .build())
///             .build());
///
///         // Creates a Slack alert channel.
///         var slackChannel = new AlertChannel("slackChannel", AlertChannelArgs.builder()
///             .name("slack-channel-example")
///             .type("slack")
///             .config(AlertChannelConfigArgs.builder()
///                 .channel("#example-channel")
///                 .url("http://example-org.slack.com")
///                 .build())
///             .build());
///
///         // Applies the created channels above to the alert policy
///         // referenced at the top of the config.
///         var foo = new AlertPolicyChannel("foo", AlertPolicyChannelArgs.builder()
///             .policyId(examplePolicy.id())
///             .channelIds(
///                 emailChannel.id(),
///                 slackChannel.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Creates an email alert channel.
///   emailChannel:
///     type: newrelic:AlertChannel
///     name: email_channel
///     properties:
///       name: bar
///       type: email
///       config:
///         recipients: foo@example.com
///         includeJsonAttachment: '1'
///   # Creates a Slack alert channel.
///   slackChannel:
///     type: newrelic:AlertChannel
///     name: slack_channel
///     properties:
///       name: slack-channel-example
///       type: slack
///       config:
///         channel: '#example-channel'
///         url: http://example-org.slack.com
///   # Applies the created channels above to the alert policy
///   # referenced at the top of the config.
///   foo:
///     type: newrelic:AlertPolicyChannel
///     properties:
///       policyId: ${examplePolicy.id}
///       channelIds:
///         - ${emailChannel.id}
///         - ${slackChannel.id}
/// variables:
///   # Fetches the data for this policy from your New Relic account
///   # and is referenced in the newrelic_alert_policy_channel block below.
///   examplePolicy:
///     fn::invoke:
///       function: newrelic:getAlertPolicy
///       arguments:
///         name: my-alert-policy
/// ```
///
///
/// ## Import
///
/// Alert policy channels can be imported using the following notation: `<policyID>:<channelID>:<channelID>`, e.g.
///
/// ```sh
/// $ pulumi import newrelic:index/alertPolicyChannel:AlertPolicyChannel foo 123456:3462754:2938324
/// ```
///
/// When importing `newrelic.AlertPolicyChannel` resource, the attribute `channel_ids`\* will be set in your Terraform state. You can import multiple channels as long as those channel IDs are included as part of the import ID hash.
class AlertPolicyChannel extends pulumi.CustomResource {
  /// Determines the New Relic account where the alert policy channel will be created. Defaults to the account associated with the API key used.
  late final pulumi.Output<String> accountId;
  /// Array of channel IDs to apply to the specified policy. We recommended sorting channel IDs in ascending order to avoid drift your Terraform state.
  late final pulumi.Output<List<String>> channelIds;
  /// The ID of the policy.
  late final pulumi.Output<String> policyId;

  /// Creates a new [AlertPolicyChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertPolicyChannel]. {@macro pulumi_index_alert_policy_channel_alert_policy_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertPolicyChannel(
    String name, {
    AlertPolicyChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/alertPolicyChannel:AlertPolicyChannel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.channelIds = registerOutput<List<String>>('channelIds');
    this.policyId = registerOutput<String>('policyId');
  }

  /// Gets an existing [AlertPolicyChannel] resource's state with the given [name] and [id].
  static AlertPolicyChannel get(
    String name,
    pulumi.Input<String> id, {
    AlertPolicyChannelState? state,
  }) {
    return AlertPolicyChannel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AlertPolicyChannel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/alertPolicyChannel:AlertPolicyChannel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.channelIds = registerOutput<List<String>>('channelIds');
    this.policyId = registerOutput<String>('policyId');
  }
}
