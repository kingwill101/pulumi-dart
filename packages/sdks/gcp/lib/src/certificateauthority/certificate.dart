import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';
import 'certificate_config.dart';
import 'certificate_state.dart';

/// A Certificate corresponds to a signed X.509 certificate issued by a Certificate.
///
///
/// &gt; **Note:** The Certificate Authority that is referenced by this resource **must** be
/// `tier = "ENTERPRISE"`
///
///
///
/// ## Example Usage
///
/// ### Privateca Certificate Generated Key
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
/// import * as tls from "@pulumi/tls";
///
/// const _default = new gcp.certificateauthority.CaPool("default", {
///     location: "us-central1",
///     name: "default",
///     tier: "ENTERPRISE",
/// });
/// const defaultAuthority = new gcp.certificateauthority.Authority("default", {
///     location: "us-central1",
///     pool: _default.name,
///     certificateAuthorityId: "my-authority",
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
/// const certKey = new tls.PrivateKey("cert_key", {algorithm: "RSA"});
/// const defaultCertificate = new gcp.certificateauthority.Certificate("default", {
///     location: "us-central1",
///     pool: _default.name,
///     certificateAuthority: defaultAuthority.certificateAuthorityId,
///     lifetime: "86000s",
///     name: "cert-1",
///     config: {
///         subjectConfig: {
///             subject: {
///                 commonName: "san1.example.com",
///                 countryCode: "us",
///                 organization: "google",
///                 organizationalUnit: "enterprise",
///                 locality: "mountain view",
///                 province: "california",
///                 streetAddress: "1600 amphitheatre parkway",
///             },
///             subjectAltName: {
///                 emailAddresses: ["email@example.com"],
///                 ipAddresses: ["127.0.0.1"],
///                 uris: ["http://www.ietf.org/rfc/rfc3986.txt"],
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
///                     serverAuth: false,
///                 },
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
///         publicKey: {
///             format: "PEM",
///             key: std.base64encodeOutput({
///                 input: certKey.publicKeyPem,
///             }).apply(invoke => invoke.result),
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
/// import pulumi_tls as tls
///
/// default = gcp.certificateauthority.CaPool("default",
///     location="us-central1",
///     name="default",
///     tier="ENTERPRISE")
/// default_authority = gcp.certificateauthority.Authority("default",
///     location="us-central1",
///     pool=default.name,
///     certificate_authority_id="my-authority",
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
/// cert_key = tls.PrivateKey("cert_key", algorithm="RSA")
/// default_certificate = gcp.certificateauthority.Certificate("default",
///     location="us-central1",
///     pool=default.name,
///     certificate_authority=default_authority.certificate_authority_id,
///     lifetime="86000s",
///     name="cert-1",
///     config={
///         "subject_config": {
///             "subject": {
///                 "common_name": "san1.example.com",
///                 "country_code": "us",
///                 "organization": "google",
///                 "organizational_unit": "enterprise",
///                 "locality": "mountain view",
///                 "province": "california",
///                 "street_address": "1600 amphitheatre parkway",
///             },
///             "subject_alt_name": {
///                 "email_addresses": ["email@example.com"],
///                 "ip_addresses": ["127.0.0.1"],
///                 "uris": ["http://www.ietf.org/rfc/rfc3986.txt"],
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
///                     "server_auth": False,
///                 },
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
///         "public_key": {
///             "format": "PEM",
///             "key": std.base64encode_output(input=cert_key.public_key_pem).apply(lambda invoke: invoke.result),
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
/// using Tls = Pulumi.Tls;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CertificateAuthority.CaPool("default", new()
///     {
///         Location = "us-central1",
///         Name = "default",
///         Tier = "ENTERPRISE",
///     });
///
///     var defaultAuthority = new Gcp.CertificateAuthority.Authority("default", new()
///     {
///         Location = "us-central1",
///         Pool = @default.Name,
///         CertificateAuthorityId = "my-authority",
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
///     var certKey = new Tls.PrivateKey("cert_key", new()
///     {
///         Algorithm = "RSA",
///     });
///
///     var defaultCertificate = new Gcp.CertificateAuthority.Certificate("default", new()
///     {
///         Location = "us-central1",
///         Pool = @default.Name,
///         CertificateAuthority = defaultAuthority.CertificateAuthorityId,
///         Lifetime = "86000s",
///         Name = "cert-1",
///         Config = new Gcp.CertificateAuthority.Inputs.CertificateConfigArgs
///         {
///             SubjectConfig = new Gcp.CertificateAuthority.Inputs.CertificateConfigSubjectConfigArgs
///             {
///                 Subject = new Gcp.CertificateAuthority.Inputs.CertificateConfigSubjectConfigSubjectArgs
///                 {
///                     CommonName = "san1.example.com",
///                     CountryCode = "us",
///                     Organization = "google",
///                     OrganizationalUnit = "enterprise",
///                     Locality = "mountain view",
///                     Province = "california",
///                     StreetAddress = "1600 amphitheatre parkway",
///                 },
///                 SubjectAltName = new Gcp.CertificateAuthority.Inputs.CertificateConfigSubjectConfigSubjectAltNameArgs
///                 {
///                     EmailAddresses = new[]
///                     {
///                         "email@example.com",
///                     },
///                     IpAddresses = new[]
///                     {
///                         "127.0.0.1",
///                     },
///                     Uris = new[]
///                     {
///                         "http://www.ietf.org/rfc/rfc3986.txt",
///                     },
///                 },
///             },
///             X509Config = new Gcp.CertificateAuthority.Inputs.CertificateConfigX509ConfigArgs
///             {
///                 CaOptions = new Gcp.CertificateAuthority.Inputs.CertificateConfigX509ConfigCaOptionsArgs
///                 {
///                     IsCa = true,
///                 },
///                 KeyUsage = new Gcp.CertificateAuthority.Inputs.CertificateConfigX509ConfigKeyUsageArgs
///                 {
///                     BaseKeyUsage = new Gcp.CertificateAuthority.Inputs.CertificateConfigX509ConfigKeyUsageBaseKeyUsageArgs
///                     {
///                         CertSign = true,
///                         CrlSign = true,
///                     },
///                     ExtendedKeyUsage = new Gcp.CertificateAuthority.Inputs.CertificateConfigX509ConfigKeyUsageExtendedKeyUsageArgs
///                     {
///                         ServerAuth = false,
///                     },
///                 },
///                 NameConstraints = new Gcp.CertificateAuthority.Inputs.CertificateConfigX509ConfigNameConstraintsArgs
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
///             PublicKey = new Gcp.CertificateAuthority.Inputs.CertificateConfigPublicKeyArgs
///             {
///                 Format = "PEM",
///                 Key = Std.Base64encode.Invoke(new()
///                 {
///                     Input = certKey.PublicKeyPem,
///                 }).Apply(invoke => invoke.Result),
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
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi-tls/sdk/v5/go/tls"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := certificateauthority.NewCaPool(ctx, "default", &certificateauthority.CaPoolArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Name:     pulumi.String("default"),
/// 			Tier:     pulumi.String("ENTERPRISE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAuthority, err := certificateauthority.NewAuthority(ctx, "default", &certificateauthority.AuthorityArgs{
/// 			Location:               pulumi.String("us-central1"),
/// 			Pool:                   _default.Name,
/// 			CertificateAuthorityId: pulumi.String("my-authority"),
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
/// 		certKey, err := tls.NewPrivateKey(ctx, "cert_key", &tls.PrivateKeyArgs{
/// 			Algorithm: pulumi.String("RSA"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = certificateauthority.NewCertificate(ctx, "default", &certificateauthority.CertificateArgs{
/// 			Location:             pulumi.String("us-central1"),
/// 			Pool:                 _default.Name,
/// 			CertificateAuthority: defaultAuthority.CertificateAuthorityId,
/// 			Lifetime:             pulumi.String("86000s"),
/// 			Name:                 pulumi.String("cert-1"),
/// 			Config: &certificateauthority.CertificateConfigArgs{
/// 				SubjectConfig: &certificateauthority.CertificateConfigSubjectConfigArgs{
/// 					Subject: &certificateauthority.CertificateConfigSubjectConfigSubjectArgs{
/// 						CommonName:         pulumi.String("san1.example.com"),
/// 						CountryCode:        pulumi.String("us"),
/// 						Organization:       pulumi.String("google"),
/// 						OrganizationalUnit: pulumi.String("enterprise"),
/// 						Locality:           pulumi.String("mountain view"),
/// 						Province:           pulumi.String("california"),
/// 						StreetAddress:      pulumi.String("1600 amphitheatre parkway"),
/// 					},
/// 					SubjectAltName: &certificateauthority.CertificateConfigSubjectConfigSubjectAltNameArgs{
/// 						EmailAddresses: pulumi.StringArray{
/// 							pulumi.String("email@example.com"),
/// 						},
/// 						IpAddresses: pulumi.StringArray{
/// 							pulumi.String("127.0.0.1"),
/// 						},
/// 						Uris: pulumi.StringArray{
/// 							pulumi.String("http://www.ietf.org/rfc/rfc3986.txt"),
/// 						},
/// 					},
/// 				},
/// 				X509Config: &certificateauthority.CertificateConfigX509ConfigArgs{
/// 					CaOptions: &certificateauthority.CertificateConfigX509ConfigCaOptionsArgs{
/// 						IsCa: pulumi.Bool(true),
/// 					},
/// 					KeyUsage: &certificateauthority.CertificateConfigX509ConfigKeyUsageArgs{
/// 						BaseKeyUsage: &certificateauthority.CertificateConfigX509ConfigKeyUsageBaseKeyUsageArgs{
/// 							CertSign: pulumi.Bool(true),
/// 							CrlSign:  pulumi.Bool(true),
/// 						},
/// 						ExtendedKeyUsage: &certificateauthority.CertificateConfigX509ConfigKeyUsageExtendedKeyUsageArgs{
/// 							ServerAuth: pulumi.Bool(false),
/// 						},
/// 					},
/// 					NameConstraints: &certificateauthority.CertificateConfigX509ConfigNameConstraintsArgs{
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
/// 				PublicKey: &certificateauthority.CertificateConfigPublicKeyArgs{
/// 					Format: pulumi.String("PEM"),
/// 					Key: std.Base64encodeOutput(ctx, std.Base64encodeOutputArgs{
/// 						Input: certKey.PublicKeyPem,
/// 					}, nil).ApplyT(func(invoke std.Base64encodeResult) (*string, error) {
/// 						return invoke.Result, nil
/// 					}).(pulumi.StringPtrOutput),
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
/// import com.pulumi.tls.PrivateKey;
/// import com.pulumi.tls.PrivateKeyArgs;
/// import com.pulumi.gcp.certificateauthority.Certificate;
/// import com.pulumi.gcp.certificateauthority.CertificateArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigSubjectConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigSubjectConfigSubjectArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigSubjectConfigSubjectAltNameArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigX509ConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigX509ConfigCaOptionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigX509ConfigKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigX509ConfigKeyUsageBaseKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigX509ConfigKeyUsageExtendedKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigX509ConfigNameConstraintsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigPublicKeyArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
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
///         var default_ = new CaPool("default", CaPoolArgs.builder()
///             .location("us-central1")
///             .name("default")
///             .tier("ENTERPRISE")
///             .build());
///
///         var defaultAuthority = new Authority("defaultAuthority", AuthorityArgs.builder()
///             .location("us-central1")
///             .pool(default_.name())
///             .certificateAuthorityId("my-authority")
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
///         var certKey = new PrivateKey("certKey", PrivateKeyArgs.builder()
///             .algorithm("RSA")
///             .build());
///
///         var defaultCertificate = new Certificate("defaultCertificate", CertificateArgs.builder()
///             .location("us-central1")
///             .pool(default_.name())
///             .certificateAuthority(defaultAuthority.certificateAuthorityId())
///             .lifetime("86000s")
///             .name("cert-1")
///             .config(CertificateConfigArgs.builder()
///                 .subjectConfig(CertificateConfigSubjectConfigArgs.builder()
///                     .subject(CertificateConfigSubjectConfigSubjectArgs.builder()
///                         .commonName("san1.example.com")
///                         .countryCode("us")
///                         .organization("google")
///                         .organizationalUnit("enterprise")
///                         .locality("mountain view")
///                         .province("california")
///                         .streetAddress("1600 amphitheatre parkway")
///                         .build())
///                     .subjectAltName(CertificateConfigSubjectConfigSubjectAltNameArgs.builder()
///                         .emailAddresses("email@example.com")
///                         .ipAddresses("127.0.0.1")
///                         .uris("http://www.ietf.org/rfc/rfc3986.txt")
///                         .build())
///                     .build())
///                 .x509Config(CertificateConfigX509ConfigArgs.builder()
///                     .caOptions(CertificateConfigX509ConfigCaOptionsArgs.builder()
///                         .isCa(true)
///                         .build())
///                     .keyUsage(CertificateConfigX509ConfigKeyUsageArgs.builder()
///                         .baseKeyUsage(CertificateConfigX509ConfigKeyUsageBaseKeyUsageArgs.builder()
///                             .certSign(true)
///                             .crlSign(true)
///                             .build())
///                         .extendedKeyUsage(CertificateConfigX509ConfigKeyUsageExtendedKeyUsageArgs.builder()
///                             .serverAuth(false)
///                             .build())
///                         .build())
///                     .nameConstraints(CertificateConfigX509ConfigNameConstraintsArgs.builder()
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
///                 .publicKey(CertificateConfigPublicKeyArgs.builder()
///                     .format("PEM")
///                     .key(StdFunctions.base64encode(Base64encodeArgs.builder()
///                         .input(certKey.publicKeyPem())
///                         .build()).applyValue(_invoke -> _invoke.result()))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificateauthority:CaPool
///     properties:
///       location: us-central1
///       name: default
///       tier: ENTERPRISE
///   defaultAuthority:
///     type: gcp:certificateauthority:Authority
///     name: default
///     properties:
///       location: us-central1
///       pool: ${default.name}
///       certificateAuthorityId: my-authority
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
///   certKey:
///     type: tls:PrivateKey
///     name: cert_key
///     properties:
///       algorithm: RSA
///   defaultCertificate:
///     type: gcp:certificateauthority:Certificate
///     name: default
///     properties:
///       location: us-central1
///       pool: ${default.name}
///       certificateAuthority: ${defaultAuthority.certificateAuthorityId}
///       lifetime: 86000s
///       name: cert-1
///       config:
///         subjectConfig:
///           subject:
///             commonName: san1.example.com
///             countryCode: us
///             organization: google
///             organizationalUnit: enterprise
///             locality: mountain view
///             province: california
///             streetAddress: 1600 amphitheatre parkway
///           subjectAltName:
///             emailAddresses:
///               - email@example.com
///             ipAddresses:
///               - 127.0.0.1
///             uris:
///               - http://www.ietf.org/rfc/rfc3986.txt
///         x509Config:
///           caOptions:
///             isCa: true
///           keyUsage:
///             baseKeyUsage:
///               certSign: true
///               crlSign: true
///             extendedKeyUsage:
///               serverAuth: false
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
///         publicKey:
///           format: PEM
///           key:
///             fn::invoke:
///               function: std:base64encode
///               arguments:
///                 input: ${certKey.publicKeyPem}
///               return: result
/// ```
///
/// ### Privateca Certificate With Template
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const _default = new gcp.certificateauthority.CaPool("default", {
///     location: "us-central1",
///     name: "my-pool",
///     tier: "ENTERPRISE",
/// });
/// const defaultCertificateTemplate = new gcp.certificateauthority.CertificateTemplate("default", {
///     location: "us-central1",
///     name: "my-certificate-template",
///     description: "An updated sample certificate template",
///     identityConstraints: {
///         allowSubjectAltNamesPassthrough: true,
///         allowSubjectPassthrough: true,
///         celExpression: {
///             description: "Always true",
///             expression: "true",
///             location: "any.file.anywhere",
///             title: "Sample expression",
///         },
///     },
///     passthroughExtensions: {
///         additionalExtensions: [{
///             objectIdPaths: [
///                 1,
///                 6,
///             ],
///         }],
///         knownExtensions: ["EXTENDED_KEY_USAGE"],
///     },
///     predefinedValues: {
///         additionalExtensions: [{
///             objectId: {
///                 objectIdPaths: [
///                     1,
///                     6,
///                 ],
///             },
///             value: "c3RyaW5nCg==",
///             critical: true,
///         }],
///         aiaOcspServers: ["string"],
///         caOptions: {
///             isCa: false,
///             maxIssuerPathLength: 6,
///         },
///         keyUsage: {
///             baseKeyUsage: {
///                 certSign: false,
///                 contentCommitment: true,
///                 crlSign: false,
///                 dataEncipherment: true,
///                 decipherOnly: true,
///                 digitalSignature: true,
///                 encipherOnly: true,
///                 keyAgreement: true,
///                 keyEncipherment: true,
///             },
///             extendedKeyUsage: {
///                 clientAuth: true,
///                 codeSigning: true,
///                 emailProtection: true,
///                 ocspSigning: true,
///                 serverAuth: true,
///                 timeStamping: true,
///             },
///             unknownExtendedKeyUsages: [{
///                 objectIdPaths: [
///                     1,
///                     6,
///                 ],
///             }],
///         },
///         policyIds: [{
///             objectIdPaths: [
///                 1,
///                 6,
///             ],
///         }],
///     },
/// });
/// const defaultAuthority = new gcp.certificateauthority.Authority("default", {
///     location: "us-central1",
///     pool: _default.name,
///     certificateAuthorityId: "my-authority",
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
///                     serverAuth: false,
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
/// const defaultCertificate = new gcp.certificateauthority.Certificate("default", {
///     location: "us-central1",
///     pool: _default.name,
///     certificateAuthority: defaultAuthority.certificateAuthorityId,
///     name: "my-certificate",
///     lifetime: "860s",
///     pemCsr: std.file({
///         input: "test-fixtures/rsa_csr.pem",
///     }).then(invoke => invoke.result),
///     certificateTemplate: defaultCertificateTemplate.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default = gcp.certificateauthority.CaPool("default",
///     location="us-central1",
///     name="my-pool",
///     tier="ENTERPRISE")
/// default_certificate_template = gcp.certificateauthority.CertificateTemplate("default",
///     location="us-central1",
///     name="my-certificate-template",
///     description="An updated sample certificate template",
///     identity_constraints={
///         "allow_subject_alt_names_passthrough": True,
///         "allow_subject_passthrough": True,
///         "cel_expression": {
///             "description": "Always true",
///             "expression": "true",
///             "location": "any.file.anywhere",
///             "title": "Sample expression",
///         },
///     },
///     passthrough_extensions={
///         "additional_extensions": [{
///             "object_id_paths": [
///                 1,
///                 6,
///             ],
///         }],
///         "known_extensions": ["EXTENDED_KEY_USAGE"],
///     },
///     predefined_values={
///         "additional_extensions": [{
///             "object_id": {
///                 "object_id_paths": [
///                     1,
///                     6,
///                 ],
///             },
///             "value": "c3RyaW5nCg==",
///             "critical": True,
///         }],
///         "aia_ocsp_servers": ["string"],
///         "ca_options": {
///             "is_ca": False,
///             "max_issuer_path_length": 6,
///         },
///         "key_usage": {
///             "base_key_usage": {
///                 "cert_sign": False,
///                 "content_commitment": True,
///                 "crl_sign": False,
///                 "data_encipherment": True,
///                 "decipher_only": True,
///                 "digital_signature": True,
///                 "encipher_only": True,
///                 "key_agreement": True,
///                 "key_encipherment": True,
///             },
///             "extended_key_usage": {
///                 "client_auth": True,
///                 "code_signing": True,
///                 "email_protection": True,
///                 "ocsp_signing": True,
///                 "server_auth": True,
///                 "time_stamping": True,
///             },
///             "unknown_extended_key_usages": [{
///                 "object_id_paths": [
///                     1,
///                     6,
///                 ],
///             }],
///         },
///         "policy_ids": [{
///             "object_id_paths": [
///                 1,
///                 6,
///             ],
///         }],
///     })
/// default_authority = gcp.certificateauthority.Authority("default",
///     location="us-central1",
///     pool=default.name,
///     certificate_authority_id="my-authority",
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
///                     "server_auth": False,
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
/// default_certificate = gcp.certificateauthority.Certificate("default",
///     location="us-central1",
///     pool=default.name,
///     certificate_authority=default_authority.certificate_authority_id,
///     name="my-certificate",
///     lifetime="860s",
///     pem_csr=std.file(input="test-fixtures/rsa_csr.pem").result,
///     certificate_template=default_certificate_template.id)
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
///     var @default = new Gcp.CertificateAuthority.CaPool("default", new()
///     {
///         Location = "us-central1",
///         Name = "my-pool",
///         Tier = "ENTERPRISE",
///     });
///
///     var defaultCertificateTemplate = new Gcp.CertificateAuthority.CertificateTemplate("default", new()
///     {
///         Location = "us-central1",
///         Name = "my-certificate-template",
///         Description = "An updated sample certificate template",
///         IdentityConstraints = new Gcp.CertificateAuthority.Inputs.CertificateTemplateIdentityConstraintsArgs
///         {
///             AllowSubjectAltNamesPassthrough = true,
///             AllowSubjectPassthrough = true,
///             CelExpression = new Gcp.CertificateAuthority.Inputs.CertificateTemplateIdentityConstraintsCelExpressionArgs
///             {
///                 Description = "Always true",
///                 Expression = "true",
///                 Location = "any.file.anywhere",
///                 Title = "Sample expression",
///             },
///         },
///         PassthroughExtensions = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePassthroughExtensionsArgs
///         {
///             AdditionalExtensions = new[]
///             {
///                 new Gcp.CertificateAuthority.Inputs.CertificateTemplatePassthroughExtensionsAdditionalExtensionArgs
///                 {
///                     ObjectIdPaths = new[]
///                     {
///                         1,
///                         6,
///                     },
///                 },
///             },
///             KnownExtensions = new[]
///             {
///                 "EXTENDED_KEY_USAGE",
///             },
///         },
///         PredefinedValues = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesArgs
///         {
///             AdditionalExtensions = new[]
///             {
///                 new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesAdditionalExtensionArgs
///                 {
///                     ObjectId = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesAdditionalExtensionObjectIdArgs
///                     {
///                         ObjectIdPaths = new[]
///                         {
///                             1,
///                             6,
///                         },
///                     },
///                     Value = "c3RyaW5nCg==",
///                     Critical = true,
///                 },
///             },
///             AiaOcspServers = new[]
///             {
///                 "string",
///             },
///             CaOptions = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesCaOptionsArgs
///             {
///                 IsCa = false,
///                 MaxIssuerPathLength = 6,
///             },
///             KeyUsage = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesKeyUsageArgs
///             {
///                 BaseKeyUsage = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesKeyUsageBaseKeyUsageArgs
///                 {
///                     CertSign = false,
///                     ContentCommitment = true,
///                     CrlSign = false,
///                     DataEncipherment = true,
///                     DecipherOnly = true,
///                     DigitalSignature = true,
///                     EncipherOnly = true,
///                     KeyAgreement = true,
///                     KeyEncipherment = true,
///                 },
///                 ExtendedKeyUsage = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesKeyUsageExtendedKeyUsageArgs
///                 {
///                     ClientAuth = true,
///                     CodeSigning = true,
///                     EmailProtection = true,
///                     OcspSigning = true,
///                     ServerAuth = true,
///                     TimeStamping = true,
///                 },
///                 UnknownExtendedKeyUsages = new[]
///                 {
///                     new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsageArgs
///                     {
///                         ObjectIdPaths = new[]
///                         {
///                             1,
///                             6,
///                         },
///                     },
///                 },
///             },
///             PolicyIds = new[]
///             {
///                 new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesPolicyIdArgs
///                 {
///                     ObjectIdPaths = new[]
///                     {
///                         1,
///                         6,
///                     },
///                 },
///             },
///         },
///     });
///
///     var defaultAuthority = new Gcp.CertificateAuthority.Authority("default", new()
///     {
///         Location = "us-central1",
///         Pool = @default.Name,
///         CertificateAuthorityId = "my-authority",
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
///                         ServerAuth = false,
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
///     var defaultCertificate = new Gcp.CertificateAuthority.Certificate("default", new()
///     {
///         Location = "us-central1",
///         Pool = @default.Name,
///         CertificateAuthority = defaultAuthority.CertificateAuthorityId,
///         Name = "my-certificate",
///         Lifetime = "860s",
///         PemCsr = Std.File.Invoke(new()
///         {
///             Input = "test-fixtures/rsa_csr.pem",
///         }).Apply(invoke => invoke.Result),
///         CertificateTemplate = defaultCertificateTemplate.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := certificateauthority.NewCaPool(ctx, "default", &certificateauthority.CaPoolArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Name:     pulumi.String("my-pool"),
/// 			Tier:     pulumi.String("ENTERPRISE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCertificateTemplate, err := certificateauthority.NewCertificateTemplate(ctx, "default", &certificateauthority.CertificateTemplateArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			Name:        pulumi.String("my-certificate-template"),
/// 			Description: pulumi.String("An updated sample certificate template"),
/// 			IdentityConstraints: &certificateauthority.CertificateTemplateIdentityConstraintsArgs{
/// 				AllowSubjectAltNamesPassthrough: pulumi.Bool(true),
/// 				AllowSubjectPassthrough:         pulumi.Bool(true),
/// 				CelExpression: &certificateauthority.CertificateTemplateIdentityConstraintsCelExpressionArgs{
/// 					Description: pulumi.String("Always true"),
/// 					Expression:  pulumi.String("true"),
/// 					Location:    pulumi.String("any.file.anywhere"),
/// 					Title:       pulumi.String("Sample expression"),
/// 				},
/// 			},
/// 			PassthroughExtensions: &certificateauthority.CertificateTemplatePassthroughExtensionsArgs{
/// 				AdditionalExtensions: certificateauthority.CertificateTemplatePassthroughExtensionsAdditionalExtensionArray{
/// 					&certificateauthority.CertificateTemplatePassthroughExtensionsAdditionalExtensionArgs{
/// 						ObjectIdPaths: pulumi.IntArray{
/// 							pulumi.Int(1),
/// 							pulumi.Int(6),
/// 						},
/// 					},
/// 				},
/// 				KnownExtensions: pulumi.StringArray{
/// 					pulumi.String("EXTENDED_KEY_USAGE"),
/// 				},
/// 			},
/// 			PredefinedValues: &certificateauthority.CertificateTemplatePredefinedValuesArgs{
/// 				AdditionalExtensions: certificateauthority.CertificateTemplatePredefinedValuesAdditionalExtensionArray{
/// 					&certificateauthority.CertificateTemplatePredefinedValuesAdditionalExtensionArgs{
/// 						ObjectId: &certificateauthority.CertificateTemplatePredefinedValuesAdditionalExtensionObjectIdArgs{
/// 							ObjectIdPaths: pulumi.IntArray{
/// 								pulumi.Int(1),
/// 								pulumi.Int(6),
/// 							},
/// 						},
/// 						Value:    pulumi.String("c3RyaW5nCg=="),
/// 						Critical: pulumi.Bool(true),
/// 					},
/// 				},
/// 				AiaOcspServers: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				CaOptions: &certificateauthority.CertificateTemplatePredefinedValuesCaOptionsArgs{
/// 					IsCa:                pulumi.Bool(false),
/// 					MaxIssuerPathLength: pulumi.Int(6),
/// 				},
/// 				KeyUsage: &certificateauthority.CertificateTemplatePredefinedValuesKeyUsageArgs{
/// 					BaseKeyUsage: &certificateauthority.CertificateTemplatePredefinedValuesKeyUsageBaseKeyUsageArgs{
/// 						CertSign:          pulumi.Bool(false),
/// 						ContentCommitment: pulumi.Bool(true),
/// 						CrlSign:           pulumi.Bool(false),
/// 						DataEncipherment:  pulumi.Bool(true),
/// 						DecipherOnly:      pulumi.Bool(true),
/// 						DigitalSignature:  pulumi.Bool(true),
/// 						EncipherOnly:      pulumi.Bool(true),
/// 						KeyAgreement:      pulumi.Bool(true),
/// 						KeyEncipherment:   pulumi.Bool(true),
/// 					},
/// 					ExtendedKeyUsage: &certificateauthority.CertificateTemplatePredefinedValuesKeyUsageExtendedKeyUsageArgs{
/// 						ClientAuth:      pulumi.Bool(true),
/// 						CodeSigning:     pulumi.Bool(true),
/// 						EmailProtection: pulumi.Bool(true),
/// 						OcspSigning:     pulumi.Bool(true),
/// 						ServerAuth:      pulumi.Bool(true),
/// 						TimeStamping:    pulumi.Bool(true),
/// 					},
/// 					UnknownExtendedKeyUsages: certificateauthority.CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsageArray{
/// 						&certificateauthority.CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsageArgs{
/// 							ObjectIdPaths: pulumi.IntArray{
/// 								pulumi.Int(1),
/// 								pulumi.Int(6),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				PolicyIds: certificateauthority.CertificateTemplatePredefinedValuesPolicyIdArray{
/// 					&certificateauthority.CertificateTemplatePredefinedValuesPolicyIdArgs{
/// 						ObjectIdPaths: pulumi.IntArray{
/// 							pulumi.Int(1),
/// 							pulumi.Int(6),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAuthority, err := certificateauthority.NewAuthority(ctx, "default", &certificateauthority.AuthorityArgs{
/// 			Location:               pulumi.String("us-central1"),
/// 			Pool:                   _default.Name,
/// 			CertificateAuthorityId: pulumi.String("my-authority"),
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
/// 							ServerAuth: pulumi.Bool(false),
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
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/rsa_csr.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = certificateauthority.NewCertificate(ctx, "default", &certificateauthority.CertificateArgs{
/// 			Location:             pulumi.String("us-central1"),
/// 			Pool:                 _default.Name,
/// 			CertificateAuthority: defaultAuthority.CertificateAuthorityId,
/// 			Name:                 pulumi.String("my-certificate"),
/// 			Lifetime:             pulumi.String("860s"),
/// 			PemCsr:               pulumi.String(invokeFile.Result),
/// 			CertificateTemplate:  defaultCertificateTemplate.ID(),
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
/// import com.pulumi.gcp.certificateauthority.CaPool;
/// import com.pulumi.gcp.certificateauthority.CaPoolArgs;
/// import com.pulumi.gcp.certificateauthority.CertificateTemplate;
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplateIdentityConstraintsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplateIdentityConstraintsCelExpressionArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplatePassthroughExtensionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplatePredefinedValuesArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplatePredefinedValuesCaOptionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplatePredefinedValuesKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplatePredefinedValuesKeyUsageBaseKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplatePredefinedValuesKeyUsageExtendedKeyUsageArgs;
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
/// import com.pulumi.gcp.certificateauthority.Certificate;
/// import com.pulumi.gcp.certificateauthority.CertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var default_ = new CaPool("default", CaPoolArgs.builder()
///             .location("us-central1")
///             .name("my-pool")
///             .tier("ENTERPRISE")
///             .build());
///
///         var defaultCertificateTemplate = new CertificateTemplate("defaultCertificateTemplate", CertificateTemplateArgs.builder()
///             .location("us-central1")
///             .name("my-certificate-template")
///             .description("An updated sample certificate template")
///             .identityConstraints(CertificateTemplateIdentityConstraintsArgs.builder()
///                 .allowSubjectAltNamesPassthrough(true)
///                 .allowSubjectPassthrough(true)
///                 .celExpression(CertificateTemplateIdentityConstraintsCelExpressionArgs.builder()
///                     .description("Always true")
///                     .expression("true")
///                     .location("any.file.anywhere")
///                     .title("Sample expression")
///                     .build())
///                 .build())
///             .passthroughExtensions(CertificateTemplatePassthroughExtensionsArgs.builder()
///                 .additionalExtensions(CertificateTemplatePassthroughExtensionsAdditionalExtensionArgs.builder()
///                     .objectIdPaths(
///                         1,
///                         6)
///                     .build())
///                 .knownExtensions("EXTENDED_KEY_USAGE")
///                 .build())
///             .predefinedValues(CertificateTemplatePredefinedValuesArgs.builder()
///                 .additionalExtensions(CertificateTemplatePredefinedValuesAdditionalExtensionArgs.builder()
///                     .objectId(CertificateTemplatePredefinedValuesAdditionalExtensionObjectIdArgs.builder()
///                         .objectIdPaths(
///                             1,
///                             6)
///                         .build())
///                     .value("c3RyaW5nCg==")
///                     .critical(true)
///                     .build())
///                 .aiaOcspServers("string")
///                 .caOptions(CertificateTemplatePredefinedValuesCaOptionsArgs.builder()
///                     .isCa(false)
///                     .maxIssuerPathLength(6)
///                     .build())
///                 .keyUsage(CertificateTemplatePredefinedValuesKeyUsageArgs.builder()
///                     .baseKeyUsage(CertificateTemplatePredefinedValuesKeyUsageBaseKeyUsageArgs.builder()
///                         .certSign(false)
///                         .contentCommitment(true)
///                         .crlSign(false)
///                         .dataEncipherment(true)
///                         .decipherOnly(true)
///                         .digitalSignature(true)
///                         .encipherOnly(true)
///                         .keyAgreement(true)
///                         .keyEncipherment(true)
///                         .build())
///                     .extendedKeyUsage(CertificateTemplatePredefinedValuesKeyUsageExtendedKeyUsageArgs.builder()
///                         .clientAuth(true)
///                         .codeSigning(true)
///                         .emailProtection(true)
///                         .ocspSigning(true)
///                         .serverAuth(true)
///                         .timeStamping(true)
///                         .build())
///                     .unknownExtendedKeyUsages(CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsageArgs.builder()
///                         .objectIdPaths(
///                             1,
///                             6)
///                         .build())
///                     .build())
///                 .policyIds(CertificateTemplatePredefinedValuesPolicyIdArgs.builder()
///                     .objectIdPaths(
///                         1,
///                         6)
///                     .build())
///                 .build())
///             .build());
///
///         var defaultAuthority = new Authority("defaultAuthority", AuthorityArgs.builder()
///             .location("us-central1")
///             .pool(default_.name())
///             .certificateAuthorityId("my-authority")
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
///                             .serverAuth(false)
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
///         var defaultCertificate = new Certificate("defaultCertificate", CertificateArgs.builder()
///             .location("us-central1")
///             .pool(default_.name())
///             .certificateAuthority(defaultAuthority.certificateAuthorityId())
///             .name("my-certificate")
///             .lifetime("860s")
///             .pemCsr(StdFunctions.file(FileArgs.builder()
///                 .input("test-fixtures/rsa_csr.pem")
///                 .build()).result())
///             .certificateTemplate(defaultCertificateTemplate.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificateauthority:CaPool
///     properties:
///       location: us-central1
///       name: my-pool
///       tier: ENTERPRISE
///   defaultCertificateTemplate:
///     type: gcp:certificateauthority:CertificateTemplate
///     name: default
///     properties:
///       location: us-central1
///       name: my-certificate-template
///       description: An updated sample certificate template
///       identityConstraints:
///         allowSubjectAltNamesPassthrough: true
///         allowSubjectPassthrough: true
///         celExpression:
///           description: Always true
///           expression: 'true'
///           location: any.file.anywhere
///           title: Sample expression
///       passthroughExtensions:
///         additionalExtensions:
///           - objectIdPaths:
///               - 1
///               - 6
///         knownExtensions:
///           - EXTENDED_KEY_USAGE
///       predefinedValues:
///         additionalExtensions:
///           - objectId:
///               objectIdPaths:
///                 - 1
///                 - 6
///             value: c3RyaW5nCg==
///             critical: true
///         aiaOcspServers:
///           - string
///         caOptions:
///           isCa: false
///           maxIssuerPathLength: 6
///         keyUsage:
///           baseKeyUsage:
///             certSign: false
///             contentCommitment: true
///             crlSign: false
///             dataEncipherment: true
///             decipherOnly: true
///             digitalSignature: true
///             encipherOnly: true
///             keyAgreement: true
///             keyEncipherment: true
///           extendedKeyUsage:
///             clientAuth: true
///             codeSigning: true
///             emailProtection: true
///             ocspSigning: true
///             serverAuth: true
///             timeStamping: true
///           unknownExtendedKeyUsages:
///             - objectIdPaths:
///                 - 1
///                 - 6
///         policyIds:
///           - objectIdPaths:
///               - 1
///               - 6
///   defaultAuthority:
///     type: gcp:certificateauthority:Authority
///     name: default
///     properties:
///       location: us-central1
///       pool: ${default.name}
///       certificateAuthorityId: my-authority
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
///               serverAuth: false
///       keySpec:
///         algorithm: RSA_PKCS1_4096_SHA256
///       deletionProtection: false
///       skipGracePeriod: true
///       ignoreActiveCertificatesOnDeletion: true
///   defaultCertificate:
///     type: gcp:certificateauthority:Certificate
///     name: default
///     properties:
///       location: us-central1
///       pool: ${default.name}
///       certificateAuthority: ${defaultAuthority.certificateAuthorityId}
///       name: my-certificate
///       lifetime: 860s
///       pemCsr:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: test-fixtures/rsa_csr.pem
///           return: result
///       certificateTemplate: ${defaultCertificateTemplate.id}
/// ```
///
/// ### Privateca Certificate Csr
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const _default = new gcp.certificateauthority.CaPool("default", {
///     location: "us-central1",
///     name: "my-pool",
///     tier: "ENTERPRISE",
/// });
/// const defaultAuthority = new gcp.certificateauthority.Authority("default", {
///     location: "us-central1",
///     pool: _default.name,
///     certificateAuthorityId: "my-authority",
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
///                     serverAuth: false,
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
/// const defaultCertificate = new gcp.certificateauthority.Certificate("default", {
///     location: "us-central1",
///     pool: _default.name,
///     certificateAuthority: defaultAuthority.certificateAuthorityId,
///     name: "my-certificate",
///     lifetime: "860s",
///     pemCsr: std.file({
///         input: "test-fixtures/rsa_csr.pem",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default = gcp.certificateauthority.CaPool("default",
///     location="us-central1",
///     name="my-pool",
///     tier="ENTERPRISE")
/// default_authority = gcp.certificateauthority.Authority("default",
///     location="us-central1",
///     pool=default.name,
///     certificate_authority_id="my-authority",
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
///                     "server_auth": False,
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
/// default_certificate = gcp.certificateauthority.Certificate("default",
///     location="us-central1",
///     pool=default.name,
///     certificate_authority=default_authority.certificate_authority_id,
///     name="my-certificate",
///     lifetime="860s",
///     pem_csr=std.file(input="test-fixtures/rsa_csr.pem").result)
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
///     var @default = new Gcp.CertificateAuthority.CaPool("default", new()
///     {
///         Location = "us-central1",
///         Name = "my-pool",
///         Tier = "ENTERPRISE",
///     });
///
///     var defaultAuthority = new Gcp.CertificateAuthority.Authority("default", new()
///     {
///         Location = "us-central1",
///         Pool = @default.Name,
///         CertificateAuthorityId = "my-authority",
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
///                         ServerAuth = false,
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
///     var defaultCertificate = new Gcp.CertificateAuthority.Certificate("default", new()
///     {
///         Location = "us-central1",
///         Pool = @default.Name,
///         CertificateAuthority = defaultAuthority.CertificateAuthorityId,
///         Name = "my-certificate",
///         Lifetime = "860s",
///         PemCsr = Std.File.Invoke(new()
///         {
///             Input = "test-fixtures/rsa_csr.pem",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := certificateauthority.NewCaPool(ctx, "default", &certificateauthority.CaPoolArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Name:     pulumi.String("my-pool"),
/// 			Tier:     pulumi.String("ENTERPRISE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAuthority, err := certificateauthority.NewAuthority(ctx, "default", &certificateauthority.AuthorityArgs{
/// 			Location:               pulumi.String("us-central1"),
/// 			Pool:                   _default.Name,
/// 			CertificateAuthorityId: pulumi.String("my-authority"),
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
/// 							ServerAuth: pulumi.Bool(false),
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
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/rsa_csr.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = certificateauthority.NewCertificate(ctx, "default", &certificateauthority.CertificateArgs{
/// 			Location:             pulumi.String("us-central1"),
/// 			Pool:                 _default.Name,
/// 			CertificateAuthority: defaultAuthority.CertificateAuthorityId,
/// 			Name:                 pulumi.String("my-certificate"),
/// 			Lifetime:             pulumi.String("860s"),
/// 			PemCsr:               pulumi.String(invokeFile.Result),
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
/// import com.pulumi.gcp.certificateauthority.Certificate;
/// import com.pulumi.gcp.certificateauthority.CertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var default_ = new CaPool("default", CaPoolArgs.builder()
///             .location("us-central1")
///             .name("my-pool")
///             .tier("ENTERPRISE")
///             .build());
///
///         var defaultAuthority = new Authority("defaultAuthority", AuthorityArgs.builder()
///             .location("us-central1")
///             .pool(default_.name())
///             .certificateAuthorityId("my-authority")
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
///                             .serverAuth(false)
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
///         var defaultCertificate = new Certificate("defaultCertificate", CertificateArgs.builder()
///             .location("us-central1")
///             .pool(default_.name())
///             .certificateAuthority(defaultAuthority.certificateAuthorityId())
///             .name("my-certificate")
///             .lifetime("860s")
///             .pemCsr(StdFunctions.file(FileArgs.builder()
///                 .input("test-fixtures/rsa_csr.pem")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificateauthority:CaPool
///     properties:
///       location: us-central1
///       name: my-pool
///       tier: ENTERPRISE
///   defaultAuthority:
///     type: gcp:certificateauthority:Authority
///     name: default
///     properties:
///       location: us-central1
///       pool: ${default.name}
///       certificateAuthorityId: my-authority
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
///               serverAuth: false
///       keySpec:
///         algorithm: RSA_PKCS1_4096_SHA256
///       deletionProtection: false
///       skipGracePeriod: true
///       ignoreActiveCertificatesOnDeletion: true
///   defaultCertificate:
///     type: gcp:certificateauthority:Certificate
///     name: default
///     properties:
///       location: us-central1
///       pool: ${default.name}
///       certificateAuthority: ${defaultAuthority.certificateAuthorityId}
///       name: my-certificate
///       lifetime: 860s
///       pemCsr:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: test-fixtures/rsa_csr.pem
///           return: result
/// ```
///
/// ### Privateca Certificate No Authority
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const _default = new gcp.certificateauthority.CaPool("default", {
///     location: "us-central1",
///     name: "my-pool",
///     tier: "ENTERPRISE",
/// });
/// const defaultAuthority = new gcp.certificateauthority.Authority("default", {
///     location: "us-central1",
///     pool: _default.name,
///     certificateAuthorityId: "my-authority",
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
///                     digitalSignature: true,
///                     certSign: true,
///                     crlSign: true,
///                 },
///                 extendedKeyUsage: {
///                     serverAuth: true,
///                 },
///             },
///         },
///     },
///     lifetime: "86400s",
///     keySpec: {
///         algorithm: "RSA_PKCS1_4096_SHA256",
///     },
///     deletionProtection: false,
///     skipGracePeriod: true,
///     ignoreActiveCertificatesOnDeletion: true,
/// });
/// const defaultCertificate = new gcp.certificateauthority.Certificate("default", {
///     location: "us-central1",
///     pool: _default.name,
///     name: "my-certificate",
///     lifetime: "860s",
///     config: {
///         subjectConfig: {
///             subject: {
///                 commonName: "san1.example.com",
///                 countryCode: "us",
///                 organization: "google",
///                 organizationalUnit: "enterprise",
///                 locality: "mountain view",
///                 province: "california",
///                 streetAddress: "1600 amphitheatre parkway",
///                 postalCode: "94109",
///             },
///         },
///         x509Config: {
///             caOptions: {
///                 isCa: false,
///             },
///             keyUsage: {
///                 baseKeyUsage: {
///                     crlSign: true,
///                 },
///                 extendedKeyUsage: {
///                     serverAuth: true,
///                 },
///             },
///         },
///         publicKey: {
///             format: "PEM",
///             key: std.filebase64({
///                 input: "test-fixtures/rsa_public.pem",
///             }).then(invoke => invoke.result),
///         },
///     },
/// }, {
///     dependsOn: [defaultAuthority],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default = gcp.certificateauthority.CaPool("default",
///     location="us-central1",
///     name="my-pool",
///     tier="ENTERPRISE")
/// default_authority = gcp.certificateauthority.Authority("default",
///     location="us-central1",
///     pool=default.name,
///     certificate_authority_id="my-authority",
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
///                     "digital_signature": True,
///                     "cert_sign": True,
///                     "crl_sign": True,
///                 },
///                 "extended_key_usage": {
///                     "server_auth": True,
///                 },
///             },
///         },
///     },
///     lifetime="86400s",
///     key_spec={
///         "algorithm": "RSA_PKCS1_4096_SHA256",
///     },
///     deletion_protection=False,
///     skip_grace_period=True,
///     ignore_active_certificates_on_deletion=True)
/// default_certificate = gcp.certificateauthority.Certificate("default",
///     location="us-central1",
///     pool=default.name,
///     name="my-certificate",
///     lifetime="860s",
///     config={
///         "subject_config": {
///             "subject": {
///                 "common_name": "san1.example.com",
///                 "country_code": "us",
///                 "organization": "google",
///                 "organizational_unit": "enterprise",
///                 "locality": "mountain view",
///                 "province": "california",
///                 "street_address": "1600 amphitheatre parkway",
///                 "postal_code": "94109",
///             },
///         },
///         "x509_config": {
///             "ca_options": {
///                 "is_ca": False,
///             },
///             "key_usage": {
///                 "base_key_usage": {
///                     "crl_sign": True,
///                 },
///                 "extended_key_usage": {
///                     "server_auth": True,
///                 },
///             },
///         },
///         "public_key": {
///             "format": "PEM",
///             "key": std.filebase64(input="test-fixtures/rsa_public.pem").result,
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[default_authority]))
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
///     var @default = new Gcp.CertificateAuthority.CaPool("default", new()
///     {
///         Location = "us-central1",
///         Name = "my-pool",
///         Tier = "ENTERPRISE",
///     });
///
///     var defaultAuthority = new Gcp.CertificateAuthority.Authority("default", new()
///     {
///         Location = "us-central1",
///         Pool = @default.Name,
///         CertificateAuthorityId = "my-authority",
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
///                         DigitalSignature = true,
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
///         Lifetime = "86400s",
///         KeySpec = new Gcp.CertificateAuthority.Inputs.AuthorityKeySpecArgs
///         {
///             Algorithm = "RSA_PKCS1_4096_SHA256",
///         },
///         DeletionProtection = false,
///         SkipGracePeriod = true,
///         IgnoreActiveCertificatesOnDeletion = true,
///     });
///
///     var defaultCertificate = new Gcp.CertificateAuthority.Certificate("default", new()
///     {
///         Location = "us-central1",
///         Pool = @default.Name,
///         Name = "my-certificate",
///         Lifetime = "860s",
///         Config = new Gcp.CertificateAuthority.Inputs.CertificateConfigArgs
///         {
///             SubjectConfig = new Gcp.CertificateAuthority.Inputs.CertificateConfigSubjectConfigArgs
///             {
///                 Subject = new Gcp.CertificateAuthority.Inputs.CertificateConfigSubjectConfigSubjectArgs
///                 {
///                     CommonName = "san1.example.com",
///                     CountryCode = "us",
///                     Organization = "google",
///                     OrganizationalUnit = "enterprise",
///                     Locality = "mountain view",
///                     Province = "california",
///                     StreetAddress = "1600 amphitheatre parkway",
///                     PostalCode = "94109",
///                 },
///             },
///             X509Config = new Gcp.CertificateAuthority.Inputs.CertificateConfigX509ConfigArgs
///             {
///                 CaOptions = new Gcp.CertificateAuthority.Inputs.CertificateConfigX509ConfigCaOptionsArgs
///                 {
///                     IsCa = false,
///                 },
///                 KeyUsage = new Gcp.CertificateAuthority.Inputs.CertificateConfigX509ConfigKeyUsageArgs
///                 {
///                     BaseKeyUsage = new Gcp.CertificateAuthority.Inputs.CertificateConfigX509ConfigKeyUsageBaseKeyUsageArgs
///                     {
///                         CrlSign = true,
///                     },
///                     ExtendedKeyUsage = new Gcp.CertificateAuthority.Inputs.CertificateConfigX509ConfigKeyUsageExtendedKeyUsageArgs
///                     {
///                         ServerAuth = true,
///                     },
///                 },
///             },
///             PublicKey = new Gcp.CertificateAuthority.Inputs.CertificateConfigPublicKeyArgs
///             {
///                 Format = "PEM",
///                 Key = Std.Filebase64.Invoke(new()
///                 {
///                     Input = "test-fixtures/rsa_public.pem",
///                 }).Apply(invoke => invoke.Result),
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             defaultAuthority,
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
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := certificateauthority.NewCaPool(ctx, "default", &certificateauthority.CaPoolArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Name:     pulumi.String("my-pool"),
/// 			Tier:     pulumi.String("ENTERPRISE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAuthority, err := certificateauthority.NewAuthority(ctx, "default", &certificateauthority.AuthorityArgs{
/// 			Location:               pulumi.String("us-central1"),
/// 			Pool:                   _default.Name,
/// 			CertificateAuthorityId: pulumi.String("my-authority"),
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
/// 							DigitalSignature: pulumi.Bool(true),
/// 							CertSign:         pulumi.Bool(true),
/// 							CrlSign:          pulumi.Bool(true),
/// 						},
/// 						ExtendedKeyUsage: &certificateauthority.AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs{
/// 							ServerAuth: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Lifetime: pulumi.String("86400s"),
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
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "test-fixtures/rsa_public.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = certificateauthority.NewCertificate(ctx, "default", &certificateauthority.CertificateArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Pool:     _default.Name,
/// 			Name:     pulumi.String("my-certificate"),
/// 			Lifetime: pulumi.String("860s"),
/// 			Config: &certificateauthority.CertificateConfigArgs{
/// 				SubjectConfig: &certificateauthority.CertificateConfigSubjectConfigArgs{
/// 					Subject: &certificateauthority.CertificateConfigSubjectConfigSubjectArgs{
/// 						CommonName:         pulumi.String("san1.example.com"),
/// 						CountryCode:        pulumi.String("us"),
/// 						Organization:       pulumi.String("google"),
/// 						OrganizationalUnit: pulumi.String("enterprise"),
/// 						Locality:           pulumi.String("mountain view"),
/// 						Province:           pulumi.String("california"),
/// 						StreetAddress:      pulumi.String("1600 amphitheatre parkway"),
/// 						PostalCode:         pulumi.String("94109"),
/// 					},
/// 				},
/// 				X509Config: &certificateauthority.CertificateConfigX509ConfigArgs{
/// 					CaOptions: &certificateauthority.CertificateConfigX509ConfigCaOptionsArgs{
/// 						IsCa: pulumi.Bool(false),
/// 					},
/// 					KeyUsage: &certificateauthority.CertificateConfigX509ConfigKeyUsageArgs{
/// 						BaseKeyUsage: &certificateauthority.CertificateConfigX509ConfigKeyUsageBaseKeyUsageArgs{
/// 							CrlSign: pulumi.Bool(true),
/// 						},
/// 						ExtendedKeyUsage: &certificateauthority.CertificateConfigX509ConfigKeyUsageExtendedKeyUsageArgs{
/// 							ServerAuth: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				PublicKey: &certificateauthority.CertificateConfigPublicKeyArgs{
/// 					Format: pulumi.String("PEM"),
/// 					Key:    pulumi.String(invokeFilebase64.Result),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			defaultAuthority,
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
/// import com.pulumi.gcp.certificateauthority.Certificate;
/// import com.pulumi.gcp.certificateauthority.CertificateArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigSubjectConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigSubjectConfigSubjectArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigX509ConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigX509ConfigCaOptionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigX509ConfigKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigX509ConfigKeyUsageBaseKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigX509ConfigKeyUsageExtendedKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigPublicKeyArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
///         var default_ = new CaPool("default", CaPoolArgs.builder()
///             .location("us-central1")
///             .name("my-pool")
///             .tier("ENTERPRISE")
///             .build());
///
///         var defaultAuthority = new Authority("defaultAuthority", AuthorityArgs.builder()
///             .location("us-central1")
///             .pool(default_.name())
///             .certificateAuthorityId("my-authority")
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
///                             .digitalSignature(true)
///                             .certSign(true)
///                             .crlSign(true)
///                             .build())
///                         .extendedKeyUsage(AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs.builder()
///                             .serverAuth(true)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .lifetime("86400s")
///             .keySpec(AuthorityKeySpecArgs.builder()
///                 .algorithm("RSA_PKCS1_4096_SHA256")
///                 .build())
///             .deletionProtection(false)
///             .skipGracePeriod(true)
///             .ignoreActiveCertificatesOnDeletion(true)
///             .build());
///
///         var defaultCertificate = new Certificate("defaultCertificate", CertificateArgs.builder()
///             .location("us-central1")
///             .pool(default_.name())
///             .name("my-certificate")
///             .lifetime("860s")
///             .config(CertificateConfigArgs.builder()
///                 .subjectConfig(CertificateConfigSubjectConfigArgs.builder()
///                     .subject(CertificateConfigSubjectConfigSubjectArgs.builder()
///                         .commonName("san1.example.com")
///                         .countryCode("us")
///                         .organization("google")
///                         .organizationalUnit("enterprise")
///                         .locality("mountain view")
///                         .province("california")
///                         .streetAddress("1600 amphitheatre parkway")
///                         .postalCode("94109")
///                         .build())
///                     .build())
///                 .x509Config(CertificateConfigX509ConfigArgs.builder()
///                     .caOptions(CertificateConfigX509ConfigCaOptionsArgs.builder()
///                         .isCa(false)
///                         .build())
///                     .keyUsage(CertificateConfigX509ConfigKeyUsageArgs.builder()
///                         .baseKeyUsage(CertificateConfigX509ConfigKeyUsageBaseKeyUsageArgs.builder()
///                             .crlSign(true)
///                             .build())
///                         .extendedKeyUsage(CertificateConfigX509ConfigKeyUsageExtendedKeyUsageArgs.builder()
///                             .serverAuth(true)
///                             .build())
///                         .build())
///                     .build())
///                 .publicKey(CertificateConfigPublicKeyArgs.builder()
///                     .format("PEM")
///                     .key(StdFunctions.filebase64(Filebase64Args.builder()
///                         .input("test-fixtures/rsa_public.pem")
///                         .build()).result())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(defaultAuthority)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificateauthority:CaPool
///     properties:
///       location: us-central1
///       name: my-pool
///       tier: ENTERPRISE
///   defaultAuthority:
///     type: gcp:certificateauthority:Authority
///     name: default
///     properties:
///       location: us-central1
///       pool: ${default.name}
///       certificateAuthorityId: my-authority
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
///               digitalSignature: true
///               certSign: true
///               crlSign: true
///             extendedKeyUsage:
///               serverAuth: true
///       lifetime: 86400s
///       keySpec:
///         algorithm: RSA_PKCS1_4096_SHA256
///       deletionProtection: false
///       skipGracePeriod: true
///       ignoreActiveCertificatesOnDeletion: true
///   defaultCertificate:
///     type: gcp:certificateauthority:Certificate
///     name: default
///     properties:
///       location: us-central1
///       pool: ${default.name}
///       name: my-certificate
///       lifetime: 860s
///       config:
///         subjectConfig:
///           subject:
///             commonName: san1.example.com
///             countryCode: us
///             organization: google
///             organizationalUnit: enterprise
///             locality: mountain view
///             province: california
///             streetAddress: 1600 amphitheatre parkway
///             postalCode: '94109'
///         x509Config:
///           caOptions:
///             isCa: false
///           keyUsage:
///             baseKeyUsage:
///               crlSign: true
///             extendedKeyUsage:
///               serverAuth: true
///         publicKey:
///           format: PEM
///           key:
///             fn::invoke:
///               function: std:filebase64
///               arguments:
///                 input: test-fixtures/rsa_public.pem
///               return: result
///     options:
///       dependsOn:
///         - ${defaultAuthority}
/// ```
///
/// ### Privateca Certificate Custom Ski
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const _default = new gcp.certificateauthority.CaPool("default", {
///     location: "us-central1",
///     name: "my-pool",
///     tier: "ENTERPRISE",
/// });
/// const defaultAuthority = new gcp.certificateauthority.Authority("default", {
///     location: "us-central1",
///     pool: _default.name,
///     certificateAuthorityId: "my-authority",
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
///                     digitalSignature: true,
///                     certSign: true,
///                     crlSign: true,
///                 },
///                 extendedKeyUsage: {
///                     serverAuth: true,
///                 },
///             },
///         },
///     },
///     lifetime: "86400s",
///     keySpec: {
///         algorithm: "RSA_PKCS1_4096_SHA256",
///     },
///     deletionProtection: false,
///     skipGracePeriod: true,
///     ignoreActiveCertificatesOnDeletion: true,
/// });
/// const defaultCertificate = new gcp.certificateauthority.Certificate("default", {
///     location: "us-central1",
///     pool: _default.name,
///     name: "my-certificate",
///     lifetime: "860s",
///     config: {
///         subjectConfig: {
///             subject: {
///                 commonName: "san1.example.com",
///                 countryCode: "us",
///                 organization: "google",
///                 organizationalUnit: "enterprise",
///                 locality: "mountain view",
///                 province: "california",
///                 streetAddress: "1600 amphitheatre parkway",
///                 postalCode: "94109",
///             },
///         },
///         subjectKeyId: {
///             keyId: "4cf3372289b1d411b999dbb9ebcd44744b6b2fca",
///         },
///         x509Config: {
///             caOptions: {
///                 isCa: false,
///             },
///             keyUsage: {
///                 baseKeyUsage: {
///                     crlSign: true,
///                 },
///                 extendedKeyUsage: {
///                     serverAuth: true,
///                 },
///             },
///         },
///         publicKey: {
///             format: "PEM",
///             key: std.filebase64({
///                 input: "test-fixtures/rsa_public.pem",
///             }).then(invoke => invoke.result),
///         },
///     },
/// }, {
///     dependsOn: [defaultAuthority],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default = gcp.certificateauthority.CaPool("default",
///     location="us-central1",
///     name="my-pool",
///     tier="ENTERPRISE")
/// default_authority = gcp.certificateauthority.Authority("default",
///     location="us-central1",
///     pool=default.name,
///     certificate_authority_id="my-authority",
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
///                     "digital_signature": True,
///                     "cert_sign": True,
///                     "crl_sign": True,
///                 },
///                 "extended_key_usage": {
///                     "server_auth": True,
///                 },
///             },
///         },
///     },
///     lifetime="86400s",
///     key_spec={
///         "algorithm": "RSA_PKCS1_4096_SHA256",
///     },
///     deletion_protection=False,
///     skip_grace_period=True,
///     ignore_active_certificates_on_deletion=True)
/// default_certificate = gcp.certificateauthority.Certificate("default",
///     location="us-central1",
///     pool=default.name,
///     name="my-certificate",
///     lifetime="860s",
///     config={
///         "subject_config": {
///             "subject": {
///                 "common_name": "san1.example.com",
///                 "country_code": "us",
///                 "organization": "google",
///                 "organizational_unit": "enterprise",
///                 "locality": "mountain view",
///                 "province": "california",
///                 "street_address": "1600 amphitheatre parkway",
///                 "postal_code": "94109",
///             },
///         },
///         "subject_key_id": {
///             "key_id": "4cf3372289b1d411b999dbb9ebcd44744b6b2fca",
///         },
///         "x509_config": {
///             "ca_options": {
///                 "is_ca": False,
///             },
///             "key_usage": {
///                 "base_key_usage": {
///                     "crl_sign": True,
///                 },
///                 "extended_key_usage": {
///                     "server_auth": True,
///                 },
///             },
///         },
///         "public_key": {
///             "format": "PEM",
///             "key": std.filebase64(input="test-fixtures/rsa_public.pem").result,
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[default_authority]))
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
///     var @default = new Gcp.CertificateAuthority.CaPool("default", new()
///     {
///         Location = "us-central1",
///         Name = "my-pool",
///         Tier = "ENTERPRISE",
///     });
///
///     var defaultAuthority = new Gcp.CertificateAuthority.Authority("default", new()
///     {
///         Location = "us-central1",
///         Pool = @default.Name,
///         CertificateAuthorityId = "my-authority",
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
///                         DigitalSignature = true,
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
///         Lifetime = "86400s",
///         KeySpec = new Gcp.CertificateAuthority.Inputs.AuthorityKeySpecArgs
///         {
///             Algorithm = "RSA_PKCS1_4096_SHA256",
///         },
///         DeletionProtection = false,
///         SkipGracePeriod = true,
///         IgnoreActiveCertificatesOnDeletion = true,
///     });
///
///     var defaultCertificate = new Gcp.CertificateAuthority.Certificate("default", new()
///     {
///         Location = "us-central1",
///         Pool = @default.Name,
///         Name = "my-certificate",
///         Lifetime = "860s",
///         Config = new Gcp.CertificateAuthority.Inputs.CertificateConfigArgs
///         {
///             SubjectConfig = new Gcp.CertificateAuthority.Inputs.CertificateConfigSubjectConfigArgs
///             {
///                 Subject = new Gcp.CertificateAuthority.Inputs.CertificateConfigSubjectConfigSubjectArgs
///                 {
///                     CommonName = "san1.example.com",
///                     CountryCode = "us",
///                     Organization = "google",
///                     OrganizationalUnit = "enterprise",
///                     Locality = "mountain view",
///                     Province = "california",
///                     StreetAddress = "1600 amphitheatre parkway",
///                     PostalCode = "94109",
///                 },
///             },
///             SubjectKeyId = new Gcp.CertificateAuthority.Inputs.CertificateConfigSubjectKeyIdArgs
///             {
///                 KeyId = "4cf3372289b1d411b999dbb9ebcd44744b6b2fca",
///             },
///             X509Config = new Gcp.CertificateAuthority.Inputs.CertificateConfigX509ConfigArgs
///             {
///                 CaOptions = new Gcp.CertificateAuthority.Inputs.CertificateConfigX509ConfigCaOptionsArgs
///                 {
///                     IsCa = false,
///                 },
///                 KeyUsage = new Gcp.CertificateAuthority.Inputs.CertificateConfigX509ConfigKeyUsageArgs
///                 {
///                     BaseKeyUsage = new Gcp.CertificateAuthority.Inputs.CertificateConfigX509ConfigKeyUsageBaseKeyUsageArgs
///                     {
///                         CrlSign = true,
///                     },
///                     ExtendedKeyUsage = new Gcp.CertificateAuthority.Inputs.CertificateConfigX509ConfigKeyUsageExtendedKeyUsageArgs
///                     {
///                         ServerAuth = true,
///                     },
///                 },
///             },
///             PublicKey = new Gcp.CertificateAuthority.Inputs.CertificateConfigPublicKeyArgs
///             {
///                 Format = "PEM",
///                 Key = Std.Filebase64.Invoke(new()
///                 {
///                     Input = "test-fixtures/rsa_public.pem",
///                 }).Apply(invoke => invoke.Result),
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             defaultAuthority,
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
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := certificateauthority.NewCaPool(ctx, "default", &certificateauthority.CaPoolArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Name:     pulumi.String("my-pool"),
/// 			Tier:     pulumi.String("ENTERPRISE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAuthority, err := certificateauthority.NewAuthority(ctx, "default", &certificateauthority.AuthorityArgs{
/// 			Location:               pulumi.String("us-central1"),
/// 			Pool:                   _default.Name,
/// 			CertificateAuthorityId: pulumi.String("my-authority"),
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
/// 							DigitalSignature: pulumi.Bool(true),
/// 							CertSign:         pulumi.Bool(true),
/// 							CrlSign:          pulumi.Bool(true),
/// 						},
/// 						ExtendedKeyUsage: &certificateauthority.AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs{
/// 							ServerAuth: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Lifetime: pulumi.String("86400s"),
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
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "test-fixtures/rsa_public.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = certificateauthority.NewCertificate(ctx, "default", &certificateauthority.CertificateArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Pool:     _default.Name,
/// 			Name:     pulumi.String("my-certificate"),
/// 			Lifetime: pulumi.String("860s"),
/// 			Config: &certificateauthority.CertificateConfigArgs{
/// 				SubjectConfig: &certificateauthority.CertificateConfigSubjectConfigArgs{
/// 					Subject: &certificateauthority.CertificateConfigSubjectConfigSubjectArgs{
/// 						CommonName:         pulumi.String("san1.example.com"),
/// 						CountryCode:        pulumi.String("us"),
/// 						Organization:       pulumi.String("google"),
/// 						OrganizationalUnit: pulumi.String("enterprise"),
/// 						Locality:           pulumi.String("mountain view"),
/// 						Province:           pulumi.String("california"),
/// 						StreetAddress:      pulumi.String("1600 amphitheatre parkway"),
/// 						PostalCode:         pulumi.String("94109"),
/// 					},
/// 				},
/// 				SubjectKeyId: &certificateauthority.CertificateConfigSubjectKeyIdArgs{
/// 					KeyId: pulumi.String("4cf3372289b1d411b999dbb9ebcd44744b6b2fca"),
/// 				},
/// 				X509Config: &certificateauthority.CertificateConfigX509ConfigArgs{
/// 					CaOptions: &certificateauthority.CertificateConfigX509ConfigCaOptionsArgs{
/// 						IsCa: pulumi.Bool(false),
/// 					},
/// 					KeyUsage: &certificateauthority.CertificateConfigX509ConfigKeyUsageArgs{
/// 						BaseKeyUsage: &certificateauthority.CertificateConfigX509ConfigKeyUsageBaseKeyUsageArgs{
/// 							CrlSign: pulumi.Bool(true),
/// 						},
/// 						ExtendedKeyUsage: &certificateauthority.CertificateConfigX509ConfigKeyUsageExtendedKeyUsageArgs{
/// 							ServerAuth: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				PublicKey: &certificateauthority.CertificateConfigPublicKeyArgs{
/// 					Format: pulumi.String("PEM"),
/// 					Key:    pulumi.String(invokeFilebase64.Result),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			defaultAuthority,
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
/// import com.pulumi.gcp.certificateauthority.Certificate;
/// import com.pulumi.gcp.certificateauthority.CertificateArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigSubjectConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigSubjectConfigSubjectArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigSubjectKeyIdArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigX509ConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigX509ConfigCaOptionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigX509ConfigKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigX509ConfigKeyUsageBaseKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigX509ConfigKeyUsageExtendedKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateConfigPublicKeyArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
///         var default_ = new CaPool("default", CaPoolArgs.builder()
///             .location("us-central1")
///             .name("my-pool")
///             .tier("ENTERPRISE")
///             .build());
///
///         var defaultAuthority = new Authority("defaultAuthority", AuthorityArgs.builder()
///             .location("us-central1")
///             .pool(default_.name())
///             .certificateAuthorityId("my-authority")
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
///                             .digitalSignature(true)
///                             .certSign(true)
///                             .crlSign(true)
///                             .build())
///                         .extendedKeyUsage(AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs.builder()
///                             .serverAuth(true)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .lifetime("86400s")
///             .keySpec(AuthorityKeySpecArgs.builder()
///                 .algorithm("RSA_PKCS1_4096_SHA256")
///                 .build())
///             .deletionProtection(false)
///             .skipGracePeriod(true)
///             .ignoreActiveCertificatesOnDeletion(true)
///             .build());
///
///         var defaultCertificate = new Certificate("defaultCertificate", CertificateArgs.builder()
///             .location("us-central1")
///             .pool(default_.name())
///             .name("my-certificate")
///             .lifetime("860s")
///             .config(CertificateConfigArgs.builder()
///                 .subjectConfig(CertificateConfigSubjectConfigArgs.builder()
///                     .subject(CertificateConfigSubjectConfigSubjectArgs.builder()
///                         .commonName("san1.example.com")
///                         .countryCode("us")
///                         .organization("google")
///                         .organizationalUnit("enterprise")
///                         .locality("mountain view")
///                         .province("california")
///                         .streetAddress("1600 amphitheatre parkway")
///                         .postalCode("94109")
///                         .build())
///                     .build())
///                 .subjectKeyId(CertificateConfigSubjectKeyIdArgs.builder()
///                     .keyId("4cf3372289b1d411b999dbb9ebcd44744b6b2fca")
///                     .build())
///                 .x509Config(CertificateConfigX509ConfigArgs.builder()
///                     .caOptions(CertificateConfigX509ConfigCaOptionsArgs.builder()
///                         .isCa(false)
///                         .build())
///                     .keyUsage(CertificateConfigX509ConfigKeyUsageArgs.builder()
///                         .baseKeyUsage(CertificateConfigX509ConfigKeyUsageBaseKeyUsageArgs.builder()
///                             .crlSign(true)
///                             .build())
///                         .extendedKeyUsage(CertificateConfigX509ConfigKeyUsageExtendedKeyUsageArgs.builder()
///                             .serverAuth(true)
///                             .build())
///                         .build())
///                     .build())
///                 .publicKey(CertificateConfigPublicKeyArgs.builder()
///                     .format("PEM")
///                     .key(StdFunctions.filebase64(Filebase64Args.builder()
///                         .input("test-fixtures/rsa_public.pem")
///                         .build()).result())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(defaultAuthority)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificateauthority:CaPool
///     properties:
///       location: us-central1
///       name: my-pool
///       tier: ENTERPRISE
///   defaultAuthority:
///     type: gcp:certificateauthority:Authority
///     name: default
///     properties:
///       location: us-central1
///       pool: ${default.name}
///       certificateAuthorityId: my-authority
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
///               digitalSignature: true
///               certSign: true
///               crlSign: true
///             extendedKeyUsage:
///               serverAuth: true
///       lifetime: 86400s
///       keySpec:
///         algorithm: RSA_PKCS1_4096_SHA256
///       deletionProtection: false
///       skipGracePeriod: true
///       ignoreActiveCertificatesOnDeletion: true
///   defaultCertificate:
///     type: gcp:certificateauthority:Certificate
///     name: default
///     properties:
///       location: us-central1
///       pool: ${default.name}
///       name: my-certificate
///       lifetime: 860s
///       config:
///         subjectConfig:
///           subject:
///             commonName: san1.example.com
///             countryCode: us
///             organization: google
///             organizationalUnit: enterprise
///             locality: mountain view
///             province: california
///             streetAddress: 1600 amphitheatre parkway
///             postalCode: '94109'
///         subjectKeyId:
///           keyId: 4cf3372289b1d411b999dbb9ebcd44744b6b2fca
///         x509Config:
///           caOptions:
///             isCa: false
///           keyUsage:
///             baseKeyUsage:
///               crlSign: true
///             extendedKeyUsage:
///               serverAuth: true
///         publicKey:
///           format: PEM
///           key:
///             fn::invoke:
///               function: std:filebase64
///               arguments:
///                 input: test-fixtures/rsa_public.pem
///               return: result
///     options:
///       dependsOn:
///         - ${defaultAuthority}
/// ```
///
///
/// ## Import
///
/// Certificate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/caPools/{{pool}}/certificates/{{name}}`
///
/// * `{{project}}/{{location}}/{{pool}}/{{name}}`
///
/// * `{{location}}/{{pool}}/{{name}}`
///
/// When using the `pulumi import` command, Certificate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/certificate:Certificate default projects/{{project}}/locations/{{location}}/caPools/{{pool}}/certificates/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/certificate:Certificate default {{project}}/{{location}}/{{pool}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/certificate:Certificate default {{location}}/{{pool}}/{{name}}
/// ```
class Certificate extends pulumi.CustomResource {
  /// The Certificate Authority ID that should issue the certificate. For example, to issue a Certificate from
  /// a Certificate Authority with resource name `projects/my-project/locations/us-central1/caPools/my-pool/certificateAuthorities/my-ca`,
  /// argument `pool` should be set to `projects/my-project/locations/us-central1/caPools/my-pool`, argument `certificate_authority`
  /// should be set to `my-ca`.
  late final pulumi.Output<String?> certificateAuthority;

  /// Output only. Details regarding the revocation of this Certificate. This Certificate is considered revoked if and only if this field is present.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> certificateDescriptions;

  /// The resource name for a CertificateTemplate used to issue this certificate,
  /// in the format `projects/*/locations/*/certificateTemplates/*`. If this is specified,
  /// the caller must have the necessary permission to use this template. If this is
  /// omitted, no template will be used. This template must be in the same location
  /// as the Certificate.
  late final pulumi.Output<String?> certificateTemplate;

  /// The config used to create a self-signed X.509 certificate or CSR.
  /// Structure is documented below.
  late final pulumi.Output<CertificateConfig?> config;

  /// The time that this resource was created on the server.
  /// This is in RFC3339 text format.
  late final pulumi.Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The resource name of the issuing CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.
  late final pulumi.Output<String> issuerCertificateAuthority;

  /// Labels with user-defined metadata to apply to this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The desired lifetime of the CA certificate. Used to create the "notBeforeTime" and
  /// "notAfterTime" fields inside an X.509 certificate. A duration in seconds with up to nine
  /// fractional digits, terminated by 's'. Example: "3.5s".
  late final pulumi.Output<String?> lifetime;

  /// Location of the Certificate. A full list of valid locations can be found by
  /// running `gcloud privateca locations list`.
  late final pulumi.Output<String> location;

  /// The name for this Certificate.
  late final pulumi.Output<String> name;

  /// Output only. The pem-encoded, signed X.509 certificate.
  late final pulumi.Output<String> pemCertificate;

  /// The chain that may be used to verify the X.509 certificate. Expected to be in issuer-to-root order according to RFC 5246.
  late final pulumi.Output<List<String>> pemCertificateChains;

  /// Immutable. A pem-encoded X.509 certificate signing request (CSR).
  late final pulumi.Output<String?> pemCsr;

  /// The name of the CaPool this Certificate belongs to.
  late final pulumi.Output<String> pool;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Output only. Details regarding the revocation of this Certificate. This Certificate is
  /// considered revoked if and only if this field is present.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> revocationDetails;

  /// Output only. The time at which this CertificateAuthority was updated.
  /// This is in RFC3339 text format.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_certificateauthority_certificate_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:certificateauthority/certificate:Certificate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    certificateAuthority = registerOutput<String?>('certificateAuthority');
    certificateDescriptions = registerOutput<List<Map<String, dynamic>>>(
      'certificateDescriptions',
    );
    certificateTemplate = registerOutput<String?>('certificateTemplate');
    config = registerOutput<CertificateConfig?>(
      'config',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CertificateConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createTime = registerOutput<String>('createTime');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    issuerCertificateAuthority = registerOutput<String>(
      'issuerCertificateAuthority',
    );
    labels = registerOutput<Map<String, String>?>('labels');
    lifetime = registerOutput<String?>('lifetime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    pemCertificate = registerOutput<String>('pemCertificate');
    pemCertificateChains = registerOutput<List<String>>('pemCertificateChains');
    pemCsr = registerOutput<String?>('pemCsr');
    pool = registerOutput<String>('pool');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    revocationDetails = registerOutput<List<Map<String, dynamic>>>(
      'revocationDetails',
    );
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Certificate] resource's state with the given [name] and [id].
  static Certificate get(
    String name,
    pulumi.Input<String> id, {
    CertificateState? state,
  }) {
    return Certificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Certificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:certificateauthority/certificate:Certificate',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    certificateAuthority = registerOutput<String?>('certificateAuthority');
    certificateDescriptions = registerOutput<List<Map<String, dynamic>>>(
      'certificateDescriptions',
    );
    certificateTemplate = registerOutput<String?>('certificateTemplate');
    config = registerOutput<CertificateConfig?>(
      'config',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CertificateConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createTime = registerOutput<String>('createTime');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    issuerCertificateAuthority = registerOutput<String>(
      'issuerCertificateAuthority',
    );
    labels = registerOutput<Map<String, String>?>('labels');
    lifetime = registerOutput<String?>('lifetime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    pemCertificate = registerOutput<String>('pemCertificate');
    pemCertificateChains = registerOutput<List<String>>('pemCertificateChains');
    pemCsr = registerOutput<String?>('pemCsr');
    pool = registerOutput<String>('pool');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    revocationDetails = registerOutput<List<Map<String, dynamic>>>(
      'revocationDetails',
    );
    updateTime = registerOutput<String>('updateTime');
  }
}
