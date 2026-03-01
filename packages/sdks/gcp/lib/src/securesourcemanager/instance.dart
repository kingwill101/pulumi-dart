import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_host_config.dart';
import 'instance_private_config.dart';
import 'instance_state.dart';
import 'instance_workforce_identity_federation_config.dart';

/// Instances are deployed to an available Google Cloud region and are accessible via their web interface.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/secure-source-manager/docs/reference/rest/v1/projects.locations.instances)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/secure-source-manager/docs/create-instance)
///
/// ## Example Usage
///
/// ### Secure Source Manager Instance Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.securesourcemanager.Instance("default", {
///     location: "us-central1",
///     instanceId: "my-instance",
///     labels: {
///         foo: "bar",
///     },
///     deletionPolicy: "PREVENT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.securesourcemanager.Instance("default",
///     location="us-central1",
///     instance_id="my-instance",
///     labels={
///         "foo": "bar",
///     },
///     deletion_policy="PREVENT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.SecureSourceManager.Instance("default", new()
///     {
///         Location = "us-central1",
///         InstanceId = "my-instance",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         DeletionPolicy = "PREVENT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securesourcemanager.NewInstance(ctx, "default", &securesourcemanager.InstanceArgs{
/// 			Location:   pulumi.String("us-central1"),
/// 			InstanceId: pulumi.String("my-instance"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			DeletionPolicy: pulumi.String("PREVENT"),
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
/// import com.pulumi.gcp.securesourcemanager.Instance;
/// import com.pulumi.gcp.securesourcemanager.InstanceArgs;
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .location("us-central1")
///             .instanceId("my-instance")
///             .labels(Map.of("foo", "bar"))
///             .deletionPolicy("PREVENT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:securesourcemanager:Instance
///     properties:
///       location: us-central1
///       instanceId: my-instance
///       labels:
///         foo: bar
///       deletionPolicy: PREVENT
/// ```
///
/// ### Secure Source Manager Instance Cmek
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const cryptoKeyBinding = new gcp.kms.CryptoKeyIAMMember("crypto_key_binding", {
///     cryptoKeyId: "my-key",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-sourcemanager.iam.gserviceaccount.com`),
/// });
/// const _default = new gcp.securesourcemanager.Instance("default", {
///     location: "us-central1",
///     instanceId: "my-instance",
///     kmsKey: "my-key",
///     deletionPolicy: "PREVENT",
/// }, {
///     dependsOn: [cryptoKeyBinding],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// crypto_key_binding = gcp.kms.CryptoKeyIAMMember("crypto_key_binding",
///     crypto_key_id="my-key",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-sourcemanager.iam.gserviceaccount.com")
/// default = gcp.securesourcemanager.Instance("default",
///     location="us-central1",
///     instance_id="my-instance",
///     kms_key="my-key",
///     deletion_policy="PREVENT",
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var cryptoKeyBinding = new Gcp.Kms.CryptoKeyIAMMember("crypto_key_binding", new()
///     {
///         CryptoKeyId = "my-key",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-sourcemanager.iam.gserviceaccount.com",
///     });
///
///     var @default = new Gcp.SecureSourceManager.Instance("default", new()
///     {
///         Location = "us-central1",
///         InstanceId = "my-instance",
///         KmsKey = "my-key",
///         DeletionPolicy = "PREVENT",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKeyBinding, err := kms.NewCryptoKeyIAMMember(ctx, "crypto_key_binding", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("my-key"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-sourcemanager.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securesourcemanager.NewInstance(ctx, "default", &securesourcemanager.InstanceArgs{
/// 			Location:       pulumi.String("us-central1"),
/// 			InstanceId:     pulumi.String("my-instance"),
/// 			KmsKey:         pulumi.String("my-key"),
/// 			DeletionPolicy: pulumi.String("PREVENT"),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.securesourcemanager.Instance;
/// import com.pulumi.gcp.securesourcemanager.InstanceArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var cryptoKeyBinding = new CryptoKeyIAMMember("cryptoKeyBinding", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("my-key")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-sourcemanager.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .location("us-central1")
///             .instanceId("my-instance")
///             .kmsKey("my-key")
///             .deletionPolicy("PREVENT")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(cryptoKeyBinding)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cryptoKeyBinding:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: crypto_key_binding
///     properties:
///       cryptoKeyId: my-key
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:service-${project.number}@gcp-sa-sourcemanager.iam.gserviceaccount.com
///   default:
///     type: gcp:securesourcemanager:Instance
///     properties:
///       location: us-central1
///       instanceId: my-instance
///       kmsKey: my-key
///       deletionPolicy: PREVENT
///     options:
///       dependsOn:
///         - ${cryptoKeyBinding}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Secure Source Manager Instance Private
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const caPool = new gcp.certificateauthority.CaPool("ca_pool", {
///     name: "ca-pool",
///     location: "us-central1",
///     tier: "ENTERPRISE",
///     publishingOptions: {
///         publishCaCert: true,
///         publishCrl: true,
///     },
/// });
/// const rootCa = new gcp.certificateauthority.Authority("root_ca", {
///     pool: caPool.name,
///     certificateAuthorityId: "root-ca",
///     location: "us-central1",
///     config: {
///         subjectConfig: {
///             subject: {
///                 organization: "google",
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
///     ignoreActiveCertificatesOnDeletion: true,
///     skipGracePeriod: true,
/// });
/// const project = gcp.organizations.getProject({});
/// const caPoolBinding = new gcp.certificateauthority.CaPoolIamBinding("ca_pool_binding", {
///     caPool: caPool.id,
///     role: "roles/privateca.certificateRequester",
///     members: [project.then(project => `serviceAccount:service-${project.number}@gcp-sa-sourcemanager.iam.gserviceaccount.com`)],
/// });
/// // ca pool IAM permissions can take time to propagate
/// const wait120Seconds = new time.Sleep("wait_120_seconds", {createDuration: "120s"}, {
///     dependsOn: [caPoolBinding],
/// });
/// const _default = new gcp.securesourcemanager.Instance("default", {
///     instanceId: "my-instance",
///     location: "us-central1",
///     privateConfig: {
///         isPrivate: true,
///         caPool: caPool.id,
///     },
///     deletionPolicy: "PREVENT",
/// }, {
///     dependsOn: [
///         rootCa,
///         wait120Seconds,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// ca_pool = gcp.certificateauthority.CaPool("ca_pool",
///     name="ca-pool",
///     location="us-central1",
///     tier="ENTERPRISE",
///     publishing_options={
///         "publish_ca_cert": True,
///         "publish_crl": True,
///     })
/// root_ca = gcp.certificateauthority.Authority("root_ca",
///     pool=ca_pool.name,
///     certificate_authority_id="root-ca",
///     location="us-central1",
///     config={
///         "subject_config": {
///             "subject": {
///                 "organization": "google",
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
///     ignore_active_certificates_on_deletion=True,
///     skip_grace_period=True)
/// project = gcp.organizations.get_project()
/// ca_pool_binding = gcp.certificateauthority.CaPoolIamBinding("ca_pool_binding",
///     ca_pool=ca_pool.id,
///     role="roles/privateca.certificateRequester",
///     members=[f"serviceAccount:service-{project.number}@gcp-sa-sourcemanager.iam.gserviceaccount.com"])
/// # ca pool IAM permissions can take time to propagate
/// wait120_seconds = time.Sleep("wait_120_seconds", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[ca_pool_binding]))
/// default = gcp.securesourcemanager.Instance("default",
///     instance_id="my-instance",
///     location="us-central1",
///     private_config={
///         "is_private": True,
///         "ca_pool": ca_pool.id,
///     },
///     deletion_policy="PREVENT",
///     opts = pulumi.ResourceOptions(depends_on=[
///             root_ca,
///             wait120_seconds,
///         ]))
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
///     var caPool = new Gcp.CertificateAuthority.CaPool("ca_pool", new()
///     {
///         Name = "ca-pool",
///         Location = "us-central1",
///         Tier = "ENTERPRISE",
///         PublishingOptions = new Gcp.CertificateAuthority.Inputs.CaPoolPublishingOptionsArgs
///         {
///             PublishCaCert = true,
///             PublishCrl = true,
///         },
///     });
///
///     var rootCa = new Gcp.CertificateAuthority.Authority("root_ca", new()
///     {
///         Pool = caPool.Name,
///         CertificateAuthorityId = "root-ca",
///         Location = "us-central1",
///         Config = new Gcp.CertificateAuthority.Inputs.AuthorityConfigArgs
///         {
///             SubjectConfig = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigArgs
///             {
///                 Subject = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigSubjectArgs
///                 {
///                     Organization = "google",
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
///         IgnoreActiveCertificatesOnDeletion = true,
///         SkipGracePeriod = true,
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var caPoolBinding = new Gcp.CertificateAuthority.CaPoolIamBinding("ca_pool_binding", new()
///     {
///         CaPool = caPool.Id,
///         Role = "roles/privateca.certificateRequester",
///         Members = new[]
///         {
///             $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-sourcemanager.iam.gserviceaccount.com",
///         },
///     });
///
///     // ca pool IAM permissions can take time to propagate
///     var wait120Seconds = new Time.Sleep("wait_120_seconds", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             caPoolBinding,
///         },
///     });
///
///     var @default = new Gcp.SecureSourceManager.Instance("default", new()
///     {
///         InstanceId = "my-instance",
///         Location = "us-central1",
///         PrivateConfig = new Gcp.SecureSourceManager.Inputs.InstancePrivateConfigArgs
///         {
///             IsPrivate = true,
///             CaPool = caPool.Id,
///         },
///         DeletionPolicy = "PREVENT",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             rootCa,
///             wait120Seconds,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		caPool, err := certificateauthority.NewCaPool(ctx, "ca_pool", &certificateauthority.CaPoolArgs{
/// 			Name:     pulumi.String("ca-pool"),
/// 			Location: pulumi.String("us-central1"),
/// 			Tier:     pulumi.String("ENTERPRISE"),
/// 			PublishingOptions: &certificateauthority.CaPoolPublishingOptionsArgs{
/// 				PublishCaCert: pulumi.Bool(true),
/// 				PublishCrl:    pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		rootCa, err := certificateauthority.NewAuthority(ctx, "root_ca", &certificateauthority.AuthorityArgs{
/// 			Pool:                   caPool.Name,
/// 			CertificateAuthorityId: pulumi.String("root-ca"),
/// 			Location:               pulumi.String("us-central1"),
/// 			Config: &certificateauthority.AuthorityConfigArgs{
/// 				SubjectConfig: &certificateauthority.AuthorityConfigSubjectConfigArgs{
/// 					Subject: &certificateauthority.AuthorityConfigSubjectConfigSubjectArgs{
/// 						Organization: pulumi.String("google"),
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
/// 			IgnoreActiveCertificatesOnDeletion: pulumi.Bool(true),
/// 			SkipGracePeriod:                    pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		caPoolBinding, err := certificateauthority.NewCaPoolIamBinding(ctx, "ca_pool_binding", &certificateauthority.CaPoolIamBindingArgs{
/// 			CaPool: caPool.ID(),
/// 			Role:   pulumi.String("roles/privateca.certificateRequester"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-sourcemanager.iam.gserviceaccount.com", project.Number),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// ca pool IAM permissions can take time to propagate
/// 		wait120Seconds, err := time.NewSleep(ctx, "wait_120_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			caPoolBinding,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securesourcemanager.NewInstance(ctx, "default", &securesourcemanager.InstanceArgs{
/// 			InstanceId: pulumi.String("my-instance"),
/// 			Location:   pulumi.String("us-central1"),
/// 			PrivateConfig: &securesourcemanager.InstancePrivateConfigArgs{
/// 				IsPrivate: pulumi.Bool(true),
/// 				CaPool:    caPool.ID(),
/// 			},
/// 			DeletionPolicy: pulumi.String("PREVENT"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			rootCa,
/// 			wait120Seconds,
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
/// import com.pulumi.gcp.certificateauthority.CaPoolIamBinding;
/// import com.pulumi.gcp.certificateauthority.CaPoolIamBindingArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.securesourcemanager.Instance;
/// import com.pulumi.gcp.securesourcemanager.InstanceArgs;
/// import com.pulumi.gcp.securesourcemanager.inputs.InstancePrivateConfigArgs;
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
///         var caPool = new CaPool("caPool", CaPoolArgs.builder()
///             .name("ca-pool")
///             .location("us-central1")
///             .tier("ENTERPRISE")
///             .publishingOptions(CaPoolPublishingOptionsArgs.builder()
///                 .publishCaCert(true)
///                 .publishCrl(true)
///                 .build())
///             .build());
///
///         var rootCa = new Authority("rootCa", AuthorityArgs.builder()
///             .pool(caPool.name())
///             .certificateAuthorityId("root-ca")
///             .location("us-central1")
///             .config(AuthorityConfigArgs.builder()
///                 .subjectConfig(AuthorityConfigSubjectConfigArgs.builder()
///                     .subject(AuthorityConfigSubjectConfigSubjectArgs.builder()
///                         .organization("google")
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
///                             .serverAuth(true)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .keySpec(AuthorityKeySpecArgs.builder()
///                 .algorithm("RSA_PKCS1_4096_SHA256")
///                 .build())
///             .deletionProtection(false)
///             .ignoreActiveCertificatesOnDeletion(true)
///             .skipGracePeriod(true)
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var caPoolBinding = new CaPoolIamBinding("caPoolBinding", CaPoolIamBindingArgs.builder()
///             .caPool(caPool.id())
///             .role("roles/privateca.certificateRequester")
///             .members(String.format("serviceAccount:service-%s@gcp-sa-sourcemanager.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         // ca pool IAM permissions can take time to propagate
///         var wait120Seconds = new Sleep("wait120Seconds", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(caPoolBinding)
///                 .build());
///
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .instanceId("my-instance")
///             .location("us-central1")
///             .privateConfig(InstancePrivateConfigArgs.builder()
///                 .isPrivate(true)
///                 .caPool(caPool.id())
///                 .build())
///             .deletionPolicy("PREVENT")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     rootCa,
///                     wait120Seconds)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   caPool:
///     type: gcp:certificateauthority:CaPool
///     name: ca_pool
///     properties:
///       name: ca-pool
///       location: us-central1
///       tier: ENTERPRISE
///       publishingOptions:
///         publishCaCert: true
///         publishCrl: true
///   rootCa:
///     type: gcp:certificateauthority:Authority
///     name: root_ca
///     properties:
///       pool: ${caPool.name}
///       certificateAuthorityId: root-ca
///       location: us-central1
///       config:
///         subjectConfig:
///           subject:
///             organization: google
///             commonName: my-certificate-authority
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
///       ignoreActiveCertificatesOnDeletion: true
///       skipGracePeriod: true
///   caPoolBinding:
///     type: gcp:certificateauthority:CaPoolIamBinding
///     name: ca_pool_binding
///     properties:
///       caPool: ${caPool.id}
///       role: roles/privateca.certificateRequester
///       members:
///         - serviceAccount:service-${project.number}@gcp-sa-sourcemanager.iam.gserviceaccount.com
///   default:
///     type: gcp:securesourcemanager:Instance
///     properties:
///       instanceId: my-instance
///       location: us-central1
///       privateConfig:
///         isPrivate: true
///         caPool: ${caPool.id}
///       deletionPolicy: PREVENT
///     options:
///       dependsOn:
///         - ${rootCa}
///         - ${wait120Seconds}
///   # ca pool IAM permissions can take time to propagate
///   wait120Seconds:
///     type: time:Sleep
///     name: wait_120_seconds
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${caPoolBinding}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Secure Source Manager Instance Private Psc Backend
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = gcp.organizations.getProject({});
/// const caPool = new gcp.certificateauthority.CaPool("ca_pool", {
///     name: "ca-pool",
///     location: "us-central1",
///     tier: "ENTERPRISE",
///     publishingOptions: {
///         publishCaCert: true,
///         publishCrl: true,
///     },
/// });
/// const rootCa = new gcp.certificateauthority.Authority("root_ca", {
///     pool: caPool.name,
///     certificateAuthorityId: "root-ca",
///     location: "us-central1",
///     config: {
///         subjectConfig: {
///             subject: {
///                 organization: "google",
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
///     ignoreActiveCertificatesOnDeletion: true,
///     skipGracePeriod: true,
/// });
/// const caPoolBinding = new gcp.certificateauthority.CaPoolIamBinding("ca_pool_binding", {
///     caPool: caPool.id,
///     role: "roles/privateca.certificateRequester",
///     members: [project.then(project => `serviceAccount:service-${project.number}@gcp-sa-sourcemanager.iam.gserviceaccount.com`)],
/// });
/// // ca pool IAM permissions can take time to propagate
/// const wait120Seconds = new time.Sleep("wait_120_seconds", {createDuration: "120s"}, {
///     dependsOn: [caPoolBinding],
/// });
/// // See https://cloud.google.com/secure-source-manager/docs/create-private-service-connect-instance#root-ca-api
/// const _default = new gcp.securesourcemanager.Instance("default", {
///     instanceId: "my-instance",
///     location: "us-central1",
///     privateConfig: {
///         isPrivate: true,
///         caPool: caPool.id,
///     },
///     deletionPolicy: "PREVENT",
/// }, {
///     dependsOn: [
///         rootCa,
///         wait120Seconds,
///     ],
/// });
/// // Connect SSM private instance with L4 proxy ILB.
/// const network = new gcp.compute.Network("network", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const subnet = new gcp.compute.Subnetwork("subnet", {
///     name: "my-subnet",
///     region: "us-central1",
///     network: network.id,
///     ipCidrRange: "10.0.1.0/24",
///     privateIpGoogleAccess: true,
/// });
/// const pscNeg = new gcp.compute.RegionNetworkEndpointGroup("psc_neg", {
///     name: "my-neg",
///     region: "us-central1",
///     networkEndpointType: "PRIVATE_SERVICE_CONNECT",
///     pscTargetService: _default.privateConfig.apply(privateConfig => privateConfig?.httpServiceAttachment),
///     network: network.id,
///     subnetwork: subnet.id,
/// });
/// const backendService = new gcp.compute.RegionBackendService("backend_service", {
///     name: "my-backend-service",
///     region: "us-central1",
///     protocol: "TCP",
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     backends: [{
///         group: pscNeg.id,
///         balancingMode: "UTILIZATION",
///         capacityScaler: 1,
///     }],
/// });
/// const proxySubnet = new gcp.compute.Subnetwork("proxy_subnet", {
///     name: "my-proxy-subnet",
///     region: "us-central1",
///     network: network.id,
///     ipCidrRange: "10.0.2.0/24",
///     purpose: "REGIONAL_MANAGED_PROXY",
///     role: "ACTIVE",
/// });
/// const targetProxy = new gcp.compute.RegionTargetTcpProxy("target_proxy", {
///     name: "my-target-proxy",
///     region: "us-central1",
///     backendService: backendService.id,
/// });
/// const fwRuleTargetProxy = new gcp.compute.ForwardingRule("fw_rule_target_proxy", {
///     name: "fw-rule-target-proxy",
///     region: "us-central1",
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     ipProtocol: "TCP",
///     portRange: "443",
///     target: targetProxy.id,
///     network: network.id,
///     subnetwork: subnet.id,
///     networkTier: "PREMIUM",
/// }, {
///     dependsOn: [proxySubnet],
/// });
/// const privateZone = new gcp.dns.ManagedZone("private_zone", {
///     name: "my-dns-zone",
///     dnsName: "p.sourcemanager.dev.",
///     visibility: "private",
///     privateVisibilityConfig: {
///         networks: [{
///             networkUrl: network.id,
///         }],
///     },
/// });
/// const ssmInstanceHtmlRecord = new gcp.dns.RecordSet("ssm_instance_html_record", {
///     name: _default.hostConfigs.apply(hostConfigs => `${hostConfigs[0].html}.`),
///     type: "A",
///     ttl: 300,
///     managedZone: privateZone.name,
///     rrdatas: [fwRuleTargetProxy.ipAddress],
/// });
/// const ssmInstanceApiRecord = new gcp.dns.RecordSet("ssm_instance_api_record", {
///     name: _default.hostConfigs.apply(hostConfigs => `${hostConfigs[0].api}.`),
///     type: "A",
///     ttl: 300,
///     managedZone: privateZone.name,
///     rrdatas: [fwRuleTargetProxy.ipAddress],
/// });
/// const ssmInstanceGitRecord = new gcp.dns.RecordSet("ssm_instance_git_record", {
///     name: _default.hostConfigs.apply(hostConfigs => `${hostConfigs[0].gitHttp}.`),
///     type: "A",
///     ttl: 300,
///     managedZone: privateZone.name,
///     rrdatas: [fwRuleTargetProxy.ipAddress],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.get_project()
/// ca_pool = gcp.certificateauthority.CaPool("ca_pool",
///     name="ca-pool",
///     location="us-central1",
///     tier="ENTERPRISE",
///     publishing_options={
///         "publish_ca_cert": True,
///         "publish_crl": True,
///     })
/// root_ca = gcp.certificateauthority.Authority("root_ca",
///     pool=ca_pool.name,
///     certificate_authority_id="root-ca",
///     location="us-central1",
///     config={
///         "subject_config": {
///             "subject": {
///                 "organization": "google",
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
///     ignore_active_certificates_on_deletion=True,
///     skip_grace_period=True)
/// ca_pool_binding = gcp.certificateauthority.CaPoolIamBinding("ca_pool_binding",
///     ca_pool=ca_pool.id,
///     role="roles/privateca.certificateRequester",
///     members=[f"serviceAccount:service-{project.number}@gcp-sa-sourcemanager.iam.gserviceaccount.com"])
/// # ca pool IAM permissions can take time to propagate
/// wait120_seconds = time.Sleep("wait_120_seconds", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[ca_pool_binding]))
/// # See https://cloud.google.com/secure-source-manager/docs/create-private-service-connect-instance#root-ca-api
/// default = gcp.securesourcemanager.Instance("default",
///     instance_id="my-instance",
///     location="us-central1",
///     private_config={
///         "is_private": True,
///         "ca_pool": ca_pool.id,
///     },
///     deletion_policy="PREVENT",
///     opts = pulumi.ResourceOptions(depends_on=[
///             root_ca,
///             wait120_seconds,
///         ]))
/// # Connect SSM private instance with L4 proxy ILB.
/// network = gcp.compute.Network("network",
///     name="my-network",
///     auto_create_subnetworks=False)
/// subnet = gcp.compute.Subnetwork("subnet",
///     name="my-subnet",
///     region="us-central1",
///     network=network.id,
///     ip_cidr_range="10.0.1.0/24",
///     private_ip_google_access=True)
/// psc_neg = gcp.compute.RegionNetworkEndpointGroup("psc_neg",
///     name="my-neg",
///     region="us-central1",
///     network_endpoint_type="PRIVATE_SERVICE_CONNECT",
///     psc_target_service=default.private_config.http_service_attachment,
///     network=network.id,
///     subnetwork=subnet.id)
/// backend_service = gcp.compute.RegionBackendService("backend_service",
///     name="my-backend-service",
///     region="us-central1",
///     protocol="TCP",
///     load_balancing_scheme="INTERNAL_MANAGED",
///     backends=[{
///         "group": psc_neg.id,
///         "balancing_mode": "UTILIZATION",
///         "capacity_scaler": 1,
///     }])
/// proxy_subnet = gcp.compute.Subnetwork("proxy_subnet",
///     name="my-proxy-subnet",
///     region="us-central1",
///     network=network.id,
///     ip_cidr_range="10.0.2.0/24",
///     purpose="REGIONAL_MANAGED_PROXY",
///     role="ACTIVE")
/// target_proxy = gcp.compute.RegionTargetTcpProxy("target_proxy",
///     name="my-target-proxy",
///     region="us-central1",
///     backend_service=backend_service.id)
/// fw_rule_target_proxy = gcp.compute.ForwardingRule("fw_rule_target_proxy",
///     name="fw-rule-target-proxy",
///     region="us-central1",
///     load_balancing_scheme="INTERNAL_MANAGED",
///     ip_protocol="TCP",
///     port_range="443",
///     target=target_proxy.id,
///     network=network.id,
///     subnetwork=subnet.id,
///     network_tier="PREMIUM",
///     opts = pulumi.ResourceOptions(depends_on=[proxy_subnet]))
/// private_zone = gcp.dns.ManagedZone("private_zone",
///     name="my-dns-zone",
///     dns_name="p.sourcemanager.dev.",
///     visibility="private",
///     private_visibility_config={
///         "networks": [{
///             "network_url": network.id,
///         }],
///     })
/// ssm_instance_html_record = gcp.dns.RecordSet("ssm_instance_html_record",
///     name=default.host_configs.apply(lambda host_configs: f"{host_configs[0].html}."),
///     type="A",
///     ttl=300,
///     managed_zone=private_zone.name,
///     rrdatas=[fw_rule_target_proxy.ip_address])
/// ssm_instance_api_record = gcp.dns.RecordSet("ssm_instance_api_record",
///     name=default.host_configs.apply(lambda host_configs: f"{host_configs[0].api}."),
///     type="A",
///     ttl=300,
///     managed_zone=private_zone.name,
///     rrdatas=[fw_rule_target_proxy.ip_address])
/// ssm_instance_git_record = gcp.dns.RecordSet("ssm_instance_git_record",
///     name=default.host_configs.apply(lambda host_configs: f"{host_configs[0].git_http}."),
///     type="A",
///     ttl=300,
///     managed_zone=private_zone.name,
///     rrdatas=[fw_rule_target_proxy.ip_address])
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var caPool = new Gcp.CertificateAuthority.CaPool("ca_pool", new()
///     {
///         Name = "ca-pool",
///         Location = "us-central1",
///         Tier = "ENTERPRISE",
///         PublishingOptions = new Gcp.CertificateAuthority.Inputs.CaPoolPublishingOptionsArgs
///         {
///             PublishCaCert = true,
///             PublishCrl = true,
///         },
///     });
///
///     var rootCa = new Gcp.CertificateAuthority.Authority("root_ca", new()
///     {
///         Pool = caPool.Name,
///         CertificateAuthorityId = "root-ca",
///         Location = "us-central1",
///         Config = new Gcp.CertificateAuthority.Inputs.AuthorityConfigArgs
///         {
///             SubjectConfig = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigArgs
///             {
///                 Subject = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigSubjectArgs
///                 {
///                     Organization = "google",
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
///         IgnoreActiveCertificatesOnDeletion = true,
///         SkipGracePeriod = true,
///     });
///
///     var caPoolBinding = new Gcp.CertificateAuthority.CaPoolIamBinding("ca_pool_binding", new()
///     {
///         CaPool = caPool.Id,
///         Role = "roles/privateca.certificateRequester",
///         Members = new[]
///         {
///             $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-sourcemanager.iam.gserviceaccount.com",
///         },
///     });
///
///     // ca pool IAM permissions can take time to propagate
///     var wait120Seconds = new Time.Sleep("wait_120_seconds", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             caPoolBinding,
///         },
///     });
///
///     // See https://cloud.google.com/secure-source-manager/docs/create-private-service-connect-instance#root-ca-api
///     var @default = new Gcp.SecureSourceManager.Instance("default", new()
///     {
///         InstanceId = "my-instance",
///         Location = "us-central1",
///         PrivateConfig = new Gcp.SecureSourceManager.Inputs.InstancePrivateConfigArgs
///         {
///             IsPrivate = true,
///             CaPool = caPool.Id,
///         },
///         DeletionPolicy = "PREVENT",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             rootCa,
///             wait120Seconds,
///         },
///     });
///
///     // Connect SSM private instance with L4 proxy ILB.
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnet = new Gcp.Compute.Subnetwork("subnet", new()
///     {
///         Name = "my-subnet",
///         Region = "us-central1",
///         Network = network.Id,
///         IpCidrRange = "10.0.1.0/24",
///         PrivateIpGoogleAccess = true,
///     });
///
///     var pscNeg = new Gcp.Compute.RegionNetworkEndpointGroup("psc_neg", new()
///     {
///         Name = "my-neg",
///         Region = "us-central1",
///         NetworkEndpointType = "PRIVATE_SERVICE_CONNECT",
///         PscTargetService = @default.PrivateConfig.Apply(privateConfig => privateConfig?.HttpServiceAttachment),
///         Network = network.Id,
///         Subnetwork = subnet.Id,
///     });
///
///     var backendService = new Gcp.Compute.RegionBackendService("backend_service", new()
///     {
///         Name = "my-backend-service",
///         Region = "us-central1",
///         Protocol = "TCP",
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         Backends = new[]
///         {
///             new Gcp.Compute.Inputs.RegionBackendServiceBackendArgs
///             {
///                 Group = pscNeg.Id,
///                 BalancingMode = "UTILIZATION",
///                 CapacityScaler = 1,
///             },
///         },
///     });
///
///     var proxySubnet = new Gcp.Compute.Subnetwork("proxy_subnet", new()
///     {
///         Name = "my-proxy-subnet",
///         Region = "us-central1",
///         Network = network.Id,
///         IpCidrRange = "10.0.2.0/24",
///         Purpose = "REGIONAL_MANAGED_PROXY",
///         Role = "ACTIVE",
///     });
///
///     var targetProxy = new Gcp.Compute.RegionTargetTcpProxy("target_proxy", new()
///     {
///         Name = "my-target-proxy",
///         Region = "us-central1",
///         BackendService = backendService.Id,
///     });
///
///     var fwRuleTargetProxy = new Gcp.Compute.ForwardingRule("fw_rule_target_proxy", new()
///     {
///         Name = "fw-rule-target-proxy",
///         Region = "us-central1",
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         IpProtocol = "TCP",
///         PortRange = "443",
///         Target = targetProxy.Id,
///         Network = network.Id,
///         Subnetwork = subnet.Id,
///         NetworkTier = "PREMIUM",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             proxySubnet,
///         },
///     });
///
///     var privateZone = new Gcp.Dns.ManagedZone("private_zone", new()
///     {
///         Name = "my-dns-zone",
///         DnsName = "p.sourcemanager.dev.",
///         Visibility = "private",
///         PrivateVisibilityConfig = new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigArgs
///         {
///             Networks = new[]
///             {
///                 new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigNetworkArgs
///                 {
///                     NetworkUrl = network.Id,
///                 },
///             },
///         },
///     });
///
///     var ssmInstanceHtmlRecord = new Gcp.Dns.RecordSet("ssm_instance_html_record", new()
///     {
///         Name = @default.HostConfigs.Apply(hostConfigs => $"{hostConfigs[0].Html}."),
///         Type = "A",
///         Ttl = 300,
///         ManagedZone = privateZone.Name,
///         Rrdatas = new[]
///         {
///             fwRuleTargetProxy.IpAddress,
///         },
///     });
///
///     var ssmInstanceApiRecord = new Gcp.Dns.RecordSet("ssm_instance_api_record", new()
///     {
///         Name = @default.HostConfigs.Apply(hostConfigs => $"{hostConfigs[0].Api}."),
///         Type = "A",
///         Ttl = 300,
///         ManagedZone = privateZone.Name,
///         Rrdatas = new[]
///         {
///             fwRuleTargetProxy.IpAddress,
///         },
///     });
///
///     var ssmInstanceGitRecord = new Gcp.Dns.RecordSet("ssm_instance_git_record", new()
///     {
///         Name = @default.HostConfigs.Apply(hostConfigs => $"{hostConfigs[0].GitHttp}."),
///         Type = "A",
///         Ttl = 300,
///         ManagedZone = privateZone.Name,
///         Rrdatas = new[]
///         {
///             fwRuleTargetProxy.IpAddress,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		caPool, err := certificateauthority.NewCaPool(ctx, "ca_pool", &certificateauthority.CaPoolArgs{
/// 			Name:     pulumi.String("ca-pool"),
/// 			Location: pulumi.String("us-central1"),
/// 			Tier:     pulumi.String("ENTERPRISE"),
/// 			PublishingOptions: &certificateauthority.CaPoolPublishingOptionsArgs{
/// 				PublishCaCert: pulumi.Bool(true),
/// 				PublishCrl:    pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		rootCa, err := certificateauthority.NewAuthority(ctx, "root_ca", &certificateauthority.AuthorityArgs{
/// 			Pool:                   caPool.Name,
/// 			CertificateAuthorityId: pulumi.String("root-ca"),
/// 			Location:               pulumi.String("us-central1"),
/// 			Config: &certificateauthority.AuthorityConfigArgs{
/// 				SubjectConfig: &certificateauthority.AuthorityConfigSubjectConfigArgs{
/// 					Subject: &certificateauthority.AuthorityConfigSubjectConfigSubjectArgs{
/// 						Organization: pulumi.String("google"),
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
/// 			IgnoreActiveCertificatesOnDeletion: pulumi.Bool(true),
/// 			SkipGracePeriod:                    pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		caPoolBinding, err := certificateauthority.NewCaPoolIamBinding(ctx, "ca_pool_binding", &certificateauthority.CaPoolIamBindingArgs{
/// 			CaPool: caPool.ID(),
/// 			Role:   pulumi.String("roles/privateca.certificateRequester"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-sourcemanager.iam.gserviceaccount.com", project.Number),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// ca pool IAM permissions can take time to propagate
/// 		wait120Seconds, err := time.NewSleep(ctx, "wait_120_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			caPoolBinding,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// See https://cloud.google.com/secure-source-manager/docs/create-private-service-connect-instance#root-ca-api
/// 		_default, err := securesourcemanager.NewInstance(ctx, "default", &securesourcemanager.InstanceArgs{
/// 			InstanceId: pulumi.String("my-instance"),
/// 			Location:   pulumi.String("us-central1"),
/// 			PrivateConfig: &securesourcemanager.InstancePrivateConfigArgs{
/// 				IsPrivate: pulumi.Bool(true),
/// 				CaPool:    caPool.ID(),
/// 			},
/// 			DeletionPolicy: pulumi.String("PREVENT"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			rootCa,
/// 			wait120Seconds,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Connect SSM private instance with L4 proxy ILB.
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnet, err := compute.NewSubnetwork(ctx, "subnet", &compute.SubnetworkArgs{
/// 			Name:                  pulumi.String("my-subnet"),
/// 			Region:                pulumi.String("us-central1"),
/// 			Network:               network.ID(),
/// 			IpCidrRange:           pulumi.String("10.0.1.0/24"),
/// 			PrivateIpGoogleAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscNeg, err := compute.NewRegionNetworkEndpointGroup(ctx, "psc_neg", &compute.RegionNetworkEndpointGroupArgs{
/// 			Name:                pulumi.String("my-neg"),
/// 			Region:              pulumi.String("us-central1"),
/// 			NetworkEndpointType: pulumi.String("PRIVATE_SERVICE_CONNECT"),
/// 			PscTargetService: pulumi.String(_default.PrivateConfig.ApplyT(func(privateConfig securesourcemanager.InstancePrivateConfig) (*string, error) {
/// 				return &privateConfig.HttpServiceAttachment, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Network:    network.ID(),
/// 			Subnetwork: subnet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		backendService, err := compute.NewRegionBackendService(ctx, "backend_service", &compute.RegionBackendServiceArgs{
/// 			Name:                pulumi.String("my-backend-service"),
/// 			Region:              pulumi.String("us-central1"),
/// 			Protocol:            pulumi.String("TCP"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			Backends: compute.RegionBackendServiceBackendArray{
/// 				&compute.RegionBackendServiceBackendArgs{
/// 					Group:          pscNeg.ID(),
/// 					BalancingMode:  pulumi.String("UTILIZATION"),
/// 					CapacityScaler: pulumi.Float64(1),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		proxySubnet, err := compute.NewSubnetwork(ctx, "proxy_subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-proxy-subnet"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     network.ID(),
/// 			IpCidrRange: pulumi.String("10.0.2.0/24"),
/// 			Purpose:     pulumi.String("REGIONAL_MANAGED_PROXY"),
/// 			Role:        pulumi.String("ACTIVE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		targetProxy, err := compute.NewRegionTargetTcpProxy(ctx, "target_proxy", &compute.RegionTargetTcpProxyArgs{
/// 			Name:           pulumi.String("my-target-proxy"),
/// 			Region:         pulumi.String("us-central1"),
/// 			BackendService: backendService.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fwRuleTargetProxy, err := compute.NewForwardingRule(ctx, "fw_rule_target_proxy", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("fw-rule-target-proxy"),
/// 			Region:              pulumi.String("us-central1"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			IpProtocol:          pulumi.String("TCP"),
/// 			PortRange:           pulumi.String("443"),
/// 			Target:              targetProxy.ID(),
/// 			Network:             network.ID(),
/// 			Subnetwork:          subnet.ID(),
/// 			NetworkTier:         pulumi.String("PREMIUM"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			proxySubnet,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		privateZone, err := dns.NewManagedZone(ctx, "private_zone", &dns.ManagedZoneArgs{
/// 			Name:       pulumi.String("my-dns-zone"),
/// 			DnsName:    pulumi.String("p.sourcemanager.dev."),
/// 			Visibility: pulumi.String("private"),
/// 			PrivateVisibilityConfig: &dns.ManagedZonePrivateVisibilityConfigArgs{
/// 				Networks: dns.ManagedZonePrivateVisibilityConfigNetworkArray{
/// 					&dns.ManagedZonePrivateVisibilityConfigNetworkArgs{
/// 						NetworkUrl: network.ID(),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewRecordSet(ctx, "ssm_instance_html_record", &dns.RecordSetArgs{
/// 			Name: _default.HostConfigs.ApplyT(func(hostConfigs []securesourcemanager.InstanceHostConfig) (string, error) {
/// 				return fmt.Sprintf("%v.", hostConfigs[0].Html), nil
/// 			}).(pulumi.StringOutput),
/// 			Type:        pulumi.String("A"),
/// 			Ttl:         pulumi.Int(300),
/// 			ManagedZone: privateZone.Name,
/// 			Rrdatas: pulumi.StringArray{
/// 				fwRuleTargetProxy.IpAddress,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewRecordSet(ctx, "ssm_instance_api_record", &dns.RecordSetArgs{
/// 			Name: _default.HostConfigs.ApplyT(func(hostConfigs []securesourcemanager.InstanceHostConfig) (string, error) {
/// 				return fmt.Sprintf("%v.", hostConfigs[0].Api), nil
/// 			}).(pulumi.StringOutput),
/// 			Type:        pulumi.String("A"),
/// 			Ttl:         pulumi.Int(300),
/// 			ManagedZone: privateZone.Name,
/// 			Rrdatas: pulumi.StringArray{
/// 				fwRuleTargetProxy.IpAddress,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewRecordSet(ctx, "ssm_instance_git_record", &dns.RecordSetArgs{
/// 			Name: _default.HostConfigs.ApplyT(func(hostConfigs []securesourcemanager.InstanceHostConfig) (string, error) {
/// 				return fmt.Sprintf("%v.", hostConfigs[0].GitHttp), nil
/// 			}).(pulumi.StringOutput),
/// 			Type:        pulumi.String("A"),
/// 			Ttl:         pulumi.Int(300),
/// 			ManagedZone: privateZone.Name,
/// 			Rrdatas: pulumi.StringArray{
/// 				fwRuleTargetProxy.IpAddress,
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.certificateauthority.CaPool;
/// import com.pulumi.gcp.certificateauthority.CaPoolArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolPublishingOptionsArgs;
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
/// import com.pulumi.gcp.certificateauthority.CaPoolIamBinding;
/// import com.pulumi.gcp.certificateauthority.CaPoolIamBindingArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.securesourcemanager.Instance;
/// import com.pulumi.gcp.securesourcemanager.InstanceArgs;
/// import com.pulumi.gcp.securesourcemanager.inputs.InstancePrivateConfigArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroup;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroupArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceBackendArgs;
/// import com.pulumi.gcp.compute.RegionTargetTcpProxy;
/// import com.pulumi.gcp.compute.RegionTargetTcpProxyArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZonePrivateVisibilityConfigArgs;
/// import com.pulumi.gcp.dns.RecordSet;
/// import com.pulumi.gcp.dns.RecordSetArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var caPool = new CaPool("caPool", CaPoolArgs.builder()
///             .name("ca-pool")
///             .location("us-central1")
///             .tier("ENTERPRISE")
///             .publishingOptions(CaPoolPublishingOptionsArgs.builder()
///                 .publishCaCert(true)
///                 .publishCrl(true)
///                 .build())
///             .build());
///
///         var rootCa = new Authority("rootCa", AuthorityArgs.builder()
///             .pool(caPool.name())
///             .certificateAuthorityId("root-ca")
///             .location("us-central1")
///             .config(AuthorityConfigArgs.builder()
///                 .subjectConfig(AuthorityConfigSubjectConfigArgs.builder()
///                     .subject(AuthorityConfigSubjectConfigSubjectArgs.builder()
///                         .organization("google")
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
///                             .serverAuth(true)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .keySpec(AuthorityKeySpecArgs.builder()
///                 .algorithm("RSA_PKCS1_4096_SHA256")
///                 .build())
///             .deletionProtection(false)
///             .ignoreActiveCertificatesOnDeletion(true)
///             .skipGracePeriod(true)
///             .build());
///
///         var caPoolBinding = new CaPoolIamBinding("caPoolBinding", CaPoolIamBindingArgs.builder()
///             .caPool(caPool.id())
///             .role("roles/privateca.certificateRequester")
///             .members(String.format("serviceAccount:service-%s@gcp-sa-sourcemanager.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         // ca pool IAM permissions can take time to propagate
///         var wait120Seconds = new Sleep("wait120Seconds", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(caPoolBinding)
///                 .build());
///
///         // See https://cloud.google.com/secure-source-manager/docs/create-private-service-connect-instance#root-ca-api
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .instanceId("my-instance")
///             .location("us-central1")
///             .privateConfig(InstancePrivateConfigArgs.builder()
///                 .isPrivate(true)
///                 .caPool(caPool.id())
///                 .build())
///             .deletionPolicy("PREVENT")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     rootCa,
///                     wait120Seconds)
///                 .build());
///
///         // Connect SSM private instance with L4 proxy ILB.
///         var network = new Network("network", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnet = new Subnetwork("subnet", SubnetworkArgs.builder()
///             .name("my-subnet")
///             .region("us-central1")
///             .network(network.id())
///             .ipCidrRange("10.0.1.0/24")
///             .privateIpGoogleAccess(true)
///             .build());
///
///         var pscNeg = new RegionNetworkEndpointGroup("pscNeg", RegionNetworkEndpointGroupArgs.builder()
///             .name("my-neg")
///             .region("us-central1")
///             .networkEndpointType("PRIVATE_SERVICE_CONNECT")
///             .pscTargetService(default_.privateConfig().applyValue(_privateConfig -> _privateConfig.httpServiceAttachment()))
///             .network(network.id())
///             .subnetwork(subnet.id())
///             .build());
///
///         var backendService = new RegionBackendService("backendService", RegionBackendServiceArgs.builder()
///             .name("my-backend-service")
///             .region("us-central1")
///             .protocol("TCP")
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .backends(RegionBackendServiceBackendArgs.builder()
///                 .group(pscNeg.id())
///                 .balancingMode("UTILIZATION")
///                 .capacityScaler(1.0)
///                 .build())
///             .build());
///
///         var proxySubnet = new Subnetwork("proxySubnet", SubnetworkArgs.builder()
///             .name("my-proxy-subnet")
///             .region("us-central1")
///             .network(network.id())
///             .ipCidrRange("10.0.2.0/24")
///             .purpose("REGIONAL_MANAGED_PROXY")
///             .role("ACTIVE")
///             .build());
///
///         var targetProxy = new RegionTargetTcpProxy("targetProxy", RegionTargetTcpProxyArgs.builder()
///             .name("my-target-proxy")
///             .region("us-central1")
///             .backendService(backendService.id())
///             .build());
///
///         var fwRuleTargetProxy = new ForwardingRule("fwRuleTargetProxy", ForwardingRuleArgs.builder()
///             .name("fw-rule-target-proxy")
///             .region("us-central1")
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .ipProtocol("TCP")
///             .portRange("443")
///             .target(targetProxy.id())
///             .network(network.id())
///             .subnetwork(subnet.id())
///             .networkTier("PREMIUM")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(proxySubnet)
///                 .build());
///
///         var privateZone = new ManagedZone("privateZone", ManagedZoneArgs.builder()
///             .name("my-dns-zone")
///             .dnsName("p.sourcemanager.dev.")
///             .visibility("private")
///             .privateVisibilityConfig(ManagedZonePrivateVisibilityConfigArgs.builder()
///                 .networks(ManagedZonePrivateVisibilityConfigNetworkArgs.builder()
///                     .networkUrl(network.id())
///                     .build())
///                 .build())
///             .build());
///
///         var ssmInstanceHtmlRecord = new RecordSet("ssmInstanceHtmlRecord", RecordSetArgs.builder()
///             .name(default_.hostConfigs().applyValue(_hostConfigs -> String.format("%s.", _hostConfigs[0].html())))
///             .type("A")
///             .ttl(300)
///             .managedZone(privateZone.name())
///             .rrdatas(fwRuleTargetProxy.ipAddress())
///             .build());
///
///         var ssmInstanceApiRecord = new RecordSet("ssmInstanceApiRecord", RecordSetArgs.builder()
///             .name(default_.hostConfigs().applyValue(_hostConfigs -> String.format("%s.", _hostConfigs[0].api())))
///             .type("A")
///             .ttl(300)
///             .managedZone(privateZone.name())
///             .rrdatas(fwRuleTargetProxy.ipAddress())
///             .build());
///
///         var ssmInstanceGitRecord = new RecordSet("ssmInstanceGitRecord", RecordSetArgs.builder()
///             .name(default_.hostConfigs().applyValue(_hostConfigs -> String.format("%s.", _hostConfigs[0].gitHttp())))
///             .type("A")
///             .ttl(300)
///             .managedZone(privateZone.name())
///             .rrdatas(fwRuleTargetProxy.ipAddress())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   caPool:
///     type: gcp:certificateauthority:CaPool
///     name: ca_pool
///     properties:
///       name: ca-pool
///       location: us-central1
///       tier: ENTERPRISE
///       publishingOptions:
///         publishCaCert: true
///         publishCrl: true
///   rootCa:
///     type: gcp:certificateauthority:Authority
///     name: root_ca
///     properties:
///       pool: ${caPool.name}
///       certificateAuthorityId: root-ca
///       location: us-central1
///       config:
///         subjectConfig:
///           subject:
///             organization: google
///             commonName: my-certificate-authority
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
///       ignoreActiveCertificatesOnDeletion: true
///       skipGracePeriod: true
///   caPoolBinding:
///     type: gcp:certificateauthority:CaPoolIamBinding
///     name: ca_pool_binding
///     properties:
///       caPool: ${caPool.id}
///       role: roles/privateca.certificateRequester
///       members:
///         - serviceAccount:service-${project.number}@gcp-sa-sourcemanager.iam.gserviceaccount.com
///   # See https://cloud.google.com/secure-source-manager/docs/create-private-service-connect-instance#root-ca-api
///   default:
///     type: gcp:securesourcemanager:Instance
///     properties:
///       instanceId: my-instance
///       location: us-central1
///       privateConfig:
///         isPrivate: true
///         caPool: ${caPool.id}
///       deletionPolicy: PREVENT
///     options:
///       dependsOn:
///         - ${rootCa}
///         - ${wait120Seconds}
///   # ca pool IAM permissions can take time to propagate
///   wait120Seconds:
///     type: time:Sleep
///     name: wait_120_seconds
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${caPoolBinding}
///   # Connect SSM private instance with L4 proxy ILB.
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
///   subnet:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: my-subnet
///       region: us-central1
///       network: ${network.id}
///       ipCidrRange: 10.0.1.0/24
///       privateIpGoogleAccess: true
///   pscNeg:
///     type: gcp:compute:RegionNetworkEndpointGroup
///     name: psc_neg
///     properties:
///       name: my-neg
///       region: us-central1
///       networkEndpointType: PRIVATE_SERVICE_CONNECT
///       pscTargetService: ${default.privateConfig.httpServiceAttachment}
///       network: ${network.id}
///       subnetwork: ${subnet.id}
///   backendService:
///     type: gcp:compute:RegionBackendService
///     name: backend_service
///     properties:
///       name: my-backend-service
///       region: us-central1
///       protocol: TCP
///       loadBalancingScheme: INTERNAL_MANAGED
///       backends:
///         - group: ${pscNeg.id}
///           balancingMode: UTILIZATION
///           capacityScaler: 1
///   proxySubnet:
///     type: gcp:compute:Subnetwork
///     name: proxy_subnet
///     properties:
///       name: my-proxy-subnet
///       region: us-central1
///       network: ${network.id}
///       ipCidrRange: 10.0.2.0/24
///       purpose: REGIONAL_MANAGED_PROXY
///       role: ACTIVE
///   targetProxy:
///     type: gcp:compute:RegionTargetTcpProxy
///     name: target_proxy
///     properties:
///       name: my-target-proxy
///       region: us-central1
///       backendService: ${backendService.id}
///   fwRuleTargetProxy:
///     type: gcp:compute:ForwardingRule
///     name: fw_rule_target_proxy
///     properties:
///       name: fw-rule-target-proxy
///       region: us-central1
///       loadBalancingScheme: INTERNAL_MANAGED
///       ipProtocol: TCP
///       portRange: '443'
///       target: ${targetProxy.id}
///       network: ${network.id}
///       subnetwork: ${subnet.id}
///       networkTier: PREMIUM
///     options:
///       dependsOn:
///         - ${proxySubnet}
///   privateZone:
///     type: gcp:dns:ManagedZone
///     name: private_zone
///     properties:
///       name: my-dns-zone
///       dnsName: p.sourcemanager.dev.
///       visibility: private
///       privateVisibilityConfig:
///         networks:
///           - networkUrl: ${network.id}
///   ssmInstanceHtmlRecord:
///     type: gcp:dns:RecordSet
///     name: ssm_instance_html_record
///     properties:
///       name: ${default.hostConfigs[0].html}.
///       type: A
///       ttl: 300
///       managedZone: ${privateZone.name}
///       rrdatas:
///         - ${fwRuleTargetProxy.ipAddress}
///   ssmInstanceApiRecord:
///     type: gcp:dns:RecordSet
///     name: ssm_instance_api_record
///     properties:
///       name: ${default.hostConfigs[0].api}.
///       type: A
///       ttl: 300
///       managedZone: ${privateZone.name}
///       rrdatas:
///         - ${fwRuleTargetProxy.ipAddress}
///   ssmInstanceGitRecord:
///     type: gcp:dns:RecordSet
///     name: ssm_instance_git_record
///     properties:
///       name: ${default.hostConfigs[0].gitHttp}.
///       type: A
///       ttl: 300
///       managedZone: ${privateZone.name}
///       rrdatas:
///         - ${fwRuleTargetProxy.ipAddress}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Secure Source Manager Instance Private Psc Endpoint
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = gcp.organizations.getProject({});
/// const caPool = new gcp.certificateauthority.CaPool("ca_pool", {
///     name: "ca-pool",
///     location: "us-central1",
///     tier: "ENTERPRISE",
///     publishingOptions: {
///         publishCaCert: true,
///         publishCrl: true,
///     },
/// });
/// const rootCa = new gcp.certificateauthority.Authority("root_ca", {
///     pool: caPool.name,
///     certificateAuthorityId: "root-ca",
///     location: "us-central1",
///     config: {
///         subjectConfig: {
///             subject: {
///                 organization: "google",
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
///     ignoreActiveCertificatesOnDeletion: true,
///     skipGracePeriod: true,
/// });
/// const caPoolBinding = new gcp.certificateauthority.CaPoolIamBinding("ca_pool_binding", {
///     caPool: caPool.id,
///     role: "roles/privateca.certificateRequester",
///     members: [project.then(project => `serviceAccount:service-${project.number}@gcp-sa-sourcemanager.iam.gserviceaccount.com`)],
/// });
/// // ca pool IAM permissions can take time to propagate
/// const wait120Seconds = new time.Sleep("wait_120_seconds", {createDuration: "120s"}, {
///     dependsOn: [caPoolBinding],
/// });
/// // See https://cloud.google.com/secure-source-manager/docs/create-private-service-connect-instance#root-ca-api
/// const _default = new gcp.securesourcemanager.Instance("default", {
///     instanceId: "my-instance",
///     location: "us-central1",
///     privateConfig: {
///         isPrivate: true,
///         caPool: caPool.id,
///     },
///     deletionPolicy: "PREVENT",
/// }, {
///     dependsOn: [
///         rootCa,
///         wait120Seconds,
///     ],
/// });
/// // Connect SSM private instance with endpoint.
/// const network = new gcp.compute.Network("network", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const subnet = new gcp.compute.Subnetwork("subnet", {
///     name: "my-subnet",
///     region: "us-central1",
///     network: network.id,
///     ipCidrRange: "10.0.60.0/24",
///     privateIpGoogleAccess: true,
/// });
/// const address = new gcp.compute.Address("address", {
///     name: "my-address",
///     region: "us-central1",
///     address: "10.0.60.100",
///     addressType: "INTERNAL",
///     subnetwork: subnet.id,
/// });
/// const fwRuleServiceAttachment = new gcp.compute.ForwardingRule("fw_rule_service_attachment", {
///     name: "fw-rule-service-attachment",
///     region: "us-central1",
///     loadBalancingScheme: "",
///     ipAddress: address.id,
///     network: network.id,
///     target: _default.privateConfig.apply(privateConfig => privateConfig?.httpServiceAttachment),
/// });
/// const privateZone = new gcp.dns.ManagedZone("private_zone", {
///     name: "my-dns-zone",
///     dnsName: "p.sourcemanager.dev.",
///     visibility: "private",
///     privateVisibilityConfig: {
///         networks: [{
///             networkUrl: network.id,
///         }],
///     },
/// });
/// const ssmInstanceHtmlRecord = new gcp.dns.RecordSet("ssm_instance_html_record", {
///     name: _default.hostConfigs.apply(hostConfigs => `${hostConfigs[0].html}.`),
///     type: "A",
///     ttl: 300,
///     managedZone: privateZone.name,
///     rrdatas: [fwRuleServiceAttachment.ipAddress],
/// });
/// const ssmInstanceApiRecord = new gcp.dns.RecordSet("ssm_instance_api_record", {
///     name: _default.hostConfigs.apply(hostConfigs => `${hostConfigs[0].api}.`),
///     type: "A",
///     ttl: 300,
///     managedZone: privateZone.name,
///     rrdatas: [fwRuleServiceAttachment.ipAddress],
/// });
/// const ssmInstanceGitRecord = new gcp.dns.RecordSet("ssm_instance_git_record", {
///     name: _default.hostConfigs.apply(hostConfigs => `${hostConfigs[0].gitHttp}.`),
///     type: "A",
///     ttl: 300,
///     managedZone: privateZone.name,
///     rrdatas: [fwRuleServiceAttachment.ipAddress],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.get_project()
/// ca_pool = gcp.certificateauthority.CaPool("ca_pool",
///     name="ca-pool",
///     location="us-central1",
///     tier="ENTERPRISE",
///     publishing_options={
///         "publish_ca_cert": True,
///         "publish_crl": True,
///     })
/// root_ca = gcp.certificateauthority.Authority("root_ca",
///     pool=ca_pool.name,
///     certificate_authority_id="root-ca",
///     location="us-central1",
///     config={
///         "subject_config": {
///             "subject": {
///                 "organization": "google",
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
///     ignore_active_certificates_on_deletion=True,
///     skip_grace_period=True)
/// ca_pool_binding = gcp.certificateauthority.CaPoolIamBinding("ca_pool_binding",
///     ca_pool=ca_pool.id,
///     role="roles/privateca.certificateRequester",
///     members=[f"serviceAccount:service-{project.number}@gcp-sa-sourcemanager.iam.gserviceaccount.com"])
/// # ca pool IAM permissions can take time to propagate
/// wait120_seconds = time.Sleep("wait_120_seconds", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[ca_pool_binding]))
/// # See https://cloud.google.com/secure-source-manager/docs/create-private-service-connect-instance#root-ca-api
/// default = gcp.securesourcemanager.Instance("default",
///     instance_id="my-instance",
///     location="us-central1",
///     private_config={
///         "is_private": True,
///         "ca_pool": ca_pool.id,
///     },
///     deletion_policy="PREVENT",
///     opts = pulumi.ResourceOptions(depends_on=[
///             root_ca,
///             wait120_seconds,
///         ]))
/// # Connect SSM private instance with endpoint.
/// network = gcp.compute.Network("network",
///     name="my-network",
///     auto_create_subnetworks=False)
/// subnet = gcp.compute.Subnetwork("subnet",
///     name="my-subnet",
///     region="us-central1",
///     network=network.id,
///     ip_cidr_range="10.0.60.0/24",
///     private_ip_google_access=True)
/// address = gcp.compute.Address("address",
///     name="my-address",
///     region="us-central1",
///     address="10.0.60.100",
///     address_type="INTERNAL",
///     subnetwork=subnet.id)
/// fw_rule_service_attachment = gcp.compute.ForwardingRule("fw_rule_service_attachment",
///     name="fw-rule-service-attachment",
///     region="us-central1",
///     load_balancing_scheme="",
///     ip_address=address.id,
///     network=network.id,
///     target=default.private_config.http_service_attachment)
/// private_zone = gcp.dns.ManagedZone("private_zone",
///     name="my-dns-zone",
///     dns_name="p.sourcemanager.dev.",
///     visibility="private",
///     private_visibility_config={
///         "networks": [{
///             "network_url": network.id,
///         }],
///     })
/// ssm_instance_html_record = gcp.dns.RecordSet("ssm_instance_html_record",
///     name=default.host_configs.apply(lambda host_configs: f"{host_configs[0].html}."),
///     type="A",
///     ttl=300,
///     managed_zone=private_zone.name,
///     rrdatas=[fw_rule_service_attachment.ip_address])
/// ssm_instance_api_record = gcp.dns.RecordSet("ssm_instance_api_record",
///     name=default.host_configs.apply(lambda host_configs: f"{host_configs[0].api}."),
///     type="A",
///     ttl=300,
///     managed_zone=private_zone.name,
///     rrdatas=[fw_rule_service_attachment.ip_address])
/// ssm_instance_git_record = gcp.dns.RecordSet("ssm_instance_git_record",
///     name=default.host_configs.apply(lambda host_configs: f"{host_configs[0].git_http}."),
///     type="A",
///     ttl=300,
///     managed_zone=private_zone.name,
///     rrdatas=[fw_rule_service_attachment.ip_address])
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var caPool = new Gcp.CertificateAuthority.CaPool("ca_pool", new()
///     {
///         Name = "ca-pool",
///         Location = "us-central1",
///         Tier = "ENTERPRISE",
///         PublishingOptions = new Gcp.CertificateAuthority.Inputs.CaPoolPublishingOptionsArgs
///         {
///             PublishCaCert = true,
///             PublishCrl = true,
///         },
///     });
///
///     var rootCa = new Gcp.CertificateAuthority.Authority("root_ca", new()
///     {
///         Pool = caPool.Name,
///         CertificateAuthorityId = "root-ca",
///         Location = "us-central1",
///         Config = new Gcp.CertificateAuthority.Inputs.AuthorityConfigArgs
///         {
///             SubjectConfig = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigArgs
///             {
///                 Subject = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigSubjectArgs
///                 {
///                     Organization = "google",
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
///         IgnoreActiveCertificatesOnDeletion = true,
///         SkipGracePeriod = true,
///     });
///
///     var caPoolBinding = new Gcp.CertificateAuthority.CaPoolIamBinding("ca_pool_binding", new()
///     {
///         CaPool = caPool.Id,
///         Role = "roles/privateca.certificateRequester",
///         Members = new[]
///         {
///             $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-sourcemanager.iam.gserviceaccount.com",
///         },
///     });
///
///     // ca pool IAM permissions can take time to propagate
///     var wait120Seconds = new Time.Sleep("wait_120_seconds", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             caPoolBinding,
///         },
///     });
///
///     // See https://cloud.google.com/secure-source-manager/docs/create-private-service-connect-instance#root-ca-api
///     var @default = new Gcp.SecureSourceManager.Instance("default", new()
///     {
///         InstanceId = "my-instance",
///         Location = "us-central1",
///         PrivateConfig = new Gcp.SecureSourceManager.Inputs.InstancePrivateConfigArgs
///         {
///             IsPrivate = true,
///             CaPool = caPool.Id,
///         },
///         DeletionPolicy = "PREVENT",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             rootCa,
///             wait120Seconds,
///         },
///     });
///
///     // Connect SSM private instance with endpoint.
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnet = new Gcp.Compute.Subnetwork("subnet", new()
///     {
///         Name = "my-subnet",
///         Region = "us-central1",
///         Network = network.Id,
///         IpCidrRange = "10.0.60.0/24",
///         PrivateIpGoogleAccess = true,
///     });
///
///     var address = new Gcp.Compute.Address("address", new()
///     {
///         Name = "my-address",
///         Region = "us-central1",
///         IPAddress = "10.0.60.100",
///         AddressType = "INTERNAL",
///         Subnetwork = subnet.Id,
///     });
///
///     var fwRuleServiceAttachment = new Gcp.Compute.ForwardingRule("fw_rule_service_attachment", new()
///     {
///         Name = "fw-rule-service-attachment",
///         Region = "us-central1",
///         LoadBalancingScheme = "",
///         IpAddress = address.Id,
///         Network = network.Id,
///         Target = @default.PrivateConfig.Apply(privateConfig => privateConfig?.HttpServiceAttachment),
///     });
///
///     var privateZone = new Gcp.Dns.ManagedZone("private_zone", new()
///     {
///         Name = "my-dns-zone",
///         DnsName = "p.sourcemanager.dev.",
///         Visibility = "private",
///         PrivateVisibilityConfig = new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigArgs
///         {
///             Networks = new[]
///             {
///                 new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigNetworkArgs
///                 {
///                     NetworkUrl = network.Id,
///                 },
///             },
///         },
///     });
///
///     var ssmInstanceHtmlRecord = new Gcp.Dns.RecordSet("ssm_instance_html_record", new()
///     {
///         Name = @default.HostConfigs.Apply(hostConfigs => $"{hostConfigs[0].Html}."),
///         Type = "A",
///         Ttl = 300,
///         ManagedZone = privateZone.Name,
///         Rrdatas = new[]
///         {
///             fwRuleServiceAttachment.IpAddress,
///         },
///     });
///
///     var ssmInstanceApiRecord = new Gcp.Dns.RecordSet("ssm_instance_api_record", new()
///     {
///         Name = @default.HostConfigs.Apply(hostConfigs => $"{hostConfigs[0].Api}."),
///         Type = "A",
///         Ttl = 300,
///         ManagedZone = privateZone.Name,
///         Rrdatas = new[]
///         {
///             fwRuleServiceAttachment.IpAddress,
///         },
///     });
///
///     var ssmInstanceGitRecord = new Gcp.Dns.RecordSet("ssm_instance_git_record", new()
///     {
///         Name = @default.HostConfigs.Apply(hostConfigs => $"{hostConfigs[0].GitHttp}."),
///         Type = "A",
///         Ttl = 300,
///         ManagedZone = privateZone.Name,
///         Rrdatas = new[]
///         {
///             fwRuleServiceAttachment.IpAddress,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		caPool, err := certificateauthority.NewCaPool(ctx, "ca_pool", &certificateauthority.CaPoolArgs{
/// 			Name:     pulumi.String("ca-pool"),
/// 			Location: pulumi.String("us-central1"),
/// 			Tier:     pulumi.String("ENTERPRISE"),
/// 			PublishingOptions: &certificateauthority.CaPoolPublishingOptionsArgs{
/// 				PublishCaCert: pulumi.Bool(true),
/// 				PublishCrl:    pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		rootCa, err := certificateauthority.NewAuthority(ctx, "root_ca", &certificateauthority.AuthorityArgs{
/// 			Pool:                   caPool.Name,
/// 			CertificateAuthorityId: pulumi.String("root-ca"),
/// 			Location:               pulumi.String("us-central1"),
/// 			Config: &certificateauthority.AuthorityConfigArgs{
/// 				SubjectConfig: &certificateauthority.AuthorityConfigSubjectConfigArgs{
/// 					Subject: &certificateauthority.AuthorityConfigSubjectConfigSubjectArgs{
/// 						Organization: pulumi.String("google"),
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
/// 			IgnoreActiveCertificatesOnDeletion: pulumi.Bool(true),
/// 			SkipGracePeriod:                    pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		caPoolBinding, err := certificateauthority.NewCaPoolIamBinding(ctx, "ca_pool_binding", &certificateauthority.CaPoolIamBindingArgs{
/// 			CaPool: caPool.ID(),
/// 			Role:   pulumi.String("roles/privateca.certificateRequester"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-sourcemanager.iam.gserviceaccount.com", project.Number),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// ca pool IAM permissions can take time to propagate
/// 		wait120Seconds, err := time.NewSleep(ctx, "wait_120_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			caPoolBinding,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// See https://cloud.google.com/secure-source-manager/docs/create-private-service-connect-instance#root-ca-api
/// 		_default, err := securesourcemanager.NewInstance(ctx, "default", &securesourcemanager.InstanceArgs{
/// 			InstanceId: pulumi.String("my-instance"),
/// 			Location:   pulumi.String("us-central1"),
/// 			PrivateConfig: &securesourcemanager.InstancePrivateConfigArgs{
/// 				IsPrivate: pulumi.Bool(true),
/// 				CaPool:    caPool.ID(),
/// 			},
/// 			DeletionPolicy: pulumi.String("PREVENT"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			rootCa,
/// 			wait120Seconds,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Connect SSM private instance with endpoint.
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnet, err := compute.NewSubnetwork(ctx, "subnet", &compute.SubnetworkArgs{
/// 			Name:                  pulumi.String("my-subnet"),
/// 			Region:                pulumi.String("us-central1"),
/// 			Network:               network.ID(),
/// 			IpCidrRange:           pulumi.String("10.0.60.0/24"),
/// 			PrivateIpGoogleAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		address, err := compute.NewAddress(ctx, "address", &compute.AddressArgs{
/// 			Name:        pulumi.String("my-address"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Address:     pulumi.String("10.0.60.100"),
/// 			AddressType: pulumi.String("INTERNAL"),
/// 			Subnetwork:  subnet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fwRuleServiceAttachment, err := compute.NewForwardingRule(ctx, "fw_rule_service_attachment", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("fw-rule-service-attachment"),
/// 			Region:              pulumi.String("us-central1"),
/// 			LoadBalancingScheme: pulumi.String(""),
/// 			IpAddress:           address.ID(),
/// 			Network:             network.ID(),
/// 			Target: pulumi.String(_default.PrivateConfig.ApplyT(func(privateConfig securesourcemanager.InstancePrivateConfig) (*string, error) {
/// 				return &privateConfig.HttpServiceAttachment, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		privateZone, err := dns.NewManagedZone(ctx, "private_zone", &dns.ManagedZoneArgs{
/// 			Name:       pulumi.String("my-dns-zone"),
/// 			DnsName:    pulumi.String("p.sourcemanager.dev."),
/// 			Visibility: pulumi.String("private"),
/// 			PrivateVisibilityConfig: &dns.ManagedZonePrivateVisibilityConfigArgs{
/// 				Networks: dns.ManagedZonePrivateVisibilityConfigNetworkArray{
/// 					&dns.ManagedZonePrivateVisibilityConfigNetworkArgs{
/// 						NetworkUrl: network.ID(),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewRecordSet(ctx, "ssm_instance_html_record", &dns.RecordSetArgs{
/// 			Name: _default.HostConfigs.ApplyT(func(hostConfigs []securesourcemanager.InstanceHostConfig) (string, error) {
/// 				return fmt.Sprintf("%v.", hostConfigs[0].Html), nil
/// 			}).(pulumi.StringOutput),
/// 			Type:        pulumi.String("A"),
/// 			Ttl:         pulumi.Int(300),
/// 			ManagedZone: privateZone.Name,
/// 			Rrdatas: pulumi.StringArray{
/// 				fwRuleServiceAttachment.IpAddress,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewRecordSet(ctx, "ssm_instance_api_record", &dns.RecordSetArgs{
/// 			Name: _default.HostConfigs.ApplyT(func(hostConfigs []securesourcemanager.InstanceHostConfig) (string, error) {
/// 				return fmt.Sprintf("%v.", hostConfigs[0].Api), nil
/// 			}).(pulumi.StringOutput),
/// 			Type:        pulumi.String("A"),
/// 			Ttl:         pulumi.Int(300),
/// 			ManagedZone: privateZone.Name,
/// 			Rrdatas: pulumi.StringArray{
/// 				fwRuleServiceAttachment.IpAddress,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewRecordSet(ctx, "ssm_instance_git_record", &dns.RecordSetArgs{
/// 			Name: _default.HostConfigs.ApplyT(func(hostConfigs []securesourcemanager.InstanceHostConfig) (string, error) {
/// 				return fmt.Sprintf("%v.", hostConfigs[0].GitHttp), nil
/// 			}).(pulumi.StringOutput),
/// 			Type:        pulumi.String("A"),
/// 			Ttl:         pulumi.Int(300),
/// 			ManagedZone: privateZone.Name,
/// 			Rrdatas: pulumi.StringArray{
/// 				fwRuleServiceAttachment.IpAddress,
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.certificateauthority.CaPool;
/// import com.pulumi.gcp.certificateauthority.CaPoolArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolPublishingOptionsArgs;
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
/// import com.pulumi.gcp.certificateauthority.CaPoolIamBinding;
/// import com.pulumi.gcp.certificateauthority.CaPoolIamBindingArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.securesourcemanager.Instance;
/// import com.pulumi.gcp.securesourcemanager.InstanceArgs;
/// import com.pulumi.gcp.securesourcemanager.inputs.InstancePrivateConfigArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZonePrivateVisibilityConfigArgs;
/// import com.pulumi.gcp.dns.RecordSet;
/// import com.pulumi.gcp.dns.RecordSetArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var caPool = new CaPool("caPool", CaPoolArgs.builder()
///             .name("ca-pool")
///             .location("us-central1")
///             .tier("ENTERPRISE")
///             .publishingOptions(CaPoolPublishingOptionsArgs.builder()
///                 .publishCaCert(true)
///                 .publishCrl(true)
///                 .build())
///             .build());
///
///         var rootCa = new Authority("rootCa", AuthorityArgs.builder()
///             .pool(caPool.name())
///             .certificateAuthorityId("root-ca")
///             .location("us-central1")
///             .config(AuthorityConfigArgs.builder()
///                 .subjectConfig(AuthorityConfigSubjectConfigArgs.builder()
///                     .subject(AuthorityConfigSubjectConfigSubjectArgs.builder()
///                         .organization("google")
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
///                             .serverAuth(true)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .keySpec(AuthorityKeySpecArgs.builder()
///                 .algorithm("RSA_PKCS1_4096_SHA256")
///                 .build())
///             .deletionProtection(false)
///             .ignoreActiveCertificatesOnDeletion(true)
///             .skipGracePeriod(true)
///             .build());
///
///         var caPoolBinding = new CaPoolIamBinding("caPoolBinding", CaPoolIamBindingArgs.builder()
///             .caPool(caPool.id())
///             .role("roles/privateca.certificateRequester")
///             .members(String.format("serviceAccount:service-%s@gcp-sa-sourcemanager.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         // ca pool IAM permissions can take time to propagate
///         var wait120Seconds = new Sleep("wait120Seconds", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(caPoolBinding)
///                 .build());
///
///         // See https://cloud.google.com/secure-source-manager/docs/create-private-service-connect-instance#root-ca-api
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .instanceId("my-instance")
///             .location("us-central1")
///             .privateConfig(InstancePrivateConfigArgs.builder()
///                 .isPrivate(true)
///                 .caPool(caPool.id())
///                 .build())
///             .deletionPolicy("PREVENT")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     rootCa,
///                     wait120Seconds)
///                 .build());
///
///         // Connect SSM private instance with endpoint.
///         var network = new Network("network", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnet = new Subnetwork("subnet", SubnetworkArgs.builder()
///             .name("my-subnet")
///             .region("us-central1")
///             .network(network.id())
///             .ipCidrRange("10.0.60.0/24")
///             .privateIpGoogleAccess(true)
///             .build());
///
///         var address = new Address("address", AddressArgs.builder()
///             .name("my-address")
///             .region("us-central1")
///             .address("10.0.60.100")
///             .addressType("INTERNAL")
///             .subnetwork(subnet.id())
///             .build());
///
///         var fwRuleServiceAttachment = new ForwardingRule("fwRuleServiceAttachment", ForwardingRuleArgs.builder()
///             .name("fw-rule-service-attachment")
///             .region("us-central1")
///             .loadBalancingScheme("")
///             .ipAddress(address.id())
///             .network(network.id())
///             .target(default_.privateConfig().applyValue(_privateConfig -> _privateConfig.httpServiceAttachment()))
///             .build());
///
///         var privateZone = new ManagedZone("privateZone", ManagedZoneArgs.builder()
///             .name("my-dns-zone")
///             .dnsName("p.sourcemanager.dev.")
///             .visibility("private")
///             .privateVisibilityConfig(ManagedZonePrivateVisibilityConfigArgs.builder()
///                 .networks(ManagedZonePrivateVisibilityConfigNetworkArgs.builder()
///                     .networkUrl(network.id())
///                     .build())
///                 .build())
///             .build());
///
///         var ssmInstanceHtmlRecord = new RecordSet("ssmInstanceHtmlRecord", RecordSetArgs.builder()
///             .name(default_.hostConfigs().applyValue(_hostConfigs -> String.format("%s.", _hostConfigs[0].html())))
///             .type("A")
///             .ttl(300)
///             .managedZone(privateZone.name())
///             .rrdatas(fwRuleServiceAttachment.ipAddress())
///             .build());
///
///         var ssmInstanceApiRecord = new RecordSet("ssmInstanceApiRecord", RecordSetArgs.builder()
///             .name(default_.hostConfigs().applyValue(_hostConfigs -> String.format("%s.", _hostConfigs[0].api())))
///             .type("A")
///             .ttl(300)
///             .managedZone(privateZone.name())
///             .rrdatas(fwRuleServiceAttachment.ipAddress())
///             .build());
///
///         var ssmInstanceGitRecord = new RecordSet("ssmInstanceGitRecord", RecordSetArgs.builder()
///             .name(default_.hostConfigs().applyValue(_hostConfigs -> String.format("%s.", _hostConfigs[0].gitHttp())))
///             .type("A")
///             .ttl(300)
///             .managedZone(privateZone.name())
///             .rrdatas(fwRuleServiceAttachment.ipAddress())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   caPool:
///     type: gcp:certificateauthority:CaPool
///     name: ca_pool
///     properties:
///       name: ca-pool
///       location: us-central1
///       tier: ENTERPRISE
///       publishingOptions:
///         publishCaCert: true
///         publishCrl: true
///   rootCa:
///     type: gcp:certificateauthority:Authority
///     name: root_ca
///     properties:
///       pool: ${caPool.name}
///       certificateAuthorityId: root-ca
///       location: us-central1
///       config:
///         subjectConfig:
///           subject:
///             organization: google
///             commonName: my-certificate-authority
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
///       ignoreActiveCertificatesOnDeletion: true
///       skipGracePeriod: true
///   caPoolBinding:
///     type: gcp:certificateauthority:CaPoolIamBinding
///     name: ca_pool_binding
///     properties:
///       caPool: ${caPool.id}
///       role: roles/privateca.certificateRequester
///       members:
///         - serviceAccount:service-${project.number}@gcp-sa-sourcemanager.iam.gserviceaccount.com
///   # See https://cloud.google.com/secure-source-manager/docs/create-private-service-connect-instance#root-ca-api
///   default:
///     type: gcp:securesourcemanager:Instance
///     properties:
///       instanceId: my-instance
///       location: us-central1
///       privateConfig:
///         isPrivate: true
///         caPool: ${caPool.id}
///       deletionPolicy: PREVENT
///     options:
///       dependsOn:
///         - ${rootCa}
///         - ${wait120Seconds}
///   # ca pool IAM permissions can take time to propagate
///   wait120Seconds:
///     type: time:Sleep
///     name: wait_120_seconds
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${caPoolBinding}
///   # Connect SSM private instance with endpoint.
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
///   subnet:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: my-subnet
///       region: us-central1
///       network: ${network.id}
///       ipCidrRange: 10.0.60.0/24
///       privateIpGoogleAccess: true
///   address:
///     type: gcp:compute:Address
///     properties:
///       name: my-address
///       region: us-central1
///       address: 10.0.60.100
///       addressType: INTERNAL
///       subnetwork: ${subnet.id}
///   fwRuleServiceAttachment:
///     type: gcp:compute:ForwardingRule
///     name: fw_rule_service_attachment
///     properties:
///       name: fw-rule-service-attachment
///       region: us-central1
///       loadBalancingScheme: ""
///       ipAddress: ${address.id}
///       network: ${network.id}
///       target: ${default.privateConfig.httpServiceAttachment}
///   privateZone:
///     type: gcp:dns:ManagedZone
///     name: private_zone
///     properties:
///       name: my-dns-zone
///       dnsName: p.sourcemanager.dev.
///       visibility: private
///       privateVisibilityConfig:
///         networks:
///           - networkUrl: ${network.id}
///   ssmInstanceHtmlRecord:
///     type: gcp:dns:RecordSet
///     name: ssm_instance_html_record
///     properties:
///       name: ${default.hostConfigs[0].html}.
///       type: A
///       ttl: 300
///       managedZone: ${privateZone.name}
///       rrdatas:
///         - ${fwRuleServiceAttachment.ipAddress}
///   ssmInstanceApiRecord:
///     type: gcp:dns:RecordSet
///     name: ssm_instance_api_record
///     properties:
///       name: ${default.hostConfigs[0].api}.
///       type: A
///       ttl: 300
///       managedZone: ${privateZone.name}
///       rrdatas:
///         - ${fwRuleServiceAttachment.ipAddress}
///   ssmInstanceGitRecord:
///     type: gcp:dns:RecordSet
///     name: ssm_instance_git_record
///     properties:
///       name: ${default.hostConfigs[0].gitHttp}.
///       type: A
///       ttl: 300
///       managedZone: ${privateZone.name}
///       rrdatas:
///         - ${fwRuleServiceAttachment.ipAddress}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Secure Source Manager Instance Workforce Identity Federation
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.securesourcemanager.Instance("default", {
///     location: "us-central1",
///     instanceId: "my-instance",
///     workforceIdentityFederationConfig: {
///         enabled: true,
///     },
///     deletionPolicy: "PREVENT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.securesourcemanager.Instance("default",
///     location="us-central1",
///     instance_id="my-instance",
///     workforce_identity_federation_config={
///         "enabled": True,
///     },
///     deletion_policy="PREVENT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.SecureSourceManager.Instance("default", new()
///     {
///         Location = "us-central1",
///         InstanceId = "my-instance",
///         WorkforceIdentityFederationConfig = new Gcp.SecureSourceManager.Inputs.InstanceWorkforceIdentityFederationConfigArgs
///         {
///             Enabled = true,
///         },
///         DeletionPolicy = "PREVENT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securesourcemanager.NewInstance(ctx, "default", &securesourcemanager.InstanceArgs{
/// 			Location:   pulumi.String("us-central1"),
/// 			InstanceId: pulumi.String("my-instance"),
/// 			WorkforceIdentityFederationConfig: &securesourcemanager.InstanceWorkforceIdentityFederationConfigArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			DeletionPolicy: pulumi.String("PREVENT"),
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
/// import com.pulumi.gcp.securesourcemanager.Instance;
/// import com.pulumi.gcp.securesourcemanager.InstanceArgs;
/// import com.pulumi.gcp.securesourcemanager.inputs.InstanceWorkforceIdentityFederationConfigArgs;
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .location("us-central1")
///             .instanceId("my-instance")
///             .workforceIdentityFederationConfig(InstanceWorkforceIdentityFederationConfigArgs.builder()
///                 .enabled(true)
///                 .build())
///             .deletionPolicy("PREVENT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:securesourcemanager:Instance
///     properties:
///       location: us-central1
///       instanceId: my-instance
///       workforceIdentityFederationConfig:
///         enabled: true
///       deletionPolicy: PREVENT
/// ```
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance_id}}`
///
/// * `{{project}}/{{location}}/{{instance_id}}`
///
/// * `{{location}}/{{instance_id}}`
///
/// * `{{instance_id}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/instance:Instance default projects/{{project}}/locations/{{location}}/instances/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/instance:Instance default {{project}}/{{location}}/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/instance:Instance default {{location}}/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/instance:Instance default {{instance_id}}
/// ```
class Instance extends pulumi.CustomResource {
  /// Time the Instance was created in UTC.
  late final pulumi.Output<String> createTime;
  /// The deletion policy for the instance. Setting `ABANDON` allows the resource
  /// to be abandoned, rather than deleted. Setting `DELETE` deletes the resource
  /// and all its contents. Setting `PREVENT` prevents the resource from accidental
  /// deletion by erroring out during plan.
  /// Default is `PREVENT`.  Possible values are:
  /// * DELETE
  /// * PREVENT
  /// * ABANDON
  late final pulumi.Output<String?> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// A list of hostnames for this instance.
  /// Structure is documented below.
  late final pulumi.Output<List<InstanceHostConfig>> hostConfigs;
  /// The name for the Instance.
  late final pulumi.Output<String> instanceId;
  /// Customer-managed encryption key name, in the format projects/*/locations/*/keyRings/*/cryptoKeys/*.
  late final pulumi.Output<String?> kmsKey;
  /// Labels as key value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location for the Instance.
  late final pulumi.Output<String> location;
  /// The resource name for the Instance.
  late final pulumi.Output<String> name;
  /// Private settings for private instance.
  /// Structure is documented below.
  late final pulumi.Output<InstancePrivateConfig?> privateConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The current state of the Instance.
  late final pulumi.Output<String> state;
  /// Provides information about the current instance state.
  late final pulumi.Output<String> stateNote;
  /// Time the Instance was updated in UTC.
  late final pulumi.Output<String> updateTime;
  /// Configuration for Workforce Identity Federation to support third party identity provider.
  /// If unset, defaults to the Google OIDC IdP.
  /// Structure is documented below.
  late final pulumi.Output<InstanceWorkforceIdentityFederationConfig?> workforceIdentityFederationConfig;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_securesourcemanager_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.hostConfigs = registerOutput<List<InstanceHostConfig>>('hostConfigs');
    this.instanceId = registerOutput<String>('instanceId');
    this.kmsKey = registerOutput<String?>('kmsKey');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateConfig = registerOutput<InstancePrivateConfig?>('privateConfig');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.stateNote = registerOutput<String>('stateNote');
    this.updateTime = registerOutput<String>('updateTime');
    this.workforceIdentityFederationConfig = registerOutput<InstanceWorkforceIdentityFederationConfig?>('workforceIdentityFederationConfig');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.hostConfigs = registerOutput<List<InstanceHostConfig>>('hostConfigs');
    this.instanceId = registerOutput<String>('instanceId');
    this.kmsKey = registerOutput<String?>('kmsKey');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateConfig = registerOutput<InstancePrivateConfig?>('privateConfig');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.stateNote = registerOutput<String>('stateNote');
    this.updateTime = registerOutput<String>('updateTime');
    this.workforceIdentityFederationConfig = registerOutput<InstanceWorkforceIdentityFederationConfig?>('workforceIdentityFederationConfig');
  }
}
