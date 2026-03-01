import 'package:pulumi/pulumi.dart' as pulumi;
import 'browser_application_args.dart';
import 'browser_application_state.dart';

/// Use this resource to create, update, and delete a standalone New Relic browser application.
///
/// ## Example Usage
///
/// The following Terraform configuration is an example that illustrates the basic use case of creating a standalone browser application.
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.BrowserApplication("foo", {
///     name: "example-browser-app",
///     cookiesEnabled: true,
///     distributedTracingEnabled: true,
///     loaderType: "SPA",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.BrowserApplication("foo",
///     name="example-browser-app",
///     cookies_enabled=True,
///     distributed_tracing_enabled=True,
///     loader_type="SPA")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.BrowserApplication("foo", new()
///     {
///         Name = "example-browser-app",
///         CookiesEnabled = true,
///         DistributedTracingEnabled = true,
///         LoaderType = "SPA",
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
/// 		_, err := newrelic.NewBrowserApplication(ctx, "foo", &newrelic.BrowserApplicationArgs{
/// 			Name:                      pulumi.String("example-browser-app"),
/// 			CookiesEnabled:            pulumi.Bool(true),
/// 			DistributedTracingEnabled: pulumi.Bool(true),
/// 			LoaderType:                pulumi.String("SPA"),
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
/// import com.pulumi.newrelic.BrowserApplication;
/// import com.pulumi.newrelic.BrowserApplicationArgs;
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
///         var foo = new BrowserApplication("foo", BrowserApplicationArgs.builder()
///             .name("example-browser-app")
///             .cookiesEnabled(true)
///             .distributedTracingEnabled(true)
///             .loaderType("SPA")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:BrowserApplication
///     properties:
///       name: example-browser-app
///       cookiesEnabled: true
///       distributedTracingEnabled: true
///       loaderType: SPA
/// ```
///
///
/// ## Import
///
/// A browser application can be imported using its GUID, i.e.
///
/// ```bash
/// $ terraform import newrelic_browser_application.foo <GUID>
/// ```
class BrowserApplication extends pulumi.CustomResource {
  /// The account ID of the New Relic account you wish to create the browser application in. Defaults to the value of the environment variable `NEW_RELIC_ACCOUNT_ID` if not specified.
  late final pulumi.Output<String> accountId;
  /// The application ID of the browser application (not to be confused with GUID).
  late final pulumi.Output<String> applicationId;
  /// Configures cookies. Defaults to `true`, if not specified.
  late final pulumi.Output<bool?> cookiesEnabled;
  /// Configures distributed tracing in browser apps. Defaults to `true`, if not specified.
  late final pulumi.Output<bool?> distributedTracingEnabled;
  /// The GUID of the browser application.
  late final pulumi.Output<String> guid;
  /// The JavaScript configuration of the browser application, encoded into a string.
  late final pulumi.Output<String> jsConfig;
  /// Determines the browser loader configured. Valid values are `SPA`, `PRO`, and `LITE`. The default is `SPA`. Refer to the [browser agent loader documentation](https://docs.newrelic.com/docs/browser/browser-monitoring/installation/install-browser-monitoring-agent/#agent-types) for more information on valid loader types.
  late final pulumi.Output<String?> loaderType;
  /// The name of the browser application.
  late final pulumi.Output<String> name;

  /// Creates a new [BrowserApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BrowserApplication]. {@macro pulumi_index_browser_application_browser_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BrowserApplication(
    String name, {
    BrowserApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/browserApplication:BrowserApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.applicationId = registerOutput<String>('applicationId');
    this.cookiesEnabled = registerOutput<bool?>('cookiesEnabled');
    this.distributedTracingEnabled = registerOutput<bool?>('distributedTracingEnabled');
    this.guid = registerOutput<String>('guid');
    this.jsConfig = registerOutput<String>('jsConfig');
    this.loaderType = registerOutput<String?>('loaderType');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [BrowserApplication] resource's state with the given [name] and [id].
  static BrowserApplication get(
    String name,
    pulumi.Input<String> id, {
    BrowserApplicationState? state,
  }) {
    return BrowserApplication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BrowserApplication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/browserApplication:BrowserApplication',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.applicationId = registerOutput<String>('applicationId');
    this.cookiesEnabled = registerOutput<bool?>('cookiesEnabled');
    this.distributedTracingEnabled = registerOutput<bool?>('distributedTracingEnabled');
    this.guid = registerOutput<String>('guid');
    this.jsConfig = registerOutput<String>('jsConfig');
    this.loaderType = registerOutput<String?>('loaderType');
    this.name = registerOutput<String>('name');
  }
}
