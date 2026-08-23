import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomaly_security_mlanalytics_settings_args.dart';
import 'system_data_response.dart';

/// Represents Anomaly Security ML Analytics Settings
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a Anomaly Security ML Analytics Settings.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var anomalySecurityMLAnalyticsSettings = new AzureNative.SecurityInsights.AnomalySecurityMLAnalyticsSettings("anomalySecurityMLAnalyticsSettings", new()
///     {
///         AnomalySettingsVersion = 0,
///         AnomalyVersion = "1.0.5",
///         CustomizableObservations = new Dictionary<string, object?>
///         {
///             ["multiSelectObservations"] = null,
///             ["prioritizeExcludeObservations"] = null,
///             ["singleSelectObservations"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["description"] = "Select device vendor of network connection logs from CommonSecurityLog",
///                     ["name"] = "Device vendor",
///                     ["rerun"] = "RerunAlways",
///                     ["sequenceNumber"] = 1,
///                     ["supportedValues"] = new[]
///                     {
///                         "Palo Alto Networks",
///                         "Fortinet",
///                         "Check Point",
///                     },
///                     ["supportedValuesKql"] = null,
///                     ["value"] = new[]
///                     {
///                         "Palo Alto Networks",
///                     },
///                     ["valuesKql"] = null,
///                 },
///             },
///             ["singleValueObservations"] = null,
///             ["thresholdObservations"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["description"] = "Suppress anomalies when daily data transfered (in MB) per hour is less than the chosen value",
///                     ["maximum"] = "100",
///                     ["minimum"] = "1",
///                     ["name"] = "Daily data transfer threshold in MB",
///                     ["rerun"] = "RerunAlways",
///                     ["sequenceNumber"] = 1,
///                     ["value"] = "25",
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["description"] = "Triggers anomalies when number of standard deviations is greater than the chosen value",
///                     ["maximum"] = "10",
///                     ["minimum"] = "2",
///                     ["name"] = "Number of standard deviations",
///                     ["rerun"] = "RerunAlways",
///                     ["sequenceNumber"] = 2,
///                     ["value"] = "3",
///                 },
///             },
///         },
///         Description = "When account logs from a source region that has rarely been logged in from during the last 14 days, an anomaly is triggered.",
///         DisplayName = "Login from unusual region",
///         Enabled = true,
///         Frequency = "PT1H",
///         IsDefaultSettings = true,
///         Kind = "Anomaly",
///         RequiredDataConnectors = new[]
///         {
///             new AzureNative.SecurityInsights.Inputs.SecurityMLAnalyticsSettingsDataSourceArgs
///             {
///                 ConnectorId = "AWS",
///                 DataTypes = new[]
///                 {
///                     "AWSCloudTrail",
///                 },
///             },
///         },
///         ResourceGroupName = "myRg",
///         SettingsDefinitionId = "f209187f-1d17-4431-94af-c141bf5f23db",
///         SettingsResourceName = "f209187f-1d17-4431-94af-c141bf5f23db",
///         SettingsStatus = AzureNative.SecurityInsights.SettingsStatus.Production,
///         Tactics = new[]
///         {
///             AzureNative.SecurityInsights.AttackTactic.Exfiltration,
///             AzureNative.SecurityInsights.AttackTactic.CommandAndControl,
///         },
///         Techniques = new[]
///         {
///             "T1037",
///             "T1021",
///         },
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
/// 		_, err := securityinsights.NewAnomalySecurityMLAnalyticsSettings(ctx, "anomalySecurityMLAnalyticsSettings", &securityinsights.AnomalySecurityMLAnalyticsSettingsArgs{
/// 			AnomalySettingsVersion: pulumi.Int(0),
/// 			AnomalyVersion:         pulumi.String("1.0.5"),
/// 			CustomizableObservations: pulumi.Any(map[string]interface{}{
/// 				"multiSelectObservations":       nil,
/// 				"prioritizeExcludeObservations": nil,
/// 				"singleSelectObservations": []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"description":    "Select device vendor of network connection logs from CommonSecurityLog",
/// 						"name":           "Device vendor",
/// 						"rerun":          "RerunAlways",
/// 						"sequenceNumber": 1,
/// 						"supportedValues": []string{
/// 							"Palo Alto Networks",
/// 							"Fortinet",
/// 							"Check Point",
/// 						},
/// 						"supportedValuesKql": nil,
/// 						"value": []string{
/// 							"Palo Alto Networks",
/// 						},
/// 						"valuesKql": nil,
/// 					},
/// 				},
/// 				"singleValueObservations": nil,
/// 				"thresholdObservations": []interface{}{
/// 					map[string]interface{}{
/// 						"description":    "Suppress anomalies when daily data transfered (in MB) per hour is less than the chosen value",
/// 						"maximum":        "100",
/// 						"minimum":        "1",
/// 						"name":           "Daily data transfer threshold in MB",
/// 						"rerun":          "RerunAlways",
/// 						"sequenceNumber": 1,
/// 						"value":          "25",
/// 					},
/// 					map[string]interface{}{
/// 						"description":    "Triggers anomalies when number of standard deviations is greater than the chosen value",
/// 						"maximum":        "10",
/// 						"minimum":        "2",
/// 						"name":           "Number of standard deviations",
/// 						"rerun":          "RerunAlways",
/// 						"sequenceNumber": 2,
/// 						"value":          "3",
/// 					},
/// 				},
/// 			}),
/// 			Description:       pulumi.String("When account logs from a source region that has rarely been logged in from during the last 14 days, an anomaly is triggered."),
/// 			DisplayName:       pulumi.String("Login from unusual region"),
/// 			Enabled:           pulumi.Bool(true),
/// 			Frequency:         pulumi.String("PT1H"),
/// 			IsDefaultSettings: pulumi.Bool(true),
/// 			Kind:              pulumi.String("Anomaly"),
/// 			RequiredDataConnectors: securityinsights.SecurityMLAnalyticsSettingsDataSourceArray{
/// 				&securityinsights.SecurityMLAnalyticsSettingsDataSourceArgs{
/// 					ConnectorId: pulumi.String("AWS"),
/// 					DataTypes: pulumi.StringArray{
/// 						pulumi.String("AWSCloudTrail"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName:    pulumi.String("myRg"),
/// 			SettingsDefinitionId: pulumi.String("f209187f-1d17-4431-94af-c141bf5f23db"),
/// 			SettingsResourceName: pulumi.String("f209187f-1d17-4431-94af-c141bf5f23db"),
/// 			SettingsStatus:       pulumi.String(securityinsights.SettingsStatusProduction),
/// 			Tactics: pulumi.StringArray{
/// 				pulumi.String(securityinsights.AttackTacticExfiltration),
/// 				pulumi.String(securityinsights.AttackTacticCommandAndControl),
/// 			},
/// 			Techniques: pulumi.StringArray{
/// 				pulumi.String("T1037"),
/// 				pulumi.String("T1021"),
/// 			},
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
/// resource "azure-native_securityinsights_anomalysecuritymlanalyticssettings" "anomalySecurityMLAnalyticsSettings" {
///   anomaly_settings_version = 0
///   anomaly_version          = "1.0.5"
///   customizable_observations = {
///     "multiSelectObservations"       = null
///     "prioritizeExcludeObservations" = null
///     "singleSelectObservations" = [{
///       "description"        = "Select device vendor of network connection logs from CommonSecurityLog"
///       "name"               = "Device vendor"
///       "rerun"              = "RerunAlways"
///       "sequenceNumber"     = 1
///       "supportedValues"    = ["Palo Alto Networks", "Fortinet", "Check Point"]
///       "supportedValuesKql" = null
///       "value"              = ["Palo Alto Networks"]
///       "valuesKql"          = null
///     }]
///     "singleValueObservations" = null
///     "thresholdObservations" = [{
///       "description"    = "Suppress anomalies when daily data transfered (in MB) per hour is less than the chosen value"
///       "maximum"        = "100"
///       "minimum"        = "1"
///       "name"           = "Daily data transfer threshold in MB"
///       "rerun"          = "RerunAlways"
///       "sequenceNumber" = 1
///       "value"          = "25"
///       }, {
///       "description"    = "Triggers anomalies when number of standard deviations is greater than the chosen value"
///       "maximum"        = "10"
///       "minimum"        = "2"
///       "name"           = "Number of standard deviations"
///       "rerun"          = "RerunAlways"
///       "sequenceNumber" = 2
///       "value"          = "3"
///     }]
///   }
///   description         = "When account logs from a source region that has rarely been logged in from during the last 14 days, an anomaly is triggered."
///   display_name        = "Login from unusual region"
///   enabled             = true
///   frequency           = "PT1H"
///   is_default_settings = true
///   kind                = "Anomaly"
///   required_data_connectors {
///     connector_id = "AWS"
///     data_types   = ["AWSCloudTrail"]
///   }
///   resource_group_name    = "myRg"
///   settings_definition_id = "f209187f-1d17-4431-94af-c141bf5f23db"
///   settings_resource_name = "f209187f-1d17-4431-94af-c141bf5f23db"
///   settings_status        = "Production"
///   tactics                = ["Exfiltration", "CommandAndControl"]
///   techniques             = ["T1037", "T1021"]
///   workspace_name         = "myWorkspace"
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
/// import com.pulumi.azurenative.securityinsights.AnomalySecurityMLAnalyticsSettings;
/// import com.pulumi.azurenative.securityinsights.AnomalySecurityMLAnalyticsSettingsArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.SecurityMLAnalyticsSettingsDataSourceArgs;
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
///         var anomalySecurityMLAnalyticsSettings = new AnomalySecurityMLAnalyticsSettings("anomalySecurityMLAnalyticsSettings", AnomalySecurityMLAnalyticsSettingsArgs.builder()
///             .anomalySettingsVersion(0)
///             .anomalyVersion("1.0.5")
///             .customizableObservations(Map.ofEntries(
///                 Map.entry("multiSelectObservations", null),
///                 Map.entry("prioritizeExcludeObservations", null),
///                 Map.entry("singleSelectObservations", Arrays.asList(Map.ofEntries(
///                     Map.entry("description", "Select device vendor of network connection logs from CommonSecurityLog"),
///                     Map.entry("name", "Device vendor"),
///                     Map.entry("rerun", "RerunAlways"),
///                     Map.entry("sequenceNumber", 1),
///                     Map.entry("supportedValues", Arrays.asList(
///                         "Palo Alto Networks",
///                         "Fortinet",
///                         "Check Point")),
///                     Map.entry("supportedValuesKql", null),
///                     Map.entry("value", Arrays.asList("Palo Alto Networks")),
///                     Map.entry("valuesKql", null)
///                 ))),
///                 Map.entry("singleValueObservations", null),
///                 Map.entry("thresholdObservations", Arrays.asList(
///                     Map.ofEntries(
///                         Map.entry("description", "Suppress anomalies when daily data transfered (in MB) per hour is less than the chosen value"),
///                         Map.entry("maximum", "100"),
///                         Map.entry("minimum", "1"),
///                         Map.entry("name", "Daily data transfer threshold in MB"),
///                         Map.entry("rerun", "RerunAlways"),
///                         Map.entry("sequenceNumber", 1),
///                         Map.entry("value", "25")
///                     ),
///                     Map.ofEntries(
///                         Map.entry("description", "Triggers anomalies when number of standard deviations is greater than the chosen value"),
///                         Map.entry("maximum", "10"),
///                         Map.entry("minimum", "2"),
///                         Map.entry("name", "Number of standard deviations"),
///                         Map.entry("rerun", "RerunAlways"),
///                         Map.entry("sequenceNumber", 2),
///                         Map.entry("value", "3")
///                     )))
///             ))
///             .description("When account logs from a source region that has rarely been logged in from during the last 14 days, an anomaly is triggered.")
///             .displayName("Login from unusual region")
///             .enabled(true)
///             .frequency("PT1H")
///             .isDefaultSettings(true)
///             .kind("Anomaly")
///             .requiredDataConnectors(SecurityMLAnalyticsSettingsDataSourceArgs.builder()
///                 .connectorId("AWS")
///                 .dataTypes("AWSCloudTrail")
///                 .build())
///             .resourceGroupName("myRg")
///             .settingsDefinitionId("f209187f-1d17-4431-94af-c141bf5f23db")
///             .settingsResourceName("f209187f-1d17-4431-94af-c141bf5f23db")
///             .settingsStatus("Production")
///             .tactics(
///                 "Exfiltration",
///                 "CommandAndControl")
///             .techniques(
///                 "T1037",
///                 "T1021")
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
/// const anomalySecurityMLAnalyticsSettings = new azure_native.securityinsights.AnomalySecurityMLAnalyticsSettings("anomalySecurityMLAnalyticsSettings", {
///     anomalySettingsVersion: 0,
///     anomalyVersion: "1.0.5",
///     customizableObservations: {
///         multiSelectObservations: null,
///         prioritizeExcludeObservations: null,
///         singleSelectObservations: [{
///             description: "Select device vendor of network connection logs from CommonSecurityLog",
///             name: "Device vendor",
///             rerun: "RerunAlways",
///             sequenceNumber: 1,
///             supportedValues: [
///                 "Palo Alto Networks",
///                 "Fortinet",
///                 "Check Point",
///             ],
///             supportedValuesKql: null,
///             value: ["Palo Alto Networks"],
///             valuesKql: null,
///         }],
///         singleValueObservations: null,
///         thresholdObservations: [
///             {
///                 description: "Suppress anomalies when daily data transfered (in MB) per hour is less than the chosen value",
///                 maximum: "100",
///                 minimum: "1",
///                 name: "Daily data transfer threshold in MB",
///                 rerun: "RerunAlways",
///                 sequenceNumber: 1,
///                 value: "25",
///             },
///             {
///                 description: "Triggers anomalies when number of standard deviations is greater than the chosen value",
///                 maximum: "10",
///                 minimum: "2",
///                 name: "Number of standard deviations",
///                 rerun: "RerunAlways",
///                 sequenceNumber: 2,
///                 value: "3",
///             },
///         ],
///     },
///     description: "When account logs from a source region that has rarely been logged in from during the last 14 days, an anomaly is triggered.",
///     displayName: "Login from unusual region",
///     enabled: true,
///     frequency: "PT1H",
///     isDefaultSettings: true,
///     kind: "Anomaly",
///     requiredDataConnectors: [{
///         connectorId: "AWS",
///         dataTypes: ["AWSCloudTrail"],
///     }],
///     resourceGroupName: "myRg",
///     settingsDefinitionId: "f209187f-1d17-4431-94af-c141bf5f23db",
///     settingsResourceName: "f209187f-1d17-4431-94af-c141bf5f23db",
///     settingsStatus: azure_native.securityinsights.SettingsStatus.Production,
///     tactics: [
///         azure_native.securityinsights.AttackTactic.Exfiltration,
///         azure_native.securityinsights.AttackTactic.CommandAndControl,
///     ],
///     techniques: [
///         "T1037",
///         "T1021",
///     ],
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// anomaly_security_ml_analytics_settings = azure_native.securityinsights.AnomalySecurityMLAnalyticsSettings("anomalySecurityMLAnalyticsSettings",
///     anomaly_settings_version=0,
///     anomaly_version="1.0.5",
///     customizable_observations={
///         "multiSelectObservations": None,
///         "prioritizeExcludeObservations": None,
///         "singleSelectObservations": [{
///             "description": "Select device vendor of network connection logs from CommonSecurityLog",
///             "name": "Device vendor",
///             "rerun": "RerunAlways",
///             "sequenceNumber": 1,
///             "supportedValues": [
///                 "Palo Alto Networks",
///                 "Fortinet",
///                 "Check Point",
///             ],
///             "supportedValuesKql": None,
///             "value": ["Palo Alto Networks"],
///             "valuesKql": None,
///         }],
///         "singleValueObservations": None,
///         "thresholdObservations": [
///             {
///                 "description": "Suppress anomalies when daily data transfered (in MB) per hour is less than the chosen value",
///                 "maximum": "100",
///                 "minimum": "1",
///                 "name": "Daily data transfer threshold in MB",
///                 "rerun": "RerunAlways",
///                 "sequenceNumber": 1,
///                 "value": "25",
///             },
///             {
///                 "description": "Triggers anomalies when number of standard deviations is greater than the chosen value",
///                 "maximum": "10",
///                 "minimum": "2",
///                 "name": "Number of standard deviations",
///                 "rerun": "RerunAlways",
///                 "sequenceNumber": 2,
///                 "value": "3",
///             },
///         ],
///     },
///     description="When account logs from a source region that has rarely been logged in from during the last 14 days, an anomaly is triggered.",
///     display_name="Login from unusual region",
///     enabled=True,
///     frequency="PT1H",
///     is_default_settings=True,
///     kind="Anomaly",
///     required_data_connectors=[{
///         "connector_id": "AWS",
///         "data_types": ["AWSCloudTrail"],
///     }],
///     resource_group_name="myRg",
///     settings_definition_id="f209187f-1d17-4431-94af-c141bf5f23db",
///     settings_resource_name="f209187f-1d17-4431-94af-c141bf5f23db",
///     settings_status=azure_native.securityinsights.SettingsStatus.PRODUCTION,
///     tactics=[
///         azure_native.securityinsights.AttackTactic.EXFILTRATION,
///         azure_native.securityinsights.AttackTactic.COMMAND_AND_CONTROL,
///     ],
///     techniques=[
///         "T1037",
///         "T1021",
///     ],
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   anomalySecurityMLAnalyticsSettings:
///     type: azure-native:securityinsights:AnomalySecurityMLAnalyticsSettings
///     properties:
///       anomalySettingsVersion: 0
///       anomalyVersion: 1.0.5
///       customizableObservations:
///         multiSelectObservations: null
///         prioritizeExcludeObservations: null
///         singleSelectObservations:
///           - description: Select device vendor of network connection logs from CommonSecurityLog
///             name: Device vendor
///             rerun: RerunAlways
///             sequenceNumber: 1
///             supportedValues:
///               - Palo Alto Networks
///               - Fortinet
///               - Check Point
///             supportedValuesKql: null
///             value:
///               - Palo Alto Networks
///             valuesKql: null
///         singleValueObservations: null
///         thresholdObservations:
///           - description: Suppress anomalies when daily data transfered (in MB) per hour is less than the chosen value
///             maximum: '100'
///             minimum: '1'
///             name: Daily data transfer threshold in MB
///             rerun: RerunAlways
///             sequenceNumber: 1
///             value: '25'
///           - description: Triggers anomalies when number of standard deviations is greater than the chosen value
///             maximum: '10'
///             minimum: '2'
///             name: Number of standard deviations
///             rerun: RerunAlways
///             sequenceNumber: 2
///             value: '3'
///       description: When account logs from a source region that has rarely been logged in from during the last 14 days, an anomaly is triggered.
///       displayName: Login from unusual region
///       enabled: true
///       frequency: PT1H
///       isDefaultSettings: true
///       kind: Anomaly
///       requiredDataConnectors:
///         - connectorId: AWS
///           dataTypes:
///             - AWSCloudTrail
///       resourceGroupName: myRg
///       settingsDefinitionId: f209187f-1d17-4431-94af-c141bf5f23db
///       settingsResourceName: f209187f-1d17-4431-94af-c141bf5f23db
///       settingsStatus: Production
///       tactics:
///         - Exfiltration
///         - CommandAndControl
///       techniques:
///         - T1037
///         - T1021
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
/// $ pulumi import azure-native:securityinsights:AnomalySecurityMLAnalyticsSettings f209187f-1d17-4431-94af-c141bf5f23db /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/securityMLAnalyticsSettings/{settingsResourceName}
/// ```
class AnomalySecurityMLAnalyticsSettings extends pulumi.CustomResource {
  /// The anomaly settings version of the Anomaly security ml analytics settings that dictates whether job version gets updated or not.
  late final pulumi.Output<int?> anomalySettingsVersion;
  /// The anomaly version of the AnomalySecurityMLAnalyticsSettings.
  late final pulumi.Output<String> anomalyVersion;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The customizable observations of the AnomalySecurityMLAnalyticsSettings.
  late final pulumi.Output<dynamic> customizableObservations;
  /// The description of the SecurityMLAnalyticsSettings.
  late final pulumi.Output<String?> description;
  /// The display name for settings created by this SecurityMLAnalyticsSettings.
  late final pulumi.Output<String> displayName;
  /// Determines whether this settings is enabled or disabled.
  late final pulumi.Output<bool> enabled;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// The frequency that this SecurityMLAnalyticsSettings will be run.
  late final pulumi.Output<String> frequency;
  /// Determines whether this anomaly security ml analytics settings is a default settings
  late final pulumi.Output<bool> isDefaultSettings;
  /// The kind of security ML analytics settings
  /// Expected value is 'Anomaly'.
  late final pulumi.Output<String> kind;
  /// The last time that this SecurityMLAnalyticsSettings has been modified.
  late final pulumi.Output<String> lastModifiedUtc;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The required data sources for this SecurityMLAnalyticsSettings
  late final pulumi.Output<List<Map<String, dynamic>>?> requiredDataConnectors;
  /// The anomaly settings definition Id
  late final pulumi.Output<String?> settingsDefinitionId;
  /// The anomaly SecurityMLAnalyticsSettings status
  late final pulumi.Output<String> settingsStatus;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The tactics of the SecurityMLAnalyticsSettings
  late final pulumi.Output<List<String>?> tactics;
  /// The techniques of the SecurityMLAnalyticsSettings
  late final pulumi.Output<List<String>?> techniques;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AnomalySecurityMLAnalyticsSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AnomalySecurityMLAnalyticsSettings]. {@macro pulumi_securityinsights_anomaly_security_mlanalytics_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AnomalySecurityMLAnalyticsSettings(
    String name, {
    AnomalySecurityMLAnalyticsSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:AnomalySecurityMLAnalyticsSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    anomalySettingsVersion = registerOutput<int?>('anomalySettingsVersion');
    anomalyVersion = registerOutput<String>('anomalyVersion');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customizableObservations = registerOutput<dynamic>('customizableObservations');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool>('enabled');
    etag = registerOutput<String?>('etag');
    frequency = registerOutput<String>('frequency');
    isDefaultSettings = registerOutput<bool>('isDefaultSettings');
    kind = registerOutput<String>('kind');
    lastModifiedUtc = registerOutput<String>('lastModifiedUtc');
    this.name = registerOutput<String>('name');
    requiredDataConnectors = registerOutput<List<Map<String, dynamic>>?>('requiredDataConnectors');
    settingsDefinitionId = registerOutput<String?>('settingsDefinitionId');
    settingsStatus = registerOutput<String>('settingsStatus');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tactics = registerOutput<List<String>?>('tactics');
    techniques = registerOutput<List<String>?>('techniques');
    type = registerOutput<String>('type');
  }
}
