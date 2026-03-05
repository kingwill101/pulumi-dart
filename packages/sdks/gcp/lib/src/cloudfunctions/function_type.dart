import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_args.dart';
import 'function_event_trigger.dart';
import 'function_on_deploy_update_policy.dart';
import 'function_source_repository.dart';
import 'function_state.dart';

/// Creates a new Cloud Function. For more information see:
///
/// * [API documentation](https://cloud.google.com/functions/docs/reference/rest/v1/projects.locations.functions)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/functions/docs)
///
///
/// &gt; **Warning:** As of November 1, 2019, newly created Functions are
/// private-by-default and will require [appropriate IAM permissions](https://cloud.google.com/functions/docs/reference/iam/roles)
/// to be invoked. See below examples for how to set up the appropriate permissions,
/// or view the [Cloud Functions IAM resources](https://www.terraform.io/docs/providers/google/r/cloudfunctions_cloud_function_iam.html)
/// for Cloud Functions.
///
/// ## Example Usage
///
/// ### Public Function
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "test-bucket",
///     location: "US",
/// });
/// const archive = new gcp.storage.BucketObject("archive", {
///     name: "index.zip",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("./path/to/zip/file/which/contains/code"),
/// });
/// const _function = new gcp.cloudfunctions.Function("function", {
///     name: "function-test",
///     description: "My function",
///     runtime: "nodejs20",
///     availableMemoryMb: 128,
///     sourceArchiveBucket: bucket.name,
///     sourceArchiveObject: archive.name,
///     triggerHttp: true,
///     entryPoint: "helloGET",
/// });
/// // IAM entry for all users to invoke the function
/// const invoker = new gcp.cloudfunctions.FunctionIamMember("invoker", {
///     project: _function.project,
///     region: _function.region,
///     cloudFunction: _function.name,
///     role: "roles/cloudfunctions.invoker",
///     member: "allUsers",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="test-bucket",
///     location="US")
/// archive = gcp.storage.BucketObject("archive",
///     name="index.zip",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("./path/to/zip/file/which/contains/code"))
/// function = gcp.cloudfunctions.Function("function",
///     name="function-test",
///     description="My function",
///     runtime="nodejs20",
///     available_memory_mb=128,
///     source_archive_bucket=bucket.name,
///     source_archive_object=archive.name,
///     trigger_http=True,
///     entry_point="helloGET")
/// # IAM entry for all users to invoke the function
/// invoker = gcp.cloudfunctions.FunctionIamMember("invoker",
///     project=function.project,
///     region=function.region,
///     cloud_function=function.name,
///     role="roles/cloudfunctions.invoker",
///     member="allUsers")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "test-bucket",
///         Location = "US",
///     });
///
///     var archive = new Gcp.Storage.BucketObject("archive", new()
///     {
///         Name = "index.zip",
///         Bucket = bucket.Name,
///         Source = new FileAsset("./path/to/zip/file/which/contains/code"),
///     });
///
///     var function = new Gcp.CloudFunctions.Function("function", new()
///     {
///         Name = "function-test",
///         Description = "My function",
///         Runtime = "nodejs20",
///         AvailableMemoryMb = 128,
///         SourceArchiveBucket = bucket.Name,
///         SourceArchiveObject = archive.Name,
///         TriggerHttp = true,
///         EntryPoint = "helloGET",
///     });
///
///     // IAM entry for all users to invoke the function
///     var invoker = new Gcp.CloudFunctions.FunctionIamMember("invoker", new()
///     {
///         Project = function.Project,
///         Region = function.Region,
///         CloudFunction = function.Name,
///         Role = "roles/cloudfunctions.invoker",
///         Member = "allUsers",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctions"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:     pulumi.String("test-bucket"),
/// 			Location: pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		archive, err := storage.NewBucketObject(ctx, "archive", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("index.zip"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("./path/to/zip/file/which/contains/code"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		function, err := cloudfunctions.NewFunction(ctx, "function", &cloudfunctions.FunctionArgs{
/// 			Name:                pulumi.String("function-test"),
/// 			Description:         pulumi.String("My function"),
/// 			Runtime:             pulumi.String("nodejs20"),
/// 			AvailableMemoryMb:   pulumi.Int(128),
/// 			SourceArchiveBucket: bucket.Name,
/// 			SourceArchiveObject: archive.Name,
/// 			TriggerHttp:         pulumi.Bool(true),
/// 			EntryPoint:          pulumi.String("helloGET"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// IAM entry for all users to invoke the function
/// 		_, err = cloudfunctions.NewFunctionIamMember(ctx, "invoker", &cloudfunctions.FunctionIamMemberArgs{
/// 			Project:       function.Project,
/// 			Region:        function.Region,
/// 			CloudFunction: function.Name,
/// 			Role:          pulumi.String("roles/cloudfunctions.invoker"),
/// 			Member:        pulumi.String("allUsers"),
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.cloudfunctions.Function;
/// import com.pulumi.gcp.cloudfunctions.FunctionArgs;
/// import com.pulumi.gcp.cloudfunctions.FunctionIamMember;
/// import com.pulumi.gcp.cloudfunctions.FunctionIamMemberArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("test-bucket")
///             .location("US")
///             .build());
///
///         var archive = new BucketObject("archive", BucketObjectArgs.builder()
///             .name("index.zip")
///             .bucket(bucket.name())
///             .source(new FileAsset("./path/to/zip/file/which/contains/code"))
///             .build());
///
///         var function = new Function("function", FunctionArgs.builder()
///             .name("function-test")
///             .description("My function")
///             .runtime("nodejs20")
///             .availableMemoryMb(128)
///             .sourceArchiveBucket(bucket.name())
///             .sourceArchiveObject(archive.name())
///             .triggerHttp(true)
///             .entryPoint("helloGET")
///             .build());
///
///         // IAM entry for all users to invoke the function
///         var invoker = new FunctionIamMember("invoker", FunctionIamMemberArgs.builder()
///             .project(function.project())
///             .region(function.region())
///             .cloudFunction(function.name())
///             .role("roles/cloudfunctions.invoker")
///             .member("allUsers")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: test-bucket
///       location: US
///   archive:
///     type: gcp:storage:BucketObject
///     properties:
///       name: index.zip
///       bucket: ${bucket.name}
///       source:
///         fn::FileAsset: ./path/to/zip/file/which/contains/code
///   function:
///     type: gcp:cloudfunctions:Function
///     properties:
///       name: function-test
///       description: My function
///       runtime: nodejs20
///       availableMemoryMb: 128
///       sourceArchiveBucket: ${bucket.name}
///       sourceArchiveObject: ${archive.name}
///       triggerHttp: true
///       entryPoint: helloGET
///   # IAM entry for all users to invoke the function
///   invoker:
///     type: gcp:cloudfunctions:FunctionIamMember
///     properties:
///       project: ${function.project}
///       region: ${function.region}
///       cloudFunction: ${function.name}
///       role: roles/cloudfunctions.invoker
///       member: allUsers
/// ```
///
///
/// ### Single User
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "test-bucket",
///     location: "US",
/// });
/// const archive = new gcp.storage.BucketObject("archive", {
///     name: "index.zip",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("./path/to/zip/file/which/contains/code"),
/// });
/// const _function = new gcp.cloudfunctions.Function("function", {
///     name: "function-test",
///     description: "My function",
///     runtime: "nodejs20",
///     availableMemoryMb: 128,
///     sourceArchiveBucket: bucket.name,
///     sourceArchiveObject: archive.name,
///     triggerHttp: true,
///     httpsTriggerSecurityLevel: "SECURE_ALWAYS",
///     timeout: 60,
///     entryPoint: "helloGET",
///     labels: {
///         "my-label": "my-label-value",
///     },
///     environmentVariables: {
///         MY_ENV_VAR: "my-env-var-value",
///     },
/// });
/// // IAM entry for a single user to invoke the function
/// const invoker = new gcp.cloudfunctions.FunctionIamMember("invoker", {
///     project: _function.project,
///     region: _function.region,
///     cloudFunction: _function.name,
///     role: "roles/cloudfunctions.invoker",
///     member: "user:myFunctionInvoker@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="test-bucket",
///     location="US")
/// archive = gcp.storage.BucketObject("archive",
///     name="index.zip",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("./path/to/zip/file/which/contains/code"))
/// function = gcp.cloudfunctions.Function("function",
///     name="function-test",
///     description="My function",
///     runtime="nodejs20",
///     available_memory_mb=128,
///     source_archive_bucket=bucket.name,
///     source_archive_object=archive.name,
///     trigger_http=True,
///     https_trigger_security_level="SECURE_ALWAYS",
///     timeout=60,
///     entry_point="helloGET",
///     labels={
///         "my-label": "my-label-value",
///     },
///     environment_variables={
///         "MY_ENV_VAR": "my-env-var-value",
///     })
/// # IAM entry for a single user to invoke the function
/// invoker = gcp.cloudfunctions.FunctionIamMember("invoker",
///     project=function.project,
///     region=function.region,
///     cloud_function=function.name,
///     role="roles/cloudfunctions.invoker",
///     member="user:myFunctionInvoker@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "test-bucket",
///         Location = "US",
///     });
///
///     var archive = new Gcp.Storage.BucketObject("archive", new()
///     {
///         Name = "index.zip",
///         Bucket = bucket.Name,
///         Source = new FileAsset("./path/to/zip/file/which/contains/code"),
///     });
///
///     var function = new Gcp.CloudFunctions.Function("function", new()
///     {
///         Name = "function-test",
///         Description = "My function",
///         Runtime = "nodejs20",
///         AvailableMemoryMb = 128,
///         SourceArchiveBucket = bucket.Name,
///         SourceArchiveObject = archive.Name,
///         TriggerHttp = true,
///         HttpsTriggerSecurityLevel = "SECURE_ALWAYS",
///         Timeout = 60,
///         EntryPoint = "helloGET",
///         Labels =
///         {
///             { "my-label", "my-label-value" },
///         },
///         EnvironmentVariables =
///         {
///             { "MY_ENV_VAR", "my-env-var-value" },
///         },
///     });
///
///     // IAM entry for a single user to invoke the function
///     var invoker = new Gcp.CloudFunctions.FunctionIamMember("invoker", new()
///     {
///         Project = function.Project,
///         Region = function.Region,
///         CloudFunction = function.Name,
///         Role = "roles/cloudfunctions.invoker",
///         Member = "user:myFunctionInvoker@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctions"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:     pulumi.String("test-bucket"),
/// 			Location: pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		archive, err := storage.NewBucketObject(ctx, "archive", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("index.zip"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("./path/to/zip/file/which/contains/code"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		function, err := cloudfunctions.NewFunction(ctx, "function", &cloudfunctions.FunctionArgs{
/// 			Name:                      pulumi.String("function-test"),
/// 			Description:               pulumi.String("My function"),
/// 			Runtime:                   pulumi.String("nodejs20"),
/// 			AvailableMemoryMb:         pulumi.Int(128),
/// 			SourceArchiveBucket:       bucket.Name,
/// 			SourceArchiveObject:       archive.Name,
/// 			TriggerHttp:               pulumi.Bool(true),
/// 			HttpsTriggerSecurityLevel: pulumi.String("SECURE_ALWAYS"),
/// 			Timeout:                   pulumi.Int(60),
/// 			EntryPoint:                pulumi.String("helloGET"),
/// 			Labels: pulumi.StringMap{
/// 				"my-label": pulumi.String("my-label-value"),
/// 			},
/// 			EnvironmentVariables: pulumi.StringMap{
/// 				"MY_ENV_VAR": pulumi.String("my-env-var-value"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// IAM entry for a single user to invoke the function
/// 		_, err = cloudfunctions.NewFunctionIamMember(ctx, "invoker", &cloudfunctions.FunctionIamMemberArgs{
/// 			Project:       function.Project,
/// 			Region:        function.Region,
/// 			CloudFunction: function.Name,
/// 			Role:          pulumi.String("roles/cloudfunctions.invoker"),
/// 			Member:        pulumi.String("user:myFunctionInvoker@example.com"),
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.cloudfunctions.Function;
/// import com.pulumi.gcp.cloudfunctions.FunctionArgs;
/// import com.pulumi.gcp.cloudfunctions.FunctionIamMember;
/// import com.pulumi.gcp.cloudfunctions.FunctionIamMemberArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("test-bucket")
///             .location("US")
///             .build());
///
///         var archive = new BucketObject("archive", BucketObjectArgs.builder()
///             .name("index.zip")
///             .bucket(bucket.name())
///             .source(new FileAsset("./path/to/zip/file/which/contains/code"))
///             .build());
///
///         var function = new Function("function", FunctionArgs.builder()
///             .name("function-test")
///             .description("My function")
///             .runtime("nodejs20")
///             .availableMemoryMb(128)
///             .sourceArchiveBucket(bucket.name())
///             .sourceArchiveObject(archive.name())
///             .triggerHttp(true)
///             .httpsTriggerSecurityLevel("SECURE_ALWAYS")
///             .timeout(60)
///             .entryPoint("helloGET")
///             .labels(Map.of("my-label", "my-label-value"))
///             .environmentVariables(Map.of("MY_ENV_VAR", "my-env-var-value"))
///             .build());
///
///         // IAM entry for a single user to invoke the function
///         var invoker = new FunctionIamMember("invoker", FunctionIamMemberArgs.builder()
///             .project(function.project())
///             .region(function.region())
///             .cloudFunction(function.name())
///             .role("roles/cloudfunctions.invoker")
///             .member("user:myFunctionInvoker@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: test-bucket
///       location: US
///   archive:
///     type: gcp:storage:BucketObject
///     properties:
///       name: index.zip
///       bucket: ${bucket.name}
///       source:
///         fn::FileAsset: ./path/to/zip/file/which/contains/code
///   function:
///     type: gcp:cloudfunctions:Function
///     properties:
///       name: function-test
///       description: My function
///       runtime: nodejs20
///       availableMemoryMb: 128
///       sourceArchiveBucket: ${bucket.name}
///       sourceArchiveObject: ${archive.name}
///       triggerHttp: true
///       httpsTriggerSecurityLevel: SECURE_ALWAYS
///       timeout: 60
///       entryPoint: helloGET
///       labels:
///         my-label: my-label-value
///       environmentVariables:
///         MY_ENV_VAR: my-env-var-value
///   # IAM entry for a single user to invoke the function
///   invoker:
///     type: gcp:cloudfunctions:FunctionIamMember
///     properties:
///       project: ${function.project}
///       region: ${function.region}
///       cloudFunction: ${function.name}
///       role: roles/cloudfunctions.invoker
///       member: user:myFunctionInvoker@example.com
/// ```
///
///
/// ## Import
///
/// Functions can be imported using the `name` or `{{project}}/{{region}}/name`, e.g.
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Functions can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudfunctions/function:Function default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudfunctions/function:Function default {{name}}
/// ```
class FunctionType extends pulumi.CustomResource {
  /// Security patches are applied automatically to the runtime without requiring the function to be redeployed. This should be specified as an empty block and cannot be set alongside `on_deploy_update_policy`.
  late final pulumi.Output<Map<String, dynamic>> automaticUpdatePolicy;
  /// Memory (in MB), available to the function. Default value is `256`. Possible values include `128`, `256`, `512`, `1024`, etc.
  late final pulumi.Output<int?> availableMemoryMb;
  /// A set of key/value environment variable pairs available during build time.
  late final pulumi.Output<Map<String, String>?> buildEnvironmentVariables;
  /// If provided, the self-provided service account to use to build the function. The format of this field is `projects/{project}/serviceAccounts/{serviceAccountEmail}`
  late final pulumi.Output<String> buildServiceAccount;
  /// Name of the Cloud Build Custom Worker Pool that should be used to build the function.
  late final pulumi.Output<String?> buildWorkerPool;
  /// Description of the function.
  late final pulumi.Output<String?> description;
  /// Docker Registry to use for storing the function's Docker images. Allowed values are ARTIFACT_REGISTRY (default) and CONTAINER_REGISTRY.
  late final pulumi.Output<String> dockerRegistry;
  /// User-managed repository created in Artifact Registry to which the function's Docker image will be pushed after it is built by Cloud Build. May optionally be encrypted with a customer-managed encryption key (CMEK). If unspecified and `docker_registry` is not explicitly set to `CONTAINER_REGISTRY`, GCF will create and use a default Artifact Registry repository named 'gcf-artifacts' in the region.
  late final pulumi.Output<String?> dockerRepository;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Name of the function that will be executed when the Google Cloud Function is triggered.
  late final pulumi.Output<String?> entryPoint;
  /// A set of key/value environment variable pairs to assign to the function.
  late final pulumi.Output<Map<String, String>?> environmentVariables;
  /// A source that fires events in response to a condition in another service. Structure is documented below. Cannot be used with `trigger_http`.
  late final pulumi.Output<FunctionEventTrigger> eventTrigger;
  /// The security level for the function. The following options are available:
  ///
  /// * `SECURE_ALWAYS` Requests for a URL that match this handler that do not use HTTPS are automatically redirected to the HTTPS URL with the same path. Query parameters are reserved for the redirect.
  /// * `SECURE_OPTIONAL` Both HTTP and HTTPS requests with URLs that match the handler succeed without redirects. The application can examine the request to determine which protocol was used and respond accordingly.
  late final pulumi.Output<String> httpsTriggerSecurityLevel;
  /// URL which triggers function execution. Returned only if `trigger_http` is used.
  late final pulumi.Output<String> httpsTriggerUrl;
  /// String value that controls what traffic can reach the function. Allowed values are `ALLOW_ALL`, `ALLOW_INTERNAL_AND_GCLB` and `ALLOW_INTERNAL_ONLY`. Check [ingress documentation](https://cloud.google.com/functions/docs/networking/network-settings#ingress_settings) to see the impact of each settings value. Changes to this field will recreate the cloud function.
  late final pulumi.Output<String?> ingressSettings;
  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  /// If specified, you must also provide an artifact registry repository using the `docker_repository` field that was created with the same KMS crypto key. Before deploying, please complete all pre-requisites described in https://cloud.google.com/functions/docs/securing/cmek#granting_service_accounts_access_to_the_key
  late final pulumi.Output<String?> kmsKeyName;
  /// A set of key/value label pairs to assign to the function. Label keys must follow the requirements at https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The limit on the maximum number of function instances that may coexist at a given time.
  late final pulumi.Output<int> maxInstances;
  /// The limit on the minimum number of function instances that may coexist at a given time.
  late final pulumi.Output<int?> minInstances;
  /// A user-defined name of the function. Function names must be unique globally.
  late final pulumi.Output<String> name;
  /// Security patches are only applied when a function is redeployed. This should be specified as an empty block and cannot be set alongside `automatic_update_policy`. Structure is documented below.
  late final pulumi.Output<FunctionOnDeployUpdatePolicy?> onDeployUpdatePolicy;
  /// Project of the function. If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Region of function. If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;
  /// The runtime in which the function is going to run.
  /// Eg. `"nodejs20"`, `"python39"`, `"dotnet3"`, `"go116"`, `"java11"`, `"ruby30"`, `"php74"`, etc. Check the [official doc](https://cloud.google.com/functions/docs/concepts/exec#runtimes) for the up-to-date list.
  ///
  /// - - -
  late final pulumi.Output<String> runtime;
  /// Secret environment variables configuration. Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> secretEnvironmentVariables;
  /// Secret volumes configuration. Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> secretVolumes;
  /// If provided, the self-provided service account to run the function with.
  late final pulumi.Output<String> serviceAccountEmail;
  /// The GCS bucket containing the zip archive which contains the function.
  late final pulumi.Output<String?> sourceArchiveBucket;
  /// The source archive object (file) in archive bucket.
  late final pulumi.Output<String?> sourceArchiveObject;
  /// Represents parameters related to source repository where a function is hosted.
  /// Cannot be set alongside `source_archive_bucket` or `source_archive_object`. Structure is documented below. It must match the pattern `projects/{project}/locations/{location}/repositories/{repository}`.*
  late final pulumi.Output<FunctionSourceRepository?> sourceRepository;
  /// Describes the current stage of a deployment.
  late final pulumi.Output<String> status;
  /// Timeout (in seconds) for the function. Default value is 60 seconds. Cannot be more than 540 seconds.
  late final pulumi.Output<int?> timeout;
  /// Boolean variable. Any HTTP request (of a supported type) to the endpoint will trigger function execution. Supported HTTP request types are: POST, PUT, GET, DELETE, and OPTIONS. Endpoint is returned as `https_trigger_url`. Cannot be used with `event_trigger`.
  late final pulumi.Output<bool?> triggerHttp;
  /// The version identifier of the Cloud Function. Each deployment attempt results in a new version of a function being created.
  late final pulumi.Output<String> versionId;
  /// The VPC Network Connector that this cloud function can connect to. It should be set up as fully-qualified URI. The format of this field is `projects/*/locations/*/connectors/*`.
  late final pulumi.Output<String?> vpcConnector;
  /// The egress settings for the connector, controlling what traffic is diverted through it. Allowed values are `ALL_TRAFFIC` and `PRIVATE_RANGES_ONLY`. Defaults to `PRIVATE_RANGES_ONLY`. If unset, this field preserves the previously set value.
  late final pulumi.Output<String> vpcConnectorEgressSettings;

  /// Creates a new [FunctionType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionType]. {@macro pulumi_cloudfunctions_function_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionType(
    String name, {
    FunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudfunctions/function:Function',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automaticUpdatePolicy = registerOutput<Map<String, dynamic>>('automaticUpdatePolicy');
    availableMemoryMb = registerOutput<int?>('availableMemoryMb');
    buildEnvironmentVariables = registerOutput<Map<String, String>?>('buildEnvironmentVariables');
    buildServiceAccount = registerOutput<String>('buildServiceAccount');
    buildWorkerPool = registerOutput<String?>('buildWorkerPool');
    description = registerOutput<String?>('description');
    dockerRegistry = registerOutput<String>('dockerRegistry');
    dockerRepository = registerOutput<String?>('dockerRepository');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    entryPoint = registerOutput<String?>('entryPoint');
    environmentVariables = registerOutput<Map<String, String>?>('environmentVariables');
    eventTrigger = registerOutput<FunctionEventTrigger>('eventTrigger', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionEventTrigger.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpsTriggerSecurityLevel = registerOutput<String>('httpsTriggerSecurityLevel');
    httpsTriggerUrl = registerOutput<String>('httpsTriggerUrl');
    ingressSettings = registerOutput<String?>('ingressSettings');
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    labels = registerOutput<Map<String, String>?>('labels');
    maxInstances = registerOutput<int>('maxInstances');
    minInstances = registerOutput<int?>('minInstances');
    this.name = registerOutput<String>('name');
    onDeployUpdatePolicy = registerOutput<FunctionOnDeployUpdatePolicy?>('onDeployUpdatePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionOnDeployUpdatePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String>('region');
    runtime = registerOutput<String>('runtime');
    secretEnvironmentVariables = registerOutput<List<Map<String, dynamic>>?>('secretEnvironmentVariables');
    secretVolumes = registerOutput<List<Map<String, dynamic>>?>('secretVolumes');
    serviceAccountEmail = registerOutput<String>('serviceAccountEmail');
    sourceArchiveBucket = registerOutput<String?>('sourceArchiveBucket');
    sourceArchiveObject = registerOutput<String?>('sourceArchiveObject');
    sourceRepository = registerOutput<FunctionSourceRepository?>('sourceRepository', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionSourceRepository.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    timeout = registerOutput<int?>('timeout');
    triggerHttp = registerOutput<bool?>('triggerHttp');
    versionId = registerOutput<String>('versionId');
    vpcConnector = registerOutput<String?>('vpcConnector');
    vpcConnectorEgressSettings = registerOutput<String>('vpcConnectorEgressSettings');
  }

  /// Gets an existing [FunctionType] resource's state with the given [name] and [id].
  static FunctionType get(
    String name,
    pulumi.Input<String> id, {
    FunctionState? state,
  }) {
    return FunctionType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FunctionType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudfunctions/function:Function',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automaticUpdatePolicy = registerOutput<Map<String, dynamic>>('automaticUpdatePolicy');
    availableMemoryMb = registerOutput<int?>('availableMemoryMb');
    buildEnvironmentVariables = registerOutput<Map<String, String>?>('buildEnvironmentVariables');
    buildServiceAccount = registerOutput<String>('buildServiceAccount');
    buildWorkerPool = registerOutput<String?>('buildWorkerPool');
    description = registerOutput<String?>('description');
    dockerRegistry = registerOutput<String>('dockerRegistry');
    dockerRepository = registerOutput<String?>('dockerRepository');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    entryPoint = registerOutput<String?>('entryPoint');
    environmentVariables = registerOutput<Map<String, String>?>('environmentVariables');
    eventTrigger = registerOutput<FunctionEventTrigger>('eventTrigger', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionEventTrigger.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpsTriggerSecurityLevel = registerOutput<String>('httpsTriggerSecurityLevel');
    httpsTriggerUrl = registerOutput<String>('httpsTriggerUrl');
    ingressSettings = registerOutput<String?>('ingressSettings');
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    labels = registerOutput<Map<String, String>?>('labels');
    maxInstances = registerOutput<int>('maxInstances');
    minInstances = registerOutput<int?>('minInstances');
    this.name = registerOutput<String>('name');
    onDeployUpdatePolicy = registerOutput<FunctionOnDeployUpdatePolicy?>('onDeployUpdatePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionOnDeployUpdatePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String>('region');
    runtime = registerOutput<String>('runtime');
    secretEnvironmentVariables = registerOutput<List<Map<String, dynamic>>?>('secretEnvironmentVariables');
    secretVolumes = registerOutput<List<Map<String, dynamic>>?>('secretVolumes');
    serviceAccountEmail = registerOutput<String>('serviceAccountEmail');
    sourceArchiveBucket = registerOutput<String?>('sourceArchiveBucket');
    sourceArchiveObject = registerOutput<String?>('sourceArchiveObject');
    sourceRepository = registerOutput<FunctionSourceRepository?>('sourceRepository', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionSourceRepository.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    timeout = registerOutput<int?>('timeout');
    triggerHttp = registerOutput<bool?>('triggerHttp');
    versionId = registerOutput<String>('versionId');
    vpcConnector = registerOutput<String?>('vpcConnector');
    vpcConnectorEgressSettings = registerOutput<String>('vpcConnectorEgressSettings');
  }
}
