import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_args.dart';
import 'tool_connector_spec.dart';
import 'tool_function_spec.dart';
import 'tool_open_api_spec.dart';
import 'tool_state.dart';

/// Provides a list of actions available to a Generator (e.g., OpenAPI call, Function call, Connector call).
///
///
/// To get more information about Tool, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/es/docs/reference/rest/v2/projects.locations.tools)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/agent-assist/docs)
///
///
///
/// ## Example Usage
///
/// ### Dialogflow Tool Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicTool = new gcp.diagflow.Tool("basic_tool", {
///     location: "global",
///     toolId: "basic_tool_key",
///     toolKey: "basic_tool_key",
///     displayName: "basic-tool",
///     description: "A basic tool with OpenAPI spec",
///     actionConfirmationRequirement: {
///         searchAction: "NOT_REQUIRED",
///     },
///     openApiSpec: {
///         textSchema: `openapi: 3.0.0
/// info:
///   title: basic_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// `,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_tool = gcp.diagflow.Tool("basic_tool",
///     location="global",
///     tool_id="basic_tool_key",
///     tool_key="basic_tool_key",
///     display_name="basic-tool",
///     description="A basic tool with OpenAPI spec",
///     action_confirmation_requirement={
///         "searchAction": "NOT_REQUIRED",
///     },
///     open_api_spec={
///         "text_schema": """openapi: 3.0.0
/// info:
///   title: basic_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// """,
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
///     var basicTool = new Gcp.Diagflow.Tool("basic_tool", new()
///     {
///         Location = "global",
///         ToolId = "basic_tool_key",
///         ToolKey = "basic_tool_key",
///         DisplayName = "basic-tool",
///         Description = "A basic tool with OpenAPI spec",
///         ActionConfirmationRequirement =
///         {
///             { "searchAction", "NOT_REQUIRED" },
///         },
///         OpenApiSpec = new Gcp.Diagflow.Inputs.ToolOpenApiSpecArgs
///         {
///             TextSchema = @"openapi: 3.0.0
/// info:
///   title: basic_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// ",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := diagflow.NewTool(ctx, "basic_tool", &diagflow.ToolArgs{
/// 			Location:    pulumi.String("global"),
/// 			ToolId:      pulumi.String("basic_tool_key"),
/// 			ToolKey:     pulumi.String("basic_tool_key"),
/// 			DisplayName: pulumi.String("basic-tool"),
/// 			Description: pulumi.String("A basic tool with OpenAPI spec"),
/// 			ActionConfirmationRequirement: pulumi.StringMap{
/// 				"searchAction": pulumi.String("NOT_REQUIRED"),
/// 			},
/// 			OpenApiSpec: &diagflow.ToolOpenApiSpecArgs{
/// 				TextSchema: pulumi.String(`openapi: 3.0.0
/// info:
///   title: basic_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// `),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_diagflow_tool" "basic_tool" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location     = "global"
///   tool_id      = "basic_tool_key"
///   tool_key     = "basic_tool_key"
///   display_name = "basic-tool"
///   description  = "A basic tool with OpenAPI spec"
///   action_confirmation_requirement = {
///     "searchAction" = "NOT_REQUIRED"
///   }
///   open_api_spec = {
///     text_schema = <<EOF
/// openapi: 3.0.0
/// info:
///   title: basic_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// EOF
///
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.diagflow.Tool;
/// import com.pulumi.gcp.diagflow.ToolArgs;
/// import com.pulumi.gcp.diagflow.inputs.ToolOpenApiSpecArgs;
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
///         var basicTool = new Tool("basicTool", ToolArgs.builder()
///             .location("global")
///             .toolId("basic_tool_key")
///             .toolKey("basic_tool_key")
///             .displayName("basic-tool")
///             .description("A basic tool with OpenAPI spec")
///             .actionConfirmationRequirement(Map.of("searchAction", "NOT_REQUIRED"))
///             .openApiSpec(ToolOpenApiSpecArgs.builder()
///                 .textSchema("""
/// openapi: 3.0.0
/// info:
///   title: basic_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
///                 """)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicTool:
///     type: gcp:diagflow:Tool
///     name: basic_tool
///     properties:
///       location: global
///       toolId: basic_tool_key
///       toolKey: basic_tool_key
///       displayName: basic-tool
///       description: A basic tool with OpenAPI spec
///       actionConfirmationRequirement:
///         searchAction: NOT_REQUIRED
///       openApiSpec:
///         textSchema: |
///           openapi: 3.0.0
///           info:
///             title: basic_tool_key
///             version: 1.0.0
///           paths:
///             /search:
///               get:
///                 summary: Search function
///                 operationId: searchAction
///                 responses:
///                   '200':
///                     description: OK
/// ```
///
/// ### Dialogflow Tool Connector
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testProject = gcp.organizations.getProject({});
/// const bqDataset = new gcp.bigquery.Dataset("bq_dataset", {
///     datasetId: "df_tool_dataset",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "us-central1",
///     deleteContentsOnDestroy: true,
/// });
/// const bqTable = new gcp.bigquery.Table("bq_table", {
///     deletionProtection: false,
///     datasetId: bqDataset.datasetId,
///     tableId: "df_tool_table",
/// });
/// const connectorSaDatasetPerms = new gcp.bigquery.DatasetIamMember("connector_sa_dataset_perms", {
///     project: testProject.then(testProject => testProject.projectId),
///     datasetId: bqDataset.datasetId,
///     role: "roles/bigquery.dataEditor",
///     member: testProject.then(testProject => `serviceAccount:${testProject.number}-compute@developer.gserviceaccount.com`),
/// });
/// const integrationConnector = new gcp.integrationconnectors.Connection("integration_connector", {
///     name: "df-tool-connection",
///     location: "us-central1",
///     connectorVersion: testProject.then(testProject => `projects/${testProject.projectId}/locations/global/providers/gcp/connectors/bigquery/versions/1`),
///     description: "tf created description",
///     configVariables: [
///         {
///             key: "dataset_id",
///             stringValue: bqDataset.datasetId,
///         },
///         {
///             key: "project_id",
///             stringValue: testProject.then(testProject => testProject.projectId),
///         },
///         {
///             key: "support_native_data_type",
///             booleanValue: false,
///         },
///         {
///             key: "proxy_enabled",
///             booleanValue: false,
///         },
///     ],
///     serviceAccount: testProject.then(testProject => `${testProject.number}-compute@developer.gserviceaccount.com`),
///     authConfig: {
///         authType: "AUTH_TYPE_UNSPECIFIED",
///     },
/// }, {
///     dependsOn: [connectorSaDatasetPerms],
/// });
/// const connectorTool = new gcp.diagflow.Tool("connector_tool", {
///     location: "us-central1",
///     toolKey: "connector_tool_key",
///     displayName: "connector-tool",
///     description: "A tool with Connector spec",
///     connectorSpec: {
///         name: pulumi.all([testProject, integrationConnector.name]).apply(([testProject, name]) => `projects/${testProject.projectId}/locations/us-central1/connections/${name}`),
///         actions: [
///             {
///                 connectionActionId: "ExecuteCustomQuery",
///                 inputFields: ["test1"],
///                 outputFields: ["test1"],
///             },
///             {
///                 entityOperation: {
///                     entityId: bqTable.tableId,
///                     operation: "LIST",
///                 },
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_project = gcp.organizations.get_project()
/// bq_dataset = gcp.bigquery.Dataset("bq_dataset",
///     dataset_id="df_tool_dataset",
///     friendly_name="test",
///     description="This is a test description",
///     location="us-central1",
///     delete_contents_on_destroy=True)
/// bq_table = gcp.bigquery.Table("bq_table",
///     deletion_protection=False,
///     dataset_id=bq_dataset.dataset_id,
///     table_id="df_tool_table")
/// connector_sa_dataset_perms = gcp.bigquery.DatasetIamMember("connector_sa_dataset_perms",
///     project=test_project.project_id,
///     dataset_id=bq_dataset.dataset_id,
///     role="roles/bigquery.dataEditor",
///     member=f"serviceAccount:{test_project.number}-compute@developer.gserviceaccount.com")
/// integration_connector = gcp.integrationconnectors.Connection("integration_connector",
///     name="df-tool-connection",
///     location="us-central1",
///     connector_version=f"projects/{test_project.project_id}/locations/global/providers/gcp/connectors/bigquery/versions/1",
///     description="tf created description",
///     config_variables=[
///         {
///             "key": "dataset_id",
///             "string_value": bq_dataset.dataset_id,
///         },
///         {
///             "key": "project_id",
///             "string_value": test_project.project_id,
///         },
///         {
///             "key": "support_native_data_type",
///             "boolean_value": False,
///         },
///         {
///             "key": "proxy_enabled",
///             "boolean_value": False,
///         },
///     ],
///     service_account=f"{test_project.number}-compute@developer.gserviceaccount.com",
///     auth_config={
///         "auth_type": "AUTH_TYPE_UNSPECIFIED",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[connector_sa_dataset_perms]))
/// connector_tool = gcp.diagflow.Tool("connector_tool",
///     location="us-central1",
///     tool_key="connector_tool_key",
///     display_name="connector-tool",
///     description="A tool with Connector spec",
///     connector_spec={
///         "name": integration_connector.name.apply(lambda name: f"projects/{test_project.project_id}/locations/us-central1/connections/{name}"),
///         "actions": [
///             {
///                 "connection_action_id": "ExecuteCustomQuery",
///                 "input_fields": ["test1"],
///                 "output_fields": ["test1"],
///             },
///             {
///                 "entity_operation": {
///                     "entity_id": bq_table.table_id,
///                     "operation": "LIST",
///                 },
///             },
///         ],
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
///     var testProject = Gcp.Organizations.GetProject.Invoke();
///
///     var bqDataset = new Gcp.BigQuery.Dataset("bq_dataset", new()
///     {
///         DatasetId = "df_tool_dataset",
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "us-central1",
///         DeleteContentsOnDestroy = true,
///     });
///
///     var bqTable = new Gcp.BigQuery.Table("bq_table", new()
///     {
///         DeletionProtection = false,
///         DatasetId = bqDataset.DatasetId,
///         TableId = "df_tool_table",
///     });
///
///     var connectorSaDatasetPerms = new Gcp.BigQuery.DatasetIamMember("connector_sa_dataset_perms", new()
///     {
///         Project = testProject.Apply(getProjectResult => getProjectResult.ProjectId),
///         DatasetId = bqDataset.DatasetId,
///         Role = "roles/bigquery.dataEditor",
///         Member = $"serviceAccount:{testProject.Apply(getProjectResult => getProjectResult.Number)}-compute@developer.gserviceaccount.com",
///     });
///
///     var integrationConnector = new Gcp.IntegrationConnectors.Connection("integration_connector", new()
///     {
///         Name = "df-tool-connection",
///         Location = "us-central1",
///         ConnectorVersion = $"projects/{testProject.Apply(getProjectResult => getProjectResult.ProjectId)}/locations/global/providers/gcp/connectors/bigquery/versions/1",
///         Description = "tf created description",
///         ConfigVariables = new[]
///         {
///             new Gcp.IntegrationConnectors.Inputs.ConnectionConfigVariableArgs
///             {
///                 Key = "dataset_id",
///                 StringValue = bqDataset.DatasetId,
///             },
///             new Gcp.IntegrationConnectors.Inputs.ConnectionConfigVariableArgs
///             {
///                 Key = "project_id",
///                 StringValue = testProject.Apply(getProjectResult => getProjectResult.ProjectId),
///             },
///             new Gcp.IntegrationConnectors.Inputs.ConnectionConfigVariableArgs
///             {
///                 Key = "support_native_data_type",
///                 BooleanValue = false,
///             },
///             new Gcp.IntegrationConnectors.Inputs.ConnectionConfigVariableArgs
///             {
///                 Key = "proxy_enabled",
///                 BooleanValue = false,
///             },
///         },
///         ServiceAccount = $"{testProject.Apply(getProjectResult => getProjectResult.Number)}-compute@developer.gserviceaccount.com",
///         AuthConfig = new Gcp.IntegrationConnectors.Inputs.ConnectionAuthConfigArgs
///         {
///             AuthType = "AUTH_TYPE_UNSPECIFIED",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             connectorSaDatasetPerms,
///         },
///     });
///
///     var connectorTool = new Gcp.Diagflow.Tool("connector_tool", new()
///     {
///         Location = "us-central1",
///         ToolKey = "connector_tool_key",
///         DisplayName = "connector-tool",
///         Description = "A tool with Connector spec",
///         ConnectorSpec = new Gcp.Diagflow.Inputs.ToolConnectorSpecArgs
///         {
///             Name = Output.Tuple(testProject, integrationConnector.Name).Apply(values =>
///             {
///                 var testProject = values.Item1;
///                 var name = values.Item2;
///                 return $"projects/{testProject.Apply(getProjectResult => getProjectResult.ProjectId)}/locations/us-central1/connections/{name}";
///             }),
///             Actions = new[]
///             {
///                 new Gcp.Diagflow.Inputs.ToolConnectorSpecActionArgs
///                 {
///                     ConnectionActionId = "ExecuteCustomQuery",
///                     InputFields = new[]
///                     {
///                         "test1",
///                     },
///                     OutputFields = new[]
///                     {
///                         "test1",
///                     },
///                 },
///                 new Gcp.Diagflow.Inputs.ToolConnectorSpecActionArgs
///                 {
///                     EntityOperation = new Gcp.Diagflow.Inputs.ToolConnectorSpecActionEntityOperationArgs
///                     {
///                         EntityId = bqTable.TableId,
///                         Operation = "LIST",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/integrationconnectors"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testProject, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bqDataset, err := bigquery.NewDataset(ctx, "bq_dataset", &bigquery.DatasetArgs{
/// 			DatasetId:               pulumi.String("df_tool_dataset"),
/// 			FriendlyName:            pulumi.String("test"),
/// 			Description:             pulumi.String("This is a test description"),
/// 			Location:                pulumi.String("us-central1"),
/// 			DeleteContentsOnDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bqTable, err := bigquery.NewTable(ctx, "bq_table", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			DatasetId:          bqDataset.DatasetId,
/// 			TableId:            pulumi.String("df_tool_table"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		connectorSaDatasetPerms, err := bigquery.NewDatasetIamMember(ctx, "connector_sa_dataset_perms", &bigquery.DatasetIamMemberArgs{
/// 			Project:   pulumi.String(testProject.ProjectId),
/// 			DatasetId: bqDataset.DatasetId,
/// 			Role:      pulumi.String("roles/bigquery.dataEditor"),
/// 			Member:    pulumi.Sprintf("serviceAccount:%v-compute@developer.gserviceaccount.com", testProject.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		integrationConnector, err := integrationconnectors.NewConnection(ctx, "integration_connector", &integrationconnectors.ConnectionArgs{
/// 			Name:             pulumi.String("df-tool-connection"),
/// 			Location:         pulumi.String("us-central1"),
/// 			ConnectorVersion: pulumi.Sprintf("projects/%v/locations/global/providers/gcp/connectors/bigquery/versions/1", testProject.ProjectId),
/// 			Description:      pulumi.String("tf created description"),
/// 			ConfigVariables: integrationconnectors.ConnectionConfigVariableArray{
/// 				&integrationconnectors.ConnectionConfigVariableArgs{
/// 					Key:         pulumi.String("dataset_id"),
/// 					StringValue: bqDataset.DatasetId,
/// 				},
/// 				&integrationconnectors.ConnectionConfigVariableArgs{
/// 					Key:         pulumi.String("project_id"),
/// 					StringValue: pulumi.String(testProject.ProjectId),
/// 				},
/// 				&integrationconnectors.ConnectionConfigVariableArgs{
/// 					Key:          pulumi.String("support_native_data_type"),
/// 					BooleanValue: pulumi.Bool(false),
/// 				},
/// 				&integrationconnectors.ConnectionConfigVariableArgs{
/// 					Key:          pulumi.String("proxy_enabled"),
/// 					BooleanValue: pulumi.Bool(false),
/// 				},
/// 			},
/// 			ServiceAccount: pulumi.Sprintf("%v-compute@developer.gserviceaccount.com", testProject.Number),
/// 			AuthConfig: &integrationconnectors.ConnectionAuthConfigArgs{
/// 				AuthType: pulumi.String("AUTH_TYPE_UNSPECIFIED"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			connectorSaDatasetPerms,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewTool(ctx, "connector_tool", &diagflow.ToolArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			ToolKey:     pulumi.String("connector_tool_key"),
/// 			DisplayName: pulumi.String("connector-tool"),
/// 			Description: pulumi.String("A tool with Connector spec"),
/// 			ConnectorSpec: &diagflow.ToolConnectorSpecArgs{
/// 				Name: integrationConnector.Name.ApplyT(func(name string) (string, error) {
/// 					return fmt.Sprintf("projects/%v/locations/us-central1/connections/%v", testProject.ProjectId, name), nil
/// 				}).(pulumi.StringOutput),
/// 				Actions: diagflow.ToolConnectorSpecActionArray{
/// 					&diagflow.ToolConnectorSpecActionArgs{
/// 						ConnectionActionId: pulumi.String("ExecuteCustomQuery"),
/// 						InputFields: pulumi.StringArray{
/// 							pulumi.String("test1"),
/// 						},
/// 						OutputFields: pulumi.StringArray{
/// 							pulumi.String("test1"),
/// 						},
/// 					},
/// 					&diagflow.ToolConnectorSpecActionArgs{
/// 						EntityOperation: &diagflow.ToolConnectorSpecActionEntityOperationArgs{
/// 							EntityId:  bqTable.TableId,
/// 							Operation: pulumi.String("LIST"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_project" "testProject" {
/// }
///
/// resource "gcp_bigquery_dataset" "bq_dataset" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   dataset_id                 = "df_tool_dataset"
///   friendly_name              = "test"
///   description                = "This is a test description"
///   location                   = "us-central1"
///   delete_contents_on_destroy = true
/// }
/// resource "gcp_bigquery_table" "bq_table" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   deletion_protection = false
///   dataset_id          = gcp_bigquery_dataset.bq_dataset.dataset_id
///   table_id            = "df_tool_table"
/// }
/// resource "gcp_bigquery_dataset_iam_member" "connector_sa_dataset_perms" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project    = data.gcp_organizations_project.testProject.project_id
///   dataset_id = gcp_bigquery_dataset.bq_dataset.dataset_id
///   role       = "roles/bigquery.dataEditor"
///   member     ="serviceAccount:${data.gcp_organizations_project.testProject.number}-compute@developer.gserviceaccount.com"
/// }
/// resource "gcp_integrationconnectors_connection" "integration_connector" {
///   depends_on = [gcp_bigquery_dataset_iam_member.connector_sa_dataset_perms]
///   lifecycle {
///     create_before_destroy = true
///   }
///   name              = "df-tool-connection"
///   location          = "us-central1"
///   connector_version ="projects/${data.gcp_organizations_project.testProject.project_id}/locations/global/providers/gcp/connectors/bigquery/versions/1"
///   description       = "tf created description"
///   config_variables {
///     key          = "dataset_id"
///     string_value = gcp_bigquery_dataset.bq_dataset.dataset_id
///   }
///   config_variables {
///     key          = "project_id"
///     string_value = data.gcp_organizations_project.testProject.project_id
///   }
///   config_variables {
///     key           = "support_native_data_type"
///     boolean_value = false
///   }
///   config_variables {
///     key           = "proxy_enabled"
///     boolean_value = false
///   }
///   service_account ="${data.gcp_organizations_project.testProject.number}-compute@developer.gserviceaccount.com"
///   auth_config = {
///     auth_type = "AUTH_TYPE_UNSPECIFIED"
///   }
/// }
/// resource "gcp_diagflow_tool" "connector_tool" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location     = "us-central1"
///   tool_key     = "connector_tool_key"
///   display_name = "connector-tool"
///   description  = "A tool with Connector spec"
///   connector_spec = {
///     name ="projects/${data.gcp_organizations_project.testProject.project_id}/locations/us-central1/connections/${gcp_integrationconnectors_connection.integration_connector.name}"
///     actions = [{
///       connection_action_id = "ExecuteCustomQuery"
///       input_fields         = ["test1"]
///       output_fields        = ["test1"]
///       }, {
///       entity_operation = {
///         entity_id = gcp_bigquery_table.bq_table.table_id
///         operation = "LIST"
///       }
///     }]
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
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.bigquery.DatasetIamMember;
/// import com.pulumi.gcp.bigquery.DatasetIamMemberArgs;
/// import com.pulumi.gcp.integrationconnectors.Connection;
/// import com.pulumi.gcp.integrationconnectors.ConnectionArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionConfigVariableArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionAuthConfigArgs;
/// import com.pulumi.gcp.diagflow.Tool;
/// import com.pulumi.gcp.diagflow.ToolArgs;
/// import com.pulumi.gcp.diagflow.inputs.ToolConnectorSpecArgs;
/// import com.pulumi.gcp.diagflow.inputs.ToolConnectorSpecActionArgs;
/// import com.pulumi.gcp.diagflow.inputs.ToolConnectorSpecActionEntityOperationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var testProject = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var bqDataset = new Dataset("bqDataset", DatasetArgs.builder()
///             .datasetId("df_tool_dataset")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("us-central1")
///             .deleteContentsOnDestroy(true)
///             .build());
///
///         var bqTable = new Table("bqTable", TableArgs.builder()
///             .deletionProtection(false)
///             .datasetId(bqDataset.datasetId())
///             .tableId("df_tool_table")
///             .build());
///
///         var connectorSaDatasetPerms = new DatasetIamMember("connectorSaDatasetPerms", DatasetIamMemberArgs.builder()
///             .project(testProject.projectId())
///             .datasetId(bqDataset.datasetId())
///             .role("roles/bigquery.dataEditor")
///             .member(String.format("serviceAccount:%s-compute@developer.gserviceaccount.com", testProject.number()))
///             .build());
///
///         var integrationConnector = new Connection("integrationConnector", ConnectionArgs.builder()
///             .name("df-tool-connection")
///             .location("us-central1")
///             .connectorVersion(String.format("projects/%s/locations/global/providers/gcp/connectors/bigquery/versions/1", testProject.projectId()))
///             .description("tf created description")
///             .configVariables(
///                 ConnectionConfigVariableArgs.builder()
///                     .key("dataset_id")
///                     .stringValue(bqDataset.datasetId())
///                     .build(),
///                 ConnectionConfigVariableArgs.builder()
///                     .key("project_id")
///                     .stringValue(testProject.projectId())
///                     .build(),
///                 ConnectionConfigVariableArgs.builder()
///                     .key("support_native_data_type")
///                     .booleanValue(false)
///                     .build(),
///                 ConnectionConfigVariableArgs.builder()
///                     .key("proxy_enabled")
///                     .booleanValue(false)
///                     .build())
///             .serviceAccount(String.format("%s-compute@developer.gserviceaccount.com", testProject.number()))
///             .authConfig(ConnectionAuthConfigArgs.builder()
///                 .authType("AUTH_TYPE_UNSPECIFIED")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(connectorSaDatasetPerms)
///                 .build());
///
///         var connectorTool = new Tool("connectorTool", ToolArgs.builder()
///             .location("us-central1")
///             .toolKey("connector_tool_key")
///             .displayName("connector-tool")
///             .description("A tool with Connector spec")
///             .connectorSpec(ToolConnectorSpecArgs.builder()
///                 .name(integrationConnector.name().applyValue(_name -> String.format("projects/%s/locations/us-central1/connections/%s", testProject.projectId(),_name)))
///                 .actions(
///                     ToolConnectorSpecActionArgs.builder()
///                         .connectionActionId("ExecuteCustomQuery")
///                         .inputFields("test1")
///                         .outputFields("test1")
///                         .build(),
///                     ToolConnectorSpecActionArgs.builder()
///                         .entityOperation(ToolConnectorSpecActionEntityOperationArgs.builder()
///                             .entityId(bqTable.tableId())
///                             .operation("LIST")
///                             .build())
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bqDataset:
///     type: gcp:bigquery:Dataset
///     name: bq_dataset
///     properties:
///       datasetId: df_tool_dataset
///       friendlyName: test
///       description: This is a test description
///       location: us-central1
///       deleteContentsOnDestroy: true
///   bqTable:
///     type: gcp:bigquery:Table
///     name: bq_table
///     properties:
///       deletionProtection: false
///       datasetId: ${bqDataset.datasetId}
///       tableId: df_tool_table
///   connectorSaDatasetPerms:
///     type: gcp:bigquery:DatasetIamMember
///     name: connector_sa_dataset_perms
///     properties:
///       project: ${testProject.projectId}
///       datasetId: ${bqDataset.datasetId}
///       role: roles/bigquery.dataEditor
///       member: serviceAccount:${testProject.number}-compute@developer.gserviceaccount.com
///   integrationConnector:
///     type: gcp:integrationconnectors:Connection
///     name: integration_connector
///     properties:
///       name: df-tool-connection
///       location: us-central1
///       connectorVersion: projects/${testProject.projectId}/locations/global/providers/gcp/connectors/bigquery/versions/1
///       description: tf created description
///       configVariables:
///         - key: dataset_id
///           stringValue: ${bqDataset.datasetId}
///         - key: project_id
///           stringValue: ${testProject.projectId}
///         - key: support_native_data_type
///           booleanValue: false
///         - key: proxy_enabled
///           booleanValue: false
///       serviceAccount: ${testProject.number}-compute@developer.gserviceaccount.com
///       authConfig:
///         authType: AUTH_TYPE_UNSPECIFIED
///     options:
///       dependsOn:
///         - ${connectorSaDatasetPerms}
///   connectorTool:
///     type: gcp:diagflow:Tool
///     name: connector_tool
///     properties:
///       location: us-central1
///       toolKey: connector_tool_key
///       displayName: connector-tool
///       description: A tool with Connector spec
///       connectorSpec:
///         name: projects/${testProject.projectId}/locations/us-central1/connections/${integrationConnector.name}
///         actions:
///           - connectionActionId: ExecuteCustomQuery
///             inputFields:
///               - test1
///             outputFields:
///               - test1
///           - entityOperation:
///               entityId: ${bqTable.tableId}
///               operation: LIST
/// variables:
///   testProject:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Dialogflow Tool Function
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const functionTool = new gcp.diagflow.Tool("function_tool", {
///     location: "global",
///     toolKey: "function_tool_key",
///     displayName: "function-tool",
///     description: "A tool with Function spec",
///     functionSpec: {
///         methodType: "GET",
///         inputSchema: JSON.stringify({
///             type: "object",
///             properties: {
///                 param1: {
///                     type: "string",
///                 },
///             },
///         }),
///         outputSchema: JSON.stringify({
///             type: "object",
///             properties: {
///                 result: {
///                     type: "string",
///                 },
///             },
///         }),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// function_tool = gcp.diagflow.Tool("function_tool",
///     location="global",
///     tool_key="function_tool_key",
///     display_name="function-tool",
///     description="A tool with Function spec",
///     function_spec={
///         "method_type": "GET",
///         "input_schema": json.dumps({
///             "type": "object",
///             "properties": {
///                 "param1": {
///                     "type": "string",
///                 },
///             },
///         }),
///         "output_schema": json.dumps({
///             "type": "object",
///             "properties": {
///                 "result": {
///                     "type": "string",
///                 },
///             },
///         }),
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
///     var functionTool = new Gcp.Diagflow.Tool("function_tool", new()
///     {
///         Location = "global",
///         ToolKey = "function_tool_key",
///         DisplayName = "function-tool",
///         Description = "A tool with Function spec",
///         FunctionSpec = new Gcp.Diagflow.Inputs.ToolFunctionSpecArgs
///         {
///             MethodType = "GET",
///             InputSchema = JsonSerializer.Serialize(new Dictionary<string, object?>
///             {
///                 ["type"] = "object",
///                 ["properties"] = new Dictionary<string, object?>
///                 {
///                     ["param1"] = new Dictionary<string, object?>
///                     {
///                         ["type"] = "string",
///                     },
///                 },
///             }),
///             OutputSchema = JsonSerializer.Serialize(new Dictionary<string, object?>
///             {
///                 ["type"] = "object",
///                 ["properties"] = new Dictionary<string, object?>
///                 {
///                     ["result"] = new Dictionary<string, object?>
///                     {
///                         ["type"] = "string",
///                     },
///                 },
///             }),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"type": "object",
/// 			"properties": map[string]map[string]string{
/// 				"param1": map[string]string{
/// 					"type": "string",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"type": "object",
/// 			"properties": map[string]map[string]string{
/// 				"result": map[string]string{
/// 					"type": "string",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = diagflow.NewTool(ctx, "function_tool", &diagflow.ToolArgs{
/// 			Location:    pulumi.String("global"),
/// 			ToolKey:     pulumi.String("function_tool_key"),
/// 			DisplayName: pulumi.String("function-tool"),
/// 			Description: pulumi.String("A tool with Function spec"),
/// 			FunctionSpec: &diagflow.ToolFunctionSpecArgs{
/// 				MethodType:   pulumi.String("GET"),
/// 				InputSchema:  pulumi.String(json0),
/// 				OutputSchema: pulumi.String(json1),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_diagflow_tool" "function_tool" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location     = "global"
///   tool_key     = "function_tool_key"
///   display_name = "function-tool"
///   description  = "A tool with Function spec"
///   function_spec = {
///     method_type = "GET"
///     input_schema = jsonencode({
///       "type" = "object"
///       "properties" = {
///         "param1" = {
///           "type" = "string"
///         }
///       }
///     })
///     output_schema = jsonencode({
///       "type" = "object"
///       "properties" = {
///         "result" = {
///           "type" = "string"
///         }
///       }
///     })
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.diagflow.Tool;
/// import com.pulumi.gcp.diagflow.ToolArgs;
/// import com.pulumi.gcp.diagflow.inputs.ToolFunctionSpecArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var functionTool = new Tool("functionTool", ToolArgs.builder()
///             .location("global")
///             .toolKey("function_tool_key")
///             .displayName("function-tool")
///             .description("A tool with Function spec")
///             .functionSpec(ToolFunctionSpecArgs.builder()
///                 .methodType("GET")
///                 .inputSchema(serializeJson(
///                     jsonObject(
///                         jsonProperty("type", "object"),
///                         jsonProperty("properties", jsonObject(
///                             jsonProperty("param1", jsonObject(
///                                 jsonProperty("type", "string")
///                             ))
///                         ))
///                     )))
///                 .outputSchema(serializeJson(
///                     jsonObject(
///                         jsonProperty("type", "object"),
///                         jsonProperty("properties", jsonObject(
///                             jsonProperty("result", jsonObject(
///                                 jsonProperty("type", "string")
///                             ))
///                         ))
///                     )))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   functionTool:
///     type: gcp:diagflow:Tool
///     name: function_tool
///     properties:
///       location: global
///       toolKey: function_tool_key
///       displayName: function-tool
///       description: A tool with Function spec
///       functionSpec:
///         methodType: GET
///         inputSchema:
///           fn::toJSON:
///             type: object
///             properties:
///               param1:
///                 type: string
///         outputSchema:
///           fn::toJSON:
///             type: object
///             properties:
///               result:
///                 type: string
/// ```
///
/// ### Dialogflow Tool Auth
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const authTool = new gcp.diagflow.Tool("auth_tool", {
///     location: "global",
///     toolKey: "auth_tool_key",
///     displayName: "auth-tool",
///     description: "A tool with OpenAPI spec and API Key Auth",
///     openApiSpec: {
///         textSchema: `openapi: 3.0.0
/// info:
///   title: auth_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// `,
///         authentication: {
///             apiKeyConfig: {
///                 keyName: "X-API-KEY",
///                 apiKey: "secret-key",
///                 secretVersionForApiKey: "projects/-/secrets/-/versions/-",
///                 requestLocation: "HEADER",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// auth_tool = gcp.diagflow.Tool("auth_tool",
///     location="global",
///     tool_key="auth_tool_key",
///     display_name="auth-tool",
///     description="A tool with OpenAPI spec and API Key Auth",
///     open_api_spec={
///         "text_schema": """openapi: 3.0.0
/// info:
///   title: auth_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// """,
///         "authentication": {
///             "api_key_config": {
///                 "key_name": "X-API-KEY",
///                 "api_key": "secret-key",
///                 "secret_version_for_api_key": "projects/-/secrets/-/versions/-",
///                 "request_location": "HEADER",
///             },
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
///     var authTool = new Gcp.Diagflow.Tool("auth_tool", new()
///     {
///         Location = "global",
///         ToolKey = "auth_tool_key",
///         DisplayName = "auth-tool",
///         Description = "A tool with OpenAPI spec and API Key Auth",
///         OpenApiSpec = new Gcp.Diagflow.Inputs.ToolOpenApiSpecArgs
///         {
///             TextSchema = @"openapi: 3.0.0
/// info:
///   title: auth_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// ",
///             Authentication = new Gcp.Diagflow.Inputs.ToolOpenApiSpecAuthenticationArgs
///             {
///                 ApiKeyConfig = new Gcp.Diagflow.Inputs.ToolOpenApiSpecAuthenticationApiKeyConfigArgs
///                 {
///                     KeyName = "X-API-KEY",
///                     ApiKey = "secret-key",
///                     SecretVersionForApiKey = "projects/-/secrets/-/versions/-",
///                     RequestLocation = "HEADER",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := diagflow.NewTool(ctx, "auth_tool", &diagflow.ToolArgs{
/// 			Location:    pulumi.String("global"),
/// 			ToolKey:     pulumi.String("auth_tool_key"),
/// 			DisplayName: pulumi.String("auth-tool"),
/// 			Description: pulumi.String("A tool with OpenAPI spec and API Key Auth"),
/// 			OpenApiSpec: &diagflow.ToolOpenApiSpecArgs{
/// 				TextSchema: pulumi.String(`openapi: 3.0.0
/// info:
///   title: auth_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// `),
/// 				Authentication: &diagflow.ToolOpenApiSpecAuthenticationArgs{
/// 					ApiKeyConfig: &diagflow.ToolOpenApiSpecAuthenticationApiKeyConfigArgs{
/// 						KeyName:                pulumi.String("X-API-KEY"),
/// 						ApiKey:                 pulumi.String("secret-key"),
/// 						SecretVersionForApiKey: pulumi.String("projects/-/secrets/-/versions/-"),
/// 						RequestLocation:        pulumi.String("HEADER"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_diagflow_tool" "auth_tool" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location     = "global"
///   tool_key     = "auth_tool_key"
///   display_name = "auth-tool"
///   description  = "A tool with OpenAPI spec and API Key Auth"
///   open_api_spec = {
///     text_schema = <<EOF
/// openapi: 3.0.0
/// info:
///   title: auth_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// EOF
///
///     authentication = {
///       api_key_config = {
///         key_name                   = "X-API-KEY"
///         api_key                    = "secret-key"
///         secret_version_for_api_key = "projects/-/secrets/-/versions/-"
///         request_location           = "HEADER"
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
/// import com.pulumi.gcp.diagflow.Tool;
/// import com.pulumi.gcp.diagflow.ToolArgs;
/// import com.pulumi.gcp.diagflow.inputs.ToolOpenApiSpecArgs;
/// import com.pulumi.gcp.diagflow.inputs.ToolOpenApiSpecAuthenticationArgs;
/// import com.pulumi.gcp.diagflow.inputs.ToolOpenApiSpecAuthenticationApiKeyConfigArgs;
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
///         var authTool = new Tool("authTool", ToolArgs.builder()
///             .location("global")
///             .toolKey("auth_tool_key")
///             .displayName("auth-tool")
///             .description("A tool with OpenAPI spec and API Key Auth")
///             .openApiSpec(ToolOpenApiSpecArgs.builder()
///                 .textSchema("""
/// openapi: 3.0.0
/// info:
///   title: auth_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
///                 """)
///                 .authentication(ToolOpenApiSpecAuthenticationArgs.builder()
///                     .apiKeyConfig(ToolOpenApiSpecAuthenticationApiKeyConfigArgs.builder()
///                         .keyName("X-API-KEY")
///                         .apiKey("secret-key")
///                         .secretVersionForApiKey("projects/-/secrets/-/versions/-")
///                         .requestLocation("HEADER")
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
///   authTool:
///     type: gcp:diagflow:Tool
///     name: auth_tool
///     properties:
///       location: global
///       toolKey: auth_tool_key
///       displayName: auth-tool
///       description: A tool with OpenAPI spec and API Key Auth
///       openApiSpec:
///         textSchema: |
///           openapi: 3.0.0
///           info:
///             title: auth_tool_key
///             version: 1.0.0
///           paths:
///             /search:
///               get:
///                 summary: Search function
///                 operationId: searchAction
///                 responses:
///                   '200':
///                     description: OK
///         authentication:
///           apiKeyConfig:
///             keyName: X-API-KEY
///             apiKey: secret-key
///             secretVersionForApiKey: projects/-/secrets/-/versions/-
///             requestLocation: HEADER
/// ```
///
/// ### Dialogflow Tool Bearer
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bearerTool = new gcp.diagflow.Tool("bearer_tool", {
///     location: "global",
///     toolKey: "bearer_token_tool_key",
///     displayName: "bearer-tool",
///     description: "A tool with OpenAPI spec and Bearer Token Auth",
///     openApiSpec: {
///         textSchema: `openapi: 3.0.0
/// info:
///   title: bearer_token_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// `,
///         authentication: {
///             bearerTokenConfig: {
///                 token: "secret-token",
///                 secretVersionForToken: "projects/-/secrets/-/versions/-",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bearer_tool = gcp.diagflow.Tool("bearer_tool",
///     location="global",
///     tool_key="bearer_token_tool_key",
///     display_name="bearer-tool",
///     description="A tool with OpenAPI spec and Bearer Token Auth",
///     open_api_spec={
///         "text_schema": """openapi: 3.0.0
/// info:
///   title: bearer_token_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// """,
///         "authentication": {
///             "bearer_token_config": {
///                 "token": "secret-token",
///                 "secret_version_for_token": "projects/-/secrets/-/versions/-",
///             },
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
///     var bearerTool = new Gcp.Diagflow.Tool("bearer_tool", new()
///     {
///         Location = "global",
///         ToolKey = "bearer_token_tool_key",
///         DisplayName = "bearer-tool",
///         Description = "A tool with OpenAPI spec and Bearer Token Auth",
///         OpenApiSpec = new Gcp.Diagflow.Inputs.ToolOpenApiSpecArgs
///         {
///             TextSchema = @"openapi: 3.0.0
/// info:
///   title: bearer_token_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// ",
///             Authentication = new Gcp.Diagflow.Inputs.ToolOpenApiSpecAuthenticationArgs
///             {
///                 BearerTokenConfig = new Gcp.Diagflow.Inputs.ToolOpenApiSpecAuthenticationBearerTokenConfigArgs
///                 {
///                     Token = "secret-token",
///                     SecretVersionForToken = "projects/-/secrets/-/versions/-",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := diagflow.NewTool(ctx, "bearer_tool", &diagflow.ToolArgs{
/// 			Location:    pulumi.String("global"),
/// 			ToolKey:     pulumi.String("bearer_token_tool_key"),
/// 			DisplayName: pulumi.String("bearer-tool"),
/// 			Description: pulumi.String("A tool with OpenAPI spec and Bearer Token Auth"),
/// 			OpenApiSpec: &diagflow.ToolOpenApiSpecArgs{
/// 				TextSchema: pulumi.String(`openapi: 3.0.0
/// info:
///   title: bearer_token_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// `),
/// 				Authentication: &diagflow.ToolOpenApiSpecAuthenticationArgs{
/// 					BearerTokenConfig: &diagflow.ToolOpenApiSpecAuthenticationBearerTokenConfigArgs{
/// 						Token:                 pulumi.String("secret-token"),
/// 						SecretVersionForToken: pulumi.String("projects/-/secrets/-/versions/-"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_diagflow_tool" "bearer_tool" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location     = "global"
///   tool_key     = "bearer_token_tool_key"
///   display_name = "bearer-tool"
///   description  = "A tool with OpenAPI spec and Bearer Token Auth"
///   open_api_spec = {
///     text_schema = <<EOF
/// openapi: 3.0.0
/// info:
///   title: bearer_token_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// EOF
///
///     authentication = {
///       bearer_token_config = {
///         token                    = "secret-token"
///         secret_version_for_token = "projects/-/secrets/-/versions/-"
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
/// import com.pulumi.gcp.diagflow.Tool;
/// import com.pulumi.gcp.diagflow.ToolArgs;
/// import com.pulumi.gcp.diagflow.inputs.ToolOpenApiSpecArgs;
/// import com.pulumi.gcp.diagflow.inputs.ToolOpenApiSpecAuthenticationArgs;
/// import com.pulumi.gcp.diagflow.inputs.ToolOpenApiSpecAuthenticationBearerTokenConfigArgs;
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
///         var bearerTool = new Tool("bearerTool", ToolArgs.builder()
///             .location("global")
///             .toolKey("bearer_token_tool_key")
///             .displayName("bearer-tool")
///             .description("A tool with OpenAPI spec and Bearer Token Auth")
///             .openApiSpec(ToolOpenApiSpecArgs.builder()
///                 .textSchema("""
/// openapi: 3.0.0
/// info:
///   title: bearer_token_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
///                 """)
///                 .authentication(ToolOpenApiSpecAuthenticationArgs.builder()
///                     .bearerTokenConfig(ToolOpenApiSpecAuthenticationBearerTokenConfigArgs.builder()
///                         .token("secret-token")
///                         .secretVersionForToken("projects/-/secrets/-/versions/-")
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
///   bearerTool:
///     type: gcp:diagflow:Tool
///     name: bearer_tool
///     properties:
///       location: global
///       toolKey: bearer_token_tool_key
///       displayName: bearer-tool
///       description: A tool with OpenAPI spec and Bearer Token Auth
///       openApiSpec:
///         textSchema: |
///           openapi: 3.0.0
///           info:
///             title: bearer_token_tool_key
///             version: 1.0.0
///           paths:
///             /search:
///               get:
///                 summary: Search function
///                 operationId: searchAction
///                 responses:
///                   '200':
///                     description: OK
///         authentication:
///           bearerTokenConfig:
///             token: secret-token
///             secretVersionForToken: projects/-/secrets/-/versions/-
/// ```
///
/// ### Dialogflow Tool Oauth
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const oauthTool = new gcp.diagflow.Tool("oauth_tool", {
///     location: "global",
///     toolKey: "oauth_tool_key",
///     displayName: "oauth-tool",
///     description: "A tool with OpenAPI spec and OAuth Config",
///     openApiSpec: {
///         textSchema: `openapi: 3.0.0
/// info:
///   title: oauth_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// `,
///         authentication: {
///             oauthConfig: {
///                 clientId: "client-id",
///                 clientSecret: "client-secret",
///                 secretVersionForClientSecret: "projects/-/secrets/-/versions/-",
///                 oauthGrantType: "CLIENT_CREDENTIAL",
///                 tokenEndpoint: "https://example.com/oauth/token",
///                 scopes: [
///                     "scope1",
///                     "scope2",
///                 ],
///             },
///         },
///         tlsConfig: {
///             caCerts: [{
///                 displayName: "example ca cert name",
///                 cert: std.base64encode({
///                     input: "example cert",
///                 }).then(invoke => invoke.result),
///             }],
///         },
///         serviceDirectoryConfig: {
///             service: "projects/-/locations/-/namespaces/-/services/-",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// oauth_tool = gcp.diagflow.Tool("oauth_tool",
///     location="global",
///     tool_key="oauth_tool_key",
///     display_name="oauth-tool",
///     description="A tool with OpenAPI spec and OAuth Config",
///     open_api_spec={
///         "text_schema": """openapi: 3.0.0
/// info:
///   title: oauth_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// """,
///         "authentication": {
///             "oauth_config": {
///                 "client_id": "client-id",
///                 "client_secret": "client-secret",
///                 "secret_version_for_client_secret": "projects/-/secrets/-/versions/-",
///                 "oauth_grant_type": "CLIENT_CREDENTIAL",
///                 "token_endpoint": "https://example.com/oauth/token",
///                 "scopes": [
///                     "scope1",
///                     "scope2",
///                 ],
///             },
///         },
///         "tls_config": {
///             "ca_certs": [{
///                 "display_name": "example ca cert name",
///                 "cert": std.base64encode(input="example cert").result,
///             }],
///         },
///         "service_directory_config": {
///             "service": "projects/-/locations/-/namespaces/-/services/-",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var oauthTool = new Gcp.Diagflow.Tool("oauth_tool", new()
///     {
///         Location = "global",
///         ToolKey = "oauth_tool_key",
///         DisplayName = "oauth-tool",
///         Description = "A tool with OpenAPI spec and OAuth Config",
///         OpenApiSpec = new Gcp.Diagflow.Inputs.ToolOpenApiSpecArgs
///         {
///             TextSchema = @"openapi: 3.0.0
/// info:
///   title: oauth_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// ",
///             Authentication = new Gcp.Diagflow.Inputs.ToolOpenApiSpecAuthenticationArgs
///             {
///                 OauthConfig = new Gcp.Diagflow.Inputs.ToolOpenApiSpecAuthenticationOauthConfigArgs
///                 {
///                     ClientId = "client-id",
///                     ClientSecret = "client-secret",
///                     SecretVersionForClientSecret = "projects/-/secrets/-/versions/-",
///                     OauthGrantType = "CLIENT_CREDENTIAL",
///                     TokenEndpoint = "https://example.com/oauth/token",
///                     Scopes = new[]
///                     {
///                         "scope1",
///                         "scope2",
///                     },
///                 },
///             },
///             TlsConfig = new Gcp.Diagflow.Inputs.ToolOpenApiSpecTlsConfigArgs
///             {
///                 CaCerts = new[]
///                 {
///                     new Gcp.Diagflow.Inputs.ToolOpenApiSpecTlsConfigCaCertArgs
///                     {
///                         DisplayName = "example ca cert name",
///                         Cert = Std.Base64encode.Invoke(new()
///                         {
///                             Input = "example cert",
///                         }).Apply(invoke => invoke.Result),
///                     },
///                 },
///             },
///             ServiceDirectoryConfig = new Gcp.Diagflow.Inputs.ToolOpenApiSpecServiceDirectoryConfigArgs
///             {
///                 Service = "projects/-/locations/-/namespaces/-/services/-",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: "example cert",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewTool(ctx, "oauth_tool", &diagflow.ToolArgs{
/// 			Location:    pulumi.String("global"),
/// 			ToolKey:     pulumi.String("oauth_tool_key"),
/// 			DisplayName: pulumi.String("oauth-tool"),
/// 			Description: pulumi.String("A tool with OpenAPI spec and OAuth Config"),
/// 			OpenApiSpec: &diagflow.ToolOpenApiSpecArgs{
/// 				TextSchema: pulumi.String(`openapi: 3.0.0
/// info:
///   title: oauth_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// `),
/// 				Authentication: &diagflow.ToolOpenApiSpecAuthenticationArgs{
/// 					OauthConfig: &diagflow.ToolOpenApiSpecAuthenticationOauthConfigArgs{
/// 						ClientId:                     pulumi.String("client-id"),
/// 						ClientSecret:                 pulumi.String("client-secret"),
/// 						SecretVersionForClientSecret: pulumi.String("projects/-/secrets/-/versions/-"),
/// 						OauthGrantType:               pulumi.String("CLIENT_CREDENTIAL"),
/// 						TokenEndpoint:                pulumi.String("https://example.com/oauth/token"),
/// 						Scopes: pulumi.StringArray{
/// 							pulumi.String("scope1"),
/// 							pulumi.String("scope2"),
/// 						},
/// 					},
/// 				},
/// 				TlsConfig: &diagflow.ToolOpenApiSpecTlsConfigArgs{
/// 					CaCerts: diagflow.ToolOpenApiSpecTlsConfigCaCertArray{
/// 						&diagflow.ToolOpenApiSpecTlsConfigCaCertArgs{
/// 							DisplayName: pulumi.String("example ca cert name"),
/// 							Cert:        pulumi.String(invokeBase64encode.Result),
/// 						},
/// 					},
/// 				},
/// 				ServiceDirectoryConfig: &diagflow.ToolOpenApiSpecServiceDirectoryConfigArgs{
/// 					Service: pulumi.String("projects/-/locations/-/namespaces/-/services/-"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_diagflow_tool" "oauth_tool" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location     = "global"
///   tool_key     = "oauth_tool_key"
///   display_name = "oauth-tool"
///   description  = "A tool with OpenAPI spec and OAuth Config"
///   open_api_spec = {
///     text_schema = <<EOF
/// openapi: 3.0.0
/// info:
///   title: oauth_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// EOF
///
///     authentication = {
///       oauth_config = {
///         client_id                        = "client-id"
///         client_secret                    = "client-secret"
///         secret_version_for_client_secret = "projects/-/secrets/-/versions/-"
///         oauth_grant_type                 = "CLIENT_CREDENTIAL"
///         token_endpoint                   = "https://example.com/oauth/token"
///         scopes                           = ["scope1", "scope2"]
///       }
///     }
///     tls_config = {
///       ca_certs = [{
///         display_name = "example ca cert name"
///         cert         = base64encode("example cert")
///       }]
///     }
///     service_directory_config = {
///       service = "projects/-/locations/-/namespaces/-/services/-"
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
/// import com.pulumi.gcp.diagflow.Tool;
/// import com.pulumi.gcp.diagflow.ToolArgs;
/// import com.pulumi.gcp.diagflow.inputs.ToolOpenApiSpecArgs;
/// import com.pulumi.gcp.diagflow.inputs.ToolOpenApiSpecAuthenticationArgs;
/// import com.pulumi.gcp.diagflow.inputs.ToolOpenApiSpecAuthenticationOauthConfigArgs;
/// import com.pulumi.gcp.diagflow.inputs.ToolOpenApiSpecTlsConfigArgs;
/// import com.pulumi.gcp.diagflow.inputs.ToolOpenApiSpecTlsConfigCaCertArgs;
/// import com.pulumi.gcp.diagflow.inputs.ToolOpenApiSpecServiceDirectoryConfigArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
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
///         var oauthTool = new Tool("oauthTool", ToolArgs.builder()
///             .location("global")
///             .toolKey("oauth_tool_key")
///             .displayName("oauth-tool")
///             .description("A tool with OpenAPI spec and OAuth Config")
///             .openApiSpec(ToolOpenApiSpecArgs.builder()
///                 .textSchema("""
/// openapi: 3.0.0
/// info:
///   title: oauth_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
///                 """)
///                 .authentication(ToolOpenApiSpecAuthenticationArgs.builder()
///                     .oauthConfig(ToolOpenApiSpecAuthenticationOauthConfigArgs.builder()
///                         .clientId("client-id")
///                         .clientSecret("client-secret")
///                         .secretVersionForClientSecret("projects/-/secrets/-/versions/-")
///                         .oauthGrantType("CLIENT_CREDENTIAL")
///                         .tokenEndpoint("https://example.com/oauth/token")
///                         .scopes(
///                             "scope1",
///                             "scope2")
///                         .build())
///                     .build())
///                 .tlsConfig(ToolOpenApiSpecTlsConfigArgs.builder()
///                     .caCerts(ToolOpenApiSpecTlsConfigCaCertArgs.builder()
///                         .displayName("example ca cert name")
///                         .cert(StdFunctions.base64encode(Base64encodeArgs.builder()
///                             .input("example cert")
///                             .build()).result())
///                         .build())
///                     .build())
///                 .serviceDirectoryConfig(ToolOpenApiSpecServiceDirectoryConfigArgs.builder()
///                     .service("projects/-/locations/-/namespaces/-/services/-")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   oauthTool:
///     type: gcp:diagflow:Tool
///     name: oauth_tool
///     properties:
///       location: global
///       toolKey: oauth_tool_key
///       displayName: oauth-tool
///       description: A tool with OpenAPI spec and OAuth Config
///       openApiSpec:
///         textSchema: |
///           openapi: 3.0.0
///           info:
///             title: oauth_tool_key
///             version: 1.0.0
///           paths:
///             /search:
///               get:
///                 summary: Search function
///                 operationId: searchAction
///                 responses:
///                   '200':
///                     description: OK
///         authentication:
///           oauthConfig:
///             clientId: client-id
///             clientSecret: client-secret
///             secretVersionForClientSecret: projects/-/secrets/-/versions/-
///             oauthGrantType: CLIENT_CREDENTIAL
///             tokenEndpoint: https://example.com/oauth/token
///             scopes:
///               - scope1
///               - scope2
///         tlsConfig:
///           caCerts:
///             - displayName: example ca cert name
///               cert:
///                 fn::invoke:
///                   function: std:base64encode
///                   arguments:
///                     input: example cert
///                   return: result
///         serviceDirectoryConfig:
///           service: projects/-/locations/-/namespaces/-/services/-
/// ```
///
/// ### Dialogflow Tool Service Agent
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serviceAgentTool = new gcp.diagflow.Tool("service_agent_tool", {
///     location: "global",
///     toolKey: "service_agent_tool_key",
///     displayName: "service-agent-tool",
///     description: "A tool with OpenAPI spec and Service Agent Auth",
///     openApiSpec: {
///         textSchema: `openapi: 3.0.0
/// info:
///   title: service_agent_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// `,
///         authentication: {
///             serviceAgentAuthConfig: {
///                 serviceAgentAuth: "ID_TOKEN",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// service_agent_tool = gcp.diagflow.Tool("service_agent_tool",
///     location="global",
///     tool_key="service_agent_tool_key",
///     display_name="service-agent-tool",
///     description="A tool with OpenAPI spec and Service Agent Auth",
///     open_api_spec={
///         "text_schema": """openapi: 3.0.0
/// info:
///   title: service_agent_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// """,
///         "authentication": {
///             "service_agent_auth_config": {
///                 "service_agent_auth": "ID_TOKEN",
///             },
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
///     var serviceAgentTool = new Gcp.Diagflow.Tool("service_agent_tool", new()
///     {
///         Location = "global",
///         ToolKey = "service_agent_tool_key",
///         DisplayName = "service-agent-tool",
///         Description = "A tool with OpenAPI spec and Service Agent Auth",
///         OpenApiSpec = new Gcp.Diagflow.Inputs.ToolOpenApiSpecArgs
///         {
///             TextSchema = @"openapi: 3.0.0
/// info:
///   title: service_agent_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// ",
///             Authentication = new Gcp.Diagflow.Inputs.ToolOpenApiSpecAuthenticationArgs
///             {
///                 ServiceAgentAuthConfig = new Gcp.Diagflow.Inputs.ToolOpenApiSpecAuthenticationServiceAgentAuthConfigArgs
///                 {
///                     ServiceAgentAuth = "ID_TOKEN",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := diagflow.NewTool(ctx, "service_agent_tool", &diagflow.ToolArgs{
/// 			Location:    pulumi.String("global"),
/// 			ToolKey:     pulumi.String("service_agent_tool_key"),
/// 			DisplayName: pulumi.String("service-agent-tool"),
/// 			Description: pulumi.String("A tool with OpenAPI spec and Service Agent Auth"),
/// 			OpenApiSpec: &diagflow.ToolOpenApiSpecArgs{
/// 				TextSchema: pulumi.String(`openapi: 3.0.0
/// info:
///   title: service_agent_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// `),
/// 				Authentication: &diagflow.ToolOpenApiSpecAuthenticationArgs{
/// 					ServiceAgentAuthConfig: &diagflow.ToolOpenApiSpecAuthenticationServiceAgentAuthConfigArgs{
/// 						ServiceAgentAuth: pulumi.String("ID_TOKEN"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_diagflow_tool" "service_agent_tool" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location     = "global"
///   tool_key     = "service_agent_tool_key"
///   display_name = "service-agent-tool"
///   description  = "A tool with OpenAPI spec and Service Agent Auth"
///   open_api_spec = {
///     text_schema = <<EOF
/// openapi: 3.0.0
/// info:
///   title: service_agent_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// EOF
///
///     authentication = {
///       service_agent_auth_config = {
///         service_agent_auth = "ID_TOKEN"
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
/// import com.pulumi.gcp.diagflow.Tool;
/// import com.pulumi.gcp.diagflow.ToolArgs;
/// import com.pulumi.gcp.diagflow.inputs.ToolOpenApiSpecArgs;
/// import com.pulumi.gcp.diagflow.inputs.ToolOpenApiSpecAuthenticationArgs;
/// import com.pulumi.gcp.diagflow.inputs.ToolOpenApiSpecAuthenticationServiceAgentAuthConfigArgs;
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
///         var serviceAgentTool = new Tool("serviceAgentTool", ToolArgs.builder()
///             .location("global")
///             .toolKey("service_agent_tool_key")
///             .displayName("service-agent-tool")
///             .description("A tool with OpenAPI spec and Service Agent Auth")
///             .openApiSpec(ToolOpenApiSpecArgs.builder()
///                 .textSchema("""
/// openapi: 3.0.0
/// info:
///   title: service_agent_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
///                 """)
///                 .authentication(ToolOpenApiSpecAuthenticationArgs.builder()
///                     .serviceAgentAuthConfig(ToolOpenApiSpecAuthenticationServiceAgentAuthConfigArgs.builder()
///                         .serviceAgentAuth("ID_TOKEN")
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
///   serviceAgentTool:
///     type: gcp:diagflow:Tool
///     name: service_agent_tool
///     properties:
///       location: global
///       toolKey: service_agent_tool_key
///       displayName: service-agent-tool
///       description: A tool with OpenAPI spec and Service Agent Auth
///       openApiSpec:
///         textSchema: |
///           openapi: 3.0.0
///           info:
///             title: service_agent_tool_key
///             version: 1.0.0
///           paths:
///             /search:
///               get:
///                 summary: Search function
///                 operationId: searchAction
///                 responses:
///                   '200':
///                     description: OK
///         authentication:
///           serviceAgentAuthConfig:
///             serviceAgentAuth: ID_TOKEN
/// ```
///
///
/// ## Import
///
/// Tool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/tools/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Tool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/tool:Tool default projects/{{project}}/locations/{{location}}/tools/{{name}}
/// $ pulumi import gcp:diagflow/tool:Tool default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:diagflow/tool:Tool default {{location}}/{{name}}
/// ```
class Tool extends pulumi.CustomResource {
  /// Optional. Confirmation requirement for the actions. Each key is an action name in the `actionSchemas`.
  /// If an action's confirmation requirement is not specified (either the key is not present, or its value is `CONFIRMATION_REQUIREMENT_UNSPECIFIED`), a default value will be populated depending on the action's method type: GET actions default to `NOT_REQUIRED`, and other actions default to `REQUIRED`.
  /// Valid values are `REQUIRED` and `NOT_REQUIRED`.
  late final pulumi.Output<Map<String, String>> actionConfirmationRequirement;
  /// Integration connectors tool specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `functionSpec`, or `connectorSpec` may be set.
  /// Structure is documented below.
  late final pulumi.Output<ToolConnectorSpec?> connectorSpec;
  /// Output only. Creation time of this tool.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Optional. Human readable description of the tool.
  late final pulumi.Output<String?> description;
  /// Optional. The human-readable name of the tool, unique within the project and location.
  late final pulumi.Output<String?> displayName;
  /// Client side executed function specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `functionSpec`, or `connectorSpec` may be set.
  /// Structure is documented below.
  late final pulumi.Output<ToolFunctionSpec?> functionSpec;
  /// The location of the tool.
  late final pulumi.Output<String> location;
  /// The resource name of the tool. Format: `projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/tools/&lt;Tool ID&gt;`.
  late final pulumi.Output<String> name;
  /// OpenAPI specification of the Tool.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `functionSpec`, or `connectorSpec` may be set.
  /// Structure is documented below.
  late final pulumi.Output<ToolOpenApiSpec?> openApiSpec;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Output only. A read only boolean field reflecting Zone Isolation status of the tool.
  late final pulumi.Output<bool> satisfiesPzi;
  /// Output only. A read only boolean field reflecting Zone Separation status of the tool.
  late final pulumi.Output<bool> satisfiesPzs;
  /// Optional. The ID to use for the tool, which will become the final component of the tool's resource name.
  /// The tool ID must be compliant with the regression formula `[a-zA-Z][a-zA-Z0-9_-]*` with the characters length in range of [3,64].
  /// If the field is not provided, an Id will be auto-generated.
  late final pulumi.Output<String> toolId;
  /// Required. A human readable short name of the tool, which should be unique within the project. It should only contain letters, numbers, and underscores, and it will be used by LLM to identify the tool.
  late final pulumi.Output<String> toolKey;
  /// Output only. Update time of this tool.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Tool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Tool]. {@macro pulumi_diagflow_tool_tool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Tool(
    String name, {
    ToolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/tool:Tool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.1').merge(options),
        ) {
    actionConfirmationRequirement = registerOutput<Map<String, String>>('actionConfirmationRequirement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    connectorSpec = registerOutput<ToolConnectorSpec?>('connectorSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolConnectorSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    functionSpec = registerOutput<ToolFunctionSpec?>('functionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolFunctionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    openApiSpec = registerOutput<ToolOpenApiSpec?>('openApiSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolOpenApiSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    satisfiesPzi = registerOutput<bool>('satisfiesPzi');
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    toolId = registerOutput<String>('toolId');
    toolKey = registerOutput<String>('toolKey');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Tool] resource's state with the given [name] and [id].
  static Tool get(
    String name,
    pulumi.Input<String> id, {
    ToolState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Tool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Tool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/tool:Tool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actionConfirmationRequirement = registerOutput<Map<String, String>>('actionConfirmationRequirement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    connectorSpec = registerOutput<ToolConnectorSpec?>('connectorSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolConnectorSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    functionSpec = registerOutput<ToolFunctionSpec?>('functionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolFunctionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    openApiSpec = registerOutput<ToolOpenApiSpec?>('openApiSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolOpenApiSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    satisfiesPzi = registerOutput<bool>('satisfiesPzi');
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    toolId = registerOutput<String>('toolId');
    toolKey = registerOutput<String>('toolKey');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Tool] resource.
  Tool.reference(String urn)
    : super(
        'gcp:diagflow/tool:Tool',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    actionConfirmationRequirement = registerOutput<Map<String, String>>('actionConfirmationRequirement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    connectorSpec = registerOutput<ToolConnectorSpec?>('connectorSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolConnectorSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    functionSpec = registerOutput<ToolFunctionSpec?>('functionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolFunctionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    openApiSpec = registerOutput<ToolOpenApiSpec?>('openApiSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolOpenApiSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    satisfiesPzi = registerOutput<bool>('satisfiesPzi');
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    toolId = registerOutput<String>('toolId');
    toolKey = registerOutput<String>('toolKey');
    updateTime = registerOutput<String>('updateTime');
  }
}
