import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_channel_args.dart';
import 'notification_channel_state.dart';

/// Use this resource to create and manage New Relic notification channels. Details regarding supported products and permissions can be found [here](https://docs.newrelic.com/docs/alerts-applied-intelligence/notifications/destinations).
///
/// A channel is an entity that is used to configure notifications. It is also called a message template. It is a separate entity from workflows, but a channel is required in order to create a workflow.
///
/// ## Example Usage
///
/// ##### [Webhook](https://docs.newrelic.com/docs/apis/nerdgraph/examples/nerdgraph-api-notifications-channels/#webhook)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationChannel("foo", {
///     accountId: "12345678",
///     name: "webhook-example",
///     type: "WEBHOOK",
///     destinationId: "00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///     product: "IINT",
///     properties: [{
///         key: "payload",
///         value: "name: {{ foo }}",
///         label: "Payload Template",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NotificationChannel("foo",
///     account_id="12345678",
///     name="webhook-example",
///     type="WEBHOOK",
///     destination_id="00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///     product="IINT",
///     properties=[{
///         "key": "payload",
///         "value": "name: {{ foo }}",
///         "label": "Payload Template",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.NotificationChannel("foo", new()
///     {
///         AccountId = "12345678",
///         Name = "webhook-example",
///         Type = "WEBHOOK",
///         DestinationId = "00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///         Product = "IINT",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "payload",
///                 Value = "name: {{ foo }}",
///                 Label = "Payload Template",
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
/// 		_, err := newrelic.NewNotificationChannel(ctx, "foo", &newrelic.NotificationChannelArgs{
/// 			AccountId:     pulumi.String("12345678"),
/// 			Name:          pulumi.String("webhook-example"),
/// 			Type:          pulumi.String("WEBHOOK"),
/// 			DestinationId: pulumi.String("00b6bd1d-ac06-4d3d-bd72-49551e70f7a8"),
/// 			Product:       pulumi.String("IINT"),
/// 			Properties: newrelic.NotificationChannelPropertyArray{
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("payload"),
/// 					Value: pulumi.String("name: {{ foo }}"),
/// 					Label: pulumi.String("Payload Template"),
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
/// import com.pulumi.newrelic.NotificationChannel;
/// import com.pulumi.newrelic.NotificationChannelArgs;
/// import com.pulumi.newrelic.inputs.NotificationChannelPropertyArgs;
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
///         var foo = new NotificationChannel("foo", NotificationChannelArgs.builder()
///             .accountId("12345678")
///             .name("webhook-example")
///             .type("WEBHOOK")
///             .destinationId("00b6bd1d-ac06-4d3d-bd72-49551e70f7a8")
///             .product("IINT")
///             .properties(NotificationChannelPropertyArgs.builder()
///                 .key("payload")
///                 .value("name: {{ foo }}")
///                 .label("Payload Template")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NotificationChannel
///     properties:
///       accountId: 1.2345678e+07
///       name: webhook-example
///       type: WEBHOOK
///       destinationId: 00b6bd1d-ac06-4d3d-bd72-49551e70f7a8
///       product: IINT
///       properties:
///         - key: payload
///           value: 'name: {{ foo }}'
///           label: Payload Template
/// ```
///
/// See additional examples.
///
/// ## Additional Examples
///
/// &gt; **NOTE:** We support all properties. The mentioned properties are just an example.
///
/// ##### [ServiceNow](https://docs.newrelic.com/docs/apis/nerdgraph/examples/nerdgraph-api-notifications-channels/#servicenow)
/// To see the properties’ keys for your account, check ServiceNow incidents table.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationChannel("foo", {
///     accountId: "12345678",
///     name: "servicenow-incident-example",
///     type: "SERVICENOW_INCIDENTS",
///     destinationId: "00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///     product: "IINT",
///     properties: [
///         {
///             key: "description",
///             value: "General description",
///         },
///         {
///             key: "short_description",
///             value: "Short description",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NotificationChannel("foo",
///     account_id="12345678",
///     name="servicenow-incident-example",
///     type="SERVICENOW_INCIDENTS",
///     destination_id="00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///     product="IINT",
///     properties=[
///         {
///             "key": "description",
///             "value": "General description",
///         },
///         {
///             "key": "short_description",
///             "value": "Short description",
///         },
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
///     var foo = new NewRelic.NotificationChannel("foo", new()
///     {
///         AccountId = "12345678",
///         Name = "servicenow-incident-example",
///         Type = "SERVICENOW_INCIDENTS",
///         DestinationId = "00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///         Product = "IINT",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "description",
///                 Value = "General description",
///             },
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "short_description",
///                 Value = "Short description",
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
/// 		_, err := newrelic.NewNotificationChannel(ctx, "foo", &newrelic.NotificationChannelArgs{
/// 			AccountId:     pulumi.String("12345678"),
/// 			Name:          pulumi.String("servicenow-incident-example"),
/// 			Type:          pulumi.String("SERVICENOW_INCIDENTS"),
/// 			DestinationId: pulumi.String("00b6bd1d-ac06-4d3d-bd72-49551e70f7a8"),
/// 			Product:       pulumi.String("IINT"),
/// 			Properties: newrelic.NotificationChannelPropertyArray{
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("description"),
/// 					Value: pulumi.String("General description"),
/// 				},
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("short_description"),
/// 					Value: pulumi.String("Short description"),
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
/// import com.pulumi.newrelic.NotificationChannel;
/// import com.pulumi.newrelic.NotificationChannelArgs;
/// import com.pulumi.newrelic.inputs.NotificationChannelPropertyArgs;
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
///         var foo = new NotificationChannel("foo", NotificationChannelArgs.builder()
///             .accountId("12345678")
///             .name("servicenow-incident-example")
///             .type("SERVICENOW_INCIDENTS")
///             .destinationId("00b6bd1d-ac06-4d3d-bd72-49551e70f7a8")
///             .product("IINT")
///             .properties(
///                 NotificationChannelPropertyArgs.builder()
///                     .key("description")
///                     .value("General description")
///                     .build(),
///                 NotificationChannelPropertyArgs.builder()
///                     .key("short_description")
///                     .value("Short description")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NotificationChannel
///     properties:
///       accountId: 1.2345678e+07
///       name: servicenow-incident-example
///       type: SERVICENOW_INCIDENTS
///       destinationId: 00b6bd1d-ac06-4d3d-bd72-49551e70f7a8
///       product: IINT
///       properties:
///         - key: description
///           value: General description
///         - key: short_description
///           value: Short description
/// ```
///
/// ##### [ServiceNowApp](https://docs.newrelic.com/docs/apis/nerdgraph/examples/nerdgraph-api-notifications-channels/#servicenowapp)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationChannel("foo", {
///     accountId: "12345678",
///     name: "servicenow-app-example",
///     type: "SERVICE_NOW_APP",
///     destinationId: "00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///     product: "IINT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NotificationChannel("foo",
///     account_id="12345678",
///     name="servicenow-app-example",
///     type="SERVICE_NOW_APP",
///     destination_id="00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///     product="IINT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.NotificationChannel("foo", new()
///     {
///         AccountId = "12345678",
///         Name = "servicenow-app-example",
///         Type = "SERVICE_NOW_APP",
///         DestinationId = "00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///         Product = "IINT",
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
/// 		_, err := newrelic.NewNotificationChannel(ctx, "foo", &newrelic.NotificationChannelArgs{
/// 			AccountId:     pulumi.String("12345678"),
/// 			Name:          pulumi.String("servicenow-app-example"),
/// 			Type:          pulumi.String("SERVICE_NOW_APP"),
/// 			DestinationId: pulumi.String("00b6bd1d-ac06-4d3d-bd72-49551e70f7a8"),
/// 			Product:       pulumi.String("IINT"),
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
/// import com.pulumi.newrelic.NotificationChannel;
/// import com.pulumi.newrelic.NotificationChannelArgs;
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
///         var foo = new NotificationChannel("foo", NotificationChannelArgs.builder()
///             .accountId("12345678")
///             .name("servicenow-app-example")
///             .type("SERVICE_NOW_APP")
///             .destinationId("00b6bd1d-ac06-4d3d-bd72-49551e70f7a8")
///             .product("IINT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NotificationChannel
///     properties:
///       accountId: 1.2345678e+07
///       name: servicenow-app-example
///       type: SERVICE_NOW_APP
///       destinationId: 00b6bd1d-ac06-4d3d-bd72-49551e70f7a8
///       product: IINT
/// ```
///
///
/// ##### [Email](https://docs.newrelic.com/docs/apis/nerdgraph/examples/nerdgraph-api-notifications-channels/#email)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationChannel("foo", {
///     accountId: "12345678",
///     name: "email-example",
///     type: "EMAIL",
///     destinationId: "00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///     product: "IINT",
///     properties: [
///         {
///             key: "subject",
///             value: "New Subject Title",
///         },
///         {
///             key: "customDetailsEmail",
///             value: "issue id - {{issueId}}",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NotificationChannel("foo",
///     account_id="12345678",
///     name="email-example",
///     type="EMAIL",
///     destination_id="00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///     product="IINT",
///     properties=[
///         {
///             "key": "subject",
///             "value": "New Subject Title",
///         },
///         {
///             "key": "customDetailsEmail",
///             "value": "issue id - {{issueId}}",
///         },
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
///     var foo = new NewRelic.NotificationChannel("foo", new()
///     {
///         AccountId = "12345678",
///         Name = "email-example",
///         Type = "EMAIL",
///         DestinationId = "00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///         Product = "IINT",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "subject",
///                 Value = "New Subject Title",
///             },
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "customDetailsEmail",
///                 Value = "issue id - {{issueId}}",
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
/// 		_, err := newrelic.NewNotificationChannel(ctx, "foo", &newrelic.NotificationChannelArgs{
/// 			AccountId:     pulumi.String("12345678"),
/// 			Name:          pulumi.String("email-example"),
/// 			Type:          pulumi.String("EMAIL"),
/// 			DestinationId: pulumi.String("00b6bd1d-ac06-4d3d-bd72-49551e70f7a8"),
/// 			Product:       pulumi.String("IINT"),
/// 			Properties: newrelic.NotificationChannelPropertyArray{
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("subject"),
/// 					Value: pulumi.String("New Subject Title"),
/// 				},
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("customDetailsEmail"),
/// 					Value: pulumi.String("issue id - {{issueId}}"),
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
/// import com.pulumi.newrelic.NotificationChannel;
/// import com.pulumi.newrelic.NotificationChannelArgs;
/// import com.pulumi.newrelic.inputs.NotificationChannelPropertyArgs;
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
///         var foo = new NotificationChannel("foo", NotificationChannelArgs.builder()
///             .accountId("12345678")
///             .name("email-example")
///             .type("EMAIL")
///             .destinationId("00b6bd1d-ac06-4d3d-bd72-49551e70f7a8")
///             .product("IINT")
///             .properties(
///                 NotificationChannelPropertyArgs.builder()
///                     .key("subject")
///                     .value("New Subject Title")
///                     .build(),
///                 NotificationChannelPropertyArgs.builder()
///                     .key("customDetailsEmail")
///                     .value("issue id - {{issueId}}")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NotificationChannel
///     properties:
///       accountId: 1.2345678e+07
///       name: email-example
///       type: EMAIL
///       destinationId: 00b6bd1d-ac06-4d3d-bd72-49551e70f7a8
///       product: IINT
///       properties:
///         - key: subject
///           value: New Subject Title
///         - key: customDetailsEmail
///           value: issue id - {{issueId}}
/// ```
///
///
/// ##### [Jira Classic](https://docs.newrelic.com/docs/apis/nerdgraph/examples/nerdgraph-api-notifications-channels/#jira)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationChannel("foo", {
///     accountId: "12345678",
///     name: "jira-example",
///     type: "JIRA_CLASSIC",
///     destinationId: "00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///     product: "ERROR_TRACKING",
///     properties: [
///         {
///             key: "project",
///             value: "10000",
///             label: "Project-Name",
///         },
///         {
///             key: "issuetype",
///             value: "10004",
///             label: "Bug",
///         },
///         {
///             key: "description",
///             value: "Issue ID: {{ issueId }}",
///         },
///         {
///             key: "summary",
///             value: "{{ annotations.title.[0] }}",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NotificationChannel("foo",
///     account_id="12345678",
///     name="jira-example",
///     type="JIRA_CLASSIC",
///     destination_id="00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///     product="ERROR_TRACKING",
///     properties=[
///         {
///             "key": "project",
///             "value": "10000",
///             "label": "Project-Name",
///         },
///         {
///             "key": "issuetype",
///             "value": "10004",
///             "label": "Bug",
///         },
///         {
///             "key": "description",
///             "value": "Issue ID: {{ issueId }}",
///         },
///         {
///             "key": "summary",
///             "value": "{{ annotations.title.[0] }}",
///         },
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
///     var foo = new NewRelic.NotificationChannel("foo", new()
///     {
///         AccountId = "12345678",
///         Name = "jira-example",
///         Type = "JIRA_CLASSIC",
///         DestinationId = "00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///         Product = "ERROR_TRACKING",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "project",
///                 Value = "10000",
///                 Label = "Project-Name",
///             },
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "issuetype",
///                 Value = "10004",
///                 Label = "Bug",
///             },
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "description",
///                 Value = "Issue ID: {{ issueId }}",
///             },
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "summary",
///                 Value = "{{ annotations.title.[0] }}",
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
/// 		_, err := newrelic.NewNotificationChannel(ctx, "foo", &newrelic.NotificationChannelArgs{
/// 			AccountId:     pulumi.String("12345678"),
/// 			Name:          pulumi.String("jira-example"),
/// 			Type:          pulumi.String("JIRA_CLASSIC"),
/// 			DestinationId: pulumi.String("00b6bd1d-ac06-4d3d-bd72-49551e70f7a8"),
/// 			Product:       pulumi.String("ERROR_TRACKING"),
/// 			Properties: newrelic.NotificationChannelPropertyArray{
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("project"),
/// 					Value: pulumi.String("10000"),
/// 					Label: pulumi.String("Project-Name"),
/// 				},
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("issuetype"),
/// 					Value: pulumi.String("10004"),
/// 					Label: pulumi.String("Bug"),
/// 				},
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("description"),
/// 					Value: pulumi.String("Issue ID: {{ issueId }}"),
/// 				},
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("summary"),
/// 					Value: pulumi.String("{{ annotations.title.[0] }}"),
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
/// import com.pulumi.newrelic.NotificationChannel;
/// import com.pulumi.newrelic.NotificationChannelArgs;
/// import com.pulumi.newrelic.inputs.NotificationChannelPropertyArgs;
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
///         var foo = new NotificationChannel("foo", NotificationChannelArgs.builder()
///             .accountId("12345678")
///             .name("jira-example")
///             .type("JIRA_CLASSIC")
///             .destinationId("00b6bd1d-ac06-4d3d-bd72-49551e70f7a8")
///             .product("ERROR_TRACKING")
///             .properties(
///                 NotificationChannelPropertyArgs.builder()
///                     .key("project")
///                     .value("10000")
///                     .label("Project-Name")
///                     .build(),
///                 NotificationChannelPropertyArgs.builder()
///                     .key("issuetype")
///                     .value("10004")
///                     .label("Bug")
///                     .build(),
///                 NotificationChannelPropertyArgs.builder()
///                     .key("description")
///                     .value("Issue ID: {{ issueId }}")
///                     .build(),
///                 NotificationChannelPropertyArgs.builder()
///                     .key("summary")
///                     .value("{{ annotations.title.[0] }}")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NotificationChannel
///     properties:
///       accountId: 1.2345678e+07
///       name: jira-example
///       type: JIRA_CLASSIC
///       destinationId: 00b6bd1d-ac06-4d3d-bd72-49551e70f7a8
///       product: ERROR_TRACKING
///       properties:
///         - key: project
///           value: '10000'
///           label: Project-Name
///         - key: issuetype
///           value: '10004'
///           label: Bug
///         - key: description
///           value: 'Issue ID: {{ issueId }}'
///         - key: summary
///           value: '{{ annotations.title.[0] }}'
/// ```
///
///
/// ##### [PagerDuty with account integration](https://docs.newrelic.com/docs/apis/nerdgraph/examples/nerdgraph-api-notifications-channels/#pagerduty)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationChannel("foo", {
///     accountId: "12345678",
///     name: "pagerduty-account-example",
///     type: "PAGERDUTY_ACCOUNT_INTEGRATION",
///     destinationId: "00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///     product: "IINT",
///     properties: [
///         {
///             key: "summary",
///             value: "General summary",
///         },
///         {
///             key: "service",
///             label: "Service Name",
///             value: "PTQK3FM",
///         },
///         {
///             key: "email",
///             value: "example@email.com",
///         },
///         {
///             key: "customDetails",
///             value: `{
/// \\"id\\":{{json issueId}},
/// \\"IssueURL\\":{{json issuePageUrl}},
/// \\"NewRelic priority\\":{{json priority}},
/// \\"Total Incidents\\":{{json totalIncidents}},
/// \\"Impacted Entities\\":\\"{{#each entitiesData.names}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\\",
/// \\"Runbook\\":\\"{{#each accumulations.runbookUrl}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\\",
/// \\"Description\\":\\"{{#each annotations.description}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\\",
/// \\"isCorrelated\\":{{json isCorrelated}},
/// \\"Alert Policy Names\\":\\"{{#each accumulations.policyName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\\",
/// \\"Alert Condition Names\\":\\"{{#each accumulations.conditionName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\\",
/// \\"Workflow Name\\":{{json workflowName}}
/// }
/// `,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NotificationChannel("foo",
///     account_id="12345678",
///     name="pagerduty-account-example",
///     type="PAGERDUTY_ACCOUNT_INTEGRATION",
///     destination_id="00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///     product="IINT",
///     properties=[
///         {
///             "key": "summary",
///             "value": "General summary",
///         },
///         {
///             "key": "service",
///             "label": "Service Name",
///             "value": "PTQK3FM",
///         },
///         {
///             "key": "email",
///             "value": "example@email.com",
///         },
///         {
///             "key": "customDetails",
///             "value": """{
/// \"id\":{{json issueId}},
/// \"IssueURL\":{{json issuePageUrl}},
/// \"NewRelic priority\":{{json priority}},
/// \"Total Incidents\":{{json totalIncidents}},
/// \"Impacted Entities\":\"{{#each entitiesData.names}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Runbook\":\"{{#each accumulations.runbookUrl}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Description\":\"{{#each annotations.description}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"isCorrelated\":{{json isCorrelated}},
/// \"Alert Policy Names\":\"{{#each accumulations.policyName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Alert Condition Names\":\"{{#each accumulations.conditionName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Workflow Name\":{{json workflowName}}
/// }
/// """,
///         },
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
///     var foo = new NewRelic.NotificationChannel("foo", new()
///     {
///         AccountId = "12345678",
///         Name = "pagerduty-account-example",
///         Type = "PAGERDUTY_ACCOUNT_INTEGRATION",
///         DestinationId = "00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///         Product = "IINT",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "summary",
///                 Value = "General summary",
///             },
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "service",
///                 Label = "Service Name",
///                 Value = "PTQK3FM",
///             },
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "email",
///                 Value = "example@email.com",
///             },
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "customDetails",
///                 Value = @"{
/// \""id\"":{{json issueId}},
/// \""IssueURL\"":{{json issuePageUrl}},
/// \""NewRelic priority\"":{{json priority}},
/// \""Total Incidents\"":{{json totalIncidents}},
/// \""Impacted Entities\"":\""{{#each entitiesData.names}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\"",
/// \""Runbook\"":\""{{#each accumulations.runbookUrl}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\"",
/// \""Description\"":\""{{#each annotations.description}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\"",
/// \""isCorrelated\"":{{json isCorrelated}},
/// \""Alert Policy Names\"":\""{{#each accumulations.policyName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\"",
/// \""Alert Condition Names\"":\""{{#each accumulations.conditionName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\"",
/// \""Workflow Name\"":{{json workflowName}}
/// }
/// ",
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
/// 		_, err := newrelic.NewNotificationChannel(ctx, "foo", &newrelic.NotificationChannelArgs{
/// 			AccountId:     pulumi.String("12345678"),
/// 			Name:          pulumi.String("pagerduty-account-example"),
/// 			Type:          pulumi.String("PAGERDUTY_ACCOUNT_INTEGRATION"),
/// 			DestinationId: pulumi.String("00b6bd1d-ac06-4d3d-bd72-49551e70f7a8"),
/// 			Product:       pulumi.String("IINT"),
/// 			Properties: newrelic.NotificationChannelPropertyArray{
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("summary"),
/// 					Value: pulumi.String("General summary"),
/// 				},
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("service"),
/// 					Label: pulumi.String("Service Name"),
/// 					Value: pulumi.String("PTQK3FM"),
/// 				},
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("email"),
/// 					Value: pulumi.String("example@email.com"),
/// 				},
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key: pulumi.String("customDetails"),
/// 					Value: pulumi.String(`{
/// \"id\":{{json issueId}},
/// \"IssueURL\":{{json issuePageUrl}},
/// \"NewRelic priority\":{{json priority}},
/// \"Total Incidents\":{{json totalIncidents}},
/// \"Impacted Entities\":\"{{#each entitiesData.names}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Runbook\":\"{{#each accumulations.runbookUrl}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Description\":\"{{#each annotations.description}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"isCorrelated\":{{json isCorrelated}},
/// \"Alert Policy Names\":\"{{#each accumulations.policyName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Alert Condition Names\":\"{{#each accumulations.conditionName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Workflow Name\":{{json workflowName}}
/// }
/// `),
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
/// import com.pulumi.newrelic.NotificationChannel;
/// import com.pulumi.newrelic.NotificationChannelArgs;
/// import com.pulumi.newrelic.inputs.NotificationChannelPropertyArgs;
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
///         var foo = new NotificationChannel("foo", NotificationChannelArgs.builder()
///             .accountId("12345678")
///             .name("pagerduty-account-example")
///             .type("PAGERDUTY_ACCOUNT_INTEGRATION")
///             .destinationId("00b6bd1d-ac06-4d3d-bd72-49551e70f7a8")
///             .product("IINT")
///             .properties(
///                 NotificationChannelPropertyArgs.builder()
///                     .key("summary")
///                     .value("General summary")
///                     .build(),
///                 NotificationChannelPropertyArgs.builder()
///                     .key("service")
///                     .label("Service Name")
///                     .value("PTQK3FM")
///                     .build(),
///                 NotificationChannelPropertyArgs.builder()
///                     .key("email")
///                     .value("example@email.com")
///                     .build(),
///                 NotificationChannelPropertyArgs.builder()
///                     .key("customDetails")
///                     .value("""
/// {
/// \"id\":{{json issueId}},
/// \"IssueURL\":{{json issuePageUrl}},
/// \"NewRelic priority\":{{json priority}},
/// \"Total Incidents\":{{json totalIncidents}},
/// \"Impacted Entities\":\"{{#each entitiesData.names}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Runbook\":\"{{#each accumulations.runbookUrl}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Description\":\"{{#each annotations.description}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"isCorrelated\":{{json isCorrelated}},
/// \"Alert Policy Names\":\"{{#each accumulations.policyName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Alert Condition Names\":\"{{#each accumulations.conditionName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Workflow Name\":{{json workflowName}}
/// }
///                     """)
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NotificationChannel
///     properties:
///       accountId: 1.2345678e+07
///       name: pagerduty-account-example
///       type: PAGERDUTY_ACCOUNT_INTEGRATION
///       destinationId: 00b6bd1d-ac06-4d3d-bd72-49551e70f7a8
///       product: IINT
///       properties:
///         - key: summary
///           value: General summary
///         - key: service
///           label: Service Name
///           value: PTQK3FM
///         - key: email
///           value: example@email.com
///         - key: customDetails
///           value: |
///             {
///             \"id\":{{json issueId}},
///             \"IssueURL\":{{json issuePageUrl}},
///             \"NewRelic priority\":{{json priority}},
///             \"Total Incidents\":{{json totalIncidents}},
///             \"Impacted Entities\":\"{{#each entitiesData.names}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
///             \"Runbook\":\"{{#each accumulations.runbookUrl}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
///             \"Description\":\"{{#each annotations.description}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
///             \"isCorrelated\":{{json isCorrelated}},
///             \"Alert Policy Names\":\"{{#each accumulations.policyName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
///             \"Alert Condition Names\":\"{{#each accumulations.conditionName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
///             \"Workflow Name\":{{json workflowName}}
///             }
/// ```
///
///
/// ##### [PagerDuty with service integration](https://docs.newrelic.com/docs/apis/nerdgraph/examples/nerdgraph-api-notifications-channels/#pagerduty)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationChannel("foo", {
///     accountId: "12345678",
///     name: "pagerduty-account-example",
///     type: "PAGERDUTY_SERVICE_INTEGRATION",
///     destinationId: "00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///     product: "IINT",
///     properties: [
///         {
///             key: "summary",
///             value: "General summary",
///         },
///         {
///             key: "customDetails",
///             value: `{
/// \\"id\\":{{json issueId}},
/// \\"IssueURL\\":{{json issuePageUrl}},
/// \\"NewRelic priority\\":{{json priority}},
/// \\"Total Incidents\\":{{json totalIncidents}},
/// \\"Impacted Entities\\":\\"{{#each entitiesData.names}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\\",
/// \\"Runbook\\":\\"{{#each accumulations.runbookUrl}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\\",
/// \\"Description\\":\\"{{#each annotations.description}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\\",
/// \\"isCorrelated\\":{{json isCorrelated}},
/// \\"Alert Policy Names\\":\\"{{#each accumulations.policyName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\\",
/// \\"Alert Condition Names\\":\\"{{#each accumulations.conditionName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\\",
/// \\"Workflow Name\\":{{json workflowName}}
/// }
/// `,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NotificationChannel("foo",
///     account_id="12345678",
///     name="pagerduty-account-example",
///     type="PAGERDUTY_SERVICE_INTEGRATION",
///     destination_id="00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///     product="IINT",
///     properties=[
///         {
///             "key": "summary",
///             "value": "General summary",
///         },
///         {
///             "key": "customDetails",
///             "value": """{
/// \"id\":{{json issueId}},
/// \"IssueURL\":{{json issuePageUrl}},
/// \"NewRelic priority\":{{json priority}},
/// \"Total Incidents\":{{json totalIncidents}},
/// \"Impacted Entities\":\"{{#each entitiesData.names}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Runbook\":\"{{#each accumulations.runbookUrl}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Description\":\"{{#each annotations.description}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"isCorrelated\":{{json isCorrelated}},
/// \"Alert Policy Names\":\"{{#each accumulations.policyName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Alert Condition Names\":\"{{#each accumulations.conditionName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Workflow Name\":{{json workflowName}}
/// }
/// """,
///         },
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
///     var foo = new NewRelic.NotificationChannel("foo", new()
///     {
///         AccountId = "12345678",
///         Name = "pagerduty-account-example",
///         Type = "PAGERDUTY_SERVICE_INTEGRATION",
///         DestinationId = "00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///         Product = "IINT",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "summary",
///                 Value = "General summary",
///             },
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "customDetails",
///                 Value = @"{
/// \""id\"":{{json issueId}},
/// \""IssueURL\"":{{json issuePageUrl}},
/// \""NewRelic priority\"":{{json priority}},
/// \""Total Incidents\"":{{json totalIncidents}},
/// \""Impacted Entities\"":\""{{#each entitiesData.names}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\"",
/// \""Runbook\"":\""{{#each accumulations.runbookUrl}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\"",
/// \""Description\"":\""{{#each annotations.description}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\"",
/// \""isCorrelated\"":{{json isCorrelated}},
/// \""Alert Policy Names\"":\""{{#each accumulations.policyName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\"",
/// \""Alert Condition Names\"":\""{{#each accumulations.conditionName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\"",
/// \""Workflow Name\"":{{json workflowName}}
/// }
/// ",
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
/// 		_, err := newrelic.NewNotificationChannel(ctx, "foo", &newrelic.NotificationChannelArgs{
/// 			AccountId:     pulumi.String("12345678"),
/// 			Name:          pulumi.String("pagerduty-account-example"),
/// 			Type:          pulumi.String("PAGERDUTY_SERVICE_INTEGRATION"),
/// 			DestinationId: pulumi.String("00b6bd1d-ac06-4d3d-bd72-49551e70f7a8"),
/// 			Product:       pulumi.String("IINT"),
/// 			Properties: newrelic.NotificationChannelPropertyArray{
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("summary"),
/// 					Value: pulumi.String("General summary"),
/// 				},
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key: pulumi.String("customDetails"),
/// 					Value: pulumi.String(`{
/// \"id\":{{json issueId}},
/// \"IssueURL\":{{json issuePageUrl}},
/// \"NewRelic priority\":{{json priority}},
/// \"Total Incidents\":{{json totalIncidents}},
/// \"Impacted Entities\":\"{{#each entitiesData.names}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Runbook\":\"{{#each accumulations.runbookUrl}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Description\":\"{{#each annotations.description}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"isCorrelated\":{{json isCorrelated}},
/// \"Alert Policy Names\":\"{{#each accumulations.policyName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Alert Condition Names\":\"{{#each accumulations.conditionName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Workflow Name\":{{json workflowName}}
/// }
/// `),
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
/// import com.pulumi.newrelic.NotificationChannel;
/// import com.pulumi.newrelic.NotificationChannelArgs;
/// import com.pulumi.newrelic.inputs.NotificationChannelPropertyArgs;
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
///         var foo = new NotificationChannel("foo", NotificationChannelArgs.builder()
///             .accountId("12345678")
///             .name("pagerduty-account-example")
///             .type("PAGERDUTY_SERVICE_INTEGRATION")
///             .destinationId("00b6bd1d-ac06-4d3d-bd72-49551e70f7a8")
///             .product("IINT")
///             .properties(
///                 NotificationChannelPropertyArgs.builder()
///                     .key("summary")
///                     .value("General summary")
///                     .build(),
///                 NotificationChannelPropertyArgs.builder()
///                     .key("customDetails")
///                     .value("""
/// {
/// \"id\":{{json issueId}},
/// \"IssueURL\":{{json issuePageUrl}},
/// \"NewRelic priority\":{{json priority}},
/// \"Total Incidents\":{{json totalIncidents}},
/// \"Impacted Entities\":\"{{#each entitiesData.names}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Runbook\":\"{{#each accumulations.runbookUrl}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Description\":\"{{#each annotations.description}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"isCorrelated\":{{json isCorrelated}},
/// \"Alert Policy Names\":\"{{#each accumulations.policyName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Alert Condition Names\":\"{{#each accumulations.conditionName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
/// \"Workflow Name\":{{json workflowName}}
/// }
///                     """)
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NotificationChannel
///     properties:
///       accountId: 1.2345678e+07
///       name: pagerduty-account-example
///       type: PAGERDUTY_SERVICE_INTEGRATION
///       destinationId: 00b6bd1d-ac06-4d3d-bd72-49551e70f7a8
///       product: IINT
///       properties:
///         - key: summary
///           value: General summary
///         - key: customDetails
///           value: |
///             {
///             \"id\":{{json issueId}},
///             \"IssueURL\":{{json issuePageUrl}},
///             \"NewRelic priority\":{{json priority}},
///             \"Total Incidents\":{{json totalIncidents}},
///             \"Impacted Entities\":\"{{#each entitiesData.names}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
///             \"Runbook\":\"{{#each accumulations.runbookUrl}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
///             \"Description\":\"{{#each annotations.description}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
///             \"isCorrelated\":{{json isCorrelated}},
///             \"Alert Policy Names\":\"{{#each accumulations.policyName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
///             \"Alert Condition Names\":\"{{#each accumulations.conditionName}}{{this}}{{#unless @last}}, {{/unless}}{{/each}}\",
///             \"Workflow Name\":{{json workflowName}}
///             }
/// ```
///
///
/// #### Mobile Push
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationChannel("foo", {
///     accountId: "12345678",
///     name: "mobile-push-example",
///     type: "MOBILE_PUSH",
///     destinationId: "00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///     product: "IINT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NotificationChannel("foo",
///     account_id="12345678",
///     name="mobile-push-example",
///     type="MOBILE_PUSH",
///     destination_id="00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///     product="IINT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.NotificationChannel("foo", new()
///     {
///         AccountId = "12345678",
///         Name = "mobile-push-example",
///         Type = "MOBILE_PUSH",
///         DestinationId = "00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///         Product = "IINT",
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
/// 		_, err := newrelic.NewNotificationChannel(ctx, "foo", &newrelic.NotificationChannelArgs{
/// 			AccountId:     pulumi.String("12345678"),
/// 			Name:          pulumi.String("mobile-push-example"),
/// 			Type:          pulumi.String("MOBILE_PUSH"),
/// 			DestinationId: pulumi.String("00b6bd1d-ac06-4d3d-bd72-49551e70f7a8"),
/// 			Product:       pulumi.String("IINT"),
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
/// import com.pulumi.newrelic.NotificationChannel;
/// import com.pulumi.newrelic.NotificationChannelArgs;
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
///         var foo = new NotificationChannel("foo", NotificationChannelArgs.builder()
///             .accountId("12345678")
///             .name("mobile-push-example")
///             .type("MOBILE_PUSH")
///             .destinationId("00b6bd1d-ac06-4d3d-bd72-49551e70f7a8")
///             .product("IINT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NotificationChannel
///     properties:
///       accountId: 1.2345678e+07
///       name: mobile-push-example
///       type: MOBILE_PUSH
///       destinationId: 00b6bd1d-ac06-4d3d-bd72-49551e70f7a8
///       product: IINT
/// ```
///
///
/// #### [AWS Event Bridge](https://docs.newrelic.com/docs/apis/nerdgraph/examples/nerdgraph-api-notifications-channels/#eventBridge)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationChannel("foo", {
///     accountId: "12345678",
///     name: "event-bridge-example",
///     type: "EVENT_BRIDGE",
///     destinationId: "00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///     product: "IINT",
///     properties: [
///         {
///             key: "eventSource",
///             value: "aws.partner/mydomain/myaccountid/name",
///         },
///         {
///             key: "eventContent",
///             value: "{ id: {{ json issueId }} }",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NotificationChannel("foo",
///     account_id="12345678",
///     name="event-bridge-example",
///     type="EVENT_BRIDGE",
///     destination_id="00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///     product="IINT",
///     properties=[
///         {
///             "key": "eventSource",
///             "value": "aws.partner/mydomain/myaccountid/name",
///         },
///         {
///             "key": "eventContent",
///             "value": "{ id: {{ json issueId }} }",
///         },
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
///     var foo = new NewRelic.NotificationChannel("foo", new()
///     {
///         AccountId = "12345678",
///         Name = "event-bridge-example",
///         Type = "EVENT_BRIDGE",
///         DestinationId = "00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///         Product = "IINT",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "eventSource",
///                 Value = "aws.partner/mydomain/myaccountid/name",
///             },
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "eventContent",
///                 Value = "{ id: {{ json issueId }} }",
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
/// 		_, err := newrelic.NewNotificationChannel(ctx, "foo", &newrelic.NotificationChannelArgs{
/// 			AccountId:     pulumi.String("12345678"),
/// 			Name:          pulumi.String("event-bridge-example"),
/// 			Type:          pulumi.String("EVENT_BRIDGE"),
/// 			DestinationId: pulumi.String("00b6bd1d-ac06-4d3d-bd72-49551e70f7a8"),
/// 			Product:       pulumi.String("IINT"),
/// 			Properties: newrelic.NotificationChannelPropertyArray{
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("eventSource"),
/// 					Value: pulumi.String("aws.partner/mydomain/myaccountid/name"),
/// 				},
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("eventContent"),
/// 					Value: pulumi.String("{ id: {{ json issueId }} }"),
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
/// import com.pulumi.newrelic.NotificationChannel;
/// import com.pulumi.newrelic.NotificationChannelArgs;
/// import com.pulumi.newrelic.inputs.NotificationChannelPropertyArgs;
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
///         var foo = new NotificationChannel("foo", NotificationChannelArgs.builder()
///             .accountId("12345678")
///             .name("event-bridge-example")
///             .type("EVENT_BRIDGE")
///             .destinationId("00b6bd1d-ac06-4d3d-bd72-49551e70f7a8")
///             .product("IINT")
///             .properties(
///                 NotificationChannelPropertyArgs.builder()
///                     .key("eventSource")
///                     .value("aws.partner/mydomain/myaccountid/name")
///                     .build(),
///                 NotificationChannelPropertyArgs.builder()
///                     .key("eventContent")
///                     .value("{ id: {{ json issueId }} }")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NotificationChannel
///     properties:
///       accountId: 1.2345678e+07
///       name: event-bridge-example
///       type: EVENT_BRIDGE
///       destinationId: 00b6bd1d-ac06-4d3d-bd72-49551e70f7a8
///       product: IINT
///       properties:
///         - key: eventSource
///           value: aws.partner/mydomain/myaccountid/name
///         - key: eventContent
///           value: '{ id: {{ json issueId }} }'
/// ```
///
///
/// #### [SLACK](https://docs.newrelic.com/docs/apis/nerdgraph/examples/nerdgraph-api-notifications-channels/#slack)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationChannel("foo", {
///     accountId: "12345678",
///     name: "slack-example",
///     type: "SLACK",
///     destinationId: "00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///     product: "IINT",
///     properties: [
///         {
///             key: "channelId",
///             value: "123456",
///         },
///         {
///             key: "customDetailsSlack",
///             value: "issue id - {{issueId}}",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NotificationChannel("foo",
///     account_id="12345678",
///     name="slack-example",
///     type="SLACK",
///     destination_id="00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///     product="IINT",
///     properties=[
///         {
///             "key": "channelId",
///             "value": "123456",
///         },
///         {
///             "key": "customDetailsSlack",
///             "value": "issue id - {{issueId}}",
///         },
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
///     var foo = new NewRelic.NotificationChannel("foo", new()
///     {
///         AccountId = "12345678",
///         Name = "slack-example",
///         Type = "SLACK",
///         DestinationId = "00b6bd1d-ac06-4d3d-bd72-49551e70f7a8",
///         Product = "IINT",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "channelId",
///                 Value = "123456",
///             },
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "customDetailsSlack",
///                 Value = "issue id - {{issueId}}",
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
/// 		_, err := newrelic.NewNotificationChannel(ctx, "foo", &newrelic.NotificationChannelArgs{
/// 			AccountId:     pulumi.String("12345678"),
/// 			Name:          pulumi.String("slack-example"),
/// 			Type:          pulumi.String("SLACK"),
/// 			DestinationId: pulumi.String("00b6bd1d-ac06-4d3d-bd72-49551e70f7a8"),
/// 			Product:       pulumi.String("IINT"),
/// 			Properties: newrelic.NotificationChannelPropertyArray{
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("channelId"),
/// 					Value: pulumi.String("123456"),
/// 				},
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("customDetailsSlack"),
/// 					Value: pulumi.String("issue id - {{issueId}}"),
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
/// import com.pulumi.newrelic.NotificationChannel;
/// import com.pulumi.newrelic.NotificationChannelArgs;
/// import com.pulumi.newrelic.inputs.NotificationChannelPropertyArgs;
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
///         var foo = new NotificationChannel("foo", NotificationChannelArgs.builder()
///             .accountId("12345678")
///             .name("slack-example")
///             .type("SLACK")
///             .destinationId("00b6bd1d-ac06-4d3d-bd72-49551e70f7a8")
///             .product("IINT")
///             .properties(
///                 NotificationChannelPropertyArgs.builder()
///                     .key("channelId")
///                     .value("123456")
///                     .build(),
///                 NotificationChannelPropertyArgs.builder()
///                     .key("customDetailsSlack")
///                     .value("issue id - {{issueId}}")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NotificationChannel
///     properties:
///       accountId: 1.2345678e+07
///       name: slack-example
///       type: SLACK
///       destinationId: 00b6bd1d-ac06-4d3d-bd72-49551e70f7a8
///       product: IINT
///       properties:
///         - key: channelId
///           value: '123456'
///         - key: customDetailsSlack
///           value: issue id - {{issueId}}
/// ```
///
///
/// #### [MICROSOFT_TEAMS](https://docs.newrelic.com/docs/alerts/get-notified/microsoft-teams-integrations/)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationChannel("foo", {
///     accountId: "12345678",
///     name: "ms-teams-example",
///     type: "MICROSOFT_TEAMS",
///     destinationId: "52d36b54-3d68-4ac4-9d0a-581febb91f2c",
///     product: "IINT",
///     properties: [
///         {
///             key: "teamId",
///             value: "906379b4-f5ac-40fd-b242-d4faaa4d3963",
///         },
///         {
///             key: "channelId",
///             value: "19:wk9tU4tSr335Y1cNiXOynredbi3lFoeabu0kybfmbBA1@thread.tacv2",
///         },
///         {
///             key: "customDetails",
///             value: "{{ nrAccountId }}",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NotificationChannel("foo",
///     account_id="12345678",
///     name="ms-teams-example",
///     type="MICROSOFT_TEAMS",
///     destination_id="52d36b54-3d68-4ac4-9d0a-581febb91f2c",
///     product="IINT",
///     properties=[
///         {
///             "key": "teamId",
///             "value": "906379b4-f5ac-40fd-b242-d4faaa4d3963",
///         },
///         {
///             "key": "channelId",
///             "value": "19:wk9tU4tSr335Y1cNiXOynredbi3lFoeabu0kybfmbBA1@thread.tacv2",
///         },
///         {
///             "key": "customDetails",
///             "value": "{{ nrAccountId }}",
///         },
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
///     var foo = new NewRelic.NotificationChannel("foo", new()
///     {
///         AccountId = "12345678",
///         Name = "ms-teams-example",
///         Type = "MICROSOFT_TEAMS",
///         DestinationId = "52d36b54-3d68-4ac4-9d0a-581febb91f2c",
///         Product = "IINT",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "teamId",
///                 Value = "906379b4-f5ac-40fd-b242-d4faaa4d3963",
///             },
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "channelId",
///                 Value = "19:wk9tU4tSr335Y1cNiXOynredbi3lFoeabu0kybfmbBA1@thread.tacv2",
///             },
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "customDetails",
///                 Value = "{{ nrAccountId }}",
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
/// 		_, err := newrelic.NewNotificationChannel(ctx, "foo", &newrelic.NotificationChannelArgs{
/// 			AccountId:     pulumi.String("12345678"),
/// 			Name:          pulumi.String("ms-teams-example"),
/// 			Type:          pulumi.String("MICROSOFT_TEAMS"),
/// 			DestinationId: pulumi.String("52d36b54-3d68-4ac4-9d0a-581febb91f2c"),
/// 			Product:       pulumi.String("IINT"),
/// 			Properties: newrelic.NotificationChannelPropertyArray{
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("teamId"),
/// 					Value: pulumi.String("906379b4-f5ac-40fd-b242-d4faaa4d3963"),
/// 				},
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("channelId"),
/// 					Value: pulumi.String("19:wk9tU4tSr335Y1cNiXOynredbi3lFoeabu0kybfmbBA1@thread.tacv2"),
/// 				},
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("customDetails"),
/// 					Value: pulumi.String("{{ nrAccountId }}"),
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
/// import com.pulumi.newrelic.NotificationChannel;
/// import com.pulumi.newrelic.NotificationChannelArgs;
/// import com.pulumi.newrelic.inputs.NotificationChannelPropertyArgs;
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
///         var foo = new NotificationChannel("foo", NotificationChannelArgs.builder()
///             .accountId("12345678")
///             .name("ms-teams-example")
///             .type("MICROSOFT_TEAMS")
///             .destinationId("52d36b54-3d68-4ac4-9d0a-581febb91f2c")
///             .product("IINT")
///             .properties(
///                 NotificationChannelPropertyArgs.builder()
///                     .key("teamId")
///                     .value("906379b4-f5ac-40fd-b242-d4faaa4d3963")
///                     .build(),
///                 NotificationChannelPropertyArgs.builder()
///                     .key("channelId")
///                     .value("19:wk9tU4tSr335Y1cNiXOynredbi3lFoeabu0kybfmbBA1@thread.tacv2")
///                     .build(),
///                 NotificationChannelPropertyArgs.builder()
///                     .key("customDetails")
///                     .value("{{ nrAccountId }}")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NotificationChannel
///     properties:
///       accountId: 1.2345678e+07
///       name: ms-teams-example
///       type: MICROSOFT_TEAMS
///       destinationId: 52d36b54-3d68-4ac4-9d0a-581febb91f2c
///       product: IINT
///       properties:
///         - key: teamId
///           value: 906379b4-f5ac-40fd-b242-d4faaa4d3963
///         - key: channelId
///           value: 19:wk9tU4tSr335Y1cNiXOynredbi3lFoeabu0kybfmbBA1@thread.tacv2
///         - key: customDetails
///           value: '{{ nrAccountId }}'
/// ```
///
///
/// &gt; **NOTE:** Sensitive data such as channel API keys, service keys, etc are not returned from the underlying API for security reasons and may not be set in state when importing.
///
/// ## Full Scenario Example
///
/// Create a destination resource and reference that destination to the channel resource:
///
/// ### Create a destination
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const webhook_destination = new newrelic.NotificationDestination("webhook-destination", {
///     accountId: "12345678",
///     name: "destination-webhook",
///     type: "WEBHOOK",
///     properties: [{
///         key: "url",
///         value: "https://webhook.mywebhook.com",
///     }],
///     authBasic: {
///         user: "username",
///         password: "password",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// webhook_destination = newrelic.NotificationDestination("webhook-destination",
///     account_id="12345678",
///     name="destination-webhook",
///     type="WEBHOOK",
///     properties=[{
///         "key": "url",
///         "value": "https://webhook.mywebhook.com",
///     }],
///     auth_basic={
///         "user": "username",
///         "password": "password",
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
///     var webhook_destination = new NewRelic.NotificationDestination("webhook-destination", new()
///     {
///         AccountId = "12345678",
///         Name = "destination-webhook",
///         Type = "WEBHOOK",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationDestinationPropertyArgs
///             {
///                 Key = "url",
///                 Value = "https://webhook.mywebhook.com",
///             },
///         },
///         AuthBasic = new NewRelic.Inputs.NotificationDestinationAuthBasicArgs
///         {
///             User = "username",
///             Password = "password",
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
/// 		_, err := newrelic.NewNotificationDestination(ctx, "webhook-destination", &newrelic.NotificationDestinationArgs{
/// 			AccountId: pulumi.String("12345678"),
/// 			Name:      pulumi.String("destination-webhook"),
/// 			Type:      pulumi.String("WEBHOOK"),
/// 			Properties: newrelic.NotificationDestinationPropertyArray{
/// 				&newrelic.NotificationDestinationPropertyArgs{
/// 					Key:   pulumi.String("url"),
/// 					Value: pulumi.String("https://webhook.mywebhook.com"),
/// 				},
/// 			},
/// 			AuthBasic: &newrelic.NotificationDestinationAuthBasicArgs{
/// 				User:     pulumi.String("username"),
/// 				Password: pulumi.String("password"),
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
/// import com.pulumi.newrelic.NotificationDestination;
/// import com.pulumi.newrelic.NotificationDestinationArgs;
/// import com.pulumi.newrelic.inputs.NotificationDestinationPropertyArgs;
/// import com.pulumi.newrelic.inputs.NotificationDestinationAuthBasicArgs;
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
///         var webhook_destination = new NotificationDestination("webhook-destination", NotificationDestinationArgs.builder()
///             .accountId("12345678")
///             .name("destination-webhook")
///             .type("WEBHOOK")
///             .properties(NotificationDestinationPropertyArgs.builder()
///                 .key("url")
///                 .value("https://webhook.mywebhook.com")
///                 .build())
///             .authBasic(NotificationDestinationAuthBasicArgs.builder()
///                 .user("username")
///                 .password("password")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   webhook-destination:
///     type: newrelic:NotificationDestination
///     properties:
///       accountId: 1.2345678e+07
///       name: destination-webhook
///       type: WEBHOOK
///       properties:
///         - key: url
///           value: https://webhook.mywebhook.com
///       authBasic:
///         user: username
///         password: password
/// ```
///
///
/// ### Create a channel
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const webhook_channel = new newrelic.NotificationChannel("webhook-channel", {
///     accountId: "12345678",
///     name: "channel-webhook",
///     type: "WEBHOOK",
///     destinationId: webhook_destination.id,
///     product: "IINT",
///     properties: [{
///         key: "payload",
///         value: "{name: foo}",
///         label: "Payload Template",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// webhook_channel = newrelic.NotificationChannel("webhook-channel",
///     account_id="12345678",
///     name="channel-webhook",
///     type="WEBHOOK",
///     destination_id=webhook_destination["id"],
///     product="IINT",
///     properties=[{
///         "key": "payload",
///         "value": "{name: foo}",
///         "label": "Payload Template",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webhook_channel = new NewRelic.NotificationChannel("webhook-channel", new()
///     {
///         AccountId = "12345678",
///         Name = "channel-webhook",
///         Type = "WEBHOOK",
///         DestinationId = webhook_destination.Id,
///         Product = "IINT",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "payload",
///                 Value = "{name: foo}",
///                 Label = "Payload Template",
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
/// 		_, err := newrelic.NewNotificationChannel(ctx, "webhook-channel", &newrelic.NotificationChannelArgs{
/// 			AccountId:     pulumi.String("12345678"),
/// 			Name:          pulumi.String("channel-webhook"),
/// 			Type:          pulumi.String("WEBHOOK"),
/// 			DestinationId: pulumi.Any(webhook_destination.Id),
/// 			Product:       pulumi.String("IINT"),
/// 			Properties: newrelic.NotificationChannelPropertyArray{
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("payload"),
/// 					Value: pulumi.String("{name: foo}"),
/// 					Label: pulumi.String("Payload Template"),
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
/// import com.pulumi.newrelic.NotificationChannel;
/// import com.pulumi.newrelic.NotificationChannelArgs;
/// import com.pulumi.newrelic.inputs.NotificationChannelPropertyArgs;
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
///         var webhook_channel = new NotificationChannel("webhook-channel", NotificationChannelArgs.builder()
///             .accountId("12345678")
///             .name("channel-webhook")
///             .type("WEBHOOK")
///             .destinationId(webhook_destination.id())
///             .product("IINT")
///             .properties(NotificationChannelPropertyArgs.builder()
///                 .key("payload")
///                 .value("{name: foo}")
///                 .label("Payload Template")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   webhook-channel:
///     type: newrelic:NotificationChannel
///     properties:
///       accountId: 1.2345678e+07
///       name: channel-webhook
///       type: WEBHOOK
///       destinationId: ${["webhook-destination"].id}
///       product: IINT
///       properties:
///         - key: payload
///           value: '{name: foo}'
///           label: Payload Template
/// ```
///
///
/// ## Additional Information
///
/// More details about the channels API can be found [here](https://docs.newrelic.com/docs/apis/nerdgraph/examples/nerdgraph-api-notifications-channels).
/// ### Moving from Legacy Alert Channels to Notification Channels
/// As described in the documentation of this resource, channels can be created and managed using `newrelic.NotificationDestination` and `newrelic.NotificationChannel`. A combination of these resources is an alternative to the legacy resource `newrelic.AlertChannel`, which is **deprecated** and will be **removed in a future major release**, as stated in the documentation of the resource.
///
/// If you're currently using `newrelic.AlertChannel` to manage channels, we **strongly recommend** migrating to these notifications-based resources at the earliest.
///
/// Please refer to the examples in this page, or this example for illustrations on setting up channels with these resources.
///
/// ## Import
///
/// Channels can only be used by a single workflow, therefore importing them is not particularly useful, because in the UI channels are created upon workflow creation.
/// Additionally, the channel id isn't available via the UI, and you'd need to look it up with the `channels` query in the NerdGraph API.
/// That being said, importing is possible using -
/// ```terraform import newrelic_notification_destination.foo <destination_id>```
class NotificationChannel extends pulumi.CustomResource {
  /// Determines the New Relic account where the notification channel will be created. Defaults to the account associated with the API key used.
  late final pulumi.Output<String> accountId;
  /// Indicates whether the channel is active.
  late final pulumi.Output<bool?> active;
  /// The id of the destination.
  late final pulumi.Output<String> destinationId;
  /// The name of the channel.
  late final pulumi.Output<String> name;
  /// The type of product.  One of: `DISCUSSIONS`, `ERROR_TRACKING` or `IINT` (workflows).
  late final pulumi.Output<String> product;
  /// A nested block that describes a notification channel property. See Nested property blocks below for details.
  late final pulumi.Output<List<Map<String, dynamic>>> properties;
  /// The status of the channel.
  late final pulumi.Output<String> status;
  /// The type of channel.  One of: `EMAIL`, `SERVICENOW_INCIDENTS`, `SERVICE_NOW_APP`, `WEBHOOK`, `JIRA_CLASSIC`, `MOBILE_PUSH`, `EVENT_BRIDGE`, `SLACK` and `SLACK_COLLABORATION`, `PAGERDUTY_ACCOUNT_INTEGRATION`, `PAGERDUTY_SERVICE_INTEGRATION`, `MICROSOFT_TEAMS` or `WORKFLOW_AUTOMATION`.
  late final pulumi.Output<String> type;

  /// Creates a new [NotificationChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotificationChannel]. {@macro pulumi_index_notification_channel_notification_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotificationChannel(
    String name, {
    NotificationChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/notificationChannel:NotificationChannel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    active = registerOutput<bool?>('active');
    destinationId = registerOutput<String>('destinationId');
    this.name = registerOutput<String>('name');
    product = registerOutput<String>('product');
    properties = registerOutput<List<Map<String, dynamic>>>('properties');
    status = registerOutput<String>('status');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [NotificationChannel] resource's state with the given [name] and [id].
  static NotificationChannel get(
    String name,
    pulumi.Input<String> id, {
    NotificationChannelState? state,
  }) {
    return NotificationChannel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NotificationChannel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/notificationChannel:NotificationChannel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    active = registerOutput<bool?>('active');
    destinationId = registerOutput<String>('destinationId');
    this.name = registerOutput<String>('name');
    product = registerOutput<String>('product');
    properties = registerOutput<List<Map<String, dynamic>>>('properties');
    status = registerOutput<String>('status');
    type = registerOutput<String>('type');
  }
}
