import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyperv_sites_controller_args.dart';
import 'site_agent_properties_response.dart';
import 'site_spn_properties_response.dart';
import 'system_data_response.dart';

/// A HyperV SiteResource
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-06.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### HypervSitesController_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hypervSitesController = new AzureNative.OffAzure.HypervSitesController("hypervSitesController", new()
///     {
///         AgentDetails = new AzureNative.OffAzure.Inputs.SiteAgentPropertiesArgs
///         {
///             KeyVaultId = "chqtsrpahfayfuqrusmbakvgdqny",
///             KeyVaultUri = "w",
///         },
///         ApplianceName = "bplbumeu",
///         DiscoverySolutionId = "sqgvbumhsdeunojunhypdunvcutlev",
///         Location = "jzfqhihimugilssu",
///         ProvisioningState = AzureNative.OffAzure.ProvisioningState.Created,
///         ResourceGroupName = "rgmigrate",
///         ServicePrincipalIdentityDetails = new AzureNative.OffAzure.Inputs.SiteSpnPropertiesArgs
///         {
///             AadAuthority = "pykd",
///             ApplicationId = "lg",
///             Audience = "emwqxwwqqzwk",
///             ObjectId = "etkbysdzluxvpxkciooxjjmvl",
///             RawCertData = "kewdmdjrt",
///             TenantId = "aqvsxunpdlrxclnpudkykycsdf",
///         },
///         SiteName = "B9be-JfY48Vc6SDN8d1CCp-",
///         Tags =
///         {
///             { "key9210", "yitjyobwfkbprpkfcmogsywoot" },
///         },
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
/// 	offazure "github.com/pulumi/pulumi-azure-native-sdk/offazure/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := offazure.NewHypervSitesController(ctx, "hypervSitesController", &offazure.HypervSitesControllerArgs{
/// 			AgentDetails: &offazure.SiteAgentPropertiesArgs{
/// 				KeyVaultId:  pulumi.String("chqtsrpahfayfuqrusmbakvgdqny"),
/// 				KeyVaultUri: pulumi.String("w"),
/// 			},
/// 			ApplianceName:       pulumi.String("bplbumeu"),
/// 			DiscoverySolutionId: pulumi.String("sqgvbumhsdeunojunhypdunvcutlev"),
/// 			Location:            pulumi.String("jzfqhihimugilssu"),
/// 			ProvisioningState:   pulumi.String(offazure.ProvisioningStateCreated),
/// 			ResourceGroupName:   pulumi.String("rgmigrate"),
/// 			ServicePrincipalIdentityDetails: &offazure.SiteSpnPropertiesArgs{
/// 				AadAuthority:  pulumi.String("pykd"),
/// 				ApplicationId: pulumi.String("lg"),
/// 				Audience:      pulumi.String("emwqxwwqqzwk"),
/// 				ObjectId:      pulumi.String("etkbysdzluxvpxkciooxjjmvl"),
/// 				RawCertData:   pulumi.String("kewdmdjrt"),
/// 				TenantId:      pulumi.String("aqvsxunpdlrxclnpudkykycsdf"),
/// 			},
/// 			SiteName: pulumi.String("B9be-JfY48Vc6SDN8d1CCp-"),
/// 			Tags: pulumi.StringMap{
/// 				"key9210": pulumi.String("yitjyobwfkbprpkfcmogsywoot"),
/// 			},
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
/// import com.pulumi.azurenative.offazure.HypervSitesController;
/// import com.pulumi.azurenative.offazure.HypervSitesControllerArgs;
/// import com.pulumi.azurenative.offazure.inputs.SiteAgentPropertiesArgs;
/// import com.pulumi.azurenative.offazure.inputs.SiteSpnPropertiesArgs;
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
///         var hypervSitesController = new HypervSitesController("hypervSitesController", HypervSitesControllerArgs.builder()
///             .agentDetails(SiteAgentPropertiesArgs.builder()
///                 .keyVaultId("chqtsrpahfayfuqrusmbakvgdqny")
///                 .keyVaultUri("w")
///                 .build())
///             .applianceName("bplbumeu")
///             .discoverySolutionId("sqgvbumhsdeunojunhypdunvcutlev")
///             .location("jzfqhihimugilssu")
///             .provisioningState("Created")
///             .resourceGroupName("rgmigrate")
///             .servicePrincipalIdentityDetails(SiteSpnPropertiesArgs.builder()
///                 .aadAuthority("pykd")
///                 .applicationId("lg")
///                 .audience("emwqxwwqqzwk")
///                 .objectId("etkbysdzluxvpxkciooxjjmvl")
///                 .rawCertData("kewdmdjrt")
///                 .tenantId("aqvsxunpdlrxclnpudkykycsdf")
///                 .build())
///             .siteName("B9be-JfY48Vc6SDN8d1CCp-")
///             .tags(Map.of("key9210", "yitjyobwfkbprpkfcmogsywoot"))
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
/// const hypervSitesController = new azure_native.offazure.HypervSitesController("hypervSitesController", {
///     agentDetails: {
///         keyVaultId: "chqtsrpahfayfuqrusmbakvgdqny",
///         keyVaultUri: "w",
///     },
///     applianceName: "bplbumeu",
///     discoverySolutionId: "sqgvbumhsdeunojunhypdunvcutlev",
///     location: "jzfqhihimugilssu",
///     provisioningState: azure_native.offazure.ProvisioningState.Created,
///     resourceGroupName: "rgmigrate",
///     servicePrincipalIdentityDetails: {
///         aadAuthority: "pykd",
///         applicationId: "lg",
///         audience: "emwqxwwqqzwk",
///         objectId: "etkbysdzluxvpxkciooxjjmvl",
///         rawCertData: "kewdmdjrt",
///         tenantId: "aqvsxunpdlrxclnpudkykycsdf",
///     },
///     siteName: "B9be-JfY48Vc6SDN8d1CCp-",
///     tags: {
///         key9210: "yitjyobwfkbprpkfcmogsywoot",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// hyperv_sites_controller = azure_native.offazure.HypervSitesController("hypervSitesController",
///     agent_details={
///         "key_vault_id": "chqtsrpahfayfuqrusmbakvgdqny",
///         "key_vault_uri": "w",
///     },
///     appliance_name="bplbumeu",
///     discovery_solution_id="sqgvbumhsdeunojunhypdunvcutlev",
///     location="jzfqhihimugilssu",
///     provisioning_state=azure_native.offazure.ProvisioningState.CREATED,
///     resource_group_name="rgmigrate",
///     service_principal_identity_details={
///         "aad_authority": "pykd",
///         "application_id": "lg",
///         "audience": "emwqxwwqqzwk",
///         "object_id": "etkbysdzluxvpxkciooxjjmvl",
///         "raw_cert_data": "kewdmdjrt",
///         "tenant_id": "aqvsxunpdlrxclnpudkykycsdf",
///     },
///     site_name="B9be-JfY48Vc6SDN8d1CCp-",
///     tags={
///         "key9210": "yitjyobwfkbprpkfcmogsywoot",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   hypervSitesController:
///     type: azure-native:offazure:HypervSitesController
///     properties:
///       agentDetails:
///         keyVaultId: chqtsrpahfayfuqrusmbakvgdqny
///         keyVaultUri: w
///       applianceName: bplbumeu
///       discoverySolutionId: sqgvbumhsdeunojunhypdunvcutlev
///       location: jzfqhihimugilssu
///       provisioningState: Created
///       resourceGroupName: rgmigrate
///       servicePrincipalIdentityDetails:
///         aadAuthority: pykd
///         applicationId: lg
///         audience: emwqxwwqqzwk
///         objectId: etkbysdzluxvpxkciooxjjmvl
///         rawCertData: kewdmdjrt
///         tenantId: aqvsxunpdlrxclnpudkykycsdf
///       siteName: B9be-JfY48Vc6SDN8d1CCp-
///       tags:
///         key9210: yitjyobwfkbprpkfcmogsywoot
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
/// $ pulumi import azure-native:offazure:HypervSitesController njvmqppcbjrykvbqc /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OffAzure/hypervSites/{siteName}
/// ```
class HypervSitesController extends pulumi.CustomResource {
  /// Gets or sets the on-premises agent details.
  late final pulumi.Output<SiteAgentPropertiesResponse?> agentDetails;
  /// Gets or sets the Appliance Name.
  late final pulumi.Output<String?> applianceName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the ARM ID of migration hub solution for SDS.
  late final pulumi.Output<String?> discoverySolutionId;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Gets the Master Site this site is linked to.
  late final pulumi.Output<String> masterSiteId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String?> provisioningState;
  /// Gets the service endpoint.
  late final pulumi.Output<String> serviceEndpoint;
  /// Gets or sets the service principal identity details used by agent for
  /// communication
  /// to the service.
  late final pulumi.Output<SiteSpnPropertiesResponse?> servicePrincipalIdentityDetails;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [HypervSitesController].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HypervSitesController]. {@macro pulumi_offazure_hyperv_sites_controller_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HypervSitesController(
    String name, {
    HypervSitesControllerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:offazure:HypervSitesController',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentDetails = registerOutput<SiteAgentPropertiesResponse?>('agentDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SiteAgentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    applianceName = registerOutput<String?>('applianceName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    discoverySolutionId = registerOutput<String?>('discoverySolutionId');
    location = registerOutput<String>('location');
    masterSiteId = registerOutput<String>('masterSiteId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String?>('provisioningState');
    serviceEndpoint = registerOutput<String>('serviceEndpoint');
    servicePrincipalIdentityDetails = registerOutput<SiteSpnPropertiesResponse?>('servicePrincipalIdentityDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SiteSpnPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
