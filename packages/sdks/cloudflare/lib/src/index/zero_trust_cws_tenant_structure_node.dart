import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_cws_tenant_structure_node_args.dart';
import 'zero_trust_cws_tenant_structure_node_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustCwsTenantStructureNode = new cloudflare.ZeroTrustCwsTenantStructureNode("example_zero_trust_cws_tenant_structure_node", {
///     accountId: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     structureId: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///     nativeId: "x",
///     nodeKind: "x",
///     name: "name",
///     parent: "parent",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_cws_tenant_structure_node = cloudflare.ZeroTrustCwsTenantStructureNode("example_zero_trust_cws_tenant_structure_node",
///     account_id="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     structure_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///     native_id="x",
///     node_kind="x",
///     name="name",
///     parent="parent")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustCwsTenantStructureNode = new Cloudflare.ZeroTrustCwsTenantStructureNode("example_zero_trust_cws_tenant_structure_node", new()
///     {
///         AccountId = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///         StructureId = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///         NativeId = "x",
///         NodeKind = "x",
///         Name = "name",
///         Parent = "parent",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewZeroTrustCwsTenantStructureNode(ctx, "example_zero_trust_cws_tenant_structure_node", &cloudflare.ZeroTrustCwsTenantStructureNodeArgs{
/// 			AccountId:   pulumi.String("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"),
/// 			StructureId: pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
/// 			NativeId:    pulumi.String("x"),
/// 			NodeKind:    pulumi.String("x"),
/// 			Name:        pulumi.String("name"),
/// 			Parent:      pulumi.String("parent"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_zero_trust_cws_tenant_structure_node" "example_zero_trust_cws_tenant_structure_node" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id   = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
///   structure_id = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
///   native_id    = "x"
///   node_kind    = "x"
///   name         = "name"
///   parent       = "parent"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustCwsTenantStructureNode;
/// import com.pulumi.cloudflare.ZeroTrustCwsTenantStructureNodeArgs;
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
///         var exampleZeroTrustCwsTenantStructureNode = new ZeroTrustCwsTenantStructureNode("exampleZeroTrustCwsTenantStructureNode", ZeroTrustCwsTenantStructureNodeArgs.builder()
///             .accountId("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
///             .structureId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///             .nativeId("x")
///             .nodeKind("x")
///             .name("name")
///             .parent("parent")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustCwsTenantStructureNode:
///     type: cloudflare:ZeroTrustCwsTenantStructureNode
///     name: example_zero_trust_cws_tenant_structure_node
///     properties:
///       accountId: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
///       structureId: 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
///       nativeId: x
///       nodeKind: x
///       name: name
///       parent: parent
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustCwsTenantStructureNode:ZeroTrustCwsTenantStructureNode example '<account_id>/<structure_id>/<node_id>'
/// ```
class ZeroTrustCwsTenantStructureNode extends pulumi.CustomResource {
  /// Cloudflare account ID (32-character hexadecimal string)
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  /// Display name (e.g. an OU or account name), mutable. Optional; empty by default.
  late final pulumi.Output<String?> name;
  /// Cloud-native identifier of this node, unique within the structure; the parent-reference target. Shape depends on the structure's application. Immutable after create.
  late final pulumi.Output<String> nativeId;
  /// Position in the tree. Legal values depend on the structure's application (aws: root/ou/account; cloudflare: org/account/zone). At most one root per structure. Immutable after create.
  late final pulumi.Output<String> nodeKind;
  /// Native ID of this node's parent. Required for non-root nodes and omitted for the root. The parent must be in the same structure and able to contain this node kind.
  late final pulumi.Output<String?> parent;
  /// ID of the parent tenant structure
  late final pulumi.Output<String> structureId;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ZeroTrustCwsTenantStructureNode].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustCwsTenantStructureNode]. {@macro pulumi_index_zero_trust_cws_tenant_structure_node_zero_trust_cws_tenant_structure_node_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustCwsTenantStructureNode(
    String name, {
    ZeroTrustCwsTenantStructureNodeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsTenantStructureNode:ZeroTrustCwsTenantStructureNode',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.24.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String?>('name');
    nativeId = registerOutput<String>('nativeId');
    nodeKind = registerOutput<String>('nodeKind');
    parent = registerOutput<String?>('parent');
    structureId = registerOutput<String>('structureId');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ZeroTrustCwsTenantStructureNode] resource's state with the given [name] and [id].
  static ZeroTrustCwsTenantStructureNode get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustCwsTenantStructureNodeState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustCwsTenantStructureNode._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustCwsTenantStructureNode._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsTenantStructureNode:ZeroTrustCwsTenantStructureNode',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String?>('name');
    nativeId = registerOutput<String>('nativeId');
    nodeKind = registerOutput<String>('nodeKind');
    parent = registerOutput<String?>('parent');
    structureId = registerOutput<String>('structureId');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustCwsTenantStructureNode] resource.
  ZeroTrustCwsTenantStructureNode.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustCwsTenantStructureNode:ZeroTrustCwsTenantStructureNode',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String?>('name');
    nativeId = registerOutput<String>('nativeId');
    nodeKind = registerOutput<String>('nodeKind');
    parent = registerOutput<String?>('parent');
    structureId = registerOutput<String>('structureId');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
