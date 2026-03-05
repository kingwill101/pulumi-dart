import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_agent_advanced_settings.dart';
import 'cx_agent_answer_feedback_settings.dart';
import 'cx_agent_args.dart';
import 'cx_agent_client_certificate_settings.dart';
import 'cx_agent_gen_app_builder_settings.dart';
import 'cx_agent_git_integration_settings.dart';
import 'cx_agent_personalization_settings.dart';
import 'cx_agent_speech_to_text_settings.dart';
import 'cx_agent_state.dart';
import 'cx_agent_text_to_speech_settings.dart';

/// Agents are best described as Natural Language Understanding (NLU) modules that transform user requests into actionable data. You can include agents in your app, product, or service to determine user intent and respond to the user in a natural way.
///
///
/// To get more information about Agent, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
///
///
/// ## Example Usage
///
/// ### Dialogflowcx Agent Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "dialogflowcx-bucket",
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const fullAgent = new gcp.diagflow.CxAgent("full_agent", {
///     displayName: "dialogflowcx-agent",
///     location: "global",
///     defaultLanguageCode: "en",
///     supportedLanguageCodes: [
///         "fr",
///         "de",
///         "es",
///     ],
///     timeZone: "America/New_York",
///     description: "Example description.",
///     avatarUri: "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enableStackdriverLogging: true,
///     enableSpellCorrection: true,
///     speechToTextSettings: {
///         enableSpeechAdaptation: true,
///     },
///     advancedSettings: {
///         audioExportGcsDestination: {
///             uri: pulumi.interpolate`${bucket.url}/prefix-`,
///         },
///         speechSettings: {
///             endpointerSensitivity: 30,
///             noSpeechTimeout: "3.500s",
///             useTimeoutBasedEndpointing: true,
///             models: {
///                 name: "wrench",
///                 mass: "1.3kg",
///                 count: "3",
///             },
///         },
///         dtmfSettings: {
///             enabled: true,
///             maxDigits: 1,
///             finishDigit: "#",
///         },
///         loggingSettings: {
///             enableStackdriverLogging: true,
///             enableInteractionLogging: true,
///             enableConsentBasedRedaction: true,
///         },
///     },
///     gitIntegrationSettings: {
///         githubSettings: {
///             displayName: "Github Repo",
///             repositoryUri: "https://api.github.com/repos/githubtraining/hellogitworld",
///             trackingBranch: "main",
///             accessToken: "secret-token",
///             branches: ["main"],
///         },
///     },
///     textToSpeechSettings: {
///         synthesizeSpeechConfigs: JSON.stringify({
///             en: {
///                 voice: {
///                     name: "en-US-Neural2-A",
///                 },
///             },
///             fr: {
///                 voice: {
///                     name: "fr-CA-Neural2-A",
///                 },
///             },
///         }),
///     },
///     genAppBuilderSettings: {
///         engine: "projects/-/locations/-/collections/-/engines/-",
///     },
///     startPlaybook: "projects/-/locations/-/agents/-/playbooks/00000000-0000-0000-0000-000000000000",
///     enableMultiLanguageTraining: false,
///     locked: false,
///     answerFeedbackSettings: {
///         enableAnswerFeedback: false,
///     },
///     clientCertificateSettings: {
///         passphrase: "projects/example-proj/secrets/example-secret/versions/example-version",
///         privateKey: "projects/example-proj/secrets/example-secret/versions/example-version",
///         sslCertificate: `-----BEGIN CERTIFICATE-----
/// MIIDdDCCAlygAwIBAgIJANg0gKeB5LKmMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYD
/// VQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5j
/// aXNjbzEZMBcGA1UECgwQR2l0SHViLCBJbmMuMRkwFwYDVQQLDBBHb3Zlcm5tZW50
/// IFRlYW0xGTAXBgNVBAMMEGdvdnN0YWNrLmdpdGh1Yi5pbzAeFw0yMDA1MDUxNzM2
/// MzVaFw0zMDA1MDMxNzM2MzVaMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2Fs
/// aWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzEZMBcGA1UECgwQR2l0SHVi
/// LCBJbmMuMRkwFwYDVQQLDBBHb3Zlcm5tZW50IFRlYW0xGTAXBgNVBAMMEGdvdnN0
/// YWNrLmdpdGh1Yi5pbzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK5P
/// 4d9qWZPjZ2eA4eYV2Q8Z3Zp4g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6AgMBAAGjggEaMIIBFjAdBgNVHQ4EFgQUCneA9H8fC+tC
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// -----END CERTIFICATE-----
/// `,
///     },
///     personalizationSettings: {
///         defaultEndUserMetadata: "{\"example-key\": \"example-value\"}",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="dialogflowcx-bucket",
///     location="US",
///     uniform_bucket_level_access=True)
/// full_agent = gcp.diagflow.CxAgent("full_agent",
///     display_name="dialogflowcx-agent",
///     location="global",
///     default_language_code="en",
///     supported_language_codes=[
///         "fr",
///         "de",
///         "es",
///     ],
///     time_zone="America/New_York",
///     description="Example description.",
///     avatar_uri="https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enable_stackdriver_logging=True,
///     enable_spell_correction=True,
///     speech_to_text_settings={
///         "enable_speech_adaptation": True,
///     },
///     advanced_settings={
///         "audio_export_gcs_destination": {
///             "uri": bucket.url.apply(lambda url: f"{url}/prefix-"),
///         },
///         "speech_settings": {
///             "endpointer_sensitivity": 30,
///             "no_speech_timeout": "3.500s",
///             "use_timeout_based_endpointing": True,
///             "models": {
///                 "name": "wrench",
///                 "mass": "1.3kg",
///                 "count": "3",
///             },
///         },
///         "dtmf_settings": {
///             "enabled": True,
///             "max_digits": 1,
///             "finish_digit": "#",
///         },
///         "logging_settings": {
///             "enable_stackdriver_logging": True,
///             "enable_interaction_logging": True,
///             "enable_consent_based_redaction": True,
///         },
///     },
///     git_integration_settings={
///         "github_settings": {
///             "display_name": "Github Repo",
///             "repository_uri": "https://api.github.com/repos/githubtraining/hellogitworld",
///             "tracking_branch": "main",
///             "access_token": "secret-token",
///             "branches": ["main"],
///         },
///     },
///     text_to_speech_settings={
///         "synthesize_speech_configs": json.dumps({
///             "en": {
///                 "voice": {
///                     "name": "en-US-Neural2-A",
///                 },
///             },
///             "fr": {
///                 "voice": {
///                     "name": "fr-CA-Neural2-A",
///                 },
///             },
///         }),
///     },
///     gen_app_builder_settings={
///         "engine": "projects/-/locations/-/collections/-/engines/-",
///     },
///     start_playbook="projects/-/locations/-/agents/-/playbooks/00000000-0000-0000-0000-000000000000",
///     enable_multi_language_training=False,
///     locked=False,
///     answer_feedback_settings={
///         "enable_answer_feedback": False,
///     },
///     client_certificate_settings={
///         "passphrase": "projects/example-proj/secrets/example-secret/versions/example-version",
///         "private_key": "projects/example-proj/secrets/example-secret/versions/example-version",
///         "ssl_certificate": """-----BEGIN CERTIFICATE-----
/// MIIDdDCCAlygAwIBAgIJANg0gKeB5LKmMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYD
/// VQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5j
/// aXNjbzEZMBcGA1UECgwQR2l0SHViLCBJbmMuMRkwFwYDVQQLDBBHb3Zlcm5tZW50
/// IFRlYW0xGTAXBgNVBAMMEGdvdnN0YWNrLmdpdGh1Yi5pbzAeFw0yMDA1MDUxNzM2
/// MzVaFw0zMDA1MDMxNzM2MzVaMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2Fs
/// aWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzEZMBcGA1UECgwQR2l0SHVi
/// LCBJbmMuMRkwFwYDVQQLDBBHb3Zlcm5tZW50IFRlYW0xGTAXBgNVBAMMEGdvdnN0
/// YWNrLmdpdGh1Yi5pbzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK5P
/// 4d9qWZPjZ2eA4eYV2Q8Z3Zp4g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6AgMBAAGjggEaMIIBFjAdBgNVHQ4EFgQUCneA9H8fC+tC
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// -----END CERTIFICATE-----
/// """,
///     },
///     personalization_settings={
///         "default_end_user_metadata": "{\"example-key\": \"example-value\"}",
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
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "dialogflowcx-bucket",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var fullAgent = new Gcp.Diagflow.CxAgent("full_agent", new()
///     {
///         DisplayName = "dialogflowcx-agent",
///         Location = "global",
///         DefaultLanguageCode = "en",
///         SupportedLanguageCodes = new[]
///         {
///             "fr",
///             "de",
///             "es",
///         },
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///         AvatarUri = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///         EnableStackdriverLogging = true,
///         EnableSpellCorrection = true,
///         SpeechToTextSettings = new Gcp.Diagflow.Inputs.CxAgentSpeechToTextSettingsArgs
///         {
///             EnableSpeechAdaptation = true,
///         },
///         AdvancedSettings = new Gcp.Diagflow.Inputs.CxAgentAdvancedSettingsArgs
///         {
///             AudioExportGcsDestination = new Gcp.Diagflow.Inputs.CxAgentAdvancedSettingsAudioExportGcsDestinationArgs
///             {
///                 Uri = bucket.Url.Apply(url => $"{url}/prefix-"),
///             },
///             SpeechSettings = new Gcp.Diagflow.Inputs.CxAgentAdvancedSettingsSpeechSettingsArgs
///             {
///                 EndpointerSensitivity = 30,
///                 NoSpeechTimeout = "3.500s",
///                 UseTimeoutBasedEndpointing = true,
///                 Models =
///                 {
///                     { "name", "wrench" },
///                     { "mass", "1.3kg" },
///                     { "count", "3" },
///                 },
///             },
///             DtmfSettings = new Gcp.Diagflow.Inputs.CxAgentAdvancedSettingsDtmfSettingsArgs
///             {
///                 Enabled = true,
///                 MaxDigits = 1,
///                 FinishDigit = "#",
///             },
///             LoggingSettings = new Gcp.Diagflow.Inputs.CxAgentAdvancedSettingsLoggingSettingsArgs
///             {
///                 EnableStackdriverLogging = true,
///                 EnableInteractionLogging = true,
///                 EnableConsentBasedRedaction = true,
///             },
///         },
///         GitIntegrationSettings = new Gcp.Diagflow.Inputs.CxAgentGitIntegrationSettingsArgs
///         {
///             GithubSettings = new Gcp.Diagflow.Inputs.CxAgentGitIntegrationSettingsGithubSettingsArgs
///             {
///                 DisplayName = "Github Repo",
///                 RepositoryUri = "https://api.github.com/repos/githubtraining/hellogitworld",
///                 TrackingBranch = "main",
///                 AccessToken = "secret-token",
///                 Branches = new[]
///                 {
///                     "main",
///                 },
///             },
///         },
///         TextToSpeechSettings = new Gcp.Diagflow.Inputs.CxAgentTextToSpeechSettingsArgs
///         {
///             SynthesizeSpeechConfigs = JsonSerializer.Serialize(new Dictionary<string, object?>
///             {
///                 ["en"] = new Dictionary<string, object?>
///                 {
///                     ["voice"] = new Dictionary<string, object?>
///                     {
///                         ["name"] = "en-US-Neural2-A",
///                     },
///                 },
///                 ["fr"] = new Dictionary<string, object?>
///                 {
///                     ["voice"] = new Dictionary<string, object?>
///                     {
///                         ["name"] = "fr-CA-Neural2-A",
///                     },
///                 },
///             }),
///         },
///         GenAppBuilderSettings = new Gcp.Diagflow.Inputs.CxAgentGenAppBuilderSettingsArgs
///         {
///             Engine = "projects/-/locations/-/collections/-/engines/-",
///         },
///         StartPlaybook = "projects/-/locations/-/agents/-/playbooks/00000000-0000-0000-0000-000000000000",
///         EnableMultiLanguageTraining = false,
///         Locked = false,
///         AnswerFeedbackSettings = new Gcp.Diagflow.Inputs.CxAgentAnswerFeedbackSettingsArgs
///         {
///             EnableAnswerFeedback = false,
///         },
///         ClientCertificateSettings = new Gcp.Diagflow.Inputs.CxAgentClientCertificateSettingsArgs
///         {
///             Passphrase = "projects/example-proj/secrets/example-secret/versions/example-version",
///             PrivateKey = "projects/example-proj/secrets/example-secret/versions/example-version",
///             SslCertificate = @"-----BEGIN CERTIFICATE-----
/// MIIDdDCCAlygAwIBAgIJANg0gKeB5LKmMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYD
/// VQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5j
/// aXNjbzEZMBcGA1UECgwQR2l0SHViLCBJbmMuMRkwFwYDVQQLDBBHb3Zlcm5tZW50
/// IFRlYW0xGTAXBgNVBAMMEGdvdnN0YWNrLmdpdGh1Yi5pbzAeFw0yMDA1MDUxNzM2
/// MzVaFw0zMDA1MDMxNzM2MzVaMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2Fs
/// aWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzEZMBcGA1UECgwQR2l0SHVi
/// LCBJbmMuMRkwFwYDVQQLDBBHb3Zlcm5tZW50IFRlYW0xGTAXBgNVBAMMEGdvdnN0
/// YWNrLmdpdGh1Yi5pbzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK5P
/// 4d9qWZPjZ2eA4eYV2Q8Z3Zp4g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6AgMBAAGjggEaMIIBFjAdBgNVHQ4EFgQUCneA9H8fC+tC
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// -----END CERTIFICATE-----
/// ",
///         },
///         PersonalizationSettings = new Gcp.Diagflow.Inputs.CxAgentPersonalizationSettingsArgs
///         {
///             DefaultEndUserMetadata = "{\"example-key\": \"example-value\"}",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("dialogflowcx-bucket"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"en": map[string]interface{}{
/// 				"voice": map[string]interface{}{
/// 					"name": "en-US-Neural2-A",
/// 				},
/// 			},
/// 			"fr": map[string]interface{}{
/// 				"voice": map[string]interface{}{
/// 					"name": "fr-CA-Neural2-A",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = diagflow.NewCxAgent(ctx, "full_agent", &diagflow.CxAgentArgs{
/// 			DisplayName:         pulumi.String("dialogflowcx-agent"),
/// 			Location:            pulumi.String("global"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			SupportedLanguageCodes: pulumi.StringArray{
/// 				pulumi.String("fr"),
/// 				pulumi.String("de"),
/// 				pulumi.String("es"),
/// 			},
/// 			TimeZone:                 pulumi.String("America/New_York"),
/// 			Description:              pulumi.String("Example description."),
/// 			AvatarUri:                pulumi.String("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"),
/// 			EnableStackdriverLogging: pulumi.Bool(true),
/// 			EnableSpellCorrection:    pulumi.Bool(true),
/// 			SpeechToTextSettings: &diagflow.CxAgentSpeechToTextSettingsArgs{
/// 				EnableSpeechAdaptation: pulumi.Bool(true),
/// 			},
/// 			AdvancedSettings: &diagflow.CxAgentAdvancedSettingsArgs{
/// 				AudioExportGcsDestination: &diagflow.CxAgentAdvancedSettingsAudioExportGcsDestinationArgs{
/// 					Uri: bucket.Url.ApplyT(func(url string) (string, error) {
/// 						return fmt.Sprintf("%v/prefix-", url), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				SpeechSettings: &diagflow.CxAgentAdvancedSettingsSpeechSettingsArgs{
/// 					EndpointerSensitivity:      pulumi.Int(30),
/// 					NoSpeechTimeout:            pulumi.String("3.500s"),
/// 					UseTimeoutBasedEndpointing: pulumi.Bool(true),
/// 					Models: pulumi.StringMap{
/// 						"name":  pulumi.String("wrench"),
/// 						"mass":  pulumi.String("1.3kg"),
/// 						"count": pulumi.String("3"),
/// 					},
/// 				},
/// 				DtmfSettings: &diagflow.CxAgentAdvancedSettingsDtmfSettingsArgs{
/// 					Enabled:     pulumi.Bool(true),
/// 					MaxDigits:   pulumi.Int(1),
/// 					FinishDigit: pulumi.String("#"),
/// 				},
/// 				LoggingSettings: &diagflow.CxAgentAdvancedSettingsLoggingSettingsArgs{
/// 					EnableStackdriverLogging:    pulumi.Bool(true),
/// 					EnableInteractionLogging:    pulumi.Bool(true),
/// 					EnableConsentBasedRedaction: pulumi.Bool(true),
/// 				},
/// 			},
/// 			GitIntegrationSettings: &diagflow.CxAgentGitIntegrationSettingsArgs{
/// 				GithubSettings: &diagflow.CxAgentGitIntegrationSettingsGithubSettingsArgs{
/// 					DisplayName:    pulumi.String("Github Repo"),
/// 					RepositoryUri:  pulumi.String("https://api.github.com/repos/githubtraining/hellogitworld"),
/// 					TrackingBranch: pulumi.String("main"),
/// 					AccessToken:    pulumi.String("secret-token"),
/// 					Branches: pulumi.StringArray{
/// 						pulumi.String("main"),
/// 					},
/// 				},
/// 			},
/// 			TextToSpeechSettings: &diagflow.CxAgentTextToSpeechSettingsArgs{
/// 				SynthesizeSpeechConfigs: pulumi.String(json0),
/// 			},
/// 			GenAppBuilderSettings: &diagflow.CxAgentGenAppBuilderSettingsArgs{
/// 				Engine: pulumi.String("projects/-/locations/-/collections/-/engines/-"),
/// 			},
/// 			StartPlaybook:               pulumi.String("projects/-/locations/-/agents/-/playbooks/00000000-0000-0000-0000-000000000000"),
/// 			EnableMultiLanguageTraining: pulumi.Bool(false),
/// 			Locked:                      pulumi.Bool(false),
/// 			AnswerFeedbackSettings: &diagflow.CxAgentAnswerFeedbackSettingsArgs{
/// 				EnableAnswerFeedback: pulumi.Bool(false),
/// 			},
/// 			ClientCertificateSettings: &diagflow.CxAgentClientCertificateSettingsArgs{
/// 				Passphrase: pulumi.String("projects/example-proj/secrets/example-secret/versions/example-version"),
/// 				PrivateKey: pulumi.String("projects/example-proj/secrets/example-secret/versions/example-version"),
/// 				SslCertificate: pulumi.String(`-----BEGIN CERTIFICATE-----
/// MIIDdDCCAlygAwIBAgIJANg0gKeB5LKmMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYD
/// VQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5j
/// aXNjbzEZMBcGA1UECgwQR2l0SHViLCBJbmMuMRkwFwYDVQQLDBBHb3Zlcm5tZW50
/// IFRlYW0xGTAXBgNVBAMMEGdvdnN0YWNrLmdpdGh1Yi5pbzAeFw0yMDA1MDUxNzM2
/// MzVaFw0zMDA1MDMxNzM2MzVaMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2Fs
/// aWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzEZMBcGA1UECgwQR2l0SHVi
/// LCBJbmMuMRkwFwYDVQQLDBBHb3Zlcm5tZW50IFRlYW0xGTAXBgNVBAMMEGdvdnN0
/// YWNrLmdpdGh1Yi5pbzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK5P
/// 4d9qWZPjZ2eA4eYV2Q8Z3Zp4g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6AgMBAAGjggEaMIIBFjAdBgNVHQ4EFgQUCneA9H8fC+tC
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// -----END CERTIFICATE-----
/// `),
/// 			},
/// 			PersonalizationSettings: &diagflow.CxAgentPersonalizationSettingsArgs{
/// 				DefaultEndUserMetadata: pulumi.String("{\"example-key\": \"example-value\"}"),
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentSpeechToTextSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentAdvancedSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentAdvancedSettingsAudioExportGcsDestinationArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentAdvancedSettingsSpeechSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentAdvancedSettingsDtmfSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentAdvancedSettingsLoggingSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentGitIntegrationSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentGitIntegrationSettingsGithubSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentTextToSpeechSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentGenAppBuilderSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentAnswerFeedbackSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentClientCertificateSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentPersonalizationSettingsArgs;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("dialogflowcx-bucket")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var fullAgent = new CxAgent("fullAgent", CxAgentArgs.builder()
///             .displayName("dialogflowcx-agent")
///             .location("global")
///             .defaultLanguageCode("en")
///             .supportedLanguageCodes(
///                 "fr",
///                 "de",
///                 "es")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .avatarUri("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png")
///             .enableStackdriverLogging(true)
///             .enableSpellCorrection(true)
///             .speechToTextSettings(CxAgentSpeechToTextSettingsArgs.builder()
///                 .enableSpeechAdaptation(true)
///                 .build())
///             .advancedSettings(CxAgentAdvancedSettingsArgs.builder()
///                 .audioExportGcsDestination(CxAgentAdvancedSettingsAudioExportGcsDestinationArgs.builder()
///                     .uri(bucket.url().applyValue(_url -> String.format("%s/prefix-", _url)))
///                     .build())
///                 .speechSettings(CxAgentAdvancedSettingsSpeechSettingsArgs.builder()
///                     .endpointerSensitivity(30)
///                     .noSpeechTimeout("3.500s")
///                     .useTimeoutBasedEndpointing(true)
///                     .models(Map.ofEntries(
///                         Map.entry("name", "wrench"),
///                         Map.entry("mass", "1.3kg"),
///                         Map.entry("count", "3")
///                     ))
///                     .build())
///                 .dtmfSettings(CxAgentAdvancedSettingsDtmfSettingsArgs.builder()
///                     .enabled(true)
///                     .maxDigits(1)
///                     .finishDigit("#")
///                     .build())
///                 .loggingSettings(CxAgentAdvancedSettingsLoggingSettingsArgs.builder()
///                     .enableStackdriverLogging(true)
///                     .enableInteractionLogging(true)
///                     .enableConsentBasedRedaction(true)
///                     .build())
///                 .build())
///             .gitIntegrationSettings(CxAgentGitIntegrationSettingsArgs.builder()
///                 .githubSettings(CxAgentGitIntegrationSettingsGithubSettingsArgs.builder()
///                     .displayName("Github Repo")
///                     .repositoryUri("https://api.github.com/repos/githubtraining/hellogitworld")
///                     .trackingBranch("main")
///                     .accessToken("secret-token")
///                     .branches("main")
///                     .build())
///                 .build())
///             .textToSpeechSettings(CxAgentTextToSpeechSettingsArgs.builder()
///                 .synthesizeSpeechConfigs(serializeJson(
///                     jsonObject(
///                         jsonProperty("en", jsonObject(
///                             jsonProperty("voice", jsonObject(
///                                 jsonProperty("name", "en-US-Neural2-A")
///                             ))
///                         )),
///                         jsonProperty("fr", jsonObject(
///                             jsonProperty("voice", jsonObject(
///                                 jsonProperty("name", "fr-CA-Neural2-A")
///                             ))
///                         ))
///                     )))
///                 .build())
///             .genAppBuilderSettings(CxAgentGenAppBuilderSettingsArgs.builder()
///                 .engine("projects/-/locations/-/collections/-/engines/-")
///                 .build())
///             .startPlaybook("projects/-/locations/-/agents/-/playbooks/00000000-0000-0000-0000-000000000000")
///             .enableMultiLanguageTraining(false)
///             .locked(false)
///             .answerFeedbackSettings(CxAgentAnswerFeedbackSettingsArgs.builder()
///                 .enableAnswerFeedback(false)
///                 .build())
///             .clientCertificateSettings(CxAgentClientCertificateSettingsArgs.builder()
///                 .passphrase("projects/example-proj/secrets/example-secret/versions/example-version")
///                 .privateKey("projects/example-proj/secrets/example-secret/versions/example-version")
///                 .sslCertificate("""
/// -----BEGIN CERTIFICATE-----
/// MIIDdDCCAlygAwIBAgIJANg0gKeB5LKmMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYD
/// VQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5j
/// aXNjbzEZMBcGA1UECgwQR2l0SHViLCBJbmMuMRkwFwYDVQQLDBBHb3Zlcm5tZW50
/// IFRlYW0xGTAXBgNVBAMMEGdvdnN0YWNrLmdpdGh1Yi5pbzAeFw0yMDA1MDUxNzM2
/// MzVaFw0zMDA1MDMxNzM2MzVaMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2Fs
/// aWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzEZMBcGA1UECgwQR2l0SHVi
/// LCBJbmMuMRkwFwYDVQQLDBBHb3Zlcm5tZW50IFRlYW0xGTAXBgNVBAMMEGdvdnN0
/// YWNrLmdpdGh1Yi5pbzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK5P
/// 4d9qWZPjZ2eA4eYV2Q8Z3Zp4g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6AgMBAAGjggEaMIIBFjAdBgNVHQ4EFgQUCneA9H8fC+tC
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
/// -----END CERTIFICATE-----
///                 """)
///                 .build())
///             .personalizationSettings(CxAgentPersonalizationSettingsArgs.builder()
///                 .defaultEndUserMetadata("{\"example-key\": \"example-value\"}")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: dialogflowcx-bucket
///       location: US
///       uniformBucketLevelAccess: true
///   fullAgent:
///     type: gcp:diagflow:CxAgent
///     name: full_agent
///     properties:
///       displayName: dialogflowcx-agent
///       location: global
///       defaultLanguageCode: en
///       supportedLanguageCodes:
///         - fr
///         - de
///         - es
///       timeZone: America/New_York
///       description: Example description.
///       avatarUri: https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png
///       enableStackdriverLogging: true
///       enableSpellCorrection: true
///       speechToTextSettings:
///         enableSpeechAdaptation: true
///       advancedSettings:
///         audioExportGcsDestination:
///           uri: ${bucket.url}/prefix-
///         speechSettings:
///           endpointerSensitivity: 30
///           noSpeechTimeout: 3.500s
///           useTimeoutBasedEndpointing: true
///           models:
///             name: wrench
///             mass: 1.3kg
///             count: '3'
///         dtmfSettings:
///           enabled: true
///           maxDigits: 1
///           finishDigit: '#'
///         loggingSettings:
///           enableStackdriverLogging: true
///           enableInteractionLogging: true
///           enableConsentBasedRedaction: true
///       gitIntegrationSettings:
///         githubSettings:
///           displayName: Github Repo
///           repositoryUri: https://api.github.com/repos/githubtraining/hellogitworld
///           trackingBranch: main
///           accessToken: secret-token
///           branches:
///             - main
///       textToSpeechSettings:
///         synthesizeSpeechConfigs:
///           fn::toJSON:
///             en:
///               voice:
///                 name: en-US-Neural2-A
///             fr:
///               voice:
///                 name: fr-CA-Neural2-A
///       genAppBuilderSettings:
///         engine: projects/-/locations/-/collections/-/engines/-
///       startPlaybook: projects/-/locations/-/agents/-/playbooks/00000000-0000-0000-0000-000000000000
///       enableMultiLanguageTraining: false
///       locked: false
///       answerFeedbackSettings:
///         enableAnswerFeedback: false
///       clientCertificateSettings:
///         passphrase: projects/example-proj/secrets/example-secret/versions/example-version
///         privateKey: projects/example-proj/secrets/example-secret/versions/example-version
///         sslCertificate: |
///           -----BEGIN CERTIFICATE-----
///           MIIDdDCCAlygAwIBAgIJANg0gKeB5LKmMA0GCSqGSIb3DQEBCwUAMIGSMQswCQYD
///           VQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5j
///           aXNjbzEZMBcGA1UECgwQR2l0SHViLCBJbmMuMRkwFwYDVQQLDBBHb3Zlcm5tZW50
///           IFRlYW0xGTAXBgNVBAMMEGdvdnN0YWNrLmdpdGh1Yi5pbzAeFw0yMDA1MDUxNzM2
///           MzVaFw0zMDA1MDMxNzM2MzVaMIGSMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2Fs
///           aWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzEZMBcGA1UECgwQR2l0SHVi
///           LCBJbmMuMRkwFwYDVQQLDBBHb3Zlcm5tZW50IFRlYW0xGTAXBgNVBAMMEGdvdnN0
///           YWNrLmdpdGh1Yi5pbzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK5P
///           4d9qWZPjZ2eA4eYV2Q8Z3Zp4g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
///           g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
///           g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
///           g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
///           g8e6g8e6g8e6g8e6g8e6AgMBAAGjggEaMIIBFjAdBgNVHQ4EFgQUCneA9H8fC+tC
///           g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
///           g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
///           g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
///           g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6g8e6
///           -----END CERTIFICATE-----
///       personalizationSettings:
///         defaultEndUserMetadata: '{"example-key": "example-value"}'
/// ```
///
///
/// ## Import
///
/// Agent can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/agents/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Agent can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxAgent:CxAgent default projects/{{project}}/locations/{{location}}/agents/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxAgent:CxAgent default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxAgent:CxAgent default {{location}}/{{name}}
/// ```
class CxAgent extends pulumi.CustomResource {
  /// Hierarchical advanced settings for this agent. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// Hierarchy: Agent-&gt;Flow-&gt;Page-&gt;Fulfillment/Parameter.
  /// Structure is documented below.
  late final pulumi.Output<CxAgentAdvancedSettings> advancedSettings;

  /// Answer feedback collection settings.
  /// Structure is documented below.
  late final pulumi.Output<CxAgentAnswerFeedbackSettings?>
  answerFeedbackSettings;

  /// The URI of the agent's avatar. Avatars are used throughout the Dialogflow console and in the self-hosted Web Demo integration.
  late final pulumi.Output<String?> avatarUri;

  /// Settings for custom client certificates.
  /// Structure is documented below.
  late final pulumi.Output<CxAgentClientCertificateSettings?>
  clientCertificateSettings;

  /// The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// for a list of the currently supported language codes. This field cannot be updated after creation.
  late final pulumi.Output<String> defaultLanguageCode;
  late final pulumi.Output<bool?> deleteChatEngineOnDestroy;

  /// The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected.
  late final pulumi.Output<String?> description;

  /// The human-readable name of the agent, unique within the location.
  late final pulumi.Output<String> displayName;

  /// Enable training multi-lingual models for this agent. These models will be trained on all the languages supported by the agent.
  late final pulumi.Output<bool?> enableMultiLanguageTraining;

  /// Indicates if automatic spell correction is enabled in detect intent requests.
  late final pulumi.Output<bool?> enableSpellCorrection;

  /// (Optional, Deprecated)
  /// Determines whether this agent should log conversation queries.
  ///
  /// &gt; **Warning:** `enable_stackdriver_logging` is deprecated and will be removed in a future major release. Please use `advanced_settings.logging_settings.enable_stackdriver_logging`instead.
  late final pulumi.Output<bool?> enableStackdriverLogging;

  /// Gen App Builder-related agent-level settings.
  /// Structure is documented below.
  late final pulumi.Output<CxAgentGenAppBuilderSettings> genAppBuilderSettings;

  /// Git integration settings for this agent.
  /// Structure is documented below.
  late final pulumi.Output<CxAgentGitIntegrationSettings?>
  gitIntegrationSettings;

  /// The name of the location this agent is located in.
  /// &gt; **Note:** The first time you are deploying an Agent in your project you must configure location settings.
  /// This is a one time step but at the moment you can only [configure location settings](https://cloud.google.com/dialogflow/cx/docs/concept/region#location-settings) via the Dialogflow CX console.
  /// Another options is to use global location so you don't need to manually configure location settings.
  late final pulumi.Output<String> location;

  /// Indicates whether the agent is locked for changes. If the agent is locked, modifications to the agent will be rejected except for [agents.restore][].
  late final pulumi.Output<bool?> locked;

  /// The unique identifier of the agent.
  late final pulumi.Output<String> name;

  /// Settings for end user personalization.
  /// Structure is documented below.
  late final pulumi.Output<CxAgentPersonalizationSettings?>
  personalizationSettings;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// A read only boolean field reflecting Zone Isolation status of the agent.
  late final pulumi.Output<bool> satisfiesPzi;

  /// A read only boolean field reflecting Zone Separation status of the agent.
  late final pulumi.Output<bool> satisfiesPzs;

  /// Name of the SecuritySettings reference for the agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/securitySettings/&lt;Security Settings ID&gt;.
  late final pulumi.Output<String?> securitySettings;

  /// Settings related to speech recognition.
  /// Structure is documented below.
  late final pulumi.Output<CxAgentSpeechToTextSettings?> speechToTextSettings;

  /// Name of the start flow in this agent. A start flow will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;.
  late final pulumi.Output<String> startFlow;

  /// Name of the start playbook in this agent. A start playbook will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: **projects/&lt;ProjectID&gt;/locations/&lt;LocationID&gt;/agents/&lt;AgentID&gt;/playbooks/&lt;PlaybookID&gt;**. Currently only the default playbook with id "00000000-0000-0000-0000-000000000000" is allowed.
  late final pulumi.Output<String?> startPlaybook;

  /// The list of all languages supported by this agent (except for the default_language_code).
  late final pulumi.Output<List<String>?> supportedLanguageCodes;

  /// Settings related to speech synthesizing.
  /// Structure is documented below.
  late final pulumi.Output<CxAgentTextToSpeechSettings?> textToSpeechSettings;

  /// The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,
  /// Europe/Paris.
  late final pulumi.Output<String> timeZone;

  /// Creates a new [CxAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CxAgent]. {@macro pulumi_diagflow_cx_agent_cx_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CxAgent(
    String name, {
    CxAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:diagflow/cxAgent:CxAgent',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    advancedSettings = registerOutput<CxAgentAdvancedSettings>(
      'advancedSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CxAgentAdvancedSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    answerFeedbackSettings = registerOutput<CxAgentAnswerFeedbackSettings?>(
      'answerFeedbackSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CxAgentAnswerFeedbackSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    avatarUri = registerOutput<String?>('avatarUri');
    clientCertificateSettings =
        registerOutput<CxAgentClientCertificateSettings?>(
          'clientCertificateSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return CxAgentClientCertificateSettings.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    defaultLanguageCode = registerOutput<String>('defaultLanguageCode');
    deleteChatEngineOnDestroy = registerOutput<bool?>(
      'deleteChatEngineOnDestroy',
    );
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    enableMultiLanguageTraining = registerOutput<bool?>(
      'enableMultiLanguageTraining',
    );
    enableSpellCorrection = registerOutput<bool?>('enableSpellCorrection');
    enableStackdriverLogging = registerOutput<bool?>(
      'enableStackdriverLogging',
    );
    genAppBuilderSettings = registerOutput<CxAgentGenAppBuilderSettings>(
      'genAppBuilderSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CxAgentGenAppBuilderSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    gitIntegrationSettings = registerOutput<CxAgentGitIntegrationSettings?>(
      'gitIntegrationSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CxAgentGitIntegrationSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    locked = registerOutput<bool?>('locked');
    this.name = registerOutput<String>('name');
    personalizationSettings = registerOutput<CxAgentPersonalizationSettings?>(
      'personalizationSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CxAgentPersonalizationSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    project = registerOutput<String>('project');
    satisfiesPzi = registerOutput<bool>('satisfiesPzi');
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    securitySettings = registerOutput<String?>('securitySettings');
    speechToTextSettings = registerOutput<CxAgentSpeechToTextSettings?>(
      'speechToTextSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CxAgentSpeechToTextSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    startFlow = registerOutput<String>('startFlow');
    startPlaybook = registerOutput<String?>('startPlaybook');
    supportedLanguageCodes = registerOutput<List<String>?>(
      'supportedLanguageCodes',
    );
    textToSpeechSettings = registerOutput<CxAgentTextToSpeechSettings?>(
      'textToSpeechSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CxAgentTextToSpeechSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    timeZone = registerOutput<String>('timeZone');
  }

  /// Gets an existing [CxAgent] resource's state with the given [name] and [id].
  static CxAgent get(
    String name,
    pulumi.Input<String> id, {
    CxAgentState? state,
  }) {
    return CxAgent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CxAgent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:diagflow/cxAgent:CxAgent',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    advancedSettings = registerOutput<CxAgentAdvancedSettings>(
      'advancedSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CxAgentAdvancedSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    answerFeedbackSettings = registerOutput<CxAgentAnswerFeedbackSettings?>(
      'answerFeedbackSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CxAgentAnswerFeedbackSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    avatarUri = registerOutput<String?>('avatarUri');
    clientCertificateSettings =
        registerOutput<CxAgentClientCertificateSettings?>(
          'clientCertificateSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return CxAgentClientCertificateSettings.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    defaultLanguageCode = registerOutput<String>('defaultLanguageCode');
    deleteChatEngineOnDestroy = registerOutput<bool?>(
      'deleteChatEngineOnDestroy',
    );
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    enableMultiLanguageTraining = registerOutput<bool?>(
      'enableMultiLanguageTraining',
    );
    enableSpellCorrection = registerOutput<bool?>('enableSpellCorrection');
    enableStackdriverLogging = registerOutput<bool?>(
      'enableStackdriverLogging',
    );
    genAppBuilderSettings = registerOutput<CxAgentGenAppBuilderSettings>(
      'genAppBuilderSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CxAgentGenAppBuilderSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    gitIntegrationSettings = registerOutput<CxAgentGitIntegrationSettings?>(
      'gitIntegrationSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CxAgentGitIntegrationSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    locked = registerOutput<bool?>('locked');
    this.name = registerOutput<String>('name');
    personalizationSettings = registerOutput<CxAgentPersonalizationSettings?>(
      'personalizationSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CxAgentPersonalizationSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    project = registerOutput<String>('project');
    satisfiesPzi = registerOutput<bool>('satisfiesPzi');
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    securitySettings = registerOutput<String?>('securitySettings');
    speechToTextSettings = registerOutput<CxAgentSpeechToTextSettings?>(
      'speechToTextSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CxAgentSpeechToTextSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    startFlow = registerOutput<String>('startFlow');
    startPlaybook = registerOutput<String?>('startPlaybook');
    supportedLanguageCodes = registerOutput<List<String>?>(
      'supportedLanguageCodes',
    );
    textToSpeechSettings = registerOutput<CxAgentTextToSpeechSettings?>(
      'textToSpeechSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CxAgentTextToSpeechSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    timeZone = registerOutput<String>('timeZone');
  }
}
