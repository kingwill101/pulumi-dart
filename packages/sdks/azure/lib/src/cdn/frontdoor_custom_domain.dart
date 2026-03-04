import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_custom_domain_args.dart';
import 'frontdoor_custom_domain_state.dart';
import 'frontdoor_custom_domain_tls.dart';

/// Manages a Front Door (standard/premium) Custom Domain.
///
/// !&gt; **Note:** If you are using Terraform to manage your DNS Auth and DNS CNAME records for your Custom Domain you will need to add configuration blocks for both the `azure.dns.TxtRecord`(see the `Example DNS Auth TXT Record Usage` below) and the `azure.dns.CNameRecord`(see the `Example CNAME Record Usage` below) to your configuration file.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-cdn-frontdoor",
///     location: "West Europe",
/// });
/// const exampleZone = new azure.dns.Zone("example", {
///     name: "sub-domain.domain.com",
///     resourceGroupName: example.name,
/// });
/// const exampleFrontdoorProfile = new azure.cdn.FrontdoorProfile("example", {
///     name: "example-profile",
///     resourceGroupName: example.name,
///     skuName: "Standard_AzureFrontDoor",
/// });
/// const exampleFrontdoorCustomDomain = new azure.cdn.FrontdoorCustomDomain("example", {
///     name: "example-customDomain",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
///     dnsZoneId: exampleZone.id,
///     hostName: "contoso.fabrikam.com",
///     tls: {
///         certificateType: "ManagedCertificate",
///         minimumTlsVersion: "TLS12",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-cdn-frontdoor",
///     location="West Europe")
/// example_zone = azure.dns.Zone("example",
///     name="sub-domain.domain.com",
///     resource_group_name=example.name)
/// example_frontdoor_profile = azure.cdn.FrontdoorProfile("example",
///     name="example-profile",
///     resource_group_name=example.name,
///     sku_name="Standard_AzureFrontDoor")
/// example_frontdoor_custom_domain = azure.cdn.FrontdoorCustomDomain("example",
///     name="example-customDomain",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id,
///     dns_zone_id=example_zone.id,
///     host_name="contoso.fabrikam.com",
///     tls={
///         "certificate_type": "ManagedCertificate",
///         "minimum_tls_version": "TLS12",
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
///         Name = "example-cdn-frontdoor",
///         Location = "West Europe",
///     });
///
///     var exampleZone = new Azure.Dns.Zone("example", new()
///     {
///         Name = "sub-domain.domain.com",
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleFrontdoorProfile = new Azure.Cdn.FrontdoorProfile("example", new()
///     {
///         Name = "example-profile",
///         ResourceGroupName = example.Name,
///         SkuName = "Standard_AzureFrontDoor",
///     });
///
///     var exampleFrontdoorCustomDomain = new Azure.Cdn.FrontdoorCustomDomain("example", new()
///     {
///         Name = "example-customDomain",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///         DnsZoneId = exampleZone.Id,
///         HostName = "contoso.fabrikam.com",
///         Tls = new Azure.Cdn.Inputs.FrontdoorCustomDomainTlsArgs
///         {
///             CertificateType = "ManagedCertificate",
///             MinimumTlsVersion = "TLS12",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-cdn-frontdoor"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleZone, err := dns.NewZone(ctx, "example", &dns.ZoneArgs{
/// 			Name:              pulumi.String("sub-domain.domain.com"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorProfile, err := cdn.NewFrontdoorProfile(ctx, "example", &cdn.FrontdoorProfileArgs{
/// 			Name:              pulumi.String("example-profile"),
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Standard_AzureFrontDoor"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewFrontdoorCustomDomain(ctx, "example", &cdn.FrontdoorCustomDomainArgs{
/// 			Name:                  pulumi.String("example-customDomain"),
/// 			CdnFrontdoorProfileId: exampleFrontdoorProfile.ID(),
/// 			DnsZoneId:             exampleZone.ID(),
/// 			HostName:              pulumi.String("contoso.fabrikam.com"),
/// 			Tls: &cdn.FrontdoorCustomDomainTlsArgs{
/// 				CertificateType:   pulumi.String("ManagedCertificate"),
/// 				MinimumTlsVersion: pulumi.String("TLS12"),
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
/// import com.pulumi.azure.dns.Zone;
/// import com.pulumi.azure.dns.ZoneArgs;
/// import com.pulumi.azure.cdn.FrontdoorProfile;
/// import com.pulumi.azure.cdn.FrontdoorProfileArgs;
/// import com.pulumi.azure.cdn.FrontdoorCustomDomain;
/// import com.pulumi.azure.cdn.FrontdoorCustomDomainArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorCustomDomainTlsArgs;
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
///             .name("example-cdn-frontdoor")
///             .location("West Europe")
///             .build());
///
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .name("sub-domain.domain.com")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleFrontdoorProfile = new FrontdoorProfile("exampleFrontdoorProfile", FrontdoorProfileArgs.builder()
///             .name("example-profile")
///             .resourceGroupName(example.name())
///             .skuName("Standard_AzureFrontDoor")
///             .build());
///
///         var exampleFrontdoorCustomDomain = new FrontdoorCustomDomain("exampleFrontdoorCustomDomain", FrontdoorCustomDomainArgs.builder()
///             .name("example-customDomain")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .dnsZoneId(exampleZone.id())
///             .hostName("contoso.fabrikam.com")
///             .tls(FrontdoorCustomDomainTlsArgs.builder()
///                 .certificateType("ManagedCertificate")
///                 .minimumTlsVersion("TLS12")
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
///       name: example-cdn-frontdoor
///       location: West Europe
///   exampleZone:
///     type: azure:dns:Zone
///     name: example
///     properties:
///       name: sub-domain.domain.com
///       resourceGroupName: ${example.name}
///   exampleFrontdoorProfile:
///     type: azure:cdn:FrontdoorProfile
///     name: example
///     properties:
///       name: example-profile
///       resourceGroupName: ${example.name}
///       skuName: Standard_AzureFrontDoor
///   exampleFrontdoorCustomDomain:
///     type: azure:cdn:FrontdoorCustomDomain
///     name: example
///     properties:
///       name: example-customDomain
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///       dnsZoneId: ${exampleZone.id}
///       hostName: contoso.fabrikam.com
///       tls:
///         certificateType: ManagedCertificate
///         minimumTlsVersion: TLS12
/// ```
///
///
/// ## Example DNS Auth TXT Record Usage
///
/// The name of your DNS TXT record should be in the format of `_dnsauth.&lt;your_subdomain&gt;`. So, for example, if we use the `host_name` in the example usage above you would create a DNS TXT record with the name of `_dnsauth.contoso` which contains the value of the Front Door Custom Domains `validation_token` field. See the [product documentation](https://learn.microsoft.com/azure/frontdoor/standard-premium/how-to-add-custom-domain) for more information.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.dns.TxtRecord("example", {
///     name: std.join({
///         separator: ".",
///         input: [
///             "_dnsauth",
///             "contoso",
///         ],
///     }).then(invoke => invoke.result),
///     zoneName: exampleAzurermDnsZone.name,
///     resourceGroupName: exampleAzurermResourceGroup.name,
///     ttl: 3600,
///     records: [{
///         value: exampleAzurermCdnFrontdoorCustomDomain.validationToken,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.dns.TxtRecord("example",
///     name=std.join(separator=".",
///         input=[
///             "_dnsauth",
///             "contoso",
///         ]).result,
///     zone_name=example_azurerm_dns_zone["name"],
///     resource_group_name=example_azurerm_resource_group["name"],
///     ttl=3600,
///     records=[{
///         "value": example_azurerm_cdn_frontdoor_custom_domain["validationToken"],
///     }])
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
///     var example = new Azure.Dns.TxtRecord("example", new()
///     {
///         Name = Std.Join.Invoke(new()
///         {
///             Separator = ".",
///             Input = new[]
///             {
///                 "_dnsauth",
///                 "contoso",
///             },
///         }).Apply(invoke => invoke.Result),
///         ZoneName = exampleAzurermDnsZone.Name,
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///         Ttl = 3600,
///         Records = new[]
///         {
///             new Azure.Dns.Inputs.TxtRecordRecordArgs
///             {
///                 Value = exampleAzurermCdnFrontdoorCustomDomain.ValidationToken,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeJoin, err := std.Join(ctx, &std.JoinArgs{
/// 			Separator: ".",
/// 			Input: []string{
/// 				"_dnsauth",
/// 				"contoso",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewTxtRecord(ctx, "example", &dns.TxtRecordArgs{
/// 			Name:              pulumi.String(invokeJoin.Result),
/// 			ZoneName:          pulumi.Any(exampleAzurermDnsZone.Name),
/// 			ResourceGroupName: pulumi.Any(exampleAzurermResourceGroup.Name),
/// 			Ttl:               pulumi.Int(3600),
/// 			Records: dns.TxtRecordRecordArray{
/// 				&dns.TxtRecordRecordArgs{
/// 					Value: pulumi.Any(exampleAzurermCdnFrontdoorCustomDomain.ValidationToken),
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
/// import com.pulumi.azure.dns.TxtRecord;
/// import com.pulumi.azure.dns.TxtRecordArgs;
/// import com.pulumi.azure.dns.inputs.TxtRecordRecordArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
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
///         var example = new TxtRecord("example", TxtRecordArgs.builder()
///             .name(StdFunctions.join(JoinArgs.builder()
///                 .separator(".")
///                 .input(
///                     "_dnsauth",
///                     "contoso")
///                 .build()).result())
///             .zoneName(exampleAzurermDnsZone.name())
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .ttl(3600)
///             .records(TxtRecordRecordArgs.builder()
///                 .value(exampleAzurermCdnFrontdoorCustomDomain.validationToken())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:dns:TxtRecord
///     properties:
///       name:
///         fn::invoke:
///           function: std:join
///           arguments:
///             separator: .
///             input:
///               - _dnsauth
///               - contoso
///           return: result
///       zoneName: ${exampleAzurermDnsZone.name}
///       resourceGroupName: ${exampleAzurermResourceGroup.name}
///       ttl: 3600
///       records:
///         - value: ${exampleAzurermCdnFrontdoorCustomDomain.validationToken}
/// ```
///
///
/// ## Example CNAME Record Usage
///
/// !&gt; **Note:** You **must** include the `depends_on` meta-argument which references both the `azure.cdn.FrontdoorRoute` and the `azure.cdn.FrontdoorSecurityPolicy` that are associated with your Custom Domain. The reason for these `depends_on` meta-arguments is because all of the resources for the Custom Domain need to be associated within Front Door before the CNAME record can be written to the domains DNS, else the CNAME validation will fail and Front Door will not enable traffic to the Domain.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.dns.CNameRecord("example", {
///     name: "contoso",
///     zoneName: exampleAzurermDnsZone.name,
///     resourceGroupName: exampleAzurermResourceGroup.name,
///     ttl: 3600,
///     record: exampleAzurermCdnFrontdoorEndpoint.hostName,
/// }, {
///     dependsOn: [
///         exampleAzurermCdnFrontdoorRoute,
///         exampleAzurermCdnFrontdoorSecurityPolicy,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.dns.CNameRecord("example",
///     name="contoso",
///     zone_name=example_azurerm_dns_zone["name"],
///     resource_group_name=example_azurerm_resource_group["name"],
///     ttl=3600,
///     record=example_azurerm_cdn_frontdoor_endpoint["hostName"],
///     opts = pulumi.ResourceOptions(depends_on=[
///             example_azurerm_cdn_frontdoor_route,
///             example_azurerm_cdn_frontdoor_security_policy,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Dns.CNameRecord("example", new()
///     {
///         Name = "contoso",
///         ZoneName = exampleAzurermDnsZone.Name,
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///         Ttl = 3600,
///         Record = exampleAzurermCdnFrontdoorEndpoint.HostName,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAzurermCdnFrontdoorRoute,
///             exampleAzurermCdnFrontdoorSecurityPolicy,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewCNameRecord(ctx, "example", &dns.CNameRecordArgs{
/// 			Name:              pulumi.String("contoso"),
/// 			ZoneName:          pulumi.Any(exampleAzurermDnsZone.Name),
/// 			ResourceGroupName: pulumi.Any(exampleAzurermResourceGroup.Name),
/// 			Ttl:               pulumi.Int(3600),
/// 			Record:            pulumi.Any(exampleAzurermCdnFrontdoorEndpoint.HostName),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAzurermCdnFrontdoorRoute,
/// 			exampleAzurermCdnFrontdoorSecurityPolicy,
/// 		}))
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
/// import com.pulumi.azure.dns.CNameRecord;
/// import com.pulumi.azure.dns.CNameRecordArgs;
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
///         var example = new CNameRecord("example", CNameRecordArgs.builder()
///             .name("contoso")
///             .zoneName(exampleAzurermDnsZone.name())
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .ttl(3600)
///             .record(exampleAzurermCdnFrontdoorEndpoint.hostName())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     exampleAzurermCdnFrontdoorRoute,
///                     exampleAzurermCdnFrontdoorSecurityPolicy)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:dns:CNameRecord
///     properties:
///       name: contoso
///       zoneName: ${exampleAzurermDnsZone.name}
///       resourceGroupName: ${exampleAzurermResourceGroup.name}
///       ttl: 3600
///       record: ${exampleAzurermCdnFrontdoorEndpoint.hostName}
///     options:
///       dependsOn:
///         - ${exampleAzurermCdnFrontdoorRoute}
///         - ${exampleAzurermCdnFrontdoorSecurityPolicy}
/// ```
///
///
/// ## Import
///
/// Front Door Custom Domains can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cdn/frontdoorCustomDomain:FrontdoorCustomDomain example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Cdn/profiles/profile1/customDomains/customDomain1
/// ```
class FrontdoorCustomDomain extends pulumi.CustomResource {
  /// The ID of the Front Door Profile. Changing this forces a new Front Door Custom Domain to be created.
  late final pulumi.Output<String> cdnFrontdoorProfileId;

  /// The ID of the Azure DNS Zone which should be used for this Front Door Custom Domain. If you are using Azure to host your [DNS domains](https://learn.microsoft.com/azure/dns/dns-overview), you must delegate the domain provider's domain name system (DNS) to an Azure DNS Zone. For more information, see [Delegate a domain to Azure DNS](https://learn.microsoft.com/azure/dns/dns-delegate-domain-azure-dns). Otherwise, if you're using your own domain provider to handle your DNS, you must validate the Front Door Custom Domain by creating the DNS TXT records manually.
  ///
  /// &lt;!-- * `pre_validated_cdn_frontdoor_custom_domain_id` - (Optional) The resource ID of the pre-validated Front Door Custom Domain. This domain type is used when you wish to onboard a validated Azure service domain, and then configure the Azure service behind an Azure Front Door.
  ///
  /// &gt; **Note:** Currently `pre_validated_cdn_frontdoor_custom_domain_id` only supports domains validated by Static Web App. --&gt;
  late final pulumi.Output<String?> dnsZoneId;

  /// The date time that the token expires.
  late final pulumi.Output<String> expirationDate;

  /// The host name of the domain. The `host_name` field must be the FQDN of your domain(e.g. `contoso.fabrikam.com`). Changing this forces a new Front Door Custom Domain to be created.
  late final pulumi.Output<String> hostName;

  /// The name which should be used for this Front Door Custom Domain. Possible values must be between 2 and 260 characters in length, must begin with a letter or number, end with a letter or number and contain only letters, numbers and hyphens. Changing this forces a new Front Door Custom Domain to be created.
  late final pulumi.Output<String> name;

  /// A `tls` block as defined below.
  late final pulumi.Output<FrontdoorCustomDomainTls> tls;

  /// Challenge used for DNS TXT record or file based validation.
  late final pulumi.Output<String> validationToken;

  /// Creates a new [FrontdoorCustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FrontdoorCustomDomain]. {@macro pulumi_cdn_frontdoor_custom_domain_frontdoor_custom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FrontdoorCustomDomain(
    String name, {
    FrontdoorCustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:cdn/frontdoorCustomDomain:FrontdoorCustomDomain',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cdnFrontdoorProfileId = registerOutput<String>('cdnFrontdoorProfileId');
    dnsZoneId = registerOutput<String?>('dnsZoneId');
    expirationDate = registerOutput<String>('expirationDate');
    hostName = registerOutput<String>('hostName');
    this.name = registerOutput<String>('name');
    tls = registerOutput<FrontdoorCustomDomainTls>('tls');
    validationToken = registerOutput<String>('validationToken');
  }

  /// Gets an existing [FrontdoorCustomDomain] resource's state with the given [name] and [id].
  static FrontdoorCustomDomain get(
    String name,
    pulumi.Input<String> id, {
    FrontdoorCustomDomainState? state,
  }) {
    return FrontdoorCustomDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FrontdoorCustomDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:cdn/frontdoorCustomDomain:FrontdoorCustomDomain',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cdnFrontdoorProfileId = registerOutput<String>('cdnFrontdoorProfileId');
    dnsZoneId = registerOutput<String?>('dnsZoneId');
    expirationDate = registerOutput<String>('expirationDate');
    hostName = registerOutput<String>('hostName');
    this.name = registerOutput<String>('name');
    tls = registerOutput<FrontdoorCustomDomainTls>('tls');
    validationToken = registerOutput<String>('validationToken');
  }
}
