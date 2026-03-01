import 'package:pulumi/pulumi.dart' as pulumi;
import 'workforce_pool_provider_key_args.dart';
import 'workforce_pool_provider_key_key_data.dart';
import 'workforce_pool_provider_key_state.dart';

/// Represents a public key configuration for a Workforce Pool Provider. The key can be configured in your identity provider to encrypt SAML assertions.
/// Google holds the corresponding private key, which it uses to decrypt encrypted tokens.
///
///
/// To get more information about WorkforcePoolProviderKey, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v1/locations.workforcePools.providers.keys)
/// * How-to Guides
/// * [Configure a provider within the workforce pool](https://cloud.google.com/iam/docs/manage-workforce-identity-pools-providers#configure_a_provider_within_the_workforce_pool)
/// * [Workforce Identity Federation Overview](https://cloud.google.com/iam/docs/workforce-identity-federation)
///
/// ## Example Usage
///
/// ### Iam Workforce Pool Provider Saml Key Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pool = new gcp.iam.WorkforcePool("pool", {
///     workforcePoolId: "example-pool",
///     parent: "organizations/123456789",
///     location: "global",
/// });
/// const provider = new gcp.iam.WorkforcePoolProvider("provider", {
///     workforcePoolId: pool.workforcePoolId,
///     location: pool.location,
///     providerId: "example-prvdr",
///     attributeMapping: {
///         "google.subject": "assertion.sub",
///     },
///     saml: {
///         idpMetadataXml: "<?xml version=\"1.0\"?><md:EntityDescriptor xmlns:md=\"urn:oasis:names:tc:SAML:2.0:metadata\" entityID=\"https://test.com\"><md:IDPSSODescriptor protocolSupportEnumeration=\"urn:oasis:names:tc:SAML:2.0:protocol\"> <md:KeyDescriptor use=\"signing\"><ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\"><ds:X509Data><ds:X509Certificate>MIIDpDCCAoygAwIBAgIGAX7/5qPhMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzENMAsGA1UECgwET2t0YTEUMBIGA1UECwwLU1NPUHJvdmlkZXIxEzARBgNVBAMMCmRldi00NTg0MjExHDAaBgkqhkiG9w0BCQEWDWluZm9Ab2t0YS5jb20wHhcNMjIwMjE2MDAxOTEyWhcNMzIwMjE2MDAyMDEyWjCBkjELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xDTALBgNVBAoMBE9rdGExFDASBgNVBAsMC1NTT1Byb3ZpZGVyMRMwEQYDVQQDDApkZXYtNDU4NDIxMRwwGgYJKoZIhvcNAQkBFg1pbmZvQG9rdGEuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxrBl7GKz52cRpxF9xCsirnRuMxnhFBaUrsHqAQrLqWmdlpNYZTVg+T9iQ+aq/iE68L+BRZcZniKIvW58wqqS0ltXVvIkXuDSvnvnkkI5yMIVErR20K8jSOKQm1FmK+fgAJ4koshFiu9oLiqu0Ejc0DuL3/XRsb4RuxjktKTb1khgBBtb+7idEk0sFR0RPefAweXImJkDHDm7SxjDwGJUubbqpdTxasPr0W+AHI1VUzsUsTiHAoyb0XDkYqHfDzhj/ZdIEl4zHQ3bEZvlD984ztAnmX2SuFLLKfXeAAGHei8MMixJvwxYkkPeYZ/5h8WgBZPP4heS2CPjwYExt29L8QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQARjJFz++a9Z5IQGFzsZMrX2EDR5ML4xxUiQkbhld1S1PljOLcYFARDmUC2YYHOueU4ee8Jid9nPGEUebV/4Jok+b+oQh+dWMgiWjSLI7h5q4OYZ3VJtdlVwgMFt2iz+/4yBKMUZ50g3Qgg36vE34us+eKitg759JgCNsibxn0qtJgSPm0sgP2L6yTaLnoEUbXBRxCwynTSkp9ZijZqEzbhN0e2dWv7Rx/nfpohpDP6vEiFImKFHpDSv3M/5de1ytQzPFrZBYt9WlzlYwE1aD9FHCxdd+rWgYMVVoRaRmndpV/Rq3QUuDuFJtaoX11bC7ExkOpg9KstZzA63i3VcfYv</ds:X509Certificate></ds:X509Data></ds:KeyInfo></md:KeyDescriptor><md:SingleSignOnService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect\" Location=\"https://test.com/sso\"/></md:IDPSSODescriptor></md:EntityDescriptor>",
///     },
/// });
/// const example = new gcp.iam.WorkforcePoolProviderKey("example", {
///     workforcePoolId: pool.workforcePoolId,
///     location: pool.location,
///     providerId: provider.providerId,
///     keyId: "example-key",
///     keyData: {
///         keySpec: "RSA_2048",
///     },
///     use: "ENCRYPTION",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pool = gcp.iam.WorkforcePool("pool",
///     workforce_pool_id="example-pool",
///     parent="organizations/123456789",
///     location="global")
/// provider = gcp.iam.WorkforcePoolProvider("provider",
///     workforce_pool_id=pool.workforce_pool_id,
///     location=pool.location,
///     provider_id="example-prvdr",
///     attribute_mapping={
///         "google.subject": "assertion.sub",
///     },
///     saml={
///         "idp_metadata_xml": "<?xml version=\"1.0\"?><md:EntityDescriptor xmlns:md=\"urn:oasis:names:tc:SAML:2.0:metadata\" entityID=\"https://test.com\"><md:IDPSSODescriptor protocolSupportEnumeration=\"urn:oasis:names:tc:SAML:2.0:protocol\"> <md:KeyDescriptor use=\"signing\"><ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\"><ds:X509Data><ds:X509Certificate>MIIDpDCCAoygAwIBAgIGAX7/5qPhMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzENMAsGA1UECgwET2t0YTEUMBIGA1UECwwLU1NPUHJvdmlkZXIxEzARBgNVBAMMCmRldi00NTg0MjExHDAaBgkqhkiG9w0BCQEWDWluZm9Ab2t0YS5jb20wHhcNMjIwMjE2MDAxOTEyWhcNMzIwMjE2MDAyMDEyWjCBkjELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xDTALBgNVBAoMBE9rdGExFDASBgNVBAsMC1NTT1Byb3ZpZGVyMRMwEQYDVQQDDApkZXYtNDU4NDIxMRwwGgYJKoZIhvcNAQkBFg1pbmZvQG9rdGEuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxrBl7GKz52cRpxF9xCsirnRuMxnhFBaUrsHqAQrLqWmdlpNYZTVg+T9iQ+aq/iE68L+BRZcZniKIvW58wqqS0ltXVvIkXuDSvnvnkkI5yMIVErR20K8jSOKQm1FmK+fgAJ4koshFiu9oLiqu0Ejc0DuL3/XRsb4RuxjktKTb1khgBBtb+7idEk0sFR0RPefAweXImJkDHDm7SxjDwGJUubbqpdTxasPr0W+AHI1VUzsUsTiHAoyb0XDkYqHfDzhj/ZdIEl4zHQ3bEZvlD984ztAnmX2SuFLLKfXeAAGHei8MMixJvwxYkkPeYZ/5h8WgBZPP4heS2CPjwYExt29L8QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQARjJFz++a9Z5IQGFzsZMrX2EDR5ML4xxUiQkbhld1S1PljOLcYFARDmUC2YYHOueU4ee8Jid9nPGEUebV/4Jok+b+oQh+dWMgiWjSLI7h5q4OYZ3VJtdlVwgMFt2iz+/4yBKMUZ50g3Qgg36vE34us+eKitg759JgCNsibxn0qtJgSPm0sgP2L6yTaLnoEUbXBRxCwynTSkp9ZijZqEzbhN0e2dWv7Rx/nfpohpDP6vEiFImKFHpDSv3M/5de1ytQzPFrZBYt9WlzlYwE1aD9FHCxdd+rWgYMVVoRaRmndpV/Rq3QUuDuFJtaoX11bC7ExkOpg9KstZzA63i3VcfYv</ds:X509Certificate></ds:X509Data></ds:KeyInfo></md:KeyDescriptor><md:SingleSignOnService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect\" Location=\"https://test.com/sso\"/></md:IDPSSODescriptor></md:EntityDescriptor>",
///     })
/// example = gcp.iam.WorkforcePoolProviderKey("example",
///     workforce_pool_id=pool.workforce_pool_id,
///     location=pool.location,
///     provider_id=provider.provider_id,
///     key_id="example-key",
///     key_data={
///         "key_spec": "RSA_2048",
///     },
///     use="ENCRYPTION")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new Gcp.Iam.WorkforcePool("pool", new()
///     {
///         WorkforcePoolId = "example-pool",
///         Parent = "organizations/123456789",
///         Location = "global",
///     });
///
///     var provider = new Gcp.Iam.WorkforcePoolProvider("provider", new()
///     {
///         WorkforcePoolId = pool.WorkforcePoolId,
///         Location = pool.Location,
///         ProviderId = "example-prvdr",
///         AttributeMapping =
///         {
///             { "google.subject", "assertion.sub" },
///         },
///         Saml = new Gcp.Iam.Inputs.WorkforcePoolProviderSamlArgs
///         {
///             IdpMetadataXml = "<?xml version=\"1.0\"?><md:EntityDescriptor xmlns:md=\"urn:oasis:names:tc:SAML:2.0:metadata\" entityID=\"https://test.com\"><md:IDPSSODescriptor protocolSupportEnumeration=\"urn:oasis:names:tc:SAML:2.0:protocol\"> <md:KeyDescriptor use=\"signing\"><ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\"><ds:X509Data><ds:X509Certificate>MIIDpDCCAoygAwIBAgIGAX7/5qPhMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzENMAsGA1UECgwET2t0YTEUMBIGA1UECwwLU1NPUHJvdmlkZXIxEzARBgNVBAMMCmRldi00NTg0MjExHDAaBgkqhkiG9w0BCQEWDWluZm9Ab2t0YS5jb20wHhcNMjIwMjE2MDAxOTEyWhcNMzIwMjE2MDAyMDEyWjCBkjELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xDTALBgNVBAoMBE9rdGExFDASBgNVBAsMC1NTT1Byb3ZpZGVyMRMwEQYDVQQDDApkZXYtNDU4NDIxMRwwGgYJKoZIhvcNAQkBFg1pbmZvQG9rdGEuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxrBl7GKz52cRpxF9xCsirnRuMxnhFBaUrsHqAQrLqWmdlpNYZTVg+T9iQ+aq/iE68L+BRZcZniKIvW58wqqS0ltXVvIkXuDSvnvnkkI5yMIVErR20K8jSOKQm1FmK+fgAJ4koshFiu9oLiqu0Ejc0DuL3/XRsb4RuxjktKTb1khgBBtb+7idEk0sFR0RPefAweXImJkDHDm7SxjDwGJUubbqpdTxasPr0W+AHI1VUzsUsTiHAoyb0XDkYqHfDzhj/ZdIEl4zHQ3bEZvlD984ztAnmX2SuFLLKfXeAAGHei8MMixJvwxYkkPeYZ/5h8WgBZPP4heS2CPjwYExt29L8QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQARjJFz++a9Z5IQGFzsZMrX2EDR5ML4xxUiQkbhld1S1PljOLcYFARDmUC2YYHOueU4ee8Jid9nPGEUebV/4Jok+b+oQh+dWMgiWjSLI7h5q4OYZ3VJtdlVwgMFt2iz+/4yBKMUZ50g3Qgg36vE34us+eKitg759JgCNsibxn0qtJgSPm0sgP2L6yTaLnoEUbXBRxCwynTSkp9ZijZqEzbhN0e2dWv7Rx/nfpohpDP6vEiFImKFHpDSv3M/5de1ytQzPFrZBYt9WlzlYwE1aD9FHCxdd+rWgYMVVoRaRmndpV/Rq3QUuDuFJtaoX11bC7ExkOpg9KstZzA63i3VcfYv</ds:X509Certificate></ds:X509Data></ds:KeyInfo></md:KeyDescriptor><md:SingleSignOnService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect\" Location=\"https://test.com/sso\"/></md:IDPSSODescriptor></md:EntityDescriptor>",
///         },
///     });
///
///     var example = new Gcp.Iam.WorkforcePoolProviderKey("example", new()
///     {
///         WorkforcePoolId = pool.WorkforcePoolId,
///         Location = pool.Location,
///         ProviderId = provider.ProviderId,
///         KeyId = "example-key",
///         KeyData = new Gcp.Iam.Inputs.WorkforcePoolProviderKeyKeyDataArgs
///         {
///             KeySpec = "RSA_2048",
///         },
///         Use = "ENCRYPTION",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		pool, err := iam.NewWorkforcePool(ctx, "pool", &iam.WorkforcePoolArgs{
/// 			WorkforcePoolId: pulumi.String("example-pool"),
/// 			Parent:          pulumi.String("organizations/123456789"),
/// 			Location:        pulumi.String("global"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		provider, err := iam.NewWorkforcePoolProvider(ctx, "provider", &iam.WorkforcePoolProviderArgs{
/// 			WorkforcePoolId: pool.WorkforcePoolId,
/// 			Location:        pool.Location,
/// 			ProviderId:      pulumi.String("example-prvdr"),
/// 			AttributeMapping: pulumi.StringMap{
/// 				"google.subject": pulumi.String("assertion.sub"),
/// 			},
/// 			Saml: &iam.WorkforcePoolProviderSamlArgs{
/// 				IdpMetadataXml: pulumi.String("<?xml version=\"1.0\"?><md:EntityDescriptor xmlns:md=\"urn:oasis:names:tc:SAML:2.0:metadata\" entityID=\"https://test.com\"><md:IDPSSODescriptor protocolSupportEnumeration=\"urn:oasis:names:tc:SAML:2.0:protocol\"> <md:KeyDescriptor use=\"signing\"><ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\"><ds:X509Data><ds:X509Certificate>MIIDpDCCAoygAwIBAgIGAX7/5qPhMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzENMAsGA1UECgwET2t0YTEUMBIGA1UECwwLU1NPUHJvdmlkZXIxEzARBgNVBAMMCmRldi00NTg0MjExHDAaBgkqhkiG9w0BCQEWDWluZm9Ab2t0YS5jb20wHhcNMjIwMjE2MDAxOTEyWhcNMzIwMjE2MDAyMDEyWjCBkjELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xDTALBgNVBAoMBE9rdGExFDASBgNVBAsMC1NTT1Byb3ZpZGVyMRMwEQYDVQQDDApkZXYtNDU4NDIxMRwwGgYJKoZIhvcNAQkBFg1pbmZvQG9rdGEuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxrBl7GKz52cRpxF9xCsirnRuMxnhFBaUrsHqAQrLqWmdlpNYZTVg+T9iQ+aq/iE68L+BRZcZniKIvW58wqqS0ltXVvIkXuDSvnvnkkI5yMIVErR20K8jSOKQm1FmK+fgAJ4koshFiu9oLiqu0Ejc0DuL3/XRsb4RuxjktKTb1khgBBtb+7idEk0sFR0RPefAweXImJkDHDm7SxjDwGJUubbqpdTxasPr0W+AHI1VUzsUsTiHAoyb0XDkYqHfDzhj/ZdIEl4zHQ3bEZvlD984ztAnmX2SuFLLKfXeAAGHei8MMixJvwxYkkPeYZ/5h8WgBZPP4heS2CPjwYExt29L8QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQARjJFz++a9Z5IQGFzsZMrX2EDR5ML4xxUiQkbhld1S1PljOLcYFARDmUC2YYHOueU4ee8Jid9nPGEUebV/4Jok+b+oQh+dWMgiWjSLI7h5q4OYZ3VJtdlVwgMFt2iz+/4yBKMUZ50g3Qgg36vE34us+eKitg759JgCNsibxn0qtJgSPm0sgP2L6yTaLnoEUbXBRxCwynTSkp9ZijZqEzbhN0e2dWv7Rx/nfpohpDP6vEiFImKFHpDSv3M/5de1ytQzPFrZBYt9WlzlYwE1aD9FHCxdd+rWgYMVVoRaRmndpV/Rq3QUuDuFJtaoX11bC7ExkOpg9KstZzA63i3VcfYv</ds:X509Certificate></ds:X509Data></ds:KeyInfo></md:KeyDescriptor><md:SingleSignOnService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect\" Location=\"https://test.com/sso\"/></md:IDPSSODescriptor></md:EntityDescriptor>"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewWorkforcePoolProviderKey(ctx, "example", &iam.WorkforcePoolProviderKeyArgs{
/// 			WorkforcePoolId: pool.WorkforcePoolId,
/// 			Location:        pool.Location,
/// 			ProviderId:      provider.ProviderId,
/// 			KeyId:           pulumi.String("example-key"),
/// 			KeyData: &iam.WorkforcePoolProviderKeyKeyDataArgs{
/// 				KeySpec: pulumi.String("RSA_2048"),
/// 			},
/// 			Use: pulumi.String("ENCRYPTION"),
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
/// import com.pulumi.gcp.iam.WorkforcePool;
/// import com.pulumi.gcp.iam.WorkforcePoolArgs;
/// import com.pulumi.gcp.iam.WorkforcePoolProvider;
/// import com.pulumi.gcp.iam.WorkforcePoolProviderArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderSamlArgs;
/// import com.pulumi.gcp.iam.WorkforcePoolProviderKey;
/// import com.pulumi.gcp.iam.WorkforcePoolProviderKeyArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderKeyKeyDataArgs;
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
///         var pool = new WorkforcePool("pool", WorkforcePoolArgs.builder()
///             .workforcePoolId("example-pool")
///             .parent("organizations/123456789")
///             .location("global")
///             .build());
///
///         var provider = new WorkforcePoolProvider("provider", WorkforcePoolProviderArgs.builder()
///             .workforcePoolId(pool.workforcePoolId())
///             .location(pool.location())
///             .providerId("example-prvdr")
///             .attributeMapping(Map.of("google.subject", "assertion.sub"))
///             .saml(WorkforcePoolProviderSamlArgs.builder()
///                 .idpMetadataXml("<?xml version=\"1.0\"?><md:EntityDescriptor xmlns:md=\"urn:oasis:names:tc:SAML:2.0:metadata\" entityID=\"https://test.com\"><md:IDPSSODescriptor protocolSupportEnumeration=\"urn:oasis:names:tc:SAML:2.0:protocol\"> <md:KeyDescriptor use=\"signing\"><ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\"><ds:X509Data><ds:X509Certificate>MIIDpDCCAoygAwIBAgIGAX7/5qPhMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzENMAsGA1UECgwET2t0YTEUMBIGA1UECwwLU1NPUHJvdmlkZXIxEzARBgNVBAMMCmRldi00NTg0MjExHDAaBgkqhkiG9w0BCQEWDWluZm9Ab2t0YS5jb20wHhcNMjIwMjE2MDAxOTEyWhcNMzIwMjE2MDAyMDEyWjCBkjELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xDTALBgNVBAoMBE9rdGExFDASBgNVBAsMC1NTT1Byb3ZpZGVyMRMwEQYDVQQDDApkZXYtNDU4NDIxMRwwGgYJKoZIhvcNAQkBFg1pbmZvQG9rdGEuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxrBl7GKz52cRpxF9xCsirnRuMxnhFBaUrsHqAQrLqWmdlpNYZTVg+T9iQ+aq/iE68L+BRZcZniKIvW58wqqS0ltXVvIkXuDSvnvnkkI5yMIVErR20K8jSOKQm1FmK+fgAJ4koshFiu9oLiqu0Ejc0DuL3/XRsb4RuxjktKTb1khgBBtb+7idEk0sFR0RPefAweXImJkDHDm7SxjDwGJUubbqpdTxasPr0W+AHI1VUzsUsTiHAoyb0XDkYqHfDzhj/ZdIEl4zHQ3bEZvlD984ztAnmX2SuFLLKfXeAAGHei8MMixJvwxYkkPeYZ/5h8WgBZPP4heS2CPjwYExt29L8QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQARjJFz++a9Z5IQGFzsZMrX2EDR5ML4xxUiQkbhld1S1PljOLcYFARDmUC2YYHOueU4ee8Jid9nPGEUebV/4Jok+b+oQh+dWMgiWjSLI7h5q4OYZ3VJtdlVwgMFt2iz+/4yBKMUZ50g3Qgg36vE34us+eKitg759JgCNsibxn0qtJgSPm0sgP2L6yTaLnoEUbXBRxCwynTSkp9ZijZqEzbhN0e2dWv7Rx/nfpohpDP6vEiFImKFHpDSv3M/5de1ytQzPFrZBYt9WlzlYwE1aD9FHCxdd+rWgYMVVoRaRmndpV/Rq3QUuDuFJtaoX11bC7ExkOpg9KstZzA63i3VcfYv</ds:X509Certificate></ds:X509Data></ds:KeyInfo></md:KeyDescriptor><md:SingleSignOnService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect\" Location=\"https://test.com/sso\"/></md:IDPSSODescriptor></md:EntityDescriptor>")
///                 .build())
///             .build());
///
///         var example = new WorkforcePoolProviderKey("example", WorkforcePoolProviderKeyArgs.builder()
///             .workforcePoolId(pool.workforcePoolId())
///             .location(pool.location())
///             .providerId(provider.providerId())
///             .keyId("example-key")
///             .keyData(WorkforcePoolProviderKeyKeyDataArgs.builder()
///                 .keySpec("RSA_2048")
///                 .build())
///             .use("ENCRYPTION")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pool:
///     type: gcp:iam:WorkforcePool
///     properties:
///       workforcePoolId: example-pool
///       parent: organizations/123456789
///       location: global
///   provider:
///     type: gcp:iam:WorkforcePoolProvider
///     properties:
///       workforcePoolId: ${pool.workforcePoolId}
///       location: ${pool.location}
///       providerId: example-prvdr
///       attributeMapping:
///         google.subject: assertion.sub
///       saml:
///         idpMetadataXml: <?xml version="1.0"?><md:EntityDescriptor xmlns:md="urn:oasis:names:tc:SAML:2.0:metadata" entityID="https://test.com"><md:IDPSSODescriptor protocolSupportEnumeration="urn:oasis:names:tc:SAML:2.0:protocol"> <md:KeyDescriptor use="signing"><ds:KeyInfo xmlns:ds="http://www.w3.org/2000/09/xmldsig#"><ds:X509Data><ds:X509Certificate>MIIDpDCCAoygAwIBAgIGAX7/5qPhMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzENMAsGA1UECgwET2t0YTEUMBIGA1UECwwLU1NPUHJvdmlkZXIxEzARBgNVBAMMCmRldi00NTg0MjExHDAaBgkqhkiG9w0BCQEWDWluZm9Ab2t0YS5jb20wHhcNMjIwMjE2MDAxOTEyWhcNMzIwMjE2MDAyMDEyWjCBkjELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xDTALBgNVBAoMBE9rdGExFDASBgNVBAsMC1NTT1Byb3ZpZGVyMRMwEQYDVQQDDApkZXYtNDU4NDIxMRwwGgYJKoZIhvcNAQkBFg1pbmZvQG9rdGEuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxrBl7GKz52cRpxF9xCsirnRuMxnhFBaUrsHqAQrLqWmdlpNYZTVg+T9iQ+aq/iE68L+BRZcZniKIvW58wqqS0ltXVvIkXuDSvnvnkkI5yMIVErR20K8jSOKQm1FmK+fgAJ4koshFiu9oLiqu0Ejc0DuL3/XRsb4RuxjktKTb1khgBBtb+7idEk0sFR0RPefAweXImJkDHDm7SxjDwGJUubbqpdTxasPr0W+AHI1VUzsUsTiHAoyb0XDkYqHfDzhj/ZdIEl4zHQ3bEZvlD984ztAnmX2SuFLLKfXeAAGHei8MMixJvwxYkkPeYZ/5h8WgBZPP4heS2CPjwYExt29L8QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQARjJFz++a9Z5IQGFzsZMrX2EDR5ML4xxUiQkbhld1S1PljOLcYFARDmUC2YYHOueU4ee8Jid9nPGEUebV/4Jok+b+oQh+dWMgiWjSLI7h5q4OYZ3VJtdlVwgMFt2iz+/4yBKMUZ50g3Qgg36vE34us+eKitg759JgCNsibxn0qtJgSPm0sgP2L6yTaLnoEUbXBRxCwynTSkp9ZijZqEzbhN0e2dWv7Rx/nfpohpDP6vEiFImKFHpDSv3M/5de1ytQzPFrZBYt9WlzlYwE1aD9FHCxdd+rWgYMVVoRaRmndpV/Rq3QUuDuFJtaoX11bC7ExkOpg9KstZzA63i3VcfYv</ds:X509Certificate></ds:X509Data></ds:KeyInfo></md:KeyDescriptor><md:SingleSignOnService Binding="urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect" Location="https://test.com/sso"/></md:IDPSSODescriptor></md:EntityDescriptor>
///   example:
///     type: gcp:iam:WorkforcePoolProviderKey
///     properties:
///       workforcePoolId: ${pool.workforcePoolId}
///       location: ${pool.location}
///       providerId: ${provider.providerId}
///       keyId: example-key
///       keyData:
///         keySpec: RSA_2048
///       use: ENCRYPTION
/// ```
///
///
/// ## Import
///
/// WorkforcePoolProviderKey can be imported using any of these accepted formats:
///
/// * `locations/{{location}}/workforcePools/{{workforce_pool_id}}/providers/{{provider_id}}/keys/{{key_id}}`
///
/// * `{{location}}/{{workforce_pool_id}}/{{provider_id}}/{{key_id}}`
///
/// When using the `pulumi import` command, WorkforcePoolProviderKey can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePoolProviderKey:WorkforcePoolProviderKey default locations/{{location}}/workforcePools/{{workforce_pool_id}}/providers/{{provider_id}}/keys/{{key_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePoolProviderKey:WorkforcePoolProviderKey default {{location}}/{{workforce_pool_id}}/{{provider_id}}/{{key_id}}
/// ```
class WorkforcePoolProviderKey extends pulumi.CustomResource {
  /// The time after which the key will be permanently deleted and cannot be recovered.
  /// Note that the key may get purged before this time if the total limit of keys per provider is exceeded.
  late final pulumi.Output<String> expireTime;
  /// Immutable. Public half of the asymmetric key.
  /// Structure is documented below.
  late final pulumi.Output<WorkforcePoolProviderKeyKeyData> keyData;
  /// The ID to use for the key, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  late final pulumi.Output<String> keyId;
  /// The location for the resource.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the key.
  /// Format: `locations/{location}/workforcePools/{workforcePoolId}/providers/{providerId}/keys/{keyId}`
  late final pulumi.Output<String> name;
  /// The ID of the provider.
  late final pulumi.Output<String> providerId;
  /// The state of the key.
  late final pulumi.Output<String> state;
  /// The purpose of the key.
  /// Possible values are: `ENCRYPTION`.
  late final pulumi.Output<String> use;
  /// The ID of the workforce pool.
  late final pulumi.Output<String> workforcePoolId;

  /// Creates a new [WorkforcePoolProviderKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkforcePoolProviderKey]. {@macro pulumi_iam_workforce_pool_provider_key_workforce_pool_provider_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkforcePoolProviderKey(
    String name, {
    WorkforcePoolProviderKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workforcePoolProviderKey:WorkforcePoolProviderKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.expireTime = registerOutput<String>('expireTime');
    this.keyData = registerOutput<WorkforcePoolProviderKeyKeyData>('keyData');
    this.keyId = registerOutput<String>('keyId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.providerId = registerOutput<String>('providerId');
    this.state = registerOutput<String>('state');
    this.use = registerOutput<String>('use');
    this.workforcePoolId = registerOutput<String>('workforcePoolId');
  }

  /// Gets an existing [WorkforcePoolProviderKey] resource's state with the given [name] and [id].
  static WorkforcePoolProviderKey get(
    String name,
    pulumi.Input<String> id, {
    WorkforcePoolProviderKeyState? state,
  }) {
    return WorkforcePoolProviderKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkforcePoolProviderKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workforcePoolProviderKey:WorkforcePoolProviderKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.expireTime = registerOutput<String>('expireTime');
    this.keyData = registerOutput<WorkforcePoolProviderKeyKeyData>('keyData');
    this.keyId = registerOutput<String>('keyId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.providerId = registerOutput<String>('providerId');
    this.state = registerOutput<String>('state');
    this.use = registerOutput<String>('use');
    this.workforcePoolId = registerOutput<String>('workforcePoolId');
  }
}
