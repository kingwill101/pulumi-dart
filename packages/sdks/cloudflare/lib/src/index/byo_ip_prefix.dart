import 'package:pulumi/pulumi.dart' as pulumi;
import 'byo_ip_prefix_args.dart';
import 'byo_ip_prefix_state.dart';

/// Accepted Permissions
///
/// - `IP Prefixes: BGP On Demand Read`
/// - `IP Prefixes: BGP On Demand Write`
/// - `IP Prefixes: Read`
/// - `IP Prefixes: Write`
/// - `Magic Transit Read`
/// - `Magic Transit Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleByoIpPrefix = new cloudflare.ByoIpPrefix("example_byo_ip_prefix", {
///     accountId: "258def64c72dae45f3e4c8516e2111f2",
///     asn: 13335,
///     cidr: "192.0.2.0/24",
///     delegateLoaCreation: true,
///     description: "Internal test prefix",
///     loaDocumentId: "d933b1530bc56c9953cf8ce166da8004",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_byo_ip_prefix = cloudflare.ByoIpPrefix("example_byo_ip_prefix",
///     account_id="258def64c72dae45f3e4c8516e2111f2",
///     asn=13335,
///     cidr="192.0.2.0/24",
///     delegate_loa_creation=True,
///     description="Internal test prefix",
///     loa_document_id="d933b1530bc56c9953cf8ce166da8004")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleByoIpPrefix = new Cloudflare.ByoIpPrefix("example_byo_ip_prefix", new()
///     {
///         AccountId = "258def64c72dae45f3e4c8516e2111f2",
///         Asn = 13335,
///         Cidr = "192.0.2.0/24",
///         DelegateLoaCreation = true,
///         Description = "Internal test prefix",
///         LoaDocumentId = "d933b1530bc56c9953cf8ce166da8004",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewByoIpPrefix(ctx, "example_byo_ip_prefix", &cloudflare.ByoIpPrefixArgs{
/// 			AccountId:           pulumi.String("258def64c72dae45f3e4c8516e2111f2"),
/// 			Asn:                 pulumi.Int(13335),
/// 			Cidr:                pulumi.String("192.0.2.0/24"),
/// 			DelegateLoaCreation: pulumi.Bool(true),
/// 			Description:         pulumi.String("Internal test prefix"),
/// 			LoaDocumentId:       pulumi.String("d933b1530bc56c9953cf8ce166da8004"),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_byoipprefix" "example_byo_ip_prefix" {
///   account_id            = "258def64c72dae45f3e4c8516e2111f2"
///   asn                   = 13335
///   cidr                  = "192.0.2.0/24"
///   delegate_loa_creation = true
///   description           = "Internal test prefix"
///   loa_document_id       = "d933b1530bc56c9953cf8ce166da8004"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ByoIpPrefix;
/// import com.pulumi.cloudflare.ByoIpPrefixArgs;
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
///         var exampleByoIpPrefix = new ByoIpPrefix("exampleByoIpPrefix", ByoIpPrefixArgs.builder()
///             .accountId("258def64c72dae45f3e4c8516e2111f2")
///             .asn(13335)
///             .cidr("192.0.2.0/24")
///             .delegateLoaCreation(true)
///             .description("Internal test prefix")
///             .loaDocumentId("d933b1530bc56c9953cf8ce166da8004")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleByoIpPrefix:
///     type: cloudflare:ByoIpPrefix
///     name: example_byo_ip_prefix
///     properties:
///       accountId: 258def64c72dae45f3e4c8516e2111f2
///       asn: 13335
///       cidr: 192.0.2.0/24
///       delegateLoaCreation: true
///       description: Internal test prefix
///       loaDocumentId: d933b1530bc56c9953cf8ce166da8004
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/byoIpPrefix:ByoIpPrefix example '<account_id>/<prefix_id>'
/// ```
class ByoIpPrefix extends pulumi.CustomResource {
  /// Identifier of a Cloudflare account.
  late final pulumi.Output<String> accountId;
  /// Prefix advertisement status to the Internet. This field is only not 'null' if on demand is enabled.
  late final pulumi.Output<bool> advertised;
  /// Last time the advertisement status was changed. This field is only not 'null' if on demand is enabled.
  late final pulumi.Output<String> advertisedModifiedAt;
  /// Approval state of the prefix (P = pending, V = active).
  late final pulumi.Output<String> approved;
  /// Autonomous System Number (ASN) the prefix will be advertised under.
  late final pulumi.Output<int> asn;
  /// IP Prefix in Classless Inter-Domain Routing format.
  late final pulumi.Output<String> cidr;
  late final pulumi.Output<String> createdAt;
  /// Whether Cloudflare is allowed to generate the LOA document on behalf of the prefix owner.
  late final pulumi.Output<bool> delegateLoaCreation;
  /// Description of the prefix.
  late final pulumi.Output<String?> description;
  /// State of one kind of validation for an IP prefix.
  late final pulumi.Output<String> irrValidationState;
  /// Identifier for the uploaded LOA document.
  late final pulumi.Output<String?> loaDocumentId;
  late final pulumi.Output<String> modifiedAt;
  /// Whether advertisement of the prefix to the Internet may be dynamically enabled or disabled.
  late final pulumi.Output<bool> onDemandEnabled;
  /// Whether advertisement status of the prefix is locked, meaning it cannot be changed.
  late final pulumi.Output<bool> onDemandLocked;
  /// State of one kind of validation for an IP prefix.
  late final pulumi.Output<String> ownershipValidationState;
  /// Token provided to demonstrate ownership of the prefix.
  late final pulumi.Output<String> ownershipValidationToken;
  /// State of one kind of validation for an IP prefix.
  late final pulumi.Output<String> rpkiValidationState;

  /// Creates a new [ByoIpPrefix].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ByoIpPrefix]. {@macro pulumi_index_byo_ip_prefix_byo_ip_prefix_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ByoIpPrefix(
    String name, {
    ByoIpPrefixArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/byoIpPrefix:ByoIpPrefix',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    advertised = registerOutput<bool>('advertised');
    advertisedModifiedAt = registerOutput<String>('advertisedModifiedAt');
    approved = registerOutput<String>('approved');
    asn = registerOutput<int>('asn');
    cidr = registerOutput<String>('cidr');
    createdAt = registerOutput<String>('createdAt');
    delegateLoaCreation = registerOutput<bool>('delegateLoaCreation');
    description = registerOutput<String?>('description');
    irrValidationState = registerOutput<String>('irrValidationState');
    loaDocumentId = registerOutput<String?>('loaDocumentId');
    modifiedAt = registerOutput<String>('modifiedAt');
    onDemandEnabled = registerOutput<bool>('onDemandEnabled');
    onDemandLocked = registerOutput<bool>('onDemandLocked');
    ownershipValidationState = registerOutput<String>('ownershipValidationState');
    ownershipValidationToken = registerOutput<String>('ownershipValidationToken');
    rpkiValidationState = registerOutput<String>('rpkiValidationState');
  }

  /// Gets an existing [ByoIpPrefix] resource's state with the given [name] and [id].
  static ByoIpPrefix get(
    String name,
    pulumi.Input<String> id, {
    ByoIpPrefixState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ByoIpPrefix._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ByoIpPrefix._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/byoIpPrefix:ByoIpPrefix',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    advertised = registerOutput<bool>('advertised');
    advertisedModifiedAt = registerOutput<String>('advertisedModifiedAt');
    approved = registerOutput<String>('approved');
    asn = registerOutput<int>('asn');
    cidr = registerOutput<String>('cidr');
    createdAt = registerOutput<String>('createdAt');
    delegateLoaCreation = registerOutput<bool>('delegateLoaCreation');
    description = registerOutput<String?>('description');
    irrValidationState = registerOutput<String>('irrValidationState');
    loaDocumentId = registerOutput<String?>('loaDocumentId');
    modifiedAt = registerOutput<String>('modifiedAt');
    onDemandEnabled = registerOutput<bool>('onDemandEnabled');
    onDemandLocked = registerOutput<bool>('onDemandLocked');
    ownershipValidationState = registerOutput<String>('ownershipValidationState');
    ownershipValidationToken = registerOutput<String>('ownershipValidationToken');
    rpkiValidationState = registerOutput<String>('rpkiValidationState');
  }

  /// Creates a typed reference to an existing [ByoIpPrefix] resource.
  ByoIpPrefix.reference(String urn)
    : super(
        'cloudflare:index/byoIpPrefix:ByoIpPrefix',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    advertised = registerOutput<bool>('advertised');
    advertisedModifiedAt = registerOutput<String>('advertisedModifiedAt');
    approved = registerOutput<String>('approved');
    asn = registerOutput<int>('asn');
    cidr = registerOutput<String>('cidr');
    createdAt = registerOutput<String>('createdAt');
    delegateLoaCreation = registerOutput<bool>('delegateLoaCreation');
    description = registerOutput<String?>('description');
    irrValidationState = registerOutput<String>('irrValidationState');
    loaDocumentId = registerOutput<String?>('loaDocumentId');
    modifiedAt = registerOutput<String>('modifiedAt');
    onDemandEnabled = registerOutput<bool>('onDemandEnabled');
    onDemandLocked = registerOutput<bool>('onDemandLocked');
    ownershipValidationState = registerOutput<String>('ownershipValidationState');
    ownershipValidationToken = registerOutput<String>('ownershipValidationToken');
    rpkiValidationState = registerOutput<String>('rpkiValidationState');
  }
}
