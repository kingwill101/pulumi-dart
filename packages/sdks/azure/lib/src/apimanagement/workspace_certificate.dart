import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_certificate_args.dart';
import 'workspace_certificate_state.dart';

/// Manages a Certificate within an API Management Workspace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleService = new azure.apimanagement.Service("example", {
///     name: "example-apim",
///     location: example.location,
///     resourceGroupName: example.name,
///     publisherName: "My Company",
///     publisherEmail: "company@terraform.io",
///     skuName: "Premium_1",
/// });
/// const exampleWorkspace = new azure.apimanagement.Workspace("example", {
///     name: "example-workspace",
///     apiManagementId: exampleService.id,
///     displayName: "Example Workspace",
/// });
/// const exampleWorkspaceCertificate = new azure.apimanagement.WorkspaceCertificate("example", {
///     name: "example-cert",
///     apiManagementWorkspaceId: exampleWorkspace.id,
///     certificateDataBase64: std.filebase64({
///         input: "example.pfx",
///     }).then(invoke => invoke.result),
///     password: "terraform",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.apimanagement.Service("example",
///     name="example-apim",
///     location=example.location,
///     resource_group_name=example.name,
///     publisher_name="My Company",
///     publisher_email="company@terraform.io",
///     sku_name="Premium_1")
/// example_workspace = azure.apimanagement.Workspace("example",
///     name="example-workspace",
///     api_management_id=example_service.id,
///     display_name="Example Workspace")
/// example_workspace_certificate = azure.apimanagement.WorkspaceCertificate("example",
///     name="example-cert",
///     api_management_workspace_id=example_workspace.id,
///     certificate_data_base64=std.filebase64(input="example.pfx").result,
///     password="terraform")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleService = new Azure.ApiManagement.Service("example", new()
///     {
///         Name = "example-apim",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         PublisherName = "My Company",
///         PublisherEmail = "company@terraform.io",
///         SkuName = "Premium_1",
///     });
///
///     var exampleWorkspace = new Azure.ApiManagement.Workspace("example", new()
///     {
///         Name = "example-workspace",
///         ApiManagementId = exampleService.Id,
///         DisplayName = "Example Workspace",
///     });
///
///     var exampleWorkspaceCertificate = new Azure.ApiManagement.WorkspaceCertificate("example", new()
///     {
///         Name = "example-cert",
///         ApiManagementWorkspaceId = exampleWorkspace.Id,
///         CertificateDataBase64 = Std.Filebase64.Invoke(new()
///         {
///             Input = "example.pfx",
///         }).Apply(invoke => invoke.Result),
///         Password = "terraform",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := apimanagement.NewService(ctx, "example", &apimanagement.ServiceArgs{
/// 			Name:              pulumi.String("example-apim"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			PublisherName:     pulumi.String("My Company"),
/// 			PublisherEmail:    pulumi.String("company@terraform.io"),
/// 			SkuName:           pulumi.String("Premium_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := apimanagement.NewWorkspace(ctx, "example", &apimanagement.WorkspaceArgs{
/// 			Name:            pulumi.String("example-workspace"),
/// 			ApiManagementId: exampleService.ID(),
/// 			DisplayName:     pulumi.String("Example Workspace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "example.pfx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewWorkspaceCertificate(ctx, "example", &apimanagement.WorkspaceCertificateArgs{
/// 			Name:                     pulumi.String("example-cert"),
/// 			ApiManagementWorkspaceId: exampleWorkspace.ID(),
/// 			CertificateDataBase64:    pulumi.String(invokeFilebase64.Result),
/// 			Password:                 pulumi.String("terraform"),
/// 		})
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_apimanagement_service" "example" {
///   name                = "example-apim"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   publisher_name      = "My Company"
///   publisher_email     = "company@terraform.io"
///   sku_name            = "Premium_1"
/// }
/// resource "azure_apimanagement_workspace" "example" {
///   name              = "example-workspace"
///   api_management_id = azure_apimanagement_service.example.id
///   display_name      = "Example Workspace"
/// }
/// resource "azure_apimanagement_workspacecertificate" "example" {
///   name                        = "example-cert"
///   api_management_workspace_id = azure_apimanagement_workspace.example.id
///   certificate_data_base64     = filebase64("example.pfx")
///   password                    = "terraform"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.apimanagement.Service;
/// import com.pulumi.azure.apimanagement.ServiceArgs;
/// import com.pulumi.azure.apimanagement.Workspace;
/// import com.pulumi.azure.apimanagement.WorkspaceArgs;
/// import com.pulumi.azure.apimanagement.WorkspaceCertificate;
/// import com.pulumi.azure.apimanagement.WorkspaceCertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-apim")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .publisherName("My Company")
///             .publisherEmail("company@terraform.io")
///             .skuName("Premium_1")
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example-workspace")
///             .apiManagementId(exampleService.id())
///             .displayName("Example Workspace")
///             .build());
///
///         var exampleWorkspaceCertificate = new WorkspaceCertificate("exampleWorkspaceCertificate", WorkspaceCertificateArgs.builder()
///             .name("example-cert")
///             .apiManagementWorkspaceId(exampleWorkspace.id())
///             .certificateDataBase64(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("example.pfx")
///                 .build()).result())
///             .password("terraform")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleService:
///     type: azure:apimanagement:Service
///     name: example
///     properties:
///       name: example-apim
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       publisherName: My Company
///       publisherEmail: company@terraform.io
///       skuName: Premium_1
///   exampleWorkspace:
///     type: azure:apimanagement:Workspace
///     name: example
///     properties:
///       name: example-workspace
///       apiManagementId: ${exampleService.id}
///       displayName: Example Workspace
///   exampleWorkspaceCertificate:
///     type: azure:apimanagement:WorkspaceCertificate
///     name: example
///     properties:
///       name: example-cert
///       apiManagementWorkspaceId: ${exampleWorkspace.id}
///       certificateDataBase64:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: example.pfx
///           return: result
///       password: terraform
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2024-05-01
///
/// ## Import
///
/// API Management Workspace Certificates can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/workspaceCertificate:WorkspaceCertificate example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/service1/workspaces/workspace1/certificates/certificate1
/// ```
class WorkspaceCertificate extends pulumi.CustomResource {
  /// Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementWorkspaceId;
  /// Specifies the base64-encoded string containing the certificate in PKCS#12 (.pfx) format.
  ///
  /// &gt; **Note:** This is required when `password` is specified. Exactly one of `certificateDataBase64` or `keyVaultSecretId` must be specified.
  late final pulumi.Output<String?> certificateDataBase64;
  /// The expiration date of the API Management Workspace Certificate.
  late final pulumi.Output<String> expiration;
  /// Specifies the ID of the key vault secret.
  ///
  /// &gt; **Note:** This is required when `userAssignedIdentityClientId` is specified. Exactly one of `certificateDataBase64` or `keyVaultSecretId` must be specified.
  late final pulumi.Output<String?> keyVaultSecretId;
  /// Specifies the name of the API Management Workspace Certificate. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the password used to access the `certificateDataBase64`.
  late final pulumi.Output<String?> password;
  /// The subject name of the API Management Workspace Certificate.
  late final pulumi.Output<String> subject;
  /// The thumbprint of the API Management Workspace Certificate.
  late final pulumi.Output<String> thumbprint;
  /// Specifies the client ID of user-assigned identity to be used for accessing the `keyVaultSecretId`.
  late final pulumi.Output<String?> userAssignedIdentityClientId;

  /// Creates a new [WorkspaceCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceCertificate]. {@macro pulumi_apimanagement_workspace_certificate_workspace_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceCertificate(
    String name, {
    WorkspaceCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/workspaceCertificate:WorkspaceCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementWorkspaceId = registerOutput<String>('apiManagementWorkspaceId');
    certificateDataBase64 = registerOutput<String?>('certificateDataBase64');
    expiration = registerOutput<String>('expiration');
    keyVaultSecretId = registerOutput<String?>('keyVaultSecretId');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password');
    subject = registerOutput<String>('subject');
    thumbprint = registerOutput<String>('thumbprint');
    userAssignedIdentityClientId = registerOutput<String?>('userAssignedIdentityClientId');
  }

  /// Gets an existing [WorkspaceCertificate] resource's state with the given [name] and [id].
  static WorkspaceCertificate get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceCertificateState? state,
  }) {
    return WorkspaceCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkspaceCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/workspaceCertificate:WorkspaceCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementWorkspaceId = registerOutput<String>('apiManagementWorkspaceId');
    certificateDataBase64 = registerOutput<String?>('certificateDataBase64');
    expiration = registerOutput<String>('expiration');
    keyVaultSecretId = registerOutput<String?>('keyVaultSecretId');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password');
    subject = registerOutput<String>('subject');
    thumbprint = registerOutput<String>('thumbprint');
    userAssignedIdentityClientId = registerOutput<String?>('userAssignedIdentityClientId');
  }
}
