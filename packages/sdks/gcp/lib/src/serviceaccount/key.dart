import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_args.dart';
import 'key_state.dart';

/// ## Example Usage
///
/// ### Creating A New Key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myaccount = new gcp.serviceaccount.Account("myaccount", {
///     accountId: "myaccount",
///     displayName: "My Service Account",
/// });
/// const mykey = new gcp.serviceaccount.Key("mykey", {
///     serviceAccountId: myaccount.name,
///     publicKeyType: "TYPE_X509_PEM_FILE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// myaccount = gcp.serviceaccount.Account("myaccount",
///     account_id="myaccount",
///     display_name="My Service Account")
/// mykey = gcp.serviceaccount.Key("mykey",
///     service_account_id=myaccount.name,
///     public_key_type="TYPE_X509_PEM_FILE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myaccount = new Gcp.ServiceAccount.Account("myaccount", new()
///     {
///         AccountId = "myaccount",
///         DisplayName = "My Service Account",
///     });
///
///     var mykey = new Gcp.ServiceAccount.Key("mykey", new()
///     {
///         ServiceAccountId = myaccount.Name,
///         PublicKeyType = "TYPE_X509_PEM_FILE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myaccount, err := serviceaccount.NewAccount(ctx, "myaccount", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("myaccount"),
/// 			DisplayName: pulumi.String("My Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = serviceaccount.NewKey(ctx, "mykey", &serviceaccount.KeyArgs{
/// 			ServiceAccountId: myaccount.Name,
/// 			PublicKeyType:    pulumi.String("TYPE_X509_PEM_FILE"),
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.serviceaccount.Key;
/// import com.pulumi.gcp.serviceaccount.KeyArgs;
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
///         var myaccount = new Account("myaccount", AccountArgs.builder()
///             .accountId("myaccount")
///             .displayName("My Service Account")
///             .build());
///
///         var mykey = new Key("mykey", KeyArgs.builder()
///             .serviceAccountId(myaccount.name())
///             .publicKeyType("TYPE_X509_PEM_FILE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myaccount:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: myaccount
///       displayName: My Service Account
///   mykey:
///     type: gcp:serviceaccount:Key
///     properties:
///       serviceAccountId: ${myaccount.name}
///       publicKeyType: TYPE_X509_PEM_FILE
/// ```
///
///
///
/// ### Creating And Regularly Rotating A Key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const myaccount = new gcp.serviceaccount.Account("myaccount", {
///     accountId: "myaccount",
///     displayName: "My Service Account",
/// });
/// // note this requires the terraform to be run regularly
/// const mykeyRotation = new time.Rotating("mykey_rotation", {rotationDays: 30});
/// const mykey = new gcp.serviceaccount.Key("mykey", {
///     serviceAccountId: myaccount.name,
///     keepers: {
///         rotation_time: mykeyRotation.rotationRfc3339,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// myaccount = gcp.serviceaccount.Account("myaccount",
///     account_id="myaccount",
///     display_name="My Service Account")
/// # note this requires the terraform to be run regularly
/// mykey_rotation = time.Rotating("mykey_rotation", rotation_days=30)
/// mykey = gcp.serviceaccount.Key("mykey",
///     service_account_id=myaccount.name,
///     keepers={
///         "rotation_time": mykey_rotation.rotation_rfc3339,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myaccount = new Gcp.ServiceAccount.Account("myaccount", new()
///     {
///         AccountId = "myaccount",
///         DisplayName = "My Service Account",
///     });
///
///     // note this requires the terraform to be run regularly
///     var mykeyRotation = new Time.Rotating("mykey_rotation", new()
///     {
///         RotationDays = 30,
///     });
///
///     var mykey = new Gcp.ServiceAccount.Key("mykey", new()
///     {
///         ServiceAccountId = myaccount.Name,
///         Keepers =
///         {
///             { "rotation_time", mykeyRotation.RotationRfc3339 },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myaccount, err := serviceaccount.NewAccount(ctx, "myaccount", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("myaccount"),
/// 			DisplayName: pulumi.String("My Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// note this requires the terraform to be run regularly
/// 		mykeyRotation, err := time.NewRotating(ctx, "mykey_rotation", &time.RotatingArgs{
/// 			RotationDays: pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = serviceaccount.NewKey(ctx, "mykey", &serviceaccount.KeyArgs{
/// 			ServiceAccountId: myaccount.Name,
/// 			Keepers: pulumi.StringMap{
/// 				"rotation_time": mykeyRotation.RotationRfc3339,
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumiverse.time.Rotating;
/// import com.pulumiverse.time.RotatingArgs;
/// import com.pulumi.gcp.serviceaccount.Key;
/// import com.pulumi.gcp.serviceaccount.KeyArgs;
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
///         var myaccount = new Account("myaccount", AccountArgs.builder()
///             .accountId("myaccount")
///             .displayName("My Service Account")
///             .build());
///
///         // note this requires the terraform to be run regularly
///         var mykeyRotation = new Rotating("mykeyRotation", RotatingArgs.builder()
///             .rotationDays(30)
///             .build());
///
///         var mykey = new Key("mykey", KeyArgs.builder()
///             .serviceAccountId(myaccount.name())
///             .keepers(Map.of("rotation_time", mykeyRotation.rotationRfc3339()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myaccount:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: myaccount
///       displayName: My Service Account
///   # note this requires the terraform to be run regularly
///   mykeyRotation:
///     type: time:Rotating
///     name: mykey_rotation
///     properties:
///       rotationDays: 30
///   mykey:
///     type: gcp:serviceaccount:Key
///     properties:
///       serviceAccountId: ${myaccount.name}
///       keepers:
///         rotation_time: ${mykeyRotation.rotationRfc3339}
/// ```
///
///
///
/// ### Save Key In Kubernetes Secret - DEPRECATED
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as kubernetes from "@pulumi/kubernetes";
/// import * as std from "@pulumi/std";
///
/// // Workload Identity is the recommended way of accessing Google Cloud APIs from pods.
/// // https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
/// const myaccount = new gcp.serviceaccount.Account("myaccount", {
///     accountId: "myaccount",
///     displayName: "My Service Account",
/// });
/// const mykey = new gcp.serviceaccount.Key("mykey", {serviceAccountId: myaccount.name});
/// const google_application_credentials = new kubernetes.index.Secret("google-application-credentials", {
///     metadata: [{
///         name: "google-application-credentials",
///     }],
///     data: {
///         "credentials.json": std.base64decodeOutput({
///             input: mykey.privateKey,
///         }).result,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_kubernetes as kubernetes
/// import pulumi_std as std
///
/// # Workload Identity is the recommended way of accessing Google Cloud APIs from pods.
/// # https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
/// myaccount = gcp.serviceaccount.Account("myaccount",
///     account_id="myaccount",
///     display_name="My Service Account")
/// mykey = gcp.serviceaccount.Key("mykey", service_account_id=myaccount.name)
/// google_application_credentials = kubernetes.index.Secret("google-application-credentials",
///     metadata=[{
///         name: google-application-credentials,
///     }],
///     data={
///         credentials.json: std.base64decode_output(input=mykey.private_key).result,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Kubernetes = Pulumi.Kubernetes;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Workload Identity is the recommended way of accessing Google Cloud APIs from pods.
///     // https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
///     var myaccount = new Gcp.ServiceAccount.Account("myaccount", new()
///     {
///         AccountId = "myaccount",
///         DisplayName = "My Service Account",
///     });
///
///     var mykey = new Gcp.ServiceAccount.Key("mykey", new()
///     {
///         ServiceAccountId = myaccount.Name,
///     });
///
///     var google_application_credentials = new Kubernetes.Index.Secret("google-application-credentials", new()
///     {
///         Metadata = new[]
///         {
///
///             {
///                 { "name", "google-application-credentials" },
///             },
///         },
///         Data =
///         {
///             { "credentials.json", Std.Base64decode.Invoke(new()
///             {
///                 Input = mykey.PrivateKey,
///             }).Result },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Workload Identity is the recommended way of accessing Google Cloud APIs from pods.
/// 		// https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
/// 		myaccount, err := serviceaccount.NewAccount(ctx, "myaccount", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("myaccount"),
/// 			DisplayName: pulumi.String("My Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mykey, err := serviceaccount.NewKey(ctx, "mykey", &serviceaccount.KeyArgs{
/// 			ServiceAccountId: myaccount.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kubernetes.NewSecret(ctx, "google-application-credentials", &kubernetes.SecretArgs{
/// 			Metadata: []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"name": "google-application-credentials",
/// 				},
/// 			},
/// 			Data: map[string]interface{}{
/// 				"credentials.json": std.Base64decode(ctx, &std.Base64decodeArgs{
/// 					Input: mykey.PrivateKey,
/// 				}, nil).Result,
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.serviceaccount.Key;
/// import com.pulumi.gcp.serviceaccount.KeyArgs;
/// import com.pulumi.kubernetes.Secret;
/// import com.pulumi.kubernetes.SecretArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64decodeArgs;
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
///         // Workload Identity is the recommended way of accessing Google Cloud APIs from pods.
///         // https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
///         var myaccount = new Account("myaccount", AccountArgs.builder()
///             .accountId("myaccount")
///             .displayName("My Service Account")
///             .build());
///
///         var mykey = new Key("mykey", KeyArgs.builder()
///             .serviceAccountId(myaccount.name())
///             .build());
///
///         var google_application_credentials = new Secret("google-application-credentials", SecretArgs.builder()
///             .metadata(List.of(Map.of("name", "google-application-credentials")))
///             .data(Map.of("credentials.json", StdFunctions.base64decode(Base64decodeArgs.builder()
///                 .input(mykey.privateKey())
///                 .build()).result()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Workload Identity is the recommended way of accessing Google Cloud APIs from pods.
///   # https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
///   myaccount:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: myaccount
///       displayName: My Service Account
///   mykey:
///     type: gcp:serviceaccount:Key
///     properties:
///       serviceAccountId: ${myaccount.name}
///   google-application-credentials:
///     type: kubernetes:Secret
///     properties:
///       metadata:
///         - name: google-application-credentials
///       data:
///         credentials.json:
///           fn::invoke:
///             function: std:base64decode
///             arguments:
///               input: ${mykey.privateKey}
///             return: result
/// ```
///
///
/// ## Import
///
/// This resource does not support import.
class Key extends pulumi.CustomResource {
  /// Arbitrary map of values that, when changed, will trigger a new key to be generated.
  late final pulumi.Output<Map<String, String>?> keepers;
  /// The algorithm used to generate the key. KEY_ALG_RSA_2048 is the default algorithm.
  /// Valid values are listed at
  /// [ServiceAccountPrivateKeyType](https://cloud.google.com/iam/reference/rest/v1/projects.serviceAccounts.keys#ServiceAccountKeyAlgorithm)
  /// (only used on create)
  late final pulumi.Output<String?> keyAlgorithm;
  /// The name used for this key pair
  late final pulumi.Output<String> name;
  /// The private key in JSON format, base64 encoded. This is what you normally get as a file when creating
  /// service account keys through the CLI or web console. This is only populated when creating a new key.
  late final pulumi.Output<String> privateKey;
  /// The output format of the private key. TYPE_GOOGLE_CREDENTIALS_FILE is the default output format.
  late final pulumi.Output<String?> privateKeyType;
  /// The public key, base64 encoded
  late final pulumi.Output<String> publicKey;
  /// Public key data to create a service account key for given service account. The expected format for this field is a base64 encoded X509_PEM and it conflicts with `public_key_type` and `private_key_type`.
  late final pulumi.Output<String?> publicKeyData;
  /// The output format of the public key requested. TYPE_X509_PEM_FILE is the default output format.
  late final pulumi.Output<String?> publicKeyType;
  /// The Service account id of the Key. This can be a string in the format
  /// `{ACCOUNT}` or `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. If the `{ACCOUNT}`-only syntax is used, either
  /// the **full** email address of the service account or its name can be specified as a value, in which case the project will
  /// automatically be inferred from the account. Otherwise, if the `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`
  /// syntax is used, the `{ACCOUNT}` specified can be the full email address of the service account or the service account's
  /// unique id. Substituting `-` as a wildcard for the `{PROJECT_ID}` will infer the project from the account.
  late final pulumi.Output<String> serviceAccountId;
  /// The key can be used after this timestamp. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> validAfter;
  /// The key can be used before this timestamp.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> validBefore;

  /// Creates a new [Key].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Key]. {@macro pulumi_serviceaccount_key_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Key(
    String name, {
    KeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:serviceaccount/key:Key',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.keepers = registerOutput<Map<String, String>?>('keepers');
    this.keyAlgorithm = registerOutput<String?>('keyAlgorithm');
    this.name = registerOutput<String>('name');
    this.privateKey = registerOutput<String>('privateKey');
    this.privateKeyType = registerOutput<String?>('privateKeyType');
    this.publicKey = registerOutput<String>('publicKey');
    this.publicKeyData = registerOutput<String?>('publicKeyData');
    this.publicKeyType = registerOutput<String?>('publicKeyType');
    this.serviceAccountId = registerOutput<String>('serviceAccountId');
    this.validAfter = registerOutput<String>('validAfter');
    this.validBefore = registerOutput<String>('validBefore');
  }

  /// Gets an existing [Key] resource's state with the given [name] and [id].
  static Key get(
    String name,
    pulumi.Input<String> id, {
    KeyState? state,
  }) {
    return Key._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Key._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:serviceaccount/key:Key',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.keepers = registerOutput<Map<String, String>?>('keepers');
    this.keyAlgorithm = registerOutput<String?>('keyAlgorithm');
    this.name = registerOutput<String>('name');
    this.privateKey = registerOutput<String>('privateKey');
    this.privateKeyType = registerOutput<String?>('privateKeyType');
    this.publicKey = registerOutput<String>('publicKey');
    this.publicKeyData = registerOutput<String?>('publicKeyData');
    this.publicKeyType = registerOutput<String?>('publicKeyType');
    this.serviceAccountId = registerOutput<String>('serviceAccountId');
    this.validAfter = registerOutput<String>('validAfter');
    this.validBefore = registerOutput<String>('validBefore');
  }
}
