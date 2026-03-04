import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_policy_args.dart';
import 'alert_policy_state.dart';

/// Use this resource to create and manage New Relic alert policies.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.AlertPolicy("foo", {
///     name: "example",
///     incidentPreference: "PER_POLICY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.AlertPolicy("foo",
///     name="example",
///     incident_preference="PER_POLICY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.AlertPolicy("foo", new()
///     {
///         Name = "example",
///         IncidentPreference = "PER_POLICY",
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
/// 		_, err := newrelic.NewAlertPolicy(ctx, "foo", &newrelic.AlertPolicyArgs{
/// 			Name:               pulumi.String("example"),
/// 			IncidentPreference: pulumi.String("PER_POLICY"),
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
/// import com.pulumi.newrelic.AlertPolicy;
/// import com.pulumi.newrelic.AlertPolicyArgs;
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
///         var foo = new AlertPolicy("foo", AlertPolicyArgs.builder()
///             .name("example")
///             .incidentPreference("PER_POLICY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:AlertPolicy
///     properties:
///       name: example
///       incidentPreference: PER_POLICY
/// ```
///
/// See additional examples.
///
/// ## Additional Examples
///
/// ##### Provision multiple notification channels and add those channels to a policy
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// // Provision a Slack notification channel.
/// const slackChannel = new newrelic.AlertChannel("slack_channel", {
///     name: "slack-example",
///     type: "slack",
///     config: {
///         url: "https://hooks.slack.com/services/<*****>/<*****>",
///         channel: "example-alerts-channel",
///     },
/// });
/// // Provision an email notification channel.
/// const emailChannel = new newrelic.AlertChannel("email_channel", {
///     name: "email-example",
///     type: "email",
///     config: {
///         recipients: "example@testing.com",
///         includeJsonAttachment: "1",
///     },
/// });
/// // Provision the alert policy.
/// const policyWithChannels = new newrelic.AlertPolicy("policy_with_channels", {
///     name: "example-with-channels",
///     incidentPreference: "PER_CONDITION",
///     channelIds: [
///         slackChannel.id,
///         emailChannel.id,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// # Provision a Slack notification channel.
/// slack_channel = newrelic.AlertChannel("slack_channel",
///     name="slack-example",
///     type="slack",
///     config={
///         "url": "https://hooks.slack.com/services/<*****>/<*****>",
///         "channel": "example-alerts-channel",
///     })
/// # Provision an email notification channel.
/// email_channel = newrelic.AlertChannel("email_channel",
///     name="email-example",
///     type="email",
///     config={
///         "recipients": "example@testing.com",
///         "include_json_attachment": "1",
///     })
/// # Provision the alert policy.
/// policy_with_channels = newrelic.AlertPolicy("policy_with_channels",
///     name="example-with-channels",
///     incident_preference="PER_CONDITION",
///     channel_ids=[
///         slack_channel.id,
///         email_channel.id,
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
///     // Provision a Slack notification channel.
///     var slackChannel = new NewRelic.AlertChannel("slack_channel", new()
///     {
///         Name = "slack-example",
///         Type = "slack",
///         Config = new NewRelic.Inputs.AlertChannelConfigArgs
///         {
///             Url = "https://hooks.slack.com/services/<*****>/<*****>",
///             Channel = "example-alerts-channel",
///         },
///     });
///
///     // Provision an email notification channel.
///     var emailChannel = new NewRelic.AlertChannel("email_channel", new()
///     {
///         Name = "email-example",
///         Type = "email",
///         Config = new NewRelic.Inputs.AlertChannelConfigArgs
///         {
///             Recipients = "example@testing.com",
///             IncludeJsonAttachment = "1",
///         },
///     });
///
///     // Provision the alert policy.
///     var policyWithChannels = new NewRelic.AlertPolicy("policy_with_channels", new()
///     {
///         Name = "example-with-channels",
///         IncidentPreference = "PER_CONDITION",
///         ChannelIds = new[]
///         {
///             slackChannel.Id,
///             emailChannel.Id,
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
/// 		// Provision a Slack notification channel.
/// 		slackChannel, err := newrelic.NewAlertChannel(ctx, "slack_channel", &newrelic.AlertChannelArgs{
/// 			Name: pulumi.String("slack-example"),
/// 			Type: pulumi.String("slack"),
/// 			Config: &newrelic.AlertChannelConfigArgs{
/// 				Url:     pulumi.String("https://hooks.slack.com/services/<*****>/<*****>"),
/// 				Channel: pulumi.String("example-alerts-channel"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Provision an email notification channel.
/// 		emailChannel, err := newrelic.NewAlertChannel(ctx, "email_channel", &newrelic.AlertChannelArgs{
/// 			Name: pulumi.String("email-example"),
/// 			Type: pulumi.String("email"),
/// 			Config: &newrelic.AlertChannelConfigArgs{
/// 				Recipients:            pulumi.String("example@testing.com"),
/// 				IncludeJsonAttachment: pulumi.String("1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Provision the alert policy.
/// 		_, err = newrelic.NewAlertPolicy(ctx, "policy_with_channels", &newrelic.AlertPolicyArgs{
/// 			Name:               pulumi.String("example-with-channels"),
/// 			IncidentPreference: pulumi.String("PER_CONDITION"),
/// 			ChannelIds: pulumi.StringArray{
/// 				slackChannel.ID(),
/// 				emailChannel.ID(),
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
/// import com.pulumi.newrelic.AlertChannel;
/// import com.pulumi.newrelic.AlertChannelArgs;
/// import com.pulumi.newrelic.inputs.AlertChannelConfigArgs;
/// import com.pulumi.newrelic.AlertPolicy;
/// import com.pulumi.newrelic.AlertPolicyArgs;
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
///         // Provision a Slack notification channel.
///         var slackChannel = new AlertChannel("slackChannel", AlertChannelArgs.builder()
///             .name("slack-example")
///             .type("slack")
///             .config(AlertChannelConfigArgs.builder()
///                 .url("https://hooks.slack.com/services/<*****>/<*****>")
///                 .channel("example-alerts-channel")
///                 .build())
///             .build());
///
///         // Provision an email notification channel.
///         var emailChannel = new AlertChannel("emailChannel", AlertChannelArgs.builder()
///             .name("email-example")
///             .type("email")
///             .config(AlertChannelConfigArgs.builder()
///                 .recipients("example@testing.com")
///                 .includeJsonAttachment("1")
///                 .build())
///             .build());
///
///         // Provision the alert policy.
///         var policyWithChannels = new AlertPolicy("policyWithChannels", AlertPolicyArgs.builder()
///             .name("example-with-channels")
///             .incidentPreference("PER_CONDITION")
///             .channelIds(
///                 slackChannel.id(),
///                 emailChannel.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Provision a Slack notification channel.
///   slackChannel:
///     type: newrelic:AlertChannel
///     name: slack_channel
///     properties:
///       name: slack-example
///       type: slack
///       config:
///         url: https://hooks.slack.com/services/<*****>/<*****>
///         channel: example-alerts-channel
///   # Provision an email notification channel.
///   emailChannel:
///     type: newrelic:AlertChannel
///     name: email_channel
///     properties:
///       name: email-example
///       type: email
///       config:
///         recipients: example@testing.com
///         includeJsonAttachment: '1'
///   # Provision the alert policy.
///   policyWithChannels:
///     type: newrelic:AlertPolicy
///     name: policy_with_channels
///     properties:
///       name: example-with-channels
///       incidentPreference: PER_CONDITION
///       channelIds:
///         - ${slackChannel.id}
///         - ${emailChannel.id}
/// ```
///
/// &lt;br&gt;
///
/// ##### Reference existing notification channels and add those channel to a policy
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// // Reference an existing Slack notification channel.
/// const slackChannel = newrelic.getAlertChannel({
///     name: "slack-channel-notification",
/// });
/// // Reference an existing email notification channel.
/// const emailChannel = newrelic.getAlertChannel({
///     name: "test@example.com",
/// });
/// // Provision the alert policy.
/// const policyWithChannels = new newrelic.AlertPolicy("policy_with_channels", {
///     name: "example-with-channels",
///     incidentPreference: "PER_CONDITION",
///     channelIds: [
///         slackChannel.then(slackChannel => slackChannel.id),
///         emailChannel.then(emailChannel => emailChannel.id),
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// # Reference an existing Slack notification channel.
/// slack_channel = newrelic.get_alert_channel(name="slack-channel-notification")
/// # Reference an existing email notification channel.
/// email_channel = newrelic.get_alert_channel(name="test@example.com")
/// # Provision the alert policy.
/// policy_with_channels = newrelic.AlertPolicy("policy_with_channels",
///     name="example-with-channels",
///     incident_preference="PER_CONDITION",
///     channel_ids=[
///         slack_channel.id,
///         email_channel.id,
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
///     // Reference an existing Slack notification channel.
///     var slackChannel = NewRelic.GetAlertChannel.Invoke(new()
///     {
///         Name = "slack-channel-notification",
///     });
///
///     // Reference an existing email notification channel.
///     var emailChannel = NewRelic.GetAlertChannel.Invoke(new()
///     {
///         Name = "test@example.com",
///     });
///
///     // Provision the alert policy.
///     var policyWithChannels = new NewRelic.AlertPolicy("policy_with_channels", new()
///     {
///         Name = "example-with-channels",
///         IncidentPreference = "PER_CONDITION",
///         ChannelIds = new[]
///         {
///             slackChannel.Apply(getAlertChannelResult => getAlertChannelResult.Id),
///             emailChannel.Apply(getAlertChannelResult => getAlertChannelResult.Id),
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
/// 		// Reference an existing Slack notification channel.
/// 		slackChannel, err := newrelic.LookupAlertChannel(ctx, &newrelic.LookupAlertChannelArgs{
/// 			Name: "slack-channel-notification",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Reference an existing email notification channel.
/// 		emailChannel, err := newrelic.LookupAlertChannel(ctx, &newrelic.LookupAlertChannelArgs{
/// 			Name: "test@example.com",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Provision the alert policy.
/// 		_, err = newrelic.NewAlertPolicy(ctx, "policy_with_channels", &newrelic.AlertPolicyArgs{
/// 			Name:               pulumi.String("example-with-channels"),
/// 			IncidentPreference: pulumi.String("PER_CONDITION"),
/// 			ChannelIds: pulumi.StringArray{
/// 				pulumi.String(slackChannel.Id),
/// 				pulumi.String(emailChannel.Id),
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
/// import com.pulumi.newrelic.inputs.GetAlertChannelArgs;
/// import com.pulumi.newrelic.AlertPolicy;
/// import com.pulumi.newrelic.AlertPolicyArgs;
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
///         // Reference an existing Slack notification channel.
///         final var slackChannel = NewrelicFunctions.getAlertChannel(GetAlertChannelArgs.builder()
///             .name("slack-channel-notification")
///             .build());
///
///         // Reference an existing email notification channel.
///         final var emailChannel = NewrelicFunctions.getAlertChannel(GetAlertChannelArgs.builder()
///             .name("test@example.com")
///             .build());
///
///         // Provision the alert policy.
///         var policyWithChannels = new AlertPolicy("policyWithChannels", AlertPolicyArgs.builder()
///             .name("example-with-channels")
///             .incidentPreference("PER_CONDITION")
///             .channelIds(
///                 slackChannel.id(),
///                 emailChannel.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Provision the alert policy.
///   policyWithChannels:
///     type: newrelic:AlertPolicy
///     name: policy_with_channels
///     properties:
///       name: example-with-channels
///       incidentPreference: PER_CONDITION
///       channelIds:
///         - ${slackChannel.id}
///         - ${emailChannel.id}
/// variables:
///   # Reference an existing Slack notification channel.
///   slackChannel:
///     fn::invoke:
///       function: newrelic:getAlertChannel
///       arguments:
///         name: slack-channel-notification
///   # Reference an existing email notification channel.
///   emailChannel:
///     fn::invoke:
///       function: newrelic:getAlertChannel
///       arguments:
///         name: test@example.com
/// ```
///
///
/// ## Import
///
/// Alert policies can be imported using a composite ID of `&lt;id&gt;:&lt;account_id&gt;`, where `account_id` is the account number scoped to the alert policy resource.
///
/// Example import:
///
/// ```sh
/// $ pulumi import newrelic:index/alertPolicy:AlertPolicy foo 23423556:4593020
/// ```
///
/// Please note that channel IDs (`channel_ids`) _cannot_ be imported due channels being a separate resource. However, to add channels to an imported alert policy, you can import the policy, add the `channel_ids` attribute with the associated channel IDs, then run `pulumi up`. This will result in the original alert policy being destroyed and a new alert policy being created along with the channels being added to the policy.
class AlertPolicy extends pulumi.CustomResource {
  /// The New Relic account ID to operate on.  This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  late final pulumi.Output<String> accountId;

  /// **DEPRECATED** The `channel_ids` argument is deprecated and will be removed in the next major release of the provider. An array of channel IDs (integers) to assign to the policy. Adding or removing channel IDs from this array will result in a new alert policy resource being created and the old one being destroyed. Also note that channel IDs _cannot_ be imported via `pulumi import` (see Import for info).
  late final pulumi.Output<List<String>?> channelIds;

  /// The rollup strategy for the policy, which can have one of the following values (the default value is `PER_POLICY`):
  /// * `PER_POLICY` - This sets the incident grouping preference of the policy to **One issue per policy**. Refer to [this page](https://docs.newrelic.com/docs/alerts-applied-intelligence/new-relic-alerts/alert-policies/specify-when-alerts-create-incidents/#preference-policy) for more details on this incident grouping preference.
  /// * `PER_CONDITION` - This sets the incident grouping preference of the policy to **One issue per condition**. Refer to [this page](https://docs.newrelic.com/docs/alerts-applied-intelligence/new-relic-alerts/alert-policies/specify-when-alerts-create-incidents/#preference-condition) for more details on this incident grouping preference.
  /// * `PER_CONDITION_AND_TARGET` - This sets the incident grouping preference of the policy to **One issue per condition and signal**. Refer to [this page](https://docs.newrelic.com/docs/alerts-applied-intelligence/new-relic-alerts/alert-policies/specify-when-alerts-create-incidents/#preference-signal) for more details on this incident grouping preference.
  late final pulumi.Output<String?> incidentPreference;

  /// The name of the policy.
  late final pulumi.Output<String> name;

  /// Creates a new [AlertPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertPolicy]. {@macro pulumi_index_alert_policy_alert_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertPolicy(
    String name, {
    AlertPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/alertPolicy:AlertPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    channelIds = registerOutput<List<String>?>('channelIds');
    incidentPreference = registerOutput<String?>('incidentPreference');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [AlertPolicy] resource's state with the given [name] and [id].
  static AlertPolicy get(
    String name,
    pulumi.Input<String> id, {
    AlertPolicyState? state,
  }) {
    return AlertPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AlertPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/alertPolicy:AlertPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    channelIds = registerOutput<List<String>?>('channelIds');
    incidentPreference = registerOutput<String?>('incidentPreference');
    this.name = registerOutput<String>('name');
  }
}
