import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_site_custom_domain_args.dart';
import 'static_site_custom_domain_state.dart';

/// Manages a Static Site Custom Domain.
///
/// !&gt; **Note:** DNS validation polling is only done for CNAME records, terraform will not validate TXT validation records are complete.
///
/// &gt; **Note:** The `azure.appservice.StaticSiteCustomDomain` resource is deprecated in favour of `azure.appservice.StaticWebAppCustomDomain` and will be removed in a future major release.
///
/// ## Example Usage
///
/// ### CNAME validation
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
/// const exampleStaticSite = new azure.appservice.StaticSite("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleCNameRecord = new azure.dns.CNameRecord("example", {
///     name: "my-domain",
///     zoneName: "contoso.com",
///     resourceGroupName: example.name,
///     ttl: 300,
///     record: exampleStaticSite.defaultHostName,
/// });
/// const exampleStaticSiteCustomDomain = new azure.appservice.StaticSiteCustomDomain("example", {
///     staticSiteId: exampleStaticSite.id,
///     domainName: pulumi.interpolate`${exampleCNameRecord.name}.${exampleCNameRecord.zoneName}`,
///     validationType: "cname-delegation",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_static_site = azure.appservice.StaticSite("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location)
/// example_c_name_record = azure.dns.CNameRecord("example",
///     name="my-domain",
///     zone_name="contoso.com",
///     resource_group_name=example.name,
///     ttl=300,
///     record=example_static_site.default_host_name)
/// example_static_site_custom_domain = azure.appservice.StaticSiteCustomDomain("example",
///     static_site_id=example_static_site.id,
///     domain_name=pulumi.Output.all(
///         name=example_c_name_record.name,
///         zone_name=example_c_name_record.zone_name
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['name']}.{resolved_outputs['zone_name']}")
/// ,
///     validation_type="cname-delegation")
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
///     var exampleStaticSite = new Azure.AppService.StaticSite("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleCNameRecord = new Azure.Dns.CNameRecord("example", new()
///     {
///         Name = "my-domain",
///         ZoneName = "contoso.com",
///         ResourceGroupName = example.Name,
///         Ttl = 300,
///         Record = exampleStaticSite.DefaultHostName,
///     });
///
///     var exampleStaticSiteCustomDomain = new Azure.AppService.StaticSiteCustomDomain("example", new()
///     {
///         StaticSiteId = exampleStaticSite.Id,
///         DomainName = Output.Tuple(exampleCNameRecord.Name, exampleCNameRecord.ZoneName).Apply(values =>
///         {
///             var name = values.Item1;
///             var zoneName = values.Item2;
///             return $"{name}.{zoneName}";
///         }),
///         ValidationType = "cname-delegation",
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
/// 		exampleStaticSite, err := appservice.NewStaticSite(ctx, "example", &appservice.StaticSiteArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCNameRecord, err := dns.NewCNameRecord(ctx, "example", &dns.CNameRecordArgs{
/// 			Name:              pulumi.String("my-domain"),
/// 			ZoneName:          pulumi.String("contoso.com"),
/// 			ResourceGroupName: example.Name,
/// 			Ttl:               pulumi.Int(300),
/// 			Record:            exampleStaticSite.DefaultHostName,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewStaticSiteCustomDomain(ctx, "example", &appservice.StaticSiteCustomDomainArgs{
/// 			StaticSiteId: exampleStaticSite.ID(),
/// 			DomainName: pulumi.All(exampleCNameRecord.Name, exampleCNameRecord.ZoneName).ApplyT(func(_args []interface{}) (string, error) {
/// 				name := _args[0].(string)
/// 				zoneName := _args[1].(string)
/// 				return fmt.Sprintf("%v.%v", name, zoneName), nil
/// 			}).(pulumi.StringOutput),
/// 			ValidationType: pulumi.String("cname-delegation"),
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
/// import com.pulumi.azure.appservice.StaticSite;
/// import com.pulumi.azure.appservice.StaticSiteArgs;
/// import com.pulumi.azure.dns.CNameRecord;
/// import com.pulumi.azure.dns.CNameRecordArgs;
/// import com.pulumi.azure.appservice.StaticSiteCustomDomain;
/// import com.pulumi.azure.appservice.StaticSiteCustomDomainArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleStaticSite = new StaticSite("exampleStaticSite", StaticSiteArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleCNameRecord = new CNameRecord("exampleCNameRecord", CNameRecordArgs.builder()
///             .name("my-domain")
///             .zoneName("contoso.com")
///             .resourceGroupName(example.name())
///             .ttl(300)
///             .record(exampleStaticSite.defaultHostName())
///             .build());
///
///         var exampleStaticSiteCustomDomain = new StaticSiteCustomDomain("exampleStaticSiteCustomDomain", StaticSiteCustomDomainArgs.builder()
///             .staticSiteId(exampleStaticSite.id())
///             .domainName(Output.tuple(exampleCNameRecord.name(), exampleCNameRecord.zoneName()).applyValue(values -> {
///                 var name = values.t1;
///                 var zoneName = values.t2;
///                 return String.format("%s.%s", name,zoneName);
///             }))
///             .validationType("cname-delegation")
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
///   exampleStaticSite:
///     type: azure:appservice:StaticSite
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleCNameRecord:
///     type: azure:dns:CNameRecord
///     name: example
///     properties:
///       name: my-domain
///       zoneName: contoso.com
///       resourceGroupName: ${example.name}
///       ttl: 300
///       record: ${exampleStaticSite.defaultHostName}
///   exampleStaticSiteCustomDomain:
///     type: azure:appservice:StaticSiteCustomDomain
///     name: example
///     properties:
///       staticSiteId: ${exampleStaticSite.id}
///       domainName: ${exampleCNameRecord.name}.${exampleCNameRecord.zoneName}
///       validationType: cname-delegation
/// ```
///
///
/// ### TXT validation
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
/// const exampleStaticSite = new azure.appservice.StaticSite("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleStaticSiteCustomDomain = new azure.appservice.StaticSiteCustomDomain("example", {
///     staticSiteId: exampleStaticSite.id,
///     domainName: "my-domain.contoso.com",
///     validationType: "dns-txt-token",
/// });
/// const exampleTxtRecord = new azure.dns.TxtRecord("example", {
///     name: "_dnsauth.my-domain",
///     zoneName: "contoso.com",
///     resourceGroupName: example.name,
///     ttl: 300,
///     records: [{
///         value: exampleStaticSiteCustomDomain.validationToken,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_static_site = azure.appservice.StaticSite("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location)
/// example_static_site_custom_domain = azure.appservice.StaticSiteCustomDomain("example",
///     static_site_id=example_static_site.id,
///     domain_name="my-domain.contoso.com",
///     validation_type="dns-txt-token")
/// example_txt_record = azure.dns.TxtRecord("example",
///     name="_dnsauth.my-domain",
///     zone_name="contoso.com",
///     resource_group_name=example.name,
///     ttl=300,
///     records=[{
///         "value": example_static_site_custom_domain.validation_token,
///     }])
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
///     var exampleStaticSite = new Azure.AppService.StaticSite("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleStaticSiteCustomDomain = new Azure.AppService.StaticSiteCustomDomain("example", new()
///     {
///         StaticSiteId = exampleStaticSite.Id,
///         DomainName = "my-domain.contoso.com",
///         ValidationType = "dns-txt-token",
///     });
///
///     var exampleTxtRecord = new Azure.Dns.TxtRecord("example", new()
///     {
///         Name = "_dnsauth.my-domain",
///         ZoneName = "contoso.com",
///         ResourceGroupName = example.Name,
///         Ttl = 300,
///         Records = new[]
///         {
///             new Azure.Dns.Inputs.TxtRecordRecordArgs
///             {
///                 Value = exampleStaticSiteCustomDomain.ValidationToken,
///             },
///         },
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
/// 		exampleStaticSite, err := appservice.NewStaticSite(ctx, "example", &appservice.StaticSiteArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleStaticSiteCustomDomain, err := appservice.NewStaticSiteCustomDomain(ctx, "example", &appservice.StaticSiteCustomDomainArgs{
/// 			StaticSiteId:   exampleStaticSite.ID(),
/// 			DomainName:     pulumi.String("my-domain.contoso.com"),
/// 			ValidationType: pulumi.String("dns-txt-token"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewTxtRecord(ctx, "example", &dns.TxtRecordArgs{
/// 			Name:              pulumi.String("_dnsauth.my-domain"),
/// 			ZoneName:          pulumi.String("contoso.com"),
/// 			ResourceGroupName: example.Name,
/// 			Ttl:               pulumi.Int(300),
/// 			Records: dns.TxtRecordRecordArray{
/// 				&dns.TxtRecordRecordArgs{
/// 					Value: exampleStaticSiteCustomDomain.ValidationToken,
/// 				},
/// 			},
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
/// import com.pulumi.azure.appservice.StaticSite;
/// import com.pulumi.azure.appservice.StaticSiteArgs;
/// import com.pulumi.azure.appservice.StaticSiteCustomDomain;
/// import com.pulumi.azure.appservice.StaticSiteCustomDomainArgs;
/// import com.pulumi.azure.dns.TxtRecord;
/// import com.pulumi.azure.dns.TxtRecordArgs;
/// import com.pulumi.azure.dns.inputs.TxtRecordRecordArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleStaticSite = new StaticSite("exampleStaticSite", StaticSiteArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleStaticSiteCustomDomain = new StaticSiteCustomDomain("exampleStaticSiteCustomDomain", StaticSiteCustomDomainArgs.builder()
///             .staticSiteId(exampleStaticSite.id())
///             .domainName("my-domain.contoso.com")
///             .validationType("dns-txt-token")
///             .build());
///
///         var exampleTxtRecord = new TxtRecord("exampleTxtRecord", TxtRecordArgs.builder()
///             .name("_dnsauth.my-domain")
///             .zoneName("contoso.com")
///             .resourceGroupName(example.name())
///             .ttl(300)
///             .records(TxtRecordRecordArgs.builder()
///                 .value(exampleStaticSiteCustomDomain.validationToken())
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
///   exampleStaticSite:
///     type: azure:appservice:StaticSite
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleStaticSiteCustomDomain:
///     type: azure:appservice:StaticSiteCustomDomain
///     name: example
///     properties:
///       staticSiteId: ${exampleStaticSite.id}
///       domainName: my-domain.contoso.com
///       validationType: dns-txt-token
///   exampleTxtRecord:
///     type: azure:dns:TxtRecord
///     name: example
///     properties:
///       name: _dnsauth.my-domain
///       zoneName: contoso.com
///       resourceGroupName: ${example.name}
///       ttl: 300
///       records:
///         - value: ${exampleStaticSiteCustomDomain.validationToken}
/// ```
///
///
/// ## Import
///
/// Static Site Custom Domains can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/staticSiteCustomDomain:StaticSiteCustomDomain example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.Web/staticSites/my-static-site1/customDomains/name.contoso.com
/// ```
class StaticSiteCustomDomain extends pulumi.CustomResource {
  /// The Domain Name which should be associated with this Static Site. Changing this forces a new Static Site Custom Domain to be created.
  late final pulumi.Output<String> domainName;

  /// The ID of the Static Site. Changing this forces a new Static Site Custom Domain to be created.
  late final pulumi.Output<String> staticSiteId;

  /// Token to be used with `dns-txt-token` validation.
  late final pulumi.Output<String> validationToken;

  /// One of `cname-delegation` or `dns-txt-token`. Changing this forces a new Static Site Custom Domain to be created.
  late final pulumi.Output<String?> validationType;

  /// Creates a new [StaticSiteCustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StaticSiteCustomDomain]. {@macro pulumi_appservice_static_site_custom_domain_static_site_custom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StaticSiteCustomDomain(
    String name, {
    StaticSiteCustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appservice/staticSiteCustomDomain:StaticSiteCustomDomain',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    domainName = registerOutput<String>('domainName');
    staticSiteId = registerOutput<String>('staticSiteId');
    validationToken = registerOutput<String>('validationToken');
    validationType = registerOutput<String?>('validationType');
  }

  /// Gets an existing [StaticSiteCustomDomain] resource's state with the given [name] and [id].
  static StaticSiteCustomDomain get(
    String name,
    pulumi.Input<String> id, {
    StaticSiteCustomDomainState? state,
  }) {
    return StaticSiteCustomDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StaticSiteCustomDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appservice/staticSiteCustomDomain:StaticSiteCustomDomain',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    domainName = registerOutput<String>('domainName');
    staticSiteId = registerOutput<String>('staticSiteId');
    validationToken = registerOutput<String>('validationToken');
    validationType = registerOutput<String?>('validationType');
  }
}
