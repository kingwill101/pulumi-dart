import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_access_key_args.dart';
import 'api_access_key_state.dart';

/// Use this resource to programmatically create and manage the following types of keys in New Relic:
/// - [User API keys](https://docs.newrelic.com/docs/apis/get-started/intro-apis/types-new-relic-api-keys#user-api-key)
/// - License (or ingest) keys, including:
/// - General (Ingest) [license keys](https://docs.newrelic.com/docs/accounts/install-new-relic/account-setup/license-key) used for APM
/// - [Browser license keys](https://docs.newrelic.com/docs/browser/new-relic-browser/configuration/copy-browser-monitoring-license-key-app-id)
///
/// Refer to the New Relic article ['Use NerdGraph to manage license keys and User API keys'](https://docs.newrelic.com/docs/apis/nerdgraph/examples/use-nerdgraph-manage-license-keys-user-keys) for detailed information.
///
/// &gt; **WARNING:** When creating a User API key, if a truncated API key appears in the state after the first `pulumi up`, it is likely because the API key was created for a user other than the one running Terraform. This is a security measure by the New Relic API to _prevent exposing the full key value when an API key is created for another user_. See the Important Considerations section below for more details.
///
/// ## Example Usage
///
/// ### Example: Creating a User API Key
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const userApiKey = new newrelic.ApiAccessKey("user_api_key", {
///     accountId: "1234321",
///     keyType: "USER",
///     userId: "1001111101",
///     name: "User API Key for Admin Access",
///     notes: "This key is used for managing user-level API access.",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// user_api_key = newrelic.ApiAccessKey("user_api_key",
///     account_id="1234321",
///     key_type="USER",
///     user_id="1001111101",
///     name="User API Key for Admin Access",
///     notes="This key is used for managing user-level API access.")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var userApiKey = new NewRelic.ApiAccessKey("user_api_key", new()
///     {
///         AccountId = "1234321",
///         KeyType = "USER",
///         UserId = "1001111101",
///         Name = "User API Key for Admin Access",
///         Notes = "This key is used for managing user-level API access.",
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
/// 		_, err := newrelic.NewApiAccessKey(ctx, "user_api_key", &newrelic.ApiAccessKeyArgs{
/// 			AccountId: pulumi.String("1234321"),
/// 			KeyType:   pulumi.String("USER"),
/// 			UserId:    pulumi.String("1001111101"),
/// 			Name:      pulumi.String("User API Key for Admin Access"),
/// 			Notes:     pulumi.String("This key is used for managing user-level API access."),
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
/// import com.pulumi.newrelic.ApiAccessKey;
/// import com.pulumi.newrelic.ApiAccessKeyArgs;
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
///         var userApiKey = new ApiAccessKey("userApiKey", ApiAccessKeyArgs.builder()
///             .accountId("1234321")
///             .keyType("USER")
///             .userId("1001111101")
///             .name("User API Key for Admin Access")
///             .notes("This key is used for managing user-level API access.")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   userApiKey:
///     type: newrelic:ApiAccessKey
///     name: user_api_key
///     properties:
///       accountId: 1.234321e+06
///       keyType: USER
///       userId: 1.001111101e+09 # Specifies the user ID for whom the key is created
///       name: User API Key for Admin Access
///       notes: This key is used for managing user-level API access.
/// ```
///
///
/// ### Example: Creating an Ingest License Key
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const ingestLicenseKey = new newrelic.ApiAccessKey("ingest_license_key", {
///     accountId: "1234321",
///     keyType: "INGEST",
///     ingestType: "LICENSE",
///     name: "Ingest License Key for App Monitoring",
///     notes: "This key is used for APM and other ingest purposes.",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// ingest_license_key = newrelic.ApiAccessKey("ingest_license_key",
///     account_id="1234321",
///     key_type="INGEST",
///     ingest_type="LICENSE",
///     name="Ingest License Key for App Monitoring",
///     notes="This key is used for APM and other ingest purposes.")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ingestLicenseKey = new NewRelic.ApiAccessKey("ingest_license_key", new()
///     {
///         AccountId = "1234321",
///         KeyType = "INGEST",
///         IngestType = "LICENSE",
///         Name = "Ingest License Key for App Monitoring",
///         Notes = "This key is used for APM and other ingest purposes.",
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
/// 		_, err := newrelic.NewApiAccessKey(ctx, "ingest_license_key", &newrelic.ApiAccessKeyArgs{
/// 			AccountId:  pulumi.String("1234321"),
/// 			KeyType:    pulumi.String("INGEST"),
/// 			IngestType: pulumi.String("LICENSE"),
/// 			Name:       pulumi.String("Ingest License Key for App Monitoring"),
/// 			Notes:      pulumi.String("This key is used for APM and other ingest purposes."),
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
/// import com.pulumi.newrelic.ApiAccessKey;
/// import com.pulumi.newrelic.ApiAccessKeyArgs;
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
///         var ingestLicenseKey = new ApiAccessKey("ingestLicenseKey", ApiAccessKeyArgs.builder()
///             .accountId("1234321")
///             .keyType("INGEST")
///             .ingestType("LICENSE")
///             .name("Ingest License Key for App Monitoring")
///             .notes("This key is used for APM and other ingest purposes.")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ingestLicenseKey:
///     type: newrelic:ApiAccessKey
///     name: ingest_license_key
///     properties:
///       accountId: 1.234321e+06
///       keyType: INGEST
///       ingestType: LICENSE
///       name: Ingest License Key for App Monitoring
///       notes: This key is used for APM and other ingest purposes.
/// ```
///
///
/// ### Example: Creating an Ingest Browser Key
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const ingestBrowserKey = new newrelic.ApiAccessKey("ingest_browser_key", {
///     accountId: "1234321",
///     keyType: "INGEST",
///     ingestType: "BROWSER",
///     name: "Browser Monitoring Key",
///     notes: "This key is used for browser monitoring and analytics.",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// ingest_browser_key = newrelic.ApiAccessKey("ingest_browser_key",
///     account_id="1234321",
///     key_type="INGEST",
///     ingest_type="BROWSER",
///     name="Browser Monitoring Key",
///     notes="This key is used for browser monitoring and analytics.")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ingestBrowserKey = new NewRelic.ApiAccessKey("ingest_browser_key", new()
///     {
///         AccountId = "1234321",
///         KeyType = "INGEST",
///         IngestType = "BROWSER",
///         Name = "Browser Monitoring Key",
///         Notes = "This key is used for browser monitoring and analytics.",
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
/// 		_, err := newrelic.NewApiAccessKey(ctx, "ingest_browser_key", &newrelic.ApiAccessKeyArgs{
/// 			AccountId:  pulumi.String("1234321"),
/// 			KeyType:    pulumi.String("INGEST"),
/// 			IngestType: pulumi.String("BROWSER"),
/// 			Name:       pulumi.String("Browser Monitoring Key"),
/// 			Notes:      pulumi.String("This key is used for browser monitoring and analytics."),
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
/// import com.pulumi.newrelic.ApiAccessKey;
/// import com.pulumi.newrelic.ApiAccessKeyArgs;
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
///         var ingestBrowserKey = new ApiAccessKey("ingestBrowserKey", ApiAccessKeyArgs.builder()
///             .accountId("1234321")
///             .keyType("INGEST")
///             .ingestType("BROWSER")
///             .name("Browser Monitoring Key")
///             .notes("This key is used for browser monitoring and analytics.")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ingestBrowserKey:
///     type: newrelic:ApiAccessKey
///     name: ingest_browser_key
///     properties:
///       accountId: 1.234321e+06
///       keyType: INGEST
///       ingestType: BROWSER
///       name: Browser Monitoring Key
///       notes: This key is used for browser monitoring and analytics.
/// ```
///
///
/// ## Important Considerations
///
/// #### Updating Existing Keys
/// - Only `name` and `notes` can be updated in place. Changes to other attributes will recreate the key (the `newrelic.ApiAccessKey` resource), invalidating the existing one.
///
/// #### Creating API Keys for Other Users
/// - If an API key is created for a user other than the owner of the API key used to run Terraform, the full key value will not be returned by the API for security reasons. Instead, a truncated version of the key will be provided. To retrieve the full key, ensure the necessary capabilities and access management settings are applied to the user running Terraform. For more details, contact New Relic Support.
///
/// #### Importing Existing Keys into Terraform State
/// - A key may be imported with its ID using the syntax described in the Import section below. However, the actual value of the key _cannot be imported_ if the key being fetched was created by a user other than the one whose API key is being used to run Terraform. In such cases, the API returns a truncated key for security reasons. For more details, see [Use NerdGraph to manage license keys and User API keys](https://docs.newrelic.com/docs/apis/nerdgraph/examples/use-nerdgraph-manage-license-keys-user-keys/#query-keys).
///
/// #### Account Type Restrictions for Ingest Keys
/// - Creating `INGEST` keys requires a New Relic user with core or full platform access. See [user types](https://docs.newrelic.com/docs/accounts/accounts-billing/new-relic-one-user-management/user-type/#api-access).
///
/// ## Import
///
/// Existing API access keys can be imported using a composite ID of `&lt;api_access_key_id&gt;:&lt;key_type&gt;`, where `&lt;key_type&gt;` is either `INGEST` or `USER`. Refer to the considerations listed in the Important Considerations section above regarding limitations on importing the actual key value.
///
/// For example:
/// ```sh
/// $ pulumi import newrelic:index/apiAccessKey:ApiAccessKey foobar "131313133A331313130B5F13DF01313FDB13B13133EE5E133D13EAAB3A3C13D3:INGEST"
/// ```
///
/// For customers using Terraform v1.5 and above, it is recommended to use the `import {}` block in your Terraform configuration. This allows Terraform to generate the resource configuration automatically during the import process by running a `pulumi preview -generate-config-out=&lt;filename&gt;.tf`, reducing manual effort and ensuring accuracy.
///
/// For example:
class ApiAccessKey extends pulumi.CustomResource {
  /// The New Relic account ID where the API access key will be created.
  late final pulumi.Output<String?> accountId;
  /// Required if `key_type` is `INGEST`. Valid options are `BROWSER` or `LICENSE` (case-sensitive).
  late final pulumi.Output<String> ingestType;
  /// The actual API key.
  /// - It is important to exercise caution when exporting the value of `key`, as it is sensitive information. Avoid logging or exposing it inappropriately.
  late final pulumi.Output<String> key;
  /// The type of API key to create. Valid options are `INGEST` or `USER` (case-sensitive).
  /// - If `key_type` is `INGEST`, then `ingest_type` must be specified.
  /// - If `key_type` is `USER`, then `user_id` must be specified.
  late final pulumi.Output<String> keyType;
  /// The name of the API key.
  /// - **Note**: While `name` is optional, it is &lt;b style="color:red;"&gt;\*\*strongly recommended\*\*&lt;/b&gt; to provide a meaningful name for easier identification and management of keys. If a `name` is not provided, the API will assign a default name when processing the request to create the API key, which may cause unexpected drift in your Terraform state. To prevent this, it is best practice to always specify a `name`.
  late final pulumi.Output<String> name;
  /// Additional notes about the API access key.
  late final pulumi.Output<String> notes;
  /// Required if `key_type` is `USER`. The New Relic user ID for which the API access key will be created.
  late final pulumi.Output<String> userId;

  /// Creates a new [ApiAccessKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiAccessKey]. {@macro pulumi_index_api_access_key_api_access_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiAccessKey(
    String name, {
    ApiAccessKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/apiAccessKey:ApiAccessKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    ingestType = registerOutput<String>('ingestType');
    key = registerOutput<String>('key');
    keyType = registerOutput<String>('keyType');
    this.name = registerOutput<String>('name');
    notes = registerOutput<String>('notes');
    userId = registerOutput<String>('userId');
  }

  /// Gets an existing [ApiAccessKey] resource's state with the given [name] and [id].
  static ApiAccessKey get(
    String name,
    pulumi.Input<String> id, {
    ApiAccessKeyState? state,
  }) {
    return ApiAccessKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApiAccessKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/apiAccessKey:ApiAccessKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    ingestType = registerOutput<String>('ingestType');
    key = registerOutput<String>('key');
    keyType = registerOutput<String>('keyType');
    this.name = registerOutput<String>('name');
    notes = registerOutput<String>('notes');
    userId = registerOutput<String>('userId');
  }
}
