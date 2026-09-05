import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_group_args.dart';
import 'entry_group_state.dart';

/// An Entry Group represents a logical grouping of one or more Entries.
///
///
///
/// ## Example Usage
///
/// ### Dataplex Entry Group Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testEntryGroupBasic = new gcp.dataplex.EntryGroup("test_entry_group_basic", {
///     entryGroupId: "entry-group-basic",
///     project: "my-project-name",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_entry_group_basic = gcp.dataplex.EntryGroup("test_entry_group_basic",
///     entry_group_id="entry-group-basic",
///     project="my-project-name",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testEntryGroupBasic = new Gcp.DataPlex.EntryGroup("test_entry_group_basic", new()
///     {
///         EntryGroupId = "entry-group-basic",
///         Project = "my-project-name",
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewEntryGroup(ctx, "test_entry_group_basic", &dataplex.EntryGroupArgs{
/// 			EntryGroupId: pulumi.String("entry-group-basic"),
/// 			Project:      pulumi.String("my-project-name"),
/// 			Location:     pulumi.String("us-central1"),
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
/// resource "gcp_dataplex_entrygroup" "test_entry_group_basic" {
///   entry_group_id = "entry-group-basic"
///   project        = "my-project-name"
///   location       = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.EntryGroup;
/// import com.pulumi.gcp.dataplex.EntryGroupArgs;
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
///         var testEntryGroupBasic = new EntryGroup("testEntryGroupBasic", EntryGroupArgs.builder()
///             .entryGroupId("entry-group-basic")
///             .project("my-project-name")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testEntryGroupBasic:
///     type: gcp:dataplex:EntryGroup
///     name: test_entry_group_basic
///     properties:
///       entryGroupId: entry-group-basic
///       project: my-project-name
///       location: us-central1
/// ```
///
/// ### Dataplex Entry Group Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testEntryGroupFull = new gcp.dataplex.EntryGroup("test_entry_group_full", {
///     entryGroupId: "entry-group-full",
///     project: "my-project-name",
///     location: "us-central1",
///     labels: {
///         tag: "test-tf",
///     },
///     displayName: "terraform entry group",
///     description: "entry group created by Terraform",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_entry_group_full = gcp.dataplex.EntryGroup("test_entry_group_full",
///     entry_group_id="entry-group-full",
///     project="my-project-name",
///     location="us-central1",
///     labels={
///         "tag": "test-tf",
///     },
///     display_name="terraform entry group",
///     description="entry group created by Terraform")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testEntryGroupFull = new Gcp.DataPlex.EntryGroup("test_entry_group_full", new()
///     {
///         EntryGroupId = "entry-group-full",
///         Project = "my-project-name",
///         Location = "us-central1",
///         Labels =
///         {
///             { "tag", "test-tf" },
///         },
///         DisplayName = "terraform entry group",
///         Description = "entry group created by Terraform",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewEntryGroup(ctx, "test_entry_group_full", &dataplex.EntryGroupArgs{
/// 			EntryGroupId: pulumi.String("entry-group-full"),
/// 			Project:      pulumi.String("my-project-name"),
/// 			Location:     pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"tag": pulumi.String("test-tf"),
/// 			},
/// 			DisplayName: pulumi.String("terraform entry group"),
/// 			Description: pulumi.String("entry group created by Terraform"),
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
/// resource "gcp_dataplex_entrygroup" "test_entry_group_full" {
///   entry_group_id = "entry-group-full"
///   project        = "my-project-name"
///   location       = "us-central1"
///   labels = {
///     "tag" = "test-tf"
///   }
///   display_name = "terraform entry group"
///   description  = "entry group created by Terraform"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.EntryGroup;
/// import com.pulumi.gcp.dataplex.EntryGroupArgs;
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
///         var testEntryGroupFull = new EntryGroup("testEntryGroupFull", EntryGroupArgs.builder()
///             .entryGroupId("entry-group-full")
///             .project("my-project-name")
///             .location("us-central1")
///             .labels(Map.of("tag", "test-tf"))
///             .displayName("terraform entry group")
///             .description("entry group created by Terraform")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testEntryGroupFull:
///     type: gcp:dataplex:EntryGroup
///     name: test_entry_group_full
///     properties:
///       entryGroupId: entry-group-full
///       project: my-project-name
///       location: us-central1
///       labels:
///         tag: test-tf
///       displayName: terraform entry group
///       description: entry group created by Terraform
/// ```
///
///
/// ## Import
///
/// EntryGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/entryGroups/{{entry_group_id}}`
/// * `{{project}}/{{location}}/{{entry_group_id}}`
/// * `{{location}}/{{entry_group_id}}`
///
///
/// When using the `pulumi import` command, EntryGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/entryGroup:EntryGroup default projects/{{project}}/locations/{{location}}/entryGroups/{{entry_group_id}}
/// $ pulumi import gcp:dataplex/entryGroup:EntryGroup default {{project}}/{{location}}/{{entry_group_id}}
/// $ pulumi import gcp:dataplex/entryGroup:EntryGroup default {{location}}/{{entry_group_id}}
/// ```
class EntryGroup extends pulumi.CustomResource {
  /// The time when the EntryGroup was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description of the EntryGroup.
  late final pulumi.Output<String?> description;
  /// User friendly display name.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The entry group id of the entry group.
  late final pulumi.Output<String?> entryGroupId;
  /// User-defined labels for the EntryGroup.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location where entry group will be created in.
  late final pulumi.Output<String?> location;
  /// The relative resource name of the EntryGroup, of the form: projects/{project_number}/locations/{location_id}/entryGroups/{entry_group_id}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Denotes the transfer status of the Entry Group. It is unspecified
  /// for Entry Group created from Dataplex API.
  late final pulumi.Output<String> transferStatus;
  /// System generated globally unique ID for the EntryGroup. This ID will be different if the EntryGroup is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;
  /// The time when the EntryGroup was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [EntryGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EntryGroup]. {@macro pulumi_dataplex_entry_group_entry_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EntryGroup(
    String name, {
    EntryGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/entryGroup:EntryGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    entryGroupId = registerOutput<String?>('entryGroupId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    transferStatus = registerOutput<String>('transferStatus');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [EntryGroup] resource's state with the given [name] and [id].
  static EntryGroup get(
    String name,
    pulumi.Input<String> id, {
    EntryGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EntryGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EntryGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/entryGroup:EntryGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    entryGroupId = registerOutput<String?>('entryGroupId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    transferStatus = registerOutput<String>('transferStatus');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [EntryGroup] resource.
  EntryGroup.reference(String urn)
    : super(
        'gcp:dataplex/entryGroup:EntryGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    entryGroupId = registerOutput<String?>('entryGroupId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    transferStatus = registerOutput<String>('transferStatus');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
