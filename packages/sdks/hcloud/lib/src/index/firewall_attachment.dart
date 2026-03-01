import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_attachment_args.dart';
import 'firewall_attachment_state.dart';

/// Attaches resource to a Hetzner Cloud Firewall.
///
/// _Note_: only one `hcloud.FirewallAttachment` per Firewall is allowed.
/// Any resources that should be attached to that Firewall need to be
/// specified in that `hcloud.FirewallAttachment`.
///
/// ## Example Usage
///
/// ### Attach Servers
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const testServer = new hcloud.Server("test_server", {
///     name: "test-server",
///     serverType: "cx23",
///     image: "ubuntu-24.04",
/// });
/// const basicFirewall = new hcloud.Firewall("basic_firewall", {name: "basic_firewall"});
/// const fwRef = new hcloud.FirewallAttachment("fw_ref", {
///     firewallId: basicFirewall.id,
///     serverIds: [testServer.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// test_server = hcloud.Server("test_server",
///     name="test-server",
///     server_type="cx23",
///     image="ubuntu-24.04")
/// basic_firewall = hcloud.Firewall("basic_firewall", name="basic_firewall")
/// fw_ref = hcloud.FirewallAttachment("fw_ref",
///     firewall_id=basic_firewall.id,
///     server_ids=[test_server.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testServer = new HCloud.Server("test_server", new()
///     {
///         Name = "test-server",
///         ServerType = "cx23",
///         Image = "ubuntu-24.04",
///     });
///
///     var basicFirewall = new HCloud.Firewall("basic_firewall", new()
///     {
///         Name = "basic_firewall",
///     });
///
///     var fwRef = new HCloud.FirewallAttachment("fw_ref", new()
///     {
///         FirewallId = basicFirewall.Id,
///         ServerIds = new[]
///         {
///             testServer.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testServer, err := hcloud.NewServer(ctx, "test_server", &hcloud.ServerArgs{
/// 			Name:       pulumi.String("test-server"),
/// 			ServerType: pulumi.String("cx23"),
/// 			Image:      pulumi.String("ubuntu-24.04"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basicFirewall, err := hcloud.NewFirewall(ctx, "basic_firewall", &hcloud.FirewallArgs{
/// 			Name: pulumi.String("basic_firewall"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewFirewallAttachment(ctx, "fw_ref", &hcloud.FirewallAttachmentArgs{
/// 			FirewallId: basicFirewall.ID(),
/// 			ServerIds: pulumi.IntArray{
/// 				testServer.ID(),
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
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
/// import com.pulumi.hcloud.Firewall;
/// import com.pulumi.hcloud.FirewallArgs;
/// import com.pulumi.hcloud.FirewallAttachment;
/// import com.pulumi.hcloud.FirewallAttachmentArgs;
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
///         var testServer = new Server("testServer", ServerArgs.builder()
///             .name("test-server")
///             .serverType("cx23")
///             .image("ubuntu-24.04")
///             .build());
///
///         var basicFirewall = new Firewall("basicFirewall", FirewallArgs.builder()
///             .name("basic_firewall")
///             .build());
///
///         var fwRef = new FirewallAttachment("fwRef", FirewallAttachmentArgs.builder()
///             .firewallId(basicFirewall.id())
///             .serverIds(testServer.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testServer:
///     type: hcloud:Server
///     name: test_server
///     properties:
///       name: test-server
///       serverType: cx23
///       image: ubuntu-24.04
///   basicFirewall:
///     type: hcloud:Firewall
///     name: basic_firewall
///     properties:
///       name: basic_firewall
///   fwRef:
///     type: hcloud:FirewallAttachment
///     name: fw_ref
///     properties:
///       firewallId: ${basicFirewall.id}
///       serverIds:
///         - ${testServer.id}
/// ```
///
///
/// ### Attach Label Selectors
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const testServer = new hcloud.Server("test_server", {
///     name: "test-server",
///     serverType: "cx23",
///     image: "ubuntu-24.04",
///     labels: {
///         "firewall-attachment": "test-server",
///     },
/// });
/// const basicFirewall = new hcloud.Firewall("basic_firewall", {name: "basic_firewall"});
/// const fwRef = new hcloud.FirewallAttachment("fw_ref", {
///     firewallId: basicFirewall.id,
///     labelSelectors: ["firewall-attachment=test-server"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// test_server = hcloud.Server("test_server",
///     name="test-server",
///     server_type="cx23",
///     image="ubuntu-24.04",
///     labels={
///         "firewall-attachment": "test-server",
///     })
/// basic_firewall = hcloud.Firewall("basic_firewall", name="basic_firewall")
/// fw_ref = hcloud.FirewallAttachment("fw_ref",
///     firewall_id=basic_firewall.id,
///     label_selectors=["firewall-attachment=test-server"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testServer = new HCloud.Server("test_server", new()
///     {
///         Name = "test-server",
///         ServerType = "cx23",
///         Image = "ubuntu-24.04",
///         Labels =
///         {
///             { "firewall-attachment", "test-server" },
///         },
///     });
///
///     var basicFirewall = new HCloud.Firewall("basic_firewall", new()
///     {
///         Name = "basic_firewall",
///     });
///
///     var fwRef = new HCloud.FirewallAttachment("fw_ref", new()
///     {
///         FirewallId = basicFirewall.Id,
///         LabelSelectors = new[]
///         {
///             "firewall-attachment=test-server",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.NewServer(ctx, "test_server", &hcloud.ServerArgs{
/// 			Name:       pulumi.String("test-server"),
/// 			ServerType: pulumi.String("cx23"),
/// 			Image:      pulumi.String("ubuntu-24.04"),
/// 			Labels: pulumi.StringMap{
/// 				"firewall-attachment": pulumi.String("test-server"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basicFirewall, err := hcloud.NewFirewall(ctx, "basic_firewall", &hcloud.FirewallArgs{
/// 			Name: pulumi.String("basic_firewall"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewFirewallAttachment(ctx, "fw_ref", &hcloud.FirewallAttachmentArgs{
/// 			FirewallId: basicFirewall.ID(),
/// 			LabelSelectors: pulumi.StringArray{
/// 				pulumi.String("firewall-attachment=test-server"),
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
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
/// import com.pulumi.hcloud.Firewall;
/// import com.pulumi.hcloud.FirewallArgs;
/// import com.pulumi.hcloud.FirewallAttachment;
/// import com.pulumi.hcloud.FirewallAttachmentArgs;
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
///         var testServer = new Server("testServer", ServerArgs.builder()
///             .name("test-server")
///             .serverType("cx23")
///             .image("ubuntu-24.04")
///             .labels(Map.of("firewall-attachment", "test-server"))
///             .build());
///
///         var basicFirewall = new Firewall("basicFirewall", FirewallArgs.builder()
///             .name("basic_firewall")
///             .build());
///
///         var fwRef = new FirewallAttachment("fwRef", FirewallAttachmentArgs.builder()
///             .firewallId(basicFirewall.id())
///             .labelSelectors("firewall-attachment=test-server")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testServer:
///     type: hcloud:Server
///     name: test_server
///     properties:
///       name: test-server
///       serverType: cx23
///       image: ubuntu-24.04
///       labels:
///         firewall-attachment: test-server
///   basicFirewall:
///     type: hcloud:Firewall
///     name: basic_firewall
///     properties:
///       name: basic_firewall
///   fwRef:
///     type: hcloud:FirewallAttachment
///     name: fw_ref
///     properties:
///       firewallId: ${basicFirewall.id}
///       labelSelectors:
///         - firewall-attachment=test-server
/// ```
///
///
/// ### Ensure a server is attached to a Firewall on first boot
///
/// The `firewall_ids` property of the `hcloud.Server` resource ensures that
/// a server is attached to the specified Firewalls before its first boot.
/// This is **not** the case when using the `hcloud.FirewallAttachment`
/// resource to attach servers to a Firewall. In some scenarios this may
/// pose a security risk.
///
/// The following workaround ensures that a server is attached to a Firewall
/// _before_ it first boots. However, the workaround requires two Firewalls.
/// Additionally the server resource definition needs to ignore any remote
/// changes to the `hcloud_server.firewall_ids` property. This is done using
/// the `ignore_remote_firewall_ids` property of `hcloud.Server`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
/// import * as std from "@pulumi/std";
///
/// const denyAll = new hcloud.Firewall("deny_all", {name: "deny_all"});
/// const testServer = new hcloud.Server("test_server", {
///     name: "test-server",
///     serverType: "cx23",
///     image: "ubuntu-24.04",
///     ignoreRemoteFirewallIds: true,
///     firewallIds: [denyAll.id],
/// });
/// const allowRules = new hcloud.Firewall("allow_rules", {
///     name: "allow_rules",
///     rules: [{
///         direction: "in",
///         protocol: "tcp",
///         port: "22",
///         sourceIps: [
///             "0.0.0.0/0",
///             "::/0",
///         ],
///         destinationIps: [std.format({
///             input: "%s/32",
///             args: [testServer.ipv4Address],
///         }).then(invoke => invoke.result)],
///     }],
/// });
/// const denyAllAtt = new hcloud.FirewallAttachment("deny_all_att", {
///     firewallId: denyAll.id,
///     serverIds: [testServer.id],
/// });
/// const allowRulesAtt = new hcloud.FirewallAttachment("allow_rules_att", {
///     firewallId: allowRules.id,
///     serverIds: [testServer.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
/// import pulumi_std as std
///
/// deny_all = hcloud.Firewall("deny_all", name="deny_all")
/// test_server = hcloud.Server("test_server",
///     name="test-server",
///     server_type="cx23",
///     image="ubuntu-24.04",
///     ignore_remote_firewall_ids=True,
///     firewall_ids=[deny_all.id])
/// allow_rules = hcloud.Firewall("allow_rules",
///     name="allow_rules",
///     rules=[{
///         "direction": "in",
///         "protocol": "tcp",
///         "port": "22",
///         "source_ips": [
///             "0.0.0.0/0",
///             "::/0",
///         ],
///         "destination_ips": [std.format(input="%s/32",
///             args=[test_server.ipv4_address]).result],
///     }])
/// deny_all_att = hcloud.FirewallAttachment("deny_all_att",
///     firewall_id=deny_all.id,
///     server_ids=[test_server.id])
/// allow_rules_att = hcloud.FirewallAttachment("allow_rules_att",
///     firewall_id=allow_rules.id,
///     server_ids=[test_server.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var denyAll = new HCloud.Firewall("deny_all", new()
///     {
///         Name = "deny_all",
///     });
///
///     var testServer = new HCloud.Server("test_server", new()
///     {
///         Name = "test-server",
///         ServerType = "cx23",
///         Image = "ubuntu-24.04",
///         IgnoreRemoteFirewallIds = true,
///         FirewallIds = new[]
///         {
///             denyAll.Id,
///         },
///     });
///
///     var allowRules = new HCloud.Firewall("allow_rules", new()
///     {
///         Name = "allow_rules",
///         Rules = new[]
///         {
///             new HCloud.Inputs.FirewallRuleArgs
///             {
///                 Direction = "in",
///                 Protocol = "tcp",
///                 Port = "22",
///                 SourceIps = new[]
///                 {
///                     "0.0.0.0/0",
///                     "::/0",
///                 },
///                 DestinationIps = new[]
///                 {
///                     Std.Format.Invoke(new()
///                     {
///                         Input = "%s/32",
///                         Args = new[]
///                         {
///                             testServer.Ipv4Address,
///                         },
///                     }).Apply(invoke => invoke.Result),
///                 },
///             },
///         },
///     });
///
///     var denyAllAtt = new HCloud.FirewallAttachment("deny_all_att", new()
///     {
///         FirewallId = denyAll.Id,
///         ServerIds = new[]
///         {
///             testServer.Id,
///         },
///     });
///
///     var allowRulesAtt = new HCloud.FirewallAttachment("allow_rules_att", new()
///     {
///         FirewallId = allowRules.Id,
///         ServerIds = new[]
///         {
///             testServer.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		denyAll, err := hcloud.NewFirewall(ctx, "deny_all", &hcloud.FirewallArgs{
/// 			Name: pulumi.String("deny_all"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testServer, err := hcloud.NewServer(ctx, "test_server", &hcloud.ServerArgs{
/// 			Name:                    pulumi.String("test-server"),
/// 			ServerType:              pulumi.String("cx23"),
/// 			Image:                   pulumi.String("ubuntu-24.04"),
/// 			IgnoreRemoteFirewallIds: pulumi.Bool(true),
/// 			FirewallIds: pulumi.IntArray{
/// 				denyAll.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s/32",
/// 			Args: pulumi.StringArray{
/// 				testServer.Ipv4Address,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		allowRules, err := hcloud.NewFirewall(ctx, "allow_rules", &hcloud.FirewallArgs{
/// 			Name: pulumi.String("allow_rules"),
/// 			Rules: hcloud.FirewallRuleArray{
/// 				&hcloud.FirewallRuleArgs{
/// 					Direction: pulumi.String("in"),
/// 					Protocol:  pulumi.String("tcp"),
/// 					Port:      pulumi.String("22"),
/// 					SourceIps: pulumi.StringArray{
/// 						pulumi.String("0.0.0.0/0"),
/// 						pulumi.String("::/0"),
/// 					},
/// 					DestinationIps: pulumi.StringArray{
/// 						pulumi.String(invokeFormat.Result),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewFirewallAttachment(ctx, "deny_all_att", &hcloud.FirewallAttachmentArgs{
/// 			FirewallId: denyAll.ID(),
/// 			ServerIds: pulumi.IntArray{
/// 				testServer.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewFirewallAttachment(ctx, "allow_rules_att", &hcloud.FirewallAttachmentArgs{
/// 			FirewallId: allowRules.ID(),
/// 			ServerIds: pulumi.IntArray{
/// 				testServer.ID(),
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
/// import com.pulumi.hcloud.Firewall;
/// import com.pulumi.hcloud.FirewallArgs;
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
/// import com.pulumi.hcloud.inputs.FirewallRuleArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.hcloud.FirewallAttachment;
/// import com.pulumi.hcloud.FirewallAttachmentArgs;
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
///         var denyAll = new Firewall("denyAll", FirewallArgs.builder()
///             .name("deny_all")
///             .build());
///
///         var testServer = new Server("testServer", ServerArgs.builder()
///             .name("test-server")
///             .serverType("cx23")
///             .image("ubuntu-24.04")
///             .ignoreRemoteFirewallIds(true)
///             .firewallIds(denyAll.id())
///             .build());
///
///         var allowRules = new Firewall("allowRules", FirewallArgs.builder()
///             .name("allow_rules")
///             .rules(FirewallRuleArgs.builder()
///                 .direction("in")
///                 .protocol("tcp")
///                 .port("22")
///                 .sourceIps(
///                     "0.0.0.0/0",
///                     "::/0")
///                 .destinationIps(StdFunctions.format(FormatArgs.builder()
///                     .input("%s/32")
///                     .args(testServer.ipv4Address())
///                     .build()).result())
///                 .build())
///             .build());
///
///         var denyAllAtt = new FirewallAttachment("denyAllAtt", FirewallAttachmentArgs.builder()
///             .firewallId(denyAll.id())
///             .serverIds(testServer.id())
///             .build());
///
///         var allowRulesAtt = new FirewallAttachment("allowRulesAtt", FirewallAttachmentArgs.builder()
///             .firewallId(allowRules.id())
///             .serverIds(testServer.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   denyAll:
///     type: hcloud:Firewall
///     name: deny_all
///     properties:
///       name: deny_all
///   testServer:
///     type: hcloud:Server
///     name: test_server
///     properties:
///       name: test-server
///       serverType: cx23
///       image: ubuntu-24.04
///       ignoreRemoteFirewallIds: true
///       firewallIds:
///         - ${denyAll.id}
///   allowRules:
///     type: hcloud:Firewall
///     name: allow_rules
///     properties:
///       name: allow_rules
///       rules:
///         - direction: in
///           protocol: tcp
///           port: '22'
///           sourceIps:
///             - 0.0.0.0/0
///             - ::/0
///           destinationIps:
///             - fn::invoke:
///                 function: std:format
///                 arguments:
///                   input: '%s/32'
///                   args:
///                     - ${testServer.ipv4Address}
///                 return: result
///   denyAllAtt:
///     type: hcloud:FirewallAttachment
///     name: deny_all_att
///     properties:
///       firewallId: ${denyAll.id}
///       serverIds:
///         - ${testServer.id}
///   allowRulesAtt:
///     type: hcloud:FirewallAttachment
///     name: allow_rules_att
///     properties:
///       firewallId: ${allowRules.id}
///       serverIds:
///         - ${testServer.id}
/// ```
///
///
/// ## Import
///
/// Firewall Attachments can be imported using the `id` of the firewall:
///
/// ```sh
/// $ pulumi import hcloud:index/firewallAttachment:FirewallAttachment example "$FIREWALL_ID"
/// ```
class FirewallAttachment extends pulumi.CustomResource {
  /// ID of the firewall the resources
  /// should be attached to.
  late final pulumi.Output<int> firewallId;
  /// List of label selectors used to
  /// select resources to attach to the firewall.
  late final pulumi.Output<List<String>?> labelSelectors;
  /// List of Server IDs to attach to the
  /// firewall.
  late final pulumi.Output<List<int>?> serverIds;

  /// Creates a new [FirewallAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallAttachment]. {@macro pulumi_index_firewall_attachment_firewall_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallAttachment(
    String name, {
    FirewallAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/firewallAttachment:FirewallAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.firewallId = registerOutput<int>('firewallId');
    this.labelSelectors = registerOutput<List<String>?>('labelSelectors');
    this.serverIds = registerOutput<List<int>?>('serverIds');
  }

  /// Gets an existing [FirewallAttachment] resource's state with the given [name] and [id].
  static FirewallAttachment get(
    String name,
    pulumi.Input<String> id, {
    FirewallAttachmentState? state,
  }) {
    return FirewallAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FirewallAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/firewallAttachment:FirewallAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.firewallId = registerOutput<int>('firewallId');
    this.labelSelectors = registerOutput<List<String>?>('labelSelectors');
    this.serverIds = registerOutput<List<int>?>('serverIds');
  }
}
