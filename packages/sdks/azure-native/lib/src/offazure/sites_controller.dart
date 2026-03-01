import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_agent_properties_response.dart';
import 'site_spn_properties_response.dart';
import 'sites_controller_args.dart';
import 'system_data_response.dart';

/// A VmwareSite
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-06.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SitesController_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sitesController = new AzureNative.OffAzure.SitesController("sitesController", new()
///     {
///         AgentDetails = new AzureNative.OffAzure.Inputs.SiteAgentPropertiesArgs
///         {
///             KeyVaultId = "chqtsrpahfayfuqrusmbakvgdqny",
///             KeyVaultUri = "w",
///         },
///         ApplianceName = "nhhwywytwjbhjtpwxkcxqhqmcrowg",
///         DiscoverySolutionId = "dlsekq",
///         Location = "wcccoelallobfu",
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
///         SiteName = "3w-E-i5L",
///         Tags =
///         {
///             { "key2178", "gfjjytrnctgvmi" },
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
/// 		_, err := offazure.NewSitesController(ctx, "sitesController", &offazure.SitesControllerArgs{
/// 			AgentDetails: &offazure.SiteAgentPropertiesArgs{
/// 				KeyVaultId:  pulumi.String("chqtsrpahfayfuqrusmbakvgdqny"),
/// 				KeyVaultUri: pulumi.String("w"),
/// 			},
/// 			ApplianceName:       pulumi.String("nhhwywytwjbhjtpwxkcxqhqmcrowg"),
/// 			DiscoverySolutionId: pulumi.String("dlsekq"),
/// 			Location:            pulumi.String("wcccoelallobfu"),
/// 			ResourceGroupName:   pulumi.String("rgmigrate"),
/// 			ServicePrincipalIdentityDetails: &offazure.SiteSpnPropertiesArgs{
/// 				AadAuthority:  pulumi.String("pykd"),
/// 				ApplicationId: pulumi.String("lg"),
/// 				Audience:      pulumi.String("emwqxwwqqzwk"),
/// 				ObjectId:      pulumi.String("etkbysdzluxvpxkciooxjjmvl"),
/// 				RawCertData:   pulumi.String("kewdmdjrt"),
/// 				TenantId:      pulumi.String("aqvsxunpdlrxclnpudkykycsdf"),
/// 			},
/// 			SiteName: pulumi.String("3w-E-i5L"),
/// 			Tags: pulumi.StringMap{
/// 				"key2178": pulumi.String("gfjjytrnctgvmi"),
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
/// import com.pulumi.azurenative.offazure.SitesController;
/// import com.pulumi.azurenative.offazure.SitesControllerArgs;
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
///         var sitesController = new SitesController("sitesController", SitesControllerArgs.builder()
///             .agentDetails(SiteAgentPropertiesArgs.builder()
///                 .keyVaultId("chqtsrpahfayfuqrusmbakvgdqny")
///                 .keyVaultUri("w")
///                 .build())
///             .applianceName("nhhwywytwjbhjtpwxkcxqhqmcrowg")
///             .discoverySolutionId("dlsekq")
///             .location("wcccoelallobfu")
///             .resourceGroupName("rgmigrate")
///             .servicePrincipalIdentityDetails(SiteSpnPropertiesArgs.builder()
///                 .aadAuthority("pykd")
///                 .applicationId("lg")
///                 .audience("emwqxwwqqzwk")
///                 .objectId("etkbysdzluxvpxkciooxjjmvl")
///                 .rawCertData("kewdmdjrt")
///                 .tenantId("aqvsxunpdlrxclnpudkykycsdf")
///                 .build())
///             .siteName("3w-E-i5L")
///             .tags(Map.of("key2178", "gfjjytrnctgvmi"))
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
/// const sitesController = new azure_native.offazure.SitesController("sitesController", {
///     agentDetails: {
///         keyVaultId: "chqtsrpahfayfuqrusmbakvgdqny",
///         keyVaultUri: "w",
///     },
///     applianceName: "nhhwywytwjbhjtpwxkcxqhqmcrowg",
///     discoverySolutionId: "dlsekq",
///     location: "wcccoelallobfu",
///     resourceGroupName: "rgmigrate",
///     servicePrincipalIdentityDetails: {
///         aadAuthority: "pykd",
///         applicationId: "lg",
///         audience: "emwqxwwqqzwk",
///         objectId: "etkbysdzluxvpxkciooxjjmvl",
///         rawCertData: "kewdmdjrt",
///         tenantId: "aqvsxunpdlrxclnpudkykycsdf",
///     },
///     siteName: "3w-E-i5L",
///     tags: {
///         key2178: "gfjjytrnctgvmi",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sites_controller = azure_native.offazure.SitesController("sitesController",
///     agent_details={
///         "key_vault_id": "chqtsrpahfayfuqrusmbakvgdqny",
///         "key_vault_uri": "w",
///     },
///     appliance_name="nhhwywytwjbhjtpwxkcxqhqmcrowg",
///     discovery_solution_id="dlsekq",
///     location="wcccoelallobfu",
///     resource_group_name="rgmigrate",
///     service_principal_identity_details={
///         "aad_authority": "pykd",
///         "application_id": "lg",
///         "audience": "emwqxwwqqzwk",
///         "object_id": "etkbysdzluxvpxkciooxjjmvl",
///         "raw_cert_data": "kewdmdjrt",
///         "tenant_id": "aqvsxunpdlrxclnpudkykycsdf",
///     },
///     site_name="3w-E-i5L",
///     tags={
///         "key2178": "gfjjytrnctgvmi",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   sitesController:
///     type: azure-native:offazure:SitesController
///     properties:
///       agentDetails:
///         keyVaultId: chqtsrpahfayfuqrusmbakvgdqny
///         keyVaultUri: w
///       applianceName: nhhwywytwjbhjtpwxkcxqhqmcrowg
///       discoverySolutionId: dlsekq
///       location: wcccoelallobfu
///       resourceGroupName: rgmigrate
///       servicePrincipalIdentityDetails:
///         aadAuthority: pykd
///         applicationId: lg
///         audience: emwqxwwqqzwk
///         objectId: etkbysdzluxvpxkciooxjjmvl
///         rawCertData: kewdmdjrt
///         tenantId: aqvsxunpdlrxclnpudkykycsdf
///       siteName: 3w-E-i5L
///       tags:
///         key2178: gfjjytrnctgvmi
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
/// $ pulumi import azure-native:offazure:SitesController sfckwpgjzbycsruhrfaew /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OffAzure/vmwareSites/{siteName}
/// ```
class SitesController extends pulumi.CustomResource {
  /// Gets or sets the on-premises agent details.
  late final pulumi.Output<SiteAgentPropertiesResponse?> agentDetails;
  /// Gets or sets the Appliance Name.
  late final pulumi.Output<String?> applianceName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the ARM ID of migration hub solution for SDS.
  late final pulumi.Output<String?> discoverySolutionId;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Gets the Master Site this site is linked to.
  late final pulumi.Output<String> masterSiteId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
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

  /// Creates a new [SitesController].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SitesController]. {@macro pulumi_offazure_sites_controller_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SitesController(
    String name, {
    SitesControllerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:offazure:SitesController',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentDetails = registerOutput<SiteAgentPropertiesResponse?>('agentDetails');
    this.applianceName = registerOutput<String?>('applianceName');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.discoverySolutionId = registerOutput<String?>('discoverySolutionId');
    this.eTag = registerOutput<String>('eTag');
    this.location = registerOutput<String>('location');
    this.masterSiteId = registerOutput<String>('masterSiteId');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.serviceEndpoint = registerOutput<String>('serviceEndpoint');
    this.servicePrincipalIdentityDetails = registerOutput<SiteSpnPropertiesResponse?>('servicePrincipalIdentityDetails');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
