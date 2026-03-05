import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_hardware_security_module_key_rotation_policy_args.dart';
import 'managed_hardware_security_module_key_rotation_policy_state.dart';

/// Manages a Managed HSM Key rotation policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.keyvault.ManagedHardwareSecurityModuleKey("example", {
///     name: "example-key",
///     managedHsmId: exampleAzurermKeyVaultManagedHardwareSecurityModule.id,
///     keyType: "EC-HSM",
///     curve: "P-521",
///     keyOpts: ["sign"],
/// });
/// const exampleManagedHardwareSecurityModuleKeyRotationPolicy = new azure.keyvault.ManagedHardwareSecurityModuleKeyRotationPolicy("example", {
///     managedHsmKeyId: example.id,
///     expireAfter: "P60D",
///     timeBeforeExpiry: "P30D",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.keyvault.ManagedHardwareSecurityModuleKey("example",
///     name="example-key",
///     managed_hsm_id=example_azurerm_key_vault_managed_hardware_security_module["id"],
///     key_type="EC-HSM",
///     curve="P-521",
///     key_opts=["sign"])
/// example_managed_hardware_security_module_key_rotation_policy = azure.keyvault.ManagedHardwareSecurityModuleKeyRotationPolicy("example",
///     managed_hsm_key_id=example.id,
///     expire_after="P60D",
///     time_before_expiry="P30D")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.KeyVault.ManagedHardwareSecurityModuleKey("example", new()
///     {
///         Name = "example-key",
///         ManagedHsmId = exampleAzurermKeyVaultManagedHardwareSecurityModule.Id,
///         KeyType = "EC-HSM",
///         Curve = "P-521",
///         KeyOpts = new[]
///         {
///             "sign",
///         },
///     });
///
///     var exampleManagedHardwareSecurityModuleKeyRotationPolicy = new Azure.KeyVault.ManagedHardwareSecurityModuleKeyRotationPolicy("example", new()
///     {
///         ManagedHsmKeyId = example.Id,
///         ExpireAfter = "P60D",
///         TimeBeforeExpiry = "P30D",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := keyvault.NewManagedHardwareSecurityModuleKey(ctx, "example", &keyvault.ManagedHardwareSecurityModuleKeyArgs{
/// 			Name:         pulumi.String("example-key"),
/// 			ManagedHsmId: pulumi.Any(exampleAzurermKeyVaultManagedHardwareSecurityModule.Id),
/// 			KeyType:      pulumi.String("EC-HSM"),
/// 			Curve:        pulumi.String("P-521"),
/// 			KeyOpts: pulumi.StringArray{
/// 				pulumi.String("sign"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keyvault.NewManagedHardwareSecurityModuleKeyRotationPolicy(ctx, "example", &keyvault.ManagedHardwareSecurityModuleKeyRotationPolicyArgs{
/// 			ManagedHsmKeyId:  example.ID(),
/// 			ExpireAfter:      pulumi.String("P60D"),
/// 			TimeBeforeExpiry: pulumi.String("P30D"),
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
/// import com.pulumi.azure.keyvault.ManagedHardwareSecurityModuleKey;
/// import com.pulumi.azure.keyvault.ManagedHardwareSecurityModuleKeyArgs;
/// import com.pulumi.azure.keyvault.ManagedHardwareSecurityModuleKeyRotationPolicy;
/// import com.pulumi.azure.keyvault.ManagedHardwareSecurityModuleKeyRotationPolicyArgs;
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
///         var example = new ManagedHardwareSecurityModuleKey("example", ManagedHardwareSecurityModuleKeyArgs.builder()
///             .name("example-key")
///             .managedHsmId(exampleAzurermKeyVaultManagedHardwareSecurityModule.id())
///             .keyType("EC-HSM")
///             .curve("P-521")
///             .keyOpts("sign")
///             .build());
///
///         var exampleManagedHardwareSecurityModuleKeyRotationPolicy = new ManagedHardwareSecurityModuleKeyRotationPolicy("exampleManagedHardwareSecurityModuleKeyRotationPolicy", ManagedHardwareSecurityModuleKeyRotationPolicyArgs.builder()
///             .managedHsmKeyId(example.id())
///             .expireAfter("P60D")
///             .timeBeforeExpiry("P30D")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:keyvault:ManagedHardwareSecurityModuleKey
///     properties:
///       name: example-key
///       managedHsmId: ${exampleAzurermKeyVaultManagedHardwareSecurityModule.id}
///       keyType: EC-HSM
///       curve: P-521
///       keyOpts:
///         - sign
///   exampleManagedHardwareSecurityModuleKeyRotationPolicy:
///     type: azure:keyvault:ManagedHardwareSecurityModuleKeyRotationPolicy
///     name: example
///     properties:
///       managedHsmKeyId: ${example.id}
///       expireAfter: P60D
///       timeBeforeExpiry: P30D
/// ```
///
///
/// ## Import
///
/// Managed HSM Key rotation policy can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:keyvault/managedHardwareSecurityModuleKeyRotationPolicy:ManagedHardwareSecurityModuleKeyRotationPolicy example https://example-hsm.managedhsm.azure.net/keys/example
/// ```
class ManagedHardwareSecurityModuleKeyRotationPolicy extends pulumi.CustomResource {
  /// Specify the expiration duration on a newly rotated key as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). The minimum duration is `P28D`.
  late final pulumi.Output<String> expireAfter;
  /// The ID of the Managed HSM Key. Changing this forces a new Managed HSM Key rotation policy to be created.
  late final pulumi.Output<String> managedHsmKeyId;
  /// Rotate automatically at a duration after key creation as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). Exactly one of `time_after_creation` or `time_before_expiry` should be specified.
  late final pulumi.Output<String?> timeAfterCreation;
  /// Rotate automatically at a duration before key expiry as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). Exactly one of `time_after_creation` or `time_before_expiry` should be specified.
  late final pulumi.Output<String?> timeBeforeExpiry;

  /// Creates a new [ManagedHardwareSecurityModuleKeyRotationPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedHardwareSecurityModuleKeyRotationPolicy]. {@macro pulumi_keyvault_managed_hardware_security_module_key_rotation_policy_managed_hardware_security_module_key_rotation_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedHardwareSecurityModuleKeyRotationPolicy(
    String name, {
    ManagedHardwareSecurityModuleKeyRotationPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:keyvault/managedHardwareSecurityModuleKeyRotationPolicy:ManagedHardwareSecurityModuleKeyRotationPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    expireAfter = registerOutput<String>('expireAfter');
    managedHsmKeyId = registerOutput<String>('managedHsmKeyId');
    timeAfterCreation = registerOutput<String?>('timeAfterCreation');
    timeBeforeExpiry = registerOutput<String?>('timeBeforeExpiry');
  }

  /// Gets an existing [ManagedHardwareSecurityModuleKeyRotationPolicy] resource's state with the given [name] and [id].
  static ManagedHardwareSecurityModuleKeyRotationPolicy get(
    String name,
    pulumi.Input<String> id, {
    ManagedHardwareSecurityModuleKeyRotationPolicyState? state,
  }) {
    return ManagedHardwareSecurityModuleKeyRotationPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedHardwareSecurityModuleKeyRotationPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:keyvault/managedHardwareSecurityModuleKeyRotationPolicy:ManagedHardwareSecurityModuleKeyRotationPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    expireAfter = registerOutput<String>('expireAfter');
    managedHsmKeyId = registerOutput<String>('managedHsmKeyId');
    timeAfterCreation = registerOutput<String?>('timeAfterCreation');
    timeBeforeExpiry = registerOutput<String?>('timeBeforeExpiry');
  }
}
