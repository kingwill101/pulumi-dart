import 'package:pulumi/pulumi.dart' as pulumi;
import 'crypto_key_args.dart';
import 'crypto_key_key_access_justifications_policy.dart';
import 'crypto_key_primary.dart';
import 'crypto_key_state.dart';
import 'crypto_key_version_template.dart';

/// A `CryptoKey` represents a logical key that can be used for cryptographic operations.
///
/// &gt; **Note:** CryptoKeys cannot be deleted from Google Cloud Platform.
/// Destroying a provider-managed CryptoKey will remove it from state
/// and delete all CryptoKeyVersions, rendering the key unusable, but *will
/// not delete the resource from the project.* When the provider destroys these keys,
/// any data previously encrypted with these keys will be irrecoverable.
/// For this reason, it is strongly recommended that you use Pulumi's [protect resource option](https://www.pulumi.com/docs/concepts/options/protect/).
///
///
/// To get more information about CryptoKey, see:
///
/// * [API documentation](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys)
/// * How-to Guides
/// * [Creating a key](https://cloud.google.com/kms/docs/creating-keys#create_a_key)
///
/// ## Example Usage
///
/// ### Kms Crypto Key Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyring = new gcp.kms.KeyRing("keyring", {
///     name: "keyring-example",
///     location: "global",
/// });
/// const example_key = new gcp.kms.CryptoKey("example-key", {
///     name: "crypto-key-example",
///     keyRing: keyring.id,
///     rotationPeriod: "7776000s",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// keyring = gcp.kms.KeyRing("keyring",
///     name="keyring-example",
///     location="global")
/// example_key = gcp.kms.CryptoKey("example-key",
///     name="crypto-key-example",
///     key_ring=keyring.id,
///     rotation_period="7776000s")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var keyring = new Gcp.Kms.KeyRing("keyring", new()
///     {
///         Name = "keyring-example",
///         Location = "global",
///     });
///
///     var example_key = new Gcp.Kms.CryptoKey("example-key", new()
///     {
///         Name = "crypto-key-example",
///         KeyRing = keyring.Id,
///         RotationPeriod = "7776000s",
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
/// 		keyring, err := kms.NewKeyRing(ctx, "keyring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("keyring-example"),
/// 			Location: pulumi.String("global"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewCryptoKey(ctx, "example-key", &kms.CryptoKeyArgs{
/// 			Name:           pulumi.String("crypto-key-example"),
/// 			KeyRing:        keyring.ID().ToIDOutput().ToStringOutput(),
/// 			RotationPeriod: pulumi.String("7776000s"),
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
/// resource "gcp_kms_keyring" "keyring" {
///   name     = "keyring-example"
///   location = "global"
/// }
/// resource "gcp_kms_cryptokey" "example-key" {
///   name            = "crypto-key-example"
///   key_ring        = gcp_kms_keyring.keyring.id
///   rotation_period = "7776000s"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
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
///         var keyring = new KeyRing("keyring", KeyRingArgs.builder()
///             .name("keyring-example")
///             .location("global")
///             .build());
///
///         var example_key = new CryptoKey("example-key", CryptoKeyArgs.builder()
///             .name("crypto-key-example")
///             .keyRing(keyring.id())
///             .rotationPeriod("7776000s")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   keyring:
///     type: gcp:kms:KeyRing
///     properties:
///       name: keyring-example
///       location: global
///   example-key:
///     type: gcp:kms:CryptoKey
///     properties:
///       name: crypto-key-example
///       keyRing: ${keyring.id}
///       rotationPeriod: 7776000s
/// ```
///
/// ### Kms Crypto Key Asymmetric Sign
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyring = new gcp.kms.KeyRing("keyring", {
///     name: "keyring-example",
///     location: "global",
/// });
/// const example_asymmetric_sign_key = new gcp.kms.CryptoKey("example-asymmetric-sign-key", {
///     name: "crypto-key-example",
///     keyRing: keyring.id,
///     purpose: "ASYMMETRIC_SIGN",
///     versionTemplate: {
///         algorithm: "EC_SIGN_P384_SHA384",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// keyring = gcp.kms.KeyRing("keyring",
///     name="keyring-example",
///     location="global")
/// example_asymmetric_sign_key = gcp.kms.CryptoKey("example-asymmetric-sign-key",
///     name="crypto-key-example",
///     key_ring=keyring.id,
///     purpose="ASYMMETRIC_SIGN",
///     version_template={
///         "algorithm": "EC_SIGN_P384_SHA384",
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
///     var keyring = new Gcp.Kms.KeyRing("keyring", new()
///     {
///         Name = "keyring-example",
///         Location = "global",
///     });
///
///     var example_asymmetric_sign_key = new Gcp.Kms.CryptoKey("example-asymmetric-sign-key", new()
///     {
///         Name = "crypto-key-example",
///         KeyRing = keyring.Id,
///         Purpose = "ASYMMETRIC_SIGN",
///         VersionTemplate = new Gcp.Kms.Inputs.CryptoKeyVersionTemplateArgs
///         {
///             Algorithm = "EC_SIGN_P384_SHA384",
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
/// 		keyring, err := kms.NewKeyRing(ctx, "keyring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("keyring-example"),
/// 			Location: pulumi.String("global"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewCryptoKey(ctx, "example-asymmetric-sign-key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("crypto-key-example"),
/// 			KeyRing: keyring.ID().ToIDOutput().ToStringOutput(),
/// 			Purpose: pulumi.String("ASYMMETRIC_SIGN"),
/// 			VersionTemplate: &kms.CryptoKeyVersionTemplateArgs{
/// 				Algorithm: pulumi.String("EC_SIGN_P384_SHA384"),
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
/// resource "gcp_kms_keyring" "keyring" {
///   name     = "keyring-example"
///   location = "global"
/// }
/// resource "gcp_kms_cryptokey" "example-asymmetric-sign-key" {
///   name     = "crypto-key-example"
///   key_ring = gcp_kms_keyring.keyring.id
///   purpose  = "ASYMMETRIC_SIGN"
///   version_template = {
///     algorithm = "EC_SIGN_P384_SHA384"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.kms.inputs.CryptoKeyVersionTemplateArgs;
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
///         var keyring = new KeyRing("keyring", KeyRingArgs.builder()
///             .name("keyring-example")
///             .location("global")
///             .build());
///
///         var example_asymmetric_sign_key = new CryptoKey("example-asymmetric-sign-key", CryptoKeyArgs.builder()
///             .name("crypto-key-example")
///             .keyRing(keyring.id())
///             .purpose("ASYMMETRIC_SIGN")
///             .versionTemplate(CryptoKeyVersionTemplateArgs.builder()
///                 .algorithm("EC_SIGN_P384_SHA384")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   keyring:
///     type: gcp:kms:KeyRing
///     properties:
///       name: keyring-example
///       location: global
///   example-asymmetric-sign-key:
///     type: gcp:kms:CryptoKey
///     properties:
///       name: crypto-key-example
///       keyRing: ${keyring.id}
///       purpose: ASYMMETRIC_SIGN
///       versionTemplate:
///         algorithm: EC_SIGN_P384_SHA384
/// ```
///
///
/// ## Import
///
/// CryptoKey can be imported using any of these accepted formats:
///
/// * `{{key_ring}}/cryptoKeys/{{name}}`
/// * `{{key_ring}}/{{name}}`
///
///
/// When using the `pulumi import` command, CryptoKey can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/cryptoKey:CryptoKey default {{key_ring}}/cryptoKeys/{{name}}
/// $ pulumi import gcp:kms/cryptoKey:CryptoKey default {{key_ring}}/{{name}}
/// ```
class CryptoKey extends pulumi.CustomResource {
  /// The resource name of the backend environment associated with all CryptoKeyVersions within this CryptoKey.
  /// The resource name is in the format "projects/*/locations/*/ekmConnections/*" and only applies to "EXTERNAL_VPC" keys.
  late final pulumi.Output<String> cryptoKeyBackend;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED.
  /// If not specified at creation time, the default duration is 30 days.
  late final pulumi.Output<String> destroyScheduledDuration;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Whether this key may contain imported versions only.
  late final pulumi.Output<bool> importOnly;
  /// (Optional, Beta)
  /// The policy used for Key Access Justifications Policy Enforcement. If this
  /// field is present and this key is enrolled in Key Access Justifications
  /// Policy Enforcement, the policy will be evaluated in encrypt, decrypt, and
  /// sign operations, and the operation will fail if rejected by the policy. The
  /// policy is defined by specifying zero or more allowed justification codes.
  /// https://cloud.google.com/assured-workloads/key-access-justifications/docs/justification-codes
  /// By default, this field is absent, and all justification codes are allowed.
  /// This field is currently in beta and is subject to change.
  /// Structure is documented below.
  late final pulumi.Output<CryptoKeyKeyAccessJustificationsPolicy> keyAccessJustificationsPolicy;
  /// The KeyRing that this key belongs to.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}'`.
  late final pulumi.Output<String> keyRing;
  /// Labels with user-defined metadata to apply to this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The resource name for the CryptoKey.
  late final pulumi.Output<String> name;
  /// A copy of the primary CryptoKeyVersion that will be used by cryptoKeys.encrypt when this CryptoKey is given in EncryptRequest.name.
  /// Keys with purpose ENCRYPT_DECRYPT may have a primary. For other keys, this field will be unset.
  /// Structure is documented below.
  late final pulumi.Output<List<CryptoKeyPrimary>> primaries;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The immutable purpose of this CryptoKey. See the
  /// [purpose reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys#CryptoKeyPurpose)
  /// for possible inputs.
  /// Default value is "ENCRYPT_DECRYPT".
  late final pulumi.Output<String?> purpose;
  /// Every time this period passes, generate a new CryptoKeyVersion and set it as the primary.
  /// The first rotation will take place after the specified period. The rotation period has
  /// the format of a decimal number with up to 9 fractional digits, followed by the
  /// letter `s` (seconds). It must be greater than a day (ie, 86400).
  late final pulumi.Output<String?> rotationPeriod;
  /// If set to true, the request will create a CryptoKey without any CryptoKeyVersions.
  /// You must use the `gcp.kms.CryptoKeyVersion` resource to create a new CryptoKeyVersion
  /// or `gcp.kms.KeyRingImportJob` resource to import the CryptoKeyVersion.
  /// This field is only applicable during initial CryptoKey creation.
  late final pulumi.Output<bool?> skipInitialVersionCreation;
  /// A template describing settings for new crypto key versions.
  /// Structure is documented below.
  late final pulumi.Output<CryptoKeyVersionTemplate> versionTemplate;

  /// Creates a new [CryptoKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CryptoKey]. {@macro pulumi_kms_crypto_key_crypto_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CryptoKey(
    String name, {
    CryptoKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/cryptoKey:CryptoKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    cryptoKeyBackend = registerOutput<String>('cryptoKeyBackend');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    destroyScheduledDuration = registerOutput<String>('destroyScheduledDuration');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    importOnly = registerOutput<bool>('importOnly');
    keyAccessJustificationsPolicy = registerOutput<CryptoKeyKeyAccessJustificationsPolicy>('keyAccessJustificationsPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CryptoKeyKeyAccessJustificationsPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyRing = registerOutput<String>('keyRing');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    primaries = registerOutput<List<CryptoKeyPrimary>>('primaries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CryptoKeyPrimary>(guardedValue, (value) => CryptoKeyPrimary.fromMap((value as Map).cast<String, dynamic>())); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    purpose = registerOutput<String?>('purpose');
    rotationPeriod = registerOutput<String?>('rotationPeriod');
    skipInitialVersionCreation = registerOutput<bool?>('skipInitialVersionCreation');
    versionTemplate = registerOutput<CryptoKeyVersionTemplate>('versionTemplate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CryptoKeyVersionTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [CryptoKey] resource's state with the given [name] and [id].
  static CryptoKey get(
    String name,
    pulumi.Input<String> id, {
    CryptoKeyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CryptoKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CryptoKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/cryptoKey:CryptoKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cryptoKeyBackend = registerOutput<String>('cryptoKeyBackend');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    destroyScheduledDuration = registerOutput<String>('destroyScheduledDuration');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    importOnly = registerOutput<bool>('importOnly');
    keyAccessJustificationsPolicy = registerOutput<CryptoKeyKeyAccessJustificationsPolicy>('keyAccessJustificationsPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CryptoKeyKeyAccessJustificationsPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyRing = registerOutput<String>('keyRing');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    primaries = registerOutput<List<CryptoKeyPrimary>>('primaries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CryptoKeyPrimary>(guardedValue, (value) => CryptoKeyPrimary.fromMap((value as Map).cast<String, dynamic>())); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    purpose = registerOutput<String?>('purpose');
    rotationPeriod = registerOutput<String?>('rotationPeriod');
    skipInitialVersionCreation = registerOutput<bool?>('skipInitialVersionCreation');
    versionTemplate = registerOutput<CryptoKeyVersionTemplate>('versionTemplate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CryptoKeyVersionTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [CryptoKey] resource.
  CryptoKey.reference(String urn)
    : super(
        'gcp:kms/cryptoKey:CryptoKey',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    cryptoKeyBackend = registerOutput<String>('cryptoKeyBackend');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    destroyScheduledDuration = registerOutput<String>('destroyScheduledDuration');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    importOnly = registerOutput<bool>('importOnly');
    keyAccessJustificationsPolicy = registerOutput<CryptoKeyKeyAccessJustificationsPolicy>('keyAccessJustificationsPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CryptoKeyKeyAccessJustificationsPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyRing = registerOutput<String>('keyRing');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    primaries = registerOutput<List<CryptoKeyPrimary>>('primaries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CryptoKeyPrimary>(guardedValue, (value) => CryptoKeyPrimary.fromMap((value as Map).cast<String, dynamic>())); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    purpose = registerOutput<String?>('purpose');
    rotationPeriod = registerOutput<String?>('rotationPeriod');
    skipInitialVersionCreation = registerOutput<bool?>('skipInitialVersionCreation');
    versionTemplate = registerOutput<CryptoKeyVersionTemplate>('versionTemplate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CryptoKeyVersionTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
