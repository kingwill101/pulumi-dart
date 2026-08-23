import 'package:pulumi/pulumi.dart' as pulumi;
import 'mesh_args.dart';
import 'mesh_state.dart';

/// Mesh represents a logical configuration grouping for workload to workload communication within a
/// service mesh. Routes that point to mesh dictate how requests are routed within this logical
/// mesh boundary.
///
///
/// To get more information about Mesh, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-services/rest/v1beta1/projects.locations.meshes)
///
/// ## Example Usage
///
/// ### Network Services Mesh Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.Mesh("default", {
///     name: "my-mesh",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     interceptionPort: 443,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.Mesh("default",
///     name="my-mesh",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     interception_port=443)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkServices.Mesh("default", new()
///     {
///         Name = "my-mesh",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         InterceptionPort = 443,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.NewMesh(ctx, "default", &networkservices.MeshArgs{
/// 			Name: pulumi.String("my-mesh"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description:      pulumi.String("my description"),
/// 			InterceptionPort: pulumi.Int(443),
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
/// resource "gcp_networkservices_mesh" "default" {
///   name = "my-mesh"
///   labels = {
///     "foo" = "bar"
///   }
///   description       = "my description"
///   interception_port = 443
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networkservices.Mesh;
/// import com.pulumi.gcp.networkservices.MeshArgs;
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
///         var default_ = new Mesh("default", MeshArgs.builder()
///             .name("my-mesh")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .interceptionPort(443)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:Mesh
///     properties:
///       name: my-mesh
///       labels:
///         foo: bar
///       description: my description
///       interceptionPort: 443
/// ```
///
/// ### Network Services Mesh No Port
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.Mesh("default", {
///     name: "my-mesh-noport",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.Mesh("default",
///     name="my-mesh-noport",
///     labels={
///         "foo": "bar",
///     },
///     description="my description")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkServices.Mesh("default", new()
///     {
///         Name = "my-mesh-noport",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.NewMesh(ctx, "default", &networkservices.MeshArgs{
/// 			Name: pulumi.String("my-mesh-noport"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
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
/// resource "gcp_networkservices_mesh" "default" {
///   name = "my-mesh-noport"
///   labels = {
///     "foo" = "bar"
///   }
///   description = "my description"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networkservices.Mesh;
/// import com.pulumi.gcp.networkservices.MeshArgs;
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
///         var default_ = new Mesh("default", MeshArgs.builder()
///             .name("my-mesh-noport")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:Mesh
///     properties:
///       name: my-mesh-noport
///       labels:
///         foo: bar
///       description: my description
/// ```
///
/// ### Network Services Mesh Location
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.Mesh("default", {
///     name: "my-mesh",
///     location: "global",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.Mesh("default",
///     name="my-mesh",
///     location="global")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkServices.Mesh("default", new()
///     {
///         Name = "my-mesh",
///         Location = "global",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.NewMesh(ctx, "default", &networkservices.MeshArgs{
/// 			Name:     pulumi.String("my-mesh"),
/// 			Location: pulumi.String("global"),
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
/// resource "gcp_networkservices_mesh" "default" {
///   name     = "my-mesh"
///   location = "global"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networkservices.Mesh;
/// import com.pulumi.gcp.networkservices.MeshArgs;
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
///         var default_ = new Mesh("default", MeshArgs.builder()
///             .name("my-mesh")
///             .location("global")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:Mesh
///     properties:
///       name: my-mesh
///       location: global
/// ```
///
///
/// ## Import
///
/// Mesh can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/meshes/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Mesh can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/mesh:Mesh default projects/{{project}}/locations/{{location}}/meshes/{{name}}
/// $ pulumi import gcp:networkservices/mesh:Mesh default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:networkservices/mesh:Mesh default {{location}}/{{name}}
/// ```
class Mesh extends pulumi.CustomResource {
  /// Time the Mesh was created in UTC.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the
  /// specified port of localhost (127.0.0.1) address. The SIDECAR proxy will expect all traffic to
  /// be redirected to this port regardless of its actual ip:port destination. If unset, a port
  /// '15001' is used as the interception port. This will is applicable only for sidecar proxy
  /// deployments.
  late final pulumi.Output<int?> interceptionPort;
  /// Set of label tags associated with the Mesh resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Location (region) of the Mesh resource to be created. Only the value 'global' is currently allowed; defaults to 'global' if omitted.
  late final pulumi.Output<String?> location;
  /// Short name of the Mesh resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Server-defined URL of this resource.
  late final pulumi.Output<String> selfLink;
  /// Time the Mesh was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Mesh].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Mesh]. {@macro pulumi_networkservices_mesh_mesh_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Mesh(
    String name, {
    MeshArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/mesh:Mesh',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    interceptionPort = registerOutput<int?>('interceptionPort');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    selfLink = registerOutput<String>('selfLink');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Mesh] resource's state with the given [name] and [id].
  static Mesh get(
    String name,
    pulumi.Input<String> id, {
    MeshState? state,
  }) {
    return Mesh._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Mesh._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/mesh:Mesh',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    interceptionPort = registerOutput<int?>('interceptionPort');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    selfLink = registerOutput<String>('selfLink');
    updateTime = registerOutput<String>('updateTime');
  }
}
