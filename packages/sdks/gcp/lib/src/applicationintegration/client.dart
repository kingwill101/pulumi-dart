import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_args.dart';
import 'client_cloud_kms_config.dart';
import 'client_state.dart';

/// Application Integration Client.
///
///
/// To get more information about Client, see:
///
/// * [API documentation](https://cloud.google.com/application-integration/docs/reference/rest/v1/projects.locations.clients)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/application-integration/docs/overview)
/// * [Set up Application Integration](https://cloud.google.com/application-integration/docs/setup-application-integration)
///
/// ## Example Usage
///
/// ### Integrations Client Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.applicationintegration.Client("example", {location: "us-central1"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.applicationintegration.Client("example", location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.ApplicationIntegration.Client("example", new()
///     {
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/applicationintegration"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := applicationintegration.NewClient(ctx, "example", &applicationintegration.ClientArgs{
/// 			Location: pulumi.String("us-central1"),
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
/// import com.pulumi.gcp.applicationintegration.Client;
/// import com.pulumi.gcp.applicationintegration.ClientArgs;
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
///         var example = new Client("example", ClientArgs.builder()
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:applicationintegration:Client
///     properties:
///       location: us-central1
/// ```
///
/// ### Integrations Client Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const _default = gcp.organizations.getProject({});
/// const keyring = gcp.kms.getKMSKeyRing({
///     name: "my-keyring",
///     location: "us-east1",
/// });
/// const cryptokey = keyring.then(keyring => gcp.kms.getKMSCryptoKey({
///     name: "my-crypto-key",
///     keyRing: keyring.id,
/// }));
/// const testKey = cryptokey.then(cryptokey => gcp.kms.getKMSCryptoKeyVersion({
///     cryptoKey: cryptokey.id,
/// }));
/// const example = new gcp.applicationintegration.Client("example", {
///     location: "us-east1",
///     createSampleIntegrations: true,
///     cloudKmsConfig: {
///         kmsLocation: "us-east1",
///         kmsRing: keyring.then(keyring => std.basename({
///             input: keyring.id,
///         })).then(invoke => invoke.result),
///         key: cryptokey.then(cryptokey => std.basename({
///             input: cryptokey.id,
///         })).then(invoke => invoke.result),
///         keyVersion: testKey.then(testKey => std.basename({
///             input: testKey.id,
///         })).then(invoke => invoke.result),
///         kmsProjectId: _default.then(_default => _default.projectId),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default = gcp.organizations.get_project()
/// keyring = gcp.kms.get_kms_key_ring(name="my-keyring",
///     location="us-east1")
/// cryptokey = gcp.kms.get_kms_crypto_key(name="my-crypto-key",
///     key_ring=keyring.id)
/// test_key = gcp.kms.get_kms_crypto_key_version(crypto_key=cryptokey.id)
/// example = gcp.applicationintegration.Client("example",
///     location="us-east1",
///     create_sample_integrations=True,
///     cloud_kms_config={
///         "kms_location": "us-east1",
///         "kms_ring": std.basename(input=keyring.id).result,
///         "key": std.basename(input=cryptokey.id).result,
///         "key_version": std.basename(input=test_key.id).result,
///         "kms_project_id": default.project_id,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Organizations.GetProject.Invoke();
///
///     var keyring = Gcp.Kms.GetKMSKeyRing.Invoke(new()
///     {
///         Name = "my-keyring",
///         Location = "us-east1",
///     });
///
///     var cryptokey = Gcp.Kms.GetKMSCryptoKey.Invoke(new()
///     {
///         Name = "my-crypto-key",
///         KeyRing = keyring.Apply(getKMSKeyRingResult => getKMSKeyRingResult.Id),
///     });
///
///     var testKey = Gcp.Kms.GetKMSCryptoKeyVersion.Invoke(new()
///     {
///         CryptoKey = cryptokey.Apply(getKMSCryptoKeyResult => getKMSCryptoKeyResult.Id),
///     });
///
///     var example = new Gcp.ApplicationIntegration.Client("example", new()
///     {
///         Location = "us-east1",
///         CreateSampleIntegrations = true,
///         CloudKmsConfig = new Gcp.ApplicationIntegration.Inputs.ClientCloudKmsConfigArgs
///         {
///             KmsLocation = "us-east1",
///             KmsRing = Std.Basename.Invoke(new()
///             {
///                 Input = keyring.Apply(getKMSKeyRingResult => getKMSKeyRingResult.Id),
///             }).Apply(invoke => invoke.Result),
///             Key = Std.Basename.Invoke(new()
///             {
///                 Input = cryptokey.Apply(getKMSCryptoKeyResult => getKMSCryptoKeyResult.Id),
///             }).Apply(invoke => invoke.Result),
///             KeyVersion = Std.Basename.Invoke(new()
///             {
///                 Input = testKey.Apply(getKMSCryptoKeyVersionResult => getKMSCryptoKeyVersionResult.Id),
///             }).Apply(invoke => invoke.Result),
///             KmsProjectId = @default.Apply(@default => @default.Apply(getProjectResult => getProjectResult.ProjectId)),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/applicationintegration"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		keyring, err := kms.GetKMSKeyRing(ctx, &kms.GetKMSKeyRingArgs{
/// 			Name:     "my-keyring",
/// 			Location: "us-east1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptokey, err := kms.GetKMSCryptoKey(ctx, &kms.GetKMSCryptoKeyArgs{
/// 			Name:    "my-crypto-key",
/// 			KeyRing: keyring.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testKey, err := kms.GetKMSCryptoKeyVersion(ctx, &kms.GetKMSCryptoKeyVersionArgs{
/// 			CryptoKey: cryptokey.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBasename, err := std.Basename(ctx, &std.BasenameArgs{
/// 			Input: keyring.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBasename1, err := std.Basename(ctx, &std.BasenameArgs{
/// 			Input: cryptokey.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBasename2, err := std.Basename(ctx, &std.BasenameArgs{
/// 			Input: testKey.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = applicationintegration.NewClient(ctx, "example", &applicationintegration.ClientArgs{
/// 			Location:                 pulumi.String("us-east1"),
/// 			CreateSampleIntegrations: pulumi.Bool(true),
/// 			CloudKmsConfig: &applicationintegration.ClientCloudKmsConfigArgs{
/// 				KmsLocation:  pulumi.String("us-east1"),
/// 				KmsRing:      pulumi.String(invokeBasename.Result),
/// 				Key:          pulumi.String(invokeBasename1.Result),
/// 				KeyVersion:   pulumi.String(invokeBasename2.Result),
/// 				KmsProjectId: pulumi.String(_default.ProjectId),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKMSKeyRingArgs;
/// import com.pulumi.gcp.kms.inputs.GetKMSCryptoKeyArgs;
/// import com.pulumi.gcp.kms.inputs.GetKMSCryptoKeyVersionArgs;
/// import com.pulumi.gcp.applicationintegration.Client;
/// import com.pulumi.gcp.applicationintegration.ClientArgs;
/// import com.pulumi.gcp.applicationintegration.inputs.ClientCloudKmsConfigArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.BasenameArgs;
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
///         final var default = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         final var keyring = KmsFunctions.getKMSKeyRing(GetKMSKeyRingArgs.builder()
///             .name("my-keyring")
///             .location("us-east1")
///             .build());
///
///         final var cryptokey = KmsFunctions.getKMSCryptoKey(GetKMSCryptoKeyArgs.builder()
///             .name("my-crypto-key")
///             .keyRing(keyring.id())
///             .build());
///
///         final var testKey = KmsFunctions.getKMSCryptoKeyVersion(GetKMSCryptoKeyVersionArgs.builder()
///             .cryptoKey(cryptokey.id())
///             .build());
///
///         var example = new Client("example", ClientArgs.builder()
///             .location("us-east1")
///             .createSampleIntegrations(true)
///             .cloudKmsConfig(ClientCloudKmsConfigArgs.builder()
///                 .kmsLocation("us-east1")
///                 .kmsRing(StdFunctions.basename(BasenameArgs.builder()
///                     .input(keyring.id())
///                     .build()).result())
///                 .key(StdFunctions.basename(BasenameArgs.builder()
///                     .input(cryptokey.id())
///                     .build()).result())
///                 .keyVersion(StdFunctions.basename(BasenameArgs.builder()
///                     .input(testKey.id())
///                     .build()).result())
///                 .kmsProjectId(default_.projectId())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:applicationintegration:Client
///     properties:
///       location: us-east1
///       createSampleIntegrations: true
///       cloudKmsConfig:
///         kmsLocation: us-east1
///         kmsRing:
///           fn::invoke:
///             function: std:basename
///             arguments:
///               input: ${keyring.id}
///             return: result
///         key:
///           fn::invoke:
///             function: std:basename
///             arguments:
///               input: ${cryptokey.id}
///             return: result
///         keyVersion:
///           fn::invoke:
///             function: std:basename
///             arguments:
///               input: ${testKey.id}
///             return: result
///         kmsProjectId: ${default.projectId}
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
///   keyring:
///     fn::invoke:
///       function: gcp:kms:getKMSKeyRing
///       arguments:
///         name: my-keyring
///         location: us-east1
///   cryptokey:
///     fn::invoke:
///       function: gcp:kms:getKMSCryptoKey
///       arguments:
///         name: my-crypto-key
///         keyRing: ${keyring.id}
///   testKey:
///     fn::invoke:
///       function: gcp:kms:getKMSCryptoKeyVersion
///       arguments:
///         cryptoKey: ${cryptokey.id}
/// ```
///
///
/// ## Import
///
/// Client can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clients`
///
/// * `{{project}}/{{location}}`
///
/// * `{{location}}`
///
/// When using the `pulumi import` command, Client can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:applicationintegration/client:Client default projects/{{project}}/locations/{{location}}/clients
/// ```
///
/// ```sh
/// $ pulumi import gcp:applicationintegration/client:Client default {{project}}/{{location}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:applicationintegration/client:Client default {{location}}
/// ```
class Client extends pulumi.CustomResource {
  /// Cloud KMS config for AuthModule to encrypt/decrypt credentials.
  /// Structure is documented below.
  late final pulumi.Output<ClientCloudKmsConfig?> cloudKmsConfig;
  /// Indicates if sample integrations should be created along with provisioning.
  late final pulumi.Output<bool?> createSampleIntegrations;
  /// Location in which client needs to be provisioned.
  late final pulumi.Output<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// (Optional, Deprecated)
  /// User input run-as service account, if empty, will bring up a new default service account.
  ///
  /// > **Warning:** `run_as_service_account` is deprecated and will be removed in a future major release.
  late final pulumi.Output<String?> runAsServiceAccount;

  /// Creates a new [Client].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Client]. {@macro pulumi_applicationintegration_client_client_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Client(
    String name, {
    ClientArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:applicationintegration/client:Client',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cloudKmsConfig = registerOutput<ClientCloudKmsConfig?>('cloudKmsConfig');
    this.createSampleIntegrations = registerOutput<bool?>('createSampleIntegrations');
    this.location = registerOutput<String>('location');
    this.project = registerOutput<String>('project');
    this.runAsServiceAccount = registerOutput<String?>('runAsServiceAccount');
  }

  /// Gets an existing [Client] resource's state with the given [name] and [id].
  static Client get(
    String name,
    pulumi.Input<String> id, {
    ClientState? state,
  }) {
    return Client._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Client._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:applicationintegration/client:Client',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cloudKmsConfig = registerOutput<ClientCloudKmsConfig?>('cloudKmsConfig');
    this.createSampleIntegrations = registerOutput<bool?>('createSampleIntegrations');
    this.location = registerOutput<String>('location');
    this.project = registerOutput<String>('project');
    this.runAsServiceAccount = registerOutput<String?>('runAsServiceAccount');
  }
}
