import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'web_app_sites_controller_args.dart';

/// WebApp site web model.
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-06.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WebAppSitesController_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webAppSitesController = new AzureNative.OffAzure.WebAppSitesController("webAppSitesController", new()
///     {
///         DiscoveryScenario = AzureNative.OffAzure.WebAppSitePropertiesDiscoveryScenario.Migrate,
///         ResourceGroupName = "rgmigrate",
///         SiteAppliancePropertiesCollection = new[]
///         {
///             new AzureNative.OffAzure.Inputs.SiteAppliancePropertiesArgs
///             {
///                 AgentDetails = new AzureNative.OffAzure.Inputs.SiteAgentPropertiesArgs
///                 {
///                     KeyVaultId = "chqtsrpahfayfuqrusmbakvgdqny",
///                     KeyVaultUri = "w",
///                 },
///                 ApplianceName = "jqv",
///                 ServicePrincipalIdentityDetails = new AzureNative.OffAzure.Inputs.SiteSpnPropertiesArgs
///                 {
///                     AadAuthority = "pykd",
///                     ApplicationId = "lg",
///                     Audience = "emwqxwwqqzwk",
///                     ObjectId = "etkbysdzluxvpxkciooxjjmvl",
///                     RawCertData = "kewdmdjrt",
///                     TenantId = "aqvsxunpdlrxclnpudkykycsdf",
///                 },
///             },
///         },
///         SiteName = "57NK0P6SR1J11IDI-JyJ9",
///         WebAppSiteName = "5-oF2-s1LNU0-NQ820gA4D4t",
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
/// 		_, err := offazure.NewWebAppSitesController(ctx, "webAppSitesController", &offazure.WebAppSitesControllerArgs{
/// 			DiscoveryScenario: pulumi.String(offazure.WebAppSitePropertiesDiscoveryScenarioMigrate),
/// 			ResourceGroupName: pulumi.String("rgmigrate"),
/// 			SiteAppliancePropertiesCollection: offazure.SiteAppliancePropertiesArray{
/// 				&offazure.SiteAppliancePropertiesArgs{
/// 					AgentDetails: &offazure.SiteAgentPropertiesArgs{
/// 						KeyVaultId:  pulumi.String("chqtsrpahfayfuqrusmbakvgdqny"),
/// 						KeyVaultUri: pulumi.String("w"),
/// 					},
/// 					ApplianceName: pulumi.String("jqv"),
/// 					ServicePrincipalIdentityDetails: &offazure.SiteSpnPropertiesArgs{
/// 						AadAuthority:  pulumi.String("pykd"),
/// 						ApplicationId: pulumi.String("lg"),
/// 						Audience:      pulumi.String("emwqxwwqqzwk"),
/// 						ObjectId:      pulumi.String("etkbysdzluxvpxkciooxjjmvl"),
/// 						RawCertData:   pulumi.String("kewdmdjrt"),
/// 						TenantId:      pulumi.String("aqvsxunpdlrxclnpudkykycsdf"),
/// 					},
/// 				},
/// 			},
/// 			SiteName:       pulumi.String("57NK0P6SR1J11IDI-JyJ9"),
/// 			WebAppSiteName: pulumi.String("5-oF2-s1LNU0-NQ820gA4D4t"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_offazure_webappsitescontroller" "webAppSitesController" {
///   discovery_scenario  = "Migrate"
///   resource_group_name = "rgmigrate"
///   site_appliance_properties_collection {
///     agent_details = {
///       key_vault_id  = "chqtsrpahfayfuqrusmbakvgdqny"
///       key_vault_uri = "w"
///     }
///     appliance_name = "jqv"
///     service_principal_identity_details = {
///       aad_authority  = "pykd"
///       application_id = "lg"
///       audience       = "emwqxwwqqzwk"
///       object_id      = "etkbysdzluxvpxkciooxjjmvl"
///       raw_cert_data  = "kewdmdjrt"
///       tenant_id      = "aqvsxunpdlrxclnpudkykycsdf"
///     }
///   }
///   site_name         = "57NK0P6SR1J11IDI-JyJ9"
///   web_app_site_name = "5-oF2-s1LNU0-NQ820gA4D4t"
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
/// import com.pulumi.azurenative.offazure.WebAppSitesController;
/// import com.pulumi.azurenative.offazure.WebAppSitesControllerArgs;
/// import com.pulumi.azurenative.offazure.inputs.SiteAppliancePropertiesArgs;
/// import com.pulumi.azurenative.offazure.inputs.SiteAgentPropertiesArgs;
/// import com.pulumi.azurenative.offazure.inputs.SiteSpnPropertiesArgs;
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
///         var webAppSitesController = new WebAppSitesController("webAppSitesController", WebAppSitesControllerArgs.builder()
///             .discoveryScenario("Migrate")
///             .resourceGroupName("rgmigrate")
///             .siteAppliancePropertiesCollection(SiteAppliancePropertiesArgs.builder()
///                 .agentDetails(SiteAgentPropertiesArgs.builder()
///                     .keyVaultId("chqtsrpahfayfuqrusmbakvgdqny")
///                     .keyVaultUri("w")
///                     .build())
///                 .applianceName("jqv")
///                 .servicePrincipalIdentityDetails(SiteSpnPropertiesArgs.builder()
///                     .aadAuthority("pykd")
///                     .applicationId("lg")
///                     .audience("emwqxwwqqzwk")
///                     .objectId("etkbysdzluxvpxkciooxjjmvl")
///                     .rawCertData("kewdmdjrt")
///                     .tenantId("aqvsxunpdlrxclnpudkykycsdf")
///                     .build())
///                 .build())
///             .siteName("57NK0P6SR1J11IDI-JyJ9")
///             .webAppSiteName("5-oF2-s1LNU0-NQ820gA4D4t")
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
/// const webAppSitesController = new azure_native.offazure.WebAppSitesController("webAppSitesController", {
///     discoveryScenario: azure_native.offazure.WebAppSitePropertiesDiscoveryScenario.Migrate,
///     resourceGroupName: "rgmigrate",
///     siteAppliancePropertiesCollection: [{
///         agentDetails: {
///             keyVaultId: "chqtsrpahfayfuqrusmbakvgdqny",
///             keyVaultUri: "w",
///         },
///         applianceName: "jqv",
///         servicePrincipalIdentityDetails: {
///             aadAuthority: "pykd",
///             applicationId: "lg",
///             audience: "emwqxwwqqzwk",
///             objectId: "etkbysdzluxvpxkciooxjjmvl",
///             rawCertData: "kewdmdjrt",
///             tenantId: "aqvsxunpdlrxclnpudkykycsdf",
///         },
///     }],
///     siteName: "57NK0P6SR1J11IDI-JyJ9",
///     webAppSiteName: "5-oF2-s1LNU0-NQ820gA4D4t",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_app_sites_controller = azure_native.offazure.WebAppSitesController("webAppSitesController",
///     discovery_scenario=azure_native.offazure.WebAppSitePropertiesDiscoveryScenario.MIGRATE,
///     resource_group_name="rgmigrate",
///     site_appliance_properties_collection=[{
///         "agent_details": {
///             "key_vault_id": "chqtsrpahfayfuqrusmbakvgdqny",
///             "key_vault_uri": "w",
///         },
///         "appliance_name": "jqv",
///         "service_principal_identity_details": {
///             "aad_authority": "pykd",
///             "application_id": "lg",
///             "audience": "emwqxwwqqzwk",
///             "object_id": "etkbysdzluxvpxkciooxjjmvl",
///             "raw_cert_data": "kewdmdjrt",
///             "tenant_id": "aqvsxunpdlrxclnpudkykycsdf",
///         },
///     }],
///     site_name="57NK0P6SR1J11IDI-JyJ9",
///     web_app_site_name="5-oF2-s1LNU0-NQ820gA4D4t")
///
/// ```
///
/// ```yaml
/// resources:
///   webAppSitesController:
///     type: azure-native:offazure:WebAppSitesController
///     properties:
///       discoveryScenario: Migrate
///       resourceGroupName: rgmigrate
///       siteAppliancePropertiesCollection:
///         - agentDetails:
///             keyVaultId: chqtsrpahfayfuqrusmbakvgdqny
///             keyVaultUri: w
///           applianceName: jqv
///           servicePrincipalIdentityDetails:
///             aadAuthority: pykd
///             applicationId: lg
///             audience: emwqxwwqqzwk
///             objectId: etkbysdzluxvpxkciooxjjmvl
///             rawCertData: kewdmdjrt
///             tenantId: aqvsxunpdlrxclnpudkykycsdf
///       siteName: 57NK0P6SR1J11IDI-JyJ9
///       webAppSiteName: 5-oF2-s1LNU0-NQ820gA4D4t
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
/// $ pulumi import azure-native:offazure:WebAppSitesController mgccpv /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OffAzure/masterSites/{siteName}/webAppSites/{webAppSiteName}
/// ```
class WebAppSitesController extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the discovery scenario.
  late final pulumi.Output<String?> discoveryScenario;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// provisioning state enum
  late final pulumi.Output<String> provisioningState;
  /// Gets the service endpoint.
  late final pulumi.Output<String> serviceEndpoint;
  /// Gets or sets the appliance details used by service to communicate
  ///
  /// to the appliance.
  late final pulumi.Output<List<Map<String, dynamic>>?> siteAppliancePropertiesCollection;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppSitesController].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppSitesController]. {@macro pulumi_offazure_web_app_sites_controller_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppSitesController(
    String name, {
    WebAppSitesControllerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:offazure:WebAppSitesController',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    discoveryScenario = registerOutput<String?>('discoveryScenario');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    serviceEndpoint = registerOutput<String>('serviceEndpoint');
    siteAppliancePropertiesCollection = registerOutput<List<Map<String, dynamic>>?>('siteAppliancePropertiesCollection');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
