import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_args.dart';
import 'framework_state.dart';

/// Frameworks allow you to monitor and enforce compliance and security requirements. Manage compliance by assigning built-in or custom frameworks to resources.
///
///
/// To get more information about Framework, see:
///
/// * [API documentation](https://docs.cloud.google.com/security-command-center/docs/reference/cloudsecuritycompliance/rest/v1/organizations.locations.frameworks)
///
/// ## Example Usage
///
/// ### Cloudsecuritycompliance Framework Org Basic
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
///     cloudControlDetails: [
///         {
///             name: "organizations/123456789/locations/global/cloudControls/builtin-assess-resource-availability",
///             majorRevisionId: "2",
///             parameters: [{
///                 name: "location",
///                 parameterValue: {
///                     stringValue: "us-central1",
///                 },
///             }],
///         },
///         {
///             name: "organizations/123456789/locations/global/cloudControls/builtin-cmek-key-in-use-for-bigquery-table",
///             majorRevisionId: "1",
///             parameters: [{
///                 name: "location",
///                 parameterValue: {
///                     stringListValue: {
///                         values: [
///                             "us-central1",
///                             "us-west1",
///                         ],
///                     },
///                 },
///             }],
///         },
///         {
///             name: "organizations/123456789/locations/global/cloudControls/builtin-enable-automatic-backups-cloud-sql",
///             majorRevisionId: "3",
///             parameters: [{
///                 name: "location",
///                 parameterValue: {
///                     boolValue: true,
///                 },
///             }],
///         },
///         {
///             name: "organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets",
///             majorRevisionId: "2",
///             parameters: [{
///                 name: "location",
///                 parameterValue: {
///                     numberValue: 1,
///                 },
///             }],
///         },
///     ],
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
///     cloud_control_details=[
///         {
///             "name": "organizations/123456789/locations/global/cloudControls/builtin-assess-resource-availability",
///             "major_revision_id": "2",
///             "parameters": [{
///                 "name": "location",
///                 "parameter_value": {
///                     "string_value": "us-central1",
///                 },
///             }],
///         },
///         {
///             "name": "organizations/123456789/locations/global/cloudControls/builtin-cmek-key-in-use-for-bigquery-table",
///             "major_revision_id": "1",
///             "parameters": [{
///                 "name": "location",
///                 "parameter_value": {
///                     "string_list_value": {
///                         "values": [
///                             "us-central1",
///                             "us-west1",
///                         ],
///                     },
///                 },
///             }],
///         },
///         {
///             "name": "organizations/123456789/locations/global/cloudControls/builtin-enable-automatic-backups-cloud-sql",
///             "major_revision_id": "3",
///             "parameters": [{
///                 "name": "location",
///                 "parameter_value": {
///                     "bool_value": True,
///                 },
///             }],
///         },
///         {
///             "name": "organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets",
///             "major_revision_id": "2",
///             "parameters": [{
///                 "name": "location",
///                 "parameter_value": {
///                     "number_value": float(1),
///                 },
///             }],
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
///                 Name = "organizations/123456789/locations/global/cloudControls/builtin-assess-resource-availability",
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
///             new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailArgs
///             {
///                 Name = "organizations/123456789/locations/global/cloudControls/builtin-cmek-key-in-use-for-bigquery-table",
///                 MajorRevisionId = "1",
///                 Parameters = new[]
///                 {
///                     new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterArgs
///                     {
///                         Name = "location",
///                         ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueArgs
///                         {
///                             StringListValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueStringListValueArgs
///                             {
///                                 Values = new[]
///                                 {
///                                     "us-central1",
///                                     "us-west1",
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailArgs
///             {
///                 Name = "organizations/123456789/locations/global/cloudControls/builtin-enable-automatic-backups-cloud-sql",
///                 MajorRevisionId = "3",
///                 Parameters = new[]
///                 {
///                     new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterArgs
///                     {
///                         Name = "location",
///                         ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueArgs
///                         {
///                             BoolValue = true,
///                         },
///                     },
///                 },
///             },
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
/// 		_, err := cloudsecuritycompliance.NewFramework(ctx, "example", &cloudsecuritycompliance.FrameworkArgs{
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			Location:    pulumi.String("global"),
/// 			FrameworkId: pulumi.String("example-framework"),
/// 			DisplayName: pulumi.String("Terraform Framework Name"),
/// 			Description: pulumi.String("An Terraform description for the framework"),
/// 			CloudControlDetails: cloudsecuritycompliance.FrameworkCloudControlDetailArray{
/// 				&cloudsecuritycompliance.FrameworkCloudControlDetailArgs{
/// 					Name:            pulumi.String("organizations/123456789/locations/global/cloudControls/builtin-assess-resource-availability"),
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
/// 				&cloudsecuritycompliance.FrameworkCloudControlDetailArgs{
/// 					Name:            pulumi.String("organizations/123456789/locations/global/cloudControls/builtin-cmek-key-in-use-for-bigquery-table"),
/// 					MajorRevisionId: pulumi.String("1"),
/// 					Parameters: cloudsecuritycompliance.FrameworkCloudControlDetailParameterArray{
/// 						&cloudsecuritycompliance.FrameworkCloudControlDetailParameterArgs{
/// 							Name: pulumi.String("location"),
/// 							ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueArgs{
/// 								StringListValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueStringListValueArgs{
/// 									Values: pulumi.StringArray{
/// 										pulumi.String("us-central1"),
/// 										pulumi.String("us-west1"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&cloudsecuritycompliance.FrameworkCloudControlDetailArgs{
/// 					Name:            pulumi.String("organizations/123456789/locations/global/cloudControls/builtin-enable-automatic-backups-cloud-sql"),
/// 					MajorRevisionId: pulumi.String("3"),
/// 					Parameters: cloudsecuritycompliance.FrameworkCloudControlDetailParameterArray{
/// 						&cloudsecuritycompliance.FrameworkCloudControlDetailParameterArgs{
/// 							Name: pulumi.String("location"),
/// 							ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueArgs{
/// 								BoolValue: pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 				},
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
///     name              = "organizations/123456789/locations/global/cloudControls/builtin-assess-resource-availability"
///     major_revision_id = "2"
///     parameters {
///       name = "location"
///       parameter_value = {
///         string_value = "us-central1"
///       }
///     }
///   }
///   cloud_control_details {
///     name              = "organizations/123456789/locations/global/cloudControls/builtin-cmek-key-in-use-for-bigquery-table"
///     major_revision_id = "1"
///     parameters {
///       name = "location"
///       parameter_value = {
///         string_list_value = {
///           values = ["us-central1", "us-west1"]
///         }
///       }
///     }
///   }
///   cloud_control_details {
///     name              = "organizations/123456789/locations/global/cloudControls/builtin-enable-automatic-backups-cloud-sql"
///     major_revision_id = "3"
///     parameters {
///       name = "location"
///       parameter_value = {
///         bool_value = true
///       }
///     }
///   }
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
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailParameterParameterValueStringListValueArgs;
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
///             .cloudControlDetails(
///                 FrameworkCloudControlDetailArgs.builder()
///                     .name("organizations/123456789/locations/global/cloudControls/builtin-assess-resource-availability")
///                     .majorRevisionId("2")
///                     .parameters(FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("location")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .stringValue("us-central1")
///                             .build())
///                         .build())
///                     .build(),
///                 FrameworkCloudControlDetailArgs.builder()
///                     .name("organizations/123456789/locations/global/cloudControls/builtin-cmek-key-in-use-for-bigquery-table")
///                     .majorRevisionId("1")
///                     .parameters(FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("location")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .stringListValue(FrameworkCloudControlDetailParameterParameterValueStringListValueArgs.builder()
///                                 .values(
///                                     "us-central1",
///                                     "us-west1")
///                                 .build())
///                             .build())
///                         .build())
///                     .build(),
///                 FrameworkCloudControlDetailArgs.builder()
///                     .name("organizations/123456789/locations/global/cloudControls/builtin-enable-automatic-backups-cloud-sql")
///                     .majorRevisionId("3")
///                     .parameters(FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("location")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .boolValue(true)
///                             .build())
///                         .build())
///                     .build(),
///                 FrameworkCloudControlDetailArgs.builder()
///                     .name("organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets")
///                     .majorRevisionId("2")
///                     .parameters(FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("location")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .numberValue(1.0)
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
///     type: gcp:cloudsecuritycompliance:Framework
///     properties:
///       parent: organizations/123456789
///       location: global
///       frameworkId: example-framework
///       displayName: Terraform Framework Name
///       description: An Terraform description for the framework
///       cloudControlDetails:
///         - name: organizations/123456789/locations/global/cloudControls/builtin-assess-resource-availability
///           majorRevisionId: '2'
///           parameters:
///             - name: location
///               parameterValue:
///                 stringValue: us-central1
///         - name: organizations/123456789/locations/global/cloudControls/builtin-cmek-key-in-use-for-bigquery-table
///           majorRevisionId: '1'
///           parameters:
///             - name: location
///               parameterValue:
///                 stringListValue:
///                   values:
///                     - us-central1
///                     - us-west1
///         - name: organizations/123456789/locations/global/cloudControls/builtin-enable-automatic-backups-cloud-sql
///           majorRevisionId: '3'
///           parameters:
///             - name: location
///               parameterValue:
///                 boolValue: true
///         - name: organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets
///           majorRevisionId: '2'
///           parameters:
///             - name: location
///               parameterValue:
///                 numberValue: 1
/// ```
///
/// ### Cloudsecuritycompliance Framework Project Basic
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
///     cloudControlDetails: [
///         {
///             name: project.then(project => `projects/${project.number}/locations/global/cloudControls/builtin-assess-resource-availability`),
///             majorRevisionId: "2",
///             parameters: [{
///                 name: "location",
///                 parameterValue: {
///                     stringValue: "us-central1",
///                 },
///             }],
///         },
///         {
///             name: project.then(project => `projects/${project.number}/locations/global/cloudControls/builtin-cmek-key-in-use-for-bigquery-table`),
///             majorRevisionId: "1",
///             parameters: [{
///                 name: "location",
///                 parameterValue: {
///                     stringListValue: {
///                         values: [
///                             "us-central1",
///                             "us-west1",
///                         ],
///                     },
///                 },
///             }],
///         },
///         {
///             name: project.then(project => `projects/${project.number}/locations/global/cloudControls/builtin-enable-automatic-backups-cloud-sql`),
///             majorRevisionId: "3",
///             parameters: [{
///                 name: "location",
///                 parameterValue: {
///                     boolValue: true,
///                 },
///             }],
///         },
///         {
///             name: project.then(project => `projects/${project.number}/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets`),
///             majorRevisionId: "2",
///             parameters: [{
///                 name: "location",
///                 parameterValue: {
///                     numberValue: 1,
///                 },
///             }],
///         },
///     ],
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
///     cloud_control_details=[
///         {
///             "name": f"projects/{project.number}/locations/global/cloudControls/builtin-assess-resource-availability",
///             "major_revision_id": "2",
///             "parameters": [{
///                 "name": "location",
///                 "parameter_value": {
///                     "string_value": "us-central1",
///                 },
///             }],
///         },
///         {
///             "name": f"projects/{project.number}/locations/global/cloudControls/builtin-cmek-key-in-use-for-bigquery-table",
///             "major_revision_id": "1",
///             "parameters": [{
///                 "name": "location",
///                 "parameter_value": {
///                     "string_list_value": {
///                         "values": [
///                             "us-central1",
///                             "us-west1",
///                         ],
///                     },
///                 },
///             }],
///         },
///         {
///             "name": f"projects/{project.number}/locations/global/cloudControls/builtin-enable-automatic-backups-cloud-sql",
///             "major_revision_id": "3",
///             "parameters": [{
///                 "name": "location",
///                 "parameter_value": {
///                     "bool_value": True,
///                 },
///             }],
///         },
///         {
///             "name": f"projects/{project.number}/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets",
///             "major_revision_id": "2",
///             "parameters": [{
///                 "name": "location",
///                 "parameter_value": {
///                     "number_value": float(1),
///                 },
///             }],
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
///                 Name = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/global/cloudControls/builtin-assess-resource-availability",
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
///             new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailArgs
///             {
///                 Name = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/global/cloudControls/builtin-cmek-key-in-use-for-bigquery-table",
///                 MajorRevisionId = "1",
///                 Parameters = new[]
///                 {
///                     new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterArgs
///                     {
///                         Name = "location",
///                         ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueArgs
///                         {
///                             StringListValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueStringListValueArgs
///                             {
///                                 Values = new[]
///                                 {
///                                     "us-central1",
///                                     "us-west1",
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailArgs
///             {
///                 Name = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/global/cloudControls/builtin-enable-automatic-backups-cloud-sql",
///                 MajorRevisionId = "3",
///                 Parameters = new[]
///                 {
///                     new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterArgs
///                     {
///                         Name = "location",
///                         ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueArgs
///                         {
///                             BoolValue = true,
///                         },
///                     },
///                 },
///             },
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
/// 		_, err = cloudsecuritycompliance.NewFramework(ctx, "example", &cloudsecuritycompliance.FrameworkArgs{
/// 			Parent:      pulumi.Sprintf("projects/%v", project.Number),
/// 			Location:    pulumi.String("global"),
/// 			FrameworkId: pulumi.String("example-framework"),
/// 			DisplayName: pulumi.String("Terraform Framework Name"),
/// 			Description: pulumi.String("An Terraform description for the framework"),
/// 			CloudControlDetails: cloudsecuritycompliance.FrameworkCloudControlDetailArray{
/// 				&cloudsecuritycompliance.FrameworkCloudControlDetailArgs{
/// 					Name:            pulumi.Sprintf("projects/%v/locations/global/cloudControls/builtin-assess-resource-availability", project.Number),
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
/// 				&cloudsecuritycompliance.FrameworkCloudControlDetailArgs{
/// 					Name:            pulumi.Sprintf("projects/%v/locations/global/cloudControls/builtin-cmek-key-in-use-for-bigquery-table", project.Number),
/// 					MajorRevisionId: pulumi.String("1"),
/// 					Parameters: cloudsecuritycompliance.FrameworkCloudControlDetailParameterArray{
/// 						&cloudsecuritycompliance.FrameworkCloudControlDetailParameterArgs{
/// 							Name: pulumi.String("location"),
/// 							ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueArgs{
/// 								StringListValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueStringListValueArgs{
/// 									Values: pulumi.StringArray{
/// 										pulumi.String("us-central1"),
/// 										pulumi.String("us-west1"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&cloudsecuritycompliance.FrameworkCloudControlDetailArgs{
/// 					Name:            pulumi.Sprintf("projects/%v/locations/global/cloudControls/builtin-enable-automatic-backups-cloud-sql", project.Number),
/// 					MajorRevisionId: pulumi.String("3"),
/// 					Parameters: cloudsecuritycompliance.FrameworkCloudControlDetailParameterArray{
/// 						&cloudsecuritycompliance.FrameworkCloudControlDetailParameterArgs{
/// 							Name: pulumi.String("location"),
/// 							ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueArgs{
/// 								BoolValue: pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 				},
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
///     name              ="projects/${data.gcp_organizations_getproject.project.number}/locations/global/cloudControls/builtin-assess-resource-availability"
///     major_revision_id = "2"
///     parameters {
///       name = "location"
///       parameter_value = {
///         string_value = "us-central1"
///       }
///     }
///   }
///   cloud_control_details {
///     name              ="projects/${data.gcp_organizations_getproject.project.number}/locations/global/cloudControls/builtin-cmek-key-in-use-for-bigquery-table"
///     major_revision_id = "1"
///     parameters {
///       name = "location"
///       parameter_value = {
///         string_list_value = {
///           values = ["us-central1", "us-west1"]
///         }
///       }
///     }
///   }
///   cloud_control_details {
///     name              ="projects/${data.gcp_organizations_getproject.project.number}/locations/global/cloudControls/builtin-enable-automatic-backups-cloud-sql"
///     major_revision_id = "3"
///     parameters {
///       name = "location"
///       parameter_value = {
///         bool_value = true
///       }
///     }
///   }
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
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailParameterParameterValueStringListValueArgs;
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
///             .cloudControlDetails(
///                 FrameworkCloudControlDetailArgs.builder()
///                     .name(String.format("projects/%s/locations/global/cloudControls/builtin-assess-resource-availability", project.number()))
///                     .majorRevisionId("2")
///                     .parameters(FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("location")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .stringValue("us-central1")
///                             .build())
///                         .build())
///                     .build(),
///                 FrameworkCloudControlDetailArgs.builder()
///                     .name(String.format("projects/%s/locations/global/cloudControls/builtin-cmek-key-in-use-for-bigquery-table", project.number()))
///                     .majorRevisionId("1")
///                     .parameters(FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("location")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .stringListValue(FrameworkCloudControlDetailParameterParameterValueStringListValueArgs.builder()
///                                 .values(
///                                     "us-central1",
///                                     "us-west1")
///                                 .build())
///                             .build())
///                         .build())
///                     .build(),
///                 FrameworkCloudControlDetailArgs.builder()
///                     .name(String.format("projects/%s/locations/global/cloudControls/builtin-enable-automatic-backups-cloud-sql", project.number()))
///                     .majorRevisionId("3")
///                     .parameters(FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("location")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .boolValue(true)
///                             .build())
///                         .build())
///                     .build(),
///                 FrameworkCloudControlDetailArgs.builder()
///                     .name(String.format("projects/%s/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets", project.number()))
///                     .majorRevisionId("2")
///                     .parameters(FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("location")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .numberValue(1.0)
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
///     type: gcp:cloudsecuritycompliance:Framework
///     properties:
///       parent: projects/${project.number}
///       location: global
///       frameworkId: example-framework
///       displayName: Terraform Framework Name
///       description: An Terraform description for the framework
///       cloudControlDetails:
///         - name: projects/${project.number}/locations/global/cloudControls/builtin-assess-resource-availability
///           majorRevisionId: '2'
///           parameters:
///             - name: location
///               parameterValue:
///                 stringValue: us-central1
///         - name: projects/${project.number}/locations/global/cloudControls/builtin-cmek-key-in-use-for-bigquery-table
///           majorRevisionId: '1'
///           parameters:
///             - name: location
///               parameterValue:
///                 stringListValue:
///                   values:
///                     - us-central1
///                     - us-west1
///         - name: projects/${project.number}/locations/global/cloudControls/builtin-enable-automatic-backups-cloud-sql
///           majorRevisionId: '3'
///           parameters:
///             - name: location
///               parameterValue:
///                 boolValue: true
///         - name: projects/${project.number}/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets
///           majorRevisionId: '2'
///           parameters:
///             - name: location
///               parameterValue:
///                 numberValue: 1
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Cloudsecuritycompliance Framework Org Basic Backward
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
///     cloudControlDetails: [
///         {
///             name: "organizations/123456789/locations/global/cloudControls/builtin-assess-resource-availability",
///             majorRevisionId: "2",
///             parameters: [{
///                 name: "location",
///                 parameterValue: {
///                     stringValue: "us-central1",
///                 },
///             }],
///         },
///         {
///             name: "organizations/123456789/locations/global/cloudControls/builtin-cmek-key-in-use-for-bigquery-table",
///             majorRevisionId: "1",
///             parameters: [{
///                 name: "location",
///                 parameterValue: {
///                     stringListValue: {
///                         values: [
///                             "us-central1",
///                             "us-west1",
///                         ],
///                     },
///                 },
///             }],
///         },
///         {
///             name: "organizations/123456789/locations/global/cloudControls/builtin-enable-automatic-backups-cloud-sql",
///             majorRevisionId: "3",
///             parameters: [{
///                 name: "location",
///                 parameterValue: {
///                     boolValue: true,
///                 },
///             }],
///         },
///         {
///             name: "organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets",
///             majorRevisionId: "2",
///             parameters: [{
///                 name: "location",
///                 parameterValue: {
///                     numberValue: 1,
///                 },
///             }],
///         },
///     ],
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
///     cloud_control_details=[
///         {
///             "name": "organizations/123456789/locations/global/cloudControls/builtin-assess-resource-availability",
///             "major_revision_id": "2",
///             "parameters": [{
///                 "name": "location",
///                 "parameter_value": {
///                     "string_value": "us-central1",
///                 },
///             }],
///         },
///         {
///             "name": "organizations/123456789/locations/global/cloudControls/builtin-cmek-key-in-use-for-bigquery-table",
///             "major_revision_id": "1",
///             "parameters": [{
///                 "name": "location",
///                 "parameter_value": {
///                     "string_list_value": {
///                         "values": [
///                             "us-central1",
///                             "us-west1",
///                         ],
///                     },
///                 },
///             }],
///         },
///         {
///             "name": "organizations/123456789/locations/global/cloudControls/builtin-enable-automatic-backups-cloud-sql",
///             "major_revision_id": "3",
///             "parameters": [{
///                 "name": "location",
///                 "parameter_value": {
///                     "bool_value": True,
///                 },
///             }],
///         },
///         {
///             "name": "organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets",
///             "major_revision_id": "2",
///             "parameters": [{
///                 "name": "location",
///                 "parameter_value": {
///                     "number_value": float(1),
///                 },
///             }],
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
///                 Name = "organizations/123456789/locations/global/cloudControls/builtin-assess-resource-availability",
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
///             new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailArgs
///             {
///                 Name = "organizations/123456789/locations/global/cloudControls/builtin-cmek-key-in-use-for-bigquery-table",
///                 MajorRevisionId = "1",
///                 Parameters = new[]
///                 {
///                     new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterArgs
///                     {
///                         Name = "location",
///                         ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueArgs
///                         {
///                             StringListValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueStringListValueArgs
///                             {
///                                 Values = new[]
///                                 {
///                                     "us-central1",
///                                     "us-west1",
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailArgs
///             {
///                 Name = "organizations/123456789/locations/global/cloudControls/builtin-enable-automatic-backups-cloud-sql",
///                 MajorRevisionId = "3",
///                 Parameters = new[]
///                 {
///                     new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterArgs
///                     {
///                         Name = "location",
///                         ParameterValue = new Gcp.CloudSecurityCompliance.Inputs.FrameworkCloudControlDetailParameterParameterValueArgs
///                         {
///                             BoolValue = true,
///                         },
///                     },
///                 },
///             },
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
/// 		_, err := cloudsecuritycompliance.NewFramework(ctx, "example", &cloudsecuritycompliance.FrameworkArgs{
/// 			Organization: pulumi.String("123456789"),
/// 			Location:     pulumi.String("global"),
/// 			FrameworkId:  pulumi.String("example-framework"),
/// 			DisplayName:  pulumi.String("Terraform Framework Name"),
/// 			Description:  pulumi.String("An Terraform description for the framework"),
/// 			CloudControlDetails: cloudsecuritycompliance.FrameworkCloudControlDetailArray{
/// 				&cloudsecuritycompliance.FrameworkCloudControlDetailArgs{
/// 					Name:            pulumi.String("organizations/123456789/locations/global/cloudControls/builtin-assess-resource-availability"),
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
/// 				&cloudsecuritycompliance.FrameworkCloudControlDetailArgs{
/// 					Name:            pulumi.String("organizations/123456789/locations/global/cloudControls/builtin-cmek-key-in-use-for-bigquery-table"),
/// 					MajorRevisionId: pulumi.String("1"),
/// 					Parameters: cloudsecuritycompliance.FrameworkCloudControlDetailParameterArray{
/// 						&cloudsecuritycompliance.FrameworkCloudControlDetailParameterArgs{
/// 							Name: pulumi.String("location"),
/// 							ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueArgs{
/// 								StringListValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueStringListValueArgs{
/// 									Values: pulumi.StringArray{
/// 										pulumi.String("us-central1"),
/// 										pulumi.String("us-west1"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&cloudsecuritycompliance.FrameworkCloudControlDetailArgs{
/// 					Name:            pulumi.String("organizations/123456789/locations/global/cloudControls/builtin-enable-automatic-backups-cloud-sql"),
/// 					MajorRevisionId: pulumi.String("3"),
/// 					Parameters: cloudsecuritycompliance.FrameworkCloudControlDetailParameterArray{
/// 						&cloudsecuritycompliance.FrameworkCloudControlDetailParameterArgs{
/// 							Name: pulumi.String("location"),
/// 							ParameterValue: &cloudsecuritycompliance.FrameworkCloudControlDetailParameterParameterValueArgs{
/// 								BoolValue: pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 				},
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
///     name              = "organizations/123456789/locations/global/cloudControls/builtin-assess-resource-availability"
///     major_revision_id = "2"
///     parameters {
///       name = "location"
///       parameter_value = {
///         string_value = "us-central1"
///       }
///     }
///   }
///   cloud_control_details {
///     name              = "organizations/123456789/locations/global/cloudControls/builtin-cmek-key-in-use-for-bigquery-table"
///     major_revision_id = "1"
///     parameters {
///       name = "location"
///       parameter_value = {
///         string_list_value = {
///           values = ["us-central1", "us-west1"]
///         }
///       }
///     }
///   }
///   cloud_control_details {
///     name              = "organizations/123456789/locations/global/cloudControls/builtin-enable-automatic-backups-cloud-sql"
///     major_revision_id = "3"
///     parameters {
///       name = "location"
///       parameter_value = {
///         bool_value = true
///       }
///     }
///   }
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
/// import com.pulumi.gcp.cloudsecuritycompliance.inputs.FrameworkCloudControlDetailParameterParameterValueStringListValueArgs;
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
///             .cloudControlDetails(
///                 FrameworkCloudControlDetailArgs.builder()
///                     .name("organizations/123456789/locations/global/cloudControls/builtin-assess-resource-availability")
///                     .majorRevisionId("2")
///                     .parameters(FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("location")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .stringValue("us-central1")
///                             .build())
///                         .build())
///                     .build(),
///                 FrameworkCloudControlDetailArgs.builder()
///                     .name("organizations/123456789/locations/global/cloudControls/builtin-cmek-key-in-use-for-bigquery-table")
///                     .majorRevisionId("1")
///                     .parameters(FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("location")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .stringListValue(FrameworkCloudControlDetailParameterParameterValueStringListValueArgs.builder()
///                                 .values(
///                                     "us-central1",
///                                     "us-west1")
///                                 .build())
///                             .build())
///                         .build())
///                     .build(),
///                 FrameworkCloudControlDetailArgs.builder()
///                     .name("organizations/123456789/locations/global/cloudControls/builtin-enable-automatic-backups-cloud-sql")
///                     .majorRevisionId("3")
///                     .parameters(FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("location")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .boolValue(true)
///                             .build())
///                         .build())
///                     .build(),
///                 FrameworkCloudControlDetailArgs.builder()
///                     .name("organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets")
///                     .majorRevisionId("2")
///                     .parameters(FrameworkCloudControlDetailParameterArgs.builder()
///                         .name("location")
///                         .parameterValue(FrameworkCloudControlDetailParameterParameterValueArgs.builder()
///                             .numberValue(1.0)
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
///     type: gcp:cloudsecuritycompliance:Framework
///     properties:
///       organization: '123456789'
///       location: global
///       frameworkId: example-framework
///       displayName: Terraform Framework Name
///       description: An Terraform description for the framework
///       cloudControlDetails:
///         - name: organizations/123456789/locations/global/cloudControls/builtin-assess-resource-availability
///           majorRevisionId: '2'
///           parameters:
///             - name: location
///               parameterValue:
///                 stringValue: us-central1
///         - name: organizations/123456789/locations/global/cloudControls/builtin-cmek-key-in-use-for-bigquery-table
///           majorRevisionId: '1'
///           parameters:
///             - name: location
///               parameterValue:
///                 stringListValue:
///                   values:
///                     - us-central1
///                     - us-west1
///         - name: organizations/123456789/locations/global/cloudControls/builtin-enable-automatic-backups-cloud-sql
///           majorRevisionId: '3'
///           parameters:
///             - name: location
///               parameterValue:
///                 boolValue: true
///         - name: organizations/123456789/locations/global/cloudControls/builtin-require-cmek-on-bigquery-datasets
///           majorRevisionId: '2'
///           parameters:
///             - name: location
///               parameterValue:
///                 numberValue: 1
/// ```
///
///
/// ## Import
///
/// Framework can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/locations/{{location}}/frameworks/{{framework_id}}`
/// * `{{parent}}/locations/{{location}}/frameworks/{{framework_id}}`
///
///
/// When using the `pulumi import` command, Framework can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudsecuritycompliance/framework:Framework default organizations/{{organization}}/locations/{{location}}/frameworks/{{framework_id}}
/// $ pulumi import gcp:cloudsecuritycompliance/framework:Framework default {{parent}}/locations/{{location}}/frameworks/{{framework_id}}
/// ```
class Framework extends pulumi.CustomResource {
  /// The category of the framework.
  late final pulumi.Output<List<String>> categories;
  /// The details of the cloud controls directly added without any grouping in
  /// the framework.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> cloudControlDetails;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The description of the framework. The maximum length is 2000 characters.
  late final pulumi.Output<String?> description;
  /// Display name of the framework. The maximum length is 200 characters.
  late final pulumi.Output<String?> displayName;
  /// ID of the framework.
  /// This is not the full name of the framework.
  /// This is the last part of the full name of the framework.
  late final pulumi.Output<String> frameworkId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Major revision of the framework incremented in ascending order.
  late final pulumi.Output<String> majorRevisionId;
  /// Identifier. The name of the framework.
  /// Format:
  /// {parent}/locations/{location}/frameworks/{framework_id}
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
  /// cloud providers supported
  late final pulumi.Output<List<String>> supportedCloudProviders;
  /// The supported enforcement modes of the framework.
  late final pulumi.Output<List<String>> supportedEnforcementModes;
  /// target resource types supported by the Framework.
  late final pulumi.Output<List<String>> supportedTargetResourceTypes;
  /// The type of the framework. The default is TYPE_CUSTOM.
  /// Possible values:
  /// BUILT_IN
  /// CUSTOM
  late final pulumi.Output<String> type;

  /// Creates a new [Framework].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Framework]. {@macro pulumi_cloudsecuritycompliance_framework_framework_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Framework(
    String name, {
    FrameworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudsecuritycompliance/framework:Framework',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    categories = registerOutput<List<String>>('categories');
    cloudControlDetails = registerOutput<List<Map<String, dynamic>>?>('cloudControlDetails');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    frameworkId = registerOutput<String>('frameworkId');
    location = registerOutput<String>('location');
    majorRevisionId = registerOutput<String>('majorRevisionId');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    parent = registerOutput<String>('parent');
    supportedCloudProviders = registerOutput<List<String>>('supportedCloudProviders');
    supportedEnforcementModes = registerOutput<List<String>>('supportedEnforcementModes');
    supportedTargetResourceTypes = registerOutput<List<String>>('supportedTargetResourceTypes');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [Framework] resource's state with the given [name] and [id].
  static Framework get(
    String name,
    pulumi.Input<String> id, {
    FrameworkState? state,
  }) {
    return Framework._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Framework._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudsecuritycompliance/framework:Framework',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    categories = registerOutput<List<String>>('categories');
    cloudControlDetails = registerOutput<List<Map<String, dynamic>>?>('cloudControlDetails');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    frameworkId = registerOutput<String>('frameworkId');
    location = registerOutput<String>('location');
    majorRevisionId = registerOutput<String>('majorRevisionId');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    parent = registerOutput<String>('parent');
    supportedCloudProviders = registerOutput<List<String>>('supportedCloudProviders');
    supportedEnforcementModes = registerOutput<List<String>>('supportedEnforcementModes');
    supportedTargetResourceTypes = registerOutput<List<String>>('supportedTargetResourceTypes');
    type = registerOutput<String>('type');
  }
}
