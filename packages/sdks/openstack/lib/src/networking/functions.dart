import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_scope_args.dart';
import 'get_address_scope_result.dart';
import 'get_floating_ip_args.dart';
import 'get_floating_ip_result.dart';
import 'get_network_args.dart';
import 'get_network_result.dart';
import 'get_port_args.dart';
import 'get_port_ids_args.dart';
import 'get_port_ids_result.dart';
import 'get_port_result.dart';
import 'get_qos_bandwidth_limit_rule_args.dart';
import 'get_qos_bandwidth_limit_rule_result.dart';
import 'get_qos_dscp_marking_rule_args.dart';
import 'get_qos_dscp_marking_rule_result.dart';
import 'get_qos_minimum_bandwidth_rule_args.dart';
import 'get_qos_minimum_bandwidth_rule_result.dart';
import 'get_qos_policy_args.dart';
import 'get_qos_policy_result.dart';
import 'get_quota_v2_args.dart';
import 'get_quota_v2_result.dart';
import 'get_router_args.dart';
import 'get_router_result.dart';
import 'get_sec_group_args.dart';
import 'get_sec_group_result.dart';
import 'get_segment_v2_args.dart';
import 'get_segment_v2_result.dart';
import 'get_subnet_args.dart';
import 'get_subnet_ids_v2_args.dart';
import 'get_subnet_ids_v2_result.dart';
import 'get_subnet_pool_args.dart';
import 'get_subnet_pool_result.dart';
import 'get_subnet_result.dart';
import 'get_trunk_args.dart';
import 'get_trunk_result.dart';

/// Use this data source to get the ID of an available OpenStack address-scope.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const publicAddressscope = openstack.networking.getAddressScope({
///     name: "public_addressscope",
///     shared: true,
///     ipVersion: 4,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// public_addressscope = openstack.networking.get_address_scope(name="public_addressscope",
///     shared=True,
///     ip_version=4)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var publicAddressscope = OpenStack.Networking.GetAddressScope.Invoke(new()
///     {
///         Name = "public_addressscope",
///         Shared = true,
///         IpVersion = 4,
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
/// 		_, err := networking.LookupAddressScope(ctx, &networking.LookupAddressScopeArgs{
/// 			Name:      pulumi.StringRef("public_addressscope"),
/// 			Shared:    pulumi.BoolRef(true),
/// 			IpVersion: pulumi.IntRef(4),
/// 		}, nil)
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
/// import com.pulumi.openstack.networking.NetworkingFunctions;
/// import com.pulumi.openstack.networking.inputs.GetAddressScopeArgs;
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
///         final var publicAddressscope = NetworkingFunctions.getAddressScope(GetAddressScopeArgs.builder()
///             .name("public_addressscope")
///             .shared(true)
///             .ipVersion(4)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   publicAddressscope:
///     fn::invoke:
///       function: openstack:networking:getAddressScope
///       arguments:
///         name: public_addressscope
///         shared: true
///         ipVersion: 4
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networking_get_address_scope_get_address_scope_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAddressScopeResult> getAddressScope(
  GetAddressScopeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:networking/getAddressScope:getAddressScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressScopeResult.fromMap(result);
}

/// Use this data source to get the ID of an available OpenStack floating IP.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const floatingip1 = openstack.networking.getFloatingIp({
///     address: "192.168.0.4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// floatingip1 = openstack.networking.get_floating_ip(address="192.168.0.4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var floatingip1 = OpenStack.Networking.GetFloatingIp.Invoke(new()
///     {
///         Address = "192.168.0.4",
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
/// 		_, err := networking.LookupFloatingIp(ctx, &networking.LookupFloatingIpArgs{
/// 			Address: pulumi.StringRef("192.168.0.4"),
/// 		}, nil)
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
/// import com.pulumi.openstack.networking.NetworkingFunctions;
/// import com.pulumi.openstack.networking.inputs.GetFloatingIpArgs;
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
///         final var floatingip1 = NetworkingFunctions.getFloatingIp(GetFloatingIpArgs.builder()
///             .address("192.168.0.4")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   floatingip1:
///     fn::invoke:
///       function: openstack:networking:getFloatingIp
///       arguments:
///         address: 192.168.0.4
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networking_get_floating_ip_get_floating_ip_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFloatingIpResult> getFloatingIp(
  GetFloatingIpArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:networking/getFloatingIp:getFloatingIp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFloatingIpResult.fromMap(result);
}

/// Use this data source to get the ID of an available OpenStack network.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const network = openstack.networking.getNetwork({
///     name: "tf_test_network",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// network = openstack.networking.get_network(name="tf_test_network")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network = OpenStack.Networking.GetNetwork.Invoke(new()
///     {
///         Name = "tf_test_network",
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
/// 		_, err := networking.LookupNetwork(ctx, &networking.LookupNetworkArgs{
/// 			Name: pulumi.StringRef("tf_test_network"),
/// 		}, nil)
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
/// import com.pulumi.openstack.networking.NetworkingFunctions;
/// import com.pulumi.openstack.networking.inputs.GetNetworkArgs;
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
///         final var network = NetworkingFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("tf_test_network")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   network:
///     fn::invoke:
///       function: openstack:networking:getNetwork
///       arguments:
///         name: tf_test_network
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networking_get_network_get_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkResult> getNetwork(
  GetNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:networking/getNetwork:getNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkResult.fromMap(result);
}

/// Use this data source to get the ID of an available OpenStack port.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const port1 = openstack.networking.getPort({
///     name: "port_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// port1 = openstack.networking.get_port(name="port_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var port1 = OpenStack.Networking.GetPort.Invoke(new()
///     {
///         Name = "port_1",
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
/// 		_, err := networking.LookupPort(ctx, &networking.LookupPortArgs{
/// 			Name: pulumi.StringRef("port_1"),
/// 		}, nil)
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
/// import com.pulumi.openstack.networking.NetworkingFunctions;
/// import com.pulumi.openstack.networking.inputs.GetPortArgs;
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
///         final var port1 = NetworkingFunctions.getPort(GetPortArgs.builder()
///             .name("port_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   port1:
///     fn::invoke:
///       function: openstack:networking:getPort
///       arguments:
///         name: port_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networking_get_port_get_port_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPortResult> getPort(
  GetPortArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:networking/getPort:getPort',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPortResult.fromMap(result);
}

/// Use this data source to get a list of Openstack Port IDs matching the
/// specified criteria.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const ports = openstack.networking.getPortIds({
///     name: "port",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// ports = openstack.networking.get_port_ids(name="port")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ports = OpenStack.Networking.GetPortIds.Invoke(new()
///     {
///         Name = "port",
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
/// 		_, err := networking.GetPortIds(ctx, &networking.GetPortIdsArgs{
/// 			Name: pulumi.StringRef("port"),
/// 		}, nil)
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
/// import com.pulumi.openstack.networking.NetworkingFunctions;
/// import com.pulumi.openstack.networking.inputs.GetPortIdsArgs;
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
///         final var ports = NetworkingFunctions.getPortIds(GetPortIdsArgs.builder()
///             .name("port")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ports:
///     fn::invoke:
///       function: openstack:networking:getPortIds
///       arguments:
///         name: port
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networking_get_port_ids_get_port_ids_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPortIdsResult> getPortIds(
  GetPortIdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:networking/getPortIds:getPortIds',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPortIdsResult.fromMap(result);
}

/// Use this data source to get the ID of an available OpenStack QoS bandwidth limit rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const qosBandwidthLimitRule1 = openstack.networking.getQosBandwidthLimitRule({
///     maxKbps: 300,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// qos_bandwidth_limit_rule1 = openstack.networking.get_qos_bandwidth_limit_rule(max_kbps=300)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var qosBandwidthLimitRule1 = OpenStack.Networking.GetQosBandwidthLimitRule.Invoke(new()
///     {
///         MaxKbps = 300,
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
/// 		_, err := networking.LookupQosBandwidthLimitRule(ctx, &networking.LookupQosBandwidthLimitRuleArgs{
/// 			MaxKbps: pulumi.IntRef(300),
/// 		}, nil)
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
/// import com.pulumi.openstack.networking.NetworkingFunctions;
/// import com.pulumi.openstack.networking.inputs.GetQosBandwidthLimitRuleArgs;
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
///         final var qosBandwidthLimitRule1 = NetworkingFunctions.getQosBandwidthLimitRule(GetQosBandwidthLimitRuleArgs.builder()
///             .maxKbps(300)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   qosBandwidthLimitRule1:
///     fn::invoke:
///       function: openstack:networking:getQosBandwidthLimitRule
///       arguments:
///         maxKbps: 300
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networking_get_qos_bandwidth_limit_rule_get_qos_bandwidth_limit_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQosBandwidthLimitRuleResult> getQosBandwidthLimitRule(
  GetQosBandwidthLimitRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:networking/getQosBandwidthLimitRule:getQosBandwidthLimitRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQosBandwidthLimitRuleResult.fromMap(result);
}

/// Use this data source to get the ID of an available OpenStack QoS DSCP marking rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const qosDscpMarkingRule1 = openstack.networking.getQosDscpMarkingRule({
///     dscpMark: 26,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// qos_dscp_marking_rule1 = openstack.networking.get_qos_dscp_marking_rule(dscp_mark=26)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var qosDscpMarkingRule1 = OpenStack.Networking.GetQosDscpMarkingRule.Invoke(new()
///     {
///         DscpMark = 26,
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
/// 		_, err := networking.LookupQosDscpMarkingRule(ctx, &networking.LookupQosDscpMarkingRuleArgs{
/// 			DscpMark: pulumi.IntRef(26),
/// 		}, nil)
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
/// import com.pulumi.openstack.networking.NetworkingFunctions;
/// import com.pulumi.openstack.networking.inputs.GetQosDscpMarkingRuleArgs;
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
///         final var qosDscpMarkingRule1 = NetworkingFunctions.getQosDscpMarkingRule(GetQosDscpMarkingRuleArgs.builder()
///             .dscpMark(26)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   qosDscpMarkingRule1:
///     fn::invoke:
///       function: openstack:networking:getQosDscpMarkingRule
///       arguments:
///         dscpMark: 26
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networking_get_qos_dscp_marking_rule_get_qos_dscp_marking_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQosDscpMarkingRuleResult> getQosDscpMarkingRule(
  GetQosDscpMarkingRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:networking/getQosDscpMarkingRule:getQosDscpMarkingRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQosDscpMarkingRuleResult.fromMap(result);
}

/// Use this data source to get the ID of an available OpenStack QoS minimum bandwidth rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const qosMinBwRule1 = openstack.networking.getQosMinimumBandwidthRule({
///     minKbps: 2000,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// qos_min_bw_rule1 = openstack.networking.get_qos_minimum_bandwidth_rule(min_kbps=2000)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var qosMinBwRule1 = OpenStack.Networking.GetQosMinimumBandwidthRule.Invoke(new()
///     {
///         MinKbps = 2000,
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
/// 		_, err := networking.LookupQosMinimumBandwidthRule(ctx, &networking.LookupQosMinimumBandwidthRuleArgs{
/// 			MinKbps: pulumi.IntRef(2000),
/// 		}, nil)
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
/// import com.pulumi.openstack.networking.NetworkingFunctions;
/// import com.pulumi.openstack.networking.inputs.GetQosMinimumBandwidthRuleArgs;
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
///         final var qosMinBwRule1 = NetworkingFunctions.getQosMinimumBandwidthRule(GetQosMinimumBandwidthRuleArgs.builder()
///             .minKbps(2000)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   qosMinBwRule1:
///     fn::invoke:
///       function: openstack:networking:getQosMinimumBandwidthRule
///       arguments:
///         minKbps: 2000
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networking_get_qos_minimum_bandwidth_rule_get_qos_minimum_bandwidth_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQosMinimumBandwidthRuleResult> getQosMinimumBandwidthRule(
  GetQosMinimumBandwidthRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:networking/getQosMinimumBandwidthRule:getQosMinimumBandwidthRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQosMinimumBandwidthRuleResult.fromMap(result);
}

/// Use this data source to get the ID of an available OpenStack QoS policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const qosPolicy1 = openstack.networking.getQosPolicy({
///     name: "qos_policy_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// qos_policy1 = openstack.networking.get_qos_policy(name="qos_policy_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var qosPolicy1 = OpenStack.Networking.GetQosPolicy.Invoke(new()
///     {
///         Name = "qos_policy_1",
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
/// 		_, err := networking.LookupQosPolicy(ctx, &networking.LookupQosPolicyArgs{
/// 			Name: pulumi.StringRef("qos_policy_1"),
/// 		}, nil)
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
/// import com.pulumi.openstack.networking.NetworkingFunctions;
/// import com.pulumi.openstack.networking.inputs.GetQosPolicyArgs;
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
///         final var qosPolicy1 = NetworkingFunctions.getQosPolicy(GetQosPolicyArgs.builder()
///             .name("qos_policy_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   qosPolicy1:
///     fn::invoke:
///       function: openstack:networking:getQosPolicy
///       arguments:
///         name: qos_policy_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networking_get_qos_policy_get_qos_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQosPolicyResult> getQosPolicy(
  GetQosPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:networking/getQosPolicy:getQosPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQosPolicyResult.fromMap(result);
}

/// Use this data source to get the networking quota of an OpenStack project.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const quota = openstack.networking.getQuotaV2({
///     projectId: "2e367a3d29f94fd988e6ec54e305ec9d",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// quota = openstack.networking.get_quota_v2(project_id="2e367a3d29f94fd988e6ec54e305ec9d")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var quota = OpenStack.Networking.GetQuotaV2.Invoke(new()
///     {
///         ProjectId = "2e367a3d29f94fd988e6ec54e305ec9d",
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
/// 		_, err := networking.LookupQuotaV2(ctx, &networking.LookupQuotaV2Args{
/// 			ProjectId: "2e367a3d29f94fd988e6ec54e305ec9d",
/// 		}, nil)
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
/// import com.pulumi.openstack.networking.NetworkingFunctions;
/// import com.pulumi.openstack.networking.inputs.GetQuotaV2Args;
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
///         final var quota = NetworkingFunctions.getQuotaV2(GetQuotaV2Args.builder()
///             .projectId("2e367a3d29f94fd988e6ec54e305ec9d")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   quota:
///     fn::invoke:
///       function: openstack:networking:getQuotaV2
///       arguments:
///         projectId: 2e367a3d29f94fd988e6ec54e305ec9d
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networking_get_quota_v2_get_quota_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQuotaV2Result> getQuotaV2(
  GetQuotaV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:networking/getQuotaV2:getQuotaV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQuotaV2Result.fromMap(result);
}

/// Use this data source to get the ID of an available OpenStack router.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const router = openstack.networking.getRouter({
///     name: "router_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// router = openstack.networking.get_router(name="router_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var router = OpenStack.Networking.GetRouter.Invoke(new()
///     {
///         Name = "router_1",
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
/// 		_, err := networking.LookupRouter(ctx, &networking.LookupRouterArgs{
/// 			Name: pulumi.StringRef("router_1"),
/// 		}, nil)
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
/// import com.pulumi.openstack.networking.NetworkingFunctions;
/// import com.pulumi.openstack.networking.inputs.GetRouterArgs;
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
///         final var router = NetworkingFunctions.getRouter(GetRouterArgs.builder()
///             .name("router_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   router:
///     fn::invoke:
///       function: openstack:networking:getRouter
///       arguments:
///         name: router_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networking_get_router_get_router_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouterResult> getRouter(
  GetRouterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:networking/getRouter:getRouter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouterResult.fromMap(result);
}

/// Use this data source to get the ID of an available OpenStack security group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const secgroup = openstack.networking.getSecGroup({
///     name: "tf_test_secgroup",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// secgroup = openstack.networking.get_sec_group(name="tf_test_secgroup")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secgroup = OpenStack.Networking.GetSecGroup.Invoke(new()
///     {
///         Name = "tf_test_secgroup",
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
/// 		_, err := networking.LookupSecGroup(ctx, &networking.LookupSecGroupArgs{
/// 			Name: pulumi.StringRef("tf_test_secgroup"),
/// 		}, nil)
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
/// import com.pulumi.openstack.networking.NetworkingFunctions;
/// import com.pulumi.openstack.networking.inputs.GetSecGroupArgs;
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
///         final var secgroup = NetworkingFunctions.getSecGroup(GetSecGroupArgs.builder()
///             .name("tf_test_secgroup")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   secgroup:
///     fn::invoke:
///       function: openstack:networking:getSecGroup
///       arguments:
///         name: tf_test_secgroup
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networking_get_sec_group_get_sec_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecGroupResult> getSecGroup(
  GetSecGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:networking/getSecGroup:getSecGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecGroupResult.fromMap(result);
}

/// Use this data source to get the ID of an available OpenStack network.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const network = openstack.networking.getSegmentV2({
///     name: "tf_test_segment",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// network = openstack.networking.get_segment_v2(name="tf_test_segment")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network = OpenStack.Networking.GetSegmentV2.Invoke(new()
///     {
///         Name = "tf_test_segment",
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
/// 		_, err := networking.LookupSegmentV2(ctx, &networking.LookupSegmentV2Args{
/// 			Name: pulumi.StringRef("tf_test_segment"),
/// 		}, nil)
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
/// import com.pulumi.openstack.networking.NetworkingFunctions;
/// import com.pulumi.openstack.networking.inputs.GetSegmentV2Args;
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
///         final var network = NetworkingFunctions.getSegmentV2(GetSegmentV2Args.builder()
///             .name("tf_test_segment")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   network:
///     fn::invoke:
///       function: openstack:networking:getSegmentV2
///       arguments:
///         name: tf_test_segment
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networking_get_segment_v2_get_segment_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSegmentV2Result> getSegmentV2(
  GetSegmentV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:networking/getSegmentV2:getSegmentV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSegmentV2Result.fromMap(result);
}

/// Use this data source to get the ID of an available OpenStack subnet.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const subnet1 = openstack.networking.getSubnet({
///     name: "subnet_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// subnet1 = openstack.networking.get_subnet(name="subnet_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subnet1 = OpenStack.Networking.GetSubnet.Invoke(new()
///     {
///         Name = "subnet_1",
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
/// 		_, err := networking.LookupSubnet(ctx, &networking.LookupSubnetArgs{
/// 			Name: pulumi.StringRef("subnet_1"),
/// 		}, nil)
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
/// import com.pulumi.openstack.networking.NetworkingFunctions;
/// import com.pulumi.openstack.networking.inputs.GetSubnetArgs;
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
///         final var subnet1 = NetworkingFunctions.getSubnet(GetSubnetArgs.builder()
///             .name("subnet_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   subnet1:
///     fn::invoke:
///       function: openstack:networking:getSubnet
///       arguments:
///         name: subnet_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networking_get_subnet_get_subnet_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetResult> getSubnet(
  GetSubnetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:networking/getSubnet:getSubnet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetResult.fromMap(result);
}

/// Use this data source to get a list of Openstack Subnet IDs matching the
/// specified criteria.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const subnets = openstack.networking.getSubnetIdsV2({
///     nameRegex: "public",
///     tags: ["public"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// subnets = openstack.networking.get_subnet_ids_v2(name_regex="public",
///     tags=["public"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subnets = OpenStack.Networking.GetSubnetIdsV2.Invoke(new()
///     {
///         NameRegex = "public",
///         Tags = new[]
///         {
///             "public",
///         },
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
/// 		_, err := networking.GetSubnetIdsV2(ctx, &networking.GetSubnetIdsV2Args{
/// 			NameRegex: pulumi.StringRef("public"),
/// 			Tags: []string{
/// 				"public",
/// 			},
/// 		}, nil)
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
/// import com.pulumi.openstack.networking.NetworkingFunctions;
/// import com.pulumi.openstack.networking.inputs.GetSubnetIdsV2Args;
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
///         final var subnets = NetworkingFunctions.getSubnetIdsV2(GetSubnetIdsV2Args.builder()
///             .nameRegex("public")
///             .tags("public")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   subnets:
///     fn::invoke:
///       function: openstack:networking:getSubnetIdsV2
///       arguments:
///         nameRegex: public
///         tags:
///           - public
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networking_get_subnet_ids_v2_get_subnet_ids_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetIdsV2Result> getSubnetIdsV2(
  GetSubnetIdsV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:networking/getSubnetIdsV2:getSubnetIdsV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetIdsV2Result.fromMap(result);
}

/// Use this data source to get the ID of an available OpenStack subnetpool.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const subnetpool1 = openstack.networking.getSubnetPool({
///     name: "subnetpool_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// subnetpool1 = openstack.networking.get_subnet_pool(name="subnetpool_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subnetpool1 = OpenStack.Networking.GetSubnetPool.Invoke(new()
///     {
///         Name = "subnetpool_1",
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
/// 		_, err := networking.LookupSubnetPool(ctx, &networking.LookupSubnetPoolArgs{
/// 			Name: pulumi.StringRef("subnetpool_1"),
/// 		}, nil)
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
/// import com.pulumi.openstack.networking.NetworkingFunctions;
/// import com.pulumi.openstack.networking.inputs.GetSubnetPoolArgs;
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
///         final var subnetpool1 = NetworkingFunctions.getSubnetPool(GetSubnetPoolArgs.builder()
///             .name("subnetpool_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   subnetpool1:
///     fn::invoke:
///       function: openstack:networking:getSubnetPool
///       arguments:
///         name: subnetpool_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networking_get_subnet_pool_get_subnet_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetPoolResult> getSubnetPool(
  GetSubnetPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:networking/getSubnetPool:getSubnetPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetPoolResult.fromMap(result);
}

/// Use this data source to get the ID of an available OpenStack trunk.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const trunk1 = openstack.networking.getTrunk({
///     name: "trunk_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// trunk1 = openstack.networking.get_trunk(name="trunk_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var trunk1 = OpenStack.Networking.GetTrunk.Invoke(new()
///     {
///         Name = "trunk_1",
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
/// 		_, err := networking.LookupTrunk(ctx, &networking.LookupTrunkArgs{
/// 			Name: pulumi.StringRef("trunk_1"),
/// 		}, nil)
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
/// import com.pulumi.openstack.networking.NetworkingFunctions;
/// import com.pulumi.openstack.networking.inputs.GetTrunkArgs;
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
///         final var trunk1 = NetworkingFunctions.getTrunk(GetTrunkArgs.builder()
///             .name("trunk_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   trunk1:
///     fn::invoke:
///       function: openstack:networking:getTrunk
///       arguments:
///         name: trunk_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networking_get_trunk_get_trunk_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrunkResult> getTrunk(
  GetTrunkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:networking/getTrunk:getTrunk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrunkResult.fromMap(result);
}
