import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_args.dart';
import 'repository_git_remote_settings.dart';
import 'repository_state.dart';
import 'repository_workspace_compilation_overrides.dart';

/// A resource represents a Dataform Git repository
///
/// To get more information about Repository, see:
///
/// * [API documentation](https://cloud.google.com/dataform/reference/rest/v1beta1/projects.locations.repositories)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataform/docs/)
///
/// ## Example Usage
///
/// ### Dataform Repository
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret = new gcp.secretmanager.Secret("secret", {
///     secretId: "my-secret",
///     replication: {
///         auto: {},
///     },
/// });
/// const secretVersion = new gcp.secretmanager.SecretVersion("secret_version", {
///     secret: secret.id,
///     secretData: "secret-data",
/// });
/// const keyring = new gcp.kms.KeyRing("keyring", {
///     name: "example-key-ring",
///     location: "us-central1",
/// });
/// const exampleKey = new gcp.kms.CryptoKey("example_key", {
///     name: "example-crypto-key-name",
///     keyRing: keyring.id,
/// });
/// const cryptoKeyBinding = new gcp.kms.CryptoKeyIAMBinding("crypto_key_binding", {
///     cryptoKeyId: exampleKey.id,
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     members: [`serviceAccount:service-${project.number}@gcp-sa-dataform.iam.gserviceaccount.com`],
/// });
/// const dataformRepository = new gcp.dataform.Repository("dataform_repository", {
///     name: "dataform_repository",
///     displayName: "dataform_repository",
///     npmrcEnvironmentVariablesSecretVersion: secretVersion.id,
///     kmsKeyName: exampleKey.id,
///     deletionPolicy: "FORCE",
///     labels: {
///         label_foo1: "label-bar1",
///     },
///     gitRemoteSettings: {
///         url: "https://github.com/OWNER/REPOSITORY.git",
///         defaultBranch: "main",
///         authenticationTokenSecretVersion: secretVersion.id,
///     },
///     workspaceCompilationOverrides: {
///         defaultDatabase: "database",
///         schemaSuffix: "_suffix",
///         tablePrefix: "prefix_",
///     },
/// }, {
///     dependsOn: [cryptoKeyBinding],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret = gcp.secretmanager.Secret("secret",
///     secret_id="my-secret",
///     replication={
///         "auto": {},
///     })
/// secret_version = gcp.secretmanager.SecretVersion("secret_version",
///     secret=secret.id,
///     secret_data="secret-data")
/// keyring = gcp.kms.KeyRing("keyring",
///     name="example-key-ring",
///     location="us-central1")
/// example_key = gcp.kms.CryptoKey("example_key",
///     name="example-crypto-key-name",
///     key_ring=keyring.id)
/// crypto_key_binding = gcp.kms.CryptoKeyIAMBinding("crypto_key_binding",
///     crypto_key_id=example_key.id,
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     members=[f"serviceAccount:service-{project['number']}@gcp-sa-dataform.iam.gserviceaccount.com"])
/// dataform_repository = gcp.dataform.Repository("dataform_repository",
///     name="dataform_repository",
///     display_name="dataform_repository",
///     npmrc_environment_variables_secret_version=secret_version.id,
///     kms_key_name=example_key.id,
///     deletion_policy="FORCE",
///     labels={
///         "label_foo1": "label-bar1",
///     },
///     git_remote_settings={
///         "url": "https://github.com/OWNER/REPOSITORY.git",
///         "default_branch": "main",
///         "authentication_token_secret_version": secret_version.id,
///     },
///     workspace_compilation_overrides={
///         "default_database": "database",
///         "schema_suffix": "_suffix",
///         "table_prefix": "prefix_",
///     },
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
///     var secret = new Gcp.SecretManager.Secret("secret", new()
///     {
///         SecretId = "my-secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var secretVersion = new Gcp.SecretManager.SecretVersion("secret_version", new()
///     {
///         Secret = secret.Id,
///         SecretData = "secret-data",
///     });
///
///     var keyring = new Gcp.Kms.KeyRing("keyring", new()
///     {
///         Name = "example-key-ring",
///         Location = "us-central1",
///     });
///
///     var exampleKey = new Gcp.Kms.CryptoKey("example_key", new()
///     {
///         Name = "example-crypto-key-name",
///         KeyRing = keyring.Id,
///     });
///
///     var cryptoKeyBinding = new Gcp.Kms.CryptoKeyIAMBinding("crypto_key_binding", new()
///     {
///         CryptoKeyId = exampleKey.Id,
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Members = new[]
///         {
///             $"serviceAccount:service-{project.Number}@gcp-sa-dataform.iam.gserviceaccount.com",
///         },
///     });
///
///     var dataformRepository = new Gcp.Dataform.Repository("dataform_repository", new()
///     {
///         Name = "dataform_repository",
///         DisplayName = "dataform_repository",
///         NpmrcEnvironmentVariablesSecretVersion = secretVersion.Id,
///         KmsKeyName = exampleKey.Id,
///         DeletionPolicy = "FORCE",
///         Labels =
///         {
///             { "label_foo1", "label-bar1" },
///         },
///         GitRemoteSettings = new Gcp.Dataform.Inputs.RepositoryGitRemoteSettingsArgs
///         {
///             Url = "https://github.com/OWNER/REPOSITORY.git",
///             DefaultBranch = "main",
///             AuthenticationTokenSecretVersion = secretVersion.Id,
///         },
///         WorkspaceCompilationOverrides = new Gcp.Dataform.Inputs.RepositoryWorkspaceCompilationOverridesArgs
///         {
///             DefaultDatabase = "database",
///             SchemaSuffix = "_suffix",
///             TablePrefix = "prefix_",
///         },
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataform"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secret, err := secretmanager.NewSecret(ctx, "secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("my-secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secretVersion, err := secretmanager.NewSecretVersion(ctx, "secret_version", &secretmanager.SecretVersionArgs{
/// 			Secret:     secret.ID(),
/// 			SecretData: pulumi.String("secret-data"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		keyring, err := kms.NewKeyRing(ctx, "keyring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("example-key-ring"),
/// 			Location: pulumi.String("us-central1"),
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
/// 		cryptoKeyBinding, err := kms.NewCryptoKeyIAMBinding(ctx, "crypto_key_binding", &kms.CryptoKeyIAMBindingArgs{
/// 			CryptoKeyId: exampleKey.ID(),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-dataform.iam.gserviceaccount.com", project.Number),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataform.NewRepository(ctx, "dataform_repository", &dataform.RepositoryArgs{
/// 			Name:                                   pulumi.String("dataform_repository"),
/// 			DisplayName:                            pulumi.String("dataform_repository"),
/// 			NpmrcEnvironmentVariablesSecretVersion: secretVersion.ID(),
/// 			KmsKeyName:                             exampleKey.ID(),
/// 			DeletionPolicy:                         pulumi.String("FORCE"),
/// 			Labels: pulumi.StringMap{
/// 				"label_foo1": pulumi.String("label-bar1"),
/// 			},
/// 			GitRemoteSettings: &dataform.RepositoryGitRemoteSettingsArgs{
/// 				Url:                              pulumi.String("https://github.com/OWNER/REPOSITORY.git"),
/// 				DefaultBranch:                    pulumi.String("main"),
/// 				AuthenticationTokenSecretVersion: secretVersion.ID(),
/// 			},
/// 			WorkspaceCompilationOverrides: &dataform.RepositoryWorkspaceCompilationOverridesArgs{
/// 				DefaultDatabase: pulumi.String("database"),
/// 				SchemaSuffix:    pulumi.String("_suffix"),
/// 				TablePrefix:     pulumi.String("prefix_"),
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMBinding;
/// import com.pulumi.gcp.kms.CryptoKeyIAMBindingArgs;
/// import com.pulumi.gcp.dataform.Repository;
/// import com.pulumi.gcp.dataform.RepositoryArgs;
/// import com.pulumi.gcp.dataform.inputs.RepositoryGitRemoteSettingsArgs;
/// import com.pulumi.gcp.dataform.inputs.RepositoryWorkspaceCompilationOverridesArgs;
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
///         var secret = new Secret("secret", SecretArgs.builder()
///             .secretId("my-secret")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var secretVersion = new SecretVersion("secretVersion", SecretVersionArgs.builder()
///             .secret(secret.id())
///             .secretData("secret-data")
///             .build());
///
///         var keyring = new KeyRing("keyring", KeyRingArgs.builder()
///             .name("example-key-ring")
///             .location("us-central1")
///             .build());
///
///         var exampleKey = new CryptoKey("exampleKey", CryptoKeyArgs.builder()
///             .name("example-crypto-key-name")
///             .keyRing(keyring.id())
///             .build());
///
///         var cryptoKeyBinding = new CryptoKeyIAMBinding("cryptoKeyBinding", CryptoKeyIAMBindingArgs.builder()
///             .cryptoKeyId(exampleKey.id())
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .members(String.format("serviceAccount:service-%s@gcp-sa-dataform.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var dataformRepository = new Repository("dataformRepository", RepositoryArgs.builder()
///             .name("dataform_repository")
///             .displayName("dataform_repository")
///             .npmrcEnvironmentVariablesSecretVersion(secretVersion.id())
///             .kmsKeyName(exampleKey.id())
///             .deletionPolicy("FORCE")
///             .labels(Map.of("label_foo1", "label-bar1"))
///             .gitRemoteSettings(RepositoryGitRemoteSettingsArgs.builder()
///                 .url("https://github.com/OWNER/REPOSITORY.git")
///                 .defaultBranch("main")
///                 .authenticationTokenSecretVersion(secretVersion.id())
///                 .build())
///             .workspaceCompilationOverrides(RepositoryWorkspaceCompilationOverridesArgs.builder()
///                 .defaultDatabase("database")
///                 .schemaSuffix("_suffix")
///                 .tablePrefix("prefix_")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(cryptoKeyBinding)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: my-secret
///       replication:
///         auto: {}
///   secretVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: secret_version
///     properties:
///       secret: ${secret.id}
///       secretData: secret-data
///   keyring:
///     type: gcp:kms:KeyRing
///     properties:
///       name: example-key-ring
///       location: us-central1
///   exampleKey:
///     type: gcp:kms:CryptoKey
///     name: example_key
///     properties:
///       name: example-crypto-key-name
///       keyRing: ${keyring.id}
///   cryptoKeyBinding:
///     type: gcp:kms:CryptoKeyIAMBinding
///     name: crypto_key_binding
///     properties:
///       cryptoKeyId: ${exampleKey.id}
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       members:
///         - serviceAccount:service-${project.number}@gcp-sa-dataform.iam.gserviceaccount.com
///   dataformRepository:
///     type: gcp:dataform:Repository
///     name: dataform_repository
///     properties:
///       name: dataform_repository
///       displayName: dataform_repository
///       npmrcEnvironmentVariablesSecretVersion: ${secretVersion.id}
///       kmsKeyName: ${exampleKey.id}
///       deletionPolicy: FORCE
///       labels:
///         label_foo1: label-bar1
///       gitRemoteSettings:
///         url: https://github.com/OWNER/REPOSITORY.git
///         defaultBranch: main
///         authenticationTokenSecretVersion: ${secretVersion.id}
///       workspaceCompilationOverrides:
///         defaultDatabase: database
///         schemaSuffix: _suffix
///         tablePrefix: prefix_
///     options:
///       dependsOn:
///         - ${cryptoKeyBinding}
/// ```
///
///
/// ## Import
///
/// Repository can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/repositories/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Repository can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataform/repository:Repository default projects/{{project}}/locations/{{region}}/repositories/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataform/repository:Repository default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataform/repository:Repository default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataform/repository:Repository default {{name}}
/// ```
class Repository extends pulumi.CustomResource {
  /// Policy to control how the repository and its child resources are deleted. When set to `FORCE`, any child resources of this repository will also be deleted. Possible values: `DELETE`, `FORCE`. Defaults to `DELETE`.
  late final pulumi.Output<String?> deletionPolicy;

  /// Optional. The repository's user-friendly name.
  late final pulumi.Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Optional. If set, configures this repository to be linked to a Git remote.
  /// Structure is documented below.
  late final pulumi.Output<RepositoryGitRemoteSettings?> gitRemoteSettings;

  /// Optional. The reference to a KMS encryption key. If provided, it will be used to encrypt user data in the repository and all child resources.
  /// It is not possible to add or update the encryption key after the repository is created. Example projects/[kms_project_id]/locations/[region]/keyRings/[key_region]/cryptoKeys/[key]
  late final pulumi.Output<String?> kmsKeyName;

  /// Optional. Repository user labels.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The repository's name.
  late final pulumi.Output<String> name;

  /// Optional. The name of the Secret Manager secret version to be used to interpolate variables into the .npmrc file for package installation operations. Must be in the format projects/*/secrets/*/versions/*. The file itself must be in a JSON format.
  late final pulumi.Output<String?> npmrcEnvironmentVariablesSecretVersion;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// A reference to the region
  late final pulumi.Output<String?> region;

  /// The service account to run workflow invocations under.
  late final pulumi.Output<String?> serviceAccount;

  /// If set, fields of workspaceCompilationOverrides override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results.
  /// Structure is documented below.
  late final pulumi.Output<RepositoryWorkspaceCompilationOverrides?>
  workspaceCompilationOverrides;

  /// Creates a new [Repository].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Repository]. {@macro pulumi_dataform_repository_repository_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Repository(
    String name, {
    RepositoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:dataform/repository:Repository',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    deletionPolicy = registerOutput<String?>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    gitRemoteSettings = registerOutput<RepositoryGitRemoteSettings?>(
      'gitRemoteSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RepositoryGitRemoteSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    npmrcEnvironmentVariablesSecretVersion = registerOutput<String?>(
      'npmrcEnvironmentVariablesSecretVersion',
    );
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String?>('region');
    serviceAccount = registerOutput<String?>('serviceAccount');
    workspaceCompilationOverrides =
        registerOutput<RepositoryWorkspaceCompilationOverrides?>(
          'workspaceCompilationOverrides',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return RepositoryWorkspaceCompilationOverrides.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
  }

  /// Gets an existing [Repository] resource's state with the given [name] and [id].
  static Repository get(
    String name,
    pulumi.Input<String> id, {
    RepositoryState? state,
  }) {
    return Repository._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Repository._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:dataform/repository:Repository',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    deletionPolicy = registerOutput<String?>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    gitRemoteSettings = registerOutput<RepositoryGitRemoteSettings?>(
      'gitRemoteSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RepositoryGitRemoteSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    npmrcEnvironmentVariablesSecretVersion = registerOutput<String?>(
      'npmrcEnvironmentVariablesSecretVersion',
    );
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String?>('region');
    serviceAccount = registerOutput<String?>('serviceAccount');
    workspaceCompilationOverrides =
        registerOutput<RepositoryWorkspaceCompilationOverrides?>(
          'workspaceCompilationOverrides',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return RepositoryWorkspaceCompilationOverrides.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
  }
}
