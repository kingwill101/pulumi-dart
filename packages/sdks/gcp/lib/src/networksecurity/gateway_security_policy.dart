import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_security_policy_args.dart';
import 'gateway_security_policy_state.dart';

/// The GatewaySecurityPolicy resource contains a collection of GatewaySecurityPolicyRules and associated metadata.
///
///
/// To get more information about GatewaySecurityPolicy, see:
///
/// * [API documentation](https://cloud.google.com/secure-web-proxy/docs/reference/network-security/rest/v1/projects.locations.gatewaySecurityPolicies)
///
/// ## Example Usage
///
/// ### Network Security Gateway Security Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.GatewaySecurityPolicy("default", {
///     name: "my-gateway-security-policy",
///     location: "us-central1",
///     description: "my description",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.GatewaySecurityPolicy("default",
///     name="my-gateway-security-policy",
///     location="us-central1",
///     description="my description")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkSecurity.GatewaySecurityPolicy("default", new()
///     {
///         Name = "my-gateway-security-policy",
///         Location = "us-central1",
///         Description = "my description",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecurity.NewGatewaySecurityPolicy(ctx, "default", &networksecurity.GatewaySecurityPolicyArgs{
/// 			Name:        pulumi.String("my-gateway-security-policy"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("my description"),
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
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicy;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicyArgs;
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
///         var default_ = new GatewaySecurityPolicy("default", GatewaySecurityPolicyArgs.builder()
///             .name("my-gateway-security-policy")
///             .location("us-central1")
///             .description("my description")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networksecurity:GatewaySecurityPolicy
///     properties:
///       name: my-gateway-security-policy
///       location: us-central1
///       description: my description
/// ```
///
/// ### Network Security Gateway Security Policy Tls Inspection Basic
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
/// }, {
///     dependsOn: [
///         _default,
///         defaultAuthority,
///         tlsInspectionPermission,
///     ],
/// });
/// const defaultGatewaySecurityPolicy = new gcp.networksecurity.GatewaySecurityPolicy("default", {
///     name: "my-gateway-security-policy",
///     location: "us-central1",
///     description: "my description",
///     tlsInspectionPolicy: defaultTlsInspectionPolicy.id,
/// }, {
///     dependsOn: [defaultTlsInspectionPolicy],
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
///     opts = pulumi.ResourceOptions(depends_on=[
///             default,
///             default_authority,
///             tls_inspection_permission,
///         ]))
/// default_gateway_security_policy = gcp.networksecurity.GatewaySecurityPolicy("default",
///     name="my-gateway-security-policy",
///     location="us-central1",
///     description="my description",
///     tls_inspection_policy=default_tls_inspection_policy.id,
///     opts = pulumi.ResourceOptions(depends_on=[default_tls_inspection_policy]))
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
///     var defaultGatewaySecurityPolicy = new Gcp.NetworkSecurity.GatewaySecurityPolicy("default", new()
///     {
///         Name = "my-gateway-security-policy",
///         Location = "us-central1",
///         Description = "my description",
///         TlsInspectionPolicy = defaultTlsInspectionPolicy.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             defaultTlsInspectionPolicy,
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
/// 			CaPool: _default.ID(),
/// 			Role:   pulumi.String("roles/privateca.certificateManager"),
/// 			Member: pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-networksecurity.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTlsInspectionPolicy, err := networksecurity.NewTlsInspectionPolicy(ctx, "default", &networksecurity.TlsInspectionPolicyArgs{
/// 			Name:     pulumi.String("my-tls-inspection-policy"),
/// 			Location: pulumi.String("us-central1"),
/// 			CaPool:   _default.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			_default,
/// 			defaultAuthority,
/// 			tlsInspectionPermission,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewGatewaySecurityPolicy(ctx, "default", &networksecurity.GatewaySecurityPolicyArgs{
/// 			Name:                pulumi.String("my-gateway-security-policy"),
/// 			Location:            pulumi.String("us-central1"),
/// 			Description:         pulumi.String("my description"),
/// 			TlsInspectionPolicy: defaultTlsInspectionPolicy.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			defaultTlsInspectionPolicy,
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
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicy;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicyArgs;
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
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     default_,
///                     defaultAuthority,
///                     tlsInspectionPermission)
///                 .build());
///
///         var defaultGatewaySecurityPolicy = new GatewaySecurityPolicy("defaultGatewaySecurityPolicy", GatewaySecurityPolicyArgs.builder()
///             .name("my-gateway-security-policy")
///             .location("us-central1")
///             .description("my description")
///             .tlsInspectionPolicy(defaultTlsInspectionPolicy.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(defaultTlsInspectionPolicy)
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
///     options:
///       dependsOn:
///         - ${default}
///         - ${defaultAuthority}
///         - ${tlsInspectionPermission}
///   defaultGatewaySecurityPolicy:
///     type: gcp:networksecurity:GatewaySecurityPolicy
///     name: default
///     properties:
///       name: my-gateway-security-policy
///       location: us-central1
///       description: my description
///       tlsInspectionPolicy: ${defaultTlsInspectionPolicy.id}
///     options:
///       dependsOn:
///         - ${defaultTlsInspectionPolicy}
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
/// GatewaySecurityPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/gatewaySecurityPolicies/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, GatewaySecurityPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/gatewaySecurityPolicy:GatewaySecurityPolicy default projects/{{project}}/locations/{{location}}/gatewaySecurityPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/gatewaySecurityPolicy:GatewaySecurityPolicy default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/gatewaySecurityPolicy:GatewaySecurityPolicy default {{location}}/{{name}}
/// ```
class GatewaySecurityPolicy extends pulumi.CustomResource {
  /// The timestamp when the resource was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  late final pulumi.Output<String> createTime;
  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;
  /// The location of the gateway security policy.
  /// The default value is `global`.
  late final pulumi.Output<String?> location;
  /// Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gatewaySecurityPolicy}
  /// gatewaySecurityPolicy should match the pattern:(^a-z?$).
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Server-defined URL of this resource.
  late final pulumi.Output<String> selfLink;
  /// Name of a TlsInspectionPolicy resource that defines how TLS inspection is performed for any rule that enables it.
  late final pulumi.Output<String?> tlsInspectionPolicy;
  /// The timestamp when the resource was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [GatewaySecurityPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewaySecurityPolicy]. {@macro pulumi_networksecurity_gateway_security_policy_gateway_security_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewaySecurityPolicy(
    String name, {
    GatewaySecurityPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/gatewaySecurityPolicy:GatewaySecurityPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    tlsInspectionPolicy = registerOutput<String?>('tlsInspectionPolicy');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [GatewaySecurityPolicy] resource's state with the given [name] and [id].
  static GatewaySecurityPolicy get(
    String name,
    pulumi.Input<String> id, {
    GatewaySecurityPolicyState? state,
  }) {
    return GatewaySecurityPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GatewaySecurityPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/gatewaySecurityPolicy:GatewaySecurityPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    tlsInspectionPolicy = registerOutput<String?>('tlsInspectionPolicy');
    updateTime = registerOutput<String>('updateTime');
  }
}
