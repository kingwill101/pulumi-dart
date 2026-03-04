import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autokey_config_args.dart';
import 'get_autokey_config_result.dart';
import 'get_crypto_key_iam_policy_args.dart';
import 'get_crypto_key_iam_policy_result.dart';
import 'get_crypto_key_latest_version_args.dart';
import 'get_crypto_key_latest_version_result.dart';
import 'get_crypto_key_versions_args.dart';
import 'get_crypto_key_versions_result.dart';
import 'get_crypto_keys_args.dart';
import 'get_crypto_keys_result.dart';
import 'get_ekm_connection_iam_policy_args.dart';
import 'get_ekm_connection_iam_policy_result.dart';
import 'get_key_handle_args.dart';
import 'get_key_handle_result.dart';
import 'get_key_handles_args.dart';
import 'get_key_handles_result.dart';
import 'get_key_ring_iam_policy_args.dart';
import 'get_key_ring_iam_policy_result.dart';
import 'get_key_rings_args.dart';
import 'get_key_rings_result.dart';
import 'get_kmscrypto_key_args.dart';
import 'get_kmscrypto_key_result.dart';
import 'get_kmscrypto_key_version_args.dart';
import 'get_kmscrypto_key_version_result.dart';
import 'get_kmskey_ring_args.dart';
import 'get_kmskey_ring_result.dart';
import 'get_kmssecret_args.dart';
import 'get_kmssecret_asymmetric_args.dart';
import 'get_kmssecret_asymmetric_result.dart';
import 'get_kmssecret_ciphertext_args.dart';
import 'get_kmssecret_ciphertext_result.dart';
import 'get_kmssecret_result.dart';

/// Provides access to Google Cloud Platform KMS AutokeyConfig. A AutokeyConfig is a Cloud KMS resource that helps you safely span the separation of duties to create new Cloud KMS keys for CMEK using Autokey.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/reference/rest/v1/folders)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyHandles).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myAutokeyConfig = gcp.kms.getAutokeyConfig({
///     folder: "folders/123",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_autokey_config = gcp.kms.get_autokey_config(folder="folders/123")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myAutokeyConfig = Gcp.Kms.GetAutokeyConfig.Invoke(new()
///     {
///         Folder = "folders/123",
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
/// 		_, err := kms.LookupAutokeyConfig(ctx, &kms.LookupAutokeyConfigArgs{
/// 			Folder: "folders/123",
/// 		}, nil)
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
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetAutokeyConfigArgs;
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
///         final var myAutokeyConfig = KmsFunctions.getAutokeyConfig(GetAutokeyConfigArgs.builder()
///             .folder("folders/123")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myAutokeyConfig:
///     fn::invoke:
///       function: gcp:kms:getAutokeyConfig
///       arguments:
///         folder: folders/123
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_autokey_config_get_autokey_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutokeyConfigResult> getAutokeyConfig(
  GetAutokeyConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getAutokeyConfig:getAutokeyConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutokeyConfigResult.fromMap(result);
}

/// Retrieves the current IAM policy data for a Google Cloud KMS crypto key.
///
/// ## example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.kms.getCryptoKeyIamPolicy({
///     cryptoKeyId: cryptoKey.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.kms.get_crypto_key_iam_policy(crypto_key_id=crypto_key["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Gcp.Kms.GetCryptoKeyIamPolicy.Invoke(new()
///     {
///         CryptoKeyId = cryptoKey.Id,
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
/// 		_, err := kms.GetCryptoKeyIamPolicy(ctx, &kms.GetCryptoKeyIamPolicyArgs{
/// 			CryptoKeyId: cryptoKey.Id,
/// 		}, nil)
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
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetCryptoKeyIamPolicyArgs;
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
///         final var foo = KmsFunctions.getCryptoKeyIamPolicy(GetCryptoKeyIamPolicyArgs.builder()
///             .cryptoKeyId(cryptoKey.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: gcp:kms:getCryptoKeyIamPolicy
///       arguments:
///         cryptoKeyId: ${cryptoKey.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_crypto_key_iam_policy_get_crypto_key_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCryptoKeyIamPolicyResult> getCryptoKeyIamPolicy(
  GetCryptoKeyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getCryptoKeyIamPolicy:getCryptoKeyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCryptoKeyIamPolicyResult.fromMap(result);
}

/// Provides access to the latest Google Cloud Platform KMS CryptoKeyVersion in a CryptoKey. For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/object-hierarchy#key_version)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myKeyRing = gcp.kms.getKMSKeyRing({
///     name: "my-key-ring",
///     location: "us-central1",
/// });
/// const myCryptoKey = myKeyRing.then(myKeyRing => gcp.kms.getKMSCryptoKey({
///     name: "my-crypto-key",
///     keyRing: myKeyRing.id,
/// }));
/// const myCryptoKeyLatestVersion = gcp.kms.getCryptoKeyLatestVersion({
///     cryptoKey: myKey.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_key_ring = gcp.kms.get_kms_key_ring(name="my-key-ring",
///     location="us-central1")
/// my_crypto_key = gcp.kms.get_kms_crypto_key(name="my-crypto-key",
///     key_ring=my_key_ring.id)
/// my_crypto_key_latest_version = gcp.kms.get_crypto_key_latest_version(crypto_key=my_key["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myKeyRing = Gcp.Kms.GetKMSKeyRing.Invoke(new()
///     {
///         Name = "my-key-ring",
///         Location = "us-central1",
///     });
///
///     var myCryptoKey = Gcp.Kms.GetKMSCryptoKey.Invoke(new()
///     {
///         Name = "my-crypto-key",
///         KeyRing = myKeyRing.Apply(getKMSKeyRingResult => getKMSKeyRingResult.Id),
///     });
///
///     var myCryptoKeyLatestVersion = Gcp.Kms.GetCryptoKeyLatestVersion.Invoke(new()
///     {
///         CryptoKey = myKey.Id,
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
/// 		myKeyRing, err := kms.GetKMSKeyRing(ctx, &kms.GetKMSKeyRingArgs{
/// 			Name:     "my-key-ring",
/// 			Location: "us-central1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.GetKMSCryptoKey(ctx, &kms.GetKMSCryptoKeyArgs{
/// 			Name:    "my-crypto-key",
/// 			KeyRing: myKeyRing.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.GetCryptoKeyLatestVersion(ctx, &kms.GetCryptoKeyLatestVersionArgs{
/// 			CryptoKey: myKey.Id,
/// 		}, nil)
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
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKMSKeyRingArgs;
/// import com.pulumi.gcp.kms.inputs.GetKMSCryptoKeyArgs;
/// import com.pulumi.gcp.kms.inputs.GetCryptoKeyLatestVersionArgs;
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
///         final var myKeyRing = KmsFunctions.getKMSKeyRing(GetKMSKeyRingArgs.builder()
///             .name("my-key-ring")
///             .location("us-central1")
///             .build());
///
///         final var myCryptoKey = KmsFunctions.getKMSCryptoKey(GetKMSCryptoKeyArgs.builder()
///             .name("my-crypto-key")
///             .keyRing(myKeyRing.id())
///             .build());
///
///         final var myCryptoKeyLatestVersion = KmsFunctions.getCryptoKeyLatestVersion(GetCryptoKeyLatestVersionArgs.builder()
///             .cryptoKey(myKey.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myKeyRing:
///     fn::invoke:
///       function: gcp:kms:getKMSKeyRing
///       arguments:
///         name: my-key-ring
///         location: us-central1
///   myCryptoKey:
///     fn::invoke:
///       function: gcp:kms:getKMSCryptoKey
///       arguments:
///         name: my-crypto-key
///         keyRing: ${myKeyRing.id}
///   myCryptoKeyLatestVersion:
///     fn::invoke:
///       function: gcp:kms:getCryptoKeyLatestVersion
///       arguments:
///         cryptoKey: ${myKey.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_crypto_key_latest_version_get_crypto_key_latest_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCryptoKeyLatestVersionResult> getCryptoKeyLatestVersion(
  GetCryptoKeyLatestVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getCryptoKeyLatestVersion:getCryptoKeyLatestVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCryptoKeyLatestVersionResult.fromMap(result);
}

/// Provides access to Google Cloud Platform KMS CryptoKeyVersions. For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/object-hierarchy#key_version)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions).
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myKeyRing = gcp.kms.getKMSKeyRing({
///     name: "my-key-ring",
///     location: "us-central1",
/// });
/// const myCryptoKey = myKeyRing.then(myKeyRing => gcp.kms.getKMSCryptoKey({
///     name: "my-crypto-key",
///     keyRing: myKeyRing.id,
/// }));
/// const myCryptoKeyVersions = gcp.kms.getCryptoKeyVersions({
///     cryptoKey: myKey.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_key_ring = gcp.kms.get_kms_key_ring(name="my-key-ring",
///     location="us-central1")
/// my_crypto_key = gcp.kms.get_kms_crypto_key(name="my-crypto-key",
///     key_ring=my_key_ring.id)
/// my_crypto_key_versions = gcp.kms.get_crypto_key_versions(crypto_key=my_key["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myKeyRing = Gcp.Kms.GetKMSKeyRing.Invoke(new()
///     {
///         Name = "my-key-ring",
///         Location = "us-central1",
///     });
///
///     var myCryptoKey = Gcp.Kms.GetKMSCryptoKey.Invoke(new()
///     {
///         Name = "my-crypto-key",
///         KeyRing = myKeyRing.Apply(getKMSKeyRingResult => getKMSKeyRingResult.Id),
///     });
///
///     var myCryptoKeyVersions = Gcp.Kms.GetCryptoKeyVersions.Invoke(new()
///     {
///         CryptoKey = myKey.Id,
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
/// 		myKeyRing, err := kms.GetKMSKeyRing(ctx, &kms.GetKMSKeyRingArgs{
/// 			Name:     "my-key-ring",
/// 			Location: "us-central1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.GetKMSCryptoKey(ctx, &kms.GetKMSCryptoKeyArgs{
/// 			Name:    "my-crypto-key",
/// 			KeyRing: myKeyRing.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.GetCryptoKeyVersions(ctx, &kms.GetCryptoKeyVersionsArgs{
/// 			CryptoKey: myKey.Id,
/// 		}, nil)
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
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKMSKeyRingArgs;
/// import com.pulumi.gcp.kms.inputs.GetKMSCryptoKeyArgs;
/// import com.pulumi.gcp.kms.inputs.GetCryptoKeyVersionsArgs;
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
///         final var myKeyRing = KmsFunctions.getKMSKeyRing(GetKMSKeyRingArgs.builder()
///             .name("my-key-ring")
///             .location("us-central1")
///             .build());
///
///         final var myCryptoKey = KmsFunctions.getKMSCryptoKey(GetKMSCryptoKeyArgs.builder()
///             .name("my-crypto-key")
///             .keyRing(myKeyRing.id())
///             .build());
///
///         final var myCryptoKeyVersions = KmsFunctions.getCryptoKeyVersions(GetCryptoKeyVersionsArgs.builder()
///             .cryptoKey(myKey.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myKeyRing:
///     fn::invoke:
///       function: gcp:kms:getKMSKeyRing
///       arguments:
///         name: my-key-ring
///         location: us-central1
///   myCryptoKey:
///     fn::invoke:
///       function: gcp:kms:getKMSCryptoKey
///       arguments:
///         name: my-crypto-key
///         keyRing: ${myKeyRing.id}
///   myCryptoKeyVersions:
///     fn::invoke:
///       function: gcp:kms:getCryptoKeyVersions
///       arguments:
///         cryptoKey: ${myKey.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_crypto_key_versions_get_crypto_key_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCryptoKeyVersionsResult> getCryptoKeyVersions(
  GetCryptoKeyVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getCryptoKeyVersions:getCryptoKeyVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCryptoKeyVersionsResult.fromMap(result);
}

/// Provides access to all Google Cloud Platform KMS CryptoKeys in a given KeyRing. For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/object-hierarchy#key)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys).
///
/// A CryptoKey is an interface to key material which can be used to encrypt and decrypt data. A CryptoKey belongs to a
/// Google Cloud KMS KeyRing.
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_crypto_keys_get_crypto_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCryptoKeysResult> getCryptoKeys(
  GetCryptoKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getCryptoKeys:getCryptoKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCryptoKeysResult.fromMap(result);
}

/// Retrieves the current IAM policy data for ekmconnection
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.kms.getEkmConnectionIamPolicy({
///     project: example_ekmconnection.project,
///     location: example_ekmconnection.location,
///     name: example_ekmconnection.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.kms.get_ekm_connection_iam_policy(project=example_ekmconnection["project"],
///     location=example_ekmconnection["location"],
///     name=example_ekmconnection["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Kms.GetEkmConnectionIamPolicy.Invoke(new()
///     {
///         Project = example_ekmconnection.Project,
///         Location = example_ekmconnection.Location,
///         Name = example_ekmconnection.Name,
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
/// 		_, err := kms.LookupEkmConnectionIamPolicy(ctx, &kms.LookupEkmConnectionIamPolicyArgs{
/// 			Project:  pulumi.StringRef(example_ekmconnection.Project),
/// 			Location: pulumi.StringRef(example_ekmconnection.Location),
/// 			Name:     example_ekmconnection.Name,
/// 		}, nil)
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
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetEkmConnectionIamPolicyArgs;
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
///         final var policy = KmsFunctions.getEkmConnectionIamPolicy(GetEkmConnectionIamPolicyArgs.builder()
///             .project(example_ekmconnection.project())
///             .location(example_ekmconnection.location())
///             .name(example_ekmconnection.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:kms:getEkmConnectionIamPolicy
///       arguments:
///         project: ${["example-ekmconnection"].project}
///         location: ${["example-ekmconnection"].location}
///         name: ${["example-ekmconnection"].name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_ekm_connection_iam_policy_get_ekm_connection_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEkmConnectionIamPolicyResult> getEkmConnectionIamPolicy(
  GetEkmConnectionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getEkmConnectionIamPolicy:getEkmConnectionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEkmConnectionIamPolicyResult.fromMap(result);
}

/// Provides access to a Google Cloud Platform KMS CryptoKey. For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/object-hierarchy#key)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys).
///
/// A CryptoKey is an interface to key material which can be used to encrypt and decrypt data. A CryptoKey belongs to a
/// Google Cloud KMS KeyRing.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myKeyRing = gcp.kms.getKMSKeyRing({
///     name: "my-key-ring",
///     location: "us-central1",
/// });
/// const myCryptoKey = myKeyRing.then(myKeyRing => gcp.kms.getKMSCryptoKey({
///     name: "my-crypto-key",
///     keyRing: myKeyRing.id,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_key_ring = gcp.kms.get_kms_key_ring(name="my-key-ring",
///     location="us-central1")
/// my_crypto_key = gcp.kms.get_kms_crypto_key(name="my-crypto-key",
///     key_ring=my_key_ring.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myKeyRing = Gcp.Kms.GetKMSKeyRing.Invoke(new()
///     {
///         Name = "my-key-ring",
///         Location = "us-central1",
///     });
///
///     var myCryptoKey = Gcp.Kms.GetKMSCryptoKey.Invoke(new()
///     {
///         Name = "my-crypto-key",
///         KeyRing = myKeyRing.Apply(getKMSKeyRingResult => getKMSKeyRingResult.Id),
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
/// 		myKeyRing, err := kms.GetKMSKeyRing(ctx, &kms.GetKMSKeyRingArgs{
/// 			Name:     "my-key-ring",
/// 			Location: "us-central1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.GetKMSCryptoKey(ctx, &kms.GetKMSCryptoKeyArgs{
/// 			Name:    "my-crypto-key",
/// 			KeyRing: myKeyRing.Id,
/// 		}, nil)
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
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKMSKeyRingArgs;
/// import com.pulumi.gcp.kms.inputs.GetKMSCryptoKeyArgs;
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
///         final var myKeyRing = KmsFunctions.getKMSKeyRing(GetKMSKeyRingArgs.builder()
///             .name("my-key-ring")
///             .location("us-central1")
///             .build());
///
///         final var myCryptoKey = KmsFunctions.getKMSCryptoKey(GetKMSCryptoKeyArgs.builder()
///             .name("my-crypto-key")
///             .keyRing(myKeyRing.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myKeyRing:
///     fn::invoke:
///       function: gcp:kms:getKMSKeyRing
///       arguments:
///         name: my-key-ring
///         location: us-central1
///   myCryptoKey:
///     fn::invoke:
///       function: gcp:kms:getKMSCryptoKey
///       arguments:
///         name: my-crypto-key
///         keyRing: ${myKeyRing.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_kmscrypto_key_get_kmscrypto_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKMSCryptoKeyResult> getKMSCryptoKey(
  GetKMSCryptoKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKMSCryptoKey:getKMSCryptoKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKMSCryptoKeyResult.fromMap(result);
}

/// Provides access to a Google Cloud Platform KMS CryptoKeyVersion. For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/object-hierarchy#key_version)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions).
///
/// A CryptoKeyVersion represents an individual cryptographic key, and the associated key material.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myKeyRing = gcp.kms.getKMSKeyRing({
///     name: "my-key-ring",
///     location: "us-central1",
/// });
/// const myCryptoKey = myKeyRing.then(myKeyRing => gcp.kms.getKMSCryptoKey({
///     name: "my-crypto-key",
///     keyRing: myKeyRing.id,
/// }));
/// const myCryptoKeyVersion = gcp.kms.getKMSCryptoKeyVersion({
///     cryptoKey: myKey.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_key_ring = gcp.kms.get_kms_key_ring(name="my-key-ring",
///     location="us-central1")
/// my_crypto_key = gcp.kms.get_kms_crypto_key(name="my-crypto-key",
///     key_ring=my_key_ring.id)
/// my_crypto_key_version = gcp.kms.get_kms_crypto_key_version(crypto_key=my_key["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myKeyRing = Gcp.Kms.GetKMSKeyRing.Invoke(new()
///     {
///         Name = "my-key-ring",
///         Location = "us-central1",
///     });
///
///     var myCryptoKey = Gcp.Kms.GetKMSCryptoKey.Invoke(new()
///     {
///         Name = "my-crypto-key",
///         KeyRing = myKeyRing.Apply(getKMSKeyRingResult => getKMSKeyRingResult.Id),
///     });
///
///     var myCryptoKeyVersion = Gcp.Kms.GetKMSCryptoKeyVersion.Invoke(new()
///     {
///         CryptoKey = myKey.Id,
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
/// 		myKeyRing, err := kms.GetKMSKeyRing(ctx, &kms.GetKMSKeyRingArgs{
/// 			Name:     "my-key-ring",
/// 			Location: "us-central1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.GetKMSCryptoKey(ctx, &kms.GetKMSCryptoKeyArgs{
/// 			Name:    "my-crypto-key",
/// 			KeyRing: myKeyRing.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.GetKMSCryptoKeyVersion(ctx, &kms.GetKMSCryptoKeyVersionArgs{
/// 			CryptoKey: myKey.Id,
/// 		}, nil)
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
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKMSKeyRingArgs;
/// import com.pulumi.gcp.kms.inputs.GetKMSCryptoKeyArgs;
/// import com.pulumi.gcp.kms.inputs.GetKMSCryptoKeyVersionArgs;
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
///         final var myKeyRing = KmsFunctions.getKMSKeyRing(GetKMSKeyRingArgs.builder()
///             .name("my-key-ring")
///             .location("us-central1")
///             .build());
///
///         final var myCryptoKey = KmsFunctions.getKMSCryptoKey(GetKMSCryptoKeyArgs.builder()
///             .name("my-crypto-key")
///             .keyRing(myKeyRing.id())
///             .build());
///
///         final var myCryptoKeyVersion = KmsFunctions.getKMSCryptoKeyVersion(GetKMSCryptoKeyVersionArgs.builder()
///             .cryptoKey(myKey.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myKeyRing:
///     fn::invoke:
///       function: gcp:kms:getKMSKeyRing
///       arguments:
///         name: my-key-ring
///         location: us-central1
///   myCryptoKey:
///     fn::invoke:
///       function: gcp:kms:getKMSCryptoKey
///       arguments:
///         name: my-crypto-key
///         keyRing: ${myKeyRing.id}
///   myCryptoKeyVersion:
///     fn::invoke:
///       function: gcp:kms:getKMSCryptoKeyVersion
///       arguments:
///         cryptoKey: ${myKey.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_kmscrypto_key_version_get_kmscrypto_key_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKMSCryptoKeyVersionResult> getKMSCryptoKeyVersion(
  GetKMSCryptoKeyVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKMSCryptoKeyVersion:getKMSCryptoKeyVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKMSCryptoKeyVersionResult.fromMap(result);
}

/// Provides access to Google Cloud Platform KMS KeyRing. For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/object-hierarchy#key_ring)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings).
///
/// A KeyRing is a grouping of CryptoKeys for organizational purposes. A KeyRing belongs to a Google Cloud Platform Project
/// and resides in a specific location.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myKeyRing = gcp.kms.getKMSKeyRing({
///     name: "my-key-ring",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_key_ring = gcp.kms.get_kms_key_ring(name="my-key-ring",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myKeyRing = Gcp.Kms.GetKMSKeyRing.Invoke(new()
///     {
///         Name = "my-key-ring",
///         Location = "us-central1",
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
/// 		_, err := kms.GetKMSKeyRing(ctx, &kms.GetKMSKeyRingArgs{
/// 			Name:     "my-key-ring",
/// 			Location: "us-central1",
/// 		}, nil)
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
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKMSKeyRingArgs;
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
///         final var myKeyRing = KmsFunctions.getKMSKeyRing(GetKMSKeyRingArgs.builder()
///             .name("my-key-ring")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myKeyRing:
///     fn::invoke:
///       function: gcp:kms:getKMSKeyRing
///       arguments:
///         name: my-key-ring
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_kmskey_ring_get_kmskey_ring_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKMSKeyRingResult> getKMSKeyRing(
  GetKMSKeyRingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKMSKeyRing:getKMSKeyRing',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKMSKeyRingResult.fromMap(result);
}

/// This data source allows you to use data encrypted with Google Cloud KMS
/// within your resource definitions.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/encrypt-decrypt).
///
/// &gt; **NOTE:** Using this data provider will allow you to conceal secret data within your
/// resource definitions, but it does not take care of protecting that data in the
/// logging output, plan output, or state output.  Please take care to secure your secret
/// data outside of resource definitions.
///
/// ## Example Usage
///
/// First, create a KMS KeyRing and CryptoKey using the resource definitions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myKeyRing = new gcp.kms.KeyRing("my_key_ring", {
///     project: "my-project",
///     name: "my-key-ring",
///     location: "us-central1",
/// });
/// const myCryptoKey = new gcp.kms.CryptoKey("my_crypto_key", {
///     name: "my-crypto-key",
///     keyRing: myKeyRing.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_key_ring = gcp.kms.KeyRing("my_key_ring",
///     project="my-project",
///     name="my-key-ring",
///     location="us-central1")
/// my_crypto_key = gcp.kms.CryptoKey("my_crypto_key",
///     name="my-crypto-key",
///     key_ring=my_key_ring.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myKeyRing = new Gcp.Kms.KeyRing("my_key_ring", new()
///     {
///         Project = "my-project",
///         Name = "my-key-ring",
///         Location = "us-central1",
///     });
///
///     var myCryptoKey = new Gcp.Kms.CryptoKey("my_crypto_key", new()
///     {
///         Name = "my-crypto-key",
///         KeyRing = myKeyRing.Id,
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
/// 		myKeyRing, err := kms.NewKeyRing(ctx, "my_key_ring", &kms.KeyRingArgs{
/// 			Project:  pulumi.String("my-project"),
/// 			Name:     pulumi.String("my-key-ring"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewCryptoKey(ctx, "my_crypto_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("my-crypto-key"),
/// 			KeyRing: myKeyRing.ID(),
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
///         var myKeyRing = new KeyRing("myKeyRing", KeyRingArgs.builder()
///             .project("my-project")
///             .name("my-key-ring")
///             .location("us-central1")
///             .build());
///
///         var myCryptoKey = new CryptoKey("myCryptoKey", CryptoKeyArgs.builder()
///             .name("my-crypto-key")
///             .keyRing(myKeyRing.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myKeyRing:
///     type: gcp:kms:KeyRing
///     name: my_key_ring
///     properties:
///       project: my-project
///       name: my-key-ring
///       location: us-central1
///   myCryptoKey:
///     type: gcp:kms:CryptoKey
///     name: my_crypto_key
///     properties:
///       name: my-crypto-key
///       keyRing: ${myKeyRing.id}
/// ```
///
///
/// Next, use the [Cloud SDK](https://cloud.google.com/sdk/gcloud/reference/kms/encrypt) to encrypt some
/// sensitive information:
///
/// ```bash
/// $ echo -n my-secret-password | gcloud kms encrypt \
/// > --project my-project \
/// > --location us-central1 \
/// > --keyring my-key-ring \
/// > --key my-crypto-key \
/// > --plaintext-file - \
/// > --ciphertext-file - \
/// > | base64
/// CiQAqD+xX4SXOSziF4a8JYvq4spfAuWhhYSNul33H85HnVtNQW4SOgDu2UZ46dQCRFl5MF6ekabviN8xq+F+2035ZJ85B+xTYXqNf4mZs0RJitnWWuXlYQh6axnnJYu3kDU=
/// ```
///
/// Finally, reference the encrypted ciphertext in your resource definitions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const sqlUserPassword = gcp.kms.getKMSSecret({
///     cryptoKey: myCryptoKey.id,
///     ciphertext: "CiQAqD+xX4SXOSziF4a8JYvq4spfAuWhhYSNul33H85HnVtNQW4SOgDu2UZ46dQCRFl5MF6ekabviN8xq+F+2035ZJ85B+xTYXqNf4mZs0RJitnWWuXlYQh6axnnJYu3kDU=",
/// });
/// const dbNameSuffix = new random.index.Id("db_name_suffix", {byteLength: 4});
/// const main = new gcp.sql.DatabaseInstance("main", {
///     name: `main-instance-${dbNameSuffix.hex}`,
///     databaseVersion: "MYSQL_5_7",
///     settings: {
///         tier: "db-f1-micro",
///     },
/// });
/// const users = new gcp.sql.User("users", {
///     name: "me",
///     instance: main.name,
///     host: "me.com",
///     password: sqlUserPassword.then(sqlUserPassword => sqlUserPassword.plaintext),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
///
/// sql_user_password = gcp.kms.get_kms_secret(crypto_key=my_crypto_key["id"],
///     ciphertext="CiQAqD+xX4SXOSziF4a8JYvq4spfAuWhhYSNul33H85HnVtNQW4SOgDu2UZ46dQCRFl5MF6ekabviN8xq+F+2035ZJ85B+xTYXqNf4mZs0RJitnWWuXlYQh6axnnJYu3kDU=")
/// db_name_suffix = random.index.Id("db_name_suffix", byte_length=4)
/// main = gcp.sql.DatabaseInstance("main",
///     name=f"main-instance-{db_name_suffix['hex']}",
///     database_version="MYSQL_5_7",
///     settings={
///         "tier": "db-f1-micro",
///     })
/// users = gcp.sql.User("users",
///     name="me",
///     instance=main.name,
///     host="me.com",
///     password=sql_user_password.plaintext)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlUserPassword = Gcp.Kms.GetKMSSecret.Invoke(new()
///     {
///         CryptoKey = myCryptoKey.Id,
///         Ciphertext = "CiQAqD+xX4SXOSziF4a8JYvq4spfAuWhhYSNul33H85HnVtNQW4SOgDu2UZ46dQCRFl5MF6ekabviN8xq+F+2035ZJ85B+xTYXqNf4mZs0RJitnWWuXlYQh6axnnJYu3kDU=",
///     });
///
///     var dbNameSuffix = new Random.Index.Id("db_name_suffix", new()
///     {
///         ByteLength = 4,
///     });
///
///     var main = new Gcp.Sql.DatabaseInstance("main", new()
///     {
///         Name = $"main-instance-{dbNameSuffix.Hex}",
///         DatabaseVersion = "MYSQL_5_7",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///         },
///     });
///
///     var users = new Gcp.Sql.User("users", new()
///     {
///         Name = "me",
///         Instance = main.Name,
///         Host = "me.com",
///         Password = sqlUserPassword.Apply(getKMSSecretResult => getKMSSecretResult.Plaintext),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		sqlUserPassword, err := kms.GetKMSSecret(ctx, &kms.GetKMSSecretArgs{
/// 			CryptoKey:  myCryptoKey.Id,
/// 			Ciphertext: "CiQAqD+xX4SXOSziF4a8JYvq4spfAuWhhYSNul33H85HnVtNQW4SOgDu2UZ46dQCRFl5MF6ekabviN8xq+F+2035ZJ85B+xTYXqNf4mZs0RJitnWWuXlYQh6axnnJYu3kDU=",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dbNameSuffix, err := random.NewId(ctx, "db_name_suffix", &random.IdArgs{
/// 			ByteLength: 4,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		main, err := sql.NewDatabaseInstance(ctx, "main", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.Sprintf("main-instance-%v", dbNameSuffix.Hex),
/// 			DatabaseVersion: pulumi.String("MYSQL_5_7"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sql.NewUser(ctx, "users", &sql.UserArgs{
/// 			Name:     pulumi.String("me"),
/// 			Instance: main.Name,
/// 			Host:     pulumi.String("me.com"),
/// 			Password: pulumi.String(sqlUserPassword.Plaintext),
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
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKMSSecretArgs;
/// import com.pulumi.random.Id;
/// import com.pulumi.random.IdArgs;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
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
///         final var sqlUserPassword = KmsFunctions.getKMSSecret(GetKMSSecretArgs.builder()
///             .cryptoKey(myCryptoKey.id())
///             .ciphertext("CiQAqD+xX4SXOSziF4a8JYvq4spfAuWhhYSNul33H85HnVtNQW4SOgDu2UZ46dQCRFl5MF6ekabviN8xq+F+2035ZJ85B+xTYXqNf4mZs0RJitnWWuXlYQh6axnnJYu3kDU=")
///             .build());
///
///         var dbNameSuffix = new Id("dbNameSuffix", IdArgs.builder()
///             .byteLength(4)
///             .build());
///
///         var main = new DatabaseInstance("main", DatabaseInstanceArgs.builder()
///             .name(String.format("main-instance-%s", dbNameSuffix.hex()))
///             .databaseVersion("MYSQL_5_7")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .build())
///             .build());
///
///         var users = new User("users", UserArgs.builder()
///             .name("me")
///             .instance(main.name())
///             .host("me.com")
///             .password(sqlUserPassword.plaintext())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dbNameSuffix:
///     type: random:Id
///     name: db_name_suffix
///     properties:
///       byteLength: 4
///   main:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: main-instance-${dbNameSuffix.hex}
///       databaseVersion: MYSQL_5_7
///       settings:
///         tier: db-f1-micro
///   users:
///     type: gcp:sql:User
///     properties:
///       name: me
///       instance: ${main.name}
///       host: me.com
///       password: ${sqlUserPassword.plaintext}
/// variables:
///   sqlUserPassword:
///     fn::invoke:
///       function: gcp:kms:getKMSSecret
///       arguments:
///         cryptoKey: ${myCryptoKey.id}
///         ciphertext: CiQAqD+xX4SXOSziF4a8JYvq4spfAuWhhYSNul33H85HnVtNQW4SOgDu2UZ46dQCRFl5MF6ekabviN8xq+F+2035ZJ85B+xTYXqNf4mZs0RJitnWWuXlYQh6axnnJYu3kDU=
/// ```
///
///
/// This will result in a Cloud SQL user being created with password `my-secret-password`.
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_kmssecret_get_kmssecret_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKMSSecretResult> getKMSSecret(
  GetKMSSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKMSSecret:getKMSSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKMSSecretResult.fromMap(result);
}

/// This data source allows you to use data encrypted with a Google Cloud KMS asymmetric key
/// within your resource definitions.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/encrypt-decrypt-rsa).
///
/// &gt; **NOTE:** Using this data provider will allow you to conceal secret data within your
/// resource definitions, but it does not take care of protecting that data in the
/// logging output, plan output, or state output.  Please take care to secure your secret
/// data outside of resource definitions.
///
/// ## Example Usage
///
/// First, create a KMS KeyRing and CryptoKey using the resource definitions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myKeyRing = new gcp.kms.KeyRing("my_key_ring", {
///     project: "my-project",
///     name: "my-key-ring",
///     location: "us-central1",
/// });
/// const myCryptoKeyCryptoKey = new gcp.kms.CryptoKey("my_crypto_key", {
///     name: "my-crypto-key",
///     keyRing: myKeyRing.id,
///     purpose: "ASYMMETRIC_DECRYPT",
///     versionTemplate: {
///         algorithm: "RSA_DECRYPT_OAEP_4096_SHA256",
///     },
/// });
/// const myCryptoKey = gcp.kms.getKMSCryptoKeyVersionOutput({
///     cryptoKey: myCryptoKeyCryptoKey.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_key_ring = gcp.kms.KeyRing("my_key_ring",
///     project="my-project",
///     name="my-key-ring",
///     location="us-central1")
/// my_crypto_key_crypto_key = gcp.kms.CryptoKey("my_crypto_key",
///     name="my-crypto-key",
///     key_ring=my_key_ring.id,
///     purpose="ASYMMETRIC_DECRYPT",
///     version_template={
///         "algorithm": "RSA_DECRYPT_OAEP_4096_SHA256",
///     })
/// my_crypto_key = gcp.kms.get_kms_crypto_key_version_output(crypto_key=my_crypto_key_crypto_key.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myKeyRing = new Gcp.Kms.KeyRing("my_key_ring", new()
///     {
///         Project = "my-project",
///         Name = "my-key-ring",
///         Location = "us-central1",
///     });
///
///     var myCryptoKeyCryptoKey = new Gcp.Kms.CryptoKey("my_crypto_key", new()
///     {
///         Name = "my-crypto-key",
///         KeyRing = myKeyRing.Id,
///         Purpose = "ASYMMETRIC_DECRYPT",
///         VersionTemplate = new Gcp.Kms.Inputs.CryptoKeyVersionTemplateArgs
///         {
///             Algorithm = "RSA_DECRYPT_OAEP_4096_SHA256",
///         },
///     });
///
///     var myCryptoKey = Gcp.Kms.GetKMSCryptoKeyVersion.Invoke(new()
///     {
///         CryptoKey = myCryptoKeyCryptoKey.Id,
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
/// 		myKeyRing, err := kms.NewKeyRing(ctx, "my_key_ring", &kms.KeyRingArgs{
/// 			Project:  pulumi.String("my-project"),
/// 			Name:     pulumi.String("my-key-ring"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myCryptoKeyCryptoKey, err := kms.NewCryptoKey(ctx, "my_crypto_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("my-crypto-key"),
/// 			KeyRing: myKeyRing.ID(),
/// 			Purpose: pulumi.String("ASYMMETRIC_DECRYPT"),
/// 			VersionTemplate: &kms.CryptoKeyVersionTemplateArgs{
/// 				Algorithm: pulumi.String("RSA_DECRYPT_OAEP_4096_SHA256"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = kms.GetKMSCryptoKeyVersionOutput(ctx, kms.GetKMSCryptoKeyVersionOutputArgs{
/// 			CryptoKey: myCryptoKeyCryptoKey.ID(),
/// 		}, nil)
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
/// import com.pulumi.gcp.kms.inputs.CryptoKeyVersionTemplateArgs;
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKMSCryptoKeyVersionArgs;
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
///         var myKeyRing = new KeyRing("myKeyRing", KeyRingArgs.builder()
///             .project("my-project")
///             .name("my-key-ring")
///             .location("us-central1")
///             .build());
///
///         var myCryptoKeyCryptoKey = new CryptoKey("myCryptoKeyCryptoKey", CryptoKeyArgs.builder()
///             .name("my-crypto-key")
///             .keyRing(myKeyRing.id())
///             .purpose("ASYMMETRIC_DECRYPT")
///             .versionTemplate(CryptoKeyVersionTemplateArgs.builder()
///                 .algorithm("RSA_DECRYPT_OAEP_4096_SHA256")
///                 .build())
///             .build());
///
///         final var myCryptoKey = KmsFunctions.getKMSCryptoKeyVersion(GetKMSCryptoKeyVersionArgs.builder()
///             .cryptoKey(myCryptoKeyCryptoKey.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myKeyRing:
///     type: gcp:kms:KeyRing
///     name: my_key_ring
///     properties:
///       project: my-project
///       name: my-key-ring
///       location: us-central1
///   myCryptoKeyCryptoKey:
///     type: gcp:kms:CryptoKey
///     name: my_crypto_key
///     properties:
///       name: my-crypto-key
///       keyRing: ${myKeyRing.id}
///       purpose: ASYMMETRIC_DECRYPT
///       versionTemplate:
///         algorithm: RSA_DECRYPT_OAEP_4096_SHA256
/// variables:
///   myCryptoKey:
///     fn::invoke:
///       function: gcp:kms:getKMSCryptoKeyVersion
///       arguments:
///         cryptoKey: ${myCryptoKeyCryptoKey.id}
/// ```
///
///
/// Next, use the [Cloud SDK](https://cloud.google.com/kms/docs/encrypt-decrypt-rsa#kms-encrypt-asymmetric-cli) to encrypt
/// some sensitive information:
///
/// ```bash
/// ## get the public key to encrypt the secret with
/// $ gcloud kms keys versions get-public-key 1 \
///   --project my-project \
///   --location us-central1 \
///   --keyring my-key-ring \
///   --key my-crypto-key \
///   --output-file public-key.pem
///
/// ## encrypt secret with the public key
/// $ echo -n my-secret-password | \
///   openssl pkeyutl -in - \
///     -encrypt \
///     -pubin \
///     -inkey public-key.pem \
///     -pkeyopt rsa_padding_mode:oaep \
///     -pkeyopt rsa_oaep_md:sha256 \
///     -pkeyopt rsa_mgf1_md:sha256 > \
///   my-secret-password.enc
///
/// ## base64 encode the ciphertext
/// $ openssl base64 -in my-secret-password.enc
/// M7nUoba9EGVTu2LjNjBKGdGVBYjyS/i/AY+4yQMQF0Qf/RfUfX31Jw6+VO9OuThq
/// ylu/7ihX9XD4bM7yYdXnMv9p1OHQUlorSBSbb/J6n1W9UJhcp6um8Tw8/Isx4f75
/// 4PskYS6f8Y2ItliGt1/A9iR5BTgGtJBwOxMlgoX2Ggq+Nh4E5SbdoaE5o6CO1nBx
/// eIPsPEebQ6qC4JehQM3IGuV/lrm58+hZhaXAqNzX1cEYyAt5GYqJIVCiI585SUYs
/// wRToGyTgaN+zthF0HP9IWlR4Am4LmJ/1OcePTnYw11CkU8wNRbDzVAzogwNH+rXr
/// LTmf7hxVjBm6bBSVSNFcBKAXFlllubSfIeZ5hgzGqn54OmSf6odO12L5JxllddHc
/// yAd54vWKs2kJtnsKV2V4ZdkI0w6y1TeI67baFZDNGo6qsCpFMPnvv7d46Pg2VOp1
/// J6Ivner0NnNHE4MzNmpZRk8WXMwqq4P/gTiT7F/aCX6oFCUQ4AWPQhJYh2dkcOmL
/// IP+47Veb10aFn61F1CJwpmOOiGNXKdDT1vK8CMnnwhm825K0q/q9Zqpzc1+1ae1z
/// mSqol1zCoa88CuSN6nTLQlVnN/dzfrGbc0boJPaM0iGhHtSzHk4SWg84LhiJB1q9
/// A9XFJmOVdkvRY9nnz/iVLAdd0Q3vFtLqCdUYsNN2yh4=
///
/// ## optionally calculate the CRC32 of the ciphertext
/// $ go get github.com/binxio/crc32
/// $ $GOPATH/bin/crc32 -polynomial castagnoli < my-secret-password.enc
/// 12c59e54
/// ```
///
/// Finally, reference the encrypted ciphertext in your resource definitions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const sqlUserPassword = gcp.kms.getKMSSecretAsymmetric({
///     cryptoKeyVersion: myCryptoKey.id,
///     crc32: "12c59e54",
///     ciphertext: `    M7nUoba9EGVTu2LjNjBKGdGVBYjyS/i/AY+4yQMQF0Qf/RfUfX31Jw6+VO9OuThq
///     ylu/7ihX9XD4bM7yYdXnMv9p1OHQUlorSBSbb/J6n1W9UJhcp6um8Tw8/Isx4f75
///     4PskYS6f8Y2ItliGt1/A9iR5BTgGtJBwOxMlgoX2Ggq+Nh4E5SbdoaE5o6CO1nBx
///     eIPsPEebQ6qC4JehQM3IGuV/lrm58+hZhaXAqNzX1cEYyAt5GYqJIVCiI585SUYs
///     wRToGyTgaN+zthF0HP9IWlR4Am4LmJ/1OcePTnYw11CkU8wNRbDzVAzogwNH+rXr
///     LTmf7hxVjBm6bBSVSNFcBKAXFlllubSfIeZ5hgzGqn54OmSf6odO12L5JxllddHc
///     yAd54vWKs2kJtnsKV2V4ZdkI0w6y1TeI67baFZDNGo6qsCpFMPnvv7d46Pg2VOp1
///     J6Ivner0NnNHE4MzNmpZRk8WXMwqq4P/gTiT7F/aCX6oFCUQ4AWPQhJYh2dkcOmL
///     IP+47Veb10aFn61F1CJwpmOOiGNXKdDT1vK8CMnnwhm825K0q/q9Zqpzc1+1ae1z
///     mSqol1zCoa88CuSN6nTLQlVnN/dzfrGbc0boJPaM0iGhHtSzHk4SWg84LhiJB1q9
///     A9XFJmOVdkvRY9nnz/iVLAdd0Q3vFtLqCdUYsNN2yh4=
/// `,
/// });
/// const dbNameSuffix = new random.index.Id("db_name_suffix", {byteLength: 4});
/// const main = new gcp.sql.DatabaseInstance("main", {
///     name: `main-instance-${dbNameSuffix.hex}`,
///     databaseVersion: "MYSQL_5_7",
///     settings: {
///         tier: "db-f1-micro",
///     },
/// });
/// const users = new gcp.sql.User("users", {
///     name: "me",
///     instance: main.name,
///     host: "me.com",
///     password: sqlUserPasswordGoogleKmsSecret.plaintext,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
///
/// sql_user_password = gcp.kms.get_kms_secret_asymmetric(crypto_key_version=my_crypto_key["id"],
///     crc32="12c59e54",
///     ciphertext="""    M7nUoba9EGVTu2LjNjBKGdGVBYjyS/i/AY+4yQMQF0Qf/RfUfX31Jw6+VO9OuThq
///     ylu/7ihX9XD4bM7yYdXnMv9p1OHQUlorSBSbb/J6n1W9UJhcp6um8Tw8/Isx4f75
///     4PskYS6f8Y2ItliGt1/A9iR5BTgGtJBwOxMlgoX2Ggq+Nh4E5SbdoaE5o6CO1nBx
///     eIPsPEebQ6qC4JehQM3IGuV/lrm58+hZhaXAqNzX1cEYyAt5GYqJIVCiI585SUYs
///     wRToGyTgaN+zthF0HP9IWlR4Am4LmJ/1OcePTnYw11CkU8wNRbDzVAzogwNH+rXr
///     LTmf7hxVjBm6bBSVSNFcBKAXFlllubSfIeZ5hgzGqn54OmSf6odO12L5JxllddHc
///     yAd54vWKs2kJtnsKV2V4ZdkI0w6y1TeI67baFZDNGo6qsCpFMPnvv7d46Pg2VOp1
///     J6Ivner0NnNHE4MzNmpZRk8WXMwqq4P/gTiT7F/aCX6oFCUQ4AWPQhJYh2dkcOmL
///     IP+47Veb10aFn61F1CJwpmOOiGNXKdDT1vK8CMnnwhm825K0q/q9Zqpzc1+1ae1z
///     mSqol1zCoa88CuSN6nTLQlVnN/dzfrGbc0boJPaM0iGhHtSzHk4SWg84LhiJB1q9
///     A9XFJmOVdkvRY9nnz/iVLAdd0Q3vFtLqCdUYsNN2yh4=
/// """)
/// db_name_suffix = random.index.Id("db_name_suffix", byte_length=4)
/// main = gcp.sql.DatabaseInstance("main",
///     name=f"main-instance-{db_name_suffix['hex']}",
///     database_version="MYSQL_5_7",
///     settings={
///         "tier": "db-f1-micro",
///     })
/// users = gcp.sql.User("users",
///     name="me",
///     instance=main.name,
///     host="me.com",
///     password=sql_user_password_google_kms_secret["plaintext"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlUserPassword = Gcp.Kms.GetKMSSecretAsymmetric.Invoke(new()
///     {
///         CryptoKeyVersion = myCryptoKey.Id,
///         Crc32 = "12c59e54",
///         Ciphertext = @"    M7nUoba9EGVTu2LjNjBKGdGVBYjyS/i/AY+4yQMQF0Qf/RfUfX31Jw6+VO9OuThq
///     ylu/7ihX9XD4bM7yYdXnMv9p1OHQUlorSBSbb/J6n1W9UJhcp6um8Tw8/Isx4f75
///     4PskYS6f8Y2ItliGt1/A9iR5BTgGtJBwOxMlgoX2Ggq+Nh4E5SbdoaE5o6CO1nBx
///     eIPsPEebQ6qC4JehQM3IGuV/lrm58+hZhaXAqNzX1cEYyAt5GYqJIVCiI585SUYs
///     wRToGyTgaN+zthF0HP9IWlR4Am4LmJ/1OcePTnYw11CkU8wNRbDzVAzogwNH+rXr
///     LTmf7hxVjBm6bBSVSNFcBKAXFlllubSfIeZ5hgzGqn54OmSf6odO12L5JxllddHc
///     yAd54vWKs2kJtnsKV2V4ZdkI0w6y1TeI67baFZDNGo6qsCpFMPnvv7d46Pg2VOp1
///     J6Ivner0NnNHE4MzNmpZRk8WXMwqq4P/gTiT7F/aCX6oFCUQ4AWPQhJYh2dkcOmL
///     IP+47Veb10aFn61F1CJwpmOOiGNXKdDT1vK8CMnnwhm825K0q/q9Zqpzc1+1ae1z
///     mSqol1zCoa88CuSN6nTLQlVnN/dzfrGbc0boJPaM0iGhHtSzHk4SWg84LhiJB1q9
///     A9XFJmOVdkvRY9nnz/iVLAdd0Q3vFtLqCdUYsNN2yh4=
/// ",
///     });
///
///     var dbNameSuffix = new Random.Index.Id("db_name_suffix", new()
///     {
///         ByteLength = 4,
///     });
///
///     var main = new Gcp.Sql.DatabaseInstance("main", new()
///     {
///         Name = $"main-instance-{dbNameSuffix.Hex}",
///         DatabaseVersion = "MYSQL_5_7",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///         },
///     });
///
///     var users = new Gcp.Sql.User("users", new()
///     {
///         Name = "me",
///         Instance = main.Name,
///         Host = "me.com",
///         Password = sqlUserPasswordGoogleKmsSecret.Plaintext,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.GetKMSSecretAsymmetric(ctx, &kms.GetKMSSecretAsymmetricArgs{
/// 			CryptoKeyVersion: myCryptoKey.Id,
/// 			Crc32:            pulumi.StringRef("12c59e54"),
/// 			Ciphertext: `    M7nUoba9EGVTu2LjNjBKGdGVBYjyS/i/AY+4yQMQF0Qf/RfUfX31Jw6+VO9OuThq
///     ylu/7ihX9XD4bM7yYdXnMv9p1OHQUlorSBSbb/J6n1W9UJhcp6um8Tw8/Isx4f75
///     4PskYS6f8Y2ItliGt1/A9iR5BTgGtJBwOxMlgoX2Ggq+Nh4E5SbdoaE5o6CO1nBx
///     eIPsPEebQ6qC4JehQM3IGuV/lrm58+hZhaXAqNzX1cEYyAt5GYqJIVCiI585SUYs
///     wRToGyTgaN+zthF0HP9IWlR4Am4LmJ/1OcePTnYw11CkU8wNRbDzVAzogwNH+rXr
///     LTmf7hxVjBm6bBSVSNFcBKAXFlllubSfIeZ5hgzGqn54OmSf6odO12L5JxllddHc
///     yAd54vWKs2kJtnsKV2V4ZdkI0w6y1TeI67baFZDNGo6qsCpFMPnvv7d46Pg2VOp1
///     J6Ivner0NnNHE4MzNmpZRk8WXMwqq4P/gTiT7F/aCX6oFCUQ4AWPQhJYh2dkcOmL
///     IP+47Veb10aFn61F1CJwpmOOiGNXKdDT1vK8CMnnwhm825K0q/q9Zqpzc1+1ae1z
///     mSqol1zCoa88CuSN6nTLQlVnN/dzfrGbc0boJPaM0iGhHtSzHk4SWg84LhiJB1q9
///     A9XFJmOVdkvRY9nnz/iVLAdd0Q3vFtLqCdUYsNN2yh4=
/// `,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dbNameSuffix, err := random.NewId(ctx, "db_name_suffix", &random.IdArgs{
/// 			ByteLength: 4,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		main, err := sql.NewDatabaseInstance(ctx, "main", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.Sprintf("main-instance-%v", dbNameSuffix.Hex),
/// 			DatabaseVersion: pulumi.String("MYSQL_5_7"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sql.NewUser(ctx, "users", &sql.UserArgs{
/// 			Name:     pulumi.String("me"),
/// 			Instance: main.Name,
/// 			Host:     pulumi.String("me.com"),
/// 			Password: pulumi.Any(sqlUserPasswordGoogleKmsSecret.Plaintext),
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
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKMSSecretAsymmetricArgs;
/// import com.pulumi.random.Id;
/// import com.pulumi.random.IdArgs;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
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
///         final var sqlUserPassword = KmsFunctions.getKMSSecretAsymmetric(GetKMSSecretAsymmetricArgs.builder()
///             .cryptoKeyVersion(myCryptoKey.id())
///             .crc32("12c59e54")
///             .ciphertext("""
///     M7nUoba9EGVTu2LjNjBKGdGVBYjyS/i/AY+4yQMQF0Qf/RfUfX31Jw6+VO9OuThq
///     ylu/7ihX9XD4bM7yYdXnMv9p1OHQUlorSBSbb/J6n1W9UJhcp6um8Tw8/Isx4f75
///     4PskYS6f8Y2ItliGt1/A9iR5BTgGtJBwOxMlgoX2Ggq+Nh4E5SbdoaE5o6CO1nBx
///     eIPsPEebQ6qC4JehQM3IGuV/lrm58+hZhaXAqNzX1cEYyAt5GYqJIVCiI585SUYs
///     wRToGyTgaN+zthF0HP9IWlR4Am4LmJ/1OcePTnYw11CkU8wNRbDzVAzogwNH+rXr
///     LTmf7hxVjBm6bBSVSNFcBKAXFlllubSfIeZ5hgzGqn54OmSf6odO12L5JxllddHc
///     yAd54vWKs2kJtnsKV2V4ZdkI0w6y1TeI67baFZDNGo6qsCpFMPnvv7d46Pg2VOp1
///     J6Ivner0NnNHE4MzNmpZRk8WXMwqq4P/gTiT7F/aCX6oFCUQ4AWPQhJYh2dkcOmL
///     IP+47Veb10aFn61F1CJwpmOOiGNXKdDT1vK8CMnnwhm825K0q/q9Zqpzc1+1ae1z
///     mSqol1zCoa88CuSN6nTLQlVnN/dzfrGbc0boJPaM0iGhHtSzHk4SWg84LhiJB1q9
///     A9XFJmOVdkvRY9nnz/iVLAdd0Q3vFtLqCdUYsNN2yh4=
///             """)
///             .build());
///
///         var dbNameSuffix = new Id("dbNameSuffix", IdArgs.builder()
///             .byteLength(4)
///             .build());
///
///         var main = new DatabaseInstance("main", DatabaseInstanceArgs.builder()
///             .name(String.format("main-instance-%s", dbNameSuffix.hex()))
///             .databaseVersion("MYSQL_5_7")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .build())
///             .build());
///
///         var users = new User("users", UserArgs.builder()
///             .name("me")
///             .instance(main.name())
///             .host("me.com")
///             .password(sqlUserPasswordGoogleKmsSecret.plaintext())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dbNameSuffix:
///     type: random:Id
///     name: db_name_suffix
///     properties:
///       byteLength: 4
///   main:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: main-instance-${dbNameSuffix.hex}
///       databaseVersion: MYSQL_5_7
///       settings:
///         tier: db-f1-micro
///   users:
///     type: gcp:sql:User
///     properties:
///       name: me
///       instance: ${main.name}
///       host: me.com
///       password: ${sqlUserPasswordGoogleKmsSecret.plaintext}
/// variables:
///   sqlUserPassword:
///     fn::invoke:
///       function: gcp:kms:getKMSSecretAsymmetric
///       arguments:
///         cryptoKeyVersion: ${myCryptoKey.id}
///         crc32: 12c59e54
///         ciphertext: |2
///               M7nUoba9EGVTu2LjNjBKGdGVBYjyS/i/AY+4yQMQF0Qf/RfUfX31Jw6+VO9OuThq
///               ylu/7ihX9XD4bM7yYdXnMv9p1OHQUlorSBSbb/J6n1W9UJhcp6um8Tw8/Isx4f75
///               4PskYS6f8Y2ItliGt1/A9iR5BTgGtJBwOxMlgoX2Ggq+Nh4E5SbdoaE5o6CO1nBx
///               eIPsPEebQ6qC4JehQM3IGuV/lrm58+hZhaXAqNzX1cEYyAt5GYqJIVCiI585SUYs
///               wRToGyTgaN+zthF0HP9IWlR4Am4LmJ/1OcePTnYw11CkU8wNRbDzVAzogwNH+rXr
///               LTmf7hxVjBm6bBSVSNFcBKAXFlllubSfIeZ5hgzGqn54OmSf6odO12L5JxllddHc
///               yAd54vWKs2kJtnsKV2V4ZdkI0w6y1TeI67baFZDNGo6qsCpFMPnvv7d46Pg2VOp1
///               J6Ivner0NnNHE4MzNmpZRk8WXMwqq4P/gTiT7F/aCX6oFCUQ4AWPQhJYh2dkcOmL
///               IP+47Veb10aFn61F1CJwpmOOiGNXKdDT1vK8CMnnwhm825K0q/q9Zqpzc1+1ae1z
///               mSqol1zCoa88CuSN6nTLQlVnN/dzfrGbc0boJPaM0iGhHtSzHk4SWg84LhiJB1q9
///               A9XFJmOVdkvRY9nnz/iVLAdd0Q3vFtLqCdUYsNN2yh4=
/// ```
///
///
/// This will result in a Cloud SQL user being created with password `my-secret-password`.
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_kmssecret_asymmetric_get_kmssecret_asymmetric_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKMSSecretAsymmetricResult> getKMSSecretAsymmetric(
  GetKMSSecretAsymmetricArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKMSSecretAsymmetric:getKMSSecretAsymmetric',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKMSSecretAsymmetricResult.fromMap(result);
}

/// !&gt; **Warning:** This data source is deprecated. Use the `gcp.kms.SecretCiphertext` **resource** instead.
///
/// This data source allows you to encrypt data with Google Cloud KMS and use the
/// ciphertext within your resource definitions.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/encrypt-decrypt).
///
/// &gt; **NOTE:** Using this data source will allow you to conceal secret data within your
/// resource definitions, but it does not take care of protecting that data in the
/// logging output, plan output, or state output.  Please take care to secure your secret
/// data outside of resource definitions.
///
/// ## Example Usage
///
/// First, create a KMS KeyRing and CryptoKey using the resource definitions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myKeyRing = new gcp.kms.KeyRing("my_key_ring", {
///     project: "my-project",
///     name: "my-key-ring",
///     location: "us-central1",
/// });
/// const myCryptoKey = new gcp.kms.CryptoKey("my_crypto_key", {
///     name: "my-crypto-key",
///     keyRing: myKeyRing.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_key_ring = gcp.kms.KeyRing("my_key_ring",
///     project="my-project",
///     name="my-key-ring",
///     location="us-central1")
/// my_crypto_key = gcp.kms.CryptoKey("my_crypto_key",
///     name="my-crypto-key",
///     key_ring=my_key_ring.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myKeyRing = new Gcp.Kms.KeyRing("my_key_ring", new()
///     {
///         Project = "my-project",
///         Name = "my-key-ring",
///         Location = "us-central1",
///     });
///
///     var myCryptoKey = new Gcp.Kms.CryptoKey("my_crypto_key", new()
///     {
///         Name = "my-crypto-key",
///         KeyRing = myKeyRing.Id,
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
/// 		myKeyRing, err := kms.NewKeyRing(ctx, "my_key_ring", &kms.KeyRingArgs{
/// 			Project:  pulumi.String("my-project"),
/// 			Name:     pulumi.String("my-key-ring"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewCryptoKey(ctx, "my_crypto_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("my-crypto-key"),
/// 			KeyRing: myKeyRing.ID(),
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
///         var myKeyRing = new KeyRing("myKeyRing", KeyRingArgs.builder()
///             .project("my-project")
///             .name("my-key-ring")
///             .location("us-central1")
///             .build());
///
///         var myCryptoKey = new CryptoKey("myCryptoKey", CryptoKeyArgs.builder()
///             .name("my-crypto-key")
///             .keyRing(myKeyRing.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myKeyRing:
///     type: gcp:kms:KeyRing
///     name: my_key_ring
///     properties:
///       project: my-project
///       name: my-key-ring
///       location: us-central1
///   myCryptoKey:
///     type: gcp:kms:CryptoKey
///     name: my_crypto_key
///     properties:
///       name: my-crypto-key
///       keyRing: ${myKeyRing.id}
/// ```
///
///
/// Next, encrypt some sensitive information and use the encrypted data in your resource definitions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myPassword = gcp.kms.getKMSSecretCiphertext({
///     cryptoKey: myCryptoKey.id,
///     plaintext: "my-secret-password",
/// });
/// const instance = new gcp.compute.Instance("instance", {
///     networkInterfaces: [{
///         accessConfigs: [{}],
///         network: "default",
///     }],
///     name: "test",
///     machineType: "e2-medium",
///     zone: "us-central1-a",
///     bootDisk: {
///         initializeParams: {
///             image: "debian-cloud/debian-11",
///         },
///     },
///     metadata: {
///         password: myPassword.then(myPassword => myPassword.ciphertext),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_password = gcp.kms.get_kms_secret_ciphertext(crypto_key=my_crypto_key["id"],
///     plaintext="my-secret-password")
/// instance = gcp.compute.Instance("instance",
///     network_interfaces=[{
///         "access_configs": [{}],
///         "network": "default",
///     }],
///     name="test",
///     machine_type="e2-medium",
///     zone="us-central1-a",
///     boot_disk={
///         "initialize_params": {
///             "image": "debian-cloud/debian-11",
///         },
///     },
///     metadata={
///         "password": my_password.ciphertext,
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
///     var myPassword = Gcp.Kms.GetKMSSecretCiphertext.Invoke(new()
///     {
///         CryptoKey = myCryptoKey.Id,
///         Plaintext = "my-secret-password",
///     });
///
///     var instance = new Gcp.Compute.Instance("instance", new()
///     {
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 AccessConfigs = new[]
///                 {
///                     null,
///                 },
///                 Network = "default",
///             },
///         },
///         Name = "test",
///         MachineType = "e2-medium",
///         Zone = "us-central1-a",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = "debian-cloud/debian-11",
///             },
///         },
///         Metadata =
///         {
///             { "password", myPassword.Apply(getKMSSecretCiphertextResult => getKMSSecretCiphertextResult.Ciphertext) },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myPassword, err := kms.GetKMSSecretCiphertext(ctx, &kms.GetKMSSecretCiphertextArgs{
/// 			CryptoKey: myCryptoKey.Id,
/// 			Plaintext: "my-secret-password",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstance(ctx, "instance", &compute.InstanceArgs{
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// 					},
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("test"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			Zone:        pulumi.String("us-central1-a"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String("debian-cloud/debian-11"),
/// 				},
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"password": pulumi.String(myPassword.Ciphertext),
/// 			},
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
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKMSSecretCiphertextArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
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
///         final var myPassword = KmsFunctions.getKMSSecretCiphertext(GetKMSSecretCiphertextArgs.builder()
///             .cryptoKey(myCryptoKey.id())
///             .plaintext("my-secret-password")
///             .build());
///
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
///                     .build())
///                 .network("default")
///                 .build())
///             .name("test")
///             .machineType("e2-medium")
///             .zone("us-central1-a")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image("debian-cloud/debian-11")
///                     .build())
///                 .build())
///             .metadata(Map.of("password", myPassword.ciphertext()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:compute:Instance
///     properties:
///       networkInterfaces:
///         - accessConfigs:
///             - {}
///           network: default
///       name: test
///       machineType: e2-medium
///       zone: us-central1-a
///       bootDisk:
///         initializeParams:
///           image: debian-cloud/debian-11
///       metadata:
///         password: ${myPassword.ciphertext}
/// variables:
///   myPassword:
///     fn::invoke:
///       function: gcp:kms:getKMSSecretCiphertext
///       arguments:
///         cryptoKey: ${myCryptoKey.id}
///         plaintext: my-secret-password
/// ```
///
///
/// The resulting instance can then access the encrypted password from its metadata
/// and decrypt it, e.g. using the [Cloud SDK](https://cloud.google.com/sdk/gcloud/reference/kms/decrypt)):
///
/// ```bash
/// $ curl -H "Metadata-Flavor: Google" http://metadata.google.internal/computeMetadata/v1/instance/attributes/password \
/// > | base64 -d | gcloud kms decrypt \
/// > --project my-project \
/// > --location us-central1 \
/// > --keyring my-key-ring \
/// > --key my-crypto-key \
/// > --plaintext-file - \
/// > --ciphertext-file - \
/// my-secret-password
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_kmssecret_ciphertext_get_kmssecret_ciphertext_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKMSSecretCiphertextResult> getKMSSecretCiphertext(
  GetKMSSecretCiphertextArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKMSSecretCiphertext:getKMSSecretCiphertext',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKMSSecretCiphertextResult.fromMap(result);
}

/// Provides access to Google Cloud Platform KMS KeyHandle. A key handle is a Cloud KMS resource that helps you safely span the separation of duties to create new Cloud KMS keys for CMEK using Autokey.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/resource-hierarchy#key_handles)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyHandles).
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myKeyHandle = gcp.kms.getKeyHandle({
///     name: "eed58b7b-20ad-4da8-ad85-ba78a0d5ab87",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_key_handle = gcp.kms.get_key_handle(name="eed58b7b-20ad-4da8-ad85-ba78a0d5ab87",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myKeyHandle = Gcp.Kms.GetKeyHandle.Invoke(new()
///     {
///         Name = "eed58b7b-20ad-4da8-ad85-ba78a0d5ab87",
///         Location = "us-central1",
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
/// 		_, err := kms.LookupKeyHandle(ctx, &kms.LookupKeyHandleArgs{
/// 			Name:     "eed58b7b-20ad-4da8-ad85-ba78a0d5ab87",
/// 			Location: "us-central1",
/// 		}, nil)
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
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKeyHandleArgs;
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
///         final var myKeyHandle = KmsFunctions.getKeyHandle(GetKeyHandleArgs.builder()
///             .name("eed58b7b-20ad-4da8-ad85-ba78a0d5ab87")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myKeyHandle:
///     fn::invoke:
///       function: gcp:kms:getKeyHandle
///       arguments:
///         name: eed58b7b-20ad-4da8-ad85-ba78a0d5ab87
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_key_handle_get_key_handle_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyHandleResult> getKeyHandle(
  GetKeyHandleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKeyHandle:getKeyHandle',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyHandleResult.fromMap(result);
}

/// Provides access to Google Cloud Platform KMS KeyHandle. A key handle is a Cloud KMS resource that helps you safely span the separation of duties to create new Cloud KMS keys for CMEK using Autokey.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/resource-hierarchy#key_handles)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyHandles/list).
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myKeyHandles = gcp.kms.getKeyHandles({
///     project: "resource-project-id",
///     location: "us-central1",
///     resourceTypeSelector: "storage.googleapis.com/Bucket",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_key_handles = gcp.kms.get_key_handles(project="resource-project-id",
///     location="us-central1",
///     resource_type_selector="storage.googleapis.com/Bucket")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myKeyHandles = Gcp.Kms.GetKeyHandles.Invoke(new()
///     {
///         Project = "resource-project-id",
///         Location = "us-central1",
///         ResourceTypeSelector = "storage.googleapis.com/Bucket",
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
/// 		_, err := kms.GetKeyHandles(ctx, &kms.GetKeyHandlesArgs{
/// 			Project:              pulumi.StringRef("resource-project-id"),
/// 			Location:             "us-central1",
/// 			ResourceTypeSelector: "storage.googleapis.com/Bucket",
/// 		}, nil)
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
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKeyHandlesArgs;
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
///         final var myKeyHandles = KmsFunctions.getKeyHandles(GetKeyHandlesArgs.builder()
///             .project("resource-project-id")
///             .location("us-central1")
///             .resourceTypeSelector("storage.googleapis.com/Bucket")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myKeyHandles:
///     fn::invoke:
///       function: gcp:kms:getKeyHandles
///       arguments:
///         project: resource-project-id
///         location: us-central1
///         resourceTypeSelector: storage.googleapis.com/Bucket
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_key_handles_get_key_handles_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyHandlesResult> getKeyHandles(
  GetKeyHandlesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKeyHandles:getKeyHandles',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyHandlesResult.fromMap(result);
}

/// Retrieves the current IAM policy data for a Google Cloud KMS key ring.
///
/// ## example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testKeyRingIamPolicy = gcp.kms.getKeyRingIamPolicy({
///     keyRingId: "{project_id}/{location_name}/{key_ring_name}",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_key_ring_iam_policy = gcp.kms.get_key_ring_iam_policy(key_ring_id="{project_id}/{location_name}/{key_ring_name}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testKeyRingIamPolicy = Gcp.Kms.GetKeyRingIamPolicy.Invoke(new()
///     {
///         KeyRingId = "{project_id}/{location_name}/{key_ring_name}",
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
/// 		_, err := kms.GetKeyRingIamPolicy(ctx, &kms.GetKeyRingIamPolicyArgs{
/// 			KeyRingId: "{project_id}/{location_name}/{key_ring_name}",
/// 		}, nil)
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
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKeyRingIamPolicyArgs;
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
///         final var testKeyRingIamPolicy = KmsFunctions.getKeyRingIamPolicy(GetKeyRingIamPolicyArgs.builder()
///             .keyRingId("{project_id}/{location_name}/{key_ring_name}")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   testKeyRingIamPolicy:
///     fn::invoke:
///       function: gcp:kms:getKeyRingIamPolicy
///       arguments:
///         keyRingId: '{project_id}/{location_name}/{key_ring_name}'
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_key_ring_iam_policy_get_key_ring_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyRingIamPolicyResult> getKeyRingIamPolicy(
  GetKeyRingIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKeyRingIamPolicy:getKeyRingIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyRingIamPolicyResult.fromMap(result);
}

/// Provides access to all Google Cloud Platform KMS CryptoKeyRings in a set location. For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/resource-hierarchy#key_rings)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings).
///
/// A key ring organizes keys in a specific Google Cloud location and lets you manage access control on groups of keys. A key ring's name does not need to be unique across a Google Cloud project, but must be unique within a given location. After creation, a key ring cannot be deleted. Key rings don't incur any costs.
/// [args] Arguments passed to this invoke. {@macro pulumi_kms_get_key_rings_get_key_rings_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyRingsResult> getKeyRings(
  GetKeyRingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKeyRings:getKeyRings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyRingsResult.fromMap(result);
}
