import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_fw_group_v2_args.dart';
import 'get_fw_group_v2_result.dart';
import 'get_fw_policy_v2_args.dart';
import 'get_fw_policy_v2_result.dart';
import 'get_fw_rule_v2_args.dart';
import 'get_fw_rule_v2_result.dart';
import 'workflow_workflow_v2_args.dart';
import 'workflow_workflow_v2_result.dart';

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
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_fw_group_v2_get_fw_group_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFwGroupV2Result> getFwGroupV2(
  GetFwGroupV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:index/getFwGroupV2:getFwGroupV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFwGroupV2Result.fromMap(result);
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
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_fw_policy_v2_get_fw_policy_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFwPolicyV2Result> getFwPolicyV2(
  GetFwPolicyV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:index/getFwPolicyV2:getFwPolicyV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFwPolicyV2Result.fromMap(result);
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
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_fw_rule_v2_get_fw_rule_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFwRuleV2Result> getFwRuleV2(
  GetFwRuleV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:index/getFwRuleV2:getFwRuleV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFwRuleV2Result.fromMap(result);
}

/// Use this data source to get the ID of an available workflow.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const workflow1 = openstack.WorkflowWorkflowV2({
///     name: "workflow_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// workflow1 = openstack.workflow_workflow_v2(name="workflow_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workflow1 = OpenStack.WorkflowWorkflowV2.Invoke(new()
///     {
///         Name = "workflow_1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := openstack.WorkflowWorkflowV2(ctx, &openstack.WorkflowWorkflowV2Args{
/// 			Name: pulumi.StringRef("workflow_1"),
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
/// import com.pulumi.openstack.OpenstackFunctions;
/// import com.pulumi.openstack.inputs.WorkflowWorkflowV2Args;
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
///         final var workflow1 = OpenstackFunctions.WorkflowWorkflowV2(WorkflowWorkflowV2Args.builder()
///             .name("workflow_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   workflow1:
///     fn::invoke:
///       function: openstack:WorkflowWorkflowV2
///       arguments:
///         name: workflow_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_workflow_workflow_v2_workflow_workflow_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<WorkflowWorkflowV2Result> workflowWorkflowV2(
  WorkflowWorkflowV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:index/workflowWorkflowV2:WorkflowWorkflowV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return WorkflowWorkflowV2Result.fromMap(result);
}
