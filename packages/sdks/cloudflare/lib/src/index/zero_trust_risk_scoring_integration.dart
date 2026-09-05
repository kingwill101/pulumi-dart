import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_risk_scoring_integration_args.dart';
import 'zero_trust_risk_scoring_integration_state.dart';

/// Accepted Permissions
///
/// - `Zero Trust Read`
/// - `Zero Trust Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustRiskScoringIntegration = new cloudflare.ZeroTrustRiskScoringIntegration("example_zero_trust_risk_scoring_integration", {
///     accountId: "account_id",
///     integrationType: "Okta",
///     tenantUrl: "https://example.com",
///     referenceId: "reference_id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_risk_scoring_integration = cloudflare.ZeroTrustRiskScoringIntegration("example_zero_trust_risk_scoring_integration",
///     account_id="account_id",
///     integration_type="Okta",
///     tenant_url="https://example.com",
///     reference_id="reference_id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustRiskScoringIntegration = new Cloudflare.ZeroTrustRiskScoringIntegration("example_zero_trust_risk_scoring_integration", new()
///     {
///         AccountId = "account_id",
///         IntegrationType = "Okta",
///         TenantUrl = "https://example.com",
///         ReferenceId = "reference_id",
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
/// 		_, err := cloudflare.NewZeroTrustRiskScoringIntegration(ctx, "example_zero_trust_risk_scoring_integration", &cloudflare.ZeroTrustRiskScoringIntegrationArgs{
/// 			AccountId:       pulumi.String("account_id"),
/// 			IntegrationType: pulumi.String("Okta"),
/// 			TenantUrl:       pulumi.String("https://example.com"),
/// 			ReferenceId:     pulumi.String("reference_id"),
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
/// resource "cloudflare_zerotrustriskscoringintegration" "example_zero_trust_risk_scoring_integration" {
///   account_id       = "account_id"
///   integration_type = "Okta"
///   tenant_url       = "https://example.com"
///   reference_id     = "reference_id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustRiskScoringIntegration;
/// import com.pulumi.cloudflare.ZeroTrustRiskScoringIntegrationArgs;
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
///         var exampleZeroTrustRiskScoringIntegration = new ZeroTrustRiskScoringIntegration("exampleZeroTrustRiskScoringIntegration", ZeroTrustRiskScoringIntegrationArgs.builder()
///             .accountId("account_id")
///             .integrationType("Okta")
///             .tenantUrl("https://example.com")
///             .referenceId("reference_id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustRiskScoringIntegration:
///     type: cloudflare:ZeroTrustRiskScoringIntegration
///     name: example_zero_trust_risk_scoring_integration
///     properties:
///       accountId: account_id
///       integrationType: Okta
///       tenantUrl: https://example.com
///       referenceId: reference_id
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustRiskScoringIntegration:ZeroTrustRiskScoringIntegration example '<account_id>/<integration_id>'
/// ```
class ZeroTrustRiskScoringIntegration extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// The Cloudflare account tag.
  late final pulumi.Output<String> accountTag;
  /// Whether this integration is enabled. If disabled, no risk changes will be exported to the third-party.
  late final pulumi.Output<bool?> active;
  /// When the integration was created in RFC3339 format.
  late final pulumi.Output<String> createdAt;
  /// Available values: "Okta".
  late final pulumi.Output<String> integrationType;
  /// A reference id that can be supplied by the client. Currently this should be set to the Access-Okta IDP ID (a UUIDv4).
  /// https://developers.cloudflare.com/api/operations/access-identity-providers-get-an-access-identity-provider
  late final pulumi.Output<String?> referenceId;
  /// The base url of the tenant, e.g. "https://tenant.okta.com".
  late final pulumi.Output<String> tenantUrl;
  /// The URL for the Shared Signals Framework configuration, e.g. "/.well-known/sse-configuration/{integration*uuid}/". https://openid.net/specs/openid-sse-framework-1*0.html#rfc.section.6.2.1.
  late final pulumi.Output<String> wellKnownUrl;

  /// Creates a new [ZeroTrustRiskScoringIntegration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustRiskScoringIntegration]. {@macro pulumi_index_zero_trust_risk_scoring_integration_zero_trust_risk_scoring_integration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustRiskScoringIntegration(
    String name, {
    ZeroTrustRiskScoringIntegrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustRiskScoringIntegration:ZeroTrustRiskScoringIntegration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    accountTag = registerOutput<String>('accountTag');
    active = registerOutput<bool?>('active');
    createdAt = registerOutput<String>('createdAt');
    integrationType = registerOutput<String>('integrationType');
    referenceId = registerOutput<String?>('referenceId');
    tenantUrl = registerOutput<String>('tenantUrl');
    wellKnownUrl = registerOutput<String>('wellKnownUrl');
  }

  /// Gets an existing [ZeroTrustRiskScoringIntegration] resource's state with the given [name] and [id].
  static ZeroTrustRiskScoringIntegration get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustRiskScoringIntegrationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustRiskScoringIntegration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustRiskScoringIntegration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustRiskScoringIntegration:ZeroTrustRiskScoringIntegration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    accountTag = registerOutput<String>('accountTag');
    active = registerOutput<bool?>('active');
    createdAt = registerOutput<String>('createdAt');
    integrationType = registerOutput<String>('integrationType');
    referenceId = registerOutput<String?>('referenceId');
    tenantUrl = registerOutput<String>('tenantUrl');
    wellKnownUrl = registerOutput<String>('wellKnownUrl');
  }

  /// Creates a typed reference to an existing [ZeroTrustRiskScoringIntegration] resource.
  ZeroTrustRiskScoringIntegration.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustRiskScoringIntegration:ZeroTrustRiskScoringIntegration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    accountTag = registerOutput<String>('accountTag');
    active = registerOutput<bool?>('active');
    createdAt = registerOutput<String>('createdAt');
    integrationType = registerOutput<String>('integrationType');
    referenceId = registerOutput<String?>('referenceId');
    tenantUrl = registerOutput<String>('tenantUrl');
    wellKnownUrl = registerOutput<String>('wellKnownUrl');
  }
}
