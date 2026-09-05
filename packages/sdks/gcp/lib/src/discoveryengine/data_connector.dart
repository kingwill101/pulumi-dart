import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_connector_action_config.dart';
import 'data_connector_args.dart';
import 'data_connector_bap_config.dart';
import 'data_connector_destination_config.dart';
import 'data_connector_entity.dart';
import 'data_connector_error.dart';
import 'data_connector_state.dart';

/// DataConnector manages the connection to external data sources for all data stores grouped
/// under a Collection. It's a singleton resource of Collection. The initialization is only
/// supported through DataConnectorService.SetUpDataConnector method, which will create a new
/// Collection and initialize its DataConnector.
///
///
/// To get more information about DataConnector, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rpc/google.cloud.discoveryengine.v1alpha#dataconnectorservice)
/// * How-to Guides
/// * [Introduction](https://cloud.google.com/agentspace/docs/introduction-to-connectors-and-data-stores)
///
/// ## Example Usage
///
/// ### Discoveryengine Dataconnector Servicenow Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const servicenow_basic = new gcp.discoveryengine.DataConnector("servicenow-basic", {
///     location: "global",
///     collectionId: "collection-id",
///     collectionDisplayName: "tf-test-dataconnector-servicenow",
///     dataSource: "servicenow",
///     params: {
///         auth_type: "OAUTH_PASSWORD_GRANT",
///         instance_uri: "https://gcpconnector1.service-now.com/",
///         client_id: "SECRET_MANAGER_RESOURCE_NAME",
///         client_secret: "SECRET_MANAGER_RESOURCE_NAME",
///         user_account: "connectorsuserqa@google.com",
///         password: "SECRET_MANAGER_RESOURCE_NAME",
///     },
///     refreshInterval: "86400s",
///     incrementalRefreshInterval: "21600s",
///     entities: [
///         {
///             entityName: "catalog",
///             params: JSON.stringify({
///                 inclusion_filters: {
///                     knowledgeBaseSysId: ["123"],
///                 },
///             }),
///         },
///         {
///             entityName: "incident",
///             params: JSON.stringify({
///                 inclusion_filters: {
///                     knowledgeBaseSysId: ["123"],
///                 },
///             }),
///         },
///         {
///             entityName: "knowledge_base",
///             params: JSON.stringify({
///                 inclusion_filters: {
///                     knowledgeBaseSysId: ["123"],
///                 },
///             }),
///         },
///     ],
///     staticIpEnabled: false,
///     connectorModes: ["DATA_INGESTION"],
///     syncMode: "PERIODIC",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// servicenow_basic = gcp.discoveryengine.DataConnector("servicenow-basic",
///     location="global",
///     collection_id="collection-id",
///     collection_display_name="tf-test-dataconnector-servicenow",
///     data_source="servicenow",
///     params={
///         "auth_type": "OAUTH_PASSWORD_GRANT",
///         "instance_uri": "https://gcpconnector1.service-now.com/",
///         "client_id": "SECRET_MANAGER_RESOURCE_NAME",
///         "client_secret": "SECRET_MANAGER_RESOURCE_NAME",
///         "user_account": "connectorsuserqa@google.com",
///         "password": "SECRET_MANAGER_RESOURCE_NAME",
///     },
///     refresh_interval="86400s",
///     incremental_refresh_interval="21600s",
///     entities=[
///         {
///             "entity_name": "catalog",
///             "params": json.dumps({
///                 "inclusion_filters": {
///                     "knowledgeBaseSysId": ["123"],
///                 },
///             }),
///         },
///         {
///             "entity_name": "incident",
///             "params": json.dumps({
///                 "inclusion_filters": {
///                     "knowledgeBaseSysId": ["123"],
///                 },
///             }),
///         },
///         {
///             "entity_name": "knowledge_base",
///             "params": json.dumps({
///                 "inclusion_filters": {
///                     "knowledgeBaseSysId": ["123"],
///                 },
///             }),
///         },
///     ],
///     static_ip_enabled=False,
///     connector_modes=["DATA_INGESTION"],
///     sync_mode="PERIODIC")
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
///     var servicenow_basic = new Gcp.DiscoveryEngine.DataConnector("servicenow-basic", new()
///     {
///         Location = "global",
///         CollectionId = "collection-id",
///         CollectionDisplayName = "tf-test-dataconnector-servicenow",
///         DataSource = "servicenow",
///         Params =
///         {
///             { "auth_type", "OAUTH_PASSWORD_GRANT" },
///             { "instance_uri", "https://gcpconnector1.service-now.com/" },
///             { "client_id", "SECRET_MANAGER_RESOURCE_NAME" },
///             { "client_secret", "SECRET_MANAGER_RESOURCE_NAME" },
///             { "user_account", "connectorsuserqa@google.com" },
///             { "password", "SECRET_MANAGER_RESOURCE_NAME" },
///         },
///         RefreshInterval = "86400s",
///         IncrementalRefreshInterval = "21600s",
///         Entities = new[]
///         {
///             new Gcp.DiscoveryEngine.Inputs.DataConnectorEntityArgs
///             {
///                 EntityName = "catalog",
///                 Params = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["inclusion_filters"] = new Dictionary<string, object?>
///                     {
///                         ["knowledgeBaseSysId"] = new[]
///                         {
///                             "123",
///                         },
///                     },
///                 }),
///             },
///             new Gcp.DiscoveryEngine.Inputs.DataConnectorEntityArgs
///             {
///                 EntityName = "incident",
///                 Params = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["inclusion_filters"] = new Dictionary<string, object?>
///                     {
///                         ["knowledgeBaseSysId"] = new[]
///                         {
///                             "123",
///                         },
///                     },
///                 }),
///             },
///             new Gcp.DiscoveryEngine.Inputs.DataConnectorEntityArgs
///             {
///                 EntityName = "knowledge_base",
///                 Params = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["inclusion_filters"] = new Dictionary<string, object?>
///                     {
///                         ["knowledgeBaseSysId"] = new[]
///                         {
///                             "123",
///                         },
///                     },
///                 }),
///             },
///         },
///         StaticIpEnabled = false,
///         ConnectorModes = new[]
///         {
///             "DATA_INGESTION",
///         },
///         SyncMode = "PERIODIC",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]map[string][]string{
/// 			"inclusion_filters": map[string][]string{
/// 				"knowledgeBaseSysId": []string{
/// 					"123",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]map[string][]string{
/// 			"inclusion_filters": map[string][]string{
/// 				"knowledgeBaseSysId": []string{
/// 					"123",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		tmpJSON2, err := json.Marshal(map[string]map[string][]string{
/// 			"inclusion_filters": map[string][]string{
/// 				"knowledgeBaseSysId": []string{
/// 					"123",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json2 := string(tmpJSON2)
/// 		_, err = discoveryengine.NewDataConnector(ctx, "servicenow-basic", &discoveryengine.DataConnectorArgs{
/// 			Location:              pulumi.String("global"),
/// 			CollectionId:          pulumi.String("collection-id"),
/// 			CollectionDisplayName: pulumi.String("tf-test-dataconnector-servicenow"),
/// 			DataSource:            pulumi.String("servicenow"),
/// 			Params: pulumi.StringMap{
/// 				"auth_type":     pulumi.String("OAUTH_PASSWORD_GRANT"),
/// 				"instance_uri":  pulumi.String("https://gcpconnector1.service-now.com/"),
/// 				"client_id":     pulumi.String("SECRET_MANAGER_RESOURCE_NAME"),
/// 				"client_secret": pulumi.String("SECRET_MANAGER_RESOURCE_NAME"),
/// 				"user_account":  pulumi.String("connectorsuserqa@google.com"),
/// 				"password":      pulumi.String("SECRET_MANAGER_RESOURCE_NAME"),
/// 			},
/// 			RefreshInterval:            pulumi.String("86400s"),
/// 			IncrementalRefreshInterval: pulumi.String("21600s"),
/// 			Entities: discoveryengine.DataConnectorEntityArray{
/// 				&discoveryengine.DataConnectorEntityArgs{
/// 					EntityName: pulumi.String("catalog"),
/// 					Params:     pulumi.String(json0),
/// 				},
/// 				&discoveryengine.DataConnectorEntityArgs{
/// 					EntityName: pulumi.String("incident"),
/// 					Params:     pulumi.String(json1),
/// 				},
/// 				&discoveryengine.DataConnectorEntityArgs{
/// 					EntityName: pulumi.String("knowledge_base"),
/// 					Params:     pulumi.String(json2),
/// 				},
/// 			},
/// 			StaticIpEnabled: pulumi.Bool(false),
/// 			ConnectorModes: pulumi.StringArray{
/// 				pulumi.String("DATA_INGESTION"),
/// 			},
/// 			SyncMode: pulumi.String("PERIODIC"),
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
/// resource "gcp_discoveryengine_dataconnector" "servicenow-basic" {
///   location                = "global"
///   collection_id           = "collection-id"
///   collection_display_name = "tf-test-dataconnector-servicenow"
///   data_source             = "servicenow"
///   params = {
///     "auth_type"     = "OAUTH_PASSWORD_GRANT"
///     "instance_uri"  = "https://gcpconnector1.service-now.com/"
///     "client_id"     = "SECRET_MANAGER_RESOURCE_NAME"
///     "client_secret" = "SECRET_MANAGER_RESOURCE_NAME"
///     "user_account"  = "connectorsuserqa@google.com"
///     "password"      = "SECRET_MANAGER_RESOURCE_NAME"
///   }
///   refresh_interval             = "86400s"
///   incremental_refresh_interval = "21600s"
///   entities {
///     entity_name = "catalog"
///     params = jsonencode({
///       "inclusion_filters" = {
///         "knowledgeBaseSysId" = ["123"]
///       }
///     })
///   }
///   entities {
///     entity_name = "incident"
///     params = jsonencode({
///       "inclusion_filters" = {
///         "knowledgeBaseSysId" = ["123"]
///       }
///     })
///   }
///   entities {
///     entity_name = "knowledge_base"
///     params = jsonencode({
///       "inclusion_filters" = {
///         "knowledgeBaseSysId" = ["123"]
///       }
///     })
///   }
///   static_ip_enabled = false
///   connector_modes   = ["DATA_INGESTION"]
///   sync_mode         = "PERIODIC"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.discoveryengine.DataConnector;
/// import com.pulumi.gcp.discoveryengine.DataConnectorArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.DataConnectorEntityArgs;
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
///         var servicenow_basic = new DataConnector("servicenow-basic", DataConnectorArgs.builder()
///             .location("global")
///             .collectionId("collection-id")
///             .collectionDisplayName("tf-test-dataconnector-servicenow")
///             .dataSource("servicenow")
///             .params(Map.ofEntries(
///                 Map.entry("auth_type", "OAUTH_PASSWORD_GRANT"),
///                 Map.entry("instance_uri", "https://gcpconnector1.service-now.com/"),
///                 Map.entry("client_id", "SECRET_MANAGER_RESOURCE_NAME"),
///                 Map.entry("client_secret", "SECRET_MANAGER_RESOURCE_NAME"),
///                 Map.entry("user_account", "connectorsuserqa@google.com"),
///                 Map.entry("password", "SECRET_MANAGER_RESOURCE_NAME")
///             ))
///             .refreshInterval("86400s")
///             .incrementalRefreshInterval("21600s")
///             .entities(
///                 DataConnectorEntityArgs.builder()
///                     .entityName("catalog")
///                     .params(serializeJson(
///                         jsonObject(
///                             jsonProperty("inclusion_filters", jsonObject(
///                                 jsonProperty("knowledgeBaseSysId", jsonArray("123"))
///                             ))
///                         )))
///                     .build(),
///                 DataConnectorEntityArgs.builder()
///                     .entityName("incident")
///                     .params(serializeJson(
///                         jsonObject(
///                             jsonProperty("inclusion_filters", jsonObject(
///                                 jsonProperty("knowledgeBaseSysId", jsonArray("123"))
///                             ))
///                         )))
///                     .build(),
///                 DataConnectorEntityArgs.builder()
///                     .entityName("knowledge_base")
///                     .params(serializeJson(
///                         jsonObject(
///                             jsonProperty("inclusion_filters", jsonObject(
///                                 jsonProperty("knowledgeBaseSysId", jsonArray("123"))
///                             ))
///                         )))
///                     .build())
///             .staticIpEnabled(false)
///             .connectorModes("DATA_INGESTION")
///             .syncMode("PERIODIC")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   servicenow-basic:
///     type: gcp:discoveryengine:DataConnector
///     properties:
///       location: global
///       collectionId: collection-id
///       collectionDisplayName: tf-test-dataconnector-servicenow
///       dataSource: servicenow
///       params:
///         auth_type: OAUTH_PASSWORD_GRANT
///         instance_uri: https://gcpconnector1.service-now.com/
///         client_id: SECRET_MANAGER_RESOURCE_NAME
///         client_secret: SECRET_MANAGER_RESOURCE_NAME
///         user_account: connectorsuserqa@google.com
///         password: SECRET_MANAGER_RESOURCE_NAME
///       refreshInterval: 86400s
///       incrementalRefreshInterval: 21600s
///       entities:
///         - entityName: catalog
///           params:
///             fn::toJSON:
///               inclusion_filters:
///                 knowledgeBaseSysId:
///                   - '123'
///         - entityName: incident
///           params:
///             fn::toJSON:
///               inclusion_filters:
///                 knowledgeBaseSysId:
///                   - '123'
///         - entityName: knowledge_base
///           params:
///             fn::toJSON:
///               inclusion_filters:
///                 knowledgeBaseSysId:
///                   - '123'
///       staticIpEnabled: false
///       connectorModes:
///         - DATA_INGESTION
///       syncMode: PERIODIC
/// ```
///
/// ### Discoveryengine Dataconnector Jira With Actions
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const jira_with_actions = new gcp.discoveryengine.DataConnector("jira-with-actions", {
///     location: "global",
///     collectionId: "collection-id",
///     collectionDisplayName: "Jira Federated",
///     dataSource: "jira",
///     dataSourceVersion: 3,
///     params: {
///         instance_uri: "https://example.atlassian.net",
///         instance_id: "SECRET_MANAGER_RESOURCE_NAME",
///         client_id: "SECRET_MANAGER_RESOURCE_NAME",
///         client_secret: "SECRET_MANAGER_RESOURCE_NAME",
///         refresh_token: "SECRET_MANAGER_RESOURCE_NAME",
///         auth_type: "OAUTH",
///     },
///     refreshInterval: "86400s",
///     entities: [
///         {
///             entityName: "project",
///         },
///         {
///             entityName: "issue",
///         },
///         {
///             entityName: "comment",
///         },
///         {
///             entityName: "attachment",
///         },
///     ],
///     staticIpEnabled: false,
///     destinationConfigs: [{
///         key: "url",
///         destinations: [{
///             host: "https://example.atlassian.net",
///             port: 123,
///         }],
///         params: JSON.stringify({
///             destination_type: "private",
///         }),
///     }],
///     connectorModes: [
///         "FEDERATED",
///         "ACTIONS",
///     ],
///     syncMode: "PERIODIC",
///     autoRunDisabled: true,
///     incrementalSyncDisabled: true,
///     actionConfig: {
///         actionParams: {
///             instance_uri: "https://example.atlassian.net",
///             instance_id: "SECRET_MANAGER_RESOURCE_NAME",
///             client_id: "SECRET_MANAGER_RESOURCE_NAME",
///             client_secret: "SECRET_MANAGER_RESOURCE_NAME",
///             auth_type: "OAUTH",
///         },
///         createBapConnection: true,
///     },
///     bapConfig: {
///         supportedConnectorModes: ["ACTIONS"],
///         enabledActions: [
///             "create_issue",
///             "update_issue",
///             "change_issue_status",
///             "create_comment",
///             "update_comment",
///             "upload_attachment",
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// jira_with_actions = gcp.discoveryengine.DataConnector("jira-with-actions",
///     location="global",
///     collection_id="collection-id",
///     collection_display_name="Jira Federated",
///     data_source="jira",
///     data_source_version=3,
///     params={
///         "instance_uri": "https://example.atlassian.net",
///         "instance_id": "SECRET_MANAGER_RESOURCE_NAME",
///         "client_id": "SECRET_MANAGER_RESOURCE_NAME",
///         "client_secret": "SECRET_MANAGER_RESOURCE_NAME",
///         "refresh_token": "SECRET_MANAGER_RESOURCE_NAME",
///         "auth_type": "OAUTH",
///     },
///     refresh_interval="86400s",
///     entities=[
///         {
///             "entity_name": "project",
///         },
///         {
///             "entity_name": "issue",
///         },
///         {
///             "entity_name": "comment",
///         },
///         {
///             "entity_name": "attachment",
///         },
///     ],
///     static_ip_enabled=False,
///     destination_configs=[{
///         "key": "url",
///         "destinations": [{
///             "host": "https://example.atlassian.net",
///             "port": 123,
///         }],
///         "params": json.dumps({
///             "destination_type": "private",
///         }),
///     }],
///     connector_modes=[
///         "FEDERATED",
///         "ACTIONS",
///     ],
///     sync_mode="PERIODIC",
///     auto_run_disabled=True,
///     incremental_sync_disabled=True,
///     action_config={
///         "action_params": {
///             "instance_uri": "https://example.atlassian.net",
///             "instance_id": "SECRET_MANAGER_RESOURCE_NAME",
///             "client_id": "SECRET_MANAGER_RESOURCE_NAME",
///             "client_secret": "SECRET_MANAGER_RESOURCE_NAME",
///             "auth_type": "OAUTH",
///         },
///         "create_bap_connection": True,
///     },
///     bap_config={
///         "supported_connector_modes": ["ACTIONS"],
///         "enabled_actions": [
///             "create_issue",
///             "update_issue",
///             "change_issue_status",
///             "create_comment",
///             "update_comment",
///             "upload_attachment",
///         ],
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
///     var jira_with_actions = new Gcp.DiscoveryEngine.DataConnector("jira-with-actions", new()
///     {
///         Location = "global",
///         CollectionId = "collection-id",
///         CollectionDisplayName = "Jira Federated",
///         DataSource = "jira",
///         DataSourceVersion = 3,
///         Params =
///         {
///             { "instance_uri", "https://example.atlassian.net" },
///             { "instance_id", "SECRET_MANAGER_RESOURCE_NAME" },
///             { "client_id", "SECRET_MANAGER_RESOURCE_NAME" },
///             { "client_secret", "SECRET_MANAGER_RESOURCE_NAME" },
///             { "refresh_token", "SECRET_MANAGER_RESOURCE_NAME" },
///             { "auth_type", "OAUTH" },
///         },
///         RefreshInterval = "86400s",
///         Entities = new[]
///         {
///             new Gcp.DiscoveryEngine.Inputs.DataConnectorEntityArgs
///             {
///                 EntityName = "project",
///             },
///             new Gcp.DiscoveryEngine.Inputs.DataConnectorEntityArgs
///             {
///                 EntityName = "issue",
///             },
///             new Gcp.DiscoveryEngine.Inputs.DataConnectorEntityArgs
///             {
///                 EntityName = "comment",
///             },
///             new Gcp.DiscoveryEngine.Inputs.DataConnectorEntityArgs
///             {
///                 EntityName = "attachment",
///             },
///         },
///         StaticIpEnabled = false,
///         DestinationConfigs = new[]
///         {
///             new Gcp.DiscoveryEngine.Inputs.DataConnectorDestinationConfigArgs
///             {
///                 Key = "url",
///                 Destinations = new[]
///                 {
///                     new Gcp.DiscoveryEngine.Inputs.DataConnectorDestinationConfigDestinationArgs
///                     {
///                         Host = "https://example.atlassian.net",
///                         Port = 123,
///                     },
///                 },
///                 Params = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["destination_type"] = "private",
///                 }),
///             },
///         },
///         ConnectorModes = new[]
///         {
///             "FEDERATED",
///             "ACTIONS",
///         },
///         SyncMode = "PERIODIC",
///         AutoRunDisabled = true,
///         IncrementalSyncDisabled = true,
///         ActionConfig = new Gcp.DiscoveryEngine.Inputs.DataConnectorActionConfigArgs
///         {
///             ActionParams =
///             {
///                 { "instance_uri", "https://example.atlassian.net" },
///                 { "instance_id", "SECRET_MANAGER_RESOURCE_NAME" },
///                 { "client_id", "SECRET_MANAGER_RESOURCE_NAME" },
///                 { "client_secret", "SECRET_MANAGER_RESOURCE_NAME" },
///                 { "auth_type", "OAUTH" },
///             },
///             CreateBapConnection = true,
///         },
///         BapConfig = new Gcp.DiscoveryEngine.Inputs.DataConnectorBapConfigArgs
///         {
///             SupportedConnectorModes = new[]
///             {
///                 "ACTIONS",
///             },
///             EnabledActions = new[]
///             {
///                 "create_issue",
///                 "update_issue",
///                 "change_issue_status",
///                 "create_comment",
///                 "update_comment",
///                 "upload_attachment",
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
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"destination_type": "private",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = discoveryengine.NewDataConnector(ctx, "jira-with-actions", &discoveryengine.DataConnectorArgs{
/// 			Location:              pulumi.String("global"),
/// 			CollectionId:          pulumi.String("collection-id"),
/// 			CollectionDisplayName: pulumi.String("Jira Federated"),
/// 			DataSource:            pulumi.String("jira"),
/// 			DataSourceVersion:     pulumi.Int(3),
/// 			Params: pulumi.StringMap{
/// 				"instance_uri":  pulumi.String("https://example.atlassian.net"),
/// 				"instance_id":   pulumi.String("SECRET_MANAGER_RESOURCE_NAME"),
/// 				"client_id":     pulumi.String("SECRET_MANAGER_RESOURCE_NAME"),
/// 				"client_secret": pulumi.String("SECRET_MANAGER_RESOURCE_NAME"),
/// 				"refresh_token": pulumi.String("SECRET_MANAGER_RESOURCE_NAME"),
/// 				"auth_type":     pulumi.String("OAUTH"),
/// 			},
/// 			RefreshInterval: pulumi.String("86400s"),
/// 			Entities: discoveryengine.DataConnectorEntityArray{
/// 				&discoveryengine.DataConnectorEntityArgs{
/// 					EntityName: pulumi.String("project"),
/// 				},
/// 				&discoveryengine.DataConnectorEntityArgs{
/// 					EntityName: pulumi.String("issue"),
/// 				},
/// 				&discoveryengine.DataConnectorEntityArgs{
/// 					EntityName: pulumi.String("comment"),
/// 				},
/// 				&discoveryengine.DataConnectorEntityArgs{
/// 					EntityName: pulumi.String("attachment"),
/// 				},
/// 			},
/// 			StaticIpEnabled: pulumi.Bool(false),
/// 			DestinationConfigs: discoveryengine.DataConnectorDestinationConfigArray{
/// 				&discoveryengine.DataConnectorDestinationConfigArgs{
/// 					Key: pulumi.String("url"),
/// 					Destinations: discoveryengine.DataConnectorDestinationConfigDestinationArray{
/// 						&discoveryengine.DataConnectorDestinationConfigDestinationArgs{
/// 							Host: pulumi.String("https://example.atlassian.net"),
/// 							Port: pulumi.Int(123),
/// 						},
/// 					},
/// 					Params: pulumi.String(json0),
/// 				},
/// 			},
/// 			ConnectorModes: pulumi.StringArray{
/// 				pulumi.String("FEDERATED"),
/// 				pulumi.String("ACTIONS"),
/// 			},
/// 			SyncMode:                pulumi.String("PERIODIC"),
/// 			AutoRunDisabled:         pulumi.Bool(true),
/// 			IncrementalSyncDisabled: pulumi.Bool(true),
/// 			ActionConfig: &discoveryengine.DataConnectorActionConfigArgs{
/// 				ActionParams: pulumi.StringMap{
/// 					"instance_uri":  pulumi.String("https://example.atlassian.net"),
/// 					"instance_id":   pulumi.String("SECRET_MANAGER_RESOURCE_NAME"),
/// 					"client_id":     pulumi.String("SECRET_MANAGER_RESOURCE_NAME"),
/// 					"client_secret": pulumi.String("SECRET_MANAGER_RESOURCE_NAME"),
/// 					"auth_type":     pulumi.String("OAUTH"),
/// 				},
/// 				CreateBapConnection: pulumi.Bool(true),
/// 			},
/// 			BapConfig: &discoveryengine.DataConnectorBapConfigArgs{
/// 				SupportedConnectorModes: pulumi.StringArray{
/// 					pulumi.String("ACTIONS"),
/// 				},
/// 				EnabledActions: pulumi.StringArray{
/// 					pulumi.String("create_issue"),
/// 					pulumi.String("update_issue"),
/// 					pulumi.String("change_issue_status"),
/// 					pulumi.String("create_comment"),
/// 					pulumi.String("update_comment"),
/// 					pulumi.String("upload_attachment"),
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
/// resource "gcp_discoveryengine_dataconnector" "jira-with-actions" {
///   location                = "global"
///   collection_id           = "collection-id"
///   collection_display_name = "Jira Federated"
///   data_source             = "jira"
///   data_source_version     = 3
///   params = {
///     "instance_uri"  = "https://example.atlassian.net"
///     "instance_id"   = "SECRET_MANAGER_RESOURCE_NAME"
///     "client_id"     = "SECRET_MANAGER_RESOURCE_NAME"
///     "client_secret" = "SECRET_MANAGER_RESOURCE_NAME"
///     "refresh_token" = "SECRET_MANAGER_RESOURCE_NAME"
///     "auth_type"     = "OAUTH"
///   }
///   refresh_interval = "86400s"
///   entities {
///     entity_name = "project"
///   }
///   entities {
///     entity_name = "issue"
///   }
///   entities {
///     entity_name = "comment"
///   }
///   entities {
///     entity_name = "attachment"
///   }
///   static_ip_enabled = false
///   destination_configs {
///     key = "url"
///     destinations {
///       host = "https://example.atlassian.net"
///       port = 123
///     }
///     params = jsonencode({
///       "destination_type" = "private"
///     })
///   }
///   connector_modes           = ["FEDERATED", "ACTIONS"]
///   sync_mode                 = "PERIODIC"
///   auto_run_disabled         = true
///   incremental_sync_disabled = true
///   action_config = {
///     action_params = {
///       "instance_uri"  = "https://example.atlassian.net"
///       "instance_id"   = "SECRET_MANAGER_RESOURCE_NAME"
///       "client_id"     = "SECRET_MANAGER_RESOURCE_NAME"
///       "client_secret" = "SECRET_MANAGER_RESOURCE_NAME"
///       "auth_type"     = "OAUTH"
///     }
///     create_bap_connection = true
///   }
///   bap_config = {
///     supported_connector_modes = ["ACTIONS"]
///     enabled_actions           = ["create_issue", "update_issue", "change_issue_status", "create_comment", "update_comment", "upload_attachment"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.discoveryengine.DataConnector;
/// import com.pulumi.gcp.discoveryengine.DataConnectorArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.DataConnectorEntityArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.DataConnectorDestinationConfigArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.DataConnectorDestinationConfigDestinationArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.DataConnectorActionConfigArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.DataConnectorBapConfigArgs;
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
///         var jira_with_actions = new DataConnector("jira-with-actions", DataConnectorArgs.builder()
///             .location("global")
///             .collectionId("collection-id")
///             .collectionDisplayName("Jira Federated")
///             .dataSource("jira")
///             .dataSourceVersion(3)
///             .params(Map.ofEntries(
///                 Map.entry("instance_uri", "https://example.atlassian.net"),
///                 Map.entry("instance_id", "SECRET_MANAGER_RESOURCE_NAME"),
///                 Map.entry("client_id", "SECRET_MANAGER_RESOURCE_NAME"),
///                 Map.entry("client_secret", "SECRET_MANAGER_RESOURCE_NAME"),
///                 Map.entry("refresh_token", "SECRET_MANAGER_RESOURCE_NAME"),
///                 Map.entry("auth_type", "OAUTH")
///             ))
///             .refreshInterval("86400s")
///             .entities(
///                 DataConnectorEntityArgs.builder()
///                     .entityName("project")
///                     .build(),
///                 DataConnectorEntityArgs.builder()
///                     .entityName("issue")
///                     .build(),
///                 DataConnectorEntityArgs.builder()
///                     .entityName("comment")
///                     .build(),
///                 DataConnectorEntityArgs.builder()
///                     .entityName("attachment")
///                     .build())
///             .staticIpEnabled(false)
///             .destinationConfigs(DataConnectorDestinationConfigArgs.builder()
///                 .key("url")
///                 .destinations(DataConnectorDestinationConfigDestinationArgs.builder()
///                     .host("https://example.atlassian.net")
///                     .port(123)
///                     .build())
///                 .params(serializeJson(
///                     jsonObject(
///                         jsonProperty("destination_type", "private")
///                     )))
///                 .build())
///             .connectorModes(
///                 "FEDERATED",
///                 "ACTIONS")
///             .syncMode("PERIODIC")
///             .autoRunDisabled(true)
///             .incrementalSyncDisabled(true)
///             .actionConfig(DataConnectorActionConfigArgs.builder()
///                 .actionParams(Map.ofEntries(
///                     Map.entry("instance_uri", "https://example.atlassian.net"),
///                     Map.entry("instance_id", "SECRET_MANAGER_RESOURCE_NAME"),
///                     Map.entry("client_id", "SECRET_MANAGER_RESOURCE_NAME"),
///                     Map.entry("client_secret", "SECRET_MANAGER_RESOURCE_NAME"),
///                     Map.entry("auth_type", "OAUTH")
///                 ))
///                 .createBapConnection(true)
///                 .build())
///             .bapConfig(DataConnectorBapConfigArgs.builder()
///                 .supportedConnectorModes("ACTIONS")
///                 .enabledActions(
///                     "create_issue",
///                     "update_issue",
///                     "change_issue_status",
///                     "create_comment",
///                     "update_comment",
///                     "upload_attachment")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   jira-with-actions:
///     type: gcp:discoveryengine:DataConnector
///     properties:
///       location: global
///       collectionId: collection-id
///       collectionDisplayName: Jira Federated
///       dataSource: jira
///       dataSourceVersion: 3
///       params:
///         instance_uri: https://example.atlassian.net
///         instance_id: SECRET_MANAGER_RESOURCE_NAME
///         client_id: SECRET_MANAGER_RESOURCE_NAME
///         client_secret: SECRET_MANAGER_RESOURCE_NAME
///         refresh_token: SECRET_MANAGER_RESOURCE_NAME
///         auth_type: OAUTH
///       refreshInterval: 86400s
///       entities:
///         - entityName: project
///         - entityName: issue
///         - entityName: comment
///         - entityName: attachment
///       staticIpEnabled: false
///       destinationConfigs:
///         - key: url
///           destinations:
///             - host: https://example.atlassian.net
///               port: 123
///           params:
///             fn::toJSON:
///               destination_type: private
///       connectorModes:
///         - FEDERATED
///         - ACTIONS
///       syncMode: PERIODIC
///       autoRunDisabled: true
///       incrementalSyncDisabled: true
///       actionConfig:
///         actionParams:
///           instance_uri: https://example.atlassian.net
///           instance_id: SECRET_MANAGER_RESOURCE_NAME
///           client_id: SECRET_MANAGER_RESOURCE_NAME
///           client_secret: SECRET_MANAGER_RESOURCE_NAME
///           auth_type: OAUTH
///         createBapConnection: true
///       bapConfig:
///         supportedConnectorModes:
///           - ACTIONS
///         enabledActions:
///           - create_issue
///           - update_issue
///           - change_issue_status
///           - create_comment
///           - update_comment
///           - upload_attachment
/// ```
///
///
/// ## Import
///
/// DataConnector can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/dataConnector`
/// * `{{project}}/{{location}}/{{collection_id}}`
/// * `{{location}}/{{collection_id}}`
///
///
/// When using the `pulumi import` command, DataConnector can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/dataConnector:DataConnector default projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/dataConnector
/// $ pulumi import gcp:discoveryengine/dataConnector:DataConnector default {{project}}/{{location}}/{{collection_id}}
/// $ pulumi import gcp:discoveryengine/dataConnector:DataConnector default {{location}}/{{collection_id}}
/// ```
class DataConnector extends pulumi.CustomResource {
  /// Action configuration for the data connector. Configures action
  /// capabilities for connectors that support the ACTIONS connector mode.
  /// Structure is documented below.
  late final pulumi.Output<DataConnectorActionConfig?> actionConfig;
  /// State of the action connector. This reflects whether the action connector
  /// is initializing, active or has encountered errors. The possible value can be:
  /// 'STATE_UNSPECIFIED', 'CREATING', 'ACTIVE', 'FAILED', 'RUNNING', 'WARNING',
  /// 'INITIALIZATION_FAILED', 'UPDATING'.
  late final pulumi.Output<String> actionState;
  /// Indicates whether full syncs are paused for this connector
  late final pulumi.Output<bool?> autoRunDisabled;
  /// BAP (Business Application Platform) configuration for the data
  /// connector. Controls which actions are enabled for connectors
  /// using the ACTIONS connector mode.
  /// Structure is documented below.
  late final pulumi.Output<DataConnectorBapConfig?> bapConfig;
  /// User actions that must be completed before the connector can start syncing data.
  /// The possible values can be: 'ALLOWLIST_STATIC_IP', 'ALLOWLIST_IN_SERVICE_ATTACHMENT'.
  late final pulumi.Output<List<String>> blockingReasons;
  /// The display name of the Collection.
  /// Should be human readable, used to display collections in the Console
  /// Dashboard. UTF-8 encoded string with limit of 1024 characters.
  late final pulumi.Output<String> collectionDisplayName;
  /// The ID to use for the Collection, which will become the final component
  /// of the Collection's resource name. A new Collection is created as
  /// part of the DataConnector setup. DataConnector is a singleton
  /// resource under Collection, managing all DataStores of the Collection.
  /// This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034)
  /// standard with a length limit of 63 characters. Otherwise, an
  /// INVALID_ARGUMENT error is returned.
  late final pulumi.Output<String> collectionId;
  /// The modes enabled for this connector. The possible value can be:
  /// 'DATA_INGESTION', 'ACTIONS', 'FEDERATED'
  /// 'EUA', 'FEDERATED_AND_EUA'.
  late final pulumi.Output<List<String>?> connectorModes;
  /// The type of connector. Each source can only map to one type.
  /// For example, salesforce, confluence and jira have THIRD_PARTY connector
  /// type. It is not mutable once set by system. The possible value can be:
  /// 'CONNECTOR_TYPE_UNSPECIFIED', 'THIRD_PARTY', 'GCP_FHIR', 'BIG_QUERY',
  /// 'GCS', 'GOOGLE_MAIL', 'GOOGLE_CALENDAR', 'GOOGLE_DRIVE',
  /// 'NATIVE_CLOUD_IDENTITY', 'THIRD_PARTY_FEDERATED', 'THIRD_PARTY_EUA', 'GCNV'.
  late final pulumi.Output<String> connectorType;
  /// Timestamp when the DataConnector was created.
  late final pulumi.Output<String> createTime;
  /// The identifier for the data source.
  /// This is a partial list of supported connectors. Please refer to the
  /// [documentation](https://docs.cloud.google.com/gemini/enterprise/docs/connectors/introduction-to-connectors-and-data-stores)
  /// for the full list of connectors.
  /// Supported first-party connectors include:
  late final pulumi.Output<String> dataSource;
  /// The version of the data source. For example, `3` for Jira v3.
  late final pulumi.Output<int> dataSourceVersion;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Destination connector configurations for the data connector,
  /// used to configure where data is served.
  /// Structure is documented below.
  late final pulumi.Output<List<DataConnectorDestinationConfig>?> destinationConfigs;
  /// List of entities from the connected data source to ingest.
  /// Structure is documented below.
  late final pulumi.Output<List<DataConnectorEntity>?> entities;
  /// The errors from initialization or from the latest connector run.
  /// Structure is documented below.
  late final pulumi.Output<List<DataConnectorError>> errors;
  /// The refresh interval specifically for incremental data syncs. If unset,
  /// incremental syncs will use the default from env, set to 3hrs.
  /// The minimum is 30 minutes and maximum is 7 days. Applicable to only 3P
  /// connectors. When the refresh interval is
  /// set to the same value as the incremental refresh interval, incremental
  /// sync will be disabled.
  late final pulumi.Output<String?> incrementalRefreshInterval;
  /// Indicates whether incremental syncs are paused for this connector.
  late final pulumi.Output<bool?> incrementalSyncDisabled;
  /// Params needed to access the source in the format of json string.
  late final pulumi.Output<String?> jsonParams;
  /// The KMS key to be used to protect the DataStores managed by this connector.
  /// Must be set for requests that need to comply with CMEK Org Policy
  /// protections.
  /// If this field is set and processed successfully, the DataStores created by
  /// this connector will be protected by the KMS key.
  late final pulumi.Output<String?> kmsKeyName;
  /// For periodic connectors only, the last time a data sync was completed.
  late final pulumi.Output<String> lastSyncTime;
  /// The most recent timestamp when this [DataConnector][] was paused,
  /// affecting all functionalities such as data synchronization.
  /// Pausing a connector has the following effects:
  /// - All functionalities, including data synchronization, are halted.
  /// - Any ongoing data synchronization job will be canceled.
  /// - No future data synchronization runs will be scheduled nor can be
  /// triggered.
  late final pulumi.Output<String> latestPauseTime;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final pulumi.Output<String> location;
  /// The full resource name of the Data Connector.
  /// Format: `projects/*/locations/*/collections/*/dataConnector`.
  late final pulumi.Output<String> name;
  /// Params needed to access the source in the format of String-to-String (Key, Value) pairs.
  late final pulumi.Output<Map<String, String>?> params;
  /// The tenant project ID associated with private connectivity connectors.
  /// This project must be allowlisted by in order for the connector to function.
  late final pulumi.Output<String> privateConnectivityProjectId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The real-time sync state. The possible values can be:
  /// 'STATE_UNSPECIFIED', 'CREATING', 'ACTIVE', 'FAILED', 'RUNNING', 'WARNING',
  /// 'INITIALIZATION_FAILED', 'UPDATING'.
  late final pulumi.Output<String> realtimeState;
  /// The refresh interval for data sync. If duration is set to 0, the data will
  /// be synced in real time. The streaming feature is not supported yet. The
  /// minimum is 30 minutes and maximum is 7 days. When the refresh interval is
  /// set to the same value as the incremental refresh interval, incremental
  /// sync will be disabled.
  late final pulumi.Output<String> refreshInterval;
  /// The state of connector. The possible value can be:
  /// 'STATE_UNSPECIFIED', 'CREATING', 'ACTIVE', 'FAILED', 'RUNNING', 'WARNING',
  /// 'INITIALIZATION_FAILED', 'UPDATING'.
  late final pulumi.Output<String> state;
  /// The static IP addresses used by this connector.
  late final pulumi.Output<List<String>> staticIpAddresses;
  /// Whether customer has enabled static IP addresses for this connector.
  late final pulumi.Output<bool?> staticIpEnabled;
  /// The data synchronization mode supported by the data connector. The possible value can be:
  /// 'PERIODIC', 'STREAMING'.
  late final pulumi.Output<String?> syncMode;
  /// Timestamp when the DataConnector was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DataConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataConnector]. {@macro pulumi_discoveryengine_data_connector_data_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataConnector(
    String name, {
    DataConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/dataConnector:DataConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    actionConfig = registerOutput<DataConnectorActionConfig?>('actionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataConnectorActionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    actionState = registerOutput<String>('actionState');
    autoRunDisabled = registerOutput<bool?>('autoRunDisabled');
    bapConfig = registerOutput<DataConnectorBapConfig?>('bapConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataConnectorBapConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    blockingReasons = registerOutput<List<String>>('blockingReasons', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    collectionDisplayName = registerOutput<String>('collectionDisplayName');
    collectionId = registerOutput<String>('collectionId');
    connectorModes = registerOutput<List<String>?>('connectorModes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    connectorType = registerOutput<String>('connectorType');
    createTime = registerOutput<String>('createTime');
    dataSource = registerOutput<String>('dataSource');
    dataSourceVersion = registerOutput<int>('dataSourceVersion');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    destinationConfigs = registerOutput<List<DataConnectorDestinationConfig>?>('destinationConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataConnectorDestinationConfig>(guardedValue, (value) => DataConnectorDestinationConfig.fromMap((value as Map).cast<String, dynamic>())); });
    entities = registerOutput<List<DataConnectorEntity>?>('entities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataConnectorEntity>(guardedValue, (value) => DataConnectorEntity.fromMap((value as Map).cast<String, dynamic>())); });
    errors = registerOutput<List<DataConnectorError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataConnectorError>(guardedValue, (value) => DataConnectorError.fromMap((value as Map).cast<String, dynamic>())); });
    incrementalRefreshInterval = registerOutput<String?>('incrementalRefreshInterval');
    incrementalSyncDisabled = registerOutput<bool?>('incrementalSyncDisabled');
    jsonParams = registerOutput<String?>('jsonParams');
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    lastSyncTime = registerOutput<String>('lastSyncTime');
    latestPauseTime = registerOutput<String>('latestPauseTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    params = registerOutput<Map<String, String>?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    privateConnectivityProjectId = registerOutput<String>('privateConnectivityProjectId');
    project = registerOutput<String>('project');
    realtimeState = registerOutput<String>('realtimeState');
    refreshInterval = registerOutput<String>('refreshInterval');
    state = registerOutput<String>('state');
    staticIpAddresses = registerOutput<List<String>>('staticIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    staticIpEnabled = registerOutput<bool?>('staticIpEnabled');
    syncMode = registerOutput<String?>('syncMode');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [DataConnector] resource's state with the given [name] and [id].
  static DataConnector get(
    String name,
    pulumi.Input<String> id, {
    DataConnectorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DataConnector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DataConnector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/dataConnector:DataConnector',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actionConfig = registerOutput<DataConnectorActionConfig?>('actionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataConnectorActionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    actionState = registerOutput<String>('actionState');
    autoRunDisabled = registerOutput<bool?>('autoRunDisabled');
    bapConfig = registerOutput<DataConnectorBapConfig?>('bapConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataConnectorBapConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    blockingReasons = registerOutput<List<String>>('blockingReasons', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    collectionDisplayName = registerOutput<String>('collectionDisplayName');
    collectionId = registerOutput<String>('collectionId');
    connectorModes = registerOutput<List<String>?>('connectorModes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    connectorType = registerOutput<String>('connectorType');
    createTime = registerOutput<String>('createTime');
    dataSource = registerOutput<String>('dataSource');
    dataSourceVersion = registerOutput<int>('dataSourceVersion');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    destinationConfigs = registerOutput<List<DataConnectorDestinationConfig>?>('destinationConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataConnectorDestinationConfig>(guardedValue, (value) => DataConnectorDestinationConfig.fromMap((value as Map).cast<String, dynamic>())); });
    entities = registerOutput<List<DataConnectorEntity>?>('entities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataConnectorEntity>(guardedValue, (value) => DataConnectorEntity.fromMap((value as Map).cast<String, dynamic>())); });
    errors = registerOutput<List<DataConnectorError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataConnectorError>(guardedValue, (value) => DataConnectorError.fromMap((value as Map).cast<String, dynamic>())); });
    incrementalRefreshInterval = registerOutput<String?>('incrementalRefreshInterval');
    incrementalSyncDisabled = registerOutput<bool?>('incrementalSyncDisabled');
    jsonParams = registerOutput<String?>('jsonParams');
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    lastSyncTime = registerOutput<String>('lastSyncTime');
    latestPauseTime = registerOutput<String>('latestPauseTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    params = registerOutput<Map<String, String>?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    privateConnectivityProjectId = registerOutput<String>('privateConnectivityProjectId');
    project = registerOutput<String>('project');
    realtimeState = registerOutput<String>('realtimeState');
    refreshInterval = registerOutput<String>('refreshInterval');
    this.state = registerOutput<String>('state');
    staticIpAddresses = registerOutput<List<String>>('staticIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    staticIpEnabled = registerOutput<bool?>('staticIpEnabled');
    syncMode = registerOutput<String?>('syncMode');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [DataConnector] resource.
  DataConnector.reference(String urn)
    : super(
        'gcp:discoveryengine/dataConnector:DataConnector',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    actionConfig = registerOutput<DataConnectorActionConfig?>('actionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataConnectorActionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    actionState = registerOutput<String>('actionState');
    autoRunDisabled = registerOutput<bool?>('autoRunDisabled');
    bapConfig = registerOutput<DataConnectorBapConfig?>('bapConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataConnectorBapConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    blockingReasons = registerOutput<List<String>>('blockingReasons', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    collectionDisplayName = registerOutput<String>('collectionDisplayName');
    collectionId = registerOutput<String>('collectionId');
    connectorModes = registerOutput<List<String>?>('connectorModes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    connectorType = registerOutput<String>('connectorType');
    createTime = registerOutput<String>('createTime');
    dataSource = registerOutput<String>('dataSource');
    dataSourceVersion = registerOutput<int>('dataSourceVersion');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    destinationConfigs = registerOutput<List<DataConnectorDestinationConfig>?>('destinationConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataConnectorDestinationConfig>(guardedValue, (value) => DataConnectorDestinationConfig.fromMap((value as Map).cast<String, dynamic>())); });
    entities = registerOutput<List<DataConnectorEntity>?>('entities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataConnectorEntity>(guardedValue, (value) => DataConnectorEntity.fromMap((value as Map).cast<String, dynamic>())); });
    errors = registerOutput<List<DataConnectorError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataConnectorError>(guardedValue, (value) => DataConnectorError.fromMap((value as Map).cast<String, dynamic>())); });
    incrementalRefreshInterval = registerOutput<String?>('incrementalRefreshInterval');
    incrementalSyncDisabled = registerOutput<bool?>('incrementalSyncDisabled');
    jsonParams = registerOutput<String?>('jsonParams');
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    lastSyncTime = registerOutput<String>('lastSyncTime');
    latestPauseTime = registerOutput<String>('latestPauseTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    params = registerOutput<Map<String, String>?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    privateConnectivityProjectId = registerOutput<String>('privateConnectivityProjectId');
    project = registerOutput<String>('project');
    realtimeState = registerOutput<String>('realtimeState');
    refreshInterval = registerOutput<String>('refreshInterval');
    state = registerOutput<String>('state');
    staticIpAddresses = registerOutput<List<String>>('staticIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    staticIpEnabled = registerOutput<bool?>('staticIpEnabled');
    syncMode = registerOutput<String?>('syncMode');
    updateTime = registerOutput<String>('updateTime');
  }
}
