import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_origin_args.dart';
import 'frontdoor_origin_private_link.dart';
import 'frontdoor_origin_state.dart';

/// Manages a Front Door (standard/premium) Origin.
///
/// &gt; **Note:** If you are attempting to implement an Origin that uses its own Private Link Service with a Load Balancer the Profile resource in your configuration file **must** have a `dependsOn` meta-argument which references the `azure.privatedns.LinkService`, see `Example Usage With Private Link Service` below.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleFrontdoorProfile = new azure.cdn.FrontdoorProfile("example", {
///     name: "example-profile",
///     resourceGroupName: example.name,
///     skuName: "Premium_AzureFrontDoor",
/// });
/// const exampleFrontdoorOriginGroup = new azure.cdn.FrontdoorOriginGroup("example", {
///     name: "example-origingroup",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
///     loadBalancing: {},
/// });
/// const exampleFrontdoorOrigin = new azure.cdn.FrontdoorOrigin("example", {
///     name: "example-origin",
///     cdnFrontdoorOriginGroupId: exampleFrontdoorOriginGroup.id,
///     enabled: true,
///     certificateNameCheckEnabled: false,
///     hostName: "contoso.com",
///     httpPort: 80,
///     httpsPort: 443,
///     originHostHeader: "www.contoso.com",
///     priority: 1,
///     weight: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_frontdoor_profile = azure.cdn.FrontdoorProfile("example",
///     name="example-profile",
///     resource_group_name=example.name,
///     sku_name="Premium_AzureFrontDoor")
/// example_frontdoor_origin_group = azure.cdn.FrontdoorOriginGroup("example",
///     name="example-origingroup",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id,
///     load_balancing={})
/// example_frontdoor_origin = azure.cdn.FrontdoorOrigin("example",
///     name="example-origin",
///     cdn_frontdoor_origin_group_id=example_frontdoor_origin_group.id,
///     enabled=True,
///     certificate_name_check_enabled=False,
///     host_name="contoso.com",
///     http_port=80,
///     https_port=443,
///     origin_host_header="www.contoso.com",
///     priority=1,
///     weight=1)
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleFrontdoorProfile = new Azure.Cdn.FrontdoorProfile("example", new()
///     {
///         Name = "example-profile",
///         ResourceGroupName = example.Name,
///         SkuName = "Premium_AzureFrontDoor",
///     });
///
///     var exampleFrontdoorOriginGroup = new Azure.Cdn.FrontdoorOriginGroup("example", new()
///     {
///         Name = "example-origingroup",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///         LoadBalancing = null,
///     });
///
///     var exampleFrontdoorOrigin = new Azure.Cdn.FrontdoorOrigin("example", new()
///     {
///         Name = "example-origin",
///         CdnFrontdoorOriginGroupId = exampleFrontdoorOriginGroup.Id,
///         Enabled = true,
///         CertificateNameCheckEnabled = false,
///         HostName = "contoso.com",
///         HttpPort = 80,
///         HttpsPort = 443,
///         OriginHostHeader = "www.contoso.com",
///         Priority = 1,
///         Weight = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
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
/// 		exampleFrontdoorProfile, err := cdn.NewFrontdoorProfile(ctx, "example", &cdn.FrontdoorProfileArgs{
/// 			Name:              pulumi.String("example-profile"),
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Premium_AzureFrontDoor"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorOriginGroup, err := cdn.NewFrontdoorOriginGroup(ctx, "example", &cdn.FrontdoorOriginGroupArgs{
/// 			Name:                  pulumi.String("example-origingroup"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID().ToIDOutput().ToStringOutput(),
/// 			LoadBalancing:         &cdn.FrontdoorOriginGroupLoadBalancingArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewFrontdoorOrigin(ctx, "example", &cdn.FrontdoorOriginArgs{
/// 			Name:                        pulumi.String("example-origin"),
/// 			CdnFrontdoorOriginGroupId:   exampleFrontdoorOriginGroup.ID().ToIDOutput().ToStringOutput(),
/// 			Enabled:                     pulumi.Bool(true),
/// 			CertificateNameCheckEnabled: pulumi.Bool(false),
/// 			HostName:                    pulumi.String("contoso.com"),
/// 			HttpPort:                    pulumi.Int(80),
/// 			HttpsPort:                   pulumi.Int(443),
/// 			OriginHostHeader:            pulumi.String("www.contoso.com"),
/// 			Priority:                    pulumi.Int(1),
/// 			Weight:                      pulumi.Int(1),
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_cdn_frontdoorprofile" "example" {
///   name                = "example-profile"
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Premium_AzureFrontDoor"
/// }
/// resource "azure_cdn_frontdoororigingroup" "example" {
///   name                     = "example-origingroup"
///   cdn_frontdoor_profile_id = azure_cdn_frontdoorprofile.example.id
///   load_balancing           = {}
/// }
/// resource "azure_cdn_frontdoororigin" "example" {
///   name                           = "example-origin"
///   cdn_frontdoor_origin_group_id  = azure_cdn_frontdoororigingroup.example.id
///   enabled                        = true
///   certificate_name_check_enabled = false
///   host_name                      = "contoso.com"
///   http_port                      = 80
///   https_port                     = 443
///   origin_host_header             = "www.contoso.com"
///   priority                       = 1
///   weight                         = 1
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
/// import com.pulumi.azure.cdn.FrontdoorProfile;
/// import com.pulumi.azure.cdn.FrontdoorProfileArgs;
/// import com.pulumi.azure.cdn.FrontdoorOriginGroup;
/// import com.pulumi.azure.cdn.FrontdoorOriginGroupArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorOriginGroupLoadBalancingArgs;
/// import com.pulumi.azure.cdn.FrontdoorOrigin;
/// import com.pulumi.azure.cdn.FrontdoorOriginArgs;
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
///         var exampleFrontdoorProfile = new FrontdoorProfile("exampleFrontdoorProfile", FrontdoorProfileArgs.builder()
///             .name("example-profile")
///             .resourceGroupName(example.name())
///             .skuName("Premium_AzureFrontDoor")
///             .build());
///
///         var exampleFrontdoorOriginGroup = new FrontdoorOriginGroup("exampleFrontdoorOriginGroup", FrontdoorOriginGroupArgs.builder()
///             .name("example-origingroup")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .loadBalancing(FrontdoorOriginGroupLoadBalancingArgs.builder()
///                 .build())
///             .build());
///
///         var exampleFrontdoorOrigin = new FrontdoorOrigin("exampleFrontdoorOrigin", FrontdoorOriginArgs.builder()
///             .name("example-origin")
///             .cdnFrontdoorOriginGroupId(exampleFrontdoorOriginGroup.id())
///             .enabled(true)
///             .certificateNameCheckEnabled(false)
///             .hostName("contoso.com")
///             .httpPort(80)
///             .httpsPort(443)
///             .originHostHeader("www.contoso.com")
///             .priority(1)
///             .weight(1)
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
///   exampleFrontdoorProfile:
///     type: azure:cdn:FrontdoorProfile
///     name: example
///     properties:
///       name: example-profile
///       resourceGroupName: ${example.name}
///       skuName: Premium_AzureFrontDoor
///   exampleFrontdoorOriginGroup:
///     type: azure:cdn:FrontdoorOriginGroup
///     name: example
///     properties:
///       name: example-origingroup
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///       loadBalancing: {}
///   exampleFrontdoorOrigin:
///     type: azure:cdn:FrontdoorOrigin
///     name: example
///     properties:
///       name: example-origin
///       cdnFrontdoorOriginGroupId: ${exampleFrontdoorOriginGroup.id}
///       enabled: true
///       certificateNameCheckEnabled: false
///       hostName: contoso.com
///       httpPort: 80
///       httpsPort: 443
///       originHostHeader: www.contoso.com
///       priority: 1
///       weight: 1
/// ```
///
///
///
/// ### With Private Link
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestoracc",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Premium",
///     accountReplicationType: "LRS",
///     allowNestedItemsToBePublic: false,
///     networkRules: {
///         defaultAction: "Deny",
///     },
///     tags: {
///         environment: "Example",
///     },
/// });
/// const exampleFrontdoorProfile = new azure.cdn.FrontdoorProfile("example", {
///     name: "example-profile",
///     resourceGroupName: example.name,
///     skuName: "Premium_AzureFrontDoor",
/// });
/// const exampleFrontdoorOriginGroup = new azure.cdn.FrontdoorOriginGroup("example", {
///     name: "example-origin-group",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
///     loadBalancing: {},
/// });
/// const exampleFrontdoorOrigin = new azure.cdn.FrontdoorOrigin("example", {
///     name: "example-origin",
///     cdnFrontdoorOriginGroupId: exampleFrontdoorOriginGroup.id,
///     enabled: true,
///     certificateNameCheckEnabled: true,
///     hostName: exampleAccount.primaryBlobHost,
///     originHostHeader: exampleAccount.primaryBlobHost,
///     priority: 1,
///     weight: 500,
///     privateLink: {
///         requestMessage: "Request access for Private Link Origin CDN Frontdoor",
///         targetType: "blob",
///         location: exampleAccount.location,
///         privateLinkTargetId: exampleAccount.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="examplestoracc",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Premium",
///     account_replication_type="LRS",
///     allow_nested_items_to_be_public=False,
///     network_rules={
///         "default_action": "Deny",
///     },
///     tags={
///         "environment": "Example",
///     })
/// example_frontdoor_profile = azure.cdn.FrontdoorProfile("example",
///     name="example-profile",
///     resource_group_name=example.name,
///     sku_name="Premium_AzureFrontDoor")
/// example_frontdoor_origin_group = azure.cdn.FrontdoorOriginGroup("example",
///     name="example-origin-group",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id,
///     load_balancing={})
/// example_frontdoor_origin = azure.cdn.FrontdoorOrigin("example",
///     name="example-origin",
///     cdn_frontdoor_origin_group_id=example_frontdoor_origin_group.id,
///     enabled=True,
///     certificate_name_check_enabled=True,
///     host_name=example_account.primary_blob_host,
///     origin_host_header=example_account.primary_blob_host,
///     priority=1,
///     weight=500,
///     private_link={
///         "request_message": "Request access for Private Link Origin CDN Frontdoor",
///         "target_type": "blob",
///         "location": example_account.location,
///         "private_link_target_id": example_account.id,
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestoracc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Premium",
///         AccountReplicationType = "LRS",
///         AllowNestedItemsToBePublic = false,
///         NetworkRules = new Azure.Storage.Inputs.AccountNetworkRulesArgs
///         {
///             DefaultAction = "Deny",
///         },
///         Tags =
///         {
///             { "environment", "Example" },
///         },
///     });
///
///     var exampleFrontdoorProfile = new Azure.Cdn.FrontdoorProfile("example", new()
///     {
///         Name = "example-profile",
///         ResourceGroupName = example.Name,
///         SkuName = "Premium_AzureFrontDoor",
///     });
///
///     var exampleFrontdoorOriginGroup = new Azure.Cdn.FrontdoorOriginGroup("example", new()
///     {
///         Name = "example-origin-group",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///         LoadBalancing = null,
///     });
///
///     var exampleFrontdoorOrigin = new Azure.Cdn.FrontdoorOrigin("example", new()
///     {
///         Name = "example-origin",
///         CdnFrontdoorOriginGroupId = exampleFrontdoorOriginGroup.Id,
///         Enabled = true,
///         CertificateNameCheckEnabled = true,
///         HostName = exampleAccount.PrimaryBlobHost,
///         OriginHostHeader = exampleAccount.PrimaryBlobHost,
///         Priority = 1,
///         Weight = 500,
///         PrivateLink = new Azure.Cdn.Inputs.FrontdoorOriginPrivateLinkArgs
///         {
///             RequestMessage = "Request access for Private Link Origin CDN Frontdoor",
///             TargetType = "blob",
///             Location = exampleAccount.Location,
///             PrivateLinkTargetId = exampleAccount.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                       pulumi.String("examplestoracc"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			AccountTier:                pulumi.String("Premium"),
/// 			AccountReplicationType:     pulumi.String("LRS"),
/// 			AllowNestedItemsToBePublic: pulumi.Bool(false),
/// 			NetworkRules: &storage.AccountNetworkRulesTypeArgs{
/// 				DefaultAction: pulumi.String("Deny"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorProfile, err := cdn.NewFrontdoorProfile(ctx, "example", &cdn.FrontdoorProfileArgs{
/// 			Name:              pulumi.String("example-profile"),
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Premium_AzureFrontDoor"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorOriginGroup, err := cdn.NewFrontdoorOriginGroup(ctx, "example", &cdn.FrontdoorOriginGroupArgs{
/// 			Name:                  pulumi.String("example-origin-group"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID().ToIDOutput().ToStringOutput(),
/// 			LoadBalancing:         &cdn.FrontdoorOriginGroupLoadBalancingArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewFrontdoorOrigin(ctx, "example", &cdn.FrontdoorOriginArgs{
/// 			Name:                        pulumi.String("example-origin"),
/// 			CdnFrontdoorOriginGroupId:   exampleFrontdoorOriginGroup.ID().ToIDOutput().ToStringOutput(),
/// 			Enabled:                     pulumi.Bool(true),
/// 			CertificateNameCheckEnabled: pulumi.Bool(true),
/// 			HostName:                    exampleAccount.PrimaryBlobHost,
/// 			OriginHostHeader:            exampleAccount.PrimaryBlobHost,
/// 			Priority:                    pulumi.Int(1),
/// 			Weight:                      pulumi.Int(500),
/// 			PrivateLink: &cdn.FrontdoorOriginPrivateLinkArgs{
/// 				RequestMessage:      pulumi.String("Request access for Private Link Origin CDN Frontdoor"),
/// 				TargetType:          pulumi.String("blob"),
/// 				Location:            exampleAccount.Location,
/// 				PrivateLinkTargetId: exampleAccount.ID().ToIDOutput().ToStringOutput(),
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_storage_account" "example" {
///   name                            = "examplestoracc"
///   resource_group_name             = azure_core_resourcegroup.example.name
///   location                        = azure_core_resourcegroup.example.location
///   account_tier                    = "Premium"
///   account_replication_type        = "LRS"
///   allow_nested_items_to_be_public = false
///   network_rules = {
///     default_action = "Deny"
///   }
///   tags = {
///     "environment" = "Example"
///   }
/// }
/// resource "azure_cdn_frontdoorprofile" "example" {
///   name                = "example-profile"
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Premium_AzureFrontDoor"
/// }
/// resource "azure_cdn_frontdoororigingroup" "example" {
///   name                     = "example-origin-group"
///   cdn_frontdoor_profile_id = azure_cdn_frontdoorprofile.example.id
///   load_balancing           = {}
/// }
/// resource "azure_cdn_frontdoororigin" "example" {
///   name                           = "example-origin"
///   cdn_frontdoor_origin_group_id  = azure_cdn_frontdoororigingroup.example.id
///   enabled                        = true
///   certificate_name_check_enabled = true
///   host_name                      = azure_storage_account.example.primary_blob_host
///   origin_host_header             = azure_storage_account.example.primary_blob_host
///   priority                       = 1
///   weight                         = 500
///   private_link = {
///     request_message        = "Request access for Private Link Origin CDN Frontdoor"
///     target_type            = "blob"
///     location               = azure_storage_account.example.location
///     private_link_target_id = azure_storage_account.example.id
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.inputs.AccountNetworkRulesArgs;
/// import com.pulumi.azure.cdn.FrontdoorProfile;
/// import com.pulumi.azure.cdn.FrontdoorProfileArgs;
/// import com.pulumi.azure.cdn.FrontdoorOriginGroup;
/// import com.pulumi.azure.cdn.FrontdoorOriginGroupArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorOriginGroupLoadBalancingArgs;
/// import com.pulumi.azure.cdn.FrontdoorOrigin;
/// import com.pulumi.azure.cdn.FrontdoorOriginArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorOriginPrivateLinkArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestoracc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Premium")
///             .accountReplicationType("LRS")
///             .allowNestedItemsToBePublic(false)
///             .networkRules(AccountNetworkRulesArgs.builder()
///                 .defaultAction("Deny")
///                 .build())
///             .tags(Map.of("environment", "Example"))
///             .build());
///
///         var exampleFrontdoorProfile = new FrontdoorProfile("exampleFrontdoorProfile", FrontdoorProfileArgs.builder()
///             .name("example-profile")
///             .resourceGroupName(example.name())
///             .skuName("Premium_AzureFrontDoor")
///             .build());
///
///         var exampleFrontdoorOriginGroup = new FrontdoorOriginGroup("exampleFrontdoorOriginGroup", FrontdoorOriginGroupArgs.builder()
///             .name("example-origin-group")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .loadBalancing(FrontdoorOriginGroupLoadBalancingArgs.builder()
///                 .build())
///             .build());
///
///         var exampleFrontdoorOrigin = new FrontdoorOrigin("exampleFrontdoorOrigin", FrontdoorOriginArgs.builder()
///             .name("example-origin")
///             .cdnFrontdoorOriginGroupId(exampleFrontdoorOriginGroup.id())
///             .enabled(true)
///             .certificateNameCheckEnabled(true)
///             .hostName(exampleAccount.primaryBlobHost())
///             .originHostHeader(exampleAccount.primaryBlobHost())
///             .priority(1)
///             .weight(500)
///             .privateLink(FrontdoorOriginPrivateLinkArgs.builder()
///                 .requestMessage("Request access for Private Link Origin CDN Frontdoor")
///                 .targetType("blob")
///                 .location(exampleAccount.location())
///                 .privateLinkTargetId(exampleAccount.id())
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
///       name: example-resources
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestoracc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Premium
///       accountReplicationType: LRS
///       allowNestedItemsToBePublic: false
///       networkRules:
///         defaultAction: Deny
///       tags:
///         environment: Example
///   exampleFrontdoorProfile:
///     type: azure:cdn:FrontdoorProfile
///     name: example
///     properties:
///       name: example-profile
///       resourceGroupName: ${example.name}
///       skuName: Premium_AzureFrontDoor
///   exampleFrontdoorOriginGroup:
///     type: azure:cdn:FrontdoorOriginGroup
///     name: example
///     properties:
///       name: example-origin-group
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///       loadBalancing: {}
///   exampleFrontdoorOrigin:
///     type: azure:cdn:FrontdoorOrigin
///     name: example
///     properties:
///       name: example-origin
///       cdnFrontdoorOriginGroupId: ${exampleFrontdoorOriginGroup.id}
///       enabled: true
///       certificateNameCheckEnabled: true
///       hostName: ${exampleAccount.primaryBlobHost}
///       originHostHeader: ${exampleAccount.primaryBlobHost}
///       priority: 1
///       weight: 500
///       privateLink:
///         requestMessage: Request access for Private Link Origin CDN Frontdoor
///         targetType: blob
///         location: ${exampleAccount.location}
///         privateLinkTargetId: ${exampleAccount.id}
/// ```
///
///
///
/// ### With Private Link Service
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "vn-example",
///     resourceGroupName: example.name,
///     location: example.location,
///     addressSpaces: ["10.5.0.0/16"],
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "sn-example",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.5.1.0/24"],
///     privateLinkServiceNetworkPoliciesEnabled: false,
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "ip-example",
///     sku: "Standard",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
/// });
/// const exampleLoadBalancer = new azure.lb.LoadBalancer("example", {
///     name: "lb-example",
///     sku: "Standard",
///     location: example.location,
///     resourceGroupName: example.name,
///     frontendIpConfigurations: [{
///         name: examplePublicIp.name,
///         publicIpAddressId: examplePublicIp.id,
///     }],
/// });
/// const exampleLinkService = new azure.privatedns.LinkService("example", {
///     name: "pls-example",
///     resourceGroupName: example.name,
///     location: example.location,
///     visibilitySubscriptionIds: [current.then(current => current.subscriptionId)],
///     loadBalancerFrontendIpConfigurationIds: [exampleLoadBalancer.frontendIpConfigurations.apply(frontendIpConfigurations => frontendIpConfigurations?.[0]?.id)],
///     natIpConfigurations: [{
///         name: "primary",
///         privateIpAddress: "10.5.1.17",
///         privateIpAddressVersion: "IPv4",
///         subnetId: exampleSubnet.id,
///         primary: true,
///     }],
/// });
/// const exampleFrontdoorProfile = new azure.cdn.FrontdoorProfile("example", {
///     name: "profile-example",
///     resourceGroupName: example.name,
///     skuName: "Premium_AzureFrontDoor",
/// }, {
///     dependsOn: [exampleLinkService],
/// });
/// const exampleFrontdoorOriginGroup = new azure.cdn.FrontdoorOriginGroup("example", {
///     name: "group-example",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
///     loadBalancing: {
///         additionalLatencyInMilliseconds: 0,
///         sampleSize: 16,
///         successfulSamplesRequired: 3,
///     },
/// });
/// const exampleFrontdoorOrigin = new azure.cdn.FrontdoorOrigin("example", {
///     name: "origin-example",
///     cdnFrontdoorOriginGroupId: exampleFrontdoorOriginGroup.id,
///     enabled: true,
///     hostName: "example.com",
///     originHostHeader: "example.com",
///     priority: 1,
///     weight: 1000,
///     certificateNameCheckEnabled: false,
///     privateLink: {
///         requestMessage: "Request access for Private Link Origin CDN Frontdoor",
///         location: example.location,
///         privateLinkTargetId: exampleLinkService.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="vn-example",
///     resource_group_name=example.name,
///     location=example.location,
///     address_spaces=["10.5.0.0/16"])
/// example_subnet = azure.network.Subnet("example",
///     name="sn-example",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.5.1.0/24"],
///     private_link_service_network_policies_enabled=False)
/// example_public_ip = azure.network.PublicIp("example",
///     name="ip-example",
///     sku="Standard",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Static")
/// example_load_balancer = azure.lb.LoadBalancer("example",
///     name="lb-example",
///     sku="Standard",
///     location=example.location,
///     resource_group_name=example.name,
///     frontend_ip_configurations=[{
///         "name": example_public_ip.name,
///         "public_ip_address_id": example_public_ip.id,
///     }])
/// example_link_service = azure.privatedns.LinkService("example",
///     name="pls-example",
///     resource_group_name=example.name,
///     location=example.location,
///     visibility_subscription_ids=[current.subscription_id],
///     load_balancer_frontend_ip_configuration_ids=[example_load_balancer.frontend_ip_configurations[0].id],
///     nat_ip_configurations=[{
///         "name": "primary",
///         "private_ip_address": "10.5.1.17",
///         "private_ip_address_version": "IPv4",
///         "subnet_id": example_subnet.id,
///         "primary": True,
///     }])
/// example_frontdoor_profile = azure.cdn.FrontdoorProfile("example",
///     name="profile-example",
///     resource_group_name=example.name,
///     sku_name="Premium_AzureFrontDoor",
///     opts = pulumi.ResourceOptions(depends_on=[example_link_service]))
/// example_frontdoor_origin_group = azure.cdn.FrontdoorOriginGroup("example",
///     name="group-example",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id,
///     load_balancing={
///         "additional_latency_in_milliseconds": 0,
///         "sample_size": 16,
///         "successful_samples_required": 3,
///     })
/// example_frontdoor_origin = azure.cdn.FrontdoorOrigin("example",
///     name="origin-example",
///     cdn_frontdoor_origin_group_id=example_frontdoor_origin_group.id,
///     enabled=True,
///     host_name="example.com",
///     origin_host_header="example.com",
///     priority=1,
///     weight=1000,
///     certificate_name_check_enabled=False,
///     private_link={
///         "request_message": "Request access for Private Link Origin CDN Frontdoor",
///         "location": example.location,
///         "private_link_target_id": example_link_service.id,
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
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "vn-example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AddressSpaces = new[]
///         {
///             "10.5.0.0/16",
///         },
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "sn-example",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.5.1.0/24",
///         },
///         PrivateLinkServiceNetworkPoliciesEnabled = false,
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "ip-example",
///         Sku = "Standard",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Static",
///     });
///
///     var exampleLoadBalancer = new Azure.Lb.LoadBalancer("example", new()
///     {
///         Name = "lb-example",
///         Sku = "Standard",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         FrontendIpConfigurations = new[]
///         {
///             new Azure.Lb.Inputs.LoadBalancerFrontendIpConfigurationArgs
///             {
///                 Name = examplePublicIp.Name,
///                 PublicIpAddressId = examplePublicIp.Id,
///             },
///         },
///     });
///
///     var exampleLinkService = new Azure.PrivateDns.LinkService("example", new()
///     {
///         Name = "pls-example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VisibilitySubscriptionIds = new[]
///         {
///             current.Apply(getClientConfigResult => getClientConfigResult.SubscriptionId),
///         },
///         LoadBalancerFrontendIpConfigurationIds = new[]
///         {
///             exampleLoadBalancer.FrontendIpConfigurations.Apply(frontendIpConfigurations => frontendIpConfigurations[0]?.Id),
///         },
///         NatIpConfigurations = new[]
///         {
///             new Azure.PrivateDns.Inputs.LinkServiceNatIpConfigurationArgs
///             {
///                 Name = "primary",
///                 PrivateIpAddress = "10.5.1.17",
///                 PrivateIpAddressVersion = "IPv4",
///                 SubnetId = exampleSubnet.Id,
///                 Primary = true,
///             },
///         },
///     });
///
///     var exampleFrontdoorProfile = new Azure.Cdn.FrontdoorProfile("example", new()
///     {
///         Name = "profile-example",
///         ResourceGroupName = example.Name,
///         SkuName = "Premium_AzureFrontDoor",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleLinkService,
///         },
///     });
///
///     var exampleFrontdoorOriginGroup = new Azure.Cdn.FrontdoorOriginGroup("example", new()
///     {
///         Name = "group-example",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///         LoadBalancing = new Azure.Cdn.Inputs.FrontdoorOriginGroupLoadBalancingArgs
///         {
///             AdditionalLatencyInMilliseconds = 0,
///             SampleSize = 16,
///             SuccessfulSamplesRequired = 3,
///         },
///     });
///
///     var exampleFrontdoorOrigin = new Azure.Cdn.FrontdoorOrigin("example", new()
///     {
///         Name = "origin-example",
///         CdnFrontdoorOriginGroupId = exampleFrontdoorOriginGroup.Id,
///         Enabled = true,
///         HostName = "example.com",
///         OriginHostHeader = "example.com",
///         Priority = 1,
///         Weight = 1000,
///         CertificateNameCheckEnabled = false,
///         PrivateLink = new Azure.Cdn.Inputs.FrontdoorOriginPrivateLinkArgs
///         {
///             RequestMessage = "Request access for Private Link Origin CDN Frontdoor",
///             Location = example.Location,
///             PrivateLinkTargetId = exampleLinkService.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/lb"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
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
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("vn-example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.5.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("sn-example"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.5.1.0/24"),
/// 			},
/// 			PrivateLinkServiceNetworkPoliciesEnabled: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("ip-example"),
/// 			Sku:               pulumi.String("Standard"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLoadBalancer, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// 			Name:              pulumi.String("lb-example"),
/// 			Sku:               pulumi.String("Standard"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			FrontendIpConfigurations: lb.LoadBalancerFrontendIpConfigurationArray{
/// 				&lb.LoadBalancerFrontendIpConfigurationArgs{
/// 					Name:              examplePublicIp.Name,
/// 					PublicIpAddressId: examplePublicIp.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinkService, err := privatedns.NewLinkService(ctx, "example", &privatedns.LinkServiceArgs{
/// 			Name:              pulumi.String("pls-example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			VisibilitySubscriptionIds: pulumi.StringArray{
/// 				pulumi.String(current.SubscriptionId),
/// 			},
/// 			LoadBalancerFrontendIpConfigurationIds: pulumi.StringArray{
/// 				exampleLoadBalancer.FrontendIpConfigurations.ApplyT(func(frontendIpConfigurations []lb.LoadBalancerFrontendIpConfiguration) (*string, error) {
/// 					return frontendIpConfigurations[0].Id, nil
/// 				}).(pulumi.StringPtrOutput),
/// 			},
/// 			NatIpConfigurations: privatedns.LinkServiceNatIpConfigurationArray{
/// 				&privatedns.LinkServiceNatIpConfigurationArgs{
/// 					Name:                    pulumi.String("primary"),
/// 					PrivateIpAddress:        pulumi.String("10.5.1.17"),
/// 					PrivateIpAddressVersion: pulumi.String("IPv4"),
/// 					SubnetId:                exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 					Primary:                 pulumi.Bool(true),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorProfile, err := cdn.NewFrontdoorProfile(ctx, "example", &cdn.FrontdoorProfileArgs{
/// 			Name:              pulumi.String("profile-example"),
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Premium_AzureFrontDoor"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleLinkService,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorOriginGroup, err := cdn.NewFrontdoorOriginGroup(ctx, "example", &cdn.FrontdoorOriginGroupArgs{
/// 			Name:                  pulumi.String("group-example"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID().ToIDOutput().ToStringOutput(),
/// 			LoadBalancing: &cdn.FrontdoorOriginGroupLoadBalancingArgs{
/// 				AdditionalLatencyInMilliseconds: pulumi.Int(0),
/// 				SampleSize:                      pulumi.Int(16),
/// 				SuccessfulSamplesRequired:       pulumi.Int(3),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewFrontdoorOrigin(ctx, "example", &cdn.FrontdoorOriginArgs{
/// 			Name:                        pulumi.String("origin-example"),
/// 			CdnFrontdoorOriginGroupId:   exampleFrontdoorOriginGroup.ID().ToIDOutput().ToStringOutput(),
/// 			Enabled:                     pulumi.Bool(true),
/// 			HostName:                    pulumi.String("example.com"),
/// 			OriginHostHeader:            pulumi.String("example.com"),
/// 			Priority:                    pulumi.Int(1),
/// 			Weight:                      pulumi.Int(1000),
/// 			CertificateNameCheckEnabled: pulumi.Bool(false),
/// 			PrivateLink: &cdn.FrontdoorOriginPrivateLinkArgs{
/// 				RequestMessage:      pulumi.String("Request access for Private Link Origin CDN Frontdoor"),
/// 				Location:            example.Location,
/// 				PrivateLinkTargetId: exampleLinkService.ID().ToIDOutput().ToStringOutput(),
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
/// data "azure_core_getclientconfig" "current" {
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_cdn_frontdoorprofile" "example" {
///   depends_on          = [azure_privatedns_linkservice.example]
///   name                = "profile-example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Premium_AzureFrontDoor"
/// }
/// resource "azure_cdn_frontdoororigin" "example" {
///   name                           = "origin-example"
///   cdn_frontdoor_origin_group_id  = azure_cdn_frontdoororigingroup.example.id
///   enabled                        = true
///   host_name                      = "example.com"
///   origin_host_header             = "example.com"
///   priority                       = 1
///   weight                         = 1000
///   certificate_name_check_enabled = false
///   private_link = {
///     request_message        = "Request access for Private Link Origin CDN Frontdoor"
///     location               = azure_core_resourcegroup.example.location
///     private_link_target_id = azure_privatedns_linkservice.example.id
///   }
/// }
/// resource "azure_cdn_frontdoororigingroup" "example" {
///   name                     = "group-example"
///   cdn_frontdoor_profile_id = azure_cdn_frontdoorprofile.example.id
///   load_balancing = {
///     additional_latency_in_milliseconds = 0
///     sample_size                        = 16
///     successful_samples_required        = 3
///   }
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "vn-example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   address_spaces      = ["10.5.0.0/16"]
/// }
/// resource "azure_network_subnet" "example" {
///   name                                          = "sn-example"
///   resource_group_name                           = azure_core_resourcegroup.example.name
///   virtual_network_name                          = azure_network_virtualnetwork.example.name
///   address_prefixes                              = ["10.5.1.0/24"]
///   private_link_service_network_policies_enabled = false
/// }
/// resource "azure_network_publicip" "example" {
///   name                = "ip-example"
///   sku                 = "Standard"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   allocation_method   = "Static"
/// }
/// resource "azure_lb_loadbalancer" "example" {
///   name                = "lb-example"
///   sku                 = "Standard"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   frontend_ip_configurations {
///     name                 = azure_network_publicip.example.name
///     public_ip_address_id = azure_network_publicip.example.id
///   }
/// }
/// resource "azure_privatedns_linkservice" "example" {
///   name                                        = "pls-example"
///   resource_group_name                         = azure_core_resourcegroup.example.name
///   location                                    = azure_core_resourcegroup.example.location
///   visibility_subscription_ids                 = [data.azure_core_getclientconfig.current.subscription_id]
///   load_balancer_frontend_ip_configuration_ids = [azure_lb_loadbalancer.example.frontend_ip_configurations[0].id]
///   nat_ip_configurations {
///     name                       = "primary"
///     private_ip_address         = "10.5.1.17"
///     private_ip_address_version = "IPv4"
///     subnet_id                  = azure_network_subnet.example.id
///     primary                    = true
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.lb.LoadBalancer;
/// import com.pulumi.azure.lb.LoadBalancerArgs;
/// import com.pulumi.azure.lb.inputs.LoadBalancerFrontendIpConfigurationArgs;
/// import com.pulumi.azure.privatedns.LinkService;
/// import com.pulumi.azure.privatedns.LinkServiceArgs;
/// import com.pulumi.azure.privatedns.inputs.LinkServiceNatIpConfigurationArgs;
/// import com.pulumi.azure.cdn.FrontdoorProfile;
/// import com.pulumi.azure.cdn.FrontdoorProfileArgs;
/// import com.pulumi.azure.cdn.FrontdoorOriginGroup;
/// import com.pulumi.azure.cdn.FrontdoorOriginGroupArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorOriginGroupLoadBalancingArgs;
/// import com.pulumi.azure.cdn.FrontdoorOrigin;
/// import com.pulumi.azure.cdn.FrontdoorOriginArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorOriginPrivateLinkArgs;
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
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("vn-example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .addressSpaces("10.5.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("sn-example")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.5.1.0/24")
///             .privateLinkServiceNetworkPoliciesEnabled(false)
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("ip-example")
///             .sku("Standard")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Static")
///             .build());
///
///         var exampleLoadBalancer = new LoadBalancer("exampleLoadBalancer", LoadBalancerArgs.builder()
///             .name("lb-example")
///             .sku("Standard")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .frontendIpConfigurations(LoadBalancerFrontendIpConfigurationArgs.builder()
///                 .name(examplePublicIp.name())
///                 .publicIpAddressId(examplePublicIp.id())
///                 .build())
///             .build());
///
///         var exampleLinkService = new LinkService("exampleLinkService", LinkServiceArgs.builder()
///             .name("pls-example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .visibilitySubscriptionIds(current.subscriptionId())
///             .loadBalancerFrontendIpConfigurationIds(exampleLoadBalancer.frontendIpConfigurations().applyValue(_frontendIpConfigurations -> _frontendIpConfigurations[0].id()))
///             .natIpConfigurations(LinkServiceNatIpConfigurationArgs.builder()
///                 .name("primary")
///                 .privateIpAddress("10.5.1.17")
///                 .privateIpAddressVersion("IPv4")
///                 .subnetId(exampleSubnet.id())
///                 .primary(true)
///                 .build())
///             .build());
///
///         var exampleFrontdoorProfile = new FrontdoorProfile("exampleFrontdoorProfile", FrontdoorProfileArgs.builder()
///             .name("profile-example")
///             .resourceGroupName(example.name())
///             .skuName("Premium_AzureFrontDoor")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleLinkService)
///                 .build());
///
///         var exampleFrontdoorOriginGroup = new FrontdoorOriginGroup("exampleFrontdoorOriginGroup", FrontdoorOriginGroupArgs.builder()
///             .name("group-example")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .loadBalancing(FrontdoorOriginGroupLoadBalancingArgs.builder()
///                 .additionalLatencyInMilliseconds(0)
///                 .sampleSize(16)
///                 .successfulSamplesRequired(3)
///                 .build())
///             .build());
///
///         var exampleFrontdoorOrigin = new FrontdoorOrigin("exampleFrontdoorOrigin", FrontdoorOriginArgs.builder()
///             .name("origin-example")
///             .cdnFrontdoorOriginGroupId(exampleFrontdoorOriginGroup.id())
///             .enabled(true)
///             .hostName("example.com")
///             .originHostHeader("example.com")
///             .priority(1)
///             .weight(1000)
///             .certificateNameCheckEnabled(false)
///             .privateLink(FrontdoorOriginPrivateLinkArgs.builder()
///                 .requestMessage("Request access for Private Link Origin CDN Frontdoor")
///                 .location(example.location())
///                 .privateLinkTargetId(exampleLinkService.id())
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
///       name: example-resources
///       location: West Europe
///   exampleFrontdoorProfile:
///     type: azure:cdn:FrontdoorProfile
///     name: example
///     properties:
///       name: profile-example
///       resourceGroupName: ${example.name}
///       skuName: Premium_AzureFrontDoor
///     options:
///       dependsOn:
///         - ${exampleLinkService}
///   exampleFrontdoorOrigin:
///     type: azure:cdn:FrontdoorOrigin
///     name: example
///     properties:
///       name: origin-example
///       cdnFrontdoorOriginGroupId: ${exampleFrontdoorOriginGroup.id}
///       enabled: true
///       hostName: example.com
///       originHostHeader: example.com
///       priority: 1
///       weight: 1000
///       certificateNameCheckEnabled: false
///       privateLink:
///         requestMessage: Request access for Private Link Origin CDN Frontdoor
///         location: ${example.location}
///         privateLinkTargetId: ${exampleLinkService.id}
///   exampleFrontdoorOriginGroup:
///     type: azure:cdn:FrontdoorOriginGroup
///     name: example
///     properties:
///       name: group-example
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///       loadBalancing:
///         additionalLatencyInMilliseconds: 0
///         sampleSize: 16
///         successfulSamplesRequired: 3
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: vn-example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       addressSpaces:
///         - 10.5.0.0/16
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: sn-example
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.5.1.0/24
///       privateLinkServiceNetworkPoliciesEnabled: false
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: ip-example
///       sku: Standard
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Static
///   exampleLoadBalancer:
///     type: azure:lb:LoadBalancer
///     name: example
///     properties:
///       name: lb-example
///       sku: Standard
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       frontendIpConfigurations:
///         - name: ${examplePublicIp.name}
///           publicIpAddressId: ${examplePublicIp.id}
///   exampleLinkService:
///     type: azure:privatedns:LinkService
///     name: example
///     properties:
///       name: pls-example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       visibilitySubscriptionIds:
///         - ${current.subscriptionId}
///       loadBalancerFrontendIpConfigurationIds:
///         - ${exampleLoadBalancer.frontendIpConfigurations[0].id}
///       natIpConfigurations:
///         - name: primary
///           privateIpAddress: 10.5.1.17
///           privateIpAddressVersion: IPv4
///           subnetId: ${exampleSubnet.id}
///           primary: true
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## Example HCL Configurations
///
/// * Private Link Origin with Storage Account Blob
/// * Private Link Origin with Storage Account Static Web Site
/// * Private Link Origin with Linux Web Application
/// * Private Link Origin with Internal Load Balancer
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Cdn` - 2025-12-01
///
/// ## Import
///
/// Front Door Origins can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cdn/frontdoorOrigin:FrontdoorOrigin example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Cdn/profiles/profile1/originGroups/originGroup1/origins/origin1
/// ```
class FrontdoorOrigin extends pulumi.CustomResource {
  /// The ID of the Front Door Origin Group within which this Front Door Origin should exist. Changing this forces a new Front Door Origin to be created.
  late final pulumi.Output<String> cdnFrontdoorOriginGroupId;
  /// Specifies whether certificate name checks are enabled for this origin.
  late final pulumi.Output<bool> certificateNameCheckEnabled;
  /// Should the origin be enabled? Possible values are `true` or `false`. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// The IPv4 address, IPv6 address or Domain name of the Origin.
  ///
  /// &gt; **Note:** This must be unique across all Front Door Origins within a Front Door Endpoint.
  late final pulumi.Output<String> hostName;
  /// The value of the HTTP port. Must be between `1` and `65535`. Defaults to `80`.
  late final pulumi.Output<int?> httpPort;
  /// The value of the HTTPS port. Must be between `1` and `65535`. Defaults to `443`.
  late final pulumi.Output<int?> httpsPort;
  /// The name which should be used for this Front Door Origin. Changing this forces a new Front Door Origin to be created.
  late final pulumi.Output<String> name;
  /// The host header value (an IPv4 address, IPv6 address or Domain name) which is sent to the origin with each request. If unspecified the hostname from the request will be used.
  ///
  /// &gt; **Note:** Azure Front Door Origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin's hostname. This field's value overrides the host header defined in the Front Door Endpoint. For more information on how to properly set the origin host header value please see the [product documentation](https://docs.microsoft.com/azure/frontdoor/origin?pivots=front-door-standard-premium#origin-host-header).
  late final pulumi.Output<String?> originHostHeader;
  /// Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy. Must be between `1` and `5` (inclusive). Defaults to `1`.
  late final pulumi.Output<int?> priority;
  /// A `privateLink` block as defined below.
  ///
  /// &gt; **Note:** Private Link requires that the Front Door Profile this Origin is hosted within is using the SKU `Premium_AzureFrontDoor` and that the `certificateNameCheckEnabled` field is set to `true`.
  late final pulumi.Output<FrontdoorOriginPrivateLink?> privateLink;
  /// The weight of the origin in a given origin group for load balancing. Must be between `1` and `1000`. Defaults to `500`.
  late final pulumi.Output<int?> weight;

  /// Creates a new [FrontdoorOrigin].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FrontdoorOrigin]. {@macro pulumi_cdn_frontdoor_origin_frontdoor_origin_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FrontdoorOrigin(
    String name, {
    FrontdoorOriginArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/frontdoorOrigin:FrontdoorOrigin',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    cdnFrontdoorOriginGroupId = registerOutput<String>('cdnFrontdoorOriginGroupId');
    certificateNameCheckEnabled = registerOutput<bool>('certificateNameCheckEnabled');
    enabled = registerOutput<bool?>('enabled');
    hostName = registerOutput<String>('hostName');
    httpPort = registerOutput<int?>('httpPort');
    httpsPort = registerOutput<int?>('httpsPort');
    this.name = registerOutput<String>('name');
    originHostHeader = registerOutput<String?>('originHostHeader');
    priority = registerOutput<int?>('priority');
    privateLink = registerOutput<FrontdoorOriginPrivateLink?>('privateLink', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FrontdoorOriginPrivateLink.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    weight = registerOutput<int?>('weight');
  }

  /// Gets an existing [FrontdoorOrigin] resource's state with the given [name] and [id].
  static FrontdoorOrigin get(
    String name,
    pulumi.Input<String> id, {
    FrontdoorOriginState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FrontdoorOrigin._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FrontdoorOrigin._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/frontdoorOrigin:FrontdoorOrigin',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cdnFrontdoorOriginGroupId = registerOutput<String>('cdnFrontdoorOriginGroupId');
    certificateNameCheckEnabled = registerOutput<bool>('certificateNameCheckEnabled');
    enabled = registerOutput<bool?>('enabled');
    hostName = registerOutput<String>('hostName');
    httpPort = registerOutput<int?>('httpPort');
    httpsPort = registerOutput<int?>('httpsPort');
    this.name = registerOutput<String>('name');
    originHostHeader = registerOutput<String?>('originHostHeader');
    priority = registerOutput<int?>('priority');
    privateLink = registerOutput<FrontdoorOriginPrivateLink?>('privateLink', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FrontdoorOriginPrivateLink.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    weight = registerOutput<int?>('weight');
  }

  /// Creates a typed reference to an existing [FrontdoorOrigin] resource.
  FrontdoorOrigin.reference(String urn)
    : super(
        'azure:cdn/frontdoorOrigin:FrontdoorOrigin',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cdnFrontdoorOriginGroupId = registerOutput<String>('cdnFrontdoorOriginGroupId');
    certificateNameCheckEnabled = registerOutput<bool>('certificateNameCheckEnabled');
    enabled = registerOutput<bool?>('enabled');
    hostName = registerOutput<String>('hostName');
    httpPort = registerOutput<int?>('httpPort');
    httpsPort = registerOutput<int?>('httpsPort');
    this.name = registerOutput<String>('name');
    originHostHeader = registerOutput<String?>('originHostHeader');
    priority = registerOutput<int?>('priority');
    privateLink = registerOutput<FrontdoorOriginPrivateLink?>('privateLink', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FrontdoorOriginPrivateLink.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    weight = registerOutput<int?>('weight');
  }
}
