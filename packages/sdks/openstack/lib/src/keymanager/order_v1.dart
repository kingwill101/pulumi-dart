import 'package:pulumi/pulumi.dart' as pulumi;
import 'order_v1_args.dart';
import 'order_v1_meta.dart';
import 'order_v1_state.dart';

/// Manages a V1 Barbican order resource within OpenStack.
///
/// ## Example Usage
///
/// ### Symmetric key order
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const order1 = new openstack.keymanager.OrderV1("order_1", {
///     type: "key",
///     meta: {
///         algorithm: "aes",
///         bitLength: 256,
///         name: "mysecret",
///         mode: "cbc",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// order1 = openstack.keymanager.OrderV1("order_1",
///     type="key",
///     meta={
///         "algorithm": "aes",
///         "bit_length": 256,
///         "name": "mysecret",
///         "mode": "cbc",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var order1 = new OpenStack.KeyManager.OrderV1("order_1", new()
///     {
///         Type = "key",
///         Meta = new OpenStack.KeyManager.Inputs.OrderV1MetaArgs
///         {
///             Algorithm = "aes",
///             BitLength = 256,
///             Name = "mysecret",
///             Mode = "cbc",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/keymanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := keymanager.NewOrderV1(ctx, "order_1", &keymanager.OrderV1Args{
/// 			Type: pulumi.String("key"),
/// 			Meta: &keymanager.OrderV1MetaArgs{
/// 				Algorithm: pulumi.String("aes"),
/// 				BitLength: pulumi.Int(256),
/// 				Name:      pulumi.String("mysecret"),
/// 				Mode:      pulumi.String("cbc"),
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
/// import com.pulumi.openstack.keymanager.OrderV1;
/// import com.pulumi.openstack.keymanager.OrderV1Args;
/// import com.pulumi.openstack.keymanager.inputs.OrderV1MetaArgs;
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
///         var order1 = new OrderV1("order1", OrderV1Args.builder()
///             .type("key")
///             .meta(OrderV1MetaArgs.builder()
///                 .algorithm("aes")
///                 .bitLength(256)
///                 .name("mysecret")
///                 .mode("cbc")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   order1:
///     type: openstack:keymanager:OrderV1
///     name: order_1
///     properties:
///       type: key
///       meta:
///         algorithm: aes
///         bitLength: 256
///         name: mysecret
///         mode: cbc
/// ```
///
///
/// ### Asymmetric key pair order
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const order1 = new openstack.keymanager.OrderV1("order_1", {
///     type: "asymmetric",
///     meta: {
///         algorithm: "rsa",
///         bitLength: 4096,
///         name: "mysecret",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// order1 = openstack.keymanager.OrderV1("order_1",
///     type="asymmetric",
///     meta={
///         "algorithm": "rsa",
///         "bit_length": 4096,
///         "name": "mysecret",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var order1 = new OpenStack.KeyManager.OrderV1("order_1", new()
///     {
///         Type = "asymmetric",
///         Meta = new OpenStack.KeyManager.Inputs.OrderV1MetaArgs
///         {
///             Algorithm = "rsa",
///             BitLength = 4096,
///             Name = "mysecret",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/keymanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := keymanager.NewOrderV1(ctx, "order_1", &keymanager.OrderV1Args{
/// 			Type: pulumi.String("asymmetric"),
/// 			Meta: &keymanager.OrderV1MetaArgs{
/// 				Algorithm: pulumi.String("rsa"),
/// 				BitLength: pulumi.Int(4096),
/// 				Name:      pulumi.String("mysecret"),
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
/// import com.pulumi.openstack.keymanager.OrderV1;
/// import com.pulumi.openstack.keymanager.OrderV1Args;
/// import com.pulumi.openstack.keymanager.inputs.OrderV1MetaArgs;
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
///         var order1 = new OrderV1("order1", OrderV1Args.builder()
///             .type("asymmetric")
///             .meta(OrderV1MetaArgs.builder()
///                 .algorithm("rsa")
///                 .bitLength(4096)
///                 .name("mysecret")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   order1:
///     type: openstack:keymanager:OrderV1
///     name: order_1
///     properties:
///       type: asymmetric
///       meta:
///         algorithm: rsa
///         bitLength: 4096
///         name: mysecret
/// ```
///
///
/// ## Import
///
/// Orders can be imported using the order id (the last part of the order reference), e.g.:
///
/// ```sh
/// $ pulumi import openstack:keymanager/orderV1:OrderV1 order_1 0c6cd26a-c012-4d7b-8034-057c0f1c2953
/// ```
class OrderV1 extends pulumi.CustomResource {
  /// The container reference / where to find the container.
  late final pulumi.Output<String> containerRef;
  /// The date the order was created.
  late final pulumi.Output<String> created;
  /// The creator of the order.
  late final pulumi.Output<String> creatorId;
  /// Dictionary containing the order metadata used to generate the order. The structure is described below.
  late final pulumi.Output<OrderV1Meta> meta;
  /// The order reference / where to find the order.
  late final pulumi.Output<String> orderRef;
  /// The region in which to obtain the V1 KeyManager client.
  /// A KeyManager client is needed to create a order. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// V1 order.
  late final pulumi.Output<String> region;
  /// The secret reference / where to find the secret.
  late final pulumi.Output<String> secretRef;
  /// The status of the order.
  late final pulumi.Output<String> status;
  /// The sub status of the order.
  late final pulumi.Output<String> subStatus;
  /// The sub status message of the order.
  late final pulumi.Output<String> subStatusMessage;
  /// The type of key to be generated. Must be one of `asymmetric`, `key`.
  late final pulumi.Output<String> type;
  /// The date the order was last updated.
  late final pulumi.Output<String> updated;

  /// Creates a new [OrderV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrderV1]. {@macro pulumi_keymanager_order_v1_order_v1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrderV1(
    String name, {
    OrderV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:keymanager/orderV1:OrderV1',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    containerRef = registerOutput<String>('containerRef');
    created = registerOutput<String>('created');
    creatorId = registerOutput<String>('creatorId');
    meta = registerOutput<OrderV1Meta>('meta', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrderV1Meta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    orderRef = registerOutput<String>('orderRef');
    region = registerOutput<String>('region');
    secretRef = registerOutput<String>('secretRef');
    status = registerOutput<String>('status');
    subStatus = registerOutput<String>('subStatus');
    subStatusMessage = registerOutput<String>('subStatusMessage');
    type = registerOutput<String>('type');
    updated = registerOutput<String>('updated');
  }

  /// Gets an existing [OrderV1] resource's state with the given [name] and [id].
  static OrderV1 get(
    String name,
    pulumi.Input<String> id, {
    OrderV1State? state,
  }) {
    return OrderV1._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OrderV1._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:keymanager/orderV1:OrderV1',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    containerRef = registerOutput<String>('containerRef');
    created = registerOutput<String>('created');
    creatorId = registerOutput<String>('creatorId');
    meta = registerOutput<OrderV1Meta>('meta', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrderV1Meta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    orderRef = registerOutput<String>('orderRef');
    region = registerOutput<String>('region');
    secretRef = registerOutput<String>('secretRef');
    status = registerOutput<String>('status');
    subStatus = registerOutput<String>('subStatus');
    subStatusMessage = registerOutput<String>('subStatusMessage');
    type = registerOutput<String>('type');
    updated = registerOutput<String>('updated');
  }
}
