import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_rulestack_outbound_trust_certificate_association_args.dart';
import 'local_rulestack_outbound_trust_certificate_association_state.dart';

/// Manages a Palo Alto Networks Rulestack Outbound Trust Certificate Association.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "rg-example",
///     location: "West Europe",
/// });
/// const exampleLocalRulestack = new azure.paloalto.LocalRulestack("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleLocalRulestackCertificate = new azure.paloalto.LocalRulestackCertificate("example", {
///     name: "example",
///     rulestackId: exampleLocalRulestack.id,
///     selfSigned: true,
/// });
/// const exampleLocalRulestackOutboundTrustCertificateAssociation = new azure.paloalto.LocalRulestackOutboundTrustCertificateAssociation("example", {certificateId: exampleLocalRulestackCertificate.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="rg-example",
///     location="West Europe")
/// example_local_rulestack = azure.paloalto.LocalRulestack("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location)
/// example_local_rulestack_certificate = azure.paloalto.LocalRulestackCertificate("example",
///     name="example",
///     rulestack_id=example_local_rulestack.id,
///     self_signed=True)
/// example_local_rulestack_outbound_trust_certificate_association = azure.paloalto.LocalRulestackOutboundTrustCertificateAssociation("example", certificate_id=example_local_rulestack_certificate.id)
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
///         Name = "rg-example",
///         Location = "West Europe",
///     });
///
///     var exampleLocalRulestack = new Azure.PaloAlto.LocalRulestack("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleLocalRulestackCertificate = new Azure.PaloAlto.LocalRulestackCertificate("example", new()
///     {
///         Name = "example",
///         RulestackId = exampleLocalRulestack.Id,
///         SelfSigned = true,
///     });
///
///     var exampleLocalRulestackOutboundTrustCertificateAssociation = new Azure.PaloAlto.LocalRulestackOutboundTrustCertificateAssociation("example", new()
///     {
///         CertificateId = exampleLocalRulestackCertificate.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/paloalto"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("rg-example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLocalRulestack, err := paloalto.NewLocalRulestack(ctx, "example", &paloalto.LocalRulestackArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLocalRulestackCertificate, err := paloalto.NewLocalRulestackCertificate(ctx, "example", &paloalto.LocalRulestackCertificateArgs{
/// 			Name:        pulumi.String("example"),
/// 			RulestackId: exampleLocalRulestack.ID(),
/// 			SelfSigned:  pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = paloalto.NewLocalRulestackOutboundTrustCertificateAssociation(ctx, "example", &paloalto.LocalRulestackOutboundTrustCertificateAssociationArgs{
/// 			CertificateId: exampleLocalRulestackCertificate.ID(),
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
/// import com.pulumi.azure.paloalto.LocalRulestack;
/// import com.pulumi.azure.paloalto.LocalRulestackArgs;
/// import com.pulumi.azure.paloalto.LocalRulestackCertificate;
/// import com.pulumi.azure.paloalto.LocalRulestackCertificateArgs;
/// import com.pulumi.azure.paloalto.LocalRulestackOutboundTrustCertificateAssociation;
/// import com.pulumi.azure.paloalto.LocalRulestackOutboundTrustCertificateAssociationArgs;
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
///             .name("rg-example")
///             .location("West Europe")
///             .build());
///
///         var exampleLocalRulestack = new LocalRulestack("exampleLocalRulestack", LocalRulestackArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleLocalRulestackCertificate = new LocalRulestackCertificate("exampleLocalRulestackCertificate", LocalRulestackCertificateArgs.builder()
///             .name("example")
///             .rulestackId(exampleLocalRulestack.id())
///             .selfSigned(true)
///             .build());
///
///         var exampleLocalRulestackOutboundTrustCertificateAssociation = new LocalRulestackOutboundTrustCertificateAssociation("exampleLocalRulestackOutboundTrustCertificateAssociation", LocalRulestackOutboundTrustCertificateAssociationArgs.builder()
///             .certificateId(exampleLocalRulestackCertificate.id())
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
///       name: rg-example
///       location: West Europe
///   exampleLocalRulestack:
///     type: azure:paloalto:LocalRulestack
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleLocalRulestackCertificate:
///     type: azure:paloalto:LocalRulestackCertificate
///     name: example
///     properties:
///       name: example
///       rulestackId: ${exampleLocalRulestack.id}
///       selfSigned: true
///   exampleLocalRulestackOutboundTrustCertificateAssociation:
///     type: azure:paloalto:LocalRulestackOutboundTrustCertificateAssociation
///     name: example
///     properties:
///       certificateId: ${exampleLocalRulestackCertificate.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `PaloAltoNetworks.Cloudngfw` - 2022-08-29
class LocalRulestackOutboundTrustCertificateAssociation extends pulumi.CustomResource {
  /// The ID of the Certificate to use as the Outbound Trust Certificate. Changing this forces a new Palo Alto Networks Rulestack Outbound Trust Certificate Association to be created.
  late final pulumi.Output<String> certificateId;

  /// Creates a new [LocalRulestackOutboundTrustCertificateAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocalRulestackOutboundTrustCertificateAssociation]. {@macro pulumi_paloalto_local_rulestack_outbound_trust_certificate_association_local_rulestack_outbound_trust_certificate_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocalRulestackOutboundTrustCertificateAssociation(
    String name, {
    LocalRulestackOutboundTrustCertificateAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:paloalto/localRulestackOutboundTrustCertificateAssociation:LocalRulestackOutboundTrustCertificateAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateId = registerOutput<String>('certificateId');
  }

  /// Gets an existing [LocalRulestackOutboundTrustCertificateAssociation] resource's state with the given [name] and [id].
  static LocalRulestackOutboundTrustCertificateAssociation get(
    String name,
    pulumi.Input<String> id, {
    LocalRulestackOutboundTrustCertificateAssociationState? state,
  }) {
    return LocalRulestackOutboundTrustCertificateAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LocalRulestackOutboundTrustCertificateAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:paloalto/localRulestackOutboundTrustCertificateAssociation:LocalRulestackOutboundTrustCertificateAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateId = registerOutput<String>('certificateId');
  }
}
