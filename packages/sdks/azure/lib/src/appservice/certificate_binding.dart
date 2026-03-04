import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_binding_args.dart';
import 'certificate_binding_state.dart';

/// Manages an App Service Certificate Binding.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "webapp",
///     location: "West Europe",
/// });
/// const examplePlan = new azure.appservice.Plan("example", {
///     name: "appserviceplan",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     sku: {
///         tier: "Premium",
///         size: "P1",
///     },
/// });
/// const exampleAppService = new azure.appservice.AppService("example", {
///     name: "mywebapp",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     appServicePlanId: examplePlan.id,
/// });
/// const example = azure.dns.getZoneOutput({
///     name: "example.com",
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleCNameRecord = new azure.dns.CNameRecord("example", {
///     name: "www",
///     zoneName: example.apply(example => example.name),
///     resourceGroupName: example.apply(example => example.resourceGroupName),
///     ttl: 300,
///     record: exampleAppService.defaultSiteHostname,
/// });
/// const exampleTxtRecord = new azure.dns.TxtRecord("example", {
///     name: pulumi.interpolate`asuid.${exampleCNameRecord.name}`,
///     zoneName: example.apply(example => example.name),
///     resourceGroupName: example.apply(example => example.resourceGroupName),
///     ttl: 300,
///     records: [{
///         value: exampleAppService.customDomainVerificationId,
///     }],
/// });
/// const exampleCustomHostnameBinding = new azure.appservice.CustomHostnameBinding("example", {
///     hostname: std.trimOutput({
///         input: exampleCNameRecord.fqdn,
///         cutset: ".",
///     }).apply(invoke => invoke.result),
///     appServiceName: exampleAppService.name,
///     resourceGroupName: exampleResourceGroup.name,
/// }, {
///     dependsOn: [exampleTxtRecord],
/// });
/// const exampleManagedCertificate = new azure.appservice.ManagedCertificate("example", {customHostnameBindingId: exampleCustomHostnameBinding.id});
/// const exampleCertificateBinding = new azure.appservice.CertificateBinding("example", {
///     hostnameBindingId: exampleCustomHostnameBinding.id,
///     certificateId: exampleManagedCertificate.id,
///     sslState: "SniEnabled",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="webapp",
///     location="West Europe")
/// example_plan = azure.appservice.Plan("example",
///     name="appserviceplan",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     sku={
///         "tier": "Premium",
///         "size": "P1",
///     })
/// example_app_service = azure.appservice.AppService("example",
///     name="mywebapp",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     app_service_plan_id=example_plan.id)
/// example = azure.dns.get_zone_output(name="example.com",
///     resource_group_name=example_resource_group.name)
/// example_c_name_record = azure.dns.CNameRecord("example",
///     name="www",
///     zone_name=example.name,
///     resource_group_name=example.resource_group_name,
///     ttl=300,
///     record=example_app_service.default_site_hostname)
/// example_txt_record = azure.dns.TxtRecord("example",
///     name=example_c_name_record.name.apply(lambda name: f"asuid.{name}"),
///     zone_name=example.name,
///     resource_group_name=example.resource_group_name,
///     ttl=300,
///     records=[{
///         "value": example_app_service.custom_domain_verification_id,
///     }])
/// example_custom_hostname_binding = azure.appservice.CustomHostnameBinding("example",
///     hostname=std.trim_output(input=example_c_name_record.fqdn,
///         cutset=".").apply(lambda invoke: invoke.result),
///     app_service_name=example_app_service.name,
///     resource_group_name=example_resource_group.name,
///     opts = pulumi.ResourceOptions(depends_on=[example_txt_record]))
/// example_managed_certificate = azure.appservice.ManagedCertificate("example", custom_hostname_binding_id=example_custom_hostname_binding.id)
/// example_certificate_binding = azure.appservice.CertificateBinding("example",
///     hostname_binding_id=example_custom_hostname_binding.id,
///     certificate_id=example_managed_certificate.id,
///     ssl_state="SniEnabled")
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
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "webapp",
///         Location = "West Europe",
///     });
///
///     var examplePlan = new Azure.AppService.Plan("example", new()
///     {
///         Name = "appserviceplan",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         Sku = new Azure.AppService.Inputs.PlanSkuArgs
///         {
///             Tier = "Premium",
///             Size = "P1",
///         },
///     });
///
///     var exampleAppService = new Azure.AppService.AppService("example", new()
///     {
///         Name = "mywebapp",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         AppServicePlanId = examplePlan.Id,
///     });
///
///     var example = Azure.Dns.GetZone.Invoke(new()
///     {
///         Name = "example.com",
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleCNameRecord = new Azure.Dns.CNameRecord("example", new()
///     {
///         Name = "www",
///         ZoneName = example.Apply(getZoneResult => getZoneResult.Name),
///         ResourceGroupName = example.Apply(getZoneResult => getZoneResult.ResourceGroupName),
///         Ttl = 300,
///         Record = exampleAppService.DefaultSiteHostname,
///     });
///
///     var exampleTxtRecord = new Azure.Dns.TxtRecord("example", new()
///     {
///         Name = exampleCNameRecord.Name.Apply(name => $"asuid.{name}"),
///         ZoneName = example.Apply(getZoneResult => getZoneResult.Name),
///         ResourceGroupName = example.Apply(getZoneResult => getZoneResult.ResourceGroupName),
///         Ttl = 300,
///         Records = new[]
///         {
///             new Azure.Dns.Inputs.TxtRecordRecordArgs
///             {
///                 Value = exampleAppService.CustomDomainVerificationId,
///             },
///         },
///     });
///
///     var exampleCustomHostnameBinding = new Azure.AppService.CustomHostnameBinding("example", new()
///     {
///         Hostname = Std.Trim.Invoke(new()
///         {
///             Input = exampleCNameRecord.Fqdn,
///             Cutset = ".",
///         }).Apply(invoke => invoke.Result),
///         AppServiceName = exampleAppService.Name,
///         ResourceGroupName = exampleResourceGroup.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleTxtRecord,
///         },
///     });
///
///     var exampleManagedCertificate = new Azure.AppService.ManagedCertificate("example", new()
///     {
///         CustomHostnameBindingId = exampleCustomHostnameBinding.Id,
///     });
///
///     var exampleCertificateBinding = new Azure.AppService.CertificateBinding("example", new()
///     {
///         HostnameBindingId = exampleCustomHostnameBinding.Id,
///         CertificateId = exampleManagedCertificate.Id,
///         SslState = "SniEnabled",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("webapp"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePlan, err := appservice.NewPlan(ctx, "example", &appservice.PlanArgs{
/// 			Name:              pulumi.String("appserviceplan"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Sku: &appservice.PlanSkuArgs{
/// 				Tier: pulumi.String("Premium"),
/// 				Size: pulumi.String("P1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAppService, err := appservice.NewAppService(ctx, "example", &appservice.AppServiceArgs{
/// 			Name:              pulumi.String("mywebapp"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			AppServicePlanId:  examplePlan.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := dns.LookupZoneOutput(ctx, dns.GetZoneOutputArgs{
/// 			Name:              pulumi.String("example.com"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		}, nil)
/// 		exampleCNameRecord, err := dns.NewCNameRecord(ctx, "example", &dns.CNameRecordArgs{
/// 			Name: pulumi.String("www"),
/// 			ZoneName: pulumi.String(example.ApplyT(func(example dns.GetZoneResult) (*string, error) {
/// 				return &example.Name, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ResourceGroupName: pulumi.String(example.ApplyT(func(example dns.GetZoneResult) (*string, error) {
/// 				return &example.ResourceGroupName, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Ttl:    pulumi.Int(300),
/// 			Record: exampleAppService.DefaultSiteHostname,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTxtRecord, err := dns.NewTxtRecord(ctx, "example", &dns.TxtRecordArgs{
/// 			Name: exampleCNameRecord.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("asuid.%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 			ZoneName: pulumi.String(example.ApplyT(func(example dns.GetZoneResult) (*string, error) {
/// 				return &example.Name, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ResourceGroupName: pulumi.String(example.ApplyT(func(example dns.GetZoneResult) (*string, error) {
/// 				return &example.ResourceGroupName, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Ttl: pulumi.Int(300),
/// 			Records: dns.TxtRecordRecordArray{
/// 				&dns.TxtRecordRecordArgs{
/// 					Value: exampleAppService.CustomDomainVerificationId,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCustomHostnameBinding, err := appservice.NewCustomHostnameBinding(ctx, "example", &appservice.CustomHostnameBindingArgs{
/// 			Hostname: pulumi.String(std.TrimOutput(ctx, std.TrimOutputArgs{
/// 				Input:  exampleCNameRecord.Fqdn,
/// 				Cutset: pulumi.String("."),
/// 			}, nil).ApplyT(func(invoke std.TrimResult) (*string, error) {
/// 				return invoke.Result, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			AppServiceName:    exampleAppService.Name,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleTxtRecord,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleManagedCertificate, err := appservice.NewManagedCertificate(ctx, "example", &appservice.ManagedCertificateArgs{
/// 			CustomHostnameBindingId: exampleCustomHostnameBinding.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewCertificateBinding(ctx, "example", &appservice.CertificateBindingArgs{
/// 			HostnameBindingId: exampleCustomHostnameBinding.ID(),
/// 			CertificateId:     exampleManagedCertificate.ID(),
/// 			SslState:          pulumi.String("SniEnabled"),
/// 		})
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appservice.Plan;
/// import com.pulumi.azure.appservice.PlanArgs;
/// import com.pulumi.azure.appservice.inputs.PlanSkuArgs;
/// import com.pulumi.azure.appservice.AppService;
/// import com.pulumi.azure.appservice.AppServiceArgs;
/// import com.pulumi.azure.dns.DnsFunctions;
/// import com.pulumi.azure.dns.inputs.GetZoneArgs;
/// import com.pulumi.azure.dns.CNameRecord;
/// import com.pulumi.azure.dns.CNameRecordArgs;
/// import com.pulumi.azure.dns.TxtRecord;
/// import com.pulumi.azure.dns.TxtRecordArgs;
/// import com.pulumi.azure.dns.inputs.TxtRecordRecordArgs;
/// import com.pulumi.azure.appservice.CustomHostnameBinding;
/// import com.pulumi.azure.appservice.CustomHostnameBindingArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.TrimArgs;
/// import com.pulumi.azure.appservice.ManagedCertificate;
/// import com.pulumi.azure.appservice.ManagedCertificateArgs;
/// import com.pulumi.azure.appservice.CertificateBinding;
/// import com.pulumi.azure.appservice.CertificateBindingArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("webapp")
///             .location("West Europe")
///             .build());
///
///         var examplePlan = new Plan("examplePlan", PlanArgs.builder()
///             .name("appserviceplan")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .sku(PlanSkuArgs.builder()
///                 .tier("Premium")
///                 .size("P1")
///                 .build())
///             .build());
///
///         var exampleAppService = new AppService("exampleAppService", AppServiceArgs.builder()
///             .name("mywebapp")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .appServicePlanId(examplePlan.id())
///             .build());
///
///         final var example = DnsFunctions.getZone(GetZoneArgs.builder()
///             .name("example.com")
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleCNameRecord = new CNameRecord("exampleCNameRecord", CNameRecordArgs.builder()
///             .name("www")
///             .zoneName(example.applyValue(_example -> _example.name()))
///             .resourceGroupName(example.applyValue(_example -> _example.resourceGroupName()))
///             .ttl(300)
///             .record(exampleAppService.defaultSiteHostname())
///             .build());
///
///         var exampleTxtRecord = new TxtRecord("exampleTxtRecord", TxtRecordArgs.builder()
///             .name(exampleCNameRecord.name().applyValue(_name -> String.format("asuid.%s", _name)))
///             .zoneName(example.applyValue(_example -> _example.name()))
///             .resourceGroupName(example.applyValue(_example -> _example.resourceGroupName()))
///             .ttl(300)
///             .records(TxtRecordRecordArgs.builder()
///                 .value(exampleAppService.customDomainVerificationId())
///                 .build())
///             .build());
///
///         var exampleCustomHostnameBinding = new CustomHostnameBinding("exampleCustomHostnameBinding", CustomHostnameBindingArgs.builder()
///             .hostname(StdFunctions.trim(TrimArgs.builder()
///                 .input(exampleCNameRecord.fqdn())
///                 .cutset(".")
///                 .build()).applyValue(_invoke -> _invoke.result()))
///             .appServiceName(exampleAppService.name())
///             .resourceGroupName(exampleResourceGroup.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleTxtRecord)
///                 .build());
///
///         var exampleManagedCertificate = new ManagedCertificate("exampleManagedCertificate", ManagedCertificateArgs.builder()
///             .customHostnameBindingId(exampleCustomHostnameBinding.id())
///             .build());
///
///         var exampleCertificateBinding = new CertificateBinding("exampleCertificateBinding", CertificateBindingArgs.builder()
///             .hostnameBindingId(exampleCustomHostnameBinding.id())
///             .certificateId(exampleManagedCertificate.id())
///             .sslState("SniEnabled")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: webapp
///       location: West Europe
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///     properties:
///       name: appserviceplan
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       sku:
///         tier: Premium
///         size: P1
///   exampleAppService:
///     type: azure:appservice:AppService
///     name: example
///     properties:
///       name: mywebapp
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       appServicePlanId: ${examplePlan.id}
///   exampleCNameRecord:
///     type: azure:dns:CNameRecord
///     name: example
///     properties:
///       name: www
///       zoneName: ${example.name}
///       resourceGroupName: ${example.resourceGroupName}
///       ttl: 300
///       record: ${exampleAppService.defaultSiteHostname}
///   exampleTxtRecord:
///     type: azure:dns:TxtRecord
///     name: example
///     properties:
///       name: asuid.${exampleCNameRecord.name}
///       zoneName: ${example.name}
///       resourceGroupName: ${example.resourceGroupName}
///       ttl: 300
///       records:
///         - value: ${exampleAppService.customDomainVerificationId}
///   exampleCustomHostnameBinding:
///     type: azure:appservice:CustomHostnameBinding
///     name: example
///     properties:
///       hostname:
///         fn::invoke:
///           function: std:trim
///           arguments:
///             input: ${exampleCNameRecord.fqdn}
///             cutset: .
///           return: result
///       appServiceName: ${exampleAppService.name}
///       resourceGroupName: ${exampleResourceGroup.name}
///     options:
///       dependsOn:
///         - ${exampleTxtRecord}
///   exampleManagedCertificate:
///     type: azure:appservice:ManagedCertificate
///     name: example
///     properties:
///       customHostnameBindingId: ${exampleCustomHostnameBinding.id}
///   exampleCertificateBinding:
///     type: azure:appservice:CertificateBinding
///     name: example
///     properties:
///       hostnameBindingId: ${exampleCustomHostnameBinding.id}
///       certificateId: ${exampleManagedCertificate.id}
///       sslState: SniEnabled
/// variables:
///   example:
///     fn::invoke:
///       function: azure:dns:getZone
///       arguments:
///         name: example.com
///         resourceGroupName: ${exampleResourceGroup.name}
/// ```
///
///
/// ## Import
///
/// App Service Certificate Bindings can be imported using the `hostname_binding_id` and the `app_service_certificate_id` , e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/certificateBinding:CertificateBinding example "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Web/sites/instance1/hostNameBindings/mywebsite.com|/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Web/certificates/mywebsite.com"
/// ```
class CertificateBinding extends pulumi.CustomResource {
  /// The name of the App Service to which the certificate was bound.
  late final pulumi.Output<String> appServiceName;

  /// The ID of the certificate to bind to the custom domain. Changing this forces a new App Service Certificate Binding to be created.
  late final pulumi.Output<String> certificateId;

  /// The hostname of the bound certificate.
  late final pulumi.Output<String> hostname;

  /// The ID of the Custom Domain/Hostname Binding. Changing this forces a new App Service Certificate Binding to be created.
  late final pulumi.Output<String> hostnameBindingId;

  /// The type of certificate binding. Allowed values are `IpBasedEnabled` or `SniEnabled`. Changing this forces a new App Service Certificate Binding to be created.
  late final pulumi.Output<String> sslState;

  /// The certificate thumbprint.
  late final pulumi.Output<String> thumbprint;

  /// Creates a new [CertificateBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateBinding]. {@macro pulumi_appservice_certificate_binding_certificate_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateBinding(
    String name, {
    CertificateBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appservice/certificateBinding:CertificateBinding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appServiceName = registerOutput<String>('appServiceName');
    certificateId = registerOutput<String>('certificateId');
    hostname = registerOutput<String>('hostname');
    hostnameBindingId = registerOutput<String>('hostnameBindingId');
    sslState = registerOutput<String>('sslState');
    thumbprint = registerOutput<String>('thumbprint');
  }

  /// Gets an existing [CertificateBinding] resource's state with the given [name] and [id].
  static CertificateBinding get(
    String name,
    pulumi.Input<String> id, {
    CertificateBindingState? state,
  }) {
    return CertificateBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CertificateBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appservice/certificateBinding:CertificateBinding',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appServiceName = registerOutput<String>('appServiceName');
    certificateId = registerOutput<String>('certificateId');
    hostname = registerOutput<String>('hostname');
    hostnameBindingId = registerOutput<String>('hostnameBindingId');
    sslState = registerOutput<String>('sslState');
    thumbprint = registerOutput<String>('thumbprint');
  }
}
