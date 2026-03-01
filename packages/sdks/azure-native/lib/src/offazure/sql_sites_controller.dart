import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_appliance_properties_response.dart';
import 'sql_sites_controller_args.dart';
import 'system_data_response.dart';

/// SQL site web model.
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-06.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SqlSitesController_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlSitesController = new AzureNative.OffAzure.SqlSitesController("sqlSitesController", new()
///     {
///         DiscoveryScenario = AzureNative.OffAzure.SqlSitePropertiesDiscoveryScenario.Migrate,
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
///         SiteName = "H9S6I-U9UI5-J1",
///         SqlSiteName = "6G-FTRBDS-tN1-C6",
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
/// 		_, err := offazure.NewSqlSitesController(ctx, "sqlSitesController", &offazure.SqlSitesControllerArgs{
/// 			DiscoveryScenario: pulumi.String(offazure.SqlSitePropertiesDiscoveryScenarioMigrate),
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
/// 			SiteName:    pulumi.String("H9S6I-U9UI5-J1"),
/// 			SqlSiteName: pulumi.String("6G-FTRBDS-tN1-C6"),
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
/// import com.pulumi.azurenative.offazure.SqlSitesController;
/// import com.pulumi.azurenative.offazure.SqlSitesControllerArgs;
/// import com.pulumi.azurenative.offazure.inputs.SiteAppliancePropertiesArgs;
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
///         var sqlSitesController = new SqlSitesController("sqlSitesController", SqlSitesControllerArgs.builder()
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
///             .siteName("H9S6I-U9UI5-J1")
///             .sqlSiteName("6G-FTRBDS-tN1-C6")
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
/// const sqlSitesController = new azure_native.offazure.SqlSitesController("sqlSitesController", {
///     discoveryScenario: azure_native.offazure.SqlSitePropertiesDiscoveryScenario.Migrate,
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
///     siteName: "H9S6I-U9UI5-J1",
///     sqlSiteName: "6G-FTRBDS-tN1-C6",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_sites_controller = azure_native.offazure.SqlSitesController("sqlSitesController",
///     discovery_scenario=azure_native.offazure.SqlSitePropertiesDiscoveryScenario.MIGRATE,
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
///     site_name="H9S6I-U9UI5-J1",
///     sql_site_name="6G-FTRBDS-tN1-C6")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlSitesController:
///     type: azure-native:offazure:SqlSitesController
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
///       siteName: H9S6I-U9UI5-J1
///       sqlSiteName: 6G-FTRBDS-tN1-C6
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
/// $ pulumi import azure-native:offazure:SqlSitesController hdz /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OffAzure/masterSites/{siteName}/sqlSites/{sqlSiteName}
/// ```
class SqlSitesController extends pulumi.CustomResource {
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
  late final pulumi.Output<List<SiteAppliancePropertiesResponse>?> siteAppliancePropertiesCollection;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SqlSitesController].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlSitesController]. {@macro pulumi_offazure_sql_sites_controller_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlSitesController(
    String name, {
    SqlSitesControllerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:offazure:SqlSitesController',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.discoveryScenario = registerOutput<String?>('discoveryScenario');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.serviceEndpoint = registerOutput<String>('serviceEndpoint');
    this.siteAppliancePropertiesCollection = registerOutput<List<SiteAppliancePropertiesResponse>?>('siteAppliancePropertiesCollection');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
