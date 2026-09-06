import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'threat_intelligence_indicator_args.dart';

/// Threat intelligence information object.
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update a threat Intelligence indicator
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var threatIntelligenceIndicator = new AzureNative.SecurityInsights.ThreatIntelligenceIndicator("threatIntelligenceIndicator", new()
///     {
///         Confidence = 78,
///         CreatedByRef = "contoso@contoso.com",
///         Description = "debugging indicators",
///         DisplayName = "new schema",
///         ExternalReferences = new[] {},
///         GranularMarkings = new[] {},
///         KillChainPhases = new[] {},
///         Kind = "indicator",
///         Labels = new[] {},
///         Modified = "",
///         Name = "d9cd6f0b-96b9-3984-17cd-a779d1e15a93",
///         Pattern = "[url:value = 'https://www.contoso.com']",
///         PatternType = "url",
///         ResourceGroupName = "myRg",
///         Revoked = false,
///         Source = "Azure Sentinel",
///         ThreatIntelligenceTags = new[]
///         {
///             "new schema",
///         },
///         ThreatTypes = new[]
///         {
///             "compromised",
///         },
///         ValidFrom = "2020-04-15T17:44:00.114052Z",
///         ValidUntil = "",
///         WorkspaceName = "myWorkspace",
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
/// 	securityinsights "github.com/pulumi/pulumi-azure-native-sdk/securityinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityinsights.NewThreatIntelligenceIndicator(ctx, "threatIntelligenceIndicator", &securityinsights.ThreatIntelligenceIndicatorArgs{
/// 			Confidence:         pulumi.Int(78),
/// 			CreatedByRef:       pulumi.String("contoso@contoso.com"),
/// 			Description:        pulumi.String("debugging indicators"),
/// 			DisplayName:        pulumi.String("new schema"),
/// 			ExternalReferences: securityinsights.ThreatIntelligenceExternalReferenceArray{},
/// 			GranularMarkings:   securityinsights.ThreatIntelligenceGranularMarkingModelArray{},
/// 			KillChainPhases:    securityinsights.ThreatIntelligenceKillChainPhaseArray{},
/// 			Kind:               pulumi.String("indicator"),
/// 			Labels:             pulumi.StringArray{},
/// 			Modified:           pulumi.String(""),
/// 			Name:               pulumi.String("d9cd6f0b-96b9-3984-17cd-a779d1e15a93"),
/// 			Pattern:            pulumi.String("[url:value = 'https://www.contoso.com']"),
/// 			PatternType:        pulumi.String("url"),
/// 			ResourceGroupName:  pulumi.String("myRg"),
/// 			Revoked:            pulumi.Bool(false),
/// 			Source:             pulumi.String("Azure Sentinel"),
/// 			ThreatIntelligenceTags: pulumi.StringArray{
/// 				pulumi.String("new schema"),
/// 			},
/// 			ThreatTypes: pulumi.StringArray{
/// 				pulumi.String("compromised"),
/// 			},
/// 			ValidFrom:     pulumi.String("2020-04-15T17:44:00.114052Z"),
/// 			ValidUntil:    pulumi.String(""),
/// 			WorkspaceName: pulumi.String("myWorkspace"),
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
/// resource "azure-native_securityinsights_threatintelligenceindicator" "threatIntelligenceIndicator" {
///   confidence               = 78
///   created_by_ref           = "contoso@contoso.com"
///   description              = "debugging indicators"
///   display_name             = "new schema"
///   kind                     = "indicator"
///   labels                   = []
///   modified                 = ""
///   name                     = "d9cd6f0b-96b9-3984-17cd-a779d1e15a93"
///   pattern                  = "[url:value = 'https://www.contoso.com']"
///   pattern_type             = "url"
///   resource_group_name      = "myRg"
///   revoked                  = false
///   source                   = "Azure Sentinel"
///   threat_intelligence_tags = ["new schema"]
///   threat_types             = ["compromised"]
///   valid_from               = "2020-04-15T17:44:00.114052Z"
///   valid_until              = ""
///   workspace_name           = "myWorkspace"
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
/// import com.pulumi.azurenative.securityinsights.ThreatIntelligenceIndicator;
/// import com.pulumi.azurenative.securityinsights.ThreatIntelligenceIndicatorArgs;
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
///         var threatIntelligenceIndicator = new ThreatIntelligenceIndicator("threatIntelligenceIndicator", ThreatIntelligenceIndicatorArgs.builder()
///             .confidence(78)
///             .createdByRef("contoso@contoso.com")
///             .description("debugging indicators")
///             .displayName("new schema")
///             .externalReferences()
///             .granularMarkings()
///             .killChainPhases()
///             .kind("indicator")
///             .labels()
///             .modified("")
///             .name("d9cd6f0b-96b9-3984-17cd-a779d1e15a93")
///             .pattern("[url:value = 'https://www.contoso.com']")
///             .patternType("url")
///             .resourceGroupName("myRg")
///             .revoked(false)
///             .source("Azure Sentinel")
///             .threatIntelligenceTags("new schema")
///             .threatTypes("compromised")
///             .validFrom("2020-04-15T17:44:00.114052Z")
///             .validUntil("")
///             .workspaceName("myWorkspace")
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
/// const threatIntelligenceIndicator = new azure_native.securityinsights.ThreatIntelligenceIndicator("threatIntelligenceIndicator", {
///     confidence: 78,
///     createdByRef: "contoso@contoso.com",
///     description: "debugging indicators",
///     displayName: "new schema",
///     externalReferences: [],
///     granularMarkings: [],
///     killChainPhases: [],
///     kind: "indicator",
///     labels: [],
///     modified: "",
///     name: "d9cd6f0b-96b9-3984-17cd-a779d1e15a93",
///     pattern: "[url:value = 'https://www.contoso.com']",
///     patternType: "url",
///     resourceGroupName: "myRg",
///     revoked: false,
///     source: "Azure Sentinel",
///     threatIntelligenceTags: ["new schema"],
///     threatTypes: ["compromised"],
///     validFrom: "2020-04-15T17:44:00.114052Z",
///     validUntil: "",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// threat_intelligence_indicator = azure_native.securityinsights.ThreatIntelligenceIndicator("threatIntelligenceIndicator",
///     confidence=78,
///     created_by_ref="contoso@contoso.com",
///     description="debugging indicators",
///     display_name="new schema",
///     external_references=[],
///     granular_markings=[],
///     kill_chain_phases=[],
///     kind="indicator",
///     labels=[],
///     modified="",
///     name="d9cd6f0b-96b9-3984-17cd-a779d1e15a93",
///     pattern="[url:value = 'https://www.contoso.com']",
///     pattern_type="url",
///     resource_group_name="myRg",
///     revoked=False,
///     source="Azure Sentinel",
///     threat_intelligence_tags=["new schema"],
///     threat_types=["compromised"],
///     valid_from="2020-04-15T17:44:00.114052Z",
///     valid_until="",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   threatIntelligenceIndicator:
///     type: azure-native:securityinsights:ThreatIntelligenceIndicator
///     properties:
///       confidence: 78
///       createdByRef: contoso@contoso.com
///       description: debugging indicators
///       displayName: new schema
///       externalReferences: []
///       granularMarkings: []
///       killChainPhases: []
///       kind: indicator
///       labels: []
///       modified: ""
///       name: d9cd6f0b-96b9-3984-17cd-a779d1e15a93
///       pattern: '[url:value = ''https://www.contoso.com'']'
///       patternType: url
///       resourceGroupName: myRg
///       revoked: false
///       source: Azure Sentinel
///       threatIntelligenceTags:
///         - new schema
///       threatTypes:
///         - compromised
///       validFrom: 2020-04-15T17:44:00.114052Z
///       validUntil: ""
///       workspaceName: myWorkspace
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
/// $ pulumi import azure-native:securityinsights:ThreatIntelligenceIndicator 180105c7-a28d-b1a2-4a78-234f6ec80fd6 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/threatIntelligence/main/indicators/{name}
/// ```
class ThreatIntelligenceIndicator extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// The kind of the entity.
  late final pulumi.Output<String> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ThreatIntelligenceIndicator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ThreatIntelligenceIndicator]. {@macro pulumi_securityinsights_threat_intelligence_indicator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ThreatIntelligenceIndicator(
    String name, {
    ThreatIntelligenceIndicatorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:ThreatIntelligenceIndicator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ThreatIntelligenceIndicator] resource.
  ThreatIntelligenceIndicator.reference(String urn)
    : super(
        'azure-native:securityinsights:ThreatIntelligenceIndicator',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
