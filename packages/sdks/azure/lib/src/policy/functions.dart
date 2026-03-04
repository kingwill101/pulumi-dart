import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_assignment_args.dart';
import 'get_policy_assignment_result.dart';
import 'get_policy_defintion_args.dart';
import 'get_policy_defintion_built_in_args.dart';
import 'get_policy_defintion_built_in_result.dart';
import 'get_policy_defintion_result.dart';
import 'get_policy_set_definition_args.dart';
import 'get_policy_set_definition_result.dart';
import 'get_virtual_machine_configuration_assignment_args.dart';
import 'get_virtual_machine_configuration_assignment_result.dart';

/// Use this data source to access information about an existing Policy Assignment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.policy.getPolicyAssignment({
///     name: "existing",
///     scopeId: exampleAzurermResourceGroup.id,
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.policy.get_policy_assignment(name="existing",
///     scope_id=example_azurerm_resource_group["id"])
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Policy.GetPolicyAssignment.Invoke(new()
///     {
///         Name = "existing",
///         ScopeId = exampleAzurermResourceGroup.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getPolicyAssignmentResult => getPolicyAssignmentResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/policy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := policy.GetPolicyAssignment(ctx, &policy.GetPolicyAssignmentArgs{
/// 			Name:    "existing",
/// 			ScopeId: exampleAzurermResourceGroup.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.policy.PolicyFunctions;
/// import com.pulumi.azure.policy.inputs.GetPolicyAssignmentArgs;
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
///         final var example = PolicyFunctions.getPolicyAssignment(GetPolicyAssignmentArgs.builder()
///             .name("existing")
///             .scopeId(exampleAzurermResourceGroup.id())
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:policy:getPolicyAssignment
///       arguments:
///         name: existing
///         scopeId: ${exampleAzurermResourceGroup.id}
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Authorization` - 2022-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_policy_get_policy_assignment_get_policy_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyAssignmentResult> getPolicyAssignment(
  GetPolicyAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:policy/getPolicyAssignment:getPolicyAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyAssignmentResult.fromMap(result);
}

/// Use this data source to access information about a Policy Definition, both custom and built in. Retrieves Policy Definitions from your current subscription by default.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.policy.getPolicyDefintion({
///     displayName: "Allowed resource types",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.policy.get_policy_defintion(display_name="Allowed resource types")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Policy.GetPolicyDefintion.Invoke(new()
///     {
///         DisplayName = "Allowed resource types",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getPolicyDefintionResult => getPolicyDefintionResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/policy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := policy.GetPolicyDefintion(ctx, &policy.GetPolicyDefintionArgs{
/// 			DisplayName: pulumi.StringRef("Allowed resource types"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.policy.PolicyFunctions;
/// import com.pulumi.azure.policy.inputs.GetPolicyDefintionArgs;
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
///         final var example = PolicyFunctions.getPolicyDefintion(GetPolicyDefintionArgs.builder()
///             .displayName("Allowed resource types")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:policy:getPolicyDefintion
///       arguments:
///         displayName: Allowed resource types
/// outputs:
///   id: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_policy_get_policy_defintion_get_policy_defintion_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyDefintionResult> getPolicyDefintion(
  GetPolicyDefintionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:policy/getPolicyDefintion:getPolicyDefintion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyDefintionResult.fromMap(result);
}

/// Use this data source to access information about a Built-In Policy Definition. Retrieves Policy Definitions from your current subscription by default.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.policy.getPolicyDefintionBuiltIn({
///     displayName: "Allowed resource types",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.policy.get_policy_defintion_built_in(display_name="Allowed resource types")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Policy.GetPolicyDefintionBuiltIn.Invoke(new()
///     {
///         DisplayName = "Allowed resource types",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getPolicyDefintionBuiltInResult => getPolicyDefintionBuiltInResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/policy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := policy.GetPolicyDefintionBuiltIn(ctx, &policy.GetPolicyDefintionBuiltInArgs{
/// 			DisplayName: pulumi.StringRef("Allowed resource types"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.policy.PolicyFunctions;
/// import com.pulumi.azure.policy.inputs.GetPolicyDefintionBuiltInArgs;
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
///         final var example = PolicyFunctions.getPolicyDefintionBuiltIn(GetPolicyDefintionBuiltInArgs.builder()
///             .displayName("Allowed resource types")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:policy:getPolicyDefintionBuiltIn
///       arguments:
///         displayName: Allowed resource types
/// outputs:
///   id: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_policy_get_policy_defintion_built_in_get_policy_defintion_built_in_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyDefintionBuiltInResult> getPolicyDefintionBuiltIn(
  GetPolicyDefintionBuiltInArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:policy/getPolicyDefintionBuiltIn:getPolicyDefintionBuiltIn',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyDefintionBuiltInResult.fromMap(result);
}

/// Use this data source to access information about an existing Policy Set Definition.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.policy.getPolicySetDefinition({
///     displayName: "Policy Set Definition Example",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.policy.get_policy_set_definition(display_name="Policy Set Definition Example")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Policy.GetPolicySetDefinition.Invoke(new()
///     {
///         DisplayName = "Policy Set Definition Example",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getPolicySetDefinitionResult => getPolicySetDefinitionResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/policy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := policy.LookupPolicySetDefinition(ctx, &policy.LookupPolicySetDefinitionArgs{
/// 			DisplayName: pulumi.StringRef("Policy Set Definition Example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.policy.PolicyFunctions;
/// import com.pulumi.azure.policy.inputs.GetPolicySetDefinitionArgs;
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
///         final var example = PolicyFunctions.getPolicySetDefinition(GetPolicySetDefinitionArgs.builder()
///             .displayName("Policy Set Definition Example")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:policy:getPolicySetDefinition
///       arguments:
///         displayName: Policy Set Definition Example
/// outputs:
///   id: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_policy_get_policy_set_definition_get_policy_set_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicySetDefinitionResult> getPolicySetDefinition(
  GetPolicySetDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:policy/getPolicySetDefinition:getPolicySetDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicySetDefinitionResult.fromMap(result);
}

/// Use this data source to access information about an existing Guest Configuration Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.policy.getVirtualMachineConfigurationAssignment({
///     name: "AzureWindowsBaseline",
///     resourceGroupName: "example-RG",
///     virtualMachineName: "example-vm",
/// });
/// export const complianceStatus = example.then(example => example.complianceStatus);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.policy.get_virtual_machine_configuration_assignment(name="AzureWindowsBaseline",
///     resource_group_name="example-RG",
///     virtual_machine_name="example-vm")
/// pulumi.export("complianceStatus", example.compliance_status)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Policy.GetVirtualMachineConfigurationAssignment.Invoke(new()
///     {
///         Name = "AzureWindowsBaseline",
///         ResourceGroupName = "example-RG",
///         VirtualMachineName = "example-vm",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["complianceStatus"] = example.Apply(getVirtualMachineConfigurationAssignmentResult => getVirtualMachineConfigurationAssignmentResult.ComplianceStatus),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/policy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := policy.LookupVirtualMachineConfigurationAssignment(ctx, &policy.LookupVirtualMachineConfigurationAssignmentArgs{
/// 			Name:               "AzureWindowsBaseline",
/// 			ResourceGroupName:  "example-RG",
/// 			VirtualMachineName: "example-vm",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("complianceStatus", example.ComplianceStatus)
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
/// import com.pulumi.azure.policy.PolicyFunctions;
/// import com.pulumi.azure.policy.inputs.GetVirtualMachineConfigurationAssignmentArgs;
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
///         final var example = PolicyFunctions.getVirtualMachineConfigurationAssignment(GetVirtualMachineConfigurationAssignmentArgs.builder()
///             .name("AzureWindowsBaseline")
///             .resourceGroupName("example-RG")
///             .virtualMachineName("example-vm")
///             .build());
///
///         ctx.export("complianceStatus", example.complianceStatus());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:policy:getVirtualMachineConfigurationAssignment
///       arguments:
///         name: AzureWindowsBaseline
///         resourceGroupName: example-RG
///         virtualMachineName: example-vm
/// outputs:
///   complianceStatus: ${example.complianceStatus}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2024-04-05
/// [args] Arguments passed to this invoke. {@macro pulumi_policy_get_virtual_machine_configuration_assignment_get_virtual_machine_configuration_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineConfigurationAssignmentResult>
getVirtualMachineConfigurationAssignment(
  GetVirtualMachineConfigurationAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:policy/getVirtualMachineConfigurationAssignment:getVirtualMachineConfigurationAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineConfigurationAssignmentResult.fromMap(result);
}
