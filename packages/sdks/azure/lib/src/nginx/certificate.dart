import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';
import 'certificate_state.dart';

/// Manages a Certificate for an NGINX Deployment.
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
///     name: "example-rg",
///     location: "West Europe",
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     allocationMethod: "Static",
///     sku: "Standard",
///     tags: {
///         environment: "Production",
///     },
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
///     delegations: [{
///         name: "delegation",
///         serviceDelegation: {
///             name: "NGINX.NGINXPLUS/nginxDeployments",
///             actions: ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///         },
///     }],
/// });
/// const exampleDeployment = new azure.nginx.Deployment("example", {
///     name: "example-nginx",
///     resourceGroupName: example.name,
///     sku: "publicpreview_Monthly_gmz7xq9ge3py",
///     location: example.location,
///     managedResourceGroup: "example",
///     frontendPublic: {
///         ipAddresses: [examplePublicIp.id],
///     },
///     networkInterfaces: [{
///         subnetId: exampleSubnet.id,
///     }],
/// });
/// const current = azure.core.getClientConfig({});
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "examplekeyvault",
///     location: example.location,
///     resourceGroupName: example.name,
///     rbacAuthorizationEnabled: false,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "premium",
///     accessPolicies: [{
///         tenantId: current.then(current => current.tenantId),
///         objectId: current.then(current => current.objectId),
///         certificatePermissions: [
///             "Create",
///             "Delete",
///             "DeleteIssuers",
///             "Get",
///             "GetIssuers",
///             "Import",
///             "List",
///             "ListIssuers",
///             "ManageContacts",
///             "ManageIssuers",
///             "SetIssuers",
///             "Update",
///         ],
///     }],
/// });
/// const exampleCertificate = new azure.keyvault.Certificate("example", {
///     name: "imported-cert",
///     keyVaultId: exampleKeyVault.id,
///     certificate: {
///         contents: std.filebase64({
///             input: "certificate-to-import.pfx",
///         }).then(invoke => invoke.result),
///         password: "",
///     },
/// });
/// const exampleCertificate2 = new azure.nginx.Certificate("example", {
///     name: "examplecert",
///     nginxDeploymentId: exampleDeployment.id,
///     keyVirtualPath: "/src/cert/soservermekey.key",
///     certificateVirtualPath: "/src/cert/server.cert",
///     keyVaultSecretId: exampleCertificate.secretId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_public_ip = azure.network.PublicIp("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     allocation_method="Static",
///     sku="Standard",
///     tags={
///         "environment": "Production",
///     })
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"],
///     delegations=[{
///         "name": "delegation",
///         "service_delegation": {
///             "name": "NGINX.NGINXPLUS/nginxDeployments",
///             "actions": ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///         },
///     }])
/// example_deployment = azure.nginx.Deployment("example",
///     name="example-nginx",
///     resource_group_name=example.name,
///     sku="publicpreview_Monthly_gmz7xq9ge3py",
///     location=example.location,
///     managed_resource_group="example",
///     frontend_public={
///         "ip_addresses": [example_public_ip.id],
///     },
///     network_interfaces=[{
///         "subnet_id": example_subnet.id,
///     }])
/// current = azure.core.get_client_config()
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="examplekeyvault",
///     location=example.location,
///     resource_group_name=example.name,
///     rbac_authorization_enabled=False,
///     tenant_id=current.tenant_id,
///     sku_name="premium",
///     access_policies=[{
///         "tenant_id": current.tenant_id,
///         "object_id": current.object_id,
///         "certificate_permissions": [
///             "Create",
///             "Delete",
///             "DeleteIssuers",
///             "Get",
///             "GetIssuers",
///             "Import",
///             "List",
///             "ListIssuers",
///             "ManageContacts",
///             "ManageIssuers",
///             "SetIssuers",
///             "Update",
///         ],
///     }])
/// example_certificate = azure.keyvault.Certificate("example",
///     name="imported-cert",
///     key_vault_id=example_key_vault.id,
///     certificate={
///         "contents": std.filebase64(input="certificate-to-import.pfx").result,
///         "password": "",
///     })
/// example_certificate2 = azure.nginx.Certificate("example",
///     name="examplecert",
///     nginx_deployment_id=example_deployment.id,
///     key_virtual_path="/src/cert/soservermekey.key",
///     certificate_virtual_path="/src/cert/server.cert",
///     key_vault_secret_id=example_certificate.secret_id)
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
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AllocationMethod = "Static",
///         Sku = "Standard",
///         Tags =
///         {
///             { "environment", "Production" },
///         },
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "delegation",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "NGINX.NGINXPLUS/nginxDeployments",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleDeployment = new Azure.Nginx.Deployment("example", new()
///     {
///         Name = "example-nginx",
///         ResourceGroupName = example.Name,
///         Sku = "publicpreview_Monthly_gmz7xq9ge3py",
///         Location = example.Location,
///         ManagedResourceGroup = "example",
///         FrontendPublic = new Azure.Nginx.Inputs.DeploymentFrontendPublicArgs
///         {
///             IpAddresses = new[]
///             {
///                 examplePublicIp.Id,
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Azure.Nginx.Inputs.DeploymentNetworkInterfaceArgs
///             {
///                 SubnetId = exampleSubnet.Id,
///             },
///         },
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "examplekeyvault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         RbacAuthorizationEnabled = false,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "premium",
///         AccessPolicies = new[]
///         {
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 CertificatePermissions = new[]
///                 {
///                     "Create",
///                     "Delete",
///                     "DeleteIssuers",
///                     "Get",
///                     "GetIssuers",
///                     "Import",
///                     "List",
///                     "ListIssuers",
///                     "ManageContacts",
///                     "ManageIssuers",
///                     "SetIssuers",
///                     "Update",
///                 },
///             },
///         },
///     });
///
///     var exampleCertificate = new Azure.KeyVault.Certificate("example", new()
///     {
///         Name = "imported-cert",
///         KeyVaultId = exampleKeyVault.Id,
///         KeyVaultCertificate = new Azure.KeyVault.Inputs.CertificateCertificateArgs
///         {
///             Contents = Std.Filebase64.Invoke(new()
///             {
///                 Input = "certificate-to-import.pfx",
///             }).Apply(invoke => invoke.Result),
///             Password = "",
///         },
///     });
///
///     var exampleCertificate2 = new Azure.Nginx.Certificate("example", new()
///     {
///         Name = "examplecert",
///         NginxDeploymentId = exampleDeployment.Id,
///         KeyVirtualPath = "/src/cert/soservermekey.key",
///         CertificateVirtualPath = "/src/cert/server.cert",
///         KeyVaultSecretId = exampleCertificate.SecretId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/nginx"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 			Sku:               pulumi.String("Standard"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example-vnet"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("delegation"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("NGINX.NGINXPLUS/nginxDeployments"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDeployment, err := nginx.NewDeployment(ctx, "example", &nginx.DeploymentArgs{
/// 			Name:                 pulumi.String("example-nginx"),
/// 			ResourceGroupName:    example.Name,
/// 			Sku:                  pulumi.String("publicpreview_Monthly_gmz7xq9ge3py"),
/// 			Location:             example.Location,
/// 			ManagedResourceGroup: pulumi.String("example"),
/// 			FrontendPublic: &nginx.DeploymentFrontendPublicArgs{
/// 				IpAddresses: pulumi.StringArray{
/// 					examplePublicIp.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			NetworkInterfaces: nginx.DeploymentNetworkInterfaceArray{
/// 				&nginx.DeploymentNetworkInterfaceArgs{
/// 					SubnetId: exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                     pulumi.String("examplekeyvault"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			RbacAuthorizationEnabled: pulumi.Bool(false),
/// 			TenantId:                 pulumi.String(current.TenantId),
/// 			SkuName:                  pulumi.String("premium"),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(current.TenantId),
/// 					ObjectId: pulumi.String(current.ObjectId),
/// 					CertificatePermissions: pulumi.StringArray{
/// 						pulumi.String("Create"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("DeleteIssuers"),
/// 						pulumi.String("Get"),
/// 						pulumi.String("GetIssuers"),
/// 						pulumi.String("Import"),
/// 						pulumi.String("List"),
/// 						pulumi.String("ListIssuers"),
/// 						pulumi.String("ManageContacts"),
/// 						pulumi.String("ManageIssuers"),
/// 						pulumi.String("SetIssuers"),
/// 						pulumi.String("Update"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "certificate-to-import.pfx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCertificate, err := keyvault.NewCertificate(ctx, "example", &keyvault.CertificateArgs{
/// 			Name:       pulumi.String("imported-cert"),
/// 			KeyVaultId: exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
/// 			Certificate: &keyvault.CertificateCertificateArgs{
/// 				Contents: pulumi.String(invokeFilebase64.Result),
/// 				Password: pulumi.String(""),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nginx.NewCertificate(ctx, "example", &nginx.CertificateArgs{
/// 			Name:                   pulumi.String("examplecert"),
/// 			NginxDeploymentId:      exampleDeployment.ID().ToIDOutput().ToStringOutput(),
/// 			KeyVirtualPath:         pulumi.String("/src/cert/soservermekey.key"),
/// 			CertificateVirtualPath: pulumi.String("/src/cert/server.cert"),
/// 			KeyVaultSecretId:       exampleCertificate.SecretId,
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
/// data "azure_core_getclientconfig" "current" {
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-rg"
///   location = "West Europe"
/// }
/// resource "azure_network_publicip" "example" {
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   allocation_method   = "Static"
///   sku                 = "Standard"
///   tags = {
///     "environment" = "Production"
///   }
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "example-vnet"
///   address_spaces      = ["10.0.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "example-subnet"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.2.0/24"]
///   delegations {
///     name = "delegation"
///     service_delegation = {
///       name    = "NGINX.NGINXPLUS/nginxDeployments"
///       actions = ["Microsoft.Network/virtualNetworks/subnets/join/action"]
///     }
///   }
/// }
/// resource "azure_nginx_deployment" "example" {
///   name                   = "example-nginx"
///   resource_group_name    = azure_core_resourcegroup.example.name
///   sku                    = "publicpreview_Monthly_gmz7xq9ge3py"
///   location               = azure_core_resourcegroup.example.location
///   managed_resource_group = "example"
///   frontend_public = {
///     ip_addresses = [azure_network_publicip.example.id]
///   }
///   network_interfaces {
///     subnet_id = azure_network_subnet.example.id
///   }
/// }
/// resource "azure_keyvault_keyvault" "example" {
///   name                       = "examplekeyvault"
///   location                   = azure_core_resourcegroup.example.location
///   resource_group_name        = azure_core_resourcegroup.example.name
///   rbac_authorization_enabled = false
///   tenant_id                  = data.azure_core_getclientconfig.current.tenant_id
///   sku_name                   = "premium"
///   access_policies {
///     tenant_id               = data.azure_core_getclientconfig.current.tenant_id
///     object_id               = data.azure_core_getclientconfig.current.object_id
///     certificate_permissions = ["Create", "Delete", "DeleteIssuers", "Get", "GetIssuers", "Import", "List", "ListIssuers", "ManageContacts", "ManageIssuers", "SetIssuers", "Update"]
///   }
/// }
/// resource "azure_keyvault_certificate" "example" {
///   name         = "imported-cert"
///   key_vault_id = azure_keyvault_keyvault.example.id
///   certificate = {
///     contents = filebase64("certificate-to-import.pfx")
///     password = ""
///   }
/// }
/// resource "azure_nginx_certificate" "example" {
///   name                     = "examplecert"
///   nginx_deployment_id      = azure_nginx_deployment.example.id
///   key_virtual_path         = "/src/cert/soservermekey.key"
///   certificate_virtual_path = "/src/cert/server.cert"
///   key_vault_secret_id      = azure_keyvault_certificate.example.secret_id
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
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.nginx.Deployment;
/// import com.pulumi.azure.nginx.DeploymentArgs;
/// import com.pulumi.azure.nginx.inputs.DeploymentFrontendPublicArgs;
/// import com.pulumi.azure.nginx.inputs.DeploymentNetworkInterfaceArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificateArgs;
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
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .allocationMethod("Static")
///             .sku("Standard")
///             .tags(Map.of("environment", "Production"))
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("delegation")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("NGINX.NGINXPLUS/nginxDeployments")
///                     .actions("Microsoft.Network/virtualNetworks/subnets/join/action")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleDeployment = new Deployment("exampleDeployment", DeploymentArgs.builder()
///             .name("example-nginx")
///             .resourceGroupName(example.name())
///             .sku("publicpreview_Monthly_gmz7xq9ge3py")
///             .location(example.location())
///             .managedResourceGroup("example")
///             .frontendPublic(DeploymentFrontendPublicArgs.builder()
///                 .ipAddresses(examplePublicIp.id())
///                 .build())
///             .networkInterfaces(DeploymentNetworkInterfaceArgs.builder()
///                 .subnetId(exampleSubnet.id())
///                 .build())
///             .build());
///
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("examplekeyvault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .rbacAuthorizationEnabled(false)
///             .tenantId(current.tenantId())
///             .skuName("premium")
///             .accessPolicies(KeyVaultAccessPolicyArgs.builder()
///                 .tenantId(current.tenantId())
///                 .objectId(current.objectId())
///                 .certificatePermissions(
///                     "Create",
///                     "Delete",
///                     "DeleteIssuers",
///                     "Get",
///                     "GetIssuers",
///                     "Import",
///                     "List",
///                     "ListIssuers",
///                     "ManageContacts",
///                     "ManageIssuers",
///                     "SetIssuers",
///                     "Update")
///                 .build())
///             .build());
///
///         var exampleCertificate = new com.pulumi.azure.keyvault.Certificate("exampleCertificate", com.pulumi.azure.keyvault.CertificateArgs.builder()
///             .name("imported-cert")
///             .keyVaultId(exampleKeyVault.id())
///             .certificate(CertificateCertificateArgs.builder()
///                 .contents(StdFunctions.filebase64(Filebase64Args.builder()
///                     .input("certificate-to-import.pfx")
///                     .build()).result())
///                 .password("")
///                 .build())
///             .build());
///
///         var exampleCertificate2 = new com.pulumi.azure.nginx.Certificate("exampleCertificate2", com.pulumi.azure.nginx.CertificateArgs.builder()
///             .name("examplecert")
///             .nginxDeploymentId(exampleDeployment.id())
///             .keyVirtualPath("/src/cert/soservermekey.key")
///             .certificateVirtualPath("/src/cert/server.cert")
///             .keyVaultSecretId(exampleCertificate.secretId())
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
///       name: example-rg
///       location: West Europe
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       allocationMethod: Static
///       sku: Standard
///       tags:
///         environment: Production
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///       delegations:
///         - name: delegation
///           serviceDelegation:
///             name: NGINX.NGINXPLUS/nginxDeployments
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///   exampleDeployment:
///     type: azure:nginx:Deployment
///     name: example
///     properties:
///       name: example-nginx
///       resourceGroupName: ${example.name}
///       sku: publicpreview_Monthly_gmz7xq9ge3py
///       location: ${example.location}
///       managedResourceGroup: example
///       frontendPublic:
///         ipAddresses:
///           - ${examplePublicIp.id}
///       networkInterfaces:
///         - subnetId: ${exampleSubnet.id}
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: examplekeyvault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       rbacAuthorizationEnabled: false
///       tenantId: ${current.tenantId}
///       skuName: premium
///       accessPolicies:
///         - tenantId: ${current.tenantId}
///           objectId: ${current.objectId}
///           certificatePermissions:
///             - Create
///             - Delete
///             - DeleteIssuers
///             - Get
///             - GetIssuers
///             - Import
///             - List
///             - ListIssuers
///             - ManageContacts
///             - ManageIssuers
///             - SetIssuers
///             - Update
///   exampleCertificate:
///     type: azure:keyvault:Certificate
///     name: example
///     properties:
///       name: imported-cert
///       keyVaultId: ${exampleKeyVault.id}
///       certificate:
///         contents:
///           fn::invoke:
///             function: std:filebase64
///             arguments:
///               input: certificate-to-import.pfx
///             return: result
///         password: ""
///   exampleCertificate2:
///     type: azure:nginx:Certificate
///     name: example
///     properties:
///       name: examplecert
///       nginxDeploymentId: ${exampleDeployment.id}
///       keyVirtualPath: /src/cert/soservermekey.key
///       certificateVirtualPath: /src/cert/server.cert
///       keyVaultSecretId: ${exampleCertificate.secretId}
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
/// * `Nginx.NginxPlus` - 2024-11-01-preview
///
/// ## Import
///
/// An NGINX Certificate can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:nginx/certificate:Certificate example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Nginx.NginxPlus/nginxDeployments/deploy1/certificates/cer1
/// ```
class Certificate extends pulumi.CustomResource {
  /// Specify the path to the certificate file of this certificate.
  late final pulumi.Output<String> certificateVirtualPath;
  /// Specify the ID of the Key Vault Secret for this certificate.
  late final pulumi.Output<String> keyVaultSecretId;
  /// Specify the path to the key file of this certificate.
  late final pulumi.Output<String> keyVirtualPath;
  /// The name which should be used for this NGINX Certificate. Changing this forces a new NGINX Certificate to be created.
  late final pulumi.Output<String> name;
  /// The ID of the NGINX Deployment that this Certificate should be associated with. Changing this forces a new NGINX Certificate to be created.
  late final pulumi.Output<String> nginxDeploymentId;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_nginx_certificate_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:nginx/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    certificateVirtualPath = registerOutput<String>('certificateVirtualPath');
    keyVaultSecretId = registerOutput<String>('keyVaultSecretId');
    keyVirtualPath = registerOutput<String>('keyVirtualPath');
    this.name = registerOutput<String>('name');
    nginxDeploymentId = registerOutput<String>('nginxDeploymentId');
  }

  /// Gets an existing [Certificate] resource's state with the given [name] and [id].
  static Certificate get(
    String name,
    pulumi.Input<String> id, {
    CertificateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Certificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Certificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:nginx/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateVirtualPath = registerOutput<String>('certificateVirtualPath');
    keyVaultSecretId = registerOutput<String>('keyVaultSecretId');
    keyVirtualPath = registerOutput<String>('keyVirtualPath');
    this.name = registerOutput<String>('name');
    nginxDeploymentId = registerOutput<String>('nginxDeploymentId');
  }

  /// Creates a typed reference to an existing [Certificate] resource.
  Certificate.reference(String urn)
    : super(
        'azure:nginx/certificate:Certificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    certificateVirtualPath = registerOutput<String>('certificateVirtualPath');
    keyVaultSecretId = registerOutput<String>('keyVaultSecretId');
    keyVirtualPath = registerOutput<String>('keyVirtualPath');
    this.name = registerOutput<String>('name');
    nginxDeploymentId = registerOutput<String>('nginxDeploymentId');
  }
}
