import 'package:pulumi/pulumi.dart' as pulumi;
import 'analysis_rule_annotator_selector.dart';
import 'analysis_rule_args.dart';
import 'analysis_rule_state.dart';

/// The CCAI Insights project wide analysis rule.
/// This rule will be applied to all conversations that match the filter defined in the rule.
/// For a conversation matches the filter, the annotators specified in the rule will be run.
/// If a conversation matches multiple rules, a union of all the annotators will be run.
/// One project can have multiple analysis rules.
///
///
/// To get more information about AnalysisRule, see:
///
/// * [API documentation](https://cloud.google.com/contact-center/insights/docs/reference/rest/v1/projects.locations.analysisRules)
/// * How-to Guides
/// * [Configure analysis rules using the API](https://cloud.google.com/contact-center/insights/docs/analysis-rule)
///
/// ## Example Usage
///
/// ### Contact Center Insights Analysis Rule Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const analysisRuleBasic = new gcp.contactcenterinsights.AnalysisRule("analysis_rule_basic", {
///     location: "us-central1",
///     displayName: "analysis-rule-display-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// analysis_rule_basic = gcp.contactcenterinsights.AnalysisRule("analysis_rule_basic",
///     location="us-central1",
///     display_name="analysis-rule-display-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var analysisRuleBasic = new Gcp.ContactCenterInsights.AnalysisRule("analysis_rule_basic", new()
///     {
///         Location = "us-central1",
///         DisplayName = "analysis-rule-display-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/contactcenterinsights"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := contactcenterinsights.NewAnalysisRule(ctx, "analysis_rule_basic", &contactcenterinsights.AnalysisRuleArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("analysis-rule-display-name"),
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
/// import com.pulumi.gcp.contactcenterinsights.AnalysisRule;
/// import com.pulumi.gcp.contactcenterinsights.AnalysisRuleArgs;
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
///         var analysisRuleBasic = new AnalysisRule("analysisRuleBasic", AnalysisRuleArgs.builder()
///             .location("us-central1")
///             .displayName("analysis-rule-display-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   analysisRuleBasic:
///     type: gcp:contactcenterinsights:AnalysisRule
///     name: analysis_rule_basic
///     properties:
///       location: us-central1
///       displayName: analysis-rule-display-name
/// ```
///
/// ### Contact Center Insights Analysis Rule Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const analysisRuleFull = new gcp.contactcenterinsights.AnalysisRule("analysis_rule_full", {
///     location: "us-central1",
///     displayName: "analysis-rule-display-name",
///     conversationFilter: "agent_id = \"1\"",
///     annotatorSelector: {
///         runInterruptionAnnotator: false,
///         issueModels: ["projects/1111111111111/locations/us-central1/issueModels/some_issue_model_id"],
///         phraseMatchers: ["projects/1111111111111/locations/us-central1/phraseMatchers/123"],
///         qaConfig: {
///             scorecardList: {
///                 qaScorecardRevisions: ["projects/1111111111111/locations/us-central1/qaScorecards/*/revisions/some_scorecard_revision_id"],
///             },
///         },
///         runEntityAnnotator: false,
///         runIntentAnnotator: false,
///         runIssueModelAnnotator: false,
///         runPhraseMatcherAnnotator: false,
///         runQaAnnotator: false,
///         runSentimentAnnotator: false,
///         runSilenceAnnotator: true,
///         runSummarizationAnnotator: false,
///         summarizationConfig: {
///             summarizationModel: "BASELINE_MODEL",
///         },
///     },
///     analysisPercentage: 0.5,
///     active: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// analysis_rule_full = gcp.contactcenterinsights.AnalysisRule("analysis_rule_full",
///     location="us-central1",
///     display_name="analysis-rule-display-name",
///     conversation_filter="agent_id = \"1\"",
///     annotator_selector={
///         "run_interruption_annotator": False,
///         "issue_models": ["projects/1111111111111/locations/us-central1/issueModels/some_issue_model_id"],
///         "phrase_matchers": ["projects/1111111111111/locations/us-central1/phraseMatchers/123"],
///         "qa_config": {
///             "scorecard_list": {
///                 "qa_scorecard_revisions": ["projects/1111111111111/locations/us-central1/qaScorecards/*/revisions/some_scorecard_revision_id"],
///             },
///         },
///         "run_entity_annotator": False,
///         "run_intent_annotator": False,
///         "run_issue_model_annotator": False,
///         "run_phrase_matcher_annotator": False,
///         "run_qa_annotator": False,
///         "run_sentiment_annotator": False,
///         "run_silence_annotator": True,
///         "run_summarization_annotator": False,
///         "summarization_config": {
///             "summarization_model": "BASELINE_MODEL",
///         },
///     },
///     analysis_percentage=0.5,
///     active=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var analysisRuleFull = new Gcp.ContactCenterInsights.AnalysisRule("analysis_rule_full", new()
///     {
///         Location = "us-central1",
///         DisplayName = "analysis-rule-display-name",
///         ConversationFilter = "agent_id = \"1\"",
///         AnnotatorSelector = new Gcp.ContactCenterInsights.Inputs.AnalysisRuleAnnotatorSelectorArgs
///         {
///             RunInterruptionAnnotator = false,
///             IssueModels = new[]
///             {
///                 "projects/1111111111111/locations/us-central1/issueModels/some_issue_model_id",
///             },
///             PhraseMatchers = new[]
///             {
///                 "projects/1111111111111/locations/us-central1/phraseMatchers/123",
///             },
///             QaConfig = new Gcp.ContactCenterInsights.Inputs.AnalysisRuleAnnotatorSelectorQaConfigArgs
///             {
///                 ScorecardList = new Gcp.ContactCenterInsights.Inputs.AnalysisRuleAnnotatorSelectorQaConfigScorecardListArgs
///                 {
///                     QaScorecardRevisions = new[]
///                     {
///                         "projects/1111111111111/locations/us-central1/qaScorecards/*/revisions/some_scorecard_revision_id",
///                     },
///                 },
///             },
///             RunEntityAnnotator = false,
///             RunIntentAnnotator = false,
///             RunIssueModelAnnotator = false,
///             RunPhraseMatcherAnnotator = false,
///             RunQaAnnotator = false,
///             RunSentimentAnnotator = false,
///             RunSilenceAnnotator = true,
///             RunSummarizationAnnotator = false,
///             SummarizationConfig = new Gcp.ContactCenterInsights.Inputs.AnalysisRuleAnnotatorSelectorSummarizationConfigArgs
///             {
///                 SummarizationModel = "BASELINE_MODEL",
///             },
///         },
///         AnalysisPercentage = 0.5,
///         Active = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/contactcenterinsights"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := contactcenterinsights.NewAnalysisRule(ctx, "analysis_rule_full", &contactcenterinsights.AnalysisRuleArgs{
/// 			Location:           pulumi.String("us-central1"),
/// 			DisplayName:        pulumi.String("analysis-rule-display-name"),
/// 			ConversationFilter: pulumi.String("agent_id = \"1\""),
/// 			AnnotatorSelector: &contactcenterinsights.AnalysisRuleAnnotatorSelectorArgs{
/// 				RunInterruptionAnnotator: pulumi.Bool(false),
/// 				IssueModels: pulumi.StringArray{
/// 					pulumi.String("projects/1111111111111/locations/us-central1/issueModels/some_issue_model_id"),
/// 				},
/// 				PhraseMatchers: pulumi.StringArray{
/// 					pulumi.String("projects/1111111111111/locations/us-central1/phraseMatchers/123"),
/// 				},
/// 				QaConfig: &contactcenterinsights.AnalysisRuleAnnotatorSelectorQaConfigArgs{
/// 					ScorecardList: &contactcenterinsights.AnalysisRuleAnnotatorSelectorQaConfigScorecardListArgs{
/// 						QaScorecardRevisions: pulumi.StringArray{
/// 							pulumi.String("projects/1111111111111/locations/us-central1/qaScorecards/*/revisions/some_scorecard_revision_id"),
/// 						},
/// 					},
/// 				},
/// 				RunEntityAnnotator:        pulumi.Bool(false),
/// 				RunIntentAnnotator:        pulumi.Bool(false),
/// 				RunIssueModelAnnotator:    pulumi.Bool(false),
/// 				RunPhraseMatcherAnnotator: pulumi.Bool(false),
/// 				RunQaAnnotator:            pulumi.Bool(false),
/// 				RunSentimentAnnotator:     pulumi.Bool(false),
/// 				RunSilenceAnnotator:       pulumi.Bool(true),
/// 				RunSummarizationAnnotator: pulumi.Bool(false),
/// 				SummarizationConfig: &contactcenterinsights.AnalysisRuleAnnotatorSelectorSummarizationConfigArgs{
/// 					SummarizationModel: pulumi.String("BASELINE_MODEL"),
/// 				},
/// 			},
/// 			AnalysisPercentage: pulumi.Float64(0.5),
/// 			Active:             pulumi.Bool(true),
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
/// import com.pulumi.gcp.contactcenterinsights.AnalysisRule;
/// import com.pulumi.gcp.contactcenterinsights.AnalysisRuleArgs;
/// import com.pulumi.gcp.contactcenterinsights.inputs.AnalysisRuleAnnotatorSelectorArgs;
/// import com.pulumi.gcp.contactcenterinsights.inputs.AnalysisRuleAnnotatorSelectorQaConfigArgs;
/// import com.pulumi.gcp.contactcenterinsights.inputs.AnalysisRuleAnnotatorSelectorQaConfigScorecardListArgs;
/// import com.pulumi.gcp.contactcenterinsights.inputs.AnalysisRuleAnnotatorSelectorSummarizationConfigArgs;
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
///         var analysisRuleFull = new AnalysisRule("analysisRuleFull", AnalysisRuleArgs.builder()
///             .location("us-central1")
///             .displayName("analysis-rule-display-name")
///             .conversationFilter("agent_id = \"1\"")
///             .annotatorSelector(AnalysisRuleAnnotatorSelectorArgs.builder()
///                 .runInterruptionAnnotator(false)
///                 .issueModels("projects/1111111111111/locations/us-central1/issueModels/some_issue_model_id")
///                 .phraseMatchers("projects/1111111111111/locations/us-central1/phraseMatchers/123")
///                 .qaConfig(AnalysisRuleAnnotatorSelectorQaConfigArgs.builder()
///                     .scorecardList(AnalysisRuleAnnotatorSelectorQaConfigScorecardListArgs.builder()
///                         .qaScorecardRevisions("projects/1111111111111/locations/us-central1/qaScorecards/*/revisions/some_scorecard_revision_id")
///                         .build())
///                     .build())
///                 .runEntityAnnotator(false)
///                 .runIntentAnnotator(false)
///                 .runIssueModelAnnotator(false)
///                 .runPhraseMatcherAnnotator(false)
///                 .runQaAnnotator(false)
///                 .runSentimentAnnotator(false)
///                 .runSilenceAnnotator(true)
///                 .runSummarizationAnnotator(false)
///                 .summarizationConfig(AnalysisRuleAnnotatorSelectorSummarizationConfigArgs.builder()
///                     .summarizationModel("BASELINE_MODEL")
///                     .build())
///                 .build())
///             .analysisPercentage(0.5)
///             .active(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   analysisRuleFull:
///     type: gcp:contactcenterinsights:AnalysisRule
///     name: analysis_rule_full
///     properties:
///       location: us-central1
///       displayName: analysis-rule-display-name
///       conversationFilter: agent_id = "1"
///       annotatorSelector:
///         runInterruptionAnnotator: false
///         issueModels:
///           - projects/1111111111111/locations/us-central1/issueModels/some_issue_model_id
///         phraseMatchers:
///           - projects/1111111111111/locations/us-central1/phraseMatchers/123
///         qaConfig:
///           scorecardList:
///             qaScorecardRevisions:
///               - projects/1111111111111/locations/us-central1/qaScorecards/*/revisions/some_scorecard_revision_id
///         runEntityAnnotator: false
///         runIntentAnnotator: false
///         runIssueModelAnnotator: false
///         runPhraseMatcherAnnotator: false
///         runQaAnnotator: false
///         runSentimentAnnotator: false
///         runSilenceAnnotator: true
///         runSummarizationAnnotator: false
///         summarizationConfig:
///           summarizationModel: BASELINE_MODEL
///       analysisPercentage: 0.5
///       active: true
/// ```
///
/// ### Contact Center Insights Analysis Rule Profile
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const analysisRuleProfile = new gcp.contactcenterinsights.AnalysisRule("analysis_rule_profile", {
///     location: "us-central1",
///     displayName: "analysis-rule-display-name",
///     conversationFilter: "agent_id = \"1\"",
///     annotatorSelector: {
///         runInterruptionAnnotator: false,
///         issueModels: ["projects/1111111111111/locations/us-central1/issueModels/some_issue_model_id"],
///         phraseMatchers: ["projects/1111111111111/locations/us-central1/phraseMatchers/123"],
///         qaConfig: {
///             scorecardList: {
///                 qaScorecardRevisions: ["projects/1111111111111/locations/us-central1/qaScorecards/*/revisions/some_scorecard_revision_id"],
///             },
///         },
///         runEntityAnnotator: false,
///         runIntentAnnotator: false,
///         runIssueModelAnnotator: false,
///         runPhraseMatcherAnnotator: false,
///         runQaAnnotator: false,
///         runSentimentAnnotator: false,
///         runSilenceAnnotator: true,
///         runSummarizationAnnotator: false,
///         summarizationConfig: {
///             conversationProfile: "projects/1111111111111/locations/us-central1/conversationProfiles/some_conversation_profile",
///         },
///     },
///     analysisPercentage: 0.5,
///     active: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// analysis_rule_profile = gcp.contactcenterinsights.AnalysisRule("analysis_rule_profile",
///     location="us-central1",
///     display_name="analysis-rule-display-name",
///     conversation_filter="agent_id = \"1\"",
///     annotator_selector={
///         "run_interruption_annotator": False,
///         "issue_models": ["projects/1111111111111/locations/us-central1/issueModels/some_issue_model_id"],
///         "phrase_matchers": ["projects/1111111111111/locations/us-central1/phraseMatchers/123"],
///         "qa_config": {
///             "scorecard_list": {
///                 "qa_scorecard_revisions": ["projects/1111111111111/locations/us-central1/qaScorecards/*/revisions/some_scorecard_revision_id"],
///             },
///         },
///         "run_entity_annotator": False,
///         "run_intent_annotator": False,
///         "run_issue_model_annotator": False,
///         "run_phrase_matcher_annotator": False,
///         "run_qa_annotator": False,
///         "run_sentiment_annotator": False,
///         "run_silence_annotator": True,
///         "run_summarization_annotator": False,
///         "summarization_config": {
///             "conversation_profile": "projects/1111111111111/locations/us-central1/conversationProfiles/some_conversation_profile",
///         },
///     },
///     analysis_percentage=0.5,
///     active=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var analysisRuleProfile = new Gcp.ContactCenterInsights.AnalysisRule("analysis_rule_profile", new()
///     {
///         Location = "us-central1",
///         DisplayName = "analysis-rule-display-name",
///         ConversationFilter = "agent_id = \"1\"",
///         AnnotatorSelector = new Gcp.ContactCenterInsights.Inputs.AnalysisRuleAnnotatorSelectorArgs
///         {
///             RunInterruptionAnnotator = false,
///             IssueModels = new[]
///             {
///                 "projects/1111111111111/locations/us-central1/issueModels/some_issue_model_id",
///             },
///             PhraseMatchers = new[]
///             {
///                 "projects/1111111111111/locations/us-central1/phraseMatchers/123",
///             },
///             QaConfig = new Gcp.ContactCenterInsights.Inputs.AnalysisRuleAnnotatorSelectorQaConfigArgs
///             {
///                 ScorecardList = new Gcp.ContactCenterInsights.Inputs.AnalysisRuleAnnotatorSelectorQaConfigScorecardListArgs
///                 {
///                     QaScorecardRevisions = new[]
///                     {
///                         "projects/1111111111111/locations/us-central1/qaScorecards/*/revisions/some_scorecard_revision_id",
///                     },
///                 },
///             },
///             RunEntityAnnotator = false,
///             RunIntentAnnotator = false,
///             RunIssueModelAnnotator = false,
///             RunPhraseMatcherAnnotator = false,
///             RunQaAnnotator = false,
///             RunSentimentAnnotator = false,
///             RunSilenceAnnotator = true,
///             RunSummarizationAnnotator = false,
///             SummarizationConfig = new Gcp.ContactCenterInsights.Inputs.AnalysisRuleAnnotatorSelectorSummarizationConfigArgs
///             {
///                 ConversationProfile = "projects/1111111111111/locations/us-central1/conversationProfiles/some_conversation_profile",
///             },
///         },
///         AnalysisPercentage = 0.5,
///         Active = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/contactcenterinsights"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := contactcenterinsights.NewAnalysisRule(ctx, "analysis_rule_profile", &contactcenterinsights.AnalysisRuleArgs{
/// 			Location:           pulumi.String("us-central1"),
/// 			DisplayName:        pulumi.String("analysis-rule-display-name"),
/// 			ConversationFilter: pulumi.String("agent_id = \"1\""),
/// 			AnnotatorSelector: &contactcenterinsights.AnalysisRuleAnnotatorSelectorArgs{
/// 				RunInterruptionAnnotator: pulumi.Bool(false),
/// 				IssueModels: pulumi.StringArray{
/// 					pulumi.String("projects/1111111111111/locations/us-central1/issueModels/some_issue_model_id"),
/// 				},
/// 				PhraseMatchers: pulumi.StringArray{
/// 					pulumi.String("projects/1111111111111/locations/us-central1/phraseMatchers/123"),
/// 				},
/// 				QaConfig: &contactcenterinsights.AnalysisRuleAnnotatorSelectorQaConfigArgs{
/// 					ScorecardList: &contactcenterinsights.AnalysisRuleAnnotatorSelectorQaConfigScorecardListArgs{
/// 						QaScorecardRevisions: pulumi.StringArray{
/// 							pulumi.String("projects/1111111111111/locations/us-central1/qaScorecards/*/revisions/some_scorecard_revision_id"),
/// 						},
/// 					},
/// 				},
/// 				RunEntityAnnotator:        pulumi.Bool(false),
/// 				RunIntentAnnotator:        pulumi.Bool(false),
/// 				RunIssueModelAnnotator:    pulumi.Bool(false),
/// 				RunPhraseMatcherAnnotator: pulumi.Bool(false),
/// 				RunQaAnnotator:            pulumi.Bool(false),
/// 				RunSentimentAnnotator:     pulumi.Bool(false),
/// 				RunSilenceAnnotator:       pulumi.Bool(true),
/// 				RunSummarizationAnnotator: pulumi.Bool(false),
/// 				SummarizationConfig: &contactcenterinsights.AnalysisRuleAnnotatorSelectorSummarizationConfigArgs{
/// 					ConversationProfile: pulumi.String("projects/1111111111111/locations/us-central1/conversationProfiles/some_conversation_profile"),
/// 				},
/// 			},
/// 			AnalysisPercentage: pulumi.Float64(0.5),
/// 			Active:             pulumi.Bool(true),
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
/// import com.pulumi.gcp.contactcenterinsights.AnalysisRule;
/// import com.pulumi.gcp.contactcenterinsights.AnalysisRuleArgs;
/// import com.pulumi.gcp.contactcenterinsights.inputs.AnalysisRuleAnnotatorSelectorArgs;
/// import com.pulumi.gcp.contactcenterinsights.inputs.AnalysisRuleAnnotatorSelectorQaConfigArgs;
/// import com.pulumi.gcp.contactcenterinsights.inputs.AnalysisRuleAnnotatorSelectorQaConfigScorecardListArgs;
/// import com.pulumi.gcp.contactcenterinsights.inputs.AnalysisRuleAnnotatorSelectorSummarizationConfigArgs;
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
///         var analysisRuleProfile = new AnalysisRule("analysisRuleProfile", AnalysisRuleArgs.builder()
///             .location("us-central1")
///             .displayName("analysis-rule-display-name")
///             .conversationFilter("agent_id = \"1\"")
///             .annotatorSelector(AnalysisRuleAnnotatorSelectorArgs.builder()
///                 .runInterruptionAnnotator(false)
///                 .issueModels("projects/1111111111111/locations/us-central1/issueModels/some_issue_model_id")
///                 .phraseMatchers("projects/1111111111111/locations/us-central1/phraseMatchers/123")
///                 .qaConfig(AnalysisRuleAnnotatorSelectorQaConfigArgs.builder()
///                     .scorecardList(AnalysisRuleAnnotatorSelectorQaConfigScorecardListArgs.builder()
///                         .qaScorecardRevisions("projects/1111111111111/locations/us-central1/qaScorecards/*/revisions/some_scorecard_revision_id")
///                         .build())
///                     .build())
///                 .runEntityAnnotator(false)
///                 .runIntentAnnotator(false)
///                 .runIssueModelAnnotator(false)
///                 .runPhraseMatcherAnnotator(false)
///                 .runQaAnnotator(false)
///                 .runSentimentAnnotator(false)
///                 .runSilenceAnnotator(true)
///                 .runSummarizationAnnotator(false)
///                 .summarizationConfig(AnalysisRuleAnnotatorSelectorSummarizationConfigArgs.builder()
///                     .conversationProfile("projects/1111111111111/locations/us-central1/conversationProfiles/some_conversation_profile")
///                     .build())
///                 .build())
///             .analysisPercentage(0.5)
///             .active(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   analysisRuleProfile:
///     type: gcp:contactcenterinsights:AnalysisRule
///     name: analysis_rule_profile
///     properties:
///       location: us-central1
///       displayName: analysis-rule-display-name
///       conversationFilter: agent_id = "1"
///       annotatorSelector:
///         runInterruptionAnnotator: false
///         issueModels:
///           - projects/1111111111111/locations/us-central1/issueModels/some_issue_model_id
///         phraseMatchers:
///           - projects/1111111111111/locations/us-central1/phraseMatchers/123
///         qaConfig:
///           scorecardList:
///             qaScorecardRevisions:
///               - projects/1111111111111/locations/us-central1/qaScorecards/*/revisions/some_scorecard_revision_id
///         runEntityAnnotator: false
///         runIntentAnnotator: false
///         runIssueModelAnnotator: false
///         runPhraseMatcherAnnotator: false
///         runQaAnnotator: false
///         runSentimentAnnotator: false
///         runSilenceAnnotator: true
///         runSummarizationAnnotator: false
///         summarizationConfig:
///           conversationProfile: projects/1111111111111/locations/us-central1/conversationProfiles/some_conversation_profile
///       analysisPercentage: 0.5
///       active: true
/// ```
///
///
/// ## Import
///
/// AnalysisRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/analysisRules/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, AnalysisRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:contactcenterinsights/analysisRule:AnalysisRule default projects/{{project}}/locations/{{location}}/analysisRules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:contactcenterinsights/analysisRule:AnalysisRule default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:contactcenterinsights/analysisRule:AnalysisRule default {{location}}/{{name}}
/// ```
class AnalysisRule extends pulumi.CustomResource {
  /// If true, apply this rule to conversations. Otherwise, this rule is
  /// inactive and saved as a draft.
  late final pulumi.Output<bool?> active;
  /// Percentage of conversations that we should apply this analysis setting
  /// automatically, between [0, 1]. For example, 0.1 means 10%. Conversations
  /// are sampled in a determenestic way. The original runtime_percentage &
  /// upload percentage will be replaced by defining filters on the conversation.
  late final pulumi.Output<double?> analysisPercentage;
  /// Selector of all available annotators and phrase matchers to run.
  /// Structure is documented below.
  late final pulumi.Output<AnalysisRuleAnnotatorSelector?> annotatorSelector;
  /// Filter for the conversations that should apply this analysis
  /// rule. An empty filter means this analysis rule applies to all
  /// conversations.
  /// Refer to https://cloud.google.com/contact-center/insights/docs/filtering
  /// for details.
  late final pulumi.Output<String?> conversationFilter;
  /// Output only. The time at which this analysis rule was created.
  late final pulumi.Output<String> createTime;
  /// Display Name of the analysis rule.
  late final pulumi.Output<String?> displayName;
  /// Location of the resource.
  late final pulumi.Output<String> location;
  /// The resource name of the analysis rule. Randomly generated by Insights.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Output only. The most recent time at which this analysis rule was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AnalysisRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AnalysisRule]. {@macro pulumi_contactcenterinsights_analysis_rule_analysis_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AnalysisRule(
    String name, {
    AnalysisRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:contactcenterinsights/analysisRule:AnalysisRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.active = registerOutput<bool?>('active');
    this.analysisPercentage = registerOutput<double?>('analysisPercentage');
    this.annotatorSelector = registerOutput<AnalysisRuleAnnotatorSelector?>('annotatorSelector');
    this.conversationFilter = registerOutput<String?>('conversationFilter');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String?>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AnalysisRule] resource's state with the given [name] and [id].
  static AnalysisRule get(
    String name,
    pulumi.Input<String> id, {
    AnalysisRuleState? state,
  }) {
    return AnalysisRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AnalysisRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:contactcenterinsights/analysisRule:AnalysisRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.active = registerOutput<bool?>('active');
    this.analysisPercentage = registerOutput<double?>('analysisPercentage');
    this.annotatorSelector = registerOutput<AnalysisRuleAnnotatorSelector?>('annotatorSelector');
    this.conversationFilter = registerOutput<String?>('conversationFilter');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String?>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
