import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_args.dart';
import 'custom_domain_state.dart';

/// Manages a Container App Custom Domain.
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
/// const exampleZone = new azure.dns.Zone("example", {
///     name: "contoso.com",
///     resourceGroupName: example.name,
/// });
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
///     retentionInDays: 30,
/// });
/// const exampleEnvironment = new azure.containerapp.Environment("example", {
///     name: "Example-Environment",
///     location: example.location,
///     resourceGroupName: example.name,
///     logAnalyticsWorkspaceId: exampleAnalyticsWorkspace.id,
/// });
/// const exampleApp = new azure.containerapp.App("example", {
///     name: "example-app",
///     containerAppEnvironmentId: exampleEnvironment.id,
///     resourceGroupName: example.name,
///     revisionMode: "Single",
///     template: {
///         containers: [{
///             name: "examplecontainerapp",
///             image: "mcr.microsoft.com/k8se/quickstart:latest",
///             cpu: 0.25,
///             memory: "0.5Gi",
///         }],
///     },
///     ingress: {
///         allowInsecureConnections: false,
///         externalEnabled: true,
///         targetPort: 5000,
///         transport: "http",
///         trafficWeights: [{
///             latestRevision: true,
///             percentage: 100,
///         }],
///     },
/// });
/// const exampleTxtRecord = new azure.dns.TxtRecord("example", {
///     name: "asuid.example",
///     resourceGroupName: exampleZone.resourceGroupName,
///     zoneName: exampleZone.name,
///     ttl: 300,
///     records: [{
///         value: exampleApp.customDomainVerificationId,
///     }],
/// });
/// const exampleEnvironmentCertificate = new azure.containerapp.EnvironmentCertificate("example", {
///     name: "myfriendlyname",
///     containerAppEnvironmentId: exampleEnvironment.id,
///     certificateBlob: std.filebase64({
///         input: "path/to/certificate_file.pfx",
///     }).then(invoke => invoke.result),
///     certificatePassword: "$3cretSqu1rreL",
/// });
/// const exampleCustomDomain = new azure.containerapp.CustomDomain("example", {
///     name: std.trimprefix({
///         input: api.fqdn,
///         prefix: "asuid.",
///     }).then(invoke => std.trimsuffix({
///         input: invoke.result,
///         suffix: ".",
///     })).then(invoke => invoke.result),
///     containerAppId: exampleApp.id,
///     containerAppEnvironmentCertificateId: exampleEnvironmentCertificate.id,
///     certificateBindingType: "SniEnabled",
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
/// example_zone = azure.dns.Zone("example",
///     name="contoso.com",
///     resource_group_name=example.name)
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018",
///     retention_in_days=30)
/// example_environment = azure.containerapp.Environment("example",
///     name="Example-Environment",
///     location=example.location,
///     resource_group_name=example.name,
///     log_analytics_workspace_id=example_analytics_workspace.id)
/// example_app = azure.containerapp.App("example",
///     name="example-app",
///     container_app_environment_id=example_environment.id,
///     resource_group_name=example.name,
///     revision_mode="Single",
///     template={
///         "containers": [{
///             "name": "examplecontainerapp",
///             "image": "mcr.microsoft.com/k8se/quickstart:latest",
///             "cpu": 0.25,
///             "memory": "0.5Gi",
///         }],
///     },
///     ingress={
///         "allow_insecure_connections": False,
///         "external_enabled": True,
///         "target_port": 5000,
///         "transport": "http",
///         "traffic_weights": [{
///             "latest_revision": True,
///             "percentage": 100,
///         }],
///     })
/// example_txt_record = azure.dns.TxtRecord("example",
///     name="asuid.example",
///     resource_group_name=example_zone.resource_group_name,
///     zone_name=example_zone.name,
///     ttl=300,
///     records=[{
///         "value": example_app.custom_domain_verification_id,
///     }])
/// example_environment_certificate = azure.containerapp.EnvironmentCertificate("example",
///     name="myfriendlyname",
///     container_app_environment_id=example_environment.id,
///     certificate_blob=std.filebase64(input="path/to/certificate_file.pfx").result,
///     certificate_password="$3cretSqu1rreL")
/// example_custom_domain = azure.containerapp.CustomDomain("example",
///     name=std.trimsuffix(input=std.trimprefix(input=api["fqdn"],
///             prefix="asuid.").result,
///         suffix=".").result,
///     container_app_id=example_app.id,
///     container_app_environment_certificate_id=example_environment_certificate.id,
///     certificate_binding_type="SniEnabled")
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
///     var exampleZone = new Azure.Dns.Zone("example", new()
///     {
///         Name = "contoso.com",
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///         RetentionInDays = 30,
///     });
///
///     var exampleEnvironment = new Azure.ContainerApp.Environment("example", new()
///     {
///         Name = "Example-Environment",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         LogAnalyticsWorkspaceId = exampleAnalyticsWorkspace.Id,
///     });
///
///     var exampleApp = new Azure.ContainerApp.App("example", new()
///     {
///         Name = "example-app",
///         ContainerAppEnvironmentId = exampleEnvironment.Id,
///         ResourceGroupName = example.Name,
///         RevisionMode = "Single",
///         Template = new Azure.ContainerApp.Inputs.AppTemplateArgs
///         {
///             Containers = new[]
///             {
///                 new Azure.ContainerApp.Inputs.AppTemplateContainerArgs
///                 {
///                     Name = "examplecontainerapp",
///                     Image = "mcr.microsoft.com/k8se/quickstart:latest",
///                     Cpu = 0.25,
///                     Memory = "0.5Gi",
///                 },
///             },
///         },
///         Ingress = new Azure.ContainerApp.Inputs.AppIngressArgs
///         {
///             AllowInsecureConnections = false,
///             ExternalEnabled = true,
///             TargetPort = 5000,
///             Transport = "http",
///             TrafficWeights = new[]
///             {
///                 new Azure.ContainerApp.Inputs.AppIngressTrafficWeightArgs
///                 {
///                     LatestRevision = true,
///                     Percentage = 100,
///                 },
///             },
///         },
///     });
///
///     var exampleTxtRecord = new Azure.Dns.TxtRecord("example", new()
///     {
///         Name = "asuid.example",
///         ResourceGroupName = exampleZone.ResourceGroupName,
///         ZoneName = exampleZone.Name,
///         Ttl = 300,
///         Records = new[]
///         {
///             new Azure.Dns.Inputs.TxtRecordRecordArgs
///             {
///                 Value = exampleApp.CustomDomainVerificationId,
///             },
///         },
///     });
///
///     var exampleEnvironmentCertificate = new Azure.ContainerApp.EnvironmentCertificate("example", new()
///     {
///         Name = "myfriendlyname",
///         ContainerAppEnvironmentId = exampleEnvironment.Id,
///         CertificateBlob = Std.Filebase64.Invoke(new()
///         {
///             Input = "path/to/certificate_file.pfx",
///         }).Apply(invoke => invoke.Result),
///         CertificatePassword = "$3cretSqu1rreL",
///     });
///
///     var exampleCustomDomain = new Azure.ContainerApp.CustomDomain("example", new()
///     {
///         Name = Std.Trimprefix.Invoke(new()
///         {
///             Input = api.Fqdn,
///             Prefix = "asuid.",
///         }).Apply(invoke => Std.Trimsuffix.Invoke(new()
///         {
///             Input = invoke.Result,
///             Suffix = ".",
///         })).Apply(invoke => invoke.Result),
///         ContainerAppId = exampleApp.Id,
///         ContainerAppEnvironmentCertificateId = exampleEnvironmentCertificate.Id,
///         CertificateBindingType = "SniEnabled",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
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
/// 		exampleZone, err := dns.NewZone(ctx, "example", &dns.ZoneArgs{
/// 			Name:              pulumi.String("contoso.com"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 			RetentionInDays:   pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEnvironment, err := containerapp.NewEnvironment(ctx, "example", &containerapp.EnvironmentArgs{
/// 			Name:                    pulumi.String("Example-Environment"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			LogAnalyticsWorkspaceId: exampleAnalyticsWorkspace.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleApp, err := containerapp.NewApp(ctx, "example", &containerapp.AppArgs{
/// 			Name:                      pulumi.String("example-app"),
/// 			ContainerAppEnvironmentId: exampleEnvironment.ID(),
/// 			ResourceGroupName:         example.Name,
/// 			RevisionMode:              pulumi.String("Single"),
/// 			Template: &containerapp.AppTemplateArgs{
/// 				Containers: containerapp.AppTemplateContainerArray{
/// 					&containerapp.AppTemplateContainerArgs{
/// 						Name:   pulumi.String("examplecontainerapp"),
/// 						Image:  pulumi.String("mcr.microsoft.com/k8se/quickstart:latest"),
/// 						Cpu:    pulumi.Float64(0.25),
/// 						Memory: pulumi.String("0.5Gi"),
/// 					},
/// 				},
/// 			},
/// 			Ingress: &containerapp.AppIngressArgs{
/// 				AllowInsecureConnections: pulumi.Bool(false),
/// 				ExternalEnabled:          pulumi.Bool(true),
/// 				TargetPort:               pulumi.Int(5000),
/// 				Transport:                pulumi.String("http"),
/// 				TrafficWeights: containerapp.AppIngressTrafficWeightArray{
/// 					&containerapp.AppIngressTrafficWeightArgs{
/// 						LatestRevision: pulumi.Bool(true),
/// 						Percentage:     pulumi.Int(100),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewTxtRecord(ctx, "example", &dns.TxtRecordArgs{
/// 			Name:              pulumi.String("asuid.example"),
/// 			ResourceGroupName: exampleZone.ResourceGroupName,
/// 			ZoneName:          exampleZone.Name,
/// 			Ttl:               pulumi.Int(300),
/// 			Records: dns.TxtRecordRecordArray{
/// 				&dns.TxtRecordRecordArgs{
/// 					Value: exampleApp.CustomDomainVerificationId,
/// 				},
/// 			},
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
/// 		exampleEnvironmentCertificate, err := containerapp.NewEnvironmentCertificate(ctx, "example", &containerapp.EnvironmentCertificateArgs{
/// 			Name:                      pulumi.String("myfriendlyname"),
/// 			ContainerAppEnvironmentId: exampleEnvironment.ID(),
/// 			CertificateBlob:           invokeFilebase64.Result,
/// 			CertificatePassword:       pulumi.String("$3cretSqu1rreL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeTrimsuffix1, err := std.Trimsuffix(ctx, &std.TrimsuffixArgs{
/// 			Input: std.Trimprefix(ctx, &std.TrimprefixArgs{
/// 				Input:  api.Fqdn,
/// 				Prefix: "asuid.",
/// 			}, nil).Result,
/// 			Suffix: ".",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerapp.NewCustomDomain(ctx, "example", &containerapp.CustomDomainArgs{
/// 			Name:                                 pulumi.String(invokeTrimsuffix1.Result),
/// 			ContainerAppId:                       exampleApp.ID(),
/// 			ContainerAppEnvironmentCertificateId: exampleEnvironmentCertificate.ID(),
/// 			CertificateBindingType:               pulumi.String("SniEnabled"),
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
/// resource "azure_dns_zone" "example" {
///   name                = "contoso.com"
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_dns_txtrecord" "example" {
///   name                = "asuid.example"
///   resource_group_name = azure_dns_zone.example.resource_group_name
///   zone_name           = azure_dns_zone.example.name
///   ttl                 = 300
///   records {
///     value = azure_containerapp_app.example.custom_domain_verification_id
///   }
/// }
/// resource "azure_operationalinsights_analyticsworkspace" "example" {
///   name                = "example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "PerGB2018"
///   retention_in_days   = 30
/// }
/// resource "azure_containerapp_environment" "example" {
///   name                       = "Example-Environment"
///   location                   = azure_core_resourcegroup.example.location
///   resource_group_name        = azure_core_resourcegroup.example.name
///   log_analytics_workspace_id = azure_operationalinsights_analyticsworkspace.example.id
/// }
/// resource "azure_containerapp_environmentcertificate" "example" {
///   name                         = "myfriendlyname"
///   container_app_environment_id = azure_containerapp_environment.example.id
///   certificate_blob             = filebase64("path/to/certificate_file.pfx")
///   certificate_password         = "$3cretSqu1rreL"
/// }
/// resource "azure_containerapp_app" "example" {
///   name                         = "example-app"
///   container_app_environment_id = azure_containerapp_environment.example.id
///   resource_group_name          = azure_core_resourcegroup.example.name
///   revision_mode                = "Single"
///   template = {
///     containers = [{
///       "name"   = "examplecontainerapp"
///       "image"  = "mcr.microsoft.com/k8se/quickstart:latest"
///       "cpu"    = 0.25
///       "memory" = "0.5Gi"
///     }]
///   }
///   ingress = {
///     allow_insecure_connections = false
///     external_enabled           = true
///     target_port                = 5000
///     transport                  = "http"
///     traffic_weights = [{
///       "latestRevision" = true
///       "percentage"     = 100
///     }]
///   }
/// }
/// resource "azure_containerapp_customdomain" "example" {
///   name                                     = trimsuffix(trimprefix(api.fqdn, "asuid."), ".")
///   container_app_id                         = azure_containerapp_app.example.id
///   container_app_environment_certificate_id = azure_containerapp_environmentcertificate.example.id
///   certificate_binding_type                 = "SniEnabled"
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
/// import com.pulumi.azure.dns.Zone;
/// import com.pulumi.azure.dns.ZoneArgs;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.containerapp.Environment;
/// import com.pulumi.azure.containerapp.EnvironmentArgs;
/// import com.pulumi.azure.containerapp.App;
/// import com.pulumi.azure.containerapp.AppArgs;
/// import com.pulumi.azure.containerapp.inputs.AppTemplateArgs;
/// import com.pulumi.azure.containerapp.inputs.AppTemplateContainerArgs;
/// import com.pulumi.azure.containerapp.inputs.AppIngressArgs;
/// import com.pulumi.azure.containerapp.inputs.AppIngressTrafficWeightArgs;
/// import com.pulumi.azure.dns.TxtRecord;
/// import com.pulumi.azure.dns.TxtRecordArgs;
/// import com.pulumi.azure.dns.inputs.TxtRecordRecordArgs;
/// import com.pulumi.azure.containerapp.EnvironmentCertificate;
/// import com.pulumi.azure.containerapp.EnvironmentCertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
/// import com.pulumi.azure.containerapp.CustomDomain;
/// import com.pulumi.azure.containerapp.CustomDomainArgs;
/// import com.pulumi.std.inputs.TrimprefixArgs;
/// import com.pulumi.std.inputs.TrimsuffixArgs;
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
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .name("contoso.com")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .retentionInDays(30)
///             .build());
///
///         var exampleEnvironment = new Environment("exampleEnvironment", EnvironmentArgs.builder()
///             .name("Example-Environment")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .logAnalyticsWorkspaceId(exampleAnalyticsWorkspace.id())
///             .build());
///
///         var exampleApp = new App("exampleApp", AppArgs.builder()
///             .name("example-app")
///             .containerAppEnvironmentId(exampleEnvironment.id())
///             .resourceGroupName(example.name())
///             .revisionMode("Single")
///             .template(AppTemplateArgs.builder()
///                 .containers(AppTemplateContainerArgs.builder()
///                     .name("examplecontainerapp")
///                     .image("mcr.microsoft.com/k8se/quickstart:latest")
///                     .cpu(0.25)
///                     .memory("0.5Gi")
///                     .build())
///                 .build())
///             .ingress(AppIngressArgs.builder()
///                 .allowInsecureConnections(false)
///                 .externalEnabled(true)
///                 .targetPort(5000)
///                 .transport("http")
///                 .trafficWeights(AppIngressTrafficWeightArgs.builder()
///                     .latestRevision(true)
///                     .percentage(100)
///                     .build())
///                 .build())
///             .build());
///
///         var exampleTxtRecord = new TxtRecord("exampleTxtRecord", TxtRecordArgs.builder()
///             .name("asuid.example")
///             .resourceGroupName(exampleZone.resourceGroupName())
///             .zoneName(exampleZone.name())
///             .ttl(300)
///             .records(TxtRecordRecordArgs.builder()
///                 .value(exampleApp.customDomainVerificationId())
///                 .build())
///             .build());
///
///         var exampleEnvironmentCertificate = new EnvironmentCertificate("exampleEnvironmentCertificate", EnvironmentCertificateArgs.builder()
///             .name("myfriendlyname")
///             .containerAppEnvironmentId(exampleEnvironment.id())
///             .certificateBlob(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("path/to/certificate_file.pfx")
///                 .build()).result())
///             .certificatePassword("$3cretSqu1rreL")
///             .build());
///
///         var exampleCustomDomain = new CustomDomain("exampleCustomDomain", CustomDomainArgs.builder()
///             .name(StdFunctions.trimsuffix(TrimsuffixArgs.builder()
///                 .input(StdFunctions.trimprefix(TrimprefixArgs.builder()
///                     .input(api.fqdn())
///                     .prefix("asuid.")
///                     .build()).result())
///                 .suffix(".")
///                 .build()).result())
///             .containerAppId(exampleApp.id())
///             .containerAppEnvironmentCertificateId(exampleEnvironmentCertificate.id())
///             .certificateBindingType("SniEnabled")
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
///   exampleZone:
///     type: azure:dns:Zone
///     name: example
///     properties:
///       name: contoso.com
///       resourceGroupName: ${example.name}
///   exampleTxtRecord:
///     type: azure:dns:TxtRecord
///     name: example
///     properties:
///       name: asuid.example
///       resourceGroupName: ${exampleZone.resourceGroupName}
///       zoneName: ${exampleZone.name}
///       ttl: 300
///       records:
///         - value: ${exampleApp.customDomainVerificationId}
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///       retentionInDays: 30
///   exampleEnvironment:
///     type: azure:containerapp:Environment
///     name: example
///     properties:
///       name: Example-Environment
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       logAnalyticsWorkspaceId: ${exampleAnalyticsWorkspace.id}
///   exampleEnvironmentCertificate:
///     type: azure:containerapp:EnvironmentCertificate
///     name: example
///     properties:
///       name: myfriendlyname
///       containerAppEnvironmentId: ${exampleEnvironment.id}
///       certificateBlob:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: path/to/certificate_file.pfx
///           return: result
///       certificatePassword: $3cretSqu1rreL
///   exampleApp:
///     type: azure:containerapp:App
///     name: example
///     properties:
///       name: example-app
///       containerAppEnvironmentId: ${exampleEnvironment.id}
///       resourceGroupName: ${example.name}
///       revisionMode: Single
///       template:
///         containers:
///           - name: examplecontainerapp
///             image: mcr.microsoft.com/k8se/quickstart:latest
///             cpu: 0.25
///             memory: 0.5Gi
///       ingress:
///         allowInsecureConnections: false
///         externalEnabled: true
///         targetPort: 5000
///         transport: http
///         trafficWeights:
///           - latestRevision: true
///             percentage: 100
///   exampleCustomDomain:
///     type: azure:containerapp:CustomDomain
///     name: example
///     properties:
///       name:
///         fn::invoke:
///           function: std:trimsuffix
///           arguments:
///             input:
///               fn::invoke:
///                 function: std:trimprefix
///                 arguments:
///                   input: ${api.fqdn}
///                   prefix: asuid.
///                 return: result
///             suffix: .
///           return: result
///       containerAppId: ${exampleApp.id}
///       containerAppEnvironmentCertificateId: ${exampleEnvironmentCertificate.id}
///       certificateBindingType: SniEnabled
/// ```
///
///
/// ### Managed Certificate
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.containerapp.CustomDomain("example", {
///     name: std.trimprefix({
///         input: api.fqdn,
///         prefix: "asuid.",
///     }).then(invoke => std.trimsuffix({
///         input: invoke.result,
///         suffix: ".",
///     })).then(invoke => invoke.result),
///     containerAppId: exampleAzurermContainerApp.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.containerapp.CustomDomain("example",
///     name=std.trimsuffix(input=std.trimprefix(input=api["fqdn"],
///             prefix="asuid.").result,
///         suffix=".").result,
///     container_app_id=example_azurerm_container_app["id"])
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
///     var example = new Azure.ContainerApp.CustomDomain("example", new()
///     {
///         Name = Std.Trimprefix.Invoke(new()
///         {
///             Input = api.Fqdn,
///             Prefix = "asuid.",
///         }).Apply(invoke => Std.Trimsuffix.Invoke(new()
///         {
///             Input = invoke.Result,
///             Suffix = ".",
///         })).Apply(invoke => invoke.Result),
///         ContainerAppId = exampleAzurermContainerApp.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerapp"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeTrimsuffix, err := std.Trimsuffix(ctx, &std.TrimsuffixArgs{
/// 			Input: std.Trimprefix(ctx, &std.TrimprefixArgs{
/// 				Input:  api.Fqdn,
/// 				Prefix: "asuid.",
/// 			}, nil).Result,
/// 			Suffix: ".",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerapp.NewCustomDomain(ctx, "example", &containerapp.CustomDomainArgs{
/// 			Name:           pulumi.String(invokeTrimsuffix.Result),
/// 			ContainerAppId: pulumi.Any(exampleAzurermContainerApp.Id),
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
/// resource "azure_containerapp_customdomain" "example" {
///   name             = trimsuffix(trimprefix(api.fqdn, "asuid."), ".")
///   container_app_id = exampleAzurermContainerApp.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.containerapp.CustomDomain;
/// import com.pulumi.azure.containerapp.CustomDomainArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.TrimprefixArgs;
/// import com.pulumi.std.inputs.TrimsuffixArgs;
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
///         var example = new CustomDomain("example", CustomDomainArgs.builder()
///             .name(StdFunctions.trimsuffix(TrimsuffixArgs.builder()
///                 .input(StdFunctions.trimprefix(TrimprefixArgs.builder()
///                     .input(api.fqdn())
///                     .prefix("asuid.")
///                     .build()).result())
///                 .suffix(".")
///                 .build()).result())
///             .containerAppId(exampleAzurermContainerApp.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:containerapp:CustomDomain
///     properties:
///       name:
///         fn::invoke:
///           function: std:trimsuffix
///           arguments:
///             input:
///               fn::invoke:
///                 function: std:trimprefix
///                 arguments:
///                   input: ${api.fqdn}
///                   prefix: asuid.
///                 return: result
///             suffix: .
///           return: result
///       containerAppId: ${exampleAzurermContainerApp.id}
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
/// A Container App Custom Domain can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerapp/customDomain:CustomDomain example "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.App/containerApps/myContainerApp/customDomainName/mycustomdomain.example.com"
/// ```
class CustomDomain extends pulumi.CustomResource {
  /// The Certificate Binding type. Possible values are `Auto`, `Disabled` and `SniEnabled`. Required with `containerAppEnvironmentCertificateId`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If using an Azure Managed Certificate `containerAppEnvironmentCertificateId` and `certificateBindingType` should be added to `ignoreChanges` to prevent resource recreation due to these values being modified asynchronously outside of Terraform.
  late final pulumi.Output<String?> certificateBindingType;
  /// The ID of the Container App Environment Certificate to use. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Omit this value if you wish to use an Azure Managed certificate. You must create the relevant DNS verification steps before this process will be successful.
  late final pulumi.Output<String?> containerAppEnvironmentCertificateId;
  /// The ID of the Container App Environment Managed Certificate to use.
  late final pulumi.Output<String> containerAppEnvironmentManagedCertificateId;
  /// The ID of the Container App to which this Custom Domain should be bound. Changing this forces a new resource to be created.
  late final pulumi.Output<String> containerAppId;
  /// The fully qualified name of the Custom Domain. Must be the CN or a named SAN in the certificate specified by the `containerAppEnvironmentCertificateId`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The Custom Domain verification TXT record requires a prefix of `asuid.`, however, this must be trimmed from the `name` property here. See the [official docs](https://learn.microsoft.com/en-us/azure/container-apps/custom-domains-certificates) for more information.
  late final pulumi.Output<String> name;

  /// Creates a new [CustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomDomain]. {@macro pulumi_containerapp_custom_domain_custom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomDomain(
    String name, {
    CustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerapp/customDomain:CustomDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateBindingType = registerOutput<String?>('certificateBindingType');
    containerAppEnvironmentCertificateId = registerOutput<String?>('containerAppEnvironmentCertificateId');
    containerAppEnvironmentManagedCertificateId = registerOutput<String>('containerAppEnvironmentManagedCertificateId');
    containerAppId = registerOutput<String>('containerAppId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [CustomDomain] resource's state with the given [name] and [id].
  static CustomDomain get(
    String name,
    pulumi.Input<String> id, {
    CustomDomainState? state,
  }) {
    return CustomDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerapp/customDomain:CustomDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateBindingType = registerOutput<String?>('certificateBindingType');
    containerAppEnvironmentCertificateId = registerOutput<String?>('containerAppEnvironmentCertificateId');
    containerAppEnvironmentManagedCertificateId = registerOutput<String>('containerAppEnvironmentManagedCertificateId');
    containerAppId = registerOutput<String>('containerAppId');
    this.name = registerOutput<String>('name');
  }
}
