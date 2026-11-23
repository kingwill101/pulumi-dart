import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_args.dart';
import 'config_state.dart';

/// Config is a singleton resource used to configure the default Dataform settings for a specified location.
///
///
/// To get more information about Config, see:
///
/// * [API documentation](https://cloud.google.com/dataform/reference/rest/v1/projects.locations#Config)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataform/docs/)
///
///
/// ## Example Usage
///
/// ### Dataform Config With Kms Key
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const keyring = new gcp.kms.KeyRing("keyring", {
///     name: "example-key-ring",
///     location: "us-east1",
/// });
/// const exampleKey = new gcp.kms.CryptoKey("example_key", {
///     name: "example-crypto-key-name",
///     keyRing: keyring.id,
/// });
/// // Grant the Encrypter/Decrypter role to the Dataform service agent on the KMS key
/// const cryptoKeyBinding = new gcp.kms.CryptoKeyIAMMember("crypto_key_binding", {
///     cryptoKeyId: exampleKey.id,
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-dataform.iam.gserviceaccount.com`),
/// });
/// // Config with KMS key provided
/// const config = new gcp.dataform.Config("config", {
///     region: "us-east1",
///     defaultKmsKeyName: exampleKey.id,
/// }, {
///     dependsOn: [cryptoKeyBinding],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// keyring = gcp.kms.KeyRing("keyring",
///     name="example-key-ring",
///     location="us-east1")
/// example_key = gcp.kms.CryptoKey("example_key",
///     name="example-crypto-key-name",
///     key_ring=keyring.id)
/// # Grant the Encrypter/Decrypter role to the Dataform service agent on the KMS key
/// crypto_key_binding = gcp.kms.CryptoKeyIAMMember("crypto_key_binding",
///     crypto_key_id=example_key.id,
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-dataform.iam.gserviceaccount.com")
/// # Config with KMS key provided
/// config = gcp.dataform.Config("config",
///     region="us-east1",
///     default_kms_key_name=example_key.id,
///     opts = pulumi.ResourceOptions(depends_on=[crypto_key_binding]))
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
///     var keyring = new Gcp.Kms.KeyRing("keyring", new()
///     {
///         Name = "example-key-ring",
///         Location = "us-east1",
///     });
///
///     var exampleKey = new Gcp.Kms.CryptoKey("example_key", new()
///     {
///         Name = "example-crypto-key-name",
///         KeyRing = keyring.Id,
///     });
///
///     // Grant the Encrypter/Decrypter role to the Dataform service agent on the KMS key
///     var cryptoKeyBinding = new Gcp.Kms.CryptoKeyIAMMember("crypto_key_binding", new()
///     {
///         CryptoKeyId = exampleKey.Id,
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-dataform.iam.gserviceaccount.com",
///     });
///
///     // Config with KMS key provided
///     var config = new Gcp.Dataform.Config("config", new()
///     {
///         Region = "us-east1",
///         DefaultKmsKeyName = exampleKey.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cryptoKeyBinding,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/dataform"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		keyring, err := kms.NewKeyRing(ctx, "keyring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("example-key-ring"),
/// 			Location: pulumi.String("us-east1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := kms.NewCryptoKey(ctx, "example_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("example-crypto-key-name"),
/// 			KeyRing: keyring.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Grant the Encrypter/Decrypter role to the Dataform service agent on the KMS key
/// 		cryptoKeyBinding, err := kms.NewCryptoKeyIAMMember(ctx, "crypto_key_binding", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: exampleKey.ID(),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-dataform.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Config with KMS key provided
/// 		_, err = dataform.NewConfig(ctx, "config", &dataform.ConfigArgs{
/// 			Region:            pulumi.String("us-east1"),
/// 			DefaultKmsKeyName: exampleKey.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			cryptoKeyBinding,
/// 		}))
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_kms_key_ring" "keyring" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "example-key-ring"
///   location = "us-east1"
/// }
/// resource "gcp_kms_crypto_key" "example_key" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "example-crypto-key-name"
///   key_ring = gcp_kms_key_ring.keyring.id
/// }
/// # Grant the Encrypter/Decrypter role to the Dataform service agent on the KMS key
/// resource "gcp_kms_crypto_key_i_a_m_member" "crypto_key_binding" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   crypto_key_id = gcp_kms_crypto_key.example_key.id
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        ="serviceAccount:service-${data.gcp_organizations_project.project.number}@gcp-sa-dataform.iam.gserviceaccount.com"
/// }
/// # Config with KMS key provided
/// resource "gcp_dataform_config" "config" {
///   depends_on = [gcp_kms_crypto_key_i_a_m_member.crypto_key_binding]
///   lifecycle {
///     create_before_destroy = true
///   }
///   region               = "us-east1"
///   default_kms_key_name = gcp_kms_crypto_key.example_key.id
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
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.dataform.Config;
/// import com.pulumi.gcp.dataform.ConfigArgs;
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
///         var keyring = new KeyRing("keyring", KeyRingArgs.builder()
///             .name("example-key-ring")
///             .location("us-east1")
///             .build());
///
///         var exampleKey = new CryptoKey("exampleKey", CryptoKeyArgs.builder()
///             .name("example-crypto-key-name")
///             .keyRing(keyring.id())
///             .build());
///
///         // Grant the Encrypter/Decrypter role to the Dataform service agent on the KMS key
///         var cryptoKeyBinding = new CryptoKeyIAMMember("cryptoKeyBinding", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId(exampleKey.id())
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-dataform.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         // Config with KMS key provided
///         var config = new Config("config", ConfigArgs.builder()
///             .region("us-east1")
///             .defaultKmsKeyName(exampleKey.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(cryptoKeyBinding)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   keyring:
///     type: gcp:kms:KeyRing
///     properties:
///       name: example-key-ring
///       location: us-east1
///   exampleKey:
///     type: gcp:kms:CryptoKey
///     name: example_key
///     properties:
///       name: example-crypto-key-name
///       keyRing: ${keyring.id}
///   # Grant the Encrypter/Decrypter role to the Dataform service agent on the KMS key
///   cryptoKeyBinding:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: crypto_key_binding
///     properties:
///       cryptoKeyId: ${exampleKey.id}
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:service-${project.number}@gcp-sa-dataform.iam.gserviceaccount.com
///   # Config with KMS key provided
///   config:
///     type: gcp:dataform:Config
///     properties:
///       region: us-east1
///       defaultKmsKeyName: ${exampleKey.id}
///     options:
///       dependsOn:
///         - ${cryptoKeyBinding}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ### Dataform Config Without Kms Key
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // Config without KMS key provided
/// const config = new gcp.dataform.Config("config", {region: "us-west1"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # Config without KMS key provided
/// config = gcp.dataform.Config("config", region="us-west1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Config without KMS key provided
///     var config = new Gcp.Dataform.Config("config", new()
///     {
///         Region = "us-west1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/dataform"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Config without KMS key provided
/// 		_, err := dataform.NewConfig(ctx, "config", &dataform.ConfigArgs{
/// 			Region: pulumi.String("us-west1"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// # Config without KMS key provided
/// resource "gcp_dataform_config" "config" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   region = "us-west1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataform.Config;
/// import com.pulumi.gcp.dataform.ConfigArgs;
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
///         // Config without KMS key provided
///         var config = new Config("config", ConfigArgs.builder()
///             .region("us-west1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Config without KMS key provided
///   config:
///     type: gcp:dataform:Config
///     properties:
///       region: us-west1
/// ```
///
///
/// ## Import
///
/// Config can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/config`
/// * `{{project}}/{{region}}`
/// * `{{region}}`
///
///
/// When using the `pulumi import` command, Config can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataform/config:Config default projects/{{project}}/locations/{{region}}/config
/// $ pulumi import gcp:dataform/config:Config default {{project}}/{{region}}
/// $ pulumi import gcp:dataform/config:Config default {{region}}
/// ```
class Config extends pulumi.CustomResource {
  /// Optional. A reference to the customer-managed encryption key (CMEK) that will be used by default to encrypt user data.
  late final pulumi.Output<String?> defaultKmsKeyName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// A reference to the region
  late final pulumi.Output<String> region;

  /// Creates a new [Config].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Config]. {@macro pulumi_dataform_config_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Config(
    String name, {
    ConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/config:Config',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
        ) {
    defaultKmsKeyName = registerOutput<String?>('defaultKmsKeyName');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [Config] resource's state with the given [name] and [id].
  static Config get(
    String name,
    pulumi.Input<String> id, {
    ConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Config._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Config._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/config:Config',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultKmsKeyName = registerOutput<String?>('defaultKmsKeyName');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [Config] resource.
  Config.reference(String urn)
    : super(
        'gcp:dataform/config:Config',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    defaultKmsKeyName = registerOutput<String?>('defaultKmsKeyName');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }
}
