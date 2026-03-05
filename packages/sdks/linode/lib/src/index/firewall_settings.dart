import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_settings_args.dart';
import 'firewall_settings_default_firewall_ids.dart';
import 'firewall_settings_state.dart';

/// Manages Linode account-level firewall settings. Resetting default firewall IDs
/// to null is not available to all customers and unsupported in this resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const example = new linode.FirewallSettings("example", {defaultFirewallIds: {
///     linode: 12345,
///     nodebalancer: 12345,
///     publicInterface: 12345,
///     vpcInterface: 12345,
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// example = linode.FirewallSettings("example", default_firewall_ids={
///     "linode": 12345,
///     "nodebalancer": 12345,
///     "public_interface": 12345,
///     "vpc_interface": 12345,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Linode.FirewallSettings("example", new()
///     {
///         DefaultFirewallIds = new Linode.Inputs.FirewallSettingsDefaultFirewallIdsArgs
///         {
///             Linode = 12345,
///             Nodebalancer = 12345,
///             PublicInterface = 12345,
///             VpcInterface = 12345,
///         },
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
/// 		_, err := linode.NewFirewallSettings(ctx, "example", &linode.FirewallSettingsArgs{
/// 			DefaultFirewallIds: &linode.FirewallSettingsDefaultFirewallIdsArgs{
/// 				Linode:          pulumi.Int(12345),
/// 				Nodebalancer:    pulumi.Int(12345),
/// 				PublicInterface: pulumi.Int(12345),
/// 				VpcInterface:    pulumi.Int(12345),
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
/// import com.pulumi.linode.FirewallSettings;
/// import com.pulumi.linode.FirewallSettingsArgs;
/// import com.pulumi.linode.inputs.FirewallSettingsDefaultFirewallIdsArgs;
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
///         var example = new FirewallSettings("example", FirewallSettingsArgs.builder()
///             .defaultFirewallIds(FirewallSettingsDefaultFirewallIdsArgs.builder()
///                 .linode(12345)
///                 .nodebalancer(12345)
///                 .publicInterface(12345)
///                 .vpcInterface(12345)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: linode:FirewallSettings
///     properties:
///       defaultFirewallIds:
///         linode: 12345
///         nodebalancer: 12345
///         publicInterface: 12345
///         vpcInterface: 12345
/// ```
///
///
/// ## API Reference
///
/// See the [Linode API documentation](https://techdocs.akamai.com/linode-api/reference/put-firewall-settings) for more details.
class FirewallSettings extends pulumi.CustomResource {
  /// A map of default firewall IDs for various interfaces.
  late final pulumi.Output<FirewallSettingsDefaultFirewallIds?> defaultFirewallIds;

  /// Creates a new [FirewallSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallSettings]. {@macro pulumi_index_firewall_settings_firewall_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallSettings(
    String name, {
    FirewallSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/firewallSettings:FirewallSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultFirewallIds = registerOutput<FirewallSettingsDefaultFirewallIds?>('defaultFirewallIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallSettingsDefaultFirewallIds.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [FirewallSettings] resource's state with the given [name] and [id].
  static FirewallSettings get(
    String name,
    pulumi.Input<String> id, {
    FirewallSettingsState? state,
  }) {
    return FirewallSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FirewallSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/firewallSettings:FirewallSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultFirewallIds = registerOutput<FirewallSettingsDefaultFirewallIds?>('defaultFirewallIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallSettingsDefaultFirewallIds.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
