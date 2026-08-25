import 'package:pulumi/pulumi.dart' as pulumi;
import 'workforce_pool_provider_args.dart';
import 'workforce_pool_provider_extended_attributes_oauth2_client.dart';
import 'workforce_pool_provider_extra_attributes_oauth2_client.dart';
import 'workforce_pool_provider_oidc.dart';
import 'workforce_pool_provider_saml.dart';
import 'workforce_pool_provider_state.dart';

/// A configuration for an external identity provider.
///
///
/// To get more information about WorkforcePoolProvider, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v1/locations.workforcePools.providers)
/// * How-to Guides
/// * [Configure a provider within the workforce pool](https://cloud.google.com/iam/docs/manage-workforce-identity-pools-providers#configure_a_provider_within_the_workforce_pool)
///
/// &gt; **Note:** Ask your Google Cloud account team to request access to workforce identity federation for your
/// billing/quota project. The account team notifies you when the project is granted access.
///
///
///
/// &gt; **Note:**  All arguments marked as write-only values will not be stored in the state: `oidc.client_secret.value.plain_text_wo`, `extra_attributes_oauth2_client.client_secret.value.plain_text_wo`, `extended_attributes_oauth2_client.client_secret.value.plain_text_wo`.
/// Read more about Write-only Arguments.
///
/// ## Example Usage
///
/// ### Iam Workforce Pool Provider Saml Basic
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
/// const example = new gcp.iam.WorkforcePoolProvider("example", {
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pool = gcp.iam.WorkforcePool("pool",
///     workforce_pool_id="example-pool",
///     parent="organizations/123456789",
///     location="global")
/// example = gcp.iam.WorkforcePoolProvider("example",
///     workforce_pool_id=pool.workforce_pool_id,
///     location=pool.location,
///     provider_id="example-prvdr",
///     attribute_mapping={
///         "google.subject": "assertion.sub",
///     },
///     saml={
///         "idp_metadata_xml": "<?xml version=\"1.0\"?><md:EntityDescriptor xmlns:md=\"urn:oasis:names:tc:SAML:2.0:metadata\" entityID=\"https://test.com\"><md:IDPSSODescriptor protocolSupportEnumeration=\"urn:oasis:names:tc:SAML:2.0:protocol\"> <md:KeyDescriptor use=\"signing\"><ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\"><ds:X509Data><ds:X509Certificate>MIIDpDCCAoygAwIBAgIGAX7/5qPhMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzENMAsGA1UECgwET2t0YTEUMBIGA1UECwwLU1NPUHJvdmlkZXIxEzARBgNVBAMMCmRldi00NTg0MjExHDAaBgkqhkiG9w0BCQEWDWluZm9Ab2t0YS5jb20wHhcNMjIwMjE2MDAxOTEyWhcNMzIwMjE2MDAyMDEyWjCBkjELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xDTALBgNVBAoMBE9rdGExFDASBgNVBAsMC1NTT1Byb3ZpZGVyMRMwEQYDVQQDDApkZXYtNDU4NDIxMRwwGgYJKoZIhvcNAQkBFg1pbmZvQG9rdGEuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxrBl7GKz52cRpxF9xCsirnRuMxnhFBaUrsHqAQrLqWmdlpNYZTVg+T9iQ+aq/iE68L+BRZcZniKIvW58wqqS0ltXVvIkXuDSvnvnkkI5yMIVErR20K8jSOKQm1FmK+fgAJ4koshFiu9oLiqu0Ejc0DuL3/XRsb4RuxjktKTb1khgBBtb+7idEk0sFR0RPefAweXImJkDHDm7SxjDwGJUubbqpdTxasPr0W+AHI1VUzsUsTiHAoyb0XDkYqHfDzhj/ZdIEl4zHQ3bEZvlD984ztAnmX2SuFLLKfXeAAGHei8MMixJvwxYkkPeYZ/5h8WgBZPP4heS2CPjwYExt29L8QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQARjJFz++a9Z5IQGFzsZMrX2EDR5ML4xxUiQkbhld1S1PljOLcYFARDmUC2YYHOueU4ee8Jid9nPGEUebV/4Jok+b+oQh+dWMgiWjSLI7h5q4OYZ3VJtdlVwgMFt2iz+/4yBKMUZ50g3Qgg36vE34us+eKitg759JgCNsibxn0qtJgSPm0sgP2L6yTaLnoEUbXBRxCwynTSkp9ZijZqEzbhN0e2dWv7Rx/nfpohpDP6vEiFImKFHpDSv3M/5de1ytQzPFrZBYt9WlzlYwE1aD9FHCxdd+rWgYMVVoRaRmndpV/Rq3QUuDuFJtaoX11bC7ExkOpg9KstZzA63i3VcfYv</ds:X509Certificate></ds:X509Data></ds:KeyInfo></md:KeyDescriptor><md:SingleSignOnService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect\" Location=\"https://test.com/sso\"/></md:IDPSSODescriptor></md:EntityDescriptor>",
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
///     var pool = new Gcp.Iam.WorkforcePool("pool", new()
///     {
///         WorkforcePoolId = "example-pool",
///         Parent = "organizations/123456789",
///         Location = "global",
///     });
///
///     var example = new Gcp.Iam.WorkforcePoolProvider("example", new()
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
/// 		_, err = iam.NewWorkforcePoolProvider(ctx, "example", &iam.WorkforcePoolProviderArgs{
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
/// resource "gcp_iam_workforcepool" "pool" {
///   workforce_pool_id = "example-pool"
///   parent            = "organizations/123456789"
///   location          = "global"
/// }
/// resource "gcp_iam_workforcepoolprovider" "example" {
///   workforce_pool_id = gcp_iam_workforcepool.pool.workforce_pool_id
///   location          = gcp_iam_workforcepool.pool.location
///   provider_id       = "example-prvdr"
///   attribute_mapping = {
///     "google.subject" = "assertion.sub"
///   }
///   saml = {
///     idp_metadata_xml = "<?xml version=\"1.0\"?><md:EntityDescriptor xmlns:md=\"urn:oasis:names:tc:SAML:2.0:metadata\" entityID=\"https://test.com\"><md:IDPSSODescriptor protocolSupportEnumeration=\"urn:oasis:names:tc:SAML:2.0:protocol\"> <md:KeyDescriptor use=\"signing\"><ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\"><ds:X509Data><ds:X509Certificate>MIIDpDCCAoygAwIBAgIGAX7/5qPhMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzENMAsGA1UECgwET2t0YTEUMBIGA1UECwwLU1NPUHJvdmlkZXIxEzARBgNVBAMMCmRldi00NTg0MjExHDAaBgkqhkiG9w0BCQEWDWluZm9Ab2t0YS5jb20wHhcNMjIwMjE2MDAxOTEyWhcNMzIwMjE2MDAyMDEyWjCBkjELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xDTALBgNVBAoMBE9rdGExFDASBgNVBAsMC1NTT1Byb3ZpZGVyMRMwEQYDVQQDDApkZXYtNDU4NDIxMRwwGgYJKoZIhvcNAQkBFg1pbmZvQG9rdGEuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxrBl7GKz52cRpxF9xCsirnRuMxnhFBaUrsHqAQrLqWmdlpNYZTVg+T9iQ+aq/iE68L+BRZcZniKIvW58wqqS0ltXVvIkXuDSvnvnkkI5yMIVErR20K8jSOKQm1FmK+fgAJ4koshFiu9oLiqu0Ejc0DuL3/XRsb4RuxjktKTb1khgBBtb+7idEk0sFR0RPefAweXImJkDHDm7SxjDwGJUubbqpdTxasPr0W+AHI1VUzsUsTiHAoyb0XDkYqHfDzhj/ZdIEl4zHQ3bEZvlD984ztAnmX2SuFLLKfXeAAGHei8MMixJvwxYkkPeYZ/5h8WgBZPP4heS2CPjwYExt29L8QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQARjJFz++a9Z5IQGFzsZMrX2EDR5ML4xxUiQkbhld1S1PljOLcYFARDmUC2YYHOueU4ee8Jid9nPGEUebV/4Jok+b+oQh+dWMgiWjSLI7h5q4OYZ3VJtdlVwgMFt2iz+/4yBKMUZ50g3Qgg36vE34us+eKitg759JgCNsibxn0qtJgSPm0sgP2L6yTaLnoEUbXBRxCwynTSkp9ZijZqEzbhN0e2dWv7Rx/nfpohpDP6vEiFImKFHpDSv3M/5de1ytQzPFrZBYt9WlzlYwE1aD9FHCxdd+rWgYMVVoRaRmndpV/Rq3QUuDuFJtaoX11bC7ExkOpg9KstZzA63i3VcfYv</ds:X509Certificate></ds:X509Data></ds:KeyInfo></md:KeyDescriptor><md:SingleSignOnService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect\" Location=\"https://test.com/sso\"/></md:IDPSSODescriptor></md:EntityDescriptor>"
///   }
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
///         var pool = new WorkforcePool("pool", WorkforcePoolArgs.builder()
///             .workforcePoolId("example-pool")
///             .parent("organizations/123456789")
///             .location("global")
///             .build());
///
///         var example = new WorkforcePoolProvider("example", WorkforcePoolProviderArgs.builder()
///             .workforcePoolId(pool.workforcePoolId())
///             .location(pool.location())
///             .providerId("example-prvdr")
///             .attributeMapping(Map.of("google.subject", "assertion.sub"))
///             .saml(WorkforcePoolProviderSamlArgs.builder()
///                 .idpMetadataXml("<?xml version=\"1.0\"?><md:EntityDescriptor xmlns:md=\"urn:oasis:names:tc:SAML:2.0:metadata\" entityID=\"https://test.com\"><md:IDPSSODescriptor protocolSupportEnumeration=\"urn:oasis:names:tc:SAML:2.0:protocol\"> <md:KeyDescriptor use=\"signing\"><ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\"><ds:X509Data><ds:X509Certificate>MIIDpDCCAoygAwIBAgIGAX7/5qPhMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzENMAsGA1UECgwET2t0YTEUMBIGA1UECwwLU1NPUHJvdmlkZXIxEzARBgNVBAMMCmRldi00NTg0MjExHDAaBgkqhkiG9w0BCQEWDWluZm9Ab2t0YS5jb20wHhcNMjIwMjE2MDAxOTEyWhcNMzIwMjE2MDAyMDEyWjCBkjELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xDTALBgNVBAoMBE9rdGExFDASBgNVBAsMC1NTT1Byb3ZpZGVyMRMwEQYDVQQDDApkZXYtNDU4NDIxMRwwGgYJKoZIhvcNAQkBFg1pbmZvQG9rdGEuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxrBl7GKz52cRpxF9xCsirnRuMxnhFBaUrsHqAQrLqWmdlpNYZTVg+T9iQ+aq/iE68L+BRZcZniKIvW58wqqS0ltXVvIkXuDSvnvnkkI5yMIVErR20K8jSOKQm1FmK+fgAJ4koshFiu9oLiqu0Ejc0DuL3/XRsb4RuxjktKTb1khgBBtb+7idEk0sFR0RPefAweXImJkDHDm7SxjDwGJUubbqpdTxasPr0W+AHI1VUzsUsTiHAoyb0XDkYqHfDzhj/ZdIEl4zHQ3bEZvlD984ztAnmX2SuFLLKfXeAAGHei8MMixJvwxYkkPeYZ/5h8WgBZPP4heS2CPjwYExt29L8QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQARjJFz++a9Z5IQGFzsZMrX2EDR5ML4xxUiQkbhld1S1PljOLcYFARDmUC2YYHOueU4ee8Jid9nPGEUebV/4Jok+b+oQh+dWMgiWjSLI7h5q4OYZ3VJtdlVwgMFt2iz+/4yBKMUZ50g3Qgg36vE34us+eKitg759JgCNsibxn0qtJgSPm0sgP2L6yTaLnoEUbXBRxCwynTSkp9ZijZqEzbhN0e2dWv7Rx/nfpohpDP6vEiFImKFHpDSv3M/5de1ytQzPFrZBYt9WlzlYwE1aD9FHCxdd+rWgYMVVoRaRmndpV/Rq3QUuDuFJtaoX11bC7ExkOpg9KstZzA63i3VcfYv</ds:X509Certificate></ds:X509Data></ds:KeyInfo></md:KeyDescriptor><md:SingleSignOnService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect\" Location=\"https://test.com/sso\"/></md:IDPSSODescriptor></md:EntityDescriptor>")
///                 .build())
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
///   example:
///     type: gcp:iam:WorkforcePoolProvider
///     properties:
///       workforcePoolId: ${pool.workforcePoolId}
///       location: ${pool.location}
///       providerId: example-prvdr
///       attributeMapping:
///         google.subject: assertion.sub
///       saml:
///         idpMetadataXml: <?xml version="1.0"?><md:EntityDescriptor xmlns:md="urn:oasis:names:tc:SAML:2.0:metadata" entityID="https://test.com"><md:IDPSSODescriptor protocolSupportEnumeration="urn:oasis:names:tc:SAML:2.0:protocol"> <md:KeyDescriptor use="signing"><ds:KeyInfo xmlns:ds="http://www.w3.org/2000/09/xmldsig#"><ds:X509Data><ds:X509Certificate>MIIDpDCCAoygAwIBAgIGAX7/5qPhMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzENMAsGA1UECgwET2t0YTEUMBIGA1UECwwLU1NPUHJvdmlkZXIxEzARBgNVBAMMCmRldi00NTg0MjExHDAaBgkqhkiG9w0BCQEWDWluZm9Ab2t0YS5jb20wHhcNMjIwMjE2MDAxOTEyWhcNMzIwMjE2MDAyMDEyWjCBkjELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xDTALBgNVBAoMBE9rdGExFDASBgNVBAsMC1NTT1Byb3ZpZGVyMRMwEQYDVQQDDApkZXYtNDU4NDIxMRwwGgYJKoZIhvcNAQkBFg1pbmZvQG9rdGEuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxrBl7GKz52cRpxF9xCsirnRuMxnhFBaUrsHqAQrLqWmdlpNYZTVg+T9iQ+aq/iE68L+BRZcZniKIvW58wqqS0ltXVvIkXuDSvnvnkkI5yMIVErR20K8jSOKQm1FmK+fgAJ4koshFiu9oLiqu0Ejc0DuL3/XRsb4RuxjktKTb1khgBBtb+7idEk0sFR0RPefAweXImJkDHDm7SxjDwGJUubbqpdTxasPr0W+AHI1VUzsUsTiHAoyb0XDkYqHfDzhj/ZdIEl4zHQ3bEZvlD984ztAnmX2SuFLLKfXeAAGHei8MMixJvwxYkkPeYZ/5h8WgBZPP4heS2CPjwYExt29L8QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQARjJFz++a9Z5IQGFzsZMrX2EDR5ML4xxUiQkbhld1S1PljOLcYFARDmUC2YYHOueU4ee8Jid9nPGEUebV/4Jok+b+oQh+dWMgiWjSLI7h5q4OYZ3VJtdlVwgMFt2iz+/4yBKMUZ50g3Qgg36vE34us+eKitg759JgCNsibxn0qtJgSPm0sgP2L6yTaLnoEUbXBRxCwynTSkp9ZijZqEzbhN0e2dWv7Rx/nfpohpDP6vEiFImKFHpDSv3M/5de1ytQzPFrZBYt9WlzlYwE1aD9FHCxdd+rWgYMVVoRaRmndpV/Rq3QUuDuFJtaoX11bC7ExkOpg9KstZzA63i3VcfYv</ds:X509Certificate></ds:X509Data></ds:KeyInfo></md:KeyDescriptor><md:SingleSignOnService Binding="urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect" Location="https://test.com/sso"/></md:IDPSSODescriptor></md:EntityDescriptor>
/// ```
///
/// ### Iam Workforce Pool Provider Saml Full
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
/// const example = new gcp.iam.WorkforcePoolProvider("example", {
///     workforcePoolId: pool.workforcePoolId,
///     location: pool.location,
///     providerId: "example-prvdr",
///     attributeMapping: {
///         "google.subject": "assertion.sub",
///     },
///     saml: {
///         idpMetadataXml: "<?xml version=\"1.0\"?><md:EntityDescriptor xmlns:md=\"urn:oasis:names:tc:SAML:2.0:metadata\" entityID=\"https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989\"><md:IDPSSODescriptor protocolSupportEnumeration=\"urn:oasis:names:tc:SAML:2.0:protocol\"> <md:KeyDescriptor use=\"signing\"><ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\"><ds:X509Data><ds:X509Certificate>MIIDpDCCAoygAwIBAgIGAX7/5qPhMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzENMAsGA1UECgwET2t0YTEUMBIGA1UECwwLU1NPUHJvdmlkZXIxEzARBgNVBAMMCmRldi00NTg0MjExHDAaBgkqhkiG9w0BCQEWDWluZm9Ab2t0YS5jb20wHhcNMjIwMjE2MDAxOTEyWhcNMzIwMjE2MDAyMDEyWjCBkjELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xDTALBgNVBAoMBE9rdGExFDASBgNVBAsMC1NTT1Byb3ZpZGVyMRMwEQYDVQQDDApkZXYtNDU4NDIxMRwwGgYJKoZIhvcNAQkBFg1pbmZvQG9rdGEuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxrBl7GKz52cRpxF9xCsirnRuMxnhFBaUrsHqAQrLqWmdlpNYZTVg+T9iQ+aq/iE68L+BRZcZniKIvW58wqqS0ltXVvIkXuDSvnvnkkI5yMIVErR20K8jSOKQm1FmK+fgAJ4koshFiu9oLiqu0Ejc0DuL3/XRsb4RuxjktKTb1khgBBtb+7idEk0sFR0RPefAweXImJkDHDm7SxjDwGJUubbqpdTxasPr0W+AHI1VUzsUsTiHAoyb0XDkYqHfDzhj/ZdIEl4zHQ3bEZvlD984ztAnmX2SuFLLKfXeAAGHei8MMixJvwxYkkPeYZ/5h8WgBZPP4heS2CPjwYExt29L8QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQARjJFz++a9Z5IQGFzsZMrX2EDR5ML4xxUiQkbhld1S1PljOLcYFARDmUC2YYHOueU4ee8Jid9nPGEUebV/4Jok+b+oQh+dWMgiWjSLI7h5q4OYZ3VJtdlVwgMFt2iz+/4yBKMUZ50g3Qgg36vE34us+eKitg759JgCNsibxn0qtJgSPm0sgP2L6yTaLnoEUbXBRxCwynTSkp9ZijZqEzbhN0e2dWv7Rx/nfpohpDP6vEiFImKFHpDSv3M/5de1ytQzPFrZBYt9WlzlYwE1aD9FHCxdd+rWgYMVVoRaRmndpV/Rq3QUuDuFJtaoX11bC7ExkOpg9KstZzA63i3VcfYv</ds:X509Certificate></ds:X509Data></ds:KeyInfo></md:KeyDescriptor><md:SingleSignOnService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect\" Location=\"https://test.com/sso\"/></md:IDPSSODescriptor></md:EntityDescriptor>",
///     },
///     extraAttributesOauth2Client: {
///         issuerUri: "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         clientId: "client-id",
///         clientSecret: {
///             value: {
///                 plainText: "client-secret",
///             },
///         },
///         attributesType: "AZURE_AD_GROUPS_ID",
///         queryParameters: {
///             filter: "mail:gcp",
///         },
///     },
///     displayName: "Display name",
///     description: "A sample SAML workforce pool provider.",
///     disabled: false,
///     attributeCondition: "true",
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
/// example = gcp.iam.WorkforcePoolProvider("example",
///     workforce_pool_id=pool.workforce_pool_id,
///     location=pool.location,
///     provider_id="example-prvdr",
///     attribute_mapping={
///         "google.subject": "assertion.sub",
///     },
///     saml={
///         "idp_metadata_xml": "<?xml version=\"1.0\"?><md:EntityDescriptor xmlns:md=\"urn:oasis:names:tc:SAML:2.0:metadata\" entityID=\"https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989\"><md:IDPSSODescriptor protocolSupportEnumeration=\"urn:oasis:names:tc:SAML:2.0:protocol\"> <md:KeyDescriptor use=\"signing\"><ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\"><ds:X509Data><ds:X509Certificate>MIIDpDCCAoygAwIBAgIGAX7/5qPhMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzENMAsGA1UECgwET2t0YTEUMBIGA1UECwwLU1NPUHJvdmlkZXIxEzARBgNVBAMMCmRldi00NTg0MjExHDAaBgkqhkiG9w0BCQEWDWluZm9Ab2t0YS5jb20wHhcNMjIwMjE2MDAxOTEyWhcNMzIwMjE2MDAyMDEyWjCBkjELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xDTALBgNVBAoMBE9rdGExFDASBgNVBAsMC1NTT1Byb3ZpZGVyMRMwEQYDVQQDDApkZXYtNDU4NDIxMRwwGgYJKoZIhvcNAQkBFg1pbmZvQG9rdGEuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxrBl7GKz52cRpxF9xCsirnRuMxnhFBaUrsHqAQrLqWmdlpNYZTVg+T9iQ+aq/iE68L+BRZcZniKIvW58wqqS0ltXVvIkXuDSvnvnkkI5yMIVErR20K8jSOKQm1FmK+fgAJ4koshFiu9oLiqu0Ejc0DuL3/XRsb4RuxjktKTb1khgBBtb+7idEk0sFR0RPefAweXImJkDHDm7SxjDwGJUubbqpdTxasPr0W+AHI1VUzsUsTiHAoyb0XDkYqHfDzhj/ZdIEl4zHQ3bEZvlD984ztAnmX2SuFLLKfXeAAGHei8MMixJvwxYkkPeYZ/5h8WgBZPP4heS2CPjwYExt29L8QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQARjJFz++a9Z5IQGFzsZMrX2EDR5ML4xxUiQkbhld1S1PljOLcYFARDmUC2YYHOueU4ee8Jid9nPGEUebV/4Jok+b+oQh+dWMgiWjSLI7h5q4OYZ3VJtdlVwgMFt2iz+/4yBKMUZ50g3Qgg36vE34us+eKitg759JgCNsibxn0qtJgSPm0sgP2L6yTaLnoEUbXBRxCwynTSkp9ZijZqEzbhN0e2dWv7Rx/nfpohpDP6vEiFImKFHpDSv3M/5de1ytQzPFrZBYt9WlzlYwE1aD9FHCxdd+rWgYMVVoRaRmndpV/Rq3QUuDuFJtaoX11bC7ExkOpg9KstZzA63i3VcfYv</ds:X509Certificate></ds:X509Data></ds:KeyInfo></md:KeyDescriptor><md:SingleSignOnService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect\" Location=\"https://test.com/sso\"/></md:IDPSSODescriptor></md:EntityDescriptor>",
///     },
///     extra_attributes_oauth2_client={
///         "issuer_uri": "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         "client_id": "client-id",
///         "client_secret": {
///             "value": {
///                 "plain_text": "client-secret",
///             },
///         },
///         "attributes_type": "AZURE_AD_GROUPS_ID",
///         "query_parameters": {
///             "filter": "mail:gcp",
///         },
///     },
///     display_name="Display name",
///     description="A sample SAML workforce pool provider.",
///     disabled=False,
///     attribute_condition="true")
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
///     var example = new Gcp.Iam.WorkforcePoolProvider("example", new()
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
///             IdpMetadataXml = "<?xml version=\"1.0\"?><md:EntityDescriptor xmlns:md=\"urn:oasis:names:tc:SAML:2.0:metadata\" entityID=\"https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989\"><md:IDPSSODescriptor protocolSupportEnumeration=\"urn:oasis:names:tc:SAML:2.0:protocol\"> <md:KeyDescriptor use=\"signing\"><ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\"><ds:X509Data><ds:X509Certificate>MIIDpDCCAoygAwIBAgIGAX7/5qPhMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzENMAsGA1UECgwET2t0YTEUMBIGA1UECwwLU1NPUHJvdmlkZXIxEzARBgNVBAMMCmRldi00NTg0MjExHDAaBgkqhkiG9w0BCQEWDWluZm9Ab2t0YS5jb20wHhcNMjIwMjE2MDAxOTEyWhcNMzIwMjE2MDAyMDEyWjCBkjELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xDTALBgNVBAoMBE9rdGExFDASBgNVBAsMC1NTT1Byb3ZpZGVyMRMwEQYDVQQDDApkZXYtNDU4NDIxMRwwGgYJKoZIhvcNAQkBFg1pbmZvQG9rdGEuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxrBl7GKz52cRpxF9xCsirnRuMxnhFBaUrsHqAQrLqWmdlpNYZTVg+T9iQ+aq/iE68L+BRZcZniKIvW58wqqS0ltXVvIkXuDSvnvnkkI5yMIVErR20K8jSOKQm1FmK+fgAJ4koshFiu9oLiqu0Ejc0DuL3/XRsb4RuxjktKTb1khgBBtb+7idEk0sFR0RPefAweXImJkDHDm7SxjDwGJUubbqpdTxasPr0W+AHI1VUzsUsTiHAoyb0XDkYqHfDzhj/ZdIEl4zHQ3bEZvlD984ztAnmX2SuFLLKfXeAAGHei8MMixJvwxYkkPeYZ/5h8WgBZPP4heS2CPjwYExt29L8QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQARjJFz++a9Z5IQGFzsZMrX2EDR5ML4xxUiQkbhld1S1PljOLcYFARDmUC2YYHOueU4ee8Jid9nPGEUebV/4Jok+b+oQh+dWMgiWjSLI7h5q4OYZ3VJtdlVwgMFt2iz+/4yBKMUZ50g3Qgg36vE34us+eKitg759JgCNsibxn0qtJgSPm0sgP2L6yTaLnoEUbXBRxCwynTSkp9ZijZqEzbhN0e2dWv7Rx/nfpohpDP6vEiFImKFHpDSv3M/5de1ytQzPFrZBYt9WlzlYwE1aD9FHCxdd+rWgYMVVoRaRmndpV/Rq3QUuDuFJtaoX11bC7ExkOpg9KstZzA63i3VcfYv</ds:X509Certificate></ds:X509Data></ds:KeyInfo></md:KeyDescriptor><md:SingleSignOnService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect\" Location=\"https://test.com/sso\"/></md:IDPSSODescriptor></md:EntityDescriptor>",
///         },
///         ExtraAttributesOauth2Client = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientArgs
///         {
///             IssuerUri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///             ClientId = "client-id",
///             ClientSecret = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs
///             {
///                 Value = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs
///                 {
///                     PlainText = "client-secret",
///                 },
///             },
///             AttributesType = "AZURE_AD_GROUPS_ID",
///             QueryParameters = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientQueryParametersArgs
///             {
///                 Filter = "mail:gcp",
///             },
///         },
///         DisplayName = "Display name",
///         Description = "A sample SAML workforce pool provider.",
///         Disabled = false,
///         AttributeCondition = "true",
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
/// 		_, err = iam.NewWorkforcePoolProvider(ctx, "example", &iam.WorkforcePoolProviderArgs{
/// 			WorkforcePoolId: pool.WorkforcePoolId,
/// 			Location:        pool.Location,
/// 			ProviderId:      pulumi.String("example-prvdr"),
/// 			AttributeMapping: pulumi.StringMap{
/// 				"google.subject": pulumi.String("assertion.sub"),
/// 			},
/// 			Saml: &iam.WorkforcePoolProviderSamlArgs{
/// 				IdpMetadataXml: pulumi.String("<?xml version=\"1.0\"?><md:EntityDescriptor xmlns:md=\"urn:oasis:names:tc:SAML:2.0:metadata\" entityID=\"https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989\"><md:IDPSSODescriptor protocolSupportEnumeration=\"urn:oasis:names:tc:SAML:2.0:protocol\"> <md:KeyDescriptor use=\"signing\"><ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\"><ds:X509Data><ds:X509Certificate>MIIDpDCCAoygAwIBAgIGAX7/5qPhMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzENMAsGA1UECgwET2t0YTEUMBIGA1UECwwLU1NPUHJvdmlkZXIxEzARBgNVBAMMCmRldi00NTg0MjExHDAaBgkqhkiG9w0BCQEWDWluZm9Ab2t0YS5jb20wHhcNMjIwMjE2MDAxOTEyWhcNMzIwMjE2MDAyMDEyWjCBkjELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xDTALBgNVBAoMBE9rdGExFDASBgNVBAsMC1NTT1Byb3ZpZGVyMRMwEQYDVQQDDApkZXYtNDU4NDIxMRwwGgYJKoZIhvcNAQkBFg1pbmZvQG9rdGEuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxrBl7GKz52cRpxF9xCsirnRuMxnhFBaUrsHqAQrLqWmdlpNYZTVg+T9iQ+aq/iE68L+BRZcZniKIvW58wqqS0ltXVvIkXuDSvnvnkkI5yMIVErR20K8jSOKQm1FmK+fgAJ4koshFiu9oLiqu0Ejc0DuL3/XRsb4RuxjktKTb1khgBBtb+7idEk0sFR0RPefAweXImJkDHDm7SxjDwGJUubbqpdTxasPr0W+AHI1VUzsUsTiHAoyb0XDkYqHfDzhj/ZdIEl4zHQ3bEZvlD984ztAnmX2SuFLLKfXeAAGHei8MMixJvwxYkkPeYZ/5h8WgBZPP4heS2CPjwYExt29L8QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQARjJFz++a9Z5IQGFzsZMrX2EDR5ML4xxUiQkbhld1S1PljOLcYFARDmUC2YYHOueU4ee8Jid9nPGEUebV/4Jok+b+oQh+dWMgiWjSLI7h5q4OYZ3VJtdlVwgMFt2iz+/4yBKMUZ50g3Qgg36vE34us+eKitg759JgCNsibxn0qtJgSPm0sgP2L6yTaLnoEUbXBRxCwynTSkp9ZijZqEzbhN0e2dWv7Rx/nfpohpDP6vEiFImKFHpDSv3M/5de1ytQzPFrZBYt9WlzlYwE1aD9FHCxdd+rWgYMVVoRaRmndpV/Rq3QUuDuFJtaoX11bC7ExkOpg9KstZzA63i3VcfYv</ds:X509Certificate></ds:X509Data></ds:KeyInfo></md:KeyDescriptor><md:SingleSignOnService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect\" Location=\"https://test.com/sso\"/></md:IDPSSODescriptor></md:EntityDescriptor>"),
/// 			},
/// 			ExtraAttributesOauth2Client: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientArgs{
/// 				IssuerUri: pulumi.String("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"),
/// 				ClientId:  pulumi.String("client-id"),
/// 				ClientSecret: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs{
/// 					Value: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs{
/// 						PlainText: pulumi.String("client-secret"),
/// 					},
/// 				},
/// 				AttributesType: pulumi.String("AZURE_AD_GROUPS_ID"),
/// 				QueryParameters: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientQueryParametersArgs{
/// 					Filter: pulumi.String("mail:gcp"),
/// 				},
/// 			},
/// 			DisplayName:        pulumi.String("Display name"),
/// 			Description:        pulumi.String("A sample SAML workforce pool provider."),
/// 			Disabled:           pulumi.Bool(false),
/// 			AttributeCondition: pulumi.String("true"),
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
/// resource "gcp_iam_workforcepool" "pool" {
///   workforce_pool_id = "example-pool"
///   parent            = "organizations/123456789"
///   location          = "global"
/// }
/// resource "gcp_iam_workforcepoolprovider" "example" {
///   workforce_pool_id = gcp_iam_workforcepool.pool.workforce_pool_id
///   location          = gcp_iam_workforcepool.pool.location
///   provider_id       = "example-prvdr"
///   attribute_mapping = {
///     "google.subject" = "assertion.sub"
///   }
///   saml = {
///     idp_metadata_xml = "<?xml version=\"1.0\"?><md:EntityDescriptor xmlns:md=\"urn:oasis:names:tc:SAML:2.0:metadata\" entityID=\"https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989\"><md:IDPSSODescriptor protocolSupportEnumeration=\"urn:oasis:names:tc:SAML:2.0:protocol\"> <md:KeyDescriptor use=\"signing\"><ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\"><ds:X509Data><ds:X509Certificate>MIIDpDCCAoygAwIBAgIGAX7/5qPhMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzENMAsGA1UECgwET2t0YTEUMBIGA1UECwwLU1NPUHJvdmlkZXIxEzARBgNVBAMMCmRldi00NTg0MjExHDAaBgkqhkiG9w0BCQEWDWluZm9Ab2t0YS5jb20wHhcNMjIwMjE2MDAxOTEyWhcNMzIwMjE2MDAyMDEyWjCBkjELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xDTALBgNVBAoMBE9rdGExFDASBgNVBAsMC1NTT1Byb3ZpZGVyMRMwEQYDVQQDDApkZXYtNDU4NDIxMRwwGgYJKoZIhvcNAQkBFg1pbmZvQG9rdGEuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxrBl7GKz52cRpxF9xCsirnRuMxnhFBaUrsHqAQrLqWmdlpNYZTVg+T9iQ+aq/iE68L+BRZcZniKIvW58wqqS0ltXVvIkXuDSvnvnkkI5yMIVErR20K8jSOKQm1FmK+fgAJ4koshFiu9oLiqu0Ejc0DuL3/XRsb4RuxjktKTb1khgBBtb+7idEk0sFR0RPefAweXImJkDHDm7SxjDwGJUubbqpdTxasPr0W+AHI1VUzsUsTiHAoyb0XDkYqHfDzhj/ZdIEl4zHQ3bEZvlD984ztAnmX2SuFLLKfXeAAGHei8MMixJvwxYkkPeYZ/5h8WgBZPP4heS2CPjwYExt29L8QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQARjJFz++a9Z5IQGFzsZMrX2EDR5ML4xxUiQkbhld1S1PljOLcYFARDmUC2YYHOueU4ee8Jid9nPGEUebV/4Jok+b+oQh+dWMgiWjSLI7h5q4OYZ3VJtdlVwgMFt2iz+/4yBKMUZ50g3Qgg36vE34us+eKitg759JgCNsibxn0qtJgSPm0sgP2L6yTaLnoEUbXBRxCwynTSkp9ZijZqEzbhN0e2dWv7Rx/nfpohpDP6vEiFImKFHpDSv3M/5de1ytQzPFrZBYt9WlzlYwE1aD9FHCxdd+rWgYMVVoRaRmndpV/Rq3QUuDuFJtaoX11bC7ExkOpg9KstZzA63i3VcfYv</ds:X509Certificate></ds:X509Data></ds:KeyInfo></md:KeyDescriptor><md:SingleSignOnService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect\" Location=\"https://test.com/sso\"/></md:IDPSSODescriptor></md:EntityDescriptor>"
///   }
///   extra_attributes_oauth2_client = {
///     issuer_uri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"
///     client_id  = "client-id"
///     client_secret = {
///       value = {
///         plain_text = "client-secret"
///       }
///     }
///     attributes_type = "AZURE_AD_GROUPS_ID"
///     query_parameters = {
///       filter = "mail:gcp"
///     }
///   }
///   display_name        = "Display name"
///   description         = "A sample SAML workforce pool provider."
///   disabled            = false
///   attribute_condition = "true"
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
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientQueryParametersArgs;
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
///         var pool = new WorkforcePool("pool", WorkforcePoolArgs.builder()
///             .workforcePoolId("example-pool")
///             .parent("organizations/123456789")
///             .location("global")
///             .build());
///
///         var example = new WorkforcePoolProvider("example", WorkforcePoolProviderArgs.builder()
///             .workforcePoolId(pool.workforcePoolId())
///             .location(pool.location())
///             .providerId("example-prvdr")
///             .attributeMapping(Map.of("google.subject", "assertion.sub"))
///             .saml(WorkforcePoolProviderSamlArgs.builder()
///                 .idpMetadataXml("<?xml version=\"1.0\"?><md:EntityDescriptor xmlns:md=\"urn:oasis:names:tc:SAML:2.0:metadata\" entityID=\"https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989\"><md:IDPSSODescriptor protocolSupportEnumeration=\"urn:oasis:names:tc:SAML:2.0:protocol\"> <md:KeyDescriptor use=\"signing\"><ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\"><ds:X509Data><ds:X509Certificate>MIIDpDCCAoygAwIBAgIGAX7/5qPhMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzENMAsGA1UECgwET2t0YTEUMBIGA1UECwwLU1NPUHJvdmlkZXIxEzARBgNVBAMMCmRldi00NTg0MjExHDAaBgkqhkiG9w0BCQEWDWluZm9Ab2t0YS5jb20wHhcNMjIwMjE2MDAxOTEyWhcNMzIwMjE2MDAyMDEyWjCBkjELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xDTALBgNVBAoMBE9rdGExFDASBgNVBAsMC1NTT1Byb3ZpZGVyMRMwEQYDVQQDDApkZXYtNDU4NDIxMRwwGgYJKoZIhvcNAQkBFg1pbmZvQG9rdGEuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxrBl7GKz52cRpxF9xCsirnRuMxnhFBaUrsHqAQrLqWmdlpNYZTVg+T9iQ+aq/iE68L+BRZcZniKIvW58wqqS0ltXVvIkXuDSvnvnkkI5yMIVErR20K8jSOKQm1FmK+fgAJ4koshFiu9oLiqu0Ejc0DuL3/XRsb4RuxjktKTb1khgBBtb+7idEk0sFR0RPefAweXImJkDHDm7SxjDwGJUubbqpdTxasPr0W+AHI1VUzsUsTiHAoyb0XDkYqHfDzhj/ZdIEl4zHQ3bEZvlD984ztAnmX2SuFLLKfXeAAGHei8MMixJvwxYkkPeYZ/5h8WgBZPP4heS2CPjwYExt29L8QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQARjJFz++a9Z5IQGFzsZMrX2EDR5ML4xxUiQkbhld1S1PljOLcYFARDmUC2YYHOueU4ee8Jid9nPGEUebV/4Jok+b+oQh+dWMgiWjSLI7h5q4OYZ3VJtdlVwgMFt2iz+/4yBKMUZ50g3Qgg36vE34us+eKitg759JgCNsibxn0qtJgSPm0sgP2L6yTaLnoEUbXBRxCwynTSkp9ZijZqEzbhN0e2dWv7Rx/nfpohpDP6vEiFImKFHpDSv3M/5de1ytQzPFrZBYt9WlzlYwE1aD9FHCxdd+rWgYMVVoRaRmndpV/Rq3QUuDuFJtaoX11bC7ExkOpg9KstZzA63i3VcfYv</ds:X509Certificate></ds:X509Data></ds:KeyInfo></md:KeyDescriptor><md:SingleSignOnService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect\" Location=\"https://test.com/sso\"/></md:IDPSSODescriptor></md:EntityDescriptor>")
///                 .build())
///             .extraAttributesOauth2Client(WorkforcePoolProviderExtraAttributesOauth2ClientArgs.builder()
///                 .issuerUri("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0")
///                 .clientId("client-id")
///                 .clientSecret(WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs.builder()
///                     .value(WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs.builder()
///                         .plainText("client-secret")
///                         .build())
///                     .build())
///                 .attributesType("AZURE_AD_GROUPS_ID")
///                 .queryParameters(WorkforcePoolProviderExtraAttributesOauth2ClientQueryParametersArgs.builder()
///                     .filter("mail:gcp")
///                     .build())
///                 .build())
///             .displayName("Display name")
///             .description("A sample SAML workforce pool provider.")
///             .disabled(false)
///             .attributeCondition("true")
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
///   example:
///     type: gcp:iam:WorkforcePoolProvider
///     properties:
///       workforcePoolId: ${pool.workforcePoolId}
///       location: ${pool.location}
///       providerId: example-prvdr
///       attributeMapping:
///         google.subject: assertion.sub
///       saml:
///         idpMetadataXml: <?xml version="1.0"?><md:EntityDescriptor xmlns:md="urn:oasis:names:tc:SAML:2.0:metadata" entityID="https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989"><md:IDPSSODescriptor protocolSupportEnumeration="urn:oasis:names:tc:SAML:2.0:protocol"> <md:KeyDescriptor use="signing"><ds:KeyInfo xmlns:ds="http://www.w3.org/2000/09/xmldsig#"><ds:X509Data><ds:X509Certificate>MIIDpDCCAoygAwIBAgIGAX7/5qPhMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzENMAsGA1UECgwET2t0YTEUMBIGA1UECwwLU1NPUHJvdmlkZXIxEzARBgNVBAMMCmRldi00NTg0MjExHDAaBgkqhkiG9w0BCQEWDWluZm9Ab2t0YS5jb20wHhcNMjIwMjE2MDAxOTEyWhcNMzIwMjE2MDAyMDEyWjCBkjELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xDTALBgNVBAoMBE9rdGExFDASBgNVBAsMC1NTT1Byb3ZpZGVyMRMwEQYDVQQDDApkZXYtNDU4NDIxMRwwGgYJKoZIhvcNAQkBFg1pbmZvQG9rdGEuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxrBl7GKz52cRpxF9xCsirnRuMxnhFBaUrsHqAQrLqWmdlpNYZTVg+T9iQ+aq/iE68L+BRZcZniKIvW58wqqS0ltXVvIkXuDSvnvnkkI5yMIVErR20K8jSOKQm1FmK+fgAJ4koshFiu9oLiqu0Ejc0DuL3/XRsb4RuxjktKTb1khgBBtb+7idEk0sFR0RPefAweXImJkDHDm7SxjDwGJUubbqpdTxasPr0W+AHI1VUzsUsTiHAoyb0XDkYqHfDzhj/ZdIEl4zHQ3bEZvlD984ztAnmX2SuFLLKfXeAAGHei8MMixJvwxYkkPeYZ/5h8WgBZPP4heS2CPjwYExt29L8QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQARjJFz++a9Z5IQGFzsZMrX2EDR5ML4xxUiQkbhld1S1PljOLcYFARDmUC2YYHOueU4ee8Jid9nPGEUebV/4Jok+b+oQh+dWMgiWjSLI7h5q4OYZ3VJtdlVwgMFt2iz+/4yBKMUZ50g3Qgg36vE34us+eKitg759JgCNsibxn0qtJgSPm0sgP2L6yTaLnoEUbXBRxCwynTSkp9ZijZqEzbhN0e2dWv7Rx/nfpohpDP6vEiFImKFHpDSv3M/5de1ytQzPFrZBYt9WlzlYwE1aD9FHCxdd+rWgYMVVoRaRmndpV/Rq3QUuDuFJtaoX11bC7ExkOpg9KstZzA63i3VcfYv</ds:X509Certificate></ds:X509Data></ds:KeyInfo></md:KeyDescriptor><md:SingleSignOnService Binding="urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect" Location="https://test.com/sso"/></md:IDPSSODescriptor></md:EntityDescriptor>
///       extraAttributesOauth2Client:
///         issuerUri: https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0
///         clientId: client-id
///         clientSecret:
///           value:
///             plainText: client-secret
///         attributesType: AZURE_AD_GROUPS_ID
///         queryParameters:
///           filter: mail:gcp
///       displayName: Display name
///       description: A sample SAML workforce pool provider.
///       disabled: false
///       attributeCondition: 'true'
/// ```
///
/// ### Iam Workforce Pool Provider Oidc Basic
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
/// const example = new gcp.iam.WorkforcePoolProvider("example", {
///     workforcePoolId: pool.workforcePoolId,
///     location: pool.location,
///     providerId: "example-prvdr",
///     attributeMapping: {
///         "google.subject": "assertion.sub",
///     },
///     oidc: {
///         issuerUri: "https://accounts.thirdparty.com",
///         clientId: "client-id",
///         clientSecret: {
///             value: {
///                 plainText: "client-secret",
///             },
///         },
///         webSsoConfig: {
///             responseType: "CODE",
///             assertionClaimsBehavior: "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///         },
///     },
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
/// example = gcp.iam.WorkforcePoolProvider("example",
///     workforce_pool_id=pool.workforce_pool_id,
///     location=pool.location,
///     provider_id="example-prvdr",
///     attribute_mapping={
///         "google.subject": "assertion.sub",
///     },
///     oidc={
///         "issuer_uri": "https://accounts.thirdparty.com",
///         "client_id": "client-id",
///         "client_secret": {
///             "value": {
///                 "plain_text": "client-secret",
///             },
///         },
///         "web_sso_config": {
///             "response_type": "CODE",
///             "assertion_claims_behavior": "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///         },
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
///     var pool = new Gcp.Iam.WorkforcePool("pool", new()
///     {
///         WorkforcePoolId = "example-pool",
///         Parent = "organizations/123456789",
///         Location = "global",
///     });
///
///     var example = new Gcp.Iam.WorkforcePoolProvider("example", new()
///     {
///         WorkforcePoolId = pool.WorkforcePoolId,
///         Location = pool.Location,
///         ProviderId = "example-prvdr",
///         AttributeMapping =
///         {
///             { "google.subject", "assertion.sub" },
///         },
///         Oidc = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcArgs
///         {
///             IssuerUri = "https://accounts.thirdparty.com",
///             ClientId = "client-id",
///             ClientSecret = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretArgs
///             {
///                 Value = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretValueArgs
///                 {
///                     PlainText = "client-secret",
///                 },
///             },
///             WebSsoConfig = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcWebSsoConfigArgs
///             {
///                 ResponseType = "CODE",
///                 AssertionClaimsBehavior = "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
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
/// 		_, err = iam.NewWorkforcePoolProvider(ctx, "example", &iam.WorkforcePoolProviderArgs{
/// 			WorkforcePoolId: pool.WorkforcePoolId,
/// 			Location:        pool.Location,
/// 			ProviderId:      pulumi.String("example-prvdr"),
/// 			AttributeMapping: pulumi.StringMap{
/// 				"google.subject": pulumi.String("assertion.sub"),
/// 			},
/// 			Oidc: &iam.WorkforcePoolProviderOidcArgs{
/// 				IssuerUri: pulumi.String("https://accounts.thirdparty.com"),
/// 				ClientId:  pulumi.String("client-id"),
/// 				ClientSecret: &iam.WorkforcePoolProviderOidcClientSecretArgs{
/// 					Value: &iam.WorkforcePoolProviderOidcClientSecretValueArgs{
/// 						PlainText: pulumi.String("client-secret"),
/// 					},
/// 				},
/// 				WebSsoConfig: &iam.WorkforcePoolProviderOidcWebSsoConfigArgs{
/// 					ResponseType:            pulumi.String("CODE"),
/// 					AssertionClaimsBehavior: pulumi.String("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS"),
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
/// resource "gcp_iam_workforcepool" "pool" {
///   workforce_pool_id = "example-pool"
///   parent            = "organizations/123456789"
///   location          = "global"
/// }
/// resource "gcp_iam_workforcepoolprovider" "example" {
///   workforce_pool_id = gcp_iam_workforcepool.pool.workforce_pool_id
///   location          = gcp_iam_workforcepool.pool.location
///   provider_id       = "example-prvdr"
///   attribute_mapping = {
///     "google.subject" = "assertion.sub"
///   }
///   oidc = {
///     issuer_uri = "https://accounts.thirdparty.com"
///     client_id  = "client-id"
///     client_secret = {
///       value = {
///         plain_text = "client-secret"
///       }
///     }
///     web_sso_config = {
///       response_type             = "CODE"
///       assertion_claims_behavior = "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS"
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
/// import com.pulumi.gcp.iam.WorkforcePool;
/// import com.pulumi.gcp.iam.WorkforcePoolArgs;
/// import com.pulumi.gcp.iam.WorkforcePoolProvider;
/// import com.pulumi.gcp.iam.WorkforcePoolProviderArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcClientSecretArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcClientSecretValueArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcWebSsoConfigArgs;
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
///         var pool = new WorkforcePool("pool", WorkforcePoolArgs.builder()
///             .workforcePoolId("example-pool")
///             .parent("organizations/123456789")
///             .location("global")
///             .build());
///
///         var example = new WorkforcePoolProvider("example", WorkforcePoolProviderArgs.builder()
///             .workforcePoolId(pool.workforcePoolId())
///             .location(pool.location())
///             .providerId("example-prvdr")
///             .attributeMapping(Map.of("google.subject", "assertion.sub"))
///             .oidc(WorkforcePoolProviderOidcArgs.builder()
///                 .issuerUri("https://accounts.thirdparty.com")
///                 .clientId("client-id")
///                 .clientSecret(WorkforcePoolProviderOidcClientSecretArgs.builder()
///                     .value(WorkforcePoolProviderOidcClientSecretValueArgs.builder()
///                         .plainText("client-secret")
///                         .build())
///                     .build())
///                 .webSsoConfig(WorkforcePoolProviderOidcWebSsoConfigArgs.builder()
///                     .responseType("CODE")
///                     .assertionClaimsBehavior("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS")
///                     .build())
///                 .build())
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
///   example:
///     type: gcp:iam:WorkforcePoolProvider
///     properties:
///       workforcePoolId: ${pool.workforcePoolId}
///       location: ${pool.location}
///       providerId: example-prvdr
///       attributeMapping:
///         google.subject: assertion.sub
///       oidc:
///         issuerUri: https://accounts.thirdparty.com
///         clientId: client-id
///         clientSecret:
///           value:
///             plainText: client-secret
///         webSsoConfig:
///           responseType: CODE
///           assertionClaimsBehavior: MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS
/// ```
///
/// ### Iam Workforce Pool Provider Oidc Full
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
/// const example = new gcp.iam.WorkforcePoolProvider("example", {
///     workforcePoolId: pool.workforcePoolId,
///     location: pool.location,
///     providerId: "example-prvdr",
///     attributeMapping: {
///         "google.subject": "assertion.sub",
///     },
///     oidc: {
///         issuerUri: "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         clientId: "client-id",
///         clientSecret: {
///             value: {
///                 plainText: "client-secret",
///             },
///         },
///         webSsoConfig: {
///             responseType: "CODE",
///             assertionClaimsBehavior: "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///             additionalScopes: [
///                 "groups",
///                 "roles",
///             ],
///         },
///     },
///     extraAttributesOauth2Client: {
///         issuerUri: "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         clientId: "client-id",
///         clientSecret: {
///             value: {
///                 plainText: "client-secret",
///             },
///         },
///         attributesType: "AZURE_AD_GROUPS_MAIL",
///         queryParameters: {
///             filter: "mail:sales",
///         },
///     },
///     displayName: "Display name",
///     description: "A sample OIDC workforce pool provider.",
///     disabled: false,
///     attributeCondition: "true",
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
/// example = gcp.iam.WorkforcePoolProvider("example",
///     workforce_pool_id=pool.workforce_pool_id,
///     location=pool.location,
///     provider_id="example-prvdr",
///     attribute_mapping={
///         "google.subject": "assertion.sub",
///     },
///     oidc={
///         "issuer_uri": "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         "client_id": "client-id",
///         "client_secret": {
///             "value": {
///                 "plain_text": "client-secret",
///             },
///         },
///         "web_sso_config": {
///             "response_type": "CODE",
///             "assertion_claims_behavior": "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///             "additional_scopes": [
///                 "groups",
///                 "roles",
///             ],
///         },
///     },
///     extra_attributes_oauth2_client={
///         "issuer_uri": "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         "client_id": "client-id",
///         "client_secret": {
///             "value": {
///                 "plain_text": "client-secret",
///             },
///         },
///         "attributes_type": "AZURE_AD_GROUPS_MAIL",
///         "query_parameters": {
///             "filter": "mail:sales",
///         },
///     },
///     display_name="Display name",
///     description="A sample OIDC workforce pool provider.",
///     disabled=False,
///     attribute_condition="true")
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
///     var example = new Gcp.Iam.WorkforcePoolProvider("example", new()
///     {
///         WorkforcePoolId = pool.WorkforcePoolId,
///         Location = pool.Location,
///         ProviderId = "example-prvdr",
///         AttributeMapping =
///         {
///             { "google.subject", "assertion.sub" },
///         },
///         Oidc = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcArgs
///         {
///             IssuerUri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///             ClientId = "client-id",
///             ClientSecret = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretArgs
///             {
///                 Value = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretValueArgs
///                 {
///                     PlainText = "client-secret",
///                 },
///             },
///             WebSsoConfig = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcWebSsoConfigArgs
///             {
///                 ResponseType = "CODE",
///                 AssertionClaimsBehavior = "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///                 AdditionalScopes = new[]
///                 {
///                     "groups",
///                     "roles",
///                 },
///             },
///         },
///         ExtraAttributesOauth2Client = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientArgs
///         {
///             IssuerUri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///             ClientId = "client-id",
///             ClientSecret = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs
///             {
///                 Value = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs
///                 {
///                     PlainText = "client-secret",
///                 },
///             },
///             AttributesType = "AZURE_AD_GROUPS_MAIL",
///             QueryParameters = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientQueryParametersArgs
///             {
///                 Filter = "mail:sales",
///             },
///         },
///         DisplayName = "Display name",
///         Description = "A sample OIDC workforce pool provider.",
///         Disabled = false,
///         AttributeCondition = "true",
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
/// 		_, err = iam.NewWorkforcePoolProvider(ctx, "example", &iam.WorkforcePoolProviderArgs{
/// 			WorkforcePoolId: pool.WorkforcePoolId,
/// 			Location:        pool.Location,
/// 			ProviderId:      pulumi.String("example-prvdr"),
/// 			AttributeMapping: pulumi.StringMap{
/// 				"google.subject": pulumi.String("assertion.sub"),
/// 			},
/// 			Oidc: &iam.WorkforcePoolProviderOidcArgs{
/// 				IssuerUri: pulumi.String("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"),
/// 				ClientId:  pulumi.String("client-id"),
/// 				ClientSecret: &iam.WorkforcePoolProviderOidcClientSecretArgs{
/// 					Value: &iam.WorkforcePoolProviderOidcClientSecretValueArgs{
/// 						PlainText: pulumi.String("client-secret"),
/// 					},
/// 				},
/// 				WebSsoConfig: &iam.WorkforcePoolProviderOidcWebSsoConfigArgs{
/// 					ResponseType:            pulumi.String("CODE"),
/// 					AssertionClaimsBehavior: pulumi.String("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS"),
/// 					AdditionalScopes: pulumi.StringArray{
/// 						pulumi.String("groups"),
/// 						pulumi.String("roles"),
/// 					},
/// 				},
/// 			},
/// 			ExtraAttributesOauth2Client: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientArgs{
/// 				IssuerUri: pulumi.String("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"),
/// 				ClientId:  pulumi.String("client-id"),
/// 				ClientSecret: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs{
/// 					Value: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs{
/// 						PlainText: pulumi.String("client-secret"),
/// 					},
/// 				},
/// 				AttributesType: pulumi.String("AZURE_AD_GROUPS_MAIL"),
/// 				QueryParameters: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientQueryParametersArgs{
/// 					Filter: pulumi.String("mail:sales"),
/// 				},
/// 			},
/// 			DisplayName:        pulumi.String("Display name"),
/// 			Description:        pulumi.String("A sample OIDC workforce pool provider."),
/// 			Disabled:           pulumi.Bool(false),
/// 			AttributeCondition: pulumi.String("true"),
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
/// resource "gcp_iam_workforcepool" "pool" {
///   workforce_pool_id = "example-pool"
///   parent            = "organizations/123456789"
///   location          = "global"
/// }
/// resource "gcp_iam_workforcepoolprovider" "example" {
///   workforce_pool_id = gcp_iam_workforcepool.pool.workforce_pool_id
///   location          = gcp_iam_workforcepool.pool.location
///   provider_id       = "example-prvdr"
///   attribute_mapping = {
///     "google.subject" = "assertion.sub"
///   }
///   oidc = {
///     issuer_uri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"
///     client_id  = "client-id"
///     client_secret = {
///       value = {
///         plain_text = "client-secret"
///       }
///     }
///     web_sso_config = {
///       response_type             = "CODE"
///       assertion_claims_behavior = "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS"
///       additional_scopes         = ["groups", "roles"]
///     }
///   }
///   extra_attributes_oauth2_client = {
///     issuer_uri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"
///     client_id  = "client-id"
///     client_secret = {
///       value = {
///         plain_text = "client-secret"
///       }
///     }
///     attributes_type = "AZURE_AD_GROUPS_MAIL"
///     query_parameters = {
///       filter = "mail:sales"
///     }
///   }
///   display_name        = "Display name"
///   description         = "A sample OIDC workforce pool provider."
///   disabled            = false
///   attribute_condition = "true"
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
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcClientSecretArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcClientSecretValueArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcWebSsoConfigArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientQueryParametersArgs;
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
///         var pool = new WorkforcePool("pool", WorkforcePoolArgs.builder()
///             .workforcePoolId("example-pool")
///             .parent("organizations/123456789")
///             .location("global")
///             .build());
///
///         var example = new WorkforcePoolProvider("example", WorkforcePoolProviderArgs.builder()
///             .workforcePoolId(pool.workforcePoolId())
///             .location(pool.location())
///             .providerId("example-prvdr")
///             .attributeMapping(Map.of("google.subject", "assertion.sub"))
///             .oidc(WorkforcePoolProviderOidcArgs.builder()
///                 .issuerUri("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0")
///                 .clientId("client-id")
///                 .clientSecret(WorkforcePoolProviderOidcClientSecretArgs.builder()
///                     .value(WorkforcePoolProviderOidcClientSecretValueArgs.builder()
///                         .plainText("client-secret")
///                         .build())
///                     .build())
///                 .webSsoConfig(WorkforcePoolProviderOidcWebSsoConfigArgs.builder()
///                     .responseType("CODE")
///                     .assertionClaimsBehavior("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS")
///                     .additionalScopes(
///                         "groups",
///                         "roles")
///                     .build())
///                 .build())
///             .extraAttributesOauth2Client(WorkforcePoolProviderExtraAttributesOauth2ClientArgs.builder()
///                 .issuerUri("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0")
///                 .clientId("client-id")
///                 .clientSecret(WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs.builder()
///                     .value(WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs.builder()
///                         .plainText("client-secret")
///                         .build())
///                     .build())
///                 .attributesType("AZURE_AD_GROUPS_MAIL")
///                 .queryParameters(WorkforcePoolProviderExtraAttributesOauth2ClientQueryParametersArgs.builder()
///                     .filter("mail:sales")
///                     .build())
///                 .build())
///             .displayName("Display name")
///             .description("A sample OIDC workforce pool provider.")
///             .disabled(false)
///             .attributeCondition("true")
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
///   example:
///     type: gcp:iam:WorkforcePoolProvider
///     properties:
///       workforcePoolId: ${pool.workforcePoolId}
///       location: ${pool.location}
///       providerId: example-prvdr
///       attributeMapping:
///         google.subject: assertion.sub
///       oidc:
///         issuerUri: https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0
///         clientId: client-id
///         clientSecret:
///           value:
///             plainText: client-secret
///         webSsoConfig:
///           responseType: CODE
///           assertionClaimsBehavior: MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS
///           additionalScopes:
///             - groups
///             - roles
///       extraAttributesOauth2Client:
///         issuerUri: https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0
///         clientId: client-id
///         clientSecret:
///           value:
///             plainText: client-secret
///         attributesType: AZURE_AD_GROUPS_MAIL
///         queryParameters:
///           filter: mail:sales
///       displayName: Display name
///       description: A sample OIDC workforce pool provider.
///       disabled: false
///       attributeCondition: 'true'
/// ```
///
/// ### Iam Workforce Pool Provider Extra Attributes Oauth2 Config Client Basic
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
/// const example = new gcp.iam.WorkforcePoolProvider("example", {
///     workforcePoolId: pool.workforcePoolId,
///     location: pool.location,
///     providerId: "example-prvdr",
///     attributeMapping: {
///         "google.subject": "assertion.sub",
///     },
///     oidc: {
///         issuerUri: "https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/",
///         clientId: "https://analysis.windows.net/powerbi/connector/GoogleBigQuery",
///         webSsoConfig: {
///             responseType: "CODE",
///             assertionClaimsBehavior: "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///         },
///         clientSecret: {
///             value: {
///                 plainText: "client-secret",
///             },
///         },
///     },
///     extraAttributesOauth2Client: {
///         issuerUri: "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         clientId: "client-id",
///         clientSecret: {
///             value: {
///                 plainText: "client-secret",
///             },
///         },
///         attributesType: "AZURE_AD_GROUPS_MAIL",
///     },
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
/// example = gcp.iam.WorkforcePoolProvider("example",
///     workforce_pool_id=pool.workforce_pool_id,
///     location=pool.location,
///     provider_id="example-prvdr",
///     attribute_mapping={
///         "google.subject": "assertion.sub",
///     },
///     oidc={
///         "issuer_uri": "https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/",
///         "client_id": "https://analysis.windows.net/powerbi/connector/GoogleBigQuery",
///         "web_sso_config": {
///             "response_type": "CODE",
///             "assertion_claims_behavior": "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///         },
///         "client_secret": {
///             "value": {
///                 "plain_text": "client-secret",
///             },
///         },
///     },
///     extra_attributes_oauth2_client={
///         "issuer_uri": "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         "client_id": "client-id",
///         "client_secret": {
///             "value": {
///                 "plain_text": "client-secret",
///             },
///         },
///         "attributes_type": "AZURE_AD_GROUPS_MAIL",
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
///     var pool = new Gcp.Iam.WorkforcePool("pool", new()
///     {
///         WorkforcePoolId = "example-pool",
///         Parent = "organizations/123456789",
///         Location = "global",
///     });
///
///     var example = new Gcp.Iam.WorkforcePoolProvider("example", new()
///     {
///         WorkforcePoolId = pool.WorkforcePoolId,
///         Location = pool.Location,
///         ProviderId = "example-prvdr",
///         AttributeMapping =
///         {
///             { "google.subject", "assertion.sub" },
///         },
///         Oidc = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcArgs
///         {
///             IssuerUri = "https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/",
///             ClientId = "https://analysis.windows.net/powerbi/connector/GoogleBigQuery",
///             WebSsoConfig = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcWebSsoConfigArgs
///             {
///                 ResponseType = "CODE",
///                 AssertionClaimsBehavior = "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///             },
///             ClientSecret = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretArgs
///             {
///                 Value = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretValueArgs
///                 {
///                     PlainText = "client-secret",
///                 },
///             },
///         },
///         ExtraAttributesOauth2Client = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientArgs
///         {
///             IssuerUri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///             ClientId = "client-id",
///             ClientSecret = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs
///             {
///                 Value = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs
///                 {
///                     PlainText = "client-secret",
///                 },
///             },
///             AttributesType = "AZURE_AD_GROUPS_MAIL",
///         },
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
/// 		_, err = iam.NewWorkforcePoolProvider(ctx, "example", &iam.WorkforcePoolProviderArgs{
/// 			WorkforcePoolId: pool.WorkforcePoolId,
/// 			Location:        pool.Location,
/// 			ProviderId:      pulumi.String("example-prvdr"),
/// 			AttributeMapping: pulumi.StringMap{
/// 				"google.subject": pulumi.String("assertion.sub"),
/// 			},
/// 			Oidc: &iam.WorkforcePoolProviderOidcArgs{
/// 				IssuerUri: pulumi.String("https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/"),
/// 				ClientId:  pulumi.String("https://analysis.windows.net/powerbi/connector/GoogleBigQuery"),
/// 				WebSsoConfig: &iam.WorkforcePoolProviderOidcWebSsoConfigArgs{
/// 					ResponseType:            pulumi.String("CODE"),
/// 					AssertionClaimsBehavior: pulumi.String("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS"),
/// 				},
/// 				ClientSecret: &iam.WorkforcePoolProviderOidcClientSecretArgs{
/// 					Value: &iam.WorkforcePoolProviderOidcClientSecretValueArgs{
/// 						PlainText: pulumi.String("client-secret"),
/// 					},
/// 				},
/// 			},
/// 			ExtraAttributesOauth2Client: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientArgs{
/// 				IssuerUri: pulumi.String("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"),
/// 				ClientId:  pulumi.String("client-id"),
/// 				ClientSecret: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs{
/// 					Value: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs{
/// 						PlainText: pulumi.String("client-secret"),
/// 					},
/// 				},
/// 				AttributesType: pulumi.String("AZURE_AD_GROUPS_MAIL"),
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
/// resource "gcp_iam_workforcepool" "pool" {
///   workforce_pool_id = "example-pool"
///   parent            = "organizations/123456789"
///   location          = "global"
/// }
/// resource "gcp_iam_workforcepoolprovider" "example" {
///   workforce_pool_id = gcp_iam_workforcepool.pool.workforce_pool_id
///   location          = gcp_iam_workforcepool.pool.location
///   provider_id       = "example-prvdr"
///   attribute_mapping = {
///     "google.subject" = "assertion.sub"
///   }
///   oidc = {
///     issuer_uri = "https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/"
///     client_id  = "https://analysis.windows.net/powerbi/connector/GoogleBigQuery"
///     web_sso_config = {
///       response_type             = "CODE"
///       assertion_claims_behavior = "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS"
///     }
///     client_secret = {
///       value = {
///         plain_text = "client-secret"
///       }
///     }
///   }
///   extra_attributes_oauth2_client = {
///     issuer_uri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"
///     client_id  = "client-id"
///     client_secret = {
///       value = {
///         plain_text = "client-secret"
///       }
///     }
///     attributes_type = "AZURE_AD_GROUPS_MAIL"
///   }
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
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcWebSsoConfigArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcClientSecretArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcClientSecretValueArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs;
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
///         var pool = new WorkforcePool("pool", WorkforcePoolArgs.builder()
///             .workforcePoolId("example-pool")
///             .parent("organizations/123456789")
///             .location("global")
///             .build());
///
///         var example = new WorkforcePoolProvider("example", WorkforcePoolProviderArgs.builder()
///             .workforcePoolId(pool.workforcePoolId())
///             .location(pool.location())
///             .providerId("example-prvdr")
///             .attributeMapping(Map.of("google.subject", "assertion.sub"))
///             .oidc(WorkforcePoolProviderOidcArgs.builder()
///                 .issuerUri("https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/")
///                 .clientId("https://analysis.windows.net/powerbi/connector/GoogleBigQuery")
///                 .webSsoConfig(WorkforcePoolProviderOidcWebSsoConfigArgs.builder()
///                     .responseType("CODE")
///                     .assertionClaimsBehavior("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS")
///                     .build())
///                 .clientSecret(WorkforcePoolProviderOidcClientSecretArgs.builder()
///                     .value(WorkforcePoolProviderOidcClientSecretValueArgs.builder()
///                         .plainText("client-secret")
///                         .build())
///                     .build())
///                 .build())
///             .extraAttributesOauth2Client(WorkforcePoolProviderExtraAttributesOauth2ClientArgs.builder()
///                 .issuerUri("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0")
///                 .clientId("client-id")
///                 .clientSecret(WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs.builder()
///                     .value(WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs.builder()
///                         .plainText("client-secret")
///                         .build())
///                     .build())
///                 .attributesType("AZURE_AD_GROUPS_MAIL")
///                 .build())
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
///   example:
///     type: gcp:iam:WorkforcePoolProvider
///     properties:
///       workforcePoolId: ${pool.workforcePoolId}
///       location: ${pool.location}
///       providerId: example-prvdr
///       attributeMapping:
///         google.subject: assertion.sub
///       oidc:
///         issuerUri: https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/
///         clientId: https://analysis.windows.net/powerbi/connector/GoogleBigQuery
///         webSsoConfig:
///           responseType: CODE
///           assertionClaimsBehavior: MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS
///         clientSecret:
///           value:
///             plainText: client-secret
///       extraAttributesOauth2Client:
///         issuerUri: https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0
///         clientId: client-id
///         clientSecret:
///           value:
///             plainText: client-secret
///         attributesType: AZURE_AD_GROUPS_MAIL
/// ```
///
/// ### Iam Workforce Pool Provider Extra Attributes Oauth2 Config Client Full
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
/// const example = new gcp.iam.WorkforcePoolProvider("example", {
///     workforcePoolId: pool.workforcePoolId,
///     location: pool.location,
///     providerId: "example-prvdr",
///     attributeMapping: {
///         "google.subject": "assertion.sub",
///     },
///     oidc: {
///         issuerUri: "https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/",
///         clientId: "https://analysis.windows.net/powerbi/connector/GoogleBigQuery",
///         clientSecret: {
///             value: {
///                 plainText: "client-secret",
///             },
///         },
///         webSsoConfig: {
///             responseType: "CODE",
///             assertionClaimsBehavior: "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///         },
///     },
///     extraAttributesOauth2Client: {
///         issuerUri: "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         clientId: "client-id",
///         clientSecret: {
///             value: {
///                 plainText: "client-secret",
///             },
///         },
///         attributesType: "AZURE_AD_GROUPS_MAIL",
///         queryParameters: {
///             filter: "mail:gcp",
///         },
///     },
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
/// example = gcp.iam.WorkforcePoolProvider("example",
///     workforce_pool_id=pool.workforce_pool_id,
///     location=pool.location,
///     provider_id="example-prvdr",
///     attribute_mapping={
///         "google.subject": "assertion.sub",
///     },
///     oidc={
///         "issuer_uri": "https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/",
///         "client_id": "https://analysis.windows.net/powerbi/connector/GoogleBigQuery",
///         "client_secret": {
///             "value": {
///                 "plain_text": "client-secret",
///             },
///         },
///         "web_sso_config": {
///             "response_type": "CODE",
///             "assertion_claims_behavior": "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///         },
///     },
///     extra_attributes_oauth2_client={
///         "issuer_uri": "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         "client_id": "client-id",
///         "client_secret": {
///             "value": {
///                 "plain_text": "client-secret",
///             },
///         },
///         "attributes_type": "AZURE_AD_GROUPS_MAIL",
///         "query_parameters": {
///             "filter": "mail:gcp",
///         },
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
///     var pool = new Gcp.Iam.WorkforcePool("pool", new()
///     {
///         WorkforcePoolId = "example-pool",
///         Parent = "organizations/123456789",
///         Location = "global",
///     });
///
///     var example = new Gcp.Iam.WorkforcePoolProvider("example", new()
///     {
///         WorkforcePoolId = pool.WorkforcePoolId,
///         Location = pool.Location,
///         ProviderId = "example-prvdr",
///         AttributeMapping =
///         {
///             { "google.subject", "assertion.sub" },
///         },
///         Oidc = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcArgs
///         {
///             IssuerUri = "https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/",
///             ClientId = "https://analysis.windows.net/powerbi/connector/GoogleBigQuery",
///             ClientSecret = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretArgs
///             {
///                 Value = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretValueArgs
///                 {
///                     PlainText = "client-secret",
///                 },
///             },
///             WebSsoConfig = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcWebSsoConfigArgs
///             {
///                 ResponseType = "CODE",
///                 AssertionClaimsBehavior = "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///             },
///         },
///         ExtraAttributesOauth2Client = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientArgs
///         {
///             IssuerUri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///             ClientId = "client-id",
///             ClientSecret = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs
///             {
///                 Value = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs
///                 {
///                     PlainText = "client-secret",
///                 },
///             },
///             AttributesType = "AZURE_AD_GROUPS_MAIL",
///             QueryParameters = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientQueryParametersArgs
///             {
///                 Filter = "mail:gcp",
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
/// 		_, err = iam.NewWorkforcePoolProvider(ctx, "example", &iam.WorkforcePoolProviderArgs{
/// 			WorkforcePoolId: pool.WorkforcePoolId,
/// 			Location:        pool.Location,
/// 			ProviderId:      pulumi.String("example-prvdr"),
/// 			AttributeMapping: pulumi.StringMap{
/// 				"google.subject": pulumi.String("assertion.sub"),
/// 			},
/// 			Oidc: &iam.WorkforcePoolProviderOidcArgs{
/// 				IssuerUri: pulumi.String("https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/"),
/// 				ClientId:  pulumi.String("https://analysis.windows.net/powerbi/connector/GoogleBigQuery"),
/// 				ClientSecret: &iam.WorkforcePoolProviderOidcClientSecretArgs{
/// 					Value: &iam.WorkforcePoolProviderOidcClientSecretValueArgs{
/// 						PlainText: pulumi.String("client-secret"),
/// 					},
/// 				},
/// 				WebSsoConfig: &iam.WorkforcePoolProviderOidcWebSsoConfigArgs{
/// 					ResponseType:            pulumi.String("CODE"),
/// 					AssertionClaimsBehavior: pulumi.String("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS"),
/// 				},
/// 			},
/// 			ExtraAttributesOauth2Client: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientArgs{
/// 				IssuerUri: pulumi.String("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"),
/// 				ClientId:  pulumi.String("client-id"),
/// 				ClientSecret: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs{
/// 					Value: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs{
/// 						PlainText: pulumi.String("client-secret"),
/// 					},
/// 				},
/// 				AttributesType: pulumi.String("AZURE_AD_GROUPS_MAIL"),
/// 				QueryParameters: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientQueryParametersArgs{
/// 					Filter: pulumi.String("mail:gcp"),
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
/// resource "gcp_iam_workforcepool" "pool" {
///   workforce_pool_id = "example-pool"
///   parent            = "organizations/123456789"
///   location          = "global"
/// }
/// resource "gcp_iam_workforcepoolprovider" "example" {
///   workforce_pool_id = gcp_iam_workforcepool.pool.workforce_pool_id
///   location          = gcp_iam_workforcepool.pool.location
///   provider_id       = "example-prvdr"
///   attribute_mapping = {
///     "google.subject" = "assertion.sub"
///   }
///   oidc = {
///     issuer_uri = "https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/"
///     client_id  = "https://analysis.windows.net/powerbi/connector/GoogleBigQuery"
///     client_secret = {
///       value = {
///         plain_text = "client-secret"
///       }
///     }
///     web_sso_config = {
///       response_type             = "CODE"
///       assertion_claims_behavior = "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS"
///     }
///   }
///   extra_attributes_oauth2_client = {
///     issuer_uri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"
///     client_id  = "client-id"
///     client_secret = {
///       value = {
///         plain_text = "client-secret"
///       }
///     }
///     attributes_type = "AZURE_AD_GROUPS_MAIL"
///     query_parameters = {
///       filter = "mail:gcp"
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
/// import com.pulumi.gcp.iam.WorkforcePool;
/// import com.pulumi.gcp.iam.WorkforcePoolArgs;
/// import com.pulumi.gcp.iam.WorkforcePoolProvider;
/// import com.pulumi.gcp.iam.WorkforcePoolProviderArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcClientSecretArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcClientSecretValueArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcWebSsoConfigArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientQueryParametersArgs;
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
///         var pool = new WorkforcePool("pool", WorkforcePoolArgs.builder()
///             .workforcePoolId("example-pool")
///             .parent("organizations/123456789")
///             .location("global")
///             .build());
///
///         var example = new WorkforcePoolProvider("example", WorkforcePoolProviderArgs.builder()
///             .workforcePoolId(pool.workforcePoolId())
///             .location(pool.location())
///             .providerId("example-prvdr")
///             .attributeMapping(Map.of("google.subject", "assertion.sub"))
///             .oidc(WorkforcePoolProviderOidcArgs.builder()
///                 .issuerUri("https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/")
///                 .clientId("https://analysis.windows.net/powerbi/connector/GoogleBigQuery")
///                 .clientSecret(WorkforcePoolProviderOidcClientSecretArgs.builder()
///                     .value(WorkforcePoolProviderOidcClientSecretValueArgs.builder()
///                         .plainText("client-secret")
///                         .build())
///                     .build())
///                 .webSsoConfig(WorkforcePoolProviderOidcWebSsoConfigArgs.builder()
///                     .responseType("CODE")
///                     .assertionClaimsBehavior("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS")
///                     .build())
///                 .build())
///             .extraAttributesOauth2Client(WorkforcePoolProviderExtraAttributesOauth2ClientArgs.builder()
///                 .issuerUri("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0")
///                 .clientId("client-id")
///                 .clientSecret(WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs.builder()
///                     .value(WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs.builder()
///                         .plainText("client-secret")
///                         .build())
///                     .build())
///                 .attributesType("AZURE_AD_GROUPS_MAIL")
///                 .queryParameters(WorkforcePoolProviderExtraAttributesOauth2ClientQueryParametersArgs.builder()
///                     .filter("mail:gcp")
///                     .build())
///                 .build())
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
///   example:
///     type: gcp:iam:WorkforcePoolProvider
///     properties:
///       workforcePoolId: ${pool.workforcePoolId}
///       location: ${pool.location}
///       providerId: example-prvdr
///       attributeMapping:
///         google.subject: assertion.sub
///       oidc:
///         issuerUri: https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/
///         clientId: https://analysis.windows.net/powerbi/connector/GoogleBigQuery
///         clientSecret:
///           value:
///             plainText: client-secret
///         webSsoConfig:
///           responseType: CODE
///           assertionClaimsBehavior: MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS
///       extraAttributesOauth2Client:
///         issuerUri: https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0
///         clientId: client-id
///         clientSecret:
///           value:
///             plainText: client-secret
///         attributesType: AZURE_AD_GROUPS_MAIL
///         queryParameters:
///           filter: mail:gcp
/// ```
///
/// ### Iam Workforce Pool Provider Extra Attributes Display Name Oauth2 Config Client Basic
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
/// const example = new gcp.iam.WorkforcePoolProvider("example", {
///     workforcePoolId: pool.workforcePoolId,
///     location: pool.location,
///     providerId: "example-prvdr",
///     attributeMapping: {
///         "google.subject": "assertion.sub",
///     },
///     oidc: {
///         issuerUri: "https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/",
///         clientId: "https://analysis.windows.net/powerbi/connector/GoogleBigQuery",
///         webSsoConfig: {
///             responseType: "CODE",
///             assertionClaimsBehavior: "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///         },
///         clientSecret: {
///             value: {
///                 plainText: "client-secret",
///             },
///         },
///     },
///     extraAttributesOauth2Client: {
///         issuerUri: "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         clientId: "client-id",
///         clientSecret: {
///             value: {
///                 plainText: "client-secret",
///             },
///         },
///         attributesType: "AZURE_AD_GROUPS_DISPLAY_NAME",
///     },
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
/// example = gcp.iam.WorkforcePoolProvider("example",
///     workforce_pool_id=pool.workforce_pool_id,
///     location=pool.location,
///     provider_id="example-prvdr",
///     attribute_mapping={
///         "google.subject": "assertion.sub",
///     },
///     oidc={
///         "issuer_uri": "https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/",
///         "client_id": "https://analysis.windows.net/powerbi/connector/GoogleBigQuery",
///         "web_sso_config": {
///             "response_type": "CODE",
///             "assertion_claims_behavior": "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///         },
///         "client_secret": {
///             "value": {
///                 "plain_text": "client-secret",
///             },
///         },
///     },
///     extra_attributes_oauth2_client={
///         "issuer_uri": "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         "client_id": "client-id",
///         "client_secret": {
///             "value": {
///                 "plain_text": "client-secret",
///             },
///         },
///         "attributes_type": "AZURE_AD_GROUPS_DISPLAY_NAME",
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
///     var pool = new Gcp.Iam.WorkforcePool("pool", new()
///     {
///         WorkforcePoolId = "example-pool",
///         Parent = "organizations/123456789",
///         Location = "global",
///     });
///
///     var example = new Gcp.Iam.WorkforcePoolProvider("example", new()
///     {
///         WorkforcePoolId = pool.WorkforcePoolId,
///         Location = pool.Location,
///         ProviderId = "example-prvdr",
///         AttributeMapping =
///         {
///             { "google.subject", "assertion.sub" },
///         },
///         Oidc = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcArgs
///         {
///             IssuerUri = "https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/",
///             ClientId = "https://analysis.windows.net/powerbi/connector/GoogleBigQuery",
///             WebSsoConfig = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcWebSsoConfigArgs
///             {
///                 ResponseType = "CODE",
///                 AssertionClaimsBehavior = "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///             },
///             ClientSecret = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretArgs
///             {
///                 Value = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretValueArgs
///                 {
///                     PlainText = "client-secret",
///                 },
///             },
///         },
///         ExtraAttributesOauth2Client = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientArgs
///         {
///             IssuerUri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///             ClientId = "client-id",
///             ClientSecret = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs
///             {
///                 Value = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs
///                 {
///                     PlainText = "client-secret",
///                 },
///             },
///             AttributesType = "AZURE_AD_GROUPS_DISPLAY_NAME",
///         },
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
/// 		_, err = iam.NewWorkforcePoolProvider(ctx, "example", &iam.WorkforcePoolProviderArgs{
/// 			WorkforcePoolId: pool.WorkforcePoolId,
/// 			Location:        pool.Location,
/// 			ProviderId:      pulumi.String("example-prvdr"),
/// 			AttributeMapping: pulumi.StringMap{
/// 				"google.subject": pulumi.String("assertion.sub"),
/// 			},
/// 			Oidc: &iam.WorkforcePoolProviderOidcArgs{
/// 				IssuerUri: pulumi.String("https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/"),
/// 				ClientId:  pulumi.String("https://analysis.windows.net/powerbi/connector/GoogleBigQuery"),
/// 				WebSsoConfig: &iam.WorkforcePoolProviderOidcWebSsoConfigArgs{
/// 					ResponseType:            pulumi.String("CODE"),
/// 					AssertionClaimsBehavior: pulumi.String("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS"),
/// 				},
/// 				ClientSecret: &iam.WorkforcePoolProviderOidcClientSecretArgs{
/// 					Value: &iam.WorkforcePoolProviderOidcClientSecretValueArgs{
/// 						PlainText: pulumi.String("client-secret"),
/// 					},
/// 				},
/// 			},
/// 			ExtraAttributesOauth2Client: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientArgs{
/// 				IssuerUri: pulumi.String("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"),
/// 				ClientId:  pulumi.String("client-id"),
/// 				ClientSecret: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs{
/// 					Value: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs{
/// 						PlainText: pulumi.String("client-secret"),
/// 					},
/// 				},
/// 				AttributesType: pulumi.String("AZURE_AD_GROUPS_DISPLAY_NAME"),
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
/// resource "gcp_iam_workforcepool" "pool" {
///   workforce_pool_id = "example-pool"
///   parent            = "organizations/123456789"
///   location          = "global"
/// }
/// resource "gcp_iam_workforcepoolprovider" "example" {
///   workforce_pool_id = gcp_iam_workforcepool.pool.workforce_pool_id
///   location          = gcp_iam_workforcepool.pool.location
///   provider_id       = "example-prvdr"
///   attribute_mapping = {
///     "google.subject" = "assertion.sub"
///   }
///   oidc = {
///     issuer_uri = "https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/"
///     client_id  = "https://analysis.windows.net/powerbi/connector/GoogleBigQuery"
///     web_sso_config = {
///       response_type             = "CODE"
///       assertion_claims_behavior = "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS"
///     }
///     client_secret = {
///       value = {
///         plain_text = "client-secret"
///       }
///     }
///   }
///   extra_attributes_oauth2_client = {
///     issuer_uri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"
///     client_id  = "client-id"
///     client_secret = {
///       value = {
///         plain_text = "client-secret"
///       }
///     }
///     attributes_type = "AZURE_AD_GROUPS_DISPLAY_NAME"
///   }
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
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcWebSsoConfigArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcClientSecretArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcClientSecretValueArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs;
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
///         var pool = new WorkforcePool("pool", WorkforcePoolArgs.builder()
///             .workforcePoolId("example-pool")
///             .parent("organizations/123456789")
///             .location("global")
///             .build());
///
///         var example = new WorkforcePoolProvider("example", WorkforcePoolProviderArgs.builder()
///             .workforcePoolId(pool.workforcePoolId())
///             .location(pool.location())
///             .providerId("example-prvdr")
///             .attributeMapping(Map.of("google.subject", "assertion.sub"))
///             .oidc(WorkforcePoolProviderOidcArgs.builder()
///                 .issuerUri("https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/")
///                 .clientId("https://analysis.windows.net/powerbi/connector/GoogleBigQuery")
///                 .webSsoConfig(WorkforcePoolProviderOidcWebSsoConfigArgs.builder()
///                     .responseType("CODE")
///                     .assertionClaimsBehavior("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS")
///                     .build())
///                 .clientSecret(WorkforcePoolProviderOidcClientSecretArgs.builder()
///                     .value(WorkforcePoolProviderOidcClientSecretValueArgs.builder()
///                         .plainText("client-secret")
///                         .build())
///                     .build())
///                 .build())
///             .extraAttributesOauth2Client(WorkforcePoolProviderExtraAttributesOauth2ClientArgs.builder()
///                 .issuerUri("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0")
///                 .clientId("client-id")
///                 .clientSecret(WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs.builder()
///                     .value(WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs.builder()
///                         .plainText("client-secret")
///                         .build())
///                     .build())
///                 .attributesType("AZURE_AD_GROUPS_DISPLAY_NAME")
///                 .build())
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
///   example:
///     type: gcp:iam:WorkforcePoolProvider
///     properties:
///       workforcePoolId: ${pool.workforcePoolId}
///       location: ${pool.location}
///       providerId: example-prvdr
///       attributeMapping:
///         google.subject: assertion.sub
///       oidc:
///         issuerUri: https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/
///         clientId: https://analysis.windows.net/powerbi/connector/GoogleBigQuery
///         webSsoConfig:
///           responseType: CODE
///           assertionClaimsBehavior: MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS
///         clientSecret:
///           value:
///             plainText: client-secret
///       extraAttributesOauth2Client:
///         issuerUri: https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0
///         clientId: client-id
///         clientSecret:
///           value:
///             plainText: client-secret
///         attributesType: AZURE_AD_GROUPS_DISPLAY_NAME
/// ```
///
/// ### Iam Workforce Pool Provider Extra Attributes Display Name Oauth2 Config Client Full
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
/// const example = new gcp.iam.WorkforcePoolProvider("example", {
///     workforcePoolId: pool.workforcePoolId,
///     location: pool.location,
///     providerId: "example-prvdr",
///     attributeMapping: {
///         "google.subject": "assertion.sub",
///     },
///     oidc: {
///         issuerUri: "https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/",
///         clientId: "https://analysis.windows.net/powerbi/connector/GoogleBigQuery",
///         clientSecret: {
///             value: {
///                 plainText: "client-secret",
///             },
///         },
///         webSsoConfig: {
///             responseType: "CODE",
///             assertionClaimsBehavior: "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///         },
///     },
///     extraAttributesOauth2Client: {
///         issuerUri: "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         clientId: "client-id",
///         clientSecret: {
///             value: {
///                 plainText: "client-secret",
///             },
///         },
///         attributesType: "AZURE_AD_GROUPS_DISPLAY_NAME",
///         queryParameters: {
///             filter: "displayName:gcp",
///         },
///     },
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
/// example = gcp.iam.WorkforcePoolProvider("example",
///     workforce_pool_id=pool.workforce_pool_id,
///     location=pool.location,
///     provider_id="example-prvdr",
///     attribute_mapping={
///         "google.subject": "assertion.sub",
///     },
///     oidc={
///         "issuer_uri": "https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/",
///         "client_id": "https://analysis.windows.net/powerbi/connector/GoogleBigQuery",
///         "client_secret": {
///             "value": {
///                 "plain_text": "client-secret",
///             },
///         },
///         "web_sso_config": {
///             "response_type": "CODE",
///             "assertion_claims_behavior": "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///         },
///     },
///     extra_attributes_oauth2_client={
///         "issuer_uri": "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         "client_id": "client-id",
///         "client_secret": {
///             "value": {
///                 "plain_text": "client-secret",
///             },
///         },
///         "attributes_type": "AZURE_AD_GROUPS_DISPLAY_NAME",
///         "query_parameters": {
///             "filter": "displayName:gcp",
///         },
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
///     var pool = new Gcp.Iam.WorkforcePool("pool", new()
///     {
///         WorkforcePoolId = "example-pool",
///         Parent = "organizations/123456789",
///         Location = "global",
///     });
///
///     var example = new Gcp.Iam.WorkforcePoolProvider("example", new()
///     {
///         WorkforcePoolId = pool.WorkforcePoolId,
///         Location = pool.Location,
///         ProviderId = "example-prvdr",
///         AttributeMapping =
///         {
///             { "google.subject", "assertion.sub" },
///         },
///         Oidc = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcArgs
///         {
///             IssuerUri = "https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/",
///             ClientId = "https://analysis.windows.net/powerbi/connector/GoogleBigQuery",
///             ClientSecret = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretArgs
///             {
///                 Value = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretValueArgs
///                 {
///                     PlainText = "client-secret",
///                 },
///             },
///             WebSsoConfig = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcWebSsoConfigArgs
///             {
///                 ResponseType = "CODE",
///                 AssertionClaimsBehavior = "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///             },
///         },
///         ExtraAttributesOauth2Client = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientArgs
///         {
///             IssuerUri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///             ClientId = "client-id",
///             ClientSecret = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs
///             {
///                 Value = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs
///                 {
///                     PlainText = "client-secret",
///                 },
///             },
///             AttributesType = "AZURE_AD_GROUPS_DISPLAY_NAME",
///             QueryParameters = new Gcp.Iam.Inputs.WorkforcePoolProviderExtraAttributesOauth2ClientQueryParametersArgs
///             {
///                 Filter = "displayName:gcp",
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
/// 		_, err = iam.NewWorkforcePoolProvider(ctx, "example", &iam.WorkforcePoolProviderArgs{
/// 			WorkforcePoolId: pool.WorkforcePoolId,
/// 			Location:        pool.Location,
/// 			ProviderId:      pulumi.String("example-prvdr"),
/// 			AttributeMapping: pulumi.StringMap{
/// 				"google.subject": pulumi.String("assertion.sub"),
/// 			},
/// 			Oidc: &iam.WorkforcePoolProviderOidcArgs{
/// 				IssuerUri: pulumi.String("https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/"),
/// 				ClientId:  pulumi.String("https://analysis.windows.net/powerbi/connector/GoogleBigQuery"),
/// 				ClientSecret: &iam.WorkforcePoolProviderOidcClientSecretArgs{
/// 					Value: &iam.WorkforcePoolProviderOidcClientSecretValueArgs{
/// 						PlainText: pulumi.String("client-secret"),
/// 					},
/// 				},
/// 				WebSsoConfig: &iam.WorkforcePoolProviderOidcWebSsoConfigArgs{
/// 					ResponseType:            pulumi.String("CODE"),
/// 					AssertionClaimsBehavior: pulumi.String("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS"),
/// 				},
/// 			},
/// 			ExtraAttributesOauth2Client: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientArgs{
/// 				IssuerUri: pulumi.String("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"),
/// 				ClientId:  pulumi.String("client-id"),
/// 				ClientSecret: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs{
/// 					Value: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs{
/// 						PlainText: pulumi.String("client-secret"),
/// 					},
/// 				},
/// 				AttributesType: pulumi.String("AZURE_AD_GROUPS_DISPLAY_NAME"),
/// 				QueryParameters: &iam.WorkforcePoolProviderExtraAttributesOauth2ClientQueryParametersArgs{
/// 					Filter: pulumi.String("displayName:gcp"),
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
/// resource "gcp_iam_workforcepool" "pool" {
///   workforce_pool_id = "example-pool"
///   parent            = "organizations/123456789"
///   location          = "global"
/// }
/// resource "gcp_iam_workforcepoolprovider" "example" {
///   workforce_pool_id = gcp_iam_workforcepool.pool.workforce_pool_id
///   location          = gcp_iam_workforcepool.pool.location
///   provider_id       = "example-prvdr"
///   attribute_mapping = {
///     "google.subject" = "assertion.sub"
///   }
///   oidc = {
///     issuer_uri = "https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/"
///     client_id  = "https://analysis.windows.net/powerbi/connector/GoogleBigQuery"
///     client_secret = {
///       value = {
///         plain_text = "client-secret"
///       }
///     }
///     web_sso_config = {
///       response_type             = "CODE"
///       assertion_claims_behavior = "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS"
///     }
///   }
///   extra_attributes_oauth2_client = {
///     issuer_uri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"
///     client_id  = "client-id"
///     client_secret = {
///       value = {
///         plain_text = "client-secret"
///       }
///     }
///     attributes_type = "AZURE_AD_GROUPS_DISPLAY_NAME"
///     query_parameters = {
///       filter = "displayName:gcp"
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
/// import com.pulumi.gcp.iam.WorkforcePool;
/// import com.pulumi.gcp.iam.WorkforcePoolArgs;
/// import com.pulumi.gcp.iam.WorkforcePoolProvider;
/// import com.pulumi.gcp.iam.WorkforcePoolProviderArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcClientSecretArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcClientSecretValueArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcWebSsoConfigArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtraAttributesOauth2ClientQueryParametersArgs;
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
///         var pool = new WorkforcePool("pool", WorkforcePoolArgs.builder()
///             .workforcePoolId("example-pool")
///             .parent("organizations/123456789")
///             .location("global")
///             .build());
///
///         var example = new WorkforcePoolProvider("example", WorkforcePoolProviderArgs.builder()
///             .workforcePoolId(pool.workforcePoolId())
///             .location(pool.location())
///             .providerId("example-prvdr")
///             .attributeMapping(Map.of("google.subject", "assertion.sub"))
///             .oidc(WorkforcePoolProviderOidcArgs.builder()
///                 .issuerUri("https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/")
///                 .clientId("https://analysis.windows.net/powerbi/connector/GoogleBigQuery")
///                 .clientSecret(WorkforcePoolProviderOidcClientSecretArgs.builder()
///                     .value(WorkforcePoolProviderOidcClientSecretValueArgs.builder()
///                         .plainText("client-secret")
///                         .build())
///                     .build())
///                 .webSsoConfig(WorkforcePoolProviderOidcWebSsoConfigArgs.builder()
///                     .responseType("CODE")
///                     .assertionClaimsBehavior("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS")
///                     .build())
///                 .build())
///             .extraAttributesOauth2Client(WorkforcePoolProviderExtraAttributesOauth2ClientArgs.builder()
///                 .issuerUri("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0")
///                 .clientId("client-id")
///                 .clientSecret(WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretArgs.builder()
///                     .value(WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValueArgs.builder()
///                         .plainText("client-secret")
///                         .build())
///                     .build())
///                 .attributesType("AZURE_AD_GROUPS_DISPLAY_NAME")
///                 .queryParameters(WorkforcePoolProviderExtraAttributesOauth2ClientQueryParametersArgs.builder()
///                     .filter("displayName:gcp")
///                     .build())
///                 .build())
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
///   example:
///     type: gcp:iam:WorkforcePoolProvider
///     properties:
///       workforcePoolId: ${pool.workforcePoolId}
///       location: ${pool.location}
///       providerId: example-prvdr
///       attributeMapping:
///         google.subject: assertion.sub
///       oidc:
///         issuerUri: https://sts.windows.net/826602fe-2101-470c-9d71-ee1343668989/
///         clientId: https://analysis.windows.net/powerbi/connector/GoogleBigQuery
///         clientSecret:
///           value:
///             plainText: client-secret
///         webSsoConfig:
///           responseType: CODE
///           assertionClaimsBehavior: MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS
///       extraAttributesOauth2Client:
///         issuerUri: https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0
///         clientId: client-id
///         clientSecret:
///           value:
///             plainText: client-secret
///         attributesType: AZURE_AD_GROUPS_DISPLAY_NAME
///         queryParameters:
///           filter: displayName:gcp
/// ```
///
/// ### Iam Workforce Pool Provider Extended Attributes Oauth2 Config Client Basic
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
/// const example = new gcp.iam.WorkforcePoolProvider("example", {
///     workforcePoolId: pool.workforcePoolId,
///     location: pool.location,
///     providerId: "example-prvdr",
///     attributeMapping: {
///         "google.subject": "assertion.sub",
///     },
///     oidc: {
///         issuerUri: "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         clientId: "https://analysis.windows.net/powerbi/connector/GoogleBigQuery",
///         webSsoConfig: {
///             responseType: "CODE",
///             assertionClaimsBehavior: "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///         },
///         clientSecret: {
///             value: {
///                 plainText: "client-secret",
///             },
///         },
///     },
///     extendedAttributesOauth2Client: {
///         issuerUri: "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         clientId: "client-id",
///         clientSecret: {
///             value: {
///                 plainText: "client-secret",
///             },
///         },
///         attributesType: "AZURE_AD_GROUPS_ID",
///     },
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
/// example = gcp.iam.WorkforcePoolProvider("example",
///     workforce_pool_id=pool.workforce_pool_id,
///     location=pool.location,
///     provider_id="example-prvdr",
///     attribute_mapping={
///         "google.subject": "assertion.sub",
///     },
///     oidc={
///         "issuer_uri": "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         "client_id": "https://analysis.windows.net/powerbi/connector/GoogleBigQuery",
///         "web_sso_config": {
///             "response_type": "CODE",
///             "assertion_claims_behavior": "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///         },
///         "client_secret": {
///             "value": {
///                 "plain_text": "client-secret",
///             },
///         },
///     },
///     extended_attributes_oauth2_client={
///         "issuer_uri": "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         "client_id": "client-id",
///         "client_secret": {
///             "value": {
///                 "plain_text": "client-secret",
///             },
///         },
///         "attributes_type": "AZURE_AD_GROUPS_ID",
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
///     var pool = new Gcp.Iam.WorkforcePool("pool", new()
///     {
///         WorkforcePoolId = "example-pool",
///         Parent = "organizations/123456789",
///         Location = "global",
///     });
///
///     var example = new Gcp.Iam.WorkforcePoolProvider("example", new()
///     {
///         WorkforcePoolId = pool.WorkforcePoolId,
///         Location = pool.Location,
///         ProviderId = "example-prvdr",
///         AttributeMapping =
///         {
///             { "google.subject", "assertion.sub" },
///         },
///         Oidc = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcArgs
///         {
///             IssuerUri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///             ClientId = "https://analysis.windows.net/powerbi/connector/GoogleBigQuery",
///             WebSsoConfig = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcWebSsoConfigArgs
///             {
///                 ResponseType = "CODE",
///                 AssertionClaimsBehavior = "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///             },
///             ClientSecret = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretArgs
///             {
///                 Value = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretValueArgs
///                 {
///                     PlainText = "client-secret",
///                 },
///             },
///         },
///         ExtendedAttributesOauth2Client = new Gcp.Iam.Inputs.WorkforcePoolProviderExtendedAttributesOauth2ClientArgs
///         {
///             IssuerUri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///             ClientId = "client-id",
///             ClientSecret = new Gcp.Iam.Inputs.WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretArgs
///             {
///                 Value = new Gcp.Iam.Inputs.WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValueArgs
///                 {
///                     PlainText = "client-secret",
///                 },
///             },
///             AttributesType = "AZURE_AD_GROUPS_ID",
///         },
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
/// 		_, err = iam.NewWorkforcePoolProvider(ctx, "example", &iam.WorkforcePoolProviderArgs{
/// 			WorkforcePoolId: pool.WorkforcePoolId,
/// 			Location:        pool.Location,
/// 			ProviderId:      pulumi.String("example-prvdr"),
/// 			AttributeMapping: pulumi.StringMap{
/// 				"google.subject": pulumi.String("assertion.sub"),
/// 			},
/// 			Oidc: &iam.WorkforcePoolProviderOidcArgs{
/// 				IssuerUri: pulumi.String("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"),
/// 				ClientId:  pulumi.String("https://analysis.windows.net/powerbi/connector/GoogleBigQuery"),
/// 				WebSsoConfig: &iam.WorkforcePoolProviderOidcWebSsoConfigArgs{
/// 					ResponseType:            pulumi.String("CODE"),
/// 					AssertionClaimsBehavior: pulumi.String("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS"),
/// 				},
/// 				ClientSecret: &iam.WorkforcePoolProviderOidcClientSecretArgs{
/// 					Value: &iam.WorkforcePoolProviderOidcClientSecretValueArgs{
/// 						PlainText: pulumi.String("client-secret"),
/// 					},
/// 				},
/// 			},
/// 			ExtendedAttributesOauth2Client: &iam.WorkforcePoolProviderExtendedAttributesOauth2ClientArgs{
/// 				IssuerUri: pulumi.String("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"),
/// 				ClientId:  pulumi.String("client-id"),
/// 				ClientSecret: &iam.WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretArgs{
/// 					Value: &iam.WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValueArgs{
/// 						PlainText: pulumi.String("client-secret"),
/// 					},
/// 				},
/// 				AttributesType: pulumi.String("AZURE_AD_GROUPS_ID"),
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
/// resource "gcp_iam_workforcepool" "pool" {
///   workforce_pool_id = "example-pool"
///   parent            = "organizations/123456789"
///   location          = "global"
/// }
/// resource "gcp_iam_workforcepoolprovider" "example" {
///   workforce_pool_id = gcp_iam_workforcepool.pool.workforce_pool_id
///   location          = gcp_iam_workforcepool.pool.location
///   provider_id       = "example-prvdr"
///   attribute_mapping = {
///     "google.subject" = "assertion.sub"
///   }
///   oidc = {
///     issuer_uri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"
///     client_id  = "https://analysis.windows.net/powerbi/connector/GoogleBigQuery"
///     web_sso_config = {
///       response_type             = "CODE"
///       assertion_claims_behavior = "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS"
///     }
///     client_secret = {
///       value = {
///         plain_text = "client-secret"
///       }
///     }
///   }
///   extended_attributes_oauth2_client = {
///     issuer_uri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"
///     client_id  = "client-id"
///     client_secret = {
///       value = {
///         plain_text = "client-secret"
///       }
///     }
///     attributes_type = "AZURE_AD_GROUPS_ID"
///   }
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
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcWebSsoConfigArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcClientSecretArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcClientSecretValueArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtendedAttributesOauth2ClientArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValueArgs;
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
///         var pool = new WorkforcePool("pool", WorkforcePoolArgs.builder()
///             .workforcePoolId("example-pool")
///             .parent("organizations/123456789")
///             .location("global")
///             .build());
///
///         var example = new WorkforcePoolProvider("example", WorkforcePoolProviderArgs.builder()
///             .workforcePoolId(pool.workforcePoolId())
///             .location(pool.location())
///             .providerId("example-prvdr")
///             .attributeMapping(Map.of("google.subject", "assertion.sub"))
///             .oidc(WorkforcePoolProviderOidcArgs.builder()
///                 .issuerUri("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0")
///                 .clientId("https://analysis.windows.net/powerbi/connector/GoogleBigQuery")
///                 .webSsoConfig(WorkforcePoolProviderOidcWebSsoConfigArgs.builder()
///                     .responseType("CODE")
///                     .assertionClaimsBehavior("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS")
///                     .build())
///                 .clientSecret(WorkforcePoolProviderOidcClientSecretArgs.builder()
///                     .value(WorkforcePoolProviderOidcClientSecretValueArgs.builder()
///                         .plainText("client-secret")
///                         .build())
///                     .build())
///                 .build())
///             .extendedAttributesOauth2Client(WorkforcePoolProviderExtendedAttributesOauth2ClientArgs.builder()
///                 .issuerUri("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0")
///                 .clientId("client-id")
///                 .clientSecret(WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretArgs.builder()
///                     .value(WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValueArgs.builder()
///                         .plainText("client-secret")
///                         .build())
///                     .build())
///                 .attributesType("AZURE_AD_GROUPS_ID")
///                 .build())
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
///   example:
///     type: gcp:iam:WorkforcePoolProvider
///     properties:
///       workforcePoolId: ${pool.workforcePoolId}
///       location: ${pool.location}
///       providerId: example-prvdr
///       attributeMapping:
///         google.subject: assertion.sub
///       oidc:
///         issuerUri: https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0
///         clientId: https://analysis.windows.net/powerbi/connector/GoogleBigQuery
///         webSsoConfig:
///           responseType: CODE
///           assertionClaimsBehavior: MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS
///         clientSecret:
///           value:
///             plainText: client-secret
///       extendedAttributesOauth2Client:
///         issuerUri: https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0
///         clientId: client-id
///         clientSecret:
///           value:
///             plainText: client-secret
///         attributesType: AZURE_AD_GROUPS_ID
/// ```
///
/// ### Iam Workforce Pool Provider Extended Attributes Oauth2 Config Client Full
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
/// const example = new gcp.iam.WorkforcePoolProvider("example", {
///     workforcePoolId: pool.workforcePoolId,
///     location: pool.location,
///     providerId: "example-prvdr",
///     attributeMapping: {
///         "google.subject": "assertion.sub",
///     },
///     oidc: {
///         issuerUri: "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         clientId: "https://analysis.windows.net/powerbi/connector/GoogleBigQuery",
///         clientSecret: {
///             value: {
///                 plainText: "client-secret",
///             },
///         },
///         webSsoConfig: {
///             responseType: "CODE",
///             assertionClaimsBehavior: "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///         },
///     },
///     extendedAttributesOauth2Client: {
///         issuerUri: "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         clientId: "client-id",
///         clientSecret: {
///             value: {
///                 plainText: "client-secret",
///             },
///         },
///         attributesType: "AZURE_AD_GROUPS_ID",
///         queryParameters: {
///             filter: "mail:gcp",
///         },
///     },
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
/// example = gcp.iam.WorkforcePoolProvider("example",
///     workforce_pool_id=pool.workforce_pool_id,
///     location=pool.location,
///     provider_id="example-prvdr",
///     attribute_mapping={
///         "google.subject": "assertion.sub",
///     },
///     oidc={
///         "issuer_uri": "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         "client_id": "https://analysis.windows.net/powerbi/connector/GoogleBigQuery",
///         "client_secret": {
///             "value": {
///                 "plain_text": "client-secret",
///             },
///         },
///         "web_sso_config": {
///             "response_type": "CODE",
///             "assertion_claims_behavior": "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///         },
///     },
///     extended_attributes_oauth2_client={
///         "issuer_uri": "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///         "client_id": "client-id",
///         "client_secret": {
///             "value": {
///                 "plain_text": "client-secret",
///             },
///         },
///         "attributes_type": "AZURE_AD_GROUPS_ID",
///         "query_parameters": {
///             "filter": "mail:gcp",
///         },
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
///     var pool = new Gcp.Iam.WorkforcePool("pool", new()
///     {
///         WorkforcePoolId = "example-pool",
///         Parent = "organizations/123456789",
///         Location = "global",
///     });
///
///     var example = new Gcp.Iam.WorkforcePoolProvider("example", new()
///     {
///         WorkforcePoolId = pool.WorkforcePoolId,
///         Location = pool.Location,
///         ProviderId = "example-prvdr",
///         AttributeMapping =
///         {
///             { "google.subject", "assertion.sub" },
///         },
///         Oidc = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcArgs
///         {
///             IssuerUri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///             ClientId = "https://analysis.windows.net/powerbi/connector/GoogleBigQuery",
///             ClientSecret = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretArgs
///             {
///                 Value = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretValueArgs
///                 {
///                     PlainText = "client-secret",
///                 },
///             },
///             WebSsoConfig = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcWebSsoConfigArgs
///             {
///                 ResponseType = "CODE",
///                 AssertionClaimsBehavior = "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///             },
///         },
///         ExtendedAttributesOauth2Client = new Gcp.Iam.Inputs.WorkforcePoolProviderExtendedAttributesOauth2ClientArgs
///         {
///             IssuerUri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0",
///             ClientId = "client-id",
///             ClientSecret = new Gcp.Iam.Inputs.WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretArgs
///             {
///                 Value = new Gcp.Iam.Inputs.WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValueArgs
///                 {
///                     PlainText = "client-secret",
///                 },
///             },
///             AttributesType = "AZURE_AD_GROUPS_ID",
///             QueryParameters = new Gcp.Iam.Inputs.WorkforcePoolProviderExtendedAttributesOauth2ClientQueryParametersArgs
///             {
///                 Filter = "mail:gcp",
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
/// 		_, err = iam.NewWorkforcePoolProvider(ctx, "example", &iam.WorkforcePoolProviderArgs{
/// 			WorkforcePoolId: pool.WorkforcePoolId,
/// 			Location:        pool.Location,
/// 			ProviderId:      pulumi.String("example-prvdr"),
/// 			AttributeMapping: pulumi.StringMap{
/// 				"google.subject": pulumi.String("assertion.sub"),
/// 			},
/// 			Oidc: &iam.WorkforcePoolProviderOidcArgs{
/// 				IssuerUri: pulumi.String("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"),
/// 				ClientId:  pulumi.String("https://analysis.windows.net/powerbi/connector/GoogleBigQuery"),
/// 				ClientSecret: &iam.WorkforcePoolProviderOidcClientSecretArgs{
/// 					Value: &iam.WorkforcePoolProviderOidcClientSecretValueArgs{
/// 						PlainText: pulumi.String("client-secret"),
/// 					},
/// 				},
/// 				WebSsoConfig: &iam.WorkforcePoolProviderOidcWebSsoConfigArgs{
/// 					ResponseType:            pulumi.String("CODE"),
/// 					AssertionClaimsBehavior: pulumi.String("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS"),
/// 				},
/// 			},
/// 			ExtendedAttributesOauth2Client: &iam.WorkforcePoolProviderExtendedAttributesOauth2ClientArgs{
/// 				IssuerUri: pulumi.String("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"),
/// 				ClientId:  pulumi.String("client-id"),
/// 				ClientSecret: &iam.WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretArgs{
/// 					Value: &iam.WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValueArgs{
/// 						PlainText: pulumi.String("client-secret"),
/// 					},
/// 				},
/// 				AttributesType: pulumi.String("AZURE_AD_GROUPS_ID"),
/// 				QueryParameters: &iam.WorkforcePoolProviderExtendedAttributesOauth2ClientQueryParametersArgs{
/// 					Filter: pulumi.String("mail:gcp"),
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
/// resource "gcp_iam_workforcepool" "pool" {
///   workforce_pool_id = "example-pool"
///   parent            = "organizations/123456789"
///   location          = "global"
/// }
/// resource "gcp_iam_workforcepoolprovider" "example" {
///   workforce_pool_id = gcp_iam_workforcepool.pool.workforce_pool_id
///   location          = gcp_iam_workforcepool.pool.location
///   provider_id       = "example-prvdr"
///   attribute_mapping = {
///     "google.subject" = "assertion.sub"
///   }
///   oidc = {
///     issuer_uri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"
///     client_id  = "https://analysis.windows.net/powerbi/connector/GoogleBigQuery"
///     client_secret = {
///       value = {
///         plain_text = "client-secret"
///       }
///     }
///     web_sso_config = {
///       response_type             = "CODE"
///       assertion_claims_behavior = "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS"
///     }
///   }
///   extended_attributes_oauth2_client = {
///     issuer_uri = "https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0"
///     client_id  = "client-id"
///     client_secret = {
///       value = {
///         plain_text = "client-secret"
///       }
///     }
///     attributes_type = "AZURE_AD_GROUPS_ID"
///     query_parameters = {
///       filter = "mail:gcp"
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
/// import com.pulumi.gcp.iam.WorkforcePool;
/// import com.pulumi.gcp.iam.WorkforcePoolArgs;
/// import com.pulumi.gcp.iam.WorkforcePoolProvider;
/// import com.pulumi.gcp.iam.WorkforcePoolProviderArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcClientSecretArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcClientSecretValueArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcWebSsoConfigArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtendedAttributesOauth2ClientArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValueArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderExtendedAttributesOauth2ClientQueryParametersArgs;
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
///         var pool = new WorkforcePool("pool", WorkforcePoolArgs.builder()
///             .workforcePoolId("example-pool")
///             .parent("organizations/123456789")
///             .location("global")
///             .build());
///
///         var example = new WorkforcePoolProvider("example", WorkforcePoolProviderArgs.builder()
///             .workforcePoolId(pool.workforcePoolId())
///             .location(pool.location())
///             .providerId("example-prvdr")
///             .attributeMapping(Map.of("google.subject", "assertion.sub"))
///             .oidc(WorkforcePoolProviderOidcArgs.builder()
///                 .issuerUri("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0")
///                 .clientId("https://analysis.windows.net/powerbi/connector/GoogleBigQuery")
///                 .clientSecret(WorkforcePoolProviderOidcClientSecretArgs.builder()
///                     .value(WorkforcePoolProviderOidcClientSecretValueArgs.builder()
///                         .plainText("client-secret")
///                         .build())
///                     .build())
///                 .webSsoConfig(WorkforcePoolProviderOidcWebSsoConfigArgs.builder()
///                     .responseType("CODE")
///                     .assertionClaimsBehavior("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS")
///                     .build())
///                 .build())
///             .extendedAttributesOauth2Client(WorkforcePoolProviderExtendedAttributesOauth2ClientArgs.builder()
///                 .issuerUri("https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0")
///                 .clientId("client-id")
///                 .clientSecret(WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretArgs.builder()
///                     .value(WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValueArgs.builder()
///                         .plainText("client-secret")
///                         .build())
///                     .build())
///                 .attributesType("AZURE_AD_GROUPS_ID")
///                 .queryParameters(WorkforcePoolProviderExtendedAttributesOauth2ClientQueryParametersArgs.builder()
///                     .filter("mail:gcp")
///                     .build())
///                 .build())
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
///   example:
///     type: gcp:iam:WorkforcePoolProvider
///     properties:
///       workforcePoolId: ${pool.workforcePoolId}
///       location: ${pool.location}
///       providerId: example-prvdr
///       attributeMapping:
///         google.subject: assertion.sub
///       oidc:
///         issuerUri: https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0
///         clientId: https://analysis.windows.net/powerbi/connector/GoogleBigQuery
///         clientSecret:
///           value:
///             plainText: client-secret
///         webSsoConfig:
///           responseType: CODE
///           assertionClaimsBehavior: MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS
///       extendedAttributesOauth2Client:
///         issuerUri: https://login.microsoftonline.com/826602fe-2101-470c-9d71-ee1343668989/v2.0
///         clientId: client-id
///         clientSecret:
///           value:
///             plainText: client-secret
///         attributesType: AZURE_AD_GROUPS_ID
///         queryParameters:
///           filter: mail:gcp
/// ```
///
/// ### Iam Workforce Pool Provider Oidc Detailed Audit Logging
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
/// const example = new gcp.iam.WorkforcePoolProvider("example", {
///     workforcePoolId: pool.workforcePoolId,
///     location: pool.location,
///     providerId: "example-prvdr",
///     attributeMapping: {
///         "google.subject": "assertion.sub",
///     },
///     oidc: {
///         issuerUri: "https://accounts.thirdparty.com",
///         clientId: "client-id",
///         clientSecret: {
///             value: {
///                 plainText: "client-secret",
///             },
///         },
///         webSsoConfig: {
///             responseType: "CODE",
///             assertionClaimsBehavior: "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///         },
///     },
///     detailedAuditLogging: true,
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
/// example = gcp.iam.WorkforcePoolProvider("example",
///     workforce_pool_id=pool.workforce_pool_id,
///     location=pool.location,
///     provider_id="example-prvdr",
///     attribute_mapping={
///         "google.subject": "assertion.sub",
///     },
///     oidc={
///         "issuer_uri": "https://accounts.thirdparty.com",
///         "client_id": "client-id",
///         "client_secret": {
///             "value": {
///                 "plain_text": "client-secret",
///             },
///         },
///         "web_sso_config": {
///             "response_type": "CODE",
///             "assertion_claims_behavior": "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///         },
///     },
///     detailed_audit_logging=True)
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
///     var example = new Gcp.Iam.WorkforcePoolProvider("example", new()
///     {
///         WorkforcePoolId = pool.WorkforcePoolId,
///         Location = pool.Location,
///         ProviderId = "example-prvdr",
///         AttributeMapping =
///         {
///             { "google.subject", "assertion.sub" },
///         },
///         Oidc = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcArgs
///         {
///             IssuerUri = "https://accounts.thirdparty.com",
///             ClientId = "client-id",
///             ClientSecret = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretArgs
///             {
///                 Value = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretValueArgs
///                 {
///                     PlainText = "client-secret",
///                 },
///             },
///             WebSsoConfig = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcWebSsoConfigArgs
///             {
///                 ResponseType = "CODE",
///                 AssertionClaimsBehavior = "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///             },
///         },
///         DetailedAuditLogging = true,
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
/// 		_, err = iam.NewWorkforcePoolProvider(ctx, "example", &iam.WorkforcePoolProviderArgs{
/// 			WorkforcePoolId: pool.WorkforcePoolId,
/// 			Location:        pool.Location,
/// 			ProviderId:      pulumi.String("example-prvdr"),
/// 			AttributeMapping: pulumi.StringMap{
/// 				"google.subject": pulumi.String("assertion.sub"),
/// 			},
/// 			Oidc: &iam.WorkforcePoolProviderOidcArgs{
/// 				IssuerUri: pulumi.String("https://accounts.thirdparty.com"),
/// 				ClientId:  pulumi.String("client-id"),
/// 				ClientSecret: &iam.WorkforcePoolProviderOidcClientSecretArgs{
/// 					Value: &iam.WorkforcePoolProviderOidcClientSecretValueArgs{
/// 						PlainText: pulumi.String("client-secret"),
/// 					},
/// 				},
/// 				WebSsoConfig: &iam.WorkforcePoolProviderOidcWebSsoConfigArgs{
/// 					ResponseType:            pulumi.String("CODE"),
/// 					AssertionClaimsBehavior: pulumi.String("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS"),
/// 				},
/// 			},
/// 			DetailedAuditLogging: pulumi.Bool(true),
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
/// resource "gcp_iam_workforcepool" "pool" {
///   workforce_pool_id = "example-pool"
///   parent            = "organizations/123456789"
///   location          = "global"
/// }
/// resource "gcp_iam_workforcepoolprovider" "example" {
///   workforce_pool_id = gcp_iam_workforcepool.pool.workforce_pool_id
///   location          = gcp_iam_workforcepool.pool.location
///   provider_id       = "example-prvdr"
///   attribute_mapping = {
///     "google.subject" = "assertion.sub"
///   }
///   oidc = {
///     issuer_uri = "https://accounts.thirdparty.com"
///     client_id  = "client-id"
///     client_secret = {
///       value = {
///         plain_text = "client-secret"
///       }
///     }
///     web_sso_config = {
///       response_type             = "CODE"
///       assertion_claims_behavior = "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS"
///     }
///   }
///   detailed_audit_logging = true
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
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcClientSecretArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcClientSecretValueArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcWebSsoConfigArgs;
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
///         var pool = new WorkforcePool("pool", WorkforcePoolArgs.builder()
///             .workforcePoolId("example-pool")
///             .parent("organizations/123456789")
///             .location("global")
///             .build());
///
///         var example = new WorkforcePoolProvider("example", WorkforcePoolProviderArgs.builder()
///             .workforcePoolId(pool.workforcePoolId())
///             .location(pool.location())
///             .providerId("example-prvdr")
///             .attributeMapping(Map.of("google.subject", "assertion.sub"))
///             .oidc(WorkforcePoolProviderOidcArgs.builder()
///                 .issuerUri("https://accounts.thirdparty.com")
///                 .clientId("client-id")
///                 .clientSecret(WorkforcePoolProviderOidcClientSecretArgs.builder()
///                     .value(WorkforcePoolProviderOidcClientSecretValueArgs.builder()
///                         .plainText("client-secret")
///                         .build())
///                     .build())
///                 .webSsoConfig(WorkforcePoolProviderOidcWebSsoConfigArgs.builder()
///                     .responseType("CODE")
///                     .assertionClaimsBehavior("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS")
///                     .build())
///                 .build())
///             .detailedAuditLogging(true)
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
///   example:
///     type: gcp:iam:WorkforcePoolProvider
///     properties:
///       workforcePoolId: ${pool.workforcePoolId}
///       location: ${pool.location}
///       providerId: example-prvdr
///       attributeMapping:
///         google.subject: assertion.sub
///       oidc:
///         issuerUri: https://accounts.thirdparty.com
///         clientId: client-id
///         clientSecret:
///           value:
///             plainText: client-secret
///         webSsoConfig:
///           responseType: CODE
///           assertionClaimsBehavior: MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS
///       detailedAuditLogging: true
/// ```
///
///
/// ## Import
///
/// WorkforcePoolProvider can be imported using any of these accepted formats:
///
/// * `locations/{{location}}/workforcePools/{{workforce_pool_id}}/providers/{{provider_id}}`
/// * `{{location}}/{{workforce_pool_id}}/{{provider_id}}`
///
///
/// When using the `pulumi import` command, WorkforcePoolProvider can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePoolProvider:WorkforcePoolProvider default locations/{{location}}/workforcePools/{{workforce_pool_id}}/providers/{{provider_id}}
/// $ pulumi import gcp:iam/workforcePoolProvider:WorkforcePoolProvider default {{location}}/{{workforce_pool_id}}/{{provider_id}}
/// ```
class WorkforcePoolProvider extends pulumi.CustomResource {
  /// A [Common Expression Language](https://github.com/google/cel-spec) expression, in
  /// plain text, to restrict what otherwise valid authentication credentials issued by the
  /// provider should not be accepted.
  /// The expression must output a boolean representing whether to allow the federation.
  /// The following keywords may be referenced in the expressions:
  late final pulumi.Output<String?> attributeCondition;
  /// Maps attributes from the authentication credentials issued by an external identity provider
  /// to Google Cloud attributes, such as `subject` and `segment`.
  /// Each key must be a string specifying the Google Cloud IAM attribute to map to.
  /// The following keys are supported:
  /// * `google.subject`: The principal IAM is authenticating. You can reference this value in IAM bindings.
  /// This is also the subject that appears in Cloud Logging logs. This is a required field and
  /// the mapped subject cannot exceed 127 bytes.
  /// * `google.groups`: Groups the authenticating user belongs to. You can grant groups access to
  /// resources using an IAM `principalSet` binding; access applies to all members of the group.
  /// * `google.display_name`: The name of the authenticated user. This is an optional field and
  /// the mapped display name cannot exceed 100 bytes. If not set, `google.subject` will be displayed instead.
  /// This attribute cannot be referenced in IAM bindings.
  /// * `google.profile_photo`: The URL that specifies the authenticated user's thumbnail photo.
  /// This is an optional field. When set, the image will be visible as the user's profile picture.
  /// If not set, a generic user icon will be displayed instead.
  /// This attribute cannot be referenced in IAM bindings.
  /// You can also provide custom attributes by specifying `attribute.{custom_attribute}`, where {custom_attribute}
  /// is the name of the custom attribute to be mapped. You can define a maximum of 50 custom attributes.
  /// The maximum length of a mapped attribute key is 100 characters, and the key may only contain the characters [a-z0-9_].
  /// You can reference these attributes in IAM policies to define fine-grained access for a workforce pool
  /// to Google Cloud resources. For example:
  /// * `google.subject`:
  /// `principal://iam.googleapis.com/locations/{location}/workforcePools/{pool}/subject/{value}`
  /// * `google.groups`:
  /// `principalSet://iam.googleapis.com/locations/{location}/workforcePools/{pool}/group/{value}`
  /// * `attribute.{custom_attribute}`:
  /// `principalSet://iam.googleapis.com/locations/{location}/workforcePools/{pool}/attribute.{custom_attribute}/{value}`
  /// Each value must be a [Common Expression Language](https://github.com/google/cel-spec)
  /// function that maps an identity provider credential to the normalized attribute specified
  /// by the corresponding map key.
  /// You can use the `assertion` keyword in the expression to access a JSON representation of
  /// the authentication credential issued by the provider.
  /// The maximum length of an attribute mapping expression is 2048 characters. When evaluated,
  /// the total size of all mapped attributes must not exceed 8KB.
  /// For OIDC providers, you must supply a custom mapping that includes the `google.subject` attribute.
  /// For example, the following maps the sub claim of the incoming credential to the `subject` attribute
  /// on a Google token:
  /// ```
  /// {"google.subject": "assertion.sub"}
  /// ```
  /// An object containing a list of `"key": value` pairs.
  /// Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  late final pulumi.Output<Map<String, String>?> attributeMapping;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A user-specified description of the provider. Cannot exceed 256 characters.
  late final pulumi.Output<String?> description;
  /// If true, populates additional debug information in Cloud Audit Logs for this provider. Logged attribute mappings and values can be found in `sts.googleapis.com` data access logs. Default value is false.
  late final pulumi.Output<bool?> detailedAuditLogging;
  /// Whether the provider is disabled. You cannot use a disabled provider to exchange tokens.
  /// However, existing tokens still grant access.
  late final pulumi.Output<bool?> disabled;
  /// A user-specified display name for the provider. Cannot exceed 32 characters.
  late final pulumi.Output<String?> displayName;
  /// (Optional, Deprecated)
  /// The configuration for OAuth 2.0 client used to get the extended group
  /// memberships for user identities. Only the `AZURE_AD_GROUPS_ID` attribute
  /// type is supported. Extended groups supports a subset of Google Cloud
  /// services. When the user accesses these services, extended group memberships
  /// override the mapped `google.groups` attribute. Extended group memberships
  /// cannot be used in attribute mapping or attribute condition expressions.
  /// To keep extended group memberships up to date, extended groups are
  /// retrieved when the user signs in and at regular intervals during the user's
  /// active session. Each user identity in the workforce identity pool must map
  /// to a unique Microsoft Entra ID user.
  /// Structure is documented below.
  ///
  /// &gt; **Warning:** `extendedAttributesOauth2Client` is deprecated. Use SCIM instead.
  late final pulumi.Output<WorkforcePoolProviderExtendedAttributesOauth2Client?> extendedAttributesOauth2Client;
  /// The configuration for OAuth 2.0 client used to get the additional user
  /// attributes. This should be used when users can't get the desired claims
  /// in authentication credentials. Currently this configuration is only
  /// supported with SAML and OIDC protocol.
  /// Structure is documented below.
  late final pulumi.Output<WorkforcePoolProviderExtraAttributesOauth2Client?> extraAttributesOauth2Client;
  /// The location for the resource.
  late final pulumi.Output<String> location;
  /// Output only. The resource name of the provider.
  /// Format: `locations/{location}/workforcePools/{workforcePoolId}/providers/{providerId}`
  late final pulumi.Output<String> name;
  /// Represents an OpenId Connect 1.0 identity provider.
  /// Structure is documented below.
  late final pulumi.Output<WorkforcePoolProviderOidc?> oidc;
  /// The ID for the provider, which becomes the final component of the resource name.
  /// This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  /// The prefix `gcp-` is reserved for use by Google, and may not be specified.
  late final pulumi.Output<String> providerId;
  /// Represents a SAML identity provider.
  /// Structure is documented below.
  late final pulumi.Output<WorkforcePoolProviderSaml?> saml;
  /// Agentspace only. Specifies whether the workforce identity pool
  /// provider uses SCIM-managed groups instead of the `google.groups`
  /// attribute mapping for authorization checks.
  /// The `scimUsage` and `extendedAttributesOauth2Client` fields are
  /// mutually exclusive. A request that enables both fields on the same
  /// workforce identity pool provider will produce an error.
  /// * SCIM_USAGE_UNSPECIFIED: Default behaviour
  /// * ENABLED_FOR_GROUPS: Use SCIM-managed groups instead of the `google.groups`
  /// attribute mapping for authorization checks
  /// Possible values are: `SCIM_USAGE_UNSPECIFIED`, `ENABLED_FOR_GROUPS`.
  late final pulumi.Output<String?> scimUsage;
  /// The current state of the provider.
  /// * STATE_UNSPECIFIED: State unspecified.
  /// * ACTIVE: The provider is active and may be used to validate authentication credentials.
  /// * DELETED: The provider is soft-deleted. Soft-deleted providers are permanently
  /// deleted after approximately 30 days. You can restore a soft-deleted provider using
  /// [providers.undelete](https://cloud.google.com/iam/docs/reference/rest/v1/locations.workforcePools.providers/undelete#google.iam.admin.v1.WorkforcePools.UndeleteWorkforcePoolProvider).
  late final pulumi.Output<String> state;
  /// The ID to use for the pool, which becomes the final component of the resource name.
  /// The IDs must be a globally unique string of 6 to 63 lowercase letters, digits, or hyphens.
  /// It must start with a letter, and cannot have a trailing hyphen.
  /// The prefix `gcp-` is reserved for use by Google, and may not be specified.
  late final pulumi.Output<String> workforcePoolId;

  /// Creates a new [WorkforcePoolProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkforcePoolProvider]. {@macro pulumi_iam_workforce_pool_provider_workforce_pool_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkforcePoolProvider(
    String name, {
    WorkforcePoolProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workforcePoolProvider:WorkforcePoolProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    attributeCondition = registerOutput<String?>('attributeCondition');
    attributeMapping = registerOutput<Map<String, String>?>('attributeMapping', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    detailedAuditLogging = registerOutput<bool?>('detailedAuditLogging');
    disabled = registerOutput<bool?>('disabled');
    displayName = registerOutput<String?>('displayName');
    extendedAttributesOauth2Client = registerOutput<WorkforcePoolProviderExtendedAttributesOauth2Client?>('extendedAttributesOauth2Client', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkforcePoolProviderExtendedAttributesOauth2Client.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    extraAttributesOauth2Client = registerOutput<WorkforcePoolProviderExtraAttributesOauth2Client?>('extraAttributesOauth2Client', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkforcePoolProviderExtraAttributesOauth2Client.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    oidc = registerOutput<WorkforcePoolProviderOidc?>('oidc', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkforcePoolProviderOidc.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    providerId = registerOutput<String>('providerId');
    saml = registerOutput<WorkforcePoolProviderSaml?>('saml', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkforcePoolProviderSaml.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scimUsage = registerOutput<String?>('scimUsage');
    state = registerOutput<String>('state');
    workforcePoolId = registerOutput<String>('workforcePoolId');
  }

  /// Gets an existing [WorkforcePoolProvider] resource's state with the given [name] and [id].
  static WorkforcePoolProvider get(
    String name,
    pulumi.Input<String> id, {
    WorkforcePoolProviderState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WorkforcePoolProvider._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WorkforcePoolProvider._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workforcePoolProvider:WorkforcePoolProvider',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attributeCondition = registerOutput<String?>('attributeCondition');
    attributeMapping = registerOutput<Map<String, String>?>('attributeMapping', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    detailedAuditLogging = registerOutput<bool?>('detailedAuditLogging');
    disabled = registerOutput<bool?>('disabled');
    displayName = registerOutput<String?>('displayName');
    extendedAttributesOauth2Client = registerOutput<WorkforcePoolProviderExtendedAttributesOauth2Client?>('extendedAttributesOauth2Client', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkforcePoolProviderExtendedAttributesOauth2Client.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    extraAttributesOauth2Client = registerOutput<WorkforcePoolProviderExtraAttributesOauth2Client?>('extraAttributesOauth2Client', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkforcePoolProviderExtraAttributesOauth2Client.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    oidc = registerOutput<WorkforcePoolProviderOidc?>('oidc', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkforcePoolProviderOidc.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    providerId = registerOutput<String>('providerId');
    saml = registerOutput<WorkforcePoolProviderSaml?>('saml', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkforcePoolProviderSaml.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scimUsage = registerOutput<String?>('scimUsage');
    this.state = registerOutput<String>('state');
    workforcePoolId = registerOutput<String>('workforcePoolId');
  }

  /// Creates a typed reference to an existing [WorkforcePoolProvider] resource.
  WorkforcePoolProvider.reference(String urn)
    : super(
        'gcp:iam/workforcePoolProvider:WorkforcePoolProvider',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    attributeCondition = registerOutput<String?>('attributeCondition');
    attributeMapping = registerOutput<Map<String, String>?>('attributeMapping', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    detailedAuditLogging = registerOutput<bool?>('detailedAuditLogging');
    disabled = registerOutput<bool?>('disabled');
    displayName = registerOutput<String?>('displayName');
    extendedAttributesOauth2Client = registerOutput<WorkforcePoolProviderExtendedAttributesOauth2Client?>('extendedAttributesOauth2Client', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkforcePoolProviderExtendedAttributesOauth2Client.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    extraAttributesOauth2Client = registerOutput<WorkforcePoolProviderExtraAttributesOauth2Client?>('extraAttributesOauth2Client', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkforcePoolProviderExtraAttributesOauth2Client.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    oidc = registerOutput<WorkforcePoolProviderOidc?>('oidc', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkforcePoolProviderOidc.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    providerId = registerOutput<String>('providerId');
    saml = registerOutput<WorkforcePoolProviderSaml?>('saml', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkforcePoolProviderSaml.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scimUsage = registerOutput<String?>('scimUsage');
    state = registerOutput<String>('state');
    workforcePoolId = registerOutput<String>('workforcePoolId');
  }
}
