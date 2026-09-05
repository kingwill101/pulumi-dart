import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_group_args.dart';
import 'interconnect_attachment_group_attachment.dart';
import 'interconnect_attachment_group_configured.dart';
import 'interconnect_attachment_group_intent.dart';
import 'interconnect_attachment_group_logical_structure.dart';
import 'interconnect_attachment_group_state.dart';

/// An interconnect attachment group resource allows customers to create,
/// analyze, and expand highly available deployments.
///
///
/// To get more information about InterconnectAttachmentGroup, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/interconnects)
/// * How-to Guides
/// * [Create a Dedicated Interconnect](https://cloud.google.com/network-connectivity/docs/interconnect/concepts/dedicated-overview)
///
/// ## Example Usage
///
/// ### Interconnect Attachment Group Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example_interconnect_attachment_group = new gcp.compute.InterconnectAttachmentGroup("example-interconnect-attachment-group", {
///     name: "example-interconnect-attachment-group",
///     intent: {
///         availabilitySla: "NO_SLA",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_interconnect_attachment_group = gcp.compute.InterconnectAttachmentGroup("example-interconnect-attachment-group",
///     name="example-interconnect-attachment-group",
///     intent={
///         "availability_sla": "NO_SLA",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example_interconnect_attachment_group = new Gcp.Compute.InterconnectAttachmentGroup("example-interconnect-attachment-group", new()
///     {
///         Name = "example-interconnect-attachment-group",
///         Intent = new Gcp.Compute.Inputs.InterconnectAttachmentGroupIntentArgs
///         {
///             AvailabilitySla = "NO_SLA",
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
/// 		_, err := compute.NewInterconnectAttachmentGroup(ctx, "example-interconnect-attachment-group", &compute.InterconnectAttachmentGroupArgs{
/// 			Name: pulumi.String("example-interconnect-attachment-group"),
/// 			Intent: &compute.InterconnectAttachmentGroupIntentArgs{
/// 				AvailabilitySla: pulumi.String("NO_SLA"),
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
/// resource "gcp_compute_interconnectattachmentgroup" "example-interconnect-attachment-group" {
///   name = "example-interconnect-attachment-group"
///   intent = {
///     availability_sla = "NO_SLA"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.InterconnectAttachmentGroup;
/// import com.pulumi.gcp.compute.InterconnectAttachmentGroupArgs;
/// import com.pulumi.gcp.compute.inputs.InterconnectAttachmentGroupIntentArgs;
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
///         var example_interconnect_attachment_group = new InterconnectAttachmentGroup("example-interconnect-attachment-group", InterconnectAttachmentGroupArgs.builder()
///             .name("example-interconnect-attachment-group")
///             .intent(InterconnectAttachmentGroupIntentArgs.builder()
///                 .availabilitySla("NO_SLA")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-interconnect-attachment-group:
///     type: gcp:compute:InterconnectAttachmentGroup
///     properties:
///       name: example-interconnect-attachment-group
///       intent:
///         availabilitySla: NO_SLA
/// ```
///
///
/// ## Import
///
/// InterconnectAttachmentGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/interconnectAttachmentGroups/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, InterconnectAttachmentGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/interconnectAttachmentGroup:InterconnectAttachmentGroup default projects/{{project}}/global/interconnectAttachmentGroups/{{name}}
/// $ pulumi import gcp:compute/interconnectAttachmentGroup:InterconnectAttachmentGroup default {{project}}/{{name}}
/// $ pulumi import gcp:compute/interconnectAttachmentGroup:InterconnectAttachmentGroup default {{name}}
/// ```
class InterconnectAttachmentGroup extends pulumi.CustomResource {
  /// Attachments in the AttachmentGroup. Keys are arbitrary user-specified
  /// strings. Users are encouraged, but not required, to use their preferred
  /// format for resource links as keys.
  /// Note that there are add-members and remove-members methods in gcloud.
  /// The size of this map is limited by an "Attachments per group" quota.
  /// Structure is documented below.
  late final pulumi.Output<List<InterconnectAttachmentGroupAttachment>?> attachments;
  /// The redundancy this group is configured to support. The way a
  /// user queries what SLA their Attachment gets is by looking at this field of
  /// the Attachment's AttachmentGroup.
  /// Structure is documented below.
  late final pulumi.Output<List<InterconnectAttachmentGroupConfigured>> configureds;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String?> description;
  /// The user's intent for this group. This is the only required field besides
  /// the name that must be specified on group creation.
  /// Structure is documented below.
  late final pulumi.Output<InterconnectAttachmentGroupIntent> intent;
  /// The URL of an InterconnectGroup that groups these Attachments'
  /// Interconnects. Customers do not need to set this unless directed by
  /// Google Support.
  late final pulumi.Output<String?> interconnectGroup;
  /// An analysis of the logical layout of Attachments in this
  /// group. Every Attachment in the group is shown once in this structure.
  /// Structure is documented below.
  late final pulumi.Output<List<InterconnectAttachmentGroupLogicalStructure>> logicalStructures;
  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [InterconnectAttachmentGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InterconnectAttachmentGroup]. {@macro pulumi_compute_interconnect_attachment_group_interconnect_attachment_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InterconnectAttachmentGroup(
    String name, {
    InterconnectAttachmentGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/interconnectAttachmentGroup:InterconnectAttachmentGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    attachments = registerOutput<List<InterconnectAttachmentGroupAttachment>?>('attachments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InterconnectAttachmentGroupAttachment>(guardedValue, (value) => InterconnectAttachmentGroupAttachment.fromMap((value as Map).cast<String, dynamic>())); });
    configureds = registerOutput<List<InterconnectAttachmentGroupConfigured>>('configureds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InterconnectAttachmentGroupConfigured>(guardedValue, (value) => InterconnectAttachmentGroupConfigured.fromMap((value as Map).cast<String, dynamic>())); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    intent = registerOutput<InterconnectAttachmentGroupIntent>('intent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InterconnectAttachmentGroupIntent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interconnectGroup = registerOutput<String?>('interconnectGroup');
    logicalStructures = registerOutput<List<InterconnectAttachmentGroupLogicalStructure>>('logicalStructures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InterconnectAttachmentGroupLogicalStructure>(guardedValue, (value) => InterconnectAttachmentGroupLogicalStructure.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [InterconnectAttachmentGroup] resource's state with the given [name] and [id].
  static InterconnectAttachmentGroup get(
    String name,
    pulumi.Input<String> id, {
    InterconnectAttachmentGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InterconnectAttachmentGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InterconnectAttachmentGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/interconnectAttachmentGroup:InterconnectAttachmentGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attachments = registerOutput<List<InterconnectAttachmentGroupAttachment>?>('attachments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InterconnectAttachmentGroupAttachment>(guardedValue, (value) => InterconnectAttachmentGroupAttachment.fromMap((value as Map).cast<String, dynamic>())); });
    configureds = registerOutput<List<InterconnectAttachmentGroupConfigured>>('configureds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InterconnectAttachmentGroupConfigured>(guardedValue, (value) => InterconnectAttachmentGroupConfigured.fromMap((value as Map).cast<String, dynamic>())); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    intent = registerOutput<InterconnectAttachmentGroupIntent>('intent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InterconnectAttachmentGroupIntent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interconnectGroup = registerOutput<String?>('interconnectGroup');
    logicalStructures = registerOutput<List<InterconnectAttachmentGroupLogicalStructure>>('logicalStructures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InterconnectAttachmentGroupLogicalStructure>(guardedValue, (value) => InterconnectAttachmentGroupLogicalStructure.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [InterconnectAttachmentGroup] resource.
  InterconnectAttachmentGroup.reference(String urn)
    : super(
        'gcp:compute/interconnectAttachmentGroup:InterconnectAttachmentGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    attachments = registerOutput<List<InterconnectAttachmentGroupAttachment>?>('attachments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InterconnectAttachmentGroupAttachment>(guardedValue, (value) => InterconnectAttachmentGroupAttachment.fromMap((value as Map).cast<String, dynamic>())); });
    configureds = registerOutput<List<InterconnectAttachmentGroupConfigured>>('configureds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InterconnectAttachmentGroupConfigured>(guardedValue, (value) => InterconnectAttachmentGroupConfigured.fromMap((value as Map).cast<String, dynamic>())); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    intent = registerOutput<InterconnectAttachmentGroupIntent>('intent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InterconnectAttachmentGroupIntent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interconnectGroup = registerOutput<String?>('interconnectGroup');
    logicalStructures = registerOutput<List<InterconnectAttachmentGroupLogicalStructure>>('logicalStructures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InterconnectAttachmentGroupLogicalStructure>(guardedValue, (value) => InterconnectAttachmentGroupLogicalStructure.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
