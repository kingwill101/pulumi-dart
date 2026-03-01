import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_certificate_args.dart';
import 'managed_certificate_state.dart';

/// This certificate can be used to secure custom domains on App Services (Windows and Linux) hosted on an App Service Plan of Basic and above (free and shared tiers are not supported).
///
/// > **Note:** A certificate is valid for six months, and about a month before the certificate’s expiration date, App Services renews/rotates the certificate. This is managed by Azure and doesn't require this resource to be changed or reprovisioned. It will change the `thumbprint` computed attribute the next time the resource is refreshed after rotation occurs, so keep that in mind if you have any dependencies on this attribute directly.
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
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const example = azure.dns.getZoneOutput({
///     name: "mydomain.com",
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const examplePlan = new azure.appservice.Plan("example", {
///     name: "example-plan",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     kind: "Linux",
///     reserved: true,
///     sku: {
///         tier: "Basic",
///         size: "B1",
///     },
/// });
/// const exampleAppService = new azure.appservice.AppService("example", {
///     name: "example-app",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     appServicePlanId: examplePlan.id,
/// });
/// const exampleTxtRecord = new azure.dns.TxtRecord("example", {
///     name: "asuid.mycustomhost.contoso.com",
///     zoneName: example.apply(example => example.name),
///     resourceGroupName: example.apply(example => example.resourceGroupName),
///     ttl: 300,
///     records: [{
///         value: exampleAppService.customDomainVerificationId,
///     }],
/// });
/// const exampleCNameRecord = new azure.dns.CNameRecord("example", {
///     name: "example-adcr",
///     zoneName: example.apply(example => example.name),
///     resourceGroupName: example.apply(example => example.resourceGroupName),
///     ttl: 300,
///     record: exampleAppService.defaultSiteHostname,
/// });
/// const exampleCustomHostnameBinding = new azure.appservice.CustomHostnameBinding("example", {
///     hostname: std.joinOutput({
///         separator: ".",
///         input: [
///             exampleCNameRecord.name,
///             exampleCNameRecord.zoneName,
///         ],
///     }).apply(invoke => invoke.result),
///     appServiceName: exampleAppService.name,
///     resourceGroupName: exampleResourceGroup.name,
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
///     name="example-resources",
///     location="West Europe")
/// example = azure.dns.get_zone_output(name="mydomain.com",
///     resource_group_name=example_resource_group.name)
/// example_plan = azure.appservice.Plan("example",
///     name="example-plan",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     kind="Linux",
///     reserved=True,
///     sku={
///         "tier": "Basic",
///         "size": "B1",
///     })
/// example_app_service = azure.appservice.AppService("example",
///     name="example-app",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     app_service_plan_id=example_plan.id)
/// example_txt_record = azure.dns.TxtRecord("example",
///     name="asuid.mycustomhost.contoso.com",
///     zone_name=example.name,
///     resource_group_name=example.resource_group_name,
///     ttl=300,
///     records=[{
///         "value": example_app_service.custom_domain_verification_id,
///     }])
/// example_c_name_record = azure.dns.CNameRecord("example",
///     name="example-adcr",
///     zone_name=example.name,
///     resource_group_name=example.resource_group_name,
///     ttl=300,
///     record=example_app_service.default_site_hostname)
/// example_custom_hostname_binding = azure.appservice.CustomHostnameBinding("example",
///     hostname=std.join_output(separator=".",
///         input=[
///             example_c_name_record.name,
///             example_c_name_record.zone_name,
///         ]).apply(lambda invoke: invoke.result),
///     app_service_name=example_app_service.name,
///     resource_group_name=example_resource_group.name)
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var example = Azure.Dns.GetZone.Invoke(new()
///     {
///         Name = "mydomain.com",
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var examplePlan = new Azure.AppService.Plan("example", new()
///     {
///         Name = "example-plan",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         Kind = "Linux",
///         Reserved = true,
///         Sku = new Azure.AppService.Inputs.PlanSkuArgs
///         {
///             Tier = "Basic",
///             Size = "B1",
///         },
///     });
///
///     var exampleAppService = new Azure.AppService.AppService("example", new()
///     {
///         Name = "example-app",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         AppServicePlanId = examplePlan.Id,
///     });
///
///     var exampleTxtRecord = new Azure.Dns.TxtRecord("example", new()
///     {
///         Name = "asuid.mycustomhost.contoso.com",
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
///     var exampleCNameRecord = new Azure.Dns.CNameRecord("example", new()
///     {
///         Name = "example-adcr",
///         ZoneName = example.Apply(getZoneResult => getZoneResult.Name),
///         ResourceGroupName = example.Apply(getZoneResult => getZoneResult.ResourceGroupName),
///         Ttl = 300,
///         Record = exampleAppService.DefaultSiteHostname,
///     });
///
///     var exampleCustomHostnameBinding = new Azure.AppService.CustomHostnameBinding("example", new()
///     {
///         Hostname = Std.Join.Invoke(new()
///         {
///             Separator = ".",
///             Input = new[]
///             {
///                 exampleCNameRecord.Name,
///                 exampleCNameRecord.ZoneName,
///             },
///         }).Apply(invoke => invoke.Result),
///         AppServiceName = exampleAppService.Name,
///         ResourceGroupName = exampleResourceGroup.Name,
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
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := dns.LookupZoneOutput(ctx, dns.GetZoneOutputArgs{
/// 			Name:              pulumi.String("mydomain.com"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		}, nil)
/// 		examplePlan, err := appservice.NewPlan(ctx, "example", &appservice.PlanArgs{
/// 			Name:              pulumi.String("example-plan"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Kind:              pulumi.Any("Linux"),
/// 			Reserved:          pulumi.Bool(true),
/// 			Sku: &appservice.PlanSkuArgs{
/// 				Tier: pulumi.String("Basic"),
/// 				Size: pulumi.String("B1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAppService, err := appservice.NewAppService(ctx, "example", &appservice.AppServiceArgs{
/// 			Name:              pulumi.String("example-app"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			AppServicePlanId:  examplePlan.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewTxtRecord(ctx, "example", &dns.TxtRecordArgs{
/// 			Name: pulumi.String("asuid.mycustomhost.contoso.com"),
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
/// 		exampleCNameRecord, err := dns.NewCNameRecord(ctx, "example", &dns.CNameRecordArgs{
/// 			Name: pulumi.String("example-adcr"),
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
/// 		exampleCustomHostnameBinding, err := appservice.NewCustomHostnameBinding(ctx, "example", &appservice.CustomHostnameBindingArgs{
/// 			Hostname: pulumi.String(std.JoinOutput(ctx, std.JoinOutputArgs{
/// 				Separator: pulumi.String("."),
/// 				Input: pulumi.StringArray{
/// 					exampleCNameRecord.Name,
/// 					exampleCNameRecord.ZoneName,
/// 				},
/// 			}, nil).ApplyT(func(invoke std.JoinResult) (*string, error) {
/// 				return invoke.Result, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			AppServiceName:    exampleAppService.Name,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		})
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
/// import com.pulumi.azure.dns.DnsFunctions;
/// import com.pulumi.azure.dns.inputs.GetZoneArgs;
/// import com.pulumi.azure.appservice.Plan;
/// import com.pulumi.azure.appservice.PlanArgs;
/// import com.pulumi.azure.appservice.inputs.PlanSkuArgs;
/// import com.pulumi.azure.appservice.AppService;
/// import com.pulumi.azure.appservice.AppServiceArgs;
/// import com.pulumi.azure.dns.TxtRecord;
/// import com.pulumi.azure.dns.TxtRecordArgs;
/// import com.pulumi.azure.dns.inputs.TxtRecordRecordArgs;
/// import com.pulumi.azure.dns.CNameRecord;
/// import com.pulumi.azure.dns.CNameRecordArgs;
/// import com.pulumi.azure.appservice.CustomHostnameBinding;
/// import com.pulumi.azure.appservice.CustomHostnameBindingArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
/// import com.pulumi.azure.appservice.ManagedCertificate;
/// import com.pulumi.azure.appservice.ManagedCertificateArgs;
/// import com.pulumi.azure.appservice.CertificateBinding;
/// import com.pulumi.azure.appservice.CertificateBindingArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         final var example = DnsFunctions.getZone(GetZoneArgs.builder()
///             .name("mydomain.com")
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var examplePlan = new Plan("examplePlan", PlanArgs.builder()
///             .name("example-plan")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .kind("Linux")
///             .reserved(true)
///             .sku(PlanSkuArgs.builder()
///                 .tier("Basic")
///                 .size("B1")
///                 .build())
///             .build());
///
///         var exampleAppService = new AppService("exampleAppService", AppServiceArgs.builder()
///             .name("example-app")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .appServicePlanId(examplePlan.id())
///             .build());
///
///         var exampleTxtRecord = new TxtRecord("exampleTxtRecord", TxtRecordArgs.builder()
///             .name("asuid.mycustomhost.contoso.com")
///             .zoneName(example.applyValue(_example -> _example.name()))
///             .resourceGroupName(example.applyValue(_example -> _example.resourceGroupName()))
///             .ttl(300)
///             .records(TxtRecordRecordArgs.builder()
///                 .value(exampleAppService.customDomainVerificationId())
///                 .build())
///             .build());
///
///         var exampleCNameRecord = new CNameRecord("exampleCNameRecord", CNameRecordArgs.builder()
///             .name("example-adcr")
///             .zoneName(example.applyValue(_example -> _example.name()))
///             .resourceGroupName(example.applyValue(_example -> _example.resourceGroupName()))
///             .ttl(300)
///             .record(exampleAppService.defaultSiteHostname())
///             .build());
///
///         var exampleCustomHostnameBinding = new CustomHostnameBinding("exampleCustomHostnameBinding", CustomHostnameBindingArgs.builder()
///             .hostname(StdFunctions.join(JoinArgs.builder()
///                 .separator(".")
///                 .input(
///                     exampleCNameRecord.name(),
///                     exampleCNameRecord.zoneName())
///                 .build()).applyValue(_invoke -> _invoke.result()))
///             .appServiceName(exampleAppService.name())
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
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
///       name: example-resources
///       location: West Europe
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///     properties:
///       name: example-plan
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       kind: Linux
///       reserved: true
///       sku:
///         tier: Basic
///         size: B1
///   exampleAppService:
///     type: azure:appservice:AppService
///     name: example
///     properties:
///       name: example-app
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       appServicePlanId: ${examplePlan.id}
///   exampleTxtRecord:
///     type: azure:dns:TxtRecord
///     name: example
///     properties:
///       name: asuid.mycustomhost.contoso.com
///       zoneName: ${example.name}
///       resourceGroupName: ${example.resourceGroupName}
///       ttl: 300
///       records:
///         - value: ${exampleAppService.customDomainVerificationId}
///   exampleCNameRecord:
///     type: azure:dns:CNameRecord
///     name: example
///     properties:
///       name: example-adcr
///       zoneName: ${example.name}
///       resourceGroupName: ${example.resourceGroupName}
///       ttl: 300
///       record: ${exampleAppService.defaultSiteHostname}
///   exampleCustomHostnameBinding:
///     type: azure:appservice:CustomHostnameBinding
///     name: example
///     properties:
///       hostname:
///         fn::invoke:
///           function: std:join
///           arguments:
///             separator: .
///             input:
///               - ${exampleCNameRecord.name}
///               - ${exampleCNameRecord.zoneName}
///           return: result
///       appServiceName: ${exampleAppService.name}
///       resourceGroupName: ${exampleResourceGroup.name}
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
///         name: mydomain.com
///         resourceGroupName: ${exampleResourceGroup.name}
/// ```
///
///
/// ## Import
///
/// App Service Managed Certificates can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/managedCertificate:ManagedCertificate example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.Web/certificates/customhost.contoso.com
/// ```
class ManagedCertificate extends pulumi.CustomResource {
  /// The Canonical Name of the Certificate.
  late final pulumi.Output<String> canonicalName;
  /// The ID of the App Service Custom Hostname Binding for the Certificate. Changing this forces a new App Service Managed Certificate to be created.
  late final pulumi.Output<String> customHostnameBindingId;
  /// The expiration date of the Certificate.
  late final pulumi.Output<String> expirationDate;
  /// The friendly name of the Certificate.
  late final pulumi.Output<String> friendlyName;
  /// The list of Host Names for the Certificate.
  late final pulumi.Output<List<String>> hostNames;
  /// The Start date for the Certificate.
  late final pulumi.Output<String> issueDate;
  /// The issuer of the Certificate.
  late final pulumi.Output<String> issuer;
  /// The Subject Name for the Certificate.
  late final pulumi.Output<String> subjectName;
  /// A mapping of tags which should be assigned to the App Service Managed Certificate.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The Certificate Thumbprint.
  late final pulumi.Output<String> thumbprint;

  /// Creates a new [ManagedCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedCertificate]. {@macro pulumi_appservice_managed_certificate_managed_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedCertificate(
    String name, {
    ManagedCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/managedCertificate:ManagedCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.canonicalName = registerOutput<String>('canonicalName');
    this.customHostnameBindingId = registerOutput<String>('customHostnameBindingId');
    this.expirationDate = registerOutput<String>('expirationDate');
    this.friendlyName = registerOutput<String>('friendlyName');
    this.hostNames = registerOutput<List<String>>('hostNames');
    this.issueDate = registerOutput<String>('issueDate');
    this.issuer = registerOutput<String>('issuer');
    this.subjectName = registerOutput<String>('subjectName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.thumbprint = registerOutput<String>('thumbprint');
  }

  /// Gets an existing [ManagedCertificate] resource's state with the given [name] and [id].
  static ManagedCertificate get(
    String name,
    pulumi.Input<String> id, {
    ManagedCertificateState? state,
  }) {
    return ManagedCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/managedCertificate:ManagedCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.canonicalName = registerOutput<String>('canonicalName');
    this.customHostnameBindingId = registerOutput<String>('customHostnameBindingId');
    this.expirationDate = registerOutput<String>('expirationDate');
    this.friendlyName = registerOutput<String>('friendlyName');
    this.hostNames = registerOutput<List<String>>('hostNames');
    this.issueDate = registerOutput<String>('issueDate');
    this.issuer = registerOutput<String>('issuer');
    this.subjectName = registerOutput<String>('subjectName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.thumbprint = registerOutput<String>('thumbprint');
  }
}
