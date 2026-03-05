import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_destination_args.dart';
import 'notification_destination_auth_basic.dart';
import 'notification_destination_auth_token.dart';
import 'notification_destination_secure_url.dart';
import 'notification_destination_state.dart';

/// Use this resource to create and manage New Relic notification destinations. Details regarding supported products and permissions can be found [here](https://docs.newrelic.com/docs/alerts-applied-intelligence/notifications/destinations).
///
/// ## Example Usage
///
/// ##### [Webhook](https://docs.newrelic.com/docs/alerts-applied-intelligence/notifications/notification-integrations/#webhook)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationDestination("foo", {
///     accountId: "12345678",
///     name: "foo",
///     type: "WEBHOOK",
///     secureUrl: {
///         prefix: "https://webhook.mywebhook.com/",
///         secureSuffix: "service_id/123456",
///     },
///     properties: [{
///         key: "source",
///         value: "terraform",
///     }],
///     authCustomHeaders: [{
///         key: "API_KEY",
///         value: "test-api-key",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NotificationDestination("foo",
///     account_id="12345678",
///     name="foo",
///     type="WEBHOOK",
///     secure_url={
///         "prefix": "https://webhook.mywebhook.com/",
///         "secure_suffix": "service_id/123456",
///     },
///     properties=[{
///         "key": "source",
///         "value": "terraform",
///     }],
///     auth_custom_headers=[{
///         "key": "API_KEY",
///         "value": "test-api-key",
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
///     var foo = new NewRelic.NotificationDestination("foo", new()
///     {
///         AccountId = "12345678",
///         Name = "foo",
///         Type = "WEBHOOK",
///         SecureUrl = new NewRelic.Inputs.NotificationDestinationSecureUrlArgs
///         {
///             Prefix = "https://webhook.mywebhook.com/",
///             SecureSuffix = "service_id/123456",
///         },
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationDestinationPropertyArgs
///             {
///                 Key = "source",
///                 Value = "terraform",
///             },
///         },
///         AuthCustomHeaders = new[]
///         {
///             new NewRelic.Inputs.NotificationDestinationAuthCustomHeaderArgs
///             {
///                 Key = "API_KEY",
///                 Value = "test-api-key",
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
/// 		_, err := newrelic.NewNotificationDestination(ctx, "foo", &newrelic.NotificationDestinationArgs{
/// 			AccountId: pulumi.String("12345678"),
/// 			Name:      pulumi.String("foo"),
/// 			Type:      pulumi.String("WEBHOOK"),
/// 			SecureUrl: &newrelic.NotificationDestinationSecureUrlArgs{
/// 				Prefix:       pulumi.String("https://webhook.mywebhook.com/"),
/// 				SecureSuffix: pulumi.String("service_id/123456"),
/// 			},
/// 			Properties: newrelic.NotificationDestinationPropertyArray{
/// 				&newrelic.NotificationDestinationPropertyArgs{
/// 					Key:   pulumi.String("source"),
/// 					Value: pulumi.String("terraform"),
/// 				},
/// 			},
/// 			AuthCustomHeaders: newrelic.NotificationDestinationAuthCustomHeaderArray{
/// 				&newrelic.NotificationDestinationAuthCustomHeaderArgs{
/// 					Key:   pulumi.String("API_KEY"),
/// 					Value: pulumi.String("test-api-key"),
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
/// import com.pulumi.newrelic.NotificationDestination;
/// import com.pulumi.newrelic.NotificationDestinationArgs;
/// import com.pulumi.newrelic.inputs.NotificationDestinationSecureUrlArgs;
/// import com.pulumi.newrelic.inputs.NotificationDestinationPropertyArgs;
/// import com.pulumi.newrelic.inputs.NotificationDestinationAuthCustomHeaderArgs;
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
///         var foo = new NotificationDestination("foo", NotificationDestinationArgs.builder()
///             .accountId("12345678")
///             .name("foo")
///             .type("WEBHOOK")
///             .secureUrl(NotificationDestinationSecureUrlArgs.builder()
///                 .prefix("https://webhook.mywebhook.com/")
///                 .secureSuffix("service_id/123456")
///                 .build())
///             .properties(NotificationDestinationPropertyArgs.builder()
///                 .key("source")
///                 .value("terraform")
///                 .build())
///             .authCustomHeaders(NotificationDestinationAuthCustomHeaderArgs.builder()
///                 .key("API_KEY")
///                 .value("test-api-key")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NotificationDestination
///     properties:
///       accountId: 1.2345678e+07
///       name: foo
///       type: WEBHOOK
///       secureUrl:
///         prefix: https://webhook.mywebhook.com/
///         secureSuffix: service_id/123456
///       properties:
///         - key: source
///           value: terraform
///       authCustomHeaders:
///         - key: API_KEY
///           value: test-api-key
/// ```
///
/// See additional examples.
///
/// ## Additional Examples
///
/// &gt; **NOTE:** We support all properties. The mentioned properties are just an example.
///
/// #### [WORKFLOW_AUTOMATION]
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationDestination("foo", {
///     accountId: "12345678",
///     name: "workflow-automation-destination-name",
///     type: "WORKFLOW_AUTOMATION",
///     properties: [{
///         key: "",
///         value: "",
///     }],
///     authCustomHeaders: [{
///         key: "Api-Key",
///         value: "YOUR_NR_USER_API_KEY",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NotificationDestination("foo",
///     account_id="12345678",
///     name="workflow-automation-destination-name",
///     type="WORKFLOW_AUTOMATION",
///     properties=[{
///         "key": "",
///         "value": "",
///     }],
///     auth_custom_headers=[{
///         "key": "Api-Key",
///         "value": "YOUR_NR_USER_API_KEY",
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
///     var foo = new NewRelic.NotificationDestination("foo", new()
///     {
///         AccountId = "12345678",
///         Name = "workflow-automation-destination-name",
///         Type = "WORKFLOW_AUTOMATION",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationDestinationPropertyArgs
///             {
///                 Key = "",
///                 Value = "",
///             },
///         },
///         AuthCustomHeaders = new[]
///         {
///             new NewRelic.Inputs.NotificationDestinationAuthCustomHeaderArgs
///             {
///                 Key = "Api-Key",
///                 Value = "YOUR_NR_USER_API_KEY",
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
/// 		_, err := newrelic.NewNotificationDestination(ctx, "foo", &newrelic.NotificationDestinationArgs{
/// 			AccountId: pulumi.String("12345678"),
/// 			Name:      pulumi.String("workflow-automation-destination-name"),
/// 			Type:      pulumi.String("WORKFLOW_AUTOMATION"),
/// 			Properties: newrelic.NotificationDestinationPropertyArray{
/// 				&newrelic.NotificationDestinationPropertyArgs{
/// 					Key:   pulumi.String(""),
/// 					Value: pulumi.String(""),
/// 				},
/// 			},
/// 			AuthCustomHeaders: newrelic.NotificationDestinationAuthCustomHeaderArray{
/// 				&newrelic.NotificationDestinationAuthCustomHeaderArgs{
/// 					Key:   pulumi.String("Api-Key"),
/// 					Value: pulumi.String("YOUR_NR_USER_API_KEY"),
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
/// import com.pulumi.newrelic.NotificationDestination;
/// import com.pulumi.newrelic.NotificationDestinationArgs;
/// import com.pulumi.newrelic.inputs.NotificationDestinationPropertyArgs;
/// import com.pulumi.newrelic.inputs.NotificationDestinationAuthCustomHeaderArgs;
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
///         var foo = new NotificationDestination("foo", NotificationDestinationArgs.builder()
///             .accountId("12345678")
///             .name("workflow-automation-destination-name")
///             .type("WORKFLOW_AUTOMATION")
///             .properties(NotificationDestinationPropertyArgs.builder()
///                 .key("")
///                 .value("")
///                 .build())
///             .authCustomHeaders(NotificationDestinationAuthCustomHeaderArgs.builder()
///                 .key("Api-Key")
///                 .value("YOUR_NR_USER_API_KEY")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NotificationDestination
///     properties:
///       accountId: 1.2345678e+07
///       name: workflow-automation-destination-name
///       type: WORKFLOW_AUTOMATION
///       properties:
///         - key: ""
///           value: ""
///       authCustomHeaders:
///         - key: Api-Key
///           value: YOUR_NR_USER_API_KEY
/// ```
///
///
/// ##### [MICROSOFT_TEAMS](https://docs.newrelic.com/docs/alerts/get-notified/microsoft-teams-integrations/)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationDestination("foo", {
///     accountId: "12345678",
///     name: "ms-teams-example",
///     type: "MICROSOFT_TEAMS",
///     properties: [{
///         key: "securityCode",
///         value: "abcdefgh",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NotificationDestination("foo",
///     account_id="12345678",
///     name="ms-teams-example",
///     type="MICROSOFT_TEAMS",
///     properties=[{
///         "key": "securityCode",
///         "value": "abcdefgh",
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
///     var foo = new NewRelic.NotificationDestination("foo", new()
///     {
///         AccountId = "12345678",
///         Name = "ms-teams-example",
///         Type = "MICROSOFT_TEAMS",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationDestinationPropertyArgs
///             {
///                 Key = "securityCode",
///                 Value = "abcdefgh",
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
/// 		_, err := newrelic.NewNotificationDestination(ctx, "foo", &newrelic.NotificationDestinationArgs{
/// 			AccountId: pulumi.String("12345678"),
/// 			Name:      pulumi.String("ms-teams-example"),
/// 			Type:      pulumi.String("MICROSOFT_TEAMS"),
/// 			Properties: newrelic.NotificationDestinationPropertyArray{
/// 				&newrelic.NotificationDestinationPropertyArgs{
/// 					Key:   pulumi.String("securityCode"),
/// 					Value: pulumi.String("abcdefgh"),
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
/// import com.pulumi.newrelic.NotificationDestination;
/// import com.pulumi.newrelic.NotificationDestinationArgs;
/// import com.pulumi.newrelic.inputs.NotificationDestinationPropertyArgs;
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
///         var foo = new NotificationDestination("foo", NotificationDestinationArgs.builder()
///             .accountId("12345678")
///             .name("ms-teams-example")
///             .type("MICROSOFT_TEAMS")
///             .properties(NotificationDestinationPropertyArgs.builder()
///                 .key("securityCode")
///                 .value("abcdefgh")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NotificationDestination
///     properties:
///       accountId: 1.2345678e+07
///       name: ms-teams-example
///       type: MICROSOFT_TEAMS
///       properties:
///         - key: securityCode
///           value: abcdefgh
/// ```
///
///
/// ##### [ServiceNow](https://docs.newrelic.com/docs/alerts-applied-intelligence/notifications/notification-integrations/#servicenow)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationDestination("foo", {
///     accountId: "12345678",
///     name: "servicenow-example",
///     type: "SERVICE_NOW",
///     properties: [
///         {
///             key: "url",
///             value: "https://service-now.com/",
///         },
///         {
///             key: "two_way_integration",
///             value: "true",
///         },
///     ],
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
/// foo = newrelic.NotificationDestination("foo",
///     account_id="12345678",
///     name="servicenow-example",
///     type="SERVICE_NOW",
///     properties=[
///         {
///             "key": "url",
///             "value": "https://service-now.com/",
///         },
///         {
///             "key": "two_way_integration",
///             "value": "true",
///         },
///     ],
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
///     var foo = new NewRelic.NotificationDestination("foo", new()
///     {
///         AccountId = "12345678",
///         Name = "servicenow-example",
///         Type = "SERVICE_NOW",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationDestinationPropertyArgs
///             {
///                 Key = "url",
///                 Value = "https://service-now.com/",
///             },
///             new NewRelic.Inputs.NotificationDestinationPropertyArgs
///             {
///                 Key = "two_way_integration",
///                 Value = "true",
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
/// 		_, err := newrelic.NewNotificationDestination(ctx, "foo", &newrelic.NotificationDestinationArgs{
/// 			AccountId: pulumi.String("12345678"),
/// 			Name:      pulumi.String("servicenow-example"),
/// 			Type:      pulumi.String("SERVICE_NOW"),
/// 			Properties: newrelic.NotificationDestinationPropertyArray{
/// 				&newrelic.NotificationDestinationPropertyArgs{
/// 					Key:   pulumi.String("url"),
/// 					Value: pulumi.String("https://service-now.com/"),
/// 				},
/// 				&newrelic.NotificationDestinationPropertyArgs{
/// 					Key:   pulumi.String("two_way_integration"),
/// 					Value: pulumi.String("true"),
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
///         var foo = new NotificationDestination("foo", NotificationDestinationArgs.builder()
///             .accountId("12345678")
///             .name("servicenow-example")
///             .type("SERVICE_NOW")
///             .properties(
///                 NotificationDestinationPropertyArgs.builder()
///                     .key("url")
///                     .value("https://service-now.com/")
///                     .build(),
///                 NotificationDestinationPropertyArgs.builder()
///                     .key("two_way_integration")
///                     .value("true")
///                     .build())
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
///   foo:
///     type: newrelic:NotificationDestination
///     properties:
///       accountId: 1.2345678e+07
///       name: servicenow-example
///       type: SERVICE_NOW
///       properties:
///         - key: url
///           value: https://service-now.com/
///         - key: two_way_integration
///           value: 'true'
///       authBasic:
///         user: username
///         password: password
/// ```
///
///
/// ##### [Email](https://docs.newrelic.com/docs/alerts-applied-intelligence/notifications/notification-integrations/#email)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationDestination("foo", {
///     accountId: "12345678",
///     name: "email-example",
///     type: "EMAIL",
///     properties: [{
///         key: "email",
///         value: "email@email.com,email2@email.com",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NotificationDestination("foo",
///     account_id="12345678",
///     name="email-example",
///     type="EMAIL",
///     properties=[{
///         "key": "email",
///         "value": "email@email.com,email2@email.com",
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
///     var foo = new NewRelic.NotificationDestination("foo", new()
///     {
///         AccountId = "12345678",
///         Name = "email-example",
///         Type = "EMAIL",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationDestinationPropertyArgs
///             {
///                 Key = "email",
///                 Value = "email@email.com,email2@email.com",
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
/// 		_, err := newrelic.NewNotificationDestination(ctx, "foo", &newrelic.NotificationDestinationArgs{
/// 			AccountId: pulumi.String("12345678"),
/// 			Name:      pulumi.String("email-example"),
/// 			Type:      pulumi.String("EMAIL"),
/// 			Properties: newrelic.NotificationDestinationPropertyArray{
/// 				&newrelic.NotificationDestinationPropertyArgs{
/// 					Key:   pulumi.String("email"),
/// 					Value: pulumi.String("email@email.com,email2@email.com"),
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
/// import com.pulumi.newrelic.NotificationDestination;
/// import com.pulumi.newrelic.NotificationDestinationArgs;
/// import com.pulumi.newrelic.inputs.NotificationDestinationPropertyArgs;
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
///         var foo = new NotificationDestination("foo", NotificationDestinationArgs.builder()
///             .accountId("12345678")
///             .name("email-example")
///             .type("EMAIL")
///             .properties(NotificationDestinationPropertyArgs.builder()
///                 .key("email")
///                 .value("email@email.com,email2@email.com")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NotificationDestination
///     properties:
///       accountId: 1.2345678e+07
///       name: email-example
///       type: EMAIL
///       properties:
///         - key: email
///           value: email@email.com,email2@email.com
/// ```
///
///
/// ##### [Jira](https://docs.newrelic.com/docs/alerts-applied-intelligence/notifications/notification-integrations/#jira)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationDestination("foo", {
///     accountId: "12345678",
///     name: "jira-example",
///     type: "JIRA",
///     properties: [{
///         key: "url",
///         value: "https://example.atlassian.net",
///     }],
///     authBasic: {
///         user: "example@email.com",
///         password: "password",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NotificationDestination("foo",
///     account_id="12345678",
///     name="jira-example",
///     type="JIRA",
///     properties=[{
///         "key": "url",
///         "value": "https://example.atlassian.net",
///     }],
///     auth_basic={
///         "user": "example@email.com",
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
///     var foo = new NewRelic.NotificationDestination("foo", new()
///     {
///         AccountId = "12345678",
///         Name = "jira-example",
///         Type = "JIRA",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationDestinationPropertyArgs
///             {
///                 Key = "url",
///                 Value = "https://example.atlassian.net",
///             },
///         },
///         AuthBasic = new NewRelic.Inputs.NotificationDestinationAuthBasicArgs
///         {
///             User = "example@email.com",
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
/// 		_, err := newrelic.NewNotificationDestination(ctx, "foo", &newrelic.NotificationDestinationArgs{
/// 			AccountId: pulumi.String("12345678"),
/// 			Name:      pulumi.String("jira-example"),
/// 			Type:      pulumi.String("JIRA"),
/// 			Properties: newrelic.NotificationDestinationPropertyArray{
/// 				&newrelic.NotificationDestinationPropertyArgs{
/// 					Key:   pulumi.String("url"),
/// 					Value: pulumi.String("https://example.atlassian.net"),
/// 				},
/// 			},
/// 			AuthBasic: &newrelic.NotificationDestinationAuthBasicArgs{
/// 				User:     pulumi.String("example@email.com"),
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
///         var foo = new NotificationDestination("foo", NotificationDestinationArgs.builder()
///             .accountId("12345678")
///             .name("jira-example")
///             .type("JIRA")
///             .properties(NotificationDestinationPropertyArgs.builder()
///                 .key("url")
///                 .value("https://example.atlassian.net")
///                 .build())
///             .authBasic(NotificationDestinationAuthBasicArgs.builder()
///                 .user("example@email.com")
///                 .password("password")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NotificationDestination
///     properties:
///       accountId: 1.2345678e+07
///       name: jira-example
///       type: JIRA
///       properties:
///         - key: url
///           value: https://example.atlassian.net
///       authBasic:
///         user: example@email.com
///         password: password
/// ```
///
///
/// ##### [PagerDuty with service integration](https://docs.newrelic.com/docs/alerts-applied-intelligence/notifications/notification-integrations/#pagerduty-sli)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationDestination("foo", {
///     accountId: "12345678",
///     name: "pagerduty-service-example",
///     type: "PAGERDUTY_SERVICE_INTEGRATION",
///     properties: [{
///         key: "",
///         value: "",
///     }],
///     authToken: {
///         prefix: "Token token=",
///         token: "10567a689d984d03c021034b22a789e2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NotificationDestination("foo",
///     account_id="12345678",
///     name="pagerduty-service-example",
///     type="PAGERDUTY_SERVICE_INTEGRATION",
///     properties=[{
///         "key": "",
///         "value": "",
///     }],
///     auth_token={
///         "prefix": "Token token=",
///         "token": "10567a689d984d03c021034b22a789e2",
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
///     var foo = new NewRelic.NotificationDestination("foo", new()
///     {
///         AccountId = "12345678",
///         Name = "pagerduty-service-example",
///         Type = "PAGERDUTY_SERVICE_INTEGRATION",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationDestinationPropertyArgs
///             {
///                 Key = "",
///                 Value = "",
///             },
///         },
///         AuthToken = new NewRelic.Inputs.NotificationDestinationAuthTokenArgs
///         {
///             Prefix = "Token token=",
///             Token = "10567a689d984d03c021034b22a789e2",
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
/// 		_, err := newrelic.NewNotificationDestination(ctx, "foo", &newrelic.NotificationDestinationArgs{
/// 			AccountId: pulumi.String("12345678"),
/// 			Name:      pulumi.String("pagerduty-service-example"),
/// 			Type:      pulumi.String("PAGERDUTY_SERVICE_INTEGRATION"),
/// 			Properties: newrelic.NotificationDestinationPropertyArray{
/// 				&newrelic.NotificationDestinationPropertyArgs{
/// 					Key:   pulumi.String(""),
/// 					Value: pulumi.String(""),
/// 				},
/// 			},
/// 			AuthToken: &newrelic.NotificationDestinationAuthTokenArgs{
/// 				Prefix: pulumi.String("Token token="),
/// 				Token:  pulumi.String("10567a689d984d03c021034b22a789e2"),
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
/// import com.pulumi.newrelic.inputs.NotificationDestinationAuthTokenArgs;
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
///         var foo = new NotificationDestination("foo", NotificationDestinationArgs.builder()
///             .accountId("12345678")
///             .name("pagerduty-service-example")
///             .type("PAGERDUTY_SERVICE_INTEGRATION")
///             .properties(NotificationDestinationPropertyArgs.builder()
///                 .key("")
///                 .value("")
///                 .build())
///             .authToken(NotificationDestinationAuthTokenArgs.builder()
///                 .prefix("Token token=")
///                 .token("10567a689d984d03c021034b22a789e2")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NotificationDestination
///     properties:
///       accountId: 1.2345678e+07
///       name: pagerduty-service-example
///       type: PAGERDUTY_SERVICE_INTEGRATION
///       properties:
///         - key: ""
///           value: ""
///       authToken:
///         prefix: Token token=
///         token: 10567a689d984d03c021034b22a789e2
/// ```
///
///
/// ##### [PagerDuty with account integration](https://docs.newrelic.com/docs/alerts-applied-intelligence/notifications/notification-integrations/#pagerduty-ali)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationDestination("foo", {
///     accountId: "12345678",
///     name: "pagerduty-account-example",
///     type: "PAGERDUTY_ACCOUNT_INTEGRATION",
///     properties: [{
///         key: "two_way_integration",
///         value: "true",
///     }],
///     authToken: {
///         prefix: "Token token=",
///         token: "u+E8EU3MhsZwLfZ1ic1A",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NotificationDestination("foo",
///     account_id="12345678",
///     name="pagerduty-account-example",
///     type="PAGERDUTY_ACCOUNT_INTEGRATION",
///     properties=[{
///         "key": "two_way_integration",
///         "value": "true",
///     }],
///     auth_token={
///         "prefix": "Token token=",
///         "token": "u+E8EU3MhsZwLfZ1ic1A",
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
///     var foo = new NewRelic.NotificationDestination("foo", new()
///     {
///         AccountId = "12345678",
///         Name = "pagerduty-account-example",
///         Type = "PAGERDUTY_ACCOUNT_INTEGRATION",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationDestinationPropertyArgs
///             {
///                 Key = "two_way_integration",
///                 Value = "true",
///             },
///         },
///         AuthToken = new NewRelic.Inputs.NotificationDestinationAuthTokenArgs
///         {
///             Prefix = "Token token=",
///             Token = "u+E8EU3MhsZwLfZ1ic1A",
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
/// 		_, err := newrelic.NewNotificationDestination(ctx, "foo", &newrelic.NotificationDestinationArgs{
/// 			AccountId: pulumi.String("12345678"),
/// 			Name:      pulumi.String("pagerduty-account-example"),
/// 			Type:      pulumi.String("PAGERDUTY_ACCOUNT_INTEGRATION"),
/// 			Properties: newrelic.NotificationDestinationPropertyArray{
/// 				&newrelic.NotificationDestinationPropertyArgs{
/// 					Key:   pulumi.String("two_way_integration"),
/// 					Value: pulumi.String("true"),
/// 				},
/// 			},
/// 			AuthToken: &newrelic.NotificationDestinationAuthTokenArgs{
/// 				Prefix: pulumi.String("Token token="),
/// 				Token:  pulumi.String("u+E8EU3MhsZwLfZ1ic1A"),
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
/// import com.pulumi.newrelic.inputs.NotificationDestinationAuthTokenArgs;
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
///         var foo = new NotificationDestination("foo", NotificationDestinationArgs.builder()
///             .accountId("12345678")
///             .name("pagerduty-account-example")
///             .type("PAGERDUTY_ACCOUNT_INTEGRATION")
///             .properties(NotificationDestinationPropertyArgs.builder()
///                 .key("two_way_integration")
///                 .value("true")
///                 .build())
///             .authToken(NotificationDestinationAuthTokenArgs.builder()
///                 .prefix("Token token=")
///                 .token("u+E8EU3MhsZwLfZ1ic1A")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NotificationDestination
///     properties:
///       accountId: 1.2345678e+07
///       name: pagerduty-account-example
///       type: PAGERDUTY_ACCOUNT_INTEGRATION
///       properties:
///         - key: two_way_integration
///           value: 'true'
///       authToken:
///         prefix: Token token=
///         token: u+E8EU3MhsZwLfZ1ic1A
/// ```
///
///
/// #### Mobile Push
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationDestination("foo", {
///     accountId: "12345678",
///     name: "mobile-push-example",
///     type: "MOBILE_PUSH",
///     properties: [{
///         key: "userId",
///         value: "12345678",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NotificationDestination("foo",
///     account_id="12345678",
///     name="mobile-push-example",
///     type="MOBILE_PUSH",
///     properties=[{
///         "key": "userId",
///         "value": "12345678",
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
///     var foo = new NewRelic.NotificationDestination("foo", new()
///     {
///         AccountId = "12345678",
///         Name = "mobile-push-example",
///         Type = "MOBILE_PUSH",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationDestinationPropertyArgs
///             {
///                 Key = "userId",
///                 Value = "12345678",
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
/// 		_, err := newrelic.NewNotificationDestination(ctx, "foo", &newrelic.NotificationDestinationArgs{
/// 			AccountId: pulumi.String("12345678"),
/// 			Name:      pulumi.String("mobile-push-example"),
/// 			Type:      pulumi.String("MOBILE_PUSH"),
/// 			Properties: newrelic.NotificationDestinationPropertyArray{
/// 				&newrelic.NotificationDestinationPropertyArgs{
/// 					Key:   pulumi.String("userId"),
/// 					Value: pulumi.String("12345678"),
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
/// import com.pulumi.newrelic.NotificationDestination;
/// import com.pulumi.newrelic.NotificationDestinationArgs;
/// import com.pulumi.newrelic.inputs.NotificationDestinationPropertyArgs;
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
///         var foo = new NotificationDestination("foo", NotificationDestinationArgs.builder()
///             .accountId("12345678")
///             .name("mobile-push-example")
///             .type("MOBILE_PUSH")
///             .properties(NotificationDestinationPropertyArgs.builder()
///                 .key("userId")
///                 .value("12345678")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NotificationDestination
///     properties:
///       accountId: 1.2345678e+07
///       name: mobile-push-example
///       type: MOBILE_PUSH
///       properties:
///         - key: userId
///           value: '12345678'
/// ```
///
///
/// #### [AWS Event Bridge](https://docs.newrelic.com/docs/alerts-applied-intelligence/notifications/notification-integrations/#eventBridge)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationDestination("foo", {
///     accountId: "12345678",
///     name: "event-bridge-example",
///     type: "EVENT_BRIDGE",
///     properties: [
///         {
///             key: "AWSAccountId",
///             value: "123456789123456",
///         },
///         {
///             key: "AWSRegion",
///             value: "us-east-2",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NotificationDestination("foo",
///     account_id="12345678",
///     name="event-bridge-example",
///     type="EVENT_BRIDGE",
///     properties=[
///         {
///             "key": "AWSAccountId",
///             "value": "123456789123456",
///         },
///         {
///             "key": "AWSRegion",
///             "value": "us-east-2",
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
///     var foo = new NewRelic.NotificationDestination("foo", new()
///     {
///         AccountId = "12345678",
///         Name = "event-bridge-example",
///         Type = "EVENT_BRIDGE",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationDestinationPropertyArgs
///             {
///                 Key = "AWSAccountId",
///                 Value = "123456789123456",
///             },
///             new NewRelic.Inputs.NotificationDestinationPropertyArgs
///             {
///                 Key = "AWSRegion",
///                 Value = "us-east-2",
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
/// 		_, err := newrelic.NewNotificationDestination(ctx, "foo", &newrelic.NotificationDestinationArgs{
/// 			AccountId: pulumi.String("12345678"),
/// 			Name:      pulumi.String("event-bridge-example"),
/// 			Type:      pulumi.String("EVENT_BRIDGE"),
/// 			Properties: newrelic.NotificationDestinationPropertyArray{
/// 				&newrelic.NotificationDestinationPropertyArgs{
/// 					Key:   pulumi.String("AWSAccountId"),
/// 					Value: pulumi.String("123456789123456"),
/// 				},
/// 				&newrelic.NotificationDestinationPropertyArgs{
/// 					Key:   pulumi.String("AWSRegion"),
/// 					Value: pulumi.String("us-east-2"),
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
/// import com.pulumi.newrelic.NotificationDestination;
/// import com.pulumi.newrelic.NotificationDestinationArgs;
/// import com.pulumi.newrelic.inputs.NotificationDestinationPropertyArgs;
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
///         var foo = new NotificationDestination("foo", NotificationDestinationArgs.builder()
///             .accountId("12345678")
///             .name("event-bridge-example")
///             .type("EVENT_BRIDGE")
///             .properties(
///                 NotificationDestinationPropertyArgs.builder()
///                     .key("AWSAccountId")
///                     .value("123456789123456")
///                     .build(),
///                 NotificationDestinationPropertyArgs.builder()
///                     .key("AWSRegion")
///                     .value("us-east-2")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NotificationDestination
///     properties:
///       accountId: 1.2345678e+07
///       name: event-bridge-example
///       type: EVENT_BRIDGE
///       properties:
///         - key: AWSAccountId
///           value: '123456789123456'
///         - key: AWSRegion
///           value: us-east-2
/// ```
///
///
/// #### [Slack](https://docs.newrelic.com/docs/alerts-applied-intelligence/notifications/notification-integrations/#slack)
///
/// In order to create a Slack destination, you have to grant our application access to your workspace. This process is [based on OAuth](https://api.slack.com/authentication/oauth-v2) and can only be done through a browser.
/// As a result, you cannot set up a Slack destination purely with Terraform code.
/// However, if you would like to use Slack-based destinations with other resources in the New Relic Terraform Provider, the data source `newrelic.NotificationDestination` may be used to fetch the ID of the destination; alternatively, you might want to source the ID of the destination from  NerdGraph, or from the New Relic One UI.
///
/// ## Additional Information
///
/// More information about destinations integrations can be found in NewRelic [documentation](https://docs.newrelic.com/docs/alerts-applied-intelligence/notifications/notification-integrations/).
/// More details about the destinations API can be found [here](https://docs.newrelic.com/docs/apis/nerdgraph/examples/nerdgraph-api-notifications-destinations).
///
/// ### Moving from Legacy Alert Channels to Notification Channels
/// As stated in the documentation of this resource and `newrelic.NotificationChannel`, destinations, created using the resource `newrelic.NotificationDestination` can be paired with `newrelic.NotificationChannel` to set up channels. These resources combined, are an alternative to the legacy resource `newrelic.AlertChannel`, which is **deprecated** and will be **removed in a future major release**, as stated in the documentation of the resource.
///
/// If you're currently using `newrelic.AlertChannel` to manage channels, we **strongly recommend** migrating to these notifications-based resources at the earliest.
///
/// Please refer to the examples in this page, or this example for illustrations on setting up channels with these resources.
///
/// ## Import
///
/// &gt; **WARNING:** Slack-based destinations can only be imported and destroyed; this resource **does not** support creating and updating Slack-based destinations, owing to the reasons stated above, under the **Slack** section.
///
/// Destination id can be found in the Destinations page &gt; three dots at the right of the chosen destination &gt; copy destination id to clipboard.
/// This example is especially useful for slack destinations which *must* be imported.
///
/// 1. Add an empty resource to your terraform file:
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NotificationDestination("foo", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NotificationDestination("foo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.NotificationDestination("foo");
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
/// 		_, err := newrelic.NewNotificationDestination(ctx, "foo", nil)
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
///         var foo = new NotificationDestination("foo");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NotificationDestination
/// ```
///
/// 2. Run import command: `terraform import newrelic_notification_destination.foo &lt;destination_id&gt;`
/// 3. Run the following command after the import successfully done and copy the information to your resource:
/// `terraform state show newrelic_notification_destination.foo`
/// 4. Add `ignore_changes` attribute on `all` in your imported resource:
class NotificationDestination extends pulumi.CustomResource {
  /// Determines the New Relic account where the notification destination will be created. Defaults to the account associated with the API key used.
  late final pulumi.Output<String> accountId;

  /// Indicates whether the destination is active.
  late final pulumi.Output<bool?> active;

  /// A nested block that describes a basic username and password authentication credentials. Only one auth_basic block is permitted per notification destination definition.  See Nested auth_basic blocks below for details.
  late final pulumi.Output<NotificationDestinationAuthBasic?> authBasic;

  /// A nested block that describes a custom header authentication credentials. This field is required when the destination type is WORKFLOW_AUTOMATION and optional for other destination types. Multiple blocks are permitted per notification destination definition. Nested auth_custom_header blocks below for details.
  late final pulumi.Output<List<Map<String, dynamic>>?> authCustomHeaders;

  /// A nested block that describes a token authentication credentials. Only one auth_token block is permitted per notification destination definition.  See Nested auth_token blocks below for details.
  late final pulumi.Output<NotificationDestinationAuthToken?> authToken;

  /// The unique entity identifier of the destination in New Relic.
  late final pulumi.Output<String> guid;

  /// The last time a notification was sent.
  late final pulumi.Output<String> lastSent;

  /// The name of the destination.
  late final pulumi.Output<String> name;

  /// A nested block that describes a notification destination property. See Nested property blocks below for details.
  late final pulumi.Output<List<Map<String, dynamic>>> properties;

  /// A nested block that describes a URL that contains sensitive data at the path or parameters. Only one secure_url block is permitted per notification destination definition. See Nested secure_url blocks below for details.
  late final pulumi.Output<NotificationDestinationSecureUrl?> secureUrl;

  /// The status of the destination.
  late final pulumi.Output<String> status;

  /// The type of destination.  One of: `EMAIL`, `SERVICE_NOW`, `SERVICE_NOW_APP`, `WEBHOOK`, `JIRA`, `MOBILE_PUSH`, `EVENT_BRIDGE`, `PAGERDUTY_ACCOUNT_INTEGRATION` or `PAGERDUTY_SERVICE_INTEGRATION`, `MICROSOFT_TEAMS`, `WORKFLOW_AUTOMATION`. The types `SLACK` and `SLACK_COLLABORATION` can only be imported, updated and destroyed (cannot be created via terraform).
  late final pulumi.Output<String> type;

  /// Creates a new [NotificationDestination].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotificationDestination]. {@macro pulumi_index_notification_destination_notification_destination_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotificationDestination(
    String name, {
    NotificationDestinationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/notificationDestination:NotificationDestination',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    active = registerOutput<bool?>('active');
    authBasic = registerOutput<NotificationDestinationAuthBasic?>(
      'authBasic',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NotificationDestinationAuthBasic.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    authCustomHeaders = registerOutput<List<Map<String, dynamic>>?>(
      'authCustomHeaders',
    );
    authToken = registerOutput<NotificationDestinationAuthToken?>(
      'authToken',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NotificationDestinationAuthToken.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    guid = registerOutput<String>('guid');
    lastSent = registerOutput<String>('lastSent');
    this.name = registerOutput<String>('name');
    properties = registerOutput<List<Map<String, dynamic>>>('properties');
    secureUrl = registerOutput<NotificationDestinationSecureUrl?>(
      'secureUrl',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NotificationDestinationSecureUrl.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<String>('status');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [NotificationDestination] resource's state with the given [name] and [id].
  static NotificationDestination get(
    String name,
    pulumi.Input<String> id, {
    NotificationDestinationState? state,
  }) {
    return NotificationDestination._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NotificationDestination._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/notificationDestination:NotificationDestination',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    active = registerOutput<bool?>('active');
    authBasic = registerOutput<NotificationDestinationAuthBasic?>(
      'authBasic',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NotificationDestinationAuthBasic.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    authCustomHeaders = registerOutput<List<Map<String, dynamic>>?>(
      'authCustomHeaders',
    );
    authToken = registerOutput<NotificationDestinationAuthToken?>(
      'authToken',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NotificationDestinationAuthToken.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    guid = registerOutput<String>('guid');
    lastSent = registerOutput<String>('lastSent');
    this.name = registerOutput<String>('name');
    properties = registerOutput<List<Map<String, dynamic>>>('properties');
    secureUrl = registerOutput<NotificationDestinationSecureUrl?>(
      'secureUrl',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NotificationDestinationSecureUrl.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<String>('status');
    type = registerOutput<String>('type');
  }
}
