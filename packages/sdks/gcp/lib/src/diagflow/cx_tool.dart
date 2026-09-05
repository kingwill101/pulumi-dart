import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_tool_args.dart';
import 'cx_tool_connector_spec.dart';
import 'cx_tool_data_store_spec.dart';
import 'cx_tool_function_spec.dart';
import 'cx_tool_open_api_spec.dart';
import 'cx_tool_state.dart';

/// A tool provides a list of actions which are available to the Playbook to attain its goal.
/// A Tool consists of a description of the tool's usage and a specification of the tool which contains the schema and authentication information.
///
///
/// To get more information about Tool, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.tools)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
///
///
/// ## Example Usage
///
/// ### Dialogflowcx Tool Open Api
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const agent = new gcp.diagflow.CxAgent("agent", {
///     displayName: "dialogflowcx-agent-open-api",
///     location: "global",
///     defaultLanguageCode: "en",
///     timeZone: "America/New_York",
///     description: "Example description.",
/// });
/// const openApiTool = new gcp.diagflow.CxTool("open_api_tool", {
///     parent: agent.id,
///     displayName: "Example Open API Tool",
///     description: "Example Description",
///     openApiSpec: {
///         authentication: {
///             oauthConfig: {
///                 oauthGrantType: "CLIENT_CREDENTIAL",
///                 clientId: "example client ID",
///                 clientSecret: "example client secret",
///                 scopes: ["example scope"],
///                 secretVersionForClientSecret: "projects/-/secrets/-/versions/-",
///                 tokenEndpoint: "https://example.com/oauth/token",
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
///         textSchema: `    {
///       \\"openapi\\": \\"3.0.0\\",
///       \\"info\\": {
///         \\"title\\": \\"Time API\\",
///         \\"version\\": \\"1.0.0\\",
///         \\"description\\": \\"A simple API to get the current time.\\"
///       },
///       \\"servers\\": [
///         {
///           \\"url\\": \\"https://example-api-endpoint.com\\"
///         }
///       ],
///       \\"paths\\": {
///         \\"/time\\": {
///           \\"get\\": {
///             \\"operationId\\": \\"getCurrentTime\\",
///             \\"summary\\": \\"Gets the current server time.\\",
///             \\"responses\\": {
///               \\"200\\": {
///                 \\"description\\": \\"Successful response with the current time.\\",
///                 \\"content\\": {
///                   \\"application/json\\": {
///                     \\"schema\\": {
///                       \\"type\\": \\"object\\",
///                       \\"properties\\": {
///                         \\"currentTime\\": {
///                           \\"type\\": \\"string\\",
///                           \\"format\\": \\"date-time\\",
///                           \\"description\\": \\"The current time in ISO 8601 format.\\"
///                         }
///                       }
///                     }
///                   }
///                 }
///               }
///             }
///           }
///         }
///       }
///     }
/// `,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// agent = gcp.diagflow.CxAgent("agent",
///     display_name="dialogflowcx-agent-open-api",
///     location="global",
///     default_language_code="en",
///     time_zone="America/New_York",
///     description="Example description.")
/// open_api_tool = gcp.diagflow.CxTool("open_api_tool",
///     parent=agent.id,
///     display_name="Example Open API Tool",
///     description="Example Description",
///     open_api_spec={
///         "authentication": {
///             "oauth_config": {
///                 "oauth_grant_type": "CLIENT_CREDENTIAL",
///                 "client_id": "example client ID",
///                 "client_secret": "example client secret",
///                 "scopes": ["example scope"],
///                 "secret_version_for_client_secret": "projects/-/secrets/-/versions/-",
///                 "token_endpoint": "https://example.com/oauth/token",
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
///         "text_schema": """    {
///       \"openapi\": \"3.0.0\",
///       \"info\": {
///         \"title\": \"Time API\",
///         \"version\": \"1.0.0\",
///         \"description\": \"A simple API to get the current time.\"
///       },
///       \"servers\": [
///         {
///           \"url\": \"https://example-api-endpoint.com\"
///         }
///       ],
///       \"paths\": {
///         \"/time\": {
///           \"get\": {
///             \"operationId\": \"getCurrentTime\",
///             \"summary\": \"Gets the current server time.\",
///             \"responses\": {
///               \"200\": {
///                 \"description\": \"Successful response with the current time.\",
///                 \"content\": {
///                   \"application/json\": {
///                     \"schema\": {
///                       \"type\": \"object\",
///                       \"properties\": {
///                         \"currentTime\": {
///                           \"type\": \"string\",
///                           \"format\": \"date-time\",
///                           \"description\": \"The current time in ISO 8601 format.\"
///                         }
///                       }
///                     }
///                   }
///                 }
///               }
///             }
///           }
///         }
///       }
///     }
/// """,
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
///     var agent = new Gcp.Diagflow.CxAgent("agent", new()
///     {
///         DisplayName = "dialogflowcx-agent-open-api",
///         Location = "global",
///         DefaultLanguageCode = "en",
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///     });
///
///     var openApiTool = new Gcp.Diagflow.CxTool("open_api_tool", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "Example Open API Tool",
///         Description = "Example Description",
///         OpenApiSpec = new Gcp.Diagflow.Inputs.CxToolOpenApiSpecArgs
///         {
///             Authentication = new Gcp.Diagflow.Inputs.CxToolOpenApiSpecAuthenticationArgs
///             {
///                 OauthConfig = new Gcp.Diagflow.Inputs.CxToolOpenApiSpecAuthenticationOauthConfigArgs
///                 {
///                     OauthGrantType = "CLIENT_CREDENTIAL",
///                     ClientId = "example client ID",
///                     ClientSecret = "example client secret",
///                     Scopes = new[]
///                     {
///                         "example scope",
///                     },
///                     SecretVersionForClientSecret = "projects/-/secrets/-/versions/-",
///                     TokenEndpoint = "https://example.com/oauth/token",
///                 },
///             },
///             TlsConfig = new Gcp.Diagflow.Inputs.CxToolOpenApiSpecTlsConfigArgs
///             {
///                 CaCerts = new[]
///                 {
///                     new Gcp.Diagflow.Inputs.CxToolOpenApiSpecTlsConfigCaCertArgs
///                     {
///                         DisplayName = "example ca cert name",
///                         Cert = Std.Base64encode.Invoke(new()
///                         {
///                             Input = "example cert",
///                         }).Apply(invoke => invoke.Result),
///                     },
///                 },
///             },
///             ServiceDirectoryConfig = new Gcp.Diagflow.Inputs.CxToolOpenApiSpecServiceDirectoryConfigArgs
///             {
///                 Service = "projects/-/locations/-/namespaces/-/services/-",
///             },
///             TextSchema = @"    {
///       \""openapi\"": \""3.0.0\"",
///       \""info\"": {
///         \""title\"": \""Time API\"",
///         \""version\"": \""1.0.0\"",
///         \""description\"": \""A simple API to get the current time.\""
///       },
///       \""servers\"": [
///         {
///           \""url\"": \""https://example-api-endpoint.com\""
///         }
///       ],
///       \""paths\"": {
///         \""/time\"": {
///           \""get\"": {
///             \""operationId\"": \""getCurrentTime\"",
///             \""summary\"": \""Gets the current server time.\"",
///             \""responses\"": {
///               \""200\"": {
///                 \""description\"": \""Successful response with the current time.\"",
///                 \""content\"": {
///                   \""application/json\"": {
///                     \""schema\"": {
///                       \""type\"": \""object\"",
///                       \""properties\"": {
///                         \""currentTime\"": {
///                           \""type\"": \""string\"",
///                           \""format\"": \""date-time\"",
///                           \""description\"": \""The current time in ISO 8601 format.\""
///                         }
///                       }
///                     }
///                   }
///                 }
///               }
///             }
///           }
///         }
///       }
///     }
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		agent, err := diagflow.NewCxAgent(ctx, "agent", &diagflow.CxAgentArgs{
/// 			DisplayName:         pulumi.String("dialogflowcx-agent-open-api"),
/// 			Location:            pulumi.String("global"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			TimeZone:            pulumi.String("America/New_York"),
/// 			Description:         pulumi.String("Example description."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: "example cert",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCxTool(ctx, "open_api_tool", &diagflow.CxToolArgs{
/// 			Parent:      agent.ID().ToIDOutput().ToStringOutput(),
/// 			DisplayName: pulumi.String("Example Open API Tool"),
/// 			Description: pulumi.String("Example Description"),
/// 			OpenApiSpec: &diagflow.CxToolOpenApiSpecArgs{
/// 				Authentication: &diagflow.CxToolOpenApiSpecAuthenticationArgs{
/// 					OauthConfig: &diagflow.CxToolOpenApiSpecAuthenticationOauthConfigArgs{
/// 						OauthGrantType: pulumi.String("CLIENT_CREDENTIAL"),
/// 						ClientId:       pulumi.String("example client ID"),
/// 						ClientSecret:   pulumi.String("example client secret"),
/// 						Scopes: pulumi.StringArray{
/// 							pulumi.String("example scope"),
/// 						},
/// 						SecretVersionForClientSecret: pulumi.String("projects/-/secrets/-/versions/-"),
/// 						TokenEndpoint:                pulumi.String("https://example.com/oauth/token"),
/// 					},
/// 				},
/// 				TlsConfig: &diagflow.CxToolOpenApiSpecTlsConfigArgs{
/// 					CaCerts: diagflow.CxToolOpenApiSpecTlsConfigCaCertArray{
/// 						&diagflow.CxToolOpenApiSpecTlsConfigCaCertArgs{
/// 							DisplayName: pulumi.String("example ca cert name"),
/// 							Cert:        pulumi.String(invokeBase64encode.Result),
/// 						},
/// 					},
/// 				},
/// 				ServiceDirectoryConfig: &diagflow.CxToolOpenApiSpecServiceDirectoryConfigArgs{
/// 					Service: pulumi.String("projects/-/locations/-/namespaces/-/services/-"),
/// 				},
/// 				TextSchema: pulumi.String(`    {
///       \"openapi\": \"3.0.0\",
///       \"info\": {
///         \"title\": \"Time API\",
///         \"version\": \"1.0.0\",
///         \"description\": \"A simple API to get the current time.\"
///       },
///       \"servers\": [
///         {
///           \"url\": \"https://example-api-endpoint.com\"
///         }
///       ],
///       \"paths\": {
///         \"/time\": {
///           \"get\": {
///             \"operationId\": \"getCurrentTime\",
///             \"summary\": \"Gets the current server time.\",
///             \"responses\": {
///               \"200\": {
///                 \"description\": \"Successful response with the current time.\",
///                 \"content\": {
///                   \"application/json\": {
///                     \"schema\": {
///                       \"type\": \"object\",
///                       \"properties\": {
///                         \"currentTime\": {
///                           \"type\": \"string\",
///                           \"format\": \"date-time\",
///                           \"description\": \"The current time in ISO 8601 format.\"
///                         }
///                       }
///                     }
///                   }
///                 }
///               }
///             }
///           }
///         }
///       }
///     }
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
/// pulumi {
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
/// resource "gcp_diagflow_cxagent" "agent" {
///   display_name          = "dialogflowcx-agent-open-api"
///   location              = "global"
///   default_language_code = "en"
///   time_zone             = "America/New_York"
///   description           = "Example description."
/// }
/// resource "gcp_diagflow_cxtool" "open_api_tool" {
///   parent       = gcp_diagflow_cxagent.agent.id
///   display_name = "Example Open API Tool"
///   description  = "Example Description"
///   open_api_spec = {
///     authentication = {
///       oauth_config = {
///         oauth_grant_type                 = "CLIENT_CREDENTIAL"
///         client_id                        = "example client ID"
///         client_secret                    = "example client secret"
///         scopes                           = ["example scope"]
///         secret_version_for_client_secret = "projects/-/secrets/-/versions/-"
///         token_endpoint                   = "https://example.com/oauth/token"
///       }
///     }
///     tls_config = {
///       ca_certs = [{
///         "displayName" = "example ca cert name"
///         "cert"        = base64encode("example cert")
///       }]
///     }
///     service_directory_config = {
///       service = "projects/-/locations/-/namespaces/-/services/-"
///     }
///     text_schema = "    {\n      \\\"openapi\\\": \\\"3.0.0\\\",\n      \\\"info\\\": {\n        \\\"title\\\": \\\"Time API\\\",\n        \\\"version\\\": \\\"1.0.0\\\",\n        \\\"description\\\": \\\"A simple API to get the current time.\\\"\n      },\n      \\\"servers\\\": [\n        {\n          \\\"url\\\": \\\"https://example-api-endpoint.com\\\"\n        }\n      ],\n      \\\"paths\\\": {\n        \\\"/time\\\": {\n          \\\"get\\\": {\n            \\\"operationId\\\": \\\"getCurrentTime\\\",\n            \\\"summary\\\": \\\"Gets the current server time.\\\",\n            \\\"responses\\\": {\n              \\\"200\\\": {\n                \\\"description\\\": \\\"Successful response with the current time.\\\",\n                \\\"content\\\": {\n                  \\\"application/json\\\": {\n                    \\\"schema\\\": {\n                      \\\"type\\\": \\\"object\\\",\n                      \\\"properties\\\": {\n                        \\\"currentTime\\\": {\n                          \\\"type\\\": \\\"string\\\",\n                          \\\"format\\\": \\\"date-time\\\",\n                          \\\"description\\\": \\\"The current time in ISO 8601 format.\\\"\n                        }\n                      }\n                    }\n                  }\n                }\n              }\n            }\n          }\n        }\n      }\n    }\n"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.diagflow.CxTool;
/// import com.pulumi.gcp.diagflow.CxToolArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolOpenApiSpecArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolOpenApiSpecAuthenticationArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolOpenApiSpecAuthenticationOauthConfigArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolOpenApiSpecTlsConfigArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolOpenApiSpecTlsConfigCaCertArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolOpenApiSpecServiceDirectoryConfigArgs;
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
///         var agent = new CxAgent("agent", CxAgentArgs.builder()
///             .displayName("dialogflowcx-agent-open-api")
///             .location("global")
///             .defaultLanguageCode("en")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .build());
///
///         var openApiTool = new CxTool("openApiTool", CxToolArgs.builder()
///             .parent(agent.id())
///             .displayName("Example Open API Tool")
///             .description("Example Description")
///             .openApiSpec(CxToolOpenApiSpecArgs.builder()
///                 .authentication(CxToolOpenApiSpecAuthenticationArgs.builder()
///                     .oauthConfig(CxToolOpenApiSpecAuthenticationOauthConfigArgs.builder()
///                         .oauthGrantType("CLIENT_CREDENTIAL")
///                         .clientId("example client ID")
///                         .clientSecret("example client secret")
///                         .scopes("example scope")
///                         .secretVersionForClientSecret("projects/-/secrets/-/versions/-")
///                         .tokenEndpoint("https://example.com/oauth/token")
///                         .build())
///                     .build())
///                 .tlsConfig(CxToolOpenApiSpecTlsConfigArgs.builder()
///                     .caCerts(CxToolOpenApiSpecTlsConfigCaCertArgs.builder()
///                         .displayName("example ca cert name")
///                         .cert(StdFunctions.base64encode(Base64encodeArgs.builder()
///                             .input("example cert")
///                             .build()).result())
///                         .build())
///                     .build())
///                 .serviceDirectoryConfig(CxToolOpenApiSpecServiceDirectoryConfigArgs.builder()
///                     .service("projects/-/locations/-/namespaces/-/services/-")
///                     .build())
///                 .textSchema("""
///     {
///       \"openapi\": \"3.0.0\",
///       \"info\": {
///         \"title\": \"Time API\",
///         \"version\": \"1.0.0\",
///         \"description\": \"A simple API to get the current time.\"
///       },
///       \"servers\": [
///         {
///           \"url\": \"https://example-api-endpoint.com\"
///         }
///       ],
///       \"paths\": {
///         \"/time\": {
///           \"get\": {
///             \"operationId\": \"getCurrentTime\",
///             \"summary\": \"Gets the current server time.\",
///             \"responses\": {
///               \"200\": {
///                 \"description\": \"Successful response with the current time.\",
///                 \"content\": {
///                   \"application/json\": {
///                     \"schema\": {
///                       \"type\": \"object\",
///                       \"properties\": {
///                         \"currentTime\": {
///                           \"type\": \"string\",
///                           \"format\": \"date-time\",
///                           \"description\": \"The current time in ISO 8601 format.\"
///                         }
///                       }
///                     }
///                   }
///                 }
///               }
///             }
///           }
///         }
///       }
///     }
///                 """)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   agent:
///     type: gcp:diagflow:CxAgent
///     properties:
///       displayName: dialogflowcx-agent-open-api
///       location: global
///       defaultLanguageCode: en
///       timeZone: America/New_York
///       description: Example description.
///   openApiTool:
///     type: gcp:diagflow:CxTool
///     name: open_api_tool
///     properties:
///       parent: ${agent.id}
///       displayName: Example Open API Tool
///       description: Example Description
///       openApiSpec:
///         authentication:
///           oauthConfig:
///             oauthGrantType: CLIENT_CREDENTIAL
///             clientId: example client ID
///             clientSecret: example client secret
///             scopes:
///               - example scope
///             secretVersionForClientSecret: projects/-/secrets/-/versions/-
///             tokenEndpoint: https://example.com/oauth/token
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
///         textSchema: |2
///               {
///                 \"openapi\": \"3.0.0\",
///                 \"info\": {
///                   \"title\": \"Time API\",
///                   \"version\": \"1.0.0\",
///                   \"description\": \"A simple API to get the current time.\"
///                 },
///                 \"servers\": [
///                   {
///                     \"url\": \"https://example-api-endpoint.com\"
///                   }
///                 ],
///                 \"paths\": {
///                   \"/time\": {
///                     \"get\": {
///                       \"operationId\": \"getCurrentTime\",
///                       \"summary\": \"Gets the current server time.\",
///                       \"responses\": {
///                         \"200\": {
///                           \"description\": \"Successful response with the current time.\",
///                           \"content\": {
///                             \"application/json\": {
///                               \"schema\": {
///                                 \"type\": \"object\",
///                                 \"properties\": {
///                                   \"currentTime\": {
///                                     \"type\": \"string\",
///                                     \"format\": \"date-time\",
///                                     \"description\": \"The current time in ISO 8601 format.\"
///                                   }
///                                 }
///                               }
///                             }
///                           }
///                         }
///                       }
///                     }
///                   }
///                 }
///               }
/// ```
///
/// ### Dialogflowcx Tool Data Store
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myDatastore = new gcp.discoveryengine.DataStore("my_datastore", {
///     location: "global",
///     dataStoreId: "datastore-tool",
///     displayName: "datastore for Tool test",
///     industryVertical: "GENERIC",
///     contentConfig: "NO_CONTENT",
///     solutionTypes: ["SOLUTION_TYPE_CHAT"],
/// });
/// const agent = new gcp.diagflow.CxAgent("agent", {
///     displayName: "dialogflowcx-agent-data-store",
///     location: "global",
///     defaultLanguageCode: "en",
///     timeZone: "America/New_York",
///     description: "Example description.",
///     deleteChatEngineOnDestroy: true,
/// }, {
///     dependsOn: [myDatastore],
/// });
/// const project = gcp.organizations.getProject({});
/// const dataStoreTool = new gcp.diagflow.CxTool("data_store_tool", {
///     parent: agent.id,
///     displayName: "Example Data Store Tool",
///     description: "Example Description",
///     dataStoreSpec: {
///         dataStoreConnections: [{
///             dataStoreType: "UNSTRUCTURED",
///             dataStore: pulumi.all([project, myDatastore.dataStoreId]).apply(([project, dataStoreId]) => `projects/${project.number}/locations/global/collections/default_collection/dataStores/${dataStoreId}`),
///             documentProcessingMode: "DOCUMENTS",
///         }],
///         fallbackPrompt: {},
///     },
/// }, {
///     dependsOn: [
///         myDatastore,
///         agent,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_datastore = gcp.discoveryengine.DataStore("my_datastore",
///     location="global",
///     data_store_id="datastore-tool",
///     display_name="datastore for Tool test",
///     industry_vertical="GENERIC",
///     content_config="NO_CONTENT",
///     solution_types=["SOLUTION_TYPE_CHAT"])
/// agent = gcp.diagflow.CxAgent("agent",
///     display_name="dialogflowcx-agent-data-store",
///     location="global",
///     default_language_code="en",
///     time_zone="America/New_York",
///     description="Example description.",
///     delete_chat_engine_on_destroy=True,
///     opts = pulumi.ResourceOptions(depends_on=[my_datastore]))
/// project = gcp.organizations.get_project()
/// data_store_tool = gcp.diagflow.CxTool("data_store_tool",
///     parent=agent.id,
///     display_name="Example Data Store Tool",
///     description="Example Description",
///     data_store_spec={
///         "data_store_connections": [{
///             "data_store_type": "UNSTRUCTURED",
///             "data_store": my_datastore.data_store_id.apply(lambda data_store_id: f"projects/{project.number}/locations/global/collections/default_collection/dataStores/{data_store_id}"),
///             "document_processing_mode": "DOCUMENTS",
///         }],
///         "fallback_prompt": {},
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             my_datastore,
///             agent,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myDatastore = new Gcp.DiscoveryEngine.DataStore("my_datastore", new()
///     {
///         Location = "global",
///         DataStoreId = "datastore-tool",
///         DisplayName = "datastore for Tool test",
///         IndustryVertical = "GENERIC",
///         ContentConfig = "NO_CONTENT",
///         SolutionTypes = new[]
///         {
///             "SOLUTION_TYPE_CHAT",
///         },
///     });
///
///     var agent = new Gcp.Diagflow.CxAgent("agent", new()
///     {
///         DisplayName = "dialogflowcx-agent-data-store",
///         Location = "global",
///         DefaultLanguageCode = "en",
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///         DeleteChatEngineOnDestroy = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             myDatastore,
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var dataStoreTool = new Gcp.Diagflow.CxTool("data_store_tool", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "Example Data Store Tool",
///         Description = "Example Description",
///         DataStoreSpec = new Gcp.Diagflow.Inputs.CxToolDataStoreSpecArgs
///         {
///             DataStoreConnections = new[]
///             {
///                 new Gcp.Diagflow.Inputs.CxToolDataStoreSpecDataStoreConnectionArgs
///                 {
///                     DataStoreType = "UNSTRUCTURED",
///                     DataStore = Output.Tuple(project, myDatastore.DataStoreId).Apply(values =>
///                     {
///                         var project = values.Item1;
///                         var dataStoreId = values.Item2;
///                         return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/global/collections/default_collection/dataStores/{dataStoreId}";
///                     }),
///                     DocumentProcessingMode = "DOCUMENTS",
///                 },
///             },
///             FallbackPrompt = null,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             myDatastore,
///             agent,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myDatastore, err := discoveryengine.NewDataStore(ctx, "my_datastore", &discoveryengine.DataStoreArgs{
/// 			Location:         pulumi.String("global"),
/// 			DataStoreId:      pulumi.String("datastore-tool"),
/// 			DisplayName:      pulumi.String("datastore for Tool test"),
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			ContentConfig:    pulumi.String("NO_CONTENT"),
/// 			SolutionTypes: pulumi.StringArray{
/// 				pulumi.String("SOLUTION_TYPE_CHAT"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		agent, err := diagflow.NewCxAgent(ctx, "agent", &diagflow.CxAgentArgs{
/// 			DisplayName:               pulumi.String("dialogflowcx-agent-data-store"),
/// 			Location:                  pulumi.String("global"),
/// 			DefaultLanguageCode:       pulumi.String("en"),
/// 			TimeZone:                  pulumi.String("America/New_York"),
/// 			Description:               pulumi.String("Example description."),
/// 			DeleteChatEngineOnDestroy: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			myDatastore,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCxTool(ctx, "data_store_tool", &diagflow.CxToolArgs{
/// 			Parent:      agent.ID().ToIDOutput().ToStringOutput(),
/// 			DisplayName: pulumi.String("Example Data Store Tool"),
/// 			Description: pulumi.String("Example Description"),
/// 			DataStoreSpec: &diagflow.CxToolDataStoreSpecArgs{
/// 				DataStoreConnections: diagflow.CxToolDataStoreSpecDataStoreConnectionArray{
/// 					&diagflow.CxToolDataStoreSpecDataStoreConnectionArgs{
/// 						DataStoreType: pulumi.String("UNSTRUCTURED"),
/// 						DataStore: myDatastore.DataStoreId.ApplyT(func(dataStoreId string) (string, error) {
/// 							return fmt.Sprintf("projects/%v/locations/global/collections/default_collection/dataStores/%v", project.Number, dataStoreId), nil
/// 						}).(pulumi.StringOutput),
/// 						DocumentProcessingMode: pulumi.String("DOCUMENTS"),
/// 					},
/// 				},
/// 				FallbackPrompt: &diagflow.CxToolDataStoreSpecFallbackPromptArgs{},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			myDatastore,
/// 			agent,
/// 		}))
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
/// resource "gcp_diagflow_cxagent" "agent" {
///   depends_on                    = [gcp_discoveryengine_datastore.my_datastore]
///   display_name                  = "dialogflowcx-agent-data-store"
///   location                      = "global"
///   default_language_code         = "en"
///   time_zone                     = "America/New_York"
///   description                   = "Example description."
///   delete_chat_engine_on_destroy = true
/// }
/// resource "gcp_diagflow_cxtool" "data_store_tool" {
///   depends_on   = [gcp_discoveryengine_datastore.my_datastore, gcp_diagflow_cxagent.agent]
///   parent       = gcp_diagflow_cxagent.agent.id
///   display_name = "Example Data Store Tool"
///   description  = "Example Description"
///   data_store_spec = {
///     data_store_connections = [{
///       "dataStoreType"          = "UNSTRUCTURED"
///       "dataStore"              ="projects/${data.gcp_organizations_getproject.project.number}/locations/global/collections/default_collection/dataStores/${gcp_discoveryengine_datastore.my_datastore.data_store_id}"
///       "documentProcessingMode" = "DOCUMENTS"
///     }]
///     fallback_prompt = {}
///   }
/// }
/// resource "gcp_discoveryengine_datastore" "my_datastore" {
///   location          = "global"
///   data_store_id     = "datastore-tool"
///   display_name      = "datastore for Tool test"
///   industry_vertical = "GENERIC"
///   content_config    = "NO_CONTENT"
///   solution_types    = ["SOLUTION_TYPE_CHAT"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.discoveryengine.DataStore;
/// import com.pulumi.gcp.discoveryengine.DataStoreArgs;
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.diagflow.CxTool;
/// import com.pulumi.gcp.diagflow.CxToolArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolDataStoreSpecArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolDataStoreSpecDataStoreConnectionArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolDataStoreSpecFallbackPromptArgs;
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
///         var myDatastore = new DataStore("myDatastore", DataStoreArgs.builder()
///             .location("global")
///             .dataStoreId("datastore-tool")
///             .displayName("datastore for Tool test")
///             .industryVertical("GENERIC")
///             .contentConfig("NO_CONTENT")
///             .solutionTypes("SOLUTION_TYPE_CHAT")
///             .build());
///
///         var agent = new CxAgent("agent", CxAgentArgs.builder()
///             .displayName("dialogflowcx-agent-data-store")
///             .location("global")
///             .defaultLanguageCode("en")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .deleteChatEngineOnDestroy(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(myDatastore)
///                 .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var dataStoreTool = new CxTool("dataStoreTool", CxToolArgs.builder()
///             .parent(agent.id())
///             .displayName("Example Data Store Tool")
///             .description("Example Description")
///             .dataStoreSpec(CxToolDataStoreSpecArgs.builder()
///                 .dataStoreConnections(CxToolDataStoreSpecDataStoreConnectionArgs.builder()
///                     .dataStoreType("UNSTRUCTURED")
///                     .dataStore(myDatastore.dataStoreId().applyValue(_dataStoreId -> String.format("projects/%s/locations/global/collections/default_collection/dataStores/%s", project.number(),_dataStoreId)))
///                     .documentProcessingMode("DOCUMENTS")
///                     .build())
///                 .fallbackPrompt(CxToolDataStoreSpecFallbackPromptArgs.builder()
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     myDatastore,
///                     agent)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   agent:
///     type: gcp:diagflow:CxAgent
///     properties:
///       displayName: dialogflowcx-agent-data-store
///       location: global
///       defaultLanguageCode: en
///       timeZone: America/New_York
///       description: Example description.
///       deleteChatEngineOnDestroy: true
///     options:
///       dependsOn:
///         - ${myDatastore}
///   dataStoreTool:
///     type: gcp:diagflow:CxTool
///     name: data_store_tool
///     properties:
///       parent: ${agent.id}
///       displayName: Example Data Store Tool
///       description: Example Description
///       dataStoreSpec:
///         dataStoreConnections:
///           - dataStoreType: UNSTRUCTURED
///             dataStore: projects/${project.number}/locations/global/collections/default_collection/dataStores/${myDatastore.dataStoreId}
///             documentProcessingMode: DOCUMENTS
///         fallbackPrompt: {}
///     options:
///       dependsOn:
///         - ${myDatastore}
///         - ${agent}
///   myDatastore:
///     type: gcp:discoveryengine:DataStore
///     name: my_datastore
///     properties:
///       location: global
///       dataStoreId: datastore-tool
///       displayName: datastore for Tool test
///       industryVertical: GENERIC
///       contentConfig: NO_CONTENT
///       solutionTypes:
///         - SOLUTION_TYPE_CHAT
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Dialogflowcx Tool Function
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const agent = new gcp.diagflow.CxAgent("agent", {
///     displayName: "dialogflowcx-agent-fucntion",
///     location: "global",
///     defaultLanguageCode: "en",
///     timeZone: "America/New_York",
///     description: "Example description.",
/// });
/// const functionTool = new gcp.diagflow.CxTool("function_tool", {
///     parent: agent.id,
///     displayName: "Example Function Tool",
///     description: "Example Description",
///     functionSpec: {
///         inputSchema: `      {
///         \\"type\\": \\"object\\",
///         \\"properties\\": {
///           \\"message_to_echo\\": {
///             \\"type\\": \\"string\\",
///             \\"description\\": \\"The message that should be echoed back.\\"
///           }
///         },
///         \\"required\\": [
///           \\"message_to_echo\\"
///         ]
///       }
/// `,
///         outputSchema: `      {
///         \\"type\\": \\"object\\",
///         \\"properties\\": {
///           \\"echoed_message\\": {
///             \\"type\\": \\"string\\",
///             \\"description\\": \\"The message that is echoed back.\\"
///           }
///         }
///       }
/// `,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// agent = gcp.diagflow.CxAgent("agent",
///     display_name="dialogflowcx-agent-fucntion",
///     location="global",
///     default_language_code="en",
///     time_zone="America/New_York",
///     description="Example description.")
/// function_tool = gcp.diagflow.CxTool("function_tool",
///     parent=agent.id,
///     display_name="Example Function Tool",
///     description="Example Description",
///     function_spec={
///         "input_schema": """      {
///         \"type\": \"object\",
///         \"properties\": {
///           \"message_to_echo\": {
///             \"type\": \"string\",
///             \"description\": \"The message that should be echoed back.\"
///           }
///         },
///         \"required\": [
///           \"message_to_echo\"
///         ]
///       }
/// """,
///         "output_schema": """      {
///         \"type\": \"object\",
///         \"properties\": {
///           \"echoed_message\": {
///             \"type\": \"string\",
///             \"description\": \"The message that is echoed back.\"
///           }
///         }
///       }
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
///     var agent = new Gcp.Diagflow.CxAgent("agent", new()
///     {
///         DisplayName = "dialogflowcx-agent-fucntion",
///         Location = "global",
///         DefaultLanguageCode = "en",
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///     });
///
///     var functionTool = new Gcp.Diagflow.CxTool("function_tool", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "Example Function Tool",
///         Description = "Example Description",
///         FunctionSpec = new Gcp.Diagflow.Inputs.CxToolFunctionSpecArgs
///         {
///             InputSchema = @"      {
///         \""type\"": \""object\"",
///         \""properties\"": {
///           \""message_to_echo\"": {
///             \""type\"": \""string\"",
///             \""description\"": \""The message that should be echoed back.\""
///           }
///         },
///         \""required\"": [
///           \""message_to_echo\""
///         ]
///       }
/// ",
///             OutputSchema = @"      {
///         \""type\"": \""object\"",
///         \""properties\"": {
///           \""echoed_message\"": {
///             \""type\"": \""string\"",
///             \""description\"": \""The message that is echoed back.\""
///           }
///         }
///       }
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		agent, err := diagflow.NewCxAgent(ctx, "agent", &diagflow.CxAgentArgs{
/// 			DisplayName:         pulumi.String("dialogflowcx-agent-fucntion"),
/// 			Location:            pulumi.String("global"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			TimeZone:            pulumi.String("America/New_York"),
/// 			Description:         pulumi.String("Example description."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCxTool(ctx, "function_tool", &diagflow.CxToolArgs{
/// 			Parent:      agent.ID().ToIDOutput().ToStringOutput(),
/// 			DisplayName: pulumi.String("Example Function Tool"),
/// 			Description: pulumi.String("Example Description"),
/// 			FunctionSpec: &diagflow.CxToolFunctionSpecArgs{
/// 				InputSchema: pulumi.String(`      {
///         \"type\": \"object\",
///         \"properties\": {
///           \"message_to_echo\": {
///             \"type\": \"string\",
///             \"description\": \"The message that should be echoed back.\"
///           }
///         },
///         \"required\": [
///           \"message_to_echo\"
///         ]
///       }
/// `),
/// 				OutputSchema: pulumi.String(`      {
///         \"type\": \"object\",
///         \"properties\": {
///           \"echoed_message\": {
///             \"type\": \"string\",
///             \"description\": \"The message that is echoed back.\"
///           }
///         }
///       }
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_diagflow_cxagent" "agent" {
///   display_name          = "dialogflowcx-agent-fucntion"
///   location              = "global"
///   default_language_code = "en"
///   time_zone             = "America/New_York"
///   description           = "Example description."
/// }
/// resource "gcp_diagflow_cxtool" "function_tool" {
///   parent       = gcp_diagflow_cxagent.agent.id
///   display_name = "Example Function Tool"
///   description  = "Example Description"
///   function_spec = {
///     input_schema  = "      {\n        \\\"type\\\": \\\"object\\\",\n        \\\"properties\\\": {\n          \\\"message_to_echo\\\": {\n            \\\"type\\\": \\\"string\\\",\n            \\\"description\\\": \\\"The message that should be echoed back.\\\"\n          }\n        },\n        \\\"required\\\": [\n          \\\"message_to_echo\\\"\n        ]\n      }\n"
///     output_schema = "      {\n        \\\"type\\\": \\\"object\\\",\n        \\\"properties\\\": {\n          \\\"echoed_message\\\": {\n            \\\"type\\\": \\\"string\\\",\n            \\\"description\\\": \\\"The message that is echoed back.\\\"\n          }\n        }\n      }\n"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.diagflow.CxTool;
/// import com.pulumi.gcp.diagflow.CxToolArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolFunctionSpecArgs;
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
///         var agent = new CxAgent("agent", CxAgentArgs.builder()
///             .displayName("dialogflowcx-agent-fucntion")
///             .location("global")
///             .defaultLanguageCode("en")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .build());
///
///         var functionTool = new CxTool("functionTool", CxToolArgs.builder()
///             .parent(agent.id())
///             .displayName("Example Function Tool")
///             .description("Example Description")
///             .functionSpec(CxToolFunctionSpecArgs.builder()
///                 .inputSchema("""
///       {
///         \"type\": \"object\",
///         \"properties\": {
///           \"message_to_echo\": {
///             \"type\": \"string\",
///             \"description\": \"The message that should be echoed back.\"
///           }
///         },
///         \"required\": [
///           \"message_to_echo\"
///         ]
///       }
///                 """)
///                 .outputSchema("""
///       {
///         \"type\": \"object\",
///         \"properties\": {
///           \"echoed_message\": {
///             \"type\": \"string\",
///             \"description\": \"The message that is echoed back.\"
///           }
///         }
///       }
///                 """)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   agent:
///     type: gcp:diagflow:CxAgent
///     properties:
///       displayName: dialogflowcx-agent-fucntion
///       location: global
///       defaultLanguageCode: en
///       timeZone: America/New_York
///       description: Example description.
///   functionTool:
///     type: gcp:diagflow:CxTool
///     name: function_tool
///     properties:
///       parent: ${agent.id}
///       displayName: Example Function Tool
///       description: Example Description
///       functionSpec:
///         inputSchema: |2
///                 {
///                   \"type\": \"object\",
///                   \"properties\": {
///                     \"message_to_echo\": {
///                       \"type\": \"string\",
///                       \"description\": \"The message that should be echoed back.\"
///                     }
///                   },
///                   \"required\": [
///                     \"message_to_echo\"
///                   ]
///                 }
///         outputSchema: |2
///                 {
///                   \"type\": \"object\",
///                   \"properties\": {
///                     \"echoed_message\": {
///                       \"type\": \"string\",
///                       \"description\": \"The message that is echoed back.\"
///                     }
///                   }
///                 }
/// ```
///
/// ### Dialogflowcx Tool Connector
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const agent = new gcp.diagflow.CxAgent("agent", {
///     displayName: "dialogflowcx-agent-connector",
///     location: "us-central1",
///     defaultLanguageCode: "en",
///     timeZone: "America/New_York",
///     description: "Example description.",
///     deleteChatEngineOnDestroy: true,
/// });
/// const bqDataset = new gcp.bigquery.Dataset("bq_dataset", {
///     datasetId: "terraformdatasetdfcxtool",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "us-central1",
///     deleteContentsOnDestroy: true,
/// });
/// const testProject = gcp.organizations.getProject({});
/// const integrationConnector = new gcp.integrationconnectors.Connection("integration_connector", {
///     name: "terraform-df-cx-tool-connection",
///     location: "us-central1",
///     connectorVersion: pulumi.interpolate`projects/${agent.project}/locations/global/providers/gcp/connectors/bigquery/versions/1`,
///     description: "tf created description",
///     configVariables: [
///         {
///             key: "dataset_id",
///             stringValue: bqDataset.datasetId,
///         },
///         {
///             key: "project_id",
///             stringValue: agent.project,
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
/// });
/// const bqTable = new gcp.bigquery.Table("bq_table", {
///     deletionProtection: false,
///     datasetId: bqDataset.datasetId,
///     tableId: "terraformdatasetdfcxtooltable",
/// });
/// const connectorSaDatasetPerms = new gcp.bigquery.DatasetIamMember("connector_sa_dataset_perms", {
///     project: testProject.then(testProject => testProject.projectId),
///     datasetId: bqDataset.datasetId,
///     role: "roles/bigquery.dataEditor",
///     member: testProject.then(testProject => `serviceAccount:${testProject.number}-compute@developer.gserviceaccount.com`),
/// });
/// const connectorTool = new gcp.diagflow.CxTool("connector_tool", {
///     parent: agent.id,
///     displayName: "Example Connector Tool",
///     description: "Example Description",
///     connectorSpec: {
///         name: pulumi.interpolate`projects/${agent.project}/locations/us-central1/connections/${integrationConnector.name}`,
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
/// agent = gcp.diagflow.CxAgent("agent",
///     display_name="dialogflowcx-agent-connector",
///     location="us-central1",
///     default_language_code="en",
///     time_zone="America/New_York",
///     description="Example description.",
///     delete_chat_engine_on_destroy=True)
/// bq_dataset = gcp.bigquery.Dataset("bq_dataset",
///     dataset_id="terraformdatasetdfcxtool",
///     friendly_name="test",
///     description="This is a test description",
///     location="us-central1",
///     delete_contents_on_destroy=True)
/// test_project = gcp.organizations.get_project()
/// integration_connector = gcp.integrationconnectors.Connection("integration_connector",
///     name="terraform-df-cx-tool-connection",
///     location="us-central1",
///     connector_version=agent.project.apply(lambda project: f"projects/{project}/locations/global/providers/gcp/connectors/bigquery/versions/1"),
///     description="tf created description",
///     config_variables=[
///         {
///             "key": "dataset_id",
///             "string_value": bq_dataset.dataset_id,
///         },
///         {
///             "key": "project_id",
///             "string_value": agent.project,
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
///     })
/// bq_table = gcp.bigquery.Table("bq_table",
///     deletion_protection=False,
///     dataset_id=bq_dataset.dataset_id,
///     table_id="terraformdatasetdfcxtooltable")
/// connector_sa_dataset_perms = gcp.bigquery.DatasetIamMember("connector_sa_dataset_perms",
///     project=test_project.project_id,
///     dataset_id=bq_dataset.dataset_id,
///     role="roles/bigquery.dataEditor",
///     member=f"serviceAccount:{test_project.number}-compute@developer.gserviceaccount.com")
/// connector_tool = gcp.diagflow.CxTool("connector_tool",
///     parent=agent.id,
///     display_name="Example Connector Tool",
///     description="Example Description",
///     connector_spec={
///         "name": pulumi.Output.all(
///             project=agent.project,
///             name=integration_connector.name
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us-central1/connections/{resolved_outputs['name']}")
/// ,
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
///     var agent = new Gcp.Diagflow.CxAgent("agent", new()
///     {
///         DisplayName = "dialogflowcx-agent-connector",
///         Location = "us-central1",
///         DefaultLanguageCode = "en",
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///         DeleteChatEngineOnDestroy = true,
///     });
///
///     var bqDataset = new Gcp.BigQuery.Dataset("bq_dataset", new()
///     {
///         DatasetId = "terraformdatasetdfcxtool",
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "us-central1",
///         DeleteContentsOnDestroy = true,
///     });
///
///     var testProject = Gcp.Organizations.GetProject.Invoke();
///
///     var integrationConnector = new Gcp.IntegrationConnectors.Connection("integration_connector", new()
///     {
///         Name = "terraform-df-cx-tool-connection",
///         Location = "us-central1",
///         ConnectorVersion = agent.Project.Apply(project => $"projects/{project}/locations/global/providers/gcp/connectors/bigquery/versions/1"),
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
///                 StringValue = agent.Project,
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
///     });
///
///     var bqTable = new Gcp.BigQuery.Table("bq_table", new()
///     {
///         DeletionProtection = false,
///         DatasetId = bqDataset.DatasetId,
///         TableId = "terraformdatasetdfcxtooltable",
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
///     var connectorTool = new Gcp.Diagflow.CxTool("connector_tool", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "Example Connector Tool",
///         Description = "Example Description",
///         ConnectorSpec = new Gcp.Diagflow.Inputs.CxToolConnectorSpecArgs
///         {
///             Name = Output.Tuple(agent.Project, integrationConnector.Name).Apply(values =>
///             {
///                 var project = values.Item1;
///                 var name = values.Item2;
///                 return $"projects/{project}/locations/us-central1/connections/{name}";
///             }),
///             Actions = new[]
///             {
///                 new Gcp.Diagflow.Inputs.CxToolConnectorSpecActionArgs
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
///                 new Gcp.Diagflow.Inputs.CxToolConnectorSpecActionArgs
///                 {
///                     EntityOperation = new Gcp.Diagflow.Inputs.CxToolConnectorSpecActionEntityOperationArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/integrationconnectors"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		agent, err := diagflow.NewCxAgent(ctx, "agent", &diagflow.CxAgentArgs{
/// 			DisplayName:               pulumi.String("dialogflowcx-agent-connector"),
/// 			Location:                  pulumi.String("us-central1"),
/// 			DefaultLanguageCode:       pulumi.String("en"),
/// 			TimeZone:                  pulumi.String("America/New_York"),
/// 			Description:               pulumi.String("Example description."),
/// 			DeleteChatEngineOnDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bqDataset, err := bigquery.NewDataset(ctx, "bq_dataset", &bigquery.DatasetArgs{
/// 			DatasetId:               pulumi.String("terraformdatasetdfcxtool"),
/// 			FriendlyName:            pulumi.String("test"),
/// 			Description:             pulumi.String("This is a test description"),
/// 			Location:                pulumi.String("us-central1"),
/// 			DeleteContentsOnDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testProject, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		integrationConnector, err := integrationconnectors.NewConnection(ctx, "integration_connector", &integrationconnectors.ConnectionArgs{
/// 			Name:     pulumi.String("terraform-df-cx-tool-connection"),
/// 			Location: pulumi.String("us-central1"),
/// 			ConnectorVersion: agent.Project.ApplyT(func(project string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/locations/global/providers/gcp/connectors/bigquery/versions/1", project), nil
/// 			}).(pulumi.StringOutput),
/// 			Description: pulumi.String("tf created description"),
/// 			ConfigVariables: integrationconnectors.ConnectionConfigVariableArray{
/// 				&integrationconnectors.ConnectionConfigVariableArgs{
/// 					Key:         pulumi.String("dataset_id"),
/// 					StringValue: bqDataset.DatasetId,
/// 				},
/// 				&integrationconnectors.ConnectionConfigVariableArgs{
/// 					Key:         pulumi.String("project_id"),
/// 					StringValue: agent.Project,
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bqTable, err := bigquery.NewTable(ctx, "bq_table", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			DatasetId:          bqDataset.DatasetId,
/// 			TableId:            pulumi.String("terraformdatasetdfcxtooltable"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDatasetIamMember(ctx, "connector_sa_dataset_perms", &bigquery.DatasetIamMemberArgs{
/// 			Project:   pulumi.String(testProject.ProjectId),
/// 			DatasetId: bqDataset.DatasetId,
/// 			Role:      pulumi.String("roles/bigquery.dataEditor"),
/// 			Member:    pulumi.Sprintf("serviceAccount:%v-compute@developer.gserviceaccount.com", testProject.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCxTool(ctx, "connector_tool", &diagflow.CxToolArgs{
/// 			Parent:      agent.ID().ToIDOutput().ToStringOutput(),
/// 			DisplayName: pulumi.String("Example Connector Tool"),
/// 			Description: pulumi.String("Example Description"),
/// 			ConnectorSpec: &diagflow.CxToolConnectorSpecArgs{
/// 				Name: pulumi.All(agent.Project, integrationConnector.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 					project := _args[0].(string)
/// 					name := _args[1].(string)
/// 					return fmt.Sprintf("projects/%v/locations/us-central1/connections/%v", project, name), nil
/// 				}).(pulumi.StringOutput),
/// 				Actions: diagflow.CxToolConnectorSpecActionArray{
/// 					&diagflow.CxToolConnectorSpecActionArgs{
/// 						ConnectionActionId: pulumi.String("ExecuteCustomQuery"),
/// 						InputFields: pulumi.StringArray{
/// 							pulumi.String("test1"),
/// 						},
/// 						OutputFields: pulumi.StringArray{
/// 							pulumi.String("test1"),
/// 						},
/// 					},
/// 					&diagflow.CxToolConnectorSpecActionArgs{
/// 						EntityOperation: &diagflow.CxToolConnectorSpecActionEntityOperationArgs{
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "testProject" {
/// }
///
/// resource "gcp_diagflow_cxagent" "agent" {
///   display_name                  = "dialogflowcx-agent-connector"
///   location                      = "us-central1"
///   default_language_code         = "en"
///   time_zone                     = "America/New_York"
///   description                   = "Example description."
///   delete_chat_engine_on_destroy = true
/// }
/// resource "gcp_integrationconnectors_connection" "integration_connector" {
///   name              = "terraform-df-cx-tool-connection"
///   location          = "us-central1"
///   connector_version ="projects/${gcp_diagflow_cxagent.agent.project}/locations/global/providers/gcp/connectors/bigquery/versions/1"
///   description       = "tf created description"
///   config_variables {
///     key          = "dataset_id"
///     string_value = gcp_bigquery_dataset.bq_dataset.dataset_id
///   }
///   config_variables {
///     key          = "project_id"
///     string_value = gcp_diagflow_cxagent.agent.project
///   }
///   config_variables {
///     key           = "support_native_data_type"
///     boolean_value = false
///   }
///   config_variables {
///     key           = "proxy_enabled"
///     boolean_value = false
///   }
///   service_account ="${data.gcp_organizations_getproject.testProject.number}-compute@developer.gserviceaccount.com"
///   auth_config = {
///     auth_type = "AUTH_TYPE_UNSPECIFIED"
///   }
/// }
/// resource "gcp_bigquery_dataset" "bq_dataset" {
///   dataset_id                 = "terraformdatasetdfcxtool"
///   friendly_name              = "test"
///   description                = "This is a test description"
///   location                   = "us-central1"
///   delete_contents_on_destroy = true
/// }
/// resource "gcp_bigquery_table" "bq_table" {
///   deletion_protection = false
///   dataset_id          = gcp_bigquery_dataset.bq_dataset.dataset_id
///   table_id            = "terraformdatasetdfcxtooltable"
/// }
/// resource "gcp_bigquery_datasetiammember" "connector_sa_dataset_perms" {
///   project    = data.gcp_organizations_getproject.testProject.project_id
///   dataset_id = gcp_bigquery_dataset.bq_dataset.dataset_id
///   role       = "roles/bigquery.dataEditor"
///   member     ="serviceAccount:${data.gcp_organizations_getproject.testProject.number}-compute@developer.gserviceaccount.com"
/// }
/// resource "gcp_diagflow_cxtool" "connector_tool" {
///   parent       = gcp_diagflow_cxagent.agent.id
///   display_name = "Example Connector Tool"
///   description  = "Example Description"
///   connector_spec = {
///     name ="projects/${gcp_diagflow_cxagent.agent.project}/locations/us-central1/connections/${gcp_integrationconnectors_connection.integration_connector.name}"
///     actions = [{
///       "connectionActionId" = "ExecuteCustomQuery"
///       "inputFields"        = ["test1"]
///       "outputFields"       = ["test1"]
///       }, {
///       "entityOperation" = {
///         "entityId"  = gcp_bigquery_table.bq_table.table_id
///         "operation" = "LIST"
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
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.integrationconnectors.Connection;
/// import com.pulumi.gcp.integrationconnectors.ConnectionArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionConfigVariableArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionAuthConfigArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.bigquery.DatasetIamMember;
/// import com.pulumi.gcp.bigquery.DatasetIamMemberArgs;
/// import com.pulumi.gcp.diagflow.CxTool;
/// import com.pulumi.gcp.diagflow.CxToolArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolConnectorSpecArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolConnectorSpecActionArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxToolConnectorSpecActionEntityOperationArgs;
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
///         var agent = new CxAgent("agent", CxAgentArgs.builder()
///             .displayName("dialogflowcx-agent-connector")
///             .location("us-central1")
///             .defaultLanguageCode("en")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .deleteChatEngineOnDestroy(true)
///             .build());
///
///         var bqDataset = new Dataset("bqDataset", DatasetArgs.builder()
///             .datasetId("terraformdatasetdfcxtool")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("us-central1")
///             .deleteContentsOnDestroy(true)
///             .build());
///
///         final var testProject = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var integrationConnector = new Connection("integrationConnector", ConnectionArgs.builder()
///             .name("terraform-df-cx-tool-connection")
///             .location("us-central1")
///             .connectorVersion(agent.project().applyValue(_project -> String.format("projects/%s/locations/global/providers/gcp/connectors/bigquery/versions/1", _project)))
///             .description("tf created description")
///             .configVariables(
///                 ConnectionConfigVariableArgs.builder()
///                     .key("dataset_id")
///                     .stringValue(bqDataset.datasetId())
///                     .build(),
///                 ConnectionConfigVariableArgs.builder()
///                     .key("project_id")
///                     .stringValue(agent.project())
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
///             .build());
///
///         var bqTable = new Table("bqTable", TableArgs.builder()
///             .deletionProtection(false)
///             .datasetId(bqDataset.datasetId())
///             .tableId("terraformdatasetdfcxtooltable")
///             .build());
///
///         var connectorSaDatasetPerms = new DatasetIamMember("connectorSaDatasetPerms", DatasetIamMemberArgs.builder()
///             .project(testProject.projectId())
///             .datasetId(bqDataset.datasetId())
///             .role("roles/bigquery.dataEditor")
///             .member(String.format("serviceAccount:%s-compute@developer.gserviceaccount.com", testProject.number()))
///             .build());
///
///         var connectorTool = new CxTool("connectorTool", CxToolArgs.builder()
///             .parent(agent.id())
///             .displayName("Example Connector Tool")
///             .description("Example Description")
///             .connectorSpec(CxToolConnectorSpecArgs.builder()
///                 .name(Output.tuple(agent.project(), integrationConnector.name()).applyValue(values -> {
///                     var project = values.t1;
///                     var name = values.t2;
///                     return String.format("projects/%s/locations/us-central1/connections/%s", project,name);
///                 }))
///                 .actions(
///                     CxToolConnectorSpecActionArgs.builder()
///                         .connectionActionId("ExecuteCustomQuery")
///                         .inputFields("test1")
///                         .outputFields("test1")
///                         .build(),
///                     CxToolConnectorSpecActionArgs.builder()
///                         .entityOperation(CxToolConnectorSpecActionEntityOperationArgs.builder()
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
///   agent:
///     type: gcp:diagflow:CxAgent
///     properties:
///       displayName: dialogflowcx-agent-connector
///       location: us-central1
///       defaultLanguageCode: en
///       timeZone: America/New_York
///       description: Example description.
///       deleteChatEngineOnDestroy: true
///   integrationConnector:
///     type: gcp:integrationconnectors:Connection
///     name: integration_connector
///     properties:
///       name: terraform-df-cx-tool-connection
///       location: us-central1
///       connectorVersion: projects/${agent.project}/locations/global/providers/gcp/connectors/bigquery/versions/1
///       description: tf created description
///       configVariables:
///         - key: dataset_id
///           stringValue: ${bqDataset.datasetId}
///         - key: project_id
///           stringValue: ${agent.project}
///         - key: support_native_data_type
///           booleanValue: false
///         - key: proxy_enabled
///           booleanValue: false
///       serviceAccount: ${testProject.number}-compute@developer.gserviceaccount.com
///       authConfig:
///         authType: AUTH_TYPE_UNSPECIFIED
///   bqDataset:
///     type: gcp:bigquery:Dataset
///     name: bq_dataset
///     properties:
///       datasetId: terraformdatasetdfcxtool
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
///       tableId: terraformdatasetdfcxtooltable
///   connectorSaDatasetPerms:
///     type: gcp:bigquery:DatasetIamMember
///     name: connector_sa_dataset_perms
///     properties:
///       project: ${testProject.projectId}
///       datasetId: ${bqDataset.datasetId}
///       role: roles/bigquery.dataEditor
///       member: serviceAccount:${testProject.number}-compute@developer.gserviceaccount.com
///   connectorTool:
///     type: gcp:diagflow:CxTool
///     name: connector_tool
///     properties:
///       parent: ${agent.id}
///       displayName: Example Connector Tool
///       description: Example Description
///       connectorSpec:
///         name: projects/${agent.project}/locations/us-central1/connections/${integrationConnector.name}
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
///
/// ## Import
///
/// Tool can be imported using any of these accepted formats:
///
/// * `{{parent}}/tools/{{name}}`
/// * `{{parent}}/{{name}}`
///
///
/// When using the `pulumi import` command, Tool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxTool:CxTool default {{parent}}/tools/{{name}}
/// $ pulumi import gcp:diagflow/cxTool:CxTool default {{parent}}/{{name}}
/// ```
class CxTool extends pulumi.CustomResource {
  /// (Optional, Beta)
  /// Integration connectors tool specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, `functionSpec`, or `connectorSpec` may be set.
  /// Structure is documented below.
  late final pulumi.Output<CxToolConnectorSpec?> connectorSpec;
  /// Data store search tool specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  late final pulumi.Output<CxToolDataStoreSpec?> dataStoreSpec;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// High level description of the Tool and its usage.
  late final pulumi.Output<String> description;
  /// The human-readable name of the tool, unique within the agent.
  late final pulumi.Output<String> displayName;
  /// Client side executed function specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  late final pulumi.Output<CxToolFunctionSpec?> functionSpec;
  /// The unique identifier of the Tool.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/tools/&lt;Tool ID&gt;.
  late final pulumi.Output<String> name;
  /// OpenAPI specification of the Tool.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  late final pulumi.Output<CxToolOpenApiSpec?> openApiSpec;
  /// The agent to create a Tool for.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;.
  late final pulumi.Output<String?> parent;
  /// The tool type.
  late final pulumi.Output<String> toolType;

  /// Creates a new [CxTool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CxTool]. {@macro pulumi_diagflow_cx_tool_cx_tool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CxTool(
    String name, {
    CxToolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxTool:CxTool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    connectorSpec = registerOutput<CxToolConnectorSpec?>('connectorSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxToolConnectorSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataStoreSpec = registerOutput<CxToolDataStoreSpec?>('dataStoreSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxToolDataStoreSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    functionSpec = registerOutput<CxToolFunctionSpec?>('functionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxToolFunctionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    openApiSpec = registerOutput<CxToolOpenApiSpec?>('openApiSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxToolOpenApiSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    parent = registerOutput<String?>('parent');
    toolType = registerOutput<String>('toolType');
  }

  /// Gets an existing [CxTool] resource's state with the given [name] and [id].
  static CxTool get(
    String name,
    pulumi.Input<String> id, {
    CxToolState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CxTool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CxTool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxTool:CxTool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectorSpec = registerOutput<CxToolConnectorSpec?>('connectorSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxToolConnectorSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataStoreSpec = registerOutput<CxToolDataStoreSpec?>('dataStoreSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxToolDataStoreSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    functionSpec = registerOutput<CxToolFunctionSpec?>('functionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxToolFunctionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    openApiSpec = registerOutput<CxToolOpenApiSpec?>('openApiSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxToolOpenApiSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    parent = registerOutput<String?>('parent');
    toolType = registerOutput<String>('toolType');
  }

  /// Creates a typed reference to an existing [CxTool] resource.
  CxTool.reference(String urn)
    : super(
        'gcp:diagflow/cxTool:CxTool',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    connectorSpec = registerOutput<CxToolConnectorSpec?>('connectorSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxToolConnectorSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataStoreSpec = registerOutput<CxToolDataStoreSpec?>('dataStoreSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxToolDataStoreSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    functionSpec = registerOutput<CxToolFunctionSpec?>('functionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxToolFunctionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    openApiSpec = registerOutput<CxToolOpenApiSpec?>('openApiSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxToolOpenApiSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    parent = registerOutput<String?>('parent');
    toolType = registerOutput<String>('toolType');
  }
}
