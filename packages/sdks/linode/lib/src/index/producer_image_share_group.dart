import 'package:pulumi/pulumi.dart' as pulumi;
import 'producer_image_share_group_args.dart';
import 'producer_image_share_group_image.dart';
import 'producer_image_share_group_state.dart';

/// Manages an Image Share Group.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-sharegroups). May not be currently available to all users even under v4beta.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const test_empty = new linode.ProducerImageShareGroup("test-empty", {
///     label: "my-image-share-group",
///     description: "My description.",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// test_empty = linode.ProducerImageShareGroup("test-empty",
///     label="my-image-share-group",
///     description="My description.")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test_empty = new Linode.ProducerImageShareGroup("test-empty", new()
///     {
///         Label = "my-image-share-group",
///         Description = "My description.",
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
/// 		_, err := linode.NewProducerImageShareGroup(ctx, "test-empty", &linode.ProducerImageShareGroupArgs{
/// 			Label:       pulumi.String("my-image-share-group"),
/// 			Description: pulumi.String("My description."),
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
/// import com.pulumi.linode.ProducerImageShareGroup;
/// import com.pulumi.linode.ProducerImageShareGroupArgs;
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
///         var test_empty = new ProducerImageShareGroup("test-empty", ProducerImageShareGroupArgs.builder()
///             .label("my-image-share-group")
///             .description("My description.")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-empty:
///     type: linode:ProducerImageShareGroup
///     properties:
///       label: my-image-share-group
///       description: My description.
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const test_images = new linode.ProducerImageShareGroup("test-images", {
///     label: "my-image-share-group",
///     description: "My description.",
///     images: [{
///         id: "private/12345",
///         label: "my-image",
///         description: "My image description.",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// test_images = linode.ProducerImageShareGroup("test-images",
///     label="my-image-share-group",
///     description="My description.",
///     images=[{
///         "id": "private/12345",
///         "label": "my-image",
///         "description": "My image description.",
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
///     var test_images = new Linode.ProducerImageShareGroup("test-images", new()
///     {
///         Label = "my-image-share-group",
///         Description = "My description.",
///         Images = new[]
///         {
///             new Linode.Inputs.ProducerImageShareGroupImageArgs
///             {
///                 Id = "private/12345",
///                 Label = "my-image",
///                 Description = "My image description.",
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
/// 		_, err := linode.NewProducerImageShareGroup(ctx, "test-images", &linode.ProducerImageShareGroupArgs{
/// 			Label:       pulumi.String("my-image-share-group"),
/// 			Description: pulumi.String("My description."),
/// 			Images: linode.ProducerImageShareGroupImageArray{
/// 				&linode.ProducerImageShareGroupImageArgs{
/// 					Id:          pulumi.String("private/12345"),
/// 					Label:       pulumi.String("my-image"),
/// 					Description: pulumi.String("My image description."),
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
/// import com.pulumi.linode.ProducerImageShareGroup;
/// import com.pulumi.linode.ProducerImageShareGroupArgs;
/// import com.pulumi.linode.inputs.ProducerImageShareGroupImageArgs;
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
///         var test_images = new ProducerImageShareGroup("test-images", ProducerImageShareGroupArgs.builder()
///             .label("my-image-share-group")
///             .description("My description.")
///             .images(ProducerImageShareGroupImageArgs.builder()
///                 .id("private/12345")
///                 .label("my-image")
///                 .description("My image description.")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-images:
///     type: linode:ProducerImageShareGroup
///     properties:
///       label: my-image-share-group
///       description: My description.
///       images:
///         - id: private/12345
///           label: my-image
///           description: My image description.
/// ```
class ProducerImageShareGroup extends pulumi.CustomResource {
  /// The date and time the Image Share Group was created.
  late final pulumi.Output<String> created;
  /// The description of the Image Share Group
  ///
  /// * `images` - (Optional) A list of Images to include in the Image Share Group.
  late final pulumi.Output<String?> description;
  /// The date and time the Image Share Group will expire.
  late final pulumi.Output<String> expiry;
  /// The images to be shared using this Image Share Group.
  late final pulumi.Output<List<ProducerImageShareGroupImage>> images;
  /// The number of images in the Image Share Group.
  late final pulumi.Output<int> imagesCount;
  /// Whether the Image Share Group is suspended.
  late final pulumi.Output<bool> isSuspended;
  /// The label of the Image Share Group.
  late final pulumi.Output<String> label;
  /// The number of members in the Image Share Group.
  late final pulumi.Output<int> membersCount;
  /// The date and time the Image Share Group was last updated.
  late final pulumi.Output<String> updated;
  /// The UUID of the Image Share Group.
  late final pulumi.Output<String> uuid;

  /// Creates a new [ProducerImageShareGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProducerImageShareGroup]. {@macro pulumi_index_producer_image_share_group_producer_image_share_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProducerImageShareGroup(
    String name, {
    ProducerImageShareGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/producerImageShareGroup:ProducerImageShareGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.created = registerOutput<String>('created');
    this.description = registerOutput<String?>('description');
    this.expiry = registerOutput<String>('expiry');
    this.images = registerOutput<List<ProducerImageShareGroupImage>>('images');
    this.imagesCount = registerOutput<int>('imagesCount');
    this.isSuspended = registerOutput<bool>('isSuspended');
    this.label = registerOutput<String>('label');
    this.membersCount = registerOutput<int>('membersCount');
    this.updated = registerOutput<String>('updated');
    this.uuid = registerOutput<String>('uuid');
  }

  /// Gets an existing [ProducerImageShareGroup] resource's state with the given [name] and [id].
  static ProducerImageShareGroup get(
    String name,
    pulumi.Input<String> id, {
    ProducerImageShareGroupState? state,
  }) {
    return ProducerImageShareGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProducerImageShareGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/producerImageShareGroup:ProducerImageShareGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.created = registerOutput<String>('created');
    this.description = registerOutput<String?>('description');
    this.expiry = registerOutput<String>('expiry');
    this.images = registerOutput<List<ProducerImageShareGroupImage>>('images');
    this.imagesCount = registerOutput<int>('imagesCount');
    this.isSuspended = registerOutput<bool>('isSuspended');
    this.label = registerOutput<String>('label');
    this.membersCount = registerOutput<int>('membersCount');
    this.updated = registerOutput<String>('updated');
    this.uuid = registerOutput<String>('uuid');
  }
}
