import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_access_args.dart';
import 'image_access_state.dart';

/// Manages members for the shared OpenStack Glance V2 Image within the source
/// project, which owns the Image.
///
/// ## Example Usage
///
/// ### Unprivileged user
///
/// Create a shared image and propose a membership to the
/// `bed6b6cbb86a4e2d8dc2735c2f1000e4` project ID.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const rancheros = new openstack.images.Image("rancheros", {
///     name: "RancherOS",
///     imageSourceUrl: "https://releases.rancher.com/os/latest/rancheros-openstack.img",
///     containerFormat: "bare",
///     diskFormat: "qcow2",
///     visibility: "shared",
///     properties: {
///         key: "value",
///     },
/// });
/// const rancherosMember = new openstack.images.ImageAccess("rancheros_member", {
///     imageId: rancheros.id,
///     memberId: "bed6b6cbb86a4e2d8dc2735c2f1000e4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// rancheros = openstack.images.Image("rancheros",
///     name="RancherOS",
///     image_source_url="https://releases.rancher.com/os/latest/rancheros-openstack.img",
///     container_format="bare",
///     disk_format="qcow2",
///     visibility="shared",
///     properties={
///         "key": "value",
///     })
/// rancheros_member = openstack.images.ImageAccess("rancheros_member",
///     image_id=rancheros.id,
///     member_id="bed6b6cbb86a4e2d8dc2735c2f1000e4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rancheros = new OpenStack.Images.Image("rancheros", new()
///     {
///         Name = "RancherOS",
///         ImageSourceUrl = "https://releases.rancher.com/os/latest/rancheros-openstack.img",
///         ContainerFormat = "bare",
///         DiskFormat = "qcow2",
///         Visibility = "shared",
///         Properties =
///         {
///             { "key", "value" },
///         },
///     });
///
///     var rancherosMember = new OpenStack.Images.ImageAccess("rancheros_member", new()
///     {
///         ImageId = rancheros.Id,
///         MemberId = "bed6b6cbb86a4e2d8dc2735c2f1000e4",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/images"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		rancheros, err := images.NewImage(ctx, "rancheros", &images.ImageArgs{
/// 			Name:            pulumi.String("RancherOS"),
/// 			ImageSourceUrl:  pulumi.String("https://releases.rancher.com/os/latest/rancheros-openstack.img"),
/// 			ContainerFormat: pulumi.String("bare"),
/// 			DiskFormat:      pulumi.String("qcow2"),
/// 			Visibility:      pulumi.String("shared"),
/// 			Properties: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = images.NewImageAccess(ctx, "rancheros_member", &images.ImageAccessArgs{
/// 			ImageId:  rancheros.ID(),
/// 			MemberId: pulumi.String("bed6b6cbb86a4e2d8dc2735c2f1000e4"),
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
/// import com.pulumi.openstack.images.Image;
/// import com.pulumi.openstack.images.ImageArgs;
/// import com.pulumi.openstack.images.ImageAccess;
/// import com.pulumi.openstack.images.ImageAccessArgs;
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
///         var rancheros = new Image("rancheros", ImageArgs.builder()
///             .name("RancherOS")
///             .imageSourceUrl("https://releases.rancher.com/os/latest/rancheros-openstack.img")
///             .containerFormat("bare")
///             .diskFormat("qcow2")
///             .visibility("shared")
///             .properties(Map.of("key", "value"))
///             .build());
///
///         var rancherosMember = new ImageAccess("rancherosMember", ImageAccessArgs.builder()
///             .imageId(rancheros.id())
///             .memberId("bed6b6cbb86a4e2d8dc2735c2f1000e4")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   rancheros:
///     type: openstack:images:Image
///     properties:
///       name: RancherOS
///       imageSourceUrl: https://releases.rancher.com/os/latest/rancheros-openstack.img
///       containerFormat: bare
///       diskFormat: qcow2
///       visibility: shared
///       properties:
///         key: value
///   rancherosMember:
///     type: openstack:images:ImageAccess
///     name: rancheros_member
///     properties:
///       imageId: ${rancheros.id}
///       memberId: bed6b6cbb86a4e2d8dc2735c2f1000e4
/// ```
///
///
/// ### Privileged user
///
/// Create a shared image and set a membership to the
/// `bed6b6cbb86a4e2d8dc2735c2f1000e4` project ID.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const rancheros = new openstack.images.Image("rancheros", {
///     name: "RancherOS",
///     imageSourceUrl: "https://releases.rancher.com/os/latest/rancheros-openstack.img",
///     containerFormat: "bare",
///     diskFormat: "qcow2",
///     visibility: "shared",
///     properties: {
///         key: "value",
///     },
/// });
/// const rancherosMember = new openstack.images.ImageAccess("rancheros_member", {
///     imageId: rancheros.id,
///     memberId: "bed6b6cbb86a4e2d8dc2735c2f1000e4",
///     status: "accepted",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// rancheros = openstack.images.Image("rancheros",
///     name="RancherOS",
///     image_source_url="https://releases.rancher.com/os/latest/rancheros-openstack.img",
///     container_format="bare",
///     disk_format="qcow2",
///     visibility="shared",
///     properties={
///         "key": "value",
///     })
/// rancheros_member = openstack.images.ImageAccess("rancheros_member",
///     image_id=rancheros.id,
///     member_id="bed6b6cbb86a4e2d8dc2735c2f1000e4",
///     status="accepted")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rancheros = new OpenStack.Images.Image("rancheros", new()
///     {
///         Name = "RancherOS",
///         ImageSourceUrl = "https://releases.rancher.com/os/latest/rancheros-openstack.img",
///         ContainerFormat = "bare",
///         DiskFormat = "qcow2",
///         Visibility = "shared",
///         Properties =
///         {
///             { "key", "value" },
///         },
///     });
///
///     var rancherosMember = new OpenStack.Images.ImageAccess("rancheros_member", new()
///     {
///         ImageId = rancheros.Id,
///         MemberId = "bed6b6cbb86a4e2d8dc2735c2f1000e4",
///         Status = "accepted",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/images"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		rancheros, err := images.NewImage(ctx, "rancheros", &images.ImageArgs{
/// 			Name:            pulumi.String("RancherOS"),
/// 			ImageSourceUrl:  pulumi.String("https://releases.rancher.com/os/latest/rancheros-openstack.img"),
/// 			ContainerFormat: pulumi.String("bare"),
/// 			DiskFormat:      pulumi.String("qcow2"),
/// 			Visibility:      pulumi.String("shared"),
/// 			Properties: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = images.NewImageAccess(ctx, "rancheros_member", &images.ImageAccessArgs{
/// 			ImageId:  rancheros.ID(),
/// 			MemberId: pulumi.String("bed6b6cbb86a4e2d8dc2735c2f1000e4"),
/// 			Status:   pulumi.String("accepted"),
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
/// import com.pulumi.openstack.images.Image;
/// import com.pulumi.openstack.images.ImageArgs;
/// import com.pulumi.openstack.images.ImageAccess;
/// import com.pulumi.openstack.images.ImageAccessArgs;
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
///         var rancheros = new Image("rancheros", ImageArgs.builder()
///             .name("RancherOS")
///             .imageSourceUrl("https://releases.rancher.com/os/latest/rancheros-openstack.img")
///             .containerFormat("bare")
///             .diskFormat("qcow2")
///             .visibility("shared")
///             .properties(Map.of("key", "value"))
///             .build());
///
///         var rancherosMember = new ImageAccess("rancherosMember", ImageAccessArgs.builder()
///             .imageId(rancheros.id())
///             .memberId("bed6b6cbb86a4e2d8dc2735c2f1000e4")
///             .status("accepted")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   rancheros:
///     type: openstack:images:Image
///     properties:
///       name: RancherOS
///       imageSourceUrl: https://releases.rancher.com/os/latest/rancheros-openstack.img
///       containerFormat: bare
///       diskFormat: qcow2
///       visibility: shared
///       properties:
///         key: value
///   rancherosMember:
///     type: openstack:images:ImageAccess
///     name: rancheros_member
///     properties:
///       imageId: ${rancheros.id}
///       memberId: bed6b6cbb86a4e2d8dc2735c2f1000e4
///       status: accepted
/// ```
///
///
/// ## Import
///
/// Image access can be imported using the `image_id` and the `member_id`,
///
/// separated by a slash, e.g.
///
/// ```sh
/// $ pulumi import openstack:images/imageAccess:ImageAccess openstack_images_image_access_v2 89c60255-9bd6-460c-822a-e2b959ede9d2/bed6b6cbb86a4e2d8dc2735c2f1000e4
/// ```
class ImageAccess extends pulumi.CustomResource {
  /// The date the image access was created.
  late final pulumi.Output<String> createdAt;
  /// The image ID.
  late final pulumi.Output<String> imageId;
  /// The member ID, e.g. the target project ID.
  late final pulumi.Output<String> memberId;
  /// The region in which to obtain the V2 Glance client.
  /// A Glance client is needed to manage Image members. If omitted, the `region`
  /// argument of the provider is used. Changing this creates a new resource.
  late final pulumi.Output<String> region;
  /// The member schema.
  late final pulumi.Output<String> schema;
  /// The member proposal status. Optional if admin wants to
  /// force the member proposal acceptance. Can either be `accepted`, `rejected` or
  /// `pending`. Defaults to `pending`. Foridden for non-admin users.
  late final pulumi.Output<String> status;
  /// The date the image access was last updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ImageAccess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImageAccess]. {@macro pulumi_images_image_access_image_access_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImageAccess(
    String name, {
    ImageAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:images/imageAccess:ImageAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    imageId = registerOutput<String>('imageId');
    memberId = registerOutput<String>('memberId');
    region = registerOutput<String>('region');
    schema = registerOutput<String>('schema');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ImageAccess] resource's state with the given [name] and [id].
  static ImageAccess get(
    String name,
    pulumi.Input<String> id, {
    ImageAccessState? state,
  }) {
    return ImageAccess._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ImageAccess._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:images/imageAccess:ImageAccess',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    imageId = registerOutput<String>('imageId');
    memberId = registerOutput<String>('memberId');
    region = registerOutput<String>('region');
    schema = registerOutput<String>('schema');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
