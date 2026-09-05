import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_args.dart';
import 'dataset_encryption_spec.dart';
import 'dataset_state.dart';

/// A Healthcare `Dataset` is a toplevel logical grouping of `dicomStores`, `fhirStores` and `hl7V2Stores`.
///
///
/// To get more information about Dataset, see:
///
/// * [API documentation](https://cloud.google.com/healthcare/docs/reference/rest/v1/projects.locations.datasets)
/// * How-to Guides
/// * [Creating a dataset](https://cloud.google.com/healthcare/docs/how-tos/datasets)
///
/// ## Example Usage
///
/// ### Healthcare Dataset Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.healthcare.Dataset("default", {
///     name: "example-dataset",
///     location: "us-central1",
///     timeZone: "UTC",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.healthcare.Dataset("default",
///     name="example-dataset",
///     location="us-central1",
///     time_zone="UTC")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Healthcare.Dataset("default", new()
///     {
///         Name = "example-dataset",
///         Location = "us-central1",
///         TimeZone = "UTC",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := healthcare.NewDataset(ctx, "default", &healthcare.DatasetArgs{
/// 			Name:     pulumi.String("example-dataset"),
/// 			Location: pulumi.String("us-central1"),
/// 			TimeZone: pulumi.String("UTC"),
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
/// resource "gcp_healthcare_dataset" "default" {
///   name      = "example-dataset"
///   location  = "us-central1"
///   time_zone = "UTC"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.healthcare.Dataset;
/// import com.pulumi.gcp.healthcare.DatasetArgs;
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
///         var default_ = new Dataset("default", DatasetArgs.builder()
///             .name("example-dataset")
///             .location("us-central1")
///             .timeZone("UTC")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:healthcare:Dataset
///     properties:
///       name: example-dataset
///       location: us-central1
///       timeZone: UTC
/// ```
///
/// ### Healthcare Dataset Cmek
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const keyRing = new gcp.kms.KeyRing("key_ring", {
///     name: "example-keyring",
///     location: "us-central1",
/// });
/// const cryptoKey = new gcp.kms.CryptoKey("crypto_key", {
///     name: "example-key",
///     keyRing: keyRing.id,
///     purpose: "ENCRYPT_DECRYPT",
/// });
/// const healthcareCmekKeyuser = new gcp.kms.CryptoKeyIAMBinding("healthcare_cmek_keyuser", {
///     cryptoKeyId: cryptoKey.id,
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     members: [project.then(project => `serviceAccount:service-${project.number}@gcp-sa-healthcare.iam.gserviceaccount.com`)],
/// });
/// const _default = new gcp.healthcare.Dataset("default", {
///     name: "example-dataset",
///     location: "us-central1",
///     timeZone: "UTC",
///     encryptionSpec: {
///         kmsKeyName: cryptoKey.id,
///     },
/// }, {
///     dependsOn: [healthcareCmekKeyuser],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// key_ring = gcp.kms.KeyRing("key_ring",
///     name="example-keyring",
///     location="us-central1")
/// crypto_key = gcp.kms.CryptoKey("crypto_key",
///     name="example-key",
///     key_ring=key_ring.id,
///     purpose="ENCRYPT_DECRYPT")
/// healthcare_cmek_keyuser = gcp.kms.CryptoKeyIAMBinding("healthcare_cmek_keyuser",
///     crypto_key_id=crypto_key.id,
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     members=[f"serviceAccount:service-{project.number}@gcp-sa-healthcare.iam.gserviceaccount.com"])
/// default = gcp.healthcare.Dataset("default",
///     name="example-dataset",
///     location="us-central1",
///     time_zone="UTC",
///     encryption_spec={
///         "kms_key_name": crypto_key.id,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[healthcare_cmek_keyuser]))
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
///     var keyRing = new Gcp.Kms.KeyRing("key_ring", new()
///     {
///         Name = "example-keyring",
///         Location = "us-central1",
///     });
///
///     var cryptoKey = new Gcp.Kms.CryptoKey("crypto_key", new()
///     {
///         Name = "example-key",
///         KeyRing = keyRing.Id,
///         Purpose = "ENCRYPT_DECRYPT",
///     });
///
///     var healthcareCmekKeyuser = new Gcp.Kms.CryptoKeyIAMBinding("healthcare_cmek_keyuser", new()
///     {
///         CryptoKeyId = cryptoKey.Id,
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Members = new[]
///         {
///             $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-healthcare.iam.gserviceaccount.com",
///         },
///     });
///
///     var @default = new Gcp.Healthcare.Dataset("default", new()
///     {
///         Name = "example-dataset",
///         Location = "us-central1",
///         TimeZone = "UTC",
///         EncryptionSpec = new Gcp.Healthcare.Inputs.DatasetEncryptionSpecArgs
///         {
///             KmsKeyName = cryptoKey.Id,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             healthcareCmekKeyuser,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
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
/// 		keyRing, err := kms.NewKeyRing(ctx, "key_ring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("example-keyring"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKey, err := kms.NewCryptoKey(ctx, "crypto_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("example-key"),
/// 			KeyRing: keyRing.ID().ToIDOutput().ToStringOutput(),
/// 			Purpose: pulumi.String("ENCRYPT_DECRYPT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		healthcareCmekKeyuser, err := kms.NewCryptoKeyIAMBinding(ctx, "healthcare_cmek_keyuser", &kms.CryptoKeyIAMBindingArgs{
/// 			CryptoKeyId: cryptoKey.ID().ToIDOutput().ToStringOutput(),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-healthcare.iam.gserviceaccount.com", project.Number),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = healthcare.NewDataset(ctx, "default", &healthcare.DatasetArgs{
/// 			Name:     pulumi.String("example-dataset"),
/// 			Location: pulumi.String("us-central1"),
/// 			TimeZone: pulumi.String("UTC"),
/// 			EncryptionSpec: &healthcare.DatasetEncryptionSpecArgs{
/// 				KmsKeyName: cryptoKey.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			healthcareCmekKeyuser,
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
/// resource "gcp_healthcare_dataset" "default" {
///   depends_on = [gcp_kms_cryptokeyiambinding.healthcare_cmek_keyuser]
///   name       = "example-dataset"
///   location   = "us-central1"
///   time_zone  = "UTC"
///   encryption_spec = {
///     kms_key_name = gcp_kms_cryptokey.crypto_key.id
///   }
/// }
/// resource "gcp_kms_cryptokey" "crypto_key" {
///   name     = "example-key"
///   key_ring = gcp_kms_keyring.key_ring.id
///   purpose  = "ENCRYPT_DECRYPT"
/// }
/// resource "gcp_kms_keyring" "key_ring" {
///   name     = "example-keyring"
///   location = "us-central1"
/// }
/// resource "gcp_kms_cryptokeyiambinding" "healthcare_cmek_keyuser" {
///   crypto_key_id = gcp_kms_cryptokey.crypto_key.id
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   members       = ["serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-healthcare.iam.gserviceaccount.com"]
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
/// import com.pulumi.gcp.kms.CryptoKeyIAMBinding;
/// import com.pulumi.gcp.kms.CryptoKeyIAMBindingArgs;
/// import com.pulumi.gcp.healthcare.Dataset;
/// import com.pulumi.gcp.healthcare.DatasetArgs;
/// import com.pulumi.gcp.healthcare.inputs.DatasetEncryptionSpecArgs;
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
///         var keyRing = new KeyRing("keyRing", KeyRingArgs.builder()
///             .name("example-keyring")
///             .location("us-central1")
///             .build());
///
///         var cryptoKey = new CryptoKey("cryptoKey", CryptoKeyArgs.builder()
///             .name("example-key")
///             .keyRing(keyRing.id())
///             .purpose("ENCRYPT_DECRYPT")
///             .build());
///
///         var healthcareCmekKeyuser = new CryptoKeyIAMBinding("healthcareCmekKeyuser", CryptoKeyIAMBindingArgs.builder()
///             .cryptoKeyId(cryptoKey.id())
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .members(String.format("serviceAccount:service-%s@gcp-sa-healthcare.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var default_ = new Dataset("default", DatasetArgs.builder()
///             .name("example-dataset")
///             .location("us-central1")
///             .timeZone("UTC")
///             .encryptionSpec(DatasetEncryptionSpecArgs.builder()
///                 .kmsKeyName(cryptoKey.id())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(healthcareCmekKeyuser)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:healthcare:Dataset
///     properties:
///       name: example-dataset
///       location: us-central1
///       timeZone: UTC
///       encryptionSpec:
///         kmsKeyName: ${cryptoKey.id}
///     options:
///       dependsOn:
///         - ${healthcareCmekKeyuser}
///   cryptoKey:
///     type: gcp:kms:CryptoKey
///     name: crypto_key
///     properties:
///       name: example-key
///       keyRing: ${keyRing.id}
///       purpose: ENCRYPT_DECRYPT
///   keyRing:
///     type: gcp:kms:KeyRing
///     name: key_ring
///     properties:
///       name: example-keyring
///       location: us-central1
///   healthcareCmekKeyuser:
///     type: gcp:kms:CryptoKeyIAMBinding
///     name: healthcare_cmek_keyuser
///     properties:
///       cryptoKeyId: ${cryptoKey.id}
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       members:
///         - serviceAccount:service-${project.number}@gcp-sa-healthcare.iam.gserviceaccount.com
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
/// Dataset can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/datasets/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Dataset can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:healthcare/dataset:Dataset default projects/{{project}}/locations/{{location}}/datasets/{{name}}
/// $ pulumi import gcp:healthcare/dataset:Dataset default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:healthcare/dataset:Dataset default {{location}}/{{name}}
/// ```
class Dataset extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<DatasetEncryptionSpec> encryptionSpec;
  /// The location for the Dataset.
  late final pulumi.Output<String> location;
  /// The resource name for the Dataset.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The fully qualified name of this dataset
  late final pulumi.Output<String> selfLink;
  /// The default timezone used by this dataset. Must be a either a valid IANA time zone name such as
  /// "America/New_York" or empty, which defaults to UTC. This is used for parsing times in resources
  /// (e.g., HL7 messages) where no explicit timezone is specified.
  late final pulumi.Output<String> timeZone;

  /// Creates a new [Dataset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Dataset]. {@macro pulumi_healthcare_dataset_dataset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Dataset(
    String name, {
    DatasetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/dataset:Dataset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    encryptionSpec = registerOutput<DatasetEncryptionSpec>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    timeZone = registerOutput<String>('timeZone');
  }

  /// Gets an existing [Dataset] resource's state with the given [name] and [id].
  static Dataset get(
    String name,
    pulumi.Input<String> id, {
    DatasetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Dataset._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Dataset._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/dataset:Dataset',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    encryptionSpec = registerOutput<DatasetEncryptionSpec>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    timeZone = registerOutput<String>('timeZone');
  }

  /// Creates a typed reference to an existing [Dataset] resource.
  Dataset.reference(String urn)
    : super(
        'gcp:healthcare/dataset:Dataset',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    encryptionSpec = registerOutput<DatasetEncryptionSpec>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    timeZone = registerOutput<String>('timeZone');
  }
}
