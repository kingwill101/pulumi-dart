import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_args.dart';
import 'get_bucket_iam_policy_args.dart';
import 'get_bucket_iam_policy_result.dart';
import 'get_bucket_object_args.dart';
import 'get_bucket_object_content_args.dart';
import 'get_bucket_object_content_result.dart';
import 'get_bucket_object_contents_args.dart';
import 'get_bucket_object_contents_result.dart';
import 'get_bucket_object_result.dart';
import 'get_bucket_objects_args.dart';
import 'get_bucket_objects_result.dart';
import 'get_bucket_result.dart';
import 'get_buckets_args.dart';
import 'get_buckets_result.dart';
import 'get_control_folder_intelligence_config_args.dart';
import 'get_control_folder_intelligence_config_result.dart';
import 'get_control_folder_intelligence_findings_summary_args.dart';
import 'get_control_folder_intelligence_findings_summary_result.dart';
import 'get_control_organization_intelligence_config_args.dart';
import 'get_control_organization_intelligence_config_result.dart';
import 'get_control_organization_intelligence_findings_summary_args.dart';
import 'get_control_organization_intelligence_findings_summary_result.dart';
import 'get_control_project_intelligence_config_args.dart';
import 'get_control_project_intelligence_config_result.dart';
import 'get_control_project_intelligence_finding_args.dart';
import 'get_control_project_intelligence_finding_result.dart';
import 'get_control_project_intelligence_finding_revision_args.dart';
import 'get_control_project_intelligence_finding_revision_result.dart';
import 'get_control_project_intelligence_finding_revisions_args.dart';
import 'get_control_project_intelligence_finding_revisions_result.dart';
import 'get_control_project_intelligence_findings_args.dart';
import 'get_control_project_intelligence_findings_result.dart';
import 'get_control_project_intelligence_findings_summary_args.dart';
import 'get_control_project_intelligence_findings_summary_result.dart';
import 'get_insights_dataset_config_args.dart';
import 'get_insights_dataset_config_result.dart';
import 'get_managed_folder_iam_policy_args.dart';
import 'get_managed_folder_iam_policy_result.dart';
import 'get_object_signed_url_args.dart';
import 'get_object_signed_url_result.dart';
import 'get_project_service_account_args.dart';
import 'get_project_service_account_result.dart';
import 'get_transfer_project_service_account_args.dart';
import 'get_transfer_project_service_account_result.dart';
import 'get_transfer_project_servie_account_args.dart';
import 'get_transfer_project_servie_account_result.dart';

/// Gets an existing bucket in Google Cloud Storage service (GCS).
/// See [the official documentation](https://cloud.google.com/storage/docs/key-terms#buckets)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/buckets).
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_bucket = gcp.storage.getBucket({
///     name: "my-bucket",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_bucket = gcp.storage.get_bucket(name="my-bucket")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_bucket = Gcp.Storage.GetBucket.Invoke(new()
///     {
///         Name = "my-bucket",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.LookupBucket(ctx, &storage.LookupBucketArgs{
/// 			Name: "my-bucket",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_getbucket" "my-bucket" {
///   name = "my-bucket"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetBucketArgs;
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
///         final var my-bucket = StorageFunctions.getBucket(GetBucketArgs.builder()
///             .name("my-bucket")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-bucket:
///     fn::invoke:
///       function: gcp:storage:getBucket
///       arguments:
///         name: my-bucket
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_bucket_get_bucket_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBucketResult> getBucket(
  GetBucketArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getBucket:getBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketResult.fromMap(result);
}

pulumi.Output<GetBucketResult> getBucketOutput(
  GetBucketArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getBucket:getBucket',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBucketResult.fromMap);
}

/// Retrieves the current IAM policy data for bucket
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.storage.getBucketIamPolicy({
///     bucket: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.storage.get_bucket_iam_policy(bucket=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Storage.GetBucketIamPolicy.Invoke(new()
///     {
///         Bucket = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.GetBucketIamPolicy(ctx, &storage.GetBucketIamPolicyArgs{
/// 			Bucket: _default.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_getbucketiampolicy" "policy" {
///   bucket = default.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetBucketIamPolicyArgs;
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
///         final var policy = StorageFunctions.getBucketIamPolicy(GetBucketIamPolicyArgs.builder()
///             .bucket(default_.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:storage:getBucketIamPolicy
///       arguments:
///         bucket: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_bucket_iam_policy_get_bucket_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBucketIamPolicyResult> getBucketIamPolicy(
  GetBucketIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getBucketIamPolicy:getBucketIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketIamPolicyResult.fromMap(result);
}

pulumi.Output<GetBucketIamPolicyResult> getBucketIamPolicyOutput(
  GetBucketIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getBucketIamPolicy:getBucketIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBucketIamPolicyResult.fromMap);
}

/// Gets an existing object inside an existing bucket in Google Cloud Storage service (GCS).
/// See [the official documentation](https://cloud.google.com/storage/docs/key-terms#objects)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/objects).
///
///
/// ## Example Usage
///
/// Example picture stored within a folder.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const picture = gcp.storage.getBucketObject({
///     name: "folder/butterfly01.jpg",
///     bucket: "image-store",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// picture = gcp.storage.get_bucket_object(name="folder/butterfly01.jpg",
///     bucket="image-store")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var picture = Gcp.Storage.GetBucketObject.Invoke(new()
///     {
///         Name = "folder/butterfly01.jpg",
///         Bucket = "image-store",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.LookupBucketObject(ctx, &storage.LookupBucketObjectArgs{
/// 			Name:   pulumi.StringRef("folder/butterfly01.jpg"),
/// 			Bucket: pulumi.StringRef("image-store"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_getbucketobject" "picture" {
///   name   = "folder/butterfly01.jpg"
///   bucket = "image-store"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetBucketObjectArgs;
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
///         final var picture = StorageFunctions.getBucketObject(GetBucketObjectArgs.builder()
///             .name("folder/butterfly01.jpg")
///             .bucket("image-store")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   picture:
///     fn::invoke:
///       function: gcp:storage:getBucketObject
///       arguments:
///         name: folder/butterfly01.jpg
///         bucket: image-store
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_bucket_object_get_bucket_object_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBucketObjectResult> getBucketObject(
  GetBucketObjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getBucketObject:getBucketObject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketObjectResult.fromMap(result);
}

pulumi.Output<GetBucketObjectResult> getBucketObjectOutput(
  GetBucketObjectArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getBucketObject:getBucketObject',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBucketObjectResult.fromMap);
}

/// Gets an existing object content inside an existing bucket in Google Cloud Storage service (GCS).
/// See [the official documentation](https://cloud.google.com/storage/docs/key-terms#objects)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/objects).
///
/// &gt; **Warning:** The object content will be saved in the state, and visible to everyone who has access to the state file.
///
/// ## Example Usage
///
/// Example file object  stored within a folder.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const key = gcp.storage.getBucketObjectContent({
///     name: "encryptedkey",
///     bucket: "keystore",
/// });
/// export const encrypted = key.then(key => key.content);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// key = gcp.storage.get_bucket_object_content(name="encryptedkey",
///     bucket="keystore")
/// pulumi.export("encrypted", key.content)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var key = Gcp.Storage.GetBucketObjectContent.Invoke(new()
///     {
///         Name = "encryptedkey",
///         Bucket = "keystore",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["encrypted"] = key.Apply(getBucketObjectContentResult => getBucketObjectContentResult.Content),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		key, err := storage.GetBucketObjectContent(ctx, &storage.GetBucketObjectContentArgs{
/// 			Name:   "encryptedkey",
/// 			Bucket: "keystore",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("encrypted", key.Content)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_getbucketobjectcontent" "key" {
///   name   = "encryptedkey"
///   bucket = "keystore"
/// }
///
/// output "encrypted" {
///   value = data.gcp_storage_getbucketobjectcontent.key.content
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetBucketObjectContentArgs;
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
///         final var key = StorageFunctions.getBucketObjectContent(GetBucketObjectContentArgs.builder()
///             .name("encryptedkey")
///             .bucket("keystore")
///             .build());
///
///         ctx.export("encrypted", key.content());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   key:
///     fn::invoke:
///       function: gcp:storage:getBucketObjectContent
///       arguments:
///         name: encryptedkey
///         bucket: keystore
/// outputs:
///   encrypted: ${key.content}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_bucket_object_content_get_bucket_object_content_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBucketObjectContentResult> getBucketObjectContent(
  GetBucketObjectContentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getBucketObjectContent:getBucketObjectContent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketObjectContentResult.fromMap(result);
}

pulumi.Output<GetBucketObjectContentResult> getBucketObjectContentOutput(
  GetBucketObjectContentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getBucketObjectContent:getBucketObjectContent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBucketObjectContentResult.fromMap);
}

/// Gets existing object contents inside an existing bucket in Google Cloud Storage service (GCS).
/// See [the official documentation](https://cloud.google.com/storage/docs/key-terms#objects)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/objects).
///
/// &gt; **Warning:** The object content will be saved in the state, and visible to everyone who has access to the state file.
///
/// &gt; **Warning:** This data source loads all object contents into memory. Limit the results with `matchGlob` or `prefix`.
///
/// ## Example Usage
///
/// Extract object base64 contents from objects:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.storage.getBucketObjectContents({
///     bucket: "example-bucket",
///     matchGlob: "example-{foo,bar}.json",
///     prefix: "example",
/// });
/// export const base64EncodedJsonContents = example.then(example => example.bucketObjects.map(__item => __item.contentBase64));
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.storage.get_bucket_object_contents(bucket="example-bucket",
///     match_glob="example-{foo,bar}.json",
///     prefix="example")
/// pulumi.export("base64EncodedJsonContents", [__item.content_base64 for __item in example.bucket_objects])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Gcp.Storage.GetBucketObjectContents.Invoke(new()
///     {
///         Bucket = "example-bucket",
///         MatchGlob = "example-{foo,bar}.json",
///         Prefix = "example",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["base64EncodedJsonContents"] = example.Apply(getBucketObjectContentsResult => getBucketObjectContentsResult.BucketObjects).Select(__item => __item.ContentBase64).ToList(),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := storage.GetBucketObjectContents(ctx, &storage.GetBucketObjectContentsArgs{
/// Bucket: "example-bucket",
/// MatchGlob: pulumi.StringRef("example-{foo,bar}.json"),
/// Prefix: pulumi.StringRef("example"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("base64EncodedJsonContents", pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:7,11-49)))
/// return nil
/// })
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_getbucketobjectcontents" "example" {
///   bucket     = "example-bucket"
///   match_glob = "example-{foo,bar}.json"
///   prefix     = "example"
/// }
///
/// output "base64EncodedJsonContents" {
///   value = data.gcp_storage_getbucketobjectcontents.example.bucket_objects[*].content_base64
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetBucketObjectContentsArgs;
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
///         final var example = StorageFunctions.getBucketObjectContents(GetBucketObjectContentsArgs.builder()
///             .bucket("example-bucket")
///             .matchGlob("example-{foo,bar}.json")
///             .prefix("example")
///             .build());
///
///         ctx.export("base64EncodedJsonContents", example.bucketObjects().stream().map(element -> element.contentBase64()).collect(toList()));
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_bucket_object_contents_get_bucket_object_contents_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBucketObjectContentsResult> getBucketObjectContents(
  GetBucketObjectContentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getBucketObjectContents:getBucketObjectContents',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketObjectContentsResult.fromMap(result);
}

pulumi.Output<GetBucketObjectContentsResult> getBucketObjectContentsOutput(
  GetBucketObjectContentsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getBucketObjectContents:getBucketObjectContents',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBucketObjectContentsResult.fromMap);
}

/// Gets existing objects inside an existing bucket in Google Cloud Storage service (GCS).
/// See [the official documentation](https://cloud.google.com/storage/docs/key-terms#objects)
/// and [API](https://cloud.google.com/storage/docs/json_api/v1/objects/list).
///
/// ## Example Usage
///
/// Example files stored within a bucket.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const files = gcp.storage.getBucketObjects({
///     bucket: "file-store",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// files = gcp.storage.get_bucket_objects(bucket="file-store")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var files = Gcp.Storage.GetBucketObjects.Invoke(new()
///     {
///         Bucket = "file-store",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.GetBucketObjects(ctx, &storage.GetBucketObjectsArgs{
/// 			Bucket: "file-store",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_getbucketobjects" "files" {
///   bucket = "file-store"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetBucketObjectsArgs;
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
///         final var files = StorageFunctions.getBucketObjects(GetBucketObjectsArgs.builder()
///             .bucket("file-store")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   files:
///     fn::invoke:
///       function: gcp:storage:getBucketObjects
///       arguments:
///         bucket: file-store
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_bucket_objects_get_bucket_objects_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBucketObjectsResult> getBucketObjects(
  GetBucketObjectsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getBucketObjects:getBucketObjects',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketObjectsResult.fromMap(result);
}

pulumi.Output<GetBucketObjectsResult> getBucketObjectsOutput(
  GetBucketObjectsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getBucketObjects:getBucketObjects',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBucketObjectsResult.fromMap);
}

/// Gets a list of existing GCS buckets.
/// See [the official documentation](https://cloud.google.com/storage/docs/introduction)
/// and [API](https://cloud.google.com/storage/docs/json_api/v1/buckets/list).
///
/// ## Example Usage
///
/// Example GCS buckets.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.storage.getBuckets({
///     project: "example-project",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.storage.get_buckets(project="example-project")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Gcp.Storage.GetBuckets.Invoke(new()
///     {
///         Project = "example-project",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.GetBuckets(ctx, &storage.GetBucketsArgs{
/// 			Project: pulumi.StringRef("example-project"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_getbuckets" "example" {
///   project = "example-project"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetBucketsArgs;
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
///         final var example = StorageFunctions.getBuckets(GetBucketsArgs.builder()
///             .project("example-project")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: gcp:storage:getBuckets
///       arguments:
///         project: example-project
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_buckets_get_buckets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBucketsResult> getBuckets(
  GetBucketsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getBuckets:getBuckets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketsResult.fromMap(result);
}

pulumi.Output<GetBucketsResult> getBucketsOutput(
  GetBucketsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getBuckets:getBuckets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBucketsResult.fromMap);
}

/// Get information about a Cloud Storage Control FolderIntelligenceConfig.
///
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.storage.getControlFolderIntelligenceConfig({
///     name: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.storage.get_control_folder_intelligence_config(name=example["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Storage.GetControlFolderIntelligenceConfig.Invoke(new()
///     {
///         Name = example.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.LookupControlFolderIntelligenceConfig(ctx, &storage.LookupControlFolderIntelligenceConfigArgs{
/// 			Name: example.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_getcontrolfolderintelligenceconfig" "default" {
///   name = example.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetControlFolderIntelligenceConfigArgs;
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
///         final var default = StorageFunctions.getControlFolderIntelligenceConfig(GetControlFolderIntelligenceConfigArgs.builder()
///             .name(example.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:storage:getControlFolderIntelligenceConfig
///       arguments:
///         name: ${example.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_control_folder_intelligence_config_get_control_folder_intelligence_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetControlFolderIntelligenceConfigResult> getControlFolderIntelligenceConfig(
  GetControlFolderIntelligenceConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getControlFolderIntelligenceConfig:getControlFolderIntelligenceConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlFolderIntelligenceConfigResult.fromMap(result);
}

pulumi.Output<GetControlFolderIntelligenceConfigResult> getControlFolderIntelligenceConfigOutput(
  GetControlFolderIntelligenceConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getControlFolderIntelligenceConfig:getControlFolderIntelligenceConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetControlFolderIntelligenceConfigResult.fromMap);
}

/// Summarizes Cloud Storage intelligence findings in a specified folder and location.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const summary = gcp.storage.getControlFolderIntelligenceFindingsSummary({
///     folder: "1234567890",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// summary = gcp.storage.get_control_folder_intelligence_findings_summary(folder="1234567890")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var summary = Gcp.Storage.GetControlFolderIntelligenceFindingsSummary.Invoke(new()
///     {
///         Folder = "1234567890",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.GetControlFolderIntelligenceFindingsSummary(ctx, &storage.GetControlFolderIntelligenceFindingsSummaryArgs{
/// 			Folder: "1234567890",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_getcontrolfolderintelligencefindingssummary" "summary" {
///   folder = "1234567890"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetControlFolderIntelligenceFindingsSummaryArgs;
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
///         final var summary = StorageFunctions.getControlFolderIntelligenceFindingsSummary(GetControlFolderIntelligenceFindingsSummaryArgs.builder()
///             .folder("1234567890")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   summary:
///     fn::invoke:
///       function: gcp:storage:getControlFolderIntelligenceFindingsSummary
///       arguments:
///         folder: '1234567890'
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_control_folder_intelligence_findings_summary_get_control_folder_intelligence_findings_summary_args_doc}
/// [options] Invoke options controlling this call.
Future<GetControlFolderIntelligenceFindingsSummaryResult> getControlFolderIntelligenceFindingsSummary(
  GetControlFolderIntelligenceFindingsSummaryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getControlFolderIntelligenceFindingsSummary:getControlFolderIntelligenceFindingsSummary',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlFolderIntelligenceFindingsSummaryResult.fromMap(result);
}

pulumi.Output<GetControlFolderIntelligenceFindingsSummaryResult> getControlFolderIntelligenceFindingsSummaryOutput(
  GetControlFolderIntelligenceFindingsSummaryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getControlFolderIntelligenceFindingsSummary:getControlFolderIntelligenceFindingsSummary',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetControlFolderIntelligenceFindingsSummaryResult.fromMap);
}

/// Get information about a Cloud Storage Control OrganizationIntelligenceConfig.
///
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.storage.getControlOrganizationIntelligenceConfig({
///     name: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.storage.get_control_organization_intelligence_config(name=example["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Storage.GetControlOrganizationIntelligenceConfig.Invoke(new()
///     {
///         Name = example.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.LookupControlOrganizationIntelligenceConfig(ctx, &storage.LookupControlOrganizationIntelligenceConfigArgs{
/// 			Name: example.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_getcontrolorganizationintelligenceconfig" "default" {
///   name = example.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetControlOrganizationIntelligenceConfigArgs;
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
///         final var default = StorageFunctions.getControlOrganizationIntelligenceConfig(GetControlOrganizationIntelligenceConfigArgs.builder()
///             .name(example.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:storage:getControlOrganizationIntelligenceConfig
///       arguments:
///         name: ${example.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_control_organization_intelligence_config_get_control_organization_intelligence_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetControlOrganizationIntelligenceConfigResult> getControlOrganizationIntelligenceConfig(
  GetControlOrganizationIntelligenceConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getControlOrganizationIntelligenceConfig:getControlOrganizationIntelligenceConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlOrganizationIntelligenceConfigResult.fromMap(result);
}

pulumi.Output<GetControlOrganizationIntelligenceConfigResult> getControlOrganizationIntelligenceConfigOutput(
  GetControlOrganizationIntelligenceConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getControlOrganizationIntelligenceConfig:getControlOrganizationIntelligenceConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetControlOrganizationIntelligenceConfigResult.fromMap);
}

/// Summarizes Cloud Storage intelligence findings in a specified organization and location.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const summary = gcp.storage.getControlOrganizationIntelligenceFindingsSummary({
///     organization: "123456789012",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// summary = gcp.storage.get_control_organization_intelligence_findings_summary(organization="123456789012")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var summary = Gcp.Storage.GetControlOrganizationIntelligenceFindingsSummary.Invoke(new()
///     {
///         Organization = "123456789012",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.GetControlOrganizationIntelligenceFindingsSummary(ctx, &storage.GetControlOrganizationIntelligenceFindingsSummaryArgs{
/// 			Organization: "123456789012",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_getcontrolorganizationintelligencefindingssummary" "summary" {
///   organization = "123456789012"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetControlOrganizationIntelligenceFindingsSummaryArgs;
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
///         final var summary = StorageFunctions.getControlOrganizationIntelligenceFindingsSummary(GetControlOrganizationIntelligenceFindingsSummaryArgs.builder()
///             .organization("123456789012")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   summary:
///     fn::invoke:
///       function: gcp:storage:getControlOrganizationIntelligenceFindingsSummary
///       arguments:
///         organization: '123456789012'
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_control_organization_intelligence_findings_summary_get_control_organization_intelligence_findings_summary_args_doc}
/// [options] Invoke options controlling this call.
Future<GetControlOrganizationIntelligenceFindingsSummaryResult> getControlOrganizationIntelligenceFindingsSummary(
  GetControlOrganizationIntelligenceFindingsSummaryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getControlOrganizationIntelligenceFindingsSummary:getControlOrganizationIntelligenceFindingsSummary',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlOrganizationIntelligenceFindingsSummaryResult.fromMap(result);
}

pulumi.Output<GetControlOrganizationIntelligenceFindingsSummaryResult> getControlOrganizationIntelligenceFindingsSummaryOutput(
  GetControlOrganizationIntelligenceFindingsSummaryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getControlOrganizationIntelligenceFindingsSummary:getControlOrganizationIntelligenceFindingsSummary',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetControlOrganizationIntelligenceFindingsSummaryResult.fromMap);
}

/// Get information about a Cloud Storage Control ProjectIntelligenceConfig.
///
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.storage.getControlProjectIntelligenceConfig({
///     name: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.storage.get_control_project_intelligence_config(name=example["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Storage.GetControlProjectIntelligenceConfig.Invoke(new()
///     {
///         Name = example.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.LookupControlProjectIntelligenceConfig(ctx, &storage.LookupControlProjectIntelligenceConfigArgs{
/// 			Name: example.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_getcontrolprojectintelligenceconfig" "default" {
///   name = example.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetControlProjectIntelligenceConfigArgs;
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
///         final var default = StorageFunctions.getControlProjectIntelligenceConfig(GetControlProjectIntelligenceConfigArgs.builder()
///             .name(example.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:storage:getControlProjectIntelligenceConfig
///       arguments:
///         name: ${example.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_control_project_intelligence_config_get_control_project_intelligence_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetControlProjectIntelligenceConfigResult> getControlProjectIntelligenceConfig(
  GetControlProjectIntelligenceConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getControlProjectIntelligenceConfig:getControlProjectIntelligenceConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlProjectIntelligenceConfigResult.fromMap(result);
}

pulumi.Output<GetControlProjectIntelligenceConfigResult> getControlProjectIntelligenceConfigOutput(
  GetControlProjectIntelligenceConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getControlProjectIntelligenceConfig:getControlProjectIntelligenceConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetControlProjectIntelligenceConfigResult.fromMap);
}

/// Retrieves information about a specific Cloud Storage intelligence finding in a project and location.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const finding = gcp.storage.getControlProjectIntelligenceFinding({
///     project: "my-project-id",
///     findingId: "cross_region_egress_spike_insight_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// finding = gcp.storage.get_control_project_intelligence_finding(project="my-project-id",
///     finding_id="cross_region_egress_spike_insight_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var finding = Gcp.Storage.GetControlProjectIntelligenceFinding.Invoke(new()
///     {
///         Project = "my-project-id",
///         FindingId = "cross_region_egress_spike_insight_1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.GetControlProjectIntelligenceFinding(ctx, &storage.GetControlProjectIntelligenceFindingArgs{
/// 			Project:   pulumi.StringRef("my-project-id"),
/// 			FindingId: "cross_region_egress_spike_insight_1",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_getcontrolprojectintelligencefinding" "finding" {
///   project    = "my-project-id"
///   finding_id = "cross_region_egress_spike_insight_1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetControlProjectIntelligenceFindingArgs;
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
///         final var finding = StorageFunctions.getControlProjectIntelligenceFinding(GetControlProjectIntelligenceFindingArgs.builder()
///             .project("my-project-id")
///             .findingId("cross_region_egress_spike_insight_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   finding:
///     fn::invoke:
///       function: gcp:storage:getControlProjectIntelligenceFinding
///       arguments:
///         project: my-project-id
///         findingId: cross_region_egress_spike_insight_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_control_project_intelligence_finding_get_control_project_intelligence_finding_args_doc}
/// [options] Invoke options controlling this call.
Future<GetControlProjectIntelligenceFindingResult> getControlProjectIntelligenceFinding(
  GetControlProjectIntelligenceFindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getControlProjectIntelligenceFinding:getControlProjectIntelligenceFinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlProjectIntelligenceFindingResult.fromMap(result);
}

pulumi.Output<GetControlProjectIntelligenceFindingResult> getControlProjectIntelligenceFindingOutput(
  GetControlProjectIntelligenceFindingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getControlProjectIntelligenceFinding:getControlProjectIntelligenceFinding',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetControlProjectIntelligenceFindingResult.fromMap);
}

/// Retrieves information about a specific Cloud Storage intelligence finding revision in a project and location.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const revision = gcp.storage.getControlProjectIntelligenceFindingRevision({
///     findingId: "coldline_archival_storage_operations_spike_insight_1",
///     revisionId: "revision_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// revision = gcp.storage.get_control_project_intelligence_finding_revision(finding_id="coldline_archival_storage_operations_spike_insight_1",
///     revision_id="revision_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var revision = Gcp.Storage.GetControlProjectIntelligenceFindingRevision.Invoke(new()
///     {
///         FindingId = "coldline_archival_storage_operations_spike_insight_1",
///         RevisionId = "revision_1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.GetControlProjectIntelligenceFindingRevision(ctx, &storage.GetControlProjectIntelligenceFindingRevisionArgs{
/// 			FindingId:  "coldline_archival_storage_operations_spike_insight_1",
/// 			RevisionId: "revision_1",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_getcontrolprojectintelligencefindingrevision" "revision" {
///   finding_id  = "coldline_archival_storage_operations_spike_insight_1"
///   revision_id = "revision_1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetControlProjectIntelligenceFindingRevisionArgs;
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
///         final var revision = StorageFunctions.getControlProjectIntelligenceFindingRevision(GetControlProjectIntelligenceFindingRevisionArgs.builder()
///             .findingId("coldline_archival_storage_operations_spike_insight_1")
///             .revisionId("revision_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   revision:
///     fn::invoke:
///       function: gcp:storage:getControlProjectIntelligenceFindingRevision
///       arguments:
///         findingId: coldline_archival_storage_operations_spike_insight_1
///         revisionId: revision_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_control_project_intelligence_finding_revision_get_control_project_intelligence_finding_revision_args_doc}
/// [options] Invoke options controlling this call.
Future<GetControlProjectIntelligenceFindingRevisionResult> getControlProjectIntelligenceFindingRevision(
  GetControlProjectIntelligenceFindingRevisionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getControlProjectIntelligenceFindingRevision:getControlProjectIntelligenceFindingRevision',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlProjectIntelligenceFindingRevisionResult.fromMap(result);
}

pulumi.Output<GetControlProjectIntelligenceFindingRevisionResult> getControlProjectIntelligenceFindingRevisionOutput(
  GetControlProjectIntelligenceFindingRevisionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getControlProjectIntelligenceFindingRevision:getControlProjectIntelligenceFindingRevision',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetControlProjectIntelligenceFindingRevisionResult.fromMap);
}

/// Retrieves a list of Cloud Storage intelligence finding revisions in a specified project and location.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const revisions = gcp.storage.getControlProjectIntelligenceFindingRevisions({
///     findingId: "coldline_archival_storage_operations_spike_insight_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// revisions = gcp.storage.get_control_project_intelligence_finding_revisions(finding_id="coldline_archival_storage_operations_spike_insight_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var revisions = Gcp.Storage.GetControlProjectIntelligenceFindingRevisions.Invoke(new()
///     {
///         FindingId = "coldline_archival_storage_operations_spike_insight_1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.GetControlProjectIntelligenceFindingRevisions(ctx, &storage.GetControlProjectIntelligenceFindingRevisionsArgs{
/// 			FindingId: "coldline_archival_storage_operations_spike_insight_1",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_getcontrolprojectintelligencefindingrevisions" "revisions" {
///   finding_id = "coldline_archival_storage_operations_spike_insight_1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetControlProjectIntelligenceFindingRevisionsArgs;
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
///         final var revisions = StorageFunctions.getControlProjectIntelligenceFindingRevisions(GetControlProjectIntelligenceFindingRevisionsArgs.builder()
///             .findingId("coldline_archival_storage_operations_spike_insight_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   revisions:
///     fn::invoke:
///       function: gcp:storage:getControlProjectIntelligenceFindingRevisions
///       arguments:
///         findingId: coldline_archival_storage_operations_spike_insight_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_control_project_intelligence_finding_revisions_get_control_project_intelligence_finding_revisions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetControlProjectIntelligenceFindingRevisionsResult> getControlProjectIntelligenceFindingRevisions(
  GetControlProjectIntelligenceFindingRevisionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getControlProjectIntelligenceFindingRevisions:getControlProjectIntelligenceFindingRevisions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlProjectIntelligenceFindingRevisionsResult.fromMap(result);
}

pulumi.Output<GetControlProjectIntelligenceFindingRevisionsResult> getControlProjectIntelligenceFindingRevisionsOutput(
  GetControlProjectIntelligenceFindingRevisionsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getControlProjectIntelligenceFindingRevisions:getControlProjectIntelligenceFindingRevisions',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetControlProjectIntelligenceFindingRevisionsResult.fromMap);
}

/// Retrieves a list of Cloud Storage intelligence findings in a specified project and location.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const all = gcp.storage.getControlProjectIntelligenceFindings({
///     project: "my-project-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// all = gcp.storage.get_control_project_intelligence_findings(project="my-project-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Gcp.Storage.GetControlProjectIntelligenceFindings.Invoke(new()
///     {
///         Project = "my-project-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.GetControlProjectIntelligenceFindings(ctx, &storage.GetControlProjectIntelligenceFindingsArgs{
/// 			Project: pulumi.StringRef("my-project-id"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_getcontrolprojectintelligencefindings" "all" {
///   project = "my-project-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetControlProjectIntelligenceFindingsArgs;
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
///         final var all = StorageFunctions.getControlProjectIntelligenceFindings(GetControlProjectIntelligenceFindingsArgs.builder()
///             .project("my-project-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: gcp:storage:getControlProjectIntelligenceFindings
///       arguments:
///         project: my-project-id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_control_project_intelligence_findings_get_control_project_intelligence_findings_args_doc}
/// [options] Invoke options controlling this call.
Future<GetControlProjectIntelligenceFindingsResult> getControlProjectIntelligenceFindings(
  GetControlProjectIntelligenceFindingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getControlProjectIntelligenceFindings:getControlProjectIntelligenceFindings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlProjectIntelligenceFindingsResult.fromMap(result);
}

pulumi.Output<GetControlProjectIntelligenceFindingsResult> getControlProjectIntelligenceFindingsOutput(
  GetControlProjectIntelligenceFindingsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getControlProjectIntelligenceFindings:getControlProjectIntelligenceFindings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetControlProjectIntelligenceFindingsResult.fromMap);
}

/// Summarizes Cloud Storage intelligence findings in a specified project and location.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const summary = gcp.storage.getControlProjectIntelligenceFindingsSummary({
///     project: "my-project-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// summary = gcp.storage.get_control_project_intelligence_findings_summary(project="my-project-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var summary = Gcp.Storage.GetControlProjectIntelligenceFindingsSummary.Invoke(new()
///     {
///         Project = "my-project-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.GetControlProjectIntelligenceFindingsSummary(ctx, &storage.GetControlProjectIntelligenceFindingsSummaryArgs{
/// 			Project: pulumi.StringRef("my-project-id"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_getcontrolprojectintelligencefindingssummary" "summary" {
///   project = "my-project-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetControlProjectIntelligenceFindingsSummaryArgs;
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
///         final var summary = StorageFunctions.getControlProjectIntelligenceFindingsSummary(GetControlProjectIntelligenceFindingsSummaryArgs.builder()
///             .project("my-project-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   summary:
///     fn::invoke:
///       function: gcp:storage:getControlProjectIntelligenceFindingsSummary
///       arguments:
///         project: my-project-id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_control_project_intelligence_findings_summary_get_control_project_intelligence_findings_summary_args_doc}
/// [options] Invoke options controlling this call.
Future<GetControlProjectIntelligenceFindingsSummaryResult> getControlProjectIntelligenceFindingsSummary(
  GetControlProjectIntelligenceFindingsSummaryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getControlProjectIntelligenceFindingsSummary:getControlProjectIntelligenceFindingsSummary',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlProjectIntelligenceFindingsSummaryResult.fromMap(result);
}

pulumi.Output<GetControlProjectIntelligenceFindingsSummaryResult> getControlProjectIntelligenceFindingsSummaryOutput(
  GetControlProjectIntelligenceFindingsSummaryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getControlProjectIntelligenceFindingsSummary:getControlProjectIntelligenceFindingsSummary',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetControlProjectIntelligenceFindingsSummaryResult.fromMap);
}

/// Use this data source to get information about a Storage Insights Dataset Config resource.
/// See [the official documentation](https://cloud.google.com/storage/docs/insights/datasets)
/// and
/// [API](https://cloud.google.com/storage/docs/insights/reference/rest/v1/projects.locations.datasetConfigs).
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sample_config = gcp.storage.getInsightsDatasetConfig({
///     project: "sample_project",
///     location: "sample_location",
///     datasetConfigId: "sample_dataset_config_id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// sample_config = gcp.storage.get_insights_dataset_config(project="sample_project",
///     location="sample_location",
///     dataset_config_id="sample_dataset_config_id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sample_config = Gcp.Storage.GetInsightsDatasetConfig.Invoke(new()
///     {
///         Project = "sample_project",
///         Location = "sample_location",
///         DatasetConfigId = "sample_dataset_config_id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.LookupInsightsDatasetConfig(ctx, &storage.LookupInsightsDatasetConfigArgs{
/// 			Project:         pulumi.StringRef("sample_project"),
/// 			Location:        "sample_location",
/// 			DatasetConfigId: "sample_dataset_config_id",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_getinsightsdatasetconfig" "sample-config" {
///   project           = "sample_project"
///   location          = "sample_location"
///   dataset_config_id = "sample_dataset_config_id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetInsightsDatasetConfigArgs;
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
///         final var sample-config = StorageFunctions.getInsightsDatasetConfig(GetInsightsDatasetConfigArgs.builder()
///             .project("sample_project")
///             .location("sample_location")
///             .datasetConfigId("sample_dataset_config_id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   sample-config:
///     fn::invoke:
///       function: gcp:storage:getInsightsDatasetConfig
///       arguments:
///         project: sample_project
///         location: sample_location
///         datasetConfigId: sample_dataset_config_id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_insights_dataset_config_get_insights_dataset_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInsightsDatasetConfigResult> getInsightsDatasetConfig(
  GetInsightsDatasetConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getInsightsDatasetConfig:getInsightsDatasetConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInsightsDatasetConfigResult.fromMap(result);
}

pulumi.Output<GetInsightsDatasetConfigResult> getInsightsDatasetConfigOutput(
  GetInsightsDatasetConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getInsightsDatasetConfig:getInsightsDatasetConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInsightsDatasetConfigResult.fromMap);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_managed_folder_iam_policy_get_managed_folder_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedFolderIamPolicyResult> getManagedFolderIamPolicy(
  GetManagedFolderIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getManagedFolderIamPolicy:getManagedFolderIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedFolderIamPolicyResult.fromMap(result);
}

pulumi.Output<GetManagedFolderIamPolicyResult> getManagedFolderIamPolicyOutput(
  GetManagedFolderIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getManagedFolderIamPolicy:getManagedFolderIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedFolderIamPolicyResult.fromMap);
}

/// The Google Cloud storage signed URL data source generates a signed URL for a given storage object. Signed URLs provide a way to give time-limited read or write access to anyone in possession of the URL, regardless of whether they have a Google account.
///
/// For more info about signed URL's is available [here](https://cloud.google.com/storage/docs/access-control/signed-urls).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const artifact = gcp.storage.getObjectSignedUrl({
///     bucket: "install_binaries",
///     path: "path/to/install_file.bin",
/// });
/// const vm = new gcp.compute.Instance("vm", {name: "vm"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// artifact = gcp.storage.get_object_signed_url(bucket="install_binaries",
///     path="path/to/install_file.bin")
/// vm = gcp.compute.Instance("vm", name="vm")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var artifact = Gcp.Storage.GetObjectSignedUrl.Invoke(new()
///     {
///         Bucket = "install_binaries",
///         Path = "path/to/install_file.bin",
///     });
///
///     var vm = new Gcp.Compute.Instance("vm", new()
///     {
///         Name = "vm",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.GetObjectSignedUrl(ctx, &storage.GetObjectSignedUrlArgs{
/// 			Bucket: "install_binaries",
/// 			Path:   "path/to/install_file.bin",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstance(ctx, "vm", &compute.InstanceArgs{
/// 			Name: pulumi.String("vm"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_getobjectsignedurl" "artifact" {
///   bucket = "install_binaries"
///   path   = "path/to/install_file.bin"
/// }
///
/// resource "gcp_compute_instance" "vm" {
///   name = "vm"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetObjectSignedUrlArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
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
///         final var artifact = StorageFunctions.getObjectSignedUrl(GetObjectSignedUrlArgs.builder()
///             .bucket("install_binaries")
///             .path("path/to/install_file.bin")
///             .build());
///
///         var vm = new Instance("vm", InstanceArgs.builder()
///             .name("vm")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vm:
///     type: gcp:compute:Instance
///     properties:
///       name: vm
/// variables:
///   artifact:
///     fn::invoke:
///       function: gcp:storage:getObjectSignedUrl
///       arguments:
///         bucket: install_binaries
///         path: path/to/install_file.bin
/// ```
///
///
/// ## Full Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const getUrl = std.file({
///     input: "path/to/credentials.json",
/// }).then(invoke => gcp.storage.getObjectSignedUrl({
///     bucket: "fried_chicken",
///     path: "path/to/file",
///     contentMd5: "pRviqwS4c4OTJRTe03FD1w==",
///     contentType: "text/plain",
///     duration: "2d",
///     credentials: invoke.result,
///     extensionHeaders: {
///         "x-goog-if-generation-match": "1",
///     },
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// get_url = gcp.storage.get_object_signed_url(bucket="fried_chicken",
///     path="path/to/file",
///     content_md5="pRviqwS4c4OTJRTe03FD1w==",
///     content_type="text/plain",
///     duration="2d",
///     credentials=std.file(input="path/to/credentials.json").result,
///     extension_headers={
///         "x-goog-if-generation-match": "1",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var getUrl = Gcp.Storage.GetObjectSignedUrl.Invoke(new()
///     {
///         Bucket = "fried_chicken",
///         Path = "path/to/file",
///         ContentMd5 = "pRviqwS4c4OTJRTe03FD1w==",
///         ContentType = "text/plain",
///         Duration = "2d",
///         Credentials = Std.File.Invoke(new()
///         {
///             Input = "path/to/credentials.json",
///         }).Result,
///         ExtensionHeaders =
///         {
///             { "x-goog-if-generation-match", "1" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "path/to/credentials.json",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err := storage.GetObjectSignedUrl(ctx, &storage.GetObjectSignedUrlArgs{
/// 			Bucket:      "fried_chicken",
/// 			Path:        "path/to/file",
/// 			ContentMd5:  pulumi.StringRef("pRviqwS4c4OTJRTe03FD1w=="),
/// 			ContentType: pulumi.StringRef("text/plain"),
/// 			Duration:    pulumi.StringRef("2d"),
/// 			Credentials: pulumi.StringRef(invokeFile.Result),
/// 			ExtensionHeaders: map[string]string{
/// 				"x-goog-if-generation-match": "1",
/// 			},
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "gcp_storage_getobjectsignedurl" "getUrl" {
///   bucket       = "fried_chicken"
///   path         = "path/to/file"
///   content_md5  = "pRviqwS4c4OTJRTe03FD1w=="
///   content_type = "text/plain"
///   duration     = "2d"
///   credentials  = file("path/to/credentials.json")
///   extension_headers = {
///     "x-goog-if-generation-match" = 1
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetObjectSignedUrlArgs;
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
///         final var getUrl = StorageFunctions.getObjectSignedUrl(GetObjectSignedUrlArgs.builder()
///             .bucket("fried_chicken")
///             .path("path/to/file")
///             .contentMd5("pRviqwS4c4OTJRTe03FD1w==")
///             .contentType("text/plain")
///             .duration("2d")
///             .credentials(StdFunctions.file(FileArgs.builder()
///                 .input("path/to/credentials.json")
///                 .build()).result())
///             .extensionHeaders(Map.of("x-goog-if-generation-match", "1"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   getUrl:
///     fn::invoke:
///       function: gcp:storage:getObjectSignedUrl
///       arguments:
///         bucket: fried_chicken
///         path: path/to/file
///         contentMd5: pRviqwS4c4OTJRTe03FD1w==
///         contentType: text/plain
///         duration: 2d
///         credentials:
///           fn::invoke:
///             function: std:file
///             arguments:
///               input: path/to/credentials.json
///             return: result
///         extensionHeaders:
///           x-goog-if-generation-match: 1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_object_signed_url_get_object_signed_url_args_doc}
/// [options] Invoke options controlling this call.
Future<GetObjectSignedUrlResult> getObjectSignedUrl(
  GetObjectSignedUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getObjectSignedUrl:getObjectSignedUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetObjectSignedUrlResult.fromMap(result);
}

pulumi.Output<GetObjectSignedUrlResult> getObjectSignedUrlOutput(
  GetObjectSignedUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getObjectSignedUrl:getObjectSignedUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetObjectSignedUrlResult.fromMap);
}

/// Get the email address of a project's unique [automatic Google Cloud Storage service account](https://cloud.google.com/storage/docs/projects#service-accounts).
///
/// For each Google Cloud project, Google maintains a unique service account which
/// is used as the identity for various Google Cloud Storage operations, including
/// operations involving
/// [customer-managed encryption keys](https://cloud.google.com/storage/docs/encryption/customer-managed-keys)
/// and those involving
/// [storage notifications to pub/sub](https://cloud.google.com/storage/docs/gsutil/commands/notification).
/// This automatic Google service account requires access to the relevant Cloud KMS keys or pub/sub topics, respectively, in order for Cloud Storage to use
/// these customer-managed resources.
///
/// The service account has a well-known, documented naming format which is parameterised on the numeric Google project ID.
/// However, as noted in [the docs](https://cloud.google.com/storage/docs/projects#service-accounts), it is only created when certain relevant actions occur which
/// presuppose its existence.
/// These actions include calling a [Cloud Storage API endpoint](https://cloud.google.com/storage/docs/json_api/v1/projects/serviceAccount/get) to yield the
/// service account's identity, or performing some operations in the UI which must use the service account's identity, such as attempting to list Cloud KMS keys
/// on the bucket creation page.
///
/// Use of this data source calls the relevant API endpoint to obtain the service account's identity and thus ensures it exists prior to any API operations
/// which demand its existence, such as specifying it in Cloud IAM policy.
/// Always prefer to use this data source over interpolating the project ID into the well-known format for this service account, as the latter approach may cause
/// Pulumi update errors in cases where the service account does not yet exist.
///
/// &gt;  When you write Pulumi code which uses features depending on this service account *and* your Pulumi code adds the service account in IAM policy on other resources,
/// you must take care for race conditions between the establishment of the IAM policy and creation of the relevant Cloud Storage resource.
/// Cloud Storage APIs will require permissions on resources such as pub/sub topics or Cloud KMS keys to exist *before* the attempt to utilise them in a
/// bucket configuration, otherwise the API calls will fail.
/// You may need to use `dependsOn` to create an explicit dependency between the IAM policy resource and the Cloud Storage resource which depends on it.
/// See the examples here and in the `gcp.storage.Notification` resource.
///
/// For more information see
/// [the API reference](https://cloud.google.com/storage/docs/json_api/v1/projects/serviceAccount).
///
/// ## Example Usage
///
/// ### Pub/Sub Notifications
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const gcsAccount = gcp.storage.getProjectServiceAccount({});
/// const binding = new gcp.pubsub.TopicIAMBinding("binding", {
///     topic: topic.name,
///     role: "roles/pubsub.publisher",
///     members: [gcsAccount.then(gcsAccount => `serviceAccount:${gcsAccount.emailAddress}`)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// gcs_account = gcp.storage.get_project_service_account()
/// binding = gcp.pubsub.TopicIAMBinding("binding",
///     topic=topic["name"],
///     role="roles/pubsub.publisher",
///     members=[f"serviceAccount:{gcs_account.email_address}"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gcsAccount = Gcp.Storage.GetProjectServiceAccount.Invoke();
///
///     var binding = new Gcp.PubSub.TopicIAMBinding("binding", new()
///     {
///         Topic = topic.Name,
///         Role = "roles/pubsub.publisher",
///         Members = new[]
///         {
///             $"serviceAccount:{gcsAccount.Apply(getProjectServiceAccountResult => getProjectServiceAccountResult.EmailAddress)}",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		gcsAccount, err := storage.GetProjectServiceAccount(ctx, &storage.GetProjectServiceAccountArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewTopicIAMBinding(ctx, "binding", &pubsub.TopicIAMBindingArgs{
/// 			Topic: pulumi.Any(topic.Name),
/// 			Role:  pulumi.String("roles/pubsub.publisher"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.Sprintf("serviceAccount:%v", gcsAccount.EmailAddress),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_getprojectserviceaccount" "gcsAccount" {
/// }
///
/// resource "gcp_pubsub_topiciambinding" "binding" {
///   topic   = topic.name
///   role    = "roles/pubsub.publisher"
///   members = ["serviceAccount:${data.gcp_storage_getprojectserviceaccount.gcsAccount.email_address}"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetProjectServiceAccountArgs;
/// import com.pulumi.gcp.pubsub.TopicIAMBinding;
/// import com.pulumi.gcp.pubsub.TopicIAMBindingArgs;
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
///         final var gcsAccount = StorageFunctions.getProjectServiceAccount(GetProjectServiceAccountArgs.builder()
///             .build());
///
///         var binding = new TopicIAMBinding("binding", TopicIAMBindingArgs.builder()
///             .topic(topic.get("name"))
///             .role("roles/pubsub.publisher")
///             .members(String.format("serviceAccount:%s", gcsAccount.emailAddress()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:pubsub:TopicIAMBinding
///     properties:
///       topic: ${topic.name}
///       role: roles/pubsub.publisher
///       members:
///         - serviceAccount:${gcsAccount.emailAddress}
/// variables:
///   gcsAccount:
///     fn::invoke:
///       function: gcp:storage:getProjectServiceAccount
///       arguments: {}
/// ```
///
///
///
/// ### Cloud KMS Keys
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const gcsAccount = gcp.storage.getProjectServiceAccount({});
/// const binding = new gcp.kms.CryptoKeyIAMBinding("binding", {
///     cryptoKeyId: "your-crypto-key-id",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     members: [gcsAccount.then(gcsAccount => `serviceAccount:${gcsAccount.emailAddress}`)],
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "kms-protected-bucket",
///     location: "US",
///     encryption: {
///         defaultKmsKeyName: "your-crypto-key-id",
///     },
/// }, {
///     dependsOn: [binding],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// gcs_account = gcp.storage.get_project_service_account()
/// binding = gcp.kms.CryptoKeyIAMBinding("binding",
///     crypto_key_id="your-crypto-key-id",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     members=[f"serviceAccount:{gcs_account.email_address}"])
/// bucket = gcp.storage.Bucket("bucket",
///     name="kms-protected-bucket",
///     location="US",
///     encryption={
///         "default_kms_key_name": "your-crypto-key-id",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[binding]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gcsAccount = Gcp.Storage.GetProjectServiceAccount.Invoke();
///
///     var binding = new Gcp.Kms.CryptoKeyIAMBinding("binding", new()
///     {
///         CryptoKeyId = "your-crypto-key-id",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Members = new[]
///         {
///             $"serviceAccount:{gcsAccount.Apply(getProjectServiceAccountResult => getProjectServiceAccountResult.EmailAddress)}",
///         },
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "kms-protected-bucket",
///         Location = "US",
///         Encryption = new Gcp.Storage.Inputs.BucketEncryptionArgs
///         {
///             DefaultKmsKeyName = "your-crypto-key-id",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             binding,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		gcsAccount, err := storage.GetProjectServiceAccount(ctx, &storage.GetProjectServiceAccountArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		binding, err := kms.NewCryptoKeyIAMBinding(ctx, "binding", &kms.CryptoKeyIAMBindingArgs{
/// 			CryptoKeyId: pulumi.String("your-crypto-key-id"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.Sprintf("serviceAccount:%v", gcsAccount.EmailAddress),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:     pulumi.String("kms-protected-bucket"),
/// 			Location: pulumi.String("US"),
/// 			Encryption: &storage.BucketEncryptionArgs{
/// 				DefaultKmsKeyName: pulumi.String("your-crypto-key-id"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			binding,
/// 		}))
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_getprojectserviceaccount" "gcsAccount" {
/// }
///
/// resource "gcp_kms_cryptokeyiambinding" "binding" {
///   crypto_key_id = "your-crypto-key-id"
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   members       = ["serviceAccount:${data.gcp_storage_getprojectserviceaccount.gcsAccount.email_address}"]
/// }
/// resource "gcp_storage_bucket" "bucket" {
///   depends_on = [gcp_kms_cryptokeyiambinding.binding]
///   name       = "kms-protected-bucket"
///   location   = "US"
///   encryption = {
///     default_kms_key_name = "your-crypto-key-id"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetProjectServiceAccountArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMBinding;
/// import com.pulumi.gcp.kms.CryptoKeyIAMBindingArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.inputs.BucketEncryptionArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var gcsAccount = StorageFunctions.getProjectServiceAccount(GetProjectServiceAccountArgs.builder()
///             .build());
///
///         var binding = new CryptoKeyIAMBinding("binding", CryptoKeyIAMBindingArgs.builder()
///             .cryptoKeyId("your-crypto-key-id")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .members(String.format("serviceAccount:%s", gcsAccount.emailAddress()))
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("kms-protected-bucket")
///             .location("US")
///             .encryption(BucketEncryptionArgs.builder()
///                 .defaultKmsKeyName("your-crypto-key-id")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(binding)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:kms:CryptoKeyIAMBinding
///     properties:
///       cryptoKeyId: your-crypto-key-id
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       members:
///         - serviceAccount:${gcsAccount.emailAddress}
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: kms-protected-bucket
///       location: US
///       encryption:
///         defaultKmsKeyName: your-crypto-key-id
///     options:
///       dependsOn:
///         - ${binding}
/// variables:
///   gcsAccount:
///     fn::invoke:
///       function: gcp:storage:getProjectServiceAccount
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_project_service_account_get_project_service_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectServiceAccountResult> getProjectServiceAccount(
  GetProjectServiceAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getProjectServiceAccount:getProjectServiceAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectServiceAccountResult.fromMap(result);
}

pulumi.Output<GetProjectServiceAccountResult> getProjectServiceAccountOutput(
  GetProjectServiceAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getProjectServiceAccount:getProjectServiceAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectServiceAccountResult.fromMap);
}

/// Use this data source to retrieve Storage Transfer service account for this project
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.storage.getTransferProjectServiceAccount({});
/// export const defaultAccount = _default.then(_default => _default.email);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.storage.get_transfer_project_service_account()
/// pulumi.export("defaultAccount", default.email)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Storage.GetTransferProjectServiceAccount.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["defaultAccount"] = @default.Apply(@default => @default.Apply(getTransferProjectServiceAccountResult => getTransferProjectServiceAccountResult.Email)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := storage.GetTransferProjectServiceAccount(ctx, &storage.GetTransferProjectServiceAccountArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("defaultAccount", _default.Email)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_gettransferprojectserviceaccount" "default" {
/// }
///
/// output "defaultAccount" {
///   value = data.gcp_storage_gettransferprojectserviceaccount.default.email
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetTransferProjectServiceAccountArgs;
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
///         final var default = StorageFunctions.getTransferProjectServiceAccount(GetTransferProjectServiceAccountArgs.builder()
///             .build());
///
///         ctx.export("defaultAccount", default_.email());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:storage:getTransferProjectServiceAccount
///       arguments: {}
/// outputs:
///   defaultAccount: ${default.email}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_transfer_project_service_account_get_transfer_project_service_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransferProjectServiceAccountResult> getTransferProjectServiceAccount(
  GetTransferProjectServiceAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getTransferProjectServiceAccount:getTransferProjectServiceAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransferProjectServiceAccountResult.fromMap(result);
}

pulumi.Output<GetTransferProjectServiceAccountResult> getTransferProjectServiceAccountOutput(
  GetTransferProjectServiceAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getTransferProjectServiceAccount:getTransferProjectServiceAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTransferProjectServiceAccountResult.fromMap);
}

/// Use this data source to retrieve Storage Transfer service account for this project
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.storage.getTransferProjectServiceAccount({});
/// export const defaultAccount = _default.then(_default => _default.email);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.storage.get_transfer_project_service_account()
/// pulumi.export("defaultAccount", default.email)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Storage.GetTransferProjectServiceAccount.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["defaultAccount"] = @default.Apply(@default => @default.Apply(getTransferProjectServiceAccountResult => getTransferProjectServiceAccountResult.Email)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := storage.GetTransferProjectServiceAccount(ctx, &storage.GetTransferProjectServiceAccountArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("defaultAccount", _default.Email)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_storage_gettransferprojectserviceaccount" "default" {
/// }
///
/// output "defaultAccount" {
///   value = data.gcp_storage_gettransferprojectserviceaccount.default.email
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetTransferProjectServiceAccountArgs;
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
///         final var default = StorageFunctions.getTransferProjectServiceAccount(GetTransferProjectServiceAccountArgs.builder()
///             .build());
///
///         ctx.export("defaultAccount", default_.email());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:storage:getTransferProjectServiceAccount
///       arguments: {}
/// outputs:
///   defaultAccount: ${default.email}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_transfer_project_servie_account_get_transfer_project_servie_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransferProjectServieAccountResult> getTransferProjectServieAccount(
  GetTransferProjectServieAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getTransferProjectServieAccount:getTransferProjectServieAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransferProjectServieAccountResult.fromMap(result);
}

pulumi.Output<GetTransferProjectServieAccountResult> getTransferProjectServieAccountOutput(
  GetTransferProjectServieAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:storage/getTransferProjectServieAccount:getTransferProjectServieAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTransferProjectServieAccountResult.fromMap);
}
