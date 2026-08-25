import 'package:pulumi/pulumi.dart' as pulumi;
import 'cmek_config_args.dart';
import 'cmek_config_single_region_key.dart';
import 'cmek_config_state.dart';

/// CmekConfig represents configurations used to enable CMEK data encryption with
/// Cloud KMS keys.
///
///
/// To get more information about CmekConfig, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1/projects.locations.cmekConfigs)
///
/// ## Example Usage
///
/// ### Discoveryengine Cmekconfig Default
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const cryptoKey = new gcp.kms.CryptoKeyIAMMember("crypto_key", {
///     cryptoKeyId: "kms-key-name",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-discoveryengine.iam.gserviceaccount.com`),
/// });
/// const _default = new gcp.discoveryengine.CmekConfig("default", {
///     location: "us",
///     cmekConfigId: "cmek-config-id",
///     kmsKey: "kms-key-name",
/// }, {
///     dependsOn: [cryptoKey],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// crypto_key = gcp.kms.CryptoKeyIAMMember("crypto_key",
///     crypto_key_id="kms-key-name",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-discoveryengine.iam.gserviceaccount.com")
/// default = gcp.discoveryengine.CmekConfig("default",
///     location="us",
///     cmek_config_id="cmek-config-id",
///     kms_key="kms-key-name",
///     opts = pulumi.ResourceOptions(depends_on=[crypto_key]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var cryptoKey = new Gcp.Kms.CryptoKeyIAMMember("crypto_key", new()
///     {
///         CryptoKeyId = "kms-key-name",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-discoveryengine.iam.gserviceaccount.com",
///     });
///
///     var @default = new Gcp.DiscoveryEngine.CmekConfig("default", new()
///     {
///         Location = "us",
///         CmekConfigId = "cmek-config-id",
///         KmsKey = "kms-key-name",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cryptoKey,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKey, err := kms.NewCryptoKeyIAMMember(ctx, "crypto_key", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("kms-key-name"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-discoveryengine.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = discoveryengine.NewCmekConfig(ctx, "default", &discoveryengine.CmekConfigArgs{
/// 			Location:     pulumi.String("us"),
/// 			CmekConfigId: pulumi.String("cmek-config-id"),
/// 			KmsKey:       pulumi.String("kms-key-name"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			cryptoKey,
/// 		}))
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_discoveryengine_cmekconfig" "default" {
///   depends_on     = [gcp_kms_cryptokeyiammember.crypto_key]
///   location       = "us"
///   cmek_config_id = "cmek-config-id"
///   kms_key        = "kms-key-name"
/// }
/// resource "gcp_kms_cryptokeyiammember" "crypto_key" {
///   crypto_key_id = "kms-key-name"
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-discoveryengine.iam.gserviceaccount.com"
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
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.discoveryengine.CmekConfig;
/// import com.pulumi.gcp.discoveryengine.CmekConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var cryptoKey = new CryptoKeyIAMMember("cryptoKey", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("kms-key-name")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-discoveryengine.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var default_ = new CmekConfig("default", CmekConfigArgs.builder()
///             .location("us")
///             .cmekConfigId("cmek-config-id")
///             .kmsKey("kms-key-name")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(cryptoKey)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:discoveryengine:CmekConfig
///     properties:
///       location: us
///       cmekConfigId: cmek-config-id
///       kmsKey: kms-key-name
///     options:
///       dependsOn:
///         - ${cryptoKey}
///   cryptoKey:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: crypto_key
///     properties:
///       cryptoKeyId: kms-key-name
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:service-${project.number}@gcp-sa-discoveryengine.iam.gserviceaccount.com
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// CmekConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/cmekConfigs/{{cmek_config_id}}`
/// * `{{project}}/{{location}}/{{cmek_config_id}}`
/// * `{{location}}/{{cmek_config_id}}`
///
///
/// When using the `pulumi import` command, CmekConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/cmekConfig:CmekConfig default projects/{{project}}/locations/{{location}}/cmekConfigs/{{cmek_config_id}}
/// $ pulumi import gcp:discoveryengine/cmekConfig:CmekConfig default {{project}}/{{location}}/{{cmek_config_id}}
/// $ pulumi import gcp:discoveryengine/cmekConfig:CmekConfig default {{location}}/{{cmek_config_id}}
/// ```
class CmekConfig extends pulumi.CustomResource {
  /// The unique id of the cmek config.
  late final pulumi.Output<String> cmekConfigId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The default CmekConfig for the Customer.
  late final pulumi.Output<bool> isDefault;
  /// KMS key resource name which will be used to encrypt resources
  /// `projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{keyId}`.
  late final pulumi.Output<String> kmsKey;
  /// KMS key version resource name which will be used to encrypt resources
  /// `&lt;kms_key&gt;/cryptoKeyVersions/{keyVersion}`.
  late final pulumi.Output<String> kmsKeyVersion;
  /// The timestamp of the last key rotation.
  late final pulumi.Output<int> lastRotationTimestampMicros;
  /// The geographic location where the CMEK config should reside. The value can
  /// only be one of "us" and "eu".
  late final pulumi.Output<String> location;
  /// The unique full resource name of the cmek config. Values are of the format
  /// `projects/{project}/locations/{location}/cmekConfigs/{cmek_config_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  late final pulumi.Output<String> name;
  /// Whether the NotebookLM Corpus is ready to be used.
  late final pulumi.Output<String> notebooklmState;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Set the following CmekConfig as the default to be used for child resources
  /// if one is not specified. The default value is true.
  late final pulumi.Output<bool?> setDefault;
  /// Single-regional CMEKs that are required for some VAIS features.
  /// Structure is documented below.
  late final pulumi.Output<List<CmekConfigSingleRegionKey>?> singleRegionKeys;
  /// The state of the CmekConfig.
  late final pulumi.Output<String> state;

  /// Creates a new [CmekConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CmekConfig]. {@macro pulumi_discoveryengine_cmek_config_cmek_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CmekConfig(
    String name, {
    CmekConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/cmekConfig:CmekConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    cmekConfigId = registerOutput<String>('cmekConfigId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    isDefault = registerOutput<bool>('isDefault');
    kmsKey = registerOutput<String>('kmsKey');
    kmsKeyVersion = registerOutput<String>('kmsKeyVersion');
    lastRotationTimestampMicros = registerOutput<int>('lastRotationTimestampMicros');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    notebooklmState = registerOutput<String>('notebooklmState');
    project = registerOutput<String>('project');
    setDefault = registerOutput<bool?>('setDefault');
    singleRegionKeys = registerOutput<List<CmekConfigSingleRegionKey>?>('singleRegionKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CmekConfigSingleRegionKey>(guardedValue, (value) => CmekConfigSingleRegionKey.fromMap((value as Map).cast<String, dynamic>())); });
    state = registerOutput<String>('state');
  }

  /// Gets an existing [CmekConfig] resource's state with the given [name] and [id].
  static CmekConfig get(
    String name,
    pulumi.Input<String> id, {
    CmekConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CmekConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CmekConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/cmekConfig:CmekConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cmekConfigId = registerOutput<String>('cmekConfigId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    isDefault = registerOutput<bool>('isDefault');
    kmsKey = registerOutput<String>('kmsKey');
    kmsKeyVersion = registerOutput<String>('kmsKeyVersion');
    lastRotationTimestampMicros = registerOutput<int>('lastRotationTimestampMicros');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    notebooklmState = registerOutput<String>('notebooklmState');
    project = registerOutput<String>('project');
    setDefault = registerOutput<bool?>('setDefault');
    singleRegionKeys = registerOutput<List<CmekConfigSingleRegionKey>?>('singleRegionKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CmekConfigSingleRegionKey>(guardedValue, (value) => CmekConfigSingleRegionKey.fromMap((value as Map).cast<String, dynamic>())); });
    this.state = registerOutput<String>('state');
  }

  /// Creates a typed reference to an existing [CmekConfig] resource.
  CmekConfig.reference(String urn)
    : super(
        'gcp:discoveryengine/cmekConfig:CmekConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cmekConfigId = registerOutput<String>('cmekConfigId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    isDefault = registerOutput<bool>('isDefault');
    kmsKey = registerOutput<String>('kmsKey');
    kmsKeyVersion = registerOutput<String>('kmsKeyVersion');
    lastRotationTimestampMicros = registerOutput<int>('lastRotationTimestampMicros');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    notebooklmState = registerOutput<String>('notebooklmState');
    project = registerOutput<String>('project');
    setDefault = registerOutput<bool?>('setDefault');
    singleRegionKeys = registerOutput<List<CmekConfigSingleRegionKey>?>('singleRegionKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CmekConfigSingleRegionKey>(guardedValue, (value) => CmekConfigSingleRegionKey.fromMap((value as Map).cast<String, dynamic>())); });
    state = registerOutput<String>('state');
  }
}
