import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_policy_rule_args.dart';
import 'response_policy_rule_local_data.dart';
import 'response_policy_rule_state.dart';

/// A Response Policy Rule is a selector that applies its behavior to queries that match the selector.
/// Selectors are DNS names, which may be wildcards or exact matches.
/// Each DNS query subject to a Response Policy matches at most one ResponsePolicyRule,
/// as identified by the dns_name field with the longest matching suffix.
///
///
///
/// ## Example Usage
///
/// ### Dns Response Policy Rule Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network_1 = new gcp.compute.Network("network-1", {
///     name: "network-1",
///     autoCreateSubnetworks: false,
/// });
/// const network_2 = new gcp.compute.Network("network-2", {
///     name: "network-2",
///     autoCreateSubnetworks: false,
/// });
/// const response_policy = new gcp.dns.ResponsePolicy("response-policy", {
///     responsePolicyName: "example-response-policy",
///     networks: [
///         {
///             networkUrl: network_1.id,
///         },
///         {
///             networkUrl: network_2.id,
///         },
///     ],
/// });
/// const example_response_policy_rule = new gcp.dns.ResponsePolicyRule("example-response-policy-rule", {
///     responsePolicy: response_policy.responsePolicyName,
///     ruleName: "example-rule",
///     dnsName: "dns.example.com.",
///     localData: {
///         localDatas: [{
///             name: "dns.example.com.",
///             type: "A",
///             ttl: 300,
///             rrdatas: ["192.0.2.91"],
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network_1 = gcp.compute.Network("network-1",
///     name="network-1",
///     auto_create_subnetworks=False)
/// network_2 = gcp.compute.Network("network-2",
///     name="network-2",
///     auto_create_subnetworks=False)
/// response_policy = gcp.dns.ResponsePolicy("response-policy",
///     response_policy_name="example-response-policy",
///     networks=[
///         {
///             "network_url": network_1.id,
///         },
///         {
///             "network_url": network_2.id,
///         },
///     ])
/// example_response_policy_rule = gcp.dns.ResponsePolicyRule("example-response-policy-rule",
///     response_policy=response_policy.response_policy_name,
///     rule_name="example-rule",
///     dns_name="dns.example.com.",
///     local_data={
///         "local_datas": [{
///             "name": "dns.example.com.",
///             "type": "A",
///             "ttl": 300,
///             "rrdatas": ["192.0.2.91"],
///         }],
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
///     var network_1 = new Gcp.Compute.Network("network-1", new()
///     {
///         Name = "network-1",
///         AutoCreateSubnetworks = false,
///     });
///
///     var network_2 = new Gcp.Compute.Network("network-2", new()
///     {
///         Name = "network-2",
///         AutoCreateSubnetworks = false,
///     });
///
///     var response_policy = new Gcp.Dns.ResponsePolicy("response-policy", new()
///     {
///         ResponsePolicyName = "example-response-policy",
///         Networks = new[]
///         {
///             new Gcp.Dns.Inputs.ResponsePolicyNetworkArgs
///             {
///                 NetworkUrl = network_1.Id,
///             },
///             new Gcp.Dns.Inputs.ResponsePolicyNetworkArgs
///             {
///                 NetworkUrl = network_2.Id,
///             },
///         },
///     });
///
///     var example_response_policy_rule = new Gcp.Dns.ResponsePolicyRule("example-response-policy-rule", new()
///     {
///         ResponsePolicy = response_policy.ResponsePolicyName,
///         RuleName = "example-rule",
///         DnsName = "dns.example.com.",
///         LocalData = new Gcp.Dns.Inputs.ResponsePolicyRuleLocalDataArgs
///         {
///             LocalDatas = new[]
///             {
///                 new Gcp.Dns.Inputs.ResponsePolicyRuleLocalDataLocalDataArgs
///                 {
///                     Name = "dns.example.com.",
///                     Type = "A",
///                     Ttl = 300,
///                     Rrdatas = new[]
///                     {
///                         "192.0.2.91",
///                     },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network_1, err := compute.NewNetwork(ctx, "network-1", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network-1"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network_2, err := compute.NewNetwork(ctx, "network-2", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network-2"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		response_policy, err := dns.NewResponsePolicy(ctx, "response-policy", &dns.ResponsePolicyArgs{
/// 			ResponsePolicyName: pulumi.String("example-response-policy"),
/// 			Networks: dns.ResponsePolicyNetworkArray{
/// 				&dns.ResponsePolicyNetworkArgs{
/// 					NetworkUrl: network_1.ID(),
/// 				},
/// 				&dns.ResponsePolicyNetworkArgs{
/// 					NetworkUrl: network_2.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewResponsePolicyRule(ctx, "example-response-policy-rule", &dns.ResponsePolicyRuleArgs{
/// 			ResponsePolicy: response_policy.ResponsePolicyName,
/// 			RuleName:       pulumi.String("example-rule"),
/// 			DnsName:        pulumi.String("dns.example.com."),
/// 			LocalData: &dns.ResponsePolicyRuleLocalDataArgs{
/// 				LocalDatas: dns.ResponsePolicyRuleLocalDataLocalDataArray{
/// 					&dns.ResponsePolicyRuleLocalDataLocalDataArgs{
/// 						Name: pulumi.String("dns.example.com."),
/// 						Type: pulumi.String("A"),
/// 						Ttl:  pulumi.Int(300),
/// 						Rrdatas: pulumi.StringArray{
/// 							pulumi.String("192.0.2.91"),
/// 						},
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.dns.ResponsePolicy;
/// import com.pulumi.gcp.dns.ResponsePolicyArgs;
/// import com.pulumi.gcp.dns.inputs.ResponsePolicyNetworkArgs;
/// import com.pulumi.gcp.dns.ResponsePolicyRule;
/// import com.pulumi.gcp.dns.ResponsePolicyRuleArgs;
/// import com.pulumi.gcp.dns.inputs.ResponsePolicyRuleLocalDataArgs;
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
///         var network_1 = new Network("network-1", NetworkArgs.builder()
///             .name("network-1")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var network_2 = new Network("network-2", NetworkArgs.builder()
///             .name("network-2")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var response_policy = new ResponsePolicy("response-policy", ResponsePolicyArgs.builder()
///             .responsePolicyName("example-response-policy")
///             .networks(
///                 ResponsePolicyNetworkArgs.builder()
///                     .networkUrl(network_1.id())
///                     .build(),
///                 ResponsePolicyNetworkArgs.builder()
///                     .networkUrl(network_2.id())
///                     .build())
///             .build());
///
///         var example_response_policy_rule = new ResponsePolicyRule("example-response-policy-rule", ResponsePolicyRuleArgs.builder()
///             .responsePolicy(response_policy.responsePolicyName())
///             .ruleName("example-rule")
///             .dnsName("dns.example.com.")
///             .localData(ResponsePolicyRuleLocalDataArgs.builder()
///                 .localDatas(ResponsePolicyRuleLocalDataLocalDataArgs.builder()
///                     .name("dns.example.com.")
///                     .type("A")
///                     .ttl(300)
///                     .rrdatas("192.0.2.91")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network-1:
///     type: gcp:compute:Network
///     properties:
///       name: network-1
///       autoCreateSubnetworks: false
///   network-2:
///     type: gcp:compute:Network
///     properties:
///       name: network-2
///       autoCreateSubnetworks: false
///   response-policy:
///     type: gcp:dns:ResponsePolicy
///     properties:
///       responsePolicyName: example-response-policy
///       networks:
///         - networkUrl: ${["network-1"].id}
///         - networkUrl: ${["network-2"].id}
///   example-response-policy-rule:
///     type: gcp:dns:ResponsePolicyRule
///     properties:
///       responsePolicy: ${["response-policy"].responsePolicyName}
///       ruleName: example-rule
///       dnsName: dns.example.com.
///       localData:
///         localDatas:
///           - name: dns.example.com.
///             type: A
///             ttl: 300
///             rrdatas:
///               - 192.0.2.91
/// ```
///
///
/// ## Import
///
/// ResponsePolicyRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/responsePolicies/{{response_policy}}/rules/{{rule_name}}`
///
/// * `{{project}}/{{response_policy}}/{{rule_name}}`
///
/// * `{{response_policy}}/{{rule_name}}`
///
/// When using the `pulumi import` command, ResponsePolicyRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dns/responsePolicyRule:ResponsePolicyRule default projects/{{project}}/responsePolicies/{{response_policy}}/rules/{{rule_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dns/responsePolicyRule:ResponsePolicyRule default {{project}}/{{response_policy}}/{{rule_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dns/responsePolicyRule:ResponsePolicyRule default {{response_policy}}/{{rule_name}}
/// ```
class ResponsePolicyRule extends pulumi.CustomResource {
  /// Answer this query with a behavior rather than DNS data. Acceptable values are 'behaviorUnspecified', and 'bypassResponsePolicy'
  late final pulumi.Output<String?> behavior;
  /// The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
  late final pulumi.Output<String> dnsName;
  /// Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name;
  /// in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed.
  /// Structure is documented below.
  late final pulumi.Output<ResponsePolicyRuleLocalData?> localData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Identifies the response policy addressed by this request.
  late final pulumi.Output<String> responsePolicy;
  /// An identifier for this rule. Must be unique with the ResponsePolicy.
  late final pulumi.Output<String> ruleName;

  /// Creates a new [ResponsePolicyRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResponsePolicyRule]. {@macro pulumi_dns_response_policy_rule_response_policy_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResponsePolicyRule(
    String name, {
    ResponsePolicyRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dns/responsePolicyRule:ResponsePolicyRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    behavior = registerOutput<String?>('behavior');
    dnsName = registerOutput<String>('dnsName');
    localData = registerOutput<ResponsePolicyRuleLocalData?>('localData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResponsePolicyRuleLocalData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    responsePolicy = registerOutput<String>('responsePolicy');
    ruleName = registerOutput<String>('ruleName');
  }

  /// Gets an existing [ResponsePolicyRule] resource's state with the given [name] and [id].
  static ResponsePolicyRule get(
    String name,
    pulumi.Input<String> id, {
    ResponsePolicyRuleState? state,
  }) {
    return ResponsePolicyRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResponsePolicyRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dns/responsePolicyRule:ResponsePolicyRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    behavior = registerOutput<String?>('behavior');
    dnsName = registerOutput<String>('dnsName');
    localData = registerOutput<ResponsePolicyRuleLocalData?>('localData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResponsePolicyRuleLocalData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    responsePolicy = registerOutput<String>('responsePolicy');
    ruleName = registerOutput<String>('ruleName');
  }
}
