import 'package:pulumi/pulumi.dart' as pulumi;
import 'qos_bandwidth_limit_rule_args.dart';
import 'qos_bandwidth_limit_rule_state.dart';

/// Manages a V2 Neutron QoS bandwidth limit rule resource within OpenStack.
///
/// ## Example Usage
///
/// ### Create a QoS Policy with some bandwidth limit rule
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const qosPolicy1 = new openstack.networking.QosPolicy("qos_policy_1", {
///     name: "qos_policy_1",
///     description: "bw_limit",
/// });
/// const bwLimitRule1 = new openstack.networking.QosBandwidthLimitRule("bw_limit_rule_1", {
///     qosPolicyId: qosPolicy1.id,
///     maxKbps: 3000,
///     maxBurstKbps: 300,
///     direction: "egress",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// qos_policy1 = openstack.networking.QosPolicy("qos_policy_1",
///     name="qos_policy_1",
///     description="bw_limit")
/// bw_limit_rule1 = openstack.networking.QosBandwidthLimitRule("bw_limit_rule_1",
///     qos_policy_id=qos_policy1.id,
///     max_kbps=3000,
///     max_burst_kbps=300,
///     direction="egress")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var qosPolicy1 = new OpenStack.Networking.QosPolicy("qos_policy_1", new()
///     {
///         Name = "qos_policy_1",
///         Description = "bw_limit",
///     });
///
///     var bwLimitRule1 = new OpenStack.Networking.QosBandwidthLimitRule("bw_limit_rule_1", new()
///     {
///         QosPolicyId = qosPolicy1.Id,
///         MaxKbps = 3000,
///         MaxBurstKbps = 300,
///         Direction = "egress",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		qosPolicy1, err := networking.NewQosPolicy(ctx, "qos_policy_1", &networking.QosPolicyArgs{
/// 			Name:        pulumi.String("qos_policy_1"),
/// 			Description: pulumi.String("bw_limit"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networking.NewQosBandwidthLimitRule(ctx, "bw_limit_rule_1", &networking.QosBandwidthLimitRuleArgs{
/// 			QosPolicyId:  qosPolicy1.ID(),
/// 			MaxKbps:      pulumi.Int(3000),
/// 			MaxBurstKbps: pulumi.Int(300),
/// 			Direction:    pulumi.String("egress"),
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
/// import com.pulumi.openstack.networking.QosPolicy;
/// import com.pulumi.openstack.networking.QosPolicyArgs;
/// import com.pulumi.openstack.networking.QosBandwidthLimitRule;
/// import com.pulumi.openstack.networking.QosBandwidthLimitRuleArgs;
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
///         var qosPolicy1 = new QosPolicy("qosPolicy1", QosPolicyArgs.builder()
///             .name("qos_policy_1")
///             .description("bw_limit")
///             .build());
///
///         var bwLimitRule1 = new QosBandwidthLimitRule("bwLimitRule1", QosBandwidthLimitRuleArgs.builder()
///             .qosPolicyId(qosPolicy1.id())
///             .maxKbps(3000)
///             .maxBurstKbps(300)
///             .direction("egress")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   qosPolicy1:
///     type: openstack:networking:QosPolicy
///     name: qos_policy_1
///     properties:
///       name: qos_policy_1
///       description: bw_limit
///   bwLimitRule1:
///     type: openstack:networking:QosBandwidthLimitRule
///     name: bw_limit_rule_1
///     properties:
///       qosPolicyId: ${qosPolicy1.id}
///       maxKbps: 3000
///       maxBurstKbps: 300
///       direction: egress
/// ```
///
///
/// ## Import
///
/// QoS bandwidth limit rules can be imported using the `qos_policy_id/bandwidth_limit_rule` format, e.g.
///
/// ```sh
/// $ pulumi import openstack:networking/qosBandwidthLimitRule:QosBandwidthLimitRule bw_limit_rule_1 d6ae28ce-fcb5-4180-aa62-d260a27e09ae/46dfb556-b92f-48ce-94c5-9a9e2140de94
/// ```
class QosBandwidthLimitRule extends pulumi.CustomResource {
  /// The direction of traffic. Defaults to "egress". Changing this updates the direction of the
  /// existing QoS bandwidth limit rule.
  late final pulumi.Output<String?> direction;
  /// The maximum burst size in kilobits of a QoS bandwidth limit rule. Changing this updates the
  /// maximum burst size in kilobits of the existing QoS bandwidth limit rule.
  late final pulumi.Output<int?> maxBurstKbps;
  /// The maximum kilobits per second of a QoS bandwidth limit rule. Changing this updates the
  /// maximum kilobits per second of the existing QoS bandwidth limit rule.
  late final pulumi.Output<int> maxKbps;
  /// The QoS policy reference. Changing this creates a new QoS bandwidth limit rule.
  late final pulumi.Output<String> qosPolicyId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron QoS bandwidth limit rule. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new QoS bandwidth limit rule.
  late final pulumi.Output<String> region;

  /// Creates a new [QosBandwidthLimitRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QosBandwidthLimitRule]. {@macro pulumi_networking_qos_bandwidth_limit_rule_qos_bandwidth_limit_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QosBandwidthLimitRule(
    String name, {
    QosBandwidthLimitRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/qosBandwidthLimitRule:QosBandwidthLimitRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    direction = registerOutput<String?>('direction');
    maxBurstKbps = registerOutput<int?>('maxBurstKbps');
    maxKbps = registerOutput<int>('maxKbps');
    qosPolicyId = registerOutput<String>('qosPolicyId');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [QosBandwidthLimitRule] resource's state with the given [name] and [id].
  static QosBandwidthLimitRule get(
    String name,
    pulumi.Input<String> id, {
    QosBandwidthLimitRuleState? state,
  }) {
    return QosBandwidthLimitRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  QosBandwidthLimitRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/qosBandwidthLimitRule:QosBandwidthLimitRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    direction = registerOutput<String?>('direction');
    maxBurstKbps = registerOutput<int?>('maxBurstKbps');
    maxKbps = registerOutput<int>('maxKbps');
    qosPolicyId = registerOutput<String>('qosPolicyId');
    region = registerOutput<String>('region');
  }
}
