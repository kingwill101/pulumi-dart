import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_certificate_args.dart';
import 'environment_certificate_certificate_key_vault.dart';
import 'environment_certificate_state.dart';

/// Manages a Container App Environment Certificate.
///
/// ## Example Usage
///
/// ### Certificate from .pfx file
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
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "acctest-01",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
///     retentionInDays: 30,
/// });
/// const exampleEnvironment = new azure.containerapp.Environment("example", {
///     name: "myEnvironment",
///     location: example.location,
///     resourceGroupName: example.name,
///     logAnalyticsWorkspaceId: exampleAnalyticsWorkspace.id,
/// });
/// const exampleEnvironmentCertificate = new azure.containerapp.EnvironmentCertificate("example", {
///     name: "myfriendlyname",
///     containerAppEnvironmentId: exampleEnvironment.id,
///     certificateBlobBase64: std.filebase64({
///         input: "path/to/certificate_file.pfx",
///     }).then(invoke => invoke.result),
///     certificatePassword: "$3cretSqu1rreL",
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
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="acctest-01",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018",
///     retention_in_days=30)
/// example_environment = azure.containerapp.Environment("example",
///     name="myEnvironment",
///     location=example.location,
///     resource_group_name=example.name,
///     log_analytics_workspace_id=example_analytics_workspace.id)
/// example_environment_certificate = azure.containerapp.EnvironmentCertificate("example",
///     name="myfriendlyname",
///     container_app_environment_id=example_environment.id,
///     certificate_blob_base64=std.filebase64(input="path/to/certificate_file.pfx").result,
///     certificate_password="$3cretSqu1rreL")
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
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "acctest-01",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///         RetentionInDays = 30,
///     });
///
///     var exampleEnvironment = new Azure.ContainerApp.Environment("example", new()
///     {
///         Name = "myEnvironment",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         LogAnalyticsWorkspaceId = exampleAnalyticsWorkspace.Id,
///     });
///
///     var exampleEnvironmentCertificate = new Azure.ContainerApp.EnvironmentCertificate("example", new()
///     {
///         Name = "myfriendlyname",
///         ContainerAppEnvironmentId = exampleEnvironment.Id,
///         CertificateBlobBase64 = Std.Filebase64.Invoke(new()
///         {
///             Input = "path/to/certificate_file.pfx",
///         }).Apply(invoke => invoke.Result),
///         CertificatePassword = "$3cretSqu1rreL",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerapp"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
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
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("acctest-01"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 			RetentionInDays:   pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEnvironment, err := containerapp.NewEnvironment(ctx, "example", &containerapp.EnvironmentArgs{
/// 			Name:                    pulumi.String("myEnvironment"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			LogAnalyticsWorkspaceId: exampleAnalyticsWorkspace.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "path/to/certificate_file.pfx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerapp.NewEnvironmentCertificate(ctx, "example", &containerapp.EnvironmentCertificateArgs{
/// 			Name:                      pulumi.String("myfriendlyname"),
/// 			ContainerAppEnvironmentId: exampleEnvironment.ID().ToIDOutput().ToStringOutput(),
/// 			CertificateBlobBase64:     pulumi.String(invokeFilebase64.Result),
/// 			CertificatePassword:       pulumi.String("$3cretSqu1rreL"),
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
/// resource "azure_operationalinsights_analyticsworkspace" "example" {
///   name                = "acctest-01"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "PerGB2018"
///   retention_in_days   = 30
/// }
/// resource "azure_containerapp_environment" "example" {
///   name                       = "myEnvironment"
///   location                   = azure_core_resourcegroup.example.location
///   resource_group_name        = azure_core_resourcegroup.example.name
///   log_analytics_workspace_id = azure_operationalinsights_analyticsworkspace.example.id
/// }
/// resource "azure_containerapp_environmentcertificate" "example" {
///   name                         = "myfriendlyname"
///   container_app_environment_id = azure_containerapp_environment.example.id
///   certificate_blob_base64      = filebase64("path/to/certificate_file.pfx")
///   certificate_password         = "$3cretSqu1rreL"
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
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.containerapp.Environment;
/// import com.pulumi.azure.containerapp.EnvironmentArgs;
/// import com.pulumi.azure.containerapp.EnvironmentCertificate;
/// import com.pulumi.azure.containerapp.EnvironmentCertificateArgs;
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
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("acctest-01")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .retentionInDays(30)
///             .build());
///
///         var exampleEnvironment = new Environment("exampleEnvironment", EnvironmentArgs.builder()
///             .name("myEnvironment")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .logAnalyticsWorkspaceId(exampleAnalyticsWorkspace.id())
///             .build());
///
///         var exampleEnvironmentCertificate = new EnvironmentCertificate("exampleEnvironmentCertificate", EnvironmentCertificateArgs.builder()
///             .name("myfriendlyname")
///             .containerAppEnvironmentId(exampleEnvironment.id())
///             .certificateBlobBase64(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("path/to/certificate_file.pfx")
///                 .build()).result())
///             .certificatePassword("$3cretSqu1rreL")
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
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: acctest-01
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///       retentionInDays: 30
///   exampleEnvironment:
///     type: azure:containerapp:Environment
///     name: example
///     properties:
///       name: myEnvironment
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       logAnalyticsWorkspaceId: ${exampleAnalyticsWorkspace.id}
///   exampleEnvironmentCertificate:
///     type: azure:containerapp:EnvironmentCertificate
///     name: example
///     properties:
///       name: myfriendlyname
///       containerAppEnvironmentId: ${exampleEnvironment.id}
///       certificateBlobBase64:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: path/to/certificate_file.pfx
///           return: result
///       certificatePassword: $3cretSqu1rreL
/// ```
///
///
/// ### Certificate from Key Vault
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "example-workspace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
///     retentionInDays: 30,
/// });
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     name: "example-identity",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleEnvironment = new azure.containerapp.Environment("example", {
///     name: "example-environment",
///     location: example.location,
///     resourceGroupName: example.name,
///     logAnalyticsWorkspaceId: exampleAnalyticsWorkspace.id,
///     identity: {
///         type: "UserAssigned",
///         identityIds: [exampleUserAssignedIdentity.id],
///     },
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "example-keyvault",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     rbacAuthorizationEnabled: true,
/// });
/// const userKeyvaultAdmin = new azure.authorization.Assignment("user_keyvault_admin", {
///     scope: exampleKeyVault.id,
///     roleDefinitionName: "Key Vault Administrator",
///     principalId: current.then(current => current.objectId),
/// });
/// const exampleAssignment = new azure.authorization.Assignment("example", {
///     scope: exampleKeyVault.id,
///     roleDefinitionName: "Key Vault Secrets User",
///     principalId: exampleEnvironment.identity.apply(identity => identity?.principalId),
/// });
/// const exampleCertificate = new azure.keyvault.Certificate("example", {
///     name: "example-certificate",
///     keyVaultId: exampleKeyVault.id,
///     certificate: {
///         contents: std.filebase64({
///             input: "path/to/certificate_file.pfx",
///         }).then(invoke => invoke.result),
///         password: "",
///     },
/// }, {
///     dependsOn: [
///         userKeyvaultAdmin,
///         exampleAssignment,
///     ],
/// });
/// const exampleEnvironmentCertificate = new azure.containerapp.EnvironmentCertificate("example", {
///     name: "example-certificate",
///     containerAppEnvironmentId: exampleEnvironment.id,
///     certificateKeyVault: {
///         identity: exampleUserAssignedIdentity.id,
///         keyVaultSecretId: exampleCertificate.versionlessSecretId,
///     },
/// }, {
///     dependsOn: [exampleAssignment],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="example-workspace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018",
///     retention_in_days=30)
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     name="example-identity",
///     resource_group_name=example.name,
///     location=example.location)
/// example_environment = azure.containerapp.Environment("example",
///     name="example-environment",
///     location=example.location,
///     resource_group_name=example.name,
///     log_analytics_workspace_id=example_analytics_workspace.id,
///     identity={
///         "type": "UserAssigned",
///         "identity_ids": [example_user_assigned_identity.id],
///     })
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="example-keyvault",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     rbac_authorization_enabled=True)
/// user_keyvault_admin = azure.authorization.Assignment("user_keyvault_admin",
///     scope=example_key_vault.id,
///     role_definition_name="Key Vault Administrator",
///     principal_id=current.object_id)
/// example_assignment = azure.authorization.Assignment("example",
///     scope=example_key_vault.id,
///     role_definition_name="Key Vault Secrets User",
///     principal_id=example_environment.identity.principal_id)
/// example_certificate = azure.keyvault.Certificate("example",
///     name="example-certificate",
///     key_vault_id=example_key_vault.id,
///     certificate={
///         "contents": std.filebase64(input="path/to/certificate_file.pfx").result,
///         "password": "",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             user_keyvault_admin,
///             example_assignment,
///         ]))
/// example_environment_certificate = azure.containerapp.EnvironmentCertificate("example",
///     name="example-certificate",
///     container_app_environment_id=example_environment.id,
///     certificate_key_vault={
///         "identity": example_user_assigned_identity.id,
///         "key_vault_secret_id": example_certificate.versionless_secret_id,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_assignment]))
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
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "example-workspace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///         RetentionInDays = 30,
///     });
///
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         Name = "example-identity",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleEnvironment = new Azure.ContainerApp.Environment("example", new()
///     {
///         Name = "example-environment",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         LogAnalyticsWorkspaceId = exampleAnalyticsWorkspace.Id,
///         Identity = new Azure.ContainerApp.Inputs.EnvironmentIdentityArgs
///         {
///             Type = "UserAssigned",
///             IdentityIds = new[]
///             {
///                 exampleUserAssignedIdentity.Id,
///             },
///         },
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "example-keyvault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         RbacAuthorizationEnabled = true,
///     });
///
///     var userKeyvaultAdmin = new Azure.Authorization.Assignment("user_keyvault_admin", new()
///     {
///         Scope = exampleKeyVault.Id,
///         RoleDefinitionName = "Key Vault Administrator",
///         PrincipalId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///     });
///
///     var exampleAssignment = new Azure.Authorization.Assignment("example", new()
///     {
///         Scope = exampleKeyVault.Id,
///         RoleDefinitionName = "Key Vault Secrets User",
///         PrincipalId = exampleEnvironment.Identity.Apply(identity => identity?.PrincipalId),
///     });
///
///     var exampleCertificate = new Azure.KeyVault.Certificate("example", new()
///     {
///         Name = "example-certificate",
///         KeyVaultId = exampleKeyVault.Id,
///         KeyVaultCertificate = new Azure.KeyVault.Inputs.CertificateCertificateArgs
///         {
///             Contents = Std.Filebase64.Invoke(new()
///             {
///                 Input = "path/to/certificate_file.pfx",
///             }).Apply(invoke => invoke.Result),
///             Password = "",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             userKeyvaultAdmin,
///             exampleAssignment,
///         },
///     });
///
///     var exampleEnvironmentCertificate = new Azure.ContainerApp.EnvironmentCertificate("example", new()
///     {
///         Name = "example-certificate",
///         ContainerAppEnvironmentId = exampleEnvironment.Id,
///         CertificateKeyVault = new Azure.ContainerApp.Inputs.EnvironmentCertificateCertificateKeyVaultArgs
///         {
///             Identity = exampleUserAssignedIdentity.Id,
///             KeyVaultSecretId = exampleCertificate.VersionlessSecretId,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAssignment,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerapp"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("example-workspace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 			RetentionInDays:   pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			Name:              pulumi.String("example-identity"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEnvironment, err := containerapp.NewEnvironment(ctx, "example", &containerapp.EnvironmentArgs{
/// 			Name:                    pulumi.String("example-environment"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			LogAnalyticsWorkspaceId: exampleAnalyticsWorkspace.ID().ToIDOutput().ToStringOutput(),
/// 			Identity: &containerapp.EnvironmentIdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                     pulumi.String("example-keyvault"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			TenantId:                 pulumi.String(current.TenantId),
/// 			SkuName:                  pulumi.String("standard"),
/// 			RbacAuthorizationEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		userKeyvaultAdmin, err := authorization.NewAssignment(ctx, "user_keyvault_admin", &authorization.AssignmentArgs{
/// 			Scope:              exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
/// 			RoleDefinitionName: pulumi.String("Key Vault Administrator"),
/// 			PrincipalId:        pulumi.String(current.ObjectId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAssignment, err := authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
/// 			Scope:              exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
/// 			RoleDefinitionName: pulumi.String("Key Vault Secrets User"),
/// 			PrincipalId:        exampleEnvironment.Identity.PrincipalId(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "path/to/certificate_file.pfx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCertificate, err := keyvault.NewCertificate(ctx, "example", &keyvault.CertificateArgs{
/// 			Name:       pulumi.String("example-certificate"),
/// 			KeyVaultId: exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
/// 			Certificate: &keyvault.CertificateCertificateArgs{
/// 				Contents: pulumi.String(invokeFilebase64.Result),
/// 				Password: pulumi.String(""),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			userKeyvaultAdmin,
/// 			exampleAssignment,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerapp.NewEnvironmentCertificate(ctx, "example", &containerapp.EnvironmentCertificateArgs{
/// 			Name:                      pulumi.String("example-certificate"),
/// 			ContainerAppEnvironmentId: exampleEnvironment.ID().ToIDOutput().ToStringOutput(),
/// 			CertificateKeyVault: &containerapp.EnvironmentCertificateCertificateKeyVaultArgs{
/// 				Identity:         exampleUserAssignedIdentity.ID().ToIDOutput().ToStringOutput(),
/// 				KeyVaultSecretId: exampleCertificate.VersionlessSecretId,
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAssignment,
/// 		}))
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
/// data "azure_core_getclientconfig" "current" {
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_operationalinsights_analyticsworkspace" "example" {
///   name                = "example-workspace"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "PerGB2018"
///   retention_in_days   = 30
/// }
/// resource "azure_authorization_userassignedidentity" "example" {
///   name                = "example-identity"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_containerapp_environment" "example" {
///   name                       = "example-environment"
///   location                   = azure_core_resourcegroup.example.location
///   resource_group_name        = azure_core_resourcegroup.example.name
///   log_analytics_workspace_id = azure_operationalinsights_analyticsworkspace.example.id
///   identity = {
///     type         = "UserAssigned"
///     identity_ids = [azure_authorization_userassignedidentity.example.id]
///   }
/// }
/// resource "azure_keyvault_keyvault" "example" {
///   name                       = "example-keyvault"
///   location                   = azure_core_resourcegroup.example.location
///   resource_group_name        = azure_core_resourcegroup.example.name
///   tenant_id                  = data.azure_core_getclientconfig.current.tenant_id
///   sku_name                   = "standard"
///   rbac_authorization_enabled = true
/// }
/// resource "azure_authorization_assignment" "user_keyvault_admin" {
///   scope                = azure_keyvault_keyvault.example.id
///   role_definition_name = "Key Vault Administrator"
///   principal_id         = data.azure_core_getclientconfig.current.object_id
/// }
/// resource "azure_authorization_assignment" "example" {
///   scope                = azure_keyvault_keyvault.example.id
///   role_definition_name = "Key Vault Secrets User"
///   principal_id         = azure_containerapp_environment.example.identity.principal_id
/// }
/// resource "azure_keyvault_certificate" "example" {
///   depends_on   = [azure_authorization_assignment.user_keyvault_admin, azure_authorization_assignment.example]
///   name         = "example-certificate"
///   key_vault_id = azure_keyvault_keyvault.example.id
///   certificate = {
///     contents = filebase64("path/to/certificate_file.pfx")
///     password = ""
///   }
/// }
/// resource "azure_containerapp_environmentcertificate" "example" {
///   depends_on                   = [azure_authorization_assignment.example]
///   name                         = "example-certificate"
///   container_app_environment_id = azure_containerapp_environment.example.id
///   certificate_key_vault = {
///     identity            = azure_authorization_userassignedidentity.example.id
///     key_vault_secret_id = azure_keyvault_certificate.example.versionless_secret_id
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.containerapp.Environment;
/// import com.pulumi.azure.containerapp.EnvironmentArgs;
/// import com.pulumi.azure.containerapp.inputs.EnvironmentIdentityArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azure.keyvault.Certificate;
/// import com.pulumi.azure.keyvault.CertificateArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
/// import com.pulumi.azure.containerapp.EnvironmentCertificate;
/// import com.pulumi.azure.containerapp.EnvironmentCertificateArgs;
/// import com.pulumi.azure.containerapp.inputs.EnvironmentCertificateCertificateKeyVaultArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("example-workspace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .retentionInDays(30)
///             .build());
///
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .name("example-identity")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleEnvironment = new Environment("exampleEnvironment", EnvironmentArgs.builder()
///             .name("example-environment")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .logAnalyticsWorkspaceId(exampleAnalyticsWorkspace.id())
///             .identity(EnvironmentIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .identityIds(exampleUserAssignedIdentity.id())
///                 .build())
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("example-keyvault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .rbacAuthorizationEnabled(true)
///             .build());
///
///         var userKeyvaultAdmin = new Assignment("userKeyvaultAdmin", AssignmentArgs.builder()
///             .scope(exampleKeyVault.id())
///             .roleDefinitionName("Key Vault Administrator")
///             .principalId(current.objectId())
///             .build());
///
///         var exampleAssignment = new Assignment("exampleAssignment", AssignmentArgs.builder()
///             .scope(exampleKeyVault.id())
///             .roleDefinitionName("Key Vault Secrets User")
///             .principalId(exampleEnvironment.identity().applyValue(_identity -> _identity.principalId()))
///             .build());
///
///         var exampleCertificate = new Certificate("exampleCertificate", CertificateArgs.builder()
///             .name("example-certificate")
///             .keyVaultId(exampleKeyVault.id())
///             .certificate(CertificateCertificateArgs.builder()
///                 .contents(StdFunctions.filebase64(Filebase64Args.builder()
///                     .input("path/to/certificate_file.pfx")
///                     .build()).result())
///                 .password("")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     userKeyvaultAdmin,
///                     exampleAssignment)
///                 .build());
///
///         var exampleEnvironmentCertificate = new EnvironmentCertificate("exampleEnvironmentCertificate", EnvironmentCertificateArgs.builder()
///             .name("example-certificate")
///             .containerAppEnvironmentId(exampleEnvironment.id())
///             .certificateKeyVault(EnvironmentCertificateCertificateKeyVaultArgs.builder()
///                 .identity(exampleUserAssignedIdentity.id())
///                 .keyVaultSecretId(exampleCertificate.versionlessSecretId())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAssignment)
///                 .build());
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
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: example-workspace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///       retentionInDays: 30
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       name: example-identity
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleEnvironment:
///     type: azure:containerapp:Environment
///     name: example
///     properties:
///       name: example-environment
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       logAnalyticsWorkspaceId: ${exampleAnalyticsWorkspace.id}
///       identity:
///         type: UserAssigned
///         identityIds:
///           - ${exampleUserAssignedIdentity.id}
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: example-keyvault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: standard
///       rbacAuthorizationEnabled: true
///   userKeyvaultAdmin:
///     type: azure:authorization:Assignment
///     name: user_keyvault_admin
///     properties:
///       scope: ${exampleKeyVault.id}
///       roleDefinitionName: Key Vault Administrator
///       principalId: ${current.objectId}
///   exampleAssignment:
///     type: azure:authorization:Assignment
///     name: example
///     properties:
///       scope: ${exampleKeyVault.id}
///       roleDefinitionName: Key Vault Secrets User
///       principalId: ${exampleEnvironment.identity.principalId}
///   exampleCertificate:
///     type: azure:keyvault:Certificate
///     name: example
///     properties:
///       name: example-certificate
///       keyVaultId: ${exampleKeyVault.id}
///       certificate:
///         contents:
///           fn::invoke:
///             function: std:filebase64
///             arguments:
///               input: path/to/certificate_file.pfx
///             return: result
///         password: ""
///     options:
///       dependsOn:
///         - ${userKeyvaultAdmin}
///         - ${exampleAssignment}
///   exampleEnvironmentCertificate:
///     type: azure:containerapp:EnvironmentCertificate
///     name: example
///     properties:
///       name: example-certificate
///       containerAppEnvironmentId: ${exampleEnvironment.id}
///       certificateKeyVault:
///         identity: ${exampleUserAssignedIdentity.id}
///         keyVaultSecretId: ${exampleCertificate.versionlessSecretId}
///     options:
///       dependsOn:
///         - ${exampleAssignment}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.App` - 2025-07-01
///
/// ## Import
///
/// A Container App Environment Certificate can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerapp/environmentCertificate:EnvironmentCertificate example "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.App/managedEnvironments/myenv/certificates/mycertificate"
/// ```
class EnvironmentCertificate extends pulumi.CustomResource {
  /// The Certificate Private Key as a base64 encoded PFX or PEM. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** One of `certificateBlobBase64` and `certificateKeyVault` must be set.
  late final pulumi.Output<String?> certificateBlobBase64;
  /// A `certificateKeyVault` block as defined below. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** one of `certificateBlobBase64` and `certificateKeyVault` must be set.
  late final pulumi.Output<EnvironmentCertificateCertificateKeyVault?> certificateKeyVault;
  /// The password for the Certificate. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** required if `certificateBlobBase64` is specified.
  late final pulumi.Output<String?> certificatePassword;
  /// The Container App Managed Environment ID to configure this Certificate on. Changing this forces a new resource to be created.
  late final pulumi.Output<String> containerAppEnvironmentId;
  /// The expiration date for the Certificate.
  late final pulumi.Output<String> expirationDate;
  /// The date of issue for the Certificate.
  late final pulumi.Output<String> issueDate;
  /// The Certificate Issuer.
  late final pulumi.Output<String> issuer;
  /// The name of the Container Apps Environment Certificate. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The Subject Name for the Certificate.
  late final pulumi.Output<String> subjectName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The Thumbprint of the Certificate.
  late final pulumi.Output<String> thumbprint;

  /// Creates a new [EnvironmentCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentCertificate]. {@macro pulumi_containerapp_environment_certificate_environment_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentCertificate(
    String name, {
    EnvironmentCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerapp/environmentCertificate:EnvironmentCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['certificatePassword'],
        ) {
    certificateBlobBase64 = registerOutput<String?>('certificateBlobBase64');
    certificateKeyVault = registerOutput<EnvironmentCertificateCertificateKeyVault?>('certificateKeyVault', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentCertificateCertificateKeyVault.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    certificatePassword = registerOutput<String?>('certificatePassword', isSecret: true);
    containerAppEnvironmentId = registerOutput<String>('containerAppEnvironmentId');
    expirationDate = registerOutput<String>('expirationDate');
    issueDate = registerOutput<String>('issueDate');
    issuer = registerOutput<String>('issuer');
    this.name = registerOutput<String>('name');
    subjectName = registerOutput<String>('subjectName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    thumbprint = registerOutput<String>('thumbprint');
  }

  /// Gets an existing [EnvironmentCertificate] resource's state with the given [name] and [id].
  static EnvironmentCertificate get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentCertificateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EnvironmentCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EnvironmentCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerapp/environmentCertificate:EnvironmentCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateBlobBase64 = registerOutput<String?>('certificateBlobBase64');
    certificateKeyVault = registerOutput<EnvironmentCertificateCertificateKeyVault?>('certificateKeyVault', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentCertificateCertificateKeyVault.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    certificatePassword = registerOutput<String?>('certificatePassword', isSecret: true);
    containerAppEnvironmentId = registerOutput<String>('containerAppEnvironmentId');
    expirationDate = registerOutput<String>('expirationDate');
    issueDate = registerOutput<String>('issueDate');
    issuer = registerOutput<String>('issuer');
    this.name = registerOutput<String>('name');
    subjectName = registerOutput<String>('subjectName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    thumbprint = registerOutput<String>('thumbprint');
  }

  /// Creates a typed reference to an existing [EnvironmentCertificate] resource.
  EnvironmentCertificate.reference(String urn)
    : super(
        'azure:containerapp/environmentCertificate:EnvironmentCertificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['certificatePassword'],
        isResourceReference: true,
      ) {
    certificateBlobBase64 = registerOutput<String?>('certificateBlobBase64');
    certificateKeyVault = registerOutput<EnvironmentCertificateCertificateKeyVault?>('certificateKeyVault', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentCertificateCertificateKeyVault.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    certificatePassword = registerOutput<String?>('certificatePassword', isSecret: true);
    containerAppEnvironmentId = registerOutput<String>('containerAppEnvironmentId');
    expirationDate = registerOutput<String>('expirationDate');
    issueDate = registerOutput<String>('issueDate');
    issuer = registerOutput<String>('issuer');
    this.name = registerOutput<String>('name');
    subjectName = registerOutput<String>('subjectName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    thumbprint = registerOutput<String>('thumbprint');
  }
}
