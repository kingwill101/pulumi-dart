import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dicom_service_args.dart';
import 'get_dicom_service_result.dart';
import 'get_fhir_service_args.dart';
import 'get_fhir_service_result.dart';
import 'get_medtech_service_args.dart';
import 'get_medtech_service_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_workspace_args.dart';
import 'get_workspace_result.dart';

/// Use this data source to access information about an existing Healthcare DICOM Service
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.healthcare.getDicomService({
///     name: "example-healthcare_dicom_service",
///     workspaceId: exampleAzurermHealthcareWorkspace.id,
/// });
/// export const azurermHealthcareDicomService = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.healthcare.get_dicom_service(name="example-healthcare_dicom_service",
///     workspace_id=example_azurerm_healthcare_workspace["id"])
/// pulumi.export("azurermHealthcareDicomService", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Healthcare.GetDicomService.Invoke(new()
///     {
///         Name = "example-healthcare_dicom_service",
///         WorkspaceId = exampleAzurermHealthcareWorkspace.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["azurermHealthcareDicomService"] = example.Apply(getDicomServiceResult => getDicomServiceResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := healthcare.LookupDicomService(ctx, &healthcare.LookupDicomServiceArgs{
/// 			Name:        "example-healthcare_dicom_service",
/// 			WorkspaceId: exampleAzurermHealthcareWorkspace.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("azurermHealthcareDicomService", example.Id)
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
/// data "azure_healthcare_getdicomservice" "example" {
///   name         = "example-healthcare_dicom_service"
///   workspace_id = exampleAzurermHealthcareWorkspace.id
/// }
///
/// output "azurermHealthcareDicomService" {
///   value = data.azure_healthcare_getdicomservice.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.healthcare.HealthcareFunctions;
/// import com.pulumi.azure.healthcare.inputs.GetDicomServiceArgs;
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
///         final var example = HealthcareFunctions.getDicomService(GetDicomServiceArgs.builder()
///             .name("example-healthcare_dicom_service")
///             .workspaceId(exampleAzurermHealthcareWorkspace.id())
///             .build());
///
///         ctx.export("azurermHealthcareDicomService", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:healthcare:getDicomService
///       arguments:
///         name: example-healthcare_dicom_service
///         workspaceId: ${exampleAzurermHealthcareWorkspace.id}
/// outputs:
///   azurermHealthcareDicomService: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.HealthcareApis` - 2024-03-31
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_get_dicom_service_get_dicom_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDicomServiceResult> getDicomService(
  GetDicomServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:healthcare/getDicomService:getDicomService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDicomServiceResult.fromMap(result);
}

/// Use this data source to access information about an existing Healthcare FHIR Service(Fast Healthcare Interoperability Resources).
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_get_fhir_service_get_fhir_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFhirServiceResult> getFhirService(
  GetFhirServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:healthcare/getFhirService:getFhirService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFhirServiceResult.fromMap(result);
}

/// Use this data source to access information about an existing Healthcare Med Tech Service
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.healthcare.getMedtechService({
///     name: "tfexmedtech",
///     workspaceId: "tfexwks",
/// });
/// export const azurermHealthcareMedtechServiceId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.healthcare.get_medtech_service(name="tfexmedtech",
///     workspace_id="tfexwks")
/// pulumi.export("azurermHealthcareMedtechServiceId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Healthcare.GetMedtechService.Invoke(new()
///     {
///         Name = "tfexmedtech",
///         WorkspaceId = "tfexwks",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["azurermHealthcareMedtechServiceId"] = example.Apply(getMedtechServiceResult => getMedtechServiceResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := healthcare.LookupMedtechService(ctx, &healthcare.LookupMedtechServiceArgs{
/// 			Name:        "tfexmedtech",
/// 			WorkspaceId: "tfexwks",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("azurermHealthcareMedtechServiceId", example.Id)
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
/// data "azure_healthcare_getmedtechservice" "example" {
///   name         = "tfexmedtech"
///   workspace_id = "tfexwks"
/// }
///
/// output "azurermHealthcareMedtechServiceId" {
///   value = data.azure_healthcare_getmedtechservice.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.healthcare.HealthcareFunctions;
/// import com.pulumi.azure.healthcare.inputs.GetMedtechServiceArgs;
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
///         final var example = HealthcareFunctions.getMedtechService(GetMedtechServiceArgs.builder()
///             .name("tfexmedtech")
///             .workspaceId("tfexwks")
///             .build());
///
///         ctx.export("azurermHealthcareMedtechServiceId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:healthcare:getMedtechService
///       arguments:
///         name: tfexmedtech
///         workspaceId: tfexwks
/// outputs:
///   azurermHealthcareMedtechServiceId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.HealthcareApis` - 2022-12-01
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_get_medtech_service_get_medtech_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMedtechServiceResult> getMedtechService(
  GetMedtechServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:healthcare/getMedtechService:getMedtechService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMedtechServiceResult.fromMap(result);
}

/// Use this data source to access information about an existing Healthcare Service
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.healthcare.getService({
///     name: "example-healthcare_service",
///     resourceGroupName: "example-resources",
///     location: "westus2",
/// });
/// export const healthcareServiceId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.healthcare.get_service(name="example-healthcare_service",
///     resource_group_name="example-resources",
///     location="westus2")
/// pulumi.export("healthcareServiceId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Healthcare.GetService.Invoke(new()
///     {
///         Name = "example-healthcare_service",
///         ResourceGroupName = "example-resources",
///         Location = "westus2",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["healthcareServiceId"] = example.Apply(getServiceResult => getServiceResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := healthcare.LookupService(ctx, &healthcare.LookupServiceArgs{
/// 			Name:              "example-healthcare_service",
/// 			ResourceGroupName: "example-resources",
/// 			Location:          "westus2",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("healthcareServiceId", example.Id)
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
/// data "azure_healthcare_getservice" "example" {
///   name                = "example-healthcare_service"
///   resource_group_name = "example-resources"
///   location            = "westus2"
/// }
///
/// output "healthcareServiceId" {
///   value = data.azure_healthcare_getservice.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.healthcare.HealthcareFunctions;
/// import com.pulumi.azure.healthcare.inputs.GetServiceArgs;
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
///         final var example = HealthcareFunctions.getService(GetServiceArgs.builder()
///             .name("example-healthcare_service")
///             .resourceGroupName("example-resources")
///             .location("westus2")
///             .build());
///
///         ctx.export("healthcareServiceId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:healthcare:getService
///       arguments:
///         name: example-healthcare_service
///         resourceGroupName: example-resources
///         location: westus2
/// outputs:
///   healthcareServiceId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.HealthcareApis` - 2022-12-01
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:healthcare/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// Use this data source to access information about an existing Healthcare Workspace
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.healthcare.getWorkspace({
///     name: "example-healthcare_service",
///     resourceGroupName: "example-resources",
/// });
/// export const healthcareWorkspaceId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.healthcare.get_workspace(name="example-healthcare_service",
///     resource_group_name="example-resources")
/// pulumi.export("healthcareWorkspaceId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Healthcare.GetWorkspace.Invoke(new()
///     {
///         Name = "example-healthcare_service",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["healthcareWorkspaceId"] = example.Apply(getWorkspaceResult => getWorkspaceResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := healthcare.LookupWorkspace(ctx, &healthcare.LookupWorkspaceArgs{
/// 			Name:              "example-healthcare_service",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("healthcareWorkspaceId", example.Id)
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
/// data "azure_healthcare_getworkspace" "example" {
///   name                = "example-healthcare_service"
///   resource_group_name = "example-resources"
/// }
///
/// output "healthcareWorkspaceId" {
///   value = data.azure_healthcare_getworkspace.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.healthcare.HealthcareFunctions;
/// import com.pulumi.azure.healthcare.inputs.GetWorkspaceArgs;
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
///         final var example = HealthcareFunctions.getWorkspace(GetWorkspaceArgs.builder()
///             .name("example-healthcare_service")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("healthcareWorkspaceId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:healthcare:getWorkspace
///       arguments:
///         name: example-healthcare_service
///         resourceGroupName: example-resources
/// outputs:
///   healthcareWorkspaceId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.HealthcareApis` - 2024-03-31
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_get_workspace_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:healthcare/getWorkspace:getWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult.fromMap(result);
}
