import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_custom_domain_args.dart';
import 'endpoint_custom_domain_cdn_managed_https.dart';
import 'endpoint_custom_domain_state.dart';
import 'endpoint_custom_domain_user_managed_https.dart';

/// Manages a Custom Domain for a CDN (classic) Endpoint.
///
/// !&gt; **Note:** Support for the CDN (classic) `sku` `Standard_Akamai` was deprecated from Azure on `October 31, 2023` and is no longer available.
///
/// !&gt; **Note:** Support for the CDN (classic) `sku` values `Standard_Verizon` and `Premium_Verizon` were deprecated from Azure on `January 15, 2025` and are no longer available.
///
/// !&gt; **Note:** Support for the CDN (classic) `sku` values `Standard_Microsoft` and `Standard_ChinaCdn` will be deprecated from Azure on `October 1, 2025` and will no longer be available, however, modifications to existing CDN (classic) resources will continue to be supported until the API reaches full retirement on `September 30, 2027`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "west europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "example",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     accountTier: "Standard",
///     accountReplicationType: "GRS",
/// });
/// const exampleProfile = new azure.cdn.Profile("example", {
///     name: "example-profile",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     sku: "Standard_Microsoft",
/// });
/// const exampleEndpoint = new azure.cdn.Endpoint("example", {
///     name: "example-endpoint",
///     profileName: exampleProfile.name,
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     origins: [{
///         name: "example",
///         hostName: exampleAccount.primaryBlobHost,
///     }],
/// });
/// const example = azure.dns.getZone({
///     name: "example-domain.com",
///     resourceGroupName: "domain-rg",
/// });
/// const exampleCNameRecord = new azure.dns.CNameRecord("example", {
///     name: "example",
///     zoneName: example.then(example => example.name),
///     resourceGroupName: example.then(example => example.resourceGroupName),
///     ttl: 3600,
///     targetResourceId: exampleEndpoint.id,
/// });
/// const exampleEndpointCustomDomain = new azure.cdn.EndpointCustomDomain("example", {
///     name: "example-domain",
///     cdnEndpointId: exampleEndpoint.id,
///     hostName: Promise.all([exampleCNameRecord.name, example]).then(([name, example]) => `${name}.${example.name}`),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="west europe")
/// example_account = azure.storage.Account("example",
///     name="example",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     account_tier="Standard",
///     account_replication_type="GRS")
/// example_profile = azure.cdn.Profile("example",
///     name="example-profile",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     sku="Standard_Microsoft")
/// example_endpoint = azure.cdn.Endpoint("example",
///     name="example-endpoint",
///     profile_name=example_profile.name,
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     origins=[{
///         "name": "example",
///         "host_name": example_account.primary_blob_host,
///     }])
/// example = azure.dns.get_zone(name="example-domain.com",
///     resource_group_name="domain-rg")
/// example_c_name_record = azure.dns.CNameRecord("example",
///     name="example",
///     zone_name=example.name,
///     resource_group_name=example.resource_group_name,
///     ttl=3600,
///     target_resource_id=example_endpoint.id)
/// example_endpoint_custom_domain = azure.cdn.EndpointCustomDomain("example",
///     name="example-domain",
///     cdn_endpoint_id=example_endpoint.id,
///     host_name=example_c_name_record.name.apply(lambda name: f"{name}.{example.name}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-rg",
///         Location = "west europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "GRS",
///     });
///
///     var exampleProfile = new Azure.Cdn.Profile("example", new()
///     {
///         Name = "example-profile",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         Sku = "Standard_Microsoft",
///     });
///
///     var exampleEndpoint = new Azure.Cdn.Endpoint("example", new()
///     {
///         Name = "example-endpoint",
///         ProfileName = exampleProfile.Name,
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         Origins = new[]
///         {
///             new Azure.Cdn.Inputs.EndpointOriginArgs
///             {
///                 Name = "example",
///                 HostName = exampleAccount.PrimaryBlobHost,
///             },
///         },
///     });
///
///     var example = Azure.Dns.GetZone.Invoke(new()
///     {
///         Name = "example-domain.com",
///         ResourceGroupName = "domain-rg",
///     });
///
///     var exampleCNameRecord = new Azure.Dns.CNameRecord("example", new()
///     {
///         Name = "example",
///         ZoneName = example.Apply(getZoneResult => getZoneResult.Name),
///         ResourceGroupName = example.Apply(getZoneResult => getZoneResult.ResourceGroupName),
///         Ttl = 3600,
///         TargetResourceId = exampleEndpoint.Id,
///     });
///
///     var exampleEndpointCustomDomain = new Azure.Cdn.EndpointCustomDomain("example", new()
///     {
///         Name = "example-domain",
///         CdnEndpointId = exampleEndpoint.Id,
///         HostName = Output.Tuple(exampleCNameRecord.Name, example).Apply(values =>
///         {
///             var name = values.Item1;
///             var example = values.Item2;
///             return $"{name}.{example.Apply(getZoneResult => getZoneResult.Name)}";
///         }),
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("west europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("example"),
/// 			ResourceGroupName:      exampleResourceGroup.Name,
/// 			Location:               exampleResourceGroup.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("GRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleProfile, err := cdn.NewProfile(ctx, "example", &cdn.ProfileArgs{
/// 			Name:              pulumi.String("example-profile"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Sku:               pulumi.String("Standard_Microsoft"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEndpoint, err := cdn.NewEndpoint(ctx, "example", &cdn.EndpointArgs{
/// 			Name:              pulumi.String("example-endpoint"),
/// 			ProfileName:       exampleProfile.Name,
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Origins: cdn.EndpointOriginArray{
/// 				&cdn.EndpointOriginArgs{
/// 					Name:     pulumi.String("example"),
/// 					HostName: exampleAccount.PrimaryBlobHost,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := dns.LookupZone(ctx, &dns.LookupZoneArgs{
/// 			Name:              "example-domain.com",
/// 			ResourceGroupName: pulumi.StringRef("domain-rg"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCNameRecord, err := dns.NewCNameRecord(ctx, "example", &dns.CNameRecordArgs{
/// 			Name:              pulumi.String("example"),
/// 			ZoneName:          pulumi.String(example.Name),
/// 			ResourceGroupName: pulumi.String(example.ResourceGroupName),
/// 			Ttl:               pulumi.Int(3600),
/// 			TargetResourceId:  exampleEndpoint.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewEndpointCustomDomain(ctx, "example", &cdn.EndpointCustomDomainArgs{
/// 			Name:          pulumi.String("example-domain"),
/// 			CdnEndpointId: exampleEndpoint.ID(),
/// 			HostName: exampleCNameRecord.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("%v.%v", name, example.Name), nil
/// 			}).(pulumi.StringOutput),
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.cdn.Profile;
/// import com.pulumi.azure.cdn.ProfileArgs;
/// import com.pulumi.azure.cdn.Endpoint;
/// import com.pulumi.azure.cdn.EndpointArgs;
/// import com.pulumi.azure.cdn.inputs.EndpointOriginArgs;
/// import com.pulumi.azure.dns.DnsFunctions;
/// import com.pulumi.azure.dns.inputs.GetZoneArgs;
/// import com.pulumi.azure.dns.CNameRecord;
/// import com.pulumi.azure.dns.CNameRecordArgs;
/// import com.pulumi.azure.cdn.EndpointCustomDomain;
/// import com.pulumi.azure.cdn.EndpointCustomDomainArgs;
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
///             .name("example-rg")
///             .location("west europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .accountTier("Standard")
///             .accountReplicationType("GRS")
///             .build());
///
///         var exampleProfile = new Profile("exampleProfile", ProfileArgs.builder()
///             .name("example-profile")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .sku("Standard_Microsoft")
///             .build());
///
///         var exampleEndpoint = new Endpoint("exampleEndpoint", EndpointArgs.builder()
///             .name("example-endpoint")
///             .profileName(exampleProfile.name())
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .origins(EndpointOriginArgs.builder()
///                 .name("example")
///                 .hostName(exampleAccount.primaryBlobHost())
///                 .build())
///             .build());
///
///         final var example = DnsFunctions.getZone(GetZoneArgs.builder()
///             .name("example-domain.com")
///             .resourceGroupName("domain-rg")
///             .build());
///
///         var exampleCNameRecord = new CNameRecord("exampleCNameRecord", CNameRecordArgs.builder()
///             .name("example")
///             .zoneName(example.name())
///             .resourceGroupName(example.resourceGroupName())
///             .ttl(3600)
///             .targetResourceId(exampleEndpoint.id())
///             .build());
///
///         var exampleEndpointCustomDomain = new EndpointCustomDomain("exampleEndpointCustomDomain", EndpointCustomDomainArgs.builder()
///             .name("example-domain")
///             .cdnEndpointId(exampleEndpoint.id())
///             .hostName(exampleCNameRecord.name().applyValue(_name -> String.format("%s.%s", _name,example.name())))
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
///       name: example-rg
///       location: west europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       accountTier: Standard
///       accountReplicationType: GRS
///   exampleProfile:
///     type: azure:cdn:Profile
///     name: example
///     properties:
///       name: example-profile
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       sku: Standard_Microsoft
///   exampleEndpoint:
///     type: azure:cdn:Endpoint
///     name: example
///     properties:
///       name: example-endpoint
///       profileName: ${exampleProfile.name}
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       origins:
///         - name: example
///           hostName: ${exampleAccount.primaryBlobHost}
///   exampleCNameRecord:
///     type: azure:dns:CNameRecord
///     name: example
///     properties:
///       name: example
///       zoneName: ${example.name}
///       resourceGroupName: ${example.resourceGroupName}
///       ttl: 3600
///       targetResourceId: ${exampleEndpoint.id}
///   exampleEndpointCustomDomain:
///     type: azure:cdn:EndpointCustomDomain
///     name: example
///     properties:
///       name: example-domain
///       cdnEndpointId: ${exampleEndpoint.id}
///       hostName: ${exampleCNameRecord.name}.${example.name}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:dns:getZone
///       arguments:
///         name: example-domain.com
///         resourceGroupName: domain-rg
/// ```
///
///
/// ## Import
///
/// CDN Endpoint Custom Domains can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cdn/endpointCustomDomain:EndpointCustomDomain example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/customDomains/domain1
/// ```
class EndpointCustomDomain extends pulumi.CustomResource {
  /// The ID of the CDN Endpoint. Changing this forces a new CDN Endpoint Custom Domain to be created.
  late final pulumi.Output<String> cdnEndpointId;

  /// A `cdn_managed_https` block as defined below.
  late final pulumi.Output<EndpointCustomDomainCdnManagedHttps?>
  cdnManagedHttps;

  /// The host name of the custom domain. Changing this forces a new CDN Endpoint Custom Domain to be created.
  late final pulumi.Output<String> hostName;

  /// The name which should be used for this CDN Endpoint Custom Domain. Changing this forces a new CDN Endpoint Custom Domain to be created.
  late final pulumi.Output<String> name;

  /// A `user_managed_https` block as defined below.
  ///
  /// &gt; **Note:** Only one of `cdn_managed_https` and `user_managed_https` can be specified.
  late final pulumi.Output<EndpointCustomDomainUserManagedHttps?>
  userManagedHttps;

  /// Creates a new [EndpointCustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointCustomDomain]. {@macro pulumi_cdn_endpoint_custom_domain_endpoint_custom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointCustomDomain(
    String name, {
    EndpointCustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:cdn/endpointCustomDomain:EndpointCustomDomain',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cdnEndpointId = registerOutput<String>('cdnEndpointId');
    cdnManagedHttps = registerOutput<EndpointCustomDomainCdnManagedHttps?>(
      'cdnManagedHttps',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EndpointCustomDomainCdnManagedHttps.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    hostName = registerOutput<String>('hostName');
    this.name = registerOutput<String>('name');
    userManagedHttps = registerOutput<EndpointCustomDomainUserManagedHttps?>(
      'userManagedHttps',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EndpointCustomDomainUserManagedHttps.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [EndpointCustomDomain] resource's state with the given [name] and [id].
  static EndpointCustomDomain get(
    String name,
    pulumi.Input<String> id, {
    EndpointCustomDomainState? state,
  }) {
    return EndpointCustomDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EndpointCustomDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:cdn/endpointCustomDomain:EndpointCustomDomain',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cdnEndpointId = registerOutput<String>('cdnEndpointId');
    cdnManagedHttps = registerOutput<EndpointCustomDomainCdnManagedHttps?>(
      'cdnManagedHttps',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EndpointCustomDomainCdnManagedHttps.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    hostName = registerOutput<String>('hostName');
    this.name = registerOutput<String>('name');
    userManagedHttps = registerOutput<EndpointCustomDomainUserManagedHttps?>(
      'userManagedHttps',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EndpointCustomDomainUserManagedHttps.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
