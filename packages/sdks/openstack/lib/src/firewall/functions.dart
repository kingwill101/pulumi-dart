import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_v2_args.dart';
import 'get_group_v2_result.dart';
import 'get_policy_v2_args.dart';
import 'get_policy_v2_result.dart';
import 'get_rule_v2_args.dart';
import 'get_rule_v2_result.dart';

/// Use this data source to get information of an available OpenStack firewall group v2.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const group = openstack.firewall.getGroupV2({
///     name: "tf_test_group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// group = openstack.firewall.get_group_v2(name="tf_test_group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @group = OpenStack.Firewall.GetGroupV2.Invoke(new()
///     {
///         Name = "tf_test_group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/firewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := firewall.LookupGroupV2(ctx, &firewall.LookupGroupV2Args{
/// 			Name: pulumi.StringRef("tf_test_group"),
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
/// import com.pulumi.openstack.firewall.FirewallFunctions;
/// import com.pulumi.openstack.firewall.inputs.GetGroupV2Args;
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
///         final var group = FirewallFunctions.getGroupV2(GetGroupV2Args.builder()
///             .name("tf_test_group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   group:
///     fn::invoke:
///       function: openstack:firewall:getGroupV2
///       arguments:
///         name: tf_test_group
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_firewall_get_group_v2_get_group_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupV2Result> getGroupV2(
  GetGroupV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:firewall/getGroupV2:getGroupV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupV2Result.fromMap(result);
}

/// Use this data source to get information of an available OpenStack firewall policy v2.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const policy = openstack.firewall.getPolicyV2({
///     name: "tf_test_policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// policy = openstack.firewall.get_policy_v2(name="tf_test_policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = OpenStack.Firewall.GetPolicyV2.Invoke(new()
///     {
///         Name = "tf_test_policy",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/firewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := firewall.LookupPolicyV2(ctx, &firewall.LookupPolicyV2Args{
/// 			Name: pulumi.StringRef("tf_test_policy"),
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
/// import com.pulumi.openstack.firewall.FirewallFunctions;
/// import com.pulumi.openstack.firewall.inputs.GetPolicyV2Args;
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
///         final var policy = FirewallFunctions.getPolicyV2(GetPolicyV2Args.builder()
///             .name("tf_test_policy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: openstack:firewall:getPolicyV2
///       arguments:
///         name: tf_test_policy
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_firewall_get_policy_v2_get_policy_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyV2Result> getPolicyV2(
  GetPolicyV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:firewall/getPolicyV2:getPolicyV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyV2Result.fromMap(result);
}

/// Use this data source to get information of an available OpenStack firewall rule v2.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const rule = openstack.firewall.getRuleV2({
///     name: "tf_test_rule",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// rule = openstack.firewall.get_rule_v2(name="tf_test_rule")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rule = OpenStack.Firewall.GetRuleV2.Invoke(new()
///     {
///         Name = "tf_test_rule",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/firewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := firewall.LookupRuleV2(ctx, &firewall.LookupRuleV2Args{
/// 			Name: pulumi.StringRef("tf_test_rule"),
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
/// import com.pulumi.openstack.firewall.FirewallFunctions;
/// import com.pulumi.openstack.firewall.inputs.GetRuleV2Args;
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
///         final var rule = FirewallFunctions.getRuleV2(GetRuleV2Args.builder()
///             .name("tf_test_rule")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   rule:
///     fn::invoke:
///       function: openstack:firewall:getRuleV2
///       arguments:
///         name: tf_test_rule
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_firewall_get_rule_v2_get_rule_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRuleV2Result> getRuleV2(
  GetRuleV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:firewall/getRuleV2:getRuleV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuleV2Result.fromMap(result);
}
