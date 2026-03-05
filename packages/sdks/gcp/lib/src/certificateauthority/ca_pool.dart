import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_pool_args.dart';
import 'ca_pool_encryption_spec.dart';
import 'ca_pool_issuance_policy.dart';
import 'ca_pool_publishing_options.dart';
import 'ca_pool_state.dart';

/// A CaPool represents a group of CertificateAuthorities that form a trust anchor. A CaPool can be used to manage
/// issuance policies for one or more CertificateAuthority resources and to rotate CA certificates in and out of the
/// trust anchor.
///
///
/// To get more information about CaPool, see:
///
/// * [API documentation](https://cloud.google.com/certificate-authority-service/docs/reference/rest/v1/projects.locations.caPools)
/// * How-to Guides
/// * [Certificate Authority Service Overview](https://cloud.google.com/certificate-authority-service/docs/overview)
///
/// ## Example Usage
///
/// ### Privateca Capool Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.certificateauthority.CaPool("default", {
///     name: "my-pool",
///     location: "us-central1",
///     tier: "ENTERPRISE",
///     publishingOptions: {
///         publishCaCert: true,
///         publishCrl: true,
///     },
///     labels: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificateauthority.CaPool("default",
///     name="my-pool",
///     location="us-central1",
///     tier="ENTERPRISE",
///     publishing_options={
///         "publish_ca_cert": True,
///         "publish_crl": True,
///     },
///     labels={
///         "foo": "bar",
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
///     var @default = new Gcp.CertificateAuthority.CaPool("default", new()
///     {
///         Name = "my-pool",
///         Location = "us-central1",
///         Tier = "ENTERPRISE",
///         PublishingOptions = new Gcp.CertificateAuthority.Inputs.CaPoolPublishingOptionsArgs
///         {
///             PublishCaCert = true,
///             PublishCrl = true,
///         },
///         Labels =
///         {
///             { "foo", "bar" },
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
/// 		_, err := certificateauthority.NewCaPool(ctx, "default", &certificateauthority.CaPoolArgs{
/// 			Name:     pulumi.String("my-pool"),
/// 			Location: pulumi.String("us-central1"),
/// 			Tier:     pulumi.String("ENTERPRISE"),
/// 			PublishingOptions: &certificateauthority.CaPoolPublishingOptionsArgs{
/// 				PublishCaCert: pulumi.Bool(true),
/// 				PublishCrl:    pulumi.Bool(true),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolPublishingOptionsArgs;
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
///             .name("my-pool")
///             .location("us-central1")
///             .tier("ENTERPRISE")
///             .publishingOptions(CaPoolPublishingOptionsArgs.builder()
///                 .publishCaCert(true)
///                 .publishCrl(true)
///                 .build())
///             .labels(Map.of("foo", "bar"))
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
///       name: my-pool
///       location: us-central1
///       tier: ENTERPRISE
///       publishingOptions:
///         publishCaCert: true
///         publishCrl: true
///       labels:
///         foo: bar
/// ```
///
/// ### Privateca Capool All Fields
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const privatecaSa = new gcp.projects.ServiceIdentity("privateca_sa", {service: "privateca.googleapis.com"});
/// const privatecaSaKeyuserEncrypterdecrypter = new gcp.kms.CryptoKeyIAMMember("privateca_sa_keyuser_encrypterdecrypter", {
///     cryptoKeyId: "projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: privatecaSa.member,
/// });
/// const _default = new gcp.certificateauthority.CaPool("default", {
///     name: "my-pool",
///     location: "us-central1",
///     tier: "ENTERPRISE",
///     publishingOptions: {
///         publishCaCert: false,
///         publishCrl: true,
///         encodingFormat: "PEM",
///     },
///     labels: {
///         foo: "bar",
///     },
///     encryptionSpec: {
///         cloudKmsKey: "projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key",
///     },
///     issuancePolicy: {
///         allowedKeyTypes: [
///             {
///                 ellipticCurve: {
///                     signatureAlgorithm: "ECDSA_P256",
///                 },
///             },
///             {
///                 rsa: {
///                     minModulusSize: "5",
///                     maxModulusSize: "10",
///                 },
///             },
///         ],
///         backdateDuration: "3600s",
///         maximumLifetime: "50000s",
///         allowedIssuanceModes: {
///             allowCsrBasedIssuance: true,
///             allowConfigBasedIssuance: true,
///         },
///         identityConstraints: {
///             allowSubjectPassthrough: true,
///             allowSubjectAltNamesPassthrough: true,
///             celExpression: {
///                 expression: "subject_alt_names.all(san, san.type == DNS || san.type == EMAIL )",
///                 title: "My title",
///             },
///         },
///         baselineValues: {
///             aiaOcspServers: ["example.com"],
///             additionalExtensions: [{
///                 critical: true,
///                 value: "asdf",
///                 objectId: {
///                     objectIdPaths: [
///                         1,
///                         7,
///                     ],
///                 },
///             }],
///             policyIds: [
///                 {
///                     objectIdPaths: [
///                         1,
///                         5,
///                     ],
///                 },
///                 {
///                     objectIdPaths: [
///                         1,
///                         5,
///                         7,
///                     ],
///                 },
///             ],
///             caOptions: {
///                 isCa: true,
///                 maxIssuerPathLength: 10,
///             },
///             keyUsage: {
///                 baseKeyUsage: {
///                     digitalSignature: true,
///                     contentCommitment: true,
///                     keyEncipherment: false,
///                     dataEncipherment: true,
///                     keyAgreement: true,
///                     certSign: false,
///                     crlSign: true,
///                     decipherOnly: true,
///                 },
///                 extendedKeyUsage: {
///                     serverAuth: true,
///                     clientAuth: false,
///                     emailProtection: true,
///                     codeSigning: true,
///                     timeStamping: true,
///                 },
///             },
///             nameConstraints: {
///                 critical: true,
///                 permittedDnsNames: [
///                     "*.example1.com",
///                     "*.example2.com",
///                 ],
///                 excludedDnsNames: [
///                     "*.deny.example1.com",
///                     "*.deny.example2.com",
///                 ],
///                 permittedIpRanges: [
///                     "10.0.0.0/8",
///                     "11.0.0.0/8",
///                 ],
///                 excludedIpRanges: [
///                     "10.1.1.0/24",
///                     "11.1.1.0/24",
///                 ],
///                 permittedEmailAddresses: [
///                     ".example1.com",
///                     ".example2.com",
///                 ],
///                 excludedEmailAddresses: [
///                     ".deny.example1.com",
///                     ".deny.example2.com",
///                 ],
///                 permittedUris: [
///                     ".example1.com",
///                     ".example2.com",
///                 ],
///                 excludedUris: [
///                     ".deny.example1.com",
///                     ".deny.example2.com",
///                 ],
///             },
///         },
///     },
/// }, {
///     dependsOn: [privatecaSaKeyuserEncrypterdecrypter],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// privateca_sa = gcp.projects.ServiceIdentity("privateca_sa", service="privateca.googleapis.com")
/// privateca_sa_keyuser_encrypterdecrypter = gcp.kms.CryptoKeyIAMMember("privateca_sa_keyuser_encrypterdecrypter",
///     crypto_key_id="projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=privateca_sa.member)
/// default = gcp.certificateauthority.CaPool("default",
///     name="my-pool",
///     location="us-central1",
///     tier="ENTERPRISE",
///     publishing_options={
///         "publish_ca_cert": False,
///         "publish_crl": True,
///         "encoding_format": "PEM",
///     },
///     labels={
///         "foo": "bar",
///     },
///     encryption_spec={
///         "cloud_kms_key": "projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key",
///     },
///     issuance_policy={
///         "allowed_key_types": [
///             {
///                 "elliptic_curve": {
///                     "signature_algorithm": "ECDSA_P256",
///                 },
///             },
///             {
///                 "rsa": {
///                     "min_modulus_size": "5",
///                     "max_modulus_size": "10",
///                 },
///             },
///         ],
///         "backdate_duration": "3600s",
///         "maximum_lifetime": "50000s",
///         "allowed_issuance_modes": {
///             "allow_csr_based_issuance": True,
///             "allow_config_based_issuance": True,
///         },
///         "identity_constraints": {
///             "allow_subject_passthrough": True,
///             "allow_subject_alt_names_passthrough": True,
///             "cel_expression": {
///                 "expression": "subject_alt_names.all(san, san.type == DNS || san.type == EMAIL )",
///                 "title": "My title",
///             },
///         },
///         "baseline_values": {
///             "aia_ocsp_servers": ["example.com"],
///             "additional_extensions": [{
///                 "critical": True,
///                 "value": "asdf",
///                 "object_id": {
///                     "object_id_paths": [
///                         1,
///                         7,
///                     ],
///                 },
///             }],
///             "policy_ids": [
///                 {
///                     "object_id_paths": [
///                         1,
///                         5,
///                     ],
///                 },
///                 {
///                     "object_id_paths": [
///                         1,
///                         5,
///                         7,
///                     ],
///                 },
///             ],
///             "ca_options": {
///                 "is_ca": True,
///                 "max_issuer_path_length": 10,
///             },
///             "key_usage": {
///                 "base_key_usage": {
///                     "digital_signature": True,
///                     "content_commitment": True,
///                     "key_encipherment": False,
///                     "data_encipherment": True,
///                     "key_agreement": True,
///                     "cert_sign": False,
///                     "crl_sign": True,
///                     "decipher_only": True,
///                 },
///                 "extended_key_usage": {
///                     "server_auth": True,
///                     "client_auth": False,
///                     "email_protection": True,
///                     "code_signing": True,
///                     "time_stamping": True,
///                 },
///             },
///             "name_constraints": {
///                 "critical": True,
///                 "permitted_dns_names": [
///                     "*.example1.com",
///                     "*.example2.com",
///                 ],
///                 "excluded_dns_names": [
///                     "*.deny.example1.com",
///                     "*.deny.example2.com",
///                 ],
///                 "permitted_ip_ranges": [
///                     "10.0.0.0/8",
///                     "11.0.0.0/8",
///                 ],
///                 "excluded_ip_ranges": [
///                     "10.1.1.0/24",
///                     "11.1.1.0/24",
///                 ],
///                 "permitted_email_addresses": [
///                     ".example1.com",
///                     ".example2.com",
///                 ],
///                 "excluded_email_addresses": [
///                     ".deny.example1.com",
///                     ".deny.example2.com",
///                 ],
///                 "permitted_uris": [
///                     ".example1.com",
///                     ".example2.com",
///                 ],
///                 "excluded_uris": [
///                     ".deny.example1.com",
///                     ".deny.example2.com",
///                 ],
///             },
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[privateca_sa_keyuser_encrypterdecrypter]))
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
///     var privatecaSaKeyuserEncrypterdecrypter = new Gcp.Kms.CryptoKeyIAMMember("privateca_sa_keyuser_encrypterdecrypter", new()
///     {
///         CryptoKeyId = "projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = privatecaSa.Member,
///     });
///
///     var @default = new Gcp.CertificateAuthority.CaPool("default", new()
///     {
///         Name = "my-pool",
///         Location = "us-central1",
///         Tier = "ENTERPRISE",
///         PublishingOptions = new Gcp.CertificateAuthority.Inputs.CaPoolPublishingOptionsArgs
///         {
///             PublishCaCert = false,
///             PublishCrl = true,
///             EncodingFormat = "PEM",
///         },
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         EncryptionSpec = new Gcp.CertificateAuthority.Inputs.CaPoolEncryptionSpecArgs
///         {
///             CloudKmsKey = "projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key",
///         },
///         IssuancePolicy = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyArgs
///         {
///             AllowedKeyTypes = new[]
///             {
///                 new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyAllowedKeyTypeArgs
///                 {
///                     EllipticCurve = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyAllowedKeyTypeEllipticCurveArgs
///                     {
///                         SignatureAlgorithm = "ECDSA_P256",
///                     },
///                 },
///                 new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyAllowedKeyTypeArgs
///                 {
///                     Rsa = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyAllowedKeyTypeRsaArgs
///                     {
///                         MinModulusSize = "5",
///                         MaxModulusSize = "10",
///                     },
///                 },
///             },
///             BackdateDuration = "3600s",
///             MaximumLifetime = "50000s",
///             AllowedIssuanceModes = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyAllowedIssuanceModesArgs
///             {
///                 AllowCsrBasedIssuance = true,
///                 AllowConfigBasedIssuance = true,
///             },
///             IdentityConstraints = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyIdentityConstraintsArgs
///             {
///                 AllowSubjectPassthrough = true,
///                 AllowSubjectAltNamesPassthrough = true,
///                 CelExpression = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyIdentityConstraintsCelExpressionArgs
///                 {
///                     Expression = "subject_alt_names.all(san, san.type == DNS || san.type == EMAIL )",
///                     Title = "My title",
///                 },
///             },
///             BaselineValues = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyBaselineValuesArgs
///             {
///                 AiaOcspServers = new[]
///                 {
///                     "example.com",
///                 },
///                 AdditionalExtensions = new[]
///                 {
///                     new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyBaselineValuesAdditionalExtensionArgs
///                     {
///                         Critical = true,
///                         Value = "asdf",
///                         ObjectId = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyBaselineValuesAdditionalExtensionObjectIdArgs
///                         {
///                             ObjectIdPaths = new[]
///                             {
///                                 1,
///                                 7,
///                             },
///                         },
///                     },
///                 },
///                 PolicyIds = new[]
///                 {
///                     new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyBaselineValuesPolicyIdArgs
///                     {
///                         ObjectIdPaths = new[]
///                         {
///                             1,
///                             5,
///                         },
///                     },
///                     new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyBaselineValuesPolicyIdArgs
///                     {
///                         ObjectIdPaths = new[]
///                         {
///                             1,
///                             5,
///                             7,
///                         },
///                     },
///                 },
///                 CaOptions = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyBaselineValuesCaOptionsArgs
///                 {
///                     IsCa = true,
///                     MaxIssuerPathLength = 10,
///                 },
///                 KeyUsage = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyBaselineValuesKeyUsageArgs
///                 {
///                     BaseKeyUsage = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyBaselineValuesKeyUsageBaseKeyUsageArgs
///                     {
///                         DigitalSignature = true,
///                         ContentCommitment = true,
///                         KeyEncipherment = false,
///                         DataEncipherment = true,
///                         KeyAgreement = true,
///                         CertSign = false,
///                         CrlSign = true,
///                         DecipherOnly = true,
///                     },
///                     ExtendedKeyUsage = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyBaselineValuesKeyUsageExtendedKeyUsageArgs
///                     {
///                         ServerAuth = true,
///                         ClientAuth = false,
///                         EmailProtection = true,
///                         CodeSigning = true,
///                         TimeStamping = true,
///                     },
///                 },
///                 NameConstraints = new Gcp.CertificateAuthority.Inputs.CaPoolIssuancePolicyBaselineValuesNameConstraintsArgs
///                 {
///                     Critical = true,
///                     PermittedDnsNames = new[]
///                     {
///                         "*.example1.com",
///                         "*.example2.com",
///                     },
///                     ExcludedDnsNames = new[]
///                     {
///                         "*.deny.example1.com",
///                         "*.deny.example2.com",
///                     },
///                     PermittedIpRanges = new[]
///                     {
///                         "10.0.0.0/8",
///                         "11.0.0.0/8",
///                     },
///                     ExcludedIpRanges = new[]
///                     {
///                         "10.1.1.0/24",
///                         "11.1.1.0/24",
///                     },
///                     PermittedEmailAddresses = new[]
///                     {
///                         ".example1.com",
///                         ".example2.com",
///                     },
///                     ExcludedEmailAddresses = new[]
///                     {
///                         ".deny.example1.com",
///                         ".deny.example2.com",
///                     },
///                     PermittedUris = new[]
///                     {
///                         ".example1.com",
///                         ".example2.com",
///                     },
///                     ExcludedUris = new[]
///                     {
///                         ".deny.example1.com",
///                         ".deny.example2.com",
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             privatecaSaKeyuserEncrypterdecrypter,
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
/// 		privatecaSaKeyuserEncrypterdecrypter, err := kms.NewCryptoKeyIAMMember(ctx, "privateca_sa_keyuser_encrypterdecrypter", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      privatecaSa.Member,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = certificateauthority.NewCaPool(ctx, "default", &certificateauthority.CaPoolArgs{
/// 			Name:     pulumi.String("my-pool"),
/// 			Location: pulumi.String("us-central1"),
/// 			Tier:     pulumi.String("ENTERPRISE"),
/// 			PublishingOptions: &certificateauthority.CaPoolPublishingOptionsArgs{
/// 				PublishCaCert:  pulumi.Bool(false),
/// 				PublishCrl:     pulumi.Bool(true),
/// 				EncodingFormat: pulumi.String("PEM"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			EncryptionSpec: &certificateauthority.CaPoolEncryptionSpecArgs{
/// 				CloudKmsKey: pulumi.String("projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key"),
/// 			},
/// 			IssuancePolicy: &certificateauthority.CaPoolIssuancePolicyArgs{
/// 				AllowedKeyTypes: certificateauthority.CaPoolIssuancePolicyAllowedKeyTypeArray{
/// 					&certificateauthority.CaPoolIssuancePolicyAllowedKeyTypeArgs{
/// 						EllipticCurve: &certificateauthority.CaPoolIssuancePolicyAllowedKeyTypeEllipticCurveArgs{
/// 							SignatureAlgorithm: pulumi.String("ECDSA_P256"),
/// 						},
/// 					},
/// 					&certificateauthority.CaPoolIssuancePolicyAllowedKeyTypeArgs{
/// 						Rsa: &certificateauthority.CaPoolIssuancePolicyAllowedKeyTypeRsaArgs{
/// 							MinModulusSize: pulumi.String("5"),
/// 							MaxModulusSize: pulumi.String("10"),
/// 						},
/// 					},
/// 				},
/// 				BackdateDuration: pulumi.String("3600s"),
/// 				MaximumLifetime:  pulumi.String("50000s"),
/// 				AllowedIssuanceModes: &certificateauthority.CaPoolIssuancePolicyAllowedIssuanceModesArgs{
/// 					AllowCsrBasedIssuance:    pulumi.Bool(true),
/// 					AllowConfigBasedIssuance: pulumi.Bool(true),
/// 				},
/// 				IdentityConstraints: &certificateauthority.CaPoolIssuancePolicyIdentityConstraintsArgs{
/// 					AllowSubjectPassthrough:         pulumi.Bool(true),
/// 					AllowSubjectAltNamesPassthrough: pulumi.Bool(true),
/// 					CelExpression: &certificateauthority.CaPoolIssuancePolicyIdentityConstraintsCelExpressionArgs{
/// 						Expression: pulumi.String("subject_alt_names.all(san, san.type == DNS || san.type == EMAIL )"),
/// 						Title:      pulumi.String("My title"),
/// 					},
/// 				},
/// 				BaselineValues: &certificateauthority.CaPoolIssuancePolicyBaselineValuesArgs{
/// 					AiaOcspServers: pulumi.StringArray{
/// 						pulumi.String("example.com"),
/// 					},
/// 					AdditionalExtensions: certificateauthority.CaPoolIssuancePolicyBaselineValuesAdditionalExtensionArray{
/// 						&certificateauthority.CaPoolIssuancePolicyBaselineValuesAdditionalExtensionArgs{
/// 							Critical: pulumi.Bool(true),
/// 							Value:    pulumi.String("asdf"),
/// 							ObjectId: &certificateauthority.CaPoolIssuancePolicyBaselineValuesAdditionalExtensionObjectIdArgs{
/// 								ObjectIdPaths: pulumi.IntArray{
/// 									pulumi.Int(1),
/// 									pulumi.Int(7),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					PolicyIds: certificateauthority.CaPoolIssuancePolicyBaselineValuesPolicyIdArray{
/// 						&certificateauthority.CaPoolIssuancePolicyBaselineValuesPolicyIdArgs{
/// 							ObjectIdPaths: pulumi.IntArray{
/// 								pulumi.Int(1),
/// 								pulumi.Int(5),
/// 							},
/// 						},
/// 						&certificateauthority.CaPoolIssuancePolicyBaselineValuesPolicyIdArgs{
/// 							ObjectIdPaths: pulumi.IntArray{
/// 								pulumi.Int(1),
/// 								pulumi.Int(5),
/// 								pulumi.Int(7),
/// 							},
/// 						},
/// 					},
/// 					CaOptions: &certificateauthority.CaPoolIssuancePolicyBaselineValuesCaOptionsArgs{
/// 						IsCa:                pulumi.Bool(true),
/// 						MaxIssuerPathLength: pulumi.Int(10),
/// 					},
/// 					KeyUsage: &certificateauthority.CaPoolIssuancePolicyBaselineValuesKeyUsageArgs{
/// 						BaseKeyUsage: &certificateauthority.CaPoolIssuancePolicyBaselineValuesKeyUsageBaseKeyUsageArgs{
/// 							DigitalSignature:  pulumi.Bool(true),
/// 							ContentCommitment: pulumi.Bool(true),
/// 							KeyEncipherment:   pulumi.Bool(false),
/// 							DataEncipherment:  pulumi.Bool(true),
/// 							KeyAgreement:      pulumi.Bool(true),
/// 							CertSign:          pulumi.Bool(false),
/// 							CrlSign:           pulumi.Bool(true),
/// 							DecipherOnly:      pulumi.Bool(true),
/// 						},
/// 						ExtendedKeyUsage: &certificateauthority.CaPoolIssuancePolicyBaselineValuesKeyUsageExtendedKeyUsageArgs{
/// 							ServerAuth:      pulumi.Bool(true),
/// 							ClientAuth:      pulumi.Bool(false),
/// 							EmailProtection: pulumi.Bool(true),
/// 							CodeSigning:     pulumi.Bool(true),
/// 							TimeStamping:    pulumi.Bool(true),
/// 						},
/// 					},
/// 					NameConstraints: &certificateauthority.CaPoolIssuancePolicyBaselineValuesNameConstraintsArgs{
/// 						Critical: pulumi.Bool(true),
/// 						PermittedDnsNames: pulumi.StringArray{
/// 							pulumi.String("*.example1.com"),
/// 							pulumi.String("*.example2.com"),
/// 						},
/// 						ExcludedDnsNames: pulumi.StringArray{
/// 							pulumi.String("*.deny.example1.com"),
/// 							pulumi.String("*.deny.example2.com"),
/// 						},
/// 						PermittedIpRanges: pulumi.StringArray{
/// 							pulumi.String("10.0.0.0/8"),
/// 							pulumi.String("11.0.0.0/8"),
/// 						},
/// 						ExcludedIpRanges: pulumi.StringArray{
/// 							pulumi.String("10.1.1.0/24"),
/// 							pulumi.String("11.1.1.0/24"),
/// 						},
/// 						PermittedEmailAddresses: pulumi.StringArray{
/// 							pulumi.String(".example1.com"),
/// 							pulumi.String(".example2.com"),
/// 						},
/// 						ExcludedEmailAddresses: pulumi.StringArray{
/// 							pulumi.String(".deny.example1.com"),
/// 							pulumi.String(".deny.example2.com"),
/// 						},
/// 						PermittedUris: pulumi.StringArray{
/// 							pulumi.String(".example1.com"),
/// 							pulumi.String(".example2.com"),
/// 						},
/// 						ExcludedUris: pulumi.StringArray{
/// 							pulumi.String(".deny.example1.com"),
/// 							pulumi.String(".deny.example2.com"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			privatecaSaKeyuserEncrypterdecrypter,
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
/// import com.pulumi.gcp.projects.ServiceIdentity;
/// import com.pulumi.gcp.projects.ServiceIdentityArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.certificateauthority.CaPool;
/// import com.pulumi.gcp.certificateauthority.CaPoolArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolPublishingOptionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolEncryptionSpecArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyAllowedIssuanceModesArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyIdentityConstraintsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyIdentityConstraintsCelExpressionArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyBaselineValuesArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyBaselineValuesCaOptionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyBaselineValuesKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyBaselineValuesKeyUsageBaseKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyBaselineValuesKeyUsageExtendedKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIssuancePolicyBaselineValuesNameConstraintsArgs;
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
///         var privatecaSa = new ServiceIdentity("privatecaSa", ServiceIdentityArgs.builder()
///             .service("privateca.googleapis.com")
///             .build());
///
///         var privatecaSaKeyuserEncrypterdecrypter = new CryptoKeyIAMMember("privatecaSaKeyuserEncrypterdecrypter", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(privatecaSa.member())
///             .build());
///
///         var default_ = new CaPool("default", CaPoolArgs.builder()
///             .name("my-pool")
///             .location("us-central1")
///             .tier("ENTERPRISE")
///             .publishingOptions(CaPoolPublishingOptionsArgs.builder()
///                 .publishCaCert(false)
///                 .publishCrl(true)
///                 .encodingFormat("PEM")
///                 .build())
///             .labels(Map.of("foo", "bar"))
///             .encryptionSpec(CaPoolEncryptionSpecArgs.builder()
///                 .cloudKmsKey("projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key")
///                 .build())
///             .issuancePolicy(CaPoolIssuancePolicyArgs.builder()
///                 .allowedKeyTypes(
///                     CaPoolIssuancePolicyAllowedKeyTypeArgs.builder()
///                         .ellipticCurve(CaPoolIssuancePolicyAllowedKeyTypeEllipticCurveArgs.builder()
///                             .signatureAlgorithm("ECDSA_P256")
///                             .build())
///                         .build(),
///                     CaPoolIssuancePolicyAllowedKeyTypeArgs.builder()
///                         .rsa(CaPoolIssuancePolicyAllowedKeyTypeRsaArgs.builder()
///                             .minModulusSize("5")
///                             .maxModulusSize("10")
///                             .build())
///                         .build())
///                 .backdateDuration("3600s")
///                 .maximumLifetime("50000s")
///                 .allowedIssuanceModes(CaPoolIssuancePolicyAllowedIssuanceModesArgs.builder()
///                     .allowCsrBasedIssuance(true)
///                     .allowConfigBasedIssuance(true)
///                     .build())
///                 .identityConstraints(CaPoolIssuancePolicyIdentityConstraintsArgs.builder()
///                     .allowSubjectPassthrough(true)
///                     .allowSubjectAltNamesPassthrough(true)
///                     .celExpression(CaPoolIssuancePolicyIdentityConstraintsCelExpressionArgs.builder()
///                         .expression("subject_alt_names.all(san, san.type == DNS || san.type == EMAIL )")
///                         .title("My title")
///                         .build())
///                     .build())
///                 .baselineValues(CaPoolIssuancePolicyBaselineValuesArgs.builder()
///                     .aiaOcspServers("example.com")
///                     .additionalExtensions(CaPoolIssuancePolicyBaselineValuesAdditionalExtensionArgs.builder()
///                         .critical(true)
///                         .value("asdf")
///                         .objectId(CaPoolIssuancePolicyBaselineValuesAdditionalExtensionObjectIdArgs.builder()
///                             .objectIdPaths(
///                                 1,
///                                 7)
///                             .build())
///                         .build())
///                     .policyIds(
///                         CaPoolIssuancePolicyBaselineValuesPolicyIdArgs.builder()
///                             .objectIdPaths(
///                                 1,
///                                 5)
///                             .build(),
///                         CaPoolIssuancePolicyBaselineValuesPolicyIdArgs.builder()
///                             .objectIdPaths(
///                                 1,
///                                 5,
///                                 7)
///                             .build())
///                     .caOptions(CaPoolIssuancePolicyBaselineValuesCaOptionsArgs.builder()
///                         .isCa(true)
///                         .maxIssuerPathLength(10)
///                         .build())
///                     .keyUsage(CaPoolIssuancePolicyBaselineValuesKeyUsageArgs.builder()
///                         .baseKeyUsage(CaPoolIssuancePolicyBaselineValuesKeyUsageBaseKeyUsageArgs.builder()
///                             .digitalSignature(true)
///                             .contentCommitment(true)
///                             .keyEncipherment(false)
///                             .dataEncipherment(true)
///                             .keyAgreement(true)
///                             .certSign(false)
///                             .crlSign(true)
///                             .decipherOnly(true)
///                             .build())
///                         .extendedKeyUsage(CaPoolIssuancePolicyBaselineValuesKeyUsageExtendedKeyUsageArgs.builder()
///                             .serverAuth(true)
///                             .clientAuth(false)
///                             .emailProtection(true)
///                             .codeSigning(true)
///                             .timeStamping(true)
///                             .build())
///                         .build())
///                     .nameConstraints(CaPoolIssuancePolicyBaselineValuesNameConstraintsArgs.builder()
///                         .critical(true)
///                         .permittedDnsNames(
///                             "*.example1.com",
///                             "*.example2.com")
///                         .excludedDnsNames(
///                             "*.deny.example1.com",
///                             "*.deny.example2.com")
///                         .permittedIpRanges(
///                             "10.0.0.0/8",
///                             "11.0.0.0/8")
///                         .excludedIpRanges(
///                             "10.1.1.0/24",
///                             "11.1.1.0/24")
///                         .permittedEmailAddresses(
///                             ".example1.com",
///                             ".example2.com")
///                         .excludedEmailAddresses(
///                             ".deny.example1.com",
///                             ".deny.example2.com")
///                         .permittedUris(
///                             ".example1.com",
///                             ".example2.com")
///                         .excludedUris(
///                             ".deny.example1.com",
///                             ".deny.example2.com")
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(privatecaSaKeyuserEncrypterdecrypter)
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
///   privatecaSaKeyuserEncrypterdecrypter:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: privateca_sa_keyuser_encrypterdecrypter
///     properties:
///       cryptoKeyId: projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: ${privatecaSa.member}
///   default:
///     type: gcp:certificateauthority:CaPool
///     properties:
///       name: my-pool
///       location: us-central1
///       tier: ENTERPRISE
///       publishingOptions:
///         publishCaCert: false
///         publishCrl: true
///         encodingFormat: PEM
///       labels:
///         foo: bar
///       encryptionSpec:
///         cloudKmsKey: projects/keys-project/locations/us-central1/keyRings/key-ring/cryptoKeys/crypto-key
///       issuancePolicy:
///         allowedKeyTypes:
///           - ellipticCurve:
///               signatureAlgorithm: ECDSA_P256
///           - rsa:
///               minModulusSize: 5
///               maxModulusSize: 10
///         backdateDuration: 3600s
///         maximumLifetime: 50000s
///         allowedIssuanceModes:
///           allowCsrBasedIssuance: true
///           allowConfigBasedIssuance: true
///         identityConstraints:
///           allowSubjectPassthrough: true
///           allowSubjectAltNamesPassthrough: true
///           celExpression:
///             expression: subject_alt_names.all(san, san.type == DNS || san.type == EMAIL )
///             title: My title
///         baselineValues:
///           aiaOcspServers:
///             - example.com
///           additionalExtensions:
///             - critical: true
///               value: asdf
///               objectId:
///                 objectIdPaths:
///                   - 1
///                   - 7
///           policyIds:
///             - objectIdPaths:
///                 - 1
///                 - 5
///             - objectIdPaths:
///                 - 1
///                 - 5
///                 - 7
///           caOptions:
///             isCa: true
///             maxIssuerPathLength: 10
///           keyUsage:
///             baseKeyUsage:
///               digitalSignature: true
///               contentCommitment: true
///               keyEncipherment: false
///               dataEncipherment: true
///               keyAgreement: true
///               certSign: false
///               crlSign: true
///               decipherOnly: true
///             extendedKeyUsage:
///               serverAuth: true
///               clientAuth: false
///               emailProtection: true
///               codeSigning: true
///               timeStamping: true
///           nameConstraints:
///             critical: true
///             permittedDnsNames:
///               - '*.example1.com'
///               - '*.example2.com'
///             excludedDnsNames:
///               - '*.deny.example1.com'
///               - '*.deny.example2.com'
///             permittedIpRanges:
///               - 10.0.0.0/8
///               - 11.0.0.0/8
///             excludedIpRanges:
///               - 10.1.1.0/24
///               - 11.1.1.0/24
///             permittedEmailAddresses:
///               - .example1.com
///               - .example2.com
///             excludedEmailAddresses:
///               - .deny.example1.com
///               - .deny.example2.com
///             permittedUris:
///               - .example1.com
///               - .example2.com
///             excludedUris:
///               - .deny.example1.com
///               - .deny.example2.com
///     options:
///       dependsOn:
///         - ${privatecaSaKeyuserEncrypterdecrypter}
/// ```
///
///
/// ## Import
///
/// CaPool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/caPools/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, CaPool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/caPool:CaPool default projects/{{project}}/locations/{{location}}/caPools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/caPool:CaPool default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/caPool:CaPool default {{location}}/{{name}}
/// ```
class CaPool extends pulumi.CustomResource {
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Used when customer would like to encrypt data at rest. The customer-provided key will be used
  /// to encrypt the Subject, SubjectAltNames and PEM-encoded certificate fields. When unspecified,
  /// customer data will remain unencrypted.
  /// Structure is documented below.
  late final pulumi.Output<CaPoolEncryptionSpec?> encryptionSpec;
  /// The IssuancePolicy to control how Certificates will be issued from this CaPool.
  /// Structure is documented below.
  late final pulumi.Output<CaPoolIssuancePolicy?> issuancePolicy;
  /// Labels with user-defined metadata.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass":
  /// "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Location of the CaPool. A full list of valid locations can be found by
  /// running `gcloud privateca locations list`.
  late final pulumi.Output<String> location;
  /// The name for this CaPool.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool.
  /// Structure is documented below.
  late final pulumi.Output<CaPoolPublishingOptions?> publishingOptions;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The Tier of this CaPool.
  /// Possible values are: `ENTERPRISE`, `DEVOPS`.
  late final pulumi.Output<String> tier;

  /// Creates a new [CaPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CaPool]. {@macro pulumi_certificateauthority_ca_pool_ca_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CaPool(
    String name, {
    CaPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:certificateauthority/caPool:CaPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    encryptionSpec = registerOutput<CaPoolEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CaPoolEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    issuancePolicy = registerOutput<CaPoolIssuancePolicy?>('issuancePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CaPoolIssuancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    publishingOptions = registerOutput<CaPoolPublishingOptions?>('publishingOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CaPoolPublishingOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    tier = registerOutput<String>('tier');
  }

  /// Gets an existing [CaPool] resource's state with the given [name] and [id].
  static CaPool get(
    String name,
    pulumi.Input<String> id, {
    CaPoolState? state,
  }) {
    return CaPool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CaPool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:certificateauthority/caPool:CaPool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    encryptionSpec = registerOutput<CaPoolEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CaPoolEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    issuancePolicy = registerOutput<CaPoolIssuancePolicy?>('issuancePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CaPoolIssuancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    publishingOptions = registerOutput<CaPoolPublishingOptions?>('publishingOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CaPoolPublishingOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    tier = registerOutput<String>('tier');
  }
}
