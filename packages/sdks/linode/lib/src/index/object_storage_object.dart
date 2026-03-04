import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_storage_object_args.dart';
import 'object_storage_object_state.dart';

/// Provides a Linode Object Storage Object resource. This can be used to create, modify, and delete Linodes Object Storage Objects for Buckets.
///
/// ## Example Usage
///
/// ### Uploading a file to a bucket
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
/// import * as std from "@pulumi/std";
///
/// const object = new linode.ObjectStorageObject("object", {
///     bucket: "my-bucket",
///     region: "us-mia",
///     key: "my-object",
///     secretKey: myKey.secretKey,
///     accessKey: myKey.accessKey,
///     source: std.pathexpand({
///         input: "~/files/log.txt",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
/// import pulumi_std as std
///
/// object = linode.ObjectStorageObject("object",
///     bucket="my-bucket",
///     region="us-mia",
///     key="my-object",
///     secret_key=my_key["secretKey"],
///     access_key=my_key["accessKey"],
///     source=std.pathexpand(input="~/files/log.txt").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @object = new Linode.ObjectStorageObject("object", new()
///     {
///         Bucket = "my-bucket",
///         Region = "us-mia",
///         Key = "my-object",
///         SecretKey = myKey.SecretKey,
///         AccessKey = myKey.AccessKey,
///         Source = Std.Pathexpand.Invoke(new()
///         {
///             Input = "~/files/log.txt",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokePathexpand, err := std.Pathexpand(ctx, &std.PathexpandArgs{
/// 			Input: "~/files/log.txt",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewObjectStorageObject(ctx, "object", &linode.ObjectStorageObjectArgs{
/// 			Bucket:    pulumi.String("my-bucket"),
/// 			Region:    pulumi.String("us-mia"),
/// 			Key:       pulumi.String("my-object"),
/// 			SecretKey: pulumi.Any(myKey.SecretKey),
/// 			AccessKey: pulumi.Any(myKey.AccessKey),
/// 			Source:    pulumi.String(invokePathexpand.Result),
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
/// import com.pulumi.linode.ObjectStorageObject;
/// import com.pulumi.linode.ObjectStorageObjectArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.PathexpandArgs;
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
///         var object = new ObjectStorageObject("object", ObjectStorageObjectArgs.builder()
///             .bucket("my-bucket")
///             .region("us-mia")
///             .key("my-object")
///             .secretKey(myKey.secretKey())
///             .accessKey(myKey.accessKey())
///             .source(StdFunctions.pathexpand(PathexpandArgs.builder()
///                 .input("~/files/log.txt")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   object:
///     type: linode:ObjectStorageObject
///     properties:
///       bucket: my-bucket
///       region: us-mia
///       key: my-object
///       secretKey: ${myKey.secretKey}
///       accessKey: ${myKey.accessKey}
///       source:
///         fn::invoke:
///           function: std:pathexpand
///           arguments:
///             input: ~/files/log.txt
///           return: result
/// ```
///
///
/// ### Uploading plaintext to a bucket
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const object = new linode.ObjectStorageObject("object", {
///     bucket: "my-bucket",
///     region: "us-mia",
///     key: "my-object",
///     secretKey: myKey.secretKey,
///     accessKey: myKey.accessKey,
///     content: "This is the content of the Object...",
///     contentType: "text/plain",
///     contentLanguage: "en",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// object = linode.ObjectStorageObject("object",
///     bucket="my-bucket",
///     region="us-mia",
///     key="my-object",
///     secret_key=my_key["secretKey"],
///     access_key=my_key["accessKey"],
///     content="This is the content of the Object...",
///     content_type="text/plain",
///     content_language="en")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @object = new Linode.ObjectStorageObject("object", new()
///     {
///         Bucket = "my-bucket",
///         Region = "us-mia",
///         Key = "my-object",
///         SecretKey = myKey.SecretKey,
///         AccessKey = myKey.AccessKey,
///         Content = "This is the content of the Object...",
///         ContentType = "text/plain",
///         ContentLanguage = "en",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewObjectStorageObject(ctx, "object", &linode.ObjectStorageObjectArgs{
/// 			Bucket:          pulumi.String("my-bucket"),
/// 			Region:          pulumi.String("us-mia"),
/// 			Key:             pulumi.String("my-object"),
/// 			SecretKey:       pulumi.Any(myKey.SecretKey),
/// 			AccessKey:       pulumi.Any(myKey.AccessKey),
/// 			Content:         pulumi.String("This is the content of the Object..."),
/// 			ContentType:     pulumi.String("text/plain"),
/// 			ContentLanguage: pulumi.String("en"),
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
/// import com.pulumi.linode.ObjectStorageObject;
/// import com.pulumi.linode.ObjectStorageObjectArgs;
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
///         var object = new ObjectStorageObject("object", ObjectStorageObjectArgs.builder()
///             .bucket("my-bucket")
///             .region("us-mia")
///             .key("my-object")
///             .secretKey(myKey.secretKey())
///             .accessKey(myKey.accessKey())
///             .content("This is the content of the Object...")
///             .contentType("text/plain")
///             .contentLanguage("en")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   object:
///     type: linode:ObjectStorageObject
///     properties:
///       bucket: my-bucket
///       region: us-mia
///       key: my-object
///       secretKey: ${myKey.secretKey}
///       accessKey: ${myKey.accessKey}
///       content: This is the content of the Object...
///       contentType: text/plain
///       contentLanguage: en
/// ```
///
///
/// ### Creating an object using implicitly created object credentials
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
/// import * as std from "@pulumi/std";
///
/// const object = new linode.ObjectStorageObject("object", {
///     bucket: "my-bucket",
///     region: "us-mia",
///     key: "my-object",
///     source: std.pathexpand({
///         input: "~/files/log.txt",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
/// import pulumi_std as std
///
/// object = linode.ObjectStorageObject("object",
///     bucket="my-bucket",
///     region="us-mia",
///     key="my-object",
///     source=std.pathexpand(input="~/files/log.txt").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @object = new Linode.ObjectStorageObject("object", new()
///     {
///         Bucket = "my-bucket",
///         Region = "us-mia",
///         Key = "my-object",
///         Source = Std.Pathexpand.Invoke(new()
///         {
///             Input = "~/files/log.txt",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokePathexpand, err := std.Pathexpand(ctx, &std.PathexpandArgs{
/// 			Input: "~/files/log.txt",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewObjectStorageObject(ctx, "object", &linode.ObjectStorageObjectArgs{
/// 			Bucket: pulumi.String("my-bucket"),
/// 			Region: pulumi.String("us-mia"),
/// 			Key:    pulumi.String("my-object"),
/// 			Source: pulumi.String(invokePathexpand.Result),
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
/// import com.pulumi.linode.ObjectStorageObject;
/// import com.pulumi.linode.ObjectStorageObjectArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.PathexpandArgs;
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
///         var object = new ObjectStorageObject("object", ObjectStorageObjectArgs.builder()
///             .bucket("my-bucket")
///             .region("us-mia")
///             .key("my-object")
///             .source(StdFunctions.pathexpand(PathexpandArgs.builder()
///                 .input("~/files/log.txt")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   object:
///     type: linode:ObjectStorageObject
///     properties:
///       bucket: my-bucket
///       region: us-mia
///       key: my-object
///       source:
///         fn::invoke:
///           function: std:pathexpand
///           arguments:
///             input: ~/files/log.txt
///           return: result
/// ```
class ObjectStorageObject extends pulumi.CustomResource {
  /// The REQUIRED access key to authenticate with. If it's not specified with the resource, you must provide its value by
  /// * configuring the `obj_access_key` in the provider configuration;
  /// * or, opting-in generating it implicitly at apply-time using `obj_use_temp_keys` at provider-level.
  late final pulumi.Output<String?> accessKey;

  /// The canned ACL to apply. (`private`, `public-read`, `authenticated-read`, `public-read-write`, `custom`) (defaults to `private`).
  late final pulumi.Output<String> acl;

  /// The name of the bucket to put the object in.
  late final pulumi.Output<String> bucket;

  /// Specifies caching behavior along the request/reply chain Read [w3c cache_control](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9) for further details.
  late final pulumi.Output<String?> cacheControl;

  /// The cluster the bucket is in. Required if `region` is not configured. Deprecated in favor of `region`.
  late final pulumi.Output<String?> cluster;

  /// Literal string value to use as the object content, which will be uploaded as UTF-8-encoded text.
  late final pulumi.Output<String?> content;

  /// Base64-encoded data that will be decoded and uploaded as raw bytes for the object content. This allows safely uploading non-UTF8 binary data, but is recommended only for small content such as the result of the `gzipbase64` function with small text strings. For larger objects, use `source` to stream the content from a disk file.
  late final pulumi.Output<String?> contentBase64;

  /// Specifies presentational information for the object. Read [w3c content_disposition](http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1) for further information.
  late final pulumi.Output<String?> contentDisposition;

  /// Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [w3c content encoding](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11) for further information.
  late final pulumi.Output<String?> contentEncoding;

  /// The language the content is in e.g. en-US or en-GB.
  late final pulumi.Output<String?> contentLanguage;

  /// A standard MIME type describing the format of the object data, e.g. application/octet-stream. All Valid MIME Types are valid for this input.
  late final pulumi.Output<String> contentType;

  /// Used with the s3 client to make bucket changes and will be computed automatically if left blank, override for testing/debug purposes.
  late final pulumi.Output<String> endpoint;

  /// Used to trigger updates. The only meaningful value is `${filemd5("path/to/file")}` (Terraform 0.11.12 or later) or `${md5(file("path/to/file"))}` (Terraform 0.11.11 or earlier).
  late final pulumi.Output<String> etag;

  /// Allow the object to be deleted regardless of any legal hold or object lock (defaults to `false`).
  late final pulumi.Output<bool> forceDestroy;

  /// They name of the object once it is in the bucket.
  late final pulumi.Output<String> key;

  /// A map of keys/values to provision metadata.
  late final pulumi.Output<Map<String, String>> metadata;

  /// The cluster the bucket is in. Required if `cluster` is not configured.
  late final pulumi.Output<String?> region;

  /// The REQUIRED secret key to authenticate with. If it's not specified with the resource, you must provide its value by
  /// * configuring the `obj_secret_key` in the provider configuration;
  /// * or, opting-in generating it implicitly at apply-time using `obj_use_temp_keys` at provider-level.
  late final pulumi.Output<String?> secretKey;

  /// The path to a file that will be read and uploaded as raw bytes for the object content. The path must either be relative to the root module or absolute.
  late final pulumi.Output<String?> source;

  /// A unique version ID value for the object.
  late final pulumi.Output<String> versionId;

  /// Specifies a target URL for website redirect.
  late final pulumi.Output<String?> websiteRedirect;

  /// Creates a new [ObjectStorageObject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ObjectStorageObject]. {@macro pulumi_index_object_storage_object_object_storage_object_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ObjectStorageObject(
    String name, {
    ObjectStorageObjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/objectStorageObject:ObjectStorageObject',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessKey = registerOutput<String?>('accessKey');
    acl = registerOutput<String>('acl');
    bucket = registerOutput<String>('bucket');
    cacheControl = registerOutput<String?>('cacheControl');
    cluster = registerOutput<String?>('cluster');
    content = registerOutput<String?>('content');
    contentBase64 = registerOutput<String?>('contentBase64');
    contentDisposition = registerOutput<String?>('contentDisposition');
    contentEncoding = registerOutput<String?>('contentEncoding');
    contentLanguage = registerOutput<String?>('contentLanguage');
    contentType = registerOutput<String>('contentType');
    endpoint = registerOutput<String>('endpoint');
    etag = registerOutput<String>('etag');
    forceDestroy = registerOutput<bool>('forceDestroy');
    key = registerOutput<String>('key');
    metadata = registerOutput<Map<String, String>>('metadata');
    region = registerOutput<String?>('region');
    secretKey = registerOutput<String?>('secretKey');
    source = registerOutput<String?>('source');
    versionId = registerOutput<String>('versionId');
    websiteRedirect = registerOutput<String?>('websiteRedirect');
  }

  /// Gets an existing [ObjectStorageObject] resource's state with the given [name] and [id].
  static ObjectStorageObject get(
    String name,
    pulumi.Input<String> id, {
    ObjectStorageObjectState? state,
  }) {
    return ObjectStorageObject._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ObjectStorageObject._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/objectStorageObject:ObjectStorageObject',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessKey = registerOutput<String?>('accessKey');
    acl = registerOutput<String>('acl');
    bucket = registerOutput<String>('bucket');
    cacheControl = registerOutput<String?>('cacheControl');
    cluster = registerOutput<String?>('cluster');
    content = registerOutput<String?>('content');
    contentBase64 = registerOutput<String?>('contentBase64');
    contentDisposition = registerOutput<String?>('contentDisposition');
    contentEncoding = registerOutput<String?>('contentEncoding');
    contentLanguage = registerOutput<String?>('contentLanguage');
    contentType = registerOutput<String>('contentType');
    endpoint = registerOutput<String>('endpoint');
    etag = registerOutput<String>('etag');
    forceDestroy = registerOutput<bool>('forceDestroy');
    key = registerOutput<String>('key');
    metadata = registerOutput<Map<String, String>>('metadata');
    region = registerOutput<String?>('region');
    secretKey = registerOutput<String?>('secretKey');
    source = registerOutput<String?>('source');
    versionId = registerOutput<String>('versionId');
    websiteRedirect = registerOutput<String?>('websiteRedirect');
  }
}
