import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication_strength_policy_fido2_combination_configuration_args.dart';
import 'authentication_strength_policy_fido2_combination_configuration_state.dart';

/// Manages a FIDO2 combination configuration for an authentication strength policy within Azure Active Directory.
///
/// A FIDO2 combination configuration restricts which security keys, identified by their Authenticator Attestation GUID (AAGUID), satisfy the `fido2` authentication method combination. A policy supports at most one FIDO2 combination configuration.
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
///     allowedCombinations: ["fido2"],
/// });
/// const exampleAuthenticationStrengthPolicyFido2CombinationConfiguration = new azuread.AuthenticationStrengthPolicyFido2CombinationConfiguration("example", {
///     authenticationStrengthPolicyId: example.objectId,
///     allowedAaguids: [
///         "de1e552d-db1d-4423-a619-566b625cdc84",
///         "90a3ccdf-635c-4729-a248-9b709135078f",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.AuthenticationStrengthPolicy("example",
///     display_name="Example Authentication Strength Policy",
///     description="Policy for demo purposes",
///     allowed_combinations=["fido2"])
/// example_authentication_strength_policy_fido2_combination_configuration = azuread.AuthenticationStrengthPolicyFido2CombinationConfiguration("example",
///     authentication_strength_policy_id=example.object_id,
///     allowed_aaguids=[
///         "de1e552d-db1d-4423-a619-566b625cdc84",
///         "90a3ccdf-635c-4729-a248-9b709135078f",
///     ])
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
///             "fido2",
///         },
///     });
///
///     var exampleAuthenticationStrengthPolicyFido2CombinationConfiguration = new AzureAD.AuthenticationStrengthPolicyFido2CombinationConfiguration("example", new()
///     {
///         AuthenticationStrengthPolicyId = example.ObjectId,
///         AllowedAaguids = new[]
///         {
///             "de1e552d-db1d-4423-a619-566b625cdc84",
///             "90a3ccdf-635c-4729-a248-9b709135078f",
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
/// 				pulumi.String("fido2"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewAuthenticationStrengthPolicyFido2CombinationConfiguration(ctx, "example", &azuread.AuthenticationStrengthPolicyFido2CombinationConfigurationArgs{
/// 			AuthenticationStrengthPolicyId: example.ObjectId,
/// 			AllowedAaguids: pulumi.StringArray{
/// 				pulumi.String("de1e552d-db1d-4423-a619-566b625cdc84"),
/// 				pulumi.String("90a3ccdf-635c-4729-a248-9b709135078f"),
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
///   allowed_combinations = ["fido2"]
/// }
/// resource "azuread_authentication_strength_policy_fido2_combination_configuration" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   authentication_strength_policy_id = azuread_authentication_strength_policy.example.object_id
///   allowed_aaguids                   = ["de1e552d-db1d-4423-a619-566b625cdc84", "90a3ccdf-635c-4729-a248-9b709135078f"]
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
/// import com.pulumi.azuread.AuthenticationStrengthPolicyFido2CombinationConfiguration;
/// import com.pulumi.azuread.AuthenticationStrengthPolicyFido2CombinationConfigurationArgs;
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
///             .allowedCombinations("fido2")
///             .build());
///
///         var exampleAuthenticationStrengthPolicyFido2CombinationConfiguration = new AuthenticationStrengthPolicyFido2CombinationConfiguration("exampleAuthenticationStrengthPolicyFido2CombinationConfiguration", AuthenticationStrengthPolicyFido2CombinationConfigurationArgs.builder()
///             .authenticationStrengthPolicyId(example.objectId())
///             .allowedAaguids(
///                 "de1e552d-db1d-4423-a619-566b625cdc84",
///                 "90a3ccdf-635c-4729-a248-9b709135078f")
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
///         - fido2
///   exampleAuthenticationStrengthPolicyFido2CombinationConfiguration:
///     type: azuread:AuthenticationStrengthPolicyFido2CombinationConfiguration
///     name: example
///     properties:
///       authenticationStrengthPolicyId: ${example.objectId}
///       allowedAaguids:
///         - de1e552d-db1d-4423-a619-566b625cdc84
///         - 90a3ccdf-635c-4729-a248-9b709135078f
/// ```
///
///
/// ## Import
///
/// FIDO2 combination configurations can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/authenticationStrengthPolicyFido2CombinationConfiguration:AuthenticationStrengthPolicyFido2CombinationConfiguration example /policies/authenticationStrengthPolicies/00000000-0000-0000-0000-000000000000/combinationConfigurations/11111111-1111-1111-1111-111111111111
/// ```
class AuthenticationStrengthPolicyFido2CombinationConfiguration extends pulumi.CustomResource {
  /// A set of Authenticator Attestation GUIDs (AAGUIDs) allowed to satisfy the `fido2` combination.
  late final pulumi.Output<List<String>> allowedAaguids;
  /// The object ID of the authentication strength policy to which this combination configuration applies. Changing this field forces a new resource to be created.
  ///
  /// &gt; The associated authentication strength policy must specify `fido2` in its `allowedCombinations`, otherwise the API rejects the combination configuration.
  late final pulumi.Output<String> authenticationStrengthPolicyId;

  /// Creates a new [AuthenticationStrengthPolicyFido2CombinationConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthenticationStrengthPolicyFido2CombinationConfiguration]. {@macro pulumi_index_authentication_strength_policy_fido2_combination_configuration_authentication_strength_policy_fido2_combination_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthenticationStrengthPolicyFido2CombinationConfiguration(
    String name, {
    AuthenticationStrengthPolicyFido2CombinationConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/authenticationStrengthPolicyFido2CombinationConfiguration:AuthenticationStrengthPolicyFido2CombinationConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.11.1').merge(options),
        ) {
    allowedAaguids = registerOutput<List<String>>('allowedAaguids', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    authenticationStrengthPolicyId = registerOutput<String>('authenticationStrengthPolicyId');
  }

  /// Gets an existing [AuthenticationStrengthPolicyFido2CombinationConfiguration] resource's state with the given [name] and [id].
  static AuthenticationStrengthPolicyFido2CombinationConfiguration get(
    String name,
    pulumi.Input<String> id, {
    AuthenticationStrengthPolicyFido2CombinationConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AuthenticationStrengthPolicyFido2CombinationConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AuthenticationStrengthPolicyFido2CombinationConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/authenticationStrengthPolicyFido2CombinationConfiguration:AuthenticationStrengthPolicyFido2CombinationConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedAaguids = registerOutput<List<String>>('allowedAaguids', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    authenticationStrengthPolicyId = registerOutput<String>('authenticationStrengthPolicyId');
  }

  /// Creates a typed reference to an existing [AuthenticationStrengthPolicyFido2CombinationConfiguration] resource.
  AuthenticationStrengthPolicyFido2CombinationConfiguration.reference(String urn)
    : super(
        'azuread:index/authenticationStrengthPolicyFido2CombinationConfiguration:AuthenticationStrengthPolicyFido2CombinationConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowedAaguids = registerOutput<List<String>>('allowedAaguids', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    authenticationStrengthPolicyId = registerOutput<String>('authenticationStrengthPolicyId');
  }
}
