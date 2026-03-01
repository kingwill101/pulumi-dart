import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_additional_group_key.dart';
import 'group_args.dart';
import 'group_group_key.dart';
import 'group_state.dart';

/// A Cloud Identity resource representing a Group.
///
///
/// To get more information about Group, see:
///
/// * [API documentation](https://cloud.google.com/identity/docs/reference/rest/v1beta1/groups)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/identity/docs/how-to/setup)
///
/// > **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a `billing_project` and set `user_project_override` to true
/// in the provider configuration. Otherwise the Cloud Identity API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billing_project` you defined.
///
/// ## Example Usage
///
/// ### Cloud Identity Groups Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cloudIdentityGroupBasic = new gcp.cloudidentity.Group("cloud_identity_group_basic", {
///     displayName: "my-identity-group",
///     initialGroupConfig: "WITH_INITIAL_OWNER",
///     parent: "customers/A01b123xz",
///     groupKey: {
///         id: "my-identity-group@example.com",
///     },
///     labels: {
///         "cloudidentity.googleapis.com/groups.discussion_forum": "",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cloud_identity_group_basic = gcp.cloudidentity.Group("cloud_identity_group_basic",
///     display_name="my-identity-group",
///     initial_group_config="WITH_INITIAL_OWNER",
///     parent="customers/A01b123xz",
///     group_key={
///         "id": "my-identity-group@example.com",
///     },
///     labels={
///         "cloudidentity.googleapis.com/groups.discussion_forum": "",
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
///     var cloudIdentityGroupBasic = new Gcp.CloudIdentity.Group("cloud_identity_group_basic", new()
///     {
///         DisplayName = "my-identity-group",
///         InitialGroupConfig = "WITH_INITIAL_OWNER",
///         Parent = "customers/A01b123xz",
///         GroupKey = new Gcp.CloudIdentity.Inputs.GroupGroupKeyArgs
///         {
///             Id = "my-identity-group@example.com",
///         },
///         Labels =
///         {
///             { "cloudidentity.googleapis.com/groups.discussion_forum", "" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudidentity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudidentity.NewGroup(ctx, "cloud_identity_group_basic", &cloudidentity.GroupArgs{
/// 			DisplayName:        pulumi.String("my-identity-group"),
/// 			InitialGroupConfig: pulumi.String("WITH_INITIAL_OWNER"),
/// 			Parent:             pulumi.String("customers/A01b123xz"),
/// 			GroupKey: &cloudidentity.GroupGroupKeyArgs{
/// 				Id: pulumi.String("my-identity-group@example.com"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"cloudidentity.googleapis.com/groups.discussion_forum": pulumi.String(""),
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
/// import com.pulumi.gcp.cloudidentity.Group;
/// import com.pulumi.gcp.cloudidentity.GroupArgs;
/// import com.pulumi.gcp.cloudidentity.inputs.GroupGroupKeyArgs;
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
///         var cloudIdentityGroupBasic = new Group("cloudIdentityGroupBasic", GroupArgs.builder()
///             .displayName("my-identity-group")
///             .initialGroupConfig("WITH_INITIAL_OWNER")
///             .parent("customers/A01b123xz")
///             .groupKey(GroupGroupKeyArgs.builder()
///                 .id("my-identity-group@example.com")
///                 .build())
///             .labels(Map.of("cloudidentity.googleapis.com/groups.discussion_forum", ""))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cloudIdentityGroupBasic:
///     type: gcp:cloudidentity:Group
///     name: cloud_identity_group_basic
///     properties:
///       displayName: my-identity-group
///       initialGroupConfig: WITH_INITIAL_OWNER
///       parent: customers/A01b123xz
///       groupKey:
///         id: my-identity-group@example.com
///       labels:
///         cloudidentity.googleapis.com/groups.discussion_forum: ""
/// ```
///
///
/// ## Import
///
/// Group can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Group can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudidentity/group:Group default {{name}}
/// ```
class Group extends pulumi.CustomResource {
  /// Additional group keys associated with the Group
  /// Structure is documented below.
  late final pulumi.Output<List<GroupAdditionalGroupKey>> additionalGroupKeys;
  /// The time when the Group was created.
  late final pulumi.Output<String> createTime;
  /// An extended description to help users determine the purpose of a Group.
  /// Must not be longer than 4,096 characters.
  late final pulumi.Output<String?> description;
  /// The display name of the Group.
  late final pulumi.Output<String?> displayName;
  /// EntityKey of the Group.
  /// Structure is documented below.
  late final pulumi.Output<GroupGroupKey> groupKey;
  /// The initial configuration options for creating a Group.
  /// See the
  /// [API reference](https://cloud.google.com/identity/docs/reference/rest/v1beta1/groups/create#initialgroupconfig)
  /// for possible values.
  /// Default value is `EMPTY`.
  /// Possible values are: `INITIAL_GROUP_CONFIG_UNSPECIFIED`, `WITH_INITIAL_OWNER`, `EMPTY`.
  late final pulumi.Output<String?> initialGroupConfig;
  /// One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value.
  /// Google Groups are the default type of group and have a label with a key of cloudidentity.googleapis.com/groups.discussion_forum and an empty value.
  /// Existing Google Groups can have an additional label with a key of cloudidentity.googleapis.com/groups.security and an empty value added to them. This is an immutable change and the security label cannot be removed once added.
  /// Dynamic groups have a label with a key of cloudidentity.googleapis.com/groups.dynamic.
  /// Identity-mapped groups for Cloud Search have a label with a key of system/groups/external and an empty value.
  late final pulumi.Output<Map<String, String>> labels;
  /// Resource name of the Group in the format: groups/{group_id}, where group_id
  /// is the unique ID assigned to the Group.
  late final pulumi.Output<String> name;
  /// The resource name of the entity under which this Group resides in the
  /// Cloud Identity resource hierarchy.
  /// Must be of the form identitysources/{identity_source_id} for external-identity-mapped
  /// groups or customers/{customer_id} for Google Groups.
  late final pulumi.Output<String> parent;
  /// The time when the Group was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_cloudidentity_group_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(
    String name, {
    GroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudidentity/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalGroupKeys = registerOutput<List<GroupAdditionalGroupKey>>('additionalGroupKeys');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.groupKey = registerOutput<GroupGroupKey>('groupKey');
    this.initialGroupConfig = registerOutput<String?>('initialGroupConfig');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Group] resource's state with the given [name] and [id].
  static Group get(
    String name,
    pulumi.Input<String> id, {
    GroupState? state,
  }) {
    return Group._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Group._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudidentity/group:Group',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalGroupKeys = registerOutput<List<GroupAdditionalGroupKey>>('additionalGroupKeys');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.groupKey = registerOutput<GroupGroupKey>('groupKey');
    this.initialGroupConfig = registerOutput<String?>('initialGroupConfig');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
