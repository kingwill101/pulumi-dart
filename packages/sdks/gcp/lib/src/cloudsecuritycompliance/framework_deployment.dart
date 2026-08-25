import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_deployment_args.dart';
import 'framework_deployment_cloud_control_deployment_reference.dart';
import 'framework_deployment_cloud_control_metadata.dart';
import 'framework_deployment_framework.dart';
import 'framework_deployment_state.dart';
import 'framework_deployment_target_resource_config.dart';

/// Framework deployments represent the assignment of a framework to a target resource. Supported target resources are organizations, folders, and projects.
///
///
/// To get more information about FrameworkDeployment, see:
///
/// * [API documentation](https://docs.cloud.google.com/security-command-center/docs/reference/cloudsecuritycompliance/rest/v1/organizations.locations.frameworkDeployments)
///
/// ## Example Usage
///
/// ### Cloudsecuritycompliance Framework Deployment Org Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.cloudsecuritycompliance.Framework("example", {
///     parent: "organizations/123456789",
///     location: "global",
///     frameworkId: "example-framework",
///     displayName: "Terraform Framework Name",
///     description: "An Terraform description for the framework",
///     cloudControlDetails: [{
///         name: "organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown",
///         majorRevisionId: "2",
///         parameters: [
///             {
///                 name: "location",
///                 parameterValue: {
///                     stringValue: "us-central1",
///                 },
///             },
///             {
///                 name: "oneof-parameter",
///                 parameterValue: {
///                     oneofValue: {
///                         name: "test-oneof",
///                         parameterValue: {
///                             stringValue: "test-value",
///                         },
///                     },
///                 },
///             },
///             {
///                 name: "bool-parameter",
///                 parameterValue: {
///                     oneofValue: {
///                         name: "bool-oneof",
///                         parameterValue: {
///                             boolValue: true,
///                         },
///                     },
///                 },
///             },
///             {
///                 name: "number-parameter",
///                 parameterValue: {
///                     oneofValue: {
///                         name: "number-oneof",
///                         parameterValue: {
///                             numberValue: 123.45,
///                         },
///                     },
///                 },
///             },
///             {
///                 name: "string-list-parameter",
///                 parameterValue: {
///                     oneofValue: {
///                         name: "string-list-oneof",
///                         parameterValue: {
///                             stringListValue: {
///                                 values: [
///                                     "value1",
///                                     "value2",
///                                 ],
///                             },
///                         },
///                     },
///                 },
///             },
///         ],
///     }],
/// });
/// const exampleFrameworkDeployment = new gcp.cloudsecuritycompliance.FrameworkDeployment("example", {
///     parent: "organizations/123456789",
///     location: "global",
///     frameworkDeploymentId: "example-deployment",
///     description: "A framework deployment for cloud security compliance",
///     framework: {
///         framework: example.name,
///         majorRevisionId: "1",
///     },
///     targetResourceConfig: {
///         existingTargetResource: "organizations/123456789",
///     },
///     cloudControlMetadatas: [{
///         enforcementMode: "DETECTIVE",
///         cloudControlDetails: {
///             name: "organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown",
///             majorRevisionId: "2",
///             parameters: [
///                 {
///                     name: "enabled",
///                     parameterValue: {
///                         boolValue: true,
///                     },
///                 },
///                 {
///                     name: "regions",
///                     parameterValue: {
///                         stringListValue: {
///                             values: [
///                                 "us-central1",
///                                 "us-west1",
///                                 "us-east1",
///                             ],
///                         },
///                     },
///                 },
///                 {
///                     name: "location",
///                     parameterValue: {
///                         stringValue: "us-central1",
///                     },
///                 },
///                 {
///                     name: "oneof-parameter",
///                     parameterValue: {
///                         oneofValue: {
///                             name: "test-oneof",
///                             parameterValue: {
///                                 stringValue: "test-value",
///                             },
///                         },
///                     },
///                 },
///                 {
///                     name: "bool-parameter",
///                     parameterValue: {
///                         oneofValue: {
///                             name: "bool-oneof",
///                             parameterValue: {
///                                 boolValue: true,
///                             },
///                         },
///                     },
///                 },
///                 {
///                     name: "number-parameter",
///                     parameterValue: {
///                         oneofValue: {
///                             name: "number-oneof",
///                             parameterValue: {
///                                 numberValue: 123.45,
///                             },
///                         },
///                     },
///                 },
///                 {
///                     name: "string-list-parameter",
///                     parameterValue: {
///                         oneofValue: {
///                             name: "string-list-oneof",
///                             parameterValue: {
///                                 stringListValue: {
///                                     values: [
///                                         "value1",
///                                         "value2",
///                                     ],
///                                 },
///                             },
///                         },
///                     },
///                 },
///             ],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.cloudsecuritycompliance.Framework("example",
///     parent="organizations/123456789",
///     location="global",
///     framework_id="example-framework",
///     display_name="Terraform Framework Name",
///     description="An Terraform description for the framework",
///     cloud_control_details=[{
///         "name": "organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown",
///         "major_revision_id": "2",
///         "parameters": [
///             {
///                 "name": "location",
///                 "parameter_value": {
///                     "string_value": "us-central1",
///                 },
///             },
///             {
///                 "name": "oneof-parameter",
///                 "parameter_value": {
///                     "oneof_value": {
///                         "name": "test-oneof",
///                         "parameter_value": {
///                             "string_value": "test-value",
///                         },
///                     },
///                 },
///             },
///             {
///                 "name": "bool-parameter",
///                 "parameter_value": {
///                     "oneof_value": {
///                         "name": "bool-oneof",
///                         "parameter_value": {
///                             "bool_value": True,
///                         },
///                     },
///                 },
///             },
///             {
///                 "name": "number-parameter",
///                 "parameter_value": {
///                     "oneof_value": {
///                         "name": "number-oneof",
///                         "parameter_value": {
///                             "number_value": 123.45,
///                         },
///                     },
///                 },
///             },
///             {
///                 "name": "string-list-parameter",
///                 "parameter_value": {
///                     "oneof_value": {
///                         "name": "string-list-oneof",
///                         "parameter_value": {
///                             "string_list_value": {
///                                 "values": [
///                                     "value1",
///                                     "value2",
///                                 ],
///                             },
///                         },
///                     },
///                 },
///             },
///         ],
///     }])
/// example_framework_deployment = gcp.cloudsecuritycompliance.FrameworkDeployment("example",
///     parent="organizations/123456789",
///     location="global",
///     framework_deployment_id="example-deployment",
///     description="A framework deployment for cloud security compliance",
///     framework={
///         "framework": example.name,
///         "major_revision_id": "1",
///     },
///     target_resource_config={
///         "existing_target_resource": "organizations/123456789",
///     },
///     cloud_control_metadatas=[{
///         "enforcement_mode": "DETECTIVE",
///         "cloud_control_details": {
///             "name": "organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown",
///             "major_revision_id": "2",
///             "parameters": [
///                 {
///                     "name": "enabled",
///                     "parameter_value": {
///                         "bool_value": True,
///                     },
///                 },
///                 {
///                     "name": "regions",
///                     "parameter_value": {
///                         "string_list_value": {
///                             "values": [
///                                 "us-central1",
///                                 "us-west1",
///                                 "us-east1",
///                             ],
///                         },
///                     },
///                 },
///                 {
///                     "name": "location",
///                     "parameter_value": {
///                         "string_value": "us-central1",
///                     },
///                 },
///                 {
///                     "name": "oneof-parameter",
///                     "parameter_value": {
///                         "oneof_value": {
///                             "name": "test-oneof",
///                             "parameter_value": {
///                                 "string_value": "test-value",
///                             },
///                         },
///                     },
///                 },
///                 {
///                     "name": "bool-parameter",
///                     "parameter_value": {
///                         "oneof_value": {
///                             "name": "bool-oneof",
///                             "parameter_value": {
///                                 "bool_value": True,
///                             },
///                         },
///                     },
///                 },
///                 {
///                     "name": "number-parameter",
///                     "parameter_value": {
///                         "oneof_value": {
///                             "name": "number-oneof",
///                             "parameter_value": {
///                                 "number_value": 123.45,
///                             },
///                         },
///                     },
///                 },
///                 {
///                     "name": "string-list-parameter",
///                     "parameter_value": {
///                         "oneof_value": {
///                             "name": "string-list-oneof",
///                             "parameter_value": {
///                                 "string_list_value": {
///                                     "values": [
///                                         "value1",
///                                         "value2",
///                                     ],
///                                 },
///                             },
///                         },
///                     },
///                 },
///             ],
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
///     var example = new Gcp.CloudSecurityCompliance.Framework("example", new()
///     {
///         Parent = "organizations/123456789",
///         Location = "global",
///         FrameworkId = "example-framework",
///         DisplayName = "Terraform Framework Name",
///         Description = "An Terraform description for the framework",
///         CloudControlDetails = new[]
///         {
///             new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailArgs
///             {
///                 Name = "organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown",
///                 MajorRevisionId = "2",
///                 Parameters = new[]
///                 {
///                     new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterArgs
///                     {
///                         Name = "location",
///                         ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueArgs
///                         {
///                             StringValue = "us-central1",
///                         },
///                     },
///                     new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterArgs
///                     {
///                         Name = "oneof-parameter",
///                         ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueArgs
///                         {
///                             OneofValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueArgs
///                             {
///                                 Name = "test-oneof",
///                                 ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs
///                                 {
///                                     StringValue = "test-value",
///                                 },
///                             },
///                         },
///                     },
///                     new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterArgs
///                     {
///                         Name = "bool-parameter",
///                         ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueArgs
///                         {
///                             OneofValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueArgs
///                             {
///                                 Name = "bool-oneof",
///                                 ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs
///                                 {
///                                     BoolValue = true,
///                                 },
///                             },
///                         },
///                     },
///                     new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterArgs
///                     {
///                         Name = "number-parameter",
///                         ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueArgs
///                         {
///                             OneofValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueArgs
///                             {
///                                 Name = "number-oneof",
///                                 ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs
///                                 {
///                                     NumberValue = 123.45,
///                                 },
///                             },
///                         },
///                     },
///                     new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterArgs
///                     {
///                         Name = "string-list-parameter",
///                         ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueArgs
///                         {
///                             OneofValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueArgs
///                             {
///                                 Name = "string-list-oneof",
///                                 ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs
///                                 {
///                                     StringListValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValueArgs
///                                     {
///                                         Values = new[]
///                                         {
///                                             "value1",
///                                             "value2",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleFrameworkDeployment = new Gcp.CloudSecurityCompliance.FrameworkDeployment("example", new()
///     {
///         Parent = "organizations/123456789",
///         Location = "global",
///         FrameworkDeploymentId = "example-deployment",
///         Description = "A framework deployment for cloud security compliance",
///         Framework = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentFrameworkArgs
///         {
///             Framework = example.Name,
///             MajorRevisionId = "1",
///         },
///         TargetResourceConfig = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentTargetResourceConfigArgs
///         {
///             ExistingTargetResource = "organizations/123456789",
///         },
///         CloudControlMetadatas = new[]
///         {
///             new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataArgs
///             {
///                 EnforcementMode = "DETECTIVE",
///                 CloudControlDetails = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsArgs
///                 {
///                     Name = "organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown",
///                     MajorRevisionId = "2",
///                     Parameters = new[]
///                     {
///                         new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs
///                         {
///                             Name = "enabled",
///                             ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs
///                             {
///                                 BoolValue = true,
///                             },
///                         },
///                         new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs
///                         {
///                             Name = "regions",
///                             ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs
///                             {
///                                 StringListValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueStringListValueArgs
///                                 {
///                                     Values = new[]
///                                     {
///                                         "us-central1",
///                                         "us-west1",
///                                         "us-east1",
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs
///                         {
///                             Name = "location",
///                             ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs
///                             {
///                                 StringValue = "us-central1",
///                             },
///                         },
///                         new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs
///                         {
///                             Name = "oneof-parameter",
///                             ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs
///                             {
///                                 OneofValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs
///                                 {
///                                     Name = "test-oneof",
///                                     ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs
///                                     {
///                                         StringValue = "test-value",
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs
///                         {
///                             Name = "bool-parameter",
///                             ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs
///                             {
///                                 OneofValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs
///                                 {
///                                     Name = "bool-oneof",
///                                     ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs
///                                     {
///                                         BoolValue = true,
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs
///                         {
///                             Name = "number-parameter",
///                             ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs
///                             {
///                                 OneofValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs
///                                 {
///                                     Name = "number-oneof",
///                                     ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs
///                                     {
///                                         NumberValue = 123.45,
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs
///                         {
///                             Name = "string-list-parameter",
///                             ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs
///                             {
///                                 OneofValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs
///                                 {
///                                     Name = "string-list-oneof",
///                                     ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs
///                                     {
///                                         StringListValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueStringListValueArgs
///                                         {
///                                             Values = new[]
///                                             {
///                                                 "value1",
///                                                 "value2",
///                                             },
///                                         },
///                                     },
///                                 },
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
/// 		example, err := cloudsecuritycompliance.NewFramework(ctx, "example", &cloudsecuritycompliance.FrameworkArgs{
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			Location:    pulumi.String("global"),
/// 			FrameworkId: pulumi.String("example-framework"),
/// 			DisplayName: pulumi.String("Terraform Framework Name"),
/// 			Description: pulumi.String("An Terraform description for the framework"),
/// 			CloudControlDetails: cloudsecuritycompliance.FrameworkCloudControlDetailArray{
/// 				&cloudsecuritycompliance.FrameworkCloudControlDetailArgs{
/// 					Name:            pulumi.String("organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown"),
/// 					MajorRevisionId: pulumi.String("2"),
/// 					Parameters: cloudsecuritycompliance.FrameworkCloudControlDetailParameterArray{
/// 						&cloudsecuritycompliance.FrameworkCloudControlDetailParameterArgs{
/// 							Name: pulumi.String("location"),
/// 							ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueArgs{
/// 								StringValue: pulumi.String("us-central1"),
/// 							},
/// 						},
/// 						&cloudsecuritycompliance.FrameworkCloudControlDetailParameterArgs{
/// 							Name: pulumi.String("oneof-parameter"),
/// 							ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueArgs{
/// 								OneofValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueOneofValueArgs{
/// 									Name: pulumi.String("test-oneof"),
/// 									ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs{
/// 										StringValue: pulumi.String("test-value"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						&cloudsecuritycompliance.FrameworkCloudControlDetailParameterArgs{
/// 							Name: pulumi.String("bool-parameter"),
/// 							ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueArgs{
/// 								OneofValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueOneofValueArgs{
/// 									Name: pulumi.String("bool-oneof"),
/// 									ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs{
/// 										BoolValue: pulumi.Bool(true),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						&cloudsecuritycompliance.FrameworkCloudControlDetailParameterArgs{
/// 							Name: pulumi.String("number-parameter"),
/// 							ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueArgs{
/// 								OneofValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueOneofValueArgs{
/// 									Name: pulumi.String("number-oneof"),
/// 									ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs{
/// 										NumberValue: pulumi.Float64(123.45),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						&cloudsecuritycompliance.FrameworkCloudControlDetailParameterArgs{
/// 							Name: pulumi.String("string-list-parameter"),
/// 							ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueArgs{
/// 								OneofValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueOneofValueArgs{
/// 									Name: pulumi.String("string-list-oneof"),
/// 									ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs{
/// 										StringListValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValueArgs{
/// 											Values: pulumi.StringArray{
/// 												pulumi.String("value1"),
/// 												pulumi.String("value2"),
/// 											},
/// 										},
/// 									},
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
/// 		_, err = cloudsecuritycompliance.NewFrameworkDeployment(ctx, "example", &cloudsecuritycompliance.FrameworkDeploymentArgs{
/// 			Parent:                pulumi.String("organizations/123456789"),
/// 			Location:              pulumi.String("global"),
/// 			FrameworkDeploymentId: pulumi.String("example-deployment"),
/// 			Description:           pulumi.String("A framework deployment for cloud security compliance"),
/// 			Framework: &cloudsecuritycompliance.FrameworkDeploymentFrameworkArgs{
/// 				Framework:       example.Name,
/// 				MajorRevisionId: pulumi.String("1"),
/// 			},
/// 			TargetResourceConfig: &cloudsecuritycompliance.FrameworkDeploymentTargetResourceConfigArgs{
/// 				ExistingTargetResource: pulumi.String("organizations/123456789"),
/// 			},
/// 			CloudControlMetadatas: cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataArray{
/// 				&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataArgs{
/// 					EnforcementMode: pulumi.String("DETECTIVE"),
/// 					CloudControlDetails: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsArgs{
/// 						Name:            pulumi.String("organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown"),
/// 						MajorRevisionId: pulumi.String("2"),
/// 						Parameters: cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArray{
/// 							&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs{
/// 								Name: pulumi.String("enabled"),
/// 								ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs{
/// 									BoolValue: pulumi.Bool(true),
/// 								},
/// 							},
/// 							&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs{
/// 								Name: pulumi.String("regions"),
/// 								ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs{
/// 									StringListValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueStringListValueArgs{
/// 										Values: pulumi.StringArray{
/// 											pulumi.String("us-central1"),
/// 											pulumi.String("us-west1"),
/// 											pulumi.String("us-east1"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs{
/// 								Name: pulumi.String("location"),
/// 								ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs{
/// 									StringValue: pulumi.String("us-central1"),
/// 								},
/// 							},
/// 							&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs{
/// 								Name: pulumi.String("oneof-parameter"),
/// 								ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs{
/// 									OneofValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs{
/// 										Name: pulumi.String("test-oneof"),
/// 										ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs{
/// 											StringValue: pulumi.String("test-value"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs{
/// 								Name: pulumi.String("bool-parameter"),
/// 								ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs{
/// 									OneofValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs{
/// 										Name: pulumi.String("bool-oneof"),
/// 										ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs{
/// 											BoolValue: pulumi.Bool(true),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs{
/// 								Name: pulumi.String("number-parameter"),
/// 								ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs{
/// 									OneofValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs{
/// 										Name: pulumi.String("number-oneof"),
/// 										ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs{
/// 											NumberValue: pulumi.Float64(123.45),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs{
/// 								Name: pulumi.String("string-list-parameter"),
/// 								ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs{
/// 									OneofValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs{
/// 										Name: pulumi.String("string-list-oneof"),
/// 										ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs{
/// 											StringListValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueStringListValueArgs{
/// 												Values: pulumi.StringArray{
/// 													pulumi.String("value1"),
/// 													pulumi.String("value2"),
/// 												},
/// 											},
/// 										},
/// 									},
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
/// resource "gcp_cloudsecuritycompliance_framework" "example" {
///   parent       = "organizations/123456789"
///   location     = "global"
///   framework_id = "example-framework"
///   display_name = "Terraform Framework Name"
///   description  = "An Terraform description for the framework"
///   cloud_control_details {
///     name              = "organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown"
///     major_revision_id = "2"
///     parameters {
///       name = "location"
///       parameter_value = {
///         string_value = "us-central1"
///       }
///     }
///     parameters {
///       name = "oneof-parameter"
///       parameter_value = {
///         oneof_value = {
///           name = "test-oneof"
///           parameter_value = {
///             string_value = "test-value"
///           }
///         }
///       }
///     }
///     parameters {
///       name = "bool-parameter"
///       parameter_value = {
///         oneof_value = {
///           name = "bool-oneof"
///           parameter_value = {
///             bool_value = true
///           }
///         }
///       }
///     }
///     parameters {
///       name = "number-parameter"
///       parameter_value = {
///         oneof_value = {
///           name = "number-oneof"
///           parameter_value = {
///             number_value = 123.45
///           }
///         }
///       }
///     }
///     parameters {
///       name = "string-list-parameter"
///       parameter_value = {
///         oneof_value = {
///           name = "string-list-oneof"
///           parameter_value = {
///             string_list_value = {
///               values = ["value1", "value2"]
///             }
///           }
///         }
///       }
///     }
///   }
/// }
/// resource "gcp_cloudsecuritycompliance_frameworkdeployment" "example" {
///   parent                  = "organizations/123456789"
///   location                = "global"
///   framework_deployment_id = "example-deployment"
///   description             = "A framework deployment for cloud security compliance"
///   framework = {
///     framework         = gcp_cloudsecuritycompliance_framework.example.name
///     major_revision_id = "1"
///   }
///   target_resource_config = {
///     existing_target_resource = "organizations/123456789"
///   }
///   cloud_control_metadatas {
///     enforcement_mode = "DETECTIVE"
///     cloud_control_details = {
///       name              = "organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown"
///       major_revision_id = "2"
///       parameters = [{
///         "name" = "enabled"
///         "parameterValue" = {
///           "boolValue" = true
///         }
///         }, {
///         "name" = "regions"
///         "parameterValue" = {
///           "stringListValue" = {
///             "values" = ["us-central1", "us-west1", "us-east1"]
///           }
///         }
///         }, {
///         "name" = "location"
///         "parameterValue" = {
///           "stringValue" = "us-central1"
///         }
///         }, {
///         "name" = "oneof-parameter"
///         "parameterValue" = {
///           "oneofValue" = {
///             "name" = "test-oneof"
///             "parameterValue" = {
///               "stringValue" = "test-value"
///             }
///           }
///         }
///         }, {
///         "name" = "bool-parameter"
///         "parameterValue" = {
///           "oneofValue" = {
///             "name" = "bool-oneof"
///             "parameterValue" = {
///               "boolValue" = true
///             }
///           }
///         }
///         }, {
///         "name" = "number-parameter"
///         "parameterValue" = {
///           "oneofValue" = {
///             "name" = "number-oneof"
///             "parameterValue" = {
///               "numberValue" = 123.45
///             }
///           }
///         }
///         }, {
///         "name" = "string-list-parameter"
///         "parameterValue" = {
///           "oneofValue" = {
///             "name" = "string-list-oneof"
///             "parameterValue" = {
///               "stringListValue" = {
///                 "values" = ["value1", "value2"]
///               }
///             }
///           }
///         }
///       }]
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
/// import com.pulumi.gcp.cloudsecuritycompliance.Framework;
/// import com.pulumi.gcp.cloudsecuritycompliance.FrameworkArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailParameterArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailParameterParameterValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.FrameworkDeployment;
/// import com.pulumi.gcp.cloudsecuritycompliance.FrameworkDeploymentArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentFrameworkArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentTargetResourceConfigArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueStringListValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueStringListValueArgs;
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
///         var example = new Framework("example", FrameworkArgs.builder()
///             .parent("organizations/123456789")
///             .location("global")
///             .frameworkId("example-framework")
///             .displayName("Terraform Framework Name")
///             .description("An Terraform description for the framework")
///             .cloudControlDetails(FrameworkCloudControlDetailArgs.builder()
///                 .name("organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown")
///                 .majorRevisionId("2")
///                 .parameters(
///                     FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("location")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .stringValue("us-central1")
///                             .build())
///                         .build(),
///                     FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("oneof-parameter")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .oneofValue(FrameworkCloudControlDetailParameterParameterValueOneofValueArgs.builder()
///                                 .name("test-oneof")
///                                 .parameterValue(FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs.builder()
///                                     .stringValue("test-value")
///                                     .build())
///                                 .build())
///                             .build())
///                         .build(),
///                     FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("bool-parameter")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .oneofValue(FrameworkCloudControlDetailParameterParameterValueOneofValueArgs.builder()
///                                 .name("bool-oneof")
///                                 .parameterValue(FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs.builder()
///                                     .boolValue(true)
///                                     .build())
///                                 .build())
///                             .build())
///                         .build(),
///                     FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("number-parameter")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .oneofValue(FrameworkCloudControlDetailParameterParameterValueOneofValueArgs.builder()
///                                 .name("number-oneof")
///                                 .parameterValue(FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs.builder()
///                                     .numberValue(123.45)
///                                     .build())
///                                 .build())
///                             .build())
///                         .build(),
///                     FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("string-list-parameter")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .oneofValue(FrameworkCloudControlDetailParameterParameterValueOneofValueArgs.builder()
///                                 .name("string-list-oneof")
///                                 .parameterValue(FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs.builder()
///                                     .stringListValue(FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValueArgs.builder()
///                                         .values(
///                                             "value1",
///                                             "value2")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                 .build())
///             .build());
///
///         var exampleFrameworkDeployment = new FrameworkDeployment("exampleFrameworkDeployment", FrameworkDeploymentArgs.builder()
///             .parent("organizations/123456789")
///             .location("global")
///             .frameworkDeploymentId("example-deployment")
///             .description("A framework deployment for cloud security compliance")
///             .framework(FrameworkDeploymentFrameworkArgs.builder()
///                 .framework(example.name())
///                 .majorRevisionId("1")
///                 .build())
///             .targetResourceConfig(FrameworkDeploymentTargetResourceConfigArgs.builder()
///                 .existingTargetResource("organizations/123456789")
///                 .build())
///             .cloudControlMetadatas(FrameworkDeploymentCloudControlMetadataArgs.builder()
///                 .enforcementMode("DETECTIVE")
///                 .cloudControlDetails(FrameworkDeploymentCloudControlMetadataCloudControlDetailsArgs.builder()
///                     .name("organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown")
///                     .majorRevisionId("2")
///                     .parameters(
///                         FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs.builder()
///                             .name("enabled")
///                             .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs.builder()
///                                 .boolValue(true)
///                                 .build())
///                             .build(),
///                         FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs.builder()
///                             .name("regions")
///                             .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs.builder()
///                                 .stringListValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueStringListValueArgs.builder()
///                                     .values(
///                                         "us-central1",
///                                         "us-west1",
///                                         "us-east1")
///                                     .build())
///                                 .build())
///                             .build(),
///                         FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs.builder()
///                             .name("location")
///                             .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs.builder()
///                                 .stringValue("us-central1")
///                                 .build())
///                             .build(),
///                         FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs.builder()
///                             .name("oneof-parameter")
///                             .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs.builder()
///                                 .oneofValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs.builder()
///                                     .name("test-oneof")
///                                     .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs.builder()
///                                         .stringValue("test-value")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build(),
///                         FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs.builder()
///                             .name("bool-parameter")
///                             .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs.builder()
///                                 .oneofValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs.builder()
///                                     .name("bool-oneof")
///                                     .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs.builder()
///                                         .boolValue(true)
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build(),
///                         FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs.builder()
///                             .name("number-parameter")
///                             .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs.builder()
///                                 .oneofValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs.builder()
///                                     .name("number-oneof")
///                                     .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs.builder()
///                                         .numberValue(123.45)
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build(),
///                         FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs.builder()
///                             .name("string-list-parameter")
///                             .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs.builder()
///                                 .oneofValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs.builder()
///                                     .name("string-list-oneof")
///                                     .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs.builder()
///                                         .stringListValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueStringListValueArgs.builder()
///                                             .values(
///                                                 "value1",
///                                                 "value2")
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:cloudsecuritycompliance:Framework
///     properties:
///       parent: organizations/123456789
///       location: global
///       frameworkId: example-framework
///       displayName: Terraform Framework Name
///       description: An Terraform description for the framework
///       cloudControlDetails:
///         - name: organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown
///           majorRevisionId: '2'
///           parameters:
///             - name: location
///               parameterValue:
///                 stringValue: us-central1
///             - name: oneof-parameter
///               parameterValue:
///                 oneofValue:
///                   name: test-oneof
///                   parameterValue:
///                     stringValue: test-value
///             - name: bool-parameter
///               parameterValue:
///                 oneofValue:
///                   name: bool-oneof
///                   parameterValue:
///                     boolValue: true
///             - name: number-parameter
///               parameterValue:
///                 oneofValue:
///                   name: number-oneof
///                   parameterValue:
///                     numberValue: 123.45
///             - name: string-list-parameter
///               parameterValue:
///                 oneofValue:
///                   name: string-list-oneof
///                   parameterValue:
///                     stringListValue:
///                       values:
///                         - value1
///                         - value2
///   exampleFrameworkDeployment:
///     type: gcp:cloudsecuritycompliance:FrameworkDeployment
///     name: example
///     properties:
///       parent: organizations/123456789
///       location: global
///       frameworkDeploymentId: example-deployment
///       description: A framework deployment for cloud security compliance
///       framework:
///         framework: ${example.name}
///         majorRevisionId: '1'
///       targetResourceConfig:
///         existingTargetResource: organizations/123456789
///       cloudControlMetadatas:
///         - enforcementMode: DETECTIVE
///           cloudControlDetails:
///             name: organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown
///             majorRevisionId: '2'
///             parameters:
///               - name: enabled
///                 parameterValue:
///                   boolValue: true
///               - name: regions
///                 parameterValue:
///                   stringListValue:
///                     values:
///                       - us-central1
///                       - us-west1
///                       - us-east1
///               - name: location
///                 parameterValue:
///                   stringValue: us-central1
///               - name: oneof-parameter
///                 parameterValue:
///                   oneofValue:
///                     name: test-oneof
///                     parameterValue:
///                       stringValue: test-value
///               - name: bool-parameter
///                 parameterValue:
///                   oneofValue:
///                     name: bool-oneof
///                     parameterValue:
///                       boolValue: true
///               - name: number-parameter
///                 parameterValue:
///                   oneofValue:
///                     name: number-oneof
///                     parameterValue:
///                       numberValue: 123.45
///               - name: string-list-parameter
///                 parameterValue:
///                   oneofValue:
///                     name: string-list-oneof
///                     parameterValue:
///                       stringListValue:
///                         values:
///                           - value1
///                           - value2
/// ```
///
/// ### Cloudsecuritycompliance Framework Deployment Project Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.cloudsecuritycompliance.Framework("example", {
///     parent: project.then(project => `projects/${project.number}`),
///     location: "global",
///     frameworkId: "example-framework",
///     displayName: "Terraform Framework Name",
///     description: "An Terraform description for the framework",
///     cloudControlDetails: [{
///         name: project.then(project => `projects/${project.number}/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown`),
///         majorRevisionId: "2",
///         parameters: [
///             {
///                 name: "location",
///                 parameterValue: {
///                     stringValue: "us-central1",
///                 },
///             },
///             {
///                 name: "oneof-parameter",
///                 parameterValue: {
///                     oneofValue: {
///                         name: "test-oneof",
///                         parameterValue: {
///                             stringValue: "test-value",
///                         },
///                     },
///                 },
///             },
///             {
///                 name: "bool-parameter",
///                 parameterValue: {
///                     oneofValue: {
///                         name: "bool-oneof",
///                         parameterValue: {
///                             boolValue: true,
///                         },
///                     },
///                 },
///             },
///             {
///                 name: "number-parameter",
///                 parameterValue: {
///                     oneofValue: {
///                         name: "number-oneof",
///                         parameterValue: {
///                             numberValue: 123.45,
///                         },
///                     },
///                 },
///             },
///             {
///                 name: "string-list-parameter",
///                 parameterValue: {
///                     oneofValue: {
///                         name: "string-list-oneof",
///                         parameterValue: {
///                             stringListValue: {
///                                 values: [
///                                     "value1",
///                                     "value2",
///                                 ],
///                             },
///                         },
///                     },
///                 },
///             },
///         ],
///     }],
/// });
/// const exampleFrameworkDeployment = new gcp.cloudsecuritycompliance.FrameworkDeployment("example", {
///     parent: project.then(project => `projects/${project.number}`),
///     location: "global",
///     frameworkDeploymentId: "example-deployment",
///     description: "A framework deployment for cloud security compliance",
///     framework: {
///         framework: example.name,
///         majorRevisionId: "1",
///     },
///     targetResourceConfig: {
///         existingTargetResource: project.then(project => `projects/${project.projectId}`),
///     },
///     cloudControlMetadatas: [{
///         enforcementMode: "DETECTIVE",
///         cloudControlDetails: {
///             name: project.then(project => `projects/${project.number}/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown`),
///             majorRevisionId: "2",
///             parameters: [
///                 {
///                     name: "enabled",
///                     parameterValue: {
///                         boolValue: true,
///                     },
///                 },
///                 {
///                     name: "regions",
///                     parameterValue: {
///                         stringListValue: {
///                             values: [
///                                 "us-central1",
///                                 "us-west1",
///                                 "us-east1",
///                             ],
///                         },
///                     },
///                 },
///                 {
///                     name: "location",
///                     parameterValue: {
///                         stringValue: "us-central1",
///                     },
///                 },
///                 {
///                     name: "oneof-parameter",
///                     parameterValue: {
///                         oneofValue: {
///                             name: "test-oneof",
///                             parameterValue: {
///                                 stringValue: "test-value",
///                             },
///                         },
///                     },
///                 },
///                 {
///                     name: "bool-parameter",
///                     parameterValue: {
///                         oneofValue: {
///                             name: "bool-oneof",
///                             parameterValue: {
///                                 boolValue: true,
///                             },
///                         },
///                     },
///                 },
///                 {
///                     name: "number-parameter",
///                     parameterValue: {
///                         oneofValue: {
///                             name: "number-oneof",
///                             parameterValue: {
///                                 numberValue: 123.45,
///                             },
///                         },
///                     },
///                 },
///                 {
///                     name: "string-list-parameter",
///                     parameterValue: {
///                         oneofValue: {
///                             name: "string-list-oneof",
///                             parameterValue: {
///                                 stringListValue: {
///                                     values: [
///                                         "value1",
///                                         "value2",
///                                     ],
///                                 },
///                             },
///                         },
///                     },
///                 },
///             ],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example = gcp.cloudsecuritycompliance.Framework("example",
///     parent=f"projects/{project.number}",
///     location="global",
///     framework_id="example-framework",
///     display_name="Terraform Framework Name",
///     description="An Terraform description for the framework",
///     cloud_control_details=[{
///         "name": f"projects/{project.number}/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown",
///         "major_revision_id": "2",
///         "parameters": [
///             {
///                 "name": "location",
///                 "parameter_value": {
///                     "string_value": "us-central1",
///                 },
///             },
///             {
///                 "name": "oneof-parameter",
///                 "parameter_value": {
///                     "oneof_value": {
///                         "name": "test-oneof",
///                         "parameter_value": {
///                             "string_value": "test-value",
///                         },
///                     },
///                 },
///             },
///             {
///                 "name": "bool-parameter",
///                 "parameter_value": {
///                     "oneof_value": {
///                         "name": "bool-oneof",
///                         "parameter_value": {
///                             "bool_value": True,
///                         },
///                     },
///                 },
///             },
///             {
///                 "name": "number-parameter",
///                 "parameter_value": {
///                     "oneof_value": {
///                         "name": "number-oneof",
///                         "parameter_value": {
///                             "number_value": 123.45,
///                         },
///                     },
///                 },
///             },
///             {
///                 "name": "string-list-parameter",
///                 "parameter_value": {
///                     "oneof_value": {
///                         "name": "string-list-oneof",
///                         "parameter_value": {
///                             "string_list_value": {
///                                 "values": [
///                                     "value1",
///                                     "value2",
///                                 ],
///                             },
///                         },
///                     },
///                 },
///             },
///         ],
///     }])
/// example_framework_deployment = gcp.cloudsecuritycompliance.FrameworkDeployment("example",
///     parent=f"projects/{project.number}",
///     location="global",
///     framework_deployment_id="example-deployment",
///     description="A framework deployment for cloud security compliance",
///     framework={
///         "framework": example.name,
///         "major_revision_id": "1",
///     },
///     target_resource_config={
///         "existing_target_resource": f"projects/{project.project_id}",
///     },
///     cloud_control_metadatas=[{
///         "enforcement_mode": "DETECTIVE",
///         "cloud_control_details": {
///             "name": f"projects/{project.number}/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown",
///             "major_revision_id": "2",
///             "parameters": [
///                 {
///                     "name": "enabled",
///                     "parameter_value": {
///                         "bool_value": True,
///                     },
///                 },
///                 {
///                     "name": "regions",
///                     "parameter_value": {
///                         "string_list_value": {
///                             "values": [
///                                 "us-central1",
///                                 "us-west1",
///                                 "us-east1",
///                             ],
///                         },
///                     },
///                 },
///                 {
///                     "name": "location",
///                     "parameter_value": {
///                         "string_value": "us-central1",
///                     },
///                 },
///                 {
///                     "name": "oneof-parameter",
///                     "parameter_value": {
///                         "oneof_value": {
///                             "name": "test-oneof",
///                             "parameter_value": {
///                                 "string_value": "test-value",
///                             },
///                         },
///                     },
///                 },
///                 {
///                     "name": "bool-parameter",
///                     "parameter_value": {
///                         "oneof_value": {
///                             "name": "bool-oneof",
///                             "parameter_value": {
///                                 "bool_value": True,
///                             },
///                         },
///                     },
///                 },
///                 {
///                     "name": "number-parameter",
///                     "parameter_value": {
///                         "oneof_value": {
///                             "name": "number-oneof",
///                             "parameter_value": {
///                                 "number_value": 123.45,
///                             },
///                         },
///                     },
///                 },
///                 {
///                     "name": "string-list-parameter",
///                     "parameter_value": {
///                         "oneof_value": {
///                             "name": "string-list-oneof",
///                             "parameter_value": {
///                                 "string_list_value": {
///                                     "values": [
///                                         "value1",
///                                         "value2",
///                                     ],
///                                 },
///                             },
///                         },
///                     },
///                 },
///             ],
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example = new Gcp.CloudSecurityCompliance.Framework("example", new()
///     {
///         Parent = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///         Location = "global",
///         FrameworkId = "example-framework",
///         DisplayName = "Terraform Framework Name",
///         Description = "An Terraform description for the framework",
///         CloudControlDetails = new[]
///         {
///             new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailArgs
///             {
///                 Name = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown",
///                 MajorRevisionId = "2",
///                 Parameters = new[]
///                 {
///                     new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterArgs
///                     {
///                         Name = "location",
///                         ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueArgs
///                         {
///                             StringValue = "us-central1",
///                         },
///                     },
///                     new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterArgs
///                     {
///                         Name = "oneof-parameter",
///                         ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueArgs
///                         {
///                             OneofValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueArgs
///                             {
///                                 Name = "test-oneof",
///                                 ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs
///                                 {
///                                     StringValue = "test-value",
///                                 },
///                             },
///                         },
///                     },
///                     new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterArgs
///                     {
///                         Name = "bool-parameter",
///                         ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueArgs
///                         {
///                             OneofValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueArgs
///                             {
///                                 Name = "bool-oneof",
///                                 ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs
///                                 {
///                                     BoolValue = true,
///                                 },
///                             },
///                         },
///                     },
///                     new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterArgs
///                     {
///                         Name = "number-parameter",
///                         ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueArgs
///                         {
///                             OneofValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueArgs
///                             {
///                                 Name = "number-oneof",
///                                 ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs
///                                 {
///                                     NumberValue = 123.45,
///                                 },
///                             },
///                         },
///                     },
///                     new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterArgs
///                     {
///                         Name = "string-list-parameter",
///                         ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueArgs
///                         {
///                             OneofValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueArgs
///                             {
///                                 Name = "string-list-oneof",
///                                 ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs
///                                 {
///                                     StringListValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValueArgs
///                                     {
///                                         Values = new[]
///                                         {
///                                             "value1",
///                                             "value2",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleFrameworkDeployment = new Gcp.CloudSecurityCompliance.FrameworkDeployment("example", new()
///     {
///         Parent = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///         Location = "global",
///         FrameworkDeploymentId = "example-deployment",
///         Description = "A framework deployment for cloud security compliance",
///         Framework = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentFrameworkArgs
///         {
///             Framework = example.Name,
///             MajorRevisionId = "1",
///         },
///         TargetResourceConfig = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentTargetResourceConfigArgs
///         {
///             ExistingTargetResource = $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}",
///         },
///         CloudControlMetadatas = new[]
///         {
///             new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataArgs
///             {
///                 EnforcementMode = "DETECTIVE",
///                 CloudControlDetails = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsArgs
///                 {
///                     Name = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown",
///                     MajorRevisionId = "2",
///                     Parameters = new[]
///                     {
///                         new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs
///                         {
///                             Name = "enabled",
///                             ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs
///                             {
///                                 BoolValue = true,
///                             },
///                         },
///                         new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs
///                         {
///                             Name = "regions",
///                             ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs
///                             {
///                                 StringListValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueStringListValueArgs
///                                 {
///                                     Values = new[]
///                                     {
///                                         "us-central1",
///                                         "us-west1",
///                                         "us-east1",
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs
///                         {
///                             Name = "location",
///                             ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs
///                             {
///                                 StringValue = "us-central1",
///                             },
///                         },
///                         new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs
///                         {
///                             Name = "oneof-parameter",
///                             ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs
///                             {
///                                 OneofValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs
///                                 {
///                                     Name = "test-oneof",
///                                     ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs
///                                     {
///                                         StringValue = "test-value",
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs
///                         {
///                             Name = "bool-parameter",
///                             ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs
///                             {
///                                 OneofValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs
///                                 {
///                                     Name = "bool-oneof",
///                                     ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs
///                                     {
///                                         BoolValue = true,
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs
///                         {
///                             Name = "number-parameter",
///                             ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs
///                             {
///                                 OneofValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs
///                                 {
///                                     Name = "number-oneof",
///                                     ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs
///                                     {
///                                         NumberValue = 123.45,
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs
///                         {
///                             Name = "string-list-parameter",
///                             ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs
///                             {
///                                 OneofValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs
///                                 {
///                                     Name = "string-list-oneof",
///                                     ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs
///                                     {
///                                         StringListValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueStringListValueArgs
///                                         {
///                                             Values = new[]
///                                             {
///                                                 "value1",
///                                                 "value2",
///                                             },
///                                         },
///                                     },
///                                 },
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
/// 		example, err := cloudsecuritycompliance.NewFramework(ctx, "example", &cloudsecuritycompliance.FrameworkArgs{
/// 			Parent:      pulumi.Sprintf("projects/%v", project.Number),
/// 			Location:    pulumi.String("global"),
/// 			FrameworkId: pulumi.String("example-framework"),
/// 			DisplayName: pulumi.String("Terraform Framework Name"),
/// 			Description: pulumi.String("An Terraform description for the framework"),
/// 			CloudControlDetails: cloudsecuritycompliance.FrameworkCloudControlDetailArray{
/// 				&cloudsecuritycompliance.FrameworkCloudControlDetailArgs{
/// 					Name:            pulumi.Sprintf("projects/%v/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown", project.Number),
/// 					MajorRevisionId: pulumi.String("2"),
/// 					Parameters: cloudsecuritycompliance.FrameworkCloudControlDetailParameterArray{
/// 						&cloudsecuritycompliance.FrameworkCloudControlDetailParameterArgs{
/// 							Name: pulumi.String("location"),
/// 							ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueArgs{
/// 								StringValue: pulumi.String("us-central1"),
/// 							},
/// 						},
/// 						&cloudsecuritycompliance.FrameworkCloudControlDetailParameterArgs{
/// 							Name: pulumi.String("oneof-parameter"),
/// 							ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueArgs{
/// 								OneofValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueOneofValueArgs{
/// 									Name: pulumi.String("test-oneof"),
/// 									ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs{
/// 										StringValue: pulumi.String("test-value"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						&cloudsecuritycompliance.FrameworkCloudControlDetailParameterArgs{
/// 							Name: pulumi.String("bool-parameter"),
/// 							ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueArgs{
/// 								OneofValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueOneofValueArgs{
/// 									Name: pulumi.String("bool-oneof"),
/// 									ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs{
/// 										BoolValue: pulumi.Bool(true),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						&cloudsecuritycompliance.FrameworkCloudControlDetailParameterArgs{
/// 							Name: pulumi.String("number-parameter"),
/// 							ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueArgs{
/// 								OneofValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueOneofValueArgs{
/// 									Name: pulumi.String("number-oneof"),
/// 									ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs{
/// 										NumberValue: pulumi.Float64(123.45),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						&cloudsecuritycompliance.FrameworkCloudControlDetailParameterArgs{
/// 							Name: pulumi.String("string-list-parameter"),
/// 							ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueArgs{
/// 								OneofValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueOneofValueArgs{
/// 									Name: pulumi.String("string-list-oneof"),
/// 									ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs{
/// 										StringListValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValueArgs{
/// 											Values: pulumi.StringArray{
/// 												pulumi.String("value1"),
/// 												pulumi.String("value2"),
/// 											},
/// 										},
/// 									},
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
/// 		_, err = cloudsecuritycompliance.NewFrameworkDeployment(ctx, "example", &cloudsecuritycompliance.FrameworkDeploymentArgs{
/// 			Parent:                pulumi.Sprintf("projects/%v", project.Number),
/// 			Location:              pulumi.String("global"),
/// 			FrameworkDeploymentId: pulumi.String("example-deployment"),
/// 			Description:           pulumi.String("A framework deployment for cloud security compliance"),
/// 			Framework: &cloudsecuritycompliance.FrameworkDeploymentFrameworkArgs{
/// 				Framework:       example.Name,
/// 				MajorRevisionId: pulumi.String("1"),
/// 			},
/// 			TargetResourceConfig: &cloudsecuritycompliance.FrameworkDeploymentTargetResourceConfigArgs{
/// 				ExistingTargetResource: pulumi.Sprintf("projects/%v", project.ProjectId),
/// 			},
/// 			CloudControlMetadatas: cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataArray{
/// 				&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataArgs{
/// 					EnforcementMode: pulumi.String("DETECTIVE"),
/// 					CloudControlDetails: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsArgs{
/// 						Name:            pulumi.Sprintf("projects/%v/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown", project.Number),
/// 						MajorRevisionId: pulumi.String("2"),
/// 						Parameters: cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArray{
/// 							&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs{
/// 								Name: pulumi.String("enabled"),
/// 								ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs{
/// 									BoolValue: pulumi.Bool(true),
/// 								},
/// 							},
/// 							&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs{
/// 								Name: pulumi.String("regions"),
/// 								ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs{
/// 									StringListValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueStringListValueArgs{
/// 										Values: pulumi.StringArray{
/// 											pulumi.String("us-central1"),
/// 											pulumi.String("us-west1"),
/// 											pulumi.String("us-east1"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs{
/// 								Name: pulumi.String("location"),
/// 								ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs{
/// 									StringValue: pulumi.String("us-central1"),
/// 								},
/// 							},
/// 							&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs{
/// 								Name: pulumi.String("oneof-parameter"),
/// 								ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs{
/// 									OneofValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs{
/// 										Name: pulumi.String("test-oneof"),
/// 										ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs{
/// 											StringValue: pulumi.String("test-value"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs{
/// 								Name: pulumi.String("bool-parameter"),
/// 								ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs{
/// 									OneofValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs{
/// 										Name: pulumi.String("bool-oneof"),
/// 										ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs{
/// 											BoolValue: pulumi.Bool(true),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs{
/// 								Name: pulumi.String("number-parameter"),
/// 								ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs{
/// 									OneofValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs{
/// 										Name: pulumi.String("number-oneof"),
/// 										ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs{
/// 											NumberValue: pulumi.Float64(123.45),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs{
/// 								Name: pulumi.String("string-list-parameter"),
/// 								ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs{
/// 									OneofValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs{
/// 										Name: pulumi.String("string-list-oneof"),
/// 										ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs{
/// 											StringListValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueStringListValueArgs{
/// 												Values: pulumi.StringArray{
/// 													pulumi.String("value1"),
/// 													pulumi.String("value2"),
/// 												},
/// 											},
/// 										},
/// 									},
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
/// resource "gcp_cloudsecuritycompliance_framework" "example" {
///   parent       ="projects/${data.gcp_organizations_getproject.project.number}"
///   location     = "global"
///   framework_id = "example-framework"
///   display_name = "Terraform Framework Name"
///   description  = "An Terraform description for the framework"
///   cloud_control_details {
///     name              ="projects/${data.gcp_organizations_getproject.project.number}/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown"
///     major_revision_id = "2"
///     parameters {
///       name = "location"
///       parameter_value = {
///         string_value = "us-central1"
///       }
///     }
///     parameters {
///       name = "oneof-parameter"
///       parameter_value = {
///         oneof_value = {
///           name = "test-oneof"
///           parameter_value = {
///             string_value = "test-value"
///           }
///         }
///       }
///     }
///     parameters {
///       name = "bool-parameter"
///       parameter_value = {
///         oneof_value = {
///           name = "bool-oneof"
///           parameter_value = {
///             bool_value = true
///           }
///         }
///       }
///     }
///     parameters {
///       name = "number-parameter"
///       parameter_value = {
///         oneof_value = {
///           name = "number-oneof"
///           parameter_value = {
///             number_value = 123.45
///           }
///         }
///       }
///     }
///     parameters {
///       name = "string-list-parameter"
///       parameter_value = {
///         oneof_value = {
///           name = "string-list-oneof"
///           parameter_value = {
///             string_list_value = {
///               values = ["value1", "value2"]
///             }
///           }
///         }
///       }
///     }
///   }
/// }
/// resource "gcp_cloudsecuritycompliance_frameworkdeployment" "example" {
///   parent                  ="projects/${data.gcp_organizations_getproject.project.number}"
///   location                = "global"
///   framework_deployment_id = "example-deployment"
///   description             = "A framework deployment for cloud security compliance"
///   framework = {
///     framework         = gcp_cloudsecuritycompliance_framework.example.name
///     major_revision_id = "1"
///   }
///   target_resource_config = {
///     existing_target_resource ="projects/${data.gcp_organizations_getproject.project.project_id}"
///   }
///   cloud_control_metadatas {
///     enforcement_mode = "DETECTIVE"
///     cloud_control_details = {
///       name              ="projects/${data.gcp_organizations_getproject.project.number}/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown"
///       major_revision_id = "2"
///       parameters = [{
///         "name" = "enabled"
///         "parameterValue" = {
///           "boolValue" = true
///         }
///         }, {
///         "name" = "regions"
///         "parameterValue" = {
///           "stringListValue" = {
///             "values" = ["us-central1", "us-west1", "us-east1"]
///           }
///         }
///         }, {
///         "name" = "location"
///         "parameterValue" = {
///           "stringValue" = "us-central1"
///         }
///         }, {
///         "name" = "oneof-parameter"
///         "parameterValue" = {
///           "oneofValue" = {
///             "name" = "test-oneof"
///             "parameterValue" = {
///               "stringValue" = "test-value"
///             }
///           }
///         }
///         }, {
///         "name" = "bool-parameter"
///         "parameterValue" = {
///           "oneofValue" = {
///             "name" = "bool-oneof"
///             "parameterValue" = {
///               "boolValue" = true
///             }
///           }
///         }
///         }, {
///         "name" = "number-parameter"
///         "parameterValue" = {
///           "oneofValue" = {
///             "name" = "number-oneof"
///             "parameterValue" = {
///               "numberValue" = 123.45
///             }
///           }
///         }
///         }, {
///         "name" = "string-list-parameter"
///         "parameterValue" = {
///           "oneofValue" = {
///             "name" = "string-list-oneof"
///             "parameterValue" = {
///               "stringListValue" = {
///                 "values" = ["value1", "value2"]
///               }
///             }
///           }
///         }
///       }]
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
/// import com.pulumi.gcp.cloudsecuritycompliance.Framework;
/// import com.pulumi.gcp.cloudsecuritycompliance.FrameworkArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailParameterArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailParameterParameterValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.FrameworkDeployment;
/// import com.pulumi.gcp.cloudsecuritycompliance.FrameworkDeploymentArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentFrameworkArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentTargetResourceConfigArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueStringListValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueStringListValueArgs;
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
///         var example = new Framework("example", FrameworkArgs.builder()
///             .parent(String.format("projects/%s", project.number()))
///             .location("global")
///             .frameworkId("example-framework")
///             .displayName("Terraform Framework Name")
///             .description("An Terraform description for the framework")
///             .cloudControlDetails(FrameworkCloudControlDetailArgs.builder()
///                 .name(String.format("projects/%s/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown", project.number()))
///                 .majorRevisionId("2")
///                 .parameters(
///                     FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("location")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .stringValue("us-central1")
///                             .build())
///                         .build(),
///                     FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("oneof-parameter")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .oneofValue(FrameworkCloudControlDetailParameterParameterValueOneofValueArgs.builder()
///                                 .name("test-oneof")
///                                 .parameterValue(FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs.builder()
///                                     .stringValue("test-value")
///                                     .build())
///                                 .build())
///                             .build())
///                         .build(),
///                     FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("bool-parameter")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .oneofValue(FrameworkCloudControlDetailParameterParameterValueOneofValueArgs.builder()
///                                 .name("bool-oneof")
///                                 .parameterValue(FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs.builder()
///                                     .boolValue(true)
///                                     .build())
///                                 .build())
///                             .build())
///                         .build(),
///                     FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("number-parameter")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .oneofValue(FrameworkCloudControlDetailParameterParameterValueOneofValueArgs.builder()
///                                 .name("number-oneof")
///                                 .parameterValue(FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs.builder()
///                                     .numberValue(123.45)
///                                     .build())
///                                 .build())
///                             .build())
///                         .build(),
///                     FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("string-list-parameter")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .oneofValue(FrameworkCloudControlDetailParameterParameterValueOneofValueArgs.builder()
///                                 .name("string-list-oneof")
///                                 .parameterValue(FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueArgs.builder()
///                                     .stringListValue(FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValueArgs.builder()
///                                         .values(
///                                             "value1",
///                                             "value2")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                 .build())
///             .build());
///
///         var exampleFrameworkDeployment = new FrameworkDeployment("exampleFrameworkDeployment", FrameworkDeploymentArgs.builder()
///             .parent(String.format("projects/%s", project.number()))
///             .location("global")
///             .frameworkDeploymentId("example-deployment")
///             .description("A framework deployment for cloud security compliance")
///             .framework(FrameworkDeploymentFrameworkArgs.builder()
///                 .framework(example.name())
///                 .majorRevisionId("1")
///                 .build())
///             .targetResourceConfig(FrameworkDeploymentTargetResourceConfigArgs.builder()
///                 .existingTargetResource(String.format("projects/%s", project.projectId()))
///                 .build())
///             .cloudControlMetadatas(FrameworkDeploymentCloudControlMetadataArgs.builder()
///                 .enforcementMode("DETECTIVE")
///                 .cloudControlDetails(FrameworkDeploymentCloudControlMetadataCloudControlDetailsArgs.builder()
///                     .name(String.format("projects/%s/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown", project.number()))
///                     .majorRevisionId("2")
///                     .parameters(
///                         FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs.builder()
///                             .name("enabled")
///                             .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs.builder()
///                                 .boolValue(true)
///                                 .build())
///                             .build(),
///                         FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs.builder()
///                             .name("regions")
///                             .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs.builder()
///                                 .stringListValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueStringListValueArgs.builder()
///                                     .values(
///                                         "us-central1",
///                                         "us-west1",
///                                         "us-east1")
///                                     .build())
///                                 .build())
///                             .build(),
///                         FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs.builder()
///                             .name("location")
///                             .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs.builder()
///                                 .stringValue("us-central1")
///                                 .build())
///                             .build(),
///                         FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs.builder()
///                             .name("oneof-parameter")
///                             .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs.builder()
///                                 .oneofValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs.builder()
///                                     .name("test-oneof")
///                                     .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs.builder()
///                                         .stringValue("test-value")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build(),
///                         FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs.builder()
///                             .name("bool-parameter")
///                             .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs.builder()
///                                 .oneofValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs.builder()
///                                     .name("bool-oneof")
///                                     .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs.builder()
///                                         .boolValue(true)
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build(),
///                         FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs.builder()
///                             .name("number-parameter")
///                             .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs.builder()
///                                 .oneofValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs.builder()
///                                     .name("number-oneof")
///                                     .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs.builder()
///                                         .numberValue(123.45)
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build(),
///                         FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs.builder()
///                             .name("string-list-parameter")
///                             .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs.builder()
///                                 .oneofValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueArgs.builder()
///                                     .name("string-list-oneof")
///                                     .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueArgs.builder()
///                                         .stringListValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueStringListValueArgs.builder()
///                                             .values(
///                                                 "value1",
///                                                 "value2")
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:cloudsecuritycompliance:Framework
///     properties:
///       parent: projects/${project.number}
///       location: global
///       frameworkId: example-framework
///       displayName: Terraform Framework Name
///       description: An Terraform description for the framework
///       cloudControlDetails:
///         - name: projects/${project.number}/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown
///           majorRevisionId: '2'
///           parameters:
///             - name: location
///               parameterValue:
///                 stringValue: us-central1
///             - name: oneof-parameter
///               parameterValue:
///                 oneofValue:
///                   name: test-oneof
///                   parameterValue:
///                     stringValue: test-value
///             - name: bool-parameter
///               parameterValue:
///                 oneofValue:
///                   name: bool-oneof
///                   parameterValue:
///                     boolValue: true
///             - name: number-parameter
///               parameterValue:
///                 oneofValue:
///                   name: number-oneof
///                   parameterValue:
///                     numberValue: 123.45
///             - name: string-list-parameter
///               parameterValue:
///                 oneofValue:
///                   name: string-list-oneof
///                   parameterValue:
///                     stringListValue:
///                       values:
///                         - value1
///                         - value2
///   exampleFrameworkDeployment:
///     type: gcp:cloudsecuritycompliance:FrameworkDeployment
///     name: example
///     properties:
///       parent: projects/${project.number}
///       location: global
///       frameworkDeploymentId: example-deployment
///       description: A framework deployment for cloud security compliance
///       framework:
///         framework: ${example.name}
///         majorRevisionId: '1'
///       targetResourceConfig:
///         existingTargetResource: projects/${project.projectId}
///       cloudControlMetadatas:
///         - enforcementMode: DETECTIVE
///           cloudControlDetails:
///             name: projects/${project.number}/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown
///             majorRevisionId: '2'
///             parameters:
///               - name: enabled
///                 parameterValue:
///                   boolValue: true
///               - name: regions
///                 parameterValue:
///                   stringListValue:
///                     values:
///                       - us-central1
///                       - us-west1
///                       - us-east1
///               - name: location
///                 parameterValue:
///                   stringValue: us-central1
///               - name: oneof-parameter
///                 parameterValue:
///                   oneofValue:
///                     name: test-oneof
///                     parameterValue:
///                       stringValue: test-value
///               - name: bool-parameter
///                 parameterValue:
///                   oneofValue:
///                     name: bool-oneof
///                     parameterValue:
///                       boolValue: true
///               - name: number-parameter
///                 parameterValue:
///                   oneofValue:
///                     name: number-oneof
///                     parameterValue:
///                       numberValue: 123.45
///               - name: string-list-parameter
///                 parameterValue:
///                   oneofValue:
///                     name: string-list-oneof
///                     parameterValue:
///                       stringListValue:
///                         values:
///                           - value1
///                           - value2
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Cloudsecuritycompliance Framework Deployment Org Project Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.cloudsecuritycompliance.Framework("example", {
///     parent: "organizations/123456789",
///     location: "global",
///     frameworkId: "example-framework",
///     displayName: "Terraform Framework Name",
///     description: "A Terraform description for the framework",
///     cloudControlDetails: [{
///         name: "organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets",
///         majorRevisionId: "2",
///         parameters: [{
///             name: "location",
///             parameterValue: {
///                 numberValue: 1,
///             },
///         }],
///     }],
/// });
/// const exampleFrameworkDeployment = new gcp.cloudsecuritycompliance.FrameworkDeployment("example", {
///     parent: "organizations/123456789",
///     location: "global",
///     frameworkDeploymentId: "example-deployment",
///     description: "A framework deployment with org parent targeting a project",
///     framework: {
///         framework: example.name,
///         majorRevisionId: "1",
///     },
///     targetResourceConfig: {
///         existingTargetResource: project.then(project => `projects/${project.projectId}`),
///     },
///     cloudControlMetadatas: [{
///         enforcementMode: "DETECTIVE",
///         cloudControlDetails: {
///             name: "organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets",
///             majorRevisionId: "2",
///             parameters: [{
///                 name: "location",
///                 parameterValue: {
///                     numberValue: 1,
///                 },
///             }],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example = gcp.cloudsecuritycompliance.Framework("example",
///     parent="organizations/123456789",
///     location="global",
///     framework_id="example-framework",
///     display_name="Terraform Framework Name",
///     description="A Terraform description for the framework",
///     cloud_control_details=[{
///         "name": "organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets",
///         "major_revision_id": "2",
///         "parameters": [{
///             "name": "location",
///             "parameter_value": {
///                 "number_value": float(1),
///             },
///         }],
///     }])
/// example_framework_deployment = gcp.cloudsecuritycompliance.FrameworkDeployment("example",
///     parent="organizations/123456789",
///     location="global",
///     framework_deployment_id="example-deployment",
///     description="A framework deployment with org parent targeting a project",
///     framework={
///         "framework": example.name,
///         "major_revision_id": "1",
///     },
///     target_resource_config={
///         "existing_target_resource": f"projects/{project.project_id}",
///     },
///     cloud_control_metadatas=[{
///         "enforcement_mode": "DETECTIVE",
///         "cloud_control_details": {
///             "name": "organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets",
///             "major_revision_id": "2",
///             "parameters": [{
///                 "name": "location",
///                 "parameter_value": {
///                     "number_value": float(1),
///                 },
///             }],
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example = new Gcp.CloudSecurityCompliance.Framework("example", new()
///     {
///         Parent = "organizations/123456789",
///         Location = "global",
///         FrameworkId = "example-framework",
///         DisplayName = "Terraform Framework Name",
///         Description = "A Terraform description for the framework",
///         CloudControlDetails = new[]
///         {
///             new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailArgs
///             {
///                 Name = "organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets",
///                 MajorRevisionId = "2",
///                 Parameters = new[]
///                 {
///                     new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterArgs
///                     {
///                         Name = "location",
///                         ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueArgs
///                         {
///                             NumberValue = 1.0,
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleFrameworkDeployment = new Gcp.CloudSecurityCompliance.FrameworkDeployment("example", new()
///     {
///         Parent = "organizations/123456789",
///         Location = "global",
///         FrameworkDeploymentId = "example-deployment",
///         Description = "A framework deployment with org parent targeting a project",
///         Framework = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentFrameworkArgs
///         {
///             Framework = example.Name,
///             MajorRevisionId = "1",
///         },
///         TargetResourceConfig = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentTargetResourceConfigArgs
///         {
///             ExistingTargetResource = $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}",
///         },
///         CloudControlMetadatas = new[]
///         {
///             new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataArgs
///             {
///                 EnforcementMode = "DETECTIVE",
///                 CloudControlDetails = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsArgs
///                 {
///                     Name = "organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets",
///                     MajorRevisionId = "2",
///                     Parameters = new[]
///                     {
///                         new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs
///                         {
///                             Name = "location",
///                             ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs
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
/// 		example, err := cloudsecuritycompliance.NewFramework(ctx, "example", &cloudsecuritycompliance.FrameworkArgs{
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			Location:    pulumi.String("global"),
/// 			FrameworkId: pulumi.String("example-framework"),
/// 			DisplayName: pulumi.String("Terraform Framework Name"),
/// 			Description: pulumi.String("A Terraform description for the framework"),
/// 			CloudControlDetails: cloudsecuritycompliance.FrameworkCloudControlDetailArray{
/// 				&cloudsecuritycompliance.FrameworkCloudControlDetailArgs{
/// 					Name:            pulumi.String("organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets"),
/// 					MajorRevisionId: pulumi.String("2"),
/// 					Parameters: cloudsecuritycompliance.FrameworkCloudControlDetailParameterArray{
/// 						&cloudsecuritycompliance.FrameworkCloudControlDetailParameterArgs{
/// 							Name: pulumi.String("location"),
/// 							ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueArgs{
/// 								NumberValue: pulumi.Float64(1),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudsecuritycompliance.NewFrameworkDeployment(ctx, "example", &cloudsecuritycompliance.FrameworkDeploymentArgs{
/// 			Parent:                pulumi.String("organizations/123456789"),
/// 			Location:              pulumi.String("global"),
/// 			FrameworkDeploymentId: pulumi.String("example-deployment"),
/// 			Description:           pulumi.String("A framework deployment with org parent targeting a project"),
/// 			Framework: &cloudsecuritycompliance.FrameworkDeploymentFrameworkArgs{
/// 				Framework:       example.Name,
/// 				MajorRevisionId: pulumi.String("1"),
/// 			},
/// 			TargetResourceConfig: &cloudsecuritycompliance.FrameworkDeploymentTargetResourceConfigArgs{
/// 				ExistingTargetResource: pulumi.Sprintf("projects/%v", project.ProjectId),
/// 			},
/// 			CloudControlMetadatas: cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataArray{
/// 				&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataArgs{
/// 					EnforcementMode: pulumi.String("DETECTIVE"),
/// 					CloudControlDetails: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsArgs{
/// 						Name:            pulumi.String("organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets"),
/// 						MajorRevisionId: pulumi.String("2"),
/// 						Parameters: cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArray{
/// 							&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs{
/// 								Name: pulumi.String("location"),
/// 								ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs{
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
/// resource "gcp_cloudsecuritycompliance_framework" "example" {
///   parent       = "organizations/123456789"
///   location     = "global"
///   framework_id = "example-framework"
///   display_name = "Terraform Framework Name"
///   description  = "A Terraform description for the framework"
///   cloud_control_details {
///     name              = "organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets"
///     major_revision_id = "2"
///     parameters {
///       name = "location"
///       parameter_value = {
///         number_value = 1
///       }
///     }
///   }
/// }
/// resource "gcp_cloudsecuritycompliance_frameworkdeployment" "example" {
///   parent                  = "organizations/123456789"
///   location                = "global"
///   framework_deployment_id = "example-deployment"
///   description             = "A framework deployment with org parent targeting a project"
///   framework = {
///     framework         = gcp_cloudsecuritycompliance_framework.example.name
///     major_revision_id = "1"
///   }
///   target_resource_config = {
///     existing_target_resource ="projects/${data.gcp_organizations_getproject.project.project_id}"
///   }
///   # Using project_id ensures the API's response matches Terraform's state
///   cloud_control_metadatas {
///     enforcement_mode = "DETECTIVE"
///     cloud_control_details = {
///       name              = "organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets"
///       major_revision_id = "2"
///       parameters = [{
///         "name" = "location"
///         "parameterValue" = {
///           "numberValue" = 1
///         }
///       }]
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
/// import com.pulumi.gcp.cloudsecuritycompliance.Framework;
/// import com.pulumi.gcp.cloudsecuritycompliance.FrameworkArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailParameterArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailParameterParameterValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.FrameworkDeployment;
/// import com.pulumi.gcp.cloudsecuritycompliance.FrameworkDeploymentArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentFrameworkArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentTargetResourceConfigArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs;
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
///         var example = new Framework("example", FrameworkArgs.builder()
///             .parent("organizations/123456789")
///             .location("global")
///             .frameworkId("example-framework")
///             .displayName("Terraform Framework Name")
///             .description("A Terraform description for the framework")
///             .cloudControlDetails(FrameworkCloudControlDetailArgs.builder()
///                 .name("organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets")
///                 .majorRevisionId("2")
///                 .parameters(FrameworkCloudControlDetailParameterArgs.builder()
///                     .name("location")
///                     .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                         .numberValue(1.0)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var exampleFrameworkDeployment = new FrameworkDeployment("exampleFrameworkDeployment", FrameworkDeploymentArgs.builder()
///             .parent("organizations/123456789")
///             .location("global")
///             .frameworkDeploymentId("example-deployment")
///             .description("A framework deployment with org parent targeting a project")
///             .framework(FrameworkDeploymentFrameworkArgs.builder()
///                 .framework(example.name())
///                 .majorRevisionId("1")
///                 .build())
///             .targetResourceConfig(FrameworkDeploymentTargetResourceConfigArgs.builder()
///                 .existingTargetResource(String.format("projects/%s", project.projectId()))
///                 .build())
///             .cloudControlMetadatas(FrameworkDeploymentCloudControlMetadataArgs.builder()
///                 .enforcementMode("DETECTIVE")
///                 .cloudControlDetails(FrameworkDeploymentCloudControlMetadataCloudControlDetailsArgs.builder()
///                     .name("organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets")
///                     .majorRevisionId("2")
///                     .parameters(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs.builder()
///                         .name("location")
///                         .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs.builder()
///                             .numberValue(1.0)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:cloudsecuritycompliance:Framework
///     properties:
///       parent: organizations/123456789
///       location: global
///       frameworkId: example-framework
///       displayName: Terraform Framework Name
///       description: A Terraform description for the framework
///       cloudControlDetails:
///         - name: organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets
///           majorRevisionId: '2'
///           parameters:
///             - name: location
///               parameterValue:
///                 numberValue: 1
///   exampleFrameworkDeployment:
///     type: gcp:cloudsecuritycompliance:FrameworkDeployment
///     name: example
///     properties:
///       parent: organizations/123456789
///       location: global
///       frameworkDeploymentId: example-deployment
///       description: A framework deployment with org parent targeting a project
///       framework:
///         framework: ${example.name}
///         majorRevisionId: '1'
///       targetResourceConfig:
///         existingTargetResource: projects/${project.projectId}
///       cloudControlMetadatas:
///         - enforcementMode: DETECTIVE
///           cloudControlDetails:
///             name: organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets
///             majorRevisionId: '2'
///             parameters:
///               - name: location
///                 parameterValue:
///                   numberValue: 1
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Cloudsecuritycompliance Framework Deployment Project Application Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// // App Hub Application resource to act as the target
/// const application = new gcp.apphub.Application("application", {
///     location: "us-central1",
///     applicationId: "example-app",
///     scope: {
///         type: "REGIONAL",
///     },
/// });
/// const example = new gcp.cloudsecuritycompliance.Framework("example", {
///     parent: project.then(project => `projects/${project.number}`),
///     location: "global",
///     frameworkId: "example-framework",
///     displayName: "Terraform Framework Name",
///     description: "A Terraform description for the framework",
///     cloudControlDetails: [{
///         name: project.then(project => `projects/${project.number}/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets`),
///         majorRevisionId: "2",
///         parameters: [{
///             name: "location",
///             parameterValue: {
///                 numberValue: 1,
///             },
///         }],
///     }],
/// });
/// const exampleFrameworkDeployment = new gcp.cloudsecuritycompliance.FrameworkDeployment("example", {
///     parent: project.then(project => `projects/${project.number}`),
///     location: "global",
///     frameworkDeploymentId: "example-deployment",
///     description: "A framework deployment with project parent targeting an application",
///     framework: {
///         framework: example.name,
///         majorRevisionId: "1",
///     },
///     targetResourceConfig: {
///         existingTargetResource: pulumi.all([project, application.applicationId]).apply(([project, applicationId]) => `projects/${project.number}/locations/us-central1/applications/${applicationId}`),
///     },
///     cloudControlMetadatas: [{
///         enforcementMode: "DETECTIVE",
///         cloudControlDetails: {
///             name: project.then(project => `projects/${project.number}/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets`),
///             majorRevisionId: "2",
///             parameters: [{
///                 name: "location",
///                 parameterValue: {
///                     numberValue: 1,
///                 },
///             }],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// # App Hub Application resource to act as the target
/// application = gcp.apphub.Application("application",
///     location="us-central1",
///     application_id="example-app",
///     scope={
///         "type": "REGIONAL",
///     })
/// example = gcp.cloudsecuritycompliance.Framework("example",
///     parent=f"projects/{project.number}",
///     location="global",
///     framework_id="example-framework",
///     display_name="Terraform Framework Name",
///     description="A Terraform description for the framework",
///     cloud_control_details=[{
///         "name": f"projects/{project.number}/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets",
///         "major_revision_id": "2",
///         "parameters": [{
///             "name": "location",
///             "parameter_value": {
///                 "number_value": float(1),
///             },
///         }],
///     }])
/// example_framework_deployment = gcp.cloudsecuritycompliance.FrameworkDeployment("example",
///     parent=f"projects/{project.number}",
///     location="global",
///     framework_deployment_id="example-deployment",
///     description="A framework deployment with project parent targeting an application",
///     framework={
///         "framework": example.name,
///         "major_revision_id": "1",
///     },
///     target_resource_config={
///         "existing_target_resource": application.application_id.apply(lambda application_id: f"projects/{project.number}/locations/us-central1/applications/{application_id}"),
///     },
///     cloud_control_metadatas=[{
///         "enforcement_mode": "DETECTIVE",
///         "cloud_control_details": {
///             "name": f"projects/{project.number}/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets",
///             "major_revision_id": "2",
///             "parameters": [{
///                 "name": "location",
///                 "parameter_value": {
///                     "number_value": float(1),
///                 },
///             }],
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     // App Hub Application resource to act as the target
///     var application = new Gcp.Apphub.Application("application", new()
///     {
///         Location = "us-central1",
///         ApplicationId = "example-app",
///         Scope = new Gcp.Apphub.Inputs.ApplicationScopeArgs
///         {
///             Type = "REGIONAL",
///         },
///     });
///
///     var example = new Gcp.CloudSecurityCompliance.Framework("example", new()
///     {
///         Parent = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///         Location = "global",
///         FrameworkId = "example-framework",
///         DisplayName = "Terraform Framework Name",
///         Description = "A Terraform description for the framework",
///         CloudControlDetails = new[]
///         {
///             new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailArgs
///             {
///                 Name = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets",
///                 MajorRevisionId = "2",
///                 Parameters = new[]
///                 {
///                     new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterArgs
///                     {
///                         Name = "location",
///                         ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueArgs
///                         {
///                             NumberValue = 1.0,
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleFrameworkDeployment = new Gcp.CloudSecurityCompliance.FrameworkDeployment("example", new()
///     {
///         Parent = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///         Location = "global",
///         FrameworkDeploymentId = "example-deployment",
///         Description = "A framework deployment with project parent targeting an application",
///         Framework = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentFrameworkArgs
///         {
///             Framework = example.Name,
///             MajorRevisionId = "1",
///         },
///         TargetResourceConfig = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentTargetResourceConfigArgs
///         {
///             ExistingTargetResource = Output.Tuple(project, application.ApplicationId).Apply(values =>
///             {
///                 var project = values.Item1;
///                 var applicationId = values.Item2;
///                 return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/us-central1/applications/{applicationId}";
///             }),
///         },
///         CloudControlMetadatas = new[]
///         {
///             new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataArgs
///             {
///                 EnforcementMode = "DETECTIVE",
///                 CloudControlDetails = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsArgs
///                 {
///                     Name = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets",
///                     MajorRevisionId = "2",
///                     Parameters = new[]
///                     {
///                         new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs
///                         {
///                             Name = "location",
///                             ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apphub"
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
/// 		// App Hub Application resource to act as the target
/// 		application, err := apphub.NewApplication(ctx, "application", &apphub.ApplicationArgs{
/// 			Location:      pulumi.String("us-central1"),
/// 			ApplicationId: pulumi.String("example-app"),
/// 			Scope: &apphub.ApplicationScopeArgs{
/// 				Type: pulumi.String("REGIONAL"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := cloudsecuritycompliance.NewFramework(ctx, "example", &cloudsecuritycompliance.FrameworkArgs{
/// 			Parent:      pulumi.Sprintf("projects/%v", project.Number),
/// 			Location:    pulumi.String("global"),
/// 			FrameworkId: pulumi.String("example-framework"),
/// 			DisplayName: pulumi.String("Terraform Framework Name"),
/// 			Description: pulumi.String("A Terraform description for the framework"),
/// 			CloudControlDetails: cloudsecuritycompliance.FrameworkCloudControlDetailArray{
/// 				&cloudsecuritycompliance.FrameworkCloudControlDetailArgs{
/// 					Name:            pulumi.Sprintf("projects/%v/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets", project.Number),
/// 					MajorRevisionId: pulumi.String("2"),
/// 					Parameters: cloudsecuritycompliance.FrameworkCloudControlDetailParameterArray{
/// 						&cloudsecuritycompliance.FrameworkCloudControlDetailParameterArgs{
/// 							Name: pulumi.String("location"),
/// 							ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueArgs{
/// 								NumberValue: pulumi.Float64(1),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudsecuritycompliance.NewFrameworkDeployment(ctx, "example", &cloudsecuritycompliance.FrameworkDeploymentArgs{
/// 			Parent:                pulumi.Sprintf("projects/%v", project.Number),
/// 			Location:              pulumi.String("global"),
/// 			FrameworkDeploymentId: pulumi.String("example-deployment"),
/// 			Description:           pulumi.String("A framework deployment with project parent targeting an application"),
/// 			Framework: &cloudsecuritycompliance.FrameworkDeploymentFrameworkArgs{
/// 				Framework:       example.Name,
/// 				MajorRevisionId: pulumi.String("1"),
/// 			},
/// 			TargetResourceConfig: &cloudsecuritycompliance.FrameworkDeploymentTargetResourceConfigArgs{
/// 				ExistingTargetResource: application.ApplicationId.ApplyT(func(applicationId string) (string, error) {
/// 					return fmt.Sprintf("projects/%v/locations/us-central1/applications/%v", project.Number, applicationId), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			CloudControlMetadatas: cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataArray{
/// 				&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataArgs{
/// 					EnforcementMode: pulumi.String("DETECTIVE"),
/// 					CloudControlDetails: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsArgs{
/// 						Name:            pulumi.Sprintf("projects/%v/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets", project.Number),
/// 						MajorRevisionId: pulumi.String("2"),
/// 						Parameters: cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArray{
/// 							&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs{
/// 								Name: pulumi.String("location"),
/// 								ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs{
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
/// # App Hub Application resource to act as the target
/// resource "gcp_apphub_application" "application" {
///   location       = "us-central1"
///   application_id = "example-app"
///   scope = {
///     type = "REGIONAL"
///   }
/// }
/// resource "gcp_cloudsecuritycompliance_framework" "example" {
///   parent       ="projects/${data.gcp_organizations_getproject.project.number}"
///   location     = "global"
///   framework_id = "example-framework"
///   display_name = "Terraform Framework Name"
///   description  = "A Terraform description for the framework"
///   cloud_control_details {
///     name              ="projects/${data.gcp_organizations_getproject.project.number}/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets"
///     major_revision_id = "2"
///     parameters {
///       name = "location"
///       parameter_value = {
///         number_value = 1
///       }
///     }
///   }
/// }
/// resource "gcp_cloudsecuritycompliance_frameworkdeployment" "example" {
///   parent                  ="projects/${data.gcp_organizations_getproject.project.number}"
///   location                = "global"
///   framework_deployment_id = "example-deployment"
///   description             = "A framework deployment with project parent targeting an application"
///   framework = {
///     framework         = gcp_cloudsecuritycompliance_framework.example.name
///     major_revision_id = "1"
///   }
///   target_resource_config = {
///     existing_target_resource ="projects/${data.gcp_organizations_getproject.project.number}/locations/us-central1/applications/${gcp_apphub_application.application.application_id}"
///   }
///   # Target the App Hub Application's fully qualified ID
///   # e.g., projects/abc/locations/us-central1/applications/app-name
///   cloud_control_metadatas {
///     enforcement_mode = "DETECTIVE"
///     cloud_control_details = {
///       name              ="projects/${data.gcp_organizations_getproject.project.number}/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets"
///       major_revision_id = "2"
///       parameters = [{
///         "name" = "location"
///         "parameterValue" = {
///           "numberValue" = 1
///         }
///       }]
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
/// import com.pulumi.gcp.apphub.Application;
/// import com.pulumi.gcp.apphub.ApplicationArgs;
/// import com.pulumi.gcp.apphub.inputs.ApplicationScopeArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.Framework;
/// import com.pulumi.gcp.cloudsecuritycompliance.FrameworkArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailParameterArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailParameterParameterValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.FrameworkDeployment;
/// import com.pulumi.gcp.cloudsecuritycompliance.FrameworkDeploymentArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentFrameworkArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentTargetResourceConfigArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs;
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
///         // App Hub Application resource to act as the target
///         var application = new Application("application", ApplicationArgs.builder()
///             .location("us-central1")
///             .applicationId("example-app")
///             .scope(ApplicationScopeArgs.builder()
///                 .type("REGIONAL")
///                 .build())
///             .build());
///
///         var example = new Framework("example", FrameworkArgs.builder()
///             .parent(String.format("projects/%s", project.number()))
///             .location("global")
///             .frameworkId("example-framework")
///             .displayName("Terraform Framework Name")
///             .description("A Terraform description for the framework")
///             .cloudControlDetails(FrameworkCloudControlDetailArgs.builder()
///                 .name(String.format("projects/%s/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets", project.number()))
///                 .majorRevisionId("2")
///                 .parameters(FrameworkCloudControlDetailParameterArgs.builder()
///                     .name("location")
///                     .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                         .numberValue(1.0)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var exampleFrameworkDeployment = new FrameworkDeployment("exampleFrameworkDeployment", FrameworkDeploymentArgs.builder()
///             .parent(String.format("projects/%s", project.number()))
///             .location("global")
///             .frameworkDeploymentId("example-deployment")
///             .description("A framework deployment with project parent targeting an application")
///             .framework(FrameworkDeploymentFrameworkArgs.builder()
///                 .framework(example.name())
///                 .majorRevisionId("1")
///                 .build())
///             .targetResourceConfig(FrameworkDeploymentTargetResourceConfigArgs.builder()
///                 .existingTargetResource(application.applicationId().applyValue(_applicationId -> String.format("projects/%s/locations/us-central1/applications/%s", project.number(),_applicationId)))
///                 .build())
///             .cloudControlMetadatas(FrameworkDeploymentCloudControlMetadataArgs.builder()
///                 .enforcementMode("DETECTIVE")
///                 .cloudControlDetails(FrameworkDeploymentCloudControlMetadataCloudControlDetailsArgs.builder()
///                     .name(String.format("projects/%s/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets", project.number()))
///                     .majorRevisionId("2")
///                     .parameters(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs.builder()
///                         .name("location")
///                         .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs.builder()
///                             .numberValue(1.0)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # App Hub Application resource to act as the target
///   application:
///     type: gcp:apphub:Application
///     properties:
///       location: us-central1
///       applicationId: example-app
///       scope:
///         type: REGIONAL
///   example:
///     type: gcp:cloudsecuritycompliance:Framework
///     properties:
///       parent: projects/${project.number}
///       location: global
///       frameworkId: example-framework
///       displayName: Terraform Framework Name
///       description: A Terraform description for the framework
///       cloudControlDetails:
///         - name: projects/${project.number}/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets
///           majorRevisionId: '2'
///           parameters:
///             - name: location
///               parameterValue:
///                 numberValue: 1
///   exampleFrameworkDeployment:
///     type: gcp:cloudsecuritycompliance:FrameworkDeployment
///     name: example
///     properties:
///       parent: projects/${project.number}
///       location: global
///       frameworkDeploymentId: example-deployment
///       description: A framework deployment with project parent targeting an application
///       framework:
///         framework: ${example.name}
///         majorRevisionId: '1'
///       targetResourceConfig:
///         existingTargetResource: projects/${project.number}/locations/us-central1/applications/${application.applicationId}
///       cloudControlMetadatas:
///         - enforcementMode: DETECTIVE
///           cloudControlDetails:
///             name: projects/${project.number}/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets
///             majorRevisionId: '2'
///             parameters:
///               - name: location
///                 parameterValue:
///                   numberValue: 1
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Cloudsecuritycompliance Framework Deployment Org Basic Backward
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.cloudsecuritycompliance.Framework("example", {
///     organization: "123456789",
///     location: "global",
///     frameworkId: "example-framework",
///     displayName: "Terraform Framework Name",
///     description: "An Terraform description for the framework",
///     cloudControlDetails: [{
///         name: "organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown",
///         majorRevisionId: "2",
///         parameters: [{
///             name: "location",
///             parameterValue: {
///                 stringValue: "us-central1",
///             },
///         }],
///     }],
/// });
/// const exampleFrameworkDeployment = new gcp.cloudsecuritycompliance.FrameworkDeployment("example", {
///     organization: "123456789",
///     location: "global",
///     frameworkDeploymentId: "example-deployment",
///     description: "A framework deployment for cloud security compliance",
///     framework: {
///         framework: example.name,
///         majorRevisionId: "1",
///     },
///     targetResourceConfig: {
///         existingTargetResource: "organizations/123456789",
///     },
///     cloudControlMetadatas: [{
///         enforcementMode: "DETECTIVE",
///         cloudControlDetails: {
///             name: "organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown",
///             majorRevisionId: "2",
///             parameters: [{
///                 name: "enabled",
///                 parameterValue: {
///                     boolValue: true,
///                 },
///             }],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.cloudsecuritycompliance.Framework("example",
///     organization="123456789",
///     location="global",
///     framework_id="example-framework",
///     display_name="Terraform Framework Name",
///     description="An Terraform description for the framework",
///     cloud_control_details=[{
///         "name": "organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown",
///         "major_revision_id": "2",
///         "parameters": [{
///             "name": "location",
///             "parameter_value": {
///                 "string_value": "us-central1",
///             },
///         }],
///     }])
/// example_framework_deployment = gcp.cloudsecuritycompliance.FrameworkDeployment("example",
///     organization="123456789",
///     location="global",
///     framework_deployment_id="example-deployment",
///     description="A framework deployment for cloud security compliance",
///     framework={
///         "framework": example.name,
///         "major_revision_id": "1",
///     },
///     target_resource_config={
///         "existing_target_resource": "organizations/123456789",
///     },
///     cloud_control_metadatas=[{
///         "enforcement_mode": "DETECTIVE",
///         "cloud_control_details": {
///             "name": "organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown",
///             "major_revision_id": "2",
///             "parameters": [{
///                 "name": "enabled",
///                 "parameter_value": {
///                     "bool_value": True,
///                 },
///             }],
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
///     var example = new Gcp.CloudSecurityCompliance.Framework("example", new()
///     {
///         Organization = "123456789",
///         Location = "global",
///         FrameworkId = "example-framework",
///         DisplayName = "Terraform Framework Name",
///         Description = "An Terraform description for the framework",
///         CloudControlDetails = new[]
///         {
///             new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailArgs
///             {
///                 Name = "organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown",
///                 MajorRevisionId = "2",
///                 Parameters = new[]
///                 {
///                     new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterArgs
///                     {
///                         Name = "location",
///                         ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueArgs
///                         {
///                             StringValue = "us-central1",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleFrameworkDeployment = new Gcp.CloudSecurityCompliance.FrameworkDeployment("example", new()
///     {
///         Organization = "123456789",
///         Location = "global",
///         FrameworkDeploymentId = "example-deployment",
///         Description = "A framework deployment for cloud security compliance",
///         Framework = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentFrameworkArgs
///         {
///             Framework = example.Name,
///             MajorRevisionId = "1",
///         },
///         TargetResourceConfig = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentTargetResourceConfigArgs
///         {
///             ExistingTargetResource = "organizations/123456789",
///         },
///         CloudControlMetadatas = new[]
///         {
///             new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataArgs
///             {
///                 EnforcementMode = "DETECTIVE",
///                 CloudControlDetails = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsArgs
///                 {
///                     Name = "organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown",
///                     MajorRevisionId = "2",
///                     Parameters = new[]
///                     {
///                         new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs
///                         {
///                             Name = "enabled",
///                             ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs
///                             {
///                                 BoolValue = true,
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
/// 		example, err := cloudsecuritycompliance.NewFramework(ctx, "example", &cloudsecuritycompliance.FrameworkArgs{
/// 			Organization: pulumi.String("123456789"),
/// 			Location:     pulumi.String("global"),
/// 			FrameworkId:  pulumi.String("example-framework"),
/// 			DisplayName:  pulumi.String("Terraform Framework Name"),
/// 			Description:  pulumi.String("An Terraform description for the framework"),
/// 			CloudControlDetails: cloudsecuritycompliance.FrameworkCloudControlDetailArray{
/// 				&cloudsecuritycompliance.FrameworkCloudControlDetailArgs{
/// 					Name:            pulumi.String("organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown"),
/// 					MajorRevisionId: pulumi.String("2"),
/// 					Parameters: cloudsecuritycompliance.FrameworkCloudControlDetailParameterArray{
/// 						&cloudsecuritycompliance.FrameworkCloudControlDetailParameterArgs{
/// 							Name: pulumi.String("location"),
/// 							ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueArgs{
/// 								StringValue: pulumi.String("us-central1"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudsecuritycompliance.NewFrameworkDeployment(ctx, "example", &cloudsecuritycompliance.FrameworkDeploymentArgs{
/// 			Organization:          pulumi.String("123456789"),
/// 			Location:              pulumi.String("global"),
/// 			FrameworkDeploymentId: pulumi.String("example-deployment"),
/// 			Description:           pulumi.String("A framework deployment for cloud security compliance"),
/// 			Framework: &cloudsecuritycompliance.FrameworkDeploymentFrameworkArgs{
/// 				Framework:       example.Name,
/// 				MajorRevisionId: pulumi.String("1"),
/// 			},
/// 			TargetResourceConfig: &cloudsecuritycompliance.FrameworkDeploymentTargetResourceConfigArgs{
/// 				ExistingTargetResource: pulumi.String("organizations/123456789"),
/// 			},
/// 			CloudControlMetadatas: cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataArray{
/// 				&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataArgs{
/// 					EnforcementMode: pulumi.String("DETECTIVE"),
/// 					CloudControlDetails: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsArgs{
/// 						Name:            pulumi.String("organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown"),
/// 						MajorRevisionId: pulumi.String("2"),
/// 						Parameters: cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArray{
/// 							&cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs{
/// 								Name: pulumi.String("enabled"),
/// 								ParameterValue: &cloudsecuritycompliance.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs{
/// 									BoolValue: pulumi.Bool(true),
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
/// resource "gcp_cloudsecuritycompliance_framework" "example" {
///   organization = "123456789"
///   location     = "global"
///   framework_id = "example-framework"
///   display_name = "Terraform Framework Name"
///   description  = "An Terraform description for the framework"
///   cloud_control_details {
///     name              = "organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown"
///     major_revision_id = "2"
///     parameters {
///       name = "location"
///       parameter_value = {
///         string_value = "us-central1"
///       }
///     }
///   }
/// }
/// resource "gcp_cloudsecuritycompliance_frameworkdeployment" "example" {
///   organization            = "123456789"
///   location                = "global"
///   framework_deployment_id = "example-deployment"
///   description             = "A framework deployment for cloud security compliance"
///   framework = {
///     framework         = gcp_cloudsecuritycompliance_framework.example.name
///     major_revision_id = "1"
///   }
///   target_resource_config = {
///     existing_target_resource = "organizations/123456789"
///   }
///   cloud_control_metadatas {
///     enforcement_mode = "DETECTIVE"
///     cloud_control_details = {
///       name              = "organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown"
///       major_revision_id = "2"
///       parameters = [{
///         "name" = "enabled"
///         "parameterValue" = {
///           "boolValue" = true
///         }
///       }]
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
/// import com.pulumi.gcp.cloudsecuritycompliance.Framework;
/// import com.pulumi.gcp.cloudsecuritycompliance.FrameworkArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailParameterArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailParameterParameterValueArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.FrameworkDeployment;
/// import com.pulumi.gcp.cloudsecuritycompliance.FrameworkDeploymentArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentFrameworkArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentTargetResourceConfigArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs;
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs;
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
///         var example = new Framework("example", FrameworkArgs.builder()
///             .organization("123456789")
///             .location("global")
///             .frameworkId("example-framework")
///             .displayName("Terraform Framework Name")
///             .description("An Terraform description for the framework")
///             .cloudControlDetails(FrameworkCloudControlDetailArgs.builder()
///                 .name("organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown")
///                 .majorRevisionId("2")
///                 .parameters(FrameworkCloudControlDetailParameterArgs.builder()
///                     .name("location")
///                     .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                         .stringValue("us-central1")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var exampleFrameworkDeployment = new FrameworkDeployment("exampleFrameworkDeployment", FrameworkDeploymentArgs.builder()
///             .organization("123456789")
///             .location("global")
///             .frameworkDeploymentId("example-deployment")
///             .description("A framework deployment for cloud security compliance")
///             .framework(FrameworkDeploymentFrameworkArgs.builder()
///                 .framework(example.name())
///                 .majorRevisionId("1")
///                 .build())
///             .targetResourceConfig(FrameworkDeploymentTargetResourceConfigArgs.builder()
///                 .existingTargetResource("organizations/123456789")
///                 .build())
///             .cloudControlMetadatas(FrameworkDeploymentCloudControlMetadataArgs.builder()
///                 .enforcementMode("DETECTIVE")
///                 .cloudControlDetails(FrameworkDeploymentCloudControlMetadataCloudControlDetailsArgs.builder()
///                     .name("organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown")
///                     .majorRevisionId("2")
///                     .parameters(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterArgs.builder()
///                         .name("enabled")
///                         .parameterValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueArgs.builder()
///                             .boolValue(true)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:cloudsecuritycompliance:Framework
///     properties:
///       organization: '123456789'
///       location: global
///       frameworkId: example-framework
///       displayName: Terraform Framework Name
///       description: An Terraform description for the framework
///       cloudControlDetails:
///         - name: organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown
///           majorRevisionId: '2'
///           parameters:
///             - name: location
///               parameterValue:
///                 stringValue: us-central1
///   exampleFrameworkDeployment:
///     type: gcp:cloudsecuritycompliance:FrameworkDeployment
///     name: example
///     properties:
///       organization: '123456789'
///       location: global
///       frameworkDeploymentId: example-deployment
///       description: A framework deployment for cloud security compliance
///       framework:
///         framework: ${example.name}
///         majorRevisionId: '1'
///       targetResourceConfig:
///         existingTargetResource: organizations/123456789
///       cloudControlMetadatas:
///         - enforcementMode: DETECTIVE
///           cloudControlDetails:
///             name: organizations/123456789/locations/global/cloudControls/builtin-detective-policy-for-vertex-ai-runtime-template-idle-shutdown
///             majorRevisionId: '2'
///             parameters:
///               - name: enabled
///                 parameterValue:
///                   boolValue: true
/// ```
///
///
/// ## Import
///
/// FrameworkDeployment can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/locations/{{location}}/frameworkDeployments/{{framework_deployment_id}}`
/// * `{{parent}}/locations/{{location}}/frameworkDeployments/{{framework_deployment_id}}`
///
///
/// When using the `pulumi import` command, FrameworkDeployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudsecuritycompliance/frameworkDeployment:FrameworkDeployment default organizations/{{organization}}/locations/{{location}}/frameworkDeployments/{{framework_deployment_id}}
/// $ pulumi import gcp:cloudsecuritycompliance/frameworkDeployment:FrameworkDeployment default {{parent}}/locations/{{location}}/frameworkDeployments/{{framework_deployment_id}}
/// ```
class FrameworkDeployment extends pulumi.CustomResource {
  /// The references to the cloud control deployments. It has all the
  /// CloudControlDeployments which are either directly added in the framework or
  /// through a CloudControlGroup.
  /// Example: If a framework deployment deploys two
  /// cloud controls, cc-deployment-1 and cc-deployment-2, then the
  /// cloudControlDeploymentReferences will be:
  /// {
  /// cloud_control_deployment_reference: {
  /// cloud_control_deployment:
  /// "organizations/{organization}/locations/{location}/cloudControlDeployments/cc-deployment-1"
  /// },
  /// cloud_control_deployment_reference: {
  /// cloud_control_deployment:
  /// "organizations/{organization}/locations/{location}/cloudControlDeployments/cc-deployment-2"
  /// }
  /// Structure is documented below.
  late final pulumi.Output<List<FrameworkDeploymentCloudControlDeploymentReference>> cloudControlDeploymentReferences;
  /// Deployment mode and parameters for each of the Cloud Controls in
  /// the framework. Every Cloud Control in the framework must have a
  /// CloudControlMetadata.
  /// Structure is documented below.
  late final pulumi.Output<List<FrameworkDeploymentCloudControlMetadata>> cloudControlMetadatas;
  /// The resource on which the Framework is deployed based on the provided
  /// TargetResourceConfig in the following format:
  /// organizations/{organization}, folders/{folder} or projects/{project}
  late final pulumi.Output<String> computedTargetResource;
  /// The time at which the resource was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The deployment state of the framework.
  /// Possible values:
  /// DEPLOYMENT_STATE_VALIDATING
  /// DEPLOYMENT_STATE_CREATING
  /// DEPLOYMENT_STATE_DELETING
  /// DEPLOYMENT_STATE_FAILED
  /// DEPLOYMENT_STATE_READY
  /// DEPLOYMENT_STATE_PARTIALLY_DEPLOYED
  /// DEPLOYMENT_STATE_PARTIALLY_DELETED
  late final pulumi.Output<String> deploymentState;
  /// User provided description of the Framework deployment
  late final pulumi.Output<String?> description;
  /// To prevent concurrent updates from overwriting each other, always provide
  /// the `etag` when you update a FrameworkDeployment. You can also
  /// provide the `etag` when you delete a FrameworkDeployment, to help
  /// ensure that you're deleting the intended version of the
  /// FrameworkDeployment.
  late final pulumi.Output<String> etag;
  /// FrameworkReference contains the reference of a framework.
  /// Structure is documented below.
  late final pulumi.Output<FrameworkDeploymentFramework> framework;
  /// User provided identifier. It should be unique in scope of a parent.
  /// This is optional and if not provided, a random UUID will be generated.
  late final pulumi.Output<String> frameworkDeploymentId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String?> location;
  /// Identifier. FrameworkDeployment name in the following format:
  /// {parent}/locations/{location}/frameworkDeployments/{framework_deployment_id}
  late final pulumi.Output<String> name;
  /// (Optional, Deprecated)
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  ///
  /// &gt; **Warning:** Use `parent` instead.
  late final pulumi.Output<String> organization;
  /// The parent resource in which to create the resource.
  /// Must be in one of the following formats:
  /// * `projects/{{project}}`
  /// * `organizations/{{organization}}`
  late final pulumi.Output<String> parent;
  /// TargetResourceConfig contains either the name of the targetResource or
  /// contains the config to create a new target_resource.
  /// Structure is documented below.
  late final pulumi.Output<FrameworkDeploymentTargetResourceConfig> targetResourceConfig;
  /// The display name of the target resource.
  late final pulumi.Output<String> targetResourceDisplayName;
  /// The time at which the resource last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [FrameworkDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FrameworkDeployment]. {@macro pulumi_cloudsecuritycompliance_framework_deployment_framework_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FrameworkDeployment(
    String name, {
    FrameworkDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudsecuritycompliance/frameworkDeployment:FrameworkDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    cloudControlDeploymentReferences = registerOutput<List<FrameworkDeploymentCloudControlDeploymentReference>>('cloudControlDeploymentReferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrameworkDeploymentCloudControlDeploymentReference>(guardedValue, (value) => FrameworkDeploymentCloudControlDeploymentReference.fromMap((value as Map).cast<String, dynamic>())); });
    cloudControlMetadatas = registerOutput<List<FrameworkDeploymentCloudControlMetadata>>('cloudControlMetadatas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrameworkDeploymentCloudControlMetadata>(guardedValue, (value) => FrameworkDeploymentCloudControlMetadata.fromMap((value as Map).cast<String, dynamic>())); });
    computedTargetResource = registerOutput<String>('computedTargetResource');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deploymentState = registerOutput<String>('deploymentState');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    framework = registerOutput<FrameworkDeploymentFramework>('framework', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FrameworkDeploymentFramework.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    frameworkDeploymentId = registerOutput<String>('frameworkDeploymentId');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    parent = registerOutput<String>('parent');
    targetResourceConfig = registerOutput<FrameworkDeploymentTargetResourceConfig>('targetResourceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FrameworkDeploymentTargetResourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetResourceDisplayName = registerOutput<String>('targetResourceDisplayName');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [FrameworkDeployment] resource's state with the given [name] and [id].
  static FrameworkDeployment get(
    String name,
    pulumi.Input<String> id, {
    FrameworkDeploymentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FrameworkDeployment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FrameworkDeployment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudsecuritycompliance/frameworkDeployment:FrameworkDeployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cloudControlDeploymentReferences = registerOutput<List<FrameworkDeploymentCloudControlDeploymentReference>>('cloudControlDeploymentReferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrameworkDeploymentCloudControlDeploymentReference>(guardedValue, (value) => FrameworkDeploymentCloudControlDeploymentReference.fromMap((value as Map).cast<String, dynamic>())); });
    cloudControlMetadatas = registerOutput<List<FrameworkDeploymentCloudControlMetadata>>('cloudControlMetadatas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrameworkDeploymentCloudControlMetadata>(guardedValue, (value) => FrameworkDeploymentCloudControlMetadata.fromMap((value as Map).cast<String, dynamic>())); });
    computedTargetResource = registerOutput<String>('computedTargetResource');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deploymentState = registerOutput<String>('deploymentState');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    framework = registerOutput<FrameworkDeploymentFramework>('framework', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FrameworkDeploymentFramework.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    frameworkDeploymentId = registerOutput<String>('frameworkDeploymentId');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    parent = registerOutput<String>('parent');
    targetResourceConfig = registerOutput<FrameworkDeploymentTargetResourceConfig>('targetResourceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FrameworkDeploymentTargetResourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetResourceDisplayName = registerOutput<String>('targetResourceDisplayName');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [FrameworkDeployment] resource.
  FrameworkDeployment.reference(String urn)
    : super(
        'gcp:cloudsecuritycompliance/frameworkDeployment:FrameworkDeployment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cloudControlDeploymentReferences = registerOutput<List<FrameworkDeploymentCloudControlDeploymentReference>>('cloudControlDeploymentReferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrameworkDeploymentCloudControlDeploymentReference>(guardedValue, (value) => FrameworkDeploymentCloudControlDeploymentReference.fromMap((value as Map).cast<String, dynamic>())); });
    cloudControlMetadatas = registerOutput<List<FrameworkDeploymentCloudControlMetadata>>('cloudControlMetadatas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrameworkDeploymentCloudControlMetadata>(guardedValue, (value) => FrameworkDeploymentCloudControlMetadata.fromMap((value as Map).cast<String, dynamic>())); });
    computedTargetResource = registerOutput<String>('computedTargetResource');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deploymentState = registerOutput<String>('deploymentState');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    framework = registerOutput<FrameworkDeploymentFramework>('framework', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FrameworkDeploymentFramework.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    frameworkDeploymentId = registerOutput<String>('frameworkDeploymentId');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    parent = registerOutput<String>('parent');
    targetResourceConfig = registerOutput<FrameworkDeploymentTargetResourceConfig>('targetResourceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FrameworkDeploymentTargetResourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetResourceDisplayName = registerOutput<String>('targetResourceDisplayName');
    updateTime = registerOutput<String>('updateTime');
  }
}
