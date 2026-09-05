import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_trust_args.dart';
import 'service_trust_state.dart';

/// Manages a Active Directory Domain Service Trust.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.domainservices.getService({
///     name: "example-ds",
///     resourceGroupName: "example-rg",
/// });
/// const exampleServiceTrust = new azure.domainservices.ServiceTrust("example", {
///     name: "example-trust",
///     domainServiceId: example.then(example => example.id),
///     trustedDomainFqdn: "example.com",
///     trustedDomainDnsIps: [
///         "10.1.0.3",
///         "10.1.0.4",
///     ],
///     password: "Password123",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.domainservices.get_service(name="example-ds",
///     resource_group_name="example-rg")
/// example_service_trust = azure.domainservices.ServiceTrust("example",
///     name="example-trust",
///     domain_service_id=example.id,
///     trusted_domain_fqdn="example.com",
///     trusted_domain_dns_ips=[
///         "10.1.0.3",
///         "10.1.0.4",
///     ],
///     password="Password123")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.DomainServices.GetService.Invoke(new()
///     {
///         Name = "example-ds",
///         ResourceGroupName = "example-rg",
///     });
///
///     var exampleServiceTrust = new Azure.DomainServices.ServiceTrust("example", new()
///     {
///         Name = "example-trust",
///         DomainServiceId = example.Apply(getServiceResult => getServiceResult.Id),
///         TrustedDomainFqdn = "example.com",
///         TrustedDomainDnsIps = new[]
///         {
///             "10.1.0.3",
///             "10.1.0.4",
///         },
///         Password = "Password123",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/domainservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := domainservices.LookupService(ctx, &domainservices.LookupServiceArgs{
/// 			Name:              "example-ds",
/// 			ResourceGroupName: "example-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = domainservices.NewServiceTrust(ctx, "example", &domainservices.ServiceTrustArgs{
/// 			Name:              pulumi.String("example-trust"),
/// 			DomainServiceId:   pulumi.String(example.Id),
/// 			TrustedDomainFqdn: pulumi.String("example.com"),
/// 			TrustedDomainDnsIps: pulumi.StringArray{
/// 				pulumi.String("10.1.0.3"),
/// 				pulumi.String("10.1.0.4"),
/// 			},
/// 			Password: pulumi.String("Password123"),
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
/// data "azure_domainservices_getservice" "example" {
///   name                = "example-ds"
///   resource_group_name = "example-rg"
/// }
///
/// resource "azure_domainservices_servicetrust" "example" {
///   name                   = "example-trust"
///   domain_service_id      = data.azure_domainservices_getservice.example.id
///   trusted_domain_fqdn    = "example.com"
///   trusted_domain_dns_ips = ["10.1.0.3", "10.1.0.4"]
///   password               = "Password123"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.domainservices.DomainservicesFunctions;
/// import com.pulumi.azure.domainservices.inputs.GetServiceArgs;
/// import com.pulumi.azure.domainservices.ServiceTrust;
/// import com.pulumi.azure.domainservices.ServiceTrustArgs;
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
///         final var example = DomainservicesFunctions.getService(GetServiceArgs.builder()
///             .name("example-ds")
///             .resourceGroupName("example-rg")
///             .build());
///
///         var exampleServiceTrust = new ServiceTrust("exampleServiceTrust", ServiceTrustArgs.builder()
///             .name("example-trust")
///             .domainServiceId(example.id())
///             .trustedDomainFqdn("example.com")
///             .trustedDomainDnsIps(
///                 "10.1.0.3",
///                 "10.1.0.4")
///             .password("Password123")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleServiceTrust:
///     type: azure:domainservices:ServiceTrust
///     name: example
///     properties:
///       name: example-trust
///       domainServiceId: ${example.id}
///       trustedDomainFqdn: example.com
///       trustedDomainDnsIps:
///         - 10.1.0.3
///         - 10.1.0.4
///       password: Password123
/// variables:
///   example:
///     fn::invoke:
///       function: azure:domainservices:getService
///       arguments:
///         name: example-ds
///         resourceGroupName: example-rg
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AAD` - 2021-05-01
///
/// ## Import
///
/// Active Directory Domain Service Trusts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:domainservices/serviceTrust:ServiceTrust example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.AAD/domainServices/DomainService1/trusts/trust1
/// ```
class ServiceTrust extends pulumi.CustomResource {
  /// The ID of the Active Directory Domain Service. Changing this forces a new Active Directory Domain Service Trust to be created.
  late final pulumi.Output<String> domainServiceId;
  /// The name which should be used for this Active Directory Domain Service Trust. Changing this forces a new Active Directory Domain Service Trust to be created.
  late final pulumi.Output<String> name;
  /// The password of the inbound trust set in the on-premise Active Directory Domain Service.
  late final pulumi.Output<String> password;
  /// Specifies a list of DNS IPs that are used to resolve the on-premise Active Directory Domain Service.
  late final pulumi.Output<List<String>> trustedDomainDnsIps;
  /// The FQDN of the on-premise Active Directory Domain Service.
  late final pulumi.Output<String> trustedDomainFqdn;

  /// Creates a new [ServiceTrust].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceTrust]. {@macro pulumi_domainservices_service_trust_service_trust_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceTrust(
    String name, {
    ServiceTrustArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:domainservices/serviceTrust:ServiceTrust',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['password'],
        ) {
    domainServiceId = registerOutput<String>('domainServiceId');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password', isSecret: true);
    trustedDomainDnsIps = registerOutput<List<String>>('trustedDomainDnsIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    trustedDomainFqdn = registerOutput<String>('trustedDomainFqdn');
  }

  /// Gets an existing [ServiceTrust] resource's state with the given [name] and [id].
  static ServiceTrust get(
    String name,
    pulumi.Input<String> id, {
    ServiceTrustState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ServiceTrust._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ServiceTrust._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:domainservices/serviceTrust:ServiceTrust',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    domainServiceId = registerOutput<String>('domainServiceId');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password', isSecret: true);
    trustedDomainDnsIps = registerOutput<List<String>>('trustedDomainDnsIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    trustedDomainFqdn = registerOutput<String>('trustedDomainFqdn');
  }

  /// Creates a typed reference to an existing [ServiceTrust] resource.
  ServiceTrust.reference(String urn)
    : super(
        'azure:domainservices/serviceTrust:ServiceTrust',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['password'],
        isResourceReference: true,
      ) {
    domainServiceId = registerOutput<String>('domainServiceId');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password', isSecret: true);
    trustedDomainDnsIps = registerOutput<List<String>>('trustedDomainDnsIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    trustedDomainFqdn = registerOutput<String>('trustedDomainFqdn');
  }
}
