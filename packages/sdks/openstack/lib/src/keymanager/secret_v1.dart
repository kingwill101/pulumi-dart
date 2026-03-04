import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_v1_acl.dart';
import 'secret_v1_args.dart';
import 'secret_v1_state.dart';

/// ## Example Usage
///
/// ### Simple secret
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const secret1 = new openstack.keymanager.SecretV1("secret_1", {
///     algorithm: "aes",
///     bitLength: 256,
///     mode: "cbc",
///     name: "mysecret",
///     payload: "foobar",
///     payloadContentType: "text/plain",
///     secretType: "passphrase",
///     metadata: {
///         key: "foo",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// secret1 = openstack.keymanager.SecretV1("secret_1",
///     algorithm="aes",
///     bit_length=256,
///     mode="cbc",
///     name="mysecret",
///     payload="foobar",
///     payload_content_type="text/plain",
///     secret_type="passphrase",
///     metadata={
///         "key": "foo",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret1 = new OpenStack.KeyManager.SecretV1("secret_1", new()
///     {
///         Algorithm = "aes",
///         BitLength = 256,
///         Mode = "cbc",
///         Name = "mysecret",
///         Payload = "foobar",
///         PayloadContentType = "text/plain",
///         SecretType = "passphrase",
///         Metadata =
///         {
///             { "key", "foo" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/keymanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := keymanager.NewSecretV1(ctx, "secret_1", &keymanager.SecretV1Args{
/// 			Algorithm:          pulumi.String("aes"),
/// 			BitLength:          pulumi.Int(256),
/// 			Mode:               pulumi.String("cbc"),
/// 			Name:               pulumi.String("mysecret"),
/// 			Payload:            pulumi.String("foobar"),
/// 			PayloadContentType: pulumi.String("text/plain"),
/// 			SecretType:         pulumi.String("passphrase"),
/// 			Metadata: pulumi.StringMap{
/// 				"key": pulumi.String("foo"),
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
/// import com.pulumi.openstack.keymanager.SecretV1;
/// import com.pulumi.openstack.keymanager.SecretV1Args;
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
///         var secret1 = new SecretV1("secret1", SecretV1Args.builder()
///             .algorithm("aes")
///             .bitLength(256)
///             .mode("cbc")
///             .name("mysecret")
///             .payload("foobar")
///             .payloadContentType("text/plain")
///             .secretType("passphrase")
///             .metadata(Map.of("key", "foo"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret1:
///     type: openstack:keymanager:SecretV1
///     name: secret_1
///     properties:
///       algorithm: aes
///       bitLength: 256
///       mode: cbc
///       name: mysecret
///       payload: foobar
///       payloadContentType: text/plain
///       secretType: passphrase
///       metadata:
///         key: foo
/// ```
///
///
/// ### Secret with whitespaces
///
/// &gt; **Note** If you want to store payload with leading or trailing whitespaces,
/// it's recommended to store it in a base64 encoding. Plain text payload can also
/// work, but further addind or removing of the leading or trailing whitespaces
/// won't be detected as a state change, e.g. changing plain text payload from
/// `password ` to `password` won't recreate the secret.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
/// import * as std from "@pulumi/std";
///
/// const secret1 = new openstack.keymanager.SecretV1("secret_1", {
///     name: "password",
///     payload: std.base64encode({
///         input: "password with the whitespace at the end ",
///     }).then(invoke => invoke.result),
///     secretType: "passphrase",
///     payloadContentType: "application/octet-stream",
///     payloadContentEncoding: "base64",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
/// import pulumi_std as std
///
/// secret1 = openstack.keymanager.SecretV1("secret_1",
///     name="password",
///     payload=std.base64encode(input="password with the whitespace at the end ").result,
///     secret_type="passphrase",
///     payload_content_type="application/octet-stream",
///     payload_content_encoding="base64")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret1 = new OpenStack.KeyManager.SecretV1("secret_1", new()
///     {
///         Name = "password",
///         Payload = Std.Base64encode.Invoke(new()
///         {
///             Input = "password with the whitespace at the end ",
///         }).Apply(invoke => invoke.Result),
///         SecretType = "passphrase",
///         PayloadContentType = "application/octet-stream",
///         PayloadContentEncoding = "base64",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/keymanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: "password with the whitespace at the end ",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keymanager.NewSecretV1(ctx, "secret_1", &keymanager.SecretV1Args{
/// 			Name:                   pulumi.String("password"),
/// 			Payload:                pulumi.String(invokeBase64encode.Result),
/// 			SecretType:             pulumi.String("passphrase"),
/// 			PayloadContentType:     pulumi.String("application/octet-stream"),
/// 			PayloadContentEncoding: pulumi.String("base64"),
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
/// import com.pulumi.openstack.keymanager.SecretV1;
/// import com.pulumi.openstack.keymanager.SecretV1Args;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
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
///         var secret1 = new SecretV1("secret1", SecretV1Args.builder()
///             .name("password")
///             .payload(StdFunctions.base64encode(Base64encodeArgs.builder()
///                 .input("password with the whitespace at the end ")
///                 .build()).result())
///             .secretType("passphrase")
///             .payloadContentType("application/octet-stream")
///             .payloadContentEncoding("base64")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret1:
///     type: openstack:keymanager:SecretV1
///     name: secret_1
///     properties:
///       name: password
///       payload:
///         fn::invoke:
///           function: std:base64encode
///           arguments:
///             input: 'password with the whitespace at the end '
///           return: result
///       secretType: passphrase
///       payloadContentType: application/octet-stream
///       payloadContentEncoding: base64
/// ```
///
///
/// ### Secret with the expiration date
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
/// import * as std from "@pulumi/std";
///
/// const secret1 = new openstack.keymanager.SecretV1("secret_1", {
///     name: "certificate",
///     payload: std.file({
///         input: "certificate.pem",
///     }).then(invoke => invoke.result),
///     secretType: "certificate",
///     payloadContentType: "text/plain",
///     expiration: Promise.all([std.timestamp({}), std.format({
///         input: "%dh",
///         args: [8760],
///     })]).then(([invoke, invoke1]) => std.timeadd({
///         duration: invoke.result,
///         timestamp: invoke1.result,
///     })).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
/// import pulumi_std as std
///
/// secret1 = openstack.keymanager.SecretV1("secret_1",
///     name="certificate",
///     payload=std.file(input="certificate.pem").result,
///     secret_type="certificate",
///     payload_content_type="text/plain",
///     expiration=std.timeadd(duration=std.timestamp().result,
///         timestamp=std.format(input="%dh",
///             args=[8760]).result).result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret1 = new OpenStack.KeyManager.SecretV1("secret_1", new()
///     {
///         Name = "certificate",
///         Payload = Std.File.Invoke(new()
///         {
///             Input = "certificate.pem",
///         }).Apply(invoke => invoke.Result),
///         SecretType = "certificate",
///         PayloadContentType = "text/plain",
///         Expiration = Output.Tuple(Std.Timestamp.Invoke(), Std.Format.Invoke(new()
///         {
///             Input = "%dh",
///             Args = new[]
///             {
///                 8760,
///             },
///         })).Apply(values =>
///         {
///             var invoke = values.Item1;
///             var invoke1 = values.Item2;
///             return Std.Timeadd.Invoke(new()
///             {
///                 Duration = invoke.Result,
///                 Timestamp = invoke1.Result,
///             });
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/keymanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "certificate.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeTimeadd1, err := std.Timeadd(ctx, &std.TimeaddArgs{
/// 			Duration: std.Timestamp(ctx, &std.TimestampArgs{}, nil).Result,
/// 			Timestamp: std.Format(ctx, &std.FormatArgs{
/// 				Input: "%dh",
/// 				Args: []float64{
/// 					8760,
/// 				},
/// 			}, nil).Result,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keymanager.NewSecretV1(ctx, "secret_1", &keymanager.SecretV1Args{
/// 			Name:               pulumi.String("certificate"),
/// 			Payload:            pulumi.String(invokeFile.Result),
/// 			SecretType:         pulumi.String("certificate"),
/// 			PayloadContentType: pulumi.String("text/plain"),
/// 			Expiration:         pulumi.String(invokeTimeadd1.Result),
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
/// import com.pulumi.openstack.keymanager.SecretV1;
/// import com.pulumi.openstack.keymanager.SecretV1Args;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.std.inputs.TimestampArgs;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.std.inputs.TimeaddArgs;
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
///         var secret1 = new SecretV1("secret1", SecretV1Args.builder()
///             .name("certificate")
///             .payload(StdFunctions.file(FileArgs.builder()
///                 .input("certificate.pem")
///                 .build()).result())
///             .secretType("certificate")
///             .payloadContentType("text/plain")
///             .expiration(StdFunctions.timeadd(TimeaddArgs.builder()
///                 .duration(StdFunctions.timestamp(TimestampArgs.builder()
///                     .build()).result())
///                 .timestamp(StdFunctions.format(FormatArgs.builder()
///                     .input("%dh")
///                     .args(8760)
///                     .build()).result())
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret1:
///     type: openstack:keymanager:SecretV1
///     name: secret_1
///     properties:
///       name: certificate
///       payload:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: certificate.pem
///           return: result
///       secretType: certificate
///       payloadContentType: text/plain
///       expiration:
///         fn::invoke:
///           function: std:timeadd
///           arguments:
///             duration:
///               fn::invoke:
///                 function: std:timestamp
///                 arguments: {}
///                 return: result
///             timestamp:
///               fn::invoke:
///                 function: std:format
///                 arguments:
///                   input: '%dh'
///                   args:
///                     - 8760
///                 return: result
///           return: result
/// ```
///
///
/// ### Secret with the ACL
///
/// &gt; **Note** Only read ACLs are supported
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
/// import * as std from "@pulumi/std";
///
/// const secret1 = new openstack.keymanager.SecretV1("secret_1", {
///     name: "certificate",
///     payload: std.file({
///         input: "certificate.pem",
///     }).then(invoke => invoke.result),
///     secretType: "certificate",
///     payloadContentType: "text/plain",
///     acl: {
///         read: {
///             projectAccess: false,
///             users: [
///                 "userid1",
///                 "userid2",
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
/// import pulumi_std as std
///
/// secret1 = openstack.keymanager.SecretV1("secret_1",
///     name="certificate",
///     payload=std.file(input="certificate.pem").result,
///     secret_type="certificate",
///     payload_content_type="text/plain",
///     acl={
///         "read": {
///             "project_access": False,
///             "users": [
///                 "userid1",
///                 "userid2",
///             ],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret1 = new OpenStack.KeyManager.SecretV1("secret_1", new()
///     {
///         Name = "certificate",
///         Payload = Std.File.Invoke(new()
///         {
///             Input = "certificate.pem",
///         }).Apply(invoke => invoke.Result),
///         SecretType = "certificate",
///         PayloadContentType = "text/plain",
///         Acl = new OpenStack.KeyManager.Inputs.SecretV1AclArgs
///         {
///             Read = new OpenStack.KeyManager.Inputs.SecretV1AclReadArgs
///             {
///                 ProjectAccess = false,
///                 Users = new[]
///                 {
///                     "userid1",
///                     "userid2",
///                 },
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
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/keymanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "certificate.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keymanager.NewSecretV1(ctx, "secret_1", &keymanager.SecretV1Args{
/// 			Name:               pulumi.String("certificate"),
/// 			Payload:            pulumi.String(invokeFile.Result),
/// 			SecretType:         pulumi.String("certificate"),
/// 			PayloadContentType: pulumi.String("text/plain"),
/// 			Acl: &keymanager.SecretV1AclArgs{
/// 				Read: &keymanager.SecretV1AclReadArgs{
/// 					ProjectAccess: pulumi.Bool(false),
/// 					Users: pulumi.StringArray{
/// 						pulumi.String("userid1"),
/// 						pulumi.String("userid2"),
/// 					},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.openstack.keymanager.SecretV1;
/// import com.pulumi.openstack.keymanager.SecretV1Args;
/// import com.pulumi.openstack.keymanager.inputs.SecretV1AclArgs;
/// import com.pulumi.openstack.keymanager.inputs.SecretV1AclReadArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var secret1 = new SecretV1("secret1", SecretV1Args.builder()
///             .name("certificate")
///             .payload(StdFunctions.file(FileArgs.builder()
///                 .input("certificate.pem")
///                 .build()).result())
///             .secretType("certificate")
///             .payloadContentType("text/plain")
///             .acl(SecretV1AclArgs.builder()
///                 .read(SecretV1AclReadArgs.builder()
///                     .projectAccess(false)
///                     .users(
///                         "userid1",
///                         "userid2")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret1:
///     type: openstack:keymanager:SecretV1
///     name: secret_1
///     properties:
///       name: certificate
///       payload:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: certificate.pem
///           return: result
///       secretType: certificate
///       payloadContentType: text/plain
///       acl:
///         read:
///           projectAccess: false
///           users:
///             - userid1
///             - userid2
/// ```
///
///
/// ## Import
///
/// Secrets can be imported using the secret id (the last part of the secret reference), e.g.:
///
/// ```sh
/// $ pulumi import openstack:keymanager/secretV1:SecretV1 secret_1 8a7a79c2-cf17-4e65-b2ae-ddc8bfcf6c74
/// ```
class SecretV1 extends pulumi.CustomResource {
  /// Allows to control an access to a secret. Currently only the
  /// `read` operation is supported. If not specified, the secret is accessible
  /// project wide.
  late final pulumi.Output<SecretV1Acl> acl;

  /// Metadata provided by a user or system for informational purposes.
  late final pulumi.Output<String> algorithm;

  /// The map of metadata, assigned on the secret, which has been
  /// explicitly and implicitly added.
  late final pulumi.Output<Map<String, String>> allMetadata;

  /// Metadata provided by a user or system for informational purposes.
  late final pulumi.Output<int> bitLength;

  /// The map of the content types, assigned on the secret.
  late final pulumi.Output<Map<String, String>> contentTypes;

  /// The date the secret was created.
  late final pulumi.Output<String> createdAt;

  /// The creator of the secret.
  late final pulumi.Output<String> creatorId;

  /// The expiration time of the secret in the RFC3339 timestamp format (e.g. `2019-03-09T12:58:49Z`). If omitted, a secret will never expire. Changing this creates a new secret.
  late final pulumi.Output<String?> expiration;

  /// Additional Metadata for the secret.
  late final pulumi.Output<Map<String, String>?> metadata;

  /// Metadata provided by a user or system for informational purposes.
  late final pulumi.Output<String> mode;

  /// Human-readable name for the Secret. Does not have
  /// to be unique.
  late final pulumi.Output<String> name;

  /// The secret's data to be stored. **payload\_content\_type** must also be supplied if **payload** is included.
  late final pulumi.Output<String?> payload;

  /// (required if **payload** is encoded) The encoding used for the payload to be able to include it in the JSON request. Must be either `base64` or `binary`.
  late final pulumi.Output<String?> payloadContentEncoding;

  /// (required if **payload** is included) The media type for the content of the payload. Must be one of `text/plain`, `text/plain;charset=utf-8`, `text/plain; charset=utf-8`, `application/octet-stream`, `application/pkcs8`.
  late final pulumi.Output<String?> payloadContentType;

  /// The region in which to obtain the V1 KeyManager client.
  /// A KeyManager client is needed to create a secret. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// V1 secret.
  late final pulumi.Output<String> region;

  /// The secret reference / where to find the secret.
  late final pulumi.Output<String> secretRef;

  /// Used to indicate the type of secret being stored. For more information see [Secret types](https://docs.openstack.org/barbican/latest/api/reference/secret_types.html).
  late final pulumi.Output<String> secretType;

  /// The status of the secret.
  late final pulumi.Output<String> status;

  /// The date the secret was last updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [SecretV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecretV1]. {@macro pulumi_keymanager_secret_v1_secret_v1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecretV1(
    String name, {
    SecretV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:keymanager/secretV1:SecretV1',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acl = registerOutput<SecretV1Acl>('acl');
    algorithm = registerOutput<String>('algorithm');
    allMetadata = registerOutput<Map<String, String>>('allMetadata');
    bitLength = registerOutput<int>('bitLength');
    contentTypes = registerOutput<Map<String, String>>('contentTypes');
    createdAt = registerOutput<String>('createdAt');
    creatorId = registerOutput<String>('creatorId');
    expiration = registerOutput<String?>('expiration');
    metadata = registerOutput<Map<String, String>?>('metadata');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    payload = registerOutput<String?>('payload');
    payloadContentEncoding = registerOutput<String?>('payloadContentEncoding');
    payloadContentType = registerOutput<String?>('payloadContentType');
    region = registerOutput<String>('region');
    secretRef = registerOutput<String>('secretRef');
    secretType = registerOutput<String>('secretType');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [SecretV1] resource's state with the given [name] and [id].
  static SecretV1 get(
    String name,
    pulumi.Input<String> id, {
    SecretV1State? state,
  }) {
    return SecretV1._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecretV1._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:keymanager/secretV1:SecretV1',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acl = registerOutput<SecretV1Acl>('acl');
    algorithm = registerOutput<String>('algorithm');
    allMetadata = registerOutput<Map<String, String>>('allMetadata');
    bitLength = registerOutput<int>('bitLength');
    contentTypes = registerOutput<Map<String, String>>('contentTypes');
    createdAt = registerOutput<String>('createdAt');
    creatorId = registerOutput<String>('creatorId');
    expiration = registerOutput<String?>('expiration');
    metadata = registerOutput<Map<String, String>?>('metadata');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    payload = registerOutput<String?>('payload');
    payloadContentEncoding = registerOutput<String?>('payloadContentEncoding');
    payloadContentType = registerOutput<String?>('payloadContentType');
    region = registerOutput<String>('region');
    secretRef = registerOutput<String>('secretRef');
    secretType = registerOutput<String>('secretType');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
