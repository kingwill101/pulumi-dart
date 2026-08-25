import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_args.dart';
import 'source_state.dart';

/// Source represents a data source from which asset discovery data is ingested into Migration Center.
///
///
///
/// ## Example Usage
///
/// ### Migration Center Source Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.migrationcenter.Source("default", {
///     location: "us-central1",
///     sourceId: "source-test",
///     description: "Terraform integration test description",
///     displayName: "Terraform integration test display",
///     priority: 10,
///     type: "SOURCE_TYPE_CUSTOM",
///     managed: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.migrationcenter.Source("default",
///     location="us-central1",
///     source_id="source-test",
///     description="Terraform integration test description",
///     display_name="Terraform integration test display",
///     priority=10,
///     type="SOURCE_TYPE_CUSTOM",
///     managed=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.MigrationCenter.Source("default", new()
///     {
///         Location = "us-central1",
///         SourceId = "source-test",
///         Description = "Terraform integration test description",
///         DisplayName = "Terraform integration test display",
///         Priority = 10,
///         Type = "SOURCE_TYPE_CUSTOM",
///         Managed = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/migrationcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := migrationcenter.NewSource(ctx, "default", &migrationcenter.SourceArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			SourceId:    pulumi.String("source-test"),
/// 			Description: pulumi.String("Terraform integration test description"),
/// 			DisplayName: pulumi.String("Terraform integration test display"),
/// 			Priority:    pulumi.Int(10),
/// 			Type:        pulumi.String("SOURCE_TYPE_CUSTOM"),
/// 			Managed:     pulumi.Bool(false),
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
/// resource "gcp_migrationcenter_source" "default" {
///   location     = "us-central1"
///   source_id    = "source-test"
///   description  = "Terraform integration test description"
///   display_name = "Terraform integration test display"
///   priority     = 10
///   type         = "SOURCE_TYPE_CUSTOM"
///   managed      = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.migrationcenter.Source;
/// import com.pulumi.gcp.migrationcenter.SourceArgs;
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
///         var default_ = new Source("default", SourceArgs.builder()
///             .location("us-central1")
///             .sourceId("source-test")
///             .description("Terraform integration test description")
///             .displayName("Terraform integration test display")
///             .priority(10)
///             .type("SOURCE_TYPE_CUSTOM")
///             .managed(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:migrationcenter:Source
///     properties:
///       location: us-central1
///       sourceId: source-test
///       description: Terraform integration test description
///       displayName: Terraform integration test display
///       priority: 10
///       type: SOURCE_TYPE_CUSTOM
///       managed: false
/// ```
///
///
/// ## Import
///
/// Source can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/sources/{{source_id}}`
/// * `{{project}}/{{location}}/{{source_id}}`
/// * `{{location}}/{{source_id}}`
///
///
/// When using the `pulumi import` command, Source can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:migrationcenter/source:Source default projects/{{project}}/locations/{{location}}/sources/{{source_id}}
/// $ pulumi import gcp:migrationcenter/source:Source default {{project}}/{{location}}/{{source_id}}
/// $ pulumi import gcp:migrationcenter/source:Source default {{location}}/{{source_id}}
/// ```
class Source extends pulumi.CustomResource {
  /// The timestamp when the source was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Free-text description.
  late final pulumi.Output<String?> description;
  /// User-friendly display name.
  late final pulumi.Output<String?> displayName;
  /// The number of frames that were reported by the source and contained errors.
  late final pulumi.Output<int> errorFrameCount;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// If `true`, the source is managed by other service(s).
  late final pulumi.Output<bool?> managed;
  /// The full name of the source.
  late final pulumi.Output<String> name;
  /// Number of frames that are still being processed.
  late final pulumi.Output<int> pendingFrameCount;
  /// The information confidence of the source.
  /// The higher the value, the higher the confidence.
  late final pulumi.Output<int?> priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// User specified ID for the source. It will become the last component of the
  /// source name. The ID must be unique within the project, must conform with
  /// RFC-1034, is restricted to lower-cased letters, and has a maximum
  /// length of 63 characters. The ID must match the
  /// regular expression: `a-z?`.
  late final pulumi.Output<String> sourceId;
  /// The state of the source.
  /// Possible values:
  /// ACTIVE
  /// DELETING
  /// INVALID
  late final pulumi.Output<String> state;
  /// Data source type.
  /// Possible values:
  /// SOURCE_TYPE_UNKNOWN
  /// SOURCE_TYPE_UPLOAD
  /// SOURCE_TYPE_GUEST_OS_SCAN
  /// SOURCE_TYPE_INVENTORY_SCAN
  /// SOURCE_TYPE_CUSTOM
  /// SOURCE_TYPE_DISCOVERY_CLIENT
  late final pulumi.Output<String?> type;
  /// The timestamp when the source was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Source].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Source]. {@macro pulumi_migrationcenter_source_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Source(
    String name, {
    SourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/source:Source',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    errorFrameCount = registerOutput<int>('errorFrameCount');
    location = registerOutput<String>('location');
    managed = registerOutput<bool?>('managed');
    this.name = registerOutput<String>('name');
    pendingFrameCount = registerOutput<int>('pendingFrameCount');
    priority = registerOutput<int?>('priority');
    project = registerOutput<String>('project');
    sourceId = registerOutput<String>('sourceId');
    state = registerOutput<String>('state');
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Source] resource's state with the given [name] and [id].
  static Source get(
    String name,
    pulumi.Input<String> id, {
    SourceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Source._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Source._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/source:Source',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    errorFrameCount = registerOutput<int>('errorFrameCount');
    location = registerOutput<String>('location');
    managed = registerOutput<bool?>('managed');
    this.name = registerOutput<String>('name');
    pendingFrameCount = registerOutput<int>('pendingFrameCount');
    priority = registerOutput<int?>('priority');
    project = registerOutput<String>('project');
    sourceId = registerOutput<String>('sourceId');
    this.state = registerOutput<String>('state');
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Source] resource.
  Source.reference(String urn)
    : super(
        'gcp:migrationcenter/source:Source',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    errorFrameCount = registerOutput<int>('errorFrameCount');
    location = registerOutput<String>('location');
    managed = registerOutput<bool?>('managed');
    this.name = registerOutput<String>('name');
    pendingFrameCount = registerOutput<int>('pendingFrameCount');
    priority = registerOutput<int?>('priority');
    project = registerOutput<String>('project');
    sourceId = registerOutput<String>('sourceId');
    state = registerOutput<String>('state');
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
