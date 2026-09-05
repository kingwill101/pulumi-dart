import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_trust_args.dart';
import 'domain_trust_state.dart';

/// Adds a trust between Active Directory domains
///
///
/// To get more information about DomainTrust, see:
///
/// * [API documentation](https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains/attachTrust)
/// * How-to Guides
/// * [Active Directory Trust](https://cloud.google.com/managed-microsoft-ad/docs/create-one-way-trust)
///
///
///
/// ## Example Usage
///
/// ### Active Directory Domain Trust Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const ad_domain_trust = new gcp.activedirectory.DomainTrust("ad-domain-trust", {
///     domain: "test-managed-ad.com",
///     targetDomainName: "example-gcp.com",
///     targetDnsIpAddresses: ["10.1.0.100"],
///     trustDirection: "OUTBOUND",
///     trustType: "FOREST",
///     trustHandshakeSecret: "Testing1!",
///     deletionProtection: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ad_domain_trust = gcp.activedirectory.DomainTrust("ad-domain-trust",
///     domain="test-managed-ad.com",
///     target_domain_name="example-gcp.com",
///     target_dns_ip_addresses=["10.1.0.100"],
///     trust_direction="OUTBOUND",
///     trust_type="FOREST",
///     trust_handshake_secret="Testing1!",
///     deletion_protection=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ad_domain_trust = new Gcp.ActiveDirectory.DomainTrust("ad-domain-trust", new()
///     {
///         Domain = "test-managed-ad.com",
///         TargetDomainName = "example-gcp.com",
///         TargetDnsIpAddresses = new[]
///         {
///             "10.1.0.100",
///         },
///         TrustDirection = "OUTBOUND",
///         TrustType = "FOREST",
///         TrustHandshakeSecret = "Testing1!",
///         DeletionProtection = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/activedirectory"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := activedirectory.NewDomainTrust(ctx, "ad-domain-trust", &activedirectory.DomainTrustArgs{
/// 			Domain:           pulumi.String("test-managed-ad.com"),
/// 			TargetDomainName: pulumi.String("example-gcp.com"),
/// 			TargetDnsIpAddresses: pulumi.StringArray{
/// 				pulumi.String("10.1.0.100"),
/// 			},
/// 			TrustDirection:       pulumi.String("OUTBOUND"),
/// 			TrustType:            pulumi.String("FOREST"),
/// 			TrustHandshakeSecret: pulumi.String("Testing1!"),
/// 			DeletionProtection:   false,
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_activedirectory_domaintrust" "ad-domain-trust" {
///   domain                  = "test-managed-ad.com"
///   target_domain_name      = "example-gcp.com"
///   target_dns_ip_addresses = ["10.1.0.100"]
///   trust_direction         = "OUTBOUND"
///   trust_type              = "FOREST"
///   trust_handshake_secret  = "Testing1!"
///   deletion_protection     = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.activedirectory.DomainTrust;
/// import com.pulumi.gcp.activedirectory.DomainTrustArgs;
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
///         var ad_domain_trust = new DomainTrust("ad-domain-trust", DomainTrustArgs.builder()
///             .domain("test-managed-ad.com")
///             .targetDomainName("example-gcp.com")
///             .targetDnsIpAddresses("10.1.0.100")
///             .trustDirection("OUTBOUND")
///             .trustType("FOREST")
///             .trustHandshakeSecret("Testing1!")
///             .deletionProtection(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ad-domain-trust:
///     type: gcp:activedirectory:DomainTrust
///     properties:
///       domain: test-managed-ad.com
///       targetDomainName: example-gcp.com
///       targetDnsIpAddresses:
///         - 10.1.0.100
///       trustDirection: OUTBOUND
///       trustType: FOREST
///       trustHandshakeSecret: Testing1!
///       deletionProtection: false
/// ```
///
///
/// ## Import
///
/// DomainTrust can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/domains/{{domain}}/{{target_domain_name}}`
/// * `{{project}}/{{domain}}/{{target_domain_name}}`
/// * `{{domain}}/{{target_domain_name}}`
///
///
/// When using the `pulumi import` command, DomainTrust can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:activedirectory/domainTrust:DomainTrust default projects/{{project}}/locations/global/domains/{{domain}}/{{target_domain_name}}
/// $ pulumi import gcp:activedirectory/domainTrust:DomainTrust default {{project}}/{{domain}}/{{target_domain_name}}
/// $ pulumi import gcp:activedirectory/domainTrust:DomainTrust default {{domain}}/{{target_domain_name}}
/// ```
class DomainTrust extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions
  /// of https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.
  late final pulumi.Output<String> domain;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Whether the trusted side has forest/domain wide access or selective access to an approved set of resources.
  late final pulumi.Output<bool?> selectiveAuthentication;
  /// The target DNS server IP addresses which can resolve the remote domain involved in the trust.
  late final pulumi.Output<List<String>> targetDnsIpAddresses;
  /// The fully qualified target domain name which will be in trust with the current domain.
  late final pulumi.Output<String> targetDomainName;
  /// The trust direction, which decides if the current domain is trusted, trusting, or both.
  /// Possible values are: `INBOUND`, `OUTBOUND`, `BIDIRECTIONAL`.
  late final pulumi.Output<String> trustDirection;
  /// The trust secret used for the handshake with the target domain. This will not be stored.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> trustHandshakeSecret;
  /// The type of trust represented by the trust resource.
  /// Possible values are: `FOREST`, `EXTERNAL`.
  late final pulumi.Output<String> trustType;

  /// Creates a new [DomainTrust].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainTrust]. {@macro pulumi_activedirectory_domain_trust_domain_trust_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainTrust(
    String name, {
    DomainTrustArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:activedirectory/domainTrust:DomainTrust',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['trustHandshakeSecret'],
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    domain = registerOutput<String>('domain');
    project = registerOutput<String>('project');
    selectiveAuthentication = registerOutput<bool?>('selectiveAuthentication');
    targetDnsIpAddresses = registerOutput<List<String>>('targetDnsIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    targetDomainName = registerOutput<String>('targetDomainName');
    trustDirection = registerOutput<String>('trustDirection');
    trustHandshakeSecret = registerOutput<String>('trustHandshakeSecret', isSecret: true);
    trustType = registerOutput<String>('trustType');
  }

  /// Gets an existing [DomainTrust] resource's state with the given [name] and [id].
  static DomainTrust get(
    String name,
    pulumi.Input<String> id, {
    DomainTrustState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DomainTrust._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DomainTrust._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:activedirectory/domainTrust:DomainTrust',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    domain = registerOutput<String>('domain');
    project = registerOutput<String>('project');
    selectiveAuthentication = registerOutput<bool?>('selectiveAuthentication');
    targetDnsIpAddresses = registerOutput<List<String>>('targetDnsIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    targetDomainName = registerOutput<String>('targetDomainName');
    trustDirection = registerOutput<String>('trustDirection');
    trustHandshakeSecret = registerOutput<String>('trustHandshakeSecret', isSecret: true);
    trustType = registerOutput<String>('trustType');
  }

  /// Creates a typed reference to an existing [DomainTrust] resource.
  DomainTrust.reference(String urn)
    : super(
        'gcp:activedirectory/domainTrust:DomainTrust',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['trustHandshakeSecret'],
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    domain = registerOutput<String>('domain');
    project = registerOutput<String>('project');
    selectiveAuthentication = registerOutput<bool?>('selectiveAuthentication');
    targetDnsIpAddresses = registerOutput<List<String>>('targetDnsIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    targetDomainName = registerOutput<String>('targetDomainName');
    trustDirection = registerOutput<String>('trustDirection');
    trustHandshakeSecret = registerOutput<String>('trustHandshakeSecret', isSecret: true);
    trustType = registerOutput<String>('trustType');
  }
}
