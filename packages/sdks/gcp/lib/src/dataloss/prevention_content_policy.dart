import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_args.dart';
import 'prevention_content_policy_default_action.dart';
import 'prevention_content_policy_error.dart';
import 'prevention_content_policy_failed_to_scan_supported_file_type.dart';
import 'prevention_content_policy_input_too_large.dart';
import 'prevention_content_policy_inspect_config.dart';
import 'prevention_content_policy_logging_config.dart';
import 'prevention_content_policy_rule.dart';
import 'prevention_content_policy_state.dart';
import 'prevention_content_policy_unsupported_file_type.dart';

/// A policy to apply to content based on its inspection findings.
///
///
/// To get more information about ContentPolicy, see:
///
/// * [API documentation](https://cloud.google.com/sensitive-data-protection/docs/reference/rest/v2/projects.locations.contentPolicies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/sensitive-data-protection/docs)
///
/// ## Example Usage
///
/// ### Dlp Content Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.dataloss.PreventionContentPolicy("basic", {
///     parent: "projects/my-project-name/locations/us-west1",
///     displayName: "tf-test-dlp-content-policy-basic",
///     inspectConfig: {
///         infoTypes: [{
///             name: "EMAIL_ADDRESS",
///         }],
///         minLikelihood: "POSSIBLE",
///     },
///     rules: [{
///         conditions: [{
///             infoTypeCondition: {
///                 infoTypes: {
///                     infoTypeNames: ["EMAIL_ADDRESS"],
///                 },
///                 minCount: 1,
///             },
///         }],
///         action: {
///             returnVerdict: "BLOCK",
///         },
///     }],
///     defaultAction: {
///         returnVerdict: "ALLOW",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.dataloss.PreventionContentPolicy("basic",
///     parent="projects/my-project-name/locations/us-west1",
///     display_name="tf-test-dlp-content-policy-basic",
///     inspect_config={
///         "info_types": [{
///             "name": "EMAIL_ADDRESS",
///         }],
///         "min_likelihood": "POSSIBLE",
///     },
///     rules=[{
///         "conditions": [{
///             "info_type_condition": {
///                 "info_types": {
///                     "info_type_names": ["EMAIL_ADDRESS"],
///                 },
///                 "min_count": 1,
///             },
///         }],
///         "action": {
///             "return_verdict": "BLOCK",
///         },
///     }],
///     default_action={
///         "return_verdict": "ALLOW",
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
///     var basic = new Gcp.DataLoss.PreventionContentPolicy("basic", new()
///     {
///         Parent = "projects/my-project-name/locations/us-west1",
///         DisplayName = "tf-test-dlp-content-policy-basic",
///         InspectConfig = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigArgs
///         {
///             InfoTypes = new[]
///             {
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigInfoTypeArgs
///                 {
///                     Name = "EMAIL_ADDRESS",
///                 },
///             },
///             MinLikelihood = "POSSIBLE",
///         },
///         Rules = new[]
///         {
///             new Gcp.DataLoss.Inputs.PreventionContentPolicyRuleArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Gcp.DataLoss.Inputs.PreventionContentPolicyRuleConditionArgs
///                     {
///                         InfoTypeCondition = new Gcp.DataLoss.Inputs.PreventionContentPolicyRuleConditionInfoTypeConditionArgs
///                         {
///                             InfoTypes = new Gcp.DataLoss.Inputs.PreventionContentPolicyRuleConditionInfoTypeConditionInfoTypesArgs
///                             {
///                                 InfoTypeNames = new[]
///                                 {
///                                     "EMAIL_ADDRESS",
///                                 },
///                             },
///                             MinCount = 1,
///                         },
///                     },
///                 },
///                 Action = new Gcp.DataLoss.Inputs.PreventionContentPolicyRuleActionArgs
///                 {
///                     ReturnVerdict = "BLOCK",
///                 },
///             },
///         },
///         DefaultAction = new Gcp.DataLoss.Inputs.PreventionContentPolicyDefaultActionArgs
///         {
///             ReturnVerdict = "ALLOW",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/dataloss"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataloss.NewPreventionContentPolicy(ctx, "basic", &dataloss.PreventionContentPolicyArgs{
/// 			Parent:      pulumi.String("projects/my-project-name/locations/us-west1"),
/// 			DisplayName: pulumi.String("tf-test-dlp-content-policy-basic"),
/// 			InspectConfig: &dataloss.PreventionContentPolicyInspectConfigArgs{
/// 				InfoTypes: dataloss.PreventionContentPolicyInspectConfigInfoTypeArray{
/// 					&dataloss.PreventionContentPolicyInspectConfigInfoTypeArgs{
/// 						Name: pulumi.String("EMAIL_ADDRESS"),
/// 					},
/// 				},
/// 				MinLikelihood: pulumi.String("POSSIBLE"),
/// 			},
/// 			Rules: dataloss.PreventionContentPolicyRuleArray{
/// 				&dataloss.PreventionContentPolicyRuleArgs{
/// 					Conditions: dataloss.PreventionContentPolicyRuleConditionArray{
/// 						&dataloss.PreventionContentPolicyRuleConditionArgs{
/// 							InfoTypeCondition: &dataloss.PreventionContentPolicyRuleConditionInfoTypeConditionArgs{
/// 								InfoTypes: &dataloss.PreventionContentPolicyRuleConditionInfoTypeConditionInfoTypesArgs{
/// 									InfoTypeNames: pulumi.StringArray{
/// 										pulumi.String("EMAIL_ADDRESS"),
/// 									},
/// 								},
/// 								MinCount: pulumi.Int(1),
/// 							},
/// 						},
/// 					},
/// 					Action: &dataloss.PreventionContentPolicyRuleActionArgs{
/// 						ReturnVerdict: pulumi.String("BLOCK"),
/// 					},
/// 				},
/// 			},
/// 			DefaultAction: &dataloss.PreventionContentPolicyDefaultActionArgs{
/// 				ReturnVerdict: pulumi.String("ALLOW"),
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
/// resource "gcp_dataloss_preventioncontentpolicy" "basic" {
///   parent       = "projects/my-project-name/locations/us-west1"
///   display_name = "tf-test-dlp-content-policy-basic"
///   inspect_config = {
///     info_types = [{
///       "name" = "EMAIL_ADDRESS"
///     }]
///     min_likelihood = "POSSIBLE"
///   }
///   rules {
///     conditions {
///       info_type_condition = {
///         info_types = {
///           info_type_names = ["EMAIL_ADDRESS"]
///         }
///         min_count = 1
///       }
///     }
///     action = {
///       return_verdict = "BLOCK"
///     }
///   }
///   default_action = {
///     return_verdict = "ALLOW"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataloss.PreventionContentPolicy;
/// import com.pulumi.gcp.dataloss.PreventionContentPolicyArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigInfoTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyRuleArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyRuleConditionArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyRuleConditionInfoTypeConditionArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyRuleConditionInfoTypeConditionInfoTypesArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyRuleActionArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyDefaultActionArgs;
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
///         var basic = new PreventionContentPolicy("basic", PreventionContentPolicyArgs.builder()
///             .parent("projects/my-project-name/locations/us-west1")
///             .displayName("tf-test-dlp-content-policy-basic")
///             .inspectConfig(PreventionContentPolicyInspectConfigArgs.builder()
///                 .infoTypes(PreventionContentPolicyInspectConfigInfoTypeArgs.builder()
///                     .name("EMAIL_ADDRESS")
///                     .build())
///                 .minLikelihood("POSSIBLE")
///                 .build())
///             .rules(PreventionContentPolicyRuleArgs.builder()
///                 .conditions(PreventionContentPolicyRuleConditionArgs.builder()
///                     .infoTypeCondition(PreventionContentPolicyRuleConditionInfoTypeConditionArgs.builder()
///                         .infoTypes(PreventionContentPolicyRuleConditionInfoTypeConditionInfoTypesArgs.builder()
///                             .infoTypeNames("EMAIL_ADDRESS")
///                             .build())
///                         .minCount(1)
///                         .build())
///                     .build())
///                 .action(PreventionContentPolicyRuleActionArgs.builder()
///                     .returnVerdict("BLOCK")
///                     .build())
///                 .build())
///             .defaultAction(PreventionContentPolicyDefaultActionArgs.builder()
///                 .returnVerdict("ALLOW")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:dataloss:PreventionContentPolicy
///     properties:
///       parent: projects/my-project-name/locations/us-west1
///       displayName: tf-test-dlp-content-policy-basic
///       inspectConfig:
///         infoTypes:
///           - name: EMAIL_ADDRESS
///         minLikelihood: POSSIBLE
///       rules:
///         - conditions:
///             - infoTypeCondition:
///                 infoTypes:
///                   infoTypeNames:
///                     - EMAIL_ADDRESS
///                 minCount: 1
///           action:
///             returnVerdict: BLOCK
///       defaultAction:
///         returnVerdict: ALLOW
/// ```
///
/// ### Dlp Content Policy Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.dataloss.PreventionStoredInfoType("basic", {
///     parent: "projects/my-project-name/locations/us-west1",
///     description: "Description for stored info type",
///     displayName: "tf-test-stored-info-type",
///     regex: {
///         pattern: ".*",
///         groupIndexes: [0],
///     },
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "dlp_bkt",
///     location: "US",
///     uniformBucketLevelAccess: true,
///     forceDestroy: true,
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "tf-test-wordlist",
///     bucket: bucket.name,
///     content: `word1
/// word2
/// `,
/// });
/// const _default = new gcp.bigquery.Dataset("default", {
///     datasetId: "dlp_ds",
///     friendlyName: "tf-test-dataset",
///     description: "Description for the dataset created by terraform",
///     location: "US",
///     defaultTableExpirationMs: 3600000,
///     deleteContentsOnDestroy: true,
/// });
/// const defaultTable = new gcp.bigquery.Table("default", {
///     datasetId: _default.datasetId,
///     tableId: "dlp_tbl",
///     deletionProtection: false,
///     schema: `[
///   {
///     \\"name\\": \\"quantity\\",
///     \\"type\\": \\"NUMERIC\\",
///     \\"mode\\": \\"NULLABLE\\",
///     \\"description\\": \\"The quantity\\"
///   }
/// ]
/// `,
/// });
/// const full = new gcp.dataloss.PreventionContentPolicy("full", {
///     parent: "projects/my-project-name/locations/us-west1",
///     displayName: "tf-test-dlp-content-policy-full",
///     inspectConfig: {
///         contentOptions: [
///             "CONTENT_TEXT",
///             "CONTENT_IMAGE",
///         ],
///         includeQuote: true,
///         excludeInfoTypes: false,
///         minLikelihood: "LIKELY",
///         infoTypes: [
///             {
///                 name: "PHONE_NUMBER",
///                 sensitivityScore: {
///                     score: "SENSITIVITY_LOW",
///                 },
///             },
///             {
///                 name: "EMAIL_ADDRESS",
///             },
///             {
///                 name: "PERSON_NAME",
///                 version: "latest",
///             },
///             {
///                 name: "FIRST_NAME",
///             },
///             {
///                 name: "LAST_NAME",
///             },
///             {
///                 name: "OBJECT_TYPE/PERSON",
///             },
///             {
///                 name: "OBJECT_TYPE/PERSON/PASSPORT",
///             },
///         ],
///         minLikelihoodPerInfoTypes: [{
///             infoType: {
///                 name: "PERSON_NAME",
///                 version: "latest",
///                 sensitivityScore: {
///                     score: "SENSITIVITY_LOW",
///                 },
///             },
///             minLikelihood: "LIKELY",
///         }],
///         customInfoTypes: [
///             {
///                 infoType: {
///                     name: "MY_CUSTOM_TYPE",
///                     version: "0.1",
///                     sensitivityScore: {
///                         score: "SENSITIVITY_LOW",
///                     },
///                 },
///                 sensitivityScore: {
///                     score: "SENSITIVITY_MODERATE",
///                 },
///                 likelihood: "UNLIKELY",
///                 exclusionType: "EXCLUSION_TYPE_EXCLUDE",
///                 regex: {
///                     pattern: "test.*",
///                     groupIndexes: [0],
///                 },
///                 detectionRules: [{
///                     hotwordRule: {
///                         hotwordRegex: {
///                             pattern: "password",
///                             groupIndexes: [0],
///                         },
///                         proximity: {
///                             windowBefore: 10,
///                             windowAfter: 10,
///                         },
///                         likelihoodAdjustment: {
///                             fixedLikelihood: "VERY_LIKELY",
///                         },
///                     },
///                 }],
///             },
///             {
///                 infoType: {
///                     name: "MY_GDRIVE_LABEL_TYPE",
///                 },
///                 likelihood: "POSSIBLE",
///                 fileLabelInfoType: {
///                     googleDriveLabel: {
///                         labelId: "testLabelId",
///                         labelFieldsToMatches: [{
///                             id: "field1",
///                             value: "val1",
///                         }],
///                     },
///                 },
///             },
///             {
///                 infoType: {
///                     name: "MY_SENSITIVITY_LABEL_TYPE",
///                 },
///                 likelihood: "POSSIBLE",
///                 fileLabelInfoType: {
///                     sensitivityLabel: {
///                         guid: "11111111-2222-3333-4444-555555555555",
///                     },
///                 },
///             },
///             {
///                 infoType: {
///                     name: "MY_METADATA_KV_TYPE",
///                 },
///                 likelihood: "POSSIBLE",
///                 metadataKeyValueExpression: {
///                     keyRegex: "key.*",
///                     valueRegex: "val.*",
///                 },
///             },
///             {
///                 infoType: {
///                     name: "MY_WORD_LIST_TYPE",
///                 },
///                 likelihood: "POSSIBLE",
///                 dictionary: {
///                     wordList: {
///                         words: [
///                             "badword1",
///                             "badword2",
///                         ],
///                     },
///                 },
///             },
///             {
///                 infoType: {
///                     name: "MY_STORAGE_TYPE",
///                 },
///                 likelihood: "POSSIBLE",
///                 dictionary: {
///                     cloudStoragePath: {
///                         path: pulumi.interpolate`gs://${bucket.name}/${object.name}`,
///                     },
///                 },
///             },
///             {
///                 infoType: {
///                     name: "MY_STORED_TYPE",
///                 },
///                 likelihood: "POSSIBLE",
///                 storedType: {
///                     name: basic.id,
///                 },
///             },
///         ],
///         limits: {
///             maxFindingsPerItem: 10,
///             maxFindingsPerRequest: 50,
///             maxFindingsPerInfoTypes: [{
///                 maxFindings: 10,
///                 infoType: {
///                     name: "PERSON_NAME",
///                     version: "latest",
///                     sensitivityScore: {
///                         score: "SENSITIVITY_HIGH",
///                     },
///                 },
///             }],
///         },
///         ruleSets: [
///             {
///                 infoTypes: [{
///                     name: "PHONE_NUMBER",
///                     sensitivityScore: {
///                         score: "SENSITIVITY_LOW",
///                     },
///                 }],
///                 rules: [{
///                     exclusionRule: {
///                         matchingType: "MATCHING_TYPE_FULL_MATCH",
///                         excludeInfoTypes: {
///                             infoTypes: [{
///                                 name: "PERSON_NAME",
///                                 version: "latest",
///                                 sensitivityScore: {
///                                     score: "SENSITIVITY_LOW",
///                                 },
///                             }],
///                         },
///                     },
///                 }],
///             },
///             {
///                 infoTypes: [{
///                     name: "EMAIL_ADDRESS",
///                 }],
///                 rules: [
///                     {
///                         exclusionRule: {
///                             matchingType: "MATCHING_TYPE_PARTIAL_MATCH",
///                             regex: {
///                                 pattern: ".*@example\\.com",
///                                 groupIndexes: [0],
///                             },
///                         },
///                     },
///                     {
///                         adjustmentRule: {
///                             adjustByMatchingInfoTypes: {
///                                 infoTypes: [{
///                                     name: "PERSON_NAME",
///                                     version: "latest",
///                                     sensitivityScore: {
///                                         score: "SENSITIVITY_LOW",
///                                     },
///                                 }],
///                                 minLikelihood: "LIKELY",
///                                 matchingType: "MATCHING_TYPE_PARTIAL_MATCH",
///                             },
///                             likelihoodAdjustment: {
///                                 fixedLikelihood: "VERY_LIKELY",
///                             },
///                         },
///                     },
///                 ],
///             },
///             {
///                 infoTypes: [{
///                     name: "OBJECT_TYPE/PERSON",
///                 }],
///                 rules: [
///                     {
///                         adjustmentRule: {
///                             adjustByImageFindings: {
///                                 infoTypes: [{
///                                     name: "OBJECT_TYPE/PERSON/PASSPORT",
///                                     version: "latest",
///                                     sensitivityScore: {
///                                         score: "SENSITIVITY_LOW",
///                                     },
///                                 }],
///                                 minLikelihood: "LIKELY",
///                                 imageContainmentType: {
///                                     encloses: {},
///                                 },
///                             },
///                             likelihoodAdjustment: {
///                                 fixedLikelihood: "VERY_LIKELY",
///                             },
///                         },
///                     },
///                     {
///                         exclusionRule: {
///                             matchingType: "MATCHING_TYPE_RULE_SPECIFIC",
///                             excludeByImageFindings: {
///                                 infoTypes: [{
///                                     name: "OBJECT_TYPE/PERSON/PASSPORT",
///                                     version: "latest",
///                                     sensitivityScore: {
///                                         score: "SENSITIVITY_LOW",
///                                     },
///                                 }],
///                                 imageContainmentType: {
///                                     fullyInside: {},
///                                 },
///                             },
///                         },
///                     },
///                 ],
///             },
///             {
///                 infoTypes: [{
///                     name: "PERSON_NAME",
///                     version: "latest",
///                 }],
///                 rules: [
///                     {
///                         exclusionRule: {
///                             matchingType: "MATCHING_TYPE_PARTIAL_MATCH",
///                             dictionary: {
///                                 wordList: {
///                                     words: ["test"],
///                                 },
///                             },
///                         },
///                     },
///                     {
///                         exclusionRule: {
///                             matchingType: "MATCHING_TYPE_PARTIAL_MATCH",
///                             dictionary: {
///                                 cloudStoragePath: {
///                                     path: pulumi.interpolate`gs://${bucket.name}/${object.name}`,
///                                 },
///                             },
///                         },
///                     },
///                 ],
///             },
///             {
///                 infoTypes: [{
///                     name: "FIRST_NAME",
///                 }],
///                 rules: [{
///                     exclusionRule: {
///                         matchingType: "MATCHING_TYPE_FULL_MATCH",
///                         excludeByHotword: {
///                             hotwordRegex: {
///                                 pattern: "zone.*",
///                                 groupIndexes: [0],
///                             },
///                             proximity: {
///                                 windowBefore: 1,
///                                 windowAfter: 2,
///                             },
///                         },
///                     },
///                 }],
///             },
///             {
///                 infoTypes: [{
///                     name: "LAST_NAME",
///                 }],
///                 rules: [{
///                     hotwordRule: {
///                         hotwordRegex: {
///                             pattern: "patient.*",
///                             groupIndexes: [0],
///                         },
///                         proximity: {
///                             windowBefore: 1,
///                             windowAfter: 2,
///                         },
///                         likelihoodAdjustment: {
///                             fixedLikelihood: "VERY_LIKELY",
///                         },
///                     },
///                 }],
///             },
///         ],
///     },
///     rules: [{
///         conditions: [{
///             infoTypeCondition: {
///                 anyInfoType: {},
///                 minCount: 2,
///             },
///         }],
///         action: {
///             returnVerdict: "BLOCK",
///         },
///     }],
///     unsupportedFileType: {
///         returnVerdict: "ALLOW",
///     },
///     inputTooLarge: {
///         returnVerdict: "ALLOW",
///     },
///     failedToScanSupportedFileType: {
///         returnVerdict: "BLOCK",
///     },
///     defaultAction: {
///         returnVerdict: "ALLOW",
///     },
///     loggingConfigs: [{
///         logToBigQuery: {
///             projectId: defaultTable.project,
///             datasetId: _default.datasetId,
///             tableId: defaultTable.tableId,
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.dataloss.PreventionStoredInfoType("basic",
///     parent="projects/my-project-name/locations/us-west1",
///     description="Description for stored info type",
///     display_name="tf-test-stored-info-type",
///     regex={
///         "pattern": ".*",
///         "group_indexes": [0],
///     })
/// bucket = gcp.storage.Bucket("bucket",
///     name="dlp_bkt",
///     location="US",
///     uniform_bucket_level_access=True,
///     force_destroy=True)
/// object = gcp.storage.BucketObject("object",
///     name="tf-test-wordlist",
///     bucket=bucket.name,
///     content="""word1
/// word2
/// """)
/// default = gcp.bigquery.Dataset("default",
///     dataset_id="dlp_ds",
///     friendly_name="tf-test-dataset",
///     description="Description for the dataset created by terraform",
///     location="US",
///     default_table_expiration_ms=3600000,
///     delete_contents_on_destroy=True)
/// default_table = gcp.bigquery.Table("default",
///     dataset_id=default.dataset_id,
///     table_id="dlp_tbl",
///     deletion_protection=False,
///     schema="""[
///   {
///     \"name\": \"quantity\",
///     \"type\": \"NUMERIC\",
///     \"mode\": \"NULLABLE\",
///     \"description\": \"The quantity\"
///   }
/// ]
/// """)
/// full = gcp.dataloss.PreventionContentPolicy("full",
///     parent="projects/my-project-name/locations/us-west1",
///     display_name="tf-test-dlp-content-policy-full",
///     inspect_config={
///         "content_options": [
///             "CONTENT_TEXT",
///             "CONTENT_IMAGE",
///         ],
///         "include_quote": True,
///         "exclude_info_types": False,
///         "min_likelihood": "LIKELY",
///         "info_types": [
///             {
///                 "name": "PHONE_NUMBER",
///                 "sensitivity_score": {
///                     "score": "SENSITIVITY_LOW",
///                 },
///             },
///             {
///                 "name": "EMAIL_ADDRESS",
///             },
///             {
///                 "name": "PERSON_NAME",
///                 "version": "latest",
///             },
///             {
///                 "name": "FIRST_NAME",
///             },
///             {
///                 "name": "LAST_NAME",
///             },
///             {
///                 "name": "OBJECT_TYPE/PERSON",
///             },
///             {
///                 "name": "OBJECT_TYPE/PERSON/PASSPORT",
///             },
///         ],
///         "min_likelihood_per_info_types": [{
///             "info_type": {
///                 "name": "PERSON_NAME",
///                 "version": "latest",
///                 "sensitivity_score": {
///                     "score": "SENSITIVITY_LOW",
///                 },
///             },
///             "min_likelihood": "LIKELY",
///         }],
///         "custom_info_types": [
///             {
///                 "info_type": {
///                     "name": "MY_CUSTOM_TYPE",
///                     "version": "0.1",
///                     "sensitivity_score": {
///                         "score": "SENSITIVITY_LOW",
///                     },
///                 },
///                 "sensitivity_score": {
///                     "score": "SENSITIVITY_MODERATE",
///                 },
///                 "likelihood": "UNLIKELY",
///                 "exclusion_type": "EXCLUSION_TYPE_EXCLUDE",
///                 "regex": {
///                     "pattern": "test.*",
///                     "group_indexes": [0],
///                 },
///                 "detection_rules": [{
///                     "hotword_rule": {
///                         "hotword_regex": {
///                             "pattern": "password",
///                             "group_indexes": [0],
///                         },
///                         "proximity": {
///                             "window_before": 10,
///                             "window_after": 10,
///                         },
///                         "likelihood_adjustment": {
///                             "fixed_likelihood": "VERY_LIKELY",
///                         },
///                     },
///                 }],
///             },
///             {
///                 "info_type": {
///                     "name": "MY_GDRIVE_LABEL_TYPE",
///                 },
///                 "likelihood": "POSSIBLE",
///                 "file_label_info_type": {
///                     "google_drive_label": {
///                         "label_id": "testLabelId",
///                         "label_fields_to_matches": [{
///                             "id": "field1",
///                             "value": "val1",
///                         }],
///                     },
///                 },
///             },
///             {
///                 "info_type": {
///                     "name": "MY_SENSITIVITY_LABEL_TYPE",
///                 },
///                 "likelihood": "POSSIBLE",
///                 "file_label_info_type": {
///                     "sensitivity_label": {
///                         "guid": "11111111-2222-3333-4444-555555555555",
///                     },
///                 },
///             },
///             {
///                 "info_type": {
///                     "name": "MY_METADATA_KV_TYPE",
///                 },
///                 "likelihood": "POSSIBLE",
///                 "metadata_key_value_expression": {
///                     "key_regex": "key.*",
///                     "value_regex": "val.*",
///                 },
///             },
///             {
///                 "info_type": {
///                     "name": "MY_WORD_LIST_TYPE",
///                 },
///                 "likelihood": "POSSIBLE",
///                 "dictionary": {
///                     "word_list": {
///                         "words": [
///                             "badword1",
///                             "badword2",
///                         ],
///                     },
///                 },
///             },
///             {
///                 "info_type": {
///                     "name": "MY_STORAGE_TYPE",
///                 },
///                 "likelihood": "POSSIBLE",
///                 "dictionary": {
///                     "cloud_storage_path": {
///                         "path": pulumi.Output.all(
///                             bucketName=bucket.name,
///                             objectName=object.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucketName']}/{resolved_outputs['objectName']}")
/// ,
///                     },
///                 },
///             },
///             {
///                 "info_type": {
///                     "name": "MY_STORED_TYPE",
///                 },
///                 "likelihood": "POSSIBLE",
///                 "stored_type": {
///                     "name": basic.id,
///                 },
///             },
///         ],
///         "limits": {
///             "max_findings_per_item": 10,
///             "max_findings_per_request": 50,
///             "max_findings_per_info_types": [{
///                 "max_findings": 10,
///                 "info_type": {
///                     "name": "PERSON_NAME",
///                     "version": "latest",
///                     "sensitivity_score": {
///                         "score": "SENSITIVITY_HIGH",
///                     },
///                 },
///             }],
///         },
///         "rule_sets": [
///             {
///                 "info_types": [{
///                     "name": "PHONE_NUMBER",
///                     "sensitivity_score": {
///                         "score": "SENSITIVITY_LOW",
///                     },
///                 }],
///                 "rules": [{
///                     "exclusion_rule": {
///                         "matching_type": "MATCHING_TYPE_FULL_MATCH",
///                         "exclude_info_types": {
///                             "info_types": [{
///                                 "name": "PERSON_NAME",
///                                 "version": "latest",
///                                 "sensitivity_score": {
///                                     "score": "SENSITIVITY_LOW",
///                                 },
///                             }],
///                         },
///                     },
///                 }],
///             },
///             {
///                 "info_types": [{
///                     "name": "EMAIL_ADDRESS",
///                 }],
///                 "rules": [
///                     {
///                         "exclusion_rule": {
///                             "matching_type": "MATCHING_TYPE_PARTIAL_MATCH",
///                             "regex": {
///                                 "pattern": ".*@example\\.com",
///                                 "group_indexes": [0],
///                             },
///                         },
///                     },
///                     {
///                         "adjustment_rule": {
///                             "adjust_by_matching_info_types": {
///                                 "info_types": [{
///                                     "name": "PERSON_NAME",
///                                     "version": "latest",
///                                     "sensitivity_score": {
///                                         "score": "SENSITIVITY_LOW",
///                                     },
///                                 }],
///                                 "min_likelihood": "LIKELY",
///                                 "matching_type": "MATCHING_TYPE_PARTIAL_MATCH",
///                             },
///                             "likelihood_adjustment": {
///                                 "fixed_likelihood": "VERY_LIKELY",
///                             },
///                         },
///                     },
///                 ],
///             },
///             {
///                 "info_types": [{
///                     "name": "OBJECT_TYPE/PERSON",
///                 }],
///                 "rules": [
///                     {
///                         "adjustment_rule": {
///                             "adjust_by_image_findings": {
///                                 "info_types": [{
///                                     "name": "OBJECT_TYPE/PERSON/PASSPORT",
///                                     "version": "latest",
///                                     "sensitivity_score": {
///                                         "score": "SENSITIVITY_LOW",
///                                     },
///                                 }],
///                                 "min_likelihood": "LIKELY",
///                                 "image_containment_type": {
///                                     "encloses": {},
///                                 },
///                             },
///                             "likelihood_adjustment": {
///                                 "fixed_likelihood": "VERY_LIKELY",
///                             },
///                         },
///                     },
///                     {
///                         "exclusion_rule": {
///                             "matching_type": "MATCHING_TYPE_RULE_SPECIFIC",
///                             "exclude_by_image_findings": {
///                                 "info_types": [{
///                                     "name": "OBJECT_TYPE/PERSON/PASSPORT",
///                                     "version": "latest",
///                                     "sensitivity_score": {
///                                         "score": "SENSITIVITY_LOW",
///                                     },
///                                 }],
///                                 "image_containment_type": {
///                                     "fully_inside": {},
///                                 },
///                             },
///                         },
///                     },
///                 ],
///             },
///             {
///                 "info_types": [{
///                     "name": "PERSON_NAME",
///                     "version": "latest",
///                 }],
///                 "rules": [
///                     {
///                         "exclusion_rule": {
///                             "matching_type": "MATCHING_TYPE_PARTIAL_MATCH",
///                             "dictionary": {
///                                 "word_list": {
///                                     "words": ["test"],
///                                 },
///                             },
///                         },
///                     },
///                     {
///                         "exclusion_rule": {
///                             "matching_type": "MATCHING_TYPE_PARTIAL_MATCH",
///                             "dictionary": {
///                                 "cloud_storage_path": {
///                                     "path": pulumi.Output.all(
///                                         bucketName=bucket.name,
///                                         objectName=object.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucketName']}/{resolved_outputs['objectName']}")
/// ,
///                                 },
///                             },
///                         },
///                     },
///                 ],
///             },
///             {
///                 "info_types": [{
///                     "name": "FIRST_NAME",
///                 }],
///                 "rules": [{
///                     "exclusion_rule": {
///                         "matching_type": "MATCHING_TYPE_FULL_MATCH",
///                         "exclude_by_hotword": {
///                             "hotword_regex": {
///                                 "pattern": "zone.*",
///                                 "group_indexes": [0],
///                             },
///                             "proximity": {
///                                 "window_before": 1,
///                                 "window_after": 2,
///                             },
///                         },
///                     },
///                 }],
///             },
///             {
///                 "info_types": [{
///                     "name": "LAST_NAME",
///                 }],
///                 "rules": [{
///                     "hotword_rule": {
///                         "hotword_regex": {
///                             "pattern": "patient.*",
///                             "group_indexes": [0],
///                         },
///                         "proximity": {
///                             "window_before": 1,
///                             "window_after": 2,
///                         },
///                         "likelihood_adjustment": {
///                             "fixed_likelihood": "VERY_LIKELY",
///                         },
///                     },
///                 }],
///             },
///         ],
///     },
///     rules=[{
///         "conditions": [{
///             "info_type_condition": {
///                 "any_info_type": {},
///                 "min_count": 2,
///             },
///         }],
///         "action": {
///             "return_verdict": "BLOCK",
///         },
///     }],
///     unsupported_file_type={
///         "return_verdict": "ALLOW",
///     },
///     input_too_large={
///         "return_verdict": "ALLOW",
///     },
///     failed_to_scan_supported_file_type={
///         "return_verdict": "BLOCK",
///     },
///     default_action={
///         "return_verdict": "ALLOW",
///     },
///     logging_configs=[{
///         "log_to_big_query": {
///             "project_id": default_table.project,
///             "dataset_id": default.dataset_id,
///             "table_id": default_table.table_id,
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.DataLoss.PreventionStoredInfoType("basic", new()
///     {
///         Parent = "projects/my-project-name/locations/us-west1",
///         Description = "Description for stored info type",
///         DisplayName = "tf-test-stored-info-type",
///         Regex = new Gcp.DataLoss.Inputs.PreventionStoredInfoTypeRegexArgs
///         {
///             Pattern = ".*",
///             GroupIndexes = new[]
///             {
///                 0,
///             },
///         },
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "dlp_bkt",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///         ForceDestroy = true,
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "tf-test-wordlist",
///         Bucket = bucket.Name,
///         Content = @"word1
/// word2
/// ",
///     });
///
///     var @default = new Gcp.BigQuery.Dataset("default", new()
///     {
///         DatasetId = "dlp_ds",
///         FriendlyName = "tf-test-dataset",
///         Description = "Description for the dataset created by terraform",
///         Location = "US",
///         DefaultTableExpirationMs = 3600000,
///         DeleteContentsOnDestroy = true,
///     });
///
///     var defaultTable = new Gcp.BigQuery.Table("default", new()
///     {
///         DatasetId = @default.DatasetId,
///         TableId = "dlp_tbl",
///         DeletionProtection = false,
///         Schema = @"[
///   {
///     \""name\"": \""quantity\"",
///     \""type\"": \""NUMERIC\"",
///     \""mode\"": \""NULLABLE\"",
///     \""description\"": \""The quantity\""
///   }
/// ]
/// ",
///     });
///
///     var full = new Gcp.DataLoss.PreventionContentPolicy("full", new()
///     {
///         Parent = "projects/my-project-name/locations/us-west1",
///         DisplayName = "tf-test-dlp-content-policy-full",
///         InspectConfig = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigArgs
///         {
///             ContentOptions = new[]
///             {
///                 "CONTENT_TEXT",
///                 "CONTENT_IMAGE",
///             },
///             IncludeQuote = true,
///             ExcludeInfoTypes = false,
///             MinLikelihood = "LIKELY",
///             InfoTypes = new[]
///             {
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigInfoTypeArgs
///                 {
///                     Name = "PHONE_NUMBER",
///                     SensitivityScore = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigInfoTypeSensitivityScoreArgs
///                     {
///                         Score = "SENSITIVITY_LOW",
///                     },
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigInfoTypeArgs
///                 {
///                     Name = "EMAIL_ADDRESS",
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigInfoTypeArgs
///                 {
///                     Name = "PERSON_NAME",
///                     Version = "latest",
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigInfoTypeArgs
///                 {
///                     Name = "FIRST_NAME",
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigInfoTypeArgs
///                 {
///                     Name = "LAST_NAME",
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigInfoTypeArgs
///                 {
///                     Name = "OBJECT_TYPE/PERSON",
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigInfoTypeArgs
///                 {
///                     Name = "OBJECT_TYPE/PERSON/PASSPORT",
///                 },
///             },
///             MinLikelihoodPerInfoTypes = new[]
///             {
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeArgs
///                 {
///                     InfoType = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoTypeArgs
///                     {
///                         Name = "PERSON_NAME",
///                         Version = "latest",
///                         SensitivityScore = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoTypeSensitivityScoreArgs
///                         {
///                             Score = "SENSITIVITY_LOW",
///                         },
///                     },
///                     MinLikelihood = "LIKELY",
///                 },
///             },
///             CustomInfoTypes = new[]
///             {
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeArgs
///                 {
///                     InfoType = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs
///                     {
///                         Name = "MY_CUSTOM_TYPE",
///                         Version = "0.1",
///                         SensitivityScore = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeSensitivityScoreArgs
///                         {
///                             Score = "SENSITIVITY_LOW",
///                         },
///                     },
///                     SensitivityScore = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeSensitivityScoreArgs
///                     {
///                         Score = "SENSITIVITY_MODERATE",
///                     },
///                     Likelihood = "UNLIKELY",
///                     ExclusionType = "EXCLUSION_TYPE_EXCLUDE",
///                     Regex = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeRegexArgs
///                     {
///                         Pattern = "test.*",
///                         GroupIndexes = new[]
///                         {
///                             0,
///                         },
///                     },
///                     DetectionRules = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleArgs
///                         {
///                             HotwordRule = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleArgs
///                             {
///                                 HotwordRegex = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleHotwordRegexArgs
///                                 {
///                                     Pattern = "password",
///                                     GroupIndexes = new[]
///                                     {
///                                         0,
///                                     },
///                                 },
///                                 Proximity = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleProximityArgs
///                                 {
///                                     WindowBefore = 10,
///                                     WindowAfter = 10,
///                                 },
///                                 LikelihoodAdjustment = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleLikelihoodAdjustmentArgs
///                                 {
///                                     FixedLikelihood = "VERY_LIKELY",
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeArgs
///                 {
///                     InfoType = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs
///                     {
///                         Name = "MY_GDRIVE_LABEL_TYPE",
///                     },
///                     Likelihood = "POSSIBLE",
///                     FileLabelInfoType = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeArgs
///                     {
///                         GoogleDriveLabel = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabelArgs
///                         {
///                             LabelId = "testLabelId",
///                             LabelFieldsToMatches = new[]
///                             {
///                                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabelLabelFieldsToMatchArgs
///                                 {
///                                     Id = "field1",
///                                     Value = "val1",
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeArgs
///                 {
///                     InfoType = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs
///                     {
///                         Name = "MY_SENSITIVITY_LABEL_TYPE",
///                     },
///                     Likelihood = "POSSIBLE",
///                     FileLabelInfoType = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeArgs
///                     {
///                         SensitivityLabel = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeSensitivityLabelArgs
///                         {
///                             Guid = "11111111-2222-3333-4444-555555555555",
///                         },
///                     },
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeArgs
///                 {
///                     InfoType = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs
///                     {
///                         Name = "MY_METADATA_KV_TYPE",
///                     },
///                     Likelihood = "POSSIBLE",
///                     MetadataKeyValueExpression = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeMetadataKeyValueExpressionArgs
///                     {
///                         KeyRegex = "key.*",
///                         ValueRegex = "val.*",
///                     },
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeArgs
///                 {
///                     InfoType = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs
///                     {
///                         Name = "MY_WORD_LIST_TYPE",
///                     },
///                     Likelihood = "POSSIBLE",
///                     Dictionary = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryArgs
///                     {
///                         WordList = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryWordListArgs
///                         {
///                             Words = new[]
///                             {
///                                 "badword1",
///                                 "badword2",
///                             },
///                         },
///                     },
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeArgs
///                 {
///                     InfoType = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs
///                     {
///                         Name = "MY_STORAGE_TYPE",
///                     },
///                     Likelihood = "POSSIBLE",
///                     Dictionary = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryArgs
///                     {
///                         CloudStoragePath = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryCloudStoragePathArgs
///                         {
///                             Path = Output.Tuple(bucket.Name, @object.Name).Apply(values =>
///                             {
///                                 var bucketName = values.Item1;
///                                 var objectName = values.Item2;
///                                 return $"gs://{bucketName}/{objectName}";
///                             }),
///                         },
///                     },
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeArgs
///                 {
///                     InfoType = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs
///                     {
///                         Name = "MY_STORED_TYPE",
///                     },
///                     Likelihood = "POSSIBLE",
///                     StoredType = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigCustomInfoTypeStoredTypeArgs
///                     {
///                         Name = basic.Id,
///                     },
///                 },
///             },
///             Limits = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigLimitsArgs
///             {
///                 MaxFindingsPerItem = 10,
///                 MaxFindingsPerRequest = 50,
///                 MaxFindingsPerInfoTypes = new[]
///                 {
///                     new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeArgs
///                     {
///                         MaxFindings = 10,
///                         InfoType = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeArgs
///                         {
///                             Name = "PERSON_NAME",
///                             Version = "latest",
///                             SensitivityScore = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScoreArgs
///                             {
///                                 Score = "SENSITIVITY_HIGH",
///                             },
///                         },
///                     },
///                 },
///             },
///             RuleSets = new[]
///             {
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetArgs
///                 {
///                     InfoTypes = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetInfoTypeArgs
///                         {
///                             Name = "PHONE_NUMBER",
///                             SensitivityScore = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetInfoTypeSensitivityScoreArgs
///                             {
///                                 Score = "SENSITIVITY_LOW",
///                             },
///                         },
///                     },
///                     Rules = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleArgs
///                         {
///                             ExclusionRule = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleArgs
///                             {
///                                 MatchingType = "MATCHING_TYPE_FULL_MATCH",
///                                 ExcludeInfoTypes = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesArgs
///                                 {
///                                     InfoTypes = new[]
///                                     {
///                                         new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoTypeArgs
///                                         {
///                                             Name = "PERSON_NAME",
///                                             Version = "latest",
///                                             SensitivityScore = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoTypeSensitivityScoreArgs
///                                             {
///                                                 Score = "SENSITIVITY_LOW",
///                                             },
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetArgs
///                 {
///                     InfoTypes = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetInfoTypeArgs
///                         {
///                             Name = "EMAIL_ADDRESS",
///                         },
///                     },
///                     Rules = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleArgs
///                         {
///                             ExclusionRule = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleArgs
///                             {
///                                 MatchingType = "MATCHING_TYPE_PARTIAL_MATCH",
///                                 Regex = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleRegexArgs
///                                 {
///                                     Pattern = ".*@example\\.com",
///                                     GroupIndexes = new[]
///                                     {
///                                         0,
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleArgs
///                         {
///                             AdjustmentRule = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleArgs
///                             {
///                                 AdjustByMatchingInfoTypes = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypesArgs
///                                 {
///                                     InfoTypes = new[]
///                                     {
///                                         new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypesInfoTypeArgs
///                                         {
///                                             Name = "PERSON_NAME",
///                                             Version = "latest",
///                                             SensitivityScore = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypesInfoTypeSensitivityScoreArgs
///                                             {
///                                                 Score = "SENSITIVITY_LOW",
///                                             },
///                                         },
///                                     },
///                                     MinLikelihood = "LIKELY",
///                                     MatchingType = "MATCHING_TYPE_PARTIAL_MATCH",
///                                 },
///                                 LikelihoodAdjustment = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleLikelihoodAdjustmentArgs
///                                 {
///                                     FixedLikelihood = "VERY_LIKELY",
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetArgs
///                 {
///                     InfoTypes = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetInfoTypeArgs
///                         {
///                             Name = "OBJECT_TYPE/PERSON",
///                         },
///                     },
///                     Rules = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleArgs
///                         {
///                             AdjustmentRule = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleArgs
///                             {
///                                 AdjustByImageFindings = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsArgs
///                                 {
///                                     InfoTypes = new[]
///                                     {
///                                         new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsInfoTypeArgs
///                                         {
///                                             Name = "OBJECT_TYPE/PERSON/PASSPORT",
///                                             Version = "latest",
///                                             SensitivityScore = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsInfoTypeSensitivityScoreArgs
///                                             {
///                                                 Score = "SENSITIVITY_LOW",
///                                             },
///                                         },
///                                     },
///                                     MinLikelihood = "LIKELY",
///                                     ImageContainmentType = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsImageContainmentTypeArgs
///                                     {
///                                         Encloses = null,
///                                     },
///                                 },
///                                 LikelihoodAdjustment = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleLikelihoodAdjustmentArgs
///                                 {
///                                     FixedLikelihood = "VERY_LIKELY",
///                                 },
///                             },
///                         },
///                         new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleArgs
///                         {
///                             ExclusionRule = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleArgs
///                             {
///                                 MatchingType = "MATCHING_TYPE_RULE_SPECIFIC",
///                                 ExcludeByImageFindings = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsArgs
///                                 {
///                                     InfoTypes = new[]
///                                     {
///                                         new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoTypeArgs
///                                         {
///                                             Name = "OBJECT_TYPE/PERSON/PASSPORT",
///                                             Version = "latest",
///                                             SensitivityScore = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoTypeSensitivityScoreArgs
///                                             {
///                                                 Score = "SENSITIVITY_LOW",
///                                             },
///                                         },
///                                     },
///                                     ImageContainmentType = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsImageContainmentTypeArgs
///                                     {
///                                         FullyInside = null,
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetArgs
///                 {
///                     InfoTypes = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetInfoTypeArgs
///                         {
///                             Name = "PERSON_NAME",
///                             Version = "latest",
///                         },
///                     },
///                     Rules = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleArgs
///                         {
///                             ExclusionRule = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleArgs
///                             {
///                                 MatchingType = "MATCHING_TYPE_PARTIAL_MATCH",
///                                 Dictionary = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryArgs
///                                 {
///                                     WordList = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryWordListArgs
///                                     {
///                                         Words = new[]
///                                         {
///                                             "test",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleArgs
///                         {
///                             ExclusionRule = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleArgs
///                             {
///                                 MatchingType = "MATCHING_TYPE_PARTIAL_MATCH",
///                                 Dictionary = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryArgs
///                                 {
///                                     CloudStoragePath = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePathArgs
///                                     {
///                                         Path = Output.Tuple(bucket.Name, @object.Name).Apply(values =>
///                                         {
///                                             var bucketName = values.Item1;
///                                             var objectName = values.Item2;
///                                             return $"gs://{bucketName}/{objectName}";
///                                         }),
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetArgs
///                 {
///                     InfoTypes = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetInfoTypeArgs
///                         {
///                             Name = "FIRST_NAME",
///                         },
///                     },
///                     Rules = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleArgs
///                         {
///                             ExclusionRule = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleArgs
///                             {
///                                 MatchingType = "MATCHING_TYPE_FULL_MATCH",
///                                 ExcludeByHotword = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordArgs
///                                 {
///                                     HotwordRegex = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegexArgs
///                                     {
///                                         Pattern = "zone.*",
///                                         GroupIndexes = new[]
///                                         {
///                                             0,
///                                         },
///                                     },
///                                     Proximity = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximityArgs
///                                     {
///                                         WindowBefore = 1,
///                                         WindowAfter = 2,
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetArgs
///                 {
///                     InfoTypes = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetInfoTypeArgs
///                         {
///                             Name = "LAST_NAME",
///                         },
///                     },
///                     Rules = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleArgs
///                         {
///                             HotwordRule = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleArgs
///                             {
///                                 HotwordRegex = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleHotwordRegexArgs
///                                 {
///                                     Pattern = "patient.*",
///                                     GroupIndexes = new[]
///                                     {
///                                         0,
///                                     },
///                                 },
///                                 Proximity = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleProximityArgs
///                                 {
///                                     WindowBefore = 1,
///                                     WindowAfter = 2,
///                                 },
///                                 LikelihoodAdjustment = new Gcp.DataLoss.Inputs.PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustmentArgs
///                                 {
///                                     FixedLikelihood = "VERY_LIKELY",
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         Rules = new[]
///         {
///             new Gcp.DataLoss.Inputs.PreventionContentPolicyRuleArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Gcp.DataLoss.Inputs.PreventionContentPolicyRuleConditionArgs
///                     {
///                         InfoTypeCondition = new Gcp.DataLoss.Inputs.PreventionContentPolicyRuleConditionInfoTypeConditionArgs
///                         {
///                             AnyInfoType = null,
///                             MinCount = 2,
///                         },
///                     },
///                 },
///                 Action = new Gcp.DataLoss.Inputs.PreventionContentPolicyRuleActionArgs
///                 {
///                     ReturnVerdict = "BLOCK",
///                 },
///             },
///         },
///         UnsupportedFileType = new Gcp.DataLoss.Inputs.PreventionContentPolicyUnsupportedFileTypeArgs
///         {
///             ReturnVerdict = "ALLOW",
///         },
///         InputTooLarge = new Gcp.DataLoss.Inputs.PreventionContentPolicyInputTooLargeArgs
///         {
///             ReturnVerdict = "ALLOW",
///         },
///         FailedToScanSupportedFileType = new Gcp.DataLoss.Inputs.PreventionContentPolicyFailedToScanSupportedFileTypeArgs
///         {
///             ReturnVerdict = "BLOCK",
///         },
///         DefaultAction = new Gcp.DataLoss.Inputs.PreventionContentPolicyDefaultActionArgs
///         {
///             ReturnVerdict = "ALLOW",
///         },
///         LoggingConfigs = new[]
///         {
///             new Gcp.DataLoss.Inputs.PreventionContentPolicyLoggingConfigArgs
///             {
///                 LogToBigQuery = new Gcp.DataLoss.Inputs.PreventionContentPolicyLoggingConfigLogToBigQueryArgs
///                 {
///                     ProjectId = defaultTable.Project,
///                     DatasetId = @default.DatasetId,
///                     TableId = defaultTable.TableId,
///                 },
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/dataloss"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basic, err := dataloss.NewPreventionStoredInfoType(ctx, "basic", &dataloss.PreventionStoredInfoTypeArgs{
/// 			Parent:      pulumi.String("projects/my-project-name/locations/us-west1"),
/// 			Description: pulumi.String("Description for stored info type"),
/// 			DisplayName: pulumi.String("tf-test-stored-info-type"),
/// 			Regex: &dataloss.PreventionStoredInfoTypeRegexArgs{
/// 				Pattern: pulumi.String(".*"),
/// 				GroupIndexes: pulumi.IntArray{
/// 					pulumi.Int(0),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("dlp_bkt"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("tf-test-wordlist"),
/// 			Bucket:  bucket.Name,
/// 			Content: pulumi.String("word1\nword2\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := bigquery.NewDataset(ctx, "default", &bigquery.DatasetArgs{
/// 			DatasetId:                pulumi.String("dlp_ds"),
/// 			FriendlyName:             pulumi.String("tf-test-dataset"),
/// 			Description:              pulumi.String("Description for the dataset created by terraform"),
/// 			Location:                 pulumi.String("US"),
/// 			DefaultTableExpirationMs: pulumi.Int(3600000),
/// 			DeleteContentsOnDestroy:  pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTable, err := bigquery.NewTable(ctx, "default", &bigquery.TableArgs{
/// 			DatasetId:          _default.DatasetId,
/// 			TableId:            pulumi.String("dlp_tbl"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Schema: pulumi.String(`[
///   {
///     \"name\": \"quantity\",
///     \"type\": \"NUMERIC\",
///     \"mode\": \"NULLABLE\",
///     \"description\": \"The quantity\"
///   }
/// ]
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataloss.NewPreventionContentPolicy(ctx, "full", &dataloss.PreventionContentPolicyArgs{
/// 			Parent:      pulumi.String("projects/my-project-name/locations/us-west1"),
/// 			DisplayName: pulumi.String("tf-test-dlp-content-policy-full"),
/// 			InspectConfig: &dataloss.PreventionContentPolicyInspectConfigArgs{
/// 				ContentOptions: pulumi.StringArray{
/// 					pulumi.String("CONTENT_TEXT"),
/// 					pulumi.String("CONTENT_IMAGE"),
/// 				},
/// 				IncludeQuote:     pulumi.Bool(true),
/// 				ExcludeInfoTypes: pulumi.Bool(false),
/// 				MinLikelihood:    pulumi.String("LIKELY"),
/// 				InfoTypes: dataloss.PreventionContentPolicyInspectConfigInfoTypeArray{
/// 					&dataloss.PreventionContentPolicyInspectConfigInfoTypeArgs{
/// 						Name: pulumi.String("PHONE_NUMBER"),
/// 						SensitivityScore: &dataloss.PreventionContentPolicyInspectConfigInfoTypeSensitivityScoreArgs{
/// 							Score: pulumi.String("SENSITIVITY_LOW"),
/// 						},
/// 					},
/// 					&dataloss.PreventionContentPolicyInspectConfigInfoTypeArgs{
/// 						Name: pulumi.String("EMAIL_ADDRESS"),
/// 					},
/// 					&dataloss.PreventionContentPolicyInspectConfigInfoTypeArgs{
/// 						Name:    pulumi.String("PERSON_NAME"),
/// 						Version: pulumi.String("latest"),
/// 					},
/// 					&dataloss.PreventionContentPolicyInspectConfigInfoTypeArgs{
/// 						Name: pulumi.String("FIRST_NAME"),
/// 					},
/// 					&dataloss.PreventionContentPolicyInspectConfigInfoTypeArgs{
/// 						Name: pulumi.String("LAST_NAME"),
/// 					},
/// 					&dataloss.PreventionContentPolicyInspectConfigInfoTypeArgs{
/// 						Name: pulumi.String("OBJECT_TYPE/PERSON"),
/// 					},
/// 					&dataloss.PreventionContentPolicyInspectConfigInfoTypeArgs{
/// 						Name: pulumi.String("OBJECT_TYPE/PERSON/PASSPORT"),
/// 					},
/// 				},
/// 				MinLikelihoodPerInfoTypes: dataloss.PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeArray{
/// 					&dataloss.PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeArgs{
/// 						InfoType: &dataloss.PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoTypeArgs{
/// 							Name:    pulumi.String("PERSON_NAME"),
/// 							Version: pulumi.String("latest"),
/// 							SensitivityScore: &dataloss.PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoTypeSensitivityScoreArgs{
/// 								Score: pulumi.String("SENSITIVITY_LOW"),
/// 							},
/// 						},
/// 						MinLikelihood: pulumi.String("LIKELY"),
/// 					},
/// 				},
/// 				CustomInfoTypes: dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeArray{
/// 					&dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeArgs{
/// 						InfoType: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs{
/// 							Name:    pulumi.String("MY_CUSTOM_TYPE"),
/// 							Version: pulumi.String("0.1"),
/// 							SensitivityScore: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeSensitivityScoreArgs{
/// 								Score: pulumi.String("SENSITIVITY_LOW"),
/// 							},
/// 						},
/// 						SensitivityScore: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeSensitivityScoreArgs{
/// 							Score: pulumi.String("SENSITIVITY_MODERATE"),
/// 						},
/// 						Likelihood:    pulumi.String("UNLIKELY"),
/// 						ExclusionType: pulumi.String("EXCLUSION_TYPE_EXCLUDE"),
/// 						Regex: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeRegexArgs{
/// 							Pattern: pulumi.String("test.*"),
/// 							GroupIndexes: pulumi.IntArray{
/// 								pulumi.Int(0),
/// 							},
/// 						},
/// 						DetectionRules: dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleArray{
/// 							&dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleArgs{
/// 								HotwordRule: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleArgs{
/// 									HotwordRegex: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleHotwordRegexArgs{
/// 										Pattern: pulumi.String("password"),
/// 										GroupIndexes: pulumi.IntArray{
/// 											pulumi.Int(0),
/// 										},
/// 									},
/// 									Proximity: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleProximityArgs{
/// 										WindowBefore: pulumi.Int(10),
/// 										WindowAfter:  pulumi.Int(10),
/// 									},
/// 									LikelihoodAdjustment: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleLikelihoodAdjustmentArgs{
/// 										FixedLikelihood: pulumi.String("VERY_LIKELY"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					&dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeArgs{
/// 						InfoType: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs{
/// 							Name: pulumi.String("MY_GDRIVE_LABEL_TYPE"),
/// 						},
/// 						Likelihood: pulumi.String("POSSIBLE"),
/// 						FileLabelInfoType: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeArgs{
/// 							GoogleDriveLabel: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabelArgs{
/// 								LabelId: pulumi.String("testLabelId"),
/// 								LabelFieldsToMatches: dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabelLabelFieldsToMatchArray{
/// 									&dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabelLabelFieldsToMatchArgs{
/// 										Id:    pulumi.String("field1"),
/// 										Value: pulumi.String("val1"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					&dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeArgs{
/// 						InfoType: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs{
/// 							Name: pulumi.String("MY_SENSITIVITY_LABEL_TYPE"),
/// 						},
/// 						Likelihood: pulumi.String("POSSIBLE"),
/// 						FileLabelInfoType: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeArgs{
/// 							SensitivityLabel: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeSensitivityLabelArgs{
/// 								Guid: pulumi.String("11111111-2222-3333-4444-555555555555"),
/// 							},
/// 						},
/// 					},
/// 					&dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeArgs{
/// 						InfoType: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs{
/// 							Name: pulumi.String("MY_METADATA_KV_TYPE"),
/// 						},
/// 						Likelihood: pulumi.String("POSSIBLE"),
/// 						MetadataKeyValueExpression: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeMetadataKeyValueExpressionArgs{
/// 							KeyRegex:   pulumi.String("key.*"),
/// 							ValueRegex: pulumi.String("val.*"),
/// 						},
/// 					},
/// 					&dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeArgs{
/// 						InfoType: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs{
/// 							Name: pulumi.String("MY_WORD_LIST_TYPE"),
/// 						},
/// 						Likelihood: pulumi.String("POSSIBLE"),
/// 						Dictionary: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryArgs{
/// 							WordList: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryWordListArgs{
/// 								Words: pulumi.StringArray{
/// 									pulumi.String("badword1"),
/// 									pulumi.String("badword2"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					&dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeArgs{
/// 						InfoType: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs{
/// 							Name: pulumi.String("MY_STORAGE_TYPE"),
/// 						},
/// 						Likelihood: pulumi.String("POSSIBLE"),
/// 						Dictionary: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryArgs{
/// 							CloudStoragePath: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryCloudStoragePathArgs{
/// 								Path: pulumi.All(bucket.Name, object.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 									bucketName := _args[0].(string)
/// 									objectName := _args[1].(string)
/// 									return fmt.Sprintf("gs://%v/%v", bucketName, objectName), nil
/// 								}).(pulumi.StringOutput),
/// 							},
/// 						},
/// 					},
/// 					&dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeArgs{
/// 						InfoType: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs{
/// 							Name: pulumi.String("MY_STORED_TYPE"),
/// 						},
/// 						Likelihood: pulumi.String("POSSIBLE"),
/// 						StoredType: &dataloss.PreventionContentPolicyInspectConfigCustomInfoTypeStoredTypeArgs{
/// 							Name: basic.ID().ToIDOutput().ToStringOutput(),
/// 						},
/// 					},
/// 				},
/// 				Limits: &dataloss.PreventionContentPolicyInspectConfigLimitsArgs{
/// 					MaxFindingsPerItem:    pulumi.Int(10),
/// 					MaxFindingsPerRequest: pulumi.Int(50),
/// 					MaxFindingsPerInfoTypes: dataloss.PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeArray{
/// 						&dataloss.PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeArgs{
/// 							MaxFindings: pulumi.Int(10),
/// 							InfoType: &dataloss.PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeArgs{
/// 								Name:    pulumi.String("PERSON_NAME"),
/// 								Version: pulumi.String("latest"),
/// 								SensitivityScore: &dataloss.PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScoreArgs{
/// 									Score: pulumi.String("SENSITIVITY_HIGH"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				RuleSets: dataloss.PreventionContentPolicyInspectConfigRuleSetArray{
/// 					&dataloss.PreventionContentPolicyInspectConfigRuleSetArgs{
/// 						InfoTypes: dataloss.PreventionContentPolicyInspectConfigRuleSetInfoTypeArray{
/// 							&dataloss.PreventionContentPolicyInspectConfigRuleSetInfoTypeArgs{
/// 								Name: pulumi.String("PHONE_NUMBER"),
/// 								SensitivityScore: &dataloss.PreventionContentPolicyInspectConfigRuleSetInfoTypeSensitivityScoreArgs{
/// 									Score: pulumi.String("SENSITIVITY_LOW"),
/// 								},
/// 							},
/// 						},
/// 						Rules: dataloss.PreventionContentPolicyInspectConfigRuleSetRuleArray{
/// 							&dataloss.PreventionContentPolicyInspectConfigRuleSetRuleArgs{
/// 								ExclusionRule: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleArgs{
/// 									MatchingType: pulumi.String("MATCHING_TYPE_FULL_MATCH"),
/// 									ExcludeInfoTypes: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesArgs{
/// 										InfoTypes: dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoTypeArray{
/// 											&dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoTypeArgs{
/// 												Name:    pulumi.String("PERSON_NAME"),
/// 												Version: pulumi.String("latest"),
/// 												SensitivityScore: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoTypeSensitivityScoreArgs{
/// 													Score: pulumi.String("SENSITIVITY_LOW"),
/// 												},
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					&dataloss.PreventionContentPolicyInspectConfigRuleSetArgs{
/// 						InfoTypes: dataloss.PreventionContentPolicyInspectConfigRuleSetInfoTypeArray{
/// 							&dataloss.PreventionContentPolicyInspectConfigRuleSetInfoTypeArgs{
/// 								Name: pulumi.String("EMAIL_ADDRESS"),
/// 							},
/// 						},
/// 						Rules: dataloss.PreventionContentPolicyInspectConfigRuleSetRuleArray{
/// 							&dataloss.PreventionContentPolicyInspectConfigRuleSetRuleArgs{
/// 								ExclusionRule: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleArgs{
/// 									MatchingType: pulumi.String("MATCHING_TYPE_PARTIAL_MATCH"),
/// 									Regex: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleRegexArgs{
/// 										Pattern: pulumi.String(".*@example\\.com"),
/// 										GroupIndexes: pulumi.IntArray{
/// 											pulumi.Int(0),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&dataloss.PreventionContentPolicyInspectConfigRuleSetRuleArgs{
/// 								AdjustmentRule: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleArgs{
/// 									AdjustByMatchingInfoTypes: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypesArgs{
/// 										InfoTypes: dataloss.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypesInfoTypeArray{
/// 											&dataloss.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypesInfoTypeArgs{
/// 												Name:    pulumi.String("PERSON_NAME"),
/// 												Version: pulumi.String("latest"),
/// 												SensitivityScore: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypesInfoTypeSensitivityScoreArgs{
/// 													Score: pulumi.String("SENSITIVITY_LOW"),
/// 												},
/// 											},
/// 										},
/// 										MinLikelihood: pulumi.String("LIKELY"),
/// 										MatchingType:  pulumi.String("MATCHING_TYPE_PARTIAL_MATCH"),
/// 									},
/// 									LikelihoodAdjustment: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleLikelihoodAdjustmentArgs{
/// 										FixedLikelihood: pulumi.String("VERY_LIKELY"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					&dataloss.PreventionContentPolicyInspectConfigRuleSetArgs{
/// 						InfoTypes: dataloss.PreventionContentPolicyInspectConfigRuleSetInfoTypeArray{
/// 							&dataloss.PreventionContentPolicyInspectConfigRuleSetInfoTypeArgs{
/// 								Name: pulumi.String("OBJECT_TYPE/PERSON"),
/// 							},
/// 						},
/// 						Rules: dataloss.PreventionContentPolicyInspectConfigRuleSetRuleArray{
/// 							&dataloss.PreventionContentPolicyInspectConfigRuleSetRuleArgs{
/// 								AdjustmentRule: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleArgs{
/// 									AdjustByImageFindings: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsArgs{
/// 										InfoTypes: dataloss.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsInfoTypeArray{
/// 											&dataloss.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsInfoTypeArgs{
/// 												Name:    pulumi.String("OBJECT_TYPE/PERSON/PASSPORT"),
/// 												Version: pulumi.String("latest"),
/// 												SensitivityScore: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsInfoTypeSensitivityScoreArgs{
/// 													Score: pulumi.String("SENSITIVITY_LOW"),
/// 												},
/// 											},
/// 										},
/// 										MinLikelihood: pulumi.String("LIKELY"),
/// 										ImageContainmentType: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsImageContainmentTypeArgs{
/// 											Encloses: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsImageContainmentTypeEnclosesArgs{},
/// 										},
/// 									},
/// 									LikelihoodAdjustment: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleLikelihoodAdjustmentArgs{
/// 										FixedLikelihood: pulumi.String("VERY_LIKELY"),
/// 									},
/// 								},
/// 							},
/// 							&dataloss.PreventionContentPolicyInspectConfigRuleSetRuleArgs{
/// 								ExclusionRule: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleArgs{
/// 									MatchingType: pulumi.String("MATCHING_TYPE_RULE_SPECIFIC"),
/// 									ExcludeByImageFindings: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsArgs{
/// 										InfoTypes: dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoTypeArray{
/// 											&dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoTypeArgs{
/// 												Name:    pulumi.String("OBJECT_TYPE/PERSON/PASSPORT"),
/// 												Version: pulumi.String("latest"),
/// 												SensitivityScore: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoTypeSensitivityScoreArgs{
/// 													Score: pulumi.String("SENSITIVITY_LOW"),
/// 												},
/// 											},
/// 										},
/// 										ImageContainmentType: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsImageContainmentTypeArgs{
/// 											FullyInside: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsImageContainmentTypeFullyInsideArgs{},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					&dataloss.PreventionContentPolicyInspectConfigRuleSetArgs{
/// 						InfoTypes: dataloss.PreventionContentPolicyInspectConfigRuleSetInfoTypeArray{
/// 							&dataloss.PreventionContentPolicyInspectConfigRuleSetInfoTypeArgs{
/// 								Name:    pulumi.String("PERSON_NAME"),
/// 								Version: pulumi.String("latest"),
/// 							},
/// 						},
/// 						Rules: dataloss.PreventionContentPolicyInspectConfigRuleSetRuleArray{
/// 							&dataloss.PreventionContentPolicyInspectConfigRuleSetRuleArgs{
/// 								ExclusionRule: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleArgs{
/// 									MatchingType: pulumi.String("MATCHING_TYPE_PARTIAL_MATCH"),
/// 									Dictionary: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryArgs{
/// 										WordList: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryWordListArgs{
/// 											Words: pulumi.StringArray{
/// 												pulumi.String("test"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&dataloss.PreventionContentPolicyInspectConfigRuleSetRuleArgs{
/// 								ExclusionRule: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleArgs{
/// 									MatchingType: pulumi.String("MATCHING_TYPE_PARTIAL_MATCH"),
/// 									Dictionary: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryArgs{
/// 										CloudStoragePath: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePathArgs{
/// 											Path: pulumi.All(bucket.Name, object.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 												bucketName := _args[0].(string)
/// 												objectName := _args[1].(string)
/// 												return fmt.Sprintf("gs://%v/%v", bucketName, objectName), nil
/// 											}).(pulumi.StringOutput),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					&dataloss.PreventionContentPolicyInspectConfigRuleSetArgs{
/// 						InfoTypes: dataloss.PreventionContentPolicyInspectConfigRuleSetInfoTypeArray{
/// 							&dataloss.PreventionContentPolicyInspectConfigRuleSetInfoTypeArgs{
/// 								Name: pulumi.String("FIRST_NAME"),
/// 							},
/// 						},
/// 						Rules: dataloss.PreventionContentPolicyInspectConfigRuleSetRuleArray{
/// 							&dataloss.PreventionContentPolicyInspectConfigRuleSetRuleArgs{
/// 								ExclusionRule: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleArgs{
/// 									MatchingType: pulumi.String("MATCHING_TYPE_FULL_MATCH"),
/// 									ExcludeByHotword: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordArgs{
/// 										HotwordRegex: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegexArgs{
/// 											Pattern: pulumi.String("zone.*"),
/// 											GroupIndexes: pulumi.IntArray{
/// 												pulumi.Int(0),
/// 											},
/// 										},
/// 										Proximity: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximityArgs{
/// 											WindowBefore: pulumi.Int(1),
/// 											WindowAfter:  pulumi.Int(2),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					&dataloss.PreventionContentPolicyInspectConfigRuleSetArgs{
/// 						InfoTypes: dataloss.PreventionContentPolicyInspectConfigRuleSetInfoTypeArray{
/// 							&dataloss.PreventionContentPolicyInspectConfigRuleSetInfoTypeArgs{
/// 								Name: pulumi.String("LAST_NAME"),
/// 							},
/// 						},
/// 						Rules: dataloss.PreventionContentPolicyInspectConfigRuleSetRuleArray{
/// 							&dataloss.PreventionContentPolicyInspectConfigRuleSetRuleArgs{
/// 								HotwordRule: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleArgs{
/// 									HotwordRegex: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleHotwordRegexArgs{
/// 										Pattern: pulumi.String("patient.*"),
/// 										GroupIndexes: pulumi.IntArray{
/// 											pulumi.Int(0),
/// 										},
/// 									},
/// 									Proximity: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleProximityArgs{
/// 										WindowBefore: pulumi.Int(1),
/// 										WindowAfter:  pulumi.Int(2),
/// 									},
/// 									LikelihoodAdjustment: &dataloss.PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustmentArgs{
/// 										FixedLikelihood: pulumi.String("VERY_LIKELY"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Rules: dataloss.PreventionContentPolicyRuleArray{
/// 				&dataloss.PreventionContentPolicyRuleArgs{
/// 					Conditions: dataloss.PreventionContentPolicyRuleConditionArray{
/// 						&dataloss.PreventionContentPolicyRuleConditionArgs{
/// 							InfoTypeCondition: &dataloss.PreventionContentPolicyRuleConditionInfoTypeConditionArgs{
/// 								AnyInfoType: &dataloss.PreventionContentPolicyRuleConditionInfoTypeConditionAnyInfoTypeArgs{},
/// 								MinCount:    pulumi.Int(2),
/// 							},
/// 						},
/// 					},
/// 					Action: &dataloss.PreventionContentPolicyRuleActionArgs{
/// 						ReturnVerdict: pulumi.String("BLOCK"),
/// 					},
/// 				},
/// 			},
/// 			UnsupportedFileType: &dataloss.PreventionContentPolicyUnsupportedFileTypeArgs{
/// 				ReturnVerdict: pulumi.String("ALLOW"),
/// 			},
/// 			InputTooLarge: &dataloss.PreventionContentPolicyInputTooLargeArgs{
/// 				ReturnVerdict: pulumi.String("ALLOW"),
/// 			},
/// 			FailedToScanSupportedFileType: &dataloss.PreventionContentPolicyFailedToScanSupportedFileTypeArgs{
/// 				ReturnVerdict: pulumi.String("BLOCK"),
/// 			},
/// 			DefaultAction: &dataloss.PreventionContentPolicyDefaultActionArgs{
/// 				ReturnVerdict: pulumi.String("ALLOW"),
/// 			},
/// 			LoggingConfigs: dataloss.PreventionContentPolicyLoggingConfigArray{
/// 				&dataloss.PreventionContentPolicyLoggingConfigArgs{
/// 					LogToBigQuery: &dataloss.PreventionContentPolicyLoggingConfigLogToBigQueryArgs{
/// 						ProjectId: defaultTable.Project,
/// 						DatasetId: _default.DatasetId,
/// 						TableId:   defaultTable.TableId,
/// 					},
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
/// resource "gcp_dataloss_preventioncontentpolicy" "full" {
///   parent       = "projects/my-project-name/locations/us-west1"
///   display_name = "tf-test-dlp-content-policy-full"
///   inspect_config = {
///     content_options    = ["CONTENT_TEXT", "CONTENT_IMAGE"]
///     include_quote      = true
///     exclude_info_types = false
///     min_likelihood     = "LIKELY"
///     info_types = [{
///       "name" = "PHONE_NUMBER"
///       "sensitivityScore" = {
///         "score" = "SENSITIVITY_LOW"
///       }
///       }, {
///       "name" = "EMAIL_ADDRESS"
///       }, {
///       "name"    = "PERSON_NAME"
///       "version" = "latest"
///       }, {
///       "name" = "FIRST_NAME"
///       }, {
///       "name" = "LAST_NAME"
///       }, {
///       "name" = "OBJECT_TYPE/PERSON"
///       }, {
///       "name" = "OBJECT_TYPE/PERSON/PASSPORT"
///     }]
///     min_likelihood_per_info_types = [{
///       "infoType" = {
///         "name"    = "PERSON_NAME"
///         "version" = "latest"
///         "sensitivityScore" = {
///           "score" = "SENSITIVITY_LOW"
///         }
///       }
///       "minLikelihood" = "LIKELY"
///     }]
///     custom_info_types = [{
///       "infoType" = {
///         "name"    = "MY_CUSTOM_TYPE"
///         "version" = "0.1"
///         "sensitivityScore" = {
///           "score" = "SENSITIVITY_LOW"
///         }
///       }
///       "sensitivityScore" = {
///         "score" = "SENSITIVITY_MODERATE"
///       }
///       "likelihood"    = "UNLIKELY"
///       "exclusionType" = "EXCLUSION_TYPE_EXCLUDE"
///       "regex" = {
///         "pattern"      = "test.*"
///         "groupIndexes" = [0]
///       }
///       "detectionRules" = [{
///         "hotwordRule" = {
///           "hotwordRegex" = {
///             "pattern"      = "password"
///             "groupIndexes" = [0]
///           }
///           "proximity" = {
///             "windowBefore" = 10
///             "windowAfter"  = 10
///           }
///           "likelihoodAdjustment" = {
///             "fixedLikelihood" = "VERY_LIKELY"
///           }
///         }
///       }]
///       }, {
///       "infoType" = {
///         "name" = "MY_GDRIVE_LABEL_TYPE"
///       }
///       "likelihood" = "POSSIBLE"
///       "fileLabelInfoType" = {
///         "googleDriveLabel" = {
///           "labelId" = "testLabelId"
///           "labelFieldsToMatches" = [{
///             "id"    = "field1"
///             "value" = "val1"
///           }]
///         }
///       }
///       }, {
///       "infoType" = {
///         "name" = "MY_SENSITIVITY_LABEL_TYPE"
///       }
///       "likelihood" = "POSSIBLE"
///       "fileLabelInfoType" = {
///         "sensitivityLabel" = {
///           "guid" = "11111111-2222-3333-4444-555555555555"
///         }
///       }
///       }, {
///       "infoType" = {
///         "name" = "MY_METADATA_KV_TYPE"
///       }
///       "likelihood" = "POSSIBLE"
///       "metadataKeyValueExpression" = {
///         "keyRegex"   = "key.*"
///         "valueRegex" = "val.*"
///       }
///       }, {
///       "infoType" = {
///         "name" = "MY_WORD_LIST_TYPE"
///       }
///       "likelihood" = "POSSIBLE"
///       "dictionary" = {
///         "wordList" = {
///           "words" = ["badword1", "badword2"]
///         }
///       }
///       }, {
///       "infoType" = {
///         "name" = "MY_STORAGE_TYPE"
///       }
///       "likelihood" = "POSSIBLE"
///       "dictionary" = {
///         "cloudStoragePath" = {
///           "path" ="gs://${gcp_storage_bucket.bucket.name}/${gcp_storage_bucketobject.object.name}"
///         }
///       }
///       }, {
///       "infoType" = {
///         "name" = "MY_STORED_TYPE"
///       }
///       "likelihood" = "POSSIBLE"
///       "storedType" = {
///         "name" = gcp_dataloss_preventionstoredinfotype.basic.id
///       }
///     }]
///     limits = {
///       max_findings_per_item    = 10
///       max_findings_per_request = 50
///       max_findings_per_info_types = [{
///         "maxFindings" = 10
///         "infoType" = {
///           "name"    = "PERSON_NAME"
///           "version" = "latest"
///           "sensitivityScore" = {
///             "score" = "SENSITIVITY_HIGH"
///           }
///         }
///       }]
///     }
///     rule_sets = [{
///       "infoTypes" = [{
///         "name" = "PHONE_NUMBER"
///         "sensitivityScore" = {
///           "score" = "SENSITIVITY_LOW"
///         }
///       }]
///       "rules" = [{
///         "exclusionRule" = {
///           "matchingType" = "MATCHING_TYPE_FULL_MATCH"
///           "excludeInfoTypes" = {
///             "infoTypes" = [{
///               "name"    = "PERSON_NAME"
///               "version" = "latest"
///               "sensitivityScore" = {
///                 "score" = "SENSITIVITY_LOW"
///               }
///             }]
///           }
///         }
///       }]
///       }, {
///       "infoTypes" = [{
///         "name" = "EMAIL_ADDRESS"
///       }]
///       "rules" = [{
///         "exclusionRule" = {
///           "matchingType" = "MATCHING_TYPE_PARTIAL_MATCH"
///           "regex" = {
///             "pattern"      = ".*@example\\.com"
///             "groupIndexes" = [0]
///           }
///         }
///         }, {
///         "adjustmentRule" = {
///           "adjustByMatchingInfoTypes" = {
///             "infoTypes" = [{
///               "name"    = "PERSON_NAME"
///               "version" = "latest"
///               "sensitivityScore" = {
///                 "score" = "SENSITIVITY_LOW"
///               }
///             }]
///             "minLikelihood" = "LIKELY"
///             "matchingType"  = "MATCHING_TYPE_PARTIAL_MATCH"
///           }
///           "likelihoodAdjustment" = {
///             "fixedLikelihood" = "VERY_LIKELY"
///           }
///         }
///       }]
///       }, {
///       "infoTypes" = [{
///         "name" = "OBJECT_TYPE/PERSON"
///       }]
///       "rules" = [{
///         "adjustmentRule" = {
///           "adjustByImageFindings" = {
///             "infoTypes" = [{
///               "name"    = "OBJECT_TYPE/PERSON/PASSPORT"
///               "version" = "latest"
///               "sensitivityScore" = {
///                 "score" = "SENSITIVITY_LOW"
///               }
///             }]
///             "minLikelihood" = "LIKELY"
///             "imageContainmentType" = {
///               "encloses" = {}
///             }
///           }
///           "likelihoodAdjustment" = {
///             "fixedLikelihood" = "VERY_LIKELY"
///           }
///         }
///         }, {
///         "exclusionRule" = {
///           "matchingType" = "MATCHING_TYPE_RULE_SPECIFIC"
///           "excludeByImageFindings" = {
///             "infoTypes" = [{
///               "name"    = "OBJECT_TYPE/PERSON/PASSPORT"
///               "version" = "latest"
///               "sensitivityScore" = {
///                 "score" = "SENSITIVITY_LOW"
///               }
///             }]
///             "imageContainmentType" = {
///               "fullyInside" = {}
///             }
///           }
///         }
///       }]
///       }, {
///       "infoTypes" = [{
///         "name"    = "PERSON_NAME"
///         "version" = "latest"
///       }]
///       "rules" = [{
///         "exclusionRule" = {
///           "matchingType" = "MATCHING_TYPE_PARTIAL_MATCH"
///           "dictionary" = {
///             "wordList" = {
///               "words" = ["test"]
///             }
///           }
///         }
///         }, {
///         "exclusionRule" = {
///           "matchingType" = "MATCHING_TYPE_PARTIAL_MATCH"
///           "dictionary" = {
///             "cloudStoragePath" = {
///               "path" ="gs://${gcp_storage_bucket.bucket.name}/${gcp_storage_bucketobject.object.name}"
///             }
///           }
///         }
///       }]
///       }, {
///       "infoTypes" = [{
///         "name" = "FIRST_NAME"
///       }]
///       "rules" = [{
///         "exclusionRule" = {
///           "matchingType" = "MATCHING_TYPE_FULL_MATCH"
///           "excludeByHotword" = {
///             "hotwordRegex" = {
///               "pattern"      = "zone.*"
///               "groupIndexes" = [0]
///             }
///             "proximity" = {
///               "windowBefore" = 1
///               "windowAfter"  = 2
///             }
///           }
///         }
///       }]
///       }, {
///       "infoTypes" = [{
///         "name" = "LAST_NAME"
///       }]
///       "rules" = [{
///         "hotwordRule" = {
///           "hotwordRegex" = {
///             "pattern"      = "patient.*"
///             "groupIndexes" = [0]
///           }
///           "proximity" = {
///             "windowBefore" = 1
///             "windowAfter"  = 2
///           }
///           "likelihoodAdjustment" = {
///             "fixedLikelihood" = "VERY_LIKELY"
///           }
///         }
///       }]
///     }]
///   }
///   rules {
///     conditions {
///       info_type_condition = {
///         any_info_type = {}
///         min_count     = 2
///       }
///     }
///     action = {
///       return_verdict = "BLOCK"
///     }
///   }
///   unsupported_file_type = {
///     return_verdict = "ALLOW"
///   }
///   input_too_large = {
///     return_verdict = "ALLOW"
///   }
///   failed_to_scan_supported_file_type = {
///     return_verdict = "BLOCK"
///   }
///   default_action = {
///     return_verdict = "ALLOW"
///   }
///   logging_configs {
///     log_to_big_query = {
///       project_id = gcp_bigquery_table.default.project
///       dataset_id = gcp_bigquery_dataset.default.dataset_id
///       table_id   = gcp_bigquery_table.default.table_id
///     }
///   }
/// }
/// resource "gcp_dataloss_preventionstoredinfotype" "basic" {
///   parent       = "projects/my-project-name/locations/us-west1"
///   description  = "Description for stored info type"
///   display_name = "tf-test-stored-info-type"
///   regex = {
///     pattern       = ".*"
///     group_indexes = [0]
///   }
/// }
/// resource "gcp_storage_bucket" "bucket" {
///   name                        = "dlp_bkt"
///   location                    = "US"
///   uniform_bucket_level_access = true
///   force_destroy               = true
/// }
/// resource "gcp_storage_bucketobject" "object" {
///   name    = "tf-test-wordlist"
///   bucket  = gcp_storage_bucket.bucket.name
///   content = "word1\nword2\n"
/// }
/// resource "gcp_bigquery_dataset" "default" {
///   dataset_id                  = "dlp_ds"
///   friendly_name               = "tf-test-dataset"
///   description                 = "Description for the dataset created by terraform"
///   location                    = "US"
///   default_table_expiration_ms = 3600000
///   delete_contents_on_destroy  = true
/// }
/// resource "gcp_bigquery_table" "default" {
///   dataset_id          = gcp_bigquery_dataset.default.dataset_id
///   table_id            = "dlp_tbl"
///   deletion_protection = false
///   schema              = "[\n  {\n    \\\"name\\\": \\\"quantity\\\",\n    \\\"type\\\": \\\"NUMERIC\\\",\n    \\\"mode\\\": \\\"NULLABLE\\\",\n    \\\"description\\\": \\\"The quantity\\\"\n  }\n]\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataloss.PreventionStoredInfoType;
/// import com.pulumi.gcp.dataloss.PreventionStoredInfoTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionStoredInfoTypeRegexArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.dataloss.PreventionContentPolicy;
/// import com.pulumi.gcp.dataloss.PreventionContentPolicyArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigInfoTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigInfoTypeSensitivityScoreArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoTypeSensitivityScoreArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigCustomInfoTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeSensitivityScoreArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigCustomInfoTypeSensitivityScoreArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigCustomInfoTypeRegexArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleHotwordRegexArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleProximityArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleLikelihoodAdjustmentArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabelArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabelLabelFieldsToMatchArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeSensitivityLabelArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigCustomInfoTypeMetadataKeyValueExpressionArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryWordListArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryCloudStoragePathArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigCustomInfoTypeStoredTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigLimitsArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScoreArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetInfoTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetInfoTypeSensitivityScoreArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoTypeSensitivityScoreArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleRegexArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypesArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypesInfoTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypesInfoTypeSensitivityScoreArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleLikelihoodAdjustmentArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsInfoTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsInfoTypeSensitivityScoreArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsImageContainmentTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsImageContainmentTypeEnclosesArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoTypeSensitivityScoreArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsImageContainmentTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsImageContainmentTypeFullyInsideArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryWordListArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePathArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegexArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximityArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleHotwordRegexArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleProximityArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustmentArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyRuleArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyRuleConditionArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyRuleConditionInfoTypeConditionArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyRuleConditionInfoTypeConditionAnyInfoTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyRuleActionArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyUnsupportedFileTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyInputTooLargeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyFailedToScanSupportedFileTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyDefaultActionArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyLoggingConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionContentPolicyLoggingConfigLogToBigQueryArgs;
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
///         var basic = new PreventionStoredInfoType("basic", PreventionStoredInfoTypeArgs.builder()
///             .parent("projects/my-project-name/locations/us-west1")
///             .description("Description for stored info type")
///             .displayName("tf-test-stored-info-type")
///             .regex(PreventionStoredInfoTypeRegexArgs.builder()
///                 .pattern(".*")
///                 .groupIndexes(0)
///                 .build())
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("dlp_bkt")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .forceDestroy(true)
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("tf-test-wordlist")
///             .bucket(bucket.name())
///             .content("""
/// word1
/// word2
///             """)
///             .build());
///
///         var default_ = new Dataset("default", DatasetArgs.builder()
///             .datasetId("dlp_ds")
///             .friendlyName("tf-test-dataset")
///             .description("Description for the dataset created by terraform")
///             .location("US")
///             .defaultTableExpirationMs(3600000)
///             .deleteContentsOnDestroy(true)
///             .build());
///
///         var defaultTable = new Table("defaultTable", TableArgs.builder()
///             .datasetId(default_.datasetId())
///             .tableId("dlp_tbl")
///             .deletionProtection(false)
///             .schema("""
/// [
///   {
///     \"name\": \"quantity\",
///     \"type\": \"NUMERIC\",
///     \"mode\": \"NULLABLE\",
///     \"description\": \"The quantity\"
///   }
/// ]
///             """)
///             .build());
///
///         var full = new PreventionContentPolicy("full", PreventionContentPolicyArgs.builder()
///             .parent("projects/my-project-name/locations/us-west1")
///             .displayName("tf-test-dlp-content-policy-full")
///             .inspectConfig(PreventionContentPolicyInspectConfigArgs.builder()
///                 .contentOptions(
///                     "CONTENT_TEXT",
///                     "CONTENT_IMAGE")
///                 .includeQuote(true)
///                 .excludeInfoTypes(false)
///                 .minLikelihood("LIKELY")
///                 .infoTypes(
///                     PreventionContentPolicyInspectConfigInfoTypeArgs.builder()
///                         .name("PHONE_NUMBER")
///                         .sensitivityScore(PreventionContentPolicyInspectConfigInfoTypeSensitivityScoreArgs.builder()
///                             .score("SENSITIVITY_LOW")
///                             .build())
///                         .build(),
///                     PreventionContentPolicyInspectConfigInfoTypeArgs.builder()
///                         .name("EMAIL_ADDRESS")
///                         .build(),
///                     PreventionContentPolicyInspectConfigInfoTypeArgs.builder()
///                         .name("PERSON_NAME")
///                         .version("latest")
///                         .build(),
///                     PreventionContentPolicyInspectConfigInfoTypeArgs.builder()
///                         .name("FIRST_NAME")
///                         .build(),
///                     PreventionContentPolicyInspectConfigInfoTypeArgs.builder()
///                         .name("LAST_NAME")
///                         .build(),
///                     PreventionContentPolicyInspectConfigInfoTypeArgs.builder()
///                         .name("OBJECT_TYPE/PERSON")
///                         .build(),
///                     PreventionContentPolicyInspectConfigInfoTypeArgs.builder()
///                         .name("OBJECT_TYPE/PERSON/PASSPORT")
///                         .build())
///                 .minLikelihoodPerInfoTypes(PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeArgs.builder()
///                     .infoType(PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoTypeArgs.builder()
///                         .name("PERSON_NAME")
///                         .version("latest")
///                         .sensitivityScore(PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoTypeSensitivityScoreArgs.builder()
///                             .score("SENSITIVITY_LOW")
///                             .build())
///                         .build())
///                     .minLikelihood("LIKELY")
///                     .build())
///                 .customInfoTypes(
///                     PreventionContentPolicyInspectConfigCustomInfoTypeArgs.builder()
///                         .infoType(PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs.builder()
///                             .name("MY_CUSTOM_TYPE")
///                             .version("0.1")
///                             .sensitivityScore(PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeSensitivityScoreArgs.builder()
///                                 .score("SENSITIVITY_LOW")
///                                 .build())
///                             .build())
///                         .sensitivityScore(PreventionContentPolicyInspectConfigCustomInfoTypeSensitivityScoreArgs.builder()
///                             .score("SENSITIVITY_MODERATE")
///                             .build())
///                         .likelihood("UNLIKELY")
///                         .exclusionType("EXCLUSION_TYPE_EXCLUDE")
///                         .regex(PreventionContentPolicyInspectConfigCustomInfoTypeRegexArgs.builder()
///                             .pattern("test.*")
///                             .groupIndexes(0)
///                             .build())
///                         .detectionRules(PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleArgs.builder()
///                             .hotwordRule(PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleArgs.builder()
///                                 .hotwordRegex(PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleHotwordRegexArgs.builder()
///                                     .pattern("password")
///                                     .groupIndexes(0)
///                                     .build())
///                                 .proximity(PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleProximityArgs.builder()
///                                     .windowBefore(10)
///                                     .windowAfter(10)
///                                     .build())
///                                 .likelihoodAdjustment(PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleLikelihoodAdjustmentArgs.builder()
///                                     .fixedLikelihood("VERY_LIKELY")
///                                     .build())
///                                 .build())
///                             .build())
///                         .build(),
///                     PreventionContentPolicyInspectConfigCustomInfoTypeArgs.builder()
///                         .infoType(PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs.builder()
///                             .name("MY_GDRIVE_LABEL_TYPE")
///                             .build())
///                         .likelihood("POSSIBLE")
///                         .fileLabelInfoType(PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeArgs.builder()
///                             .googleDriveLabel(PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabelArgs.builder()
///                                 .labelId("testLabelId")
///                                 .labelFieldsToMatches(PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabelLabelFieldsToMatchArgs.builder()
///                                     .id("field1")
///                                     .value("val1")
///                                     .build())
///                                 .build())
///                             .build())
///                         .build(),
///                     PreventionContentPolicyInspectConfigCustomInfoTypeArgs.builder()
///                         .infoType(PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs.builder()
///                             .name("MY_SENSITIVITY_LABEL_TYPE")
///                             .build())
///                         .likelihood("POSSIBLE")
///                         .fileLabelInfoType(PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeArgs.builder()
///                             .sensitivityLabel(PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeSensitivityLabelArgs.builder()
///                                 .guid("11111111-2222-3333-4444-555555555555")
///                                 .build())
///                             .build())
///                         .build(),
///                     PreventionContentPolicyInspectConfigCustomInfoTypeArgs.builder()
///                         .infoType(PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs.builder()
///                             .name("MY_METADATA_KV_TYPE")
///                             .build())
///                         .likelihood("POSSIBLE")
///                         .metadataKeyValueExpression(PreventionContentPolicyInspectConfigCustomInfoTypeMetadataKeyValueExpressionArgs.builder()
///                             .keyRegex("key.*")
///                             .valueRegex("val.*")
///                             .build())
///                         .build(),
///                     PreventionContentPolicyInspectConfigCustomInfoTypeArgs.builder()
///                         .infoType(PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs.builder()
///                             .name("MY_WORD_LIST_TYPE")
///                             .build())
///                         .likelihood("POSSIBLE")
///                         .dictionary(PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryArgs.builder()
///                             .wordList(PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryWordListArgs.builder()
///                                 .words(
///                                     "badword1",
///                                     "badword2")
///                                 .build())
///                             .build())
///                         .build(),
///                     PreventionContentPolicyInspectConfigCustomInfoTypeArgs.builder()
///                         .infoType(PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs.builder()
///                             .name("MY_STORAGE_TYPE")
///                             .build())
///                         .likelihood("POSSIBLE")
///                         .dictionary(PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryArgs.builder()
///                             .cloudStoragePath(PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryCloudStoragePathArgs.builder()
///                                 .path(Output.tuple(bucket.name(), object.name()).applyValue(values -> {
///                                     var bucketName = values.t1;
///                                     var objectName = values.t2;
///                                     return String.format("gs://%s/%s", bucketName,objectName);
///                                 }))
///                                 .build())
///                             .build())
///                         .build(),
///                     PreventionContentPolicyInspectConfigCustomInfoTypeArgs.builder()
///                         .infoType(PreventionContentPolicyInspectConfigCustomInfoTypeInfoTypeArgs.builder()
///                             .name("MY_STORED_TYPE")
///                             .build())
///                         .likelihood("POSSIBLE")
///                         .storedType(PreventionContentPolicyInspectConfigCustomInfoTypeStoredTypeArgs.builder()
///                             .name(basic.id())
///                             .build())
///                         .build())
///                 .limits(PreventionContentPolicyInspectConfigLimitsArgs.builder()
///                     .maxFindingsPerItem(10)
///                     .maxFindingsPerRequest(50)
///                     .maxFindingsPerInfoTypes(PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeArgs.builder()
///                         .maxFindings(10)
///                         .infoType(PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeArgs.builder()
///                             .name("PERSON_NAME")
///                             .version("latest")
///                             .sensitivityScore(PreventionContentPolicyInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScoreArgs.builder()
///                                 .score("SENSITIVITY_HIGH")
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .ruleSets(
///                     PreventionContentPolicyInspectConfigRuleSetArgs.builder()
///                         .infoTypes(PreventionContentPolicyInspectConfigRuleSetInfoTypeArgs.builder()
///                             .name("PHONE_NUMBER")
///                             .sensitivityScore(PreventionContentPolicyInspectConfigRuleSetInfoTypeSensitivityScoreArgs.builder()
///                                 .score("SENSITIVITY_LOW")
///                                 .build())
///                             .build())
///                         .rules(PreventionContentPolicyInspectConfigRuleSetRuleArgs.builder()
///                             .exclusionRule(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleArgs.builder()
///                                 .matchingType("MATCHING_TYPE_FULL_MATCH")
///                                 .excludeInfoTypes(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesArgs.builder()
///                                     .infoTypes(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoTypeArgs.builder()
///                                         .name("PERSON_NAME")
///                                         .version("latest")
///                                         .sensitivityScore(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoTypeSensitivityScoreArgs.builder()
///                                             .score("SENSITIVITY_LOW")
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .build(),
///                     PreventionContentPolicyInspectConfigRuleSetArgs.builder()
///                         .infoTypes(PreventionContentPolicyInspectConfigRuleSetInfoTypeArgs.builder()
///                             .name("EMAIL_ADDRESS")
///                             .build())
///                         .rules(
///                             PreventionContentPolicyInspectConfigRuleSetRuleArgs.builder()
///                                 .exclusionRule(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleArgs.builder()
///                                     .matchingType("MATCHING_TYPE_PARTIAL_MATCH")
///                                     .regex(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleRegexArgs.builder()
///                                         .pattern(".*@example\\.com")
///                                         .groupIndexes(0)
///                                         .build())
///                                     .build())
///                                 .build(),
///                             PreventionContentPolicyInspectConfigRuleSetRuleArgs.builder()
///                                 .adjustmentRule(PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleArgs.builder()
///                                     .adjustByMatchingInfoTypes(PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypesArgs.builder()
///                                         .infoTypes(PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypesInfoTypeArgs.builder()
///                                             .name("PERSON_NAME")
///                                             .version("latest")
///                                             .sensitivityScore(PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypesInfoTypeSensitivityScoreArgs.builder()
///                                                 .score("SENSITIVITY_LOW")
///                                                 .build())
///                                             .build())
///                                         .minLikelihood("LIKELY")
///                                         .matchingType("MATCHING_TYPE_PARTIAL_MATCH")
///                                         .build())
///                                     .likelihoodAdjustment(PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleLikelihoodAdjustmentArgs.builder()
///                                         .fixedLikelihood("VERY_LIKELY")
///                                         .build())
///                                     .build())
///                                 .build())
///                         .build(),
///                     PreventionContentPolicyInspectConfigRuleSetArgs.builder()
///                         .infoTypes(PreventionContentPolicyInspectConfigRuleSetInfoTypeArgs.builder()
///                             .name("OBJECT_TYPE/PERSON")
///                             .build())
///                         .rules(
///                             PreventionContentPolicyInspectConfigRuleSetRuleArgs.builder()
///                                 .adjustmentRule(PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleArgs.builder()
///                                     .adjustByImageFindings(PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsArgs.builder()
///                                         .infoTypes(PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsInfoTypeArgs.builder()
///                                             .name("OBJECT_TYPE/PERSON/PASSPORT")
///                                             .version("latest")
///                                             .sensitivityScore(PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsInfoTypeSensitivityScoreArgs.builder()
///                                                 .score("SENSITIVITY_LOW")
///                                                 .build())
///                                             .build())
///                                         .minLikelihood("LIKELY")
///                                         .imageContainmentType(PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsImageContainmentTypeArgs.builder()
///                                             .encloses(PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsImageContainmentTypeEnclosesArgs.builder()
///                                                 .build())
///                                             .build())
///                                         .build())
///                                     .likelihoodAdjustment(PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleLikelihoodAdjustmentArgs.builder()
///                                         .fixedLikelihood("VERY_LIKELY")
///                                         .build())
///                                     .build())
///                                 .build(),
///                             PreventionContentPolicyInspectConfigRuleSetRuleArgs.builder()
///                                 .exclusionRule(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleArgs.builder()
///                                     .matchingType("MATCHING_TYPE_RULE_SPECIFIC")
///                                     .excludeByImageFindings(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsArgs.builder()
///                                         .infoTypes(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoTypeArgs.builder()
///                                             .name("OBJECT_TYPE/PERSON/PASSPORT")
///                                             .version("latest")
///                                             .sensitivityScore(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoTypeSensitivityScoreArgs.builder()
///                                                 .score("SENSITIVITY_LOW")
///                                                 .build())
///                                             .build())
///                                         .imageContainmentType(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsImageContainmentTypeArgs.builder()
///                                             .fullyInside(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsImageContainmentTypeFullyInsideArgs.builder()
///                                                 .build())
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                         .build(),
///                     PreventionContentPolicyInspectConfigRuleSetArgs.builder()
///                         .infoTypes(PreventionContentPolicyInspectConfigRuleSetInfoTypeArgs.builder()
///                             .name("PERSON_NAME")
///                             .version("latest")
///                             .build())
///                         .rules(
///                             PreventionContentPolicyInspectConfigRuleSetRuleArgs.builder()
///                                 .exclusionRule(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleArgs.builder()
///                                     .matchingType("MATCHING_TYPE_PARTIAL_MATCH")
///                                     .dictionary(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryArgs.builder()
///                                         .wordList(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryWordListArgs.builder()
///                                             .words("test")
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build(),
///                             PreventionContentPolicyInspectConfigRuleSetRuleArgs.builder()
///                                 .exclusionRule(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleArgs.builder()
///                                     .matchingType("MATCHING_TYPE_PARTIAL_MATCH")
///                                     .dictionary(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryArgs.builder()
///                                         .cloudStoragePath(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePathArgs.builder()
///                                             .path(Output.tuple(bucket.name(), object.name()).applyValue(values -> {
///                                                 var bucketName = values.t1;
///                                                 var objectName = values.t2;
///                                                 return String.format("gs://%s/%s", bucketName,objectName);
///                                             }))
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                         .build(),
///                     PreventionContentPolicyInspectConfigRuleSetArgs.builder()
///                         .infoTypes(PreventionContentPolicyInspectConfigRuleSetInfoTypeArgs.builder()
///                             .name("FIRST_NAME")
///                             .build())
///                         .rules(PreventionContentPolicyInspectConfigRuleSetRuleArgs.builder()
///                             .exclusionRule(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleArgs.builder()
///                                 .matchingType("MATCHING_TYPE_FULL_MATCH")
///                                 .excludeByHotword(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordArgs.builder()
///                                     .hotwordRegex(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegexArgs.builder()
///                                         .pattern("zone.*")
///                                         .groupIndexes(0)
///                                         .build())
///                                     .proximity(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximityArgs.builder()
///                                         .windowBefore(1)
///                                         .windowAfter(2)
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .build(),
///                     PreventionContentPolicyInspectConfigRuleSetArgs.builder()
///                         .infoTypes(PreventionContentPolicyInspectConfigRuleSetInfoTypeArgs.builder()
///                             .name("LAST_NAME")
///                             .build())
///                         .rules(PreventionContentPolicyInspectConfigRuleSetRuleArgs.builder()
///                             .hotwordRule(PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleArgs.builder()
///                                 .hotwordRegex(PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleHotwordRegexArgs.builder()
///                                     .pattern("patient.*")
///                                     .groupIndexes(0)
///                                     .build())
///                                 .proximity(PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleProximityArgs.builder()
///                                     .windowBefore(1)
///                                     .windowAfter(2)
///                                     .build())
///                                 .likelihoodAdjustment(PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustmentArgs.builder()
///                                     .fixedLikelihood("VERY_LIKELY")
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                 .build())
///             .rules(PreventionContentPolicyRuleArgs.builder()
///                 .conditions(PreventionContentPolicyRuleConditionArgs.builder()
///                     .infoTypeCondition(PreventionContentPolicyRuleConditionInfoTypeConditionArgs.builder()
///                         .anyInfoType(PreventionContentPolicyRuleConditionInfoTypeConditionAnyInfoTypeArgs.builder()
///                             .build())
///                         .minCount(2)
///                         .build())
///                     .build())
///                 .action(PreventionContentPolicyRuleActionArgs.builder()
///                     .returnVerdict("BLOCK")
///                     .build())
///                 .build())
///             .unsupportedFileType(PreventionContentPolicyUnsupportedFileTypeArgs.builder()
///                 .returnVerdict("ALLOW")
///                 .build())
///             .inputTooLarge(PreventionContentPolicyInputTooLargeArgs.builder()
///                 .returnVerdict("ALLOW")
///                 .build())
///             .failedToScanSupportedFileType(PreventionContentPolicyFailedToScanSupportedFileTypeArgs.builder()
///                 .returnVerdict("BLOCK")
///                 .build())
///             .defaultAction(PreventionContentPolicyDefaultActionArgs.builder()
///                 .returnVerdict("ALLOW")
///                 .build())
///             .loggingConfigs(PreventionContentPolicyLoggingConfigArgs.builder()
///                 .logToBigQuery(PreventionContentPolicyLoggingConfigLogToBigQueryArgs.builder()
///                     .projectId(defaultTable.project())
///                     .datasetId(default_.datasetId())
///                     .tableId(defaultTable.tableId())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   full:
///     type: gcp:dataloss:PreventionContentPolicy
///     properties:
///       parent: projects/my-project-name/locations/us-west1
///       displayName: tf-test-dlp-content-policy-full
///       inspectConfig:
///         contentOptions:
///           - CONTENT_TEXT
///           - CONTENT_IMAGE
///         includeQuote: true
///         excludeInfoTypes: false
///         minLikelihood: LIKELY
///         infoTypes:
///           - name: PHONE_NUMBER
///             sensitivityScore:
///               score: SENSITIVITY_LOW
///           - name: EMAIL_ADDRESS
///           - name: PERSON_NAME
///             version: latest
///           - name: FIRST_NAME
///           - name: LAST_NAME
///           - name: OBJECT_TYPE/PERSON
///           - name: OBJECT_TYPE/PERSON/PASSPORT
///         minLikelihoodPerInfoTypes:
///           - infoType:
///               name: PERSON_NAME
///               version: latest
///               sensitivityScore:
///                 score: SENSITIVITY_LOW
///             minLikelihood: LIKELY
///         customInfoTypes:
///           - infoType:
///               name: MY_CUSTOM_TYPE
///               version: '0.1'
///               sensitivityScore:
///                 score: SENSITIVITY_LOW
///             sensitivityScore:
///               score: SENSITIVITY_MODERATE
///             likelihood: UNLIKELY
///             exclusionType: EXCLUSION_TYPE_EXCLUDE
///             regex:
///               pattern: test.*
///               groupIndexes:
///                 - 0
///             detectionRules:
///               - hotwordRule:
///                   hotwordRegex:
///                     pattern: password
///                     groupIndexes:
///                       - 0
///                   proximity:
///                     windowBefore: 10
///                     windowAfter: 10
///                   likelihoodAdjustment:
///                     fixedLikelihood: VERY_LIKELY
///           - infoType:
///               name: MY_GDRIVE_LABEL_TYPE
///             likelihood: POSSIBLE
///             fileLabelInfoType:
///               googleDriveLabel:
///                 labelId: testLabelId
///                 labelFieldsToMatches:
///                   - id: field1
///                     value: val1
///           - infoType:
///               name: MY_SENSITIVITY_LABEL_TYPE
///             likelihood: POSSIBLE
///             fileLabelInfoType:
///               sensitivityLabel:
///                 guid: 11111111-2222-3333-4444-555555555555
///           - infoType:
///               name: MY_METADATA_KV_TYPE
///             likelihood: POSSIBLE
///             metadataKeyValueExpression:
///               keyRegex: key.*
///               valueRegex: val.*
///           - infoType:
///               name: MY_WORD_LIST_TYPE
///             likelihood: POSSIBLE
///             dictionary:
///               wordList:
///                 words:
///                   - badword1
///                   - badword2
///           - infoType:
///               name: MY_STORAGE_TYPE
///             likelihood: POSSIBLE
///             dictionary:
///               cloudStoragePath:
///                 path: gs://${bucket.name}/${object.name}
///           - infoType:
///               name: MY_STORED_TYPE
///             likelihood: POSSIBLE
///             storedType:
///               name: ${basic.id}
///         limits:
///           maxFindingsPerItem: 10
///           maxFindingsPerRequest: 50
///           maxFindingsPerInfoTypes:
///             - maxFindings: 10
///               infoType:
///                 name: PERSON_NAME
///                 version: latest
///                 sensitivityScore:
///                   score: SENSITIVITY_HIGH
///         ruleSets:
///           - infoTypes:
///               - name: PHONE_NUMBER
///                 sensitivityScore:
///                   score: SENSITIVITY_LOW
///             rules:
///               - exclusionRule:
///                   matchingType: MATCHING_TYPE_FULL_MATCH
///                   excludeInfoTypes:
///                     infoTypes:
///                       - name: PERSON_NAME
///                         version: latest
///                         sensitivityScore:
///                           score: SENSITIVITY_LOW
///           - infoTypes:
///               - name: EMAIL_ADDRESS
///             rules:
///               - exclusionRule:
///                   matchingType: MATCHING_TYPE_PARTIAL_MATCH
///                   regex:
///                     pattern: .*@example\.com
///                     groupIndexes:
///                       - 0
///               - adjustmentRule:
///                   adjustByMatchingInfoTypes:
///                     infoTypes:
///                       - name: PERSON_NAME
///                         version: latest
///                         sensitivityScore:
///                           score: SENSITIVITY_LOW
///                     minLikelihood: LIKELY
///                     matchingType: MATCHING_TYPE_PARTIAL_MATCH
///                   likelihoodAdjustment:
///                     fixedLikelihood: VERY_LIKELY
///           - infoTypes:
///               - name: OBJECT_TYPE/PERSON
///             rules:
///               - adjustmentRule:
///                   adjustByImageFindings:
///                     infoTypes:
///                       - name: OBJECT_TYPE/PERSON/PASSPORT
///                         version: latest
///                         sensitivityScore:
///                           score: SENSITIVITY_LOW
///                     minLikelihood: LIKELY
///                     imageContainmentType:
///                       encloses: {}
///                   likelihoodAdjustment:
///                     fixedLikelihood: VERY_LIKELY
///               - exclusionRule:
///                   matchingType: MATCHING_TYPE_RULE_SPECIFIC
///                   excludeByImageFindings:
///                     infoTypes:
///                       - name: OBJECT_TYPE/PERSON/PASSPORT
///                         version: latest
///                         sensitivityScore:
///                           score: SENSITIVITY_LOW
///                     imageContainmentType:
///                       fullyInside: {}
///           - infoTypes:
///               - name: PERSON_NAME
///                 version: latest
///             rules:
///               - exclusionRule:
///                   matchingType: MATCHING_TYPE_PARTIAL_MATCH
///                   dictionary:
///                     wordList:
///                       words:
///                         - test
///               - exclusionRule:
///                   matchingType: MATCHING_TYPE_PARTIAL_MATCH
///                   dictionary:
///                     cloudStoragePath:
///                       path: gs://${bucket.name}/${object.name}
///           - infoTypes:
///               - name: FIRST_NAME
///             rules:
///               - exclusionRule:
///                   matchingType: MATCHING_TYPE_FULL_MATCH
///                   excludeByHotword:
///                     hotwordRegex:
///                       pattern: zone.*
///                       groupIndexes:
///                         - 0
///                     proximity:
///                       windowBefore: 1
///                       windowAfter: 2
///           - infoTypes:
///               - name: LAST_NAME
///             rules:
///               - hotwordRule:
///                   hotwordRegex:
///                     pattern: patient.*
///                     groupIndexes:
///                       - 0
///                   proximity:
///                     windowBefore: 1
///                     windowAfter: 2
///                   likelihoodAdjustment:
///                     fixedLikelihood: VERY_LIKELY
///       rules:
///         - conditions:
///             - infoTypeCondition:
///                 anyInfoType: {}
///                 minCount: 2
///           action:
///             returnVerdict: BLOCK
///       unsupportedFileType:
///         returnVerdict: ALLOW
///       inputTooLarge:
///         returnVerdict: ALLOW
///       failedToScanSupportedFileType:
///         returnVerdict: BLOCK
///       defaultAction:
///         returnVerdict: ALLOW
///       loggingConfigs:
///         - logToBigQuery:
///             projectId: ${defaultTable.project}
///             datasetId: ${default.datasetId}
///             tableId: ${defaultTable.tableId}
///   basic:
///     type: gcp:dataloss:PreventionStoredInfoType
///     properties:
///       parent: projects/my-project-name/locations/us-west1
///       description: Description for stored info type
///       displayName: tf-test-stored-info-type
///       regex:
///         pattern: .*
///         groupIndexes:
///           - 0
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: dlp_bkt
///       location: US
///       uniformBucketLevelAccess: true
///       forceDestroy: true
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: tf-test-wordlist
///       bucket: ${bucket.name}
///       content: |
///         word1
///         word2
///   default:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: dlp_ds
///       friendlyName: tf-test-dataset
///       description: Description for the dataset created by terraform
///       location: US
///       defaultTableExpirationMs: 3.6e+06
///       deleteContentsOnDestroy: true
///   defaultTable:
///     type: gcp:bigquery:Table
///     name: default
///     properties:
///       datasetId: ${default.datasetId}
///       tableId: dlp_tbl
///       deletionProtection: false
///       schema: |
///         [
///           {
///             \"name\": \"quantity\",
///             \"type\": \"NUMERIC\",
///             \"mode\": \"NULLABLE\",
///             \"description\": \"The quantity\"
///           }
///         ]
/// ```
///
///
/// ## Import
///
/// ContentPolicy can be imported using any of these accepted formats:
///
/// * `{{parent}}/contentPolicies/{{name}}`
/// * `{{parent}}/{{name}}`
///
///
/// When using the `pulumi import` command, ContentPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataloss/preventionContentPolicy:PreventionContentPolicy default {{parent}}/contentPolicies/{{name}}
/// $ pulumi import gcp:dataloss/preventionContentPolicy:PreventionContentPolicy default {{parent}}/{{name}}
/// ```
class PreventionContentPolicy extends pulumi.CustomResource {
  /// Output only. The creation timestamp of a ContentPolicy.
  late final pulumi.Output<String> createTime;
  /// Action to take if the content is scanned and no rules match. Defaults to returning an ALLOW verdict if not set.
  /// Structure is documented below.
  late final pulumi.Output<PreventionContentPolicyDefaultAction?> defaultAction;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Display name (max 63 chars).
  late final pulumi.Output<String?> displayName;
  /// Output only. A stream of errors encountered when the policy was applied. Output only field. Will return the last 100 errors.
  /// Structure is documented below.
  late final pulumi.Output<List<PreventionContentPolicyError>> errors;
  /// Action to take if the content is a supported file type and size but fails to be scanned, for example because the file is encrypted or corrupted.
  /// Structure is documented below.
  late final pulumi.Output<PreventionContentPolicyFailedToScanSupportedFileType?> failedToScanSupportedFileType;
  /// Action to take if the content is a supported file type but is too large to be scanned.
  /// Structure is documented below.
  late final pulumi.Output<PreventionContentPolicyInputTooLarge?> inputTooLarge;
  /// InspectConfig to use to produce findings.
  /// Structure is documented below.
  late final pulumi.Output<PreventionContentPolicyInspectConfig?> inspectConfig;
  /// Log the actions taken by the content policy to external systems.
  /// Structure is documented below.
  late final pulumi.Output<List<PreventionContentPolicyLoggingConfig>?> loggingConfigs;
  /// The resource name of the content policy. Set by the server.
  late final pulumi.Output<String> name;
  /// The parent of the content policy in any of the following formats:
  /// * `projects/{{project}}/locations/{{location}}`
  late final pulumi.Output<String> parent;
  /// Policies to apply, based on the findings returned by inspection. The first rule to match applies.
  /// Structure is documented below.
  late final pulumi.Output<List<PreventionContentPolicyRule>> rules;
  /// Action to take if the content is an unsupported file type.
  /// Structure is documented below.
  late final pulumi.Output<PreventionContentPolicyUnsupportedFileType?> unsupportedFileType;
  /// Output only. The last update timestamp of a ContentPolicy.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [PreventionContentPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PreventionContentPolicy]. {@macro pulumi_dataloss_prevention_content_policy_prevention_content_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PreventionContentPolicy(
    String name, {
    PreventionContentPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataloss/preventionContentPolicy:PreventionContentPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.0').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    defaultAction = registerOutput<PreventionContentPolicyDefaultAction?>('defaultAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionContentPolicyDefaultAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    errors = registerOutput<List<PreventionContentPolicyError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PreventionContentPolicyError>(guardedValue, (value) => PreventionContentPolicyError.fromMap((value as Map).cast<String, dynamic>())); });
    failedToScanSupportedFileType = registerOutput<PreventionContentPolicyFailedToScanSupportedFileType?>('failedToScanSupportedFileType', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionContentPolicyFailedToScanSupportedFileType.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inputTooLarge = registerOutput<PreventionContentPolicyInputTooLarge?>('inputTooLarge', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionContentPolicyInputTooLarge.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inspectConfig = registerOutput<PreventionContentPolicyInspectConfig?>('inspectConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionContentPolicyInspectConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loggingConfigs = registerOutput<List<PreventionContentPolicyLoggingConfig>?>('loggingConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PreventionContentPolicyLoggingConfig>(guardedValue, (value) => PreventionContentPolicyLoggingConfig.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    rules = registerOutput<List<PreventionContentPolicyRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PreventionContentPolicyRule>(guardedValue, (value) => PreventionContentPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
    unsupportedFileType = registerOutput<PreventionContentPolicyUnsupportedFileType?>('unsupportedFileType', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionContentPolicyUnsupportedFileType.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [PreventionContentPolicy] resource's state with the given [name] and [id].
  static PreventionContentPolicy get(
    String name,
    pulumi.Input<String> id, {
    PreventionContentPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PreventionContentPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PreventionContentPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataloss/preventionContentPolicy:PreventionContentPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    defaultAction = registerOutput<PreventionContentPolicyDefaultAction?>('defaultAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionContentPolicyDefaultAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    errors = registerOutput<List<PreventionContentPolicyError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PreventionContentPolicyError>(guardedValue, (value) => PreventionContentPolicyError.fromMap((value as Map).cast<String, dynamic>())); });
    failedToScanSupportedFileType = registerOutput<PreventionContentPolicyFailedToScanSupportedFileType?>('failedToScanSupportedFileType', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionContentPolicyFailedToScanSupportedFileType.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inputTooLarge = registerOutput<PreventionContentPolicyInputTooLarge?>('inputTooLarge', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionContentPolicyInputTooLarge.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inspectConfig = registerOutput<PreventionContentPolicyInspectConfig?>('inspectConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionContentPolicyInspectConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loggingConfigs = registerOutput<List<PreventionContentPolicyLoggingConfig>?>('loggingConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PreventionContentPolicyLoggingConfig>(guardedValue, (value) => PreventionContentPolicyLoggingConfig.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    rules = registerOutput<List<PreventionContentPolicyRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PreventionContentPolicyRule>(guardedValue, (value) => PreventionContentPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
    unsupportedFileType = registerOutput<PreventionContentPolicyUnsupportedFileType?>('unsupportedFileType', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionContentPolicyUnsupportedFileType.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [PreventionContentPolicy] resource.
  PreventionContentPolicy.reference(String urn)
    : super(
        'gcp:dataloss/preventionContentPolicy:PreventionContentPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    defaultAction = registerOutput<PreventionContentPolicyDefaultAction?>('defaultAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionContentPolicyDefaultAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    errors = registerOutput<List<PreventionContentPolicyError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PreventionContentPolicyError>(guardedValue, (value) => PreventionContentPolicyError.fromMap((value as Map).cast<String, dynamic>())); });
    failedToScanSupportedFileType = registerOutput<PreventionContentPolicyFailedToScanSupportedFileType?>('failedToScanSupportedFileType', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionContentPolicyFailedToScanSupportedFileType.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inputTooLarge = registerOutput<PreventionContentPolicyInputTooLarge?>('inputTooLarge', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionContentPolicyInputTooLarge.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inspectConfig = registerOutput<PreventionContentPolicyInspectConfig?>('inspectConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionContentPolicyInspectConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loggingConfigs = registerOutput<List<PreventionContentPolicyLoggingConfig>?>('loggingConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PreventionContentPolicyLoggingConfig>(guardedValue, (value) => PreventionContentPolicyLoggingConfig.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    rules = registerOutput<List<PreventionContentPolicyRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PreventionContentPolicyRule>(guardedValue, (value) => PreventionContentPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
    unsupportedFileType = registerOutput<PreventionContentPolicyUnsupportedFileType?>('unsupportedFileType', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionContentPolicyUnsupportedFileType.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }
}
