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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
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
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, TagKey can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:tags/tagKey:TagKey default tagKeys/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:tags/tagKey:TagKey default {{name}}
/// ```
class TagKey extends pulumi.CustomResource {
  /// Regular expression constraint for dynamic tag values, follows RE2 syntax. If present, it implicitly allows dynamic values (constrained by the regex).
  late final pulumi.Output<String?> allowedValuesRegex;
  /// Output only. Creation time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
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
  /// Purpose data corresponds to the policy system that the tag is intended for. For example, the GCE_FIREWALL purpose expects data in the following format: `network = "<project-name>/<vpc-name>"`.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedValuesRegex = registerOutput<String?>('allowedValuesRegex');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.namespacedName = registerOutput<String>('namespacedName');
    this.parent = registerOutput<String>('parent');
    this.purpose = registerOutput<String?>('purpose');
    this.purposeData = registerOutput<Map<String, String>?>('purposeData');
    this.shortName = registerOutput<String>('shortName');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [TagKey] resource's state with the given [name] and [id].
  static TagKey get(
    String name,
    pulumi.Input<String> id, {
    TagKeyState? state,
  }) {
    return TagKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    this.allowedValuesRegex = registerOutput<String?>('allowedValuesRegex');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.namespacedName = registerOutput<String>('namespacedName');
    this.parent = registerOutput<String>('parent');
    this.purpose = registerOutput<String?>('purpose');
    this.purposeData = registerOutput<Map<String, String>?>('purposeData');
    this.shortName = registerOutput<String>('shortName');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
