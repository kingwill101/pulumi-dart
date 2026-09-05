import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_args.dart';
import 'get_app_result.dart';
import 'get_environment_args.dart';
import 'get_environment_certificate_args.dart';
import 'get_environment_certificate_result.dart';
import 'get_environment_result.dart';
import 'get_environment_storage_args.dart';
import 'get_environment_storage_result.dart';

/// Use this data source to access information about an existing Container App.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.containerapp.getApp({
///     name: "example-app",
///     resourceGroupName: "example-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.containerapp.get_app(name="example-app",
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
///     var example = Azure.ContainerApp.GetApp.Invoke(new()
///     {
///         Name = "example-app",
///         ResourceGroupName = "example-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerapp.LookupApp(ctx, &containerapp.LookupAppArgs{
/// 			Name:              "example-app",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
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
/// data "azure_containerapp_getapp" "example" {
///   name                = "example-app"
///   resource_group_name = "example-resources"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.containerapp.ContainerappFunctions;
/// import com.pulumi.azure.containerapp.inputs.GetAppArgs;
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
///         final var example = ContainerappFunctions.getApp(GetAppArgs.builder()
///             .name("example-app")
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
///       function: azure:containerapp:getApp
///       arguments:
///         name: example-app
///         resourceGroupName: example-resources
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.App` - 2025-07-01
/// [args] Arguments passed to this invoke. {@macro pulumi_containerapp_get_app_get_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppResult> getApp(
  GetAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:containerapp/getApp:getApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppResult.fromMap(result);
}

pulumi.Output<GetAppResult> getAppOutput(
  GetAppArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:containerapp/getApp:getApp',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppResult.fromMap);
}

/// Use this data source to access information about an existing Container App Environment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.containerapp.getEnvironment({
///     name: "example-environment",
///     resourceGroupName: "example-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.containerapp.get_environment(name="example-environment",
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
///     var example = Azure.ContainerApp.GetEnvironment.Invoke(new()
///     {
///         Name = "example-environment",
///         ResourceGroupName = "example-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerapp.LookupEnvironment(ctx, &containerapp.LookupEnvironmentArgs{
/// 			Name:              "example-environment",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
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
/// data "azure_containerapp_getenvironment" "example" {
///   name                = "example-environment"
///   resource_group_name = "example-resources"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.containerapp.ContainerappFunctions;
/// import com.pulumi.azure.containerapp.inputs.GetEnvironmentArgs;
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
///         final var example = ContainerappFunctions.getEnvironment(GetEnvironmentArgs.builder()
///             .name("example-environment")
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
///       function: azure:containerapp:getEnvironment
///       arguments:
///         name: example-environment
///         resourceGroupName: example-resources
/// ```
///
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.App` - 2025-07-01
///
/// * `Microsoft.OperationalInsights` - 2020-08-01
/// [args] Arguments passed to this invoke. {@macro pulumi_containerapp_get_environment_get_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentResult> getEnvironment(
  GetEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:containerapp/getEnvironment:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult.fromMap(result);
}

pulumi.Output<GetEnvironmentResult> getEnvironmentOutput(
  GetEnvironmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:containerapp/getEnvironment:getEnvironment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvironmentResult.fromMap);
}

/// Use this data source to access information about an existing Container App Environment Certificate.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.containerapp.getEnvironment({
///     name: "example-environment",
///     resourceGroupName: "example-resources",
/// });
/// const exampleGetEnvironmentCertificate = example.then(example => azure.containerapp.getEnvironmentCertificate({
///     name: "mycertificate",
///     containerAppEnvironmentId: example.id,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.containerapp.get_environment(name="example-environment",
///     resource_group_name="example-resources")
/// example_get_environment_certificate = azure.containerapp.get_environment_certificate(name="mycertificate",
///     container_app_environment_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ContainerApp.GetEnvironment.Invoke(new()
///     {
///         Name = "example-environment",
///         ResourceGroupName = "example-resources",
///     });
///
///     var exampleGetEnvironmentCertificate = Azure.ContainerApp.GetEnvironmentCertificate.Invoke(new()
///     {
///         Name = "mycertificate",
///         ContainerAppEnvironmentId = example.Apply(getEnvironmentResult => getEnvironmentResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := containerapp.LookupEnvironment(ctx, &containerapp.LookupEnvironmentArgs{
/// 			Name:              "example-environment",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerapp.LookupEnvironmentCertificate(ctx, &containerapp.LookupEnvironmentCertificateArgs{
/// 			Name:                      "mycertificate",
/// 			ContainerAppEnvironmentId: example.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
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
/// data "azure_containerapp_getenvironment" "example" {
///   name                = "example-environment"
///   resource_group_name = "example-resources"
/// }
/// data "azure_containerapp_getenvironmentcertificate" "exampleGetEnvironmentCertificate" {
///   name                         = "mycertificate"
///   container_app_environment_id = data.azure_containerapp_getenvironment.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.containerapp.ContainerappFunctions;
/// import com.pulumi.azure.containerapp.inputs.GetEnvironmentArgs;
/// import com.pulumi.azure.containerapp.inputs.GetEnvironmentCertificateArgs;
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
///         final var example = ContainerappFunctions.getEnvironment(GetEnvironmentArgs.builder()
///             .name("example-environment")
///             .resourceGroupName("example-resources")
///             .build());
///
///         final var exampleGetEnvironmentCertificate = ContainerappFunctions.getEnvironmentCertificate(GetEnvironmentCertificateArgs.builder()
///             .name("mycertificate")
///             .containerAppEnvironmentId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:containerapp:getEnvironment
///       arguments:
///         name: example-environment
///         resourceGroupName: example-resources
///   exampleGetEnvironmentCertificate:
///     fn::invoke:
///       function: azure:containerapp:getEnvironmentCertificate
///       arguments:
///         name: mycertificate
///         containerAppEnvironmentId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.App` - 2025-07-01
/// [args] Arguments passed to this invoke. {@macro pulumi_containerapp_get_environment_certificate_get_environment_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentCertificateResult> getEnvironmentCertificate(
  GetEnvironmentCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:containerapp/getEnvironmentCertificate:getEnvironmentCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentCertificateResult.fromMap(result);
}

pulumi.Output<GetEnvironmentCertificateResult> getEnvironmentCertificateOutput(
  GetEnvironmentCertificateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:containerapp/getEnvironmentCertificate:getEnvironmentCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvironmentCertificateResult.fromMap);
}

/// Use this data source to access information about an existing Container App Environment Storage.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.containerapp.getEnvironment({
///     name: "existing-environment",
///     resourceGroupName: "existing-resources",
/// });
/// const exampleGetEnvironmentStorage = example.then(example => azure.containerapp.getEnvironmentStorage({
///     name: "existing-storage",
///     containerAppEnvironmentId: example.id,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.containerapp.get_environment(name="existing-environment",
///     resource_group_name="existing-resources")
/// example_get_environment_storage = azure.containerapp.get_environment_storage(name="existing-storage",
///     container_app_environment_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ContainerApp.GetEnvironment.Invoke(new()
///     {
///         Name = "existing-environment",
///         ResourceGroupName = "existing-resources",
///     });
///
///     var exampleGetEnvironmentStorage = Azure.ContainerApp.GetEnvironmentStorage.Invoke(new()
///     {
///         Name = "existing-storage",
///         ContainerAppEnvironmentId = example.Apply(getEnvironmentResult => getEnvironmentResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := containerapp.LookupEnvironment(ctx, &containerapp.LookupEnvironmentArgs{
/// 			Name:              "existing-environment",
/// 			ResourceGroupName: "existing-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerapp.LookupEnvironmentStorage(ctx, &containerapp.LookupEnvironmentStorageArgs{
/// 			Name:                      "existing-storage",
/// 			ContainerAppEnvironmentId: example.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
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
/// data "azure_containerapp_getenvironment" "example" {
///   name                = "existing-environment"
///   resource_group_name = "existing-resources"
/// }
/// data "azure_containerapp_getenvironmentstorage" "exampleGetEnvironmentStorage" {
///   name                         = "existing-storage"
///   container_app_environment_id = data.azure_containerapp_getenvironment.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.containerapp.ContainerappFunctions;
/// import com.pulumi.azure.containerapp.inputs.GetEnvironmentArgs;
/// import com.pulumi.azure.containerapp.inputs.GetEnvironmentStorageArgs;
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
///         final var example = ContainerappFunctions.getEnvironment(GetEnvironmentArgs.builder()
///             .name("existing-environment")
///             .resourceGroupName("existing-resources")
///             .build());
///
///         final var exampleGetEnvironmentStorage = ContainerappFunctions.getEnvironmentStorage(GetEnvironmentStorageArgs.builder()
///             .name("existing-storage")
///             .containerAppEnvironmentId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:containerapp:getEnvironment
///       arguments:
///         name: existing-environment
///         resourceGroupName: existing-resources
///   exampleGetEnvironmentStorage:
///     fn::invoke:
///       function: azure:containerapp:getEnvironmentStorage
///       arguments:
///         name: existing-storage
///         containerAppEnvironmentId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.App` - 2025-07-01
/// [args] Arguments passed to this invoke. {@macro pulumi_containerapp_get_environment_storage_get_environment_storage_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentStorageResult> getEnvironmentStorage(
  GetEnvironmentStorageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:containerapp/getEnvironmentStorage:getEnvironmentStorage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentStorageResult.fromMap(result);
}

pulumi.Output<GetEnvironmentStorageResult> getEnvironmentStorageOutput(
  GetEnvironmentStorageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:containerapp/getEnvironmentStorage:getEnvironmentStorage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvironmentStorageResult.fromMap);
}
