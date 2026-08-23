import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_value_args.dart';
import 'tag_value_state.dart';

/// A TagValue is a child of a particular TagKey. TagValues are used to group cloud resources for the purpose of controlling them using policies.
///
///
/// To get more information about TagValue, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest/v3/tagValues)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing)
///
/// ## Example Usage
///
/// ### Tag Value Basic
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
/// const value = new gcp.tags.TagValue("value", {
///     parent: key.id,
///     shortName: "valuename",
///     description: "For valuename resources.",
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
/// value = gcp.tags.TagValue("value",
///     parent=key.id,
///     short_name="valuename",
///     description="For valuename resources.")
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
///     var @value = new Gcp.Tags.TagValue("value", new()
///     {
///         Parent = key.Id,
///         ShortName = "valuename",
///         Description = "For valuename resources.",
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
/// 		key, err := tags.NewTagKey(ctx, "key", &tags.TagKeyArgs{
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			ShortName:   pulumi.String("keyname"),
/// 			Description: pulumi.String("For keyname resources."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = tags.NewTagValue(ctx, "value", &tags.TagValueArgs{
/// 			Parent:      key.ID().ToIDOutput().ToStringOutput(),
/// 			ShortName:   pulumi.String("valuename"),
/// 			Description: pulumi.String("For valuename resources."),
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
/// resource "gcp_tags_tagvalue" "value" {
///   parent      = gcp_tags_tagkey.key.id
///   short_name  = "valuename"
///   description = "For valuename resources."
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
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
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
///         var value = new TagValue("value", TagValueArgs.builder()
///             .parent(key.id())
///             .shortName("valuename")
///             .description("For valuename resources.")
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
///   value:
///     type: gcp:tags:TagValue
///     properties:
///       parent: ${key.id}
///       shortName: valuename
///       description: For valuename resources.
/// ```
///
///
/// ## Import
///
/// TagValue can be imported using any of these accepted formats:
///
/// * `tagValues/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, TagValue can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:tags/tagValue:TagValue default tagValues/{{name}}
/// $ pulumi import gcp:tags/tagValue:TagValue default {{name}}
/// ```
class TagValue extends pulumi.CustomResource {
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
  /// User-assigned description of the TagValue. Must not exceed 256 characters.
  late final pulumi.Output<String?> description;
  /// The generated numeric id for the TagValue.
  late final pulumi.Output<String> name;
  /// Output only. Namespaced name of the TagValue. Will be in the format {parentNamespace}/{tagKeyShortName}/{shortName}.
  late final pulumi.Output<String> namespacedName;
  /// Input only. The resource name of the new TagValue's parent. Must be of the form tagKeys/{tag_key_id}.
  late final pulumi.Output<String> parent;
  /// Input only. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey.
  /// The short name can have a maximum length of 256 characters. The permitted character set for the shortName includes all UTF-8 encoded Unicode characters except single quotes ('), double quotes ("), backslashes (\\), and forward slashes (/).
  late final pulumi.Output<String> shortName;
  /// Output only. Update time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [TagValue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TagValue]. {@macro pulumi_tags_tag_value_tag_value_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TagValue(
    String name, {
    TagValueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:tags/tagValue:TagValue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    namespacedName = registerOutput<String>('namespacedName');
    parent = registerOutput<String>('parent');
    shortName = registerOutput<String>('shortName');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [TagValue] resource's state with the given [name] and [id].
  static TagValue get(
    String name,
    pulumi.Input<String> id, {
    TagValueState? state,
  }) {
    return TagValue._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TagValue._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:tags/tagValue:TagValue',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    namespacedName = registerOutput<String>('namespacedName');
    parent = registerOutput<String>('parent');
    shortName = registerOutput<String>('shortName');
    updateTime = registerOutput<String>('updateTime');
  }
}
