import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_kaj_policy_config_args.dart';
import 'organization_kaj_policy_config_default_key_access_justification_policy.dart';
import 'organization_kaj_policy_config_state.dart';

/// `OrganizationKajPolicyConfig` is a organization-level singleton resource
/// used to configure the default KAJ policy of newly created key.
///
/// &gt; **Note:** OrganizationKajPolicyConfig cannot be deleted from Google Cloud Platform.
/// Destroying a Terraform-managed OrganizationKajPolicyConfig will remove it from state but
/// *will not delete the resource from Google Cloud Platform.*
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about OrganizationKajPolicyConfig, see:
///
/// * [API documentation](https://cloud.google.com/kms/docs/reference/rest/v1/KeyAccessJustificationsPolicyConfig)
/// * How-to Guides
/// * [Set default Key Access Justifications policy](https://cloud.google.com/assured-workloads/key-access-justifications/docs/set-default-policy)
///
/// ## Example Usage
///
/// ### Kms Organization Kaj Policy Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.kms.OrganizationKajPolicyConfig("example", {
///     organization: "123456789",
///     defaultKeyAccessJustificationPolicy: {
///         allowedAccessReasons: [
///             "CUSTOMER_INITIATED_ACCESS",
///             "GOOGLE_INITIATED_SYSTEM_OPERATION",
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.kms.OrganizationKajPolicyConfig("example",
///     organization="123456789",
///     default_key_access_justification_policy={
///         "allowed_access_reasons": [
///             "CUSTOMER_INITIATED_ACCESS",
///             "GOOGLE_INITIATED_SYSTEM_OPERATION",
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Kms.OrganizationKajPolicyConfig("example", new()
///     {
///         Organization = "123456789",
///         DefaultKeyAccessJustificationPolicy = new Gcp.Kms.Inputs.OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicyArgs
///         {
///             AllowedAccessReasons = new[]
///             {
///                 "CUSTOMER_INITIATED_ACCESS",
///                 "GOOGLE_INITIATED_SYSTEM_OPERATION",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewOrganizationKajPolicyConfig(ctx, "example", &kms.OrganizationKajPolicyConfigArgs{
/// 			Organization: pulumi.String("123456789"),
/// 			DefaultKeyAccessJustificationPolicy: &kms.OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicyArgs{
/// 				AllowedAccessReasons: pulumi.StringArray{
/// 					pulumi.String("CUSTOMER_INITIATED_ACCESS"),
/// 					pulumi.String("GOOGLE_INITIATED_SYSTEM_OPERATION"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_kms_organizationkajpolicyconfig" "example" {
///   organization = "123456789"
///   default_key_access_justification_policy = {
///     allowed_access_reasons = ["CUSTOMER_INITIATED_ACCESS", "GOOGLE_INITIATED_SYSTEM_OPERATION"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.kms.OrganizationKajPolicyConfig;
/// import com.pulumi.gcp.kms.OrganizationKajPolicyConfigArgs;
/// import com.pulumi.gcp.kms.inputs.OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicyArgs;
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
///         var example = new OrganizationKajPolicyConfig("example", OrganizationKajPolicyConfigArgs.builder()
///             .organization("123456789")
///             .defaultKeyAccessJustificationPolicy(OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicyArgs.builder()
///                 .allowedAccessReasons(
///                     "CUSTOMER_INITIATED_ACCESS",
///                     "GOOGLE_INITIATED_SYSTEM_OPERATION")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:kms:OrganizationKajPolicyConfig
///     properties:
///       organization: '123456789'
///       defaultKeyAccessJustificationPolicy:
///         allowedAccessReasons:
///           - CUSTOMER_INITIATED_ACCESS
///           - GOOGLE_INITIATED_SYSTEM_OPERATION
/// ```
///
///
/// ## Import
///
/// OrganizationKajPolicyConfig can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/kajPolicyConfig`
/// * `{{organization}}`
///
///
/// When using the `pulumi import` command, OrganizationKajPolicyConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/organizationKajPolicyConfig:OrganizationKajPolicyConfig default organizations/{{organization}}/kajPolicyConfig
/// $ pulumi import gcp:kms/organizationKajPolicyConfig:OrganizationKajPolicyConfig default {{organization}}
/// ```
class OrganizationKajPolicyConfig extends pulumi.CustomResource {
  /// The default key access justification policy used when a CryptoKey is
  /// created in this organization. This is only used when a Key Access Justifications
  /// policy is not provided in the CreateCryptoKeyRequest.
  /// Structure is documented below.
  late final pulumi.Output<OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy?> defaultKeyAccessJustificationPolicy;
  /// The organization number for which to retrieve config.
  late final pulumi.Output<String> organization;

  /// Creates a new [OrganizationKajPolicyConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationKajPolicyConfig]. {@macro pulumi_kms_organization_kaj_policy_config_organization_kaj_policy_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationKajPolicyConfig(
    String name, {
    OrganizationKajPolicyConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/organizationKajPolicyConfig:OrganizationKajPolicyConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    defaultKeyAccessJustificationPolicy = registerOutput<OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy?>('defaultKeyAccessJustificationPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    organization = registerOutput<String>('organization');
  }

  /// Gets an existing [OrganizationKajPolicyConfig] resource's state with the given [name] and [id].
  static OrganizationKajPolicyConfig get(
    String name,
    pulumi.Input<String> id, {
    OrganizationKajPolicyConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OrganizationKajPolicyConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OrganizationKajPolicyConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/organizationKajPolicyConfig:OrganizationKajPolicyConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultKeyAccessJustificationPolicy = registerOutput<OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy?>('defaultKeyAccessJustificationPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    organization = registerOutput<String>('organization');
  }

  /// Creates a typed reference to an existing [OrganizationKajPolicyConfig] resource.
  OrganizationKajPolicyConfig.reference(String urn)
    : super(
        'gcp:kms/organizationKajPolicyConfig:OrganizationKajPolicyConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    defaultKeyAccessJustificationPolicy = registerOutput<OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy?>('defaultKeyAccessJustificationPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    organization = registerOutput<String>('organization');
  }
}
