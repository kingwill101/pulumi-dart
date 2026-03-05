import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_issuance_config_args.dart';
import 'certificate_issuance_config_certificate_authority_config.dart';
import 'certificate_issuance_config_state.dart';

/// Certificate represents a HTTP-reachable backend for a Certificate.
///
///
/// To get more information about CertificateIssuanceConfig, see:
///
/// * [API documentation](https://cloud.google.com/certificate-manager/docs/reference/certificate-manager/rest/v1/projects.locations.certificateIssuanceConfigs)
/// * How-to Guides
/// * [Manage certificate issuance configs](https://cloud.google.com/certificate-manager/docs/issuance-configs)
///
/// ## Example Usage
///
/// ### Certificate Manager Certificate Issuance Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pool = new gcp.certificateauthority.CaPool("pool", {
///     name: "ca-pool",
///     location: "us-central1",
///     tier: "ENTERPRISE",
/// });
/// const caAuthority = new gcp.certificateauthority.Authority("ca_authority", {
///     location: "us-central1",
///     pool: pool.name,
///     certificateAuthorityId: "ca-authority",
///     config: {
///         subjectConfig: {
///             subject: {
///                 organization: "HashiCorp",
///                 commonName: "my-certificate-authority",
///             },
///             subjectAltName: {
///                 dnsNames: ["hashicorp.com"],
///             },
///         },
///         x509Config: {
///             caOptions: {
///                 isCa: true,
///             },
///             keyUsage: {
///                 baseKeyUsage: {
///                     certSign: true,
///                     crlSign: true,
///                 },
///                 extendedKeyUsage: {
///                     serverAuth: true,
///                 },
///             },
///         },
///     },
///     keySpec: {
///         algorithm: "RSA_PKCS1_4096_SHA256",
///     },
///     deletionProtection: false,
///     skipGracePeriod: true,
///     ignoreActiveCertificatesOnDeletion: true,
/// });
/// const _default = new gcp.certificatemanager.CertificateIssuanceConfig("default", {
///     name: "issuance-config",
///     description: "sample description for the certificate issuanceConfigs",
///     certificateAuthorityConfig: {
///         certificateAuthorityServiceConfig: {
///             caPool: pool.id,
///         },
///     },
///     lifetime: "1814400s",
///     rotationWindowPercentage: 34,
///     keyAlgorithm: "ECDSA_P256",
///     labels: {
///         name: "wrench",
///         count: "3",
///     },
/// }, {
///     dependsOn: [caAuthority],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pool = gcp.certificateauthority.CaPool("pool",
///     name="ca-pool",
///     location="us-central1",
///     tier="ENTERPRISE")
/// ca_authority = gcp.certificateauthority.Authority("ca_authority",
///     location="us-central1",
///     pool=pool.name,
///     certificate_authority_id="ca-authority",
///     config={
///         "subject_config": {
///             "subject": {
///                 "organization": "HashiCorp",
///                 "common_name": "my-certificate-authority",
///             },
///             "subject_alt_name": {
///                 "dns_names": ["hashicorp.com"],
///             },
///         },
///         "x509_config": {
///             "ca_options": {
///                 "is_ca": True,
///             },
///             "key_usage": {
///                 "base_key_usage": {
///                     "cert_sign": True,
///                     "crl_sign": True,
///                 },
///                 "extended_key_usage": {
///                     "server_auth": True,
///                 },
///             },
///         },
///     },
///     key_spec={
///         "algorithm": "RSA_PKCS1_4096_SHA256",
///     },
///     deletion_protection=False,
///     skip_grace_period=True,
///     ignore_active_certificates_on_deletion=True)
/// default = gcp.certificatemanager.CertificateIssuanceConfig("default",
///     name="issuance-config",
///     description="sample description for the certificate issuanceConfigs",
///     certificate_authority_config={
///         "certificate_authority_service_config": {
///             "ca_pool": pool.id,
///         },
///     },
///     lifetime="1814400s",
///     rotation_window_percentage=34,
///     key_algorithm="ECDSA_P256",
///     labels={
///         "name": "wrench",
///         "count": "3",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[ca_authority]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new Gcp.CertificateAuthority.CaPool("pool", new()
///     {
///         Name = "ca-pool",
///         Location = "us-central1",
///         Tier = "ENTERPRISE",
///     });
///
///     var caAuthority = new Gcp.CertificateAuthority.Authority("ca_authority", new()
///     {
///         Location = "us-central1",
///         Pool = pool.Name,
///         CertificateAuthorityId = "ca-authority",
///         Config = new Gcp.CertificateAuthority.Inputs.AuthorityConfigArgs
///         {
///             SubjectConfig = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigArgs
///             {
///                 Subject = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigSubjectArgs
///                 {
///                     Organization = "HashiCorp",
///                     CommonName = "my-certificate-authority",
///                 },
///                 SubjectAltName = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigSubjectAltNameArgs
///                 {
///                     DnsNames = new[]
///                     {
///                         "hashicorp.com",
///                     },
///                 },
///             },
///             X509Config = new Gcp.CertificateAuthority.Inputs.AuthorityConfigX509ConfigArgs
///             {
///                 CaOptions = new Gcp.CertificateAuthority.Inputs.AuthorityConfigX509ConfigCaOptionsArgs
///                 {
///                     IsCa = true,
///                 },
///                 KeyUsage = new Gcp.CertificateAuthority.Inputs.AuthorityConfigX509ConfigKeyUsageArgs
///                 {
///                     BaseKeyUsage = new Gcp.CertificateAuthority.Inputs.AuthorityConfigX509ConfigKeyUsageBaseKeyUsageArgs
///                     {
///                         CertSign = true,
///                         CrlSign = true,
///                     },
///                     ExtendedKeyUsage = new Gcp.CertificateAuthority.Inputs.AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs
///                     {
///                         ServerAuth = true,
///                     },
///                 },
///             },
///         },
///         KeySpec = new Gcp.CertificateAuthority.Inputs.AuthorityKeySpecArgs
///         {
///             Algorithm = "RSA_PKCS1_4096_SHA256",
///         },
///         DeletionProtection = false,
///         SkipGracePeriod = true,
///         IgnoreActiveCertificatesOnDeletion = true,
///     });
///
///     var @default = new Gcp.CertificateManager.CertificateIssuanceConfig("default", new()
///     {
///         Name = "issuance-config",
///         Description = "sample description for the certificate issuanceConfigs",
///         CertificateAuthorityConfig = new Gcp.CertificateManager.Inputs.CertificateIssuanceConfigCertificateAuthorityConfigArgs
///         {
///             CertificateAuthorityServiceConfig = new Gcp.CertificateManager.Inputs.CertificateIssuanceConfigCertificateAuthorityConfigCertificateAuthorityServiceConfigArgs
///             {
///                 CaPool = pool.Id,
///             },
///         },
///         Lifetime = "1814400s",
///         RotationWindowPercentage = 34,
///         KeyAlgorithm = "ECDSA_P256",
///         Labels =
///         {
///             { "name", "wrench" },
///             { "count", "3" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             caAuthority,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		pool, err := certificateauthority.NewCaPool(ctx, "pool", &certificateauthority.CaPoolArgs{
/// 			Name:     pulumi.String("ca-pool"),
/// 			Location: pulumi.String("us-central1"),
/// 			Tier:     pulumi.String("ENTERPRISE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		caAuthority, err := certificateauthority.NewAuthority(ctx, "ca_authority", &certificateauthority.AuthorityArgs{
/// 			Location:               pulumi.String("us-central1"),
/// 			Pool:                   pool.Name,
/// 			CertificateAuthorityId: pulumi.String("ca-authority"),
/// 			Config: &certificateauthority.AuthorityConfigArgs{
/// 				SubjectConfig: &certificateauthority.AuthorityConfigSubjectConfigArgs{
/// 					Subject: &certificateauthority.AuthorityConfigSubjectConfigSubjectArgs{
/// 						Organization: pulumi.String("HashiCorp"),
/// 						CommonName:   pulumi.String("my-certificate-authority"),
/// 					},
/// 					SubjectAltName: &certificateauthority.AuthorityConfigSubjectConfigSubjectAltNameArgs{
/// 						DnsNames: pulumi.StringArray{
/// 							pulumi.String("hashicorp.com"),
/// 						},
/// 					},
/// 				},
/// 				X509Config: &certificateauthority.AuthorityConfigX509ConfigArgs{
/// 					CaOptions: &certificateauthority.AuthorityConfigX509ConfigCaOptionsArgs{
/// 						IsCa: pulumi.Bool(true),
/// 					},
/// 					KeyUsage: &certificateauthority.AuthorityConfigX509ConfigKeyUsageArgs{
/// 						BaseKeyUsage: &certificateauthority.AuthorityConfigX509ConfigKeyUsageBaseKeyUsageArgs{
/// 							CertSign: pulumi.Bool(true),
/// 							CrlSign:  pulumi.Bool(true),
/// 						},
/// 						ExtendedKeyUsage: &certificateauthority.AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs{
/// 							ServerAuth: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			KeySpec: &certificateauthority.AuthorityKeySpecArgs{
/// 				Algorithm: pulumi.String("RSA_PKCS1_4096_SHA256"),
/// 			},
/// 			DeletionProtection:                 pulumi.Bool(false),
/// 			SkipGracePeriod:                    pulumi.Bool(true),
/// 			IgnoreActiveCertificatesOnDeletion: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = certificatemanager.NewCertificateIssuanceConfig(ctx, "default", &certificatemanager.CertificateIssuanceConfigArgs{
/// 			Name:        pulumi.String("issuance-config"),
/// 			Description: pulumi.String("sample description for the certificate issuanceConfigs"),
/// 			CertificateAuthorityConfig: &certificatemanager.CertificateIssuanceConfigCertificateAuthorityConfigArgs{
/// 				CertificateAuthorityServiceConfig: &certificatemanager.CertificateIssuanceConfigCertificateAuthorityConfigCertificateAuthorityServiceConfigArgs{
/// 					CaPool: pool.ID(),
/// 				},
/// 			},
/// 			Lifetime:                 pulumi.String("1814400s"),
/// 			RotationWindowPercentage: pulumi.Int(34),
/// 			KeyAlgorithm:             pulumi.String("ECDSA_P256"),
/// 			Labels: pulumi.StringMap{
/// 				"name":  pulumi.String("wrench"),
/// 				"count": pulumi.String("3"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			caAuthority,
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
/// import com.pulumi.gcp.certificateauthority.CaPool;
/// import com.pulumi.gcp.certificateauthority.CaPoolArgs;
/// import com.pulumi.gcp.certificateauthority.Authority;
/// import com.pulumi.gcp.certificateauthority.AuthorityArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigSubjectConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigSubjectConfigSubjectArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigSubjectConfigSubjectAltNameArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigCaOptionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageBaseKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityKeySpecArgs;
/// import com.pulumi.gcp.certificatemanager.CertificateIssuanceConfig;
/// import com.pulumi.gcp.certificatemanager.CertificateIssuanceConfigArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.CertificateIssuanceConfigCertificateAuthorityConfigArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.CertificateIssuanceConfigCertificateAuthorityConfigCertificateAuthorityServiceConfigArgs;
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
///         var pool = new CaPool("pool", CaPoolArgs.builder()
///             .name("ca-pool")
///             .location("us-central1")
///             .tier("ENTERPRISE")
///             .build());
///
///         var caAuthority = new Authority("caAuthority", AuthorityArgs.builder()
///             .location("us-central1")
///             .pool(pool.name())
///             .certificateAuthorityId("ca-authority")
///             .config(AuthorityConfigArgs.builder()
///                 .subjectConfig(AuthorityConfigSubjectConfigArgs.builder()
///                     .subject(AuthorityConfigSubjectConfigSubjectArgs.builder()
///                         .organization("HashiCorp")
///                         .commonName("my-certificate-authority")
///                         .build())
///                     .subjectAltName(AuthorityConfigSubjectConfigSubjectAltNameArgs.builder()
///                         .dnsNames("hashicorp.com")
///                         .build())
///                     .build())
///                 .x509Config(AuthorityConfigX509ConfigArgs.builder()
///                     .caOptions(AuthorityConfigX509ConfigCaOptionsArgs.builder()
///                         .isCa(true)
///                         .build())
///                     .keyUsage(AuthorityConfigX509ConfigKeyUsageArgs.builder()
///                         .baseKeyUsage(AuthorityConfigX509ConfigKeyUsageBaseKeyUsageArgs.builder()
///                             .certSign(true)
///                             .crlSign(true)
///                             .build())
///                         .extendedKeyUsage(AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs.builder()
///                             .serverAuth(true)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .keySpec(AuthorityKeySpecArgs.builder()
///                 .algorithm("RSA_PKCS1_4096_SHA256")
///                 .build())
///             .deletionProtection(false)
///             .skipGracePeriod(true)
///             .ignoreActiveCertificatesOnDeletion(true)
///             .build());
///
///         var default_ = new CertificateIssuanceConfig("default", CertificateIssuanceConfigArgs.builder()
///             .name("issuance-config")
///             .description("sample description for the certificate issuanceConfigs")
///             .certificateAuthorityConfig(CertificateIssuanceConfigCertificateAuthorityConfigArgs.builder()
///                 .certificateAuthorityServiceConfig(CertificateIssuanceConfigCertificateAuthorityConfigCertificateAuthorityServiceConfigArgs.builder()
///                     .caPool(pool.id())
///                     .build())
///                 .build())
///             .lifetime("1814400s")
///             .rotationWindowPercentage(34)
///             .keyAlgorithm("ECDSA_P256")
///             .labels(Map.ofEntries(
///                 Map.entry("name", "wrench"),
///                 Map.entry("count", "3")
///             ))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(caAuthority)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificatemanager:CertificateIssuanceConfig
///     properties:
///       name: issuance-config
///       description: sample description for the certificate issuanceConfigs
///       certificateAuthorityConfig:
///         certificateAuthorityServiceConfig:
///           caPool: ${pool.id}
///       lifetime: 1814400s
///       rotationWindowPercentage: 34
///       keyAlgorithm: ECDSA_P256
///       labels:
///         name: wrench
///         count: '3'
///     options:
///       dependsOn:
///         - ${caAuthority}
///   pool:
///     type: gcp:certificateauthority:CaPool
///     properties:
///       name: ca-pool
///       location: us-central1
///       tier: ENTERPRISE
///   caAuthority:
///     type: gcp:certificateauthority:Authority
///     name: ca_authority
///     properties:
///       location: us-central1
///       pool: ${pool.name}
///       certificateAuthorityId: ca-authority
///       config:
///         subjectConfig:
///           subject:
///             organization: HashiCorp
///             commonName: my-certificate-authority
///           subjectAltName:
///             dnsNames:
///               - hashicorp.com
///         x509Config:
///           caOptions:
///             isCa: true
///           keyUsage:
///             baseKeyUsage:
///               certSign: true
///               crlSign: true
///             extendedKeyUsage:
///               serverAuth: true
///       keySpec:
///         algorithm: RSA_PKCS1_4096_SHA256
///       deletionProtection: false
///       skipGracePeriod: true
///       ignoreActiveCertificatesOnDeletion: true
/// ```
///
///
/// ## Import
///
/// CertificateIssuanceConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/certificateIssuanceConfigs/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, CertificateIssuanceConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/certificateIssuanceConfig:CertificateIssuanceConfig default projects/{{project}}/locations/{{location}}/certificateIssuanceConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/certificateIssuanceConfig:CertificateIssuanceConfig default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/certificateIssuanceConfig:CertificateIssuanceConfig default {{location}}/{{name}}
/// ```
class CertificateIssuanceConfig extends pulumi.CustomResource {
  /// The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc.
  /// Structure is documented below.
  late final pulumi.Output<CertificateIssuanceConfigCertificateAuthorityConfig>
  certificateAuthorityConfig;

  /// The creation timestamp of a CertificateIssuanceConfig. Timestamp is in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds with up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// One or more paragraphs of text description of a CertificateIssuanceConfig.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Key algorithm to use when generating the private key.
  /// Possible values are: `RSA_2048`, `ECDSA_P256`.
  late final pulumi.Output<String> keyAlgorithm;

  /// 'Set of label tags associated with the CertificateIssuanceConfig resource.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Lifetime of issued certificates. A duration in seconds with up to nine fractional digits, ending with 's'.
  /// Example: "1814400s". Valid values are from 21 days (1814400s) to 30 days (2592000s)
  late final pulumi.Output<String> lifetime;

  /// The Certificate Manager location. If not specified, "global" is used.
  late final pulumi.Output<String?> location;

  /// A user-defined name of the certificate issuance config.
  /// CertificateIssuanceConfig names must be unique globally.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// It specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate.
  /// Must be a number between 1-99, inclusive.
  /// You must set the rotation window percentage in relation to the certificate lifetime so that certificate renewal occurs at least 7 days after
  /// the certificate has been issued and at least 7 days before it expires.
  late final pulumi.Output<int> rotationWindowPercentage;

  /// The last update timestamp of a CertificateIssuanceConfig. Timestamp is in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds with up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [CertificateIssuanceConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateIssuanceConfig]. {@macro pulumi_certificatemanager_certificate_issuance_config_certificate_issuance_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateIssuanceConfig(
    String name, {
    CertificateIssuanceConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:certificatemanager/certificateIssuanceConfig:CertificateIssuanceConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    certificateAuthorityConfig =
        registerOutput<CertificateIssuanceConfigCertificateAuthorityConfig>(
          'certificateAuthorityConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return CertificateIssuanceConfigCertificateAuthorityConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    keyAlgorithm = registerOutput<String>('keyAlgorithm');
    labels = registerOutput<Map<String, String>?>('labels');
    lifetime = registerOutput<String>('lifetime');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    rotationWindowPercentage = registerOutput<int>('rotationWindowPercentage');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [CertificateIssuanceConfig] resource's state with the given [name] and [id].
  static CertificateIssuanceConfig get(
    String name,
    pulumi.Input<String> id, {
    CertificateIssuanceConfigState? state,
  }) {
    return CertificateIssuanceConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CertificateIssuanceConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:certificatemanager/certificateIssuanceConfig:CertificateIssuanceConfig',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    certificateAuthorityConfig =
        registerOutput<CertificateIssuanceConfigCertificateAuthorityConfig>(
          'certificateAuthorityConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return CertificateIssuanceConfigCertificateAuthorityConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    keyAlgorithm = registerOutput<String>('keyAlgorithm');
    labels = registerOutput<Map<String, String>?>('labels');
    lifetime = registerOutput<String>('lifetime');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    rotationWindowPercentage = registerOutput<int>('rotationWindowPercentage');
    updateTime = registerOutput<String>('updateTime');
  }
}
