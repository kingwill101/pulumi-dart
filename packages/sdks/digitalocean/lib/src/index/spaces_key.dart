import 'package:pulumi/pulumi.dart' as pulumi;
import 'spaces_key_args.dart';
import 'spaces_key_state.dart';

/// Provides a key resource for Spaces, DigitalOcean's object storage product.
///
/// The [Spaces API](https://docs.digitalocean.com/reference/api/spaces-api/) was
/// designed to be interoperable with Amazon's AWS S3 API. This allows users to
/// interact with the service while using the tools they already know. Spaces
/// mirrors S3's authentication framework and requests to Spaces require a key pair
/// similar to Amazon's Access ID and Secret Key.
///
/// As a Spaces owner, you limit others’ access to your buckets using Spaces access
/// keys. Access keys can provide several levels of permissions to create, destroy,
/// read, and write to specific associated buckets. However, access keys only limit
/// access to certain commands using the S3 API or CLI, not the control panel or
/// other DigitalOcean resources.
///
/// ## Example Usage
///
/// ### Create a New Key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const foobar = new digitalocean.SpacesKey("foobar", {name: "foobar"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// foobar = digitalocean.SpacesKey("foobar", name="foobar")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new DigitalOcean.SpacesKey("foobar", new()
///     {
///         Name = "foobar",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.NewSpacesKey(ctx, "foobar", &digitalocean.SpacesKeyArgs{
/// 			Name: pulumi.String("foobar"),
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
/// import com.pulumi.digitalocean.SpacesKey;
/// import com.pulumi.digitalocean.SpacesKeyArgs;
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
///         var foobar = new SpacesKey("foobar", SpacesKeyArgs.builder()
///             .name("foobar")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: digitalocean:SpacesKey
///     properties:
///       name: foobar
/// ```
///
///
/// ### Create a New Key with Grants
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const foobar = new digitalocean.SpacesKey("foobar", {
///     name: "foobar",
///     grants: [{
///         bucket: "my-bucket",
///         permission: "read",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// foobar = digitalocean.SpacesKey("foobar",
///     name="foobar",
///     grants=[{
///         "bucket": "my-bucket",
///         "permission": "read",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new DigitalOcean.SpacesKey("foobar", new()
///     {
///         Name = "foobar",
///         Grants = new[]
///         {
///             new DigitalOcean.Inputs.SpacesKeyGrantArgs
///             {
///                 Bucket = "my-bucket",
///                 Permission = "read",
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.NewSpacesKey(ctx, "foobar", &digitalocean.SpacesKeyArgs{
/// 			Name: pulumi.String("foobar"),
/// 			Grants: digitalocean.SpacesKeyGrantArray{
/// 				&digitalocean.SpacesKeyGrantArgs{
/// 					Bucket:     pulumi.String("my-bucket"),
/// 					Permission: pulumi.String("read"),
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
/// import com.pulumi.digitalocean.SpacesKey;
/// import com.pulumi.digitalocean.SpacesKeyArgs;
/// import com.pulumi.digitalocean.inputs.SpacesKeyGrantArgs;
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
///         var foobar = new SpacesKey("foobar", SpacesKeyArgs.builder()
///             .name("foobar")
///             .grants(SpacesKeyGrantArgs.builder()
///                 .bucket("my-bucket")
///                 .permission("read")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: digitalocean:SpacesKey
///     properties:
///       name: foobar
///       grants:
///         - bucket: my-bucket
///           permission: read
/// ```
///
///
/// ### Create a New Key with full access
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const foobar = new digitalocean.SpacesKey("foobar", {
///     name: "foobar",
///     grants: [{
///         bucket: "",
///         permission: "fullaccess",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// foobar = digitalocean.SpacesKey("foobar",
///     name="foobar",
///     grants=[{
///         "bucket": "",
///         "permission": "fullaccess",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new DigitalOcean.SpacesKey("foobar", new()
///     {
///         Name = "foobar",
///         Grants = new[]
///         {
///             new DigitalOcean.Inputs.SpacesKeyGrantArgs
///             {
///                 Bucket = "",
///                 Permission = "fullaccess",
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.NewSpacesKey(ctx, "foobar", &digitalocean.SpacesKeyArgs{
/// 			Name: pulumi.String("foobar"),
/// 			Grants: digitalocean.SpacesKeyGrantArray{
/// 				&digitalocean.SpacesKeyGrantArgs{
/// 					Bucket:     pulumi.String(""),
/// 					Permission: pulumi.String("fullaccess"),
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
/// import com.pulumi.digitalocean.SpacesKey;
/// import com.pulumi.digitalocean.SpacesKeyArgs;
/// import com.pulumi.digitalocean.inputs.SpacesKeyGrantArgs;
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
///         var foobar = new SpacesKey("foobar", SpacesKeyArgs.builder()
///             .name("foobar")
///             .grants(SpacesKeyGrantArgs.builder()
///                 .bucket("")
///                 .permission("fullaccess")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: digitalocean:SpacesKey
///     properties:
///       name: foobar
///       grants:
///         - bucket: ""
///           permission: fullaccess
/// ```
class SpacesKey extends pulumi.CustomResource {
  /// The access key ID of the key
  late final pulumi.Output<String> accessKey;
  /// The creation time of the key
  late final pulumi.Output<String> createdAt;
  /// A grant for the key (documented below).
  late final pulumi.Output<List<Map<String, dynamic>>?> grants;
  /// The name of the key
  late final pulumi.Output<String> name;
  /// The access key secret of the key
  late final pulumi.Output<String> secretKey;

  /// Creates a new [SpacesKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpacesKey]. {@macro pulumi_index_spaces_key_spaces_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpacesKey(
    String name, {
    SpacesKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/spacesKey:SpacesKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessKey = registerOutput<String>('accessKey');
    createdAt = registerOutput<String>('createdAt');
    grants = registerOutput<List<Map<String, dynamic>>?>('grants');
    this.name = registerOutput<String>('name');
    secretKey = registerOutput<String>('secretKey');
  }

  /// Gets an existing [SpacesKey] resource's state with the given [name] and [id].
  static SpacesKey get(
    String name,
    pulumi.Input<String> id, {
    SpacesKeyState? state,
  }) {
    return SpacesKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SpacesKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/spacesKey:SpacesKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessKey = registerOutput<String>('accessKey');
    createdAt = registerOutput<String>('createdAt');
    grants = registerOutput<List<Map<String, dynamic>>?>('grants');
    this.name = registerOutput<String>('name');
    secretKey = registerOutput<String>('secretKey');
  }
}
