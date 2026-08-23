import 'package:pulumi/pulumi.dart' as pulumi;
import 'authority_args.dart';
import 'authority_config.dart';
import 'authority_key_spec.dart';
import 'authority_state.dart';
import 'authority_subordinate_config.dart';
import 'authority_user_defined_access_urls.dart';

/// A CertificateAuthority represents an individual Certificate Authority. A
/// CertificateAuthority can be used to create Certificates.
///
///
/// To get more information about CertificateAuthority, see:
///
/// * [API documentation](https://cloud.google.com/certificate-authority-service/docs/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/certificate-authority-service)
///
/// &gt; **Warning:** On newer versions of the provider, you must explicitly set `deletion_protection=false`
/// (and run `pulumi up` to write the field to state) in order to destroy a CertificateAuthority.
/// It is recommended to not set this field (or set it to true) until you're ready to destroy.
///
/// ## Example Usage
///
/// ### Privateca Certificate Authority Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.certificateauthority.Authority("default", {
///     pool: "ca-pool",
///     certificateAuthorityId: "my-certificate-authority",
///     location: "us-central1",
///     deletionProtection: true,
///     config: {
///         subjectConfig: {
///             subject: {
///                 organization: "ACME",
///                 commonName: "my-certificate-authority",
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
///                 extendedKeyUsage: {},
///             },
///         },
///     },
///     lifetime: `${10 * 365 * 24 * 3600}s`,
///     keySpec: {
///         algorithm: "RSA_PKCS1_4096_SHA256",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificateauthority.Authority("default",
///     pool="ca-pool",
///     certificate_authority_id="my-certificate-authority",
///     location="us-central1",
///     deletion_protection=True,
///     config={
///         "subject_config": {
///             "subject": {
///                 "organization": "ACME",
///                 "common_name": "my-certificate-authority",
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
///                 "extended_key_usage": {},
///             },
///         },
///     },
///     lifetime=f"{10 * 365 * 24 * 3600}s",
///     key_spec={
///         "algorithm": "RSA_PKCS1_4096_SHA256",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CertificateAuthority.Authority("default", new()
///     {
///         Pool = "ca-pool",
///         CertificateAuthorityId = "my-certificate-authority",
///         Location = "us-central1",
///         DeletionProtection = true,
///         Config = new Gcp.CertificateAuthority.Inputs.AuthorityConfigArgs
///         {
///             SubjectConfig = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigArgs
///             {
///                 Subject = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigSubjectArgs
///                 {
///                     Organization = "ACME",
///                     CommonName = "my-certificate-authority",
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
///                     ExtendedKeyUsage = null,
///                 },
///             },
///         },
///         Lifetime = $"{10 * 365 * 24 * 3600}s",
///         KeySpec = new Gcp.CertificateAuthority.Inputs.AuthorityKeySpecArgs
///         {
///             Algorithm = "RSA_PKCS1_4096_SHA256",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := certificateauthority.NewAuthority(ctx, "default", &certificateauthority.AuthorityArgs{
/// 			Pool:                   pulumi.String("ca-pool"),
/// 			CertificateAuthorityId: pulumi.String("my-certificate-authority"),
/// 			Location:               pulumi.String("us-central1"),
/// 			DeletionProtection:     pulumi.Bool(true),
/// 			Config: &certificateauthority.AuthorityConfigArgs{
/// 				SubjectConfig: &certificateauthority.AuthorityConfigSubjectConfigArgs{
/// 					Subject: &certificateauthority.AuthorityConfigSubjectConfigSubjectArgs{
/// 						Organization: pulumi.String("ACME"),
/// 						CommonName:   pulumi.String("my-certificate-authority"),
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
/// 						ExtendedKeyUsage: &certificateauthority.AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs{},
/// 					},
/// 				},
/// 			},
/// 			Lifetime: pulumi.Sprintf("%vs", 10*365*24*3600),
/// 			KeySpec: &certificateauthority.AuthorityKeySpecArgs{
/// 				Algorithm: pulumi.String("RSA_PKCS1_4096_SHA256"),
/// 			},
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
/// resource "gcp_certificateauthority_authority" "default" {
///   pool                     = "ca-pool"
///   certificate_authority_id = "my-certificate-authority"
///   location                 = "us-central1"
///   deletion_protection      = true
///   config = {
///     subject_config = {
///       subject = {
///         organization = "ACME"
///         common_name  = "my-certificate-authority"
///       }
///     }
///     x509_config = {
///       ca_options = {
///         is_ca = true
///       }
///       key_usage = {
///         base_key_usage = {
///           cert_sign = true
///           crl_sign  = true
///         }
///         extended_key_usage = {}
///       }
///     }
///   }
///   # is_ca *MUST* be true for certificate authorities
///   # cert_sign and crl_sign *MUST* be true for certificate authorities
///   lifetime ="${10*365*24*3600}s"
///   key_spec = {
///     algorithm = "RSA_PKCS1_4096_SHA256"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificateauthority.Authority;
/// import com.pulumi.gcp.certificateauthority.AuthorityArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigSubjectConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigSubjectConfigSubjectArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigCaOptionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageBaseKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityKeySpecArgs;
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
///         var default_ = new Authority("default", AuthorityArgs.builder()
///             .pool("ca-pool")
///             .certificateAuthorityId("my-certificate-authority")
///             .location("us-central1")
///             .deletionProtection(true)
///             .config(AuthorityConfigArgs.builder()
///                 .subjectConfig(AuthorityConfigSubjectConfigArgs.builder()
///                     .subject(AuthorityConfigSubjectConfigSubjectArgs.builder()
///                         .organization("ACME")
///                         .commonName("my-certificate-authority")
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
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .lifetime(String.format("%ss", 10 * 365 * 24 * 3600))
///             .keySpec(AuthorityKeySpecArgs.builder()
///                 .algorithm("RSA_PKCS1_4096_SHA256")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
///
/// ### Privateca Certificate Authority Basic No Org
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.certificateauthority.Authority("default", {
///     pool: "ca-pool",
///     certificateAuthorityId: "my-certificate-authority",
///     location: "us-central1",
///     deletionProtection: true,
///     config: {
///         subjectConfig: {
///             subject: {
///                 commonName: "my-certificate-authority",
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
///                 extendedKeyUsage: {},
///             },
///         },
///     },
///     lifetime: `${10 * 365 * 24 * 3600}s`,
///     keySpec: {
///         algorithm: "RSA_PKCS1_4096_SHA256",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificateauthority.Authority("default",
///     pool="ca-pool",
///     certificate_authority_id="my-certificate-authority",
///     location="us-central1",
///     deletion_protection=True,
///     config={
///         "subject_config": {
///             "subject": {
///                 "common_name": "my-certificate-authority",
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
///                 "extended_key_usage": {},
///             },
///         },
///     },
///     lifetime=f"{10 * 365 * 24 * 3600}s",
///     key_spec={
///         "algorithm": "RSA_PKCS1_4096_SHA256",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CertificateAuthority.Authority("default", new()
///     {
///         Pool = "ca-pool",
///         CertificateAuthorityId = "my-certificate-authority",
///         Location = "us-central1",
///         DeletionProtection = true,
///         Config = new Gcp.CertificateAuthority.Inputs.AuthorityConfigArgs
///         {
///             SubjectConfig = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigArgs
///             {
///                 Subject = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigSubjectArgs
///                 {
///                     CommonName = "my-certificate-authority",
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
///                     ExtendedKeyUsage = null,
///                 },
///             },
///         },
///         Lifetime = $"{10 * 365 * 24 * 3600}s",
///         KeySpec = new Gcp.CertificateAuthority.Inputs.AuthorityKeySpecArgs
///         {
///             Algorithm = "RSA_PKCS1_4096_SHA256",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := certificateauthority.NewAuthority(ctx, "default", &certificateauthority.AuthorityArgs{
/// 			Pool:                   pulumi.String("ca-pool"),
/// 			CertificateAuthorityId: pulumi.String("my-certificate-authority"),
/// 			Location:               pulumi.String("us-central1"),
/// 			DeletionProtection:     pulumi.Bool(true),
/// 			Config: &certificateauthority.AuthorityConfigArgs{
/// 				SubjectConfig: &certificateauthority.AuthorityConfigSubjectConfigArgs{
/// 					Subject: &certificateauthority.AuthorityConfigSubjectConfigSubjectArgs{
/// 						CommonName: pulumi.String("my-certificate-authority"),
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
/// 						ExtendedKeyUsage: &certificateauthority.AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs{},
/// 					},
/// 				},
/// 			},
/// 			Lifetime: pulumi.Sprintf("%vs", 10*365*24*3600),
/// 			KeySpec: &certificateauthority.AuthorityKeySpecArgs{
/// 				Algorithm: pulumi.String("RSA_PKCS1_4096_SHA256"),
/// 			},
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
/// resource "gcp_certificateauthority_authority" "default" {
///   pool                     = "ca-pool"
///   certificate_authority_id = "my-certificate-authority"
///   location                 = "us-central1"
///   deletion_protection      = true
///   config = {
///     subject_config = {
///       subject = {
///         common_name = "my-certificate-authority"
///       }
///     }
///     x509_config = {
///       ca_options = {
///         is_ca = true
///       }
///       key_usage = {
///         base_key_usage = {
///           cert_sign = true
///           crl_sign  = true
///         }
///         extended_key_usage = {}
///       }
///     }
///   }
///   # is_ca *MUST* be true for certificate authorities
///   # cert_sign and crl_sign *MUST* be true for certificate authorities
///   lifetime ="${10*365*24*3600}s"
///   key_spec = {
///     algorithm = "RSA_PKCS1_4096_SHA256"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificateauthority.Authority;
/// import com.pulumi.gcp.certificateauthority.AuthorityArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigSubjectConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigSubjectConfigSubjectArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigCaOptionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageBaseKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityKeySpecArgs;
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
///         var default_ = new Authority("default", AuthorityArgs.builder()
///             .pool("ca-pool")
///             .certificateAuthorityId("my-certificate-authority")
///             .location("us-central1")
///             .deletionProtection(true)
///             .config(AuthorityConfigArgs.builder()
///                 .subjectConfig(AuthorityConfigSubjectConfigArgs.builder()
///                     .subject(AuthorityConfigSubjectConfigSubjectArgs.builder()
///                         .commonName("my-certificate-authority")
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
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .lifetime(String.format("%ss", 10 * 365 * 24 * 3600))
///             .keySpec(AuthorityKeySpecArgs.builder()
///                 .algorithm("RSA_PKCS1_4096_SHA256")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
///
/// ### Privateca Certificate Authority Subordinate
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const root_ca = new gcp.certificateauthority.Authority("root-ca", {
///     pool: "ca-pool",
///     certificateAuthorityId: "my-certificate-authority-root",
///     location: "us-central1",
///     config: {
///         subjectConfig: {
///             subject: {
///                 organization: "ACME",
///                 commonName: "my-certificate-authority",
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
///                 extendedKeyUsage: {},
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
/// const _default = new gcp.certificateauthority.Authority("default", {
///     pool: "ca-pool",
///     certificateAuthorityId: "my-certificate-authority-sub",
///     location: "us-central1",
///     deletionProtection: true,
///     subordinateConfig: {
///         certificateAuthority: root_ca.name,
///     },
///     config: {
///         subjectConfig: {
///             subject: {
///                 organization: "ACME",
///                 commonName: "my-subordinate-authority",
///             },
///         },
///         x509Config: {
///             caOptions: {
///                 isCa: true,
///                 zeroMaxIssuerPathLength: true,
///             },
///             keyUsage: {
///                 baseKeyUsage: {
///                     certSign: true,
///                     crlSign: true,
///                 },
///                 extendedKeyUsage: {},
///             },
///         },
///     },
///     lifetime: "157680000s",
///     keySpec: {
///         algorithm: "RSA_PKCS1_2048_SHA256",
///     },
///     type: "SUBORDINATE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// root_ca = gcp.certificateauthority.Authority("root-ca",
///     pool="ca-pool",
///     certificate_authority_id="my-certificate-authority-root",
///     location="us-central1",
///     config={
///         "subject_config": {
///             "subject": {
///                 "organization": "ACME",
///                 "common_name": "my-certificate-authority",
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
///                 "extended_key_usage": {},
///             },
///         },
///     },
///     key_spec={
///         "algorithm": "RSA_PKCS1_4096_SHA256",
///     },
///     deletion_protection=False,
///     skip_grace_period=True,
///     ignore_active_certificates_on_deletion=True)
/// default = gcp.certificateauthority.Authority("default",
///     pool="ca-pool",
///     certificate_authority_id="my-certificate-authority-sub",
///     location="us-central1",
///     deletion_protection=True,
///     subordinate_config={
///         "certificate_authority": root_ca.name,
///     },
///     config={
///         "subject_config": {
///             "subject": {
///                 "organization": "ACME",
///                 "common_name": "my-subordinate-authority",
///             },
///         },
///         "x509_config": {
///             "ca_options": {
///                 "is_ca": True,
///                 "zero_max_issuer_path_length": True,
///             },
///             "key_usage": {
///                 "base_key_usage": {
///                     "cert_sign": True,
///                     "crl_sign": True,
///                 },
///                 "extended_key_usage": {},
///             },
///         },
///     },
///     lifetime="157680000s",
///     key_spec={
///         "algorithm": "RSA_PKCS1_2048_SHA256",
///     },
///     type="SUBORDINATE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var root_ca = new Gcp.CertificateAuthority.Authority("root-ca", new()
///     {
///         Pool = "ca-pool",
///         CertificateAuthorityId = "my-certificate-authority-root",
///         Location = "us-central1",
///         Config = new Gcp.CertificateAuthority.Inputs.AuthorityConfigArgs
///         {
///             SubjectConfig = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigArgs
///             {
///                 Subject = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigSubjectArgs
///                 {
///                     Organization = "ACME",
///                     CommonName = "my-certificate-authority",
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
///                     ExtendedKeyUsage = null,
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
///     var @default = new Gcp.CertificateAuthority.Authority("default", new()
///     {
///         Pool = "ca-pool",
///         CertificateAuthorityId = "my-certificate-authority-sub",
///         Location = "us-central1",
///         DeletionProtection = true,
///         SubordinateConfig = new Gcp.CertificateAuthority.Inputs.AuthoritySubordinateConfigArgs
///         {
///             CertificateAuthority = root_ca.Name,
///         },
///         Config = new Gcp.CertificateAuthority.Inputs.AuthorityConfigArgs
///         {
///             SubjectConfig = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigArgs
///             {
///                 Subject = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigSubjectArgs
///                 {
///                     Organization = "ACME",
///                     CommonName = "my-subordinate-authority",
///                 },
///             },
///             X509Config = new Gcp.CertificateAuthority.Inputs.AuthorityConfigX509ConfigArgs
///             {
///                 CaOptions = new Gcp.CertificateAuthority.Inputs.AuthorityConfigX509ConfigCaOptionsArgs
///                 {
///                     IsCa = true,
///                     ZeroMaxIssuerPathLength = true,
///                 },
///                 KeyUsage = new Gcp.CertificateAuthority.Inputs.AuthorityConfigX509ConfigKeyUsageArgs
///                 {
///                     BaseKeyUsage = new Gcp.CertificateAuthority.Inputs.AuthorityConfigX509ConfigKeyUsageBaseKeyUsageArgs
///                     {
///                         CertSign = true,
///                         CrlSign = true,
///                     },
///                     ExtendedKeyUsage = null,
///                 },
///             },
///         },
///         Lifetime = "157680000s",
///         KeySpec = new Gcp.CertificateAuthority.Inputs.AuthorityKeySpecArgs
///         {
///             Algorithm = "RSA_PKCS1_2048_SHA256",
///         },
///         Type = "SUBORDINATE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		root_ca, err := certificateauthority.NewAuthority(ctx, "root-ca", &certificateauthority.AuthorityArgs{
/// 			Pool:                   pulumi.String("ca-pool"),
/// 			CertificateAuthorityId: pulumi.String("my-certificate-authority-root"),
/// 			Location:               pulumi.String("us-central1"),
/// 			Config: &certificateauthority.AuthorityConfigArgs{
/// 				SubjectConfig: &certificateauthority.AuthorityConfigSubjectConfigArgs{
/// 					Subject: &certificateauthority.AuthorityConfigSubjectConfigSubjectArgs{
/// 						Organization: pulumi.String("ACME"),
/// 						CommonName:   pulumi.String("my-certificate-authority"),
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
/// 						ExtendedKeyUsage: &certificateauthority.AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs{},
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
/// 		_, err = certificateauthority.NewAuthority(ctx, "default", &certificateauthority.AuthorityArgs{
/// 			Pool:                   pulumi.String("ca-pool"),
/// 			CertificateAuthorityId: pulumi.String("my-certificate-authority-sub"),
/// 			Location:               pulumi.String("us-central1"),
/// 			DeletionProtection:     pulumi.Bool(true),
/// 			SubordinateConfig: &certificateauthority.AuthoritySubordinateConfigArgs{
/// 				CertificateAuthority: root_ca.Name,
/// 			},
/// 			Config: &certificateauthority.AuthorityConfigArgs{
/// 				SubjectConfig: &certificateauthority.AuthorityConfigSubjectConfigArgs{
/// 					Subject: &certificateauthority.AuthorityConfigSubjectConfigSubjectArgs{
/// 						Organization: pulumi.String("ACME"),
/// 						CommonName:   pulumi.String("my-subordinate-authority"),
/// 					},
/// 				},
/// 				X509Config: &certificateauthority.AuthorityConfigX509ConfigArgs{
/// 					CaOptions: &certificateauthority.AuthorityConfigX509ConfigCaOptionsArgs{
/// 						IsCa:                    pulumi.Bool(true),
/// 						ZeroMaxIssuerPathLength: pulumi.Bool(true),
/// 					},
/// 					KeyUsage: &certificateauthority.AuthorityConfigX509ConfigKeyUsageArgs{
/// 						BaseKeyUsage: &certificateauthority.AuthorityConfigX509ConfigKeyUsageBaseKeyUsageArgs{
/// 							CertSign: pulumi.Bool(true),
/// 							CrlSign:  pulumi.Bool(true),
/// 						},
/// 						ExtendedKeyUsage: &certificateauthority.AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs{},
/// 					},
/// 				},
/// 			},
/// 			Lifetime: pulumi.String("157680000s"),
/// 			KeySpec: &certificateauthority.AuthorityKeySpecArgs{
/// 				Algorithm: pulumi.String("RSA_PKCS1_2048_SHA256"),
/// 			},
/// 			Type: pulumi.String("SUBORDINATE"),
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
/// resource "gcp_certificateauthority_authority" "root-ca" {
///   pool                     = "ca-pool"
///   certificate_authority_id = "my-certificate-authority-root"
///   location                 = "us-central1"
///   config = {
///     subject_config = {
///       subject = {
///         organization = "ACME"
///         common_name  = "my-certificate-authority"
///       }
///     }
///     x509_config = {
///       ca_options = {
///         is_ca = true
///       }
///       key_usage = {
///         base_key_usage = {
///           cert_sign = true
///           crl_sign  = true
///         }
///         extended_key_usage = {}
///       }
///     }
///   }
///   # is_ca *MUST* be true for certificate authorities
///   # cert_sign and crl_sign *MUST* be true for certificate authorities
///   key_spec = {
///     algorithm = "RSA_PKCS1_4096_SHA256"
///   }
///   deletion_protection                    = false
///   skip_grace_period                      = true
///   ignore_active_certificates_on_deletion = true
/// }
/// resource "gcp_certificateauthority_authority" "default" {
///   pool                     = "ca-pool"
///   certificate_authority_id = "my-certificate-authority-sub"
///   location                 = "us-central1"
///   deletion_protection      = true
///   subordinate_config = {
///     certificate_authority = gcp_certificateauthority_authority.root-ca.name
///   }
///   config = {
///     subject_config = {
///       subject = {
///         organization = "ACME"
///         common_name  = "my-subordinate-authority"
///       }
///     }
///     x509_config = {
///       ca_options = {
///         is_ca                       = true
///         zero_max_issuer_path_length = true
///       }
///       key_usage = {
///         base_key_usage = {
///           cert_sign = true
///           crl_sign  = true
///         }
///         extended_key_usage = {}
///       }
///     }
///   }
///   # Force the sub CA to only issue leaf certs.
///   # Use e.g.
///   #    max_issuer_path_length = 1
///   # if you need to chain more subordinates.
///   # Force the sub CA to only issue leaf certs.
///   # Use e.g.
///   #    max_issuer_path_length = 1
///   # if you need to chain more subordinates.
///   lifetime = "157680000s"
///   key_spec = {
///     algorithm = "RSA_PKCS1_2048_SHA256"
///   }
///   type = "SUBORDINATE"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificateauthority.Authority;
/// import com.pulumi.gcp.certificateauthority.AuthorityArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigSubjectConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigSubjectConfigSubjectArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigCaOptionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageBaseKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityKeySpecArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthoritySubordinateConfigArgs;
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
///         var root_ca = new Authority("root-ca", AuthorityArgs.builder()
///             .pool("ca-pool")
///             .certificateAuthorityId("my-certificate-authority-root")
///             .location("us-central1")
///             .config(AuthorityConfigArgs.builder()
///                 .subjectConfig(AuthorityConfigSubjectConfigArgs.builder()
///                     .subject(AuthorityConfigSubjectConfigSubjectArgs.builder()
///                         .organization("ACME")
///                         .commonName("my-certificate-authority")
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
///         var default_ = new Authority("default", AuthorityArgs.builder()
///             .pool("ca-pool")
///             .certificateAuthorityId("my-certificate-authority-sub")
///             .location("us-central1")
///             .deletionProtection(true)
///             .subordinateConfig(AuthoritySubordinateConfigArgs.builder()
///                 .certificateAuthority(root_ca.name())
///                 .build())
///             .config(AuthorityConfigArgs.builder()
///                 .subjectConfig(AuthorityConfigSubjectConfigArgs.builder()
///                     .subject(AuthorityConfigSubjectConfigSubjectArgs.builder()
///                         .organization("ACME")
///                         .commonName("my-subordinate-authority")
///                         .build())
///                     .build())
///                 .x509Config(AuthorityConfigX509ConfigArgs.builder()
///                     .caOptions(AuthorityConfigX509ConfigCaOptionsArgs.builder()
///                         .isCa(true)
///                         .zeroMaxIssuerPathLength(true)
///                         .build())
///                     .keyUsage(AuthorityConfigX509ConfigKeyUsageArgs.builder()
///                         .baseKeyUsage(AuthorityConfigX509ConfigKeyUsageBaseKeyUsageArgs.builder()
///                             .certSign(true)
///                             .crlSign(true)
///                             .build())
///                         .extendedKeyUsage(AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs.builder()
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .lifetime("157680000s")
///             .keySpec(AuthorityKeySpecArgs.builder()
///                 .algorithm("RSA_PKCS1_2048_SHA256")
///                 .build())
///             .type("SUBORDINATE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   root-ca:
///     type: gcp:certificateauthority:Authority
///     properties:
///       pool: ca-pool
///       certificateAuthorityId: my-certificate-authority-root
///       location: us-central1
///       config:
///         subjectConfig:
///           subject:
///             organization: ACME
///             commonName: my-certificate-authority
///         x509Config:
///           caOptions:
///             isCa: true
///           keyUsage:
///             baseKeyUsage:
///               certSign: true
///               crlSign: true
///             extendedKeyUsage: {}
///       keySpec:
///         algorithm: RSA_PKCS1_4096_SHA256
///       deletionProtection: false
///       skipGracePeriod: true
///       ignoreActiveCertificatesOnDeletion: true
///   default:
///     type: gcp:certificateauthority:Authority
///     properties:
///       pool: ca-pool
///       certificateAuthorityId: my-certificate-authority-sub
///       location: us-central1
///       deletionProtection: true
///       subordinateConfig:
///         certificateAuthority: ${["root-ca"].name}
///       config:
///         subjectConfig:
///           subject:
///             organization: ACME
///             commonName: my-subordinate-authority
///         x509Config:
///           caOptions:
///             isCa: true
///             zeroMaxIssuerPathLength: true
///           keyUsage:
///             baseKeyUsage:
///               certSign: true
///               crlSign: true
///             extendedKeyUsage: {}
///       lifetime: 157680000s
///       keySpec:
///         algorithm: RSA_PKCS1_2048_SHA256
///       type: SUBORDINATE
/// ```
///
/// ### Privateca Certificate Authority Byo Key
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const privatecaSa = new gcp.projects.ServiceIdentity("privateca_sa", {service: "privateca.googleapis.com"});
/// const privatecaSaKeyuserSignerverifier = new gcp.kms.CryptoKeyIAMMember("privateca_sa_keyuser_signerverifier", {
///     cryptoKeyId: "projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key",
///     role: "roles/cloudkms.signerVerifier",
///     member: privatecaSa.member,
/// });
/// const privatecaSaKeyuserViewer = new gcp.kms.CryptoKeyIAMMember("privateca_sa_keyuser_viewer", {
///     cryptoKeyId: "projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key",
///     role: "roles/viewer",
///     member: privatecaSa.member,
/// });
/// const _default = new gcp.certificateauthority.Authority("default", {
///     pool: "ca-pool",
///     certificateAuthorityId: "my-certificate-authority",
///     location: "us-central1",
///     deletionProtection: true,
///     keySpec: {
///         cloudKmsKeyVersion: "projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key/cryptoKeyVersions/1",
///     },
///     config: {
///         subjectConfig: {
///             subject: {
///                 organization: "Example, Org.",
///                 commonName: "Example Authority",
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
///                 extendedKeyUsage: {},
///             },
///             nameConstraints: {
///                 critical: true,
///                 permittedDnsNames: ["*.example.com"],
///                 excludedDnsNames: ["*.deny.example.com"],
///                 permittedIpRanges: ["10.0.0.0/8"],
///                 excludedIpRanges: ["10.1.1.0/24"],
///                 permittedEmailAddresses: [".example.com"],
///                 excludedEmailAddresses: [".deny.example.com"],
///                 permittedUris: [".example.com"],
///                 excludedUris: [".deny.example.com"],
///             },
///         },
///     },
/// }, {
///     dependsOn: [
///         privatecaSaKeyuserSignerverifier,
///         privatecaSaKeyuserViewer,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// privateca_sa = gcp.projects.ServiceIdentity("privateca_sa", service="privateca.googleapis.com")
/// privateca_sa_keyuser_signerverifier = gcp.kms.CryptoKeyIAMMember("privateca_sa_keyuser_signerverifier",
///     crypto_key_id="projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key",
///     role="roles/cloudkms.signerVerifier",
///     member=privateca_sa.member)
/// privateca_sa_keyuser_viewer = gcp.kms.CryptoKeyIAMMember("privateca_sa_keyuser_viewer",
///     crypto_key_id="projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key",
///     role="roles/viewer",
///     member=privateca_sa.member)
/// default = gcp.certificateauthority.Authority("default",
///     pool="ca-pool",
///     certificate_authority_id="my-certificate-authority",
///     location="us-central1",
///     deletion_protection=True,
///     key_spec={
///         "cloud_kms_key_version": "projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key/cryptoKeyVersions/1",
///     },
///     config={
///         "subject_config": {
///             "subject": {
///                 "organization": "Example, Org.",
///                 "common_name": "Example Authority",
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
///                 "extended_key_usage": {},
///             },
///             "name_constraints": {
///                 "critical": True,
///                 "permitted_dns_names": ["*.example.com"],
///                 "excluded_dns_names": ["*.deny.example.com"],
///                 "permitted_ip_ranges": ["10.0.0.0/8"],
///                 "excluded_ip_ranges": ["10.1.1.0/24"],
///                 "permitted_email_addresses": [".example.com"],
///                 "excluded_email_addresses": [".deny.example.com"],
///                 "permitted_uris": [".example.com"],
///                 "excluded_uris": [".deny.example.com"],
///             },
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             privateca_sa_keyuser_signerverifier,
///             privateca_sa_keyuser_viewer,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privatecaSa = new Gcp.Projects.ServiceIdentity("privateca_sa", new()
///     {
///         Service = "privateca.googleapis.com",
///     });
///
///     var privatecaSaKeyuserSignerverifier = new Gcp.Kms.CryptoKeyIAMMember("privateca_sa_keyuser_signerverifier", new()
///     {
///         CryptoKeyId = "projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key",
///         Role = "roles/cloudkms.signerVerifier",
///         Member = privatecaSa.Member,
///     });
///
///     var privatecaSaKeyuserViewer = new Gcp.Kms.CryptoKeyIAMMember("privateca_sa_keyuser_viewer", new()
///     {
///         CryptoKeyId = "projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key",
///         Role = "roles/viewer",
///         Member = privatecaSa.Member,
///     });
///
///     var @default = new Gcp.CertificateAuthority.Authority("default", new()
///     {
///         Pool = "ca-pool",
///         CertificateAuthorityId = "my-certificate-authority",
///         Location = "us-central1",
///         DeletionProtection = true,
///         KeySpec = new Gcp.CertificateAuthority.Inputs.AuthorityKeySpecArgs
///         {
///             CloudKmsKeyVersion = "projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key/cryptoKeyVersions/1",
///         },
///         Config = new Gcp.CertificateAuthority.Inputs.AuthorityConfigArgs
///         {
///             SubjectConfig = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigArgs
///             {
///                 Subject = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigSubjectArgs
///                 {
///                     Organization = "Example, Org.",
///                     CommonName = "Example Authority",
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
///                     ExtendedKeyUsage = null,
///                 },
///                 NameConstraints = new Gcp.CertificateAuthority.Inputs.AuthorityConfigX509ConfigNameConstraintsArgs
///                 {
///                     Critical = true,
///                     PermittedDnsNames = new[]
///                     {
///                         "*.example.com",
///                     },
///                     ExcludedDnsNames = new[]
///                     {
///                         "*.deny.example.com",
///                     },
///                     PermittedIpRanges = new[]
///                     {
///                         "10.0.0.0/8",
///                     },
///                     ExcludedIpRanges = new[]
///                     {
///                         "10.1.1.0/24",
///                     },
///                     PermittedEmailAddresses = new[]
///                     {
///                         ".example.com",
///                     },
///                     ExcludedEmailAddresses = new[]
///                     {
///                         ".deny.example.com",
///                     },
///                     PermittedUris = new[]
///                     {
///                         ".example.com",
///                     },
///                     ExcludedUris = new[]
///                     {
///                         ".deny.example.com",
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             privatecaSaKeyuserSignerverifier,
///             privatecaSaKeyuserViewer,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		privatecaSa, err := projects.NewServiceIdentity(ctx, "privateca_sa", &projects.ServiceIdentityArgs{
/// 			Service: pulumi.String("privateca.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		privatecaSaKeyuserSignerverifier, err := kms.NewCryptoKeyIAMMember(ctx, "privateca_sa_keyuser_signerverifier", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key"),
/// 			Role:        pulumi.String("roles/cloudkms.signerVerifier"),
/// 			Member:      privatecaSa.Member,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		privatecaSaKeyuserViewer, err := kms.NewCryptoKeyIAMMember(ctx, "privateca_sa_keyuser_viewer", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key"),
/// 			Role:        pulumi.String("roles/viewer"),
/// 			Member:      privatecaSa.Member,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = certificateauthority.NewAuthority(ctx, "default", &certificateauthority.AuthorityArgs{
/// 			Pool:                   pulumi.String("ca-pool"),
/// 			CertificateAuthorityId: pulumi.String("my-certificate-authority"),
/// 			Location:               pulumi.String("us-central1"),
/// 			DeletionProtection:     pulumi.Bool(true),
/// 			KeySpec: &certificateauthority.AuthorityKeySpecArgs{
/// 				CloudKmsKeyVersion: pulumi.String("projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key/cryptoKeyVersions/1"),
/// 			},
/// 			Config: &certificateauthority.AuthorityConfigArgs{
/// 				SubjectConfig: &certificateauthority.AuthorityConfigSubjectConfigArgs{
/// 					Subject: &certificateauthority.AuthorityConfigSubjectConfigSubjectArgs{
/// 						Organization: pulumi.String("Example, Org."),
/// 						CommonName:   pulumi.String("Example Authority"),
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
/// 						ExtendedKeyUsage: &certificateauthority.AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs{},
/// 					},
/// 					NameConstraints: &certificateauthority.AuthorityConfigX509ConfigNameConstraintsArgs{
/// 						Critical: pulumi.Bool(true),
/// 						PermittedDnsNames: pulumi.StringArray{
/// 							pulumi.String("*.example.com"),
/// 						},
/// 						ExcludedDnsNames: pulumi.StringArray{
/// 							pulumi.String("*.deny.example.com"),
/// 						},
/// 						PermittedIpRanges: pulumi.StringArray{
/// 							pulumi.String("10.0.0.0/8"),
/// 						},
/// 						ExcludedIpRanges: pulumi.StringArray{
/// 							pulumi.String("10.1.1.0/24"),
/// 						},
/// 						PermittedEmailAddresses: pulumi.StringArray{
/// 							pulumi.String(".example.com"),
/// 						},
/// 						ExcludedEmailAddresses: pulumi.StringArray{
/// 							pulumi.String(".deny.example.com"),
/// 						},
/// 						PermittedUris: pulumi.StringArray{
/// 							pulumi.String(".example.com"),
/// 						},
/// 						ExcludedUris: pulumi.StringArray{
/// 							pulumi.String(".deny.example.com"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			privatecaSaKeyuserSignerverifier,
/// 			privatecaSaKeyuserViewer,
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
/// resource "gcp_projects_serviceidentity" "privateca_sa" {
///   service = "privateca.googleapis.com"
/// }
/// resource "gcp_kms_cryptokeyiammember" "privateca_sa_keyuser_signerverifier" {
///   crypto_key_id = "projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key"
///   role          = "roles/cloudkms.signerVerifier"
///   member        = gcp_projects_serviceidentity.privateca_sa.member
/// }
/// resource "gcp_kms_cryptokeyiammember" "privateca_sa_keyuser_viewer" {
///   crypto_key_id = "projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key"
///   role          = "roles/viewer"
///   member        = gcp_projects_serviceidentity.privateca_sa.member
/// }
/// resource "gcp_certificateauthority_authority" "default" {
///   depends_on               = [gcp_kms_cryptokeyiammember.privateca_sa_keyuser_signerverifier, gcp_kms_cryptokeyiammember.privateca_sa_keyuser_viewer]
///   pool                     = "ca-pool"
///   certificate_authority_id = "my-certificate-authority"
///   location                 = "us-central1"
///   deletion_protection      = true
///   key_spec = {
///     cloud_kms_key_version = "projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key/cryptoKeyVersions/1"
///   }
///   config = {
///     subject_config = {
///       subject = {
///         organization = "Example, Org."
///         common_name  = "Example Authority"
///       }
///     }
///     x509_config = {
///       ca_options = {
///         is_ca = true
///       }
///       key_usage = {
///         base_key_usage = {
///           cert_sign = true
///           crl_sign  = true
///         }
///         extended_key_usage = {}
///       }
///       name_constraints = {
///         critical                  = true
///         permitted_dns_names       = ["*.example.com"]
///         excluded_dns_names        = ["*.deny.example.com"]
///         permitted_ip_ranges       = ["10.0.0.0/8"]
///         excluded_ip_ranges        = ["10.1.1.0/24"]
///         permitted_email_addresses = [".example.com"]
///         excluded_email_addresses  = [".deny.example.com"]
///         permitted_uris            = [".example.com"]
///         excluded_uris             = [".deny.example.com"]
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.projects.ServiceIdentity;
/// import com.pulumi.gcp.projects.ServiceIdentityArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.certificateauthority.Authority;
/// import com.pulumi.gcp.certificateauthority.AuthorityArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityKeySpecArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigSubjectConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigSubjectConfigSubjectArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigCaOptionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageBaseKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigNameConstraintsArgs;
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
///         var privatecaSa = new ServiceIdentity("privatecaSa", ServiceIdentityArgs.builder()
///             .service("privateca.googleapis.com")
///             .build());
///
///         var privatecaSaKeyuserSignerverifier = new CryptoKeyIAMMember("privatecaSaKeyuserSignerverifier", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key")
///             .role("roles/cloudkms.signerVerifier")
///             .member(privatecaSa.member())
///             .build());
///
///         var privatecaSaKeyuserViewer = new CryptoKeyIAMMember("privatecaSaKeyuserViewer", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key")
///             .role("roles/viewer")
///             .member(privatecaSa.member())
///             .build());
///
///         var default_ = new Authority("default", AuthorityArgs.builder()
///             .pool("ca-pool")
///             .certificateAuthorityId("my-certificate-authority")
///             .location("us-central1")
///             .deletionProtection(true)
///             .keySpec(AuthorityKeySpecArgs.builder()
///                 .cloudKmsKeyVersion("projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key/cryptoKeyVersions/1")
///                 .build())
///             .config(AuthorityConfigArgs.builder()
///                 .subjectConfig(AuthorityConfigSubjectConfigArgs.builder()
///                     .subject(AuthorityConfigSubjectConfigSubjectArgs.builder()
///                         .organization("Example, Org.")
///                         .commonName("Example Authority")
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
///                             .build())
///                         .build())
///                     .nameConstraints(AuthorityConfigX509ConfigNameConstraintsArgs.builder()
///                         .critical(true)
///                         .permittedDnsNames("*.example.com")
///                         .excludedDnsNames("*.deny.example.com")
///                         .permittedIpRanges("10.0.0.0/8")
///                         .excludedIpRanges("10.1.1.0/24")
///                         .permittedEmailAddresses(".example.com")
///                         .excludedEmailAddresses(".deny.example.com")
///                         .permittedUris(".example.com")
///                         .excludedUris(".deny.example.com")
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     privatecaSaKeyuserSignerverifier,
///                     privatecaSaKeyuserViewer)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   privatecaSa:
///     type: gcp:projects:ServiceIdentity
///     name: privateca_sa
///     properties:
///       service: privateca.googleapis.com
///   privatecaSaKeyuserSignerverifier:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: privateca_sa_keyuser_signerverifier
///     properties:
///       cryptoKeyId: projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key
///       role: roles/cloudkms.signerVerifier
///       member: ${privatecaSa.member}
///   privatecaSaKeyuserViewer:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: privateca_sa_keyuser_viewer
///     properties:
///       cryptoKeyId: projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key
///       role: roles/viewer
///       member: ${privatecaSa.member}
///   default:
///     type: gcp:certificateauthority:Authority
///     properties:
///       pool: ca-pool
///       certificateAuthorityId: my-certificate-authority
///       location: us-central1
///       deletionProtection: true
///       keySpec:
///         cloudKmsKeyVersion: projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key/cryptoKeyVersions/1
///       config:
///         subjectConfig:
///           subject:
///             organization: Example, Org.
///             commonName: Example Authority
///         x509Config:
///           caOptions:
///             isCa: true
///           keyUsage:
///             baseKeyUsage:
///               certSign: true
///               crlSign: true
///             extendedKeyUsage: {}
///           nameConstraints:
///             critical: true
///             permittedDnsNames:
///               - '*.example.com'
///             excludedDnsNames:
///               - '*.deny.example.com'
///             permittedIpRanges:
///               - 10.0.0.0/8
///             excludedIpRanges:
///               - 10.1.1.0/24
///             permittedEmailAddresses:
///               - .example.com
///             excludedEmailAddresses:
///               - .deny.example.com
///             permittedUris:
///               - .example.com
///             excludedUris:
///               - .deny.example.com
///     options:
///       dependsOn:
///         - ${privatecaSaKeyuserSignerverifier}
///         - ${privatecaSaKeyuserViewer}
/// ```
///
/// ### Privateca Certificate Authority Custom Ski
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.certificateauthority.Authority("default", {
///     pool: "ca-pool",
///     certificateAuthorityId: "my-certificate-authority",
///     location: "us-central1",
///     deletionProtection: true,
///     config: {
///         subjectConfig: {
///             subject: {
///                 organization: "ACME",
///                 commonName: "my-certificate-authority",
///             },
///         },
///         subjectKeyId: {
///             keyId: "4cf3372289b1d411b999dbb9ebcd44744b6b2fca",
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
///                 extendedKeyUsage: {},
///             },
///         },
///     },
///     lifetime: `${10 * 365 * 24 * 3600}s`,
///     keySpec: {
///         cloudKmsKeyVersion: "projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key/cryptoKeyVersions/1",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificateauthority.Authority("default",
///     pool="ca-pool",
///     certificate_authority_id="my-certificate-authority",
///     location="us-central1",
///     deletion_protection=True,
///     config={
///         "subject_config": {
///             "subject": {
///                 "organization": "ACME",
///                 "common_name": "my-certificate-authority",
///             },
///         },
///         "subject_key_id": {
///             "key_id": "4cf3372289b1d411b999dbb9ebcd44744b6b2fca",
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
///                 "extended_key_usage": {},
///             },
///         },
///     },
///     lifetime=f"{10 * 365 * 24 * 3600}s",
///     key_spec={
///         "cloud_kms_key_version": "projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key/cryptoKeyVersions/1",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CertificateAuthority.Authority("default", new()
///     {
///         Pool = "ca-pool",
///         CertificateAuthorityId = "my-certificate-authority",
///         Location = "us-central1",
///         DeletionProtection = true,
///         Config = new Gcp.CertificateAuthority.Inputs.AuthorityConfigArgs
///         {
///             SubjectConfig = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigArgs
///             {
///                 Subject = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigSubjectArgs
///                 {
///                     Organization = "ACME",
///                     CommonName = "my-certificate-authority",
///                 },
///             },
///             SubjectKeyId = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectKeyIdArgs
///             {
///                 KeyId = "4cf3372289b1d411b999dbb9ebcd44744b6b2fca",
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
///                     ExtendedKeyUsage = null,
///                 },
///             },
///         },
///         Lifetime = $"{10 * 365 * 24 * 3600}s",
///         KeySpec = new Gcp.CertificateAuthority.Inputs.AuthorityKeySpecArgs
///         {
///             CloudKmsKeyVersion = "projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key/cryptoKeyVersions/1",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := certificateauthority.NewAuthority(ctx, "default", &certificateauthority.AuthorityArgs{
/// 			Pool:                   pulumi.String("ca-pool"),
/// 			CertificateAuthorityId: pulumi.String("my-certificate-authority"),
/// 			Location:               pulumi.String("us-central1"),
/// 			DeletionProtection:     pulumi.Bool(true),
/// 			Config: &certificateauthority.AuthorityConfigArgs{
/// 				SubjectConfig: &certificateauthority.AuthorityConfigSubjectConfigArgs{
/// 					Subject: &certificateauthority.AuthorityConfigSubjectConfigSubjectArgs{
/// 						Organization: pulumi.String("ACME"),
/// 						CommonName:   pulumi.String("my-certificate-authority"),
/// 					},
/// 				},
/// 				SubjectKeyId: &certificateauthority.AuthorityConfigSubjectKeyIdArgs{
/// 					KeyId: pulumi.String("4cf3372289b1d411b999dbb9ebcd44744b6b2fca"),
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
/// 						ExtendedKeyUsage: &certificateauthority.AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs{},
/// 					},
/// 				},
/// 			},
/// 			Lifetime: pulumi.Sprintf("%vs", 10*365*24*3600),
/// 			KeySpec: &certificateauthority.AuthorityKeySpecArgs{
/// 				CloudKmsKeyVersion: pulumi.String("projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key/cryptoKeyVersions/1"),
/// 			},
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
/// resource "gcp_certificateauthority_authority" "default" {
///   pool                     = "ca-pool"
///   certificate_authority_id = "my-certificate-authority"
///   location                 = "us-central1"
///   deletion_protection      = true
///   config = {
///     subject_config = {
///       subject = {
///         organization = "ACME"
///         common_name  = "my-certificate-authority"
///       }
///     }
///     subject_key_id = {
///       key_id = "4cf3372289b1d411b999dbb9ebcd44744b6b2fca"
///     }
///     x509_config = {
///       ca_options = {
///         is_ca = true
///       }
///       key_usage = {
///         base_key_usage = {
///           cert_sign = true
///           crl_sign  = true
///         }
///         extended_key_usage = {}
///       }
///     }
///   }
///   lifetime ="${10*365*24*3600}s"
///   key_spec = {
///     cloud_kms_key_version = "projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key/cryptoKeyVersions/1"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificateauthority.Authority;
/// import com.pulumi.gcp.certificateauthority.AuthorityArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigSubjectConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigSubjectConfigSubjectArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigSubjectKeyIdArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigCaOptionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageBaseKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityKeySpecArgs;
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
///         var default_ = new Authority("default", AuthorityArgs.builder()
///             .pool("ca-pool")
///             .certificateAuthorityId("my-certificate-authority")
///             .location("us-central1")
///             .deletionProtection(true)
///             .config(AuthorityConfigArgs.builder()
///                 .subjectConfig(AuthorityConfigSubjectConfigArgs.builder()
///                     .subject(AuthorityConfigSubjectConfigSubjectArgs.builder()
///                         .organization("ACME")
///                         .commonName("my-certificate-authority")
///                         .build())
///                     .build())
///                 .subjectKeyId(AuthorityConfigSubjectKeyIdArgs.builder()
///                     .keyId("4cf3372289b1d411b999dbb9ebcd44744b6b2fca")
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
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .lifetime(String.format("%ss", 10 * 365 * 24 * 3600))
///             .keySpec(AuthorityKeySpecArgs.builder()
///                 .cloudKmsKeyVersion("projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key/cryptoKeyVersions/1")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
///
/// ### Privateca Certificate Authority Basic With Custom Cdp Aia Urls
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.certificateauthority.Authority("default", {
///     pool: "ca-pool",
///     certificateAuthorityId: "my-certificate-authority",
///     location: "us-central1",
///     deletionProtection: true,
///     config: {
///         subjectConfig: {
///             subject: {
///                 organization: "ACME",
///                 commonName: "my-certificate-authority",
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
///                 extendedKeyUsage: {},
///             },
///         },
///     },
///     lifetime: `${10 * 365 * 24 * 3600}s`,
///     keySpec: {
///         algorithm: "RSA_PKCS1_4096_SHA256",
///     },
///     userDefinedAccessUrls: {
///         aiaIssuingCertificateUrls: [
///             "http://example.com/ca.crt",
///             "http://example.com/anotherca.crt",
///         ],
///         crlAccessUrls: [
///             "http://example.com/crl1.crt",
///             "http://example.com/crl2.crt",
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificateauthority.Authority("default",
///     pool="ca-pool",
///     certificate_authority_id="my-certificate-authority",
///     location="us-central1",
///     deletion_protection=True,
///     config={
///         "subject_config": {
///             "subject": {
///                 "organization": "ACME",
///                 "common_name": "my-certificate-authority",
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
///                 "extended_key_usage": {},
///             },
///         },
///     },
///     lifetime=f"{10 * 365 * 24 * 3600}s",
///     key_spec={
///         "algorithm": "RSA_PKCS1_4096_SHA256",
///     },
///     user_defined_access_urls={
///         "aia_issuing_certificate_urls": [
///             "http://example.com/ca.crt",
///             "http://example.com/anotherca.crt",
///         ],
///         "crl_access_urls": [
///             "http://example.com/crl1.crt",
///             "http://example.com/crl2.crt",
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CertificateAuthority.Authority("default", new()
///     {
///         Pool = "ca-pool",
///         CertificateAuthorityId = "my-certificate-authority",
///         Location = "us-central1",
///         DeletionProtection = true,
///         Config = new Gcp.CertificateAuthority.Inputs.AuthorityConfigArgs
///         {
///             SubjectConfig = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigArgs
///             {
///                 Subject = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigSubjectArgs
///                 {
///                     Organization = "ACME",
///                     CommonName = "my-certificate-authority",
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
///                     ExtendedKeyUsage = null,
///                 },
///             },
///         },
///         Lifetime = $"{10 * 365 * 24 * 3600}s",
///         KeySpec = new Gcp.CertificateAuthority.Inputs.AuthorityKeySpecArgs
///         {
///             Algorithm = "RSA_PKCS1_4096_SHA256",
///         },
///         UserDefinedAccessUrls = new Gcp.CertificateAuthority.Inputs.AuthorityUserDefinedAccessUrlsArgs
///         {
///             AiaIssuingCertificateUrls = new[]
///             {
///                 "http://example.com/ca.crt",
///                 "http://example.com/anotherca.crt",
///             },
///             CrlAccessUrls = new[]
///             {
///                 "http://example.com/crl1.crt",
///                 "http://example.com/crl2.crt",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := certificateauthority.NewAuthority(ctx, "default", &certificateauthority.AuthorityArgs{
/// 			Pool:                   pulumi.String("ca-pool"),
/// 			CertificateAuthorityId: pulumi.String("my-certificate-authority"),
/// 			Location:               pulumi.String("us-central1"),
/// 			DeletionProtection:     pulumi.Bool(true),
/// 			Config: &certificateauthority.AuthorityConfigArgs{
/// 				SubjectConfig: &certificateauthority.AuthorityConfigSubjectConfigArgs{
/// 					Subject: &certificateauthority.AuthorityConfigSubjectConfigSubjectArgs{
/// 						Organization: pulumi.String("ACME"),
/// 						CommonName:   pulumi.String("my-certificate-authority"),
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
/// 						ExtendedKeyUsage: &certificateauthority.AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs{},
/// 					},
/// 				},
/// 			},
/// 			Lifetime: pulumi.Sprintf("%vs", 10*365*24*3600),
/// 			KeySpec: &certificateauthority.AuthorityKeySpecArgs{
/// 				Algorithm: pulumi.String("RSA_PKCS1_4096_SHA256"),
/// 			},
/// 			UserDefinedAccessUrls: &certificateauthority.AuthorityUserDefinedAccessUrlsArgs{
/// 				AiaIssuingCertificateUrls: pulumi.StringArray{
/// 					pulumi.String("http://example.com/ca.crt"),
/// 					pulumi.String("http://example.com/anotherca.crt"),
/// 				},
/// 				CrlAccessUrls: pulumi.StringArray{
/// 					pulumi.String("http://example.com/crl1.crt"),
/// 					pulumi.String("http://example.com/crl2.crt"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_certificateauthority_authority" "default" {
///   pool                     = "ca-pool"
///   certificate_authority_id = "my-certificate-authority"
///   location                 = "us-central1"
///   deletion_protection      = true
///   config = {
///     subject_config = {
///       subject = {
///         organization = "ACME"
///         common_name  = "my-certificate-authority"
///       }
///     }
///     x509_config = {
///       ca_options = {
///         is_ca = true
///       }
///       key_usage = {
///         base_key_usage = {
///           cert_sign = true
///           crl_sign  = true
///         }
///         extended_key_usage = {}
///       }
///     }
///   }
///   # is_ca *MUST* be true for certificate authorities
///   # cert_sign and crl_sign *MUST* be true for certificate authorities
///   lifetime ="${10*365*24*3600}s"
///   key_spec = {
///     algorithm = "RSA_PKCS1_4096_SHA256"
///   }
///   user_defined_access_urls = {
///     aia_issuing_certificate_urls = ["http://example.com/ca.crt", "http://example.com/anotherca.crt"]
///     crl_access_urls              = ["http://example.com/crl1.crt", "http://example.com/crl2.crt"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificateauthority.Authority;
/// import com.pulumi.gcp.certificateauthority.AuthorityArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigSubjectConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigSubjectConfigSubjectArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigCaOptionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageBaseKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityKeySpecArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityUserDefinedAccessUrlsArgs;
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
///         var default_ = new Authority("default", AuthorityArgs.builder()
///             .pool("ca-pool")
///             .certificateAuthorityId("my-certificate-authority")
///             .location("us-central1")
///             .deletionProtection(true)
///             .config(AuthorityConfigArgs.builder()
///                 .subjectConfig(AuthorityConfigSubjectConfigArgs.builder()
///                     .subject(AuthorityConfigSubjectConfigSubjectArgs.builder()
///                         .organization("ACME")
///                         .commonName("my-certificate-authority")
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
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .lifetime(String.format("%ss", 10 * 365 * 24 * 3600))
///             .keySpec(AuthorityKeySpecArgs.builder()
///                 .algorithm("RSA_PKCS1_4096_SHA256")
///                 .build())
///             .userDefinedAccessUrls(AuthorityUserDefinedAccessUrlsArgs.builder()
///                 .aiaIssuingCertificateUrls(
///                     "http://example.com/ca.crt",
///                     "http://example.com/anotherca.crt")
///                 .crlAccessUrls(
///                     "http://example.com/crl1.crt",
///                     "http://example.com/crl2.crt")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// CertificateAuthority can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/caPools/{{pool}}/certificateAuthorities/{{certificate_authority_id}}`
/// * `{{project}}/{{location}}/{{pool}}/{{certificate_authority_id}}`
/// * `{{location}}/{{pool}}/{{certificate_authority_id}}`
///
///
/// When using the `pulumi import` command, CertificateAuthority can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/authority:Authority default projects/{{project}}/locations/{{location}}/caPools/{{pool}}/certificateAuthorities/{{certificate_authority_id}}
/// $ pulumi import gcp:certificateauthority/authority:Authority default {{project}}/{{location}}/{{pool}}/{{certificate_authority_id}}
/// $ pulumi import gcp:certificateauthority/authority:Authority default {{location}}/{{pool}}/{{certificate_authority_id}}
/// ```
class Authority extends pulumi.CustomResource {
  /// URLs for accessing content published by this CA, such as the CA certificate and CRLs.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> accessUrls;
  /// The user provided Resource ID for this Certificate Authority.
  late final pulumi.Output<String> certificateAuthorityId;
  /// The config used to create a self-signed X.509 certificate or CSR.
  /// Structure is documented below.
  late final pulumi.Output<AuthorityConfig> config;
  /// The time at which this CertificateAuthority was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Whether Terraform will be prevented from destroying the CertificateAuthority.
  /// When the field is set to true or unset in Terraform state, a `pulumi up`
  /// or `terraform destroy` that would delete the CertificateAuthority will fail.
  /// When the field is set to false, deleting the CertificateAuthority is allowed.
  late final pulumi.Output<bool?> deletionProtection;
  /// Desired state of the CertificateAuthority. Set this field to `STAGED` to create a `STAGED` root CA.
  /// Possible values: ENABLED, DISABLED, STAGED.
  late final pulumi.Output<String?> desiredState;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The name of a Cloud Storage bucket where this CertificateAuthority will publish content,
  /// such as the CA certificate and CRLs. This must be a bucket name, without any prefixes
  /// (such as `gs://`) or suffixes (such as `.googleapis.com`). For example, to use a bucket named
  /// my-bucket, you would simply specify `my-bucket`. If not specified, a managed bucket will be
  /// created.
  late final pulumi.Output<String?> gcsBucket;
  /// This field allows the CA to be deleted even if the CA has active certs. Active certs include both unrevoked and unexpired certs.
  /// Use with care. Defaults to `false`.
  late final pulumi.Output<bool?> ignoreActiveCertificatesOnDeletion;
  /// Used when issuing certificates for this CertificateAuthority. If this CertificateAuthority
  /// is a self-signed CertificateAuthority, this key is also used to sign the self-signed CA
  /// certificate. Otherwise, it is used to sign a CSR.
  /// Structure is documented below.
  late final pulumi.Output<AuthorityKeySpec> keySpec;
  /// Labels with user-defined metadata.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass":
  /// "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The desired lifetime of the CA certificate. Used to create the "notBeforeTime" and
  /// "notAfterTime" fields inside an X.509 certificate. A duration in seconds with up to nine
  /// fractional digits, terminated by 's'. Example: "3.5s".
  late final pulumi.Output<String?> lifetime;
  /// Location of the CertificateAuthority. A full list of valid locations can be found by
  /// running `gcloud privateca locations list`.
  late final pulumi.Output<String> location;
  /// The resource name for this CertificateAuthority in the format
  /// projects/*/locations/*/certificateAuthorities/*.
  late final pulumi.Output<String> name;
  /// The signed CA certificate issued from the subordinated CA's CSR. This is needed when activating the subordiante CA with a third party issuer.
  late final pulumi.Output<String?> pemCaCertificate;
  /// This CertificateAuthority's certificate chain, including the current
  /// CertificateAuthority's certificate. Ordered such that the root issuer is the final
  /// element (consistent with RFC 5246). For a self-signed CA, this will only list the current
  /// CertificateAuthority's certificate.
  late final pulumi.Output<List<String>> pemCaCertificates;
  /// The name of the CaPool this Certificate Authority belongs to.
  late final pulumi.Output<String> pool;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// If this flag is set, the Certificate Authority will be deleted as soon as
  /// possible without a 30-day grace period where undeletion would have been
  /// allowed. If you proceed, there will be no way to recover this CA.
  /// Use with care. Defaults to `false`.
  late final pulumi.Output<bool?> skipGracePeriod;
  /// The State for this CertificateAuthority.
  late final pulumi.Output<String> state;
  /// If this is a subordinate CertificateAuthority, this field will be set
  /// with the subordinate configuration, which describes its issuers.
  /// Structure is documented below.
  late final pulumi.Output<AuthoritySubordinateConfig?> subordinateConfig;
  /// The Type of this CertificateAuthority.
  /// &gt; **Note:** For `SUBORDINATE` Certificate Authorities, they need to
  /// be activated before they can issue certificates.
  /// Default value is `SELF_SIGNED`.
  /// Possible values are: `SELF_SIGNED`, `SUBORDINATE`.
  late final pulumi.Output<String?> type;
  /// The time at which this CertificateAuthority was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;
  /// Custom URLs for accessing content published by this CA, such as the CA certificate and CRLs,
  /// that can be specified by users.
  /// Structure is documented below.
  late final pulumi.Output<AuthorityUserDefinedAccessUrls?> userDefinedAccessUrls;

  /// Creates a new [Authority].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Authority]. {@macro pulumi_certificateauthority_authority_authority_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Authority(
    String name, {
    AuthorityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:certificateauthority/authority:Authority',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessUrls = registerOutput<List<Map<String, dynamic>>>('accessUrls');
    certificateAuthorityId = registerOutput<String>('certificateAuthorityId');
    config = registerOutput<AuthorityConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthorityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    desiredState = registerOutput<String?>('desiredState');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    gcsBucket = registerOutput<String?>('gcsBucket');
    ignoreActiveCertificatesOnDeletion = registerOutput<bool?>('ignoreActiveCertificatesOnDeletion');
    keySpec = registerOutput<AuthorityKeySpec>('keySpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthorityKeySpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels');
    lifetime = registerOutput<String?>('lifetime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    pemCaCertificate = registerOutput<String?>('pemCaCertificate');
    pemCaCertificates = registerOutput<List<String>>('pemCaCertificates');
    pool = registerOutput<String>('pool');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    skipGracePeriod = registerOutput<bool?>('skipGracePeriod');
    state = registerOutput<String>('state');
    subordinateConfig = registerOutput<AuthoritySubordinateConfig?>('subordinateConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthoritySubordinateConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
    userDefinedAccessUrls = registerOutput<AuthorityUserDefinedAccessUrls?>('userDefinedAccessUrls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthorityUserDefinedAccessUrls.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Authority] resource's state with the given [name] and [id].
  static Authority get(
    String name,
    pulumi.Input<String> id, {
    AuthorityState? state,
  }) {
    return Authority._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Authority._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:certificateauthority/authority:Authority',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessUrls = registerOutput<List<Map<String, dynamic>>>('accessUrls');
    certificateAuthorityId = registerOutput<String>('certificateAuthorityId');
    config = registerOutput<AuthorityConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthorityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    desiredState = registerOutput<String?>('desiredState');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    gcsBucket = registerOutput<String?>('gcsBucket');
    ignoreActiveCertificatesOnDeletion = registerOutput<bool?>('ignoreActiveCertificatesOnDeletion');
    keySpec = registerOutput<AuthorityKeySpec>('keySpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthorityKeySpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels');
    lifetime = registerOutput<String?>('lifetime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    pemCaCertificate = registerOutput<String?>('pemCaCertificate');
    pemCaCertificates = registerOutput<List<String>>('pemCaCertificates');
    pool = registerOutput<String>('pool');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    skipGracePeriod = registerOutput<bool?>('skipGracePeriod');
    this.state = registerOutput<String>('state');
    subordinateConfig = registerOutput<AuthoritySubordinateConfig?>('subordinateConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthoritySubordinateConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
    userDefinedAccessUrls = registerOutput<AuthorityUserDefinedAccessUrls?>('userDefinedAccessUrls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthorityUserDefinedAccessUrls.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
