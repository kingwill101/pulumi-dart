import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_availability_set_args.dart';
import 'get_availability_set_result.dart';
import 'get_bastion_host_args.dart';
import 'get_bastion_host_result.dart';
import 'get_confidential_ledger_args.dart';
import 'get_confidential_ledger_result.dart';
import 'get_dedicated_host_args.dart';
import 'get_dedicated_host_group_args.dart';
import 'get_dedicated_host_group_result.dart';
import 'get_dedicated_host_result.dart';
import 'get_disk_access_args.dart';
import 'get_disk_access_result.dart';
import 'get_disk_encryption_set_args.dart';
import 'get_disk_encryption_set_result.dart';
import 'get_image_args.dart';
import 'get_image_result.dart';
import 'get_images_args.dart';
import 'get_images_result.dart';
import 'get_managed_disk_args.dart';
import 'get_managed_disk_result.dart';
import 'get_managed_disks_args.dart';
import 'get_managed_disks_result.dart';
import 'get_orchestrated_virtual_machine_scale_set_args.dart';
import 'get_orchestrated_virtual_machine_scale_set_result.dart';
import 'get_platform_image_args.dart';
import 'get_platform_image_result.dart';
import 'get_shared_image_args.dart';
import 'get_shared_image_gallery_args.dart';
import 'get_shared_image_gallery_result.dart';
import 'get_shared_image_result.dart';
import 'get_shared_image_version_args.dart';
import 'get_shared_image_version_result.dart';
import 'get_shared_image_versions_args.dart';
import 'get_shared_image_versions_result.dart';
import 'get_snapshot_args.dart';
import 'get_snapshot_result.dart';
import 'get_ssh_public_key_args.dart';
import 'get_ssh_public_key_result.dart';
import 'get_virtual_machine_args.dart';
import 'get_virtual_machine_result.dart';
import 'get_virtual_machine_scale_set_args.dart';
import 'get_virtual_machine_scale_set_result.dart';

/// Use this data source to access information about an existing Availability Set.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.compute.getAvailabilitySet({
///     name: "tf-appsecuritygroup",
///     resourceGroupName: "my-resource-group",
/// });
/// export const availabilitySetId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.compute.get_availability_set(name="tf-appsecuritygroup",
///     resource_group_name="my-resource-group")
/// pulumi.export("availabilitySetId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Compute.GetAvailabilitySet.Invoke(new()
///     {
///         Name = "tf-appsecuritygroup",
///         ResourceGroupName = "my-resource-group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["availabilitySetId"] = example.Apply(getAvailabilitySetResult => getAvailabilitySetResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := compute.LookupAvailabilitySet(ctx, &compute.LookupAvailabilitySetArgs{
/// 			Name:              "tf-appsecuritygroup",
/// 			ResourceGroupName: "my-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("availabilitySetId", example.Id)
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetAvailabilitySetArgs;
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
///         final var example = ComputeFunctions.getAvailabilitySet(GetAvailabilitySetArgs.builder()
///             .name("tf-appsecuritygroup")
///             .resourceGroupName("my-resource-group")
///             .build());
///
///         ctx.export("availabilitySetId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:compute:getAvailabilitySet
///       arguments:
///         name: tf-appsecuritygroup
///         resourceGroupName: my-resource-group
/// outputs:
///   availabilitySetId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2024-03-01
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_availability_set_get_availability_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAvailabilitySetResult> getAvailabilitySet(
  GetAvailabilitySetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:compute/getAvailabilitySet:getAvailabilitySet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAvailabilitySetResult.fromMap(result);
}

/// Use this data source to access information about an existing Bastion Host.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.compute.getBastionHost({
///     name: "existing-bastion",
///     resourceGroupName: "existing-resources",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.compute.get_bastion_host(name="existing-bastion",
///     resource_group_name="existing-resources")
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
///     var example = Azure.Compute.GetBastionHost.Invoke(new()
///     {
///         Name = "existing-bastion",
///         ResourceGroupName = "existing-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getBastionHostResult => getBastionHostResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := compute.LookupBastionHost(ctx, &compute.LookupBastionHostArgs{
/// 			Name:              "existing-bastion",
/// 			ResourceGroupName: "existing-resources",
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetBastionHostArgs;
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
///         final var example = ComputeFunctions.getBastionHost(GetBastionHostArgs.builder()
///             .name("existing-bastion")
///             .resourceGroupName("existing-resources")
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
///       function: azure:compute:getBastionHost
///       arguments:
///         name: existing-bastion
///         resourceGroupName: existing-resources
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2024-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_bastion_host_get_bastion_host_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBastionHostResult> getBastionHost(
  GetBastionHostArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:compute/getBastionHost:getBastionHost',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBastionHostResult.fromMap(result);
}

/// Gets information about an existing Confidential Ledger.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.compute.getConfidentialLedger({
///     name: "example-ledger",
///     resourceGroupName: "example-resources",
/// });
/// export const ledgerEndpoint = current.then(current => current.ledgerEndpoint);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.compute.get_confidential_ledger(name="example-ledger",
///     resource_group_name="example-resources")
/// pulumi.export("ledgerEndpoint", current.ledger_endpoint)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Compute.GetConfidentialLedger.Invoke(new()
///     {
///         Name = "example-ledger",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ledgerEndpoint"] = current.Apply(getConfidentialLedgerResult => getConfidentialLedgerResult.LedgerEndpoint),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := compute.GetConfidentialLedger(ctx, &compute.GetConfidentialLedgerArgs{
/// 			Name:              "example-ledger",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ledgerEndpoint", current.LedgerEndpoint)
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetConfidentialLedgerArgs;
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
///         final var current = ComputeFunctions.getConfidentialLedger(GetConfidentialLedgerArgs.builder()
///             .name("example-ledger")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("ledgerEndpoint", current.ledgerEndpoint());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: azure:compute:getConfidentialLedger
///       arguments:
///         name: example-ledger
///         resourceGroupName: example-resources
/// outputs:
///   ledgerEndpoint: ${current.ledgerEndpoint}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ConfidentialLedger` - 2022-05-13
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_confidential_ledger_get_confidential_ledger_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfidentialLedgerResult> getConfidentialLedger(
  GetConfidentialLedgerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:compute/getConfidentialLedger:getConfidentialLedger',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfidentialLedgerResult.fromMap(result);
}

/// Use this data source to access information about an existing Dedicated Host.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.compute.getDedicatedHost({
///     name: "example-host",
///     dedicatedHostGroupName: "example-host-group",
///     resourceGroupName: "example-resources",
/// });
/// export const dedicatedHostId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.compute.get_dedicated_host(name="example-host",
///     dedicated_host_group_name="example-host-group",
///     resource_group_name="example-resources")
/// pulumi.export("dedicatedHostId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Compute.GetDedicatedHost.Invoke(new()
///     {
///         Name = "example-host",
///         DedicatedHostGroupName = "example-host-group",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dedicatedHostId"] = example.Apply(getDedicatedHostResult => getDedicatedHostResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := compute.LookupDedicatedHost(ctx, &compute.LookupDedicatedHostArgs{
/// 			Name:                   "example-host",
/// 			DedicatedHostGroupName: "example-host-group",
/// 			ResourceGroupName:      "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dedicatedHostId", example.Id)
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetDedicatedHostArgs;
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
///         final var example = ComputeFunctions.getDedicatedHost(GetDedicatedHostArgs.builder()
///             .name("example-host")
///             .dedicatedHostGroupName("example-host-group")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("dedicatedHostId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:compute:getDedicatedHost
///       arguments:
///         name: example-host
///         dedicatedHostGroupName: example-host-group
///         resourceGroupName: example-resources
/// outputs:
///   dedicatedHostId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2024-03-01
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_dedicated_host_get_dedicated_host_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDedicatedHostResult> getDedicatedHost(
  GetDedicatedHostArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:compute/getDedicatedHost:getDedicatedHost',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedHostResult.fromMap(result);
}

/// Use this data source to access information about an existing Dedicated Host Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.compute.getDedicatedHostGroup({
///     name: "example-dedicated-host-group",
///     resourceGroupName: "example-rg",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.compute.get_dedicated_host_group(name="example-dedicated-host-group",
///     resource_group_name="example-rg")
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
///     var example = Azure.Compute.GetDedicatedHostGroup.Invoke(new()
///     {
///         Name = "example-dedicated-host-group",
///         ResourceGroupName = "example-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getDedicatedHostGroupResult => getDedicatedHostGroupResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := compute.LookupDedicatedHostGroup(ctx, &compute.LookupDedicatedHostGroupArgs{
/// 			Name:              "example-dedicated-host-group",
/// 			ResourceGroupName: "example-rg",
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetDedicatedHostGroupArgs;
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
///         final var example = ComputeFunctions.getDedicatedHostGroup(GetDedicatedHostGroupArgs.builder()
///             .name("example-dedicated-host-group")
///             .resourceGroupName("example-rg")
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
///       function: azure:compute:getDedicatedHostGroup
///       arguments:
///         name: example-dedicated-host-group
///         resourceGroupName: example-rg
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2024-03-01
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_dedicated_host_group_get_dedicated_host_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDedicatedHostGroupResult> getDedicatedHostGroup(
  GetDedicatedHostGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:compute/getDedicatedHostGroup:getDedicatedHostGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedHostGroupResult.fromMap(result);
}

/// Use this data source to access information about an existing Disk Access.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.compute.getDiskAccess({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.compute.get_disk_access(name="existing",
///     resource_group_name="existing")
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
///     var example = Azure.Compute.GetDiskAccess.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getDiskAccessResult => getDiskAccessResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := compute.LookupDiskAccess(ctx, &compute.LookupDiskAccessArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetDiskAccessArgs;
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
///         final var example = ComputeFunctions.getDiskAccess(GetDiskAccessArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
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
///       function: azure:compute:getDiskAccess
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2022-03-02
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_disk_access_get_disk_access_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiskAccessResult> getDiskAccess(
  GetDiskAccessArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:compute/getDiskAccess:getDiskAccess',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskAccessResult.fromMap(result);
}

/// Use this data source to access information about an existing Disk Encryption Set.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const existing = azure.compute.getDiskEncryptionSet({
///     name: "example-des",
///     resourceGroupName: "example-resources",
/// });
/// export const id = existing.then(existing => existing.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// existing = azure.compute.get_disk_encryption_set(name="example-des",
///     resource_group_name="example-resources")
/// pulumi.export("id", existing.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var existing = Azure.Compute.GetDiskEncryptionSet.Invoke(new()
///     {
///         Name = "example-des",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = existing.Apply(getDiskEncryptionSetResult => getDiskEncryptionSetResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		existing, err := compute.LookupDiskEncryptionSet(ctx, &compute.LookupDiskEncryptionSetArgs{
/// 			Name:              "example-des",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", existing.Id)
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetDiskEncryptionSetArgs;
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
///         final var existing = ComputeFunctions.getDiskEncryptionSet(GetDiskEncryptionSetArgs.builder()
///             .name("example-des")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("id", existing.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   existing:
///     fn::invoke:
///       function: azure:compute:getDiskEncryptionSet
///       arguments:
///         name: example-des
///         resourceGroupName: example-resources
/// outputs:
///   id: ${existing.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2022-03-02
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_disk_encryption_set_get_disk_encryption_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiskEncryptionSetResult> getDiskEncryptionSet(
  GetDiskEncryptionSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:compute/getDiskEncryptionSet:getDiskEncryptionSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskEncryptionSetResult.fromMap(result);
}

/// Use this data source to access information about an existing Image.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const search = azure.compute.getImage({
///     name: "search-api",
///     resourceGroupName: "packerimages",
/// });
/// export const imageId = search.then(search => search.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// search = azure.compute.get_image(name="search-api",
///     resource_group_name="packerimages")
/// pulumi.export("imageId", search.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var search = Azure.Compute.GetImage.Invoke(new()
///     {
///         Name = "search-api",
///         ResourceGroupName = "packerimages",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["imageId"] = search.Apply(getImageResult => getImageResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		search, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Name:              pulumi.StringRef("search-api"),
/// 			ResourceGroupName: "packerimages",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("imageId", search.Id)
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetImageArgs;
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
///         final var search = ComputeFunctions.getImage(GetImageArgs.builder()
///             .name("search-api")
///             .resourceGroupName("packerimages")
///             .build());
///
///         ctx.export("imageId", search.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   search:
///     fn::invoke:
///       function: azure:compute:getImage
///       arguments:
///         name: search-api
///         resourceGroupName: packerimages
/// outputs:
///   imageId: ${search.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2022-03-01
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_image_get_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageResult> getImage(
  GetImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:compute/getImage:getImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageResult.fromMap(result);
}

/// Use this data source to access information about existing Images within a Resource Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.compute.getImages({
///     resourceGroupName: "example-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.compute.get_images(resource_group_name="example-resources")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Compute.GetImages.Invoke(new()
///     {
///         ResourceGroupName = "example-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetImages(ctx, &compute.GetImagesArgs{
/// 			ResourceGroupName: "example-resources",
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetImagesArgs;
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
///         final var example = ComputeFunctions.getImages(GetImagesArgs.builder()
///             .resourceGroupName("example-resources")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:compute:getImages
///       arguments:
///         resourceGroupName: example-resources
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2022-03-01
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_images_get_images_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImagesResult> getImages(
  GetImagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:compute/getImages:getImages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImagesResult.fromMap(result);
}

/// Use this data source to access information about an existing Managed Disk.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const existing = azure.compute.getManagedDisk({
///     name: "example-datadisk",
///     resourceGroupName: "example-resources",
/// });
/// export const id = existing.then(existing => existing.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// existing = azure.compute.get_managed_disk(name="example-datadisk",
///     resource_group_name="example-resources")
/// pulumi.export("id", existing.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var existing = Azure.Compute.GetManagedDisk.Invoke(new()
///     {
///         Name = "example-datadisk",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = existing.Apply(getManagedDiskResult => getManagedDiskResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		existing, err := compute.LookupManagedDisk(ctx, &compute.LookupManagedDiskArgs{
/// 			Name:              "example-datadisk",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", existing.Id)
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetManagedDiskArgs;
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
///         final var existing = ComputeFunctions.getManagedDisk(GetManagedDiskArgs.builder()
///             .name("example-datadisk")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("id", existing.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   existing:
///     fn::invoke:
///       function: azure:compute:getManagedDisk
///       arguments:
///         name: example-datadisk
///         resourceGroupName: example-resources
/// outputs:
///   id: ${existing.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2023-04-02
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_managed_disk_get_managed_disk_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedDiskResult> getManagedDisk(
  GetManagedDiskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:compute/getManagedDisk:getManagedDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedDiskResult.fromMap(result);
}

/// Use this data source to access information about an existing Managed Disk.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const existing = azure.compute.getManagedDisks({
///     resourceGroupName: "example-resources",
/// });
/// export const firstDiskId = existingAzurermManagedDisk.disk[0].id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// existing = azure.compute.get_managed_disks(resource_group_name="example-resources")
/// pulumi.export("firstDiskId", existing_azurerm_managed_disk["disk"][0]["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var existing = Azure.Compute.GetManagedDisks.Invoke(new()
///     {
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstDiskId"] = existingAzurermManagedDisk.Disk[0].Id,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetManagedDisks(ctx, &compute.GetManagedDisksArgs{
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstDiskId", existingAzurermManagedDisk.Disk[0].Id)
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetManagedDisksArgs;
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
///         final var existing = ComputeFunctions.getManagedDisks(GetManagedDisksArgs.builder()
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("firstDiskId", existingAzurermManagedDisk.disk()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   existing:
///     fn::invoke:
///       function: azure:compute:getManagedDisks
///       arguments:
///         resourceGroupName: example-resources
/// outputs:
///   firstDiskId: ${existingAzurermManagedDisk.disk[0].id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2023-04-02
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_managed_disks_get_managed_disks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedDisksResult> getManagedDisks(
  GetManagedDisksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:compute/getManagedDisks:getManagedDisks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedDisksResult.fromMap(result);
}

/// Use this data source to access information about an existing Orchestrated Virtual Machine Scale Set.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.compute.getOrchestratedVirtualMachineScaleSet({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.compute.get_orchestrated_virtual_machine_scale_set(name="existing",
///     resource_group_name="existing")
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
///     var example = Azure.Compute.GetOrchestratedVirtualMachineScaleSet.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getOrchestratedVirtualMachineScaleSetResult => getOrchestratedVirtualMachineScaleSetResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := compute.LookupOrchestratedVirtualMachineScaleSet(ctx, &compute.LookupOrchestratedVirtualMachineScaleSetArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetOrchestratedVirtualMachineScaleSetArgs;
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
///         final var example = ComputeFunctions.getOrchestratedVirtualMachineScaleSet(GetOrchestratedVirtualMachineScaleSetArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
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
///       function: azure:compute:getOrchestratedVirtualMachineScaleSet
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2024-11-01
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_orchestrated_virtual_machine_scale_set_get_orchestrated_virtual_machine_scale_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrchestratedVirtualMachineScaleSetResult> getOrchestratedVirtualMachineScaleSet(
  GetOrchestratedVirtualMachineScaleSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:compute/getOrchestratedVirtualMachineScaleSet:getOrchestratedVirtualMachineScaleSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrchestratedVirtualMachineScaleSetResult.fromMap(result);
}

/// Use this data source to access information about a Platform Image.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.compute.getPlatformImage({
///     location: "West Europe",
///     publisher: "Canonical",
///     offer: "0001-com-ubuntu-server-focal",
///     sku: "20_04-lts",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.compute.get_platform_image(location="West Europe",
///     publisher="Canonical",
///     offer="0001-com-ubuntu-server-focal",
///     sku="20_04-lts")
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
///     var example = Azure.Compute.GetPlatformImage.Invoke(new()
///     {
///         Location = "West Europe",
///         Publisher = "Canonical",
///         Offer = "0001-com-ubuntu-server-focal",
///         Sku = "20_04-lts",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getPlatformImageResult => getPlatformImageResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := compute.GetPlatformImage(ctx, &compute.GetPlatformImageArgs{
/// 			Location:  "West Europe",
/// 			Publisher: "Canonical",
/// 			Offer:     "0001-com-ubuntu-server-focal",
/// 			Sku:       "20_04-lts",
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetPlatformImageArgs;
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
///         final var example = ComputeFunctions.getPlatformImage(GetPlatformImageArgs.builder()
///             .location("West Europe")
///             .publisher("Canonical")
///             .offer("0001-com-ubuntu-server-focal")
///             .sku("20_04-lts")
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
///       function: azure:compute:getPlatformImage
///       arguments:
///         location: West Europe
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-focal
///         sku: 20_04-lts
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2024-03-01
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_platform_image_get_platform_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPlatformImageResult> getPlatformImage(
  GetPlatformImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:compute/getPlatformImage:getPlatformImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPlatformImageResult.fromMap(result);
}

/// Use this data source to access information about an existing Shared Image within a Shared Image Gallery.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.compute.getSharedImage({
///     name: "my-image",
///     galleryName: "my-image-gallery",
///     resourceGroupName: "example-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.compute.get_shared_image(name="my-image",
///     gallery_name="my-image-gallery",
///     resource_group_name="example-resources")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Compute.GetSharedImage.Invoke(new()
///     {
///         Name = "my-image",
///         GalleryName = "my-image-gallery",
///         ResourceGroupName = "example-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupSharedImage(ctx, &compute.LookupSharedImageArgs{
/// 			Name:              "my-image",
/// 			GalleryName:       "my-image-gallery",
/// 			ResourceGroupName: "example-resources",
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetSharedImageArgs;
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
///         final var example = ComputeFunctions.getSharedImage(GetSharedImageArgs.builder()
///             .name("my-image")
///             .galleryName("my-image-gallery")
///             .resourceGroupName("example-resources")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:compute:getSharedImage
///       arguments:
///         name: my-image
///         galleryName: my-image-gallery
///         resourceGroupName: example-resources
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2022-03-03
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_shared_image_get_shared_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSharedImageResult> getSharedImage(
  GetSharedImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:compute/getSharedImage:getSharedImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSharedImageResult.fromMap(result);
}

/// Use this data source to access information about an existing Shared Image Gallery.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.compute.getSharedImageGallery({
///     name: "my-image-gallery",
///     resourceGroupName: "example-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.compute.get_shared_image_gallery(name="my-image-gallery",
///     resource_group_name="example-resources")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Compute.GetSharedImageGallery.Invoke(new()
///     {
///         Name = "my-image-gallery",
///         ResourceGroupName = "example-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupSharedImageGallery(ctx, &compute.LookupSharedImageGalleryArgs{
/// 			Name:              "my-image-gallery",
/// 			ResourceGroupName: "example-resources",
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetSharedImageGalleryArgs;
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
///         final var example = ComputeFunctions.getSharedImageGallery(GetSharedImageGalleryArgs.builder()
///             .name("my-image-gallery")
///             .resourceGroupName("example-resources")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:compute:getSharedImageGallery
///       arguments:
///         name: my-image-gallery
///         resourceGroupName: example-resources
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2022-03-03
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_shared_image_gallery_get_shared_image_gallery_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSharedImageGalleryResult> getSharedImageGallery(
  GetSharedImageGalleryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:compute/getSharedImageGallery:getSharedImageGallery',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSharedImageGalleryResult.fromMap(result);
}

/// Use this data source to access information about an existing Version of a Shared Image within a Shared Image Gallery.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.compute.getSharedImageVersion({
///     name: "1.0.0",
///     imageName: "my-image",
///     galleryName: "my-image-gallery",
///     resourceGroupName: "example-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.compute.get_shared_image_version(name="1.0.0",
///     image_name="my-image",
///     gallery_name="my-image-gallery",
///     resource_group_name="example-resources")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Compute.GetSharedImageVersion.Invoke(new()
///     {
///         Name = "1.0.0",
///         ImageName = "my-image",
///         GalleryName = "my-image-gallery",
///         ResourceGroupName = "example-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupSharedImageVersion(ctx, &compute.LookupSharedImageVersionArgs{
/// 			Name:              "1.0.0",
/// 			ImageName:         "my-image",
/// 			GalleryName:       "my-image-gallery",
/// 			ResourceGroupName: "example-resources",
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetSharedImageVersionArgs;
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
///         final var example = ComputeFunctions.getSharedImageVersion(GetSharedImageVersionArgs.builder()
///             .name("1.0.0")
///             .imageName("my-image")
///             .galleryName("my-image-gallery")
///             .resourceGroupName("example-resources")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:compute:getSharedImageVersion
///       arguments:
///         name: 1.0.0
///         imageName: my-image
///         galleryName: my-image-gallery
///         resourceGroupName: example-resources
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2023-07-03
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_shared_image_version_get_shared_image_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSharedImageVersionResult> getSharedImageVersion(
  GetSharedImageVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:compute/getSharedImageVersion:getSharedImageVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSharedImageVersionResult.fromMap(result);
}

/// Use this data source to access information about existing Versions of a Shared Image within a Shared Image Gallery.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.compute.getSharedImageVersions({
///     imageName: "my-image",
///     galleryName: "my-image-gallery",
///     resourceGroupName: "example-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.compute.get_shared_image_versions(image_name="my-image",
///     gallery_name="my-image-gallery",
///     resource_group_name="example-resources")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Compute.GetSharedImageVersions.Invoke(new()
///     {
///         ImageName = "my-image",
///         GalleryName = "my-image-gallery",
///         ResourceGroupName = "example-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetSharedImageVersions(ctx, &compute.GetSharedImageVersionsArgs{
/// 			ImageName:         "my-image",
/// 			GalleryName:       "my-image-gallery",
/// 			ResourceGroupName: "example-resources",
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetSharedImageVersionsArgs;
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
///         final var example = ComputeFunctions.getSharedImageVersions(GetSharedImageVersionsArgs.builder()
///             .imageName("my-image")
///             .galleryName("my-image-gallery")
///             .resourceGroupName("example-resources")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:compute:getSharedImageVersions
///       arguments:
///         imageName: my-image
///         galleryName: my-image-gallery
///         resourceGroupName: example-resources
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2023-07-03
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_shared_image_versions_get_shared_image_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSharedImageVersionsResult> getSharedImageVersions(
  GetSharedImageVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:compute/getSharedImageVersions:getSharedImageVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSharedImageVersionsResult.fromMap(result);
}

/// Use this data source to access information about an existing Snapshot.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.compute.getSnapshot({
///     name: "my-snapshot",
///     resourceGroupName: "my-resource-group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.compute.get_snapshot(name="my-snapshot",
///     resource_group_name="my-resource-group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Compute.GetSnapshot.Invoke(new()
///     {
///         Name = "my-snapshot",
///         ResourceGroupName = "my-resource-group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupSnapshot(ctx, &compute.LookupSnapshotArgs{
/// 			Name:              "my-snapshot",
/// 			ResourceGroupName: "my-resource-group",
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetSnapshotArgs;
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
///         final var example = ComputeFunctions.getSnapshot(GetSnapshotArgs.builder()
///             .name("my-snapshot")
///             .resourceGroupName("my-resource-group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:compute:getSnapshot
///       arguments:
///         name: my-snapshot
///         resourceGroupName: my-resource-group
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2022-03-02
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_snapshot_get_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotResult> getSnapshot(
  GetSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:compute/getSnapshot:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult.fromMap(result);
}

/// Use this data source to access information about an existing SSH Public Key.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.compute.getSshPublicKey({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.compute.get_ssh_public_key(name="existing",
///     resource_group_name="existing")
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
///     var example = Azure.Compute.GetSshPublicKey.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getSshPublicKeyResult => getSshPublicKeyResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := compute.LookupSshPublicKey(ctx, &compute.LookupSshPublicKeyArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetSshPublicKeyArgs;
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
///         final var example = ComputeFunctions.getSshPublicKey(GetSshPublicKeyArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
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
///       function: azure:compute:getSshPublicKey
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2024-03-01
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_ssh_public_key_get_ssh_public_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSshPublicKeyResult> getSshPublicKey(
  GetSshPublicKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:compute/getSshPublicKey:getSshPublicKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSshPublicKeyResult.fromMap(result);
}

/// Use this data source to access information about an existing Virtual Machine.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.compute.getVirtualMachine({
///     name: "production",
///     resourceGroupName: "networking",
/// });
/// export const virtualMachineId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.compute.get_virtual_machine(name="production",
///     resource_group_name="networking")
/// pulumi.export("virtualMachineId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Compute.GetVirtualMachine.Invoke(new()
///     {
///         Name = "production",
///         ResourceGroupName = "networking",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["virtualMachineId"] = example.Apply(getVirtualMachineResult => getVirtualMachineResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := compute.LookupVirtualMachine(ctx, &compute.LookupVirtualMachineArgs{
/// 			Name:              "production",
/// 			ResourceGroupName: "networking",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("virtualMachineId", example.Id)
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetVirtualMachineArgs;
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
///         final var example = ComputeFunctions.getVirtualMachine(GetVirtualMachineArgs.builder()
///             .name("production")
///             .resourceGroupName("networking")
///             .build());
///
///         ctx.export("virtualMachineId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:compute:getVirtualMachine
///       arguments:
///         name: production
///         resourceGroupName: networking
/// outputs:
///   virtualMachineId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2024-03-01
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_virtual_machine_get_virtual_machine_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineResult> getVirtualMachine(
  GetVirtualMachineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:compute/getVirtualMachine:getVirtualMachine',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineResult.fromMap(result);
}

/// Use this data source to access information about an existing Virtual Machine Scale Set.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.compute.getVirtualMachineScaleSet({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.compute.get_virtual_machine_scale_set(name="existing",
///     resource_group_name="existing")
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
///     var example = Azure.Compute.GetVirtualMachineScaleSet.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getVirtualMachineScaleSetResult => getVirtualMachineScaleSetResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := compute.GetVirtualMachineScaleSet(ctx, &compute.GetVirtualMachineScaleSetArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetVirtualMachineScaleSetArgs;
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
///         final var example = ComputeFunctions.getVirtualMachineScaleSet(GetVirtualMachineScaleSetArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
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
///       function: azure:compute:getVirtualMachineScaleSet
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2024-11-01, 2024-03-01, 2023-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_virtual_machine_scale_set_get_virtual_machine_scale_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineScaleSetResult> getVirtualMachineScaleSet(
  GetVirtualMachineScaleSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:compute/getVirtualMachineScaleSet:getVirtualMachineScaleSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineScaleSetResult.fromMap(result);
}
