import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_channel_config_args.dart';
import 'google_channel_config_state.dart';

/// The Eventarc GoogleChannelConfig resource
///
///
/// To get more information about GoogleChannelConfig, see:
///
/// * [API documentation](https://cloud.google.com/eventarc/docs/reference/rest/v1/projects.locations)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/eventarc/docs/use-cmek#enable-cmek-google-channel)
///
/// ## Example Usage
///
/// ### Eventarc Google Channel Config With Cmek
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testProject = gcp.organizations.getProject({
///     projectId: "my-project-name",
/// });
/// const testKeyRing = gcp.kms.getKMSKeyRing({
///     name: "keyring",
///     location: "us-centra1",
/// });
/// const key = testKeyRing.then(testKeyRing => gcp.kms.getKMSCryptoKey({
///     name: "key",
///     keyRing: testKeyRing.id,
/// }));
/// const keyMember = new gcp.kms.CryptoKeyIAMMember("key_member", {
///     cryptoKeyId: key.then(key => key.id),
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: testProject.then(testProject => `serviceAccount:service-${testProject.number}@gcp-sa-eventarc.iam.gserviceaccount.com`),
/// });
/// const primary = new gcp.eventarc.GoogleChannelConfig("primary", {
///     location: "us-central1",
///     name: "googleChannelConfig",
///     cryptoKeyName: key.then(key => key.id),
/// }, {
///     dependsOn: [keyMember],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_project = gcp.organizations.get_project(project_id="my-project-name")
/// test_key_ring = gcp.kms.get_kms_key_ring(name="keyring",
///     location="us-centra1")
/// key = gcp.kms.get_kms_crypto_key(name="key",
///     key_ring=test_key_ring.id)
/// key_member = gcp.kms.CryptoKeyIAMMember("key_member",
///     crypto_key_id=key.id,
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:service-{test_project.number}@gcp-sa-eventarc.iam.gserviceaccount.com")
/// primary = gcp.eventarc.GoogleChannelConfig("primary",
///     location="us-central1",
///     name="googleChannelConfig",
///     crypto_key_name=key.id,
///     opts = pulumi.ResourceOptions(depends_on=[key_member]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testProject = Gcp.Organizations.GetProject.Invoke(new()
///     {
///         ProjectId = "my-project-name",
///     });
///
///     var testKeyRing = Gcp.Kms.GetKMSKeyRing.Invoke(new()
///     {
///         Name = "keyring",
///         Location = "us-centra1",
///     });
///
///     var key = Gcp.Kms.GetKMSCryptoKey.Invoke(new()
///     {
///         Name = "key",
///         KeyRing = testKeyRing.Apply(getKMSKeyRingResult => getKMSKeyRingResult.Id),
///     });
///
///     var keyMember = new Gcp.Kms.CryptoKeyIAMMember("key_member", new()
///     {
///         CryptoKeyId = key.Apply(getKMSCryptoKeyResult => getKMSCryptoKeyResult.Id),
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:service-{testProject.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-eventarc.iam.gserviceaccount.com",
///     });
///
///     var primary = new Gcp.Eventarc.GoogleChannelConfig("primary", new()
///     {
///         Location = "us-central1",
///         Name = "googleChannelConfig",
///         CryptoKeyName = key.Apply(getKMSCryptoKeyResult => getKMSCryptoKeyResult.Id),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             keyMember,
///         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/eventarc"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testProject, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{
/// 			ProjectId: pulumi.StringRef("my-project-name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testKeyRing, err := kms.GetKMSKeyRing(ctx, &kms.GetKMSKeyRingArgs{
/// 			Name:     "keyring",
/// 			Location: "us-centra1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		key, err := kms.GetKMSCryptoKey(ctx, &kms.GetKMSCryptoKeyArgs{
/// 			Name:    "key",
/// 			KeyRing: testKeyRing.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		keyMember, err := kms.NewCryptoKeyIAMMember(ctx, "key_member", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String(key.Id),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-eventarc.iam.gserviceaccount.com", testProject.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventarc.NewGoogleChannelConfig(ctx, "primary", &eventarc.GoogleChannelConfigArgs{
/// 			Location:      pulumi.String("us-central1"),
/// 			Name:          pulumi.String("googleChannelConfig"),
/// 			CryptoKeyName: pulumi.String(key.Id),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			keyMember,
/// 		}))
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
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.eventarc.GoogleChannelConfig;
/// import com.pulumi.gcp.eventarc.GoogleChannelConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var testProject = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .projectId("my-project-name")
///             .build());
///
///         final var testKeyRing = KmsFunctions.getKMSKeyRing(GetKMSKeyRingArgs.builder()
///             .name("keyring")
///             .location("us-centra1")
///             .build());
///
///         final var key = KmsFunctions.getKMSCryptoKey(GetKMSCryptoKeyArgs.builder()
///             .name("key")
///             .keyRing(testKeyRing.id())
///             .build());
///
///         var keyMember = new CryptoKeyIAMMember("keyMember", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId(key.id())
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-eventarc.iam.gserviceaccount.com", testProject.number()))
///             .build());
///
///         var primary = new GoogleChannelConfig("primary", GoogleChannelConfigArgs.builder()
///             .location("us-central1")
///             .name("googleChannelConfig")
///             .cryptoKeyName(key.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(keyMember)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   keyMember:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: key_member
///     properties:
///       cryptoKeyId: ${key.id}
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:service-${testProject.number}@gcp-sa-eventarc.iam.gserviceaccount.com
///   primary:
///     type: gcp:eventarc:GoogleChannelConfig
///     properties:
///       location: us-central1
///       name: googleChannelConfig
///       cryptoKeyName: ${key.id}
///     options:
///       dependsOn:
///         - ${keyMember}
/// variables:
///   testProject:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments:
///         projectId: my-project-name
///   testKeyRing:
///     fn::invoke:
///       function: gcp:kms:getKMSKeyRing
///       arguments:
///         name: keyring
///         location: us-centra1
///   key:
///     fn::invoke:
///       function: gcp:kms:getKMSCryptoKey
///       arguments:
///         name: key
///         keyRing: ${testKeyRing.id}
/// ```
///
///
/// ## Import
///
/// GoogleChannelConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/googleChannelConfig`
///
/// * `{{project}}/{{location}}`
///
/// * `{{location}}`
///
/// When using the `pulumi import` command, GoogleChannelConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:eventarc/googleChannelConfig:GoogleChannelConfig default projects/{{project}}/locations/{{location}}/googleChannelConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/googleChannelConfig:GoogleChannelConfig default {{project}}/{{location}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/googleChannelConfig:GoogleChannelConfig default {{location}}
/// ```
class GoogleChannelConfig extends pulumi.CustomResource {
  /// Optional. Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  late final pulumi.Output<String?> cryptoKeyName;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// Required. The resource name of the config. Must be in the format of, `projects/{project}/locations/{location}/googleChannelConfig`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Output only. The last-modified time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [GoogleChannelConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GoogleChannelConfig]. {@macro pulumi_eventarc_google_channel_config_google_channel_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GoogleChannelConfig(
    String name, {
    GoogleChannelConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:eventarc/googleChannelConfig:GoogleChannelConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cryptoKeyName = registerOutput<String?>('cryptoKeyName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [GoogleChannelConfig] resource's state with the given [name] and [id].
  static GoogleChannelConfig get(
    String name,
    pulumi.Input<String> id, {
    GoogleChannelConfigState? state,
  }) {
    return GoogleChannelConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GoogleChannelConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:eventarc/googleChannelConfig:GoogleChannelConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cryptoKeyName = registerOutput<String?>('cryptoKeyName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
