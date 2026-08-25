import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_inspection_policy_args.dart';
import 'tls_inspection_policy_state.dart';

/// The TlsInspectionPolicy resource contains references to CA pools in Certificate Authority Service and associated metadata.
///
///
/// To get more information about TlsInspectionPolicy, see:
///
/// * [API documentation](https://cloud.google.com/secure-web-proxy/docs/reference/network-security/rest/v1/projects.locations.tlsInspectionPolicies)
/// * How-to Guides
/// * [Use TlsInspectionPolicy](https://cloud.google.com/secure-web-proxy/docs/tls-inspection-overview)
///
/// ## Example Usage
///
/// ### Network Security Tls Inspection Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.certificateauthority.CaPool("default", {
///     name: "my-basic-ca-pool",
///     location: "us-central1",
///     tier: "DEVOPS",
///     publishingOptions: {
///         publishCaCert: false,
///         publishCrl: false,
///     },
///     issuancePolicy: {
///         maximumLifetime: "1209600s",
///         baselineValues: {
///             caOptions: {
///                 isCa: false,
///             },
///             keyUsage: {
///                 baseKeyUsage: {},
///                 extendedKeyUsage: {
///                     serverAuth: true,
///                 },
///             },
///         },
///     },
/// });
/// const defaultAuthority = new gcp.certificateauthority.Authority("default", {
///     pool: _default.name,
///     certificateAuthorityId: "my-basic-certificate-authority",
///     location: "us-central1",
///     lifetime: "86400s",
///     type: "SELF_SIGNED",
///     deletionProtection: false,
///     skipGracePeriod: true,
///     ignoreActiveCertificatesOnDeletion: true,
///     config: {
///         subjectConfig: {
///             subject: {
///                 organization: "Test LLC",
///                 commonName: "my-ca",
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
/// });
/// const project = gcp.organizations.getProject({});
/// const tlsInspectionPermission = new gcp.certificateauthority.CaPoolIamMember("tls_inspection_permission", {
///     caPool: _default.id,
///     role: "roles/privateca.certificateManager",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-networksecurity.iam.gserviceaccount.com`),
/// });
/// const defaultTlsInspectionPolicy = new gcp.networksecurity.TlsInspectionPolicy("default", {
///     name: "my-tls-inspection-policy",
///     location: "us-central1",
///     caPool: _default.id,
///     excludePublicCaSet: false,
/// }, {
///     dependsOn: [
///         _default,
///         defaultAuthority,
///         tlsInspectionPermission,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificateauthority.CaPool("default",
///     name="my-basic-ca-pool",
///     location="us-central1",
///     tier="DEVOPS",
///     publishing_options={
///         "publish_ca_cert": False,
///         "publish_crl": False,
///     },
///     issuance_policy={
///         "maximum_lifetime": "1209600s",
///         "baseline_values": {
///             "ca_options": {
///                 "is_ca": False,
///             },
///             "key_usage": {
///                 "base_key_usage": {},
///                 "extended_key_usage": {
///                     "server_auth": True,
///                 },
///             },
///         },
///     })
/// default_authority = gcp.certificateauthority.Authority("default",
///     pool=default.name,
///     certificate_authority_id="my-basic-certificate-authority",
///     location="us-central1",
///     lifetime="86400s",
///     type="SELF_SIGNED",
///     deletion_protection=False,
///     skip_grace_period=True,
///     ignore_active_certificates_on_deletion=True,
///     config={
///         "subject_config": {
///             "subject": {
///                 "organization": "Test LLC",
///                 "common_name": "my-ca",
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
///     })
/// project = gcp.organizations.get_project()
/// tls_inspection_permission = gcp.certificateauthority.CaPoolIamMember("tls_inspection_permission",
///     ca_pool=default.id,
///     role="roles/privateca.certificateManager",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-networksecurity.iam.gserviceaccount.com")
/// default_tls_inspection_policy = gcp.networksecurity.TlsInspectionPolicy("default",
///     name="my-tls-inspection-policy",
///     location="us-central1",
///     ca_pool=default.id,
///     exclude_public_ca_set=False,
///     opts = pulumi.ResourceOptions(depends_on=[
///             default,
///             default_authority,
///             tls_inspection_permission,
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
///     var @default = new Gcp.CertificateAuthority.CaPool("default", new()
///     {
///         Name = "my-basic-ca-pool",
///         Location = "us-central1",
///         Tier = "DEVOPS",
///         PublishingOptions = new Gcp.CertificateAuthority.Inputs.CaPoolPublishingOptionsArgs
///         {
///             PublishCaCert = false,
///             PublishCrl = false,
///         },
///         IssuancePolicy = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyArgs
///         {
///             MaximumLifetime = "1209600s",
///             BaselineValues = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyBaselineValuesArgs
///             {
///                 CaOptions = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyBaselineValuesCaOptionsArgs
///                 {
///                     IsCa = false,
///                 },
///                 KeyUsage = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyBaselineValuesKeyUsageArgs
///                 {
///                     BaseKeyUsage = null,
///                     ExtendedKeyUsage = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyBaselineValuesKeyUsageExtendedKeyUsageArgs
///                     {
///                         ServerAuth = true,
///                     },
///                 },
///             },
///         },
///     });
///
///     var defaultAuthority = new Gcp.CertificateAuthority.Authority("default", new()
///     {
///         Pool = @default.Name,
///         CertificateAuthorityId = "my-basic-certificate-authority",
///         Location = "us-central1",
///         Lifetime = "86400s",
///         Type = "SELF_SIGNED",
///         DeletionProtection = false,
///         SkipGracePeriod = true,
///         IgnoreActiveCertificatesOnDeletion = true,
///         Config = new Gcp.CertificateAuthority.Inputs.AuthorityConfigArgs
///         {
///             SubjectConfig = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigArgs
///             {
///                 Subject = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigSubjectArgs
///                 {
///                     Organization = "Test LLC",
///                     CommonName = "my-ca",
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
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var tlsInspectionPermission = new Gcp.CertificateAuthority.CaPoolIamMember("tls_inspection_permission", new()
///     {
///         CaPool = @default.Id,
///         Role = "roles/privateca.certificateManager",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-networksecurity.iam.gserviceaccount.com",
///     });
///
///     var defaultTlsInspectionPolicy = new Gcp.NetworkSecurity.TlsInspectionPolicy("default", new()
///     {
///         Name = "my-tls-inspection-policy",
///         Location = "us-central1",
///         CaPool = @default.Id,
///         ExcludePublicCaSet = false,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @default,
///             defaultAuthority,
///             tlsInspectionPermission,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := certificateauthority.NewCaPool(ctx, "default", &certificateauthority.CaPoolArgs{
/// 			Name:     pulumi.String("my-basic-ca-pool"),
/// 			Location: pulumi.String("us-central1"),
/// 			Tier:     pulumi.String("DEVOPS"),
/// 			PublishingOptions: &certificateauthority.CaPoolPublishingOptionsArgs{
/// 				PublishCaCert: pulumi.Bool(false),
/// 				PublishCrl:    pulumi.Bool(false),
/// 			},
/// 			IssuancePolicy: &certificateauthority.CaPoolIssuancePolicyArgs{
/// 				MaximumLifetime: pulumi.String("1209600s"),
/// 				BaselineValues: &certificateauthority.CaPoolIssuancePolicyBaselineValuesArgs{
/// 					CaOptions: &certificateauthority.CaPoolIssuancePolicyBaselineValuesCaOptionsArgs{
/// 						IsCa: pulumi.Bool(false),
/// 					},
/// 					KeyUsage: &certificateauthority.CaPoolIssuancePolicyBaselineValuesKeyUsageArgs{
/// 						BaseKeyUsage: &certificateauthority.CaPoolIssuancePolicyBaselineValuesKeyUsageBaseKeyUsageArgs{},
/// 						ExtendedKeyUsage: &certificateauthority.CaPoolIssuancePolicyBaselineValuesKeyUsageExtendedKeyUsageArgs{
/// 							ServerAuth: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAuthority, err := certificateauthority.NewAuthority(ctx, "default", &certificateauthority.AuthorityArgs{
/// 			Pool:                               _default.Name,
/// 			CertificateAuthorityId:             pulumi.String("my-basic-certificate-authority"),
/// 			Location:                           pulumi.String("us-central1"),
/// 			Lifetime:                           pulumi.String("86400s"),
/// 			Type:                               pulumi.String("SELF_SIGNED"),
/// 			DeletionProtection:                 pulumi.Bool(false),
/// 			SkipGracePeriod:                    pulumi.Bool(true),
/// 			IgnoreActiveCertificatesOnDeletion: pulumi.Bool(true),
/// 			Config: &certificateauthority.AuthorityConfigArgs{
/// 				SubjectConfig: &certificateauthority.AuthorityConfigSubjectConfigArgs{
/// 					Subject: &certificateauthority.AuthorityConfigSubjectConfigSubjectArgs{
/// 						Organization: pulumi.String("Test LLC"),
/// 						CommonName:   pulumi.String("my-ca"),
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tlsInspectionPermission, err := certificateauthority.NewCaPoolIamMember(ctx, "tls_inspection_permission", &certificateauthority.CaPoolIamMemberArgs{
/// 			CaPool: _default.ID().ToIDOutput().ToStringOutput(),
/// 			Role:   pulumi.String("roles/privateca.certificateManager"),
/// 			Member: pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-networksecurity.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewTlsInspectionPolicy(ctx, "default", &networksecurity.TlsInspectionPolicyArgs{
/// 			Name:               pulumi.String("my-tls-inspection-policy"),
/// 			Location:           pulumi.String("us-central1"),
/// 			CaPool:             _default.ID().ToIDOutput().ToStringOutput(),
/// 			ExcludePublicCaSet: pulumi.Bool(false),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			_default,
/// 			defaultAuthority,
/// 			tlsInspectionPermission,
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
/// resource "gcp_certificateauthority_capool" "default" {
///   name     = "my-basic-ca-pool"
///   location = "us-central1"
///   tier     = "DEVOPS"
///   publishing_options = {
///     publish_ca_cert = false
///     publish_crl     = false
///   }
///   issuance_policy = {
///     maximum_lifetime = "1209600s"
///     baseline_values = {
///       ca_options = {
///         is_ca = false
///       }
///       key_usage = {
///         base_key_usage = {}
///         extended_key_usage = {
///           server_auth = true
///         }
///       }
///     }
///   }
/// }
/// resource "gcp_certificateauthority_authority" "default" {
///   pool                                   = gcp_certificateauthority_capool.default.name
///   certificate_authority_id               = "my-basic-certificate-authority"
///   location                               = "us-central1"
///   lifetime                               = "86400s"
///   type                                   = "SELF_SIGNED"
///   deletion_protection                    = false
///   skip_grace_period                      = true
///   ignore_active_certificates_on_deletion = true
///   config = {
///     subject_config = {
///       subject = {
///         organization = "Test LLC"
///         common_name  = "my-ca"
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
///           server_auth = false
///         }
///       }
///     }
///   }
///   key_spec = {
///     algorithm = "RSA_PKCS1_4096_SHA256"
///   }
/// }
/// resource "gcp_certificateauthority_capooliammember" "tls_inspection_permission" {
///   ca_pool = gcp_certificateauthority_capool.default.id
///   role    = "roles/privateca.certificateManager"
///   member  ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-networksecurity.iam.gserviceaccount.com"
/// }
/// resource "gcp_networksecurity_tlsinspectionpolicy" "default" {
///   depends_on            = [gcp_certificateauthority_capool.default, gcp_certificateauthority_authority.default, gcp_certificateauthority_capooliammember.tls_inspection_permission]
///   name                  = "my-tls-inspection-policy"
///   location              = "us-central1"
///   ca_pool               = gcp_certificateauthority_capool.default.id
///   exclude_public_ca_set = false
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
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolPublishingOptionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyBaselineValuesArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyBaselineValuesCaOptionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyBaselineValuesKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyBaselineValuesKeyUsageBaseKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyBaselineValuesKeyUsageExtendedKeyUsageArgs;
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.certificateauthority.CaPoolIamMember;
/// import com.pulumi.gcp.certificateauthority.CaPoolIamMemberArgs;
/// import com.pulumi.gcp.networksecurity.TlsInspectionPolicy;
/// import com.pulumi.gcp.networksecurity.TlsInspectionPolicyArgs;
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
///         var default_ = new CaPool("default", CaPoolArgs.builder()
///             .name("my-basic-ca-pool")
///             .location("us-central1")
///             .tier("DEVOPS")
///             .publishingOptions(CaPoolPublishingOptionsArgs.builder()
///                 .publishCaCert(false)
///                 .publishCrl(false)
///                 .build())
///             .issuancePolicy(CaPoolIssuancePolicyArgs.builder()
///                 .maximumLifetime("1209600s")
///                 .baselineValues(CaPoolIssuancePolicyBaselineValuesArgs.builder()
///                     .caOptions(CaPoolIssuancePolicyBaselineValuesCaOptionsArgs.builder()
///                         .isCa(false)
///                         .build())
///                     .keyUsage(CaPoolIssuancePolicyBaselineValuesKeyUsageArgs.builder()
///                         .baseKeyUsage(CaPoolIssuancePolicyBaselineValuesKeyUsageBaseKeyUsageArgs.builder()
///                             .build())
///                         .extendedKeyUsage(CaPoolIssuancePolicyBaselineValuesKeyUsageExtendedKeyUsageArgs.builder()
///                             .serverAuth(true)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var defaultAuthority = new Authority("defaultAuthority", AuthorityArgs.builder()
///             .pool(default_.name())
///             .certificateAuthorityId("my-basic-certificate-authority")
///             .location("us-central1")
///             .lifetime("86400s")
///             .type("SELF_SIGNED")
///             .deletionProtection(false)
///             .skipGracePeriod(true)
///             .ignoreActiveCertificatesOnDeletion(true)
///             .config(AuthorityConfigArgs.builder()
///                 .subjectConfig(AuthorityConfigSubjectConfigArgs.builder()
///                     .subject(AuthorityConfigSubjectConfigSubjectArgs.builder()
///                         .organization("Test LLC")
///                         .commonName("my-ca")
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
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var tlsInspectionPermission = new CaPoolIamMember("tlsInspectionPermission", CaPoolIamMemberArgs.builder()
///             .caPool(default_.id())
///             .role("roles/privateca.certificateManager")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-networksecurity.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var defaultTlsInspectionPolicy = new TlsInspectionPolicy("defaultTlsInspectionPolicy", TlsInspectionPolicyArgs.builder()
///             .name("my-tls-inspection-policy")
///             .location("us-central1")
///             .caPool(default_.id())
///             .excludePublicCaSet(false)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     default_,
///                     defaultAuthority,
///                     tlsInspectionPermission)
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
///       name: my-basic-ca-pool
///       location: us-central1
///       tier: DEVOPS
///       publishingOptions:
///         publishCaCert: false
///         publishCrl: false
///       issuancePolicy:
///         maximumLifetime: 1209600s
///         baselineValues:
///           caOptions:
///             isCa: false
///           keyUsage:
///             baseKeyUsage: {}
///             extendedKeyUsage:
///               serverAuth: true
///   defaultAuthority:
///     type: gcp:certificateauthority:Authority
///     name: default
///     properties:
///       pool: ${default.name}
///       certificateAuthorityId: my-basic-certificate-authority
///       location: us-central1
///       lifetime: 86400s
///       type: SELF_SIGNED
///       deletionProtection: false
///       skipGracePeriod: true
///       ignoreActiveCertificatesOnDeletion: true
///       config:
///         subjectConfig:
///           subject:
///             organization: Test LLC
///             commonName: my-ca
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
///   tlsInspectionPermission:
///     type: gcp:certificateauthority:CaPoolIamMember
///     name: tls_inspection_permission
///     properties:
///       caPool: ${default.id}
///       role: roles/privateca.certificateManager
///       member: serviceAccount:service-${project.number}@gcp-sa-networksecurity.iam.gserviceaccount.com
///   defaultTlsInspectionPolicy:
///     type: gcp:networksecurity:TlsInspectionPolicy
///     name: default
///     properties:
///       name: my-tls-inspection-policy
///       location: us-central1
///       caPool: ${default.id}
///       excludePublicCaSet: false
///     options:
///       dependsOn:
///         - ${default}
///         - ${defaultAuthority}
///         - ${tlsInspectionPermission}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Network Security Tls Inspection Policy Custom
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const _default = new gcp.certificateauthority.CaPool("default", {
///     name: "my-basic-ca-pool",
///     location: "us-central1",
///     tier: "DEVOPS",
///     publishingOptions: {
///         publishCaCert: false,
///         publishCrl: false,
///     },
///     issuancePolicy: {
///         maximumLifetime: "1209600s",
///         baselineValues: {
///             caOptions: {
///                 isCa: false,
///             },
///             keyUsage: {
///                 baseKeyUsage: {},
///                 extendedKeyUsage: {
///                     serverAuth: true,
///                 },
///             },
///         },
///     },
/// });
/// const defaultAuthority = new gcp.certificateauthority.Authority("default", {
///     pool: _default.name,
///     certificateAuthorityId: "my-basic-certificate-authority",
///     location: "us-central1",
///     lifetime: "86400s",
///     type: "SELF_SIGNED",
///     deletionProtection: false,
///     skipGracePeriod: true,
///     ignoreActiveCertificatesOnDeletion: true,
///     config: {
///         subjectConfig: {
///             subject: {
///                 organization: "Test LLC",
///                 commonName: "my-ca",
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
/// });
/// const nsSa = new gcp.projects.ServiceIdentity("ns_sa", {service: "networksecurity.googleapis.com"});
/// const defaultCaPoolIamMember = new gcp.certificateauthority.CaPoolIamMember("default", {
///     caPool: _default.id,
///     role: "roles/privateca.certificateManager",
///     member: nsSa.member,
/// });
/// const defaultTrustConfig = new gcp.certificatemanager.TrustConfig("default", {
///     name: "my-trust-config",
///     description: "sample trust config description",
///     location: "us-central1",
///     trustStores: [{
///         trustAnchors: [{
///             pemCertificate: std.file({
///                 input: "test-fixtures/ca_cert.pem",
///             }).then(invoke => invoke.result),
///         }],
///         intermediateCas: [{
///             pemCertificate: std.file({
///                 input: "test-fixtures/ca_cert.pem",
///             }).then(invoke => invoke.result),
///         }],
///     }],
/// });
/// const defaultTlsInspectionPolicy = new gcp.networksecurity.TlsInspectionPolicy("default", {
///     name: "my-tls-inspection-policy",
///     location: "us-central1",
///     caPool: _default.id,
///     excludePublicCaSet: false,
///     minTlsVersion: "TLS_1_0",
///     trustConfig: defaultTrustConfig.id,
///     tlsFeatureProfile: "PROFILE_CUSTOM",
///     customTlsFeatures: [
///         "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA",
///         "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256",
///         "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA",
///         "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384",
///         "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256",
///         "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA",
///         "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256",
///         "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA",
///         "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384",
///         "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256",
///         "TLS_RSA_WITH_3DES_EDE_CBC_SHA",
///         "TLS_RSA_WITH_AES_128_CBC_SHA",
///         "TLS_RSA_WITH_AES_128_GCM_SHA256",
///         "TLS_RSA_WITH_AES_256_CBC_SHA",
///         "TLS_RSA_WITH_AES_256_GCM_SHA384",
///     ],
/// }, {
///     dependsOn: [
///         defaultAuthority,
///         defaultCaPoolIamMember,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default = gcp.certificateauthority.CaPool("default",
///     name="my-basic-ca-pool",
///     location="us-central1",
///     tier="DEVOPS",
///     publishing_options={
///         "publish_ca_cert": False,
///         "publish_crl": False,
///     },
///     issuance_policy={
///         "maximum_lifetime": "1209600s",
///         "baseline_values": {
///             "ca_options": {
///                 "is_ca": False,
///             },
///             "key_usage": {
///                 "base_key_usage": {},
///                 "extended_key_usage": {
///                     "server_auth": True,
///                 },
///             },
///         },
///     })
/// default_authority = gcp.certificateauthority.Authority("default",
///     pool=default.name,
///     certificate_authority_id="my-basic-certificate-authority",
///     location="us-central1",
///     lifetime="86400s",
///     type="SELF_SIGNED",
///     deletion_protection=False,
///     skip_grace_period=True,
///     ignore_active_certificates_on_deletion=True,
///     config={
///         "subject_config": {
///             "subject": {
///                 "organization": "Test LLC",
///                 "common_name": "my-ca",
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
///     })
/// ns_sa = gcp.projects.ServiceIdentity("ns_sa", service="networksecurity.googleapis.com")
/// default_ca_pool_iam_member = gcp.certificateauthority.CaPoolIamMember("default",
///     ca_pool=default.id,
///     role="roles/privateca.certificateManager",
///     member=ns_sa.member)
/// default_trust_config = gcp.certificatemanager.TrustConfig("default",
///     name="my-trust-config",
///     description="sample trust config description",
///     location="us-central1",
///     trust_stores=[{
///         "trust_anchors": [{
///             "pem_certificate": std.file(input="test-fixtures/ca_cert.pem").result,
///         }],
///         "intermediate_cas": [{
///             "pem_certificate": std.file(input="test-fixtures/ca_cert.pem").result,
///         }],
///     }])
/// default_tls_inspection_policy = gcp.networksecurity.TlsInspectionPolicy("default",
///     name="my-tls-inspection-policy",
///     location="us-central1",
///     ca_pool=default.id,
///     exclude_public_ca_set=False,
///     min_tls_version="TLS_1_0",
///     trust_config=default_trust_config.id,
///     tls_feature_profile="PROFILE_CUSTOM",
///     custom_tls_features=[
///         "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA",
///         "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256",
///         "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA",
///         "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384",
///         "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256",
///         "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA",
///         "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256",
///         "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA",
///         "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384",
///         "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256",
///         "TLS_RSA_WITH_3DES_EDE_CBC_SHA",
///         "TLS_RSA_WITH_AES_128_CBC_SHA",
///         "TLS_RSA_WITH_AES_128_GCM_SHA256",
///         "TLS_RSA_WITH_AES_256_CBC_SHA",
///         "TLS_RSA_WITH_AES_256_GCM_SHA384",
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[
///             default_authority,
///             default_ca_pool_iam_member,
///         ]))
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
///         Name = "my-basic-ca-pool",
///         Location = "us-central1",
///         Tier = "DEVOPS",
///         PublishingOptions = new Gcp.CertificateAuthority.Inputs.CaPoolPublishingOptionsArgs
///         {
///             PublishCaCert = false,
///             PublishCrl = false,
///         },
///         IssuancePolicy = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyArgs
///         {
///             MaximumLifetime = "1209600s",
///             BaselineValues = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyBaselineValuesArgs
///             {
///                 CaOptions = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyBaselineValuesCaOptionsArgs
///                 {
///                     IsCa = false,
///                 },
///                 KeyUsage = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyBaselineValuesKeyUsageArgs
///                 {
///                     BaseKeyUsage = null,
///                     ExtendedKeyUsage = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyBaselineValuesKeyUsageExtendedKeyUsageArgs
///                     {
///                         ServerAuth = true,
///                     },
///                 },
///             },
///         },
///     });
///
///     var defaultAuthority = new Gcp.CertificateAuthority.Authority("default", new()
///     {
///         Pool = @default.Name,
///         CertificateAuthorityId = "my-basic-certificate-authority",
///         Location = "us-central1",
///         Lifetime = "86400s",
///         Type = "SELF_SIGNED",
///         DeletionProtection = false,
///         SkipGracePeriod = true,
///         IgnoreActiveCertificatesOnDeletion = true,
///         Config = new Gcp.CertificateAuthority.Inputs.AuthorityConfigArgs
///         {
///             SubjectConfig = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigArgs
///             {
///                 Subject = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigSubjectArgs
///                 {
///                     Organization = "Test LLC",
///                     CommonName = "my-ca",
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
///     });
///
///     var nsSa = new Gcp.Projects.ServiceIdentity("ns_sa", new()
///     {
///         Service = "networksecurity.googleapis.com",
///     });
///
///     var defaultCaPoolIamMember = new Gcp.CertificateAuthority.CaPoolIamMember("default", new()
///     {
///         CaPool = @default.Id,
///         Role = "roles/privateca.certificateManager",
///         Member = nsSa.Member,
///     });
///
///     var defaultTrustConfig = new Gcp.CertificateManager.TrustConfig("default", new()
///     {
///         Name = "my-trust-config",
///         Description = "sample trust config description",
///         Location = "us-central1",
///         TrustStores = new[]
///         {
///             new Gcp.CertificateManager.Inputs.TrustConfigTrustStoreArgs
///             {
///                 TrustAnchors = new[]
///                 {
///                     new Gcp.CertificateManager.Inputs.TrustConfigTrustStoreTrustAnchorArgs
///                     {
///                         PemCertificate = Std.File.Invoke(new()
///                         {
///                             Input = "test-fixtures/ca_cert.pem",
///                         }).Apply(invoke => invoke.Result),
///                     },
///                 },
///                 IntermediateCas = new[]
///                 {
///                     new Gcp.CertificateManager.Inputs.TrustConfigTrustStoreIntermediateCaArgs
///                     {
///                         PemCertificate = Std.File.Invoke(new()
///                         {
///                             Input = "test-fixtures/ca_cert.pem",
///                         }).Apply(invoke => invoke.Result),
///                     },
///                 },
///             },
///         },
///     });
///
///     var defaultTlsInspectionPolicy = new Gcp.NetworkSecurity.TlsInspectionPolicy("default", new()
///     {
///         Name = "my-tls-inspection-policy",
///         Location = "us-central1",
///         CaPool = @default.Id,
///         ExcludePublicCaSet = false,
///         MinTlsVersion = "TLS_1_0",
///         TrustConfig = defaultTrustConfig.Id,
///         TlsFeatureProfile = "PROFILE_CUSTOM",
///         CustomTlsFeatures = new[]
///         {
///             "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA",
///             "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256",
///             "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA",
///             "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384",
///             "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256",
///             "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA",
///             "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256",
///             "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA",
///             "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384",
///             "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256",
///             "TLS_RSA_WITH_3DES_EDE_CBC_SHA",
///             "TLS_RSA_WITH_AES_128_CBC_SHA",
///             "TLS_RSA_WITH_AES_128_GCM_SHA256",
///             "TLS_RSA_WITH_AES_256_CBC_SHA",
///             "TLS_RSA_WITH_AES_256_GCM_SHA384",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             defaultAuthority,
///             defaultCaPoolIamMember,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := certificateauthority.NewCaPool(ctx, "default", &certificateauthority.CaPoolArgs{
/// 			Name:     pulumi.String("my-basic-ca-pool"),
/// 			Location: pulumi.String("us-central1"),
/// 			Tier:     pulumi.String("DEVOPS"),
/// 			PublishingOptions: &certificateauthority.CaPoolPublishingOptionsArgs{
/// 				PublishCaCert: pulumi.Bool(false),
/// 				PublishCrl:    pulumi.Bool(false),
/// 			},
/// 			IssuancePolicy: &certificateauthority.CaPoolIssuancePolicyArgs{
/// 				MaximumLifetime: pulumi.String("1209600s"),
/// 				BaselineValues: &certificateauthority.CaPoolIssuancePolicyBaselineValuesArgs{
/// 					CaOptions: &certificateauthority.CaPoolIssuancePolicyBaselineValuesCaOptionsArgs{
/// 						IsCa: pulumi.Bool(false),
/// 					},
/// 					KeyUsage: &certificateauthority.CaPoolIssuancePolicyBaselineValuesKeyUsageArgs{
/// 						BaseKeyUsage: &certificateauthority.CaPoolIssuancePolicyBaselineValuesKeyUsageBaseKeyUsageArgs{},
/// 						ExtendedKeyUsage: &certificateauthority.CaPoolIssuancePolicyBaselineValuesKeyUsageExtendedKeyUsageArgs{
/// 							ServerAuth: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAuthority, err := certificateauthority.NewAuthority(ctx, "default", &certificateauthority.AuthorityArgs{
/// 			Pool:                               _default.Name,
/// 			CertificateAuthorityId:             pulumi.String("my-basic-certificate-authority"),
/// 			Location:                           pulumi.String("us-central1"),
/// 			Lifetime:                           pulumi.String("86400s"),
/// 			Type:                               pulumi.String("SELF_SIGNED"),
/// 			DeletionProtection:                 pulumi.Bool(false),
/// 			SkipGracePeriod:                    pulumi.Bool(true),
/// 			IgnoreActiveCertificatesOnDeletion: pulumi.Bool(true),
/// 			Config: &certificateauthority.AuthorityConfigArgs{
/// 				SubjectConfig: &certificateauthority.AuthorityConfigSubjectConfigArgs{
/// 					Subject: &certificateauthority.AuthorityConfigSubjectConfigSubjectArgs{
/// 						Organization: pulumi.String("Test LLC"),
/// 						CommonName:   pulumi.String("my-ca"),
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		nsSa, err := projects.NewServiceIdentity(ctx, "ns_sa", &projects.ServiceIdentityArgs{
/// 			Service: pulumi.String("networksecurity.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCaPoolIamMember, err := certificateauthority.NewCaPoolIamMember(ctx, "default", &certificateauthority.CaPoolIamMemberArgs{
/// 			CaPool: _default.ID().ToIDOutput().ToStringOutput(),
/// 			Role:   pulumi.String("roles/privateca.certificateManager"),
/// 			Member: nsSa.Member,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/ca_cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/ca_cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTrustConfig, err := certificatemanager.NewTrustConfig(ctx, "default", &certificatemanager.TrustConfigArgs{
/// 			Name:        pulumi.String("my-trust-config"),
/// 			Description: pulumi.String("sample trust config description"),
/// 			Location:    pulumi.String("us-central1"),
/// 			TrustStores: certificatemanager.TrustConfigTrustStoreArray{
/// 				&certificatemanager.TrustConfigTrustStoreArgs{
/// 					TrustAnchors: certificatemanager.TrustConfigTrustStoreTrustAnchorArray{
/// 						&certificatemanager.TrustConfigTrustStoreTrustAnchorArgs{
/// 							PemCertificate: pulumi.String(invokeFile.Result),
/// 						},
/// 					},
/// 					IntermediateCas: certificatemanager.TrustConfigTrustStoreIntermediateCaArray{
/// 						&certificatemanager.TrustConfigTrustStoreIntermediateCaArgs{
/// 							PemCertificate: pulumi.String(invokeFile1.Result),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewTlsInspectionPolicy(ctx, "default", &networksecurity.TlsInspectionPolicyArgs{
/// 			Name:               pulumi.String("my-tls-inspection-policy"),
/// 			Location:           pulumi.String("us-central1"),
/// 			CaPool:             _default.ID().ToIDOutput().ToStringOutput(),
/// 			ExcludePublicCaSet: pulumi.Bool(false),
/// 			MinTlsVersion:      pulumi.String("TLS_1_0"),
/// 			TrustConfig:        defaultTrustConfig.ID().ToIDOutput().ToStringOutput(),
/// 			TlsFeatureProfile:  pulumi.String("PROFILE_CUSTOM"),
/// 			CustomTlsFeatures: pulumi.StringArray{
/// 				pulumi.String("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"),
/// 				pulumi.String("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"),
/// 				pulumi.String("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"),
/// 				pulumi.String("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"),
/// 				pulumi.String("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"),
/// 				pulumi.String("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"),
/// 				pulumi.String("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"),
/// 				pulumi.String("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"),
/// 				pulumi.String("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"),
/// 				pulumi.String("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"),
/// 				pulumi.String("TLS_RSA_WITH_3DES_EDE_CBC_SHA"),
/// 				pulumi.String("TLS_RSA_WITH_AES_128_CBC_SHA"),
/// 				pulumi.String("TLS_RSA_WITH_AES_128_GCM_SHA256"),
/// 				pulumi.String("TLS_RSA_WITH_AES_256_CBC_SHA"),
/// 				pulumi.String("TLS_RSA_WITH_AES_256_GCM_SHA384"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			defaultAuthority,
/// 			defaultCaPoolIamMember,
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_certificateauthority_capool" "default" {
///   name     = "my-basic-ca-pool"
///   location = "us-central1"
///   tier     = "DEVOPS"
///   publishing_options = {
///     publish_ca_cert = false
///     publish_crl     = false
///   }
///   issuance_policy = {
///     maximum_lifetime = "1209600s"
///     baseline_values = {
///       ca_options = {
///         is_ca = false
///       }
///       key_usage = {
///         base_key_usage = {}
///         extended_key_usage = {
///           server_auth = true
///         }
///       }
///     }
///   }
/// }
/// resource "gcp_certificateauthority_authority" "default" {
///   pool                                   = gcp_certificateauthority_capool.default.name
///   certificate_authority_id               = "my-basic-certificate-authority"
///   location                               = "us-central1"
///   lifetime                               = "86400s"
///   type                                   = "SELF_SIGNED"
///   deletion_protection                    = false
///   skip_grace_period                      = true
///   ignore_active_certificates_on_deletion = true
///   config = {
///     subject_config = {
///       subject = {
///         organization = "Test LLC"
///         common_name  = "my-ca"
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
///           server_auth = false
///         }
///       }
///     }
///   }
///   key_spec = {
///     algorithm = "RSA_PKCS1_4096_SHA256"
///   }
/// }
/// resource "gcp_projects_serviceidentity" "ns_sa" {
///   service = "networksecurity.googleapis.com"
/// }
/// resource "gcp_certificateauthority_capooliammember" "default" {
///   ca_pool = gcp_certificateauthority_capool.default.id
///   role    = "roles/privateca.certificateManager"
///   member  = gcp_projects_serviceidentity.ns_sa.member
/// }
/// resource "gcp_certificatemanager_trustconfig" "default" {
///   name        = "my-trust-config"
///   description = "sample trust config description"
///   location    = "us-central1"
///   trust_stores {
///     trust_anchors {
///       pem_certificate = file("test-fixtures/ca_cert.pem")
///     }
///     intermediate_cas {
///       pem_certificate = file("test-fixtures/ca_cert.pem")
///     }
///   }
/// }
/// resource "gcp_networksecurity_tlsinspectionpolicy" "default" {
///   depends_on            = [gcp_certificateauthority_authority.default, gcp_certificateauthority_capooliammember.default]
///   name                  = "my-tls-inspection-policy"
///   location              = "us-central1"
///   ca_pool               = gcp_certificateauthority_capool.default.id
///   exclude_public_ca_set = false
///   min_tls_version       = "TLS_1_0"
///   trust_config          = gcp_certificatemanager_trustconfig.default.id
///   tls_feature_profile   = "PROFILE_CUSTOM"
///   custom_tls_features   = ["TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", "TLS_RSA_WITH_3DES_EDE_CBC_SHA", "TLS_RSA_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_128_GCM_SHA256", "TLS_RSA_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_AES_256_GCM_SHA384"]
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
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolPublishingOptionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyBaselineValuesArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyBaselineValuesCaOptionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyBaselineValuesKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyBaselineValuesKeyUsageBaseKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyBaselineValuesKeyUsageExtendedKeyUsageArgs;
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
/// import com.pulumi.gcp.projects.ServiceIdentity;
/// import com.pulumi.gcp.projects.ServiceIdentityArgs;
/// import com.pulumi.gcp.certificateauthority.CaPoolIamMember;
/// import com.pulumi.gcp.certificateauthority.CaPoolIamMemberArgs;
/// import com.pulumi.gcp.certificatemanager.TrustConfig;
/// import com.pulumi.gcp.certificatemanager.TrustConfigArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.TrustConfigTrustStoreArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.TrustConfigTrustStoreTrustAnchorArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.TrustConfigTrustStoreIntermediateCaArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.networksecurity.TlsInspectionPolicy;
/// import com.pulumi.gcp.networksecurity.TlsInspectionPolicyArgs;
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
///         var default_ = new CaPool("default", CaPoolArgs.builder()
///             .name("my-basic-ca-pool")
///             .location("us-central1")
///             .tier("DEVOPS")
///             .publishingOptions(CaPoolPublishingOptionsArgs.builder()
///                 .publishCaCert(false)
///                 .publishCrl(false)
///                 .build())
///             .issuancePolicy(CaPoolIssuancePolicyArgs.builder()
///                 .maximumLifetime("1209600s")
///                 .baselineValues(CaPoolIssuancePolicyBaselineValuesArgs.builder()
///                     .caOptions(CaPoolIssuancePolicyBaselineValuesCaOptionsArgs.builder()
///                         .isCa(false)
///                         .build())
///                     .keyUsage(CaPoolIssuancePolicyBaselineValuesKeyUsageArgs.builder()
///                         .baseKeyUsage(CaPoolIssuancePolicyBaselineValuesKeyUsageBaseKeyUsageArgs.builder()
///                             .build())
///                         .extendedKeyUsage(CaPoolIssuancePolicyBaselineValuesKeyUsageExtendedKeyUsageArgs.builder()
///                             .serverAuth(true)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var defaultAuthority = new Authority("defaultAuthority", AuthorityArgs.builder()
///             .pool(default_.name())
///             .certificateAuthorityId("my-basic-certificate-authority")
///             .location("us-central1")
///             .lifetime("86400s")
///             .type("SELF_SIGNED")
///             .deletionProtection(false)
///             .skipGracePeriod(true)
///             .ignoreActiveCertificatesOnDeletion(true)
///             .config(AuthorityConfigArgs.builder()
///                 .subjectConfig(AuthorityConfigSubjectConfigArgs.builder()
///                     .subject(AuthorityConfigSubjectConfigSubjectArgs.builder()
///                         .organization("Test LLC")
///                         .commonName("my-ca")
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
///             .build());
///
///         var nsSa = new ServiceIdentity("nsSa", ServiceIdentityArgs.builder()
///             .service("networksecurity.googleapis.com")
///             .build());
///
///         var defaultCaPoolIamMember = new CaPoolIamMember("defaultCaPoolIamMember", CaPoolIamMemberArgs.builder()
///             .caPool(default_.id())
///             .role("roles/privateca.certificateManager")
///             .member(nsSa.member())
///             .build());
///
///         var defaultTrustConfig = new TrustConfig("defaultTrustConfig", TrustConfigArgs.builder()
///             .name("my-trust-config")
///             .description("sample trust config description")
///             .location("us-central1")
///             .trustStores(TrustConfigTrustStoreArgs.builder()
///                 .trustAnchors(TrustConfigTrustStoreTrustAnchorArgs.builder()
///                     .pemCertificate(StdFunctions.file(FileArgs.builder()
///                         .input("test-fixtures/ca_cert.pem")
///                         .build()).result())
///                     .build())
///                 .intermediateCas(TrustConfigTrustStoreIntermediateCaArgs.builder()
///                     .pemCertificate(StdFunctions.file(FileArgs.builder()
///                         .input("test-fixtures/ca_cert.pem")
///                         .build()).result())
///                     .build())
///                 .build())
///             .build());
///
///         var defaultTlsInspectionPolicy = new TlsInspectionPolicy("defaultTlsInspectionPolicy", TlsInspectionPolicyArgs.builder()
///             .name("my-tls-inspection-policy")
///             .location("us-central1")
///             .caPool(default_.id())
///             .excludePublicCaSet(false)
///             .minTlsVersion("TLS_1_0")
///             .trustConfig(defaultTrustConfig.id())
///             .tlsFeatureProfile("PROFILE_CUSTOM")
///             .customTlsFeatures(
///                 "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA",
///                 "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256",
///                 "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA",
///                 "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384",
///                 "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256",
///                 "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA",
///                 "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256",
///                 "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA",
///                 "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384",
///                 "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256",
///                 "TLS_RSA_WITH_3DES_EDE_CBC_SHA",
///                 "TLS_RSA_WITH_AES_128_CBC_SHA",
///                 "TLS_RSA_WITH_AES_128_GCM_SHA256",
///                 "TLS_RSA_WITH_AES_256_CBC_SHA",
///                 "TLS_RSA_WITH_AES_256_GCM_SHA384")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     defaultAuthority,
///                     defaultCaPoolIamMember)
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
///       name: my-basic-ca-pool
///       location: us-central1
///       tier: DEVOPS
///       publishingOptions:
///         publishCaCert: false
///         publishCrl: false
///       issuancePolicy:
///         maximumLifetime: 1209600s
///         baselineValues:
///           caOptions:
///             isCa: false
///           keyUsage:
///             baseKeyUsage: {}
///             extendedKeyUsage:
///               serverAuth: true
///   defaultAuthority:
///     type: gcp:certificateauthority:Authority
///     name: default
///     properties:
///       pool: ${default.name}
///       certificateAuthorityId: my-basic-certificate-authority
///       location: us-central1
///       lifetime: 86400s
///       type: SELF_SIGNED
///       deletionProtection: false
///       skipGracePeriod: true
///       ignoreActiveCertificatesOnDeletion: true
///       config:
///         subjectConfig:
///           subject:
///             organization: Test LLC
///             commonName: my-ca
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
///   nsSa:
///     type: gcp:projects:ServiceIdentity
///     name: ns_sa
///     properties:
///       service: networksecurity.googleapis.com
///   defaultCaPoolIamMember:
///     type: gcp:certificateauthority:CaPoolIamMember
///     name: default
///     properties:
///       caPool: ${default.id}
///       role: roles/privateca.certificateManager
///       member: ${nsSa.member}
///   defaultTrustConfig:
///     type: gcp:certificatemanager:TrustConfig
///     name: default
///     properties:
///       name: my-trust-config
///       description: sample trust config description
///       location: us-central1
///       trustStores:
///         - trustAnchors:
///             - pemCertificate:
///                 fn::invoke:
///                   function: std:file
///                   arguments:
///                     input: test-fixtures/ca_cert.pem
///                   return: result
///           intermediateCas:
///             - pemCertificate:
///                 fn::invoke:
///                   function: std:file
///                   arguments:
///                     input: test-fixtures/ca_cert.pem
///                   return: result
///   defaultTlsInspectionPolicy:
///     type: gcp:networksecurity:TlsInspectionPolicy
///     name: default
///     properties:
///       name: my-tls-inspection-policy
///       location: us-central1
///       caPool: ${default.id}
///       excludePublicCaSet: false
///       minTlsVersion: TLS_1_0
///       trustConfig: ${defaultTrustConfig.id}
///       tlsFeatureProfile: PROFILE_CUSTOM
///       customTlsFeatures:
///         - TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA
///         - TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256
///         - TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA
///         - TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384
///         - TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256
///         - TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA
///         - TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
///         - TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA
///         - TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
///         - TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256
///         - TLS_RSA_WITH_3DES_EDE_CBC_SHA
///         - TLS_RSA_WITH_AES_128_CBC_SHA
///         - TLS_RSA_WITH_AES_128_GCM_SHA256
///         - TLS_RSA_WITH_AES_256_CBC_SHA
///         - TLS_RSA_WITH_AES_256_GCM_SHA384
///     options:
///       dependsOn:
///         - ${defaultAuthority}
///         - ${defaultCaPoolIamMember}
/// ```
///
///
/// ## Import
///
/// TlsInspectionPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/tlsInspectionPolicies/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, TlsInspectionPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/tlsInspectionPolicy:TlsInspectionPolicy default projects/{{project}}/locations/{{location}}/tlsInspectionPolicies/{{name}}
/// $ pulumi import gcp:networksecurity/tlsInspectionPolicy:TlsInspectionPolicy default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:networksecurity/tlsInspectionPolicy:TlsInspectionPolicy default {{location}}/{{name}}
/// ```
class TlsInspectionPolicy extends pulumi.CustomResource {
  /// A CA pool resource used to issue interception certificates.
  late final pulumi.Output<String> caPool;
  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  /// List of custom TLS cipher suites selected. This field is valid only if the selected tlsFeatureProfile is CUSTOM. The compute.SslPoliciesService.ListAvailableFeatures method returns the set of features that can be specified in this list. Note that Secure Web Proxy does not yet honor this field.
  late final pulumi.Output<List<String>?> customTlsFeatures;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Free-text description of the resource.
  late final pulumi.Output<String?> description;
  /// If FALSE (the default), use our default set of public CAs in addition to any CAs specified in trustConfig. These public CAs are currently based on the Mozilla Root Program and are subject to change over time. If TRUE, do not accept our default set of public CAs. Only CAs specified in trustConfig will be accepted.
  late final pulumi.Output<bool?> excludePublicCaSet;
  /// The location of the tls inspection policy.
  late final pulumi.Output<String?> location;
  /// Minimum TLS version that the firewall should use when negotiating connections with both clients and servers. If this is not set, then the default value is to allow the broadest set of clients and servers (TLS 1.0 or higher). Setting this to more restrictive values may improve security, but may also prevent the firewall from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
  /// Default value is `TLS_VERSION_UNSPECIFIED`.
  /// Possible values are: `TLS_VERSION_UNSPECIFIED`, `TLS_1_0`, `TLS_1_1`, `TLS_1_2`, `TLS_1_3`.
  late final pulumi.Output<String?> minTlsVersion;
  /// Short name of the TlsInspectionPolicy resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The selected Profile. If this is not set, then the default value is to allow the broadest set of clients and servers (\"PROFILE_COMPATIBLE\"). Setting this to more restrictive values may improve security, but may also prevent the TLS inspection proxy from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
  /// Default value is `PROFILE_UNSPECIFIED`.
  /// Possible values are: `PROFILE_UNSPECIFIED`, `PROFILE_COMPATIBLE`, `PROFILE_MODERN`, `PROFILE_RESTRICTED`, `PROFILE_CUSTOM`.
  late final pulumi.Output<String?> tlsFeatureProfile;
  /// A TrustConfig resource used when making a connection to the TLS server. This is a relative resource path following the form \"projects/{project}/locations/{location}/trustConfigs/{trust_config}\". This is necessary to intercept TLS connections to servers with certificates signed by a private CA or self-signed certificates. Trust config and the TLS inspection policy must be in the same region. Note that Secure Web Proxy does not yet honor this field.
  late final pulumi.Output<String?> trustConfig;
  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [TlsInspectionPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TlsInspectionPolicy]. {@macro pulumi_networksecurity_tls_inspection_policy_tls_inspection_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TlsInspectionPolicy(
    String name, {
    TlsInspectionPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/tlsInspectionPolicy:TlsInspectionPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    caPool = registerOutput<String>('caPool');
    createTime = registerOutput<String>('createTime');
    customTlsFeatures = registerOutput<List<String>?>('customTlsFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    excludePublicCaSet = registerOutput<bool?>('excludePublicCaSet');
    location = registerOutput<String?>('location');
    minTlsVersion = registerOutput<String?>('minTlsVersion');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    tlsFeatureProfile = registerOutput<String?>('tlsFeatureProfile');
    trustConfig = registerOutput<String?>('trustConfig');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [TlsInspectionPolicy] resource's state with the given [name] and [id].
  static TlsInspectionPolicy get(
    String name,
    pulumi.Input<String> id, {
    TlsInspectionPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TlsInspectionPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TlsInspectionPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/tlsInspectionPolicy:TlsInspectionPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    caPool = registerOutput<String>('caPool');
    createTime = registerOutput<String>('createTime');
    customTlsFeatures = registerOutput<List<String>?>('customTlsFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    excludePublicCaSet = registerOutput<bool?>('excludePublicCaSet');
    location = registerOutput<String?>('location');
    minTlsVersion = registerOutput<String?>('minTlsVersion');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    tlsFeatureProfile = registerOutput<String?>('tlsFeatureProfile');
    trustConfig = registerOutput<String?>('trustConfig');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [TlsInspectionPolicy] resource.
  TlsInspectionPolicy.reference(String urn)
    : super(
        'gcp:networksecurity/tlsInspectionPolicy:TlsInspectionPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    caPool = registerOutput<String>('caPool');
    createTime = registerOutput<String>('createTime');
    customTlsFeatures = registerOutput<List<String>?>('customTlsFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    excludePublicCaSet = registerOutput<bool?>('excludePublicCaSet');
    location = registerOutput<String?>('location');
    minTlsVersion = registerOutput<String?>('minTlsVersion');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    tlsFeatureProfile = registerOutput<String?>('tlsFeatureProfile');
    trustConfig = registerOutput<String?>('trustConfig');
    updateTime = registerOutput<String>('updateTime');
  }
}
