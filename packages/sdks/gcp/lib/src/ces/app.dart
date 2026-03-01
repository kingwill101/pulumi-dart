import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_args.dart';
import 'app_audio_processing_config.dart';
import 'app_client_certificate_settings.dart';
import 'app_data_store_settings.dart';
import 'app_default_channel_profile.dart';
import 'app_evaluation_metrics_thresholds.dart';
import 'app_language_settings.dart';
import 'app_logging_settings.dart';
import 'app_model_settings.dart';
import 'app_state.dart';
import 'app_time_zone_settings.dart';
import 'app_variable_declaration.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Ces App Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const project = gcp.organizations.getProject({});
/// const fakePrivateKeySecret = new gcp.secretmanager.Secret("fake_private_key_secret", {
///     secretId: "fake-pk-secret-app-tf1",
///     replication: {
///         auto: {},
///     },
/// });
/// const fakeSecretVersion = new gcp.secretmanager.SecretVersion("fake_secret_version", {
///     secret: fakePrivateKeySecret.id,
///     secretData: std.file({
///         input: "test-fixtures/test.key",
///     }).then(invoke => invoke.result),
/// });
/// const privateKeyAccessor = new gcp.secretmanager.SecretIamMember("private_key_accessor", {
///     project: fakePrivateKeySecret.project,
///     secretId: fakePrivateKeySecret.secretId,
///     role: "roles/secretmanager.secretAccessor",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-ces.iam.gserviceaccount.com`),
/// });
/// const cesAppBasic = new gcp.ces.App("ces_app_basic", {
///     appId: "app-id",
///     location: "us",
///     description: "Basic CES App example",
///     displayName: "my-app",
///     pinned: true,
///     languageSettings: {
///         defaultLanguageCode: "en-US",
///         supportedLanguageCodes: [
///             "es-ES",
///             "fr-FR",
///         ],
///         enableMultilingualSupport: true,
///         fallbackAction: "escalate",
///     },
///     audioProcessingConfig: {
///         synthesizeSpeechConfigs: [
///             {
///                 languageCode: "en-US",
///                 voice: "en-US-Standard-A",
///                 speakingRate: 1,
///             },
///             {
///                 languageCode: "es-ES",
///                 voice: "es-ES-Standard-A",
///                 speakingRate: 0.95,
///             },
///         ],
///         bargeInConfig: {
///             bargeInAwareness: true,
///         },
///         inactivityTimeout: "300s",
///         ambientSoundConfig: {
///             prebuiltAmbientSound: "room_2",
///             volumeGainDb: -6,
///         },
///     },
///     loggingSettings: {
///         redactionConfig: {
///             enableRedaction: true,
///             inspectTemplate: "projects/fake-project/locations/us/inspectTemplates/example-inspect",
///             deidentifyTemplate: "projects/fake-project/locations/us/deidentifyTemplates/example-deidentify",
///         },
///         audioRecordingConfig: {
///             gcsBucket: "gs://fake-app-audio-recordings",
///             gcsPathPrefix: "projects/fake-project/location/us/app/test-app/123/$session/123",
///         },
///         bigqueryExportSettings: {
///             dataset: "projects/fake-project/datasets/fake_app_logs",
///             enabled: false,
///             project: "projects/fake-project",
///         },
///         cloudLoggingSettings: {
///             enableCloudLogging: true,
///         },
///         conversationLoggingSettings: {
///             disableConversationLogging: true,
///         },
///     },
///     modelSettings: {
///         model: "gemini-1.5-flash",
///         temperature: 0.5,
///     },
///     evaluationMetricsThresholds: {
///         goldenEvaluationMetricsThresholds: {
///             turnLevelMetricsThresholds: {
///                 semanticSimilaritySuccessThreshold: 3,
///                 overallToolInvocationCorrectnessThreshold: 1,
///             },
///             expectationLevelMetricsThresholds: {
///                 toolInvocationParameterCorrectnessThreshold: 1,
///             },
///         },
///     },
///     variableDeclarations: [{
///         name: "test",
///         description: "test",
///         schema: {
///             description: "schema description",
///             type: "ARRAY",
///             title: "title",
///             nullable: true,
///             requireds: ["some_property"],
///             enums: [
///                 "VALUE_A",
///                 "VALUE_B",
///             ],
///             ref: "#/defs/MyDefinition",
///             uniqueItems: true,
///             defs: JSON.stringify({
///                 SimpleString: {
///                     type: "STRING",
///                     description: "A simple string definition",
///                 },
///             }),
///             anyOf: JSON.stringify([{
///                 type: "STRING",
///                 description: "any_of option 1: string",
///             }]),
///             "default": JSON.stringify(false),
///             prefixItems: JSON.stringify([{
///                 type: "ARRAY",
///                 description: "prefix item 1",
///             }]),
///             additionalProperties: JSON.stringify({
///                 type: "BOOLEAN",
///             }),
///             properties: JSON.stringify({
///                 name: {
///                     type: "STRING",
///                     description: "A name",
///                 },
///             }),
///             items: JSON.stringify({
///                 type: "ARRAY",
///                 description: "An array",
///             }),
///         },
///     }],
///     globalInstruction: "You are a virtual assistant for an e-commerce platform. Be friendly and helpful.",
///     guardrails: [],
///     defaultChannelProfile: {
///         channelType: "WEB_UI",
///         disableBargeInControl: false,
///         disableDtmf: true,
///         personaProperty: {
///             persona: "CONCISE",
///         },
///         profileId: "profile-id",
///         webWidgetConfig: {
///             modality: "CHAT_ONLY",
///             theme: "LIGHT",
///             webWidgetTitle: "Help Assistant",
///         },
///     },
///     metadata: {
///         deployment_env: "test",
///     },
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
///     clientCertificateSettings: {
///         tlsCertificate: std.file({
///             input: "test-fixtures/cert.pem",
///         }).then(invoke => invoke.result),
///         privateKey: fakeSecretVersion.name,
///         passphrase: "fakepassphrase",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// project = gcp.organizations.get_project()
/// fake_private_key_secret = gcp.secretmanager.Secret("fake_private_key_secret",
///     secret_id="fake-pk-secret-app-tf1",
///     replication={
///         "auto": {},
///     })
/// fake_secret_version = gcp.secretmanager.SecretVersion("fake_secret_version",
///     secret=fake_private_key_secret.id,
///     secret_data=std.file(input="test-fixtures/test.key").result)
/// private_key_accessor = gcp.secretmanager.SecretIamMember("private_key_accessor",
///     project=fake_private_key_secret.project,
///     secret_id=fake_private_key_secret.secret_id,
///     role="roles/secretmanager.secretAccessor",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-ces.iam.gserviceaccount.com")
/// ces_app_basic = gcp.ces.App("ces_app_basic",
///     app_id="app-id",
///     location="us",
///     description="Basic CES App example",
///     display_name="my-app",
///     pinned=True,
///     language_settings={
///         "default_language_code": "en-US",
///         "supported_language_codes": [
///             "es-ES",
///             "fr-FR",
///         ],
///         "enable_multilingual_support": True,
///         "fallback_action": "escalate",
///     },
///     audio_processing_config={
///         "synthesize_speech_configs": [
///             {
///                 "language_code": "en-US",
///                 "voice": "en-US-Standard-A",
///                 "speaking_rate": 1,
///             },
///             {
///                 "language_code": "es-ES",
///                 "voice": "es-ES-Standard-A",
///                 "speaking_rate": 0.95,
///             },
///         ],
///         "barge_in_config": {
///             "barge_in_awareness": True,
///         },
///         "inactivity_timeout": "300s",
///         "ambient_sound_config": {
///             "prebuilt_ambient_sound": "room_2",
///             "volume_gain_db": -6,
///         },
///     },
///     logging_settings={
///         "redaction_config": {
///             "enable_redaction": True,
///             "inspect_template": "projects/fake-project/locations/us/inspectTemplates/example-inspect",
///             "deidentify_template": "projects/fake-project/locations/us/deidentifyTemplates/example-deidentify",
///         },
///         "audio_recording_config": {
///             "gcs_bucket": "gs://fake-app-audio-recordings",
///             "gcs_path_prefix": "projects/fake-project/location/us/app/test-app/123/$session/123",
///         },
///         "bigquery_export_settings": {
///             "dataset": "projects/fake-project/datasets/fake_app_logs",
///             "enabled": False,
///             "project": "projects/fake-project",
///         },
///         "cloud_logging_settings": {
///             "enable_cloud_logging": True,
///         },
///         "conversation_logging_settings": {
///             "disable_conversation_logging": True,
///         },
///     },
///     model_settings={
///         "model": "gemini-1.5-flash",
///         "temperature": 0.5,
///     },
///     evaluation_metrics_thresholds={
///         "golden_evaluation_metrics_thresholds": {
///             "turn_level_metrics_thresholds": {
///                 "semantic_similarity_success_threshold": 3,
///                 "overall_tool_invocation_correctness_threshold": 1,
///             },
///             "expectation_level_metrics_thresholds": {
///                 "tool_invocation_parameter_correctness_threshold": 1,
///             },
///         },
///     },
///     variable_declarations=[{
///         "name": "test",
///         "description": "test",
///         "schema": {
///             "description": "schema description",
///             "type": "ARRAY",
///             "title": "title",
///             "nullable": True,
///             "requireds": ["some_property"],
///             "enums": [
///                 "VALUE_A",
///                 "VALUE_B",
///             ],
///             "ref": "#/defs/MyDefinition",
///             "unique_items": True,
///             "defs": json.dumps({
///                 "SimpleString": {
///                     "type": "STRING",
///                     "description": "A simple string definition",
///                 },
///             }),
///             "any_of": json.dumps([{
///                 "type": "STRING",
///                 "description": "any_of option 1: string",
///             }]),
///             "default": json.dumps(False),
///             "prefix_items": json.dumps([{
///                 "type": "ARRAY",
///                 "description": "prefix item 1",
///             }]),
///             "additional_properties": json.dumps({
///                 "type": "BOOLEAN",
///             }),
///             "properties": json.dumps({
///                 "name": {
///                     "type": "STRING",
///                     "description": "A name",
///                 },
///             }),
///             "items": json.dumps({
///                 "type": "ARRAY",
///                 "description": "An array",
///             }),
///         },
///     }],
///     global_instruction="You are a virtual assistant for an e-commerce platform. Be friendly and helpful.",
///     guardrails=[],
///     default_channel_profile={
///         "channel_type": "WEB_UI",
///         "disable_barge_in_control": False,
///         "disable_dtmf": True,
///         "persona_property": {
///             "persona": "CONCISE",
///         },
///         "profile_id": "profile-id",
///         "web_widget_config": {
///             "modality": "CHAT_ONLY",
///             "theme": "LIGHT",
///             "web_widget_title": "Help Assistant",
///         },
///     },
///     metadata={
///         "deployment_env": "test",
///     },
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     },
///     client_certificate_settings={
///         "tls_certificate": std.file(input="test-fixtures/cert.pem").result,
///         "private_key": fake_secret_version.name,
///         "passphrase": "fakepassphrase",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var fakePrivateKeySecret = new Gcp.SecretManager.Secret("fake_private_key_secret", new()
///     {
///         SecretId = "fake-pk-secret-app-tf1",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var fakeSecretVersion = new Gcp.SecretManager.SecretVersion("fake_secret_version", new()
///     {
///         Secret = fakePrivateKeySecret.Id,
///         SecretData = Std.File.Invoke(new()
///         {
///             Input = "test-fixtures/test.key",
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var privateKeyAccessor = new Gcp.SecretManager.SecretIamMember("private_key_accessor", new()
///     {
///         Project = fakePrivateKeySecret.Project,
///         SecretId = fakePrivateKeySecret.SecretId,
///         Role = "roles/secretmanager.secretAccessor",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-ces.iam.gserviceaccount.com",
///     });
///
///     var cesAppBasic = new Gcp.Ces.App("ces_app_basic", new()
///     {
///         AppId = "app-id",
///         Location = "us",
///         Description = "Basic CES App example",
///         DisplayName = "my-app",
///         Pinned = true,
///         LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
///         {
///             DefaultLanguageCode = "en-US",
///             SupportedLanguageCodes = new[]
///             {
///                 "es-ES",
///                 "fr-FR",
///             },
///             EnableMultilingualSupport = true,
///             FallbackAction = "escalate",
///         },
///         AudioProcessingConfig = new Gcp.Ces.Inputs.AppAudioProcessingConfigArgs
///         {
///             SynthesizeSpeechConfigs = new[]
///             {
///                 new Gcp.Ces.Inputs.AppAudioProcessingConfigSynthesizeSpeechConfigArgs
///                 {
///                     LanguageCode = "en-US",
///                     Voice = "en-US-Standard-A",
///                     SpeakingRate = 1,
///                 },
///                 new Gcp.Ces.Inputs.AppAudioProcessingConfigSynthesizeSpeechConfigArgs
///                 {
///                     LanguageCode = "es-ES",
///                     Voice = "es-ES-Standard-A",
///                     SpeakingRate = 0.95,
///                 },
///             },
///             BargeInConfig = new Gcp.Ces.Inputs.AppAudioProcessingConfigBargeInConfigArgs
///             {
///                 BargeInAwareness = true,
///             },
///             InactivityTimeout = "300s",
///             AmbientSoundConfig = new Gcp.Ces.Inputs.AppAudioProcessingConfigAmbientSoundConfigArgs
///             {
///                 PrebuiltAmbientSound = "room_2",
///                 VolumeGainDb = -6,
///             },
///         },
///         LoggingSettings = new Gcp.Ces.Inputs.AppLoggingSettingsArgs
///         {
///             RedactionConfig = new Gcp.Ces.Inputs.AppLoggingSettingsRedactionConfigArgs
///             {
///                 EnableRedaction = true,
///                 InspectTemplate = "projects/fake-project/locations/us/inspectTemplates/example-inspect",
///                 DeidentifyTemplate = "projects/fake-project/locations/us/deidentifyTemplates/example-deidentify",
///             },
///             AudioRecordingConfig = new Gcp.Ces.Inputs.AppLoggingSettingsAudioRecordingConfigArgs
///             {
///                 GcsBucket = "gs://fake-app-audio-recordings",
///                 GcsPathPrefix = "projects/fake-project/location/us/app/test-app/123/$session/123",
///             },
///             BigqueryExportSettings = new Gcp.Ces.Inputs.AppLoggingSettingsBigqueryExportSettingsArgs
///             {
///                 Dataset = "projects/fake-project/datasets/fake_app_logs",
///                 Enabled = false,
///                 Project = "projects/fake-project",
///             },
///             CloudLoggingSettings = new Gcp.Ces.Inputs.AppLoggingSettingsCloudLoggingSettingsArgs
///             {
///                 EnableCloudLogging = true,
///             },
///             ConversationLoggingSettings = new Gcp.Ces.Inputs.AppLoggingSettingsConversationLoggingSettingsArgs
///             {
///                 DisableConversationLogging = true,
///             },
///         },
///         ModelSettings = new Gcp.Ces.Inputs.AppModelSettingsArgs
///         {
///             Model = "gemini-1.5-flash",
///             Temperature = 0.5,
///         },
///         EvaluationMetricsThresholds = new Gcp.Ces.Inputs.AppEvaluationMetricsThresholdsArgs
///         {
///             GoldenEvaluationMetricsThresholds = new Gcp.Ces.Inputs.AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsArgs
///             {
///                 TurnLevelMetricsThresholds = new Gcp.Ces.Inputs.AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholdsArgs
///                 {
///                     SemanticSimilaritySuccessThreshold = 3,
///                     OverallToolInvocationCorrectnessThreshold = 1,
///                 },
///                 ExpectationLevelMetricsThresholds = new Gcp.Ces.Inputs.AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholdsArgs
///                 {
///                     ToolInvocationParameterCorrectnessThreshold = 1,
///                 },
///             },
///         },
///         VariableDeclarations = new[]
///         {
///             new Gcp.Ces.Inputs.AppVariableDeclarationArgs
///             {
///                 Name = "test",
///                 Description = "test",
///                 Schema = new Gcp.Ces.Inputs.AppVariableDeclarationSchemaArgs
///                 {
///                     Description = "schema description",
///                     Type = "ARRAY",
///                     Title = "title",
///                     Nullable = true,
///                     Requireds = new[]
///                     {
///                         "some_property",
///                     },
///                     Enums = new[]
///                     {
///                         "VALUE_A",
///                         "VALUE_B",
///                     },
///                     Ref = "#/defs/MyDefinition",
///                     UniqueItems = true,
///                     Defs = JsonSerializer.Serialize(new Dictionary<string, object?>
///                     {
///                         ["SimpleString"] = new Dictionary<string, object?>
///                         {
///                             ["type"] = "STRING",
///                             ["description"] = "A simple string definition",
///                         },
///                     }),
///                     AnyOf = JsonSerializer.Serialize(new[]
///                     {
///                         new Dictionary<string, object?>
///                         {
///                             ["type"] = "STRING",
///                             ["description"] = "any_of option 1: string",
///                         },
///                     }),
///                     Default = JsonSerializer.Serialize(false),
///                     PrefixItems = JsonSerializer.Serialize(new[]
///                     {
///                         new Dictionary<string, object?>
///                         {
///                             ["type"] = "ARRAY",
///                             ["description"] = "prefix item 1",
///                         },
///                     }),
///                     AdditionalProperties = JsonSerializer.Serialize(new Dictionary<string, object?>
///                     {
///                         ["type"] = "BOOLEAN",
///                     }),
///                     Properties = JsonSerializer.Serialize(new Dictionary<string, object?>
///                     {
///                         ["name"] = new Dictionary<string, object?>
///                         {
///                             ["type"] = "STRING",
///                             ["description"] = "A name",
///                         },
///                     }),
///                     Items = JsonSerializer.Serialize(new Dictionary<string, object?>
///                     {
///                         ["type"] = "ARRAY",
///                         ["description"] = "An array",
///                     }),
///                 },
///             },
///         },
///         GlobalInstruction = "You are a virtual assistant for an e-commerce platform. Be friendly and helpful.",
///         Guardrails = new[] {},
///         DefaultChannelProfile = new Gcp.Ces.Inputs.AppDefaultChannelProfileArgs
///         {
///             ChannelType = "WEB_UI",
///             DisableBargeInControl = false,
///             DisableDtmf = true,
///             PersonaProperty = new Gcp.Ces.Inputs.AppDefaultChannelProfilePersonaPropertyArgs
///             {
///                 Persona = "CONCISE",
///             },
///             ProfileId = "profile-id",
///             WebWidgetConfig = new Gcp.Ces.Inputs.AppDefaultChannelProfileWebWidgetConfigArgs
///             {
///                 Modality = "CHAT_ONLY",
///                 Theme = "LIGHT",
///                 WebWidgetTitle = "Help Assistant",
///             },
///         },
///         Metadata =
///         {
///             { "deployment_env", "test" },
///         },
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///         ClientCertificateSettings = new Gcp.Ces.Inputs.AppClientCertificateSettingsArgs
///         {
///             TlsCertificate = Std.File.Invoke(new()
///             {
///                 Input = "test-fixtures/cert.pem",
///             }).Apply(invoke => invoke.Result),
///             PrivateKey = fakeSecretVersion.Name,
///             Passphrase = "fakepassphrase",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fakePrivateKeySecret, err := secretmanager.NewSecret(ctx, "fake_private_key_secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("fake-pk-secret-app-tf1"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/test.key",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fakeSecretVersion, err := secretmanager.NewSecretVersion(ctx, "fake_secret_version", &secretmanager.SecretVersionArgs{
/// 			Secret:     fakePrivateKeySecret.ID(),
/// 			SecretData: pulumi.String(invokeFile.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretIamMember(ctx, "private_key_accessor", &secretmanager.SecretIamMemberArgs{
/// 			Project:  fakePrivateKeySecret.Project,
/// 			SecretId: fakePrivateKeySecret.SecretId,
/// 			Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// 			Member:   pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-ces.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"SimpleString": map[string]interface{}{
/// 				"type":        "STRING",
/// 				"description": "A simple string definition",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal([]map[string]interface{}{
/// 			map[string]interface{}{
/// 				"type":        "STRING",
/// 				"description": "any_of option 1: string",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		tmpJSON2, err := json.Marshal(false)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json2 := string(tmpJSON2)
/// 		tmpJSON3, err := json.Marshal([]map[string]interface{}{
/// 			map[string]interface{}{
/// 				"type":        "ARRAY",
/// 				"description": "prefix item 1",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json3 := string(tmpJSON3)
/// 		tmpJSON4, err := json.Marshal(map[string]interface{}{
/// 			"type": "BOOLEAN",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json4 := string(tmpJSON4)
/// 		tmpJSON5, err := json.Marshal(map[string]interface{}{
/// 			"name": map[string]interface{}{
/// 				"type":        "STRING",
/// 				"description": "A name",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json5 := string(tmpJSON5)
/// 		tmpJSON6, err := json.Marshal(map[string]interface{}{
/// 			"type":        "ARRAY",
/// 			"description": "An array",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json6 := string(tmpJSON6)
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewApp(ctx, "ces_app_basic", &ces.AppArgs{
/// 			AppId:       pulumi.String("app-id"),
/// 			Location:    pulumi.String("us"),
/// 			Description: pulumi.String("Basic CES App example"),
/// 			DisplayName: pulumi.String("my-app"),
/// 			Pinned:      pulumi.Bool(true),
/// 			LanguageSettings: &ces.AppLanguageSettingsArgs{
/// 				DefaultLanguageCode: pulumi.String("en-US"),
/// 				SupportedLanguageCodes: pulumi.StringArray{
/// 					pulumi.String("es-ES"),
/// 					pulumi.String("fr-FR"),
/// 				},
/// 				EnableMultilingualSupport: pulumi.Bool(true),
/// 				FallbackAction:            pulumi.String("escalate"),
/// 			},
/// 			AudioProcessingConfig: &ces.AppAudioProcessingConfigArgs{
/// 				SynthesizeSpeechConfigs: ces.AppAudioProcessingConfigSynthesizeSpeechConfigArray{
/// 					&ces.AppAudioProcessingConfigSynthesizeSpeechConfigArgs{
/// 						LanguageCode: pulumi.String("en-US"),
/// 						Voice:        pulumi.String("en-US-Standard-A"),
/// 						SpeakingRate: pulumi.Float64(1),
/// 					},
/// 					&ces.AppAudioProcessingConfigSynthesizeSpeechConfigArgs{
/// 						LanguageCode: pulumi.String("es-ES"),
/// 						Voice:        pulumi.String("es-ES-Standard-A"),
/// 						SpeakingRate: pulumi.Float64(0.95),
/// 					},
/// 				},
/// 				BargeInConfig: &ces.AppAudioProcessingConfigBargeInConfigArgs{
/// 					BargeInAwareness: pulumi.Bool(true),
/// 				},
/// 				InactivityTimeout: pulumi.String("300s"),
/// 				AmbientSoundConfig: &ces.AppAudioProcessingConfigAmbientSoundConfigArgs{
/// 					PrebuiltAmbientSound: pulumi.String("room_2"),
/// 					VolumeGainDb:         pulumi.Float64(-6),
/// 				},
/// 			},
/// 			LoggingSettings: &ces.AppLoggingSettingsArgs{
/// 				RedactionConfig: &ces.AppLoggingSettingsRedactionConfigArgs{
/// 					EnableRedaction:    pulumi.Bool(true),
/// 					InspectTemplate:    pulumi.String("projects/fake-project/locations/us/inspectTemplates/example-inspect"),
/// 					DeidentifyTemplate: pulumi.String("projects/fake-project/locations/us/deidentifyTemplates/example-deidentify"),
/// 				},
/// 				AudioRecordingConfig: &ces.AppLoggingSettingsAudioRecordingConfigArgs{
/// 					GcsBucket:     pulumi.String("gs://fake-app-audio-recordings"),
/// 					GcsPathPrefix: pulumi.String("projects/fake-project/location/us/app/test-app/123/$session/123"),
/// 				},
/// 				BigqueryExportSettings: &ces.AppLoggingSettingsBigqueryExportSettingsArgs{
/// 					Dataset: pulumi.String("projects/fake-project/datasets/fake_app_logs"),
/// 					Enabled: pulumi.Bool(false),
/// 					Project: pulumi.String("projects/fake-project"),
/// 				},
/// 				CloudLoggingSettings: &ces.AppLoggingSettingsCloudLoggingSettingsArgs{
/// 					EnableCloudLogging: pulumi.Bool(true),
/// 				},
/// 				ConversationLoggingSettings: &ces.AppLoggingSettingsConversationLoggingSettingsArgs{
/// 					DisableConversationLogging: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ModelSettings: &ces.AppModelSettingsArgs{
/// 				Model:       pulumi.String("gemini-1.5-flash"),
/// 				Temperature: pulumi.Float64(0.5),
/// 			},
/// 			EvaluationMetricsThresholds: &ces.AppEvaluationMetricsThresholdsArgs{
/// 				GoldenEvaluationMetricsThresholds: &ces.AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsArgs{
/// 					TurnLevelMetricsThresholds: &ces.AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholdsArgs{
/// 						SemanticSimilaritySuccessThreshold:        pulumi.Int(3),
/// 						OverallToolInvocationCorrectnessThreshold: pulumi.Float64(1),
/// 					},
/// 					ExpectationLevelMetricsThresholds: &ces.AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholdsArgs{
/// 						ToolInvocationParameterCorrectnessThreshold: pulumi.Float64(1),
/// 					},
/// 				},
/// 			},
/// 			VariableDeclarations: ces.AppVariableDeclarationArray{
/// 				&ces.AppVariableDeclarationArgs{
/// 					Name:        pulumi.String("test"),
/// 					Description: pulumi.String("test"),
/// 					Schema: &ces.AppVariableDeclarationSchemaArgs{
/// 						Description: pulumi.String("schema description"),
/// 						Type:        pulumi.String("ARRAY"),
/// 						Title:       pulumi.String("title"),
/// 						Nullable:    pulumi.Bool(true),
/// 						Requireds: pulumi.StringArray{
/// 							pulumi.String("some_property"),
/// 						},
/// 						Enums: pulumi.StringArray{
/// 							pulumi.String("VALUE_A"),
/// 							pulumi.String("VALUE_B"),
/// 						},
/// 						Ref:                  pulumi.String("#/defs/MyDefinition"),
/// 						UniqueItems:          pulumi.Bool(true),
/// 						Defs:                 pulumi.String(json0),
/// 						AnyOf:                pulumi.String(json1),
/// 						Default:              pulumi.String(json2),
/// 						PrefixItems:          pulumi.String(json3),
/// 						AdditionalProperties: pulumi.String(json4),
/// 						Properties:           pulumi.String(json5),
/// 						Items:                pulumi.String(json6),
/// 					},
/// 				},
/// 			},
/// 			GlobalInstruction: pulumi.String("You are a virtual assistant for an e-commerce platform. Be friendly and helpful."),
/// 			Guardrails:        pulumi.StringArray{},
/// 			DefaultChannelProfile: &ces.AppDefaultChannelProfileArgs{
/// 				ChannelType:           pulumi.String("WEB_UI"),
/// 				DisableBargeInControl: pulumi.Bool(false),
/// 				DisableDtmf:           pulumi.Bool(true),
/// 				PersonaProperty: &ces.AppDefaultChannelProfilePersonaPropertyArgs{
/// 					Persona: pulumi.String("CONCISE"),
/// 				},
/// 				ProfileId: pulumi.String("profile-id"),
/// 				WebWidgetConfig: &ces.AppDefaultChannelProfileWebWidgetConfigArgs{
/// 					Modality:       pulumi.String("CHAT_ONLY"),
/// 					Theme:          pulumi.String("LIGHT"),
/// 					WebWidgetTitle: pulumi.String("Help Assistant"),
/// 				},
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"deployment_env": pulumi.String("test"),
/// 			},
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 			ClientCertificateSettings: &ces.AppClientCertificateSettingsArgs{
/// 				TlsCertificate: pulumi.String(invokeFile1.Result),
/// 				PrivateKey:     fakeSecretVersion.Name,
/// 				Passphrase:     pulumi.String("fakepassphrase"),
/// 			},
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamMember;
/// import com.pulumi.gcp.secretmanager.SecretIamMemberArgs;
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppAudioProcessingConfigArgs;
/// import com.pulumi.gcp.ces.inputs.AppAudioProcessingConfigBargeInConfigArgs;
/// import com.pulumi.gcp.ces.inputs.AppAudioProcessingConfigAmbientSoundConfigArgs;
/// import com.pulumi.gcp.ces.inputs.AppLoggingSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppLoggingSettingsRedactionConfigArgs;
/// import com.pulumi.gcp.ces.inputs.AppLoggingSettingsAudioRecordingConfigArgs;
/// import com.pulumi.gcp.ces.inputs.AppLoggingSettingsBigqueryExportSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppLoggingSettingsCloudLoggingSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppLoggingSettingsConversationLoggingSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppModelSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppEvaluationMetricsThresholdsArgs;
/// import com.pulumi.gcp.ces.inputs.AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsArgs;
/// import com.pulumi.gcp.ces.inputs.AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholdsArgs;
/// import com.pulumi.gcp.ces.inputs.AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholdsArgs;
/// import com.pulumi.gcp.ces.inputs.AppVariableDeclarationArgs;
/// import com.pulumi.gcp.ces.inputs.AppVariableDeclarationSchemaArgs;
/// import com.pulumi.gcp.ces.inputs.AppDefaultChannelProfileArgs;
/// import com.pulumi.gcp.ces.inputs.AppDefaultChannelProfilePersonaPropertyArgs;
/// import com.pulumi.gcp.ces.inputs.AppDefaultChannelProfileWebWidgetConfigArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppClientCertificateSettingsArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var fakePrivateKeySecret = new Secret("fakePrivateKeySecret", SecretArgs.builder()
///             .secretId("fake-pk-secret-app-tf1")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var fakeSecretVersion = new SecretVersion("fakeSecretVersion", SecretVersionArgs.builder()
///             .secret(fakePrivateKeySecret.id())
///             .secretData(StdFunctions.file(FileArgs.builder()
///                 .input("test-fixtures/test.key")
///                 .build()).result())
///             .build());
///
///         var privateKeyAccessor = new SecretIamMember("privateKeyAccessor", SecretIamMemberArgs.builder()
///             .project(fakePrivateKeySecret.project())
///             .secretId(fakePrivateKeySecret.secretId())
///             .role("roles/secretmanager.secretAccessor")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-ces.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var cesAppBasic = new App("cesAppBasic", AppArgs.builder()
///             .appId("app-id")
///             .location("us")
///             .description("Basic CES App example")
///             .displayName("my-app")
///             .pinned(true)
///             .languageSettings(AppLanguageSettingsArgs.builder()
///                 .defaultLanguageCode("en-US")
///                 .supportedLanguageCodes(
///                     "es-ES",
///                     "fr-FR")
///                 .enableMultilingualSupport(true)
///                 .fallbackAction("escalate")
///                 .build())
///             .audioProcessingConfig(AppAudioProcessingConfigArgs.builder()
///                 .synthesizeSpeechConfigs(
///                     AppAudioProcessingConfigSynthesizeSpeechConfigArgs.builder()
///                         .languageCode("en-US")
///                         .voice("en-US-Standard-A")
///                         .speakingRate(1.0)
///                         .build(),
///                     AppAudioProcessingConfigSynthesizeSpeechConfigArgs.builder()
///                         .languageCode("es-ES")
///                         .voice("es-ES-Standard-A")
///                         .speakingRate(0.95)
///                         .build())
///                 .bargeInConfig(AppAudioProcessingConfigBargeInConfigArgs.builder()
///                     .bargeInAwareness(true)
///                     .build())
///                 .inactivityTimeout("300s")
///                 .ambientSoundConfig(AppAudioProcessingConfigAmbientSoundConfigArgs.builder()
///                     .prebuiltAmbientSound("room_2")
///                     .volumeGainDb(-6.0)
///                     .build())
///                 .build())
///             .loggingSettings(AppLoggingSettingsArgs.builder()
///                 .redactionConfig(AppLoggingSettingsRedactionConfigArgs.builder()
///                     .enableRedaction(true)
///                     .inspectTemplate("projects/fake-project/locations/us/inspectTemplates/example-inspect")
///                     .deidentifyTemplate("projects/fake-project/locations/us/deidentifyTemplates/example-deidentify")
///                     .build())
///                 .audioRecordingConfig(AppLoggingSettingsAudioRecordingConfigArgs.builder()
///                     .gcsBucket("gs://fake-app-audio-recordings")
///                     .gcsPathPrefix("projects/fake-project/location/us/app/test-app/123/$session/123")
///                     .build())
///                 .bigqueryExportSettings(AppLoggingSettingsBigqueryExportSettingsArgs.builder()
///                     .dataset("projects/fake-project/datasets/fake_app_logs")
///                     .enabled(false)
///                     .project("projects/fake-project")
///                     .build())
///                 .cloudLoggingSettings(AppLoggingSettingsCloudLoggingSettingsArgs.builder()
///                     .enableCloudLogging(true)
///                     .build())
///                 .conversationLoggingSettings(AppLoggingSettingsConversationLoggingSettingsArgs.builder()
///                     .disableConversationLogging(true)
///                     .build())
///                 .build())
///             .modelSettings(AppModelSettingsArgs.builder()
///                 .model("gemini-1.5-flash")
///                 .temperature(0.5)
///                 .build())
///             .evaluationMetricsThresholds(AppEvaluationMetricsThresholdsArgs.builder()
///                 .goldenEvaluationMetricsThresholds(AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsArgs.builder()
///                     .turnLevelMetricsThresholds(AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholdsArgs.builder()
///                         .semanticSimilaritySuccessThreshold(3)
///                         .overallToolInvocationCorrectnessThreshold(1.0)
///                         .build())
///                     .expectationLevelMetricsThresholds(AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholdsArgs.builder()
///                         .toolInvocationParameterCorrectnessThreshold(1.0)
///                         .build())
///                     .build())
///                 .build())
///             .variableDeclarations(AppVariableDeclarationArgs.builder()
///                 .name("test")
///                 .description("test")
///                 .schema(AppVariableDeclarationSchemaArgs.builder()
///                     .description("schema description")
///                     .type("ARRAY")
///                     .title("title")
///                     .nullable(true)
///                     .requireds("some_property")
///                     .enums(
///                         "VALUE_A",
///                         "VALUE_B")
///                     .ref("#/defs/MyDefinition")
///                     .uniqueItems(true)
///                     .defs(serializeJson(
///                         jsonObject(
///                             jsonProperty("SimpleString", jsonObject(
///                                 jsonProperty("type", "STRING"),
///                                 jsonProperty("description", "A simple string definition")
///                             ))
///                         )))
///                     .anyOf(serializeJson(
///                         jsonArray(jsonObject(
///                             jsonProperty("type", "STRING"),
///                             jsonProperty("description", "any_of option 1: string")
///                         ))))
///                     .default_(serializeJson(
///                         false))
///                     .prefixItems(serializeJson(
///                         jsonArray(jsonObject(
///                             jsonProperty("type", "ARRAY"),
///                             jsonProperty("description", "prefix item 1")
///                         ))))
///                     .additionalProperties(serializeJson(
///                         jsonObject(
///                             jsonProperty("type", "BOOLEAN")
///                         )))
///                     .properties(serializeJson(
///                         jsonObject(
///                             jsonProperty("name", jsonObject(
///                                 jsonProperty("type", "STRING"),
///                                 jsonProperty("description", "A name")
///                             ))
///                         )))
///                     .items(serializeJson(
///                         jsonObject(
///                             jsonProperty("type", "ARRAY"),
///                             jsonProperty("description", "An array")
///                         )))
///                     .build())
///                 .build())
///             .globalInstruction("You are a virtual assistant for an e-commerce platform. Be friendly and helpful.")
///             .guardrails()
///             .defaultChannelProfile(AppDefaultChannelProfileArgs.builder()
///                 .channelType("WEB_UI")
///                 .disableBargeInControl(false)
///                 .disableDtmf(true)
///                 .personaProperty(AppDefaultChannelProfilePersonaPropertyArgs.builder()
///                     .persona("CONCISE")
///                     .build())
///                 .profileId("profile-id")
///                 .webWidgetConfig(AppDefaultChannelProfileWebWidgetConfigArgs.builder()
///                     .modality("CHAT_ONLY")
///                     .theme("LIGHT")
///                     .webWidgetTitle("Help Assistant")
///                     .build())
///                 .build())
///             .metadata(Map.of("deployment_env", "test"))
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .clientCertificateSettings(AppClientCertificateSettingsArgs.builder()
///                 .tlsCertificate(StdFunctions.file(FileArgs.builder()
///                     .input("test-fixtures/cert.pem")
///                     .build()).result())
///                 .privateKey(fakeSecretVersion.name())
///                 .passphrase("fakepassphrase")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fakePrivateKeySecret:
///     type: gcp:secretmanager:Secret
///     name: fake_private_key_secret
///     properties:
///       secretId: fake-pk-secret-app-tf1
///       replication:
///         auto: {}
///   fakeSecretVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: fake_secret_version
///     properties:
///       secret: ${fakePrivateKeySecret.id}
///       secretData:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: test-fixtures/test.key
///           return: result
///   privateKeyAccessor:
///     type: gcp:secretmanager:SecretIamMember
///     name: private_key_accessor
///     properties:
///       project: ${fakePrivateKeySecret.project}
///       secretId: ${fakePrivateKeySecret.secretId}
///       role: roles/secretmanager.secretAccessor
///       member: serviceAccount:service-${project.number}@gcp-sa-ces.iam.gserviceaccount.com
///   cesAppBasic:
///     type: gcp:ces:App
///     name: ces_app_basic
///     properties:
///       appId: app-id
///       location: us
///       description: Basic CES App example
///       displayName: my-app
///       pinned: true
///       languageSettings:
///         defaultLanguageCode: en-US
///         supportedLanguageCodes:
///           - es-ES
///           - fr-FR
///         enableMultilingualSupport: true
///         fallbackAction: escalate
///       audioProcessingConfig:
///         synthesizeSpeechConfigs:
///           - languageCode: en-US
///             voice: en-US-Standard-A
///             speakingRate: 1
///           - languageCode: es-ES
///             voice: es-ES-Standard-A
///             speakingRate: 0.95
///         bargeInConfig:
///           bargeInAwareness: true
///         inactivityTimeout: 300s
///         ambientSoundConfig:
///           prebuiltAmbientSound: room_2
///           volumeGainDb: -6
///       loggingSettings:
///         redactionConfig:
///           enableRedaction: true
///           inspectTemplate: projects/fake-project/locations/us/inspectTemplates/example-inspect
///           deidentifyTemplate: projects/fake-project/locations/us/deidentifyTemplates/example-deidentify
///         audioRecordingConfig:
///           gcsBucket: gs://fake-app-audio-recordings
///           gcsPathPrefix: projects/fake-project/location/us/app/test-app/123/$session/123
///         bigqueryExportSettings:
///           dataset: projects/fake-project/datasets/fake_app_logs
///           enabled: false
///           project: projects/fake-project
///         cloudLoggingSettings:
///           enableCloudLogging: true
///         conversationLoggingSettings:
///           disableConversationLogging: true
///       modelSettings:
///         model: gemini-1.5-flash
///         temperature: 0.5
///       evaluationMetricsThresholds:
///         goldenEvaluationMetricsThresholds:
///           turnLevelMetricsThresholds:
///             semanticSimilaritySuccessThreshold: 3
///             overallToolInvocationCorrectnessThreshold: 1
///           expectationLevelMetricsThresholds:
///             toolInvocationParameterCorrectnessThreshold: 1
///       variableDeclarations:
///         - name: test
///           description: test
///           schema:
///             description: schema description
///             type: ARRAY
///             title: title
///             nullable: true
///             requireds:
///               - some_property
///             enums:
///               - VALUE_A
///               - VALUE_B
///             ref: '#/defs/MyDefinition'
///             uniqueItems: true
///             defs:
///               fn::toJSON:
///                 SimpleString:
///                   type: STRING
///                   description: A simple string definition
///             anyOf:
///               fn::toJSON:
///                 - type: STRING
///                   description: 'any_of option 1: string'
///             default:
///               fn::toJSON: false
///             prefixItems:
///               fn::toJSON:
///                 - type: ARRAY
///                   description: prefix item 1
///             additionalProperties:
///               fn::toJSON:
///                 type: BOOLEAN
///             properties:
///               fn::toJSON:
///                 name:
///                   type: STRING
///                   description: A name
///             items:
///               fn::toJSON:
///                 type: ARRAY
///                 description: An array
///       globalInstruction: You are a virtual assistant for an e-commerce platform. Be friendly and helpful.
///       guardrails: []
///       defaultChannelProfile:
///         channelType: WEB_UI
///         disableBargeInControl: false
///         disableDtmf: true
///         personaProperty:
///           persona: CONCISE
///         profileId: profile-id
///         webWidgetConfig:
///           modality: CHAT_ONLY
///           theme: LIGHT
///           webWidgetTitle: Help Assistant
///       metadata:
///         deployment_env: test
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///       clientCertificateSettings:
///         tlsCertificate:
///           fn::invoke:
///             function: std:file
///             arguments:
///               input: test-fixtures/cert.pem
///             return: result
///         privateKey: ${fakeSecretVersion.name}
///         passphrase: fakepassphrase
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Ces App Ambient Sound Gcs Uri
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cesAppAmbientSoundGcsUri = new gcp.ces.App("ces_app_ambient_sound_gcs_uri", {
///     appId: "app-id",
///     location: "us",
///     description: "Basic CES App example",
///     displayName: "my-app-ambient-sound-gcs-uri",
///     languageSettings: {
///         defaultLanguageCode: "en-US",
///         supportedLanguageCodes: [
///             "es-ES",
///             "fr-FR",
///         ],
///         enableMultilingualSupport: true,
///         fallbackAction: "escalate",
///     },
///     audioProcessingConfig: {
///         synthesizeSpeechConfigs: [
///             {
///                 languageCode: "en-US",
///                 voice: "en-US-Standard-A",
///                 speakingRate: 1,
///             },
///             {
///                 languageCode: "es-ES",
///                 voice: "es-ES-Standard-A",
///                 speakingRate: 0.95,
///             },
///         ],
///         bargeInConfig: {
///             bargeInAwareness: true,
///         },
///         inactivityTimeout: "300s",
///         ambientSoundConfig: {
///             gcsUri: "gs://fake-bucket/sounds/ambient.wav",
///             volumeGainDb: -6,
///         },
///     },
///     loggingSettings: {
///         redactionConfig: {
///             enableRedaction: true,
///             inspectTemplate: "projects/fake-project/locations/us/inspectTemplates/example-inspect",
///             deidentifyTemplate: "projects/fake-project/locations/us/deidentifyTemplates/example-deidentify",
///         },
///         audioRecordingConfig: {
///             gcsBucket: "gs://fake-app-audio-recordings",
///             gcsPathPrefix: "projects/fake-project/location/us/app/fake-app/123/$session/123",
///         },
///         bigqueryExportSettings: {
///             dataset: "projects/fake-project/datasets/fake_app_logs",
///             enabled: false,
///             project: "projects/fake-project",
///         },
///         cloudLoggingSettings: {
///             enableCloudLogging: true,
///         },
///         conversationLoggingSettings: {
///             disableConversationLogging: true,
///         },
///     },
///     modelSettings: {
///         model: "gemini-1.5-flash",
///         temperature: 0.5,
///     },
///     evaluationMetricsThresholds: {
///         goldenEvaluationMetricsThresholds: {
///             turnLevelMetricsThresholds: {
///                 semanticSimilaritySuccessThreshold: 3,
///                 overallToolInvocationCorrectnessThreshold: 1,
///             },
///             expectationLevelMetricsThresholds: {
///                 toolInvocationParameterCorrectnessThreshold: 1,
///             },
///         },
///     },
///     variableDeclarations: [{
///         name: "test",
///         description: "test",
///         schema: {
///             description: "schema description",
///             type: "ARRAY",
///             nullable: true,
///             requireds: ["some_property"],
///             enums: [
///                 "VALUE_A",
///                 "VALUE_B",
///             ],
///             ref: "#/defs/MyDefinition",
///             uniqueItems: true,
///             defs: JSON.stringify({
///                 SimpleString: {
///                     type: "STRING",
///                     description: "A simple string definition",
///                 },
///             }),
///             anyOf: JSON.stringify([{
///                 type: "STRING",
///                 description: "any_of option 1: string",
///             }]),
///             "default": JSON.stringify(false),
///             prefixItems: JSON.stringify([{
///                 type: "ARRAY",
///                 description: "prefix item 1",
///             }]),
///             additionalProperties: JSON.stringify({
///                 type: "BOOLEAN",
///             }),
///             properties: JSON.stringify({
///                 name: {
///                     type: "STRING",
///                     description: "A name",
///                 },
///             }),
///             items: JSON.stringify({
///                 type: "ARRAY",
///                 description: "An array",
///             }),
///         },
///     }],
///     globalInstruction: "You are a virtual assistant for an e-commerce platform. Be friendly and helpful.",
///     guardrails: [],
///     defaultChannelProfile: {
///         channelType: "WEB_UI",
///         disableBargeInControl: false,
///         disableDtmf: true,
///         personaProperty: {
///             persona: "CONCISE",
///         },
///         profileId: "profile-id",
///         webWidgetConfig: {
///             modality: "CHAT_ONLY",
///             theme: "LIGHT",
///             webWidgetTitle: "Help Assistant",
///         },
///     },
///     metadata: {
///         deployment_env: "test",
///     },
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// ces_app_ambient_sound_gcs_uri = gcp.ces.App("ces_app_ambient_sound_gcs_uri",
///     app_id="app-id",
///     location="us",
///     description="Basic CES App example",
///     display_name="my-app-ambient-sound-gcs-uri",
///     language_settings={
///         "default_language_code": "en-US",
///         "supported_language_codes": [
///             "es-ES",
///             "fr-FR",
///         ],
///         "enable_multilingual_support": True,
///         "fallback_action": "escalate",
///     },
///     audio_processing_config={
///         "synthesize_speech_configs": [
///             {
///                 "language_code": "en-US",
///                 "voice": "en-US-Standard-A",
///                 "speaking_rate": 1,
///             },
///             {
///                 "language_code": "es-ES",
///                 "voice": "es-ES-Standard-A",
///                 "speaking_rate": 0.95,
///             },
///         ],
///         "barge_in_config": {
///             "barge_in_awareness": True,
///         },
///         "inactivity_timeout": "300s",
///         "ambient_sound_config": {
///             "gcs_uri": "gs://fake-bucket/sounds/ambient.wav",
///             "volume_gain_db": -6,
///         },
///     },
///     logging_settings={
///         "redaction_config": {
///             "enable_redaction": True,
///             "inspect_template": "projects/fake-project/locations/us/inspectTemplates/example-inspect",
///             "deidentify_template": "projects/fake-project/locations/us/deidentifyTemplates/example-deidentify",
///         },
///         "audio_recording_config": {
///             "gcs_bucket": "gs://fake-app-audio-recordings",
///             "gcs_path_prefix": "projects/fake-project/location/us/app/fake-app/123/$session/123",
///         },
///         "bigquery_export_settings": {
///             "dataset": "projects/fake-project/datasets/fake_app_logs",
///             "enabled": False,
///             "project": "projects/fake-project",
///         },
///         "cloud_logging_settings": {
///             "enable_cloud_logging": True,
///         },
///         "conversation_logging_settings": {
///             "disable_conversation_logging": True,
///         },
///     },
///     model_settings={
///         "model": "gemini-1.5-flash",
///         "temperature": 0.5,
///     },
///     evaluation_metrics_thresholds={
///         "golden_evaluation_metrics_thresholds": {
///             "turn_level_metrics_thresholds": {
///                 "semantic_similarity_success_threshold": 3,
///                 "overall_tool_invocation_correctness_threshold": 1,
///             },
///             "expectation_level_metrics_thresholds": {
///                 "tool_invocation_parameter_correctness_threshold": 1,
///             },
///         },
///     },
///     variable_declarations=[{
///         "name": "test",
///         "description": "test",
///         "schema": {
///             "description": "schema description",
///             "type": "ARRAY",
///             "nullable": True,
///             "requireds": ["some_property"],
///             "enums": [
///                 "VALUE_A",
///                 "VALUE_B",
///             ],
///             "ref": "#/defs/MyDefinition",
///             "unique_items": True,
///             "defs": json.dumps({
///                 "SimpleString": {
///                     "type": "STRING",
///                     "description": "A simple string definition",
///                 },
///             }),
///             "any_of": json.dumps([{
///                 "type": "STRING",
///                 "description": "any_of option 1: string",
///             }]),
///             "default": json.dumps(False),
///             "prefix_items": json.dumps([{
///                 "type": "ARRAY",
///                 "description": "prefix item 1",
///             }]),
///             "additional_properties": json.dumps({
///                 "type": "BOOLEAN",
///             }),
///             "properties": json.dumps({
///                 "name": {
///                     "type": "STRING",
///                     "description": "A name",
///                 },
///             }),
///             "items": json.dumps({
///                 "type": "ARRAY",
///                 "description": "An array",
///             }),
///         },
///     }],
///     global_instruction="You are a virtual assistant for an e-commerce platform. Be friendly and helpful.",
///     guardrails=[],
///     default_channel_profile={
///         "channel_type": "WEB_UI",
///         "disable_barge_in_control": False,
///         "disable_dtmf": True,
///         "persona_property": {
///             "persona": "CONCISE",
///         },
///         "profile_id": "profile-id",
///         "web_widget_config": {
///             "modality": "CHAT_ONLY",
///             "theme": "LIGHT",
///             "web_widget_title": "Help Assistant",
///         },
///     },
///     metadata={
///         "deployment_env": "test",
///     },
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cesAppAmbientSoundGcsUri = new Gcp.Ces.App("ces_app_ambient_sound_gcs_uri", new()
///     {
///         AppId = "app-id",
///         Location = "us",
///         Description = "Basic CES App example",
///         DisplayName = "my-app-ambient-sound-gcs-uri",
///         LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
///         {
///             DefaultLanguageCode = "en-US",
///             SupportedLanguageCodes = new[]
///             {
///                 "es-ES",
///                 "fr-FR",
///             },
///             EnableMultilingualSupport = true,
///             FallbackAction = "escalate",
///         },
///         AudioProcessingConfig = new Gcp.Ces.Inputs.AppAudioProcessingConfigArgs
///         {
///             SynthesizeSpeechConfigs = new[]
///             {
///                 new Gcp.Ces.Inputs.AppAudioProcessingConfigSynthesizeSpeechConfigArgs
///                 {
///                     LanguageCode = "en-US",
///                     Voice = "en-US-Standard-A",
///                     SpeakingRate = 1,
///                 },
///                 new Gcp.Ces.Inputs.AppAudioProcessingConfigSynthesizeSpeechConfigArgs
///                 {
///                     LanguageCode = "es-ES",
///                     Voice = "es-ES-Standard-A",
///                     SpeakingRate = 0.95,
///                 },
///             },
///             BargeInConfig = new Gcp.Ces.Inputs.AppAudioProcessingConfigBargeInConfigArgs
///             {
///                 BargeInAwareness = true,
///             },
///             InactivityTimeout = "300s",
///             AmbientSoundConfig = new Gcp.Ces.Inputs.AppAudioProcessingConfigAmbientSoundConfigArgs
///             {
///                 GcsUri = "gs://fake-bucket/sounds/ambient.wav",
///                 VolumeGainDb = -6,
///             },
///         },
///         LoggingSettings = new Gcp.Ces.Inputs.AppLoggingSettingsArgs
///         {
///             RedactionConfig = new Gcp.Ces.Inputs.AppLoggingSettingsRedactionConfigArgs
///             {
///                 EnableRedaction = true,
///                 InspectTemplate = "projects/fake-project/locations/us/inspectTemplates/example-inspect",
///                 DeidentifyTemplate = "projects/fake-project/locations/us/deidentifyTemplates/example-deidentify",
///             },
///             AudioRecordingConfig = new Gcp.Ces.Inputs.AppLoggingSettingsAudioRecordingConfigArgs
///             {
///                 GcsBucket = "gs://fake-app-audio-recordings",
///                 GcsPathPrefix = "projects/fake-project/location/us/app/fake-app/123/$session/123",
///             },
///             BigqueryExportSettings = new Gcp.Ces.Inputs.AppLoggingSettingsBigqueryExportSettingsArgs
///             {
///                 Dataset = "projects/fake-project/datasets/fake_app_logs",
///                 Enabled = false,
///                 Project = "projects/fake-project",
///             },
///             CloudLoggingSettings = new Gcp.Ces.Inputs.AppLoggingSettingsCloudLoggingSettingsArgs
///             {
///                 EnableCloudLogging = true,
///             },
///             ConversationLoggingSettings = new Gcp.Ces.Inputs.AppLoggingSettingsConversationLoggingSettingsArgs
///             {
///                 DisableConversationLogging = true,
///             },
///         },
///         ModelSettings = new Gcp.Ces.Inputs.AppModelSettingsArgs
///         {
///             Model = "gemini-1.5-flash",
///             Temperature = 0.5,
///         },
///         EvaluationMetricsThresholds = new Gcp.Ces.Inputs.AppEvaluationMetricsThresholdsArgs
///         {
///             GoldenEvaluationMetricsThresholds = new Gcp.Ces.Inputs.AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsArgs
///             {
///                 TurnLevelMetricsThresholds = new Gcp.Ces.Inputs.AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholdsArgs
///                 {
///                     SemanticSimilaritySuccessThreshold = 3,
///                     OverallToolInvocationCorrectnessThreshold = 1,
///                 },
///                 ExpectationLevelMetricsThresholds = new Gcp.Ces.Inputs.AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholdsArgs
///                 {
///                     ToolInvocationParameterCorrectnessThreshold = 1,
///                 },
///             },
///         },
///         VariableDeclarations = new[]
///         {
///             new Gcp.Ces.Inputs.AppVariableDeclarationArgs
///             {
///                 Name = "test",
///                 Description = "test",
///                 Schema = new Gcp.Ces.Inputs.AppVariableDeclarationSchemaArgs
///                 {
///                     Description = "schema description",
///                     Type = "ARRAY",
///                     Nullable = true,
///                     Requireds = new[]
///                     {
///                         "some_property",
///                     },
///                     Enums = new[]
///                     {
///                         "VALUE_A",
///                         "VALUE_B",
///                     },
///                     Ref = "#/defs/MyDefinition",
///                     UniqueItems = true,
///                     Defs = JsonSerializer.Serialize(new Dictionary<string, object?>
///                     {
///                         ["SimpleString"] = new Dictionary<string, object?>
///                         {
///                             ["type"] = "STRING",
///                             ["description"] = "A simple string definition",
///                         },
///                     }),
///                     AnyOf = JsonSerializer.Serialize(new[]
///                     {
///                         new Dictionary<string, object?>
///                         {
///                             ["type"] = "STRING",
///                             ["description"] = "any_of option 1: string",
///                         },
///                     }),
///                     Default = JsonSerializer.Serialize(false),
///                     PrefixItems = JsonSerializer.Serialize(new[]
///                     {
///                         new Dictionary<string, object?>
///                         {
///                             ["type"] = "ARRAY",
///                             ["description"] = "prefix item 1",
///                         },
///                     }),
///                     AdditionalProperties = JsonSerializer.Serialize(new Dictionary<string, object?>
///                     {
///                         ["type"] = "BOOLEAN",
///                     }),
///                     Properties = JsonSerializer.Serialize(new Dictionary<string, object?>
///                     {
///                         ["name"] = new Dictionary<string, object?>
///                         {
///                             ["type"] = "STRING",
///                             ["description"] = "A name",
///                         },
///                     }),
///                     Items = JsonSerializer.Serialize(new Dictionary<string, object?>
///                     {
///                         ["type"] = "ARRAY",
///                         ["description"] = "An array",
///                     }),
///                 },
///             },
///         },
///         GlobalInstruction = "You are a virtual assistant for an e-commerce platform. Be friendly and helpful.",
///         Guardrails = new[] {},
///         DefaultChannelProfile = new Gcp.Ces.Inputs.AppDefaultChannelProfileArgs
///         {
///             ChannelType = "WEB_UI",
///             DisableBargeInControl = false,
///             DisableDtmf = true,
///             PersonaProperty = new Gcp.Ces.Inputs.AppDefaultChannelProfilePersonaPropertyArgs
///             {
///                 Persona = "CONCISE",
///             },
///             ProfileId = "profile-id",
///             WebWidgetConfig = new Gcp.Ces.Inputs.AppDefaultChannelProfileWebWidgetConfigArgs
///             {
///                 Modality = "CHAT_ONLY",
///                 Theme = "LIGHT",
///                 WebWidgetTitle = "Help Assistant",
///             },
///         },
///         Metadata =
///         {
///             { "deployment_env", "test" },
///         },
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"SimpleString": map[string]interface{}{
/// 				"type":        "STRING",
/// 				"description": "A simple string definition",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal([]map[string]interface{}{
/// 			map[string]interface{}{
/// 				"type":        "STRING",
/// 				"description": "any_of option 1: string",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		tmpJSON2, err := json.Marshal(false)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json2 := string(tmpJSON2)
/// 		tmpJSON3, err := json.Marshal([]map[string]interface{}{
/// 			map[string]interface{}{
/// 				"type":        "ARRAY",
/// 				"description": "prefix item 1",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json3 := string(tmpJSON3)
/// 		tmpJSON4, err := json.Marshal(map[string]interface{}{
/// 			"type": "BOOLEAN",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json4 := string(tmpJSON4)
/// 		tmpJSON5, err := json.Marshal(map[string]interface{}{
/// 			"name": map[string]interface{}{
/// 				"type":        "STRING",
/// 				"description": "A name",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json5 := string(tmpJSON5)
/// 		tmpJSON6, err := json.Marshal(map[string]interface{}{
/// 			"type":        "ARRAY",
/// 			"description": "An array",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json6 := string(tmpJSON6)
/// 		_, err = ces.NewApp(ctx, "ces_app_ambient_sound_gcs_uri", &ces.AppArgs{
/// 			AppId:       pulumi.String("app-id"),
/// 			Location:    pulumi.String("us"),
/// 			Description: pulumi.String("Basic CES App example"),
/// 			DisplayName: pulumi.String("my-app-ambient-sound-gcs-uri"),
/// 			LanguageSettings: &ces.AppLanguageSettingsArgs{
/// 				DefaultLanguageCode: pulumi.String("en-US"),
/// 				SupportedLanguageCodes: pulumi.StringArray{
/// 					pulumi.String("es-ES"),
/// 					pulumi.String("fr-FR"),
/// 				},
/// 				EnableMultilingualSupport: pulumi.Bool(true),
/// 				FallbackAction:            pulumi.String("escalate"),
/// 			},
/// 			AudioProcessingConfig: &ces.AppAudioProcessingConfigArgs{
/// 				SynthesizeSpeechConfigs: ces.AppAudioProcessingConfigSynthesizeSpeechConfigArray{
/// 					&ces.AppAudioProcessingConfigSynthesizeSpeechConfigArgs{
/// 						LanguageCode: pulumi.String("en-US"),
/// 						Voice:        pulumi.String("en-US-Standard-A"),
/// 						SpeakingRate: pulumi.Float64(1),
/// 					},
/// 					&ces.AppAudioProcessingConfigSynthesizeSpeechConfigArgs{
/// 						LanguageCode: pulumi.String("es-ES"),
/// 						Voice:        pulumi.String("es-ES-Standard-A"),
/// 						SpeakingRate: pulumi.Float64(0.95),
/// 					},
/// 				},
/// 				BargeInConfig: &ces.AppAudioProcessingConfigBargeInConfigArgs{
/// 					BargeInAwareness: pulumi.Bool(true),
/// 				},
/// 				InactivityTimeout: pulumi.String("300s"),
/// 				AmbientSoundConfig: &ces.AppAudioProcessingConfigAmbientSoundConfigArgs{
/// 					GcsUri:       pulumi.String("gs://fake-bucket/sounds/ambient.wav"),
/// 					VolumeGainDb: pulumi.Float64(-6),
/// 				},
/// 			},
/// 			LoggingSettings: &ces.AppLoggingSettingsArgs{
/// 				RedactionConfig: &ces.AppLoggingSettingsRedactionConfigArgs{
/// 					EnableRedaction:    pulumi.Bool(true),
/// 					InspectTemplate:    pulumi.String("projects/fake-project/locations/us/inspectTemplates/example-inspect"),
/// 					DeidentifyTemplate: pulumi.String("projects/fake-project/locations/us/deidentifyTemplates/example-deidentify"),
/// 				},
/// 				AudioRecordingConfig: &ces.AppLoggingSettingsAudioRecordingConfigArgs{
/// 					GcsBucket:     pulumi.String("gs://fake-app-audio-recordings"),
/// 					GcsPathPrefix: pulumi.String("projects/fake-project/location/us/app/fake-app/123/$session/123"),
/// 				},
/// 				BigqueryExportSettings: &ces.AppLoggingSettingsBigqueryExportSettingsArgs{
/// 					Dataset: pulumi.String("projects/fake-project/datasets/fake_app_logs"),
/// 					Enabled: pulumi.Bool(false),
/// 					Project: pulumi.String("projects/fake-project"),
/// 				},
/// 				CloudLoggingSettings: &ces.AppLoggingSettingsCloudLoggingSettingsArgs{
/// 					EnableCloudLogging: pulumi.Bool(true),
/// 				},
/// 				ConversationLoggingSettings: &ces.AppLoggingSettingsConversationLoggingSettingsArgs{
/// 					DisableConversationLogging: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ModelSettings: &ces.AppModelSettingsArgs{
/// 				Model:       pulumi.String("gemini-1.5-flash"),
/// 				Temperature: pulumi.Float64(0.5),
/// 			},
/// 			EvaluationMetricsThresholds: &ces.AppEvaluationMetricsThresholdsArgs{
/// 				GoldenEvaluationMetricsThresholds: &ces.AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsArgs{
/// 					TurnLevelMetricsThresholds: &ces.AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholdsArgs{
/// 						SemanticSimilaritySuccessThreshold:        pulumi.Int(3),
/// 						OverallToolInvocationCorrectnessThreshold: pulumi.Float64(1),
/// 					},
/// 					ExpectationLevelMetricsThresholds: &ces.AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholdsArgs{
/// 						ToolInvocationParameterCorrectnessThreshold: pulumi.Float64(1),
/// 					},
/// 				},
/// 			},
/// 			VariableDeclarations: ces.AppVariableDeclarationArray{
/// 				&ces.AppVariableDeclarationArgs{
/// 					Name:        pulumi.String("test"),
/// 					Description: pulumi.String("test"),
/// 					Schema: &ces.AppVariableDeclarationSchemaArgs{
/// 						Description: pulumi.String("schema description"),
/// 						Type:        pulumi.String("ARRAY"),
/// 						Nullable:    pulumi.Bool(true),
/// 						Requireds: pulumi.StringArray{
/// 							pulumi.String("some_property"),
/// 						},
/// 						Enums: pulumi.StringArray{
/// 							pulumi.String("VALUE_A"),
/// 							pulumi.String("VALUE_B"),
/// 						},
/// 						Ref:                  pulumi.String("#/defs/MyDefinition"),
/// 						UniqueItems:          pulumi.Bool(true),
/// 						Defs:                 pulumi.String(json0),
/// 						AnyOf:                pulumi.String(json1),
/// 						Default:              pulumi.String(json2),
/// 						PrefixItems:          pulumi.String(json3),
/// 						AdditionalProperties: pulumi.String(json4),
/// 						Properties:           pulumi.String(json5),
/// 						Items:                pulumi.String(json6),
/// 					},
/// 				},
/// 			},
/// 			GlobalInstruction: pulumi.String("You are a virtual assistant for an e-commerce platform. Be friendly and helpful."),
/// 			Guardrails:        pulumi.StringArray{},
/// 			DefaultChannelProfile: &ces.AppDefaultChannelProfileArgs{
/// 				ChannelType:           pulumi.String("WEB_UI"),
/// 				DisableBargeInControl: pulumi.Bool(false),
/// 				DisableDtmf:           pulumi.Bool(true),
/// 				PersonaProperty: &ces.AppDefaultChannelProfilePersonaPropertyArgs{
/// 					Persona: pulumi.String("CONCISE"),
/// 				},
/// 				ProfileId: pulumi.String("profile-id"),
/// 				WebWidgetConfig: &ces.AppDefaultChannelProfileWebWidgetConfigArgs{
/// 					Modality:       pulumi.String("CHAT_ONLY"),
/// 					Theme:          pulumi.String("LIGHT"),
/// 					WebWidgetTitle: pulumi.String("Help Assistant"),
/// 				},
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"deployment_env": pulumi.String("test"),
/// 			},
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
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
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppAudioProcessingConfigArgs;
/// import com.pulumi.gcp.ces.inputs.AppAudioProcessingConfigBargeInConfigArgs;
/// import com.pulumi.gcp.ces.inputs.AppAudioProcessingConfigAmbientSoundConfigArgs;
/// import com.pulumi.gcp.ces.inputs.AppLoggingSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppLoggingSettingsRedactionConfigArgs;
/// import com.pulumi.gcp.ces.inputs.AppLoggingSettingsAudioRecordingConfigArgs;
/// import com.pulumi.gcp.ces.inputs.AppLoggingSettingsBigqueryExportSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppLoggingSettingsCloudLoggingSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppLoggingSettingsConversationLoggingSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppModelSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppEvaluationMetricsThresholdsArgs;
/// import com.pulumi.gcp.ces.inputs.AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsArgs;
/// import com.pulumi.gcp.ces.inputs.AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholdsArgs;
/// import com.pulumi.gcp.ces.inputs.AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholdsArgs;
/// import com.pulumi.gcp.ces.inputs.AppVariableDeclarationArgs;
/// import com.pulumi.gcp.ces.inputs.AppVariableDeclarationSchemaArgs;
/// import com.pulumi.gcp.ces.inputs.AppDefaultChannelProfileArgs;
/// import com.pulumi.gcp.ces.inputs.AppDefaultChannelProfilePersonaPropertyArgs;
/// import com.pulumi.gcp.ces.inputs.AppDefaultChannelProfileWebWidgetConfigArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var cesAppAmbientSoundGcsUri = new App("cesAppAmbientSoundGcsUri", AppArgs.builder()
///             .appId("app-id")
///             .location("us")
///             .description("Basic CES App example")
///             .displayName("my-app-ambient-sound-gcs-uri")
///             .languageSettings(AppLanguageSettingsArgs.builder()
///                 .defaultLanguageCode("en-US")
///                 .supportedLanguageCodes(
///                     "es-ES",
///                     "fr-FR")
///                 .enableMultilingualSupport(true)
///                 .fallbackAction("escalate")
///                 .build())
///             .audioProcessingConfig(AppAudioProcessingConfigArgs.builder()
///                 .synthesizeSpeechConfigs(
///                     AppAudioProcessingConfigSynthesizeSpeechConfigArgs.builder()
///                         .languageCode("en-US")
///                         .voice("en-US-Standard-A")
///                         .speakingRate(1.0)
///                         .build(),
///                     AppAudioProcessingConfigSynthesizeSpeechConfigArgs.builder()
///                         .languageCode("es-ES")
///                         .voice("es-ES-Standard-A")
///                         .speakingRate(0.95)
///                         .build())
///                 .bargeInConfig(AppAudioProcessingConfigBargeInConfigArgs.builder()
///                     .bargeInAwareness(true)
///                     .build())
///                 .inactivityTimeout("300s")
///                 .ambientSoundConfig(AppAudioProcessingConfigAmbientSoundConfigArgs.builder()
///                     .gcsUri("gs://fake-bucket/sounds/ambient.wav")
///                     .volumeGainDb(-6.0)
///                     .build())
///                 .build())
///             .loggingSettings(AppLoggingSettingsArgs.builder()
///                 .redactionConfig(AppLoggingSettingsRedactionConfigArgs.builder()
///                     .enableRedaction(true)
///                     .inspectTemplate("projects/fake-project/locations/us/inspectTemplates/example-inspect")
///                     .deidentifyTemplate("projects/fake-project/locations/us/deidentifyTemplates/example-deidentify")
///                     .build())
///                 .audioRecordingConfig(AppLoggingSettingsAudioRecordingConfigArgs.builder()
///                     .gcsBucket("gs://fake-app-audio-recordings")
///                     .gcsPathPrefix("projects/fake-project/location/us/app/fake-app/123/$session/123")
///                     .build())
///                 .bigqueryExportSettings(AppLoggingSettingsBigqueryExportSettingsArgs.builder()
///                     .dataset("projects/fake-project/datasets/fake_app_logs")
///                     .enabled(false)
///                     .project("projects/fake-project")
///                     .build())
///                 .cloudLoggingSettings(AppLoggingSettingsCloudLoggingSettingsArgs.builder()
///                     .enableCloudLogging(true)
///                     .build())
///                 .conversationLoggingSettings(AppLoggingSettingsConversationLoggingSettingsArgs.builder()
///                     .disableConversationLogging(true)
///                     .build())
///                 .build())
///             .modelSettings(AppModelSettingsArgs.builder()
///                 .model("gemini-1.5-flash")
///                 .temperature(0.5)
///                 .build())
///             .evaluationMetricsThresholds(AppEvaluationMetricsThresholdsArgs.builder()
///                 .goldenEvaluationMetricsThresholds(AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsArgs.builder()
///                     .turnLevelMetricsThresholds(AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholdsArgs.builder()
///                         .semanticSimilaritySuccessThreshold(3)
///                         .overallToolInvocationCorrectnessThreshold(1.0)
///                         .build())
///                     .expectationLevelMetricsThresholds(AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholdsArgs.builder()
///                         .toolInvocationParameterCorrectnessThreshold(1.0)
///                         .build())
///                     .build())
///                 .build())
///             .variableDeclarations(AppVariableDeclarationArgs.builder()
///                 .name("test")
///                 .description("test")
///                 .schema(AppVariableDeclarationSchemaArgs.builder()
///                     .description("schema description")
///                     .type("ARRAY")
///                     .nullable(true)
///                     .requireds("some_property")
///                     .enums(
///                         "VALUE_A",
///                         "VALUE_B")
///                     .ref("#/defs/MyDefinition")
///                     .uniqueItems(true)
///                     .defs(serializeJson(
///                         jsonObject(
///                             jsonProperty("SimpleString", jsonObject(
///                                 jsonProperty("type", "STRING"),
///                                 jsonProperty("description", "A simple string definition")
///                             ))
///                         )))
///                     .anyOf(serializeJson(
///                         jsonArray(jsonObject(
///                             jsonProperty("type", "STRING"),
///                             jsonProperty("description", "any_of option 1: string")
///                         ))))
///                     .default_(serializeJson(
///                         false))
///                     .prefixItems(serializeJson(
///                         jsonArray(jsonObject(
///                             jsonProperty("type", "ARRAY"),
///                             jsonProperty("description", "prefix item 1")
///                         ))))
///                     .additionalProperties(serializeJson(
///                         jsonObject(
///                             jsonProperty("type", "BOOLEAN")
///                         )))
///                     .properties(serializeJson(
///                         jsonObject(
///                             jsonProperty("name", jsonObject(
///                                 jsonProperty("type", "STRING"),
///                                 jsonProperty("description", "A name")
///                             ))
///                         )))
///                     .items(serializeJson(
///                         jsonObject(
///                             jsonProperty("type", "ARRAY"),
///                             jsonProperty("description", "An array")
///                         )))
///                     .build())
///                 .build())
///             .globalInstruction("You are a virtual assistant for an e-commerce platform. Be friendly and helpful.")
///             .guardrails()
///             .defaultChannelProfile(AppDefaultChannelProfileArgs.builder()
///                 .channelType("WEB_UI")
///                 .disableBargeInControl(false)
///                 .disableDtmf(true)
///                 .personaProperty(AppDefaultChannelProfilePersonaPropertyArgs.builder()
///                     .persona("CONCISE")
///                     .build())
///                 .profileId("profile-id")
///                 .webWidgetConfig(AppDefaultChannelProfileWebWidgetConfigArgs.builder()
///                     .modality("CHAT_ONLY")
///                     .theme("LIGHT")
///                     .webWidgetTitle("Help Assistant")
///                     .build())
///                 .build())
///             .metadata(Map.of("deployment_env", "test"))
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cesAppAmbientSoundGcsUri:
///     type: gcp:ces:App
///     name: ces_app_ambient_sound_gcs_uri
///     properties:
///       appId: app-id
///       location: us
///       description: Basic CES App example
///       displayName: my-app-ambient-sound-gcs-uri
///       languageSettings:
///         defaultLanguageCode: en-US
///         supportedLanguageCodes:
///           - es-ES
///           - fr-FR
///         enableMultilingualSupport: true
///         fallbackAction: escalate
///       audioProcessingConfig:
///         synthesizeSpeechConfigs:
///           - languageCode: en-US
///             voice: en-US-Standard-A
///             speakingRate: 1
///           - languageCode: es-ES
///             voice: es-ES-Standard-A
///             speakingRate: 0.95
///         bargeInConfig:
///           bargeInAwareness: true
///         inactivityTimeout: 300s
///         ambientSoundConfig:
///           gcsUri: gs://fake-bucket/sounds/ambient.wav
///           volumeGainDb: -6
///       loggingSettings:
///         redactionConfig:
///           enableRedaction: true
///           inspectTemplate: projects/fake-project/locations/us/inspectTemplates/example-inspect
///           deidentifyTemplate: projects/fake-project/locations/us/deidentifyTemplates/example-deidentify
///         audioRecordingConfig:
///           gcsBucket: gs://fake-app-audio-recordings
///           gcsPathPrefix: projects/fake-project/location/us/app/fake-app/123/$session/123
///         bigqueryExportSettings:
///           dataset: projects/fake-project/datasets/fake_app_logs
///           enabled: false
///           project: projects/fake-project
///         cloudLoggingSettings:
///           enableCloudLogging: true
///         conversationLoggingSettings:
///           disableConversationLogging: true
///       modelSettings:
///         model: gemini-1.5-flash
///         temperature: 0.5
///       evaluationMetricsThresholds:
///         goldenEvaluationMetricsThresholds:
///           turnLevelMetricsThresholds:
///             semanticSimilaritySuccessThreshold: 3
///             overallToolInvocationCorrectnessThreshold: 1
///           expectationLevelMetricsThresholds:
///             toolInvocationParameterCorrectnessThreshold: 1
///       variableDeclarations:
///         - name: test
///           description: test
///           schema:
///             description: schema description
///             type: ARRAY
///             nullable: true
///             requireds:
///               - some_property
///             enums:
///               - VALUE_A
///               - VALUE_B
///             ref: '#/defs/MyDefinition'
///             uniqueItems: true
///             defs:
///               fn::toJSON:
///                 SimpleString:
///                   type: STRING
///                   description: A simple string definition
///             anyOf:
///               fn::toJSON:
///                 - type: STRING
///                   description: 'any_of option 1: string'
///             default:
///               fn::toJSON: false
///             prefixItems:
///               fn::toJSON:
///                 - type: ARRAY
///                   description: prefix item 1
///             additionalProperties:
///               fn::toJSON:
///                 type: BOOLEAN
///             properties:
///               fn::toJSON:
///                 name:
///                   type: STRING
///                   description: A name
///             items:
///               fn::toJSON:
///                 type: ARRAY
///                 description: An array
///       globalInstruction: You are a virtual assistant for an e-commerce platform. Be friendly and helpful.
///       guardrails: []
///       defaultChannelProfile:
///         channelType: WEB_UI
///         disableBargeInControl: false
///         disableDtmf: true
///         personaProperty:
///           persona: CONCISE
///         profileId: profile-id
///         webWidgetConfig:
///           modality: CHAT_ONLY
///           theme: LIGHT
///           webWidgetTitle: Help Assistant
///       metadata:
///         deployment_env: test
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
/// ```
///
///
/// ## Import
///
/// App can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/apps/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, App can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ces/app:App default projects/{{project}}/locations/{{location}}/apps/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/app:App default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/app:App default {{location}}/{{name}}
/// ```
class App extends pulumi.CustomResource {
  /// The ID to use for the app, which will become the final component of
  /// the app's resource name. If not provided, a unique ID will be
  /// automatically assigned for the app.
  late final pulumi.Output<String> appId;
  /// Configuration for how the input and output audio should be processed and
  /// delivered.
  /// Structure is documented below.
  late final pulumi.Output<AppAudioProcessingConfig?> audioProcessingConfig;
  /// The default client certificate settings for the app.
  /// Structure is documented below.
  late final pulumi.Output<AppClientCertificateSettings?> clientCertificateSettings;
  /// Timestamp when the app was created.
  late final pulumi.Output<String> createTime;
  /// Data store related settings for the app.
  /// Structure is documented below.
  late final pulumi.Output<AppDataStoreSettings?> dataStoreSettings;
  /// A ChannelProfile configures the agent's behavior for a specific communication
  /// channel, such as web UI or telephony.
  /// Structure is documented below.
  late final pulumi.Output<AppDefaultChannelProfile?> defaultChannelProfile;
  /// Number of deployments in the app.
  late final pulumi.Output<int> deploymentCount;
  /// Human-readable description of the app.
  late final pulumi.Output<String?> description;
  /// Display name of the app.
  late final pulumi.Output<String> displayName;
  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  late final pulumi.Output<String> etag;
  /// Threshold settings for metrics in an Evaluation.
  /// Structure is documented below.
  late final pulumi.Output<AppEvaluationMetricsThresholds?> evaluationMetricsThresholds;
  /// Instructions for all the agents in the app.
  /// You can use this instruction to set up a stable identity or personality
  /// across all the agents.
  late final pulumi.Output<String?> globalInstruction;
  /// List of guardrails for the app.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}`
  late final pulumi.Output<List<String>?> guardrails;
  /// Language settings of the app.
  /// Structure is documented below.
  late final pulumi.Output<AppLanguageSettings?> languageSettings;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Settings to describe the logging behaviors for the app.
  /// Structure is documented below.
  late final pulumi.Output<AppLoggingSettings?> loggingSettings;
  /// Metadata about the app. This field can be used to store additional
  /// information relevant to the app's details or intended usages.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  late final pulumi.Output<AppModelSettings?> modelSettings;
  /// Identifier. The unique identifier of the app.
  /// Format: `projects/{project}/locations/{location}/apps/{app}`
  late final pulumi.Output<String> name;
  /// Whether the app is pinned in the app list.
  late final pulumi.Output<bool?> pinned;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The root agent is the entry point of the app.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  late final pulumi.Output<String?> rootAgent;
  /// TimeZone settings of the app.
  /// Structure is documented below.
  late final pulumi.Output<AppTimeZoneSettings?> timeZoneSettings;
  /// Timestamp when the app was last updated.
  late final pulumi.Output<String> updateTime;
  /// The declarations of the variables.
  /// Structure is documented below.
  late final pulumi.Output<List<AppVariableDeclaration>?> variableDeclarations;

  /// Creates a new [App].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [App]. {@macro pulumi_ces_app_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  App(
    String name, {
    AppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/app:App',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.audioProcessingConfig = registerOutput<AppAudioProcessingConfig?>('audioProcessingConfig');
    this.clientCertificateSettings = registerOutput<AppClientCertificateSettings?>('clientCertificateSettings');
    this.createTime = registerOutput<String>('createTime');
    this.dataStoreSettings = registerOutput<AppDataStoreSettings?>('dataStoreSettings');
    this.defaultChannelProfile = registerOutput<AppDefaultChannelProfile?>('defaultChannelProfile');
    this.deploymentCount = registerOutput<int>('deploymentCount');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.evaluationMetricsThresholds = registerOutput<AppEvaluationMetricsThresholds?>('evaluationMetricsThresholds');
    this.globalInstruction = registerOutput<String?>('globalInstruction');
    this.guardrails = registerOutput<List<String>?>('guardrails');
    this.languageSettings = registerOutput<AppLanguageSettings?>('languageSettings');
    this.location = registerOutput<String>('location');
    this.loggingSettings = registerOutput<AppLoggingSettings?>('loggingSettings');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.modelSettings = registerOutput<AppModelSettings?>('modelSettings');
    this.name = registerOutput<String>('name');
    this.pinned = registerOutput<bool?>('pinned');
    this.project = registerOutput<String>('project');
    this.rootAgent = registerOutput<String?>('rootAgent');
    this.timeZoneSettings = registerOutput<AppTimeZoneSettings?>('timeZoneSettings');
    this.updateTime = registerOutput<String>('updateTime');
    this.variableDeclarations = registerOutput<List<AppVariableDeclaration>?>('variableDeclarations');
  }

  /// Gets an existing [App] resource's state with the given [name] and [id].
  static App get(
    String name,
    pulumi.Input<String> id, {
    AppState? state,
  }) {
    return App._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  App._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/app:App',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.audioProcessingConfig = registerOutput<AppAudioProcessingConfig?>('audioProcessingConfig');
    this.clientCertificateSettings = registerOutput<AppClientCertificateSettings?>('clientCertificateSettings');
    this.createTime = registerOutput<String>('createTime');
    this.dataStoreSettings = registerOutput<AppDataStoreSettings?>('dataStoreSettings');
    this.defaultChannelProfile = registerOutput<AppDefaultChannelProfile?>('defaultChannelProfile');
    this.deploymentCount = registerOutput<int>('deploymentCount');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.evaluationMetricsThresholds = registerOutput<AppEvaluationMetricsThresholds?>('evaluationMetricsThresholds');
    this.globalInstruction = registerOutput<String?>('globalInstruction');
    this.guardrails = registerOutput<List<String>?>('guardrails');
    this.languageSettings = registerOutput<AppLanguageSettings?>('languageSettings');
    this.location = registerOutput<String>('location');
    this.loggingSettings = registerOutput<AppLoggingSettings?>('loggingSettings');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.modelSettings = registerOutput<AppModelSettings?>('modelSettings');
    this.name = registerOutput<String>('name');
    this.pinned = registerOutput<bool?>('pinned');
    this.project = registerOutput<String>('project');
    this.rootAgent = registerOutput<String?>('rootAgent');
    this.timeZoneSettings = registerOutput<AppTimeZoneSettings?>('timeZoneSettings');
    this.updateTime = registerOutput<String>('updateTime');
    this.variableDeclarations = registerOutput<List<AppVariableDeclaration>?>('variableDeclarations');
  }
}
