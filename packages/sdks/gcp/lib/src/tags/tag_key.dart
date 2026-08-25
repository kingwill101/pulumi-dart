import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_key_args.dart';
import 'tag_key_state.dart';

/// A TagKey, used to group a set of TagValues.
///
///
/// To get more information about TagKey, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest/v3/tagKeys)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing)
///
/// ## Example Usage
///
/// ### Tag Key Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const key = new gcp.tags.TagKey("key", {
///     parent: "organizations/123456789",
///     shortName: "keyname",
///     description: "For keyname resources.",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// key = gcp.tags.TagKey("key",
///     parent="organizations/123456789",
///     short_name="keyname",
///     description="For keyname resources.")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var key = new Gcp.Tags.TagKey("key", new()
///     {
///         Parent = "organizations/123456789",
///         ShortName = "keyname",
///         Description = "For keyname resources.",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := tags.NewTagKey(ctx, "key", &tags.TagKeyArgs{
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			ShortName:   pulumi.String("keyname"),
/// 			Description: pulumi.String("For keyname resources."),
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
/// resource "gcp_tags_tagkey" "key" {
///   parent      = "organizations/123456789"
///   short_name  = "keyname"
///   description = "For keyname resources."
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
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
///         var key = new TagKey("key", TagKeyArgs.builder()
///             .parent("organizations/123456789")
///             .shortName("keyname")
///             .description("For keyname resources.")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   key:
///     type: gcp:tags:TagKey
///     properties:
///       parent: organizations/123456789
///       shortName: keyname
///       description: For keyname resources.
/// ```
///
///
/// ## Import
///
/// TagKey can be imported using any of these accepted formats:
///
/// * `tagKeys/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, TagKey can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:tags/tagKey:TagKey default tagKeys/{{name}}
/// $ pulumi import gcp:tags/tagKey:TagKey default {{name}}
/// ```
class TagKey extends pulumi.CustomResource {
  /// Regular expression constraint for dynamic tag values, follows RE2 syntax. If present, it implicitly allows dynamic values (constrained by the regex).
  late final pulumi.Output<String?> allowedValuesRegex;
  /// Output only. Creation time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// User-assigned description of the TagKey. Must not exceed 256 characters.
  late final pulumi.Output<String?> description;
  /// The generated numeric id for the TagKey.
  late final pulumi.Output<String> name;
  /// Output only. Namespaced name of the TagKey.
  late final pulumi.Output<String> namespacedName;
  /// Input only. The resource name of the new TagKey's parent. Must be of the form organizations/{org_id} or projects/{project_id_or_number}.
  late final pulumi.Output<String> parent;
  /// Optional. A purpose cannot be changed once set.
  /// A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag.
  /// Possible values are: `GCE_FIREWALL`, `DATA_GOVERNANCE`.
  late final pulumi.Output<String?> purpose;
  /// Optional. Purpose data cannot be changed once set.
  /// Purpose data corresponds to the policy system that the tag is intended for. For example, the GCE_FIREWALL purpose expects data in the following format: `network = "&lt;project-name&gt;/&lt;vpc-name&gt;"`.
  late final pulumi.Output<Map<String, String>?> purposeData;
  /// Input only. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace.
  /// The short name can have a maximum length of 256 characters. The permitted character set for the shortName includes all UTF-8 encoded Unicode characters except single quotes ('), double quotes ("), backslashes (\\), and forward slashes (/).
  late final pulumi.Output<String> shortName;
  /// Output only. Update time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [TagKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TagKey]. {@macro pulumi_tags_tag_key_tag_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TagKey(
    String name, {
    TagKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:tags/tagKey:TagKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    allowedValuesRegex = registerOutput<String?>('allowedValuesRegex');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    namespacedName = registerOutput<String>('namespacedName');
    parent = registerOutput<String>('parent');
    purpose = registerOutput<String?>('purpose');
    purposeData = registerOutput<Map<String, String>?>('purposeData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    shortName = registerOutput<String>('shortName');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [TagKey] resource's state with the given [name] and [id].
  static TagKey get(
    String name,
    pulumi.Input<String> id, {
    TagKeyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TagKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TagKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:tags/tagKey:TagKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedValuesRegex = registerOutput<String?>('allowedValuesRegex');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    namespacedName = registerOutput<String>('namespacedName');
    parent = registerOutput<String>('parent');
    purpose = registerOutput<String?>('purpose');
    purposeData = registerOutput<Map<String, String>?>('purposeData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    shortName = registerOutput<String>('shortName');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [TagKey] resource.
  TagKey.reference(String urn)
    : super(
        'gcp:tags/tagKey:TagKey',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowedValuesRegex = registerOutput<String?>('allowedValuesRegex');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    namespacedName = registerOutput<String>('namespacedName');
    parent = registerOutput<String>('parent');
    purpose = registerOutput<String?>('purpose');
    purposeData = registerOutput<Map<String, String>?>('purposeData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    shortName = registerOutput<String>('shortName');
    updateTime = registerOutput<String>('updateTime');
  }
}
