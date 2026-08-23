import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_args.dart';
import 'template_filter_config.dart';
import 'template_state.dart';
import 'template_template_metadata.dart';

/// A `Template` is a resource of Model Armor that lets you configure how Model Armor screens prompts and responses.
/// It functions as sets of customized filters and thresholds for different safety and security confidence levels, allowing control over what content is flagged.
///
///
///
/// ## Example Usage
///
/// ### Modelarmor Template Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const template_basic = new gcp.modelarmor.Template("template-basic", {
///     location: "us-central1",
///     templateId: "modelarmor1",
///     filterConfig: {},
///     templateMetadata: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// template_basic = gcp.modelarmor.Template("template-basic",
///     location="us-central1",
///     template_id="modelarmor1",
///     filter_config={},
///     template_metadata={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var template_basic = new Gcp.ModelArmor.Template("template-basic", new()
///     {
///         Location = "us-central1",
///         TemplateId = "modelarmor1",
///         FilterConfig = null,
///         TemplateMetadata = null,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/modelarmor"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := modelarmor.NewTemplate(ctx, "template-basic", &modelarmor.TemplateArgs{
/// 			Location:         pulumi.String("us-central1"),
/// 			TemplateId:       pulumi.String("modelarmor1"),
/// 			FilterConfig:     &modelarmor.TemplateFilterConfigArgs{},
/// 			TemplateMetadata: &modelarmor.TemplateTemplateMetadataArgs{},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_modelarmor_template" "template-basic" {
///   location          = "us-central1"
///   template_id       = "modelarmor1"
///   filter_config     = {}
///   template_metadata = {}
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.modelarmor.Template;
/// import com.pulumi.gcp.modelarmor.TemplateArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateFilterConfigArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateTemplateMetadataArgs;
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
///         var template_basic = new Template("template-basic", TemplateArgs.builder()
///             .location("us-central1")
///             .templateId("modelarmor1")
///             .filterConfig(TemplateFilterConfigArgs.builder()
///                 .build())
///             .templateMetadata(TemplateTemplateMetadataArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   template-basic:
///     type: gcp:modelarmor:Template
///     properties:
///       location: us-central1
///       templateId: modelarmor1
///       filterConfig: {}
///       templateMetadata: {}
/// ```
///
/// ### Modelarmor Template Filter Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const template_filter_config = new gcp.modelarmor.Template("template-filter-config", {
///     location: "us-central1",
///     templateId: "modelarmor2",
///     filterConfig: {
///         raiSettings: {
///             raiFilters: [{
///                 filterType: "HATE_SPEECH",
///                 confidenceLevel: "HIGH",
///             }],
///         },
///         sdpSettings: {
///             basicConfig: {
///                 filterEnforcement: "ENABLED",
///             },
///         },
///         piAndJailbreakFilterSettings: {
///             filterEnforcement: "ENABLED",
///             confidenceLevel: "MEDIUM_AND_ABOVE",
///         },
///         maliciousUriFilterSettings: {
///             filterEnforcement: "ENABLED",
///         },
///     },
///     templateMetadata: {
///         multiLanguageDetection: {
///             enableMultiLanguageDetection: false,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// template_filter_config = gcp.modelarmor.Template("template-filter-config",
///     location="us-central1",
///     template_id="modelarmor2",
///     filter_config={
///         "rai_settings": {
///             "rai_filters": [{
///                 "filter_type": "HATE_SPEECH",
///                 "confidence_level": "HIGH",
///             }],
///         },
///         "sdp_settings": {
///             "basic_config": {
///                 "filter_enforcement": "ENABLED",
///             },
///         },
///         "pi_and_jailbreak_filter_settings": {
///             "filter_enforcement": "ENABLED",
///             "confidence_level": "MEDIUM_AND_ABOVE",
///         },
///         "malicious_uri_filter_settings": {
///             "filter_enforcement": "ENABLED",
///         },
///     },
///     template_metadata={
///         "multi_language_detection": {
///             "enable_multi_language_detection": False,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var template_filter_config = new Gcp.ModelArmor.Template("template-filter-config", new()
///     {
///         Location = "us-central1",
///         TemplateId = "modelarmor2",
///         FilterConfig = new Gcp.ModelArmor.Inputs.TemplateFilterConfigArgs
///         {
///             RaiSettings = new Gcp.ModelArmor.Inputs.TemplateFilterConfigRaiSettingsArgs
///             {
///                 RaiFilters = new[]
///                 {
///                     new Gcp.ModelArmor.Inputs.TemplateFilterConfigRaiSettingsRaiFilterArgs
///                     {
///                         FilterType = "HATE_SPEECH",
///                         ConfidenceLevel = "HIGH",
///                     },
///                 },
///             },
///             SdpSettings = new Gcp.ModelArmor.Inputs.TemplateFilterConfigSdpSettingsArgs
///             {
///                 BasicConfig = new Gcp.ModelArmor.Inputs.TemplateFilterConfigSdpSettingsBasicConfigArgs
///                 {
///                     FilterEnforcement = "ENABLED",
///                 },
///             },
///             PiAndJailbreakFilterSettings = new Gcp.ModelArmor.Inputs.TemplateFilterConfigPiAndJailbreakFilterSettingsArgs
///             {
///                 FilterEnforcement = "ENABLED",
///                 ConfidenceLevel = "MEDIUM_AND_ABOVE",
///             },
///             MaliciousUriFilterSettings = new Gcp.ModelArmor.Inputs.TemplateFilterConfigMaliciousUriFilterSettingsArgs
///             {
///                 FilterEnforcement = "ENABLED",
///             },
///         },
///         TemplateMetadata = new Gcp.ModelArmor.Inputs.TemplateTemplateMetadataArgs
///         {
///             MultiLanguageDetection = new Gcp.ModelArmor.Inputs.TemplateTemplateMetadataMultiLanguageDetectionArgs
///             {
///                 EnableMultiLanguageDetection = false,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/modelarmor"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := modelarmor.NewTemplate(ctx, "template-filter-config", &modelarmor.TemplateArgs{
/// 			Location:   pulumi.String("us-central1"),
/// 			TemplateId: pulumi.String("modelarmor2"),
/// 			FilterConfig: &modelarmor.TemplateFilterConfigArgs{
/// 				RaiSettings: &modelarmor.TemplateFilterConfigRaiSettingsArgs{
/// 					RaiFilters: modelarmor.TemplateFilterConfigRaiSettingsRaiFilterArray{
/// 						&modelarmor.TemplateFilterConfigRaiSettingsRaiFilterArgs{
/// 							FilterType:      pulumi.String("HATE_SPEECH"),
/// 							ConfidenceLevel: pulumi.String("HIGH"),
/// 						},
/// 					},
/// 				},
/// 				SdpSettings: &modelarmor.TemplateFilterConfigSdpSettingsArgs{
/// 					BasicConfig: &modelarmor.TemplateFilterConfigSdpSettingsBasicConfigArgs{
/// 						FilterEnforcement: pulumi.String("ENABLED"),
/// 					},
/// 				},
/// 				PiAndJailbreakFilterSettings: &modelarmor.TemplateFilterConfigPiAndJailbreakFilterSettingsArgs{
/// 					FilterEnforcement: pulumi.String("ENABLED"),
/// 					ConfidenceLevel:   pulumi.String("MEDIUM_AND_ABOVE"),
/// 				},
/// 				MaliciousUriFilterSettings: &modelarmor.TemplateFilterConfigMaliciousUriFilterSettingsArgs{
/// 					FilterEnforcement: pulumi.String("ENABLED"),
/// 				},
/// 			},
/// 			TemplateMetadata: &modelarmor.TemplateTemplateMetadataArgs{
/// 				MultiLanguageDetection: &modelarmor.TemplateTemplateMetadataMultiLanguageDetectionArgs{
/// 					EnableMultiLanguageDetection: pulumi.Bool(false),
/// 				},
/// 			},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_modelarmor_template" "template-filter-config" {
///   location    = "us-central1"
///   template_id = "modelarmor2"
///   filter_config = {
///     rai_settings = {
///       rai_filters = [{
///         "filterType"      = "HATE_SPEECH"
///         "confidenceLevel" = "HIGH"
///       }]
///     }
///     sdp_settings = {
///       basic_config = {
///         filter_enforcement = "ENABLED"
///       }
///     }
///     pi_and_jailbreak_filter_settings = {
///       filter_enforcement = "ENABLED"
///       confidence_level   = "MEDIUM_AND_ABOVE"
///     }
///     malicious_uri_filter_settings = {
///       filter_enforcement = "ENABLED"
///     }
///   }
///   template_metadata = {
///     multi_language_detection = {
///       enable_multi_language_detection = false
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.modelarmor.Template;
/// import com.pulumi.gcp.modelarmor.TemplateArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateFilterConfigArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateFilterConfigRaiSettingsArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateFilterConfigRaiSettingsRaiFilterArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateFilterConfigSdpSettingsArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateFilterConfigSdpSettingsBasicConfigArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateFilterConfigPiAndJailbreakFilterSettingsArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateFilterConfigMaliciousUriFilterSettingsArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateTemplateMetadataArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateTemplateMetadataMultiLanguageDetectionArgs;
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
///         var template_filter_config = new Template("template-filter-config", TemplateArgs.builder()
///             .location("us-central1")
///             .templateId("modelarmor2")
///             .filterConfig(TemplateFilterConfigArgs.builder()
///                 .raiSettings(TemplateFilterConfigRaiSettingsArgs.builder()
///                     .raiFilters(TemplateFilterConfigRaiSettingsRaiFilterArgs.builder()
///                         .filterType("HATE_SPEECH")
///                         .confidenceLevel("HIGH")
///                         .build())
///                     .build())
///                 .sdpSettings(TemplateFilterConfigSdpSettingsArgs.builder()
///                     .basicConfig(TemplateFilterConfigSdpSettingsBasicConfigArgs.builder()
///                         .filterEnforcement("ENABLED")
///                         .build())
///                     .build())
///                 .piAndJailbreakFilterSettings(TemplateFilterConfigPiAndJailbreakFilterSettingsArgs.builder()
///                     .filterEnforcement("ENABLED")
///                     .confidenceLevel("MEDIUM_AND_ABOVE")
///                     .build())
///                 .maliciousUriFilterSettings(TemplateFilterConfigMaliciousUriFilterSettingsArgs.builder()
///                     .filterEnforcement("ENABLED")
///                     .build())
///                 .build())
///             .templateMetadata(TemplateTemplateMetadataArgs.builder()
///                 .multiLanguageDetection(TemplateTemplateMetadataMultiLanguageDetectionArgs.builder()
///                     .enableMultiLanguageDetection(false)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   template-filter-config:
///     type: gcp:modelarmor:Template
///     properties:
///       location: us-central1
///       templateId: modelarmor2
///       filterConfig:
///         raiSettings:
///           raiFilters:
///             - filterType: HATE_SPEECH
///               confidenceLevel: HIGH
///         sdpSettings:
///           basicConfig:
///             filterEnforcement: ENABLED
///         piAndJailbreakFilterSettings:
///           filterEnforcement: ENABLED
///           confidenceLevel: MEDIUM_AND_ABOVE
///         maliciousUriFilterSettings:
///           filterEnforcement: ENABLED
///       templateMetadata:
///         multiLanguageDetection:
///           enableMultiLanguageDetection: false
/// ```
///
/// ### Modelarmor Template Template Metadata
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const template_template_metadata = new gcp.modelarmor.Template("template-template-metadata", {
///     location: "us-central1",
///     templateId: "modelarmor3",
///     filterConfig: {
///         raiSettings: {
///             raiFilters: [{
///                 filterType: "HARASSMENT",
///                 confidenceLevel: "MEDIUM_AND_ABOVE",
///             }],
///         },
///     },
///     templateMetadata: {
///         customLlmResponseSafetyErrorMessage: "This is a custom error message for LLM response",
///         logSanitizeOperations: false,
///         logTemplateOperations: true,
///         multiLanguageDetection: {
///             enableMultiLanguageDetection: true,
///         },
///         ignorePartialInvocationFailures: false,
///         customPromptSafetyErrorCode: 400,
///         customPromptSafetyErrorMessage: "This is a custom error message for prompt",
///         customLlmResponseSafetyErrorCode: 401,
///         enforcementType: "INSPECT_ONLY",
///         filterVersionSelector: {
///             alias: "FILTER_VERSION_ALIAS_LATEST",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// template_template_metadata = gcp.modelarmor.Template("template-template-metadata",
///     location="us-central1",
///     template_id="modelarmor3",
///     filter_config={
///         "rai_settings": {
///             "rai_filters": [{
///                 "filter_type": "HARASSMENT",
///                 "confidence_level": "MEDIUM_AND_ABOVE",
///             }],
///         },
///     },
///     template_metadata={
///         "custom_llm_response_safety_error_message": "This is a custom error message for LLM response",
///         "log_sanitize_operations": False,
///         "log_template_operations": True,
///         "multi_language_detection": {
///             "enable_multi_language_detection": True,
///         },
///         "ignore_partial_invocation_failures": False,
///         "custom_prompt_safety_error_code": 400,
///         "custom_prompt_safety_error_message": "This is a custom error message for prompt",
///         "custom_llm_response_safety_error_code": 401,
///         "enforcement_type": "INSPECT_ONLY",
///         "filter_version_selector": {
///             "alias": "FILTER_VERSION_ALIAS_LATEST",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var template_template_metadata = new Gcp.ModelArmor.Template("template-template-metadata", new()
///     {
///         Location = "us-central1",
///         TemplateId = "modelarmor3",
///         FilterConfig = new Gcp.ModelArmor.Inputs.TemplateFilterConfigArgs
///         {
///             RaiSettings = new Gcp.ModelArmor.Inputs.TemplateFilterConfigRaiSettingsArgs
///             {
///                 RaiFilters = new[]
///                 {
///                     new Gcp.ModelArmor.Inputs.TemplateFilterConfigRaiSettingsRaiFilterArgs
///                     {
///                         FilterType = "HARASSMENT",
///                         ConfidenceLevel = "MEDIUM_AND_ABOVE",
///                     },
///                 },
///             },
///         },
///         TemplateMetadata = new Gcp.ModelArmor.Inputs.TemplateTemplateMetadataArgs
///         {
///             CustomLlmResponseSafetyErrorMessage = "This is a custom error message for LLM response",
///             LogSanitizeOperations = false,
///             LogTemplateOperations = true,
///             MultiLanguageDetection = new Gcp.ModelArmor.Inputs.TemplateTemplateMetadataMultiLanguageDetectionArgs
///             {
///                 EnableMultiLanguageDetection = true,
///             },
///             IgnorePartialInvocationFailures = false,
///             CustomPromptSafetyErrorCode = 400,
///             CustomPromptSafetyErrorMessage = "This is a custom error message for prompt",
///             CustomLlmResponseSafetyErrorCode = 401,
///             EnforcementType = "INSPECT_ONLY",
///             FilterVersionSelector = new Gcp.ModelArmor.Inputs.TemplateTemplateMetadataFilterVersionSelectorArgs
///             {
///                 Alias = "FILTER_VERSION_ALIAS_LATEST",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/modelarmor"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := modelarmor.NewTemplate(ctx, "template-template-metadata", &modelarmor.TemplateArgs{
/// 			Location:   pulumi.String("us-central1"),
/// 			TemplateId: pulumi.String("modelarmor3"),
/// 			FilterConfig: &modelarmor.TemplateFilterConfigArgs{
/// 				RaiSettings: &modelarmor.TemplateFilterConfigRaiSettingsArgs{
/// 					RaiFilters: modelarmor.TemplateFilterConfigRaiSettingsRaiFilterArray{
/// 						&modelarmor.TemplateFilterConfigRaiSettingsRaiFilterArgs{
/// 							FilterType:      pulumi.String("HARASSMENT"),
/// 							ConfidenceLevel: pulumi.String("MEDIUM_AND_ABOVE"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			TemplateMetadata: &modelarmor.TemplateTemplateMetadataArgs{
/// 				CustomLlmResponseSafetyErrorMessage: pulumi.String("This is a custom error message for LLM response"),
/// 				LogSanitizeOperations:               pulumi.Bool(false),
/// 				LogTemplateOperations:               pulumi.Bool(true),
/// 				MultiLanguageDetection: &modelarmor.TemplateTemplateMetadataMultiLanguageDetectionArgs{
/// 					EnableMultiLanguageDetection: pulumi.Bool(true),
/// 				},
/// 				IgnorePartialInvocationFailures:  pulumi.Bool(false),
/// 				CustomPromptSafetyErrorCode:      pulumi.Int(400),
/// 				CustomPromptSafetyErrorMessage:   pulumi.String("This is a custom error message for prompt"),
/// 				CustomLlmResponseSafetyErrorCode: pulumi.Int(401),
/// 				EnforcementType:                  pulumi.String("INSPECT_ONLY"),
/// 				FilterVersionSelector: &modelarmor.TemplateTemplateMetadataFilterVersionSelectorArgs{
/// 					Alias: pulumi.String("FILTER_VERSION_ALIAS_LATEST"),
/// 				},
/// 			},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_modelarmor_template" "template-template-metadata" {
///   location    = "us-central1"
///   template_id = "modelarmor3"
///   filter_config = {
///     rai_settings = {
///       rai_filters = [{
///         "filterType"      = "HARASSMENT"
///         "confidenceLevel" = "MEDIUM_AND_ABOVE"
///       }]
///     }
///   }
///   template_metadata = {
///     custom_llm_response_safety_error_message = "This is a custom error message for LLM response"
///     log_sanitize_operations                  = false
///     log_template_operations                  = true
///     multi_language_detection = {
///       enable_multi_language_detection = true
///     }
///     ignore_partial_invocation_failures    = false
///     custom_prompt_safety_error_code       = 400
///     custom_prompt_safety_error_message    = "This is a custom error message for prompt"
///     custom_llm_response_safety_error_code = 401
///     enforcement_type                      = "INSPECT_ONLY"
///     filter_version_selector = {
///       alias = "FILTER_VERSION_ALIAS_LATEST"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.modelarmor.Template;
/// import com.pulumi.gcp.modelarmor.TemplateArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateFilterConfigArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateFilterConfigRaiSettingsArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateFilterConfigRaiSettingsRaiFilterArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateTemplateMetadataArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateTemplateMetadataMultiLanguageDetectionArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateTemplateMetadataFilterVersionSelectorArgs;
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
///         var template_template_metadata = new Template("template-template-metadata", TemplateArgs.builder()
///             .location("us-central1")
///             .templateId("modelarmor3")
///             .filterConfig(TemplateFilterConfigArgs.builder()
///                 .raiSettings(TemplateFilterConfigRaiSettingsArgs.builder()
///                     .raiFilters(TemplateFilterConfigRaiSettingsRaiFilterArgs.builder()
///                         .filterType("HARASSMENT")
///                         .confidenceLevel("MEDIUM_AND_ABOVE")
///                         .build())
///                     .build())
///                 .build())
///             .templateMetadata(TemplateTemplateMetadataArgs.builder()
///                 .customLlmResponseSafetyErrorMessage("This is a custom error message for LLM response")
///                 .logSanitizeOperations(false)
///                 .logTemplateOperations(true)
///                 .multiLanguageDetection(TemplateTemplateMetadataMultiLanguageDetectionArgs.builder()
///                     .enableMultiLanguageDetection(true)
///                     .build())
///                 .ignorePartialInvocationFailures(false)
///                 .customPromptSafetyErrorCode(400)
///                 .customPromptSafetyErrorMessage("This is a custom error message for prompt")
///                 .customLlmResponseSafetyErrorCode(401)
///                 .enforcementType("INSPECT_ONLY")
///                 .filterVersionSelector(TemplateTemplateMetadataFilterVersionSelectorArgs.builder()
///                     .alias("FILTER_VERSION_ALIAS_LATEST")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   template-template-metadata:
///     type: gcp:modelarmor:Template
///     properties:
///       location: us-central1
///       templateId: modelarmor3
///       filterConfig:
///         raiSettings:
///           raiFilters:
///             - filterType: HARASSMENT
///               confidenceLevel: MEDIUM_AND_ABOVE
///       templateMetadata:
///         customLlmResponseSafetyErrorMessage: This is a custom error message for LLM response
///         logSanitizeOperations: false
///         logTemplateOperations: true
///         multiLanguageDetection:
///           enableMultiLanguageDetection: true
///         ignorePartialInvocationFailures: false
///         customPromptSafetyErrorCode: 400
///         customPromptSafetyErrorMessage: This is a custom error message for prompt
///         customLlmResponseSafetyErrorCode: 401
///         enforcementType: INSPECT_ONLY
///         filterVersionSelector:
///           alias: FILTER_VERSION_ALIAS_LATEST
/// ```
///
/// ### Modelarmor Template Filter Version Selector
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const template_filter_version_selector = new gcp.modelarmor.Template("template-filter-version-selector", {
///     location: "us-central1",
///     templateId: "modelarmor5",
///     filterConfig: {
///         raiSettings: {
///             raiFilters: [{
///                 filterType: "HATE_SPEECH",
///                 confidenceLevel: "HIGH",
///             }],
///         },
///     },
///     templateMetadata: {
///         filterVersionSelector: {
///             version: "v1",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// template_filter_version_selector = gcp.modelarmor.Template("template-filter-version-selector",
///     location="us-central1",
///     template_id="modelarmor5",
///     filter_config={
///         "rai_settings": {
///             "rai_filters": [{
///                 "filter_type": "HATE_SPEECH",
///                 "confidence_level": "HIGH",
///             }],
///         },
///     },
///     template_metadata={
///         "filter_version_selector": {
///             "version": "v1",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var template_filter_version_selector = new Gcp.ModelArmor.Template("template-filter-version-selector", new()
///     {
///         Location = "us-central1",
///         TemplateId = "modelarmor5",
///         FilterConfig = new Gcp.ModelArmor.Inputs.TemplateFilterConfigArgs
///         {
///             RaiSettings = new Gcp.ModelArmor.Inputs.TemplateFilterConfigRaiSettingsArgs
///             {
///                 RaiFilters = new[]
///                 {
///                     new Gcp.ModelArmor.Inputs.TemplateFilterConfigRaiSettingsRaiFilterArgs
///                     {
///                         FilterType = "HATE_SPEECH",
///                         ConfidenceLevel = "HIGH",
///                     },
///                 },
///             },
///         },
///         TemplateMetadata = new Gcp.ModelArmor.Inputs.TemplateTemplateMetadataArgs
///         {
///             FilterVersionSelector = new Gcp.ModelArmor.Inputs.TemplateTemplateMetadataFilterVersionSelectorArgs
///             {
///                 Version = "v1",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/modelarmor"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := modelarmor.NewTemplate(ctx, "template-filter-version-selector", &modelarmor.TemplateArgs{
/// 			Location:   pulumi.String("us-central1"),
/// 			TemplateId: pulumi.String("modelarmor5"),
/// 			FilterConfig: &modelarmor.TemplateFilterConfigArgs{
/// 				RaiSettings: &modelarmor.TemplateFilterConfigRaiSettingsArgs{
/// 					RaiFilters: modelarmor.TemplateFilterConfigRaiSettingsRaiFilterArray{
/// 						&modelarmor.TemplateFilterConfigRaiSettingsRaiFilterArgs{
/// 							FilterType:      pulumi.String("HATE_SPEECH"),
/// 							ConfidenceLevel: pulumi.String("HIGH"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			TemplateMetadata: &modelarmor.TemplateTemplateMetadataArgs{
/// 				FilterVersionSelector: &modelarmor.TemplateTemplateMetadataFilterVersionSelectorArgs{
/// 					Version: pulumi.String("v1"),
/// 				},
/// 			},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_modelarmor_template" "template-filter-version-selector" {
///   location    = "us-central1"
///   template_id = "modelarmor5"
///   filter_config = {
///     rai_settings = {
///       rai_filters = [{
///         "filterType"      = "HATE_SPEECH"
///         "confidenceLevel" = "HIGH"
///       }]
///     }
///   }
///   template_metadata = {
///     filter_version_selector = {
///       version = "v1"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.modelarmor.Template;
/// import com.pulumi.gcp.modelarmor.TemplateArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateFilterConfigArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateFilterConfigRaiSettingsArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateFilterConfigRaiSettingsRaiFilterArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateTemplateMetadataArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateTemplateMetadataFilterVersionSelectorArgs;
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
///         var template_filter_version_selector = new Template("template-filter-version-selector", TemplateArgs.builder()
///             .location("us-central1")
///             .templateId("modelarmor5")
///             .filterConfig(TemplateFilterConfigArgs.builder()
///                 .raiSettings(TemplateFilterConfigRaiSettingsArgs.builder()
///                     .raiFilters(TemplateFilterConfigRaiSettingsRaiFilterArgs.builder()
///                         .filterType("HATE_SPEECH")
///                         .confidenceLevel("HIGH")
///                         .build())
///                     .build())
///                 .build())
///             .templateMetadata(TemplateTemplateMetadataArgs.builder()
///                 .filterVersionSelector(TemplateTemplateMetadataFilterVersionSelectorArgs.builder()
///                     .version("v1")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   template-filter-version-selector:
///     type: gcp:modelarmor:Template
///     properties:
///       location: us-central1
///       templateId: modelarmor5
///       filterConfig:
///         raiSettings:
///           raiFilters:
///             - filterType: HATE_SPEECH
///               confidenceLevel: HIGH
///       templateMetadata:
///         filterVersionSelector:
///           version: v1
/// ```
///
/// ### Modelarmor Template Label
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const template_label_advanced_config = new gcp.modelarmor.Template("template-label-advanced-config", {
///     location: "us-central1",
///     templateId: "modelarmor4",
///     labels: {
///         "test-label": "template-test-label",
///     },
///     filterConfig: {
///         raiSettings: {
///             raiFilters: [{
///                 filterType: "DANGEROUS",
///                 confidenceLevel: "MEDIUM_AND_ABOVE",
///             }],
///         },
///         sdpSettings: {
///             advancedConfig: {
///                 inspectTemplate: "projects/llm-firewall-demo/locations/us-central1/inspectTemplates/t3",
///                 deidentifyTemplate: "projects/llm-firewall-demo/locations/us-central1/deidentifyTemplates/t2",
///             },
///         },
///     },
///     templateMetadata: {
///         multiLanguageDetection: {
///             enableMultiLanguageDetection: false,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// template_label_advanced_config = gcp.modelarmor.Template("template-label-advanced-config",
///     location="us-central1",
///     template_id="modelarmor4",
///     labels={
///         "test-label": "template-test-label",
///     },
///     filter_config={
///         "rai_settings": {
///             "rai_filters": [{
///                 "filter_type": "DANGEROUS",
///                 "confidence_level": "MEDIUM_AND_ABOVE",
///             }],
///         },
///         "sdp_settings": {
///             "advanced_config": {
///                 "inspect_template": "projects/llm-firewall-demo/locations/us-central1/inspectTemplates/t3",
///                 "deidentify_template": "projects/llm-firewall-demo/locations/us-central1/deidentifyTemplates/t2",
///             },
///         },
///     },
///     template_metadata={
///         "multi_language_detection": {
///             "enable_multi_language_detection": False,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var template_label_advanced_config = new Gcp.ModelArmor.Template("template-label-advanced-config", new()
///     {
///         Location = "us-central1",
///         TemplateId = "modelarmor4",
///         Labels =
///         {
///             { "test-label", "template-test-label" },
///         },
///         FilterConfig = new Gcp.ModelArmor.Inputs.TemplateFilterConfigArgs
///         {
///             RaiSettings = new Gcp.ModelArmor.Inputs.TemplateFilterConfigRaiSettingsArgs
///             {
///                 RaiFilters = new[]
///                 {
///                     new Gcp.ModelArmor.Inputs.TemplateFilterConfigRaiSettingsRaiFilterArgs
///                     {
///                         FilterType = "DANGEROUS",
///                         ConfidenceLevel = "MEDIUM_AND_ABOVE",
///                     },
///                 },
///             },
///             SdpSettings = new Gcp.ModelArmor.Inputs.TemplateFilterConfigSdpSettingsArgs
///             {
///                 AdvancedConfig = new Gcp.ModelArmor.Inputs.TemplateFilterConfigSdpSettingsAdvancedConfigArgs
///                 {
///                     InspectTemplate = "projects/llm-firewall-demo/locations/us-central1/inspectTemplates/t3",
///                     DeidentifyTemplate = "projects/llm-firewall-demo/locations/us-central1/deidentifyTemplates/t2",
///                 },
///             },
///         },
///         TemplateMetadata = new Gcp.ModelArmor.Inputs.TemplateTemplateMetadataArgs
///         {
///             MultiLanguageDetection = new Gcp.ModelArmor.Inputs.TemplateTemplateMetadataMultiLanguageDetectionArgs
///             {
///                 EnableMultiLanguageDetection = false,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/modelarmor"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := modelarmor.NewTemplate(ctx, "template-label-advanced-config", &modelarmor.TemplateArgs{
/// 			Location:   pulumi.String("us-central1"),
/// 			TemplateId: pulumi.String("modelarmor4"),
/// 			Labels: pulumi.StringMap{
/// 				"test-label": pulumi.String("template-test-label"),
/// 			},
/// 			FilterConfig: &modelarmor.TemplateFilterConfigArgs{
/// 				RaiSettings: &modelarmor.TemplateFilterConfigRaiSettingsArgs{
/// 					RaiFilters: modelarmor.TemplateFilterConfigRaiSettingsRaiFilterArray{
/// 						&modelarmor.TemplateFilterConfigRaiSettingsRaiFilterArgs{
/// 							FilterType:      pulumi.String("DANGEROUS"),
/// 							ConfidenceLevel: pulumi.String("MEDIUM_AND_ABOVE"),
/// 						},
/// 					},
/// 				},
/// 				SdpSettings: &modelarmor.TemplateFilterConfigSdpSettingsArgs{
/// 					AdvancedConfig: &modelarmor.TemplateFilterConfigSdpSettingsAdvancedConfigArgs{
/// 						InspectTemplate:    pulumi.String("projects/llm-firewall-demo/locations/us-central1/inspectTemplates/t3"),
/// 						DeidentifyTemplate: pulumi.String("projects/llm-firewall-demo/locations/us-central1/deidentifyTemplates/t2"),
/// 					},
/// 				},
/// 			},
/// 			TemplateMetadata: &modelarmor.TemplateTemplateMetadataArgs{
/// 				MultiLanguageDetection: &modelarmor.TemplateTemplateMetadataMultiLanguageDetectionArgs{
/// 					EnableMultiLanguageDetection: pulumi.Bool(false),
/// 				},
/// 			},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_modelarmor_template" "template-label-advanced-config" {
///   location    = "us-central1"
///   template_id = "modelarmor4"
///   labels = {
///     "test-label" = "template-test-label"
///   }
///   filter_config = {
///     rai_settings = {
///       rai_filters = [{
///         "filterType"      = "DANGEROUS"
///         "confidenceLevel" = "MEDIUM_AND_ABOVE"
///       }]
///     }
///     sdp_settings = {
///       advanced_config = {
///         inspect_template    = "projects/llm-firewall-demo/locations/us-central1/inspectTemplates/t3"
///         deidentify_template = "projects/llm-firewall-demo/locations/us-central1/deidentifyTemplates/t2"
///       }
///     }
///   }
///   template_metadata = {
///     multi_language_detection = {
///       enable_multi_language_detection = false
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.modelarmor.Template;
/// import com.pulumi.gcp.modelarmor.TemplateArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateFilterConfigArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateFilterConfigRaiSettingsArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateFilterConfigRaiSettingsRaiFilterArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateFilterConfigSdpSettingsArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateFilterConfigSdpSettingsAdvancedConfigArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateTemplateMetadataArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateTemplateMetadataMultiLanguageDetectionArgs;
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
///         var template_label_advanced_config = new Template("template-label-advanced-config", TemplateArgs.builder()
///             .location("us-central1")
///             .templateId("modelarmor4")
///             .labels(Map.of("test-label", "template-test-label"))
///             .filterConfig(TemplateFilterConfigArgs.builder()
///                 .raiSettings(TemplateFilterConfigRaiSettingsArgs.builder()
///                     .raiFilters(TemplateFilterConfigRaiSettingsRaiFilterArgs.builder()
///                         .filterType("DANGEROUS")
///                         .confidenceLevel("MEDIUM_AND_ABOVE")
///                         .build())
///                     .build())
///                 .sdpSettings(TemplateFilterConfigSdpSettingsArgs.builder()
///                     .advancedConfig(TemplateFilterConfigSdpSettingsAdvancedConfigArgs.builder()
///                         .inspectTemplate("projects/llm-firewall-demo/locations/us-central1/inspectTemplates/t3")
///                         .deidentifyTemplate("projects/llm-firewall-demo/locations/us-central1/deidentifyTemplates/t2")
///                         .build())
///                     .build())
///                 .build())
///             .templateMetadata(TemplateTemplateMetadataArgs.builder()
///                 .multiLanguageDetection(TemplateTemplateMetadataMultiLanguageDetectionArgs.builder()
///                     .enableMultiLanguageDetection(false)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   template-label-advanced-config:
///     type: gcp:modelarmor:Template
///     properties:
///       location: us-central1
///       templateId: modelarmor4
///       labels:
///         test-label: template-test-label
///       filterConfig:
///         raiSettings:
///           raiFilters:
///             - filterType: DANGEROUS
///               confidenceLevel: MEDIUM_AND_ABOVE
///         sdpSettings:
///           advancedConfig:
///             inspectTemplate: projects/llm-firewall-demo/locations/us-central1/inspectTemplates/t3
///             deidentifyTemplate: projects/llm-firewall-demo/locations/us-central1/deidentifyTemplates/t2
///       templateMetadata:
///         multiLanguageDetection:
///           enableMultiLanguageDetection: false
/// ```
///
///
/// ## Import
///
/// Template can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/templates/{{template_id}}`
/// * `{{project}}/{{location}}/{{template_id}}`
/// * `{{location}}/{{template_id}}`
///
///
/// When using the `pulumi import` command, Template can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:modelarmor/template:Template default projects/{{project}}/locations/{{location}}/templates/{{template_id}}
/// $ pulumi import gcp:modelarmor/template:Template default {{project}}/{{location}}/{{template_id}}
/// $ pulumi import gcp:modelarmor/template:Template default {{location}}/{{template_id}}
/// ```
class Template extends pulumi.CustomResource {
  /// Create time stamp
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Filters configuration.
  /// Structure is documented below.
  late final pulumi.Output<TemplateFilterConfig> filterConfig;
  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. name of resource
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Id of the requesting object
  /// If auto-generating Id server-side, remove this field and
  /// templateId from the methodSignature of Create RPC
  late final pulumi.Output<String> templateId;
  /// Message describing TemplateMetadata
  /// Structure is documented below.
  late final pulumi.Output<TemplateTemplateMetadata> templateMetadata;
  /// Update time stamp
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Template].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Template]. {@macro pulumi_modelarmor_template_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Template(
    String name, {
    TemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:modelarmor/template:Template',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    filterConfig = registerOutput<TemplateFilterConfig>('filterConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TemplateFilterConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    templateId = registerOutput<String>('templateId');
    templateMetadata = registerOutput<TemplateTemplateMetadata>('templateMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TemplateTemplateMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Template] resource's state with the given [name] and [id].
  static Template get(
    String name,
    pulumi.Input<String> id, {
    TemplateState? state,
  }) {
    return Template._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Template._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:modelarmor/template:Template',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    filterConfig = registerOutput<TemplateFilterConfig>('filterConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TemplateFilterConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    templateId = registerOutput<String>('templateId');
    templateMetadata = registerOutput<TemplateTemplateMetadata>('templateMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TemplateTemplateMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }
}
