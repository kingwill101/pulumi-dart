import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_args.dart';
import 'container_state.dart';
import 'container_versioning_legacy.dart';

/// Manages a V1 container resource within OpenStack.
///
/// ## Example Usage
///
/// ### Basic Container
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const container1 = new openstack.objectstorage.Container("container_1", {
///     region: "RegionOne",
///     name: "tf-test-container-1",
///     metadata: {
///         test: "true",
///     },
///     contentType: "application/json",
///     versioning: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// container1 = openstack.objectstorage.Container("container_1",
///     region="RegionOne",
///     name="tf-test-container-1",
///     metadata={
///         "test": "true",
///     },
///     content_type="application/json",
///     versioning=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var container1 = new OpenStack.ObjectStorage.Container("container_1", new()
///     {
///         Region = "RegionOne",
///         Name = "tf-test-container-1",
///         Metadata =
///         {
///             { "test", "true" },
///         },
///         ContentType = "application/json",
///         Versioning = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/objectstorage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := objectstorage.NewContainer(ctx, "container_1", &objectstorage.ContainerArgs{
/// 			Region: pulumi.String("RegionOne"),
/// 			Name:   pulumi.String("tf-test-container-1"),
/// 			Metadata: pulumi.StringMap{
/// 				"test": pulumi.String("true"),
/// 			},
/// 			ContentType: pulumi.String("application/json"),
/// 			Versioning:  pulumi.Bool(true),
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
/// import com.pulumi.openstack.objectstorage.Container;
/// import com.pulumi.openstack.objectstorage.ContainerArgs;
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
///         var container1 = new Container("container1", ContainerArgs.builder()
///             .region("RegionOne")
///             .name("tf-test-container-1")
///             .metadata(Map.of("test", "true"))
///             .contentType("application/json")
///             .versioning(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   container1:
///     type: openstack:objectstorage:Container
///     name: container_1
///     properties:
///       region: RegionOne
///       name: tf-test-container-1
///       metadata:
///         test: 'true'
///       contentType: application/json
///       versioning: true
/// ```
///
///
/// ### Basic Container with legacy versioning
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const container1 = new openstack.objectstorage.Container("container_1", {
///     region: "RegionOne",
///     name: "tf-test-container-1",
///     metadata: {
///         test: "true",
///     },
///     contentType: "application/json",
///     versioningLegacy: {
///         type: "versions",
///         location: "tf-test-container-versions",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// container1 = openstack.objectstorage.Container("container_1",
///     region="RegionOne",
///     name="tf-test-container-1",
///     metadata={
///         "test": "true",
///     },
///     content_type="application/json",
///     versioning_legacy={
///         "type": "versions",
///         "location": "tf-test-container-versions",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var container1 = new OpenStack.ObjectStorage.Container("container_1", new()
///     {
///         Region = "RegionOne",
///         Name = "tf-test-container-1",
///         Metadata =
///         {
///             { "test", "true" },
///         },
///         ContentType = "application/json",
///         VersioningLegacy = new OpenStack.ObjectStorage.Inputs.ContainerVersioningLegacyArgs
///         {
///             Type = "versions",
///             Location = "tf-test-container-versions",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/objectstorage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := objectstorage.NewContainer(ctx, "container_1", &objectstorage.ContainerArgs{
/// 			Region: pulumi.String("RegionOne"),
/// 			Name:   pulumi.String("tf-test-container-1"),
/// 			Metadata: pulumi.StringMap{
/// 				"test": pulumi.String("true"),
/// 			},
/// 			ContentType: pulumi.String("application/json"),
/// 			VersioningLegacy: &objectstorage.ContainerVersioningLegacyArgs{
/// 				Type:     pulumi.String("versions"),
/// 				Location: pulumi.String("tf-test-container-versions"),
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
/// import com.pulumi.openstack.objectstorage.Container;
/// import com.pulumi.openstack.objectstorage.ContainerArgs;
/// import com.pulumi.openstack.objectstorage.inputs.ContainerVersioningLegacyArgs;
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
///         var container1 = new Container("container1", ContainerArgs.builder()
///             .region("RegionOne")
///             .name("tf-test-container-1")
///             .metadata(Map.of("test", "true"))
///             .contentType("application/json")
///             .versioningLegacy(ContainerVersioningLegacyArgs.builder()
///                 .type("versions")
///                 .location("tf-test-container-versions")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   container1:
///     type: openstack:objectstorage:Container
///     name: container_1
///     properties:
///       region: RegionOne
///       name: tf-test-container-1
///       metadata:
///         test: 'true'
///       contentType: application/json
///       versioningLegacy:
///         type: versions
///         location: tf-test-container-versions
/// ```
///
///
/// ### Global Read Access
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// // Requires that a user know the object name they are attempting to download
/// const container1 = new openstack.objectstorage.Container("container_1", {
///     region: "RegionOne",
///     name: "tf-test-container-1",
///     containerRead: ".r:*",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// # Requires that a user know the object name they are attempting to download
/// container1 = openstack.objectstorage.Container("container_1",
///     region="RegionOne",
///     name="tf-test-container-1",
///     container_read=".r:*")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Requires that a user know the object name they are attempting to download
///     var container1 = new OpenStack.ObjectStorage.Container("container_1", new()
///     {
///         Region = "RegionOne",
///         Name = "tf-test-container-1",
///         ContainerRead = ".r:*",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/objectstorage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Requires that a user know the object name they are attempting to download
/// 		_, err := objectstorage.NewContainer(ctx, "container_1", &objectstorage.ContainerArgs{
/// 			Region:        pulumi.String("RegionOne"),
/// 			Name:          pulumi.String("tf-test-container-1"),
/// 			ContainerRead: pulumi.String(".r:*"),
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
/// import com.pulumi.openstack.objectstorage.Container;
/// import com.pulumi.openstack.objectstorage.ContainerArgs;
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
///         // Requires that a user know the object name they are attempting to download
///         var container1 = new Container("container1", ContainerArgs.builder()
///             .region("RegionOne")
///             .name("tf-test-container-1")
///             .containerRead(".r:*")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Requires that a user know the object name they are attempting to download
///   container1:
///     type: openstack:objectstorage:Container
///     name: container_1
///     properties:
///       region: RegionOne
///       name: tf-test-container-1
///       containerRead: .r:*
/// ```
///
///
/// ### Global Read and List Access
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// // Any user can read any object, and list all objects in the container
/// const container1 = new openstack.objectstorage.Container("container_1", {
///     region: "RegionOne",
///     name: "tf-test-container-1",
///     containerRead: ".r:*,.rlistings",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// # Any user can read any object, and list all objects in the container
/// container1 = openstack.objectstorage.Container("container_1",
///     region="RegionOne",
///     name="tf-test-container-1",
///     container_read=".r:*,.rlistings")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Any user can read any object, and list all objects in the container
///     var container1 = new OpenStack.ObjectStorage.Container("container_1", new()
///     {
///         Region = "RegionOne",
///         Name = "tf-test-container-1",
///         ContainerRead = ".r:*,.rlistings",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/objectstorage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Any user can read any object, and list all objects in the container
/// 		_, err := objectstorage.NewContainer(ctx, "container_1", &objectstorage.ContainerArgs{
/// 			Region:        pulumi.String("RegionOne"),
/// 			Name:          pulumi.String("tf-test-container-1"),
/// 			ContainerRead: pulumi.String(".r:*,.rlistings"),
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
/// import com.pulumi.openstack.objectstorage.Container;
/// import com.pulumi.openstack.objectstorage.ContainerArgs;
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
///         // Any user can read any object, and list all objects in the container
///         var container1 = new Container("container1", ContainerArgs.builder()
///             .region("RegionOne")
///             .name("tf-test-container-1")
///             .containerRead(".r:*,.rlistings")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Any user can read any object, and list all objects in the container
///   container1:
///     type: openstack:objectstorage:Container
///     name: container_1
///     properties:
///       region: RegionOne
///       name: tf-test-container-1
///       containerRead: .r:*,.rlistings
/// ```
///
///
/// ### Write-Only Access for a User
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const current = openstack.identity.getAuthScope({
///     name: "current",
/// });
/// // The named user can only upload objects, not read objects or list the container
/// const container1 = new openstack.objectstorage.Container("container_1", {
///     region: "RegionOne",
///     name: "tf-test-container-1",
///     containerRead: `.r:-${username}`,
///     containerWrite: current.then(current => `${current.projectId}:${username}`),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// current = openstack.identity.get_auth_scope(name="current")
/// # The named user can only upload objects, not read objects or list the container
/// container1 = openstack.objectstorage.Container("container_1",
///     region="RegionOne",
///     name="tf-test-container-1",
///     container_read=f".r:-{username}",
///     container_write=f"{current.project_id}:{username}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = OpenStack.Identity.GetAuthScope.Invoke(new()
///     {
///         Name = "current",
///     });
///
///     // The named user can only upload objects, not read objects or list the container
///     var container1 = new OpenStack.ObjectStorage.Container("container_1", new()
///     {
///         Region = "RegionOne",
///         Name = "tf-test-container-1",
///         ContainerRead = $".r:-{username}",
///         ContainerWrite = $"{current.Apply(getAuthScopeResult => getAuthScopeResult.ProjectId)}:{username}",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/identity"
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/objectstorage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := identity.GetAuthScope(ctx, &identity.GetAuthScopeArgs{
/// 			Name: "current",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// The named user can only upload objects, not read objects or list the container
/// 		_, err = objectstorage.NewContainer(ctx, "container_1", &objectstorage.ContainerArgs{
/// 			Region:         pulumi.String("RegionOne"),
/// 			Name:           pulumi.String("tf-test-container-1"),
/// 			ContainerRead:  pulumi.Sprintf(".r:-%v", username),
/// 			ContainerWrite: pulumi.Sprintf("%v:%v", current.ProjectId, username),
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
/// import com.pulumi.openstack.identity.IdentityFunctions;
/// import com.pulumi.openstack.identity.inputs.GetAuthScopeArgs;
/// import com.pulumi.openstack.objectstorage.Container;
/// import com.pulumi.openstack.objectstorage.ContainerArgs;
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
///         final var current = IdentityFunctions.getAuthScope(GetAuthScopeArgs.builder()
///             .name("current")
///             .build());
///
///         // The named user can only upload objects, not read objects or list the container
///         var container1 = new Container("container1", ContainerArgs.builder()
///             .region("RegionOne")
///             .name("tf-test-container-1")
///             .containerRead(String.format(".r:-%s", username))
///             .containerWrite(String.format("%s:%s", current.projectId(),username))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # The named user can only upload objects, not read objects or list the container
///   container1:
///     type: openstack:objectstorage:Container
///     name: container_1
///     properties:
///       region: RegionOne
///       name: tf-test-container-1
///       containerRead: .r:-${username}
///       containerWrite: ${current.projectId}:${username}
/// variables:
///   current:
///     fn::invoke:
///       function: openstack:identity:getAuthScope
///       arguments:
///         name: current
/// ```
///
///
/// ### Set a custom storage class in the Ceph RGW Swift API
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const container1 = new openstack.objectstorage.Container("container_1", {
///     name: "tf-test-container-1",
///     storagePolicy: "az1",
///     storageClass: "SSD",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// container1 = openstack.objectstorage.Container("container_1",
///     name="tf-test-container-1",
///     storage_policy="az1",
///     storage_class="SSD")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var container1 = new OpenStack.ObjectStorage.Container("container_1", new()
///     {
///         Name = "tf-test-container-1",
///         StoragePolicy = "az1",
///         StorageClass = "SSD",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/objectstorage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := objectstorage.NewContainer(ctx, "container_1", &objectstorage.ContainerArgs{
/// 			Name:          pulumi.String("tf-test-container-1"),
/// 			StoragePolicy: pulumi.String("az1"),
/// 			StorageClass:  pulumi.String("SSD"),
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
/// import com.pulumi.openstack.objectstorage.Container;
/// import com.pulumi.openstack.objectstorage.ContainerArgs;
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
///         var container1 = new Container("container1", ContainerArgs.builder()
///             .name("tf-test-container-1")
///             .storagePolicy("az1")
///             .storageClass("SSD")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   container1:
///     type: openstack:objectstorage:Container
///     name: container_1
///     properties:
///       name: tf-test-container-1
///       storagePolicy: az1
///       storageClass: SSD
/// ```
///
///
/// ## Import
///
/// This resource can be imported by specifying the name of the container:
///
/// Some attributes can't be imported :
/// * `force_destroy`
/// * `content_type`
/// * `metadata`
/// * `container_sync_to`
/// * `container_sync_key`
///
/// So you'll have to `pulumi preview` and `pulumi up` after the import to fix those missing attributes.
///
/// ```sh
/// $ pulumi import openstack:objectstorage/container:Container container_1 container_name
/// ```
class Container extends pulumi.CustomResource {
  /// Sets an access control list (ACL) that grants
  /// read access. This header can contain a comma-delimited list of users that can
  /// read the container (allows the GET method for all objects in the container).
  /// Changing this updates the access control list read access.
  late final pulumi.Output<String?> containerRead;

  /// The secret key for container
  /// synchronization. Changing this updates container synchronization.
  late final pulumi.Output<String?> containerSyncKey;

  /// The destination for container
  /// synchronization. Changing this updates container synchronization.
  late final pulumi.Output<String?> containerSyncTo;

  /// Sets an ACL that grants write access. Changing
  /// this updates the access control list write access.
  late final pulumi.Output<String?> containerWrite;

  /// The MIME type for the container. Changing this
  /// updates the MIME type.
  late final pulumi.Output<String?> contentType;

  /// A boolean that indicates all
  /// objects should be deleted from the container so that the container can be
  /// destroyed without error. These objects are not recoverable.
  late final pulumi.Output<bool?> forceDestroy;

  /// Custom key/value pairs to associate with the
  /// container. Changing this updates the existing container metadata.
  late final pulumi.Output<Map<String, String>?> metadata;

  /// A unique name for the container. Changing this creates a
  /// new container.
  late final pulumi.Output<String> name;

  /// The region in which to create the container. If
  /// omitted, the `region` argument of the provider is used. Changing this creates
  /// a new container.
  late final pulumi.Output<String> region;

  /// The storage class to be used for the container.
  /// Changing this creates a new container. This option is only available in Ceph
  /// RGW Swift API implementation.
  late final pulumi.Output<String> storageClass;

  /// The storage policy to be used for the
  /// container. Changing this creates a new container.
  late final pulumi.Output<String> storagePolicy;

  /// A boolean that can enable or disable object
  /// versioning. The default value is `false`. To use this feature, your Swift
  /// version must be 2.24 or higher (as described in the [OpenStack Swift Ussuri
  /// release
  /// notes](https://docs.openstack.org/releasenotes/swift/ussuri.html#relnotes-2-24-0-stable-ussuri)),
  /// and a cloud administrator must have set the `allow_object_versioning = true`
  /// configuration option in Swift. If you cannot set this versioning type, you
  /// may want to consider using `versioning_legacy` instead.
  late final pulumi.Output<bool?> versioning;

  /// Enable legacy object versioning. The
  /// structure is described below.
  late final pulumi.Output<ContainerVersioningLegacy?> versioningLegacy;

  /// Creates a new [Container].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Container]. {@macro pulumi_objectstorage_container_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Container(
    String name, {
    ContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:objectstorage/container:Container',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    containerRead = registerOutput<String?>('containerRead');
    containerSyncKey = registerOutput<String?>('containerSyncKey');
    containerSyncTo = registerOutput<String?>('containerSyncTo');
    containerWrite = registerOutput<String?>('containerWrite');
    contentType = registerOutput<String?>('contentType');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    storageClass = registerOutput<String>('storageClass');
    storagePolicy = registerOutput<String>('storagePolicy');
    versioning = registerOutput<bool?>('versioning');
    versioningLegacy = registerOutput<ContainerVersioningLegacy?>(
      'versioningLegacy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ContainerVersioningLegacy.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [Container] resource's state with the given [name] and [id].
  static Container get(
    String name,
    pulumi.Input<String> id, {
    ContainerState? state,
  }) {
    return Container._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Container._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:objectstorage/container:Container',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    containerRead = registerOutput<String?>('containerRead');
    containerSyncKey = registerOutput<String?>('containerSyncKey');
    containerSyncTo = registerOutput<String?>('containerSyncTo');
    containerWrite = registerOutput<String?>('containerWrite');
    contentType = registerOutput<String?>('contentType');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    storageClass = registerOutput<String>('storageClass');
    storagePolicy = registerOutput<String>('storagePolicy');
    versioning = registerOutput<bool?>('versioning');
    versioningLegacy = registerOutput<ContainerVersioningLegacy?>(
      'versioningLegacy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ContainerVersioningLegacy.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
