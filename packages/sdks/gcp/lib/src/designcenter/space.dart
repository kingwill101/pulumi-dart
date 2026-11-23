import 'package:pulumi/pulumi.dart' as pulumi;
import 'space_args.dart';
import 'space_state.dart';

/// Space is a top level resource for managing teams building applications
/// through Application Design Center.
///
///
/// To get more information about Space, see:
///
/// * [API documentation](https://cloud.google.com/application-design-center/docs/reference/rest/v1/projects.locations.spaces)
/// * How-to Guides
/// * [Application Design Center Overview](https://cloud.google.com/application-design-center/docs/overview)
///
/// &gt; **Note:** The project must have application management enabled (an App Hub
/// management project), and only one Space is allowed per region within a
/// management project. See
/// [Set up Application Design Center](https://cloud.google.com/application-design-center/docs/setup).
///
///
/// ## Example Usage
///
/// ### Designcenter Space Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.designcenter.Space("example", {
///     project: "my-project-name",
///     location: "us-central1",
///     spaceId: "example-space",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.designcenter.Space("example",
///     project="my-project-name",
///     location="us-central1",
///     space_id="example-space")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.DesignCenter.Space("example", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         SpaceId = "example-space",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/designcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := designcenter.NewSpace(ctx, "example", &designcenter.SpaceArgs{
/// 			Project:  pulumi.String("my-project-name"),
/// 			Location: pulumi.String("us-central1"),
/// 			SpaceId:  pulumi.String("example-space"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_designcenter_space" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project  = "my-project-name"
///   location = "us-central1"
///   space_id = "example-space"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.designcenter.Space;
/// import com.pulumi.gcp.designcenter.SpaceArgs;
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
///         var example = new Space("example", SpaceArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .spaceId("example-space")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:designcenter:Space
///     properties:
///       project: my-project-name
///       location: us-central1
///       spaceId: example-space
/// ```
///
///
/// ## Import
///
/// Space can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/spaces/{{space_id}}`
/// * `{{project}}/{{location}}/{{space_id}}`
/// * `{{location}}/{{space_id}}`
///
///
/// When using the `pulumi import` command, Space can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:designcenter/space:Space default projects/{{project}}/locations/{{location}}/spaces/{{space_id}}
/// $ pulumi import gcp:designcenter/space:Space default {{project}}/{{location}}/{{space_id}}
/// $ pulumi import gcp:designcenter/space:Space default {{location}}/{{space_id}}
/// ```
class Space extends pulumi.CustomResource {
  /// Space creation timestamp.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description for the space.
  late final pulumi.Output<String?> description;
  /// Display name for the space.
  late final pulumi.Output<String?> displayName;
  /// Flag to enable Google opinionated shared templates.
  late final pulumi.Output<bool?> enableGcpSharedTemplates;
  /// An existing Google Cloud Storage bucket that you want to use instead of
  /// creating a new bucket during Application Design Center setup. If not
  /// provided, a default bucket is created during setup. The bucket must exist
  /// in the same project as the space. Format: {bucket_name}
  late final pulumi.Output<String?> gcsBucket;
  /// The location of the space.
  late final pulumi.Output<String> location;
  /// Identifier. The space name.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The ID of the space.
  late final pulumi.Output<String> spaceId;
  /// Input only. Resource Manager tags to bind to the space at creation, as a
  /// map of namespaced tag keys to tag value short names, for example
  /// `{"123/environment" = "production"}`. For more information, see
  /// https://cloud.google.com/resource-manager/docs/tags/tags-overview.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Space update timestamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Space].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Space]. {@macro pulumi_designcenter_space_space_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Space(
    String name, {
    SpaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:designcenter/space:Space',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    enableGcpSharedTemplates = registerOutput<bool?>('enableGcpSharedTemplates');
    gcsBucket = registerOutput<String?>('gcsBucket');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    spaceId = registerOutput<String>('spaceId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Space] resource's state with the given [name] and [id].
  static Space get(
    String name,
    pulumi.Input<String> id, {
    SpaceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Space._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Space._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:designcenter/space:Space',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    enableGcpSharedTemplates = registerOutput<bool?>('enableGcpSharedTemplates');
    gcsBucket = registerOutput<String?>('gcsBucket');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    spaceId = registerOutput<String>('spaceId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Space] resource.
  Space.reference(String urn)
    : super(
        'gcp:designcenter/space:Space',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    enableGcpSharedTemplates = registerOutput<bool?>('enableGcpSharedTemplates');
    gcsBucket = registerOutput<String?>('gcsBucket');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    spaceId = registerOutput<String>('spaceId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updateTime = registerOutput<String>('updateTime');
  }
}
