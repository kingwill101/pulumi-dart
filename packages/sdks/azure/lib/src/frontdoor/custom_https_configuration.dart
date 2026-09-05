import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_https_configuration_args.dart';
import 'custom_https_configuration_custom_https_configuration.dart';
import 'custom_https_configuration_state.dart';

/// &gt; **Note:** This deploys an Azure Front Door (classic) resource which has been deprecated and will receive security updates only. Please migrate your existing Azure Front Door (classic) deployments to the new Azure Front Door (standard/premium) resources. For your convenience, the service team has exposed a `Front Door Classic` to `Front Door Standard/Premium` [migration tool](https://learn.microsoft.com/azure/frontdoor/tier-migration) to allow you to migrate your existing `Front Door Classic` instances to the new `Front Door Standard/Premium` product tiers.
///
/// Manages the Custom HTTPS Configuration for an Azure Front Door (classic) Frontend Endpoint.
///
/// &gt; **Note:** Defining custom HTTPS configurations using a separate `azure.frontdoor.CustomHttpsConfiguration` resource allows for parallel creation/update.
///
/// &gt; **Note:** In order to address the ordering issue we have changed the design on how to retrieve existing sub resources such as frontend endpoints. Existing design will be deprecated and will result in an incorrect configuration. Please refer to the updated documentation below for more information.
///
/// &gt; **Note:** The `resourceGroupName` field has been removed as of the `v2.58.0` provider release. If the `resourceGroupName` field has been defined in your current `azure.frontdoor.CustomHttpsConfiguration` resource configuration file please remove it else you will receive a `An argument named "resourceGroupName" is not expected here.` error. If your pre-existing Front Door instance contained inline `customHttpsConfiguration` blocks there are additional steps that will need to be completed to successfully migrate your Front Door onto the `v2.58.0` provider which can be found in this guide.
///
/// &gt; **Note:** Azure rolled out a breaking change on Friday 9th April 2021 which may cause issues with the CDN/FrontDoor resources. More information is available in this GitHub issue - unfortunately this may necessitate a breaking change to the CDN and Front Door resources, more information will be posted in the GitHub issue as the necessary changes are identified.
///
/// &gt; **Note:** The creation of new Azure Front Door (classic) resources is no longer supported following its deprecation on `April 1, 2025`. However, modifications to existing Azure Front Door (classic) resources will continue to be supported until the API reaches full retirement on `March 31, 2027`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "FrontDoorExampleResourceGroup",
///     location: "West Europe",
/// });
/// const vault = azure.keyvault.getKeyVault({
///     name: "example-vault",
///     resourceGroupName: "example-vault-rg",
/// });
/// const exampleFrontdoor = new azure.frontdoor.Frontdoor("example", {
///     name: "example-FrontDoor",
///     resourceGroupName: example.name,
///     routingRules: [{
///         name: "exampleRoutingRule1",
///         acceptedProtocols: [
///             "Http",
///             "Https",
///         ],
///         patternsToMatches: ["/*"],
///         frontendEndpoints: ["exampleFrontendEndpoint1"],
///         forwardingConfiguration: {
///             forwardingProtocol: "MatchRequest",
///             backendPoolName: "exampleBackendBing",
///         },
///     }],
///     backendPoolLoadBalancings: [{
///         name: "exampleLoadBalancingSettings1",
///     }],
///     backendPoolHealthProbes: [{
///         name: "exampleHealthProbeSetting1",
///     }],
///     backendPools: [{
///         name: "exampleBackendBing",
///         backends: [{
///             hostHeader: "www.bing.com",
///             address: "www.bing.com",
///             httpPort: 80,
///             httpsPort: 443,
///         }],
///         loadBalancingName: "exampleLoadBalancingSettings1",
///         healthProbeName: "exampleHealthProbeSetting1",
///     }],
///     frontendEndpoints: [
///         {
///             name: "exampleFrontendEndpoint1",
///             hostName: "example-FrontDoor.azurefd.net",
///         },
///         {
///             name: "exampleFrontendEndpoint2",
///             hostName: "examplefd1.examplefd.net",
///         },
///     ],
/// });
/// const exampleCustomHttps0 = new azure.frontdoor.CustomHttpsConfiguration("example_custom_https_0", {
///     frontendEndpointId: exampleFrontdoor.frontendEndpointsMap.exampleFrontendEndpoint1,
///     customHttpsProvisioningEnabled: false,
/// });
/// const exampleCustomHttps1 = new azure.frontdoor.CustomHttpsConfiguration("example_custom_https_1", {
///     frontendEndpointId: exampleFrontdoor.frontendEndpointsMap.exampleFrontendEndpoint2,
///     customHttpsProvisioningEnabled: true,
///     customHttpsConfiguration: {
///         certificateSource: "AzureKeyVault",
///         azureKeyVaultCertificateSecretName: "examplefd1",
///         azureKeyVaultCertificateVaultId: vault.then(vault => vault.id),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="FrontDoorExampleResourceGroup",
///     location="West Europe")
/// vault = azure.keyvault.get_key_vault(name="example-vault",
///     resource_group_name="example-vault-rg")
/// example_frontdoor = azure.frontdoor.Frontdoor("example",
///     name="example-FrontDoor",
///     resource_group_name=example.name,
///     routing_rules=[{
///         "name": "exampleRoutingRule1",
///         "accepted_protocols": [
///             "Http",
///             "Https",
///         ],
///         "patterns_to_matches": ["/*"],
///         "frontend_endpoints": ["exampleFrontendEndpoint1"],
///         "forwarding_configuration": {
///             "forwarding_protocol": "MatchRequest",
///             "backend_pool_name": "exampleBackendBing",
///         },
///     }],
///     backend_pool_load_balancings=[{
///         "name": "exampleLoadBalancingSettings1",
///     }],
///     backend_pool_health_probes=[{
///         "name": "exampleHealthProbeSetting1",
///     }],
///     backend_pools=[{
///         "name": "exampleBackendBing",
///         "backends": [{
///             "host_header": "www.bing.com",
///             "address": "www.bing.com",
///             "http_port": 80,
///             "https_port": 443,
///         }],
///         "load_balancing_name": "exampleLoadBalancingSettings1",
///         "health_probe_name": "exampleHealthProbeSetting1",
///     }],
///     frontend_endpoints=[
///         {
///             "name": "exampleFrontendEndpoint1",
///             "host_name": "example-FrontDoor.azurefd.net",
///         },
///         {
///             "name": "exampleFrontendEndpoint2",
///             "host_name": "examplefd1.examplefd.net",
///         },
///     ])
/// example_custom_https0 = azure.frontdoor.CustomHttpsConfiguration("example_custom_https_0",
///     frontend_endpoint_id=example_frontdoor.frontend_endpoints_map["exampleFrontendEndpoint1"],
///     custom_https_provisioning_enabled=False)
/// example_custom_https1 = azure.frontdoor.CustomHttpsConfiguration("example_custom_https_1",
///     frontend_endpoint_id=example_frontdoor.frontend_endpoints_map["exampleFrontendEndpoint2"],
///     custom_https_provisioning_enabled=True,
///     custom_https_configuration={
///         "certificate_source": "AzureKeyVault",
///         "azure_key_vault_certificate_secret_name": "examplefd1",
///         "azure_key_vault_certificate_vault_id": vault.id,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "FrontDoorExampleResourceGroup",
///         Location = "West Europe",
///     });
///
///     var vault = Azure.KeyVault.GetKeyVault.Invoke(new()
///     {
///         Name = "example-vault",
///         ResourceGroupName = "example-vault-rg",
///     });
///
///     var exampleFrontdoor = new Azure.FrontDoor.Frontdoor("example", new()
///     {
///         Name = "example-FrontDoor",
///         ResourceGroupName = example.Name,
///         RoutingRules = new[]
///         {
///             new Azure.FrontDoor.Inputs.FrontdoorRoutingRuleArgs
///             {
///                 Name = "exampleRoutingRule1",
///                 AcceptedProtocols = new[]
///                 {
///                     "Http",
///                     "Https",
///                 },
///                 PatternsToMatches = new[]
///                 {
///                     "/*",
///                 },
///                 FrontendEndpoints = new[]
///                 {
///                     "exampleFrontendEndpoint1",
///                 },
///                 ForwardingConfiguration = new Azure.FrontDoor.Inputs.FrontdoorRoutingRuleForwardingConfigurationArgs
///                 {
///                     ForwardingProtocol = "MatchRequest",
///                     BackendPoolName = "exampleBackendBing",
///                 },
///             },
///         },
///         BackendPoolLoadBalancings = new[]
///         {
///             new Azure.FrontDoor.Inputs.FrontdoorBackendPoolLoadBalancingArgs
///             {
///                 Name = "exampleLoadBalancingSettings1",
///             },
///         },
///         BackendPoolHealthProbes = new[]
///         {
///             new Azure.FrontDoor.Inputs.FrontdoorBackendPoolHealthProbeArgs
///             {
///                 Name = "exampleHealthProbeSetting1",
///             },
///         },
///         BackendPools = new[]
///         {
///             new Azure.FrontDoor.Inputs.FrontdoorBackendPoolArgs
///             {
///                 Name = "exampleBackendBing",
///                 Backends = new[]
///                 {
///                     new Azure.FrontDoor.Inputs.FrontdoorBackendPoolBackendArgs
///                     {
///                         HostHeader = "www.bing.com",
///                         Address = "www.bing.com",
///                         HttpPort = 80,
///                         HttpsPort = 443,
///                     },
///                 },
///                 LoadBalancingName = "exampleLoadBalancingSettings1",
///                 HealthProbeName = "exampleHealthProbeSetting1",
///             },
///         },
///         FrontendEndpoints = new[]
///         {
///             new Azure.FrontDoor.Inputs.FrontdoorFrontendEndpointArgs
///             {
///                 Name = "exampleFrontendEndpoint1",
///                 HostName = "example-FrontDoor.azurefd.net",
///             },
///             new Azure.FrontDoor.Inputs.FrontdoorFrontendEndpointArgs
///             {
///                 Name = "exampleFrontendEndpoint2",
///                 HostName = "examplefd1.examplefd.net",
///             },
///         },
///     });
///
///     var exampleCustomHttps0 = new Azure.FrontDoor.CustomHttpsConfiguration("example_custom_https_0", new()
///     {
///         FrontendEndpointId = exampleFrontdoor.FrontendEndpointsMap.Apply(frontendEndpointsMap => frontendEndpointsMap.ExampleFrontendEndpoint1),
///         CustomHttpsProvisioningEnabled = false,
///     });
///
///     var exampleCustomHttps1 = new Azure.FrontDoor.CustomHttpsConfiguration("example_custom_https_1", new()
///     {
///         FrontendEndpointId = exampleFrontdoor.FrontendEndpointsMap.Apply(frontendEndpointsMap => frontendEndpointsMap.ExampleFrontendEndpoint2),
///         CustomHttpsProvisioningEnabled = true,
///         CustomHttpsConfigurationConfig = new Azure.FrontDoor.Inputs.CustomHttpsConfigurationCustomHttpsConfigurationArgs
///         {
///             CertificateSource = "AzureKeyVault",
///             AzureKeyVaultCertificateSecretName = "examplefd1",
///             AzureKeyVaultCertificateVaultId = vault.Apply(getKeyVaultResult => getKeyVaultResult.Id),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/frontdoor"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("FrontDoorExampleResourceGroup"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vault, err := keyvault.LookupKeyVault(ctx, &keyvault.LookupKeyVaultArgs{
/// 			Name:              "example-vault",
/// 			ResourceGroupName: "example-vault-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoor, err := frontdoor.NewFrontdoor(ctx, "example", &frontdoor.FrontdoorArgs{
/// 			Name:              pulumi.String("example-FrontDoor"),
/// 			ResourceGroupName: example.Name,
/// 			RoutingRules: frontdoor.FrontdoorRoutingRuleArray{
/// 				&frontdoor.FrontdoorRoutingRuleArgs{
/// 					Name: pulumi.String("exampleRoutingRule1"),
/// 					AcceptedProtocols: pulumi.StringArray{
/// 						pulumi.String("Http"),
/// 						pulumi.String("Https"),
/// 					},
/// 					PatternsToMatches: pulumi.StringArray{
/// 						pulumi.String("/*"),
/// 					},
/// 					FrontendEndpoints: pulumi.StringArray{
/// 						pulumi.String("exampleFrontendEndpoint1"),
/// 					},
/// 					ForwardingConfiguration: &frontdoor.FrontdoorRoutingRuleForwardingConfigurationArgs{
/// 						ForwardingProtocol: pulumi.String("MatchRequest"),
/// 						BackendPoolName:    pulumi.String("exampleBackendBing"),
/// 					},
/// 				},
/// 			},
/// 			BackendPoolLoadBalancings: frontdoor.FrontdoorBackendPoolLoadBalancingArray{
/// 				&frontdoor.FrontdoorBackendPoolLoadBalancingArgs{
/// 					Name: pulumi.String("exampleLoadBalancingSettings1"),
/// 				},
/// 			},
/// 			BackendPoolHealthProbes: frontdoor.FrontdoorBackendPoolHealthProbeArray{
/// 				&frontdoor.FrontdoorBackendPoolHealthProbeArgs{
/// 					Name: pulumi.String("exampleHealthProbeSetting1"),
/// 				},
/// 			},
/// 			BackendPools: frontdoor.FrontdoorBackendPoolArray{
/// 				&frontdoor.FrontdoorBackendPoolArgs{
/// 					Name: pulumi.String("exampleBackendBing"),
/// 					Backends: frontdoor.FrontdoorBackendPoolBackendArray{
/// 						&frontdoor.FrontdoorBackendPoolBackendArgs{
/// 							HostHeader: pulumi.String("www.bing.com"),
/// 							Address:    pulumi.String("www.bing.com"),
/// 							HttpPort:   pulumi.Int(80),
/// 							HttpsPort:  pulumi.Int(443),
/// 						},
/// 					},
/// 					LoadBalancingName: pulumi.String("exampleLoadBalancingSettings1"),
/// 					HealthProbeName:   pulumi.String("exampleHealthProbeSetting1"),
/// 				},
/// 			},
/// 			FrontendEndpoints: frontdoor.FrontdoorFrontendEndpointArray{
/// 				&frontdoor.FrontdoorFrontendEndpointArgs{
/// 					Name:     pulumi.String("exampleFrontendEndpoint1"),
/// 					HostName: pulumi.String("example-FrontDoor.azurefd.net"),
/// 				},
/// 				&frontdoor.FrontdoorFrontendEndpointArgs{
/// 					Name:     pulumi.String("exampleFrontendEndpoint2"),
/// 					HostName: pulumi.String("examplefd1.examplefd.net"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = frontdoor.NewCustomHttpsConfiguration(ctx, "example_custom_https_0", &frontdoor.CustomHttpsConfigurationArgs{
/// 			FrontendEndpointId: exampleFrontdoor.FrontendEndpointsMap.ApplyT(func(frontendEndpointsMap map[string]string) (string, error) {
/// 				return frontendEndpointsMap["exampleFrontendEndpoint1"], nil
/// 			}).(pulumi.StringOutput),
/// 			CustomHttpsProvisioningEnabled: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = frontdoor.NewCustomHttpsConfiguration(ctx, "example_custom_https_1", &frontdoor.CustomHttpsConfigurationArgs{
/// 			FrontendEndpointId: exampleFrontdoor.FrontendEndpointsMap.ApplyT(func(frontendEndpointsMap map[string]string) (string, error) {
/// 				return frontendEndpointsMap["exampleFrontendEndpoint2"], nil
/// 			}).(pulumi.StringOutput),
/// 			CustomHttpsProvisioningEnabled: pulumi.Bool(true),
/// 			CustomHttpsConfiguration: &frontdoor.CustomHttpsConfigurationCustomHttpsConfigurationArgs{
/// 				CertificateSource:                  pulumi.String("AzureKeyVault"),
/// 				AzureKeyVaultCertificateSecretName: pulumi.String("examplefd1"),
/// 				AzureKeyVaultCertificateVaultId:    pulumi.String(vault.Id),
/// 			},
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
///   }
/// }
///
/// data "azure_keyvault_getkeyvault" "vault" {
///   name                = "example-vault"
///   resource_group_name = "example-vault-rg"
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "FrontDoorExampleResourceGroup"
///   location = "West Europe"
/// }
/// resource "azure_frontdoor_frontdoor" "example" {
///   name                = "example-FrontDoor"
///   resource_group_name = azure_core_resourcegroup.example.name
///   routing_rules {
///     name                = "exampleRoutingRule1"
///     accepted_protocols  = ["Http", "Https"]
///     patterns_to_matches = ["/*"]
///     frontend_endpoints  = ["exampleFrontendEndpoint1"]
///     forwarding_configuration = {
///       forwarding_protocol = "MatchRequest"
///       backend_pool_name   = "exampleBackendBing"
///     }
///   }
///   backend_pool_load_balancings {
///     name = "exampleLoadBalancingSettings1"
///   }
///   backend_pool_health_probes {
///     name = "exampleHealthProbeSetting1"
///   }
///   backend_pools {
///     name = "exampleBackendBing"
///     backends {
///       host_header = "www.bing.com"
///       address     = "www.bing.com"
///       http_port   = 80
///       https_port  = 443
///     }
///     load_balancing_name = "exampleLoadBalancingSettings1"
///     health_probe_name   = "exampleHealthProbeSetting1"
///   }
///   frontend_endpoints {
///     name      = "exampleFrontendEndpoint1"
///     host_name = "example-FrontDoor.azurefd.net"
///   }
///   frontend_endpoints {
///     name      = "exampleFrontendEndpoint2"
///     host_name = "examplefd1.examplefd.net"
///   }
/// }
/// resource "azure_frontdoor_customhttpsconfiguration" "example_custom_https_0" {
///   frontend_endpoint_id              = azure_frontdoor_frontdoor.example.frontend_endpoints_map["exampleFrontendEndpoint1"]
///   custom_https_provisioning_enabled = false
/// }
/// resource "azure_frontdoor_customhttpsconfiguration" "example_custom_https_1" {
///   frontend_endpoint_id              = azure_frontdoor_frontdoor.example.frontend_endpoints_map["exampleFrontendEndpoint2"]
///   custom_https_provisioning_enabled = true
///   custom_https_configuration = {
///     certificate_source                      = "AzureKeyVault"
///     azure_key_vault_certificate_secret_name = "examplefd1"
///     azure_key_vault_certificate_vault_id    = data.azure_keyvault_getkeyvault.vault.id
///   }
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
/// import com.pulumi.azure.keyvault.KeyvaultFunctions;
/// import com.pulumi.azure.keyvault.inputs.GetKeyVaultArgs;
/// import com.pulumi.azure.frontdoor.Frontdoor;
/// import com.pulumi.azure.frontdoor.FrontdoorArgs;
/// import com.pulumi.azure.frontdoor.inputs.FrontdoorRoutingRuleArgs;
/// import com.pulumi.azure.frontdoor.inputs.FrontdoorRoutingRuleForwardingConfigurationArgs;
/// import com.pulumi.azure.frontdoor.inputs.FrontdoorBackendPoolLoadBalancingArgs;
/// import com.pulumi.azure.frontdoor.inputs.FrontdoorBackendPoolHealthProbeArgs;
/// import com.pulumi.azure.frontdoor.inputs.FrontdoorBackendPoolArgs;
/// import com.pulumi.azure.frontdoor.inputs.FrontdoorBackendPoolBackendArgs;
/// import com.pulumi.azure.frontdoor.inputs.FrontdoorFrontendEndpointArgs;
/// import com.pulumi.azure.frontdoor.CustomHttpsConfiguration;
/// import com.pulumi.azure.frontdoor.CustomHttpsConfigurationArgs;
/// import com.pulumi.azure.frontdoor.inputs.CustomHttpsConfigurationCustomHttpsConfigurationArgs;
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
///             .name("FrontDoorExampleResourceGroup")
///             .location("West Europe")
///             .build());
///
///         final var vault = KeyvaultFunctions.getKeyVault(GetKeyVaultArgs.builder()
///             .name("example-vault")
///             .resourceGroupName("example-vault-rg")
///             .build());
///
///         var exampleFrontdoor = new Frontdoor("exampleFrontdoor", FrontdoorArgs.builder()
///             .name("example-FrontDoor")
///             .resourceGroupName(example.name())
///             .routingRules(FrontdoorRoutingRuleArgs.builder()
///                 .name("exampleRoutingRule1")
///                 .acceptedProtocols(
///                     "Http",
///                     "Https")
///                 .patternsToMatches("/*")
///                 .frontendEndpoints("exampleFrontendEndpoint1")
///                 .forwardingConfiguration(FrontdoorRoutingRuleForwardingConfigurationArgs.builder()
///                     .forwardingProtocol("MatchRequest")
///                     .backendPoolName("exampleBackendBing")
///                     .build())
///                 .build())
///             .backendPoolLoadBalancings(FrontdoorBackendPoolLoadBalancingArgs.builder()
///                 .name("exampleLoadBalancingSettings1")
///                 .build())
///             .backendPoolHealthProbes(FrontdoorBackendPoolHealthProbeArgs.builder()
///                 .name("exampleHealthProbeSetting1")
///                 .build())
///             .backendPools(FrontdoorBackendPoolArgs.builder()
///                 .name("exampleBackendBing")
///                 .backends(FrontdoorBackendPoolBackendArgs.builder()
///                     .hostHeader("www.bing.com")
///                     .address("www.bing.com")
///                     .httpPort(80)
///                     .httpsPort(443)
///                     .build())
///                 .loadBalancingName("exampleLoadBalancingSettings1")
///                 .healthProbeName("exampleHealthProbeSetting1")
///                 .build())
///             .frontendEndpoints(
///                 FrontdoorFrontendEndpointArgs.builder()
///                     .name("exampleFrontendEndpoint1")
///                     .hostName("example-FrontDoor.azurefd.net")
///                     .build(),
///                 FrontdoorFrontendEndpointArgs.builder()
///                     .name("exampleFrontendEndpoint2")
///                     .hostName("examplefd1.examplefd.net")
///                     .build())
///             .build());
///
///         var exampleCustomHttps0 = new CustomHttpsConfiguration("exampleCustomHttps0", CustomHttpsConfigurationArgs.builder()
///             .frontendEndpointId(exampleFrontdoor.frontendEndpointsMap().applyValue(_frontendEndpointsMap -> _frontendEndpointsMap.exampleFrontendEndpoint1()))
///             .customHttpsProvisioningEnabled(false)
///             .build());
///
///         var exampleCustomHttps1 = new CustomHttpsConfiguration("exampleCustomHttps1", CustomHttpsConfigurationArgs.builder()
///             .frontendEndpointId(exampleFrontdoor.frontendEndpointsMap().applyValue(_frontendEndpointsMap -> _frontendEndpointsMap.exampleFrontendEndpoint2()))
///             .customHttpsProvisioningEnabled(true)
///             .customHttpsConfiguration(CustomHttpsConfigurationCustomHttpsConfigurationArgs.builder()
///                 .certificateSource("AzureKeyVault")
///                 .azureKeyVaultCertificateSecretName("examplefd1")
///                 .azureKeyVaultCertificateVaultId(vault.id())
///                 .build())
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
///       name: FrontDoorExampleResourceGroup
///       location: West Europe
///   exampleFrontdoor:
///     type: azure:frontdoor:Frontdoor
///     name: example
///     properties:
///       name: example-FrontDoor
///       resourceGroupName: ${example.name}
///       routingRules:
///         - name: exampleRoutingRule1
///           acceptedProtocols:
///             - Http
///             - Https
///           patternsToMatches:
///             - /*
///           frontendEndpoints:
///             - exampleFrontendEndpoint1
///           forwardingConfiguration:
///             forwardingProtocol: MatchRequest
///             backendPoolName: exampleBackendBing
///       backendPoolLoadBalancings:
///         - name: exampleLoadBalancingSettings1
///       backendPoolHealthProbes:
///         - name: exampleHealthProbeSetting1
///       backendPools:
///         - name: exampleBackendBing
///           backends:
///             - hostHeader: www.bing.com
///               address: www.bing.com
///               httpPort: 80
///               httpsPort: 443
///           loadBalancingName: exampleLoadBalancingSettings1
///           healthProbeName: exampleHealthProbeSetting1
///       frontendEndpoints:
///         - name: exampleFrontendEndpoint1
///           hostName: example-FrontDoor.azurefd.net
///         - name: exampleFrontendEndpoint2
///           hostName: examplefd1.examplefd.net
///   exampleCustomHttps0:
///     type: azure:frontdoor:CustomHttpsConfiguration
///     name: example_custom_https_0
///     properties:
///       frontendEndpointId: ${exampleFrontdoor.frontendEndpointsMap.exampleFrontendEndpoint1}
///       customHttpsProvisioningEnabled: false
///   exampleCustomHttps1:
///     type: azure:frontdoor:CustomHttpsConfiguration
///     name: example_custom_https_1
///     properties:
///       frontendEndpointId: ${exampleFrontdoor.frontendEndpointsMap.exampleFrontendEndpoint2}
///       customHttpsProvisioningEnabled: true
///       customHttpsConfiguration:
///         certificateSource: AzureKeyVault
///         azureKeyVaultCertificateSecretName: examplefd1
///         azureKeyVaultCertificateVaultId: ${vault.id}
/// variables:
///   vault:
///     fn::invoke:
///       function: azure:keyvault:getKeyVault
///       arguments:
///         name: example-vault
///         resourceGroupName: example-vault-rg
/// ```
///
///
/// ## Import
///
/// Front Door Custom HTTPS Configurations can be imported using the `resource id` of the Front Door Custom HTTPS Configuration, e.g.
///
/// ```sh
/// $ pulumi import azure:frontdoor/customHttpsConfiguration:CustomHttpsConfiguration example_custom_https_1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/frontDoors/frontdoor1/customHttpsConfiguration/endpoint1
/// ```
class CustomHttpsConfiguration extends pulumi.CustomResource {
  /// A `customHttpsConfiguration` block as defined above.
  late final pulumi.Output<CustomHttpsConfigurationCustomHttpsConfiguration?> customHttpsConfiguration;
  /// Should the HTTPS protocol be enabled for this custom domain associated with the Front Door?
  late final pulumi.Output<bool> customHttpsProvisioningEnabled;
  /// The ID of the Front Door Frontend Endpoint which this configuration refers to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> frontendEndpointId;

  /// Creates a new [CustomHttpsConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomHttpsConfiguration]. {@macro pulumi_frontdoor_custom_https_configuration_custom_https_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomHttpsConfiguration(
    String name, {
    CustomHttpsConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:frontdoor/customHttpsConfiguration:CustomHttpsConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    customHttpsConfiguration = registerOutput<CustomHttpsConfigurationCustomHttpsConfiguration?>('customHttpsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomHttpsConfigurationCustomHttpsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customHttpsProvisioningEnabled = registerOutput<bool>('customHttpsProvisioningEnabled');
    frontendEndpointId = registerOutput<String>('frontendEndpointId');
  }

  /// Gets an existing [CustomHttpsConfiguration] resource's state with the given [name] and [id].
  static CustomHttpsConfiguration get(
    String name,
    pulumi.Input<String> id, {
    CustomHttpsConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CustomHttpsConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CustomHttpsConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:frontdoor/customHttpsConfiguration:CustomHttpsConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    customHttpsConfiguration = registerOutput<CustomHttpsConfigurationCustomHttpsConfiguration?>('customHttpsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomHttpsConfigurationCustomHttpsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customHttpsProvisioningEnabled = registerOutput<bool>('customHttpsProvisioningEnabled');
    frontendEndpointId = registerOutput<String>('frontendEndpointId');
  }

  /// Creates a typed reference to an existing [CustomHttpsConfiguration] resource.
  CustomHttpsConfiguration.reference(String urn)
    : super(
        'azure:frontdoor/customHttpsConfiguration:CustomHttpsConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    customHttpsConfiguration = registerOutput<CustomHttpsConfigurationCustomHttpsConfiguration?>('customHttpsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomHttpsConfigurationCustomHttpsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customHttpsProvisioningEnabled = registerOutput<bool>('customHttpsProvisioningEnabled');
    frontendEndpointId = registerOutput<String>('frontendEndpointId');
  }
}
