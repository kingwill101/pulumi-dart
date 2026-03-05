import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_server_configuration_args.dart';
import 'vpn_server_configuration_properties_response.dart';

/// VpnServerConfiguration Resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VpnServerConfigurationCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpnServerConfiguration = new AzureNative.Network.VpnServerConfiguration("vpnServerConfiguration", new()
///     {
///         Location = "West US",
///         Properties = new AzureNative.Network.Inputs.VpnServerConfigurationPropertiesArgs
///         {
///             ConfigurationPolicyGroups = new[]
///             {
///                 new AzureNative.Network.Inputs.VpnServerConfigurationPolicyGroupArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnServerConfigurations/vpnServerConfiguration1/vpnServerConfigurationPolicyGroups/policyGroup1",
///                     IsDefault = true,
///                     Name = "policyGroup1",
///                     PolicyMembers = new[]
///                     {
///                         new AzureNative.Network.Inputs.VpnServerConfigurationPolicyGroupMemberArgs
///                         {
///                             AttributeType = AzureNative.Network.VpnPolicyMemberAttributeType.RadiusAzureGroupId,
///                             AttributeValue = "6ad1bd08",
///                             Name = "policy1",
///                         },
///                     },
///                     Priority = 0,
///                 },
///                 new AzureNative.Network.Inputs.VpnServerConfigurationPolicyGroupArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnServerConfigurations/vpnServerConfiguration1/vpnServerConfigurationPolicyGroups/policyGroup2",
///                     IsDefault = true,
///                     Name = "policyGroup2",
///                     PolicyMembers = new[]
///                     {
///                         new AzureNative.Network.Inputs.VpnServerConfigurationPolicyGroupMemberArgs
///                         {
///                             AttributeType = AzureNative.Network.VpnPolicyMemberAttributeType.CertificateGroupId,
///                             AttributeValue = "red.com",
///                             Name = "policy2",
///                         },
///                     },
///                     Priority = 0,
///                 },
///             },
///             RadiusClientRootCertificates = new[]
///             {
///                 new AzureNative.Network.Inputs.VpnServerConfigRadiusClientRootCertificateArgs
///                 {
///                     Name = "vpnServerConfigRadiusClientRootCert1",
///                     Thumbprint = "83FFBFC8848B5A5836C94D0112367E16148A286F",
///                 },
///             },
///             RadiusServerRootCertificates = new[]
///             {
///                 new AzureNative.Network.Inputs.VpnServerConfigRadiusServerRootCertificateArgs
///                 {
///                     Name = "vpnServerConfigRadiusServerRootCer1",
///                     PublicCertData = "MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuM",
///                 },
///             },
///             RadiusServers = new[]
///             {
///                 new AzureNative.Network.Inputs.RadiusServerArgs
///                 {
///                     RadiusServerAddress = "10.0.0.0",
///                     RadiusServerScore = 25,
///                     RadiusServerSecret = "radiusServerSecret",
///                 },
///             },
///             VpnClientIpsecPolicies = new[]
///             {
///                 new AzureNative.Network.Inputs.IpsecPolicyArgs
///                 {
///                     DhGroup = AzureNative.Network.DhGroup.DHGroup14,
///                     IkeEncryption = AzureNative.Network.IkeEncryption.AES256,
///                     IkeIntegrity = AzureNative.Network.IkeIntegrity.SHA384,
///                     IpsecEncryption = AzureNative.Network.IpsecEncryption.AES256,
///                     IpsecIntegrity = AzureNative.Network.IpsecIntegrity.SHA256,
///                     PfsGroup = AzureNative.Network.PfsGroup.PFS14,
///                     SaDataSizeKilobytes = 429497,
///                     SaLifeTimeSeconds = 86472,
///                 },
///             },
///             VpnClientRevokedCertificates = new[]
///             {
///                 new AzureNative.Network.Inputs.VpnServerConfigVpnClientRevokedCertificateArgs
///                 {
///                     Name = "vpnServerConfigVpnClientRevokedCert1",
///                     Thumbprint = "83FFBFC8848B5A5836C94D0112367E16148A286F",
///                 },
///             },
///             VpnClientRootCertificates = new[]
///             {
///                 new AzureNative.Network.Inputs.VpnServerConfigVpnClientRootCertificateArgs
///                 {
///                     Name = "vpnServerConfigVpnClientRootCert1",
///                     PublicCertData = "MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuN",
///                 },
///             },
///             VpnProtocols = new[]
///             {
///                 AzureNative.Network.VpnGatewayTunnelingProtocol.IkeV2,
///             },
///         },
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         VpnServerConfigurationName = "vpnServerConfiguration1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewVpnServerConfiguration(ctx, "vpnServerConfiguration", &network.VpnServerConfigurationArgs{
/// 			Location: pulumi.String("West US"),
/// 			Properties: &network.VpnServerConfigurationPropertiesArgs{
/// 				ConfigurationPolicyGroups: network.VpnServerConfigurationPolicyGroupArray{
/// 					&network.VpnServerConfigurationPolicyGroupArgs{
/// 						Id:        pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnServerConfigurations/vpnServerConfiguration1/vpnServerConfigurationPolicyGroups/policyGroup1"),
/// 						IsDefault: pulumi.Bool(true),
/// 						Name:      pulumi.String("policyGroup1"),
/// 						PolicyMembers: network.VpnServerConfigurationPolicyGroupMemberArray{
/// 							&network.VpnServerConfigurationPolicyGroupMemberArgs{
/// 								AttributeType:  pulumi.String(network.VpnPolicyMemberAttributeTypeRadiusAzureGroupId),
/// 								AttributeValue: pulumi.String("6ad1bd08"),
/// 								Name:           pulumi.String("policy1"),
/// 							},
/// 						},
/// 						Priority: pulumi.Int(0),
/// 					},
/// 					&network.VpnServerConfigurationPolicyGroupArgs{
/// 						Id:        pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnServerConfigurations/vpnServerConfiguration1/vpnServerConfigurationPolicyGroups/policyGroup2"),
/// 						IsDefault: pulumi.Bool(true),
/// 						Name:      pulumi.String("policyGroup2"),
/// 						PolicyMembers: network.VpnServerConfigurationPolicyGroupMemberArray{
/// 							&network.VpnServerConfigurationPolicyGroupMemberArgs{
/// 								AttributeType:  pulumi.String(network.VpnPolicyMemberAttributeTypeCertificateGroupId),
/// 								AttributeValue: pulumi.String("red.com"),
/// 								Name:           pulumi.String("policy2"),
/// 							},
/// 						},
/// 						Priority: pulumi.Int(0),
/// 					},
/// 				},
/// 				RadiusClientRootCertificates: network.VpnServerConfigRadiusClientRootCertificateArray{
/// 					&network.VpnServerConfigRadiusClientRootCertificateArgs{
/// 						Name:       pulumi.String("vpnServerConfigRadiusClientRootCert1"),
/// 						Thumbprint: pulumi.String("83FFBFC8848B5A5836C94D0112367E16148A286F"),
/// 					},
/// 				},
/// 				RadiusServerRootCertificates: network.VpnServerConfigRadiusServerRootCertificateArray{
/// 					&network.VpnServerConfigRadiusServerRootCertificateArgs{
/// 						Name:           pulumi.String("vpnServerConfigRadiusServerRootCer1"),
/// 						PublicCertData: pulumi.String("MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuM"),
/// 					},
/// 				},
/// 				RadiusServers: network.RadiusServerArray{
/// 					&network.RadiusServerArgs{
/// 						RadiusServerAddress: pulumi.String("10.0.0.0"),
/// 						RadiusServerScore:   pulumi.Float64(25),
/// 						RadiusServerSecret:  pulumi.String("radiusServerSecret"),
/// 					},
/// 				},
/// 				VpnClientIpsecPolicies: network.IpsecPolicyArray{
/// 					&network.IpsecPolicyArgs{
/// 						DhGroup:             pulumi.String(network.DhGroupDHGroup14),
/// 						IkeEncryption:       pulumi.String(network.IkeEncryptionAES256),
/// 						IkeIntegrity:        pulumi.String(network.IkeIntegritySHA384),
/// 						IpsecEncryption:     pulumi.String(network.IpsecEncryptionAES256),
/// 						IpsecIntegrity:      pulumi.String(network.IpsecIntegritySHA256),
/// 						PfsGroup:            pulumi.String(network.PfsGroupPFS14),
/// 						SaDataSizeKilobytes: pulumi.Int(429497),
/// 						SaLifeTimeSeconds:   pulumi.Int(86472),
/// 					},
/// 				},
/// 				VpnClientRevokedCertificates: network.VpnServerConfigVpnClientRevokedCertificateArray{
/// 					&network.VpnServerConfigVpnClientRevokedCertificateArgs{
/// 						Name:       pulumi.String("vpnServerConfigVpnClientRevokedCert1"),
/// 						Thumbprint: pulumi.String("83FFBFC8848B5A5836C94D0112367E16148A286F"),
/// 					},
/// 				},
/// 				VpnClientRootCertificates: network.VpnServerConfigVpnClientRootCertificateArray{
/// 					&network.VpnServerConfigVpnClientRootCertificateArgs{
/// 						Name:           pulumi.String("vpnServerConfigVpnClientRootCert1"),
/// 						PublicCertData: pulumi.String("MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuN"),
/// 					},
/// 				},
/// 				VpnProtocols: pulumi.StringArray{
/// 					pulumi.String(network.VpnGatewayTunnelingProtocolIkeV2),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			VpnServerConfigurationName: pulumi.String("vpnServerConfiguration1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.VpnServerConfiguration;
/// import com.pulumi.azurenative.network.VpnServerConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.VpnServerConfigurationPropertiesArgs;
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
///         var vpnServerConfiguration = new VpnServerConfiguration("vpnServerConfiguration", VpnServerConfigurationArgs.builder()
///             .location("West US")
///             .properties(VpnServerConfigurationPropertiesArgs.builder()
///                 .configurationPolicyGroups(
///                     VpnServerConfigurationPolicyGroupArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnServerConfigurations/vpnServerConfiguration1/vpnServerConfigurationPolicyGroups/policyGroup1")
///                         .isDefault(true)
///                         .name("policyGroup1")
///                         .policyMembers(VpnServerConfigurationPolicyGroupMemberArgs.builder()
///                             .attributeType("RadiusAzureGroupId")
///                             .attributeValue("6ad1bd08")
///                             .name("policy1")
///                             .build())
///                         .priority(0)
///                         .build(),
///                     VpnServerConfigurationPolicyGroupArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnServerConfigurations/vpnServerConfiguration1/vpnServerConfigurationPolicyGroups/policyGroup2")
///                         .isDefault(true)
///                         .name("policyGroup2")
///                         .policyMembers(VpnServerConfigurationPolicyGroupMemberArgs.builder()
///                             .attributeType("CertificateGroupId")
///                             .attributeValue("red.com")
///                             .name("policy2")
///                             .build())
///                         .priority(0)
///                         .build())
///                 .radiusClientRootCertificates(VpnServerConfigRadiusClientRootCertificateArgs.builder()
///                     .name("vpnServerConfigRadiusClientRootCert1")
///                     .thumbprint("83FFBFC8848B5A5836C94D0112367E16148A286F")
///                     .build())
///                 .radiusServerRootCertificates(VpnServerConfigRadiusServerRootCertificateArgs.builder()
///                     .name("vpnServerConfigRadiusServerRootCer1")
///                     .publicCertData("MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuM")
///                     .build())
///                 .radiusServers(RadiusServerArgs.builder()
///                     .radiusServerAddress("10.0.0.0")
///                     .radiusServerScore(25.0)
///                     .radiusServerSecret("radiusServerSecret")
///                     .build())
///                 .vpnClientIpsecPolicies(IpsecPolicyArgs.builder()
///                     .dhGroup("DHGroup14")
///                     .ikeEncryption("AES256")
///                     .ikeIntegrity("SHA384")
///                     .ipsecEncryption("AES256")
///                     .ipsecIntegrity("SHA256")
///                     .pfsGroup("PFS14")
///                     .saDataSizeKilobytes(429497)
///                     .saLifeTimeSeconds(86472)
///                     .build())
///                 .vpnClientRevokedCertificates(VpnServerConfigVpnClientRevokedCertificateArgs.builder()
///                     .name("vpnServerConfigVpnClientRevokedCert1")
///                     .thumbprint("83FFBFC8848B5A5836C94D0112367E16148A286F")
///                     .build())
///                 .vpnClientRootCertificates(VpnServerConfigVpnClientRootCertificateArgs.builder()
///                     .name("vpnServerConfigVpnClientRootCert1")
///                     .publicCertData("MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuN")
///                     .build())
///                 .vpnProtocols("IkeV2")
///                 .build())
///             .resourceGroupName("rg1")
///             .tags(Map.of("key1", "value1"))
///             .vpnServerConfigurationName("vpnServerConfiguration1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const vpnServerConfiguration = new azure_native.network.VpnServerConfiguration("vpnServerConfiguration", {
///     location: "West US",
///     properties: {
///         configurationPolicyGroups: [
///             {
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnServerConfigurations/vpnServerConfiguration1/vpnServerConfigurationPolicyGroups/policyGroup1",
///                 isDefault: true,
///                 name: "policyGroup1",
///                 policyMembers: [{
///                     attributeType: azure_native.network.VpnPolicyMemberAttributeType.RadiusAzureGroupId,
///                     attributeValue: "6ad1bd08",
///                     name: "policy1",
///                 }],
///                 priority: 0,
///             },
///             {
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnServerConfigurations/vpnServerConfiguration1/vpnServerConfigurationPolicyGroups/policyGroup2",
///                 isDefault: true,
///                 name: "policyGroup2",
///                 policyMembers: [{
///                     attributeType: azure_native.network.VpnPolicyMemberAttributeType.CertificateGroupId,
///                     attributeValue: "red.com",
///                     name: "policy2",
///                 }],
///                 priority: 0,
///             },
///         ],
///         radiusClientRootCertificates: [{
///             name: "vpnServerConfigRadiusClientRootCert1",
///             thumbprint: "83FFBFC8848B5A5836C94D0112367E16148A286F",
///         }],
///         radiusServerRootCertificates: [{
///             name: "vpnServerConfigRadiusServerRootCer1",
///             publicCertData: "MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuM",
///         }],
///         radiusServers: [{
///             radiusServerAddress: "10.0.0.0",
///             radiusServerScore: 25,
///             radiusServerSecret: "radiusServerSecret",
///         }],
///         vpnClientIpsecPolicies: [{
///             dhGroup: azure_native.network.DhGroup.DHGroup14,
///             ikeEncryption: azure_native.network.IkeEncryption.AES256,
///             ikeIntegrity: azure_native.network.IkeIntegrity.SHA384,
///             ipsecEncryption: azure_native.network.IpsecEncryption.AES256,
///             ipsecIntegrity: azure_native.network.IpsecIntegrity.SHA256,
///             pfsGroup: azure_native.network.PfsGroup.PFS14,
///             saDataSizeKilobytes: 429497,
///             saLifeTimeSeconds: 86472,
///         }],
///         vpnClientRevokedCertificates: [{
///             name: "vpnServerConfigVpnClientRevokedCert1",
///             thumbprint: "83FFBFC8848B5A5836C94D0112367E16148A286F",
///         }],
///         vpnClientRootCertificates: [{
///             name: "vpnServerConfigVpnClientRootCert1",
///             publicCertData: "MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuN",
///         }],
///         vpnProtocols: [azure_native.network.VpnGatewayTunnelingProtocol.IkeV2],
///     },
///     resourceGroupName: "rg1",
///     tags: {
///         key1: "value1",
///     },
///     vpnServerConfigurationName: "vpnServerConfiguration1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// vpn_server_configuration = azure_native.network.VpnServerConfiguration("vpnServerConfiguration",
///     location="West US",
///     properties={
///         "configuration_policy_groups": [
///             {
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnServerConfigurations/vpnServerConfiguration1/vpnServerConfigurationPolicyGroups/policyGroup1",
///                 "is_default": True,
///                 "name": "policyGroup1",
///                 "policy_members": [{
///                     "attribute_type": azure_native.network.VpnPolicyMemberAttributeType.RADIUS_AZURE_GROUP_ID,
///                     "attribute_value": "6ad1bd08",
///                     "name": "policy1",
///                 }],
///                 "priority": 0,
///             },
///             {
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnServerConfigurations/vpnServerConfiguration1/vpnServerConfigurationPolicyGroups/policyGroup2",
///                 "is_default": True,
///                 "name": "policyGroup2",
///                 "policy_members": [{
///                     "attribute_type": azure_native.network.VpnPolicyMemberAttributeType.CERTIFICATE_GROUP_ID,
///                     "attribute_value": "red.com",
///                     "name": "policy2",
///                 }],
///                 "priority": 0,
///             },
///         ],
///         "radius_client_root_certificates": [{
///             "name": "vpnServerConfigRadiusClientRootCert1",
///             "thumbprint": "83FFBFC8848B5A5836C94D0112367E16148A286F",
///         }],
///         "radius_server_root_certificates": [{
///             "name": "vpnServerConfigRadiusServerRootCer1",
///             "public_cert_data": "MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuM",
///         }],
///         "radius_servers": [{
///             "radius_server_address": "10.0.0.0",
///             "radius_server_score": 25,
///             "radius_server_secret": "radiusServerSecret",
///         }],
///         "vpn_client_ipsec_policies": [{
///             "dh_group": azure_native.network.DhGroup.DH_GROUP14,
///             "ike_encryption": azure_native.network.IkeEncryption.AES256,
///             "ike_integrity": azure_native.network.IkeIntegrity.SHA384,
///             "ipsec_encryption": azure_native.network.IpsecEncryption.AES256,
///             "ipsec_integrity": azure_native.network.IpsecIntegrity.SHA256,
///             "pfs_group": azure_native.network.PfsGroup.PFS14,
///             "sa_data_size_kilobytes": 429497,
///             "sa_life_time_seconds": 86472,
///         }],
///         "vpn_client_revoked_certificates": [{
///             "name": "vpnServerConfigVpnClientRevokedCert1",
///             "thumbprint": "83FFBFC8848B5A5836C94D0112367E16148A286F",
///         }],
///         "vpn_client_root_certificates": [{
///             "name": "vpnServerConfigVpnClientRootCert1",
///             "public_cert_data": "MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuN",
///         }],
///         "vpn_protocols": [azure_native.network.VpnGatewayTunnelingProtocol.IKE_V2],
///     },
///     resource_group_name="rg1",
///     tags={
///         "key1": "value1",
///     },
///     vpn_server_configuration_name="vpnServerConfiguration1")
///
/// ```
///
/// ```yaml
/// resources:
///   vpnServerConfiguration:
///     type: azure-native:network:VpnServerConfiguration
///     properties:
///       location: West US
///       properties:
///         configurationPolicyGroups:
///           - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnServerConfigurations/vpnServerConfiguration1/vpnServerConfigurationPolicyGroups/policyGroup1
///             isDefault: true
///             name: policyGroup1
///             policyMembers:
///               - attributeType: RadiusAzureGroupId
///                 attributeValue: 6ad1bd08
///                 name: policy1
///             priority: 0
///           - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnServerConfigurations/vpnServerConfiguration1/vpnServerConfigurationPolicyGroups/policyGroup2
///             isDefault: true
///             name: policyGroup2
///             policyMembers:
///               - attributeType: CertificateGroupId
///                 attributeValue: red.com
///                 name: policy2
///             priority: 0
///         radiusClientRootCertificates:
///           - name: vpnServerConfigRadiusClientRootCert1
///             thumbprint: 83FFBFC8848B5A5836C94D0112367E16148A286F
///         radiusServerRootCertificates:
///           - name: vpnServerConfigRadiusServerRootCer1
///             publicCertData: MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuM
///         radiusServers:
///           - radiusServerAddress: 10.0.0.0
///             radiusServerScore: 25
///             radiusServerSecret: radiusServerSecret
///         vpnClientIpsecPolicies:
///           - dhGroup: DHGroup14
///             ikeEncryption: AES256
///             ikeIntegrity: SHA384
///             ipsecEncryption: AES256
///             ipsecIntegrity: SHA256
///             pfsGroup: PFS14
///             saDataSizeKilobytes: 429497
///             saLifeTimeSeconds: 86472
///         vpnClientRevokedCertificates:
///           - name: vpnServerConfigVpnClientRevokedCert1
///             thumbprint: 83FFBFC8848B5A5836C94D0112367E16148A286F
///         vpnClientRootCertificates:
///           - name: vpnServerConfigVpnClientRootCert1
///             publicCertData: MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuN
///         vpnProtocols:
///           - IkeV2
///       resourceGroupName: rg1
///       tags:
///         key1: value1
///       vpnServerConfigurationName: vpnServerConfiguration1
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:network:VpnServerConfiguration vpnServerConfiguration1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/vpnServerConfigurations/{vpnServerConfigurationName}
/// ```
class VpnServerConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Properties of the P2SVpnServer configuration.
  late final pulumi.Output<VpnServerConfigurationPropertiesResponse> properties;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [VpnServerConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpnServerConfiguration]. {@macro pulumi_network_vpn_server_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpnServerConfiguration(
    String name, {
    VpnServerConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:VpnServerConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<VpnServerConfigurationPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VpnServerConfigurationPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
