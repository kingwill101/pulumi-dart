import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_settings_args.dart';
import 'organization_settings_state.dart';

/// Default resource settings control whether CMEK is required for new log buckets. These settings also determine the storage location for the _Default and _Required log buckets, and whether the _Default sink is enabled or disabled.
///
///
/// To get more information about OrganizationSettings, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/TopLevel/getSettings)
/// * How-to Guides
/// * [Configure default settings for organizations and folders](https://cloud.google.com/logging/docs/default-settings)
///
/// ## Example Usage
///
/// ### Logging Organization Settings All
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const settings = gcp.logging.getOrganizationSettings({
///     organization: "123456789",
/// });
/// const iam = new gcp.kms.CryptoKeyIAMMember("iam", {
///     cryptoKeyId: "kms-key",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: settings.then(settings => `serviceAccount:${settings.kmsServiceAccountId}`),
/// });
/// const example = new gcp.logging.OrganizationSettings("example", {
///     disableDefaultSink: true,
///     kmsKeyName: "kms-key",
///     organization: "123456789",
///     storageLocation: "us-central1",
/// }, {
///     dependsOn: [iam],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// settings = gcp.logging.get_organization_settings(organization="123456789")
/// iam = gcp.kms.CryptoKeyIAMMember("iam",
///     crypto_key_id="kms-key",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:{settings.kms_service_account_id}")
/// example = gcp.logging.OrganizationSettings("example",
///     disable_default_sink=True,
///     kms_key_name="kms-key",
///     organization="123456789",
///     storage_location="us-central1",
///     opts = pulumi.ResourceOptions(depends_on=[iam]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var settings = Gcp.Logging.GetOrganizationSettings.Invoke(new()
///     {
///         Organization = "123456789",
///     });
///
///     var iam = new Gcp.Kms.CryptoKeyIAMMember("iam", new()
///     {
///         CryptoKeyId = "kms-key",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:{settings.Apply(getOrganizationSettingsResult => getOrganizationSettingsResult.KmsServiceAccountId)}",
///     });
///
///     var example = new Gcp.Logging.OrganizationSettings("example", new()
///     {
///         DisableDefaultSink = true,
///         KmsKeyName = "kms-key",
///         Organization = "123456789",
///         StorageLocation = "us-central1",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             iam,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		settings, err := logging.LookupOrganizationSettings(ctx, &logging.LookupOrganizationSettingsArgs{
/// 			Organization: "123456789",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		iam, err := kms.NewCryptoKeyIAMMember(ctx, "iam", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("kms-key"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:%v", settings.KmsServiceAccountId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logging.NewOrganizationSettings(ctx, "example", &logging.OrganizationSettingsArgs{
/// 			DisableDefaultSink: pulumi.Bool(true),
/// 			KmsKeyName:         pulumi.String("kms-key"),
/// 			Organization:       pulumi.String("123456789"),
/// 			StorageLocation:    pulumi.String("us-central1"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			iam,
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
/// import com.pulumi.gcp.logging.LoggingFunctions;
/// import com.pulumi.gcp.logging.inputs.GetOrganizationSettingsArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.logging.OrganizationSettings;
/// import com.pulumi.gcp.logging.OrganizationSettingsArgs;
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
///         final var settings = LoggingFunctions.getOrganizationSettings(GetOrganizationSettingsArgs.builder()
///             .organization("123456789")
///             .build());
///
///         var iam = new CryptoKeyIAMMember("iam", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("kms-key")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:%s", settings.kmsServiceAccountId()))
///             .build());
///
///         var example = new OrganizationSettings("example", OrganizationSettingsArgs.builder()
///             .disableDefaultSink(true)
///             .kmsKeyName("kms-key")
///             .organization("123456789")
///             .storageLocation("us-central1")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(iam)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:logging:OrganizationSettings
///     properties:
///       disableDefaultSink: true
///       kmsKeyName: kms-key
///       organization: '123456789'
///       storageLocation: us-central1
///     options:
///       dependsOn:
///         - ${iam}
///   iam:
///     type: gcp:kms:CryptoKeyIAMMember
///     properties:
///       cryptoKeyId: kms-key
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:${settings.kmsServiceAccountId}
/// variables:
///   settings:
///     fn::invoke:
///       function: gcp:logging:getOrganizationSettings
///       arguments:
///         organization: '123456789'
/// ```
///
///
/// ## Import
///
/// OrganizationSettings can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/settings`
///
/// * `{{organization}}`
///
/// When using the `pulumi import` command, OrganizationSettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/organizationSettings:OrganizationSettings default organizations/{{organization}}/settings
/// ```
///
/// ```sh
/// $ pulumi import gcp:logging/organizationSettings:OrganizationSettings default {{organization}}
/// ```
class OrganizationSettings extends pulumi.CustomResource {
  /// If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed.
  late final pulumi.Output<bool> disableDefaultSink;
  /// The resource name for the configured Cloud KMS key.
  late final pulumi.Output<String> kmsKeyName;
  /// The service account that will be used by the Log Router to access your Cloud KMS key.
  late final pulumi.Output<String> kmsServiceAccountId;
  /// The service account for the given container. Sinks use this service account as their writerIdentity if no custom service account is provided.
  late final pulumi.Output<String> loggingServiceAccountId;
  /// The resource name of the settings.
  late final pulumi.Output<String> name;
  /// The organization for which to retrieve or configure settings.
  late final pulumi.Output<String> organization;
  /// The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided.
  late final pulumi.Output<String> storageLocation;

  /// Creates a new [OrganizationSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationSettings]. {@macro pulumi_logging_organization_settings_organization_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationSettings(
    String name, {
    OrganizationSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/organizationSettings:OrganizationSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.disableDefaultSink = registerOutput<bool>('disableDefaultSink');
    this.kmsKeyName = registerOutput<String>('kmsKeyName');
    this.kmsServiceAccountId = registerOutput<String>('kmsServiceAccountId');
    this.loggingServiceAccountId = registerOutput<String>('loggingServiceAccountId');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.storageLocation = registerOutput<String>('storageLocation');
  }

  /// Gets an existing [OrganizationSettings] resource's state with the given [name] and [id].
  static OrganizationSettings get(
    String name,
    pulumi.Input<String> id, {
    OrganizationSettingsState? state,
  }) {
    return OrganizationSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OrganizationSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/organizationSettings:OrganizationSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.disableDefaultSink = registerOutput<bool>('disableDefaultSink');
    this.kmsKeyName = registerOutput<String>('kmsKeyName');
    this.kmsServiceAccountId = registerOutput<String>('kmsServiceAccountId');
    this.loggingServiceAccountId = registerOutput<String>('loggingServiceAccountId');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.storageLocation = registerOutput<String>('storageLocation');
  }
}
