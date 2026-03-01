import 'package:pulumi/pulumi.dart' as pulumi;
import 'producer_image_share_group_member_args.dart';
import 'producer_image_share_group_member_state.dart';

/// Manages a member of an Image Share Group.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-sharegroup-members). May not be currently available to all users even under v4beta.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const example = new linode.ProducerImageShareGroupMember("example", {
///     sharegroupId: 12345,
///     token: "abcdefghijklmnopqrstuvwxyz0123456789",
///     label: "example-member",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// example = linode.ProducerImageShareGroupMember("example",
///     sharegroup_id=12345,
///     token="abcdefghijklmnopqrstuvwxyz0123456789",
///     label="example-member")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Linode.ProducerImageShareGroupMember("example", new()
///     {
///         SharegroupId = 12345,
///         Token = "abcdefghijklmnopqrstuvwxyz0123456789",
///         Label = "example-member",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewProducerImageShareGroupMember(ctx, "example", &linode.ProducerImageShareGroupMemberArgs{
/// 			SharegroupId: pulumi.Int(12345),
/// 			Token:        pulumi.String("abcdefghijklmnopqrstuvwxyz0123456789"),
/// 			Label:        pulumi.String("example-member"),
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
/// import com.pulumi.linode.ProducerImageShareGroupMember;
/// import com.pulumi.linode.ProducerImageShareGroupMemberArgs;
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
///         var example = new ProducerImageShareGroupMember("example", ProducerImageShareGroupMemberArgs.builder()
///             .sharegroupId(12345)
///             .token("abcdefghijklmnopqrstuvwxyz0123456789")
///             .label("example-member")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: linode:ProducerImageShareGroupMember
///     properties:
///       sharegroupId: 12345
///       token: abcdefghijklmnopqrstuvwxyz0123456789
///       label: example-member
/// ```
class ProducerImageShareGroupMember extends pulumi.CustomResource {
  /// When the member was created.
  late final pulumi.Output<String> created;
  /// When the member will expire.
  late final pulumi.Output<String> expiry;
  /// A label for the member.
  late final pulumi.Output<String> label;
  /// The ID of the Image Share Group to which the member will be added.
  late final pulumi.Output<int> sharegroupId;
  /// The status of the member.
  late final pulumi.Output<String> status;
  /// The token of the prospective member.
  late final pulumi.Output<String> token;
  /// The UUID of member's token.
  late final pulumi.Output<String> tokenUuid;
  /// When the member was last updated.
  late final pulumi.Output<String> updated;

  /// Creates a new [ProducerImageShareGroupMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProducerImageShareGroupMember]. {@macro pulumi_index_producer_image_share_group_member_producer_image_share_group_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProducerImageShareGroupMember(
    String name, {
    ProducerImageShareGroupMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/producerImageShareGroupMember:ProducerImageShareGroupMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.created = registerOutput<String>('created');
    this.expiry = registerOutput<String>('expiry');
    this.label = registerOutput<String>('label');
    this.sharegroupId = registerOutput<int>('sharegroupId');
    this.status = registerOutput<String>('status');
    this.token = registerOutput<String>('token');
    this.tokenUuid = registerOutput<String>('tokenUuid');
    this.updated = registerOutput<String>('updated');
  }

  /// Gets an existing [ProducerImageShareGroupMember] resource's state with the given [name] and [id].
  static ProducerImageShareGroupMember get(
    String name,
    pulumi.Input<String> id, {
    ProducerImageShareGroupMemberState? state,
  }) {
    return ProducerImageShareGroupMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProducerImageShareGroupMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/producerImageShareGroupMember:ProducerImageShareGroupMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.created = registerOutput<String>('created');
    this.expiry = registerOutput<String>('expiry');
    this.label = registerOutput<String>('label');
    this.sharegroupId = registerOutput<int>('sharegroupId');
    this.status = registerOutput<String>('status');
    this.token = registerOutput<String>('token');
    this.tokenUuid = registerOutput<String>('tokenUuid');
    this.updated = registerOutput<String>('updated');
  }
}
