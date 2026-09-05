import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_settings_args.dart';
import 'organization_settings_state.dart';

/// Manages Cloud Observability settings for an organization.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
/// ### Observability Organization Settings Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const settingsData = gcp.observability.getOrganizationSettings({
///     organization: "123456789",
///     location: "us",
/// });
/// // Add a delay to allow the service account to propagate
/// const waitForSaPropagation = new time.Sleep("wait_for_sa_propagation", {createDuration: "90s"}, {
///     dependsOn: [settingsData],
/// });
/// const iam = new gcp.kms.CryptoKeyIAMMember("iam", {
///     cryptoKeyId: "example-key",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: settingsData.then(settingsData => `serviceAccount:${settingsData.serviceAccountId}`),
/// }, {
///     dependsOn: [waitForSaPropagation],
/// });
/// const primary = new gcp.observability.OrganizationSettings("primary", {
///     location: "us",
///     organization: "123456789",
///     kmsKeyName: "example-key",
/// }, {
///     dependsOn: [iam],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// settings_data = gcp.observability.get_organization_settings(organization="123456789",
///     location="us")
/// # Add a delay to allow the service account to propagate
/// wait_for_sa_propagation = time.Sleep("wait_for_sa_propagation", create_duration="90s",
/// opts = pulumi.ResourceOptions(depends_on=[settings_data]))
/// iam = gcp.kms.CryptoKeyIAMMember("iam",
///     crypto_key_id="example-key",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:{settings_data.service_account_id}",
///     opts = pulumi.ResourceOptions(depends_on=[wait_for_sa_propagation]))
/// primary = gcp.observability.OrganizationSettings("primary",
///     location="us",
///     organization="123456789",
///     kms_key_name="example-key",
///     opts = pulumi.ResourceOptions(depends_on=[iam]))
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
///     var settingsData = Gcp.Observability.GetOrganizationSettings.Invoke(new()
///     {
///         Organization = "123456789",
///         Location = "us",
///     });
///
///     // Add a delay to allow the service account to propagate
///     var waitForSaPropagation = new Time.Sleep("wait_for_sa_propagation", new()
///     {
///         CreateDuration = "90s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             settingsData,
///         },
///     });
///
///     var iam = new Gcp.Kms.CryptoKeyIAMMember("iam", new()
///     {
///         CryptoKeyId = "example-key",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:{settingsData.Apply(getOrganizationSettingsResult => getOrganizationSettingsResult.ServiceAccountId)}",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitForSaPropagation,
///         },
///     });
///
///     var primary = new Gcp.Observability.OrganizationSettings("primary", new()
///     {
///         Location = "us",
///         Organization = "123456789",
///         KmsKeyName = "example-key",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/observability"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		settingsData, err := observability.LookupOrganizationSettings(ctx, &observability.LookupOrganizationSettingsArgs{
/// 			Organization: "123456789",
/// 			Location:     "us",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Add a delay to allow the service account to propagate
/// 		waitForSaPropagation, err := time.NewSleep(ctx, "wait_for_sa_propagation", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("90s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			settingsData,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		iam, err := kms.NewCryptoKeyIAMMember(ctx, "iam", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("example-key"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:%v", settingsData.ServiceAccountId),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitForSaPropagation,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = observability.NewOrganizationSettings(ctx, "primary", &observability.OrganizationSettingsArgs{
/// 			Location:     pulumi.String("us"),
/// 			Organization: pulumi.String("123456789"),
/// 			KmsKeyName:   pulumi.String("example-key"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// data "gcp_observability_getorganizationsettings" "settingsData" {
///   organization = "123456789"
///   location     = "us"
/// }
///
/// # Add a delay to allow the service account to propagate
/// resource "time_sleep" "wait_for_sa_propagation" {
///   depends_on      = [data.gcp_observability_getorganizationsettings.settingsData]
///   create_duration = "90s"
/// }
/// resource "gcp_kms_cryptokeyiammember" "iam" {
///   depends_on    = [time_sleep.wait_for_sa_propagation]
///   crypto_key_id = "example-key"
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        ="serviceAccount:${data.gcp_observability_getorganizationsettings.settingsData.service_account_id}"
/// }
/// resource "gcp_observability_organizationsettings" "primary" {
///   depends_on   = [gcp_kms_cryptokeyiammember.iam]
///   location     = "us"
///   organization = "123456789"
///   kms_key_name = "example-key"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.observability.ObservabilityFunctions;
/// import com.pulumi.gcp.observability.inputs.GetOrganizationSettingsArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.observability.OrganizationSettings;
/// import com.pulumi.gcp.observability.OrganizationSettingsArgs;
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
///         final var settingsData = ObservabilityFunctions.getOrganizationSettings(GetOrganizationSettingsArgs.builder()
///             .organization("123456789")
///             .location("us")
///             .build());
///
///         // Add a delay to allow the service account to propagate
///         var waitForSaPropagation = new Sleep("waitForSaPropagation", SleepArgs.builder()
///             .createDuration("90s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(settingsData)
///                 .build());
///
///         var iam = new CryptoKeyIAMMember("iam", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("example-key")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:%s", settingsData.serviceAccountId()))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitForSaPropagation)
///                 .build());
///
///         var primary = new OrganizationSettings("primary", OrganizationSettingsArgs.builder()
///             .location("us")
///             .organization("123456789")
///             .kmsKeyName("example-key")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(iam)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Add a delay to allow the service account to propagate
///   waitForSaPropagation:
///     type: time:Sleep
///     name: wait_for_sa_propagation
///     properties:
///       createDuration: 90s
///     options:
///       dependsOn:
///         - ${settingsData}
///   iam:
///     type: gcp:kms:CryptoKeyIAMMember
///     properties:
///       cryptoKeyId: example-key
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:${settingsData.serviceAccountId}
///     options:
///       dependsOn:
///         - ${waitForSaPropagation}
///   primary:
///     type: gcp:observability:OrganizationSettings
///     properties:
///       location: us
///       organization: '123456789'
///       kmsKeyName: example-key
///     options:
///       dependsOn:
///         - ${iam}
/// variables:
///   settingsData:
///     fn::invoke:
///       function: gcp:observability:getOrganizationSettings
///       arguments:
///         organization: '123456789'
///         location: us
/// ```
///
/// ### Observability Organization Settings Basic Global
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const settingsData = gcp.observability.getOrganizationSettings({
///     organization: "123456789",
///     location: "global",
/// });
/// const primaryGlobal = new gcp.observability.OrganizationSettings("primary_global", {
///     location: "global",
///     organization: "123456789",
///     defaultStorageLocation: "us",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// settings_data = gcp.observability.get_organization_settings(organization="123456789",
///     location="global")
/// primary_global = gcp.observability.OrganizationSettings("primary_global",
///     location="global",
///     organization="123456789",
///     default_storage_location="us")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var settingsData = Gcp.Observability.GetOrganizationSettings.Invoke(new()
///     {
///         Organization = "123456789",
///         Location = "global",
///     });
///
///     var primaryGlobal = new Gcp.Observability.OrganizationSettings("primary_global", new()
///     {
///         Location = "global",
///         Organization = "123456789",
///         DefaultStorageLocation = "us",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/observability"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := observability.LookupOrganizationSettings(ctx, &observability.LookupOrganizationSettingsArgs{
/// 			Organization: "123456789",
/// 			Location:     "global",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = observability.NewOrganizationSettings(ctx, "primary_global", &observability.OrganizationSettingsArgs{
/// 			Location:               pulumi.String("global"),
/// 			Organization:           pulumi.String("123456789"),
/// 			DefaultStorageLocation: pulumi.String("us"),
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
/// data "gcp_observability_getorganizationsettings" "settingsData" {
///   organization = "123456789"
///   location     = "global"
/// }
///
/// resource "gcp_observability_organizationsettings" "primary_global" {
///   location                 = "global"
///   organization             = "123456789"
///   default_storage_location = "us"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.observability.ObservabilityFunctions;
/// import com.pulumi.gcp.observability.inputs.GetOrganizationSettingsArgs;
/// import com.pulumi.gcp.observability.OrganizationSettings;
/// import com.pulumi.gcp.observability.OrganizationSettingsArgs;
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
///         final var settingsData = ObservabilityFunctions.getOrganizationSettings(GetOrganizationSettingsArgs.builder()
///             .organization("123456789")
///             .location("global")
///             .build());
///
///         var primaryGlobal = new OrganizationSettings("primaryGlobal", OrganizationSettingsArgs.builder()
///             .location("global")
///             .organization("123456789")
///             .defaultStorageLocation("us")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primaryGlobal:
///     type: gcp:observability:OrganizationSettings
///     name: primary_global
///     properties:
///       location: global
///       organization: '123456789'
///       defaultStorageLocation: us
/// variables:
///   settingsData:
///     fn::invoke:
///       function: gcp:observability:getOrganizationSettings
///       arguments:
///         organization: '123456789'
///         location: global
/// ```
///
///
/// ## Import
///
/// OrganizationSettings can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/locations/{{location}}/settings`
/// * `{{organization}}/{{location}}`
///
///
/// When using the `pulumi import` command, OrganizationSettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:observability/organizationSettings:OrganizationSettings default organizations/{{organization}}/locations/{{location}}/settings
/// $ pulumi import gcp:observability/organizationSettings:OrganizationSettings default {{organization}}/{{location}}
/// ```
class OrganizationSettings extends pulumi.CustomResource {
  /// The default storage location for new resources, e.g. buckets. Only valid for global location.
  late final pulumi.Output<String?> defaultStorageLocation;
  /// The default Cloud KMS key to use for new resources. Only valid for regional locations.
  late final pulumi.Output<String?> kmsKeyName;
  /// The location of the settings.
  late final pulumi.Output<String> location;
  /// The resource name of the settings.
  late final pulumi.Output<String> name;
  /// The organization ID.
  late final pulumi.Output<String> organization;
  /// The service account used by Cloud Observability for this organization.
  late final pulumi.Output<String> serviceAccountId;

  /// Creates a new [OrganizationSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationSettings]. {@macro pulumi_observability_organization_settings_organization_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationSettings(
    String name, {
    OrganizationSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:observability/organizationSettings:OrganizationSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    defaultStorageLocation = registerOutput<String?>('defaultStorageLocation');
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    serviceAccountId = registerOutput<String>('serviceAccountId');
  }

  /// Gets an existing [OrganizationSettings] resource's state with the given [name] and [id].
  static OrganizationSettings get(
    String name,
    pulumi.Input<String> id, {
    OrganizationSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OrganizationSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OrganizationSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:observability/organizationSettings:OrganizationSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultStorageLocation = registerOutput<String?>('defaultStorageLocation');
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    serviceAccountId = registerOutput<String>('serviceAccountId');
  }

  /// Creates a typed reference to an existing [OrganizationSettings] resource.
  OrganizationSettings.reference(String urn)
    : super(
        'gcp:observability/organizationSettings:OrganizationSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    defaultStorageLocation = registerOutput<String?>('defaultStorageLocation');
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    serviceAccountId = registerOutput<String>('serviceAccountId');
  }
}
