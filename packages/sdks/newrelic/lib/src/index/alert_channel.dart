import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_channel_args.dart';
import 'alert_channel_config.dart';
import 'alert_channel_state.dart';

/// Use this resource to create and manage New Relic alert channels.
///
/// &gt; **WARNING:** The `newrelic.AlertChannel` resource is **deprecated** and will be **removed in a future major release**. As an alternative, you can set up channels using a combination of the newer resources `newrelic.NotificationDestination` and `newrelic.NotificationChannel`. We **strongly recommend** migrating to these new resources at the earliest. Please refer to this example for a detailed illustration on setting up channels with these resources.
///
/// ## Example Usage
///
/// ##### Email
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.AlertChannel("foo", {
///     name: "foo",
///     type: "email",
///     config: {
///         recipients: "foo@example.com",
///         includeJsonAttachment: "true",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.AlertChannel("foo",
///     name="foo",
///     type="email",
///     config={
///         "recipients": "foo@example.com",
///         "include_json_attachment": "true",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.AlertChannel("foo", new()
///     {
///         Name = "foo",
///         Type = "email",
///         Config = new NewRelic.Inputs.AlertChannelConfigArgs
///         {
///             Recipients = "foo@example.com",
///             IncludeJsonAttachment = "true",
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
/// 		_, err := newrelic.NewAlertChannel(ctx, "foo", &newrelic.AlertChannelArgs{
/// 			Name: pulumi.String("foo"),
/// 			Type: pulumi.String("email"),
/// 			Config: &newrelic.AlertChannelConfigArgs{
/// 				Recipients:            pulumi.String("foo@example.com"),
/// 				IncludeJsonAttachment: pulumi.String("true"),
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
///         var foo = new AlertChannel("foo", AlertChannelArgs.builder()
///             .name("foo")
///             .type("email")
///             .config(AlertChannelConfigArgs.builder()
///                 .recipients("foo@example.com")
///                 .includeJsonAttachment("true")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:AlertChannel
///     properties:
///       name: foo
///       type: email
///       config:
///         recipients: foo@example.com
///         includeJsonAttachment: 'true'
/// ```
///
/// See additional examples.
///
/// ## Additional Examples
///
/// ##### Slack
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.AlertChannel("foo", {
///     name: "slack-example",
///     type: "slack",
///     config: {
///         url: "https://hooks.slack.com/services/XXXXXXX/XXXXXXX/XXXXXXXXXX",
///         channel: "example-alerts-channel",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.AlertChannel("foo",
///     name="slack-example",
///     type="slack",
///     config={
///         "url": "https://hooks.slack.com/services/XXXXXXX/XXXXXXX/XXXXXXXXXX",
///         "channel": "example-alerts-channel",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.AlertChannel("foo", new()
///     {
///         Name = "slack-example",
///         Type = "slack",
///         Config = new NewRelic.Inputs.AlertChannelConfigArgs
///         {
///             Url = "https://hooks.slack.com/services/XXXXXXX/XXXXXXX/XXXXXXXXXX",
///             Channel = "example-alerts-channel",
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
/// 		_, err := newrelic.NewAlertChannel(ctx, "foo", &newrelic.AlertChannelArgs{
/// 			Name: pulumi.String("slack-example"),
/// 			Type: pulumi.String("slack"),
/// 			Config: &newrelic.AlertChannelConfigArgs{
/// 				Url:     pulumi.String("https://hooks.slack.com/services/XXXXXXX/XXXXXXX/XXXXXXXXXX"),
/// 				Channel: pulumi.String("example-alerts-channel"),
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
///         var foo = new AlertChannel("foo", AlertChannelArgs.builder()
///             .name("slack-example")
///             .type("slack")
///             .config(AlertChannelConfigArgs.builder()
///                 .url("https://hooks.slack.com/services/XXXXXXX/XXXXXXX/XXXXXXXXXX")
///                 .channel("example-alerts-channel")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:AlertChannel
///     properties:
///       name: slack-example
///       type: slack
///       config:
///         url: https://hooks.slack.com/services/XXXXXXX/XXXXXXX/XXXXXXXXXX
///         channel: example-alerts-channel
/// ```
///
///
/// &gt; **NOTE:** For instructions on setting up Webhooks with Slack, please visit the article linked under the argument `slack` in the aforementioned configuration, or [this article](https://docs.newrelic.com/docs/alerts-applied-intelligence/new-relic-alerts/alert-notifications/notification-channels-control-where-send-alerts/#slack) in New Relic's docs for additional details on setting up the `New Relic Alerts` Slack application, and subsequently using the generated Webhook URL.
///
/// ##### OpsGenie
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.AlertChannel("foo", {
///     name: "opsgenie-example",
///     type: "opsgenie",
///     config: {
///         apiKey: "abc123",
///         teams: "team1, team2",
///         tags: "tag1, tag2",
///         recipients: "user1@domain.com, user2@domain.com",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.AlertChannel("foo",
///     name="opsgenie-example",
///     type="opsgenie",
///     config={
///         "api_key": "abc123",
///         "teams": "team1, team2",
///         "tags": "tag1, tag2",
///         "recipients": "user1@domain.com, user2@domain.com",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.AlertChannel("foo", new()
///     {
///         Name = "opsgenie-example",
///         Type = "opsgenie",
///         Config = new NewRelic.Inputs.AlertChannelConfigArgs
///         {
///             ApiKey = "abc123",
///             Teams = "team1, team2",
///             Tags = "tag1, tag2",
///             Recipients = "user1@domain.com, user2@domain.com",
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
/// 		_, err := newrelic.NewAlertChannel(ctx, "foo", &newrelic.AlertChannelArgs{
/// 			Name: pulumi.String("opsgenie-example"),
/// 			Type: pulumi.String("opsgenie"),
/// 			Config: &newrelic.AlertChannelConfigArgs{
/// 				ApiKey:     pulumi.String("abc123"),
/// 				Teams:      pulumi.String("team1, team2"),
/// 				Tags:       pulumi.String("tag1, tag2"),
/// 				Recipients: pulumi.String("user1@domain.com, user2@domain.com"),
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
///         var foo = new AlertChannel("foo", AlertChannelArgs.builder()
///             .name("opsgenie-example")
///             .type("opsgenie")
///             .config(AlertChannelConfigArgs.builder()
///                 .apiKey("abc123")
///                 .teams("team1, team2")
///                 .tags("tag1, tag2")
///                 .recipients("user1@domain.com, user2@domain.com")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:AlertChannel
///     properties:
///       name: opsgenie-example
///       type: opsgenie
///       config:
///         apiKey: abc123
///         teams: team1, team2
///         tags: tag1, tag2
///         recipients: user1@domain.com, user2@domain.com
/// ```
///
///
/// ##### PagerDuty
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.AlertChannel("foo", {
///     name: "pagerduty-example",
///     type: "pagerduty",
///     config: {
///         serviceKey: "abc123",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.AlertChannel("foo",
///     name="pagerduty-example",
///     type="pagerduty",
///     config={
///         "service_key": "abc123",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.AlertChannel("foo", new()
///     {
///         Name = "pagerduty-example",
///         Type = "pagerduty",
///         Config = new NewRelic.Inputs.AlertChannelConfigArgs
///         {
///             ServiceKey = "abc123",
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
/// 		_, err := newrelic.NewAlertChannel(ctx, "foo", &newrelic.AlertChannelArgs{
/// 			Name: pulumi.String("pagerduty-example"),
/// 			Type: pulumi.String("pagerduty"),
/// 			Config: &newrelic.AlertChannelConfigArgs{
/// 				ServiceKey: pulumi.String("abc123"),
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
///         var foo = new AlertChannel("foo", AlertChannelArgs.builder()
///             .name("pagerduty-example")
///             .type("pagerduty")
///             .config(AlertChannelConfigArgs.builder()
///                 .serviceKey("abc123")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:AlertChannel
///     properties:
///       name: pagerduty-example
///       type: pagerduty
///       config:
///         serviceKey: abc123
/// ```
///
///
/// ##### VictorOps
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.AlertChannel("foo", {
///     name: "victorops-example",
///     type: "victorops",
///     config: {
///         key: "abc123",
///         routeKey: "/example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.AlertChannel("foo",
///     name="victorops-example",
///     type="victorops",
///     config={
///         "key": "abc123",
///         "route_key": "/example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.AlertChannel("foo", new()
///     {
///         Name = "victorops-example",
///         Type = "victorops",
///         Config = new NewRelic.Inputs.AlertChannelConfigArgs
///         {
///             Key = "abc123",
///             RouteKey = "/example",
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
/// 		_, err := newrelic.NewAlertChannel(ctx, "foo", &newrelic.AlertChannelArgs{
/// 			Name: pulumi.String("victorops-example"),
/// 			Type: pulumi.String("victorops"),
/// 			Config: &newrelic.AlertChannelConfigArgs{
/// 				Key:      pulumi.String("abc123"),
/// 				RouteKey: pulumi.String("/example"),
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
///         var foo = new AlertChannel("foo", AlertChannelArgs.builder()
///             .name("victorops-example")
///             .type("victorops")
///             .config(AlertChannelConfigArgs.builder()
///                 .key("abc123")
///                 .routeKey("/example")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:AlertChannel
///     properties:
///       name: victorops-example
///       type: victorops
///       config:
///         key: abc123
///         routeKey: /example
/// ```
///
///
/// ##### Webhook
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.AlertChannel("foo", {
///     name: "webhook-example",
///     type: "webhook",
///     config: {
///         baseUrl: "http://www.test.com",
///         payloadType: "application/json",
///         payload: {
///             condition_name: "$CONDITION_NAME",
///             policy_name: "$POLICY_NAME",
///         },
///         headers: {
///             header1: value1,
///             header2: value2,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.AlertChannel("foo",
///     name="webhook-example",
///     type="webhook",
///     config={
///         "base_url": "http://www.test.com",
///         "payload_type": "application/json",
///         "payload": {
///             "condition_name": "$CONDITION_NAME",
///             "policy_name": "$POLICY_NAME",
///         },
///         "headers": {
///             "header1": value1,
///             "header2": value2,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.AlertChannel("foo", new()
///     {
///         Name = "webhook-example",
///         Type = "webhook",
///         Config = new NewRelic.Inputs.AlertChannelConfigArgs
///         {
///             BaseUrl = "http://www.test.com",
///             PayloadType = "application/json",
///             Payload =
///             {
///                 { "condition_name", "$CONDITION_NAME" },
///                 { "policy_name", "$POLICY_NAME" },
///             },
///             Headers =
///             {
///                 { "header1", value1 },
///                 { "header2", value2 },
///             },
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
/// 		_, err := newrelic.NewAlertChannel(ctx, "foo", &newrelic.AlertChannelArgs{
/// 			Name: pulumi.String("webhook-example"),
/// 			Type: pulumi.String("webhook"),
/// 			Config: &newrelic.AlertChannelConfigArgs{
/// 				BaseUrl:     pulumi.String("http://www.test.com"),
/// 				PayloadType: pulumi.String("application/json"),
/// 				Payload: pulumi.StringMap{
/// 					"condition_name": pulumi.String("$CONDITION_NAME"),
/// 					"policy_name":    pulumi.String("$POLICY_NAME"),
/// 				},
/// 				Headers: pulumi.StringMap{
/// 					"header1": pulumi.Any(value1),
/// 					"header2": pulumi.Any(value2),
/// 				},
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
///         var foo = new AlertChannel("foo", AlertChannelArgs.builder()
///             .name("webhook-example")
///             .type("webhook")
///             .config(AlertChannelConfigArgs.builder()
///                 .baseUrl("http://www.test.com")
///                 .payloadType("application/json")
///                 .payload(Map.ofEntries(
///                     Map.entry("condition_name", "$CONDITION_NAME"),
///                     Map.entry("policy_name", "$POLICY_NAME")
///                 ))
///                 .headers(Map.ofEntries(
///                     Map.entry("header1", value1),
///                     Map.entry("header2", value2)
///                 ))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:AlertChannel
///     properties:
///       name: webhook-example
///       type: webhook
///       config:
///         baseUrl: http://www.test.com
///         payloadType: application/json
///         payload:
///           condition_name: $CONDITION_NAME
///           policy_name: $POLICY_NAME
///         headers:
///           header1: ${value1}
///           header2: ${value2}
/// ```
///
///
/// ##### Webhook with complex payload
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.AlertChannel("foo", {
///     name: "webhook-example",
///     type: "webhook",
///     config: {
///         baseUrl: "http://www.test.com",
///         payloadType: "application/json",
///         payloadString: `{
///   \\"my_custom_values\\": {
///     \\"condition_name\\": \\"CONDITION_NAME\\",
///     \\"policy_name\\": \\"POLICY_NAME\\"
///   }
/// }
/// `,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.AlertChannel("foo",
///     name="webhook-example",
///     type="webhook",
///     config={
///         "base_url": "http://www.test.com",
///         "payload_type": "application/json",
///         "payload_string": """{
///   \"my_custom_values\": {
///     \"condition_name\": \"$CONDITION_NAME\",
///     \"policy_name\": \"$POLICY_NAME\"
///   }
/// }
/// """,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.AlertChannel("foo", new()
///     {
///         Name = "webhook-example",
///         Type = "webhook",
///         Config = new NewRelic.Inputs.AlertChannelConfigArgs
///         {
///             BaseUrl = "http://www.test.com",
///             PayloadType = "application/json",
///             PayloadString = @"{
///   \""my_custom_values\"": {
///     \""condition_name\"": \""$CONDITION_NAME\"",
///     \""policy_name\"": \""$POLICY_NAME\""
///   }
/// }
/// ",
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
/// 		_, err := newrelic.NewAlertChannel(ctx, "foo", &newrelic.AlertChannelArgs{
/// 			Name: pulumi.String("webhook-example"),
/// 			Type: pulumi.String("webhook"),
/// 			Config: &newrelic.AlertChannelConfigArgs{
/// 				BaseUrl:     pulumi.String("http://www.test.com"),
/// 				PayloadType: pulumi.String("application/json"),
/// 				PayloadString: pulumi.String(`{
///   \"my_custom_values\": {
///     \"condition_name\": \"$CONDITION_NAME\",
///     \"policy_name\": \"$POLICY_NAME\"
///   }
/// }
/// `),
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
///         var foo = new AlertChannel("foo", AlertChannelArgs.builder()
///             .name("webhook-example")
///             .type("webhook")
///             .config(AlertChannelConfigArgs.builder()
///                 .baseUrl("http://www.test.com")
///                 .payloadType("application/json")
///                 .payloadString("""
/// {
///   \"my_custom_values\": {
///     \"condition_name\": \"$CONDITION_NAME\",
///     \"policy_name\": \"$POLICY_NAME\"
///   }
/// }
///                 """)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:AlertChannel
///     properties:
///       name: webhook-example
///       type: webhook
///       config:
///         baseUrl: http://www.test.com
///         payloadType: application/json
///         payloadString: |
///           {
///             \"my_custom_values\": {
///               \"condition_name\": \"$CONDITION_NAME\",
///               \"policy_name\": \"$POLICY_NAME\"
///             }
///           }
/// ```
///
///
/// ## Import
///
/// Alert channels can be imported using the `id`, e.g.
///
/// ```bash
/// $ terraform import newrelic_alert_channel.main <id>
/// ```
///
/// &gt; **NOTE:** Sensitive data such as channel API keys, service keys, etc are not returned from the underlying API for security reasons and may not be set in state when importing.
class AlertChannel extends pulumi.CustomResource {
  /// Determines the New Relic account where the alert channel will be created. Defaults to the account associated with the API key used.
  late final pulumi.Output<String> accountId;

  /// A nested block that describes an alert channel configuration.  Only one config block is permitted per alert channel definition.  See Nested config blocks below for details.
  late final pulumi.Output<AlertChannelConfig?> config;

  /// The name of the channel.
  late final pulumi.Output<String> name;

  /// The type of channel.  One of: `email`, `slack`, `opsgenie`, `pagerduty`, `victorops`, or `webhook`.
  late final pulumi.Output<String> type;

  /// Creates a new [AlertChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertChannel]. {@macro pulumi_index_alert_channel_alert_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertChannel(
    String name, {
    AlertChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/alertChannel:AlertChannel',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<AlertChannelConfig?>('config');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [AlertChannel] resource's state with the given [name] and [id].
  static AlertChannel get(
    String name,
    pulumi.Input<String> id, {
    AlertChannelState? state,
  }) {
    return AlertChannel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AlertChannel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/alertChannel:AlertChannel',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<AlertChannelConfig?>('config');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
