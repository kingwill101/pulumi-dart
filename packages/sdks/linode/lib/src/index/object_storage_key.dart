import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_storage_key_args.dart';
import 'object_storage_key_state.dart';

/// Provides a Linode Object Storage Key resource. This can be used to create, modify, and delete Linodes Object Storage Keys.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-object-storage-keys).
///
/// ## Example Usage
///
/// The following example shows how one might use this resource to create an Object Storage Key.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foo = new linode.ObjectStorageKey("foo", {label: "image-access"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foo = linode.ObjectStorageKey("foo", label="image-access")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Linode.ObjectStorageKey("foo", new()
///     {
///         Label = "image-access",
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
/// 		_, err := linode.NewObjectStorageKey(ctx, "foo", &linode.ObjectStorageKeyArgs{
/// 			Label: pulumi.String("image-access"),
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
/// import com.pulumi.linode.ObjectStorageKey;
/// import com.pulumi.linode.ObjectStorageKeyArgs;
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
///         var foo = new ObjectStorageKey("foo", ObjectStorageKeyArgs.builder()
///             .label("image-access")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: linode:ObjectStorageKey
///     properties:
///       label: image-access
/// ```
///
///
/// The following example shows a key with limited access.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.ObjectStorageKey("foobar", {
///     label: "my-key",
///     bucketAccesses: [{
///         bucketName: "my-bucket-name",
///         region: "us-mia",
///         permissions: "read_write",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.ObjectStorageKey("foobar",
///     label="my-key",
///     bucket_accesses=[{
///         "bucket_name": "my-bucket-name",
///         "region": "us-mia",
///         "permissions": "read_write",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Linode.ObjectStorageKey("foobar", new()
///     {
///         Label = "my-key",
///         BucketAccesses = new[]
///         {
///             new Linode.Inputs.ObjectStorageKeyBucketAccessArgs
///             {
///                 BucketName = "my-bucket-name",
///                 Region = "us-mia",
///                 Permissions = "read_write",
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
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewObjectStorageKey(ctx, "foobar", &linode.ObjectStorageKeyArgs{
/// 			Label: pulumi.String("my-key"),
/// 			BucketAccesses: linode.ObjectStorageKeyBucketAccessArray{
/// 				&linode.ObjectStorageKeyBucketAccessArgs{
/// 					BucketName:  pulumi.String("my-bucket-name"),
/// 					Region:      pulumi.String("us-mia"),
/// 					Permissions: pulumi.String("read_write"),
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
/// import com.pulumi.linode.ObjectStorageKey;
/// import com.pulumi.linode.ObjectStorageKeyArgs;
/// import com.pulumi.linode.inputs.ObjectStorageKeyBucketAccessArgs;
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
///         var foobar = new ObjectStorageKey("foobar", ObjectStorageKeyArgs.builder()
///             .label("my-key")
///             .bucketAccesses(ObjectStorageKeyBucketAccessArgs.builder()
///                 .bucketName("my-bucket-name")
///                 .region("us-mia")
///                 .permissions("read_write")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:ObjectStorageKey
///     properties:
///       label: my-key
///       bucketAccesses:
///         - bucketName: my-bucket-name
///           region: us-mia
///           permissions: read_write
/// ```
///
///
/// The following example shows how to grant a key the explicit access to multiple buckets.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foo = new linode.ObjectStorageKey("foo", {
///     label: "image-access",
///     bucketAccesses: [
///         {
///             bucketName: "foobar1",
///             region: "us-mia",
///             permissions: "read_write",
///         },
///         {
///             bucketName: "foobar2",
///             region: "gb-lon",
///             permissions: "read_write",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foo = linode.ObjectStorageKey("foo",
///     label="image-access",
///     bucket_accesses=[
///         {
///             "bucket_name": "foobar1",
///             "region": "us-mia",
///             "permissions": "read_write",
///         },
///         {
///             "bucket_name": "foobar2",
///             "region": "gb-lon",
///             "permissions": "read_write",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Linode.ObjectStorageKey("foo", new()
///     {
///         Label = "image-access",
///         BucketAccesses = new[]
///         {
///             new Linode.Inputs.ObjectStorageKeyBucketAccessArgs
///             {
///                 BucketName = "foobar1",
///                 Region = "us-mia",
///                 Permissions = "read_write",
///             },
///             new Linode.Inputs.ObjectStorageKeyBucketAccessArgs
///             {
///                 BucketName = "foobar2",
///                 Region = "gb-lon",
///                 Permissions = "read_write",
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
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewObjectStorageKey(ctx, "foo", &linode.ObjectStorageKeyArgs{
/// 			Label: pulumi.String("image-access"),
/// 			BucketAccesses: linode.ObjectStorageKeyBucketAccessArray{
/// 				&linode.ObjectStorageKeyBucketAccessArgs{
/// 					BucketName:  pulumi.String("foobar1"),
/// 					Region:      pulumi.String("us-mia"),
/// 					Permissions: pulumi.String("read_write"),
/// 				},
/// 				&linode.ObjectStorageKeyBucketAccessArgs{
/// 					BucketName:  pulumi.String("foobar2"),
/// 					Region:      pulumi.String("gb-lon"),
/// 					Permissions: pulumi.String("read_write"),
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
/// import com.pulumi.linode.ObjectStorageKey;
/// import com.pulumi.linode.ObjectStorageKeyArgs;
/// import com.pulumi.linode.inputs.ObjectStorageKeyBucketAccessArgs;
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
///         var foo = new ObjectStorageKey("foo", ObjectStorageKeyArgs.builder()
///             .label("image-access")
///             .bucketAccesses(
///                 ObjectStorageKeyBucketAccessArgs.builder()
///                     .bucketName("foobar1")
///                     .region("us-mia")
///                     .permissions("read_write")
///                     .build(),
///                 ObjectStorageKeyBucketAccessArgs.builder()
///                     .bucketName("foobar2")
///                     .region("gb-lon")
///                     .permissions("read_write")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: linode:ObjectStorageKey
///     properties:
///       label: image-access
///       bucketAccesses:
///         - bucketName: foobar1
///           region: us-mia
///           permissions: read_write
///         - bucketName: foobar2
///           region: gb-lon
///           permissions: read_write
/// ```
class ObjectStorageKey extends pulumi.CustomResource {
  /// This keypair's access key. This is not secret.
  late final pulumi.Output<String> accessKey;
  /// Defines this key as a Limited Access Key. Limited Access Keys restrict this Object Storage key’s access to only the bucket(s) declared in this array and define their bucket-level permissions. Not providing this block will not limit this Object Storage Key.
  late final pulumi.Output<List<Map<String, dynamic>>?> bucketAccesses;
  /// The label given to this key. For display purposes only.
  late final pulumi.Output<String> label;
  /// Whether or not this key is a limited access key.
  late final pulumi.Output<bool> limited;
  /// A set of regions where the key will grant access to create buckets.
  ///
  /// - - -
  late final pulumi.Output<List<String>> regions;
  /// A set of objects containing the detailed info of the regions where this key can access.
  late final pulumi.Output<List<Map<String, dynamic>>> regionsDetails;
  /// This keypair's secret key.
  late final pulumi.Output<String> secretKey;

  /// Creates a new [ObjectStorageKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ObjectStorageKey]. {@macro pulumi_index_object_storage_key_object_storage_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ObjectStorageKey(
    String name, {
    ObjectStorageKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/objectStorageKey:ObjectStorageKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessKey = registerOutput<String>('accessKey');
    bucketAccesses = registerOutput<List<Map<String, dynamic>>?>('bucketAccesses');
    label = registerOutput<String>('label');
    limited = registerOutput<bool>('limited');
    regions = registerOutput<List<String>>('regions');
    regionsDetails = registerOutput<List<Map<String, dynamic>>>('regionsDetails');
    secretKey = registerOutput<String>('secretKey');
  }

  /// Gets an existing [ObjectStorageKey] resource's state with the given [name] and [id].
  static ObjectStorageKey get(
    String name,
    pulumi.Input<String> id, {
    ObjectStorageKeyState? state,
  }) {
    return ObjectStorageKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ObjectStorageKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/objectStorageKey:ObjectStorageKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessKey = registerOutput<String>('accessKey');
    bucketAccesses = registerOutput<List<Map<String, dynamic>>?>('bucketAccesses');
    label = registerOutput<String>('label');
    limited = registerOutput<bool>('limited');
    regions = registerOutput<List<String>>('regions');
    regionsDetails = registerOutput<List<Map<String, dynamic>>>('regionsDetails');
    secretKey = registerOutput<String>('secretKey');
  }
}
