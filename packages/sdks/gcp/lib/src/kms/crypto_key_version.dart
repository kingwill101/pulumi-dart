import 'package:pulumi/pulumi.dart' as pulumi;
import 'crypto_key_version_args.dart';
import 'crypto_key_version_external_protection_level_options.dart';
import 'crypto_key_version_state.dart';

/// A `CryptoKeyVersion` represents an individual cryptographic key, and the associated key material.
///
///
/// Destroying a cryptoKeyVersion will not delete the resource from the project.
///
///
/// To get more information about CryptoKeyVersion, see:
///
/// * [API documentation](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions)
/// * How-to Guides
/// * [Creating a key Version](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions/create)
///
/// ## Example Usage
///
/// ### Kms Crypto Key Version Basic
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
/// const cryptokey = new gcp.kms.CryptoKey("cryptokey", {
///     name: "crypto-key-example",
///     keyRing: keyring.id,
///     rotationPeriod: "7776000s",
/// });
/// const example_key = new gcp.kms.CryptoKeyVersion("example-key", {cryptoKey: cryptokey.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// keyring = gcp.kms.KeyRing("keyring",
///     name="keyring-example",
///     location="global")
/// cryptokey = gcp.kms.CryptoKey("cryptokey",
///     name="crypto-key-example",
///     key_ring=keyring.id,
///     rotation_period="7776000s")
/// example_key = gcp.kms.CryptoKeyVersion("example-key", crypto_key=cryptokey.id)
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
///     var cryptokey = new Gcp.Kms.CryptoKey("cryptokey", new()
///     {
///         Name = "crypto-key-example",
///         KeyRing = keyring.Id,
///         RotationPeriod = "7776000s",
///     });
///
///     var example_key = new Gcp.Kms.CryptoKeyVersion("example-key", new()
///     {
///         CryptoKey = cryptokey.Id,
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
/// 		cryptokey, err := kms.NewCryptoKey(ctx, "cryptokey", &kms.CryptoKeyArgs{
/// 			Name:           pulumi.String("crypto-key-example"),
/// 			KeyRing:        keyring.ID(),
/// 			RotationPeriod: pulumi.String("7776000s"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewCryptoKeyVersion(ctx, "example-key", &kms.CryptoKeyVersionArgs{
/// 			CryptoKey: cryptokey.ID(),
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
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.kms.CryptoKeyVersion;
/// import com.pulumi.gcp.kms.CryptoKeyVersionArgs;
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
///         var keyring = new KeyRing("keyring", KeyRingArgs.builder()
///             .name("keyring-example")
///             .location("global")
///             .build());
///
///         var cryptokey = new CryptoKey("cryptokey", CryptoKeyArgs.builder()
///             .name("crypto-key-example")
///             .keyRing(keyring.id())
///             .rotationPeriod("7776000s")
///             .build());
///
///         var example_key = new CryptoKeyVersion("example-key", CryptoKeyVersionArgs.builder()
///             .cryptoKey(cryptokey.id())
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
///   cryptokey:
///     type: gcp:kms:CryptoKey
///     properties:
///       name: crypto-key-example
///       keyRing: ${keyring.id}
///       rotationPeriod: 7776000s
///   example-key:
///     type: gcp:kms:CryptoKeyVersion
///     properties:
///       cryptoKey: ${cryptokey.id}
/// ```
///
///
/// ## Import
///
/// CryptoKeyVersion can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, CryptoKeyVersion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/cryptoKeyVersion:CryptoKeyVersion default {{name}}
/// ```
class CryptoKeyVersion extends pulumi.CustomResource {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  late final pulumi.Output<String> algorithm;
  /// Statement that was generated and signed by the HSM at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google.
  /// Only provided for key versions with protectionLevel HSM.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> attestations;
  /// The name of the cryptoKey associated with the CryptoKeyVersions.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyring}}/cryptoKeys/{{cryptoKey}}'`
  late final pulumi.Output<String> cryptoKey;
  /// ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  /// Structure is documented below.
  late final pulumi.Output<CryptoKeyVersionExternalProtectionLevelOptions?> externalProtectionLevelOptions;
  /// The time this CryptoKeyVersion key material was generated
  late final pulumi.Output<String> generateTime;
  /// The resource name for this CryptoKeyVersion.
  late final pulumi.Output<String> name;
  /// The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion.
  late final pulumi.Output<String> protectionLevel;
  /// The current state of the CryptoKeyVersion. Note: you can only specify this field to manually `ENABLE` or `DISABLE` the CryptoKeyVersion,
  /// otherwise the value of this field is always retrieved automatically.
  /// Possible values are: `PENDING_GENERATION`, `ENABLED`, `DISABLED`, `DESTROYED`, `DESTROY_SCHEDULED`, `PENDING_IMPORT`, `IMPORT_FAILED`.
  late final pulumi.Output<String> state;

  /// Creates a new [CryptoKeyVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CryptoKeyVersion]. {@macro pulumi_kms_crypto_key_version_crypto_key_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CryptoKeyVersion(
    String name, {
    CryptoKeyVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/cryptoKeyVersion:CryptoKeyVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    algorithm = registerOutput<String>('algorithm');
    attestations = registerOutput<List<Map<String, dynamic>>>('attestations');
    cryptoKey = registerOutput<String>('cryptoKey');
    externalProtectionLevelOptions = registerOutput<CryptoKeyVersionExternalProtectionLevelOptions?>('externalProtectionLevelOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CryptoKeyVersionExternalProtectionLevelOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    generateTime = registerOutput<String>('generateTime');
    this.name = registerOutput<String>('name');
    protectionLevel = registerOutput<String>('protectionLevel');
    state = registerOutput<String>('state');
  }

  /// Gets an existing [CryptoKeyVersion] resource's state with the given [name] and [id].
  static CryptoKeyVersion get(
    String name,
    pulumi.Input<String> id, {
    CryptoKeyVersionState? state,
  }) {
    return CryptoKeyVersion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CryptoKeyVersion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/cryptoKeyVersion:CryptoKeyVersion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    algorithm = registerOutput<String>('algorithm');
    attestations = registerOutput<List<Map<String, dynamic>>>('attestations');
    cryptoKey = registerOutput<String>('cryptoKey');
    externalProtectionLevelOptions = registerOutput<CryptoKeyVersionExternalProtectionLevelOptions?>('externalProtectionLevelOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CryptoKeyVersionExternalProtectionLevelOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    generateTime = registerOutput<String>('generateTime');
    this.name = registerOutput<String>('name');
    protectionLevel = registerOutput<String>('protectionLevel');
    this.state = registerOutput<String>('state');
  }
}
