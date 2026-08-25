import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_metadata_args.dart';
import 'project_metadata_state.dart';

/// Authoritatively manages metadata common to all instances for a project in GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/storing-retrieving-metadata)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/projects/setCommonInstanceMetadata).
///
/// &gt; **Note:**  This resource manages all project-level metadata including project-level ssh keys.
/// Keys unset in config but set on the server will be removed. If you want to manage only single
/// key/value pairs within the project metadata rather than the entire set, then use
/// google_compute_project_metadata_item.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.ProjectMetadata("default", {metadata: {
///     foo: "bar",
///     fizz: "buzz",
///     "13": "42",
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.ProjectMetadata("default", metadata={
///     "foo": "bar",
///     "fizz": "buzz",
///     "13": "42",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.ProjectMetadata("default", new()
///     {
///         Metadata =
///         {
///             { "foo", "bar" },
///             { "fizz", "buzz" },
///             { "13", "42" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewProjectMetadata(ctx, "default", &compute.ProjectMetadataArgs{
/// 			Metadata: pulumi.StringMap{
/// 				"foo":  pulumi.String("bar"),
/// 				"fizz": pulumi.String("buzz"),
/// 				"13":   pulumi.String("42"),
/// 			},
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
/// resource "gcp_compute_projectmetadata" "default" {
///   metadata = {
///     "foo"  = "bar"
///     "fizz" = "buzz"
///     "13"   = "42"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ProjectMetadata;
/// import com.pulumi.gcp.compute.ProjectMetadataArgs;
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
///         var default_ = new ProjectMetadata("default", ProjectMetadataArgs.builder()
///             .metadata(Map.ofEntries(
///                 Map.entry("foo", "bar"),
///                 Map.entry("fizz", "buzz"),
///                 Map.entry("13", "42")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:ProjectMetadata
///     properties:
///       metadata:
///         foo: bar
///         fizz: buzz
///         '13': '42'
/// ```
///
///
/// ### Adding An SSH Key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// //A key set in project metadata is propagated to every instance in the project.
/// //This resource configuration is prone to causing frequent diffs as Google adds SSH Keys when the SSH Button is pressed in the console.
/// //It is better to use OS Login instead.
/// const mySshKey = new gcp.compute.ProjectMetadata("my_ssh_key", {metadata: {
///     "ssh-keys": `      dev:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILg6UtHDNyMNAh0GjaytsJdrUxjtLy3APXqZfNZhvCeT dev
///       foo:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILg6UtHDNyMNAh0GjaytsJdrUxjtLy3APXqZfNZhvCeT bar
/// `,
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// #A key set in project metadata is propagated to every instance in the project.
/// #This resource configuration is prone to causing frequent diffs as Google adds SSH Keys when the SSH Button is pressed in the console.
/// #It is better to use OS Login instead.
/// my_ssh_key = gcp.compute.ProjectMetadata("my_ssh_key", metadata={
///     "ssh-keys": """      dev:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILg6UtHDNyMNAh0GjaytsJdrUxjtLy3APXqZfNZhvCeT dev
///       foo:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILg6UtHDNyMNAh0GjaytsJdrUxjtLy3APXqZfNZhvCeT bar
/// """,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     //A key set in project metadata is propagated to every instance in the project.
///     //This resource configuration is prone to causing frequent diffs as Google adds SSH Keys when the SSH Button is pressed in the console.
///     //It is better to use OS Login instead.
///     var mySshKey = new Gcp.Compute.ProjectMetadata("my_ssh_key", new()
///     {
///         Metadata =
///         {
///             { "ssh-keys", @"      dev:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILg6UtHDNyMNAh0GjaytsJdrUxjtLy3APXqZfNZhvCeT dev
///       foo:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILg6UtHDNyMNAh0GjaytsJdrUxjtLy3APXqZfNZhvCeT bar
/// " },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// A key set in project metadata is propagated to every instance in the project.
/// 		// This resource configuration is prone to causing frequent diffs as Google adds SSH Keys when the SSH Button is pressed in the console.
/// 		// It is better to use OS Login instead.
/// 		_, err := compute.NewProjectMetadata(ctx, "my_ssh_key", &compute.ProjectMetadataArgs{
/// 			Metadata: pulumi.StringMap{
/// 				"ssh-keys": pulumi.String("      dev:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILg6UtHDNyMNAh0GjaytsJdrUxjtLy3APXqZfNZhvCeT dev\n      foo:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILg6UtHDNyMNAh0GjaytsJdrUxjtLy3APXqZfNZhvCeT bar\n"),
/// 			},
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
/// /*
/// A key set in project metadata is propagated to every instance in the project.
/// This resource configuration is prone to causing frequent diffs as Google adds SSH Keys when the SSH Button is pressed in the console.
/// It is better to use OS Login instead.
/// */
/// resource "gcp_compute_projectmetadata" "my_ssh_key" {
///   metadata = {
///     "ssh-keys" = "      dev:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILg6UtHDNyMNAh0GjaytsJdrUxjtLy3APXqZfNZhvCeT dev\n      foo:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILg6UtHDNyMNAh0GjaytsJdrUxjtLy3APXqZfNZhvCeT bar\n"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ProjectMetadata;
/// import com.pulumi.gcp.compute.ProjectMetadataArgs;
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
///         //A key set in project metadata is propagated to every instance in the project.
///         //This resource configuration is prone to causing frequent diffs as Google adds SSH Keys when the SSH Button is pressed in the console.
///         //It is better to use OS Login instead.
///         var mySshKey = new ProjectMetadata("mySshKey", ProjectMetadataArgs.builder()
///             .metadata(Map.of("ssh-keys", """
///       dev:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILg6UtHDNyMNAh0GjaytsJdrUxjtLy3APXqZfNZhvCeT dev
///       foo:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILg6UtHDNyMNAh0GjaytsJdrUxjtLy3APXqZfNZhvCeT bar
///             """))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # /*
///   # A key set in project metadata is propagated to every instance in the project.
///   # This resource configuration is prone to causing frequent diffs as Google adds SSH Keys when the SSH Button is pressed in the console.
///   # It is better to use OS Login instead.
///   # */
///   mySshKey:
///     type: gcp:compute:ProjectMetadata
///     name: my_ssh_key
///     properties:
///       metadata:
///         ssh-keys: |2
///                 dev:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILg6UtHDNyMNAh0GjaytsJdrUxjtLy3APXqZfNZhvCeT dev
///                 foo:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILg6UtHDNyMNAh0GjaytsJdrUxjtLy3APXqZfNZhvCeT bar
/// ```
///
///
/// ## Import
///
/// Project metadata can be imported using the project ID:
///
/// * `{{project_id}}`
///
///
/// When using the `pulumi import` command, project metadata can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/projectMetadata:ProjectMetadata default {{project_id}}
/// ```
class ProjectMetadata extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A series of key value pairs.
  ///
  /// - - -
  late final pulumi.Output<Map<String, String>> metadata;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [ProjectMetadata].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectMetadata]. {@macro pulumi_compute_project_metadata_project_metadata_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectMetadata(
    String name, {
    ProjectMetadataArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/projectMetadata:ProjectMetadata',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    metadata = registerOutput<Map<String, String>>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
  }

  /// Gets an existing [ProjectMetadata] resource's state with the given [name] and [id].
  static ProjectMetadata get(
    String name,
    pulumi.Input<String> id, {
    ProjectMetadataState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ProjectMetadata._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ProjectMetadata._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/projectMetadata:ProjectMetadata',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    metadata = registerOutput<Map<String, String>>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [ProjectMetadata] resource.
  ProjectMetadata.reference(String urn)
    : super(
        'gcp:compute/projectMetadata:ProjectMetadata',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    metadata = registerOutput<Map<String, String>>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
  }
}
