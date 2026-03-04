import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_result.dart';
import 'get_alert_channel_args.dart';
import 'get_alert_channel_result.dart';
import 'get_alert_policy_args.dart';
import 'get_alert_policy_result.dart';
import 'get_application_args.dart';
import 'get_application_result.dart';
import 'get_authentication_domain_args.dart';
import 'get_authentication_domain_result.dart';
import 'get_cloud_account_args.dart';
import 'get_cloud_account_result.dart';
import 'get_entity_args.dart';
import 'get_entity_result.dart';
import 'get_group_args.dart';
import 'get_group_result.dart';
import 'get_key_transaction_args.dart';
import 'get_key_transaction_result.dart';
import 'get_notification_destination_args.dart';
import 'get_notification_destination_result.dart';
import 'get_obfuscation_expression_args.dart';
import 'get_obfuscation_expression_result.dart';
import 'get_service_level_alert_helper_args.dart';
import 'get_service_level_alert_helper_result.dart';
import 'get_test_grok_pattern_args.dart';
import 'get_test_grok_pattern_result.dart';
import 'get_user_args.dart';
import 'get_user_result.dart';

/// This data source allows you to retrieve information about a specific account in New Relic.
///
/// ## Overview
///
/// You can locate accounts using either their `account_id` or `name`. However, only one of these attributes can be specified at a time. If neither attribute is provided, the provider's default `account_id` will be used.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const example = newrelic.getAccount({
///     name: "Test Account",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// example = newrelic.get_account(name="Test Account")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = NewRelic.GetAccount.Invoke(new()
///     {
///         Name = "Test Account",
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
/// 		_, err := newrelic.GetAccount(ctx, &newrelic.GetAccountArgs{
/// 			Name: pulumi.StringRef("Test Account"),
/// 		}, nil)
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
/// import com.pulumi.newrelic.inputs.GetAccountArgs;
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
///         final var example = NewrelicFunctions.getAccount(GetAccountArgs.builder()
///             .name("Test Account")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: newrelic:getAccount
///       arguments:
///         name: Test Account
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_account_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'newrelic:index/getAccount:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

/// Use this data source to get information about a specific alert channel in New Relic that already exists. More information on Terraform's data sources can be found here.
///
/// &gt; **WARNING:** The `newrelic.AlertChannel` data source is deprecated and will be removed in the next major release.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// // Data source
/// const foo = newrelic.getAlertChannel({
///     name: "foo@example.com",
/// });
/// // Resource
/// const fooAlertPolicy = new newrelic.AlertPolicy("foo", {name: "foo"});
/// // Using the data source and resource together
/// const fooAlertPolicyChannel = new newrelic.AlertPolicyChannel("foo", {
///     policyId: fooAlertPolicy.id,
///     channelId: foo.then(foo => foo.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// # Data source
/// foo = newrelic.get_alert_channel(name="foo@example.com")
/// # Resource
/// foo_alert_policy = newrelic.AlertPolicy("foo", name="foo")
/// # Using the data source and resource together
/// foo_alert_policy_channel = newrelic.AlertPolicyChannel("foo",
///     policy_id=foo_alert_policy.id,
///     channel_id=foo.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Data source
///     var foo = NewRelic.GetAlertChannel.Invoke(new()
///     {
///         Name = "foo@example.com",
///     });
///
///     // Resource
///     var fooAlertPolicy = new NewRelic.AlertPolicy("foo", new()
///     {
///         Name = "foo",
///     });
///
///     // Using the data source and resource together
///     var fooAlertPolicyChannel = new NewRelic.AlertPolicyChannel("foo", new()
///     {
///         PolicyId = fooAlertPolicy.Id,
///         ChannelId = foo.Apply(getAlertChannelResult => getAlertChannelResult.Id),
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
/// 		// Data source
/// 		foo, err := newrelic.LookupAlertChannel(ctx, &newrelic.LookupAlertChannelArgs{
/// 			Name: "foo@example.com",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Resource
/// 		fooAlertPolicy, err := newrelic.NewAlertPolicy(ctx, "foo", &newrelic.AlertPolicyArgs{
/// 			Name: pulumi.String("foo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Using the data source and resource together
/// 		_, err = newrelic.NewAlertPolicyChannel(ctx, "foo", &newrelic.AlertPolicyChannelArgs{
/// 			PolicyId:  fooAlertPolicy.ID(),
/// 			ChannelId: foo.Id,
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
///         // Data source
///         final var foo = NewrelicFunctions.getAlertChannel(GetAlertChannelArgs.builder()
///             .name("foo@example.com")
///             .build());
///
///         // Resource
///         var fooAlertPolicy = new AlertPolicy("fooAlertPolicy", AlertPolicyArgs.builder()
///             .name("foo")
///             .build());
///
///         // Using the data source and resource together
///         var fooAlertPolicyChannel = new AlertPolicyChannel("fooAlertPolicyChannel", AlertPolicyChannelArgs.builder()
///             .policyId(fooAlertPolicy.id())
///             .channelId(foo.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Resource
///   fooAlertPolicy:
///     type: newrelic:AlertPolicy
///     name: foo
///     properties:
///       name: foo
///   # Using the data source and resource together
///   fooAlertPolicyChannel:
///     type: newrelic:AlertPolicyChannel
///     name: foo
///     properties:
///       policyId: ${fooAlertPolicy.id}
///       channelId: ${foo.id}
/// variables:
///   # Data source
///   foo:
///     fn::invoke:
///       function: newrelic:getAlertChannel
///       arguments:
///         name: foo@example.com
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_alert_channel_get_alert_channel_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlertChannelResult> getAlertChannel(
  GetAlertChannelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'newrelic:index/getAlertChannel:getAlertChannel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlertChannelResult.fromMap(result);
}

/// Use this data source to get information about a specific alert policy in New Relic that already exists.
/// More information on Terraform's data sources can be found here.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = newrelic.getAlertChannel({
///     name: "foo@example.com",
/// });
/// const fooGetAlertPolicy = newrelic.getAlertPolicy({
///     name: "foo policy",
/// });
/// const fooAlertPolicyChannel = new newrelic.AlertPolicyChannel("foo", {
///     policyId: fooGetAlertPolicy.then(fooGetAlertPolicy => fooGetAlertPolicy.id),
///     channelId: foo.then(foo => foo.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.get_alert_channel(name="foo@example.com")
/// foo_get_alert_policy = newrelic.get_alert_policy(name="foo policy")
/// foo_alert_policy_channel = newrelic.AlertPolicyChannel("foo",
///     policy_id=foo_get_alert_policy.id,
///     channel_id=foo.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = NewRelic.GetAlertChannel.Invoke(new()
///     {
///         Name = "foo@example.com",
///     });
///
///     var fooGetAlertPolicy = NewRelic.GetAlertPolicy.Invoke(new()
///     {
///         Name = "foo policy",
///     });
///
///     var fooAlertPolicyChannel = new NewRelic.AlertPolicyChannel("foo", new()
///     {
///         PolicyId = fooGetAlertPolicy.Apply(getAlertPolicyResult => getAlertPolicyResult.Id),
///         ChannelId = foo.Apply(getAlertChannelResult => getAlertChannelResult.Id),
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
/// 		foo, err := newrelic.LookupAlertChannel(ctx, &newrelic.LookupAlertChannelArgs{
/// 			Name: "foo@example.com",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooGetAlertPolicy, err := newrelic.LookupAlertPolicy(ctx, &newrelic.LookupAlertPolicyArgs{
/// 			Name: "foo policy",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewAlertPolicyChannel(ctx, "foo", &newrelic.AlertPolicyChannelArgs{
/// 			PolicyId:  pulumi.String(fooGetAlertPolicy.Id),
/// 			ChannelId: foo.Id,
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
/// import com.pulumi.newrelic.inputs.GetAlertPolicyArgs;
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
///         final var foo = NewrelicFunctions.getAlertChannel(GetAlertChannelArgs.builder()
///             .name("foo@example.com")
///             .build());
///
///         final var fooGetAlertPolicy = NewrelicFunctions.getAlertPolicy(GetAlertPolicyArgs.builder()
///             .name("foo policy")
///             .build());
///
///         var fooAlertPolicyChannel = new AlertPolicyChannel("fooAlertPolicyChannel", AlertPolicyChannelArgs.builder()
///             .policyId(fooGetAlertPolicy.id())
///             .channelId(foo.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fooAlertPolicyChannel:
///     type: newrelic:AlertPolicyChannel
///     name: foo
///     properties:
///       policyId: ${fooGetAlertPolicy.id}
///       channelId: ${foo.id}
/// variables:
///   foo:
///     fn::invoke:
///       function: newrelic:getAlertChannel
///       arguments:
///         name: foo@example.com
///   fooGetAlertPolicy:
///     fn::invoke:
///       function: newrelic:getAlertPolicy
///       arguments:
///         name: foo policy
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_alert_policy_get_alert_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlertPolicyResult> getAlertPolicy(
  GetAlertPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'newrelic:index/getAlertPolicy:getAlertPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlertPolicyResult.fromMap(result);
}

/// &gt; **DEPRECATED** Use at your own risk. Use the [`newrelic.getEntity`](https://www.terraform.io/docs/providers/newrelic/d/entity.html) data source instead. This feature may be removed in the next major release.
///
/// Use this data source to get information about a specific application in New Relic that already exists. More information on Terraform's data sources can be found here.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const app = newrelic.getApplication({
///     name: "my-app",
/// });
/// const foo = new newrelic.AlertPolicy("foo", {name: "foo"});
/// const fooAlertCondition = new newrelic.AlertCondition("foo", {
///     policyId: foo.id,
///     name: "foo",
///     type: "apm_app_metric",
///     entities: [app.then(app => app.id)],
///     metric: "apdex",
///     runbookUrl: "https://www.example.com",
///     terms: [{
///         duration: 5,
///         operator: "below",
///         priority: "critical",
///         threshold: 0.75,
///         timeFunction: "all",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// app = newrelic.get_application(name="my-app")
/// foo = newrelic.AlertPolicy("foo", name="foo")
/// foo_alert_condition = newrelic.AlertCondition("foo",
///     policy_id=foo.id,
///     name="foo",
///     type="apm_app_metric",
///     entities=[app.id],
///     metric="apdex",
///     runbook_url="https://www.example.com",
///     terms=[{
///         "duration": 5,
///         "operator": "below",
///         "priority": "critical",
///         "threshold": 0.75,
///         "time_function": "all",
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
///     var app = NewRelic.GetApplication.Invoke(new()
///     {
///         Name = "my-app",
///     });
///
///     var foo = new NewRelic.AlertPolicy("foo", new()
///     {
///         Name = "foo",
///     });
///
///     var fooAlertCondition = new NewRelic.AlertCondition("foo", new()
///     {
///         PolicyId = foo.Id,
///         Name = "foo",
///         Type = "apm_app_metric",
///         Entities = new[]
///         {
///             app.Apply(getApplicationResult => getApplicationResult.Id),
///         },
///         Metric = "apdex",
///         RunbookUrl = "https://www.example.com",
///         Terms = new[]
///         {
///             new NewRelic.Inputs.AlertConditionTermArgs
///             {
///                 Duration = 5,
///                 Operator = "below",
///                 Priority = "critical",
///                 Threshold = 0.75,
///                 TimeFunction = "all",
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
/// 		app, err := newrelic.GetApplication(ctx, &newrelic.GetApplicationArgs{
/// 			Name: "my-app",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foo, err := newrelic.NewAlertPolicy(ctx, "foo", &newrelic.AlertPolicyArgs{
/// 			Name: pulumi.String("foo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewAlertCondition(ctx, "foo", &newrelic.AlertConditionArgs{
/// 			PolicyId: foo.ID(),
/// 			Name:     pulumi.String("foo"),
/// 			Type:     pulumi.String("apm_app_metric"),
/// 			Entities: pulumi.StringArray{
/// 				pulumi.String(app.Id),
/// 			},
/// 			Metric:     pulumi.String("apdex"),
/// 			RunbookUrl: pulumi.String("https://www.example.com"),
/// 			Terms: newrelic.AlertConditionTermArray{
/// 				&newrelic.AlertConditionTermArgs{
/// 					Duration:     pulumi.Int(5),
/// 					Operator:     pulumi.String("below"),
/// 					Priority:     pulumi.String("critical"),
/// 					Threshold:    pulumi.Float64(0.75),
/// 					TimeFunction: pulumi.String("all"),
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
/// import com.pulumi.newrelic.NewrelicFunctions;
/// import com.pulumi.newrelic.inputs.GetApplicationArgs;
/// import com.pulumi.newrelic.AlertPolicy;
/// import com.pulumi.newrelic.AlertPolicyArgs;
/// import com.pulumi.newrelic.AlertCondition;
/// import com.pulumi.newrelic.AlertConditionArgs;
/// import com.pulumi.newrelic.inputs.AlertConditionTermArgs;
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
///         final var app = NewrelicFunctions.getApplication(GetApplicationArgs.builder()
///             .name("my-app")
///             .build());
///
///         var foo = new AlertPolicy("foo", AlertPolicyArgs.builder()
///             .name("foo")
///             .build());
///
///         var fooAlertCondition = new AlertCondition("fooAlertCondition", AlertConditionArgs.builder()
///             .policyId(foo.id())
///             .name("foo")
///             .type("apm_app_metric")
///             .entities(app.id())
///             .metric("apdex")
///             .runbookUrl("https://www.example.com")
///             .terms(AlertConditionTermArgs.builder()
///                 .duration(5)
///                 .operator("below")
///                 .priority("critical")
///                 .threshold(0.75)
///                 .timeFunction("all")
///                 .build())
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
///       name: foo
///   fooAlertCondition:
///     type: newrelic:AlertCondition
///     name: foo
///     properties:
///       policyId: ${foo.id}
///       name: foo
///       type: apm_app_metric
///       entities:
///         - ${app.id}
///       metric: apdex
///       runbookUrl: https://www.example.com
///       terms:
///         - duration: 5
///           operator: below
///           priority: critical
///           threshold: '0.75'
///           timeFunction: all
/// variables:
///   app:
///     fn::invoke:
///       function: newrelic:getApplication
///       arguments:
///         name: my-app
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_application_get_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationResult> getApplication(
  GetApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'newrelic:index/getApplication:getApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult.fromMap(result);
}

/// Use this data source to fetch the ID of an authentication domain belonging to your account, matching the specified name.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// export = async () => {
///     const foo = await newrelic.getAuthenticationDomain({
///         name: "Test Authentication Domain",
///     });
///     return {
///         foo: foo.id,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.get_authentication_domain(name="Test Authentication Domain")
/// pulumi.export("foo", foo.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = NewRelic.GetAuthenticationDomain.Invoke(new()
///     {
///         Name = "Test Authentication Domain",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["foo"] = foo.Apply(getAuthenticationDomainResult => getAuthenticationDomainResult.Id),
///     };
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
/// 		foo, err := newrelic.GetAuthenticationDomain(ctx, &newrelic.GetAuthenticationDomainArgs{
/// 			Name: "Test Authentication Domain",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("foo", foo.Id)
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
/// import com.pulumi.newrelic.inputs.GetAuthenticationDomainArgs;
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
///         final var foo = NewrelicFunctions.getAuthenticationDomain(GetAuthenticationDomainArgs.builder()
///             .name("Test Authentication Domain")
///             .build());
///
///         ctx.export("foo", foo.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: newrelic:getAuthenticationDomain
///       arguments:
///         name: Test Authentication Domain
/// outputs:
///   foo: ${foo.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_authentication_domain_get_authentication_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthenticationDomainResult> getAuthenticationDomain(
  GetAuthenticationDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'newrelic:index/getAuthenticationDomain:getAuthenticationDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthenticationDomainResult.fromMap(result);
}

/// Use this data source to get information about a specific cloud account linked to New Relic.
/// Accounts can be located by a combination of New Relic Account ID, name and cloud provider (aws, gcp, azure, etc). Name and cloud provider are required attributes. If no account_id is specified on the resource the provider level account_id will be used.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const account = newrelic.getCloudAccount({
///     accountId: "12345",
///     cloudProvider: "aws",
///     name: "my aws account",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// account = newrelic.get_cloud_account(account_id="12345",
///     cloud_provider="aws",
///     name="my aws account")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = NewRelic.GetCloudAccount.Invoke(new()
///     {
///         AccountId = "12345",
///         CloudProvider = "aws",
///         Name = "my aws account",
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
/// 		_, err := newrelic.GetCloudAccount(ctx, &newrelic.GetCloudAccountArgs{
/// 			AccountId:     pulumi.StringRef("12345"),
/// 			CloudProvider: "aws",
/// 			Name:          "my aws account",
/// 		}, nil)
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
/// import com.pulumi.newrelic.inputs.GetCloudAccountArgs;
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
///         final var account = NewrelicFunctions.getCloudAccount(GetCloudAccountArgs.builder()
///             .accountId("12345")
///             .cloudProvider("aws")
///             .name("my aws account")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   account:
///     fn::invoke:
///       function: newrelic:getCloudAccount
///       arguments:
///         accountId: 12345
///         cloudProvider: aws
///         name: my aws account
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_cloud_account_get_cloud_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudAccountResult> getCloudAccount(
  GetCloudAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'newrelic:index/getCloudAccount:getCloudAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudAccountResult.fromMap(result);
}

/// Use this data source to get information about a specific entity in New Relic One that already exists. More information on Terraform's data sources can be found here.
///
/// &gt; **IMPORTANT!** Version 2.0.0 of the New Relic Terraform Provider introduces some [additional requirements](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/guides/migration_guide_v2) for configuring the provider.
/// &lt;br&gt;&lt;br&gt;
/// Before upgrading to version 2.0.0 or later, it is recommended to upgrade to the most recent 1.x version of the provider and ensure that your environment successfully runs `pulumi preview` without unexpected changes.
///
/// ### Example: Filter By Account ID
///
/// The default behaviour of this data source is to retrieve entities matching the specified parameters (such as `name`, `domain`, `type`) from NerdGraph with the credentials specified in the configuration of the provider (account ID and API Key), filter them by the account ID specified in the configuration of the provider, and return the first match.
///
/// This would mean, if no entity with the specified search parameters is found associated with the account ID in the configuration of the provider, i.e. `NEW_RELIC_ACCOUNT_ID`, an error is thrown, stating that no matching entity has been found.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// // The entity returned by this configuration would have to
/// // belong to the account_id specified in the provider
/// // configuration, i.e. NEW_RELIC_ACCOUNT_ID.
/// const app = newrelic.getEntity({
///     name: "my-app",
///     domain: "APM",
///     type: "APPLICATION",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// # The entity returned by this configuration would have to
/// # belong to the account_id specified in the provider
/// # configuration, i.e. NEW_RELIC_ACCOUNT_ID.
/// app = newrelic.get_entity(name="my-app",
///     domain="APM",
///     type="APPLICATION")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // The entity returned by this configuration would have to
///     // belong to the account_id specified in the provider
///     // configuration, i.e. NEW_RELIC_ACCOUNT_ID.
///     var app = NewRelic.GetEntity.Invoke(new()
///     {
///         Name = "my-app",
///         Domain = "APM",
///         Type = "APPLICATION",
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
/// 		// The entity returned by this configuration would have to
/// 		// belong to the account_id specified in the provider
/// 		// configuration, i.e. NEW_RELIC_ACCOUNT_ID.
/// 		_, err := newrelic.GetEntity(ctx, &newrelic.GetEntityArgs{
/// 			Name:   "my-app",
/// 			Domain: pulumi.StringRef("APM"),
/// 			Type:   pulumi.StringRef("APPLICATION"),
/// 		}, nil)
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
/// import com.pulumi.newrelic.inputs.GetEntityArgs;
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
///         // The entity returned by this configuration would have to
///         // belong to the account_id specified in the provider
///         // configuration, i.e. NEW_RELIC_ACCOUNT_ID.
///         final var app = NewrelicFunctions.getEntity(GetEntityArgs.builder()
///             .name("my-app")
///             .domain("APM")
///             .type("APPLICATION")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # The entity returned by this configuration would have to
///   # belong to the account_id specified in the provider
///   # configuration, i.e. NEW_RELIC_ACCOUNT_ID.
///   app:
///     fn::invoke:
///       function: newrelic:getEntity
///       arguments:
///         name: my-app
///         domain: APM
///         type: APPLICATION
/// ```
///
/// However, in order to cater to scenarios in which it could be necessary to retrieve an entity belonging to a subaccount using the account ID and API Key of the parent account (for instance, when entities with identical names are present in both the parent account and subaccounts, since matching entities from subaccounts too are returned by NerdGraph), the `account_id` attribute of this data source may be availed. This ensures that the account ID in the configuration of the provider, used to filter entities returned by the API is now overridden by the `account_id` specified in the configuration; i.e., in the below example, the data source would now return an entity matching the specified `name`, belonging to the account with the ID `account_id`.
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// // The entity returned by this configuration, unlike in
/// // the above example, would have to belong to the account_id
/// // specified in the configuration below, i.e. 654321.
/// const app = newrelic.getEntity({
///     name: "my-app",
///     accountId: "654321",
///     domain: "APM",
///     type: "APPLICATION",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// # The entity returned by this configuration, unlike in
/// # the above example, would have to belong to the account_id
/// # specified in the configuration below, i.e. 654321.
/// app = newrelic.get_entity(name="my-app",
///     account_id="654321",
///     domain="APM",
///     type="APPLICATION")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // The entity returned by this configuration, unlike in
///     // the above example, would have to belong to the account_id
///     // specified in the configuration below, i.e. 654321.
///     var app = NewRelic.GetEntity.Invoke(new()
///     {
///         Name = "my-app",
///         AccountId = "654321",
///         Domain = "APM",
///         Type = "APPLICATION",
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
/// 		// The entity returned by this configuration, unlike in
/// 		// the above example, would have to belong to the account_id
/// 		// specified in the configuration below, i.e. 654321.
/// 		_, err := newrelic.GetEntity(ctx, &newrelic.GetEntityArgs{
/// 			Name:      "my-app",
/// 			AccountId: pulumi.StringRef("654321"),
/// 			Domain:    pulumi.StringRef("APM"),
/// 			Type:      pulumi.StringRef("APPLICATION"),
/// 		}, nil)
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
/// import com.pulumi.newrelic.inputs.GetEntityArgs;
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
///         // The entity returned by this configuration, unlike in
///         // the above example, would have to belong to the account_id
///         // specified in the configuration below, i.e. 654321.
///         final var app = NewrelicFunctions.getEntity(GetEntityArgs.builder()
///             .name("my-app")
///             .accountId("654321")
///             .domain("APM")
///             .type("APPLICATION")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # The entity returned by this configuration, unlike in
///   # the above example, would have to belong to the account_id
///   # specified in the configuration below, i.e. 654321.
///   app:
///     fn::invoke:
///       function: newrelic:getEntity
///       arguments:
///         name: my-app
///         accountId: 654321
///         domain: APM
///         type: APPLICATION
/// ```
///
/// The following example explains a use case along the lines of the aforementioned; using the `account_id` argument in the data source to allow the filtering criteria to be the `account_id` specified (of the subaccount), and not the account ID in the provider configuration.
///
/// In simpler terms, when entities are queried from the parent account, entities with matching names are returned from subaccounts too, hence, specifying the `account_id` of the subaccount in the configuration allows the entity returned to belong to the subaccount with `account_id`.
/// ### Query for an OTEL entity
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const app = newrelic.getEntity({
///     name: "my-otel-app",
///     domain: "EXT",
///     type: "SERVICE",
///     tags: [{
///         key: "accountID",
///         value: "12345",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// app = newrelic.get_entity(name="my-otel-app",
///     domain="EXT",
///     type="SERVICE",
///     tags=[{
///         "key": "accountID",
///         "value": "12345",
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
///     var app = NewRelic.GetEntity.Invoke(new()
///     {
///         Name = "my-otel-app",
///         Domain = "EXT",
///         Type = "SERVICE",
///         Tags = new[]
///         {
///             new NewRelic.Inputs.GetEntityTagInputArgs
///             {
///                 Key = "accountID",
///                 Value = "12345",
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
/// 		_, err := newrelic.GetEntity(ctx, &newrelic.GetEntityArgs{
/// 			Name:   "my-otel-app",
/// 			Domain: pulumi.StringRef("EXT"),
/// 			Type:   pulumi.StringRef("SERVICE"),
/// 			Tags: []newrelic.GetEntityTag{
/// 				{
/// 					Key:   "accountID",
/// 					Value: "12345",
/// 				},
/// 			},
/// 		}, nil)
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
/// import com.pulumi.newrelic.inputs.GetEntityArgs;
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
///         final var app = NewrelicFunctions.getEntity(GetEntityArgs.builder()
///             .name("my-otel-app")
///             .domain("EXT")
///             .type("SERVICE")
///             .tags(GetEntityTagArgs.builder()
///                 .key("accountID")
///                 .value("12345")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   app:
///     fn::invoke:
///       function: newrelic:getEntity
///       arguments:
///         name: my-otel-app
///         domain: EXT
///         type: SERVICE
///         tags:
///           - key: accountID
///             value: '12345'
/// ```
///
///
/// ### Query for an entity by type (AWS Lambda entity in this example)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const app = newrelic.getEntity({
///     name: "my_lambda_trace",
///     type: "AWSLAMBDAFUNCTION",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// app = newrelic.get_entity(name="my_lambda_trace",
///     type="AWSLAMBDAFUNCTION")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var app = NewRelic.GetEntity.Invoke(new()
///     {
///         Name = "my_lambda_trace",
///         Type = "AWSLAMBDAFUNCTION",
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
/// 		_, err := newrelic.GetEntity(ctx, &newrelic.GetEntityArgs{
/// 			Name: "my_lambda_trace",
/// 			Type: pulumi.StringRef("AWSLAMBDAFUNCTION"),
/// 		}, nil)
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
/// import com.pulumi.newrelic.inputs.GetEntityArgs;
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
///         final var app = NewrelicFunctions.getEntity(GetEntityArgs.builder()
///             .name("my_lambda_trace")
///             .type("AWSLAMBDAFUNCTION")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   app:
///     fn::invoke:
///       function: newrelic:getEntity
///       arguments:
///         name: my_lambda_trace
///         type: AWSLAMBDAFUNCTION
/// ```
///
///
/// ### Using the `entity_tags` Attribute to Fetch Tags Associated with the Entity
///
/// As stated above in the **Attributes Reference** section, while the attribute `entity_tags` helps retrieve tags associated with the entity fetched by the data source, the tags are returned as a JSON-encoded string and not a conventional list or a map, owing to a couple of design considerations; which is why one would need to use the Terraform function `jsondecode()`, along with the attribute `entity_tags` in order to convert the JSON-encoded string into a map with key-value pairs.
///
/// The following is an illustration of the aforementioned scenario. It may be observed that a key-value pair version of the JSON-encoded string exported by `entity_tags` is written to the variable `key_value_maps` , using the `jsondecode()` function.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
/// import * as std from "@pulumi/std";
///
/// export = async () => {
///     const foo = await newrelic.getEntity({
///         name: "Sample Searchable Entity",
///         domain: "EXT",
///         type: "SERVICE_LEVEL",
///     });
///     const keyValueMap = .reduce((__obj, pair) => ({ ...__obj, [pair.key]: pair.values }));
///     return {
///         keyValueMap: keyValueMap,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
/// import pulumi_std as std
///
/// foo = newrelic.get_entity(name="Sample Searchable Entity",
///     domain="EXT",
///     type="SERVICE_LEVEL")
/// key_value_map = {pair["key"]: pair["values"] for pair in std.jsondecode(input=foo.entity_tags).result}
/// pulumi.export("keyValueMap", key_value_map)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = NewRelic.GetEntity.Invoke(new()
///     {
///         Name = "Sample Searchable Entity",
///         Domain = "EXT",
///         Type = "SERVICE_LEVEL",
///     });
///
///     var keyValueMap = Std.Jsondecode.Invoke(new()
///     {
///         Input = foo.Apply(getEntityResult => getEntityResult.EntityTags),
///     }).Apply(invoke => .ToDictionary(item => {
///         var pair = item.Value;
///         return pair.Key;
///     }, item => {
///         var pair = item.Value;
///         return pair.Values;
///     }));
///
///     return new Dictionary<string, object?>
///     {
///         ["keyValueMap"] = keyValueMap,
///     };
/// });
/// ```
///
/// The value of `local.key_value_map`  would look like the following.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_entity_get_entity_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntityResult> getEntity(
  GetEntityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'newrelic:index/getEntity:getEntity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityResult.fromMap(result);
}

/// The `newrelic.Group` data source helps search for a group by its name and retrieve the ID of the matching group and other associated attributes.
///
/// ## Example Usage
///
/// The below example illustrates fetching the ID of a group (and IDs of users who belong to the group, if any) using the required arguments.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = newrelic.getAuthenticationDomain({
///     name: "Test Authentication Domain",
/// });
/// const fooGetGroup = foo.then(foo => newrelic.getGroup({
///     authenticationDomainId: foo.id,
///     name: "Test Group",
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.get_authentication_domain(name="Test Authentication Domain")
/// foo_get_group = newrelic.get_group(authentication_domain_id=foo.id,
///     name="Test Group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = NewRelic.GetAuthenticationDomain.Invoke(new()
///     {
///         Name = "Test Authentication Domain",
///     });
///
///     var fooGetGroup = NewRelic.GetGroup.Invoke(new()
///     {
///         AuthenticationDomainId = foo.Apply(getAuthenticationDomainResult => getAuthenticationDomainResult.Id),
///         Name = "Test Group",
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
/// 		foo, err := newrelic.GetAuthenticationDomain(ctx, &newrelic.GetAuthenticationDomainArgs{
/// 			Name: "Test Authentication Domain",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.LookupGroup(ctx, &newrelic.LookupGroupArgs{
/// 			AuthenticationDomainId: foo.Id,
/// 			Name:                   "Test Group",
/// 		}, nil)
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
/// import com.pulumi.newrelic.inputs.GetAuthenticationDomainArgs;
/// import com.pulumi.newrelic.inputs.GetGroupArgs;
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
///         final var foo = NewrelicFunctions.getAuthenticationDomain(GetAuthenticationDomainArgs.builder()
///             .name("Test Authentication Domain")
///             .build());
///
///         final var fooGetGroup = NewrelicFunctions.getGroup(GetGroupArgs.builder()
///             .authenticationDomainId(foo.id())
///             .name("Test Group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: newrelic:getAuthenticationDomain
///       arguments:
///         name: Test Authentication Domain
///   fooGetGroup:
///     fn::invoke:
///       function: newrelic:getGroup
///       arguments:
///         authenticationDomainId: ${foo.id}
///         name: Test Group
/// ```
///
///
/// ## Additional Examples
///
/// The following example demonstrates utilizing attributes exported by this data source.
///
/// In order to directly reference the attributes `id` and `user_ids` from this data source, you can use the syntax `data.newrelic_group.foo.id` and `data.newrelic_group.foo.user_ids`, respectively. However, if you need to assign these values to local variables and perform further processing (such as conditionally formatting the `user_ids` attribute as shown in the example below), consider using the provided configuration. These variables can then be accessed elsewhere using the syntax `local.id` and `local.user_id`, respectively.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
/// import * as std from "@pulumi/std";
///
/// const foo = newrelic.getAuthenticationDomain({
///     name: "Test Authentication Domain",
/// });
/// const fooGetGroup = foo.then(foo => newrelic.getGroup({
///     authenticationDomainId: foo.id,
///     name: "Test Group",
/// }));
/// const id = fooGetGroup.then(fooGetGroup => fooGetGroup.id);
/// const userIds = pulumi.all([fooGetGroup.then(fooGetGroup => fooGetGroup.userIds).length, fooGetGroup.then(fooGetGroup => std.join({
///     separator: ", ",
///     input: fooGetGroup.userIds,
/// }))]).apply(([length, invoke]) => length > 0 ? invoke.result : "");
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
/// import pulumi_std as std
///
/// foo = newrelic.get_authentication_domain(name="Test Authentication Domain")
/// foo_get_group = newrelic.get_group(authentication_domain_id=foo.id,
///     name="Test Group")
/// id = foo_get_group.id
/// user_ids = len(foo_get_group.user_ids).apply(lambda length: std.join(separator=", ",
///     input=foo_get_group.user_ids).result if length > 0 else "")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = NewRelic.GetAuthenticationDomain.Invoke(new()
///     {
///         Name = "Test Authentication Domain",
///     });
///
///     var fooGetGroup = NewRelic.GetGroup.Invoke(new()
///     {
///         AuthenticationDomainId = foo.Apply(getAuthenticationDomainResult => getAuthenticationDomainResult.Id),
///         Name = "Test Group",
///     });
///
///     var id = fooGetGroup.Apply(getGroupResult => getGroupResult.Id);
///
///     var userIds = Output.Tuple(fooGetGroup.Apply(getGroupResult => getGroupResult.UserIds).Length, Std.Join.Invoke(new()
///     {
///         Separator = ", ",
///         Input = fooGetGroup.Apply(getGroupResult => getGroupResult.UserIds),
///     })).Apply(values =>
///     {
///         var length = values.Item1;
///         var invoke = values.Item2;
///         return length > 0 ? invoke.Result : "";
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := newrelic.GetAuthenticationDomain(ctx, &newrelic.GetAuthenticationDomainArgs{
/// 			Name: "Test Authentication Domain",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooGetGroup, err := newrelic.LookupGroup(ctx, &newrelic.LookupGroupArgs{
/// 			AuthenticationDomainId: foo.Id,
/// 			Name:                   "Test Group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ := fooGetGroup.Id
/// 		var tmp0 *string
/// 		if length > 0 {
/// 			tmp0 = std.Join(ctx, &std.JoinArgs{
/// 				Separator: ", ",
/// 				Input:     fooGetGroup.UserIds,
/// 			}, nil).Result
/// 		} else {
/// 			tmp0 = ""
/// 		}
/// 		_ = len(fooGetGroup.UserIds).ApplyT(func(length int) (*string, error) {
/// 			return &tmp0, nil
/// 		}).(pulumi.StringPtrOutput)
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
/// import com.pulumi.newrelic.inputs.GetAuthenticationDomainArgs;
/// import com.pulumi.newrelic.inputs.GetGroupArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
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
///         final var foo = NewrelicFunctions.getAuthenticationDomain(GetAuthenticationDomainArgs.builder()
///             .name("Test Authentication Domain")
///             .build());
///
///         final var fooGetGroup = NewrelicFunctions.getGroup(GetGroupArgs.builder()
///             .authenticationDomainId(foo.id())
///             .name("Test Group")
///             .build());
///
///         final var id = fooGetGroup.id();
///
///         final var userIds = fooGetGroup.userIds().length().applyValue(_length -> _length > 0 ? StdFunctions.join(JoinArgs.builder()
///             .separator(", ")
///             .input(fooGetGroup.userIds())
///             .build()).result() : "");
///
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_group_get_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupResult> getGroup(
  GetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'newrelic:index/getGroup:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupResult.fromMap(result);
}

/// Use this data source to get information about a specific key transaction in New Relic that already exists.  More information on Terraform's data sources can be found here.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const txn = newrelic.getKeyTransaction({
///     name: "txn",
/// });
/// const foo = new newrelic.AlertPolicy("foo", {name: "foo"});
/// const fooAlertCondition = new newrelic.AlertCondition("foo", {
///     policyId: foo.id,
///     name: "foo",
///     type: "apm_kt_metric",
///     entities: [txn.then(txn => txn.id)],
///     metric: "error_percentage",
///     runbookUrl: "https://www.example.com",
///     terms: [{
///         duration: 5,
///         operator: "below",
///         priority: "critical",
///         threshold: 0.75,
///         timeFunction: "all",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// txn = newrelic.get_key_transaction(name="txn")
/// foo = newrelic.AlertPolicy("foo", name="foo")
/// foo_alert_condition = newrelic.AlertCondition("foo",
///     policy_id=foo.id,
///     name="foo",
///     type="apm_kt_metric",
///     entities=[txn.id],
///     metric="error_percentage",
///     runbook_url="https://www.example.com",
///     terms=[{
///         "duration": 5,
///         "operator": "below",
///         "priority": "critical",
///         "threshold": 0.75,
///         "time_function": "all",
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
///     var txn = NewRelic.GetKeyTransaction.Invoke(new()
///     {
///         Name = "txn",
///     });
///
///     var foo = new NewRelic.AlertPolicy("foo", new()
///     {
///         Name = "foo",
///     });
///
///     var fooAlertCondition = new NewRelic.AlertCondition("foo", new()
///     {
///         PolicyId = foo.Id,
///         Name = "foo",
///         Type = "apm_kt_metric",
///         Entities = new[]
///         {
///             txn.Apply(getKeyTransactionResult => getKeyTransactionResult.Id),
///         },
///         Metric = "error_percentage",
///         RunbookUrl = "https://www.example.com",
///         Terms = new[]
///         {
///             new NewRelic.Inputs.AlertConditionTermArgs
///             {
///                 Duration = 5,
///                 Operator = "below",
///                 Priority = "critical",
///                 Threshold = 0.75,
///                 TimeFunction = "all",
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
/// 		txn, err := newrelic.LookupKeyTransaction(ctx, &newrelic.LookupKeyTransactionArgs{
/// 			Name: "txn",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foo, err := newrelic.NewAlertPolicy(ctx, "foo", &newrelic.AlertPolicyArgs{
/// 			Name: pulumi.String("foo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewAlertCondition(ctx, "foo", &newrelic.AlertConditionArgs{
/// 			PolicyId: foo.ID(),
/// 			Name:     pulumi.String("foo"),
/// 			Type:     pulumi.String("apm_kt_metric"),
/// 			Entities: pulumi.StringArray{
/// 				pulumi.String(txn.Id),
/// 			},
/// 			Metric:     pulumi.String("error_percentage"),
/// 			RunbookUrl: pulumi.String("https://www.example.com"),
/// 			Terms: newrelic.AlertConditionTermArray{
/// 				&newrelic.AlertConditionTermArgs{
/// 					Duration:     pulumi.Int(5),
/// 					Operator:     pulumi.String("below"),
/// 					Priority:     pulumi.String("critical"),
/// 					Threshold:    pulumi.Float64(0.75),
/// 					TimeFunction: pulumi.String("all"),
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
/// import com.pulumi.newrelic.NewrelicFunctions;
/// import com.pulumi.newrelic.inputs.GetKeyTransactionArgs;
/// import com.pulumi.newrelic.AlertPolicy;
/// import com.pulumi.newrelic.AlertPolicyArgs;
/// import com.pulumi.newrelic.AlertCondition;
/// import com.pulumi.newrelic.AlertConditionArgs;
/// import com.pulumi.newrelic.inputs.AlertConditionTermArgs;
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
///         final var txn = NewrelicFunctions.getKeyTransaction(GetKeyTransactionArgs.builder()
///             .name("txn")
///             .build());
///
///         var foo = new AlertPolicy("foo", AlertPolicyArgs.builder()
///             .name("foo")
///             .build());
///
///         var fooAlertCondition = new AlertCondition("fooAlertCondition", AlertConditionArgs.builder()
///             .policyId(foo.id())
///             .name("foo")
///             .type("apm_kt_metric")
///             .entities(txn.id())
///             .metric("error_percentage")
///             .runbookUrl("https://www.example.com")
///             .terms(AlertConditionTermArgs.builder()
///                 .duration(5)
///                 .operator("below")
///                 .priority("critical")
///                 .threshold(0.75)
///                 .timeFunction("all")
///                 .build())
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
///       name: foo
///   fooAlertCondition:
///     type: newrelic:AlertCondition
///     name: foo
///     properties:
///       policyId: ${foo.id}
///       name: foo
///       type: apm_kt_metric
///       entities:
///         - ${txn.id}
///       metric: error_percentage
///       runbookUrl: https://www.example.com
///       terms:
///         - duration: 5
///           operator: below
///           priority: critical
///           threshold: '0.75'
///           timeFunction: all
/// variables:
///   txn:
///     fn::invoke:
///       function: newrelic:getKeyTransaction
///       arguments:
///         name: txn
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_key_transaction_get_key_transaction_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyTransactionResult> getKeyTransaction(
  GetKeyTransactionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'newrelic:index/getKeyTransaction:getKeyTransaction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyTransactionResult.fromMap(result);
}

/// Use this data source to get information about a specific notification destination in New Relic that already exists. More information on Terraform's data sources can be found here.
///
/// ## ID Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// // Data source
/// const foo = newrelic.getNotificationDestination({
///     id: "1e543419-0c25-456a-9057-fb0eb310e60b",
/// });
/// // Resource
/// const foo_channel = new newrelic.NotificationChannel("foo-channel", {
///     name: "webhook-example",
///     type: "WEBHOOK",
///     destinationId: foo.then(foo => foo.id),
///     product: "IINT",
///     properties: [{
///         key: "payload",
///         value: `{
/// \x09"name": "foo"
/// }`,
///         label: "Payload Template",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// # Data source
/// foo = newrelic.get_notification_destination(id="1e543419-0c25-456a-9057-fb0eb310e60b")
/// # Resource
/// foo_channel = newrelic.NotificationChannel("foo-channel",
///     name="webhook-example",
///     type="WEBHOOK",
///     destination_id=foo.id,
///     product="IINT",
///     properties=[{
///         "key": "payload",
///         "value": """{
/// \x09"name": "foo"
/// }""",
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
///     // Data source
///     var foo = NewRelic.GetNotificationDestination.Invoke(new()
///     {
///         Id = "1e543419-0c25-456a-9057-fb0eb310e60b",
///     });
///
///     // Resource
///     var foo_channel = new NewRelic.NotificationChannel("foo-channel", new()
///     {
///         Name = "webhook-example",
///         Type = "WEBHOOK",
///         DestinationId = foo.Apply(getNotificationDestinationResult => getNotificationDestinationResult.Id),
///         Product = "IINT",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "payload",
///                 Value = @"{
/// 	""name"": ""foo""
/// }",
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
/// 		// Data source
/// 		foo, err := newrelic.LookupNotificationDestination(ctx, &newrelic.LookupNotificationDestinationArgs{
/// 			Id: pulumi.StringRef("1e543419-0c25-456a-9057-fb0eb310e60b"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Resource
/// 		_, err = newrelic.NewNotificationChannel(ctx, "foo-channel", &newrelic.NotificationChannelArgs{
/// 			Name:          pulumi.String("webhook-example"),
/// 			Type:          pulumi.String("WEBHOOK"),
/// 			DestinationId: pulumi.String(foo.Id),
/// 			Product:       pulumi.String("IINT"),
/// 			Properties: newrelic.NotificationChannelPropertyArray{
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("payload"),
/// 					Value: pulumi.String("{\n	\"name\": \"foo\"\n}"),
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
/// import com.pulumi.newrelic.NewrelicFunctions;
/// import com.pulumi.newrelic.inputs.GetNotificationDestinationArgs;
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
///         // Data source
///         final var foo = NewrelicFunctions.getNotificationDestination(GetNotificationDestinationArgs.builder()
///             .id("1e543419-0c25-456a-9057-fb0eb310e60b")
///             .build());
///
///         // Resource
///         var foo_channel = new NotificationChannel("foo-channel", NotificationChannelArgs.builder()
///             .name("webhook-example")
///             .type("WEBHOOK")
///             .destinationId(foo.id())
///             .product("IINT")
///             .properties(NotificationChannelPropertyArgs.builder()
///                 .key("payload")
///                 .value("""
/// {
/// 	"name": "foo"
/// }                """)
///                 .label("Payload Template")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Resource
///   foo-channel:
///     type: newrelic:NotificationChannel
///     properties:
///       name: webhook-example
///       type: WEBHOOK
///       destinationId: ${foo.id}
///       product: IINT
///       properties:
///         - key: payload
///           value: |-
///             {
///             	"name": "foo"
///             }
///           label: Payload Template
/// variables:
///   # Data source
///   foo:
///     fn::invoke:
///       function: newrelic:getNotificationDestination
///       arguments:
///         id: 1e543419-0c25-456a-9057-fb0eb310e60b
/// ```
///
///
/// ## Name Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// // Data source
/// const foo = newrelic.getNotificationDestination({
///     name: "webhook-destination",
/// });
/// // Resource
/// const foo_channel = new newrelic.NotificationChannel("foo-channel", {
///     name: "webhook-example",
///     type: "WEBHOOK",
///     destinationId: foo.then(foo => foo.id),
///     product: "IINT",
///     properties: [{
///         key: "payload",
///         value: `{
/// \x09"name": "foo"
/// }`,
///         label: "Payload Template",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// # Data source
/// foo = newrelic.get_notification_destination(name="webhook-destination")
/// # Resource
/// foo_channel = newrelic.NotificationChannel("foo-channel",
///     name="webhook-example",
///     type="WEBHOOK",
///     destination_id=foo.id,
///     product="IINT",
///     properties=[{
///         "key": "payload",
///         "value": """{
/// \x09"name": "foo"
/// }""",
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
///     // Data source
///     var foo = NewRelic.GetNotificationDestination.Invoke(new()
///     {
///         Name = "webhook-destination",
///     });
///
///     // Resource
///     var foo_channel = new NewRelic.NotificationChannel("foo-channel", new()
///     {
///         Name = "webhook-example",
///         Type = "WEBHOOK",
///         DestinationId = foo.Apply(getNotificationDestinationResult => getNotificationDestinationResult.Id),
///         Product = "IINT",
///         Properties = new[]
///         {
///             new NewRelic.Inputs.NotificationChannelPropertyArgs
///             {
///                 Key = "payload",
///                 Value = @"{
/// 	""name"": ""foo""
/// }",
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
/// 		// Data source
/// 		foo, err := newrelic.LookupNotificationDestination(ctx, &newrelic.LookupNotificationDestinationArgs{
/// 			Name: pulumi.StringRef("webhook-destination"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Resource
/// 		_, err = newrelic.NewNotificationChannel(ctx, "foo-channel", &newrelic.NotificationChannelArgs{
/// 			Name:          pulumi.String("webhook-example"),
/// 			Type:          pulumi.String("WEBHOOK"),
/// 			DestinationId: pulumi.String(foo.Id),
/// 			Product:       pulumi.String("IINT"),
/// 			Properties: newrelic.NotificationChannelPropertyArray{
/// 				&newrelic.NotificationChannelPropertyArgs{
/// 					Key:   pulumi.String("payload"),
/// 					Value: pulumi.String("{\n	\"name\": \"foo\"\n}"),
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
/// import com.pulumi.newrelic.NewrelicFunctions;
/// import com.pulumi.newrelic.inputs.GetNotificationDestinationArgs;
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
///         // Data source
///         final var foo = NewrelicFunctions.getNotificationDestination(GetNotificationDestinationArgs.builder()
///             .name("webhook-destination")
///             .build());
///
///         // Resource
///         var foo_channel = new NotificationChannel("foo-channel", NotificationChannelArgs.builder()
///             .name("webhook-example")
///             .type("WEBHOOK")
///             .destinationId(foo.id())
///             .product("IINT")
///             .properties(NotificationChannelPropertyArgs.builder()
///                 .key("payload")
///                 .value("""
/// {
/// 	"name": "foo"
/// }                """)
///                 .label("Payload Template")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Resource
///   foo-channel:
///     type: newrelic:NotificationChannel
///     properties:
///       name: webhook-example
///       type: WEBHOOK
///       destinationId: ${foo.id}
///       product: IINT
///       properties:
///         - key: payload
///           value: |-
///             {
///             	"name": "foo"
///             }
///           label: Payload Template
/// variables:
///   # Data source
///   foo:
///     fn::invoke:
///       function: newrelic:getNotificationDestination
///       arguments:
///         name: webhook-destination
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_notification_destination_get_notification_destination_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotificationDestinationResult> getNotificationDestination(
  GetNotificationDestinationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'newrelic:index/getNotificationDestination:getNotificationDestination',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotificationDestinationResult.fromMap(result);
}

/// Use this data source to get information about a specific Obfuscation Expression in New Relic that already exists.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const expression = newrelic.getObfuscationExpression({
///     accountId: "123456",
///     name: "The expression",
/// });
/// const rule = new newrelic.ObfuscationRule("rule", {
///     name: "ruleName",
///     description: "description of the rule",
///     filter: "hostStatus=running",
///     enabled: true,
///     actions: [{
///         attributes: ["message"],
///         expressionId: expression.then(expression => expression.id),
///         method: "MASK",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// expression = newrelic.get_obfuscation_expression(account_id="123456",
///     name="The expression")
/// rule = newrelic.ObfuscationRule("rule",
///     name="ruleName",
///     description="description of the rule",
///     filter="hostStatus=running",
///     enabled=True,
///     actions=[{
///         "attributes": ["message"],
///         "expression_id": expression.id,
///         "method": "MASK",
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
///     var expression = NewRelic.GetObfuscationExpression.Invoke(new()
///     {
///         AccountId = "123456",
///         Name = "The expression",
///     });
///
///     var rule = new NewRelic.ObfuscationRule("rule", new()
///     {
///         Name = "ruleName",
///         Description = "description of the rule",
///         Filter = "hostStatus=running",
///         Enabled = true,
///         Actions = new[]
///         {
///             new NewRelic.Inputs.ObfuscationRuleActionArgs
///             {
///                 Attributes = new[]
///                 {
///                     "message",
///                 },
///                 ExpressionId = expression.Apply(getObfuscationExpressionResult => getObfuscationExpressionResult.Id),
///                 Method = "MASK",
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
/// 		expression, err := newrelic.LookupObfuscationExpression(ctx, &newrelic.LookupObfuscationExpressionArgs{
/// 			AccountId: pulumi.StringRef("123456"),
/// 			Name:      "The expression",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewObfuscationRule(ctx, "rule", &newrelic.ObfuscationRuleArgs{
/// 			Name:        pulumi.String("ruleName"),
/// 			Description: pulumi.String("description of the rule"),
/// 			Filter:      pulumi.String("hostStatus=running"),
/// 			Enabled:     pulumi.Bool(true),
/// 			Actions: newrelic.ObfuscationRuleActionArray{
/// 				&newrelic.ObfuscationRuleActionArgs{
/// 					Attributes: pulumi.StringArray{
/// 						pulumi.String("message"),
/// 					},
/// 					ExpressionId: pulumi.String(expression.Id),
/// 					Method:       pulumi.String("MASK"),
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
/// import com.pulumi.newrelic.NewrelicFunctions;
/// import com.pulumi.newrelic.inputs.GetObfuscationExpressionArgs;
/// import com.pulumi.newrelic.ObfuscationRule;
/// import com.pulumi.newrelic.ObfuscationRuleArgs;
/// import com.pulumi.newrelic.inputs.ObfuscationRuleActionArgs;
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
///         final var expression = NewrelicFunctions.getObfuscationExpression(GetObfuscationExpressionArgs.builder()
///             .accountId("123456")
///             .name("The expression")
///             .build());
///
///         var rule = new ObfuscationRule("rule", ObfuscationRuleArgs.builder()
///             .name("ruleName")
///             .description("description of the rule")
///             .filter("hostStatus=running")
///             .enabled(true)
///             .actions(ObfuscationRuleActionArgs.builder()
///                 .attributes("message")
///                 .expressionId(expression.id())
///                 .method("MASK")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   rule:
///     type: newrelic:ObfuscationRule
///     properties:
///       name: ruleName
///       description: description of the rule
///       filter: hostStatus=running
///       enabled: true # Reference the obfuscation expression data source in the obfuscation rule resource
///       actions:
///         - attributes:
///             - message
///           expressionId: ${expression.id}
///           method: MASK
/// variables:
///   expression:
///     fn::invoke:
///       function: newrelic:getObfuscationExpression
///       arguments:
///         accountId: 123456
///         name: The expression
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_obfuscation_expression_get_obfuscation_expression_args_doc}
/// [options] Invoke options controlling this call.
Future<GetObfuscationExpressionResult> getObfuscationExpression(
  GetObfuscationExpressionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'newrelic:index/getObfuscationExpression:getObfuscationExpression',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetObfuscationExpressionResult.fromMap(result);
}

/// Use this data source to obtain the necessary fields to set up alerts on your service levels. It can be used for a `custom` alert_type in order to set up an alert with custom tolerated budget consumption and custom evaluation period or for recommended ones like `fast_burn` or `slow_burn`. For more information check [the documentation](https://docs.newrelic.com/docs/service-level-management/alerts-slm/).
///
/// ## Example Usage
///
/// Firstly set up your service level objective, we recommend using local variables for the `target` and `time_window.rolling.count`, as they are also necessary for the helper.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const fooTarget = 99.9;
/// const fooPeriod = 28;
/// const foo = new newrelic.ServiceLevel("foo", {
///     guid: "MXxBUE18QVBQTElDQVRJT058MQ",
///     name: "Latency",
///     description: "Proportion of requests that are served faster than a threshold.",
///     events: {
///         accountId: "12345678",
///         validEvents: {
///             from: "Transaction",
///             where: "appName = 'Example application' AND (transactionType='Web')",
///         },
///         badEvents: {
///             from: "Transaction",
///             where: "appName = 'Example application' AND (transactionType= 'Web') AND duration > 0.1",
///         },
///     },
///     objective: {
///         target: fooTarget,
///         timeWindow: {
///             rolling: {
///                 count: fooPeriod,
///                 unit: "DAY",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo_target = 99.9
/// foo_period = 28
/// foo = newrelic.ServiceLevel("foo",
///     guid="MXxBUE18QVBQTElDQVRJT058MQ",
///     name="Latency",
///     description="Proportion of requests that are served faster than a threshold.",
///     events={
///         "account_id": "12345678",
///         "valid_events": {
///             "from_": "Transaction",
///             "where": "appName = 'Example application' AND (transactionType='Web')",
///         },
///         "bad_events": {
///             "from_": "Transaction",
///             "where": "appName = 'Example application' AND (transactionType= 'Web') AND duration > 0.1",
///         },
///     },
///     objective={
///         "target": foo_target,
///         "time_window": {
///             "rolling": {
///                 "count": foo_period,
///                 "unit": "DAY",
///             },
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
///     var fooTarget = 99.9;
///
///     var fooPeriod = 28;
///
///     var foo = new NewRelic.ServiceLevel("foo", new()
///     {
///         Guid = "MXxBUE18QVBQTElDQVRJT058MQ",
///         Name = "Latency",
///         Description = "Proportion of requests that are served faster than a threshold.",
///         Events = new NewRelic.Inputs.ServiceLevelEventsArgs
///         {
///             AccountId = "12345678",
///             ValidEvents = new NewRelic.Inputs.ServiceLevelEventsValidEventsArgs
///             {
///                 From = "Transaction",
///                 Where = "appName = 'Example application' AND (transactionType='Web')",
///             },
///             BadEvents = new NewRelic.Inputs.ServiceLevelEventsBadEventsArgs
///             {
///                 From = "Transaction",
///                 Where = "appName = 'Example application' AND (transactionType= 'Web') AND duration > 0.1",
///             },
///         },
///         Objective = new NewRelic.Inputs.ServiceLevelObjectiveArgs
///         {
///             Target = fooTarget,
///             TimeWindow = new NewRelic.Inputs.ServiceLevelObjectiveTimeWindowArgs
///             {
///                 Rolling = new NewRelic.Inputs.ServiceLevelObjectiveTimeWindowRollingArgs
///                 {
///                     Count = fooPeriod,
///                     Unit = "DAY",
///                 },
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
/// 		fooTarget := 99.9
/// 		fooPeriod := 28
/// 		_, err := newrelic.NewServiceLevel(ctx, "foo", &newrelic.ServiceLevelArgs{
/// 			Guid:        pulumi.String("MXxBUE18QVBQTElDQVRJT058MQ"),
/// 			Name:        pulumi.String("Latency"),
/// 			Description: pulumi.String("Proportion of requests that are served faster than a threshold."),
/// 			Events: &newrelic.ServiceLevelEventsArgs{
/// 				AccountId: pulumi.String("12345678"),
/// 				ValidEvents: &newrelic.ServiceLevelEventsValidEventsArgs{
/// 					From:  pulumi.String("Transaction"),
/// 					Where: pulumi.String("appName = 'Example application' AND (transactionType='Web')"),
/// 				},
/// 				BadEvents: &newrelic.ServiceLevelEventsBadEventsArgs{
/// 					From:  pulumi.String("Transaction"),
/// 					Where: pulumi.String("appName = 'Example application' AND (transactionType= 'Web') AND duration > 0.1"),
/// 				},
/// 			},
/// 			Objective: &newrelic.ServiceLevelObjectiveArgs{
/// 				Target: pulumi.Float64(fooTarget),
/// 				TimeWindow: &newrelic.ServiceLevelObjectiveTimeWindowArgs{
/// 					Rolling: &newrelic.ServiceLevelObjectiveTimeWindowRollingArgs{
/// 						Count: pulumi.Float64(fooPeriod),
/// 						Unit:  pulumi.String("DAY"),
/// 					},
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
/// import com.pulumi.newrelic.ServiceLevel;
/// import com.pulumi.newrelic.ServiceLevelArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelEventsArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelEventsValidEventsArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelEventsBadEventsArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelObjectiveArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelObjectiveTimeWindowArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelObjectiveTimeWindowRollingArgs;
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
///         final var fooTarget = 99.9;
///
///         final var fooPeriod = 28;
///
///         var foo = new ServiceLevel("foo", ServiceLevelArgs.builder()
///             .guid("MXxBUE18QVBQTElDQVRJT058MQ")
///             .name("Latency")
///             .description("Proportion of requests that are served faster than a threshold.")
///             .events(ServiceLevelEventsArgs.builder()
///                 .accountId("12345678")
///                 .validEvents(ServiceLevelEventsValidEventsArgs.builder()
///                     .from("Transaction")
///                     .where("appName = 'Example application' AND (transactionType='Web')")
///                     .build())
///                 .badEvents(ServiceLevelEventsBadEventsArgs.builder()
///                     .from("Transaction")
///                     .where("appName = 'Example application' AND (transactionType= 'Web') AND duration > 0.1")
///                     .build())
///                 .build())
///             .objective(ServiceLevelObjectiveArgs.builder()
///                 .target(fooTarget)
///                 .timeWindow(ServiceLevelObjectiveTimeWindowArgs.builder()
///                     .rolling(ServiceLevelObjectiveTimeWindowRollingArgs.builder()
///                         .count(fooPeriod)
///                         .unit("DAY")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:ServiceLevel
///     properties:
///       guid: MXxBUE18QVBQTElDQVRJT058MQ
///       name: Latency
///       description: Proportion of requests that are served faster than a threshold.
///       events:
///         accountId: 1.2345678e+07
///         validEvents:
///           from: Transaction
///           where: appName = 'Example application' AND (transactionType='Web')
///         badEvents:
///           from: Transaction
///           where: appName = 'Example application' AND (transactionType= 'Web') AND duration > 0.1
///       objective:
///         target: ${fooTarget}
///         timeWindow:
///           rolling:
///             count: ${fooPeriod}
///             unit: DAY
/// variables:
///   fooTarget: 99.9
///   fooPeriod: 28
/// ```
///
/// Then use the helper to obtain the necessary fields to set up an alert on that Service Level.
/// Note that the Service Level was set up using bad events, that's why `is_bad_events` is set to `true`.
/// If the Service Level was configured with good events that would be unnecessary as the field defaults to `false`.
///
/// Here is an example of a `slow_burn` alert.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const fooSlowBurn = newrelic.getServiceLevelAlertHelper({
///     alertType: "slow_burn",
///     sliGuid: foo.sliGuid,
///     sloTarget: fooTarget,
///     sloPeriod: fooPeriod,
///     isBadEvents: true,
/// });
/// const yourCondition = new newrelic.NrqlAlertCondition("your_condition", {
///     accountId: "12345678",
///     policyId: "67890",
///     type: "static",
///     name: "Slow burn alert",
///     enabled: true,
///     violationTimeLimitSeconds: 259200,
///     nrql: {
///         query: fooSlowBurn.then(fooSlowBurn => fooSlowBurn.nrql),
///     },
///     critical: {
///         operator: "above_or_equals",
///         threshold: fooSlowBurn.then(fooSlowBurn => fooSlowBurn.threshold),
///         thresholdDuration: 900,
///         thresholdOccurrences: "at_least_once",
///     },
///     fillOption: "none",
///     aggregationWindow: fooSlowBurn.then(fooSlowBurn => fooSlowBurn.evaluationPeriod),
///     aggregationMethod: "event_flow",
///     aggregationDelay: "120",
///     slideBy: 900,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo_slow_burn = newrelic.get_service_level_alert_helper(alert_type="slow_burn",
///     sli_guid=foo["sliGuid"],
///     slo_target=foo_target,
///     slo_period=foo_period,
///     is_bad_events=True)
/// your_condition = newrelic.NrqlAlertCondition("your_condition",
///     account_id="12345678",
///     policy_id="67890",
///     type="static",
///     name="Slow burn alert",
///     enabled=True,
///     violation_time_limit_seconds=259200,
///     nrql={
///         "query": foo_slow_burn.nrql,
///     },
///     critical={
///         "operator": "above_or_equals",
///         "threshold": foo_slow_burn.threshold,
///         "threshold_duration": 900,
///         "threshold_occurrences": "at_least_once",
///     },
///     fill_option="none",
///     aggregation_window=foo_slow_burn.evaluation_period,
///     aggregation_method="event_flow",
///     aggregation_delay="120",
///     slide_by=900)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fooSlowBurn = NewRelic.GetServiceLevelAlertHelper.Invoke(new()
///     {
///         AlertType = "slow_burn",
///         SliGuid = foo.SliGuid,
///         SloTarget = fooTarget,
///         SloPeriod = fooPeriod,
///         IsBadEvents = true,
///     });
///
///     var yourCondition = new NewRelic.NrqlAlertCondition("your_condition", new()
///     {
///         AccountId = "12345678",
///         PolicyId = "67890",
///         Type = "static",
///         Name = "Slow burn alert",
///         Enabled = true,
///         ViolationTimeLimitSeconds = 259200,
///         Nrql = new NewRelic.Inputs.NrqlAlertConditionNrqlArgs
///         {
///             Query = fooSlowBurn.Apply(getServiceLevelAlertHelperResult => getServiceLevelAlertHelperResult.Nrql),
///         },
///         Critical = new NewRelic.Inputs.NrqlAlertConditionCriticalArgs
///         {
///             Operator = "above_or_equals",
///             Threshold = fooSlowBurn.Apply(getServiceLevelAlertHelperResult => getServiceLevelAlertHelperResult.Threshold),
///             ThresholdDuration = 900,
///             ThresholdOccurrences = "at_least_once",
///         },
///         FillOption = "none",
///         AggregationWindow = fooSlowBurn.Apply(getServiceLevelAlertHelperResult => getServiceLevelAlertHelperResult.EvaluationPeriod),
///         AggregationMethod = "event_flow",
///         AggregationDelay = "120",
///         SlideBy = 900,
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
/// 		fooSlowBurn, err := newrelic.GetServiceLevelAlertHelper(ctx, &newrelic.GetServiceLevelAlertHelperArgs{
/// 			AlertType:   "slow_burn",
/// 			SliGuid:     foo.SliGuid,
/// 			SloTarget:   fooTarget,
/// 			SloPeriod:   fooPeriod,
/// 			IsBadEvents: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewNrqlAlertCondition(ctx, "your_condition", &newrelic.NrqlAlertConditionArgs{
/// 			AccountId:                 pulumi.String("12345678"),
/// 			PolicyId:                  pulumi.String("67890"),
/// 			Type:                      pulumi.String("static"),
/// 			Name:                      pulumi.String("Slow burn alert"),
/// 			Enabled:                   pulumi.Bool(true),
/// 			ViolationTimeLimitSeconds: pulumi.Int(259200),
/// 			Nrql: &newrelic.NrqlAlertConditionNrqlArgs{
/// 				Query: pulumi.String(fooSlowBurn.Nrql),
/// 			},
/// 			Critical: &newrelic.NrqlAlertConditionCriticalArgs{
/// 				Operator:             pulumi.String("above_or_equals"),
/// 				Threshold:            pulumi.Float64(fooSlowBurn.Threshold),
/// 				ThresholdDuration:    pulumi.Int(900),
/// 				ThresholdOccurrences: pulumi.String("at_least_once"),
/// 			},
/// 			FillOption:        pulumi.String("none"),
/// 			AggregationWindow: pulumi.Int(fooSlowBurn.EvaluationPeriod),
/// 			AggregationMethod: pulumi.String("event_flow"),
/// 			AggregationDelay:  pulumi.String("120"),
/// 			SlideBy:           pulumi.Int(900),
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
/// import com.pulumi.newrelic.inputs.GetServiceLevelAlertHelperArgs;
/// import com.pulumi.newrelic.NrqlAlertCondition;
/// import com.pulumi.newrelic.NrqlAlertConditionArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionNrqlArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionCriticalArgs;
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
///         final var fooSlowBurn = NewrelicFunctions.getServiceLevelAlertHelper(GetServiceLevelAlertHelperArgs.builder()
///             .alertType("slow_burn")
///             .sliGuid(foo.sliGuid())
///             .sloTarget(fooTarget)
///             .sloPeriod(fooPeriod)
///             .isBadEvents(true)
///             .build());
///
///         var yourCondition = new NrqlAlertCondition("yourCondition", NrqlAlertConditionArgs.builder()
///             .accountId("12345678")
///             .policyId("67890")
///             .type("static")
///             .name("Slow burn alert")
///             .enabled(true)
///             .violationTimeLimitSeconds(259200)
///             .nrql(NrqlAlertConditionNrqlArgs.builder()
///                 .query(fooSlowBurn.nrql())
///                 .build())
///             .critical(NrqlAlertConditionCriticalArgs.builder()
///                 .operator("above_or_equals")
///                 .threshold(fooSlowBurn.threshold())
///                 .thresholdDuration(900)
///                 .thresholdOccurrences("at_least_once")
///                 .build())
///             .fillOption("none")
///             .aggregationWindow(fooSlowBurn.evaluationPeriod())
///             .aggregationMethod("event_flow")
///             .aggregationDelay("120")
///             .slideBy(900)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   yourCondition:
///     type: newrelic:NrqlAlertCondition
///     name: your_condition
///     properties:
///       accountId: 1.2345678e+07
///       policyId: 67890
///       type: static
///       name: Slow burn alert
///       enabled: true
///       violationTimeLimitSeconds: 259200
///       nrql:
///         query: ${fooSlowBurn.nrql}
///       critical:
///         operator: above_or_equals
///         threshold: ${fooSlowBurn.threshold}
///         thresholdDuration: 900
///         thresholdOccurrences: at_least_once
///       fillOption: none
///       aggregationWindow: ${fooSlowBurn.evaluationPeriod}
///       aggregationMethod: event_flow
///       aggregationDelay: 120
///       slideBy: 900
/// variables:
///   fooSlowBurn:
///     fn::invoke:
///       function: newrelic:getServiceLevelAlertHelper
///       arguments:
///         alertType: slow_burn
///         sliGuid: ${foo.sliGuid}
///         sloTarget: ${fooTarget}
///         sloPeriod: ${fooPeriod}
///         isBadEvents: true
/// ```
///
///
/// Here is an example of a custom alert:
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const fooCustom = newrelic.getServiceLevelAlertHelper({
///     alertType: "custom",
///     sliGuid: foo.sliGuid,
///     sloTarget: fooTarget,
///     sloPeriod: fooPeriod,
///     customToleratedBudgetConsumption: 4,
///     customEvaluationPeriod: 5400,
///     isBadEvents: true,
/// });
/// const yourCondition = new newrelic.NrqlAlertCondition("your_condition", {
///     accountId: "12345678",
///     policyId: "67890",
///     type: "static",
///     name: "Custom burn alert",
///     enabled: true,
///     violationTimeLimitSeconds: 259200,
///     nrql: {
///         query: fooCustom.then(fooCustom => fooCustom.nrql),
///     },
///     critical: {
///         operator: "above_or_equals",
///         threshold: fooCustom.then(fooCustom => fooCustom.threshold),
///         thresholdDuration: 900,
///         thresholdOccurrences: "at_least_once",
///     },
///     fillOption: "none",
///     aggregationWindow: fooCustom.then(fooCustom => fooCustom.evaluationPeriod),
///     aggregationMethod: "event_flow",
///     aggregationDelay: "120",
///     slideBy: 60,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo_custom = newrelic.get_service_level_alert_helper(alert_type="custom",
///     sli_guid=foo["sliGuid"],
///     slo_target=foo_target,
///     slo_period=foo_period,
///     custom_tolerated_budget_consumption=4,
///     custom_evaluation_period=5400,
///     is_bad_events=True)
/// your_condition = newrelic.NrqlAlertCondition("your_condition",
///     account_id="12345678",
///     policy_id="67890",
///     type="static",
///     name="Custom burn alert",
///     enabled=True,
///     violation_time_limit_seconds=259200,
///     nrql={
///         "query": foo_custom.nrql,
///     },
///     critical={
///         "operator": "above_or_equals",
///         "threshold": foo_custom.threshold,
///         "threshold_duration": 900,
///         "threshold_occurrences": "at_least_once",
///     },
///     fill_option="none",
///     aggregation_window=foo_custom.evaluation_period,
///     aggregation_method="event_flow",
///     aggregation_delay="120",
///     slide_by=60)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fooCustom = NewRelic.GetServiceLevelAlertHelper.Invoke(new()
///     {
///         AlertType = "custom",
///         SliGuid = foo.SliGuid,
///         SloTarget = fooTarget,
///         SloPeriod = fooPeriod,
///         CustomToleratedBudgetConsumption = 4,
///         CustomEvaluationPeriod = 5400,
///         IsBadEvents = true,
///     });
///
///     var yourCondition = new NewRelic.NrqlAlertCondition("your_condition", new()
///     {
///         AccountId = "12345678",
///         PolicyId = "67890",
///         Type = "static",
///         Name = "Custom burn alert",
///         Enabled = true,
///         ViolationTimeLimitSeconds = 259200,
///         Nrql = new NewRelic.Inputs.NrqlAlertConditionNrqlArgs
///         {
///             Query = fooCustom.Apply(getServiceLevelAlertHelperResult => getServiceLevelAlertHelperResult.Nrql),
///         },
///         Critical = new NewRelic.Inputs.NrqlAlertConditionCriticalArgs
///         {
///             Operator = "above_or_equals",
///             Threshold = fooCustom.Apply(getServiceLevelAlertHelperResult => getServiceLevelAlertHelperResult.Threshold),
///             ThresholdDuration = 900,
///             ThresholdOccurrences = "at_least_once",
///         },
///         FillOption = "none",
///         AggregationWindow = fooCustom.Apply(getServiceLevelAlertHelperResult => getServiceLevelAlertHelperResult.EvaluationPeriod),
///         AggregationMethod = "event_flow",
///         AggregationDelay = "120",
///         SlideBy = 60,
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
/// 		fooCustom, err := newrelic.GetServiceLevelAlertHelper(ctx, &newrelic.GetServiceLevelAlertHelperArgs{
/// 			AlertType:                        "custom",
/// 			SliGuid:                          foo.SliGuid,
/// 			SloTarget:                        fooTarget,
/// 			SloPeriod:                        fooPeriod,
/// 			CustomToleratedBudgetConsumption: pulumi.Float64Ref(4),
/// 			CustomEvaluationPeriod:           pulumi.IntRef(5400),
/// 			IsBadEvents:                      pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewNrqlAlertCondition(ctx, "your_condition", &newrelic.NrqlAlertConditionArgs{
/// 			AccountId:                 pulumi.String("12345678"),
/// 			PolicyId:                  pulumi.String("67890"),
/// 			Type:                      pulumi.String("static"),
/// 			Name:                      pulumi.String("Custom burn alert"),
/// 			Enabled:                   pulumi.Bool(true),
/// 			ViolationTimeLimitSeconds: pulumi.Int(259200),
/// 			Nrql: &newrelic.NrqlAlertConditionNrqlArgs{
/// 				Query: pulumi.String(fooCustom.Nrql),
/// 			},
/// 			Critical: &newrelic.NrqlAlertConditionCriticalArgs{
/// 				Operator:             pulumi.String("above_or_equals"),
/// 				Threshold:            pulumi.Float64(fooCustom.Threshold),
/// 				ThresholdDuration:    pulumi.Int(900),
/// 				ThresholdOccurrences: pulumi.String("at_least_once"),
/// 			},
/// 			FillOption:        pulumi.String("none"),
/// 			AggregationWindow: pulumi.Int(fooCustom.EvaluationPeriod),
/// 			AggregationMethod: pulumi.String("event_flow"),
/// 			AggregationDelay:  pulumi.String("120"),
/// 			SlideBy:           pulumi.Int(60),
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
/// import com.pulumi.newrelic.inputs.GetServiceLevelAlertHelperArgs;
/// import com.pulumi.newrelic.NrqlAlertCondition;
/// import com.pulumi.newrelic.NrqlAlertConditionArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionNrqlArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionCriticalArgs;
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
///         final var fooCustom = NewrelicFunctions.getServiceLevelAlertHelper(GetServiceLevelAlertHelperArgs.builder()
///             .alertType("custom")
///             .sliGuid(foo.sliGuid())
///             .sloTarget(fooTarget)
///             .sloPeriod(fooPeriod)
///             .customToleratedBudgetConsumption(4)
///             .customEvaluationPeriod(5400)
///             .isBadEvents(true)
///             .build());
///
///         var yourCondition = new NrqlAlertCondition("yourCondition", NrqlAlertConditionArgs.builder()
///             .accountId("12345678")
///             .policyId("67890")
///             .type("static")
///             .name("Custom burn alert")
///             .enabled(true)
///             .violationTimeLimitSeconds(259200)
///             .nrql(NrqlAlertConditionNrqlArgs.builder()
///                 .query(fooCustom.nrql())
///                 .build())
///             .critical(NrqlAlertConditionCriticalArgs.builder()
///                 .operator("above_or_equals")
///                 .threshold(fooCustom.threshold())
///                 .thresholdDuration(900)
///                 .thresholdOccurrences("at_least_once")
///                 .build())
///             .fillOption("none")
///             .aggregationWindow(fooCustom.evaluationPeriod())
///             .aggregationMethod("event_flow")
///             .aggregationDelay("120")
///             .slideBy(60)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   yourCondition:
///     type: newrelic:NrqlAlertCondition
///     name: your_condition
///     properties:
///       accountId: 1.2345678e+07
///       policyId: 67890
///       type: static
///       name: Custom burn alert
///       enabled: true
///       violationTimeLimitSeconds: 259200
///       nrql:
///         query: ${fooCustom.nrql}
///       critical:
///         operator: above_or_equals
///         threshold: ${fooCustom.threshold}
///         thresholdDuration: 900
///         thresholdOccurrences: at_least_once
///       fillOption: none
///       aggregationWindow: ${fooCustom.evaluationPeriod}
///       aggregationMethod: event_flow
///       aggregationDelay: 120
///       slideBy: 60
/// variables:
///   fooCustom:
///     fn::invoke:
///       function: newrelic:getServiceLevelAlertHelper
///       arguments:
///         alertType: custom
///         sliGuid: ${foo.sliGuid}
///         sloTarget: ${fooTarget}
///         sloPeriod: ${fooPeriod}
///         customToleratedBudgetConsumption: 4
///         customEvaluationPeriod: 5400
///         isBadEvents: true
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_service_level_alert_helper_get_service_level_alert_helper_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceLevelAlertHelperResult> getServiceLevelAlertHelper(
  GetServiceLevelAlertHelperArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'newrelic:index/getServiceLevelAlertHelper:getServiceLevelAlertHelper',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceLevelAlertHelperResult.fromMap(result);
}

/// Use this data source to validate a grok pattern.  More information on Terraform's data sources can be found here.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// // Data source
/// const foo = newrelic.getTestGrokPattern({
///     grok: "%{IP:host_ip}",
///     logLines: [
///         "host_ip: 43.3.120.2",
///         "bytes_received: 2048",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// # Data source
/// foo = newrelic.get_test_grok_pattern(grok="%{IP:host_ip}",
///     log_lines=[
///         "host_ip: 43.3.120.2",
///         "bytes_received: 2048",
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
///     // Data source
///     var foo = NewRelic.GetTestGrokPattern.Invoke(new()
///     {
///         Grok = "%{IP:host_ip}",
///         LogLines = new[]
///         {
///             "host_ip: 43.3.120.2",
///             "bytes_received: 2048",
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
/// 		// Data source
/// 		_, err := newrelic.GetTestGrokPattern(ctx, &newrelic.GetTestGrokPatternArgs{
/// 			Grok: "%{IP:host_ip}",
/// 			LogLines: []string{
/// 				"host_ip: 43.3.120.2",
/// 				"bytes_received: 2048",
/// 			},
/// 		}, nil)
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
/// import com.pulumi.newrelic.inputs.GetTestGrokPatternArgs;
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
///         // Data source
///         final var foo = NewrelicFunctions.getTestGrokPattern(GetTestGrokPatternArgs.builder()
///             .grok("%{IP:host_ip}")
///             .logLines(
///                 "host_ip: 43.3.120.2",
///                 "bytes_received: 2048")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Data source
///   foo:
///     fn::invoke:
///       function: newrelic:getTestGrokPattern
///       arguments:
///         grok: '%{IP:host_ip}'
///         logLines:
///           - 'host_ip: 43.3.120.2'
///           - 'bytes_received: 2048'
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_test_grok_pattern_get_test_grok_pattern_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTestGrokPatternResult> getTestGrokPattern(
  GetTestGrokPatternArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'newrelic:index/getTestGrokPattern:getTestGrokPattern',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTestGrokPatternResult.fromMap(result);
}

/// The `newrelic.User` data source helps search for a user by their name and/or email ID, and accordingly, fetch the ID of the matching user.
///
/// ## Example Usage
///
/// The below example illustrates fetching a the ID of a user (and other arguments) using the ID of the authentication domain the user belongs to, as well as a name and/or email ID, which can be used as criteria to search for a user who matches these specified parameters.
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = newrelic.getAuthenticationDomain({
///     name: "Test Authentication Domain",
/// });
/// const userOne = foo.then(foo => newrelic.getUser({
///     authenticationDomainId: foo.id,
///     name: "Test User",
/// }));
/// const userTwo = foo.then(foo => newrelic.getUser({
///     authenticationDomainId: foo.id,
///     emailId: "test_user@random.com",
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.get_authentication_domain(name="Test Authentication Domain")
/// user_one = newrelic.get_user(authentication_domain_id=foo.id,
///     name="Test User")
/// user_two = newrelic.get_user(authentication_domain_id=foo.id,
///     email_id="test_user@random.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = NewRelic.GetAuthenticationDomain.Invoke(new()
///     {
///         Name = "Test Authentication Domain",
///     });
///
///     var userOne = NewRelic.GetUser.Invoke(new()
///     {
///         AuthenticationDomainId = foo.Apply(getAuthenticationDomainResult => getAuthenticationDomainResult.Id),
///         Name = "Test User",
///     });
///
///     var userTwo = NewRelic.GetUser.Invoke(new()
///     {
///         AuthenticationDomainId = foo.Apply(getAuthenticationDomainResult => getAuthenticationDomainResult.Id),
///         EmailId = "test_user@random.com",
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
/// 		foo, err := newrelic.GetAuthenticationDomain(ctx, &newrelic.GetAuthenticationDomainArgs{
/// 			Name: "Test Authentication Domain",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.LookupUser(ctx, &newrelic.LookupUserArgs{
/// 			AuthenticationDomainId: foo.Id,
/// 			Name:                   pulumi.StringRef("Test User"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.LookupUser(ctx, &newrelic.LookupUserArgs{
/// 			AuthenticationDomainId: foo.Id,
/// 			EmailId:                pulumi.StringRef("test_user@random.com"),
/// 		}, nil)
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
/// import com.pulumi.newrelic.inputs.GetAuthenticationDomainArgs;
/// import com.pulumi.newrelic.inputs.GetUserArgs;
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
///         final var foo = NewrelicFunctions.getAuthenticationDomain(GetAuthenticationDomainArgs.builder()
///             .name("Test Authentication Domain")
///             .build());
///
///         final var userOne = NewrelicFunctions.getUser(GetUserArgs.builder()
///             .authenticationDomainId(foo.id())
///             .name("Test User")
///             .build());
///
///         final var userTwo = NewrelicFunctions.getUser(GetUserArgs.builder()
///             .authenticationDomainId(foo.id())
///             .emailId("test_user@random.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: newrelic:getAuthenticationDomain
///       arguments:
///         name: Test Authentication Domain
///   userOne:
///     fn::invoke:
///       function: newrelic:getUser
///       arguments:
///         authenticationDomainId: ${foo.id}
///         name: Test User
///   userTwo:
///     fn::invoke:
///       function: newrelic:getUser
///       arguments:
///         authenticationDomainId: ${foo.id}
///         emailId: test_user@random.com
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_user_get_user_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserResult> getUser(
  GetUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'newrelic:index/getUser:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserResult.fromMap(result);
}
