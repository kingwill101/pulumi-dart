import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication_strength_policy_x509_combination_configuration_args.dart';
import 'authentication_strength_policy_x509_combination_configuration_state.dart';

/// Manages an x509 certificate combination configuration for an authentication strength policy within Azure Active Directory.
///
/// An x509 certificate combination configuration restricts which certificates, identified by their issuer subject key identifier (SKI) or certificate policy OID, satisfy the x509 certificate authentication method combinations. A policy may carry a separate configuration for each combination, but a given combination may be configured only once.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires the following application roles: `Policy.ReadWrite.ConditionalAccess` and `Policy.Read.All`
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `Conditional Access Administrator` or `Global Administrator`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.AuthenticationStrengthPolicy("example", {
///     displayName: "Example Authentication Strength Policy",
///     description: "Policy for demo purposes",
///     allowedCombinations: [
///         "x509CertificateSingleFactor",
///         "x509CertificateMultiFactor",
///     ],
/// });
/// const singleFactor = new azuread.AuthenticationStrengthPolicyX509CombinationConfiguration("single_factor", {
///     authenticationStrengthPolicyId: example.objectId,
///     appliesToCombinations: ["x509CertificateSingleFactor"],
///     allowedIssuerSkis: ["9A4248C6AC8C2931AB2A86537818E92E7B6C97B6"],
/// });
/// const multiFactor = new azuread.AuthenticationStrengthPolicyX509CombinationConfiguration("multi_factor", {
///     authenticationStrengthPolicyId: example.objectId,
///     appliesToCombinations: ["x509CertificateMultiFactor"],
///     allowedPolicyOids: ["1.2.3.4.5"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.AuthenticationStrengthPolicy("example",
///     display_name="Example Authentication Strength Policy",
///     description="Policy for demo purposes",
///     allowed_combinations=[
///         "x509CertificateSingleFactor",
///         "x509CertificateMultiFactor",
///     ])
/// single_factor = azuread.AuthenticationStrengthPolicyX509CombinationConfiguration("single_factor",
///     authentication_strength_policy_id=example.object_id,
///     applies_to_combinations=["x509CertificateSingleFactor"],
///     allowed_issuer_skis=["9A4248C6AC8C2931AB2A86537818E92E7B6C97B6"])
/// multi_factor = azuread.AuthenticationStrengthPolicyX509CombinationConfiguration("multi_factor",
///     authentication_strength_policy_id=example.object_id,
///     applies_to_combinations=["x509CertificateMultiFactor"],
///     allowed_policy_oids=["1.2.3.4.5"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.AuthenticationStrengthPolicy("example", new()
///     {
///         DisplayName = "Example Authentication Strength Policy",
///         Description = "Policy for demo purposes",
///         AllowedCombinations = new[]
///         {
///             "x509CertificateSingleFactor",
///             "x509CertificateMultiFactor",
///         },
///     });
///
///     var singleFactor = new AzureAD.AuthenticationStrengthPolicyX509CombinationConfiguration("single_factor", new()
///     {
///         AuthenticationStrengthPolicyId = example.ObjectId,
///         AppliesToCombinations = new[]
///         {
///             "x509CertificateSingleFactor",
///         },
///         AllowedIssuerSkis = new[]
///         {
///             "9A4248C6AC8C2931AB2A86537818E92E7B6C97B6",
///         },
///     });
///
///     var multiFactor = new AzureAD.AuthenticationStrengthPolicyX509CombinationConfiguration("multi_factor", new()
///     {
///         AuthenticationStrengthPolicyId = example.ObjectId,
///         AppliesToCombinations = new[]
///         {
///             "x509CertificateMultiFactor",
///         },
///         AllowedPolicyOids = new[]
///         {
///             "1.2.3.4.5",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := azuread.NewAuthenticationStrengthPolicy(ctx, "example", &azuread.AuthenticationStrengthPolicyArgs{
/// 			DisplayName: pulumi.String("Example Authentication Strength Policy"),
/// 			Description: pulumi.String("Policy for demo purposes"),
/// 			AllowedCombinations: pulumi.StringArray{
/// 				pulumi.String("x509CertificateSingleFactor"),
/// 				pulumi.String("x509CertificateMultiFactor"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewAuthenticationStrengthPolicyX509CombinationConfiguration(ctx, "single_factor", &azuread.AuthenticationStrengthPolicyX509CombinationConfigurationArgs{
/// 			AuthenticationStrengthPolicyId: example.ObjectId,
/// 			AppliesToCombinations: pulumi.StringArray{
/// 				pulumi.String("x509CertificateSingleFactor"),
/// 			},
/// 			AllowedIssuerSkis: pulumi.StringArray{
/// 				pulumi.String("9A4248C6AC8C2931AB2A86537818E92E7B6C97B6"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewAuthenticationStrengthPolicyX509CombinationConfiguration(ctx, "multi_factor", &azuread.AuthenticationStrengthPolicyX509CombinationConfigurationArgs{
/// 			AuthenticationStrengthPolicyId: example.ObjectId,
/// 			AppliesToCombinations: pulumi.StringArray{
/// 				pulumi.String("x509CertificateMultiFactor"),
/// 			},
/// 			AllowedPolicyOids: pulumi.StringArray{
/// 				pulumi.String("1.2.3.4.5"),
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
/// terraform {
///   required_providers {
///     azuread = {
///       source = "pulumi/azuread"
///     }
///   }
/// }
///
/// resource "azuread_authentication_strength_policy" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name         = "Example Authentication Strength Policy"
///   description          = "Policy for demo purposes"
///   allowed_combinations = ["x509CertificateSingleFactor", "x509CertificateMultiFactor"]
/// }
/// resource "azuread_authentication_strength_policy_x509_combination_configuration" "single_factor" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   authentication_strength_policy_id = azuread_authentication_strength_policy.example.object_id
///   applies_to_combinations           = ["x509CertificateSingleFactor"]
///   allowed_issuer_skis               = ["9A4248C6AC8C2931AB2A86537818E92E7B6C97B6"]
/// }
/// resource "azuread_authentication_strength_policy_x509_combination_configuration" "multi_factor" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   authentication_strength_policy_id = azuread_authentication_strength_policy.example.object_id
///   applies_to_combinations           = ["x509CertificateMultiFactor"]
///   allowed_policy_oids               = ["1.2.3.4.5"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azuread.AuthenticationStrengthPolicy;
/// import com.pulumi.azuread.AuthenticationStrengthPolicyArgs;
/// import com.pulumi.azuread.AuthenticationStrengthPolicyX509CombinationConfiguration;
/// import com.pulumi.azuread.AuthenticationStrengthPolicyX509CombinationConfigurationArgs;
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
///         var example = new AuthenticationStrengthPolicy("example", AuthenticationStrengthPolicyArgs.builder()
///             .displayName("Example Authentication Strength Policy")
///             .description("Policy for demo purposes")
///             .allowedCombinations(
///                 "x509CertificateSingleFactor",
///                 "x509CertificateMultiFactor")
///             .build());
///
///         var singleFactor = new AuthenticationStrengthPolicyX509CombinationConfiguration("singleFactor", AuthenticationStrengthPolicyX509CombinationConfigurationArgs.builder()
///             .authenticationStrengthPolicyId(example.objectId())
///             .appliesToCombinations("x509CertificateSingleFactor")
///             .allowedIssuerSkis("9A4248C6AC8C2931AB2A86537818E92E7B6C97B6")
///             .build());
///
///         var multiFactor = new AuthenticationStrengthPolicyX509CombinationConfiguration("multiFactor", AuthenticationStrengthPolicyX509CombinationConfigurationArgs.builder()
///             .authenticationStrengthPolicyId(example.objectId())
///             .appliesToCombinations("x509CertificateMultiFactor")
///             .allowedPolicyOids("1.2.3.4.5")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:AuthenticationStrengthPolicy
///     properties:
///       displayName: Example Authentication Strength Policy
///       description: Policy for demo purposes
///       allowedCombinations:
///         - x509CertificateSingleFactor
///         - x509CertificateMultiFactor
///   singleFactor:
///     type: azuread:AuthenticationStrengthPolicyX509CombinationConfiguration
///     name: single_factor
///     properties:
///       authenticationStrengthPolicyId: ${example.objectId}
///       appliesToCombinations:
///         - x509CertificateSingleFactor
///       allowedIssuerSkis:
///         - 9A4248C6AC8C2931AB2A86537818E92E7B6C97B6
///   multiFactor:
///     type: azuread:AuthenticationStrengthPolicyX509CombinationConfiguration
///     name: multi_factor
///     properties:
///       authenticationStrengthPolicyId: ${example.objectId}
///       appliesToCombinations:
///         - x509CertificateMultiFactor
///       allowedPolicyOids:
///         - 1.2.3.4.5
/// ```
///
///
/// ## Import
///
/// x509 certificate combination configurations can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/authenticationStrengthPolicyX509CombinationConfiguration:AuthenticationStrengthPolicyX509CombinationConfiguration example /policies/authenticationStrengthPolicies/00000000-0000-0000-0000-000000000000/combinationConfigurations/11111111-1111-1111-1111-111111111111
/// ```
class AuthenticationStrengthPolicyX509CombinationConfiguration extends pulumi.CustomResource {
  /// A set of allowed certificate issuer subject key identifier (SKI) values. At least one of `allowedIssuerSkis` or `allowedPolicyOids` must be specified.
  late final pulumi.Output<List<String>?> allowedIssuerSkis;
  /// A set of allowed certificate policy OIDs. At least one of `allowedIssuerSkis` or `allowedPolicyOids` must be specified.
  late final pulumi.Output<List<String>?> allowedPolicyOids;
  /// A set of x509 certificate authentication method combinations this configuration applies to. Possible values are `x509CertificateSingleFactor` and `x509CertificateMultiFactor`.
  late final pulumi.Output<List<String>> appliesToCombinations;
  /// The object ID of the authentication strength policy to which this combination configuration applies. Changing this field forces a new resource to be created.
  ///
  /// &gt; Each combination specified in `appliesToCombinations` must also be specified in the `allowedCombinations` of the associated authentication strength policy, otherwise the API rejects the combination configuration.
  late final pulumi.Output<String> authenticationStrengthPolicyId;

  /// Creates a new [AuthenticationStrengthPolicyX509CombinationConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthenticationStrengthPolicyX509CombinationConfiguration]. {@macro pulumi_index_authentication_strength_policy_x509_combination_configuration_authentication_strength_policy_x509_combination_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthenticationStrengthPolicyX509CombinationConfiguration(
    String name, {
    AuthenticationStrengthPolicyX509CombinationConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/authenticationStrengthPolicyX509CombinationConfiguration:AuthenticationStrengthPolicyX509CombinationConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.11.1').merge(options),
        ) {
    allowedIssuerSkis = registerOutput<List<String>?>('allowedIssuerSkis', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    allowedPolicyOids = registerOutput<List<String>?>('allowedPolicyOids', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    appliesToCombinations = registerOutput<List<String>>('appliesToCombinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    authenticationStrengthPolicyId = registerOutput<String>('authenticationStrengthPolicyId');
  }

  /// Gets an existing [AuthenticationStrengthPolicyX509CombinationConfiguration] resource's state with the given [name] and [id].
  static AuthenticationStrengthPolicyX509CombinationConfiguration get(
    String name,
    pulumi.Input<String> id, {
    AuthenticationStrengthPolicyX509CombinationConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AuthenticationStrengthPolicyX509CombinationConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AuthenticationStrengthPolicyX509CombinationConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/authenticationStrengthPolicyX509CombinationConfiguration:AuthenticationStrengthPolicyX509CombinationConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedIssuerSkis = registerOutput<List<String>?>('allowedIssuerSkis', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    allowedPolicyOids = registerOutput<List<String>?>('allowedPolicyOids', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    appliesToCombinations = registerOutput<List<String>>('appliesToCombinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    authenticationStrengthPolicyId = registerOutput<String>('authenticationStrengthPolicyId');
  }

  /// Creates a typed reference to an existing [AuthenticationStrengthPolicyX509CombinationConfiguration] resource.
  AuthenticationStrengthPolicyX509CombinationConfiguration.reference(String urn)
    : super(
        'azuread:index/authenticationStrengthPolicyX509CombinationConfiguration:AuthenticationStrengthPolicyX509CombinationConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowedIssuerSkis = registerOutput<List<String>?>('allowedIssuerSkis', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    allowedPolicyOids = registerOutput<List<String>?>('allowedPolicyOids', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    appliesToCombinations = registerOutput<List<String>>('appliesToCombinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    authenticationStrengthPolicyId = registerOutput<String>('authenticationStrengthPolicyId');
  }
}
