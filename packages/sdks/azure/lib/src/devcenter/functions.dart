import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_args.dart';
import 'get_attached_network_args.dart';
import 'get_attached_network_result.dart';
import 'get_catalog_args.dart';
import 'get_catalog_result.dart';
import 'get_dev_box_definition_args.dart';
import 'get_dev_box_definition_result.dart';
import 'get_environment_type_args.dart';
import 'get_environment_type_result.dart';
import 'get_gallery_args.dart';
import 'get_gallery_result.dart';
import 'get_managed_dev_ops_pool_args.dart';
import 'get_managed_dev_ops_pool_result.dart';
import 'get_network_connection_args.dart';
import 'get_network_connection_result.dart';
import 'get_project_args.dart';
import 'get_project_environment_type_args.dart';
import 'get_project_environment_type_result.dart';
import 'get_project_pool_args.dart';
import 'get_project_pool_result.dart';
import 'get_project_result.dart';
import 'get_result.dart';

/// Use this data source to access information about an existing Dev Center.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.devcenter.get({
///     name: "example",
///     resourceGroupName: "example-resource-group",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.devcenter.get(name="example",
///     resource_group_name="example-resource-group")
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
///     var example = Azure.DevCenter.Get.Invoke(new()
///     {
///         Name = "example",
///         ResourceGroupName = "example-resource-group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getResult => getResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := devcenter.Get(ctx, &devcenter.GetArgs{
/// 			Name:              "example",
/// 			ResourceGroupName: "example-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_devcenter_get" "example" {
///   name                = "example"
///   resource_group_name = "example-resource-group"
/// }
///
/// output "id" {
///   value = data.azure_devcenter_get.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.devcenter.DevcenterFunctions;
/// import com.pulumi.azure.devcenter.inputs.GetArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = DevcenterFunctions.get(GetArgs.builder()
///             .name("example")
///             .resourceGroupName("example-resource-group")
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
///       function: azure:devcenter:get
///       arguments:
///         name: example
///         resourceGroupName: example-resource-group
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
/// * `Microsoft.DevCenter` - 2025-02-01
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_get_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResult> get(
  GetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:devcenter/get:get',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResult.fromMap(result);
}

pulumi.Output<GetResult> getOutput(
  GetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:devcenter/get:get',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetResult.fromMap);
}

/// Use this data source to access information about an existing Dev Center Attached Network.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.devcenter.getAttachedNetwork({
///     name: exampleAzurermDevCenterAttachedNetwork.name,
///     devCenterId: exampleAzurermDevCenterAttachedNetwork.devCenterId,
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.devcenter.get_attached_network(name=example_azurerm_dev_center_attached_network["name"],
///     dev_center_id=example_azurerm_dev_center_attached_network["devCenterId"])
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
///     var example = Azure.DevCenter.GetAttachedNetwork.Invoke(new()
///     {
///         Name = exampleAzurermDevCenterAttachedNetwork.Name,
///         DevCenterId = exampleAzurermDevCenterAttachedNetwork.DevCenterId,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getAttachedNetworkResult => getAttachedNetworkResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := devcenter.LookupAttachedNetwork(ctx, &devcenter.LookupAttachedNetworkArgs{
/// 			Name:        exampleAzurermDevCenterAttachedNetwork.Name,
/// 			DevCenterId: exampleAzurermDevCenterAttachedNetwork.DevCenterId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_devcenter_getattachednetwork" "example" {
///   name          = exampleAzurermDevCenterAttachedNetwork.name
///   dev_center_id = exampleAzurermDevCenterAttachedNetwork.devCenterId
/// }
///
/// output "id" {
///   value = data.azure_devcenter_getattachednetwork.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.devcenter.DevcenterFunctions;
/// import com.pulumi.azure.devcenter.inputs.GetAttachedNetworkArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = DevcenterFunctions.getAttachedNetwork(GetAttachedNetworkArgs.builder()
///             .name(exampleAzurermDevCenterAttachedNetwork.name())
///             .devCenterId(exampleAzurermDevCenterAttachedNetwork.devCenterId())
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
///       function: azure:devcenter:getAttachedNetwork
///       arguments:
///         name: ${exampleAzurermDevCenterAttachedNetwork.name}
///         devCenterId: ${exampleAzurermDevCenterAttachedNetwork.devCenterId}
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
/// * `Microsoft.DevCenter` - 2025-02-01
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_attached_network_get_attached_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAttachedNetworkResult> getAttachedNetwork(
  GetAttachedNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:devcenter/getAttachedNetwork:getAttachedNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttachedNetworkResult.fromMap(result);
}

pulumi.Output<GetAttachedNetworkResult> getAttachedNetworkOutput(
  GetAttachedNetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:devcenter/getAttachedNetwork:getAttachedNetwork',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAttachedNetworkResult.fromMap);
}

/// Use this data source to access information about an existing Dev Center Catalog.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.devcenter.getCatalog({
///     name: exampleAzurermDevCenterCatalog.name,
///     devCenterId: exampleAzurermDevCenterCatalog.devCenterId,
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.devcenter.get_catalog(name=example_azurerm_dev_center_catalog["name"],
///     dev_center_id=example_azurerm_dev_center_catalog["devCenterId"])
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
///     var example = Azure.DevCenter.GetCatalog.Invoke(new()
///     {
///         Name = exampleAzurermDevCenterCatalog.Name,
///         DevCenterId = exampleAzurermDevCenterCatalog.DevCenterId,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getCatalogResult => getCatalogResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := devcenter.LookupCatalog(ctx, &devcenter.LookupCatalogArgs{
/// 			Name:        exampleAzurermDevCenterCatalog.Name,
/// 			DevCenterId: exampleAzurermDevCenterCatalog.DevCenterId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_devcenter_getcatalog" "example" {
///   name          = exampleAzurermDevCenterCatalog.name
///   dev_center_id = exampleAzurermDevCenterCatalog.devCenterId
/// }
///
/// output "id" {
///   value = data.azure_devcenter_getcatalog.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.devcenter.DevcenterFunctions;
/// import com.pulumi.azure.devcenter.inputs.GetCatalogArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = DevcenterFunctions.getCatalog(GetCatalogArgs.builder()
///             .name(exampleAzurermDevCenterCatalog.name())
///             .devCenterId(exampleAzurermDevCenterCatalog.devCenterId())
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
///       function: azure:devcenter:getCatalog
///       arguments:
///         name: ${exampleAzurermDevCenterCatalog.name}
///         devCenterId: ${exampleAzurermDevCenterCatalog.devCenterId}
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
/// * `Microsoft.DevCenter` - 2025-02-01
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_catalog_get_catalog_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCatalogResult> getCatalog(
  GetCatalogArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:devcenter/getCatalog:getCatalog',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCatalogResult.fromMap(result);
}

pulumi.Output<GetCatalogResult> getCatalogOutput(
  GetCatalogArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:devcenter/getCatalog:getCatalog',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCatalogResult.fromMap);
}

/// Use this data source to access information about an existing Dev Center Dev Box Definition.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.devcenter.getDevBoxDefinition({
///     name: exampleAzurermDevCenterDevBoxDefinition.name,
///     devCenterId: exampleAzurermDevCenterDevBoxDefinition.devCenterId,
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.devcenter.get_dev_box_definition(name=example_azurerm_dev_center_dev_box_definition["name"],
///     dev_center_id=example_azurerm_dev_center_dev_box_definition["devCenterId"])
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
///     var example = Azure.DevCenter.GetDevBoxDefinition.Invoke(new()
///     {
///         Name = exampleAzurermDevCenterDevBoxDefinition.Name,
///         DevCenterId = exampleAzurermDevCenterDevBoxDefinition.DevCenterId,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getDevBoxDefinitionResult => getDevBoxDefinitionResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := devcenter.LookupDevBoxDefinition(ctx, &devcenter.LookupDevBoxDefinitionArgs{
/// 			Name:        exampleAzurermDevCenterDevBoxDefinition.Name,
/// 			DevCenterId: exampleAzurermDevCenterDevBoxDefinition.DevCenterId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_devcenter_getdevboxdefinition" "example" {
///   name          = exampleAzurermDevCenterDevBoxDefinition.name
///   dev_center_id = exampleAzurermDevCenterDevBoxDefinition.devCenterId
/// }
///
/// output "id" {
///   value = data.azure_devcenter_getdevboxdefinition.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.devcenter.DevcenterFunctions;
/// import com.pulumi.azure.devcenter.inputs.GetDevBoxDefinitionArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = DevcenterFunctions.getDevBoxDefinition(GetDevBoxDefinitionArgs.builder()
///             .name(exampleAzurermDevCenterDevBoxDefinition.name())
///             .devCenterId(exampleAzurermDevCenterDevBoxDefinition.devCenterId())
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
///       function: azure:devcenter:getDevBoxDefinition
///       arguments:
///         name: ${exampleAzurermDevCenterDevBoxDefinition.name}
///         devCenterId: ${exampleAzurermDevCenterDevBoxDefinition.devCenterId}
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
/// * `Microsoft.DevCenter` - 2025-02-01
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_dev_box_definition_get_dev_box_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDevBoxDefinitionResult> getDevBoxDefinition(
  GetDevBoxDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:devcenter/getDevBoxDefinition:getDevBoxDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDevBoxDefinitionResult.fromMap(result);
}

pulumi.Output<GetDevBoxDefinitionResult> getDevBoxDefinitionOutput(
  GetDevBoxDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:devcenter/getDevBoxDefinition:getDevBoxDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDevBoxDefinitionResult.fromMap);
}

/// Use this data source to access information about an existing Dev Center Environment Type.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.devcenter.getEnvironmentType({
///     name: exampleAzurermDevCenterEnvironmentType.name,
///     devCenterId: exampleAzurermDevCenterEnvironmentType.devCenterId,
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.devcenter.get_environment_type(name=example_azurerm_dev_center_environment_type["name"],
///     dev_center_id=example_azurerm_dev_center_environment_type["devCenterId"])
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
///     var example = Azure.DevCenter.GetEnvironmentType.Invoke(new()
///     {
///         Name = exampleAzurermDevCenterEnvironmentType.Name,
///         DevCenterId = exampleAzurermDevCenterEnvironmentType.DevCenterId,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getEnvironmentTypeResult => getEnvironmentTypeResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := devcenter.LookupEnvironmentType(ctx, &devcenter.LookupEnvironmentTypeArgs{
/// 			Name:        exampleAzurermDevCenterEnvironmentType.Name,
/// 			DevCenterId: exampleAzurermDevCenterEnvironmentType.DevCenterId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_devcenter_getenvironmenttype" "example" {
///   name          = exampleAzurermDevCenterEnvironmentType.name
///   dev_center_id = exampleAzurermDevCenterEnvironmentType.devCenterId
/// }
///
/// output "id" {
///   value = data.azure_devcenter_getenvironmenttype.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.devcenter.DevcenterFunctions;
/// import com.pulumi.azure.devcenter.inputs.GetEnvironmentTypeArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = DevcenterFunctions.getEnvironmentType(GetEnvironmentTypeArgs.builder()
///             .name(exampleAzurermDevCenterEnvironmentType.name())
///             .devCenterId(exampleAzurermDevCenterEnvironmentType.devCenterId())
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
///       function: azure:devcenter:getEnvironmentType
///       arguments:
///         name: ${exampleAzurermDevCenterEnvironmentType.name}
///         devCenterId: ${exampleAzurermDevCenterEnvironmentType.devCenterId}
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
/// * `Microsoft.DevCenter` - 2025-02-01
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_environment_type_get_environment_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentTypeResult> getEnvironmentType(
  GetEnvironmentTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:devcenter/getEnvironmentType:getEnvironmentType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentTypeResult.fromMap(result);
}

pulumi.Output<GetEnvironmentTypeResult> getEnvironmentTypeOutput(
  GetEnvironmentTypeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:devcenter/getEnvironmentType:getEnvironmentType',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvironmentTypeResult.fromMap);
}

/// Use this data source to access information about an existing Dev Center Gallery.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.devcenter.getGallery({
///     name: exampleAzurermDevCenterGallery.name,
///     devCenterId: exampleAzurermDevCenterGallery.devCenterId,
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.devcenter.get_gallery(name=example_azurerm_dev_center_gallery["name"],
///     dev_center_id=example_azurerm_dev_center_gallery["devCenterId"])
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
///     var example = Azure.DevCenter.GetGallery.Invoke(new()
///     {
///         Name = exampleAzurermDevCenterGallery.Name,
///         DevCenterId = exampleAzurermDevCenterGallery.DevCenterId,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getGalleryResult => getGalleryResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := devcenter.LookupGallery(ctx, &devcenter.LookupGalleryArgs{
/// 			Name:        exampleAzurermDevCenterGallery.Name,
/// 			DevCenterId: exampleAzurermDevCenterGallery.DevCenterId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_devcenter_getgallery" "example" {
///   name          = exampleAzurermDevCenterGallery.name
///   dev_center_id = exampleAzurermDevCenterGallery.devCenterId
/// }
///
/// output "id" {
///   value = data.azure_devcenter_getgallery.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.devcenter.DevcenterFunctions;
/// import com.pulumi.azure.devcenter.inputs.GetGalleryArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = DevcenterFunctions.getGallery(GetGalleryArgs.builder()
///             .name(exampleAzurermDevCenterGallery.name())
///             .devCenterId(exampleAzurermDevCenterGallery.devCenterId())
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
///       function: azure:devcenter:getGallery
///       arguments:
///         name: ${exampleAzurermDevCenterGallery.name}
///         devCenterId: ${exampleAzurermDevCenterGallery.devCenterId}
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
/// * `Microsoft.DevCenter` - 2025-02-01
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_gallery_get_gallery_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGalleryResult> getGallery(
  GetGalleryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:devcenter/getGallery:getGallery',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGalleryResult.fromMap(result);
}

pulumi.Output<GetGalleryResult> getGalleryOutput(
  GetGalleryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:devcenter/getGallery:getGallery',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGalleryResult.fromMap);
}

/// Use this data source to access information about an existing Managed DevOps Pool.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.devcenter.getManagedDevOpsPool({
///     name: "example-mdp",
///     resourceGroupName: "example-rg",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.devcenter.get_managed_dev_ops_pool(name="example-mdp",
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
///     var example = Azure.DevCenter.GetManagedDevOpsPool.Invoke(new()
///     {
///         Name = "example-mdp",
///         ResourceGroupName = "example-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getManagedDevOpsPoolResult => getManagedDevOpsPoolResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := devcenter.LookupManagedDevOpsPool(ctx, &devcenter.LookupManagedDevOpsPoolArgs{
/// 			Name:              "example-mdp",
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_devcenter_getmanageddevopspool" "example" {
///   name                = "example-mdp"
///   resource_group_name = "example-rg"
/// }
///
/// output "id" {
///   value = data.azure_devcenter_getmanageddevopspool.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.devcenter.DevcenterFunctions;
/// import com.pulumi.azure.devcenter.inputs.GetManagedDevOpsPoolArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = DevcenterFunctions.getManagedDevOpsPool(GetManagedDevOpsPoolArgs.builder()
///             .name("example-mdp")
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
///       function: azure:devcenter:getManagedDevOpsPool
///       arguments:
///         name: example-mdp
///         resourceGroupName: example-rg
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
/// * `Microsoft.DevOpsInfrastructure` - 2025-09-20
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_managed_dev_ops_pool_get_managed_dev_ops_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedDevOpsPoolResult> getManagedDevOpsPool(
  GetManagedDevOpsPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:devcenter/getManagedDevOpsPool:getManagedDevOpsPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedDevOpsPoolResult.fromMap(result);
}

pulumi.Output<GetManagedDevOpsPoolResult> getManagedDevOpsPoolOutput(
  GetManagedDevOpsPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:devcenter/getManagedDevOpsPool:getManagedDevOpsPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedDevOpsPoolResult.fromMap);
}

/// Use this data source to access information about an existing Dev Center Network Connection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.devcenter.getNetworkConnection({
///     name: "example",
///     resourceGroupName: "example-resource-group",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.devcenter.get_network_connection(name="example",
///     resource_group_name="example-resource-group")
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
///     var example = Azure.DevCenter.GetNetworkConnection.Invoke(new()
///     {
///         Name = "example",
///         ResourceGroupName = "example-resource-group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getNetworkConnectionResult => getNetworkConnectionResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := devcenter.LookupNetworkConnection(ctx, &devcenter.LookupNetworkConnectionArgs{
/// 			Name:              "example",
/// 			ResourceGroupName: "example-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_devcenter_getnetworkconnection" "example" {
///   name                = "example"
///   resource_group_name = "example-resource-group"
/// }
///
/// output "id" {
///   value = data.azure_devcenter_getnetworkconnection.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.devcenter.DevcenterFunctions;
/// import com.pulumi.azure.devcenter.inputs.GetNetworkConnectionArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = DevcenterFunctions.getNetworkConnection(GetNetworkConnectionArgs.builder()
///             .name("example")
///             .resourceGroupName("example-resource-group")
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
///       function: azure:devcenter:getNetworkConnection
///       arguments:
///         name: example
///         resourceGroupName: example-resource-group
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
/// * `Microsoft.DevCenter` - 2025-02-01
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_network_connection_get_network_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkConnectionResult> getNetworkConnection(
  GetNetworkConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:devcenter/getNetworkConnection:getNetworkConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkConnectionResult.fromMap(result);
}

pulumi.Output<GetNetworkConnectionResult> getNetworkConnectionOutput(
  GetNetworkConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:devcenter/getNetworkConnection:getNetworkConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkConnectionResult.fromMap);
}

/// Use this data source to access information about an existing Dev Center Project.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.devcenter.getProject({
///     name: "example",
///     resourceGroupName: "example-resource-group",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.devcenter.get_project(name="example",
///     resource_group_name="example-resource-group")
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
///     var example = Azure.DevCenter.GetProject.Invoke(new()
///     {
///         Name = "example",
///         ResourceGroupName = "example-resource-group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getProjectResult => getProjectResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := devcenter.LookupProject(ctx, &devcenter.LookupProjectArgs{
/// 			Name:              "example",
/// 			ResourceGroupName: "example-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_devcenter_getproject" "example" {
///   name                = "example"
///   resource_group_name = "example-resource-group"
/// }
///
/// output "id" {
///   value = data.azure_devcenter_getproject.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.devcenter.DevcenterFunctions;
/// import com.pulumi.azure.devcenter.inputs.GetProjectArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = DevcenterFunctions.getProject(GetProjectArgs.builder()
///             .name("example")
///             .resourceGroupName("example-resource-group")
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
///       function: azure:devcenter:getProject
///       arguments:
///         name: example
///         resourceGroupName: example-resource-group
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
/// * `Microsoft.DevCenter` - 2025-02-01
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_project_get_project_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectResult> getProject(
  GetProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:devcenter/getProject:getProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectResult.fromMap(result);
}

pulumi.Output<GetProjectResult> getProjectOutput(
  GetProjectArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:devcenter/getProject:getProject',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectResult.fromMap);
}

/// Use this data source to access information about an existing Dev Center Project Environment Type.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.devcenter.getProjectEnvironmentType({
///     name: exampleAzurermDevCenterProjectEnvironmentType.name,
///     devCenterProjectId: exampleAzurermDevCenterProjectEnvironmentType.devCenterProjectId,
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.devcenter.get_project_environment_type(name=example_azurerm_dev_center_project_environment_type["name"],
///     dev_center_project_id=example_azurerm_dev_center_project_environment_type["devCenterProjectId"])
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
///     var example = Azure.DevCenter.GetProjectEnvironmentType.Invoke(new()
///     {
///         Name = exampleAzurermDevCenterProjectEnvironmentType.Name,
///         DevCenterProjectId = exampleAzurermDevCenterProjectEnvironmentType.DevCenterProjectId,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getProjectEnvironmentTypeResult => getProjectEnvironmentTypeResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := devcenter.LookupProjectEnvironmentType(ctx, &devcenter.LookupProjectEnvironmentTypeArgs{
/// 			Name:               exampleAzurermDevCenterProjectEnvironmentType.Name,
/// 			DevCenterProjectId: exampleAzurermDevCenterProjectEnvironmentType.DevCenterProjectId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_devcenter_getprojectenvironmenttype" "example" {
///   name                  = exampleAzurermDevCenterProjectEnvironmentType.name
///   dev_center_project_id = exampleAzurermDevCenterProjectEnvironmentType.devCenterProjectId
/// }
///
/// output "id" {
///   value = data.azure_devcenter_getprojectenvironmenttype.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.devcenter.DevcenterFunctions;
/// import com.pulumi.azure.devcenter.inputs.GetProjectEnvironmentTypeArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = DevcenterFunctions.getProjectEnvironmentType(GetProjectEnvironmentTypeArgs.builder()
///             .name(exampleAzurermDevCenterProjectEnvironmentType.name())
///             .devCenterProjectId(exampleAzurermDevCenterProjectEnvironmentType.devCenterProjectId())
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
///       function: azure:devcenter:getProjectEnvironmentType
///       arguments:
///         name: ${exampleAzurermDevCenterProjectEnvironmentType.name}
///         devCenterProjectId: ${exampleAzurermDevCenterProjectEnvironmentType.devCenterProjectId}
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
/// * `Microsoft.DevCenter` - 2025-02-01
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_project_environment_type_get_project_environment_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectEnvironmentTypeResult> getProjectEnvironmentType(
  GetProjectEnvironmentTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:devcenter/getProjectEnvironmentType:getProjectEnvironmentType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectEnvironmentTypeResult.fromMap(result);
}

pulumi.Output<GetProjectEnvironmentTypeResult> getProjectEnvironmentTypeOutput(
  GetProjectEnvironmentTypeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:devcenter/getProjectEnvironmentType:getProjectEnvironmentType',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectEnvironmentTypeResult.fromMap);
}

/// Use this data source to access information about an existing Dev Center Project Pool.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.devcenter.getProjectPool({
///     name: exampleAzurermDevCenterProjectPool.name,
///     devCenterProjectId: exampleAzurermDevCenterProjectPool.devCenterProjectId,
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.devcenter.get_project_pool(name=example_azurerm_dev_center_project_pool["name"],
///     dev_center_project_id=example_azurerm_dev_center_project_pool["devCenterProjectId"])
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
///     var example = Azure.DevCenter.GetProjectPool.Invoke(new()
///     {
///         Name = exampleAzurermDevCenterProjectPool.Name,
///         DevCenterProjectId = exampleAzurermDevCenterProjectPool.DevCenterProjectId,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getProjectPoolResult => getProjectPoolResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := devcenter.LookupProjectPool(ctx, &devcenter.LookupProjectPoolArgs{
/// 			Name:               exampleAzurermDevCenterProjectPool.Name,
/// 			DevCenterProjectId: exampleAzurermDevCenterProjectPool.DevCenterProjectId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_devcenter_getprojectpool" "example" {
///   name                  = exampleAzurermDevCenterProjectPool.name
///   dev_center_project_id = exampleAzurermDevCenterProjectPool.devCenterProjectId
/// }
///
/// output "id" {
///   value = data.azure_devcenter_getprojectpool.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.devcenter.DevcenterFunctions;
/// import com.pulumi.azure.devcenter.inputs.GetProjectPoolArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = DevcenterFunctions.getProjectPool(GetProjectPoolArgs.builder()
///             .name(exampleAzurermDevCenterProjectPool.name())
///             .devCenterProjectId(exampleAzurermDevCenterProjectPool.devCenterProjectId())
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
///       function: azure:devcenter:getProjectPool
///       arguments:
///         name: ${exampleAzurermDevCenterProjectPool.name}
///         devCenterProjectId: ${exampleAzurermDevCenterProjectPool.devCenterProjectId}
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
/// * `Microsoft.DevCenter` - 2025-02-01
/// [args] Arguments passed to this invoke. {@macro pulumi_devcenter_get_project_pool_get_project_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectPoolResult> getProjectPool(
  GetProjectPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:devcenter/getProjectPool:getProjectPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectPoolResult.fromMap(result);
}

pulumi.Output<GetProjectPoolResult> getProjectPoolOutput(
  GetProjectPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:devcenter/getProjectPool:getProjectPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectPoolResult.fromMap);
}
