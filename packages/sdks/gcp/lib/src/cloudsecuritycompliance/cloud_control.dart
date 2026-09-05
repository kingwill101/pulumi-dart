import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_args.dart';
import 'cloud_control_parameter_spec.dart';
import 'cloud_control_rule.dart';
import 'cloud_control_state.dart';

/// Cloud controls are the building blocks that make up frameworks. Each cloud control is a unit encapsulating various platform-specific logic for prevention, detection, and audit.
///
///
/// To get more information about CloudControl, see:
///
/// * [API documentation](https://docs.cloud.google.com/security-command-center/docs/reference/cloudsecuritycompliance/rest/v1/organizations.locations.cloudControls)
///
/// ## Example Usage
///
/// ### Cloudsecuritycompliance Cloudcontrol Org Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.cloudsecuritycompliance.CloudControl("example", {
///     parent: "organizations/123456789",
///     location: "global",
///     cloudControlId: "example-cloudcontrol",
///     displayName: "TF test CloudControl Name",
///     description: "A test cloud control for security compliance",
///     categories: ["CC_CATEGORY_INFRASTRUCTURE"],
///     severity: "HIGH",
///     findingCategory: "SECURITY_POLICY",
///     remediationSteps: "Review and update the security configuration according to best practices.",
///     supportedCloudProviders: ["GCP"],
///     rules: [{
///         description: "Ensure compute instances have secure boot enabled",
///         ruleActionTypes: ["RULE_ACTION_TYPE_DETECTIVE"],
///         celExpression: {
///             expression: "resource.data.shieldedInstanceConfig.enableSecureBoot == true",
///             resourceTypesValues: {
///                 values: ["compute.googleapis.com/Instance"],
///             },
///         },
///     }],
///     parameterSpecs: [
///         {
///             name: "location",
///             displayName: "Resource Location",
///             description: "The location where the resource should be deployed",
///             valueType: "STRING",
///             isRequired: true,
///             defaultValue: {
///                 stringValue: "us-central1",
///             },
///             validation: {
///                 regexpPattern: {
///                     pattern: "^[a-z]+-[a-z]+[0-9]$",
///                 },
///             },
///         },
///         {
///             name: "enable_secure_boot",
///             displayName: "Enable Secure Boot",
///             description: "Whether to enable secure boot for instances",
///             valueType: "BOOLEAN",
///             isRequired: true,
///             defaultValue: {
///                 boolValue: true,
///             },
///             substitutionRules: [{
///                 attributeSubstitutionRule: {
///                     attribute: "rules[0].cel_expression.expression",
///                 },
///             }],
///             validation: {
///                 allowedValues: {
///                     values: [{
///                         boolValue: true,
///                     }],
///                 },
///             },
///         },
///         {
///             name: "max_instances",
///             displayName: "Maximum Instances",
///             description: "Maximum number of instances allowed",
///             valueType: "NUMBER",
///             isRequired: false,
///             defaultValue: {
///                 numberValue: 10,
///             },
///             substitutionRules: [{
///                 placeholderSubstitutionRule: {
///                     attribute: "rules[0].description",
///                 },
///             }],
///             validation: {
///                 intRange: {
///                     min: "1",
///                     max: "100",
///                 },
///             },
///         },
///         {
///             name: "allowed_regions",
///             displayName: "Allowed Regions",
///             description: "List of regions where resources can be deployed",
///             valueType: "STRINGLIST",
///             isRequired: true,
///             defaultValue: {
///                 stringListValue: {
///                     values: [
///                         "us-central1",
///                         "us-east1",
///                         "us-west1",
///                     ],
///                 },
///             },
///             validation: {
///                 allowedValues: {
///                     values: [
///                         {
///                             stringListValue: {
///                                 values: [
///                                     "us-central1",
///                                     "us-east1",
///                                 ],
///                             },
///                         },
///                         {
///                             stringListValue: {
///                                 values: [
///                                     "us-west1",
///                                     "us-west2",
///                                 ],
///                             },
///                         },
///                     ],
///                 },
///             },
///         },
///         {
///             name: "environment_type",
///             displayName: "Environment Type",
///             description: "The type of environment",
///             valueType: "STRING",
///             isRequired: true,
///             defaultValue: {
///                 stringValue: "production",
///             },
///             validation: {
///                 allowedValues: {
///                     values: [
///                         {
///                             stringValue: "production",
///                         },
///                         {
///                             stringValue: "staging",
///                         },
///                         {
///                             numberValue: 1,
///                         },
///                     ],
///                 },
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.cloudsecuritycompliance.CloudControl("example",
///     parent="organizations/123456789",
///     location="global",
///     cloud_control_id="example-cloudcontrol",
///     display_name="TF test CloudControl Name",
///     description="A test cloud control for security compliance",
///     categories=["CC_CATEGORY_INFRASTRUCTURE"],
///     severity="HIGH",
///     finding_category="SECURITY_POLICY",
///     remediation_steps="Review and update the security configuration according to best practices.",
///     supported_cloud_providers=["GCP"],
///     rules=[{
///         "description": "Ensure compute instances have secure boot enabled",
///         "rule_action_types": ["RULE_ACTION_TYPE_DETECTIVE"],
///         "cel_expression": {
///             "expression": "resource.data.shieldedInstanceConfig.enableSecureBoot == true",
///             "resource_types_values": {
///                 "values": ["compute.googleapis.com/Instance"],
///             },
///         },
///     }],
///     parameter_specs=[
///         {
///             "name": "location",
///             "display_name": "Resource Location",
///             "description": "The location where the resource should be deployed",
///             "value_type": "STRING",
///             "is_required": True,
///             "default_value": {
///                 "string_value": "us-central1",
///             },
///             "validation": {
///                 "regexp_pattern": {
///                     "pattern": "^[a-z]+-[a-z]+[0-9]$",
///                 },
///             },
///         },
///         {
///             "name": "enable_secure_boot",
///             "display_name": "Enable Secure Boot",
///             "description": "Whether to enable secure boot for instances",
///             "value_type": "BOOLEAN",
///             "is_required": True,
///             "default_value": {
///                 "bool_value": True,
///             },
///             "substitution_rules": [{
///                 "attribute_substitution_rule": {
///                     "attribute": "rules[0].cel_expression.expression",
///                 },
///             }],
///             "validation": {
///                 "allowed_values": {
///                     "values": [{
///                         "bool_value": True,
///                     }],
///                 },
///             },
///         },
///         {
///             "name": "max_instances",
///             "display_name": "Maximum Instances",
///             "description": "Maximum number of instances allowed",
///             "value_type": "NUMBER",
///             "is_required": False,
///             "default_value": {
///                 "number_value": float(10),
///             },
///             "substitution_rules": [{
///                 "placeholder_substitution_rule": {
///                     "attribute": "rules[0].description",
///                 },
///             }],
///             "validation": {
///                 "int_range": {
///                     "min": "1",
///                     "max": "100",
///                 },
///             },
///         },
///         {
///             "name": "allowed_regions",
///             "display_name": "Allowed Regions",
///             "description": "List of regions where resources can be deployed",
///             "value_type": "STRINGLIST",
///             "is_required": True,
///             "default_value": {
///                 "string_list_value": {
///                     "values": [
///                         "us-central1",
///                         "us-east1",
///                         "us-west1",
///                     ],
///                 },
///             },
///             "validation": {
///                 "allowed_values": {
///                     "values": [
///                         {
///                             "string_list_value": {
///                                 "values": [
///                                     "us-central1",
///                                     "us-east1",
///                                 ],
///                             },
///                         },
///                         {
///                             "string_list_value": {
///                                 "values": [
///                                     "us-west1",
///                                     "us-west2",
///                                 ],
///                             },
///                         },
///                     ],
///                 },
///             },
///         },
///         {
///             "name": "environment_type",
///             "display_name": "Environment Type",
///             "description": "The type of environment",
///             "value_type": "STRING",
///             "is_required": True,
///             "default_value": {
///                 "string_value": "production",
///             },
///             "validation": {
///                 "allowed_values": {
///                     "values": [
///                         {
///                             "string_value": "production",
///                         },
///                         {
///                             "string_value": "staging",
///                         },
///                         {
///                             "number_value": float(1),
///                         },
///                     ],
///                 },
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.CloudSecurityCompliance.CloudControl("example", new()
///     {
///         Parent = "organizations/123456789",
///         Location = "global",
///         CloudControlId = "example-cloudcontrol",
///         DisplayName = "TF test CloudControl Name",
///         Description = "A test cloud control for security compliance",
///         Categories = new[]
///         {
///             "CC_CATEGORY_INFRASTRUCTURE",
///         },
///         Severity = "HIGH",
///         FindingCategory = "SECURITY_POLICY",
///         RemediationSteps = "Review and update the security configuration according to best practices.",
///         SupportedCloudProviders = new[]
///         {
///             "GCP",
///         },
///         Rules = new[]
///         {
///             new Gcp.CloudSecurityCompliance.Inputs.CloudControlRuleArgs
///             {
///                 Description = "Ensure compute instances have secure boot enabled",
///                 RuleActionTypes = new[]
///                 {
///                     "RULE_ACTION_TYPE_DETECTIVE",
///                 },
///                 CelExpression = new Gcp.CloudSecurityCompliance.Inputs.CloudControlRuleCelExpressionArgs
///                 {
///                     Expression = "resource.data.shieldedInstanceConfig.enableSecureBoot == true",
///                     ResourceTypesValues = new Gcp.CloudSecurityCompliance.Inputs.CloudControlRuleCelExpressionResourceTypesValuesArgs
///                     {
///                         Values = new[]
///                         {
///                             "compute.googleapis.com/Instance",
///                         },
///                     },
///                 },
///             },
///         },
///         ParameterSpecs = new[]
///         {
///             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecArgs
///             {
///                 Name = "location",
///                 DisplayName = "Resource Location",
///                 Description = "The location where the resource should be deployed",
///                 ValueType = "STRING",
///                 IsRequired = true,
///                 DefaultValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecDefaultValueArgs
///                 {
///                     StringValue = "us-central1",
///                 },
///                 Validation = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationArgs
///                 {
///                     RegexpPattern = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationRegexpPatternArgs
///                     {
///                         Pattern = "^[a-z]+-[a-z]+[0-9]$",
///                     },
///                 },
///             },
///             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecArgs
///             {
///                 Name = "enable_secure_boot",
///                 DisplayName = "Enable Secure Boot",
///                 Description = "Whether to enable secure boot for instances",
///                 ValueType = "BOOLEAN",
///                 IsRequired = true,
///                 DefaultValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecDefaultValueArgs
///                 {
///                     BoolValue = true,
///                 },
///                 SubstitutionRules = new[]
///                 {
///                     new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecSubstitutionRuleArgs
///                     {
///                         AttributeSubstitutionRule = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRuleArgs
///                         {
///                             Attribute = "rules[0].cel_expression.expression",
///                         },
///                     },
///                 },
///                 Validation = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationArgs
///                 {
///                     AllowedValues = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesArgs
///                     {
///                         Values = new[]
///                         {
///                             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueArgs
///                             {
///                                 BoolValue = true,
///                             },
///                         },
///                     },
///                 },
///             },
///             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecArgs
///             {
///                 Name = "max_instances",
///                 DisplayName = "Maximum Instances",
///                 Description = "Maximum number of instances allowed",
///                 ValueType = "NUMBER",
///                 IsRequired = false,
///                 DefaultValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecDefaultValueArgs
///                 {
///                     NumberValue = 10.0,
///                 },
///                 SubstitutionRules = new[]
///                 {
///                     new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecSubstitutionRuleArgs
///                     {
///                         PlaceholderSubstitutionRule = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRuleArgs
///                         {
///                             Attribute = "rules[0].description",
///                         },
///                     },
///                 },
///                 Validation = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationArgs
///                 {
///                     IntRange = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationIntRangeArgs
///                     {
///                         Min = "1",
///                         Max = "100",
///                     },
///                 },
///             },
///             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecArgs
///             {
///                 Name = "allowed_regions",
///                 DisplayName = "Allowed Regions",
///                 Description = "List of regions where resources can be deployed",
///                 ValueType = "STRINGLIST",
///                 IsRequired = true,
///                 DefaultValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecDefaultValueArgs
///                 {
///                     StringListValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecDefaultValueStringListValueArgs
///                     {
///                         Values = new[]
///                         {
///                             "us-central1",
///                             "us-east1",
///                             "us-west1",
///                         },
///                     },
///                 },
///                 Validation = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationArgs
///                 {
///                     AllowedValues = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesArgs
///                     {
///                         Values = new[]
///                         {
///                             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueArgs
///                             {
///                                 StringListValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueStringListValueArgs
///                                 {
///                                     Values = new[]
///                                     {
///                                         "us-central1",
///                                         "us-east1",
///                                     },
///                                 },
///                             },
///                             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueArgs
///                             {
///                                 StringListValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueStringListValueArgs
///                                 {
///                                     Values = new[]
///                                     {
///                                         "us-west1",
///                                         "us-west2",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecArgs
///             {
///                 Name = "environment_type",
///                 DisplayName = "Environment Type",
///                 Description = "The type of environment",
///                 ValueType = "STRING",
///                 IsRequired = true,
///                 DefaultValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecDefaultValueArgs
///                 {
///                     StringValue = "production",
///                 },
///                 Validation = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationArgs
///                 {
///                     AllowedValues = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesArgs
///                     {
///                         Values = new[]
///                         {
///                             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueArgs
///                             {
///                                 StringValue = "production",
///                             },
///                             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueArgs
///                             {
///                                 StringValue = "staging",
///                             },
///                             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueArgs
///                             {
///                                 NumberValue = 1.0,
///                             },
///                         },
///                     },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudsecuritycompliance"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudsecuritycompliance.NewCloudControl(ctx, "example", &cloudsecuritycompliance.CloudControlArgs{
/// 			Parent:         pulumi.String("organizations/123456789"),
/// 			Location:       pulumi.String("global"),
/// 			CloudControlId: pulumi.String("example-cloudcontrol"),
/// 			DisplayName:    pulumi.String("TF test CloudControl Name"),
/// 			Description:    pulumi.String("A test cloud control for security compliance"),
/// 			Categories: pulumi.StringArray{
/// 				pulumi.String("CC_CATEGORY_INFRASTRUCTURE"),
/// 			},
/// 			Severity:         pulumi.String("HIGH"),
/// 			FindingCategory:  pulumi.String("SECURITY_POLICY"),
/// 			RemediationSteps: pulumi.String("Review and update the security configuration according to best practices."),
/// 			SupportedCloudProviders: pulumi.StringArray{
/// 				pulumi.String("GCP"),
/// 			},
/// 			Rules: cloudsecuritycompliance.CloudControlRuleArray{
/// 				&cloudsecuritycompliance.CloudControlRuleArgs{
/// 					Description: pulumi.String("Ensure compute instances have secure boot enabled"),
/// 					RuleActionTypes: pulumi.StringArray{
/// 						pulumi.String("RULE_ACTION_TYPE_DETECTIVE"),
/// 					},
/// 					CelExpression: &cloudsecuritycompliance.CloudControlRuleCelExpressionArgs{
/// 						Expression: pulumi.String("resource.data.shieldedInstanceConfig.enableSecureBoot == true"),
/// 						ResourceTypesValues: &cloudsecuritycompliance.CloudControlRuleCelExpressionResourceTypesValuesArgs{
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("compute.googleapis.com/Instance"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ParameterSpecs: cloudsecuritycompliance.CloudControlParameterSpecArray{
/// 				&cloudsecuritycompliance.CloudControlParameterSpecArgs{
/// 					Name:        pulumi.String("location"),
/// 					DisplayName: pulumi.String("Resource Location"),
/// 					Description: pulumi.String("The location where the resource should be deployed"),
/// 					ValueType:   pulumi.String("STRING"),
/// 					IsRequired:  pulumi.Bool(true),
/// 					DefaultValue: &cloudsecuritycompliance.CloudControlParameterSpecDefaultValueArgs{
/// 						StringValue: pulumi.String("us-central1"),
/// 					},
/// 					Validation: &cloudsecuritycompliance.CloudControlParameterSpecValidationArgs{
/// 						RegexpPattern: &cloudsecuritycompliance.CloudControlParameterSpecValidationRegexpPatternArgs{
/// 							Pattern: pulumi.String("^[a-z]+-[a-z]+[0-9]$"),
/// 						},
/// 					},
/// 				},
/// 				&cloudsecuritycompliance.CloudControlParameterSpecArgs{
/// 					Name:        pulumi.String("enable_secure_boot"),
/// 					DisplayName: pulumi.String("Enable Secure Boot"),
/// 					Description: pulumi.String("Whether to enable secure boot for instances"),
/// 					ValueType:   pulumi.String("BOOLEAN"),
/// 					IsRequired:  pulumi.Bool(true),
/// 					DefaultValue: &cloudsecuritycompliance.CloudControlParameterSpecDefaultValueArgs{
/// 						BoolValue: pulumi.Bool(true),
/// 					},
/// 					SubstitutionRules: cloudsecuritycompliance.CloudControlParameterSpecSubstitutionRuleArray{
/// 						&cloudsecuritycompliance.CloudControlParameterSpecSubstitutionRuleArgs{
/// 							AttributeSubstitutionRule: &cloudsecuritycompliance.CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRuleArgs{
/// 								Attribute: pulumi.String("rules[0].cel_expression.expression"),
/// 							},
/// 						},
/// 					},
/// 					Validation: &cloudsecuritycompliance.CloudControlParameterSpecValidationArgs{
/// 						AllowedValues: &cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesArgs{
/// 							Values: cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArray{
/// 								&cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArgs{
/// 									BoolValue: pulumi.Bool(true),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&cloudsecuritycompliance.CloudControlParameterSpecArgs{
/// 					Name:        pulumi.String("max_instances"),
/// 					DisplayName: pulumi.String("Maximum Instances"),
/// 					Description: pulumi.String("Maximum number of instances allowed"),
/// 					ValueType:   pulumi.String("NUMBER"),
/// 					IsRequired:  pulumi.Bool(false),
/// 					DefaultValue: &cloudsecuritycompliance.CloudControlParameterSpecDefaultValueArgs{
/// 						NumberValue: pulumi.Float64(10),
/// 					},
/// 					SubstitutionRules: cloudsecuritycompliance.CloudControlParameterSpecSubstitutionRuleArray{
/// 						&cloudsecuritycompliance.CloudControlParameterSpecSubstitutionRuleArgs{
/// 							PlaceholderSubstitutionRule: &cloudsecuritycompliance.CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRuleArgs{
/// 								Attribute: pulumi.String("rules[0].description"),
/// 							},
/// 						},
/// 					},
/// 					Validation: &cloudsecuritycompliance.CloudControlParameterSpecValidationArgs{
/// 						IntRange: &cloudsecuritycompliance.CloudControlParameterSpecValidationIntRangeArgs{
/// 							Min: pulumi.String("1"),
/// 							Max: pulumi.String("100"),
/// 						},
/// 					},
/// 				},
/// 				&cloudsecuritycompliance.CloudControlParameterSpecArgs{
/// 					Name:        pulumi.String("allowed_regions"),
/// 					DisplayName: pulumi.String("Allowed Regions"),
/// 					Description: pulumi.String("List of regions where resources can be deployed"),
/// 					ValueType:   pulumi.String("STRINGLIST"),
/// 					IsRequired:  pulumi.Bool(true),
/// 					DefaultValue: &cloudsecuritycompliance.CloudControlParameterSpecDefaultValueArgs{
/// 						StringListValue: &cloudsecuritycompliance.CloudControlParameterSpecDefaultValueStringListValueArgs{
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("us-central1"),
/// 								pulumi.String("us-east1"),
/// 								pulumi.String("us-west1"),
/// 							},
/// 						},
/// 					},
/// 					Validation: &cloudsecuritycompliance.CloudControlParameterSpecValidationArgs{
/// 						AllowedValues: &cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesArgs{
/// 							Values: cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArray{
/// 								&cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArgs{
/// 									StringListValue: &cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueStringListValueArgs{
/// 										Values: pulumi.StringArray{
/// 											pulumi.String("us-central1"),
/// 											pulumi.String("us-east1"),
/// 										},
/// 									},
/// 								},
/// 								&cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArgs{
/// 									StringListValue: &cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueStringListValueArgs{
/// 										Values: pulumi.StringArray{
/// 											pulumi.String("us-west1"),
/// 											pulumi.String("us-west2"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&cloudsecuritycompliance.CloudControlParameterSpecArgs{
/// 					Name:        pulumi.String("environment_type"),
/// 					DisplayName: pulumi.String("Environment Type"),
/// 					Description: pulumi.String("The type of environment"),
/// 					ValueType:   pulumi.String("STRING"),
/// 					IsRequired:  pulumi.Bool(true),
/// 					DefaultValue: &cloudsecuritycompliance.CloudControlParameterSpecDefaultValueArgs{
/// 						StringValue: pulumi.String("production"),
/// 					},
/// 					Validation: &cloudsecuritycompliance.CloudControlParameterSpecValidationArgs{
/// 						AllowedValues: &cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesArgs{
/// 							Values: cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArray{
/// 								&cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArgs{
/// 									StringValue: pulumi.String("production"),
/// 								},
/// 								&cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArgs{
/// 									StringValue: pulumi.String("staging"),
/// 								},
/// 								&cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArgs{
/// 									NumberValue: pulumi.Float64(1),
/// 								},
/// 							},
/// 						},
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
/// resource "gcp_cloudsecuritycompliance_cloudcontrol" "example" {
///   parent                    = "organizations/123456789"
///   location                  = "global"
///   cloud_control_id          = "example-cloudcontrol"
///   display_name              = "TF test CloudControl Name"
///   description               = "A test cloud control for security compliance"
///   categories                = ["CC_CATEGORY_INFRASTRUCTURE"]
///   severity                  = "HIGH"
///   finding_category          = "SECURITY_POLICY"
///   remediation_steps         = "Review and update the security configuration according to best practices."
///   supported_cloud_providers = ["GCP"]
///   rules {
///     description       = "Ensure compute instances have secure boot enabled"
///     rule_action_types = ["RULE_ACTION_TYPE_DETECTIVE"]
///     cel_expression = {
///       expression = "resource.data.shieldedInstanceConfig.enableSecureBoot == true"
///       resource_types_values = {
///         values = ["compute.googleapis.com/Instance"]
///       }
///     }
///   }
///   parameter_specs {
///     name         = "location"
///     display_name = "Resource Location"
///     description  = "The location where the resource should be deployed"
///     value_type   = "STRING"
///     is_required  = true
///     default_value = {
///       string_value = "us-central1"
///     }
///     validation = {
///       regexp_pattern = {
///         pattern = "^[a-z]+-[a-z]+[0-9]$"
///       }
///     }
///   }
///   parameter_specs {
///     name         = "enable_secure_boot"
///     display_name = "Enable Secure Boot"
///     description  = "Whether to enable secure boot for instances"
///     value_type   = "BOOLEAN"
///     is_required  = true
///     default_value = {
///       bool_value = true
///     }
///     substitution_rules {
///       attribute_substitution_rule = {
///         attribute = "rules[0].cel_expression.expression"
///       }
///     }
///     validation = {
///       allowed_values = {
///         values = [{
///           "boolValue" = true
///         }]
///       }
///     }
///   }
///   parameter_specs {
///     name         = "max_instances"
///     display_name = "Maximum Instances"
///     description  = "Maximum number of instances allowed"
///     value_type   = "NUMBER"
///     is_required  = false
///     default_value = {
///       number_value = 10
///     }
///     substitution_rules {
///       placeholder_substitution_rule = {
///         attribute = "rules[0].description"
///       }
///     }
///     validation = {
///       int_range = {
///         min = "1"
///         max = "100"
///       }
///     }
///   }
///   parameter_specs {
///     name         = "allowed_regions"
///     display_name = "Allowed Regions"
///     description  = "List of regions where resources can be deployed"
///     value_type   = "STRINGLIST"
///     is_required  = true
///     default_value = {
///       string_list_value = {
///         values = ["us-central1", "us-east1", "us-west1"]
///       }
///     }
///     validation = {
///       allowed_values = {
///         values = [{
///           "stringListValue" = {
///             "values" = ["us-central1", "us-east1"]
///           }
///           }, {
///           "stringListValue" = {
///             "values" = ["us-west1", "us-west2"]
///           }
///         }]
///       }
///     }
///   }
///   parameter_specs {
///     name         = "environment_type"
///     display_name = "Environment Type"
///     description  = "The type of environment"
///     value_type   = "STRING"
///     is_required  = true
///     default_value = {
///       string_value = "production"
///     }
///     validation = {
///       allowed_values = {
///         values = [{
///           "stringValue" = "production"
///           }, {
///           "stringValue" = "staging"
///           }, {
///           "numberValue" = 1
///         }]
///       }
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
/// import com.pulumi.gcp.cloudsecuritycompliance.CloudControl;
/// import com.pulumi.gcp.cloudsecuritycompliance.CloudControlArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlRuleArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlRuleCelExpressionArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlRuleCelExpressionResourceTypesValuesArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecDefaultValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecValidationArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecValidationRegexpPatternArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecSubstitutionRuleArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRuleArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecValidationAllowedValuesArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecValidationAllowedValuesValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRuleArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecValidationIntRangeArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecDefaultValueStringListValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecValidationAllowedValuesValueStringListValueArgs;
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
///         var example = new CloudControl("example", CloudControlArgs.builder()
///             .parent("organizations/123456789")
///             .location("global")
///             .cloudControlId("example-cloudcontrol")
///             .displayName("TF test CloudControl Name")
///             .description("A test cloud control for security compliance")
///             .categories("CC_CATEGORY_INFRASTRUCTURE")
///             .severity("HIGH")
///             .findingCategory("SECURITY_POLICY")
///             .remediationSteps("Review and update the security configuration according to best practices.")
///             .supportedCloudProviders("GCP")
///             .rules(CloudControlRuleArgs.builder()
///                 .description("Ensure compute instances have secure boot enabled")
///                 .ruleActionTypes("RULE_ACTION_TYPE_DETECTIVE")
///                 .celExpression(CloudControlRuleCelExpressionArgs.builder()
///                     .expression("resource.data.shieldedInstanceConfig.enableSecureBoot == true")
///                     .resourceTypesValues(CloudControlRuleCelExpressionResourceTypesValuesArgs.builder()
///                         .values("compute.googleapis.com/Instance")
///                         .build())
///                     .build())
///                 .build())
///             .parameterSpecs(
///                 CloudControlParameterSpecArgs.builder()
///                     .name("location")
///                     .displayName("Resource Location")
///                     .description("The location where the resource should be deployed")
///                     .valueType("STRING")
///                     .isRequired(true)
///                     .defaultValue(CloudControlParameterSpecDefaultValueArgs.builder()
///                         .stringValue("us-central1")
///                         .build())
///                     .validation(CloudControlParameterSpecValidationArgs.builder()
///                         .regexpPattern(CloudControlParameterSpecValidationRegexpPatternArgs.builder()
///                             .pattern("^[a-z]+-[a-z]+[0-9]$")
///                             .build())
///                         .build())
///                     .build(),
///                 CloudControlParameterSpecArgs.builder()
///                     .name("enable_secure_boot")
///                     .displayName("Enable Secure Boot")
///                     .description("Whether to enable secure boot for instances")
///                     .valueType("BOOLEAN")
///                     .isRequired(true)
///                     .defaultValue(CloudControlParameterSpecDefaultValueArgs.builder()
///                         .boolValue(true)
///                         .build())
///                     .substitutionRules(CloudControlParameterSpecSubstitutionRuleArgs.builder()
///                         .attributeSubstitutionRule(CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRuleArgs.builder()
///                             .attribute("rules[0].cel_expression.expression")
///                             .build())
///                         .build())
///                     .validation(CloudControlParameterSpecValidationArgs.builder()
///                         .allowedValues(CloudControlParameterSpecValidationAllowedValuesArgs.builder()
///                             .values(CloudControlParameterSpecValidationAllowedValuesValueArgs.builder()
///                                 .boolValue(true)
///                                 .build())
///                             .build())
///                         .build())
///                     .build(),
///                 CloudControlParameterSpecArgs.builder()
///                     .name("max_instances")
///                     .displayName("Maximum Instances")
///                     .description("Maximum number of instances allowed")
///                     .valueType("NUMBER")
///                     .isRequired(false)
///                     .defaultValue(CloudControlParameterSpecDefaultValueArgs.builder()
///                         .numberValue(10.0)
///                         .build())
///                     .substitutionRules(CloudControlParameterSpecSubstitutionRuleArgs.builder()
///                         .placeholderSubstitutionRule(CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRuleArgs.builder()
///                             .attribute("rules[0].description")
///                             .build())
///                         .build())
///                     .validation(CloudControlParameterSpecValidationArgs.builder()
///                         .intRange(CloudControlParameterSpecValidationIntRangeArgs.builder()
///                             .min("1")
///                             .max("100")
///                             .build())
///                         .build())
///                     .build(),
///                 CloudControlParameterSpecArgs.builder()
///                     .name("allowed_regions")
///                     .displayName("Allowed Regions")
///                     .description("List of regions where resources can be deployed")
///                     .valueType("STRINGLIST")
///                     .isRequired(true)
///                     .defaultValue(CloudControlParameterSpecDefaultValueArgs.builder()
///                         .stringListValue(CloudControlParameterSpecDefaultValueStringListValueArgs.builder()
///                             .values(
///                                 "us-central1",
///                                 "us-east1",
///                                 "us-west1")
///                             .build())
///                         .build())
///                     .validation(CloudControlParameterSpecValidationArgs.builder()
///                         .allowedValues(CloudControlParameterSpecValidationAllowedValuesArgs.builder()
///                             .values(
///                                 CloudControlParameterSpecValidationAllowedValuesValueArgs.builder()
///                                     .stringListValue(CloudControlParameterSpecValidationAllowedValuesValueStringListValueArgs.builder()
///                                         .values(
///                                             "us-central1",
///                                             "us-east1")
///                                         .build())
///                                     .build(),
///                                 CloudControlParameterSpecValidationAllowedValuesValueArgs.builder()
///                                     .stringListValue(CloudControlParameterSpecValidationAllowedValuesValueStringListValueArgs.builder()
///                                         .values(
///                                             "us-west1",
///                                             "us-west2")
///                                         .build())
///                                     .build())
///                             .build())
///                         .build())
///                     .build(),
///                 CloudControlParameterSpecArgs.builder()
///                     .name("environment_type")
///                     .displayName("Environment Type")
///                     .description("The type of environment")
///                     .valueType("STRING")
///                     .isRequired(true)
///                     .defaultValue(CloudControlParameterSpecDefaultValueArgs.builder()
///                         .stringValue("production")
///                         .build())
///                     .validation(CloudControlParameterSpecValidationArgs.builder()
///                         .allowedValues(CloudControlParameterSpecValidationAllowedValuesArgs.builder()
///                             .values(
///                                 CloudControlParameterSpecValidationAllowedValuesValueArgs.builder()
///                                     .stringValue("production")
///                                     .build(),
///                                 CloudControlParameterSpecValidationAllowedValuesValueArgs.builder()
///                                     .stringValue("staging")
///                                     .build(),
///                                 CloudControlParameterSpecValidationAllowedValuesValueArgs.builder()
///                                     .numberValue(1.0)
///                                     .build())
///                             .build())
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:cloudsecuritycompliance:CloudControl
///     properties:
///       parent: organizations/123456789
///       location: global
///       cloudControlId: example-cloudcontrol
///       displayName: TF test CloudControl Name
///       description: A test cloud control for security compliance
///       categories:
///         - CC_CATEGORY_INFRASTRUCTURE
///       severity: HIGH
///       findingCategory: SECURITY_POLICY
///       remediationSteps: Review and update the security configuration according to best practices.
///       supportedCloudProviders:
///         - GCP
///       rules:
///         - description: Ensure compute instances have secure boot enabled
///           ruleActionTypes:
///             - RULE_ACTION_TYPE_DETECTIVE
///           celExpression:
///             expression: resource.data.shieldedInstanceConfig.enableSecureBoot == true
///             resourceTypesValues:
///               values:
///                 - compute.googleapis.com/Instance
///       parameterSpecs:
///         - name: location
///           displayName: Resource Location
///           description: The location where the resource should be deployed
///           valueType: STRING
///           isRequired: true
///           defaultValue:
///             stringValue: us-central1
///           validation:
///             regexpPattern:
///               pattern: ^[a-z]+-[a-z]+[0-9]$
///         - name: enable_secure_boot
///           displayName: Enable Secure Boot
///           description: Whether to enable secure boot for instances
///           valueType: BOOLEAN
///           isRequired: true
///           defaultValue:
///             boolValue: true
///           substitutionRules:
///             - attributeSubstitutionRule:
///                 attribute: rules[0].cel_expression.expression
///           validation:
///             allowedValues:
///               values:
///                 - boolValue: true
///         - name: max_instances
///           displayName: Maximum Instances
///           description: Maximum number of instances allowed
///           valueType: NUMBER
///           isRequired: false
///           defaultValue:
///             numberValue: 10
///           substitutionRules:
///             - placeholderSubstitutionRule:
///                 attribute: rules[0].description
///           validation:
///             intRange:
///               min: '1'
///               max: '100'
///         - name: allowed_regions
///           displayName: Allowed Regions
///           description: List of regions where resources can be deployed
///           valueType: STRINGLIST
///           isRequired: true
///           defaultValue:
///             stringListValue:
///               values:
///                 - us-central1
///                 - us-east1
///                 - us-west1
///           validation:
///             allowedValues:
///               values:
///                 - stringListValue:
///                     values:
///                       - us-central1
///                       - us-east1
///                 - stringListValue:
///                     values:
///                       - us-west1
///                       - us-west2
///         - name: environment_type
///           displayName: Environment Type
///           description: The type of environment
///           valueType: STRING
///           isRequired: true
///           defaultValue:
///             stringValue: production
///           validation:
///             allowedValues:
///               values:
///                 - stringValue: production
///                 - stringValue: staging
///                 - numberValue: 1
/// ```
///
/// ### Cloudsecuritycompliance Cloudcontrol Project Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.cloudsecuritycompliance.CloudControl("example", {
///     parent: project.then(project => `projects/${project.number}`),
///     location: "global",
///     cloudControlId: "example-cloudcontrol",
///     displayName: "TF test CloudControl Name",
///     description: "A test cloud control for security compliance",
///     categories: ["CC_CATEGORY_INFRASTRUCTURE"],
///     severity: "HIGH",
///     findingCategory: "SECURITY_POLICY",
///     remediationSteps: "Review and update the security configuration according to best practices.",
///     supportedCloudProviders: ["GCP"],
///     rules: [{
///         description: "Ensure compute instances have secure boot enabled",
///         ruleActionTypes: ["RULE_ACTION_TYPE_DETECTIVE"],
///         celExpression: {
///             expression: "resource.data.shieldedInstanceConfig.enableSecureBoot == true",
///             resourceTypesValues: {
///                 values: ["compute.googleapis.com/Instance"],
///             },
///         },
///     }],
///     parameterSpecs: [
///         {
///             name: "location",
///             displayName: "Resource Location",
///             description: "The location where the resource should be deployed",
///             valueType: "STRING",
///             isRequired: true,
///             defaultValue: {
///                 stringValue: "us-central1",
///             },
///             validation: {
///                 regexpPattern: {
///                     pattern: "^[a-z]+-[a-z]+[0-9]$",
///                 },
///             },
///         },
///         {
///             name: "enable_secure_boot",
///             displayName: "Enable Secure Boot",
///             description: "Whether to enable secure boot for instances",
///             valueType: "BOOLEAN",
///             isRequired: true,
///             defaultValue: {
///                 boolValue: true,
///             },
///             substitutionRules: [{
///                 attributeSubstitutionRule: {
///                     attribute: "rules[0].cel_expression.expression",
///                 },
///             }],
///             validation: {
///                 allowedValues: {
///                     values: [{
///                         boolValue: true,
///                     }],
///                 },
///             },
///         },
///         {
///             name: "max_instances",
///             displayName: "Maximum Instances",
///             description: "Maximum number of instances allowed",
///             valueType: "NUMBER",
///             isRequired: false,
///             defaultValue: {
///                 numberValue: 10,
///             },
///             substitutionRules: [{
///                 placeholderSubstitutionRule: {
///                     attribute: "rules[0].description",
///                 },
///             }],
///             validation: {
///                 intRange: {
///                     min: "1",
///                     max: "100",
///                 },
///             },
///         },
///         {
///             name: "allowed_regions",
///             displayName: "Allowed Regions",
///             description: "List of regions where resources can be deployed",
///             valueType: "STRINGLIST",
///             isRequired: true,
///             defaultValue: {
///                 stringListValue: {
///                     values: [
///                         "us-central1",
///                         "us-east1",
///                         "us-west1",
///                     ],
///                 },
///             },
///             validation: {
///                 allowedValues: {
///                     values: [
///                         {
///                             stringListValue: {
///                                 values: [
///                                     "us-central1",
///                                     "us-east1",
///                                 ],
///                             },
///                         },
///                         {
///                             stringListValue: {
///                                 values: [
///                                     "us-west1",
///                                     "us-west2",
///                                 ],
///                             },
///                         },
///                     ],
///                 },
///             },
///         },
///         {
///             name: "environment_type",
///             displayName: "Environment Type",
///             description: "The type of environment",
///             valueType: "STRING",
///             isRequired: true,
///             defaultValue: {
///                 stringValue: "production",
///             },
///             validation: {
///                 allowedValues: {
///                     values: [
///                         {
///                             stringValue: "production",
///                         },
///                         {
///                             stringValue: "staging",
///                         },
///                         {
///                             numberValue: 1,
///                         },
///                     ],
///                 },
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example = gcp.cloudsecuritycompliance.CloudControl("example",
///     parent=f"projects/{project.number}",
///     location="global",
///     cloud_control_id="example-cloudcontrol",
///     display_name="TF test CloudControl Name",
///     description="A test cloud control for security compliance",
///     categories=["CC_CATEGORY_INFRASTRUCTURE"],
///     severity="HIGH",
///     finding_category="SECURITY_POLICY",
///     remediation_steps="Review and update the security configuration according to best practices.",
///     supported_cloud_providers=["GCP"],
///     rules=[{
///         "description": "Ensure compute instances have secure boot enabled",
///         "rule_action_types": ["RULE_ACTION_TYPE_DETECTIVE"],
///         "cel_expression": {
///             "expression": "resource.data.shieldedInstanceConfig.enableSecureBoot == true",
///             "resource_types_values": {
///                 "values": ["compute.googleapis.com/Instance"],
///             },
///         },
///     }],
///     parameter_specs=[
///         {
///             "name": "location",
///             "display_name": "Resource Location",
///             "description": "The location where the resource should be deployed",
///             "value_type": "STRING",
///             "is_required": True,
///             "default_value": {
///                 "string_value": "us-central1",
///             },
///             "validation": {
///                 "regexp_pattern": {
///                     "pattern": "^[a-z]+-[a-z]+[0-9]$",
///                 },
///             },
///         },
///         {
///             "name": "enable_secure_boot",
///             "display_name": "Enable Secure Boot",
///             "description": "Whether to enable secure boot for instances",
///             "value_type": "BOOLEAN",
///             "is_required": True,
///             "default_value": {
///                 "bool_value": True,
///             },
///             "substitution_rules": [{
///                 "attribute_substitution_rule": {
///                     "attribute": "rules[0].cel_expression.expression",
///                 },
///             }],
///             "validation": {
///                 "allowed_values": {
///                     "values": [{
///                         "bool_value": True,
///                     }],
///                 },
///             },
///         },
///         {
///             "name": "max_instances",
///             "display_name": "Maximum Instances",
///             "description": "Maximum number of instances allowed",
///             "value_type": "NUMBER",
///             "is_required": False,
///             "default_value": {
///                 "number_value": float(10),
///             },
///             "substitution_rules": [{
///                 "placeholder_substitution_rule": {
///                     "attribute": "rules[0].description",
///                 },
///             }],
///             "validation": {
///                 "int_range": {
///                     "min": "1",
///                     "max": "100",
///                 },
///             },
///         },
///         {
///             "name": "allowed_regions",
///             "display_name": "Allowed Regions",
///             "description": "List of regions where resources can be deployed",
///             "value_type": "STRINGLIST",
///             "is_required": True,
///             "default_value": {
///                 "string_list_value": {
///                     "values": [
///                         "us-central1",
///                         "us-east1",
///                         "us-west1",
///                     ],
///                 },
///             },
///             "validation": {
///                 "allowed_values": {
///                     "values": [
///                         {
///                             "string_list_value": {
///                                 "values": [
///                                     "us-central1",
///                                     "us-east1",
///                                 ],
///                             },
///                         },
///                         {
///                             "string_list_value": {
///                                 "values": [
///                                     "us-west1",
///                                     "us-west2",
///                                 ],
///                             },
///                         },
///                     ],
///                 },
///             },
///         },
///         {
///             "name": "environment_type",
///             "display_name": "Environment Type",
///             "description": "The type of environment",
///             "value_type": "STRING",
///             "is_required": True,
///             "default_value": {
///                 "string_value": "production",
///             },
///             "validation": {
///                 "allowed_values": {
///                     "values": [
///                         {
///                             "string_value": "production",
///                         },
///                         {
///                             "string_value": "staging",
///                         },
///                         {
///                             "number_value": float(1),
///                         },
///                     ],
///                 },
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example = new Gcp.CloudSecurityCompliance.CloudControl("example", new()
///     {
///         Parent = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///         Location = "global",
///         CloudControlId = "example-cloudcontrol",
///         DisplayName = "TF test CloudControl Name",
///         Description = "A test cloud control for security compliance",
///         Categories = new[]
///         {
///             "CC_CATEGORY_INFRASTRUCTURE",
///         },
///         Severity = "HIGH",
///         FindingCategory = "SECURITY_POLICY",
///         RemediationSteps = "Review and update the security configuration according to best practices.",
///         SupportedCloudProviders = new[]
///         {
///             "GCP",
///         },
///         Rules = new[]
///         {
///             new Gcp.CloudSecurityCompliance.Inputs.CloudControlRuleArgs
///             {
///                 Description = "Ensure compute instances have secure boot enabled",
///                 RuleActionTypes = new[]
///                 {
///                     "RULE_ACTION_TYPE_DETECTIVE",
///                 },
///                 CelExpression = new Gcp.CloudSecurityCompliance.Inputs.CloudControlRuleCelExpressionArgs
///                 {
///                     Expression = "resource.data.shieldedInstanceConfig.enableSecureBoot == true",
///                     ResourceTypesValues = new Gcp.CloudSecurityCompliance.Inputs.CloudControlRuleCelExpressionResourceTypesValuesArgs
///                     {
///                         Values = new[]
///                         {
///                             "compute.googleapis.com/Instance",
///                         },
///                     },
///                 },
///             },
///         },
///         ParameterSpecs = new[]
///         {
///             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecArgs
///             {
///                 Name = "location",
///                 DisplayName = "Resource Location",
///                 Description = "The location where the resource should be deployed",
///                 ValueType = "STRING",
///                 IsRequired = true,
///                 DefaultValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecDefaultValueArgs
///                 {
///                     StringValue = "us-central1",
///                 },
///                 Validation = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationArgs
///                 {
///                     RegexpPattern = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationRegexpPatternArgs
///                     {
///                         Pattern = "^[a-z]+-[a-z]+[0-9]$",
///                     },
///                 },
///             },
///             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecArgs
///             {
///                 Name = "enable_secure_boot",
///                 DisplayName = "Enable Secure Boot",
///                 Description = "Whether to enable secure boot for instances",
///                 ValueType = "BOOLEAN",
///                 IsRequired = true,
///                 DefaultValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecDefaultValueArgs
///                 {
///                     BoolValue = true,
///                 },
///                 SubstitutionRules = new[]
///                 {
///                     new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecSubstitutionRuleArgs
///                     {
///                         AttributeSubstitutionRule = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRuleArgs
///                         {
///                             Attribute = "rules[0].cel_expression.expression",
///                         },
///                     },
///                 },
///                 Validation = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationArgs
///                 {
///                     AllowedValues = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesArgs
///                     {
///                         Values = new[]
///                         {
///                             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueArgs
///                             {
///                                 BoolValue = true,
///                             },
///                         },
///                     },
///                 },
///             },
///             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecArgs
///             {
///                 Name = "max_instances",
///                 DisplayName = "Maximum Instances",
///                 Description = "Maximum number of instances allowed",
///                 ValueType = "NUMBER",
///                 IsRequired = false,
///                 DefaultValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecDefaultValueArgs
///                 {
///                     NumberValue = 10.0,
///                 },
///                 SubstitutionRules = new[]
///                 {
///                     new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecSubstitutionRuleArgs
///                     {
///                         PlaceholderSubstitutionRule = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRuleArgs
///                         {
///                             Attribute = "rules[0].description",
///                         },
///                     },
///                 },
///                 Validation = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationArgs
///                 {
///                     IntRange = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationIntRangeArgs
///                     {
///                         Min = "1",
///                         Max = "100",
///                     },
///                 },
///             },
///             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecArgs
///             {
///                 Name = "allowed_regions",
///                 DisplayName = "Allowed Regions",
///                 Description = "List of regions where resources can be deployed",
///                 ValueType = "STRINGLIST",
///                 IsRequired = true,
///                 DefaultValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecDefaultValueArgs
///                 {
///                     StringListValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecDefaultValueStringListValueArgs
///                     {
///                         Values = new[]
///                         {
///                             "us-central1",
///                             "us-east1",
///                             "us-west1",
///                         },
///                     },
///                 },
///                 Validation = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationArgs
///                 {
///                     AllowedValues = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesArgs
///                     {
///                         Values = new[]
///                         {
///                             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueArgs
///                             {
///                                 StringListValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueStringListValueArgs
///                                 {
///                                     Values = new[]
///                                     {
///                                         "us-central1",
///                                         "us-east1",
///                                     },
///                                 },
///                             },
///                             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueArgs
///                             {
///                                 StringListValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueStringListValueArgs
///                                 {
///                                     Values = new[]
///                                     {
///                                         "us-west1",
///                                         "us-west2",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecArgs
///             {
///                 Name = "environment_type",
///                 DisplayName = "Environment Type",
///                 Description = "The type of environment",
///                 ValueType = "STRING",
///                 IsRequired = true,
///                 DefaultValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecDefaultValueArgs
///                 {
///                     StringValue = "production",
///                 },
///                 Validation = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationArgs
///                 {
///                     AllowedValues = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesArgs
///                     {
///                         Values = new[]
///                         {
///                             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueArgs
///                             {
///                                 StringValue = "production",
///                             },
///                             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueArgs
///                             {
///                                 StringValue = "staging",
///                             },
///                             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueArgs
///                             {
///                                 NumberValue = 1.0,
///                             },
///                         },
///                     },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudsecuritycompliance"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudsecuritycompliance.NewCloudControl(ctx, "example", &cloudsecuritycompliance.CloudControlArgs{
/// 			Parent:         pulumi.Sprintf("projects/%v", project.Number),
/// 			Location:       pulumi.String("global"),
/// 			CloudControlId: pulumi.String("example-cloudcontrol"),
/// 			DisplayName:    pulumi.String("TF test CloudControl Name"),
/// 			Description:    pulumi.String("A test cloud control for security compliance"),
/// 			Categories: pulumi.StringArray{
/// 				pulumi.String("CC_CATEGORY_INFRASTRUCTURE"),
/// 			},
/// 			Severity:         pulumi.String("HIGH"),
/// 			FindingCategory:  pulumi.String("SECURITY_POLICY"),
/// 			RemediationSteps: pulumi.String("Review and update the security configuration according to best practices."),
/// 			SupportedCloudProviders: pulumi.StringArray{
/// 				pulumi.String("GCP"),
/// 			},
/// 			Rules: cloudsecuritycompliance.CloudControlRuleArray{
/// 				&cloudsecuritycompliance.CloudControlRuleArgs{
/// 					Description: pulumi.String("Ensure compute instances have secure boot enabled"),
/// 					RuleActionTypes: pulumi.StringArray{
/// 						pulumi.String("RULE_ACTION_TYPE_DETECTIVE"),
/// 					},
/// 					CelExpression: &cloudsecuritycompliance.CloudControlRuleCelExpressionArgs{
/// 						Expression: pulumi.String("resource.data.shieldedInstanceConfig.enableSecureBoot == true"),
/// 						ResourceTypesValues: &cloudsecuritycompliance.CloudControlRuleCelExpressionResourceTypesValuesArgs{
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("compute.googleapis.com/Instance"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ParameterSpecs: cloudsecuritycompliance.CloudControlParameterSpecArray{
/// 				&cloudsecuritycompliance.CloudControlParameterSpecArgs{
/// 					Name:        pulumi.String("location"),
/// 					DisplayName: pulumi.String("Resource Location"),
/// 					Description: pulumi.String("The location where the resource should be deployed"),
/// 					ValueType:   pulumi.String("STRING"),
/// 					IsRequired:  pulumi.Bool(true),
/// 					DefaultValue: &cloudsecuritycompliance.CloudControlParameterSpecDefaultValueArgs{
/// 						StringValue: pulumi.String("us-central1"),
/// 					},
/// 					Validation: &cloudsecuritycompliance.CloudControlParameterSpecValidationArgs{
/// 						RegexpPattern: &cloudsecuritycompliance.CloudControlParameterSpecValidationRegexpPatternArgs{
/// 							Pattern: pulumi.String("^[a-z]+-[a-z]+[0-9]$"),
/// 						},
/// 					},
/// 				},
/// 				&cloudsecuritycompliance.CloudControlParameterSpecArgs{
/// 					Name:        pulumi.String("enable_secure_boot"),
/// 					DisplayName: pulumi.String("Enable Secure Boot"),
/// 					Description: pulumi.String("Whether to enable secure boot for instances"),
/// 					ValueType:   pulumi.String("BOOLEAN"),
/// 					IsRequired:  pulumi.Bool(true),
/// 					DefaultValue: &cloudsecuritycompliance.CloudControlParameterSpecDefaultValueArgs{
/// 						BoolValue: pulumi.Bool(true),
/// 					},
/// 					SubstitutionRules: cloudsecuritycompliance.CloudControlParameterSpecSubstitutionRuleArray{
/// 						&cloudsecuritycompliance.CloudControlParameterSpecSubstitutionRuleArgs{
/// 							AttributeSubstitutionRule: &cloudsecuritycompliance.CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRuleArgs{
/// 								Attribute: pulumi.String("rules[0].cel_expression.expression"),
/// 							},
/// 						},
/// 					},
/// 					Validation: &cloudsecuritycompliance.CloudControlParameterSpecValidationArgs{
/// 						AllowedValues: &cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesArgs{
/// 							Values: cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArray{
/// 								&cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArgs{
/// 									BoolValue: pulumi.Bool(true),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&cloudsecuritycompliance.CloudControlParameterSpecArgs{
/// 					Name:        pulumi.String("max_instances"),
/// 					DisplayName: pulumi.String("Maximum Instances"),
/// 					Description: pulumi.String("Maximum number of instances allowed"),
/// 					ValueType:   pulumi.String("NUMBER"),
/// 					IsRequired:  pulumi.Bool(false),
/// 					DefaultValue: &cloudsecuritycompliance.CloudControlParameterSpecDefaultValueArgs{
/// 						NumberValue: pulumi.Float64(10),
/// 					},
/// 					SubstitutionRules: cloudsecuritycompliance.CloudControlParameterSpecSubstitutionRuleArray{
/// 						&cloudsecuritycompliance.CloudControlParameterSpecSubstitutionRuleArgs{
/// 							PlaceholderSubstitutionRule: &cloudsecuritycompliance.CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRuleArgs{
/// 								Attribute: pulumi.String("rules[0].description"),
/// 							},
/// 						},
/// 					},
/// 					Validation: &cloudsecuritycompliance.CloudControlParameterSpecValidationArgs{
/// 						IntRange: &cloudsecuritycompliance.CloudControlParameterSpecValidationIntRangeArgs{
/// 							Min: pulumi.String("1"),
/// 							Max: pulumi.String("100"),
/// 						},
/// 					},
/// 				},
/// 				&cloudsecuritycompliance.CloudControlParameterSpecArgs{
/// 					Name:        pulumi.String("allowed_regions"),
/// 					DisplayName: pulumi.String("Allowed Regions"),
/// 					Description: pulumi.String("List of regions where resources can be deployed"),
/// 					ValueType:   pulumi.String("STRINGLIST"),
/// 					IsRequired:  pulumi.Bool(true),
/// 					DefaultValue: &cloudsecuritycompliance.CloudControlParameterSpecDefaultValueArgs{
/// 						StringListValue: &cloudsecuritycompliance.CloudControlParameterSpecDefaultValueStringListValueArgs{
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("us-central1"),
/// 								pulumi.String("us-east1"),
/// 								pulumi.String("us-west1"),
/// 							},
/// 						},
/// 					},
/// 					Validation: &cloudsecuritycompliance.CloudControlParameterSpecValidationArgs{
/// 						AllowedValues: &cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesArgs{
/// 							Values: cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArray{
/// 								&cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArgs{
/// 									StringListValue: &cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueStringListValueArgs{
/// 										Values: pulumi.StringArray{
/// 											pulumi.String("us-central1"),
/// 											pulumi.String("us-east1"),
/// 										},
/// 									},
/// 								},
/// 								&cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArgs{
/// 									StringListValue: &cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueStringListValueArgs{
/// 										Values: pulumi.StringArray{
/// 											pulumi.String("us-west1"),
/// 											pulumi.String("us-west2"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&cloudsecuritycompliance.CloudControlParameterSpecArgs{
/// 					Name:        pulumi.String("environment_type"),
/// 					DisplayName: pulumi.String("Environment Type"),
/// 					Description: pulumi.String("The type of environment"),
/// 					ValueType:   pulumi.String("STRING"),
/// 					IsRequired:  pulumi.Bool(true),
/// 					DefaultValue: &cloudsecuritycompliance.CloudControlParameterSpecDefaultValueArgs{
/// 						StringValue: pulumi.String("production"),
/// 					},
/// 					Validation: &cloudsecuritycompliance.CloudControlParameterSpecValidationArgs{
/// 						AllowedValues: &cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesArgs{
/// 							Values: cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArray{
/// 								&cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArgs{
/// 									StringValue: pulumi.String("production"),
/// 								},
/// 								&cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArgs{
/// 									StringValue: pulumi.String("staging"),
/// 								},
/// 								&cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArgs{
/// 									NumberValue: pulumi.Float64(1),
/// 								},
/// 							},
/// 						},
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_cloudsecuritycompliance_cloudcontrol" "example" {
///   parent                    ="projects/${data.gcp_organizations_getproject.project.number}"
///   location                  = "global"
///   cloud_control_id          = "example-cloudcontrol"
///   display_name              = "TF test CloudControl Name"
///   description               = "A test cloud control for security compliance"
///   categories                = ["CC_CATEGORY_INFRASTRUCTURE"]
///   severity                  = "HIGH"
///   finding_category          = "SECURITY_POLICY"
///   remediation_steps         = "Review and update the security configuration according to best practices."
///   supported_cloud_providers = ["GCP"]
///   rules {
///     description       = "Ensure compute instances have secure boot enabled"
///     rule_action_types = ["RULE_ACTION_TYPE_DETECTIVE"]
///     cel_expression = {
///       expression = "resource.data.shieldedInstanceConfig.enableSecureBoot == true"
///       resource_types_values = {
///         values = ["compute.googleapis.com/Instance"]
///       }
///     }
///   }
///   parameter_specs {
///     name         = "location"
///     display_name = "Resource Location"
///     description  = "The location where the resource should be deployed"
///     value_type   = "STRING"
///     is_required  = true
///     default_value = {
///       string_value = "us-central1"
///     }
///     validation = {
///       regexp_pattern = {
///         pattern = "^[a-z]+-[a-z]+[0-9]$"
///       }
///     }
///   }
///   parameter_specs {
///     name         = "enable_secure_boot"
///     display_name = "Enable Secure Boot"
///     description  = "Whether to enable secure boot for instances"
///     value_type   = "BOOLEAN"
///     is_required  = true
///     default_value = {
///       bool_value = true
///     }
///     substitution_rules {
///       attribute_substitution_rule = {
///         attribute = "rules[0].cel_expression.expression"
///       }
///     }
///     validation = {
///       allowed_values = {
///         values = [{
///           "boolValue" = true
///         }]
///       }
///     }
///   }
///   parameter_specs {
///     name         = "max_instances"
///     display_name = "Maximum Instances"
///     description  = "Maximum number of instances allowed"
///     value_type   = "NUMBER"
///     is_required  = false
///     default_value = {
///       number_value = 10
///     }
///     substitution_rules {
///       placeholder_substitution_rule = {
///         attribute = "rules[0].description"
///       }
///     }
///     validation = {
///       int_range = {
///         min = "1"
///         max = "100"
///       }
///     }
///   }
///   parameter_specs {
///     name         = "allowed_regions"
///     display_name = "Allowed Regions"
///     description  = "List of regions where resources can be deployed"
///     value_type   = "STRINGLIST"
///     is_required  = true
///     default_value = {
///       string_list_value = {
///         values = ["us-central1", "us-east1", "us-west1"]
///       }
///     }
///     validation = {
///       allowed_values = {
///         values = [{
///           "stringListValue" = {
///             "values" = ["us-central1", "us-east1"]
///           }
///           }, {
///           "stringListValue" = {
///             "values" = ["us-west1", "us-west2"]
///           }
///         }]
///       }
///     }
///   }
///   parameter_specs {
///     name         = "environment_type"
///     display_name = "Environment Type"
///     description  = "The type of environment"
///     value_type   = "STRING"
///     is_required  = true
///     default_value = {
///       string_value = "production"
///     }
///     validation = {
///       allowed_values = {
///         values = [{
///           "stringValue" = "production"
///           }, {
///           "stringValue" = "staging"
///           }, {
///           "numberValue" = 1
///         }]
///       }
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.CloudControl;
/// import com.pulumi.gcp.cloudsecuritycompliance.CloudControlArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlRuleArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlRuleCelExpressionArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlRuleCelExpressionResourceTypesValuesArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecDefaultValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecValidationArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecValidationRegexpPatternArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecSubstitutionRuleArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRuleArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecValidationAllowedValuesArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecValidationAllowedValuesValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRuleArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecValidationIntRangeArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecDefaultValueStringListValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecValidationAllowedValuesValueStringListValueArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var example = new CloudControl("example", CloudControlArgs.builder()
///             .parent(String.format("projects/%s", project.number()))
///             .location("global")
///             .cloudControlId("example-cloudcontrol")
///             .displayName("TF test CloudControl Name")
///             .description("A test cloud control for security compliance")
///             .categories("CC_CATEGORY_INFRASTRUCTURE")
///             .severity("HIGH")
///             .findingCategory("SECURITY_POLICY")
///             .remediationSteps("Review and update the security configuration according to best practices.")
///             .supportedCloudProviders("GCP")
///             .rules(CloudControlRuleArgs.builder()
///                 .description("Ensure compute instances have secure boot enabled")
///                 .ruleActionTypes("RULE_ACTION_TYPE_DETECTIVE")
///                 .celExpression(CloudControlRuleCelExpressionArgs.builder()
///                     .expression("resource.data.shieldedInstanceConfig.enableSecureBoot == true")
///                     .resourceTypesValues(CloudControlRuleCelExpressionResourceTypesValuesArgs.builder()
///                         .values("compute.googleapis.com/Instance")
///                         .build())
///                     .build())
///                 .build())
///             .parameterSpecs(
///                 CloudControlParameterSpecArgs.builder()
///                     .name("location")
///                     .displayName("Resource Location")
///                     .description("The location where the resource should be deployed")
///                     .valueType("STRING")
///                     .isRequired(true)
///                     .defaultValue(CloudControlParameterSpecDefaultValueArgs.builder()
///                         .stringValue("us-central1")
///                         .build())
///                     .validation(CloudControlParameterSpecValidationArgs.builder()
///                         .regexpPattern(CloudControlParameterSpecValidationRegexpPatternArgs.builder()
///                             .pattern("^[a-z]+-[a-z]+[0-9]$")
///                             .build())
///                         .build())
///                     .build(),
///                 CloudControlParameterSpecArgs.builder()
///                     .name("enable_secure_boot")
///                     .displayName("Enable Secure Boot")
///                     .description("Whether to enable secure boot for instances")
///                     .valueType("BOOLEAN")
///                     .isRequired(true)
///                     .defaultValue(CloudControlParameterSpecDefaultValueArgs.builder()
///                         .boolValue(true)
///                         .build())
///                     .substitutionRules(CloudControlParameterSpecSubstitutionRuleArgs.builder()
///                         .attributeSubstitutionRule(CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRuleArgs.builder()
///                             .attribute("rules[0].cel_expression.expression")
///                             .build())
///                         .build())
///                     .validation(CloudControlParameterSpecValidationArgs.builder()
///                         .allowedValues(CloudControlParameterSpecValidationAllowedValuesArgs.builder()
///                             .values(CloudControlParameterSpecValidationAllowedValuesValueArgs.builder()
///                                 .boolValue(true)
///                                 .build())
///                             .build())
///                         .build())
///                     .build(),
///                 CloudControlParameterSpecArgs.builder()
///                     .name("max_instances")
///                     .displayName("Maximum Instances")
///                     .description("Maximum number of instances allowed")
///                     .valueType("NUMBER")
///                     .isRequired(false)
///                     .defaultValue(CloudControlParameterSpecDefaultValueArgs.builder()
///                         .numberValue(10.0)
///                         .build())
///                     .substitutionRules(CloudControlParameterSpecSubstitutionRuleArgs.builder()
///                         .placeholderSubstitutionRule(CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRuleArgs.builder()
///                             .attribute("rules[0].description")
///                             .build())
///                         .build())
///                     .validation(CloudControlParameterSpecValidationArgs.builder()
///                         .intRange(CloudControlParameterSpecValidationIntRangeArgs.builder()
///                             .min("1")
///                             .max("100")
///                             .build())
///                         .build())
///                     .build(),
///                 CloudControlParameterSpecArgs.builder()
///                     .name("allowed_regions")
///                     .displayName("Allowed Regions")
///                     .description("List of regions where resources can be deployed")
///                     .valueType("STRINGLIST")
///                     .isRequired(true)
///                     .defaultValue(CloudControlParameterSpecDefaultValueArgs.builder()
///                         .stringListValue(CloudControlParameterSpecDefaultValueStringListValueArgs.builder()
///                             .values(
///                                 "us-central1",
///                                 "us-east1",
///                                 "us-west1")
///                             .build())
///                         .build())
///                     .validation(CloudControlParameterSpecValidationArgs.builder()
///                         .allowedValues(CloudControlParameterSpecValidationAllowedValuesArgs.builder()
///                             .values(
///                                 CloudControlParameterSpecValidationAllowedValuesValueArgs.builder()
///                                     .stringListValue(CloudControlParameterSpecValidationAllowedValuesValueStringListValueArgs.builder()
///                                         .values(
///                                             "us-central1",
///                                             "us-east1")
///                                         .build())
///                                     .build(),
///                                 CloudControlParameterSpecValidationAllowedValuesValueArgs.builder()
///                                     .stringListValue(CloudControlParameterSpecValidationAllowedValuesValueStringListValueArgs.builder()
///                                         .values(
///                                             "us-west1",
///                                             "us-west2")
///                                         .build())
///                                     .build())
///                             .build())
///                         .build())
///                     .build(),
///                 CloudControlParameterSpecArgs.builder()
///                     .name("environment_type")
///                     .displayName("Environment Type")
///                     .description("The type of environment")
///                     .valueType("STRING")
///                     .isRequired(true)
///                     .defaultValue(CloudControlParameterSpecDefaultValueArgs.builder()
///                         .stringValue("production")
///                         .build())
///                     .validation(CloudControlParameterSpecValidationArgs.builder()
///                         .allowedValues(CloudControlParameterSpecValidationAllowedValuesArgs.builder()
///                             .values(
///                                 CloudControlParameterSpecValidationAllowedValuesValueArgs.builder()
///                                     .stringValue("production")
///                                     .build(),
///                                 CloudControlParameterSpecValidationAllowedValuesValueArgs.builder()
///                                     .stringValue("staging")
///                                     .build(),
///                                 CloudControlParameterSpecValidationAllowedValuesValueArgs.builder()
///                                     .numberValue(1.0)
///                                     .build())
///                             .build())
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:cloudsecuritycompliance:CloudControl
///     properties:
///       parent: projects/${project.number}
///       location: global
///       cloudControlId: example-cloudcontrol
///       displayName: TF test CloudControl Name
///       description: A test cloud control for security compliance
///       categories:
///         - CC_CATEGORY_INFRASTRUCTURE
///       severity: HIGH
///       findingCategory: SECURITY_POLICY
///       remediationSteps: Review and update the security configuration according to best practices.
///       supportedCloudProviders:
///         - GCP
///       rules:
///         - description: Ensure compute instances have secure boot enabled
///           ruleActionTypes:
///             - RULE_ACTION_TYPE_DETECTIVE
///           celExpression:
///             expression: resource.data.shieldedInstanceConfig.enableSecureBoot == true
///             resourceTypesValues:
///               values:
///                 - compute.googleapis.com/Instance
///       parameterSpecs:
///         - name: location
///           displayName: Resource Location
///           description: The location where the resource should be deployed
///           valueType: STRING
///           isRequired: true
///           defaultValue:
///             stringValue: us-central1
///           validation:
///             regexpPattern:
///               pattern: ^[a-z]+-[a-z]+[0-9]$
///         - name: enable_secure_boot
///           displayName: Enable Secure Boot
///           description: Whether to enable secure boot for instances
///           valueType: BOOLEAN
///           isRequired: true
///           defaultValue:
///             boolValue: true
///           substitutionRules:
///             - attributeSubstitutionRule:
///                 attribute: rules[0].cel_expression.expression
///           validation:
///             allowedValues:
///               values:
///                 - boolValue: true
///         - name: max_instances
///           displayName: Maximum Instances
///           description: Maximum number of instances allowed
///           valueType: NUMBER
///           isRequired: false
///           defaultValue:
///             numberValue: 10
///           substitutionRules:
///             - placeholderSubstitutionRule:
///                 attribute: rules[0].description
///           validation:
///             intRange:
///               min: '1'
///               max: '100'
///         - name: allowed_regions
///           displayName: Allowed Regions
///           description: List of regions where resources can be deployed
///           valueType: STRINGLIST
///           isRequired: true
///           defaultValue:
///             stringListValue:
///               values:
///                 - us-central1
///                 - us-east1
///                 - us-west1
///           validation:
///             allowedValues:
///               values:
///                 - stringListValue:
///                     values:
///                       - us-central1
///                       - us-east1
///                 - stringListValue:
///                     values:
///                       - us-west1
///                       - us-west2
///         - name: environment_type
///           displayName: Environment Type
///           description: The type of environment
///           valueType: STRING
///           isRequired: true
///           defaultValue:
///             stringValue: production
///           validation:
///             allowedValues:
///               values:
///                 - stringValue: production
///                 - stringValue: staging
///                 - numberValue: 1
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Cloudsecuritycompliance Cloudcontrol Org Basic Backward
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.cloudsecuritycompliance.CloudControl("example", {
///     organization: "123456789",
///     location: "global",
///     cloudControlId: "example-cloudcontrol",
///     displayName: "TF test CloudControl Name",
///     description: "A test cloud control for security compliance",
///     categories: ["CC_CATEGORY_INFRASTRUCTURE"],
///     severity: "HIGH",
///     findingCategory: "SECURITY_POLICY",
///     remediationSteps: "Review and update the security configuration according to best practices.",
///     supportedCloudProviders: ["GCP"],
///     rules: [{
///         description: "Ensure compute instances have secure boot enabled",
///         ruleActionTypes: ["RULE_ACTION_TYPE_DETECTIVE"],
///         celExpression: {
///             expression: "resource.data.shieldedInstanceConfig.enableSecureBoot == true",
///             resourceTypesValues: {
///                 values: ["compute.googleapis.com/Instance"],
///             },
///         },
///     }],
///     parameterSpecs: [
///         {
///             name: "location",
///             displayName: "Resource Location",
///             description: "The location where the resource should be deployed",
///             valueType: "STRING",
///             isRequired: true,
///             defaultValue: {
///                 stringValue: "us-central1",
///             },
///             validation: {
///                 regexpPattern: {
///                     pattern: "^[a-z]+-[a-z]+[0-9]$",
///                 },
///             },
///         },
///         {
///             name: "enable_secure_boot",
///             displayName: "Enable Secure Boot",
///             description: "Whether to enable secure boot for instances",
///             valueType: "BOOLEAN",
///             isRequired: true,
///             defaultValue: {
///                 boolValue: true,
///             },
///             substitutionRules: [{
///                 attributeSubstitutionRule: {
///                     attribute: "rules[0].cel_expression.expression",
///                 },
///             }],
///             validation: {
///                 allowedValues: {
///                     values: [{
///                         boolValue: true,
///                     }],
///                 },
///             },
///         },
///         {
///             name: "max_instances",
///             displayName: "Maximum Instances",
///             description: "Maximum number of instances allowed",
///             valueType: "NUMBER",
///             isRequired: false,
///             defaultValue: {
///                 numberValue: 10,
///             },
///             substitutionRules: [{
///                 placeholderSubstitutionRule: {
///                     attribute: "rules[0].description",
///                 },
///             }],
///             validation: {
///                 intRange: {
///                     min: "1",
///                     max: "100",
///                 },
///             },
///         },
///         {
///             name: "allowed_regions",
///             displayName: "Allowed Regions",
///             description: "List of regions where resources can be deployed",
///             valueType: "STRINGLIST",
///             isRequired: true,
///             defaultValue: {
///                 stringListValue: {
///                     values: [
///                         "us-central1",
///                         "us-east1",
///                         "us-west1",
///                     ],
///                 },
///             },
///             validation: {
///                 allowedValues: {
///                     values: [
///                         {
///                             stringListValue: {
///                                 values: [
///                                     "us-central1",
///                                     "us-east1",
///                                 ],
///                             },
///                         },
///                         {
///                             stringListValue: {
///                                 values: [
///                                     "us-west1",
///                                     "us-west2",
///                                 ],
///                             },
///                         },
///                     ],
///                 },
///             },
///         },
///         {
///             name: "environment_type",
///             displayName: "Environment Type",
///             description: "The type of environment",
///             valueType: "STRING",
///             isRequired: true,
///             defaultValue: {
///                 stringValue: "production",
///             },
///             validation: {
///                 allowedValues: {
///                     values: [
///                         {
///                             stringValue: "production",
///                         },
///                         {
///                             stringValue: "staging",
///                         },
///                         {
///                             numberValue: 1,
///                         },
///                     ],
///                 },
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.cloudsecuritycompliance.CloudControl("example",
///     organization="123456789",
///     location="global",
///     cloud_control_id="example-cloudcontrol",
///     display_name="TF test CloudControl Name",
///     description="A test cloud control for security compliance",
///     categories=["CC_CATEGORY_INFRASTRUCTURE"],
///     severity="HIGH",
///     finding_category="SECURITY_POLICY",
///     remediation_steps="Review and update the security configuration according to best practices.",
///     supported_cloud_providers=["GCP"],
///     rules=[{
///         "description": "Ensure compute instances have secure boot enabled",
///         "rule_action_types": ["RULE_ACTION_TYPE_DETECTIVE"],
///         "cel_expression": {
///             "expression": "resource.data.shieldedInstanceConfig.enableSecureBoot == true",
///             "resource_types_values": {
///                 "values": ["compute.googleapis.com/Instance"],
///             },
///         },
///     }],
///     parameter_specs=[
///         {
///             "name": "location",
///             "display_name": "Resource Location",
///             "description": "The location where the resource should be deployed",
///             "value_type": "STRING",
///             "is_required": True,
///             "default_value": {
///                 "string_value": "us-central1",
///             },
///             "validation": {
///                 "regexp_pattern": {
///                     "pattern": "^[a-z]+-[a-z]+[0-9]$",
///                 },
///             },
///         },
///         {
///             "name": "enable_secure_boot",
///             "display_name": "Enable Secure Boot",
///             "description": "Whether to enable secure boot for instances",
///             "value_type": "BOOLEAN",
///             "is_required": True,
///             "default_value": {
///                 "bool_value": True,
///             },
///             "substitution_rules": [{
///                 "attribute_substitution_rule": {
///                     "attribute": "rules[0].cel_expression.expression",
///                 },
///             }],
///             "validation": {
///                 "allowed_values": {
///                     "values": [{
///                         "bool_value": True,
///                     }],
///                 },
///             },
///         },
///         {
///             "name": "max_instances",
///             "display_name": "Maximum Instances",
///             "description": "Maximum number of instances allowed",
///             "value_type": "NUMBER",
///             "is_required": False,
///             "default_value": {
///                 "number_value": float(10),
///             },
///             "substitution_rules": [{
///                 "placeholder_substitution_rule": {
///                     "attribute": "rules[0].description",
///                 },
///             }],
///             "validation": {
///                 "int_range": {
///                     "min": "1",
///                     "max": "100",
///                 },
///             },
///         },
///         {
///             "name": "allowed_regions",
///             "display_name": "Allowed Regions",
///             "description": "List of regions where resources can be deployed",
///             "value_type": "STRINGLIST",
///             "is_required": True,
///             "default_value": {
///                 "string_list_value": {
///                     "values": [
///                         "us-central1",
///                         "us-east1",
///                         "us-west1",
///                     ],
///                 },
///             },
///             "validation": {
///                 "allowed_values": {
///                     "values": [
///                         {
///                             "string_list_value": {
///                                 "values": [
///                                     "us-central1",
///                                     "us-east1",
///                                 ],
///                             },
///                         },
///                         {
///                             "string_list_value": {
///                                 "values": [
///                                     "us-west1",
///                                     "us-west2",
///                                 ],
///                             },
///                         },
///                     ],
///                 },
///             },
///         },
///         {
///             "name": "environment_type",
///             "display_name": "Environment Type",
///             "description": "The type of environment",
///             "value_type": "STRING",
///             "is_required": True,
///             "default_value": {
///                 "string_value": "production",
///             },
///             "validation": {
///                 "allowed_values": {
///                     "values": [
///                         {
///                             "string_value": "production",
///                         },
///                         {
///                             "string_value": "staging",
///                         },
///                         {
///                             "number_value": float(1),
///                         },
///                     ],
///                 },
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.CloudSecurityCompliance.CloudControl("example", new()
///     {
///         Organization = "123456789",
///         Location = "global",
///         CloudControlId = "example-cloudcontrol",
///         DisplayName = "TF test CloudControl Name",
///         Description = "A test cloud control for security compliance",
///         Categories = new[]
///         {
///             "CC_CATEGORY_INFRASTRUCTURE",
///         },
///         Severity = "HIGH",
///         FindingCategory = "SECURITY_POLICY",
///         RemediationSteps = "Review and update the security configuration according to best practices.",
///         SupportedCloudProviders = new[]
///         {
///             "GCP",
///         },
///         Rules = new[]
///         {
///             new Gcp.CloudSecurityCompliance.Inputs.CloudControlRuleArgs
///             {
///                 Description = "Ensure compute instances have secure boot enabled",
///                 RuleActionTypes = new[]
///                 {
///                     "RULE_ACTION_TYPE_DETECTIVE",
///                 },
///                 CelExpression = new Gcp.CloudSecurityCompliance.Inputs.CloudControlRuleCelExpressionArgs
///                 {
///                     Expression = "resource.data.shieldedInstanceConfig.enableSecureBoot == true",
///                     ResourceTypesValues = new Gcp.CloudSecurityCompliance.Inputs.CloudControlRuleCelExpressionResourceTypesValuesArgs
///                     {
///                         Values = new[]
///                         {
///                             "compute.googleapis.com/Instance",
///                         },
///                     },
///                 },
///             },
///         },
///         ParameterSpecs = new[]
///         {
///             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecArgs
///             {
///                 Name = "location",
///                 DisplayName = "Resource Location",
///                 Description = "The location where the resource should be deployed",
///                 ValueType = "STRING",
///                 IsRequired = true,
///                 DefaultValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecDefaultValueArgs
///                 {
///                     StringValue = "us-central1",
///                 },
///                 Validation = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationArgs
///                 {
///                     RegexpPattern = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationRegexpPatternArgs
///                     {
///                         Pattern = "^[a-z]+-[a-z]+[0-9]$",
///                     },
///                 },
///             },
///             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecArgs
///             {
///                 Name = "enable_secure_boot",
///                 DisplayName = "Enable Secure Boot",
///                 Description = "Whether to enable secure boot for instances",
///                 ValueType = "BOOLEAN",
///                 IsRequired = true,
///                 DefaultValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecDefaultValueArgs
///                 {
///                     BoolValue = true,
///                 },
///                 SubstitutionRules = new[]
///                 {
///                     new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecSubstitutionRuleArgs
///                     {
///                         AttributeSubstitutionRule = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRuleArgs
///                         {
///                             Attribute = "rules[0].cel_expression.expression",
///                         },
///                     },
///                 },
///                 Validation = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationArgs
///                 {
///                     AllowedValues = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesArgs
///                     {
///                         Values = new[]
///                         {
///                             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueArgs
///                             {
///                                 BoolValue = true,
///                             },
///                         },
///                     },
///                 },
///             },
///             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecArgs
///             {
///                 Name = "max_instances",
///                 DisplayName = "Maximum Instances",
///                 Description = "Maximum number of instances allowed",
///                 ValueType = "NUMBER",
///                 IsRequired = false,
///                 DefaultValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecDefaultValueArgs
///                 {
///                     NumberValue = 10.0,
///                 },
///                 SubstitutionRules = new[]
///                 {
///                     new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecSubstitutionRuleArgs
///                     {
///                         PlaceholderSubstitutionRule = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRuleArgs
///                         {
///                             Attribute = "rules[0].description",
///                         },
///                     },
///                 },
///                 Validation = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationArgs
///                 {
///                     IntRange = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationIntRangeArgs
///                     {
///                         Min = "1",
///                         Max = "100",
///                     },
///                 },
///             },
///             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecArgs
///             {
///                 Name = "allowed_regions",
///                 DisplayName = "Allowed Regions",
///                 Description = "List of regions where resources can be deployed",
///                 ValueType = "STRINGLIST",
///                 IsRequired = true,
///                 DefaultValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecDefaultValueArgs
///                 {
///                     StringListValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecDefaultValueStringListValueArgs
///                     {
///                         Values = new[]
///                         {
///                             "us-central1",
///                             "us-east1",
///                             "us-west1",
///                         },
///                     },
///                 },
///                 Validation = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationArgs
///                 {
///                     AllowedValues = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesArgs
///                     {
///                         Values = new[]
///                         {
///                             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueArgs
///                             {
///                                 StringListValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueStringListValueArgs
///                                 {
///                                     Values = new[]
///                                     {
///                                         "us-central1",
///                                         "us-east1",
///                                     },
///                                 },
///                             },
///                             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueArgs
///                             {
///                                 StringListValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueStringListValueArgs
///                                 {
///                                     Values = new[]
///                                     {
///                                         "us-west1",
///                                         "us-west2",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecArgs
///             {
///                 Name = "environment_type",
///                 DisplayName = "Environment Type",
///                 Description = "The type of environment",
///                 ValueType = "STRING",
///                 IsRequired = true,
///                 DefaultValue = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecDefaultValueArgs
///                 {
///                     StringValue = "production",
///                 },
///                 Validation = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationArgs
///                 {
///                     AllowedValues = new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesArgs
///                     {
///                         Values = new[]
///                         {
///                             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueArgs
///                             {
///                                 StringValue = "production",
///                             },
///                             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueArgs
///                             {
///                                 StringValue = "staging",
///                             },
///                             new Gcp.CloudSecurityCompliance.Inputs.CloudControlParameterSpecValidationAllowedValuesValueArgs
///                             {
///                                 NumberValue = 1.0,
///                             },
///                         },
///                     },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudsecuritycompliance"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudsecuritycompliance.NewCloudControl(ctx, "example", &cloudsecuritycompliance.CloudControlArgs{
/// 			Organization:   pulumi.String("123456789"),
/// 			Location:       pulumi.String("global"),
/// 			CloudControlId: pulumi.String("example-cloudcontrol"),
/// 			DisplayName:    pulumi.String("TF test CloudControl Name"),
/// 			Description:    pulumi.String("A test cloud control for security compliance"),
/// 			Categories: pulumi.StringArray{
/// 				pulumi.String("CC_CATEGORY_INFRASTRUCTURE"),
/// 			},
/// 			Severity:         pulumi.String("HIGH"),
/// 			FindingCategory:  pulumi.String("SECURITY_POLICY"),
/// 			RemediationSteps: pulumi.String("Review and update the security configuration according to best practices."),
/// 			SupportedCloudProviders: pulumi.StringArray{
/// 				pulumi.String("GCP"),
/// 			},
/// 			Rules: cloudsecuritycompliance.CloudControlRuleArray{
/// 				&cloudsecuritycompliance.CloudControlRuleArgs{
/// 					Description: pulumi.String("Ensure compute instances have secure boot enabled"),
/// 					RuleActionTypes: pulumi.StringArray{
/// 						pulumi.String("RULE_ACTION_TYPE_DETECTIVE"),
/// 					},
/// 					CelExpression: &cloudsecuritycompliance.CloudControlRuleCelExpressionArgs{
/// 						Expression: pulumi.String("resource.data.shieldedInstanceConfig.enableSecureBoot == true"),
/// 						ResourceTypesValues: &cloudsecuritycompliance.CloudControlRuleCelExpressionResourceTypesValuesArgs{
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("compute.googleapis.com/Instance"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ParameterSpecs: cloudsecuritycompliance.CloudControlParameterSpecArray{
/// 				&cloudsecuritycompliance.CloudControlParameterSpecArgs{
/// 					Name:        pulumi.String("location"),
/// 					DisplayName: pulumi.String("Resource Location"),
/// 					Description: pulumi.String("The location where the resource should be deployed"),
/// 					ValueType:   pulumi.String("STRING"),
/// 					IsRequired:  pulumi.Bool(true),
/// 					DefaultValue: &cloudsecuritycompliance.CloudControlParameterSpecDefaultValueArgs{
/// 						StringValue: pulumi.String("us-central1"),
/// 					},
/// 					Validation: &cloudsecuritycompliance.CloudControlParameterSpecValidationArgs{
/// 						RegexpPattern: &cloudsecuritycompliance.CloudControlParameterSpecValidationRegexpPatternArgs{
/// 							Pattern: pulumi.String("^[a-z]+-[a-z]+[0-9]$"),
/// 						},
/// 					},
/// 				},
/// 				&cloudsecuritycompliance.CloudControlParameterSpecArgs{
/// 					Name:        pulumi.String("enable_secure_boot"),
/// 					DisplayName: pulumi.String("Enable Secure Boot"),
/// 					Description: pulumi.String("Whether to enable secure boot for instances"),
/// 					ValueType:   pulumi.String("BOOLEAN"),
/// 					IsRequired:  pulumi.Bool(true),
/// 					DefaultValue: &cloudsecuritycompliance.CloudControlParameterSpecDefaultValueArgs{
/// 						BoolValue: pulumi.Bool(true),
/// 					},
/// 					SubstitutionRules: cloudsecuritycompliance.CloudControlParameterSpecSubstitutionRuleArray{
/// 						&cloudsecuritycompliance.CloudControlParameterSpecSubstitutionRuleArgs{
/// 							AttributeSubstitutionRule: &cloudsecuritycompliance.CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRuleArgs{
/// 								Attribute: pulumi.String("rules[0].cel_expression.expression"),
/// 							},
/// 						},
/// 					},
/// 					Validation: &cloudsecuritycompliance.CloudControlParameterSpecValidationArgs{
/// 						AllowedValues: &cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesArgs{
/// 							Values: cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArray{
/// 								&cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArgs{
/// 									BoolValue: pulumi.Bool(true),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&cloudsecuritycompliance.CloudControlParameterSpecArgs{
/// 					Name:        pulumi.String("max_instances"),
/// 					DisplayName: pulumi.String("Maximum Instances"),
/// 					Description: pulumi.String("Maximum number of instances allowed"),
/// 					ValueType:   pulumi.String("NUMBER"),
/// 					IsRequired:  pulumi.Bool(false),
/// 					DefaultValue: &cloudsecuritycompliance.CloudControlParameterSpecDefaultValueArgs{
/// 						NumberValue: pulumi.Float64(10),
/// 					},
/// 					SubstitutionRules: cloudsecuritycompliance.CloudControlParameterSpecSubstitutionRuleArray{
/// 						&cloudsecuritycompliance.CloudControlParameterSpecSubstitutionRuleArgs{
/// 							PlaceholderSubstitutionRule: &cloudsecuritycompliance.CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRuleArgs{
/// 								Attribute: pulumi.String("rules[0].description"),
/// 							},
/// 						},
/// 					},
/// 					Validation: &cloudsecuritycompliance.CloudControlParameterSpecValidationArgs{
/// 						IntRange: &cloudsecuritycompliance.CloudControlParameterSpecValidationIntRangeArgs{
/// 							Min: pulumi.String("1"),
/// 							Max: pulumi.String("100"),
/// 						},
/// 					},
/// 				},
/// 				&cloudsecuritycompliance.CloudControlParameterSpecArgs{
/// 					Name:        pulumi.String("allowed_regions"),
/// 					DisplayName: pulumi.String("Allowed Regions"),
/// 					Description: pulumi.String("List of regions where resources can be deployed"),
/// 					ValueType:   pulumi.String("STRINGLIST"),
/// 					IsRequired:  pulumi.Bool(true),
/// 					DefaultValue: &cloudsecuritycompliance.CloudControlParameterSpecDefaultValueArgs{
/// 						StringListValue: &cloudsecuritycompliance.CloudControlParameterSpecDefaultValueStringListValueArgs{
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("us-central1"),
/// 								pulumi.String("us-east1"),
/// 								pulumi.String("us-west1"),
/// 							},
/// 						},
/// 					},
/// 					Validation: &cloudsecuritycompliance.CloudControlParameterSpecValidationArgs{
/// 						AllowedValues: &cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesArgs{
/// 							Values: cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArray{
/// 								&cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArgs{
/// 									StringListValue: &cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueStringListValueArgs{
/// 										Values: pulumi.StringArray{
/// 											pulumi.String("us-central1"),
/// 											pulumi.String("us-east1"),
/// 										},
/// 									},
/// 								},
/// 								&cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArgs{
/// 									StringListValue: &cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueStringListValueArgs{
/// 										Values: pulumi.StringArray{
/// 											pulumi.String("us-west1"),
/// 											pulumi.String("us-west2"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&cloudsecuritycompliance.CloudControlParameterSpecArgs{
/// 					Name:        pulumi.String("environment_type"),
/// 					DisplayName: pulumi.String("Environment Type"),
/// 					Description: pulumi.String("The type of environment"),
/// 					ValueType:   pulumi.String("STRING"),
/// 					IsRequired:  pulumi.Bool(true),
/// 					DefaultValue: &cloudsecuritycompliance.CloudControlParameterSpecDefaultValueArgs{
/// 						StringValue: pulumi.String("production"),
/// 					},
/// 					Validation: &cloudsecuritycompliance.CloudControlParameterSpecValidationArgs{
/// 						AllowedValues: &cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesArgs{
/// 							Values: cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArray{
/// 								&cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArgs{
/// 									StringValue: pulumi.String("production"),
/// 								},
/// 								&cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArgs{
/// 									StringValue: pulumi.String("staging"),
/// 								},
/// 								&cloudsecuritycompliance.CloudControlParameterSpecValidationAllowedValuesValueArgs{
/// 									NumberValue: pulumi.Float64(1),
/// 								},
/// 							},
/// 						},
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
/// resource "gcp_cloudsecuritycompliance_cloudcontrol" "example" {
///   organization              = "123456789"
///   location                  = "global"
///   cloud_control_id          = "example-cloudcontrol"
///   display_name              = "TF test CloudControl Name"
///   description               = "A test cloud control for security compliance"
///   categories                = ["CC_CATEGORY_INFRASTRUCTURE"]
///   severity                  = "HIGH"
///   finding_category          = "SECURITY_POLICY"
///   remediation_steps         = "Review and update the security configuration according to best practices."
///   supported_cloud_providers = ["GCP"]
///   rules {
///     description       = "Ensure compute instances have secure boot enabled"
///     rule_action_types = ["RULE_ACTION_TYPE_DETECTIVE"]
///     cel_expression = {
///       expression = "resource.data.shieldedInstanceConfig.enableSecureBoot == true"
///       resource_types_values = {
///         values = ["compute.googleapis.com/Instance"]
///       }
///     }
///   }
///   parameter_specs {
///     name         = "location"
///     display_name = "Resource Location"
///     description  = "The location where the resource should be deployed"
///     value_type   = "STRING"
///     is_required  = true
///     default_value = {
///       string_value = "us-central1"
///     }
///     validation = {
///       regexp_pattern = {
///         pattern = "^[a-z]+-[a-z]+[0-9]$"
///       }
///     }
///   }
///   parameter_specs {
///     name         = "enable_secure_boot"
///     display_name = "Enable Secure Boot"
///     description  = "Whether to enable secure boot for instances"
///     value_type   = "BOOLEAN"
///     is_required  = true
///     default_value = {
///       bool_value = true
///     }
///     substitution_rules {
///       attribute_substitution_rule = {
///         attribute = "rules[0].cel_expression.expression"
///       }
///     }
///     validation = {
///       allowed_values = {
///         values = [{
///           "boolValue" = true
///         }]
///       }
///     }
///   }
///   parameter_specs {
///     name         = "max_instances"
///     display_name = "Maximum Instances"
///     description  = "Maximum number of instances allowed"
///     value_type   = "NUMBER"
///     is_required  = false
///     default_value = {
///       number_value = 10
///     }
///     substitution_rules {
///       placeholder_substitution_rule = {
///         attribute = "rules[0].description"
///       }
///     }
///     validation = {
///       int_range = {
///         min = "1"
///         max = "100"
///       }
///     }
///   }
///   parameter_specs {
///     name         = "allowed_regions"
///     display_name = "Allowed Regions"
///     description  = "List of regions where resources can be deployed"
///     value_type   = "STRINGLIST"
///     is_required  = true
///     default_value = {
///       string_list_value = {
///         values = ["us-central1", "us-east1", "us-west1"]
///       }
///     }
///     validation = {
///       allowed_values = {
///         values = [{
///           "stringListValue" = {
///             "values" = ["us-central1", "us-east1"]
///           }
///           }, {
///           "stringListValue" = {
///             "values" = ["us-west1", "us-west2"]
///           }
///         }]
///       }
///     }
///   }
///   parameter_specs {
///     name         = "environment_type"
///     display_name = "Environment Type"
///     description  = "The type of environment"
///     value_type   = "STRING"
///     is_required  = true
///     default_value = {
///       string_value = "production"
///     }
///     validation = {
///       allowed_values = {
///         values = [{
///           "stringValue" = "production"
///           }, {
///           "stringValue" = "staging"
///           }, {
///           "numberValue" = 1
///         }]
///       }
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
/// import com.pulumi.gcp.cloudsecuritycompliance.CloudControl;
/// import com.pulumi.gcp.cloudsecuritycompliance.CloudControlArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlRuleArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlRuleCelExpressionArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlRuleCelExpressionResourceTypesValuesArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecDefaultValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecValidationArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecValidationRegexpPatternArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecSubstitutionRuleArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRuleArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecValidationAllowedValuesArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecValidationAllowedValuesValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRuleArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecValidationIntRangeArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecDefaultValueStringListValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.CloudControlParameterSpecValidationAllowedValuesValueStringListValueArgs;
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
///         var example = new CloudControl("example", CloudControlArgs.builder()
///             .organization("123456789")
///             .location("global")
///             .cloudControlId("example-cloudcontrol")
///             .displayName("TF test CloudControl Name")
///             .description("A test cloud control for security compliance")
///             .categories("CC_CATEGORY_INFRASTRUCTURE")
///             .severity("HIGH")
///             .findingCategory("SECURITY_POLICY")
///             .remediationSteps("Review and update the security configuration according to best practices.")
///             .supportedCloudProviders("GCP")
///             .rules(CloudControlRuleArgs.builder()
///                 .description("Ensure compute instances have secure boot enabled")
///                 .ruleActionTypes("RULE_ACTION_TYPE_DETECTIVE")
///                 .celExpression(CloudControlRuleCelExpressionArgs.builder()
///                     .expression("resource.data.shieldedInstanceConfig.enableSecureBoot == true")
///                     .resourceTypesValues(CloudControlRuleCelExpressionResourceTypesValuesArgs.builder()
///                         .values("compute.googleapis.com/Instance")
///                         .build())
///                     .build())
///                 .build())
///             .parameterSpecs(
///                 CloudControlParameterSpecArgs.builder()
///                     .name("location")
///                     .displayName("Resource Location")
///                     .description("The location where the resource should be deployed")
///                     .valueType("STRING")
///                     .isRequired(true)
///                     .defaultValue(CloudControlParameterSpecDefaultValueArgs.builder()
///                         .stringValue("us-central1")
///                         .build())
///                     .validation(CloudControlParameterSpecValidationArgs.builder()
///                         .regexpPattern(CloudControlParameterSpecValidationRegexpPatternArgs.builder()
///                             .pattern("^[a-z]+-[a-z]+[0-9]$")
///                             .build())
///                         .build())
///                     .build(),
///                 CloudControlParameterSpecArgs.builder()
///                     .name("enable_secure_boot")
///                     .displayName("Enable Secure Boot")
///                     .description("Whether to enable secure boot for instances")
///                     .valueType("BOOLEAN")
///                     .isRequired(true)
///                     .defaultValue(CloudControlParameterSpecDefaultValueArgs.builder()
///                         .boolValue(true)
///                         .build())
///                     .substitutionRules(CloudControlParameterSpecSubstitutionRuleArgs.builder()
///                         .attributeSubstitutionRule(CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRuleArgs.builder()
///                             .attribute("rules[0].cel_expression.expression")
///                             .build())
///                         .build())
///                     .validation(CloudControlParameterSpecValidationArgs.builder()
///                         .allowedValues(CloudControlParameterSpecValidationAllowedValuesArgs.builder()
///                             .values(CloudControlParameterSpecValidationAllowedValuesValueArgs.builder()
///                                 .boolValue(true)
///                                 .build())
///                             .build())
///                         .build())
///                     .build(),
///                 CloudControlParameterSpecArgs.builder()
///                     .name("max_instances")
///                     .displayName("Maximum Instances")
///                     .description("Maximum number of instances allowed")
///                     .valueType("NUMBER")
///                     .isRequired(false)
///                     .defaultValue(CloudControlParameterSpecDefaultValueArgs.builder()
///                         .numberValue(10.0)
///                         .build())
///                     .substitutionRules(CloudControlParameterSpecSubstitutionRuleArgs.builder()
///                         .placeholderSubstitutionRule(CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRuleArgs.builder()
///                             .attribute("rules[0].description")
///                             .build())
///                         .build())
///                     .validation(CloudControlParameterSpecValidationArgs.builder()
///                         .intRange(CloudControlParameterSpecValidationIntRangeArgs.builder()
///                             .min("1")
///                             .max("100")
///                             .build())
///                         .build())
///                     .build(),
///                 CloudControlParameterSpecArgs.builder()
///                     .name("allowed_regions")
///                     .displayName("Allowed Regions")
///                     .description("List of regions where resources can be deployed")
///                     .valueType("STRINGLIST")
///                     .isRequired(true)
///                     .defaultValue(CloudControlParameterSpecDefaultValueArgs.builder()
///                         .stringListValue(CloudControlParameterSpecDefaultValueStringListValueArgs.builder()
///                             .values(
///                                 "us-central1",
///                                 "us-east1",
///                                 "us-west1")
///                             .build())
///                         .build())
///                     .validation(CloudControlParameterSpecValidationArgs.builder()
///                         .allowedValues(CloudControlParameterSpecValidationAllowedValuesArgs.builder()
///                             .values(
///                                 CloudControlParameterSpecValidationAllowedValuesValueArgs.builder()
///                                     .stringListValue(CloudControlParameterSpecValidationAllowedValuesValueStringListValueArgs.builder()
///                                         .values(
///                                             "us-central1",
///                                             "us-east1")
///                                         .build())
///                                     .build(),
///                                 CloudControlParameterSpecValidationAllowedValuesValueArgs.builder()
///                                     .stringListValue(CloudControlParameterSpecValidationAllowedValuesValueStringListValueArgs.builder()
///                                         .values(
///                                             "us-west1",
///                                             "us-west2")
///                                         .build())
///                                     .build())
///                             .build())
///                         .build())
///                     .build(),
///                 CloudControlParameterSpecArgs.builder()
///                     .name("environment_type")
///                     .displayName("Environment Type")
///                     .description("The type of environment")
///                     .valueType("STRING")
///                     .isRequired(true)
///                     .defaultValue(CloudControlParameterSpecDefaultValueArgs.builder()
///                         .stringValue("production")
///                         .build())
///                     .validation(CloudControlParameterSpecValidationArgs.builder()
///                         .allowedValues(CloudControlParameterSpecValidationAllowedValuesArgs.builder()
///                             .values(
///                                 CloudControlParameterSpecValidationAllowedValuesValueArgs.builder()
///                                     .stringValue("production")
///                                     .build(),
///                                 CloudControlParameterSpecValidationAllowedValuesValueArgs.builder()
///                                     .stringValue("staging")
///                                     .build(),
///                                 CloudControlParameterSpecValidationAllowedValuesValueArgs.builder()
///                                     .numberValue(1.0)
///                                     .build())
///                             .build())
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:cloudsecuritycompliance:CloudControl
///     properties:
///       organization: '123456789'
///       location: global
///       cloudControlId: example-cloudcontrol
///       displayName: TF test CloudControl Name
///       description: A test cloud control for security compliance
///       categories:
///         - CC_CATEGORY_INFRASTRUCTURE
///       severity: HIGH
///       findingCategory: SECURITY_POLICY
///       remediationSteps: Review and update the security configuration according to best practices.
///       supportedCloudProviders:
///         - GCP
///       rules:
///         - description: Ensure compute instances have secure boot enabled
///           ruleActionTypes:
///             - RULE_ACTION_TYPE_DETECTIVE
///           celExpression:
///             expression: resource.data.shieldedInstanceConfig.enableSecureBoot == true
///             resourceTypesValues:
///               values:
///                 - compute.googleapis.com/Instance
///       parameterSpecs:
///         - name: location
///           displayName: Resource Location
///           description: The location where the resource should be deployed
///           valueType: STRING
///           isRequired: true
///           defaultValue:
///             stringValue: us-central1
///           validation:
///             regexpPattern:
///               pattern: ^[a-z]+-[a-z]+[0-9]$
///         - name: enable_secure_boot
///           displayName: Enable Secure Boot
///           description: Whether to enable secure boot for instances
///           valueType: BOOLEAN
///           isRequired: true
///           defaultValue:
///             boolValue: true
///           substitutionRules:
///             - attributeSubstitutionRule:
///                 attribute: rules[0].cel_expression.expression
///           validation:
///             allowedValues:
///               values:
///                 - boolValue: true
///         - name: max_instances
///           displayName: Maximum Instances
///           description: Maximum number of instances allowed
///           valueType: NUMBER
///           isRequired: false
///           defaultValue:
///             numberValue: 10
///           substitutionRules:
///             - placeholderSubstitutionRule:
///                 attribute: rules[0].description
///           validation:
///             intRange:
///               min: '1'
///               max: '100'
///         - name: allowed_regions
///           displayName: Allowed Regions
///           description: List of regions where resources can be deployed
///           valueType: STRINGLIST
///           isRequired: true
///           defaultValue:
///             stringListValue:
///               values:
///                 - us-central1
///                 - us-east1
///                 - us-west1
///           validation:
///             allowedValues:
///               values:
///                 - stringListValue:
///                     values:
///                       - us-central1
///                       - us-east1
///                 - stringListValue:
///                     values:
///                       - us-west1
///                       - us-west2
///         - name: environment_type
///           displayName: Environment Type
///           description: The type of environment
///           valueType: STRING
///           isRequired: true
///           defaultValue:
///             stringValue: production
///           validation:
///             allowedValues:
///               values:
///                 - stringValue: production
///                 - stringValue: staging
///                 - numberValue: 1
/// ```
///
///
/// ## Import
///
/// CloudControl can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/locations/{{location}}/cloudControls/{{cloud_control_id}}`
/// * `{{parent}}/locations/{{location}}/cloudControls/{{cloud_control_id}}`
///
///
/// When using the `pulumi import` command, CloudControl can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudsecuritycompliance/cloudControl:CloudControl default organizations/{{organization}}/locations/{{location}}/cloudControls/{{cloud_control_id}}
/// $ pulumi import gcp:cloudsecuritycompliance/cloudControl:CloudControl default {{parent}}/locations/{{location}}/cloudControls/{{cloud_control_id}}
/// ```
class CloudControl extends pulumi.CustomResource {
  /// The categories of the cloud control.
  late final pulumi.Output<List<String>?> categories;
  /// ID of the CloudControl.
  /// This is the last segment of the CloudControl resource name.
  /// Format: `^a-zA-Z{0,61}[a-zA-Z0-9]$`.
  late final pulumi.Output<String> cloudControlId;
  /// The last updated time of the cloud control.
  /// The createTime is used because a new CC is created whenever we update an
  /// existing CC.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A description of the cloud control. The maximum length is 2000 characters.
  late final pulumi.Output<String?> description;
  /// The display name of the cloud control. The maximum length is 200
  /// characters.
  late final pulumi.Output<String?> displayName;
  /// The findingCategory of the cloud control. The maximum length is 255
  /// characters.
  late final pulumi.Output<String?> findingCategory;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Currently, only "global" is supported as a location.
  late final pulumi.Output<String> location;
  /// Major revision of the cloud control incremented in ascending order.
  late final pulumi.Output<String> majorRevisionId;
  /// Identifier. The resource name of the cloud control.
  /// Format:
  /// organizations/{organization}/locations/{location}/cloudControls/{cloud_control_id}
  late final pulumi.Output<String> name;
  /// (Optional, Deprecated)
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  ///
  /// &gt; **Warning:** Use `parent` instead.
  late final pulumi.Output<String> organization;
  /// The parameter spec of the cloud control.
  /// Structure is documented below.
  late final pulumi.Output<List<CloudControlParameterSpec>?> parameterSpecs;
  /// The parent resource in which to create the resource.
  /// Must be in one of the following formats:
  /// * `projects/{{project}}`
  /// * `organizations/{{organization}}`
  late final pulumi.Output<String> parent;
  /// The Frameworks that include this CloudControl
  late final pulumi.Output<List<String>> relatedFrameworks;
  /// The remediation steps for the findings generated by the cloud control. The
  /// maximum length is 400 characters.
  late final pulumi.Output<String?> remediationSteps;
  /// The Policy to be enforced to prevent/detect resource non-compliance.
  /// Structure is documented below.
  late final pulumi.Output<List<CloudControlRule>?> rules;
  /// Possible values:
  /// CRITICAL
  /// HIGH
  /// MEDIUM
  /// LOW
  late final pulumi.Output<String?> severity;
  /// cloud providers supported
  late final pulumi.Output<List<String>?> supportedCloudProviders;
  /// The supported enforcement mode of the cloud control. Default is DETECTIVE.
  late final pulumi.Output<List<String>> supportedEnforcementModes;
  /// target resource types supported by the CloudControl.
  late final pulumi.Output<List<String>> supportedTargetResourceTypes;

  /// Creates a new [CloudControl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudControl]. {@macro pulumi_cloudsecuritycompliance_cloud_control_cloud_control_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudControl(
    String name, {
    CloudControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudsecuritycompliance/cloudControl:CloudControl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    categories = registerOutput<List<String>?>('categories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    cloudControlId = registerOutput<String>('cloudControlId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    findingCategory = registerOutput<String?>('findingCategory');
    location = registerOutput<String>('location');
    majorRevisionId = registerOutput<String>('majorRevisionId');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    parameterSpecs = registerOutput<List<CloudControlParameterSpec>?>('parameterSpecs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CloudControlParameterSpec>(guardedValue, (value) => CloudControlParameterSpec.fromMap((value as Map).cast<String, dynamic>())); });
    parent = registerOutput<String>('parent');
    relatedFrameworks = registerOutput<List<String>>('relatedFrameworks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    remediationSteps = registerOutput<String?>('remediationSteps');
    rules = registerOutput<List<CloudControlRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CloudControlRule>(guardedValue, (value) => CloudControlRule.fromMap((value as Map).cast<String, dynamic>())); });
    severity = registerOutput<String?>('severity');
    supportedCloudProviders = registerOutput<List<String>?>('supportedCloudProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    supportedEnforcementModes = registerOutput<List<String>>('supportedEnforcementModes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    supportedTargetResourceTypes = registerOutput<List<String>>('supportedTargetResourceTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [CloudControl] resource's state with the given [name] and [id].
  static CloudControl get(
    String name,
    pulumi.Input<String> id, {
    CloudControlState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CloudControl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CloudControl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudsecuritycompliance/cloudControl:CloudControl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    categories = registerOutput<List<String>?>('categories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    cloudControlId = registerOutput<String>('cloudControlId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    findingCategory = registerOutput<String?>('findingCategory');
    location = registerOutput<String>('location');
    majorRevisionId = registerOutput<String>('majorRevisionId');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    parameterSpecs = registerOutput<List<CloudControlParameterSpec>?>('parameterSpecs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CloudControlParameterSpec>(guardedValue, (value) => CloudControlParameterSpec.fromMap((value as Map).cast<String, dynamic>())); });
    parent = registerOutput<String>('parent');
    relatedFrameworks = registerOutput<List<String>>('relatedFrameworks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    remediationSteps = registerOutput<String?>('remediationSteps');
    rules = registerOutput<List<CloudControlRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CloudControlRule>(guardedValue, (value) => CloudControlRule.fromMap((value as Map).cast<String, dynamic>())); });
    severity = registerOutput<String?>('severity');
    supportedCloudProviders = registerOutput<List<String>?>('supportedCloudProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    supportedEnforcementModes = registerOutput<List<String>>('supportedEnforcementModes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    supportedTargetResourceTypes = registerOutput<List<String>>('supportedTargetResourceTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [CloudControl] resource.
  CloudControl.reference(String urn)
    : super(
        'gcp:cloudsecuritycompliance/cloudControl:CloudControl',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    categories = registerOutput<List<String>?>('categories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    cloudControlId = registerOutput<String>('cloudControlId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    findingCategory = registerOutput<String?>('findingCategory');
    location = registerOutput<String>('location');
    majorRevisionId = registerOutput<String>('majorRevisionId');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    parameterSpecs = registerOutput<List<CloudControlParameterSpec>?>('parameterSpecs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CloudControlParameterSpec>(guardedValue, (value) => CloudControlParameterSpec.fromMap((value as Map).cast<String, dynamic>())); });
    parent = registerOutput<String>('parent');
    relatedFrameworks = registerOutput<List<String>>('relatedFrameworks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    remediationSteps = registerOutput<String?>('remediationSteps');
    rules = registerOutput<List<CloudControlRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CloudControlRule>(guardedValue, (value) => CloudControlRule.fromMap((value as Map).cast<String, dynamic>())); });
    severity = registerOutput<String?>('severity');
    supportedCloudProviders = registerOutput<List<String>?>('supportedCloudProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    supportedEnforcementModes = registerOutput<List<String>>('supportedEnforcementModes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    supportedTargetResourceTypes = registerOutput<List<String>>('supportedTargetResourceTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
