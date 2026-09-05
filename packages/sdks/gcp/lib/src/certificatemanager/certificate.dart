import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';
import 'certificate_managed.dart';
import 'certificate_self_managed.dart';
import 'certificate_state.dart';

/// Certificate represents a HTTP-reachable backend for a Certificate.
///
///
/// To get more information about Certificate, see:
///
/// * [API documentation](https://docs.cloud.google.com/certificate-manager/docs/reference/certificate-manager/rest/v1/projects.locations.certificates)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/certificate-manager/docs/certificates)
///
///
///
/// &gt; **Note:**  All arguments marked as write-only values will not be stored in the state: `self_managed.pem_private_key_wo`.
/// Read more about Write-only Arguments.
///
/// ## Example Usage
///
/// ### Certificate Manager Google Managed Certificate Dns
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.certificatemanager.DnsAuthorization("instance", {
///     name: "dns-auth",
///     description: "The default dnss",
///     domain: "subdomain.hashicorptest.com",
/// });
/// const instance2 = new gcp.certificatemanager.DnsAuthorization("instance2", {
///     name: "dns-auth2",
///     description: "The default dnss",
///     domain: "subdomain2.hashicorptest.com",
/// });
/// const _default = new gcp.certificatemanager.Certificate("default", {
///     name: "dns-cert",
///     description: "The default cert",
///     scope: "EDGE_CACHE",
///     labels: {
///         env: "test",
///     },
///     managed: {
///         domains: [
///             instance.domain,
///             instance2.domain,
///         ],
///         dnsAuthorizations: [
///             instance.id,
///             instance2.id,
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.certificatemanager.DnsAuthorization("instance",
///     name="dns-auth",
///     description="The default dnss",
///     domain="subdomain.hashicorptest.com")
/// instance2 = gcp.certificatemanager.DnsAuthorization("instance2",
///     name="dns-auth2",
///     description="The default dnss",
///     domain="subdomain2.hashicorptest.com")
/// default = gcp.certificatemanager.Certificate("default",
///     name="dns-cert",
///     description="The default cert",
///     scope="EDGE_CACHE",
///     labels={
///         "env": "test",
///     },
///     managed={
///         "domains": [
///             instance.domain,
///             instance2.domain,
///         ],
///         "dns_authorizations": [
///             instance.id,
///             instance2.id,
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
///     var instance = new Gcp.CertificateManager.DnsAuthorization("instance", new()
///     {
///         Name = "dns-auth",
///         Description = "The default dnss",
///         Domain = "subdomain.hashicorptest.com",
///     });
///
///     var instance2 = new Gcp.CertificateManager.DnsAuthorization("instance2", new()
///     {
///         Name = "dns-auth2",
///         Description = "The default dnss",
///         Domain = "subdomain2.hashicorptest.com",
///     });
///
///     var @default = new Gcp.CertificateManager.Certificate("default", new()
///     {
///         Name = "dns-cert",
///         Description = "The default cert",
///         Scope = "EDGE_CACHE",
///         Labels =
///         {
///             { "env", "test" },
///         },
///         Managed = new Gcp.CertificateManager.Inputs.CertificateManagedArgs
///         {
///             Domains = new[]
///             {
///                 instance.Domain,
///                 instance2.Domain,
///             },
///             DnsAuthorizations = new[]
///             {
///                 instance.Id,
///                 instance2.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := certificatemanager.NewDnsAuthorization(ctx, "instance", &certificatemanager.DnsAuthorizationArgs{
/// 			Name:        pulumi.String("dns-auth"),
/// 			Description: pulumi.String("The default dnss"),
/// 			Domain:      pulumi.String("subdomain.hashicorptest.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance2, err := certificatemanager.NewDnsAuthorization(ctx, "instance2", &certificatemanager.DnsAuthorizationArgs{
/// 			Name:        pulumi.String("dns-auth2"),
/// 			Description: pulumi.String("The default dnss"),
/// 			Domain:      pulumi.String("subdomain2.hashicorptest.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = certificatemanager.NewCertificate(ctx, "default", &certificatemanager.CertificateArgs{
/// 			Name:        pulumi.String("dns-cert"),
/// 			Description: pulumi.String("The default cert"),
/// 			Scope:       pulumi.String("EDGE_CACHE"),
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("test"),
/// 			},
/// 			Managed: &certificatemanager.CertificateManagedArgs{
/// 				Domains: pulumi.StringArray{
/// 					instance.Domain,
/// 					instance2.Domain,
/// 				},
/// 				DnsAuthorizations: pulumi.StringArray{
/// 					instance.ID().ToIDOutput().ToStringOutput(),
/// 					instance2.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_certificatemanager_certificate" "default" {
///   name        = "dns-cert"
///   description = "The default cert"
///   scope       = "EDGE_CACHE"
///   labels = {
///     "env" = "test"
///   }
///   managed = {
///     domains            = [gcp_certificatemanager_dnsauthorization.instance.domain, gcp_certificatemanager_dnsauthorization.instance2.domain]
///     dns_authorizations = [gcp_certificatemanager_dnsauthorization.instance.id, gcp_certificatemanager_dnsauthorization.instance2.id]
///   }
/// }
/// resource "gcp_certificatemanager_dnsauthorization" "instance" {
///   name        = "dns-auth"
///   description = "The default dnss"
///   domain      = "subdomain.hashicorptest.com"
/// }
/// resource "gcp_certificatemanager_dnsauthorization" "instance2" {
///   name        = "dns-auth2"
///   description = "The default dnss"
///   domain      = "subdomain2.hashicorptest.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificatemanager.DnsAuthorization;
/// import com.pulumi.gcp.certificatemanager.DnsAuthorizationArgs;
/// import com.pulumi.gcp.certificatemanager.Certificate;
/// import com.pulumi.gcp.certificatemanager.CertificateArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.CertificateManagedArgs;
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
///         var instance = new DnsAuthorization("instance", DnsAuthorizationArgs.builder()
///             .name("dns-auth")
///             .description("The default dnss")
///             .domain("subdomain.hashicorptest.com")
///             .build());
///
///         var instance2 = new DnsAuthorization("instance2", DnsAuthorizationArgs.builder()
///             .name("dns-auth2")
///             .description("The default dnss")
///             .domain("subdomain2.hashicorptest.com")
///             .build());
///
///         var default_ = new Certificate("default", CertificateArgs.builder()
///             .name("dns-cert")
///             .description("The default cert")
///             .scope("EDGE_CACHE")
///             .labels(Map.of("env", "test"))
///             .managed(CertificateManagedArgs.builder()
///                 .domains(
///                     instance.domain(),
///                     instance2.domain())
///                 .dnsAuthorizations(
///                     instance.id(),
///                     instance2.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificatemanager:Certificate
///     properties:
///       name: dns-cert
///       description: The default cert
///       scope: EDGE_CACHE
///       labels:
///         env: test
///       managed:
///         domains:
///           - ${instance.domain}
///           - ${instance2.domain}
///         dnsAuthorizations:
///           - ${instance.id}
///           - ${instance2.id}
///   instance:
///     type: gcp:certificatemanager:DnsAuthorization
///     properties:
///       name: dns-auth
///       description: The default dnss
///       domain: subdomain.hashicorptest.com
///   instance2:
///     type: gcp:certificatemanager:DnsAuthorization
///     properties:
///       name: dns-auth2
///       description: The default dnss
///       domain: subdomain2.hashicorptest.com
/// ```
///
/// ### Certificate Manager Google Managed Certificate Issuance Config
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
/// // creating certificate_issuance_config to use it in the managed certificate
/// const issuanceconfig = new gcp.certificatemanager.CertificateIssuanceConfig("issuanceconfig", {
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
/// }, {
///     dependsOn: [caAuthority],
/// });
/// const _default = new gcp.certificatemanager.Certificate("default", {
///     name: "issuance-config-cert",
///     description: "The default cert",
///     scope: "EDGE_CACHE",
///     managed: {
///         domains: ["terraform.subdomain1.com"],
///         issuanceConfig: issuanceconfig.id,
///     },
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
/// # creating certificate_issuance_config to use it in the managed certificate
/// issuanceconfig = gcp.certificatemanager.CertificateIssuanceConfig("issuanceconfig",
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
///     opts = pulumi.ResourceOptions(depends_on=[ca_authority]))
/// default = gcp.certificatemanager.Certificate("default",
///     name="issuance-config-cert",
///     description="The default cert",
///     scope="EDGE_CACHE",
///     managed={
///         "domains": ["terraform.subdomain1.com"],
///         "issuance_config": issuanceconfig.id,
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
///     // creating certificate_issuance_config to use it in the managed certificate
///     var issuanceconfig = new Gcp.CertificateManager.CertificateIssuanceConfig("issuanceconfig", new()
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
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             caAuthority,
///         },
///     });
///
///     var @default = new Gcp.CertificateManager.Certificate("default", new()
///     {
///         Name = "issuance-config-cert",
///         Description = "The default cert",
///         Scope = "EDGE_CACHE",
///         Managed = new Gcp.CertificateManager.Inputs.CertificateManagedArgs
///         {
///             Domains = new[]
///             {
///                 "terraform.subdomain1.com",
///             },
///             IssuanceConfig = issuanceconfig.Id,
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
/// 		// creating certificate_issuance_config to use it in the managed certificate
/// 		issuanceconfig, err := certificatemanager.NewCertificateIssuanceConfig(ctx, "issuanceconfig", &certificatemanager.CertificateIssuanceConfigArgs{
/// 			Name:        pulumi.String("issuance-config"),
/// 			Description: pulumi.String("sample description for the certificate issuanceConfigs"),
/// 			CertificateAuthorityConfig: &certificatemanager.CertificateIssuanceConfigCertificateAuthorityConfigArgs{
/// 				CertificateAuthorityServiceConfig: &certificatemanager.CertificateIssuanceConfigCertificateAuthorityConfigCertificateAuthorityServiceConfigArgs{
/// 					CaPool: pool.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			Lifetime:                 pulumi.String("1814400s"),
/// 			RotationWindowPercentage: pulumi.Int(34),
/// 			KeyAlgorithm:             pulumi.String("ECDSA_P256"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			caAuthority,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = certificatemanager.NewCertificate(ctx, "default", &certificatemanager.CertificateArgs{
/// 			Name:        pulumi.String("issuance-config-cert"),
/// 			Description: pulumi.String("The default cert"),
/// 			Scope:       pulumi.String("EDGE_CACHE"),
/// 			Managed: &certificatemanager.CertificateManagedArgs{
/// 				Domains: pulumi.StringArray{
/// 					pulumi.String("terraform.subdomain1.com"),
/// 				},
/// 				IssuanceConfig: issuanceconfig.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_certificatemanager_certificate" "default" {
///   name        = "issuance-config-cert"
///   description = "The default cert"
///   scope       = "EDGE_CACHE"
///   managed = {
///     domains         = ["terraform.subdomain1.com"]
///     issuance_config = gcp_certificatemanager_certificateissuanceconfig.issuanceconfig.id
///   }
/// }
/// # creating certificate_issuance_config to use it in the managed certificate
/// resource "gcp_certificatemanager_certificateissuanceconfig" "issuanceconfig" {
///   depends_on  = [gcp_certificateauthority_authority.ca_authority]
///   name        = "issuance-config"
///   description = "sample description for the certificate issuanceConfigs"
///   certificate_authority_config = {
///     certificate_authority_service_config = {
///       ca_pool = gcp_certificateauthority_capool.pool.id
///     }
///   }
///   lifetime                   = "1814400s"
///   rotation_window_percentage = 34
///   key_algorithm              = "ECDSA_P256"
/// }
/// resource "gcp_certificateauthority_capool" "pool" {
///   name     = "ca-pool"
///   location = "us-central1"
///   tier     = "ENTERPRISE"
/// }
/// resource "gcp_certificateauthority_authority" "ca_authority" {
///   location                 = "us-central1"
///   pool                     = gcp_certificateauthority_capool.pool.name
///   certificate_authority_id = "ca-authority"
///   config = {
///     subject_config = {
///       subject = {
///         organization = "HashiCorp"
///         common_name  = "my-certificate-authority"
///       }
///       subject_alt_name = {
///         dns_names = ["hashicorp.com"]
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
///         extended_key_usage = {
///           server_auth = true
///         }
///       }
///     }
///   }
///   key_spec = {
///     algorithm = "RSA_PKCS1_4096_SHA256"
///   }
///   deletion_protection                    = false
///   skip_grace_period                      = true
///   ignore_active_certificates_on_deletion = true
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
/// import com.pulumi.gcp.certificatemanager.Certificate;
/// import com.pulumi.gcp.certificatemanager.CertificateArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.CertificateManagedArgs;
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
///         // creating certificate_issuance_config to use it in the managed certificate
///         var issuanceconfig = new CertificateIssuanceConfig("issuanceconfig", CertificateIssuanceConfigArgs.builder()
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
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(caAuthority)
///                 .build());
///
///         var default_ = new Certificate("default", CertificateArgs.builder()
///             .name("issuance-config-cert")
///             .description("The default cert")
///             .scope("EDGE_CACHE")
///             .managed(CertificateManagedArgs.builder()
///                 .domains("terraform.subdomain1.com")
///                 .issuanceConfig(issuanceconfig.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificatemanager:Certificate
///     properties:
///       name: issuance-config-cert
///       description: The default cert
///       scope: EDGE_CACHE
///       managed:
///         domains:
///           - terraform.subdomain1.com
///         issuanceConfig: ${issuanceconfig.id}
///   # creating certificate_issuance_config to use it in the managed certificate
///   issuanceconfig:
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
/// ### Certificate Manager Self Managed Certificate
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const _default = new gcp.certificatemanager.Certificate("default", {
///     name: "self-managed-cert",
///     description: "Global cert",
///     scope: "ALL_REGIONS",
///     selfManaged: {
///         pemCertificate: std.file({
///             input: "test-fixtures/cert.pem",
///         }).then(invoke => invoke.result),
///         pemPrivateKey: std.file({
///             input: "test-fixtures/private-key.pem",
///         }).then(invoke => invoke.result),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default = gcp.certificatemanager.Certificate("default",
///     name="self-managed-cert",
///     description="Global cert",
///     scope="ALL_REGIONS",
///     self_managed={
///         "pem_certificate": std.file(input="test-fixtures/cert.pem").result,
///         "pem_private_key": std.file(input="test-fixtures/private-key.pem").result,
///     })
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
///     var @default = new Gcp.CertificateManager.Certificate("default", new()
///     {
///         Name = "self-managed-cert",
///         Description = "Global cert",
///         Scope = "ALL_REGIONS",
///         SelfManaged = new Gcp.CertificateManager.Inputs.CertificateSelfManagedArgs
///         {
///             PemCertificate = Std.File.Invoke(new()
///             {
///                 Input = "test-fixtures/cert.pem",
///             }).Apply(invoke => invoke.Result),
///             PemPrivateKey = Std.File.Invoke(new()
///             {
///                 Input = "test-fixtures/private-key.pem",
///             }).Apply(invoke => invoke.Result),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/private-key.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = certificatemanager.NewCertificate(ctx, "default", &certificatemanager.CertificateArgs{
/// 			Name:        pulumi.String("self-managed-cert"),
/// 			Description: pulumi.String("Global cert"),
/// 			Scope:       pulumi.String("ALL_REGIONS"),
/// 			SelfManaged: &certificatemanager.CertificateSelfManagedArgs{
/// 				PemCertificate: pulumi.String(invokeFile.Result),
/// 				PemPrivateKey:  pulumi.String(invokeFile1.Result),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_certificatemanager_certificate" "default" {
///   name        = "self-managed-cert"
///   description = "Global cert"
///   scope       = "ALL_REGIONS"
///   self_managed = {
///     pem_certificate = file("test-fixtures/cert.pem")
///     pem_private_key = file("test-fixtures/private-key.pem")
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificatemanager.Certificate;
/// import com.pulumi.gcp.certificatemanager.CertificateArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.CertificateSelfManagedArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var default_ = new Certificate("default", CertificateArgs.builder()
///             .name("self-managed-cert")
///             .description("Global cert")
///             .scope("ALL_REGIONS")
///             .selfManaged(CertificateSelfManagedArgs.builder()
///                 .pemCertificate(StdFunctions.file(FileArgs.builder()
///                     .input("test-fixtures/cert.pem")
///                     .build()).result())
///                 .pemPrivateKey(StdFunctions.file(FileArgs.builder()
///                     .input("test-fixtures/private-key.pem")
///                     .build()).result())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificatemanager:Certificate
///     properties:
///       name: self-managed-cert
///       description: Global cert
///       scope: ALL_REGIONS
///       selfManaged:
///         pemCertificate:
///           fn::invoke:
///             function: std:file
///             arguments:
///               input: test-fixtures/cert.pem
///             return: result
///         pemPrivateKey:
///           fn::invoke:
///             function: std:file
///             arguments:
///               input: test-fixtures/private-key.pem
///             return: result
/// ```
///
/// ### Certificate Manager Self Managed Certificate Write Only
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const _default = new gcp.certificatemanager.Certificate("default", {
///     name: "self-managed-cert",
///     description: "Global cert",
///     scope: "ALL_REGIONS",
///     selfManaged: {
///         pemCertificate: std.file({
///             input: "test-fixtures/cert.pem",
///         }).then(invoke => invoke.result),
///         pemPrivateKeyWo: std.file({
///             input: "test-fixtures/private-key.pem",
///         }).then(invoke => invoke.result),
///         pemPrivateKeyWoVersion: output(Promise.all([std.filesha256({
///             input: "test-fixtures/private-key.pem",
///         }).then(invoke => std.parseint({
///             input: invoke.result,
///             base: 16,
///         })), std.pow({
///             base: 2,
///             exponent: 32,
///         })]).then(([invoke, invoke1]) => invoke.result % invoke1.result)).apply(x =>String(x)),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default = gcp.certificatemanager.Certificate("default",
///     name="self-managed-cert",
///     description="Global cert",
///     scope="ALL_REGIONS",
///     self_managed={
///         "pem_certificate": std.file(input="test-fixtures/cert.pem").result,
///         "pem_private_key_wo": std.file(input="test-fixtures/private-key.pem").result,
///         "pem_private_key_wo_version": output(output(std.parseint(input=std.filesha256(input="test-fixtures/private-key.pem").result,
///             base=16).result).apply(lambda x: float(x)) % std.pow(base=2,
///             exponent=32).result).apply(lambda x: str(x)),
///     })
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
///     var @default = new Gcp.CertificateManager.Certificate("default", new()
///     {
///         Name = "self-managed-cert",
///         Description = "Global cert",
///         Scope = "ALL_REGIONS",
///         SelfManaged = new Gcp.CertificateManager.Inputs.CertificateSelfManagedArgs
///         {
///             PemCertificate = Std.File.Invoke(new()
///             {
///                 Input = "test-fixtures/cert.pem",
///             }).Apply(invoke => invoke.Result),
///             PemPrivateKeyWo = Std.File.Invoke(new()
///             {
///                 Input = "test-fixtures/private-key.pem",
///             }).Apply(invoke => invoke.Result),
///             PemPrivateKeyWoVersion = Output.Create(Output.Tuple(Std.Filesha256.Invoke(new()
///             {
///                 Input = "test-fixtures/private-key.pem",
///             }).Apply(invoke => Std.Parseint.Invoke(new()
///             {
///                 Input = invoke.Result,
///                 Base = 16,
///             })), Std.Pow.Invoke(new()
///             {
///                 Base = 2.0,
///                 Exponent = 32.0,
///             })).Apply(values =>
///             {
///                 var invoke = values.Item1;
///                 var invoke1 = values.Item2;
///                 return (double)invoke.Result % invoke1.Result;
///             })).Apply(x => x.ToString(System.Globalization.CultureInfo.InvariantCulture)),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/private-key.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeParseint2, err := std.Parseint(ctx, &std.ParseintArgs{
/// 			Input: std.Filesha256(ctx, std.Filesha256Args{
/// 				Input: "test-fixtures/private-key.pem",
/// 			}, nil).Result,
/// 			Base: pulumi.IntRef(16),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokePow3, err := std.Pow(ctx, &std.PowArgs{
/// 			Base:     2,
/// 			Exponent: 32,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = certificatemanager.NewCertificate(ctx, "default", &certificatemanager.CertificateArgs{
/// 			Name:        pulumi.String("self-managed-cert"),
/// 			Description: pulumi.String("Global cert"),
/// 			Scope:       pulumi.String("ALL_REGIONS"),
/// 			SelfManaged: &certificatemanager.CertificateSelfManagedArgs{
/// 				PemCertificate:         pulumi.String(invokeFile.Result),
/// 				PemPrivateKeyWo:        pulumi.String(invokeFile1.Result),
/// 				PemPrivateKeyWoVersion: pulumi.String(pulumi.Float64(invokeParseint2.Result) % pulumi.Float64(invokePow3.Result)),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_certificatemanager_certificate" "default" {
///   name        = "self-managed-cert"
///   description = "Global cert"
///   scope       = "ALL_REGIONS"
///   self_managed = {
///     pem_certificate            = file("test-fixtures/cert.pem")
///     pem_private_key_wo         = file("test-fixtures/private-key.pem")
///     pem_private_key_wo_version = parseint(filesha256("test-fixtures/private-key.pem"), 16) % pow(2, 32)
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificatemanager.Certificate;
/// import com.pulumi.gcp.certificatemanager.CertificateArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.CertificateSelfManagedArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.std.inputs.Filesha256Args;
/// import com.pulumi.std.inputs.ParseintArgs;
/// import com.pulumi.std.inputs.PowArgs;
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
///         var default_ = new Certificate("default", CertificateArgs.builder()
///             .name("self-managed-cert")
///             .description("Global cert")
///             .scope("ALL_REGIONS")
///             .selfManaged(CertificateSelfManagedArgs.builder()
///                 .pemCertificate(StdFunctions.file(FileArgs.builder()
///                     .input("test-fixtures/cert.pem")
///                     .build()).result())
///                 .pemPrivateKeyWo(StdFunctions.file(FileArgs.builder()
///                     .input("test-fixtures/private-key.pem")
///                     .build()).result())
///                 .pemPrivateKeyWoVersion(Output.tuple(StdFunctions.parseint(ParseintArgs.builder()
///                     .input(StdFunctions.filesha256(Filesha256Args.builder()
///                         .input("test-fixtures/private-key.pem")
///                         .build()).result())
///                     .base(16)
///                     .build()).result(), StdFunctions.pow(PowArgs.builder()
///                     .base(2.0)
///                     .exponent(32.0)
///                     .build()).result()).applyValue(values -> {
///                     var __convert = values.t1;
///                     var __convert1 = values.t2;
///                     return __convert % __convert1;
///                 }))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
///
/// ### Certificate Manager Self Managed Certificate Regional
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const _default = new gcp.certificatemanager.Certificate("default", {
///     name: "self-managed-cert",
///     description: "Regional cert",
///     location: "us-central1",
///     selfManaged: {
///         pemCertificate: std.file({
///             input: "test-fixtures/cert.pem",
///         }).then(invoke => invoke.result),
///         pemPrivateKey: std.file({
///             input: "test-fixtures/private-key.pem",
///         }).then(invoke => invoke.result),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default = gcp.certificatemanager.Certificate("default",
///     name="self-managed-cert",
///     description="Regional cert",
///     location="us-central1",
///     self_managed={
///         "pem_certificate": std.file(input="test-fixtures/cert.pem").result,
///         "pem_private_key": std.file(input="test-fixtures/private-key.pem").result,
///     })
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
///     var @default = new Gcp.CertificateManager.Certificate("default", new()
///     {
///         Name = "self-managed-cert",
///         Description = "Regional cert",
///         Location = "us-central1",
///         SelfManaged = new Gcp.CertificateManager.Inputs.CertificateSelfManagedArgs
///         {
///             PemCertificate = Std.File.Invoke(new()
///             {
///                 Input = "test-fixtures/cert.pem",
///             }).Apply(invoke => invoke.Result),
///             PemPrivateKey = Std.File.Invoke(new()
///             {
///                 Input = "test-fixtures/private-key.pem",
///             }).Apply(invoke => invoke.Result),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/private-key.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = certificatemanager.NewCertificate(ctx, "default", &certificatemanager.CertificateArgs{
/// 			Name:        pulumi.String("self-managed-cert"),
/// 			Description: pulumi.String("Regional cert"),
/// 			Location:    pulumi.String("us-central1"),
/// 			SelfManaged: &certificatemanager.CertificateSelfManagedArgs{
/// 				PemCertificate: pulumi.String(invokeFile.Result),
/// 				PemPrivateKey:  pulumi.String(invokeFile1.Result),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_certificatemanager_certificate" "default" {
///   name        = "self-managed-cert"
///   description = "Regional cert"
///   location    = "us-central1"
///   self_managed = {
///     pem_certificate = file("test-fixtures/cert.pem")
///     pem_private_key = file("test-fixtures/private-key.pem")
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificatemanager.Certificate;
/// import com.pulumi.gcp.certificatemanager.CertificateArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.CertificateSelfManagedArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var default_ = new Certificate("default", CertificateArgs.builder()
///             .name("self-managed-cert")
///             .description("Regional cert")
///             .location("us-central1")
///             .selfManaged(CertificateSelfManagedArgs.builder()
///                 .pemCertificate(StdFunctions.file(FileArgs.builder()
///                     .input("test-fixtures/cert.pem")
///                     .build()).result())
///                 .pemPrivateKey(StdFunctions.file(FileArgs.builder()
///                     .input("test-fixtures/private-key.pem")
///                     .build()).result())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificatemanager:Certificate
///     properties:
///       name: self-managed-cert
///       description: Regional cert
///       location: us-central1
///       selfManaged:
///         pemCertificate:
///           fn::invoke:
///             function: std:file
///             arguments:
///               input: test-fixtures/cert.pem
///             return: result
///         pemPrivateKey:
///           fn::invoke:
///             function: std:file
///             arguments:
///               input: test-fixtures/private-key.pem
///             return: result
/// ```
///
/// ### Certificate Manager Google Managed Certificate Issuance Config All Regions
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
/// // creating certificate_issuance_config to use it in the managed certificate
/// const issuanceconfig = new gcp.certificatemanager.CertificateIssuanceConfig("issuanceconfig", {
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
/// }, {
///     dependsOn: [caAuthority],
/// });
/// const _default = new gcp.certificatemanager.Certificate("default", {
///     name: "issuance-config-cert",
///     description: "sample google managed all_regions certificate with issuance config for terraform",
///     scope: "ALL_REGIONS",
///     managed: {
///         domains: ["terraform.subdomain1.com"],
///         issuanceConfig: issuanceconfig.id,
///     },
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
/// # creating certificate_issuance_config to use it in the managed certificate
/// issuanceconfig = gcp.certificatemanager.CertificateIssuanceConfig("issuanceconfig",
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
///     opts = pulumi.ResourceOptions(depends_on=[ca_authority]))
/// default = gcp.certificatemanager.Certificate("default",
///     name="issuance-config-cert",
///     description="sample google managed all_regions certificate with issuance config for terraform",
///     scope="ALL_REGIONS",
///     managed={
///         "domains": ["terraform.subdomain1.com"],
///         "issuance_config": issuanceconfig.id,
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
///     // creating certificate_issuance_config to use it in the managed certificate
///     var issuanceconfig = new Gcp.CertificateManager.CertificateIssuanceConfig("issuanceconfig", new()
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
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             caAuthority,
///         },
///     });
///
///     var @default = new Gcp.CertificateManager.Certificate("default", new()
///     {
///         Name = "issuance-config-cert",
///         Description = "sample google managed all_regions certificate with issuance config for terraform",
///         Scope = "ALL_REGIONS",
///         Managed = new Gcp.CertificateManager.Inputs.CertificateManagedArgs
///         {
///             Domains = new[]
///             {
///                 "terraform.subdomain1.com",
///             },
///             IssuanceConfig = issuanceconfig.Id,
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
/// 		// creating certificate_issuance_config to use it in the managed certificate
/// 		issuanceconfig, err := certificatemanager.NewCertificateIssuanceConfig(ctx, "issuanceconfig", &certificatemanager.CertificateIssuanceConfigArgs{
/// 			Name:        pulumi.String("issuance-config"),
/// 			Description: pulumi.String("sample description for the certificate issuanceConfigs"),
/// 			CertificateAuthorityConfig: &certificatemanager.CertificateIssuanceConfigCertificateAuthorityConfigArgs{
/// 				CertificateAuthorityServiceConfig: &certificatemanager.CertificateIssuanceConfigCertificateAuthorityConfigCertificateAuthorityServiceConfigArgs{
/// 					CaPool: pool.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			Lifetime:                 pulumi.String("1814400s"),
/// 			RotationWindowPercentage: pulumi.Int(34),
/// 			KeyAlgorithm:             pulumi.String("ECDSA_P256"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			caAuthority,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = certificatemanager.NewCertificate(ctx, "default", &certificatemanager.CertificateArgs{
/// 			Name:        pulumi.String("issuance-config-cert"),
/// 			Description: pulumi.String("sample google managed all_regions certificate with issuance config for terraform"),
/// 			Scope:       pulumi.String("ALL_REGIONS"),
/// 			Managed: &certificatemanager.CertificateManagedArgs{
/// 				Domains: pulumi.StringArray{
/// 					pulumi.String("terraform.subdomain1.com"),
/// 				},
/// 				IssuanceConfig: issuanceconfig.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_certificatemanager_certificate" "default" {
///   name        = "issuance-config-cert"
///   description = "sample google managed all_regions certificate with issuance config for terraform"
///   scope       = "ALL_REGIONS"
///   managed = {
///     domains         = ["terraform.subdomain1.com"]
///     issuance_config = gcp_certificatemanager_certificateissuanceconfig.issuanceconfig.id
///   }
/// }
/// # creating certificate_issuance_config to use it in the managed certificate
/// resource "gcp_certificatemanager_certificateissuanceconfig" "issuanceconfig" {
///   depends_on  = [gcp_certificateauthority_authority.ca_authority]
///   name        = "issuance-config"
///   description = "sample description for the certificate issuanceConfigs"
///   certificate_authority_config = {
///     certificate_authority_service_config = {
///       ca_pool = gcp_certificateauthority_capool.pool.id
///     }
///   }
///   lifetime                   = "1814400s"
///   rotation_window_percentage = 34
///   key_algorithm              = "ECDSA_P256"
/// }
/// resource "gcp_certificateauthority_capool" "pool" {
///   name     = "ca-pool"
///   location = "us-central1"
///   tier     = "ENTERPRISE"
/// }
/// resource "gcp_certificateauthority_authority" "ca_authority" {
///   location                 = "us-central1"
///   pool                     = gcp_certificateauthority_capool.pool.name
///   certificate_authority_id = "ca-authority"
///   config = {
///     subject_config = {
///       subject = {
///         organization = "HashiCorp"
///         common_name  = "my-certificate-authority"
///       }
///       subject_alt_name = {
///         dns_names = ["hashicorp.com"]
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
///         extended_key_usage = {
///           server_auth = true
///         }
///       }
///     }
///   }
///   key_spec = {
///     algorithm = "RSA_PKCS1_4096_SHA256"
///   }
///   deletion_protection                    = false
///   skip_grace_period                      = true
///   ignore_active_certificates_on_deletion = true
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
/// import com.pulumi.gcp.certificatemanager.Certificate;
/// import com.pulumi.gcp.certificatemanager.CertificateArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.CertificateManagedArgs;
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
///         // creating certificate_issuance_config to use it in the managed certificate
///         var issuanceconfig = new CertificateIssuanceConfig("issuanceconfig", CertificateIssuanceConfigArgs.builder()
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
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(caAuthority)
///                 .build());
///
///         var default_ = new Certificate("default", CertificateArgs.builder()
///             .name("issuance-config-cert")
///             .description("sample google managed all_regions certificate with issuance config for terraform")
///             .scope("ALL_REGIONS")
///             .managed(CertificateManagedArgs.builder()
///                 .domains("terraform.subdomain1.com")
///                 .issuanceConfig(issuanceconfig.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificatemanager:Certificate
///     properties:
///       name: issuance-config-cert
///       description: sample google managed all_regions certificate with issuance config for terraform
///       scope: ALL_REGIONS
///       managed:
///         domains:
///           - terraform.subdomain1.com
///         issuanceConfig: ${issuanceconfig.id}
///   # creating certificate_issuance_config to use it in the managed certificate
///   issuanceconfig:
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
/// ### Certificate Manager Google Managed Certificate Dns All Regions
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.certificatemanager.DnsAuthorization("instance", {
///     name: "dns-auth",
///     description: "The default dnss",
///     domain: "subdomain.hashicorptest.com",
/// });
/// const instance2 = new gcp.certificatemanager.DnsAuthorization("instance2", {
///     name: "dns-auth2",
///     description: "The default dnss",
///     domain: "subdomain2.hashicorptest.com",
/// });
/// const _default = new gcp.certificatemanager.Certificate("default", {
///     name: "dns-cert",
///     description: "The default cert",
///     scope: "ALL_REGIONS",
///     managed: {
///         domains: [
///             instance.domain,
///             instance2.domain,
///         ],
///         dnsAuthorizations: [
///             instance.id,
///             instance2.id,
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.certificatemanager.DnsAuthorization("instance",
///     name="dns-auth",
///     description="The default dnss",
///     domain="subdomain.hashicorptest.com")
/// instance2 = gcp.certificatemanager.DnsAuthorization("instance2",
///     name="dns-auth2",
///     description="The default dnss",
///     domain="subdomain2.hashicorptest.com")
/// default = gcp.certificatemanager.Certificate("default",
///     name="dns-cert",
///     description="The default cert",
///     scope="ALL_REGIONS",
///     managed={
///         "domains": [
///             instance.domain,
///             instance2.domain,
///         ],
///         "dns_authorizations": [
///             instance.id,
///             instance2.id,
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
///     var instance = new Gcp.CertificateManager.DnsAuthorization("instance", new()
///     {
///         Name = "dns-auth",
///         Description = "The default dnss",
///         Domain = "subdomain.hashicorptest.com",
///     });
///
///     var instance2 = new Gcp.CertificateManager.DnsAuthorization("instance2", new()
///     {
///         Name = "dns-auth2",
///         Description = "The default dnss",
///         Domain = "subdomain2.hashicorptest.com",
///     });
///
///     var @default = new Gcp.CertificateManager.Certificate("default", new()
///     {
///         Name = "dns-cert",
///         Description = "The default cert",
///         Scope = "ALL_REGIONS",
///         Managed = new Gcp.CertificateManager.Inputs.CertificateManagedArgs
///         {
///             Domains = new[]
///             {
///                 instance.Domain,
///                 instance2.Domain,
///             },
///             DnsAuthorizations = new[]
///             {
///                 instance.Id,
///                 instance2.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := certificatemanager.NewDnsAuthorization(ctx, "instance", &certificatemanager.DnsAuthorizationArgs{
/// 			Name:        pulumi.String("dns-auth"),
/// 			Description: pulumi.String("The default dnss"),
/// 			Domain:      pulumi.String("subdomain.hashicorptest.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance2, err := certificatemanager.NewDnsAuthorization(ctx, "instance2", &certificatemanager.DnsAuthorizationArgs{
/// 			Name:        pulumi.String("dns-auth2"),
/// 			Description: pulumi.String("The default dnss"),
/// 			Domain:      pulumi.String("subdomain2.hashicorptest.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = certificatemanager.NewCertificate(ctx, "default", &certificatemanager.CertificateArgs{
/// 			Name:        pulumi.String("dns-cert"),
/// 			Description: pulumi.String("The default cert"),
/// 			Scope:       pulumi.String("ALL_REGIONS"),
/// 			Managed: &certificatemanager.CertificateManagedArgs{
/// 				Domains: pulumi.StringArray{
/// 					instance.Domain,
/// 					instance2.Domain,
/// 				},
/// 				DnsAuthorizations: pulumi.StringArray{
/// 					instance.ID().ToIDOutput().ToStringOutput(),
/// 					instance2.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_certificatemanager_certificate" "default" {
///   name        = "dns-cert"
///   description = "The default cert"
///   scope       = "ALL_REGIONS"
///   managed = {
///     domains            = [gcp_certificatemanager_dnsauthorization.instance.domain, gcp_certificatemanager_dnsauthorization.instance2.domain]
///     dns_authorizations = [gcp_certificatemanager_dnsauthorization.instance.id, gcp_certificatemanager_dnsauthorization.instance2.id]
///   }
/// }
/// resource "gcp_certificatemanager_dnsauthorization" "instance" {
///   name        = "dns-auth"
///   description = "The default dnss"
///   domain      = "subdomain.hashicorptest.com"
/// }
/// resource "gcp_certificatemanager_dnsauthorization" "instance2" {
///   name        = "dns-auth2"
///   description = "The default dnss"
///   domain      = "subdomain2.hashicorptest.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificatemanager.DnsAuthorization;
/// import com.pulumi.gcp.certificatemanager.DnsAuthorizationArgs;
/// import com.pulumi.gcp.certificatemanager.Certificate;
/// import com.pulumi.gcp.certificatemanager.CertificateArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.CertificateManagedArgs;
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
///         var instance = new DnsAuthorization("instance", DnsAuthorizationArgs.builder()
///             .name("dns-auth")
///             .description("The default dnss")
///             .domain("subdomain.hashicorptest.com")
///             .build());
///
///         var instance2 = new DnsAuthorization("instance2", DnsAuthorizationArgs.builder()
///             .name("dns-auth2")
///             .description("The default dnss")
///             .domain("subdomain2.hashicorptest.com")
///             .build());
///
///         var default_ = new Certificate("default", CertificateArgs.builder()
///             .name("dns-cert")
///             .description("The default cert")
///             .scope("ALL_REGIONS")
///             .managed(CertificateManagedArgs.builder()
///                 .domains(
///                     instance.domain(),
///                     instance2.domain())
///                 .dnsAuthorizations(
///                     instance.id(),
///                     instance2.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificatemanager:Certificate
///     properties:
///       name: dns-cert
///       description: The default cert
///       scope: ALL_REGIONS
///       managed:
///         domains:
///           - ${instance.domain}
///           - ${instance2.domain}
///         dnsAuthorizations:
///           - ${instance.id}
///           - ${instance2.id}
///   instance:
///     type: gcp:certificatemanager:DnsAuthorization
///     properties:
///       name: dns-auth
///       description: The default dnss
///       domain: subdomain.hashicorptest.com
///   instance2:
///     type: gcp:certificatemanager:DnsAuthorization
///     properties:
///       name: dns-auth2
///       description: The default dnss
///       domain: subdomain2.hashicorptest.com
/// ```
///
/// ### Certificate Manager Google Managed Regional Certificate Dns Auth
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.certificatemanager.DnsAuthorization("instance", {
///     name: "dns-auth",
///     location: "us-central1",
///     description: "The default dnss",
///     domain: "subdomain.hashicorptest.com",
/// });
/// const _default = new gcp.certificatemanager.Certificate("default", {
///     name: "dns-cert",
///     description: "regional managed certs",
///     location: "us-central1",
///     managed: {
///         domains: [instance.domain],
///         dnsAuthorizations: [instance.id],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.certificatemanager.DnsAuthorization("instance",
///     name="dns-auth",
///     location="us-central1",
///     description="The default dnss",
///     domain="subdomain.hashicorptest.com")
/// default = gcp.certificatemanager.Certificate("default",
///     name="dns-cert",
///     description="regional managed certs",
///     location="us-central1",
///     managed={
///         "domains": [instance.domain],
///         "dns_authorizations": [instance.id],
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
///     var instance = new Gcp.CertificateManager.DnsAuthorization("instance", new()
///     {
///         Name = "dns-auth",
///         Location = "us-central1",
///         Description = "The default dnss",
///         Domain = "subdomain.hashicorptest.com",
///     });
///
///     var @default = new Gcp.CertificateManager.Certificate("default", new()
///     {
///         Name = "dns-cert",
///         Description = "regional managed certs",
///         Location = "us-central1",
///         Managed = new Gcp.CertificateManager.Inputs.CertificateManagedArgs
///         {
///             Domains = new[]
///             {
///                 instance.Domain,
///             },
///             DnsAuthorizations = new[]
///             {
///                 instance.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := certificatemanager.NewDnsAuthorization(ctx, "instance", &certificatemanager.DnsAuthorizationArgs{
/// 			Name:        pulumi.String("dns-auth"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("The default dnss"),
/// 			Domain:      pulumi.String("subdomain.hashicorptest.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = certificatemanager.NewCertificate(ctx, "default", &certificatemanager.CertificateArgs{
/// 			Name:        pulumi.String("dns-cert"),
/// 			Description: pulumi.String("regional managed certs"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Managed: &certificatemanager.CertificateManagedArgs{
/// 				Domains: pulumi.StringArray{
/// 					instance.Domain,
/// 				},
/// 				DnsAuthorizations: pulumi.StringArray{
/// 					instance.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_certificatemanager_certificate" "default" {
///   name        = "dns-cert"
///   description = "regional managed certs"
///   location    = "us-central1"
///   managed = {
///     domains            = [gcp_certificatemanager_dnsauthorization.instance.domain]
///     dns_authorizations = [gcp_certificatemanager_dnsauthorization.instance.id]
///   }
/// }
/// resource "gcp_certificatemanager_dnsauthorization" "instance" {
///   name        = "dns-auth"
///   location    = "us-central1"
///   description = "The default dnss"
///   domain      = "subdomain.hashicorptest.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificatemanager.DnsAuthorization;
/// import com.pulumi.gcp.certificatemanager.DnsAuthorizationArgs;
/// import com.pulumi.gcp.certificatemanager.Certificate;
/// import com.pulumi.gcp.certificatemanager.CertificateArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.CertificateManagedArgs;
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
///         var instance = new DnsAuthorization("instance", DnsAuthorizationArgs.builder()
///             .name("dns-auth")
///             .location("us-central1")
///             .description("The default dnss")
///             .domain("subdomain.hashicorptest.com")
///             .build());
///
///         var default_ = new Certificate("default", CertificateArgs.builder()
///             .name("dns-cert")
///             .description("regional managed certs")
///             .location("us-central1")
///             .managed(CertificateManagedArgs.builder()
///                 .domains(instance.domain())
///                 .dnsAuthorizations(instance.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificatemanager:Certificate
///     properties:
///       name: dns-cert
///       description: regional managed certs
///       location: us-central1
///       managed:
///         domains:
///           - ${instance.domain}
///         dnsAuthorizations:
///           - ${instance.id}
///   instance:
///     type: gcp:certificatemanager:DnsAuthorization
///     properties:
///       name: dns-auth
///       location: us-central1
///       description: The default dnss
///       domain: subdomain.hashicorptest.com
/// ```
///
/// ### Certificate Manager Client Auth Certificate
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const _default = new gcp.certificatemanager.Certificate("default", {
///     name: "client-auth-cert",
///     description: "Global cert",
///     scope: "CLIENT_AUTH",
///     selfManaged: {
///         pemCertificate: std.file({
///             input: "test-fixtures/cert.pem",
///         }).then(invoke => invoke.result),
///         pemPrivateKey: std.file({
///             input: "test-fixtures/private-key.pem",
///         }).then(invoke => invoke.result),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default = gcp.certificatemanager.Certificate("default",
///     name="client-auth-cert",
///     description="Global cert",
///     scope="CLIENT_AUTH",
///     self_managed={
///         "pem_certificate": std.file(input="test-fixtures/cert.pem").result,
///         "pem_private_key": std.file(input="test-fixtures/private-key.pem").result,
///     })
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
///     var @default = new Gcp.CertificateManager.Certificate("default", new()
///     {
///         Name = "client-auth-cert",
///         Description = "Global cert",
///         Scope = "CLIENT_AUTH",
///         SelfManaged = new Gcp.CertificateManager.Inputs.CertificateSelfManagedArgs
///         {
///             PemCertificate = Std.File.Invoke(new()
///             {
///                 Input = "test-fixtures/cert.pem",
///             }).Apply(invoke => invoke.Result),
///             PemPrivateKey = Std.File.Invoke(new()
///             {
///                 Input = "test-fixtures/private-key.pem",
///             }).Apply(invoke => invoke.Result),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/private-key.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = certificatemanager.NewCertificate(ctx, "default", &certificatemanager.CertificateArgs{
/// 			Name:        pulumi.String("client-auth-cert"),
/// 			Description: pulumi.String("Global cert"),
/// 			Scope:       pulumi.String("CLIENT_AUTH"),
/// 			SelfManaged: &certificatemanager.CertificateSelfManagedArgs{
/// 				PemCertificate: pulumi.String(invokeFile.Result),
/// 				PemPrivateKey:  pulumi.String(invokeFile1.Result),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_certificatemanager_certificate" "default" {
///   name        = "client-auth-cert"
///   description = "Global cert"
///   scope       = "CLIENT_AUTH"
///   self_managed = {
///     pem_certificate = file("test-fixtures/cert.pem")
///     pem_private_key = file("test-fixtures/private-key.pem")
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificatemanager.Certificate;
/// import com.pulumi.gcp.certificatemanager.CertificateArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.CertificateSelfManagedArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var default_ = new Certificate("default", CertificateArgs.builder()
///             .name("client-auth-cert")
///             .description("Global cert")
///             .scope("CLIENT_AUTH")
///             .selfManaged(CertificateSelfManagedArgs.builder()
///                 .pemCertificate(StdFunctions.file(FileArgs.builder()
///                     .input("test-fixtures/cert.pem")
///                     .build()).result())
///                 .pemPrivateKey(StdFunctions.file(FileArgs.builder()
///                     .input("test-fixtures/private-key.pem")
///                     .build()).result())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificatemanager:Certificate
///     properties:
///       name: client-auth-cert
///       description: Global cert
///       scope: CLIENT_AUTH
///       selfManaged:
///         pemCertificate:
///           fn::invoke:
///             function: std:file
///             arguments:
///               input: test-fixtures/cert.pem
///             return: result
///         pemPrivateKey:
///           fn::invoke:
///             function: std:file
///             arguments:
///               input: test-fixtures/private-key.pem
///             return: result
/// ```
///
///
/// ## Import
///
/// Certificate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/certificates/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Certificate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/certificate:Certificate default projects/{{project}}/locations/{{location}}/certificates/{{name}}
/// $ pulumi import gcp:certificatemanager/certificate:Certificate default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:certificatemanager/certificate:Certificate default {{location}}/{{name}}
/// ```
class Certificate extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A human-readable description of the resource.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Set of label tags associated with the Certificate resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The Certificate Manager location. If not specified, "global" is used.
  late final pulumi.Output<String?> location;
  /// Configuration and state of a Managed Certificate.
  /// Certificate Manager provisions and renews Managed Certificates
  /// automatically, for as long as it's authorized to do so.
  /// Structure is documented below.
  late final pulumi.Output<CertificateManaged?> managed;
  /// A user-defined name of the certificate. Certificate names must be unique
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The list of Subject Alternative Names of dnsName type defined in the certificate (see RFC 5280 4.2.1.6)
  late final pulumi.Output<List<String>> sanDnsnames;
  /// The scope of the certificate.
  /// DEFAULT: Certificates with default scope are served from core Google data centers.
  /// If unsure, choose this option.
  /// EDGE_CACHE: Certificates with scope EDGE_CACHE are special-purposed certificates, served from Edge Points of Presence.
  /// See https://cloud.google.com/vpc/docs/edge-locations.
  /// ALL_REGIONS: Certificates with ALL_REGIONS scope are served from all GCP regions (You can only use ALL_REGIONS with global certs).
  /// See https://cloud.google.com/compute/docs/regions-zones.
  /// CLIENT_AUTH: Certificates with CLIENT_AUTH scope are used by a load balancer (TLS client) to be presented to the backend (TLS server) when backend mTLS is configured.
  /// See https://cloud.google.com/load-balancing/docs/backend-authenticated-tls-backend-mtls#client-certificate.
  late final pulumi.Output<String?> scope;
  /// Certificate data for a SelfManaged Certificate.
  /// SelfManaged Certificates are uploaded by the user. Updating such
  /// certificates before they expire remains the user's responsibility.
  /// The certificate data can be updated in place; changes to `pemCertificate`
  /// and `pemPrivateKey` are applied via the API's PATCH method instead of
  /// forcing recreation of the certificate.
  /// Structure is documented below.
  late final pulumi.Output<CertificateSelfManaged?> selfManaged;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_certificatemanager_certificate_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:certificatemanager/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String?>('location');
    managed = registerOutput<CertificateManaged?>('managed', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CertificateManaged.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    sanDnsnames = registerOutput<List<String>>('sanDnsnames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    scope = registerOutput<String?>('scope');
    selfManaged = registerOutput<CertificateSelfManaged?>('selfManaged', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CertificateSelfManaged.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Certificate] resource's state with the given [name] and [id].
  static Certificate get(
    String name,
    pulumi.Input<String> id, {
    CertificateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Certificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Certificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:certificatemanager/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String?>('location');
    managed = registerOutput<CertificateManaged?>('managed', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CertificateManaged.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    sanDnsnames = registerOutput<List<String>>('sanDnsnames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    scope = registerOutput<String?>('scope');
    selfManaged = registerOutput<CertificateSelfManaged?>('selfManaged', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CertificateSelfManaged.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Certificate] resource.
  Certificate.reference(String urn)
    : super(
        'gcp:certificatemanager/certificate:Certificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String?>('location');
    managed = registerOutput<CertificateManaged?>('managed', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CertificateManaged.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    sanDnsnames = registerOutput<List<String>>('sanDnsnames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    scope = registerOutput<String?>('scope');
    selfManaged = registerOutput<CertificateSelfManaged?>('selfManaged', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CertificateSelfManaged.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
