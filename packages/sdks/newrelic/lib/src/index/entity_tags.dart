import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_tags_args.dart';
import 'entity_tags_state.dart';

/// Use this resource to create, update, and delete tags for a New Relic One entity.
///
/// &gt; **IMPORTANT!** Version 2.0.0 of the New Relic Terraform Provider introduces some [additional requirements](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/guides/migration_guide_v2) for configuring the provider.
/// &lt;br&gt;&lt;br&gt;
/// Before upgrading to version 2.0.0 or later, it is recommended to upgrade to the most recent 1.x version of the provider and ensure that your environment successfully runs `pulumi preview` without unexpected changes.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = newrelic.getEntity({
///     name: "Example application",
///     type: "APPLICATION",
///     domain: "APM",
/// });
/// const fooEntityTags = new newrelic.EntityTags("foo", {
///     guid: foo.then(foo => foo.guid),
///     tags: [
///         {
///             key: "my-key",
///             values: [
///                 "my-value",
///                 "my-other-value",
///             ],
///         },
///         {
///             key: "my-key-2",
///             values: ["my-value-2"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.get_entity(name="Example application",
///     type="APPLICATION",
///     domain="APM")
/// foo_entity_tags = newrelic.EntityTags("foo",
///     guid=foo.guid,
///     tags=[
///         {
///             "key": "my-key",
///             "values": [
///                 "my-value",
///                 "my-other-value",
///             ],
///         },
///         {
///             "key": "my-key-2",
///             "values": ["my-value-2"],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = NewRelic.GetEntity.Invoke(new()
///     {
///         Name = "Example application",
///         Type = "APPLICATION",
///         Domain = "APM",
///     });
///
///     var fooEntityTags = new NewRelic.EntityTags("foo", new()
///     {
///         Guid = foo.Apply(getEntityResult => getEntityResult.Guid),
///         Tags = new[]
///         {
///             new NewRelic.Inputs.EntityTagsTagArgs
///             {
///                 Key = "my-key",
///                 Values = new[]
///                 {
///                     "my-value",
///                     "my-other-value",
///                 },
///             },
///             new NewRelic.Inputs.EntityTagsTagArgs
///             {
///                 Key = "my-key-2",
///                 Values = new[]
///                 {
///                     "my-value-2",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := newrelic.GetEntity(ctx, &newrelic.GetEntityArgs{
/// 			Name:   "Example application",
/// 			Type:   pulumi.StringRef("APPLICATION"),
/// 			Domain: pulumi.StringRef("APM"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewEntityTags(ctx, "foo", &newrelic.EntityTagsArgs{
/// 			Guid: pulumi.String(foo.Guid),
/// 			Tags: newrelic.EntityTagsTagArray{
/// 				&newrelic.EntityTagsTagArgs{
/// 					Key: pulumi.String("my-key"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("my-value"),
/// 						pulumi.String("my-other-value"),
/// 					},
/// 				},
/// 				&newrelic.EntityTagsTagArgs{
/// 					Key: pulumi.String("my-key-2"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("my-value-2"),
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.newrelic.NewrelicFunctions;
/// import com.pulumi.newrelic.inputs.GetEntityArgs;
/// import com.pulumi.newrelic.EntityTags;
/// import com.pulumi.newrelic.EntityTagsArgs;
/// import com.pulumi.newrelic.inputs.EntityTagsTagArgs;
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
///         final var foo = NewrelicFunctions.getEntity(GetEntityArgs.builder()
///             .name("Example application")
///             .type("APPLICATION")
///             .domain("APM")
///             .build());
///
///         var fooEntityTags = new EntityTags("fooEntityTags", EntityTagsArgs.builder()
///             .guid(foo.guid())
///             .tags(
///                 EntityTagsTagArgs.builder()
///                     .key("my-key")
///                     .values(
///                         "my-value",
///                         "my-other-value")
///                     .build(),
///                 EntityTagsTagArgs.builder()
///                     .key("my-key-2")
///                     .values("my-value-2")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fooEntityTags:
///     type: newrelic:EntityTags
///     name: foo
///     properties:
///       guid: ${foo.guid}
///       tags:
///         - key: my-key
///           values:
///             - my-value
///             - my-other-value
///         - key: my-key-2
///           values:
///             - my-value-2
/// variables:
///   foo:
///     fn::invoke:
///       function: newrelic:getEntity
///       arguments:
///         name: Example application
///         type: APPLICATION
///         domain: APM
/// ```
///
///
/// ### Example of applying multiple tags to multiple entities using a nested `dynamic` block
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
/// import * as std from "@pulumi/std";
///
/// export = async () => {
///     const apps = (await std.toset({
///         input: [
///             "Example App Name 1",
///             "Example App Name 2",
///         ],
///     })).result;
///     const customTags = {
///         "tag-key-1": "tag-value-1",
///         "tag-key-2": "tag-value-2",
///         "tag-key-3": "tag-value-3",
///     };
///     const foo = .reduce((__obj, [__key, __value]) => ({ ...__obj, [__key]: await newrelic.getEntity({
///         name: __key,
///         type: "APPLICATION",
///         domain: "APM",
///     }) }));
///     const fooEntityTags: newrelic.EntityTags[] = [];
///     for (const range of apps.map((v, k) => ({key: k, value: v}))) {
///         fooEntityTags.push(new newrelic.EntityTags(`foo-${range.key}`, {
///             tags: Object.entries(customTags).map(([k, v]) => ({key: k, value: v})).map(entry => ({
///                 key: entry.key,
///                 values: [entry.value],
///             })),
///             guid: foo[range.key].guid,
///         }));
///     }
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
/// import pulumi_std as std
///
/// apps = std.toset(input=[
///     "Example App Name 1",
///     "Example App Name 2",
/// ]).result
/// custom_tags = {
///     "tag-key-1": "tag-value-1",
///     "tag-key-2": "tag-value-2",
///     "tag-key-3": "tag-value-3",
/// }
/// foo = {__key: newrelic.get_entity(name=__key,
///     type="APPLICATION",
///     domain="APM") for __key, __value in apps}
/// foo_entity_tags = []
/// for range in [{"key": k, "value": v} for [k, v] in enumerate(apps)]:
///     foo_entity_tags.append(newrelic.EntityTags(f"foo-{range['key']}",
///         tags=[{
///             "key": entry["key"],
///             "values": [entry["value"]],
///         } for entry in [{"key": k, "value": v} for k, v in custom_tags]],
///         guid=foo[range["key"]].guid))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Threading.Tasks;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(async() =>
/// {
///     var apps = (await Std.Toset.InvokeAsync(new()
///     {
///         Input = new[]
///         {
///             "Example App Name 1",
///             "Example App Name 2",
///         },
///     })).Result;
///
///     var customTags =
///     {
///         { "tag-key-1", "tag-value-1" },
///         { "tag-key-2", "tag-value-2" },
///         { "tag-key-3", "tag-value-3" },
///     };
///
///     var foo = ;
///
///     var fooEntityTags = new List<NewRelic.EntityTags>();
///     foreach (var range in )
///     {
///         fooEntityTags.Add(new NewRelic.EntityTags($"foo-{range.Key}", new()
///         {
///             Tags = customTags.Select(pair => new { pair.Key, pair.Value }).Select(entry =>
///             {
///                 return new NewRelic.Inputs.EntityTagsTagArgs
///                 {
///                     Key = entry.Key,
///                     Values = new[]
///                     {
///                         entry.Value,
///                     },
///                 };
///             }).ToList(),
///             Guid = foo[range.Key].Guid,
///         }));
///     }
/// });
/// ```
///
///
/// ## Import
///
/// New Relic One entity tags can be imported using a concatenated string of the format
/// `&lt;guid&gt;`, e.g.
///
/// ```bash
/// $ terraform import newrelic_entity_tags.foo MjUyMDUyOHxBUE18QVBRTElDQVRJT058MjE1MDM3Nzk1
/// ```
class EntityTags extends pulumi.CustomResource {
  /// The guid of the entity to tag.
  late final pulumi.Output<String> guid;
  /// A nested block that describes an entity tag. See Nested tag blocks below for details.
  late final pulumi.Output<List<Map<String, dynamic>>> tags;

  /// Creates a new [EntityTags].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EntityTags]. {@macro pulumi_index_entity_tags_entity_tags_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EntityTags(
    String name, {
    EntityTagsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/entityTags:EntityTags',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    guid = registerOutput<String>('guid');
    tags = registerOutput<List<Map<String, dynamic>>>('tags');
  }

  /// Gets an existing [EntityTags] resource's state with the given [name] and [id].
  static EntityTags get(
    String name,
    pulumi.Input<String> id, {
    EntityTagsState? state,
  }) {
    return EntityTags._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EntityTags._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/entityTags:EntityTags',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    guid = registerOutput<String>('guid');
    tags = registerOutput<List<Map<String, dynamic>>>('tags');
  }
}
