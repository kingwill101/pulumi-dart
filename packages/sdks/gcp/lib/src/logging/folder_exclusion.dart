import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_exclusion_args.dart';
import 'folder_exclusion_state.dart';

/// Manages a folder-level logging exclusion. For more information see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/folders.exclusions)
/// * How-to Guides
/// * [Excluding Logs](https://cloud.google.com/logging/docs/exclusions)
///
/// &gt; You can specify exclusions for log sinks created by the provider by using the exclusions field of `gcp.logging.FolderSink`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_folder = new gcp.organizations.Folder("my-folder", {
///     displayName: "My folder",
///     parent: "organizations/123456",
/// });
/// const my_exclusion = new gcp.logging.FolderExclusion("my-exclusion", {
///     name: "my-instance-debug-exclusion",
///     folder: my_folder.name,
///     description: "Exclude GCE instance debug logs",
///     filter: "resource.type = gce_instance AND severity <= DEBUG",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_folder = gcp.organizations.Folder("my-folder",
///     display_name="My folder",
///     parent="organizations/123456")
/// my_exclusion = gcp.logging.FolderExclusion("my-exclusion",
///     name="my-instance-debug-exclusion",
///     folder=my_folder.name,
///     description="Exclude GCE instance debug logs",
///     filter="resource.type = gce_instance AND severity <= DEBUG")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_folder = new Gcp.Organizations.Folder("my-folder", new()
///     {
///         DisplayName = "My folder",
///         Parent = "organizations/123456",
///     });
///
///     var my_exclusion = new Gcp.Logging.FolderExclusion("my-exclusion", new()
///     {
///         Name = "my-instance-debug-exclusion",
///         Folder = my_folder.Name,
///         Description = "Exclude GCE instance debug logs",
///         Filter = "resource.type = gce_instance AND severity <= DEBUG",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		my_folder, err := organizations.NewFolder(ctx, "my-folder", &organizations.FolderArgs{
/// 			DisplayName: pulumi.String("My folder"),
/// 			Parent:      pulumi.String("organizations/123456"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logging.NewFolderExclusion(ctx, "my-exclusion", &logging.FolderExclusionArgs{
/// 			Name:        pulumi.String("my-instance-debug-exclusion"),
/// 			Folder:      my_folder.Name,
/// 			Description: pulumi.String("Exclude GCE instance debug logs"),
/// 			Filter:      pulumi.String("resource.type = gce_instance AND severity <= DEBUG"),
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
/// resource "gcp_logging_folderexclusion" "my-exclusion" {
///   name        = "my-instance-debug-exclusion"
///   folder      = gcp_organizations_folder.my-folder.name
///   description = "Exclude GCE instance debug logs"
///   filter      = "resource.type = gce_instance AND severity <= DEBUG"
/// }
/// resource "gcp_organizations_folder" "my-folder" {
///   display_name = "My folder"
///   parent       = "organizations/123456"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.logging.FolderExclusion;
/// import com.pulumi.gcp.logging.FolderExclusionArgs;
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
///         var my_folder = new Folder("my-folder", FolderArgs.builder()
///             .displayName("My folder")
///             .parent("organizations/123456")
///             .build());
///
///         var my_exclusion = new FolderExclusion("my-exclusion", FolderExclusionArgs.builder()
///             .name("my-instance-debug-exclusion")
///             .folder(my_folder.name())
///             .description("Exclude GCE instance debug logs")
///             .filter("resource.type = gce_instance AND severity <= DEBUG")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-exclusion:
///     type: gcp:logging:FolderExclusion
///     properties:
///       name: my-instance-debug-exclusion
///       folder: ${["my-folder"].name}
///       description: Exclude GCE instance debug logs
///       filter: resource.type = gce_instance AND severity <= DEBUG
///   my-folder:
///     type: gcp:organizations:Folder
///     properties:
///       displayName: My folder
///       parent: organizations/123456
/// ```
///
///
/// ## Import
///
/// Folder-level logging exclusions can be imported using their URI, e.g.
///
/// * `folders/{{folder}}/exclusions/{{name}}`
///
///
/// When using the `pulumi import` command, folder-level logging exclusions can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/folderExclusion:FolderExclusion default folders/{{folder}}/exclusions/{{name}}
/// ```
class FolderExclusion extends pulumi.CustomResource {
  /// A human-readable description.
  late final pulumi.Output<String?> description;
  /// Whether this exclusion rule should be disabled or not. This defaults to
  /// false.
  late final pulumi.Output<bool?> disabled;
  /// The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced-filters) for information on how to
  /// write a filter.
  late final pulumi.Output<String> filter;
  /// The folder to be exported to the sink. Note that either [FOLDER_ID] or "folders/[FOLDER_ID]" is
  /// accepted.
  late final pulumi.Output<String> folder;
  /// The name of the logging exclusion.
  late final pulumi.Output<String> name;

  /// Creates a new [FolderExclusion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FolderExclusion]. {@macro pulumi_logging_folder_exclusion_folder_exclusion_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FolderExclusion(
    String name, {
    FolderExclusionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/folderExclusion:FolderExclusion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    description = registerOutput<String?>('description');
    disabled = registerOutput<bool?>('disabled');
    filter = registerOutput<String>('filter');
    folder = registerOutput<String>('folder');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [FolderExclusion] resource's state with the given [name] and [id].
  static FolderExclusion get(
    String name,
    pulumi.Input<String> id, {
    FolderExclusionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FolderExclusion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FolderExclusion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/folderExclusion:FolderExclusion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    disabled = registerOutput<bool?>('disabled');
    filter = registerOutput<String>('filter');
    folder = registerOutput<String>('folder');
    this.name = registerOutput<String>('name');
  }

  /// Creates a typed reference to an existing [FolderExclusion] resource.
  FolderExclusion.reference(String urn)
    : super(
        'gcp:logging/folderExclusion:FolderExclusion',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    description = registerOutput<String?>('description');
    disabled = registerOutput<bool?>('disabled');
    filter = registerOutput<String>('filter');
    folder = registerOutput<String>('folder');
    this.name = registerOutput<String>('name');
  }
}
