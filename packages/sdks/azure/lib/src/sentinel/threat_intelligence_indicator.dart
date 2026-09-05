import 'package:pulumi/pulumi.dart' as pulumi;
import 'threat_intelligence_indicator_args.dart';
import 'threat_intelligence_indicator_external_reference.dart';
import 'threat_intelligence_indicator_granular_marking.dart';
import 'threat_intelligence_indicator_kill_chain_phase.dart';
import 'threat_intelligence_indicator_parsed_pattern.dart';
import 'threat_intelligence_indicator_state.dart';

/// Manages a Sentinel Threat Intelligence Indicator.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "east us",
/// });
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "example-law",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
///     retentionInDays: 30,
/// });
/// const exampleLogAnalyticsWorkspaceOnboarding = new azure.sentinel.LogAnalyticsWorkspaceOnboarding("example", {workspaceId: exampleAnalyticsWorkspace.id});
/// const exampleThreatIntelligenceIndicator = new azure.sentinel.ThreatIntelligenceIndicator("example", {
///     workspaceId: exampleLogAnalyticsWorkspaceOnboarding.workspaceId,
///     patternType: "domain-name",
///     pattern: "http://example.com",
///     source: "Microsoft Sentinel",
///     validateFromUtc: "2022-12-14T16:00:00Z",
///     displayName: "example-indicator",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="east us")
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="example-law",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018",
///     retention_in_days=30)
/// example_log_analytics_workspace_onboarding = azure.sentinel.LogAnalyticsWorkspaceOnboarding("example", workspace_id=example_analytics_workspace.id)
/// example_threat_intelligence_indicator = azure.sentinel.ThreatIntelligenceIndicator("example",
///     workspace_id=example_log_analytics_workspace_onboarding.workspace_id,
///     pattern_type="domain-name",
///     pattern="http://example.com",
///     source="Microsoft Sentinel",
///     validate_from_utc="2022-12-14T16:00:00Z",
///     display_name="example-indicator")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-rg",
///         Location = "east us",
///     });
///
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "example-law",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///         RetentionInDays = 30,
///     });
///
///     var exampleLogAnalyticsWorkspaceOnboarding = new Azure.Sentinel.LogAnalyticsWorkspaceOnboarding("example", new()
///     {
///         WorkspaceId = exampleAnalyticsWorkspace.Id,
///     });
///
///     var exampleThreatIntelligenceIndicator = new Azure.Sentinel.ThreatIntelligenceIndicator("example", new()
///     {
///         WorkspaceId = exampleLogAnalyticsWorkspaceOnboarding.WorkspaceId,
///         PatternType = "domain-name",
///         Pattern = "http://example.com",
///         Source = "Microsoft Sentinel",
///         ValidateFromUtc = "2022-12-14T16:00:00Z",
///         DisplayName = "example-indicator",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/sentinel"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("east us"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("example-law"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 			RetentionInDays:   pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLogAnalyticsWorkspaceOnboarding, err := sentinel.NewLogAnalyticsWorkspaceOnboarding(ctx, "example", &sentinel.LogAnalyticsWorkspaceOnboardingArgs{
/// 			WorkspaceId: exampleAnalyticsWorkspace.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sentinel.NewThreatIntelligenceIndicator(ctx, "example", &sentinel.ThreatIntelligenceIndicatorArgs{
/// 			WorkspaceId:     exampleLogAnalyticsWorkspaceOnboarding.WorkspaceId,
/// 			PatternType:     pulumi.String("domain-name"),
/// 			Pattern:         pulumi.String("http://example.com"),
/// 			Source:          pulumi.String("Microsoft Sentinel"),
/// 			ValidateFromUtc: pulumi.String("2022-12-14T16:00:00Z"),
/// 			DisplayName:     pulumi.String("example-indicator"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-rg"
///   location = "east us"
/// }
/// resource "azure_operationalinsights_analyticsworkspace" "example" {
///   name                = "example-law"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "PerGB2018"
///   retention_in_days   = 30
/// }
/// resource "azure_sentinel_loganalyticsworkspaceonboarding" "example" {
///   workspace_id = azure_operationalinsights_analyticsworkspace.example.id
/// }
/// resource "azure_sentinel_threatintelligenceindicator" "example" {
///   workspace_id      = azure_sentinel_loganalyticsworkspaceonboarding.example.workspace_id
///   pattern_type      = "domain-name"
///   pattern           = "http://example.com"
///   source            = "Microsoft Sentinel"
///   validate_from_utc = "2022-12-14T16:00:00Z"
///   display_name      = "example-indicator"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.sentinel.LogAnalyticsWorkspaceOnboarding;
/// import com.pulumi.azure.sentinel.LogAnalyticsWorkspaceOnboardingArgs;
/// import com.pulumi.azure.sentinel.ThreatIntelligenceIndicator;
/// import com.pulumi.azure.sentinel.ThreatIntelligenceIndicatorArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-rg")
///             .location("east us")
///             .build());
///
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("example-law")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .retentionInDays(30)
///             .build());
///
///         var exampleLogAnalyticsWorkspaceOnboarding = new LogAnalyticsWorkspaceOnboarding("exampleLogAnalyticsWorkspaceOnboarding", LogAnalyticsWorkspaceOnboardingArgs.builder()
///             .workspaceId(exampleAnalyticsWorkspace.id())
///             .build());
///
///         var exampleThreatIntelligenceIndicator = new ThreatIntelligenceIndicator("exampleThreatIntelligenceIndicator", ThreatIntelligenceIndicatorArgs.builder()
///             .workspaceId(exampleLogAnalyticsWorkspaceOnboarding.workspaceId())
///             .patternType("domain-name")
///             .pattern("http://example.com")
///             .source("Microsoft Sentinel")
///             .validateFromUtc("2022-12-14T16:00:00Z")
///             .displayName("example-indicator")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-rg
///       location: east us
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: example-law
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///       retentionInDays: 30
///   exampleLogAnalyticsWorkspaceOnboarding:
///     type: azure:sentinel:LogAnalyticsWorkspaceOnboarding
///     name: example
///     properties:
///       workspaceId: ${exampleAnalyticsWorkspace.id}
///   exampleThreatIntelligenceIndicator:
///     type: azure:sentinel:ThreatIntelligenceIndicator
///     name: example
///     properties:
///       workspaceId: ${exampleLogAnalyticsWorkspaceOnboarding.workspaceId}
///       patternType: domain-name
///       pattern: http://example.com
///       source: Microsoft Sentinel
///       validateFromUtc: 2022-12-14T16:00:00Z
///       displayName: example-indicator
/// ```
///
///
/// ## Import
///
/// Sentinel Threat Intelligence Indicators can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:sentinel/threatIntelligenceIndicator:ThreatIntelligenceIndicator example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourcegroup1/providers/Microsoft.OperationalInsights/workspaces/workspace1/providers/Microsoft.SecurityInsights/threatIntelligence/main/indicators/indicator1
/// ```
class ThreatIntelligenceIndicator extends pulumi.CustomResource {
  /// Confidence levels of the Threat Intelligence Indicator.
  late final pulumi.Output<int?> confidence;
  /// The creator of the Threat Intelligence Indicator.
  late final pulumi.Output<String?> createdBy;
  /// The date of this Threat Intelligence Indicator created.
  late final pulumi.Output<String> createdOn;
  /// Whether the Threat Intelligence entity is defanged?
  late final pulumi.Output<bool> defanged;
  /// The description of the Threat Intelligence Indicator.
  late final pulumi.Output<String?> description;
  /// The display name of the Threat Intelligence Indicator.
  late final pulumi.Output<String> displayName;
  /// The extension config of the Threat Intelligence Indicator in JSON format.
  late final pulumi.Output<String> extension;
  /// The external ID of the Threat Intelligence Indicator.
  late final pulumi.Output<String> externalId;
  /// the External last updated time in UTC.
  late final pulumi.Output<String> externalLastUpdatedTimeUtc;
  /// One or more `externalReference` blocks as defined below.
  late final pulumi.Output<List<ThreatIntelligenceIndicatorExternalReference>?> externalReferences;
  /// One or more `granularMarking` blocks as defined below.
  late final pulumi.Output<List<ThreatIntelligenceIndicatorGranularMarking>?> granularMarkings;
  /// The guid of this Sentinel Threat Intelligence Indicator.
  late final pulumi.Output<String> guid;
  /// A list of indicator types of this Threat Intelligence Indicator.
  late final pulumi.Output<List<String>> indicatorTypes;
  /// One or more `killChainPhase` blocks as defined below.
  late final pulumi.Output<List<ThreatIntelligenceIndicatorKillChainPhase>?> killChainPhases;
  /// The language of the Threat Intelligence Indicator.
  late final pulumi.Output<String?> language;
  /// The last updated time of the Threat Intelligence Indicator in UTC.
  late final pulumi.Output<String> lastUpdatedTimeUtc;
  /// Specifies a list of Threat Intelligence marking references.
  late final pulumi.Output<List<String>?> objectMarkingRefs;
  /// A `parsedPattern` block as defined below.
  late final pulumi.Output<List<ThreatIntelligenceIndicatorParsedPattern>> parsedPatterns;
  /// The pattern used by the Threat Intelligence Indicator. When `patternType` set to `file`, `pattern` must be specified with `&lt;HashName&gt;:&lt;Value&gt;` format, such as `MD5:78ecc5c05cd8b79af480df2f8fba0b9d`.
  late final pulumi.Output<String> pattern;
  /// The type of pattern used by the Threat Intelligence Indicator. Possible values are `domain-name`, `file`, `ipv4-addr`, `ipv6-addr` and `url`.
  late final pulumi.Output<String> patternType;
  /// The version of a Threat Intelligence entity.
  late final pulumi.Output<String?> patternVersion;
  /// Whether the Threat Intelligence entity revoked.
  late final pulumi.Output<bool?> revoked;
  /// Source of the Threat Intelligence Indicator. Changing this forces a new resource to be created.
  late final pulumi.Output<String> source;
  /// Specifies a list of tags of the Threat Intelligence Indicator.
  late final pulumi.Output<List<String>?> tags;
  /// Specifies a list of threat types of this Threat Intelligence Indicator.
  late final pulumi.Output<List<String>?> threatTypes;
  /// The start of validate date in RFC3339.
  late final pulumi.Output<String> validateFromUtc;
  /// The end of validate date of the Threat Intelligence Indicator in RFC3339 format.
  late final pulumi.Output<String?> validateUntilUtc;
  /// The ID of the Log Analytics Workspace. Changing this forces a new Sentinel Threat Intelligence Indicator to be created.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [ThreatIntelligenceIndicator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ThreatIntelligenceIndicator]. {@macro pulumi_sentinel_threat_intelligence_indicator_threat_intelligence_indicator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ThreatIntelligenceIndicator(
    String name, {
    ThreatIntelligenceIndicatorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/threatIntelligenceIndicator:ThreatIntelligenceIndicator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    confidence = registerOutput<int?>('confidence');
    createdBy = registerOutput<String?>('createdBy');
    createdOn = registerOutput<String>('createdOn');
    defanged = registerOutput<bool>('defanged');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    extension = registerOutput<String>('extension');
    externalId = registerOutput<String>('externalId');
    externalLastUpdatedTimeUtc = registerOutput<String>('externalLastUpdatedTimeUtc');
    externalReferences = registerOutput<List<ThreatIntelligenceIndicatorExternalReference>?>('externalReferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ThreatIntelligenceIndicatorExternalReference>(guardedValue, (value) => ThreatIntelligenceIndicatorExternalReference.fromMap((value as Map).cast<String, dynamic>())); });
    granularMarkings = registerOutput<List<ThreatIntelligenceIndicatorGranularMarking>?>('granularMarkings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ThreatIntelligenceIndicatorGranularMarking>(guardedValue, (value) => ThreatIntelligenceIndicatorGranularMarking.fromMap((value as Map).cast<String, dynamic>())); });
    guid = registerOutput<String>('guid');
    indicatorTypes = registerOutput<List<String>>('indicatorTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    killChainPhases = registerOutput<List<ThreatIntelligenceIndicatorKillChainPhase>?>('killChainPhases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ThreatIntelligenceIndicatorKillChainPhase>(guardedValue, (value) => ThreatIntelligenceIndicatorKillChainPhase.fromMap((value as Map).cast<String, dynamic>())); });
    language = registerOutput<String?>('language');
    lastUpdatedTimeUtc = registerOutput<String>('lastUpdatedTimeUtc');
    objectMarkingRefs = registerOutput<List<String>?>('objectMarkingRefs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    parsedPatterns = registerOutput<List<ThreatIntelligenceIndicatorParsedPattern>>('parsedPatterns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ThreatIntelligenceIndicatorParsedPattern>(guardedValue, (value) => ThreatIntelligenceIndicatorParsedPattern.fromMap((value as Map).cast<String, dynamic>())); });
    pattern = registerOutput<String>('pattern');
    patternType = registerOutput<String>('patternType');
    patternVersion = registerOutput<String?>('patternVersion');
    revoked = registerOutput<bool?>('revoked');
    source = registerOutput<String>('source');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    threatTypes = registerOutput<List<String>?>('threatTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    validateFromUtc = registerOutput<String>('validateFromUtc');
    validateUntilUtc = registerOutput<String?>('validateUntilUtc');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [ThreatIntelligenceIndicator] resource's state with the given [name] and [id].
  static ThreatIntelligenceIndicator get(
    String name,
    pulumi.Input<String> id, {
    ThreatIntelligenceIndicatorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ThreatIntelligenceIndicator._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ThreatIntelligenceIndicator._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/threatIntelligenceIndicator:ThreatIntelligenceIndicator',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    confidence = registerOutput<int?>('confidence');
    createdBy = registerOutput<String?>('createdBy');
    createdOn = registerOutput<String>('createdOn');
    defanged = registerOutput<bool>('defanged');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    extension = registerOutput<String>('extension');
    externalId = registerOutput<String>('externalId');
    externalLastUpdatedTimeUtc = registerOutput<String>('externalLastUpdatedTimeUtc');
    externalReferences = registerOutput<List<ThreatIntelligenceIndicatorExternalReference>?>('externalReferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ThreatIntelligenceIndicatorExternalReference>(guardedValue, (value) => ThreatIntelligenceIndicatorExternalReference.fromMap((value as Map).cast<String, dynamic>())); });
    granularMarkings = registerOutput<List<ThreatIntelligenceIndicatorGranularMarking>?>('granularMarkings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ThreatIntelligenceIndicatorGranularMarking>(guardedValue, (value) => ThreatIntelligenceIndicatorGranularMarking.fromMap((value as Map).cast<String, dynamic>())); });
    guid = registerOutput<String>('guid');
    indicatorTypes = registerOutput<List<String>>('indicatorTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    killChainPhases = registerOutput<List<ThreatIntelligenceIndicatorKillChainPhase>?>('killChainPhases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ThreatIntelligenceIndicatorKillChainPhase>(guardedValue, (value) => ThreatIntelligenceIndicatorKillChainPhase.fromMap((value as Map).cast<String, dynamic>())); });
    language = registerOutput<String?>('language');
    lastUpdatedTimeUtc = registerOutput<String>('lastUpdatedTimeUtc');
    objectMarkingRefs = registerOutput<List<String>?>('objectMarkingRefs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    parsedPatterns = registerOutput<List<ThreatIntelligenceIndicatorParsedPattern>>('parsedPatterns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ThreatIntelligenceIndicatorParsedPattern>(guardedValue, (value) => ThreatIntelligenceIndicatorParsedPattern.fromMap((value as Map).cast<String, dynamic>())); });
    pattern = registerOutput<String>('pattern');
    patternType = registerOutput<String>('patternType');
    patternVersion = registerOutput<String?>('patternVersion');
    revoked = registerOutput<bool?>('revoked');
    source = registerOutput<String>('source');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    threatTypes = registerOutput<List<String>?>('threatTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    validateFromUtc = registerOutput<String>('validateFromUtc');
    validateUntilUtc = registerOutput<String?>('validateUntilUtc');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Creates a typed reference to an existing [ThreatIntelligenceIndicator] resource.
  ThreatIntelligenceIndicator.reference(String urn)
    : super(
        'azure:sentinel/threatIntelligenceIndicator:ThreatIntelligenceIndicator',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    confidence = registerOutput<int?>('confidence');
    createdBy = registerOutput<String?>('createdBy');
    createdOn = registerOutput<String>('createdOn');
    defanged = registerOutput<bool>('defanged');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    extension = registerOutput<String>('extension');
    externalId = registerOutput<String>('externalId');
    externalLastUpdatedTimeUtc = registerOutput<String>('externalLastUpdatedTimeUtc');
    externalReferences = registerOutput<List<ThreatIntelligenceIndicatorExternalReference>?>('externalReferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ThreatIntelligenceIndicatorExternalReference>(guardedValue, (value) => ThreatIntelligenceIndicatorExternalReference.fromMap((value as Map).cast<String, dynamic>())); });
    granularMarkings = registerOutput<List<ThreatIntelligenceIndicatorGranularMarking>?>('granularMarkings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ThreatIntelligenceIndicatorGranularMarking>(guardedValue, (value) => ThreatIntelligenceIndicatorGranularMarking.fromMap((value as Map).cast<String, dynamic>())); });
    guid = registerOutput<String>('guid');
    indicatorTypes = registerOutput<List<String>>('indicatorTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    killChainPhases = registerOutput<List<ThreatIntelligenceIndicatorKillChainPhase>?>('killChainPhases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ThreatIntelligenceIndicatorKillChainPhase>(guardedValue, (value) => ThreatIntelligenceIndicatorKillChainPhase.fromMap((value as Map).cast<String, dynamic>())); });
    language = registerOutput<String?>('language');
    lastUpdatedTimeUtc = registerOutput<String>('lastUpdatedTimeUtc');
    objectMarkingRefs = registerOutput<List<String>?>('objectMarkingRefs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    parsedPatterns = registerOutput<List<ThreatIntelligenceIndicatorParsedPattern>>('parsedPatterns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ThreatIntelligenceIndicatorParsedPattern>(guardedValue, (value) => ThreatIntelligenceIndicatorParsedPattern.fromMap((value as Map).cast<String, dynamic>())); });
    pattern = registerOutput<String>('pattern');
    patternType = registerOutput<String>('patternType');
    patternVersion = registerOutput<String?>('patternVersion');
    revoked = registerOutput<bool?>('revoked');
    source = registerOutput<String>('source');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    threatTypes = registerOutput<List<String>?>('threatTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    validateFromUtc = registerOutput<String>('validateFromUtc');
    validateUntilUtc = registerOutput<String?>('validateUntilUtc');
    workspaceId = registerOutput<String>('workspaceId');
  }
}
