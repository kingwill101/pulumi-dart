import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_args.dart';
import 'ai_reasoning_engine_context_spec.dart';
import 'ai_reasoning_engine_encryption_spec.dart';
import 'ai_reasoning_engine_spec.dart';
import 'ai_reasoning_engine_state.dart';
import 'ai_reasoning_engine_traffic_config.dart';

/// ReasoningEngine provides a customizable runtime for models to determine which actions to take and in which order.
///
///
/// To get more information about ReasoningEngine, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.reasoningEngines/)
/// * How-to Guides
/// * [Develop and deploy agents on Vertex AI Agent Engine](https://cloud.google.com/vertex-ai/generative-ai/docs/agent-engine/quickstart)
///
/// ## Example Usage
///
/// ### Vertex Ai Reasoning Engine Source Based Deployment
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const reasoningEngine = new gcp.vertex.AiReasoningEngine("reasoning_engine", {
///     displayName: "reasoning-engine",
///     description: "A basic reasoning engine",
///     region: "us-central1",
///     spec: {
///         sourceCodeSpec: {
///             inlineSource: {
///                 sourceArchive: std.filebase64({
///                     input: "./test-fixtures/source.tar.gz",
///                 }).then(invoke => invoke.result),
///             },
///             pythonSpec: {
///                 entrypointModule: "simple_agent",
///                 entrypointObject: "fixed_name_generator",
///                 version: "3.14",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// reasoning_engine = gcp.vertex.AiReasoningEngine("reasoning_engine",
///     display_name="reasoning-engine",
///     description="A basic reasoning engine",
///     region="us-central1",
///     spec={
///         "source_code_spec": {
///             "inline_source": {
///                 "source_archive": std.filebase64(input="./test-fixtures/source.tar.gz").result,
///             },
///             "python_spec": {
///                 "entrypoint_module": "simple_agent",
///                 "entrypoint_object": "fixed_name_generator",
///                 "version": "3.14",
///             },
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
///     var reasoningEngine = new Gcp.Vertex.AiReasoningEngine("reasoning_engine", new()
///     {
///         DisplayName = "reasoning-engine",
///         Description = "A basic reasoning engine",
///         Region = "us-central1",
///         Spec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecArgs
///         {
///             SourceCodeSpec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecSourceCodeSpecArgs
///             {
///                 InlineSource = new Gcp.Vertex.Inputs.AiReasoningEngineSpecSourceCodeSpecInlineSourceArgs
///                 {
///                     SourceArchive = Std.Filebase64.Invoke(new()
///                     {
///                         Input = "./test-fixtures/source.tar.gz",
///                     }).Apply(invoke => invoke.Result),
///                 },
///                 PythonSpec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecSourceCodeSpecPythonSpecArgs
///                 {
///                     EntrypointModule = "simple_agent",
///                     EntrypointObject = "fixed_name_generator",
///                     Version = "3.14",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "./test-fixtures/source.tar.gz",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiReasoningEngine(ctx, "reasoning_engine", &vertex.AiReasoningEngineArgs{
/// 			DisplayName: pulumi.String("reasoning-engine"),
/// 			Description: pulumi.String("A basic reasoning engine"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Spec: &vertex.AiReasoningEngineSpecArgs{
/// 				SourceCodeSpec: &vertex.AiReasoningEngineSpecSourceCodeSpecArgs{
/// 					InlineSource: &vertex.AiReasoningEngineSpecSourceCodeSpecInlineSourceArgs{
/// 						SourceArchive: pulumi.String(invokeFilebase64.Result),
/// 					},
/// 					PythonSpec: &vertex.AiReasoningEngineSpecSourceCodeSpecPythonSpecArgs{
/// 						EntrypointModule: pulumi.String("simple_agent"),
/// 						EntrypointObject: pulumi.String("fixed_name_generator"),
/// 						Version:          pulumi.String("3.14"),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_vertex_aireasoningengine" "reasoning_engine" {
///   display_name = "reasoning-engine"
///   description  = "A basic reasoning engine"
///   region       = "us-central1"
///   spec = {
///     source_code_spec = {
///       inline_source = {
///         source_archive = filebase64("./test-fixtures/source.tar.gz")
///       }
///       python_spec = {
///         entrypoint_module = "simple_agent"
///         entrypoint_object = "fixed_name_generator"
///         version           = "3.14"
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
/// import com.pulumi.gcp.vertex.AiReasoningEngine;
/// import com.pulumi.gcp.vertex.AiReasoningEngineArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecSourceCodeSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecSourceCodeSpecInlineSourceArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecSourceCodeSpecPythonSpecArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
///         var reasoningEngine = new AiReasoningEngine("reasoningEngine", AiReasoningEngineArgs.builder()
///             .displayName("reasoning-engine")
///             .description("A basic reasoning engine")
///             .region("us-central1")
///             .spec(AiReasoningEngineSpecArgs.builder()
///                 .sourceCodeSpec(AiReasoningEngineSpecSourceCodeSpecArgs.builder()
///                     .inlineSource(AiReasoningEngineSpecSourceCodeSpecInlineSourceArgs.builder()
///                         .sourceArchive(StdFunctions.filebase64(Filebase64Args.builder()
///                             .input("./test-fixtures/source.tar.gz")
///                             .build()).result())
///                         .build())
///                     .pythonSpec(AiReasoningEngineSpecSourceCodeSpecPythonSpecArgs.builder()
///                         .entrypointModule("simple_agent")
///                         .entrypointObject("fixed_name_generator")
///                         .version("3.14")
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
///   reasoningEngine:
///     type: gcp:vertex:AiReasoningEngine
///     name: reasoning_engine
///     properties:
///       displayName: reasoning-engine
///       description: A basic reasoning engine
///       region: us-central1
///       spec:
///         sourceCodeSpec:
///           inlineSource:
///             sourceArchive:
///               fn::invoke:
///                 function: std:filebase64
///                 arguments:
///                   input: ./test-fixtures/source.tar.gz
///                 return: result
///           pythonSpec:
///             entrypointModule: simple_agent
///             entrypointObject: fixed_name_generator
///             version: '3.14'
/// ```
///
/// ### Vertex Ai Reasoning Engine Developer Connect Source
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const reasoningEngine = new gcp.vertex.AiReasoningEngine("reasoning_engine", {
///     displayName: "reasoning-engine",
///     description: "A basic reasoning engine",
///     region: "us-central1",
///     spec: {
///         sourceCodeSpec: {
///             developerConnectSource: {
///                 config: {
///                     gitRepositoryLink: project.then(project => `projects/${project.projectId}/locations/us-central1/connections/tpg-test-bot-github/gitRepositoryLinks/tpg-test-vertex-reasoning`),
///                     dir: "source",
///                     revision: "main",
///                 },
///             },
///             pythonSpec: {
///                 version: "3.14",
///                 entrypointModule: "simple_agent",
///                 entrypointObject: "fixed_name_generator",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// reasoning_engine = gcp.vertex.AiReasoningEngine("reasoning_engine",
///     display_name="reasoning-engine",
///     description="A basic reasoning engine",
///     region="us-central1",
///     spec={
///         "source_code_spec": {
///             "developer_connect_source": {
///                 "config": {
///                     "git_repository_link": f"projects/{project.project_id}/locations/us-central1/connections/tpg-test-bot-github/gitRepositoryLinks/tpg-test-vertex-reasoning",
///                     "dir": "source",
///                     "revision": "main",
///                 },
///             },
///             "python_spec": {
///                 "version": "3.14",
///                 "entrypoint_module": "simple_agent",
///                 "entrypoint_object": "fixed_name_generator",
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var reasoningEngine = new Gcp.Vertex.AiReasoningEngine("reasoning_engine", new()
///     {
///         DisplayName = "reasoning-engine",
///         Description = "A basic reasoning engine",
///         Region = "us-central1",
///         Spec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecArgs
///         {
///             SourceCodeSpec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecSourceCodeSpecArgs
///             {
///                 DeveloperConnectSource = new Gcp.Vertex.Inputs.AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceArgs
///                 {
///                     Config = new Gcp.Vertex.Inputs.AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceConfigArgs
///                     {
///                         GitRepositoryLink = $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/locations/us-central1/connections/tpg-test-bot-github/gitRepositoryLinks/tpg-test-vertex-reasoning",
///                         Dir = "source",
///                         Revision = "main",
///                     },
///                 },
///                 PythonSpec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecSourceCodeSpecPythonSpecArgs
///                 {
///                     Version = "3.14",
///                     EntrypointModule = "simple_agent",
///                     EntrypointObject = "fixed_name_generator",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiReasoningEngine(ctx, "reasoning_engine", &vertex.AiReasoningEngineArgs{
/// 			DisplayName: pulumi.String("reasoning-engine"),
/// 			Description: pulumi.String("A basic reasoning engine"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Spec: &vertex.AiReasoningEngineSpecArgs{
/// 				SourceCodeSpec: &vertex.AiReasoningEngineSpecSourceCodeSpecArgs{
/// 					DeveloperConnectSource: &vertex.AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceArgs{
/// 						Config: &vertex.AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceConfigArgs{
/// 							GitRepositoryLink: pulumi.Sprintf("projects/%v/locations/us-central1/connections/tpg-test-bot-github/gitRepositoryLinks/tpg-test-vertex-reasoning", project.ProjectId),
/// 							Dir:               pulumi.String("source"),
/// 							Revision:          pulumi.String("main"),
/// 						},
/// 					},
/// 					PythonSpec: &vertex.AiReasoningEngineSpecSourceCodeSpecPythonSpecArgs{
/// 						Version:          pulumi.String("3.14"),
/// 						EntrypointModule: pulumi.String("simple_agent"),
/// 						EntrypointObject: pulumi.String("fixed_name_generator"),
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
/// resource "gcp_vertex_aireasoningengine" "reasoning_engine" {
///   display_name = "reasoning-engine"
///   description  = "A basic reasoning engine"
///   region       = "us-central1"
///   spec = {
///     source_code_spec = {
///       developer_connect_source = {
///         config = {
///           git_repository_link ="projects/${data.gcp_organizations_getproject.project.project_id}/locations/us-central1/connections/tpg-test-bot-github/gitRepositoryLinks/tpg-test-vertex-reasoning"
///           dir                 = "source"
///           revision            = "main"
///         }
///       }
///       python_spec = {
///         version           = "3.14"
///         entrypoint_module = "simple_agent"
///         entrypoint_object = "fixed_name_generator"
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
/// import com.pulumi.gcp.vertex.AiReasoningEngine;
/// import com.pulumi.gcp.vertex.AiReasoningEngineArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecSourceCodeSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecSourceCodeSpecPythonSpecArgs;
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
///         var reasoningEngine = new AiReasoningEngine("reasoningEngine", AiReasoningEngineArgs.builder()
///             .displayName("reasoning-engine")
///             .description("A basic reasoning engine")
///             .region("us-central1")
///             .spec(AiReasoningEngineSpecArgs.builder()
///                 .sourceCodeSpec(AiReasoningEngineSpecSourceCodeSpecArgs.builder()
///                     .developerConnectSource(AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceArgs.builder()
///                         .config(AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceConfigArgs.builder()
///                             .gitRepositoryLink(String.format("projects/%s/locations/us-central1/connections/tpg-test-bot-github/gitRepositoryLinks/tpg-test-vertex-reasoning", project.projectId()))
///                             .dir("source")
///                             .revision("main")
///                             .build())
///                         .build())
///                     .pythonSpec(AiReasoningEngineSpecSourceCodeSpecPythonSpecArgs.builder()
///                         .version("3.14")
///                         .entrypointModule("simple_agent")
///                         .entrypointObject("fixed_name_generator")
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
///   reasoningEngine:
///     type: gcp:vertex:AiReasoningEngine
///     name: reasoning_engine
///     properties:
///       displayName: reasoning-engine
///       description: A basic reasoning engine
///       region: us-central1
///       spec:
///         sourceCodeSpec:
///           developerConnectSource:
///             config:
///               gitRepositoryLink: projects/${project.projectId}/locations/us-central1/connections/tpg-test-bot-github/gitRepositoryLinks/tpg-test-vertex-reasoning
///               dir: source
///               revision: main
///           pythonSpec:
///             version: '3.14'
///             entrypointModule: simple_agent
///             entrypointObject: fixed_name_generator
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Vertex Ai Reasoning Engine Image Spec
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const reasoningEngine = new gcp.vertex.AiReasoningEngine("reasoning_engine", {
///     displayName: "reasoning-engine",
///     description: "Deployed with BYOC Dockerfile through Terraform",
///     region: "us-central1",
///     spec: {
///         sourceCodeSpec: {
///             inlineSource: {
///                 sourceArchive: std.filebase64({
///                     input: "./test-fixtures/agent_src.tar.gz",
///                 }).then(invoke => invoke.result),
///             },
///             imageSpec: {
///                 buildArgs: {},
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// reasoning_engine = gcp.vertex.AiReasoningEngine("reasoning_engine",
///     display_name="reasoning-engine",
///     description="Deployed with BYOC Dockerfile through Terraform",
///     region="us-central1",
///     spec={
///         "source_code_spec": {
///             "inline_source": {
///                 "source_archive": std.filebase64(input="./test-fixtures/agent_src.tar.gz").result,
///             },
///             "image_spec": {
///                 "build_args": {},
///             },
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
///     var reasoningEngine = new Gcp.Vertex.AiReasoningEngine("reasoning_engine", new()
///     {
///         DisplayName = "reasoning-engine",
///         Description = "Deployed with BYOC Dockerfile through Terraform",
///         Region = "us-central1",
///         Spec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecArgs
///         {
///             SourceCodeSpec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecSourceCodeSpecArgs
///             {
///                 InlineSource = new Gcp.Vertex.Inputs.AiReasoningEngineSpecSourceCodeSpecInlineSourceArgs
///                 {
///                     SourceArchive = Std.Filebase64.Invoke(new()
///                     {
///                         Input = "./test-fixtures/agent_src.tar.gz",
///                     }).Apply(invoke => invoke.Result),
///                 },
///                 ImageSpec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecSourceCodeSpecImageSpecArgs
///                 {
///                     BuildArgs = null,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "./test-fixtures/agent_src.tar.gz",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiReasoningEngine(ctx, "reasoning_engine", &vertex.AiReasoningEngineArgs{
/// 			DisplayName: pulumi.String("reasoning-engine"),
/// 			Description: pulumi.String("Deployed with BYOC Dockerfile through Terraform"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Spec: &vertex.AiReasoningEngineSpecArgs{
/// 				SourceCodeSpec: &vertex.AiReasoningEngineSpecSourceCodeSpecArgs{
/// 					InlineSource: &vertex.AiReasoningEngineSpecSourceCodeSpecInlineSourceArgs{
/// 						SourceArchive: pulumi.String(invokeFilebase64.Result),
/// 					},
/// 					ImageSpec: &vertex.AiReasoningEngineSpecSourceCodeSpecImageSpecArgs{
/// 						BuildArgs: pulumi.StringMap{},
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_vertex_aireasoningengine" "reasoning_engine" {
///   display_name = "reasoning-engine"
///   description  = "Deployed with BYOC Dockerfile through Terraform"
///   region       = "us-central1"
///   spec = {
///     source_code_spec = {
///       inline_source = {
///         source_archive = filebase64("./test-fixtures/agent_src.tar.gz")
///       }
///       image_spec = {
///         build_args = {}
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
/// import com.pulumi.gcp.vertex.AiReasoningEngine;
/// import com.pulumi.gcp.vertex.AiReasoningEngineArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecSourceCodeSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecSourceCodeSpecInlineSourceArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecSourceCodeSpecImageSpecArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
///         var reasoningEngine = new AiReasoningEngine("reasoningEngine", AiReasoningEngineArgs.builder()
///             .displayName("reasoning-engine")
///             .description("Deployed with BYOC Dockerfile through Terraform")
///             .region("us-central1")
///             .spec(AiReasoningEngineSpecArgs.builder()
///                 .sourceCodeSpec(AiReasoningEngineSpecSourceCodeSpecArgs.builder()
///                     .inlineSource(AiReasoningEngineSpecSourceCodeSpecInlineSourceArgs.builder()
///                         .sourceArchive(StdFunctions.filebase64(Filebase64Args.builder()
///                             .input("./test-fixtures/agent_src.tar.gz")
///                             .build()).result())
///                         .build())
///                     .imageSpec(AiReasoningEngineSpecSourceCodeSpecImageSpecArgs.builder()
///                         .buildArgs(Map.ofEntries(
///                         ))
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
///   reasoningEngine:
///     type: gcp:vertex:AiReasoningEngine
///     name: reasoning_engine
///     properties:
///       displayName: reasoning-engine
///       description: Deployed with BYOC Dockerfile through Terraform
///       region: us-central1
///       spec:
///         sourceCodeSpec:
///           inlineSource:
///             sourceArchive:
///               fn::invoke:
///                 function: std:filebase64
///                 arguments:
///                   input: ./test-fixtures/agent_src.tar.gz
///                 return: result
///           imageSpec:
///             buildArgs: {}
/// ```
///
/// ### Vertex Ai Reasoning Engine Byoc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const project = gcp.organizations.getProject({});
/// const vertexArReader = new gcp.projects.IAMMember("vertex_ar_reader", {
///     project: project.then(project => project.projectId),
///     role: "roles/artifactregistry.reader",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-aiplatform-re.iam.gserviceaccount.com`),
/// });
/// // Provision and retrieve the tenant service agent through another agent
/// const tenantMdsAiReasoningEngine = new gcp.vertex.AiReasoningEngine("tenant_mds", {
///     displayName: "reasoning-engine-mds",
///     region: "us-central1",
///     spec: {
///         sourceCodeSpec: {
///             inlineSource: {
///                 sourceArchive: std.filebase64({
///                     input: "./test-fixtures/mds_agent_src.tar.gz",
///                 }).then(invoke => invoke.result),
///             },
///             pythonSpec: {
///                 entrypointModule: "metadata_agent",
///                 entrypointObject: "root_agent",
///             },
///         },
///     },
/// });
/// const tenantMds = gcp.vertex.getAiReasoningEngineQueryOutput({
///     region: "us-central1",
///     reasoningEngineId: tenantMdsAiReasoningEngine.name,
/// });
/// const tenantArReader = new gcp.projects.IAMMember("tenant_ar_reader", {
///     project: project.then(project => project.projectId),
///     role: "roles/artifactregistry.reader",
///     member: std.jsondecodeOutput({
///         input: tenantMds.output,
///     }).apply(invoke => `serviceAccount:${invoke.result?.output}`),
/// });
/// const reasoningEngine = new gcp.vertex.AiReasoningEngine("reasoning_engine", {
///     displayName: "reasoning-engine",
///     description: "Deployed with BYOC through Terraform",
///     region: "us-central1",
///     spec: {
///         containerSpec: {
///             imageUri: project.then(project => `us-central1-docker.pkg.dev/${project.projectId}/vertex-byoc/byoc-agent:latest`),
///             port: 8080,
///         },
///     },
/// }, {
///     dependsOn: [
///         vertexArReader,
///         tenantArReader,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// project = gcp.organizations.get_project()
/// vertex_ar_reader = gcp.projects.IAMMember("vertex_ar_reader",
///     project=project.project_id,
///     role="roles/artifactregistry.reader",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-aiplatform-re.iam.gserviceaccount.com")
/// # Provision and retrieve the tenant service agent through another agent
/// tenant_mds_ai_reasoning_engine = gcp.vertex.AiReasoningEngine("tenant_mds",
///     display_name="reasoning-engine-mds",
///     region="us-central1",
///     spec={
///         "source_code_spec": {
///             "inline_source": {
///                 "source_archive": std.filebase64(input="./test-fixtures/mds_agent_src.tar.gz").result,
///             },
///             "python_spec": {
///                 "entrypoint_module": "metadata_agent",
///                 "entrypoint_object": "root_agent",
///             },
///         },
///     })
/// tenant_mds = gcp.vertex.get_ai_reasoning_engine_query_output(region="us-central1",
///     reasoning_engine_id=tenant_mds_ai_reasoning_engine.name)
/// tenant_ar_reader = gcp.projects.IAMMember("tenant_ar_reader",
///     project=project.project_id,
///     role="roles/artifactregistry.reader",
///     member=std.jsondecode_output(input=tenant_mds.output).apply(lambda invoke: f"serviceAccount:{invoke.result['output']}"))
/// reasoning_engine = gcp.vertex.AiReasoningEngine("reasoning_engine",
///     display_name="reasoning-engine",
///     description="Deployed with BYOC through Terraform",
///     region="us-central1",
///     spec={
///         "container_spec": {
///             "image_uri": f"us-central1-docker.pkg.dev/{project.project_id}/vertex-byoc/byoc-agent:latest",
///             "port": 8080,
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             vertex_ar_reader,
///             tenant_ar_reader,
///         ]))
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var vertexArReader = new Gcp.Projects.IAMMember("vertex_ar_reader", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Role = "roles/artifactregistry.reader",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-aiplatform-re.iam.gserviceaccount.com",
///     });
///
///     // Provision and retrieve the tenant service agent through another agent
///     var tenantMdsAiReasoningEngine = new Gcp.Vertex.AiReasoningEngine("tenant_mds", new()
///     {
///         DisplayName = "reasoning-engine-mds",
///         Region = "us-central1",
///         Spec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecArgs
///         {
///             SourceCodeSpec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecSourceCodeSpecArgs
///             {
///                 InlineSource = new Gcp.Vertex.Inputs.AiReasoningEngineSpecSourceCodeSpecInlineSourceArgs
///                 {
///                     SourceArchive = Std.Filebase64.Invoke(new()
///                     {
///                         Input = "./test-fixtures/mds_agent_src.tar.gz",
///                     }).Apply(invoke => invoke.Result),
///                 },
///                 PythonSpec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecSourceCodeSpecPythonSpecArgs
///                 {
///                     EntrypointModule = "metadata_agent",
///                     EntrypointObject = "root_agent",
///                 },
///             },
///         },
///     });
///
///     var tenantMds = Gcp.Vertex.GetAiReasoningEngineQuery.Invoke(new()
///     {
///         Region = "us-central1",
///         ReasoningEngineId = tenantMdsAiReasoningEngine.Name,
///     });
///
///     var tenantArReader = new Gcp.Projects.IAMMember("tenant_ar_reader", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Role = "roles/artifactregistry.reader",
///         Member = Std.Jsondecode.Invoke(new()
///         {
///             Input = tenantMds.Apply(getAiReasoningEngineQueryResult => getAiReasoningEngineQueryResult.Output),
///         }).Apply(invoke => $"serviceAccount:{invoke.Result?.Output}"),
///     });
///
///     var reasoningEngine = new Gcp.Vertex.AiReasoningEngine("reasoning_engine", new()
///     {
///         DisplayName = "reasoning-engine",
///         Description = "Deployed with BYOC through Terraform",
///         Region = "us-central1",
///         Spec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecArgs
///         {
///             ContainerSpec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecContainerSpecArgs
///             {
///                 ImageUri = $"us-central1-docker.pkg.dev/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/vertex-byoc/byoc-agent:latest",
///                 Port = 8080,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vertexArReader,
///             tenantArReader,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vertexArReader, err := projects.NewIAMMember(ctx, "vertex_ar_reader", &projects.IAMMemberArgs{
/// 			Project: pulumi.String(project.ProjectId),
/// 			Role:    pulumi.String("roles/artifactregistry.reader"),
/// 			Member:  pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-aiplatform-re.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "./test-fixtures/mds_agent_src.tar.gz",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Provision and retrieve the tenant service agent through another agent
/// 		tenantMdsAiReasoningEngine, err := vertex.NewAiReasoningEngine(ctx, "tenant_mds", &vertex.AiReasoningEngineArgs{
/// 			DisplayName: pulumi.String("reasoning-engine-mds"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Spec: &vertex.AiReasoningEngineSpecArgs{
/// 				SourceCodeSpec: &vertex.AiReasoningEngineSpecSourceCodeSpecArgs{
/// 					InlineSource: &vertex.AiReasoningEngineSpecSourceCodeSpecInlineSourceArgs{
/// 						SourceArchive: pulumi.String(invokeFilebase64.Result),
/// 					},
/// 					PythonSpec: &vertex.AiReasoningEngineSpecSourceCodeSpecPythonSpecArgs{
/// 						EntrypointModule: pulumi.String("metadata_agent"),
/// 						EntrypointObject: pulumi.String("root_agent"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tenantMds := vertex.GetAiReasoningEngineQueryOutput(ctx, vertex.GetAiReasoningEngineQueryOutputArgs{
/// 			Region:            pulumi.String("us-central1"),
/// 			ReasoningEngineId: tenantMdsAiReasoningEngine.Name,
/// 		}, nil)
/// 		tenantArReader, err := projects.NewIAMMember(ctx, "tenant_ar_reader", &projects.IAMMemberArgs{
/// 			Project: pulumi.String(project.ProjectId),
/// 			Role:    pulumi.String("roles/artifactregistry.reader"),
/// 			Member: std.JsondecodeOutput(ctx, std.JsondecodeOutputArgs{
/// 				Input: tenantMds.Output(),
/// 			}, nil).ApplyT(func(invoke std.JsondecodeResult) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", invoke.Result.Output), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiReasoningEngine(ctx, "reasoning_engine", &vertex.AiReasoningEngineArgs{
/// 			DisplayName: pulumi.String("reasoning-engine"),
/// 			Description: pulumi.String("Deployed with BYOC through Terraform"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Spec: &vertex.AiReasoningEngineSpecArgs{
/// 				ContainerSpec: &vertex.AiReasoningEngineSpecContainerSpecArgs{
/// 					ImageUri: pulumi.Sprintf("us-central1-docker.pkg.dev/%v/vertex-byoc/byoc-agent:latest", project.ProjectId),
/// 					Port:     pulumi.Int(8080),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vertexArReader,
/// 			tenantArReader,
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "gcp_vertex_getaireasoningenginequery" "tenantMds" {
///   region              = "us-central1"
///   reasoning_engine_id = gcp_vertex_aireasoningengine.tenant_mds.name
/// }
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_vertex_aireasoningengine" "reasoning_engine" {
///   depends_on   = [gcp_projects_iammember.vertex_ar_reader, gcp_projects_iammember.tenant_ar_reader]
///   display_name = "reasoning-engine"
///   description  = "Deployed with BYOC through Terraform"
///   region       = "us-central1"
///   spec = {
///     container_spec = {
///       image_uri ="us-central1-docker.pkg.dev/${data.gcp_organizations_getproject.project.project_id}/vertex-byoc/byoc-agent:latest"
///       port      = 8080
///     }
///   }
/// }
/// # Provision and retrieve the tenant service agent through another agent
/// resource "gcp_vertex_aireasoningengine" "tenant_mds" {
///   display_name = "reasoning-engine-mds"
///   region       = "us-central1"
///   spec = {
///     source_code_spec = {
///       inline_source = {
///         source_archive = filebase64("./test-fixtures/mds_agent_src.tar.gz")
///       }
///       python_spec = {
///         entrypoint_module = "metadata_agent"
///         entrypoint_object = "root_agent"
///       }
///     }
///   }
/// }
/// resource "gcp_projects_iammember" "vertex_ar_reader" {
///   project = data.gcp_organizations_getproject.project.project_id
///   role    = "roles/artifactregistry.reader"
///   member  ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-aiplatform-re.iam.gserviceaccount.com"
/// }
/// resource "gcp_projects_iammember" "tenant_ar_reader" {
///   project = data.gcp_organizations_getproject.project.project_id
///   role    = "roles/artifactregistry.reader"
///   member  ="serviceAccount:${jsondecode(data.gcp_vertex_getaireasoningenginequery.tenantMds.output).output}"
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
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.vertex.AiReasoningEngine;
/// import com.pulumi.gcp.vertex.AiReasoningEngineArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecSourceCodeSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecSourceCodeSpecInlineSourceArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecSourceCodeSpecPythonSpecArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
/// import com.pulumi.gcp.vertex.VertexFunctions;
/// import com.pulumi.gcp.vertex.inputs.GetAiReasoningEngineQueryArgs;
/// import com.pulumi.std.inputs.JsondecodeArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecContainerSpecArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var vertexArReader = new IAMMember("vertexArReader", IAMMemberArgs.builder()
///             .project(project.projectId())
///             .role("roles/artifactregistry.reader")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-aiplatform-re.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         // Provision and retrieve the tenant service agent through another agent
///         var tenantMdsAiReasoningEngine = new AiReasoningEngine("tenantMdsAiReasoningEngine", AiReasoningEngineArgs.builder()
///             .displayName("reasoning-engine-mds")
///             .region("us-central1")
///             .spec(AiReasoningEngineSpecArgs.builder()
///                 .sourceCodeSpec(AiReasoningEngineSpecSourceCodeSpecArgs.builder()
///                     .inlineSource(AiReasoningEngineSpecSourceCodeSpecInlineSourceArgs.builder()
///                         .sourceArchive(StdFunctions.filebase64(Filebase64Args.builder()
///                             .input("./test-fixtures/mds_agent_src.tar.gz")
///                             .build()).result())
///                         .build())
///                     .pythonSpec(AiReasoningEngineSpecSourceCodeSpecPythonSpecArgs.builder()
///                         .entrypointModule("metadata_agent")
///                         .entrypointObject("root_agent")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         final var tenantMds = VertexFunctions.getAiReasoningEngineQuery(GetAiReasoningEngineQueryArgs.builder()
///             .region("us-central1")
///             .reasoningEngineId(tenantMdsAiReasoningEngine.name())
///             .build());
///
///         var tenantArReader = new IAMMember("tenantArReader", IAMMemberArgs.builder()
///             .project(project.projectId())
///             .role("roles/artifactregistry.reader")
///             .member(StdFunctions.jsondecode(JsondecodeArgs.builder()
///                 .input(tenantMds.applyValue(_tenantMds -> _tenantMds.output()))
///                 .build()).applyValue(_invoke -> String.format("serviceAccount:%s", _invoke.result().get("output"))))
///             .build());
///
///         var reasoningEngine = new AiReasoningEngine("reasoningEngine", AiReasoningEngineArgs.builder()
///             .displayName("reasoning-engine")
///             .description("Deployed with BYOC through Terraform")
///             .region("us-central1")
///             .spec(AiReasoningEngineSpecArgs.builder()
///                 .containerSpec(AiReasoningEngineSpecContainerSpecArgs.builder()
///                     .imageUri(String.format("us-central1-docker.pkg.dev/%s/vertex-byoc/byoc-agent:latest", project.projectId()))
///                     .port(8080)
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     vertexArReader,
///                     tenantArReader)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   reasoningEngine:
///     type: gcp:vertex:AiReasoningEngine
///     name: reasoning_engine
///     properties:
///       displayName: reasoning-engine
///       description: Deployed with BYOC through Terraform
///       region: us-central1
///       spec:
///         containerSpec:
///           imageUri: us-central1-docker.pkg.dev/${project.projectId}/vertex-byoc/byoc-agent:latest
///           port: 8080
///     options:
///       dependsOn:
///         - ${vertexArReader}
///         - ${tenantArReader}
///   # Provision and retrieve the tenant service agent through another agent
///   tenantMdsAiReasoningEngine:
///     type: gcp:vertex:AiReasoningEngine
///     name: tenant_mds
///     properties:
///       displayName: reasoning-engine-mds
///       region: us-central1
///       spec:
///         sourceCodeSpec:
///           inlineSource:
///             sourceArchive:
///               fn::invoke:
///                 function: std:filebase64
///                 arguments:
///                   input: ./test-fixtures/mds_agent_src.tar.gz
///                 return: result
///           pythonSpec:
///             entrypointModule: metadata_agent
///             entrypointObject: root_agent
///   vertexArReader:
///     type: gcp:projects:IAMMember
///     name: vertex_ar_reader
///     properties:
///       project: ${project.projectId}
///       role: roles/artifactregistry.reader
///       member: serviceAccount:service-${project.number}@gcp-sa-aiplatform-re.iam.gserviceaccount.com
///   tenantArReader:
///     type: gcp:projects:IAMMember
///     name: tenant_ar_reader
///     properties:
///       project: ${project.projectId}
///       role: roles/artifactregistry.reader
///       member:
///         fn::join:
///           - ""
///           - - 'serviceAccount:'
///             - fn::invoke:
///                 function: std:jsondecode
///                 arguments:
///                   input: ${tenantMds.output}
///                 return: result.output
/// variables:
///   tenantMds:
///     fn::invoke:
///       function: gcp:vertex:getAiReasoningEngineQuery
///       arguments:
///         region: us-central1
///         reasoningEngineId: ${tenantMdsAiReasoningEngine.name}
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Vertex Ai Reasoning Engine Psc Interface
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "reasoning-engine",
///     location: "us-central1",
///     uniformBucketLevelAccess: true,
///     forceDestroy: true,
/// });
/// const bucketObjRequirementsTxt = new gcp.storage.BucketObject("bucket_obj_requirements_txt", {
///     name: "requirements.txt",
///     bucket: bucket.id,
///     source: new pulumi.asset.FileAsset("./test-fixtures/requirements_adk.txt"),
/// });
/// const bucketObjPickle = new gcp.storage.BucketObject("bucket_obj_pickle", {
///     name: "code.pkl",
///     bucket: bucket.id,
///     source: new pulumi.asset.FileAsset("./test-fixtures/pickle_adk.pkl"),
/// });
/// const bucketObjDependenciesTarGz = new gcp.storage.BucketObject("bucket_obj_dependencies_tar_gz", {
///     name: "dependencies.tar.gz",
///     bucket: bucket.id,
///     source: new pulumi.asset.FileAsset("./test-fixtures/dependencies_adk.tar.gz"),
/// });
/// const network = new gcp.compute.Network("network", {
///     name: "network",
///     autoCreateSubnetworks: false,
/// });
/// const subnetwork = new gcp.compute.Subnetwork("subnetwork", {
///     name: "subnetwork",
///     region: "us-central1",
///     ipCidrRange: "10.0.0.0/16",
///     network: network.id,
/// });
/// const networkAttachment = new gcp.compute.NetworkAttachment("network_attachment", {
///     name: "network-attachment",
///     region: "us-central1",
///     connectionPreference: "ACCEPT_MANUAL",
///     subnetworks: [subnetwork.id],
/// });
/// // Destroy network attachment 35 minutes after reasoning engine is deleted.
/// // It guarantees that the network attachment has no more active PSC interfaces.
/// const wait35Minutes = new time.Sleep("wait_35_minutes", {destroyDuration: "35m"}, {
///     dependsOn: [networkAttachment],
/// });
/// const project = gcp.organizations.getProject({});
/// // When PSC-I is configured, Agent deletion will fail,
/// // although the agent will be deleted.
/// // Bug at https://github.com/hashicorp/terraform-provider-google/issues/25637
/// const reasoningEngine = new gcp.vertex.AiReasoningEngine("reasoning_engine", {
///     displayName: "reasoning-engine",
///     description: "A basic reasoning engine",
///     region: "us-central1",
///     spec: {
///         agentFramework: "google-adk",
///         packageSpec: {
///             pythonVersion: "3.11",
///             dependencyFilesGcsUri: pulumi.interpolate`${bucket.url}/${bucketObjDependenciesTarGz.name}`,
///             pickleObjectGcsUri: pulumi.interpolate`${bucket.url}/${bucketObjPickle.name}`,
///             requirementsGcsUri: pulumi.interpolate`${bucket.url}/${bucketObjRequirementsTxt.name}`,
///         },
///         deploymentSpec: {
///             pscInterfaceConfig: {
///                 networkAttachment: networkAttachment.id,
///                 dnsPeeringConfigs: [{
///                     domain: "example.com.",
///                     targetProject: project.then(project => project.projectId),
///                     targetNetwork: network.name,
///                 }],
///             },
///         },
///     },
/// }, {
///     dependsOn: [wait35Minutes],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="reasoning-engine",
///     location="us-central1",
///     uniform_bucket_level_access=True,
///     force_destroy=True)
/// bucket_obj_requirements_txt = gcp.storage.BucketObject("bucket_obj_requirements_txt",
///     name="requirements.txt",
///     bucket=bucket.id,
///     source=pulumi.FileAsset("./test-fixtures/requirements_adk.txt"))
/// bucket_obj_pickle = gcp.storage.BucketObject("bucket_obj_pickle",
///     name="code.pkl",
///     bucket=bucket.id,
///     source=pulumi.FileAsset("./test-fixtures/pickle_adk.pkl"))
/// bucket_obj_dependencies_tar_gz = gcp.storage.BucketObject("bucket_obj_dependencies_tar_gz",
///     name="dependencies.tar.gz",
///     bucket=bucket.id,
///     source=pulumi.FileAsset("./test-fixtures/dependencies_adk.tar.gz"))
/// network = gcp.compute.Network("network",
///     name="network",
///     auto_create_subnetworks=False)
/// subnetwork = gcp.compute.Subnetwork("subnetwork",
///     name="subnetwork",
///     region="us-central1",
///     ip_cidr_range="10.0.0.0/16",
///     network=network.id)
/// network_attachment = gcp.compute.NetworkAttachment("network_attachment",
///     name="network-attachment",
///     region="us-central1",
///     connection_preference="ACCEPT_MANUAL",
///     subnetworks=[subnetwork.id])
/// # Destroy network attachment 35 minutes after reasoning engine is deleted.
/// # It guarantees that the network attachment has no more active PSC interfaces.
/// wait35_minutes = time.Sleep("wait_35_minutes", destroy_duration="35m",
/// opts = pulumi.ResourceOptions(depends_on=[network_attachment]))
/// project = gcp.organizations.get_project()
/// # When PSC-I is configured, Agent deletion will fail,
/// # although the agent will be deleted.
/// # Bug at https://github.com/hashicorp/terraform-provider-google/issues/25637
/// reasoning_engine = gcp.vertex.AiReasoningEngine("reasoning_engine",
///     display_name="reasoning-engine",
///     description="A basic reasoning engine",
///     region="us-central1",
///     spec={
///         "agent_framework": "google-adk",
///         "package_spec": {
///             "python_version": "3.11",
///             "dependency_files_gcs_uri": pulumi.Output.all(
///                 url=bucket.url,
///                 name=bucket_obj_dependencies_tar_gz.name
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['url']}/{resolved_outputs['name']}")
/// ,
///             "pickle_object_gcs_uri": pulumi.Output.all(
///                 url=bucket.url,
///                 name=bucket_obj_pickle.name
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['url']}/{resolved_outputs['name']}")
/// ,
///             "requirements_gcs_uri": pulumi.Output.all(
///                 url=bucket.url,
///                 name=bucket_obj_requirements_txt.name
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['url']}/{resolved_outputs['name']}")
/// ,
///         },
///         "deployment_spec": {
///             "psc_interface_config": {
///                 "network_attachment": network_attachment.id,
///                 "dns_peering_configs": [{
///                     "domain": "example.com.",
///                     "target_project": project.project_id,
///                     "target_network": network.name,
///                 }],
///             },
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[wait35_minutes]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "reasoning-engine",
///         Location = "us-central1",
///         UniformBucketLevelAccess = true,
///         ForceDestroy = true,
///     });
///
///     var bucketObjRequirementsTxt = new Gcp.Storage.BucketObject("bucket_obj_requirements_txt", new()
///     {
///         Name = "requirements.txt",
///         Bucket = bucket.Id,
///         Source = new FileAsset("./test-fixtures/requirements_adk.txt"),
///     });
///
///     var bucketObjPickle = new Gcp.Storage.BucketObject("bucket_obj_pickle", new()
///     {
///         Name = "code.pkl",
///         Bucket = bucket.Id,
///         Source = new FileAsset("./test-fixtures/pickle_adk.pkl"),
///     });
///
///     var bucketObjDependenciesTarGz = new Gcp.Storage.BucketObject("bucket_obj_dependencies_tar_gz", new()
///     {
///         Name = "dependencies.tar.gz",
///         Bucket = bucket.Id,
///         Source = new FileAsset("./test-fixtures/dependencies_adk.tar.gz"),
///     });
///
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetwork = new Gcp.Compute.Subnetwork("subnetwork", new()
///     {
///         Name = "subnetwork",
///         Region = "us-central1",
///         IpCidrRange = "10.0.0.0/16",
///         Network = network.Id,
///     });
///
///     var networkAttachment = new Gcp.Compute.NetworkAttachment("network_attachment", new()
///     {
///         Name = "network-attachment",
///         Region = "us-central1",
///         ConnectionPreference = "ACCEPT_MANUAL",
///         Subnetworks = new[]
///         {
///             subnetwork.Id,
///         },
///     });
///
///     // Destroy network attachment 35 minutes after reasoning engine is deleted.
///     // It guarantees that the network attachment has no more active PSC interfaces.
///     var wait35Minutes = new Time.Sleep("wait_35_minutes", new()
///     {
///         DestroyDuration = "35m",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             networkAttachment,
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     // When PSC-I is configured, Agent deletion will fail,
///     // although the agent will be deleted.
///     // Bug at https://github.com/hashicorp/terraform-provider-google/issues/25637
///     var reasoningEngine = new Gcp.Vertex.AiReasoningEngine("reasoning_engine", new()
///     {
///         DisplayName = "reasoning-engine",
///         Description = "A basic reasoning engine",
///         Region = "us-central1",
///         Spec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecArgs
///         {
///             AgentFramework = "google-adk",
///             PackageSpec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecPackageSpecArgs
///             {
///                 PythonVersion = "3.11",
///                 DependencyFilesGcsUri = Output.Tuple(bucket.Url, bucketObjDependenciesTarGz.Name).Apply(values =>
///                 {
///                     var url = values.Item1;
///                     var name = values.Item2;
///                     return $"{url}/{name}";
///                 }),
///                 PickleObjectGcsUri = Output.Tuple(bucket.Url, bucketObjPickle.Name).Apply(values =>
///                 {
///                     var url = values.Item1;
///                     var name = values.Item2;
///                     return $"{url}/{name}";
///                 }),
///                 RequirementsGcsUri = Output.Tuple(bucket.Url, bucketObjRequirementsTxt.Name).Apply(values =>
///                 {
///                     var url = values.Item1;
///                     var name = values.Item2;
///                     return $"{url}/{name}";
///                 }),
///             },
///             DeploymentSpec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecDeploymentSpecArgs
///             {
///                 PscInterfaceConfig = new Gcp.Vertex.Inputs.AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigArgs
///                 {
///                     NetworkAttachment = networkAttachment.Id,
///                     DnsPeeringConfigs = new[]
///                     {
///                         new Gcp.Vertex.Inputs.AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfigArgs
///                         {
///                             Domain = "example.com.",
///                             TargetProject = project.Apply(getProjectResult => getProjectResult.ProjectId),
///                             TargetNetwork = network.Name,
///                         },
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait35Minutes,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("reasoning-engine"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucketObjRequirementsTxt, err := storage.NewBucketObject(ctx, "bucket_obj_requirements_txt", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("requirements.txt"),
/// 			Bucket: bucket.ID().ToIDOutput().ToStringOutput(),
/// 			Source: pulumi.NewFileAsset("./test-fixtures/requirements_adk.txt"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucketObjPickle, err := storage.NewBucketObject(ctx, "bucket_obj_pickle", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("code.pkl"),
/// 			Bucket: bucket.ID().ToIDOutput().ToStringOutput(),
/// 			Source: pulumi.NewFileAsset("./test-fixtures/pickle_adk.pkl"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucketObjDependenciesTarGz, err := storage.NewBucketObject(ctx, "bucket_obj_dependencies_tar_gz", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("dependencies.tar.gz"),
/// 			Bucket: bucket.ID().ToIDOutput().ToStringOutput(),
/// 			Source: pulumi.NewFileAsset("./test-fixtures/dependencies_adk.tar.gz"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnetwork, err := compute.NewSubnetwork(ctx, "subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("subnetwork"),
/// 			Region:      pulumi.String("us-central1"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 			Network:     network.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		networkAttachment, err := compute.NewNetworkAttachment(ctx, "network_attachment", &compute.NetworkAttachmentArgs{
/// 			Name:                 pulumi.String("network-attachment"),
/// 			Region:               pulumi.String("us-central1"),
/// 			ConnectionPreference: pulumi.String("ACCEPT_MANUAL"),
/// 			Subnetworks: pulumi.StringArray{
/// 				subnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Destroy network attachment 35 minutes after reasoning engine is deleted.
/// 		// It guarantees that the network attachment has no more active PSC interfaces.
/// 		wait35Minutes, err := time.NewSleep(ctx, "wait_35_minutes", &time.SleepArgs{
/// 			DestroyDuration: pulumi.String("35m"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			networkAttachment,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// When PSC-I is configured, Agent deletion will fail,
/// 		// although the agent will be deleted.
/// 		// Bug at https://github.com/hashicorp/terraform-provider-google/issues/25637
/// 		_, err = vertex.NewAiReasoningEngine(ctx, "reasoning_engine", &vertex.AiReasoningEngineArgs{
/// 			DisplayName: pulumi.String("reasoning-engine"),
/// 			Description: pulumi.String("A basic reasoning engine"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Spec: &vertex.AiReasoningEngineSpecArgs{
/// 				AgentFramework: pulumi.String("google-adk"),
/// 				PackageSpec: &vertex.AiReasoningEngineSpecPackageSpecArgs{
/// 					PythonVersion: pulumi.String("3.11"),
/// 					DependencyFilesGcsUri: pulumi.All(bucket.Url, bucketObjDependenciesTarGz.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 						url := _args[0].(string)
/// 						name := _args[1].(string)
/// 						return fmt.Sprintf("%v/%v", url, name), nil
/// 					}).(pulumi.StringOutput),
/// 					PickleObjectGcsUri: pulumi.All(bucket.Url, bucketObjPickle.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 						url := _args[0].(string)
/// 						name := _args[1].(string)
/// 						return fmt.Sprintf("%v/%v", url, name), nil
/// 					}).(pulumi.StringOutput),
/// 					RequirementsGcsUri: pulumi.All(bucket.Url, bucketObjRequirementsTxt.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 						url := _args[0].(string)
/// 						name := _args[1].(string)
/// 						return fmt.Sprintf("%v/%v", url, name), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				DeploymentSpec: &vertex.AiReasoningEngineSpecDeploymentSpecArgs{
/// 					PscInterfaceConfig: &vertex.AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigArgs{
/// 						NetworkAttachment: networkAttachment.ID().ToIDOutput().ToStringOutput(),
/// 						DnsPeeringConfigs: vertex.AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfigArray{
/// 							&vertex.AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfigArgs{
/// 								Domain:        pulumi.String("example.com."),
/// 								TargetProject: pulumi.String(project.ProjectId),
/// 								TargetNetwork: network.Name,
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait35Minutes,
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
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// # When PSC-I is configured, Agent deletion will fail,
/// # although the agent will be deleted.
/// # Bug at https://github.com/hashicorp/terraform-provider-google/issues/25637
/// resource "gcp_vertex_aireasoningengine" "reasoning_engine" {
///   depends_on   = [time_sleep.wait_35_minutes]
///   display_name = "reasoning-engine"
///   description  = "A basic reasoning engine"
///   region       = "us-central1"
///   spec = {
///     agent_framework = "google-adk"
///     package_spec = {
///       python_version           = "3.11"
///       dependency_files_gcs_uri ="${gcp_storage_bucket.bucket.url}/${gcp_storage_bucketobject.bucket_obj_dependencies_tar_gz.name}"
///       pickle_object_gcs_uri    ="${gcp_storage_bucket.bucket.url}/${gcp_storage_bucketobject.bucket_obj_pickle.name}"
///       requirements_gcs_uri     ="${gcp_storage_bucket.bucket.url}/${gcp_storage_bucketobject.bucket_obj_requirements_txt.name}"
///     }
///     deployment_spec = {
///       psc_interface_config = {
///         network_attachment = gcp_compute_networkattachment.network_attachment.id
///         dns_peering_configs = [{
///           "domain"        = "example.com."
///           "targetProject" = data.gcp_organizations_getproject.project.project_id
///           "targetNetwork" = gcp_compute_network.network.name
///         }]
///       }
///     }
///   }
/// }
/// resource "gcp_storage_bucketobject" "bucket_obj_requirements_txt" {
///   name   = "requirements.txt"
///   bucket = gcp_storage_bucket.bucket.id
///   source = fileAsset("./test-fixtures/requirements_adk.txt")
/// }
/// resource "gcp_storage_bucketobject" "bucket_obj_pickle" {
///   name   = "code.pkl"
///   bucket = gcp_storage_bucket.bucket.id
///   source = fileAsset("./test-fixtures/pickle_adk.pkl")
/// }
/// resource "gcp_storage_bucketobject" "bucket_obj_dependencies_tar_gz" {
///   name   = "dependencies.tar.gz"
///   bucket = gcp_storage_bucket.bucket.id
///   source = fileAsset("./test-fixtures/dependencies_adk.tar.gz")
/// }
/// resource "gcp_storage_bucket" "bucket" {
///   name                        = "reasoning-engine"
///   location                    = "us-central1"
///   uniform_bucket_level_access = true
///   force_destroy               = true
/// }
/// # Destroy network attachment 35 minutes after reasoning engine is deleted.
/// # It guarantees that the network attachment has no more active PSC interfaces.
/// resource "time_sleep" "wait_35_minutes" {
///   depends_on       = [gcp_compute_networkattachment.network_attachment]
///   destroy_duration = "35m"
/// }
/// resource "gcp_compute_networkattachment" "network_attachment" {
///   name                  = "network-attachment"
///   region                = "us-central1"
///   connection_preference = "ACCEPT_MANUAL"
///   subnetworks           = [gcp_compute_subnetwork.subnetwork.id]
/// }
/// resource "gcp_compute_subnetwork" "subnetwork" {
///   name          = "subnetwork"
///   region        = "us-central1"
///   ip_cidr_range = "10.0.0.0/16"
///   network       = gcp_compute_network.network.id
/// }
/// resource "gcp_compute_network" "network" {
///   name                    = "network"
///   auto_create_subnetworks = false
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
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.NetworkAttachment;
/// import com.pulumi.gcp.compute.NetworkAttachmentArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.vertex.AiReasoningEngine;
/// import com.pulumi.gcp.vertex.AiReasoningEngineArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecPackageSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecDeploymentSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfigArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("reasoning-engine")
///             .location("us-central1")
///             .uniformBucketLevelAccess(true)
///             .forceDestroy(true)
///             .build());
///
///         var bucketObjRequirementsTxt = new BucketObject("bucketObjRequirementsTxt", BucketObjectArgs.builder()
///             .name("requirements.txt")
///             .bucket(bucket.id())
///             .source(new FileAsset("./test-fixtures/requirements_adk.txt"))
///             .build());
///
///         var bucketObjPickle = new BucketObject("bucketObjPickle", BucketObjectArgs.builder()
///             .name("code.pkl")
///             .bucket(bucket.id())
///             .source(new FileAsset("./test-fixtures/pickle_adk.pkl"))
///             .build());
///
///         var bucketObjDependenciesTarGz = new BucketObject("bucketObjDependenciesTarGz", BucketObjectArgs.builder()
///             .name("dependencies.tar.gz")
///             .bucket(bucket.id())
///             .source(new FileAsset("./test-fixtures/dependencies_adk.tar.gz"))
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .name("network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetwork = new Subnetwork("subnetwork", SubnetworkArgs.builder()
///             .name("subnetwork")
///             .region("us-central1")
///             .ipCidrRange("10.0.0.0/16")
///             .network(network.id())
///             .build());
///
///         var networkAttachment = new NetworkAttachment("networkAttachment", NetworkAttachmentArgs.builder()
///             .name("network-attachment")
///             .region("us-central1")
///             .connectionPreference("ACCEPT_MANUAL")
///             .subnetworks(subnetwork.id())
///             .build());
///
///         // Destroy network attachment 35 minutes after reasoning engine is deleted.
///         // It guarantees that the network attachment has no more active PSC interfaces.
///         var wait35Minutes = new Sleep("wait35Minutes", SleepArgs.builder()
///             .destroyDuration("35m")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(networkAttachment)
///                 .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         // When PSC-I is configured, Agent deletion will fail,
///         // although the agent will be deleted.
///         // Bug at https://github.com/hashicorp/terraform-provider-google/issues/25637
///         var reasoningEngine = new AiReasoningEngine("reasoningEngine", AiReasoningEngineArgs.builder()
///             .displayName("reasoning-engine")
///             .description("A basic reasoning engine")
///             .region("us-central1")
///             .spec(AiReasoningEngineSpecArgs.builder()
///                 .agentFramework("google-adk")
///                 .packageSpec(AiReasoningEngineSpecPackageSpecArgs.builder()
///                     .pythonVersion("3.11")
///                     .dependencyFilesGcsUri(Output.tuple(bucket.url(), bucketObjDependenciesTarGz.name()).applyValue(values -> {
///                         var url = values.t1;
///                         var name = values.t2;
///                         return String.format("%s/%s", url,name);
///                     }))
///                     .pickleObjectGcsUri(Output.tuple(bucket.url(), bucketObjPickle.name()).applyValue(values -> {
///                         var url = values.t1;
///                         var name = values.t2;
///                         return String.format("%s/%s", url,name);
///                     }))
///                     .requirementsGcsUri(Output.tuple(bucket.url(), bucketObjRequirementsTxt.name()).applyValue(values -> {
///                         var url = values.t1;
///                         var name = values.t2;
///                         return String.format("%s/%s", url,name);
///                     }))
///                     .build())
///                 .deploymentSpec(AiReasoningEngineSpecDeploymentSpecArgs.builder()
///                     .pscInterfaceConfig(AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigArgs.builder()
///                         .networkAttachment(networkAttachment.id())
///                         .dnsPeeringConfigs(AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfigArgs.builder()
///                             .domain("example.com.")
///                             .targetProject(project.projectId())
///                             .targetNetwork(network.name())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait35Minutes)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # When PSC-I is configured, Agent deletion will fail,
///   # although the agent will be deleted.
///   # Bug at https://github.com/hashicorp/terraform-provider-google/issues/25637
///   reasoningEngine:
///     type: gcp:vertex:AiReasoningEngine
///     name: reasoning_engine
///     properties:
///       displayName: reasoning-engine
///       description: A basic reasoning engine
///       region: us-central1
///       spec:
///         agentFramework: google-adk
///         packageSpec:
///           pythonVersion: '3.11'
///           dependencyFilesGcsUri: ${bucket.url}/${bucketObjDependenciesTarGz.name}
///           pickleObjectGcsUri: ${bucket.url}/${bucketObjPickle.name}
///           requirementsGcsUri: ${bucket.url}/${bucketObjRequirementsTxt.name}
///         deploymentSpec:
///           pscInterfaceConfig:
///             networkAttachment: ${networkAttachment.id}
///             dnsPeeringConfigs:
///               - domain: example.com.
///                 targetProject: ${project.projectId}
///                 targetNetwork: ${network.name}
///     options:
///       dependsOn:
///         - ${wait35Minutes}
///   bucketObjRequirementsTxt:
///     type: gcp:storage:BucketObject
///     name: bucket_obj_requirements_txt
///     properties:
///       name: requirements.txt
///       bucket: ${bucket.id}
///       source:
///         fn::fileAsset: ./test-fixtures/requirements_adk.txt
///   bucketObjPickle:
///     type: gcp:storage:BucketObject
///     name: bucket_obj_pickle
///     properties:
///       name: code.pkl
///       bucket: ${bucket.id}
///       source:
///         fn::fileAsset: ./test-fixtures/pickle_adk.pkl
///   bucketObjDependenciesTarGz:
///     type: gcp:storage:BucketObject
///     name: bucket_obj_dependencies_tar_gz
///     properties:
///       name: dependencies.tar.gz
///       bucket: ${bucket.id}
///       source:
///         fn::fileAsset: ./test-fixtures/dependencies_adk.tar.gz
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: reasoning-engine
///       location: us-central1
///       uniformBucketLevelAccess: true
///       forceDestroy: true
///   # Destroy network attachment 35 minutes after reasoning engine is deleted.
///   # It guarantees that the network attachment has no more active PSC interfaces.
///   wait35Minutes:
///     type: time:Sleep
///     name: wait_35_minutes
///     properties:
///       destroyDuration: 35m
///     options:
///       dependsOn:
///         - ${networkAttachment}
///   networkAttachment:
///     type: gcp:compute:NetworkAttachment
///     name: network_attachment
///     properties:
///       name: network-attachment
///       region: us-central1
///       connectionPreference: ACCEPT_MANUAL
///       subnetworks:
///         - ${subnetwork.id}
///   subnetwork:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: subnetwork
///       region: us-central1
///       ipCidrRange: 10.0.0.0/16
///       network: ${network.id}
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: network
///       autoCreateSubnetworks: false
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Vertex Ai Reasoning Engine Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const classMethods = [{
///     apiMode: "async",
///     description: null,
///     name: "async_query",
///     parameters: {
///         type: "object",
///         required: [],
///         properties: {},
///     },
/// }];
/// const secret = new gcp.secretmanager.Secret("secret", {
///     secretId: "secret",
///     replication: {
///         auto: {},
///     },
/// });
/// const secretVersion = new gcp.secretmanager.SecretVersion("secret_version", {
///     secret: secret.id,
///     secretData: "test",
/// });
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {accountId: "sa"});
/// const secretAccess = new gcp.secretmanager.SecretIamMember("secret_access", {
///     secretId: secret.id,
///     role: "roles/secretmanager.secretAccessor",
///     member: serviceAccount.member,
/// });
/// const project = gcp.organizations.getProject({});
/// const saIamObjectViewer = new gcp.projects.IAMMember("sa_iam_object_viewer", {
///     role: "roles/storage.objectViewer",
///     project: project.then(project => project.id),
///     member: serviceAccount.member,
/// });
/// const saIamAiPlatformUser = new gcp.projects.IAMMember("sa_iam_ai_platform_user", {
///     role: "roles/aiplatform.user",
///     project: project.then(project => project.id),
///     member: serviceAccount.member,
/// });
/// const saIamViewer = new gcp.projects.IAMMember("sa_iam_viewer", {
///     role: "roles/viewer",
///     project: project.then(project => project.id),
///     member: serviceAccount.member,
/// });
/// // Ensure we wait enough time for IAM permissions to be propagated
/// const wait5Minutes = new time.Sleep("wait_5_minutes", {createDuration: "5m"}, {
///     dependsOn: [
///         saIamAiPlatformUser,
///         saIamObjectViewer,
///         saIamViewer,
///         secretAccess,
///         secretVersion,
///     ],
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "reasoning-engine",
///     location: "us-central1",
///     uniformBucketLevelAccess: true,
///     forceDestroy: true,
/// });
/// const bucketObjRequirementsTxt = new gcp.storage.BucketObject("bucket_obj_requirements_txt", {
///     name: "requirements.txt",
///     bucket: bucket.id,
///     source: new pulumi.asset.FileAsset("./test-fixtures/requirements_adk.txt"),
/// });
/// const bucketObjPickle = new gcp.storage.BucketObject("bucket_obj_pickle", {
///     name: "code.pkl",
///     bucket: bucket.id,
///     source: new pulumi.asset.FileAsset("./test-fixtures/pickle_adk.pkl"),
/// });
/// const bucketObjDependenciesTarGz = new gcp.storage.BucketObject("bucket_obj_dependencies_tar_gz", {
///     name: "dependencies.tar.gz",
///     bucket: bucket.id,
///     source: new pulumi.asset.FileAsset("./test-fixtures/dependencies_adk.tar.gz"),
/// });
/// const reasoningEngine = new gcp.vertex.AiReasoningEngine("reasoning_engine", {
///     displayName: "reasoning-engine",
///     description: "A basic reasoning engine",
///     region: "us-central1",
///     encryptionSpec: {
///         kmsKeyName: "example-key",
///     },
///     spec: {
///         agentFramework: "google-adk",
///         classMethods: JSON.stringify(classMethods),
///         serviceAccount: serviceAccount.email,
///         deploymentSpec: {
///             minInstances: 1,
///             maxInstances: 3,
///             containerConcurrency: 5,
///             resourceLimits: {
///                 cpu: "4",
///                 memory: "4Gi",
///             },
///             envs: [
///                 {
///                     name: "var_1",
///                     value: "value_2",
///                 },
///                 {
///                     name: "var_2",
///                     value: "value_2",
///                 },
///             ],
///             secretEnvs: [
///                 {
///                     name: "secret_var_1",
///                     secretRef: {
///                         secret: secret.secretId,
///                         version: "latest",
///                     },
///                 },
///                 {
///                     name: "secret_var_2",
///                     secretRef: {
///                         secret: secret.secretId,
///                         version: "latest",
///                     },
///                 },
///             ],
///         },
///         packageSpec: {
///             dependencyFilesGcsUri: pulumi.interpolate`${bucket.url}/${bucketObjDependenciesTarGz.name}`,
///             pickleObjectGcsUri: pulumi.interpolate`${bucket.url}/${bucketObjPickle.name}`,
///             pythonVersion: "3.11",
///             requirementsGcsUri: pulumi.interpolate`${bucket.url}/${bucketObjRequirementsTxt.name}`,
///         },
///     },
/// }, {
///     dependsOn: [wait5Minutes],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// class_methods = [{
///     "apiMode": "async",
///     "description": None,
///     "name": "async_query",
///     "parameters": {
///         "type": "object",
///         "required": [],
///         "properties": {},
///     },
/// }]
/// secret = gcp.secretmanager.Secret("secret",
///     secret_id="secret",
///     replication={
///         "auto": {},
///     })
/// secret_version = gcp.secretmanager.SecretVersion("secret_version",
///     secret=secret.id,
///     secret_data="test")
/// service_account = gcp.serviceaccount.Account("service_account", account_id="sa")
/// secret_access = gcp.secretmanager.SecretIamMember("secret_access",
///     secret_id=secret.id,
///     role="roles/secretmanager.secretAccessor",
///     member=service_account.member)
/// project = gcp.organizations.get_project()
/// sa_iam_object_viewer = gcp.projects.IAMMember("sa_iam_object_viewer",
///     role="roles/storage.objectViewer",
///     project=project.id,
///     member=service_account.member)
/// sa_iam_ai_platform_user = gcp.projects.IAMMember("sa_iam_ai_platform_user",
///     role="roles/aiplatform.user",
///     project=project.id,
///     member=service_account.member)
/// sa_iam_viewer = gcp.projects.IAMMember("sa_iam_viewer",
///     role="roles/viewer",
///     project=project.id,
///     member=service_account.member)
/// # Ensure we wait enough time for IAM permissions to be propagated
/// wait5_minutes = time.Sleep("wait_5_minutes", create_duration="5m",
/// opts = pulumi.ResourceOptions(depends_on=[
///         sa_iam_ai_platform_user,
///         sa_iam_object_viewer,
///         sa_iam_viewer,
///         secret_access,
///         secret_version,
///     ]))
/// bucket = gcp.storage.Bucket("bucket",
///     name="reasoning-engine",
///     location="us-central1",
///     uniform_bucket_level_access=True,
///     force_destroy=True)
/// bucket_obj_requirements_txt = gcp.storage.BucketObject("bucket_obj_requirements_txt",
///     name="requirements.txt",
///     bucket=bucket.id,
///     source=pulumi.FileAsset("./test-fixtures/requirements_adk.txt"))
/// bucket_obj_pickle = gcp.storage.BucketObject("bucket_obj_pickle",
///     name="code.pkl",
///     bucket=bucket.id,
///     source=pulumi.FileAsset("./test-fixtures/pickle_adk.pkl"))
/// bucket_obj_dependencies_tar_gz = gcp.storage.BucketObject("bucket_obj_dependencies_tar_gz",
///     name="dependencies.tar.gz",
///     bucket=bucket.id,
///     source=pulumi.FileAsset("./test-fixtures/dependencies_adk.tar.gz"))
/// reasoning_engine = gcp.vertex.AiReasoningEngine("reasoning_engine",
///     display_name="reasoning-engine",
///     description="A basic reasoning engine",
///     region="us-central1",
///     encryption_spec={
///         "kms_key_name": "example-key",
///     },
///     spec={
///         "agent_framework": "google-adk",
///         "class_methods": json.dumps(class_methods),
///         "service_account": service_account.email,
///         "deployment_spec": {
///             "min_instances": 1,
///             "max_instances": 3,
///             "container_concurrency": 5,
///             "resource_limits": {
///                 "cpu": "4",
///                 "memory": "4Gi",
///             },
///             "envs": [
///                 {
///                     "name": "var_1",
///                     "value": "value_2",
///                 },
///                 {
///                     "name": "var_2",
///                     "value": "value_2",
///                 },
///             ],
///             "secret_envs": [
///                 {
///                     "name": "secret_var_1",
///                     "secret_ref": {
///                         "secret": secret.secret_id,
///                         "version": "latest",
///                     },
///                 },
///                 {
///                     "name": "secret_var_2",
///                     "secret_ref": {
///                         "secret": secret.secret_id,
///                         "version": "latest",
///                     },
///                 },
///             ],
///         },
///         "package_spec": {
///             "dependency_files_gcs_uri": pulumi.Output.all(
///                 url=bucket.url,
///                 name=bucket_obj_dependencies_tar_gz.name
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['url']}/{resolved_outputs['name']}")
/// ,
///             "pickle_object_gcs_uri": pulumi.Output.all(
///                 url=bucket.url,
///                 name=bucket_obj_pickle.name
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['url']}/{resolved_outputs['name']}")
/// ,
///             "python_version": "3.11",
///             "requirements_gcs_uri": pulumi.Output.all(
///                 url=bucket.url,
///                 name=bucket_obj_requirements_txt.name
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['url']}/{resolved_outputs['name']}")
/// ,
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[wait5_minutes]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var classMethods = new[]
///     {
///
///         {
///             { "apiMode", "async" },
///             { "description", null },
///             { "name", "async_query" },
///             { "parameters",
///             {
///                 { "type", "object" },
///                 { "required", new[] {} },
///                 { "properties", null },
///             } },
///         },
///     };
///
///     var secret = new Gcp.SecretManager.Secret("secret", new()
///     {
///         SecretId = "secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var secretVersion = new Gcp.SecretManager.SecretVersion("secret_version", new()
///     {
///         Secret = secret.Id,
///         SecretData = "test",
///     });
///
///     var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
///     {
///         AccountId = "sa",
///     });
///
///     var secretAccess = new Gcp.SecretManager.SecretIamMember("secret_access", new()
///     {
///         SecretId = secret.Id,
///         Role = "roles/secretmanager.secretAccessor",
///         Member = serviceAccount.Member,
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var saIamObjectViewer = new Gcp.Projects.IAMMember("sa_iam_object_viewer", new()
///     {
///         Role = "roles/storage.objectViewer",
///         Project = project.Apply(getProjectResult => getProjectResult.Id),
///         Member = serviceAccount.Member,
///     });
///
///     var saIamAiPlatformUser = new Gcp.Projects.IAMMember("sa_iam_ai_platform_user", new()
///     {
///         Role = "roles/aiplatform.user",
///         Project = project.Apply(getProjectResult => getProjectResult.Id),
///         Member = serviceAccount.Member,
///     });
///
///     var saIamViewer = new Gcp.Projects.IAMMember("sa_iam_viewer", new()
///     {
///         Role = "roles/viewer",
///         Project = project.Apply(getProjectResult => getProjectResult.Id),
///         Member = serviceAccount.Member,
///     });
///
///     // Ensure we wait enough time for IAM permissions to be propagated
///     var wait5Minutes = new Time.Sleep("wait_5_minutes", new()
///     {
///         CreateDuration = "5m",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             saIamAiPlatformUser,
///             saIamObjectViewer,
///             saIamViewer,
///             secretAccess,
///             secretVersion,
///         },
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "reasoning-engine",
///         Location = "us-central1",
///         UniformBucketLevelAccess = true,
///         ForceDestroy = true,
///     });
///
///     var bucketObjRequirementsTxt = new Gcp.Storage.BucketObject("bucket_obj_requirements_txt", new()
///     {
///         Name = "requirements.txt",
///         Bucket = bucket.Id,
///         Source = new FileAsset("./test-fixtures/requirements_adk.txt"),
///     });
///
///     var bucketObjPickle = new Gcp.Storage.BucketObject("bucket_obj_pickle", new()
///     {
///         Name = "code.pkl",
///         Bucket = bucket.Id,
///         Source = new FileAsset("./test-fixtures/pickle_adk.pkl"),
///     });
///
///     var bucketObjDependenciesTarGz = new Gcp.Storage.BucketObject("bucket_obj_dependencies_tar_gz", new()
///     {
///         Name = "dependencies.tar.gz",
///         Bucket = bucket.Id,
///         Source = new FileAsset("./test-fixtures/dependencies_adk.tar.gz"),
///     });
///
///     var reasoningEngine = new Gcp.Vertex.AiReasoningEngine("reasoning_engine", new()
///     {
///         DisplayName = "reasoning-engine",
///         Description = "A basic reasoning engine",
///         Region = "us-central1",
///         EncryptionSpec = new Gcp.Vertex.Inputs.AiReasoningEngineEncryptionSpecArgs
///         {
///             KmsKeyName = "example-key",
///         },
///         Spec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecArgs
///         {
///             AgentFramework = "google-adk",
///             ClassMethods = JsonSerializer.Serialize(classMethods),
///             ServiceAccount = serviceAccount.Email,
///             DeploymentSpec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecDeploymentSpecArgs
///             {
///                 MinInstances = 1,
///                 MaxInstances = 3,
///                 ContainerConcurrency = 5,
///                 ResourceLimits =
///                 {
///                     { "cpu", "4" },
///                     { "memory", "4Gi" },
///                 },
///                 Envs = new[]
///                 {
///                     new Gcp.Vertex.Inputs.AiReasoningEngineSpecDeploymentSpecEnvArgs
///                     {
///                         Name = "var_1",
///                         Value = "value_2",
///                     },
///                     new Gcp.Vertex.Inputs.AiReasoningEngineSpecDeploymentSpecEnvArgs
///                     {
///                         Name = "var_2",
///                         Value = "value_2",
///                     },
///                 },
///                 SecretEnvs = new[]
///                 {
///                     new Gcp.Vertex.Inputs.AiReasoningEngineSpecDeploymentSpecSecretEnvArgs
///                     {
///                         Name = "secret_var_1",
///                         SecretRef = new Gcp.Vertex.Inputs.AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRefArgs
///                         {
///                             Secret = secret.SecretId,
///                             Version = "latest",
///                         },
///                     },
///                     new Gcp.Vertex.Inputs.AiReasoningEngineSpecDeploymentSpecSecretEnvArgs
///                     {
///                         Name = "secret_var_2",
///                         SecretRef = new Gcp.Vertex.Inputs.AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRefArgs
///                         {
///                             Secret = secret.SecretId,
///                             Version = "latest",
///                         },
///                     },
///                 },
///             },
///             PackageSpec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecPackageSpecArgs
///             {
///                 DependencyFilesGcsUri = Output.Tuple(bucket.Url, bucketObjDependenciesTarGz.Name).Apply(values =>
///                 {
///                     var url = values.Item1;
///                     var name = values.Item2;
///                     return $"{url}/{name}";
///                 }),
///                 PickleObjectGcsUri = Output.Tuple(bucket.Url, bucketObjPickle.Name).Apply(values =>
///                 {
///                     var url = values.Item1;
///                     var name = values.Item2;
///                     return $"{url}/{name}";
///                 }),
///                 PythonVersion = "3.11",
///                 RequirementsGcsUri = Output.Tuple(bucket.Url, bucketObjRequirementsTxt.Name).Apply(values =>
///                 {
///                     var url = values.Item1;
///                     var name = values.Item2;
///                     return $"{url}/{name}";
///                 }),
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait5Minutes,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		classMethods := []map[string]interface{}{
/// 			map[string]interface{}{
/// 				"apiMode":     "async",
/// 				"description": nil,
/// 				"name":        "async_query",
/// 				"parameters": map[string]interface{}{
/// 					"type":       "object",
/// 					"required":   []interface{}{},
/// 					"properties": map[string]interface{}{},
/// 				},
/// 			},
/// 		}
/// 		secret, err := secretmanager.NewSecret(ctx, "secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secretVersion, err := secretmanager.NewSecretVersion(ctx, "secret_version", &secretmanager.SecretVersionArgs{
/// 			Secret:     secret.ID().ToIDOutput().ToStringOutput(),
/// 			SecretData: pulumi.String("test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// 			AccountId: pulumi.String("sa"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secretAccess, err := secretmanager.NewSecretIamMember(ctx, "secret_access", &secretmanager.SecretIamMemberArgs{
/// 			SecretId: secret.ID().ToIDOutput().ToStringOutput(),
/// 			Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// 			Member:   serviceAccount.Member,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		saIamObjectViewer, err := projects.NewIAMMember(ctx, "sa_iam_object_viewer", &projects.IAMMemberArgs{
/// 			Role:    pulumi.String("roles/storage.objectViewer"),
/// 			Project: pulumi.String(project.Id),
/// 			Member:  serviceAccount.Member,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		saIamAiPlatformUser, err := projects.NewIAMMember(ctx, "sa_iam_ai_platform_user", &projects.IAMMemberArgs{
/// 			Role:    pulumi.String("roles/aiplatform.user"),
/// 			Project: pulumi.String(project.Id),
/// 			Member:  serviceAccount.Member,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		saIamViewer, err := projects.NewIAMMember(ctx, "sa_iam_viewer", &projects.IAMMemberArgs{
/// 			Role:    pulumi.String("roles/viewer"),
/// 			Project: pulumi.String(project.Id),
/// 			Member:  serviceAccount.Member,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Ensure we wait enough time for IAM permissions to be propagated
/// 		wait5Minutes, err := time.NewSleep(ctx, "wait_5_minutes", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("5m"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			saIamAiPlatformUser,
/// 			saIamObjectViewer,
/// 			saIamViewer,
/// 			secretAccess,
/// 			secretVersion,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("reasoning-engine"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucketObjRequirementsTxt, err := storage.NewBucketObject(ctx, "bucket_obj_requirements_txt", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("requirements.txt"),
/// 			Bucket: bucket.ID().ToIDOutput().ToStringOutput(),
/// 			Source: pulumi.NewFileAsset("./test-fixtures/requirements_adk.txt"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucketObjPickle, err := storage.NewBucketObject(ctx, "bucket_obj_pickle", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("code.pkl"),
/// 			Bucket: bucket.ID().ToIDOutput().ToStringOutput(),
/// 			Source: pulumi.NewFileAsset("./test-fixtures/pickle_adk.pkl"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucketObjDependenciesTarGz, err := storage.NewBucketObject(ctx, "bucket_obj_dependencies_tar_gz", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("dependencies.tar.gz"),
/// 			Bucket: bucket.ID().ToIDOutput().ToStringOutput(),
/// 			Source: pulumi.NewFileAsset("./test-fixtures/dependencies_adk.tar.gz"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(classMethods)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = vertex.NewAiReasoningEngine(ctx, "reasoning_engine", &vertex.AiReasoningEngineArgs{
/// 			DisplayName: pulumi.String("reasoning-engine"),
/// 			Description: pulumi.String("A basic reasoning engine"),
/// 			Region:      pulumi.String("us-central1"),
/// 			EncryptionSpec: &vertex.AiReasoningEngineEncryptionSpecArgs{
/// 				KmsKeyName: pulumi.String("example-key"),
/// 			},
/// 			Spec: &vertex.AiReasoningEngineSpecArgs{
/// 				AgentFramework: pulumi.String("google-adk"),
/// 				ClassMethods:   pulumi.String(json0),
/// 				ServiceAccount: serviceAccount.Email,
/// 				DeploymentSpec: &vertex.AiReasoningEngineSpecDeploymentSpecArgs{
/// 					MinInstances:         pulumi.Int(1),
/// 					MaxInstances:         pulumi.Int(3),
/// 					ContainerConcurrency: pulumi.Int(5),
/// 					ResourceLimits: pulumi.StringMap{
/// 						"cpu":    pulumi.String("4"),
/// 						"memory": pulumi.String("4Gi"),
/// 					},
/// 					Envs: vertex.AiReasoningEngineSpecDeploymentSpecEnvArray{
/// 						&vertex.AiReasoningEngineSpecDeploymentSpecEnvArgs{
/// 							Name:  pulumi.String("var_1"),
/// 							Value: pulumi.String("value_2"),
/// 						},
/// 						&vertex.AiReasoningEngineSpecDeploymentSpecEnvArgs{
/// 							Name:  pulumi.String("var_2"),
/// 							Value: pulumi.String("value_2"),
/// 						},
/// 					},
/// 					SecretEnvs: vertex.AiReasoningEngineSpecDeploymentSpecSecretEnvArray{
/// 						&vertex.AiReasoningEngineSpecDeploymentSpecSecretEnvArgs{
/// 							Name: pulumi.String("secret_var_1"),
/// 							SecretRef: &vertex.AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRefArgs{
/// 								Secret:  secret.SecretId,
/// 								Version: pulumi.String("latest"),
/// 							},
/// 						},
/// 						&vertex.AiReasoningEngineSpecDeploymentSpecSecretEnvArgs{
/// 							Name: pulumi.String("secret_var_2"),
/// 							SecretRef: &vertex.AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRefArgs{
/// 								Secret:  secret.SecretId,
/// 								Version: pulumi.String("latest"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				PackageSpec: &vertex.AiReasoningEngineSpecPackageSpecArgs{
/// 					DependencyFilesGcsUri: pulumi.All(bucket.Url, bucketObjDependenciesTarGz.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 						url := _args[0].(string)
/// 						name := _args[1].(string)
/// 						return fmt.Sprintf("%v/%v", url, name), nil
/// 					}).(pulumi.StringOutput),
/// 					PickleObjectGcsUri: pulumi.All(bucket.Url, bucketObjPickle.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 						url := _args[0].(string)
/// 						name := _args[1].(string)
/// 						return fmt.Sprintf("%v/%v", url, name), nil
/// 					}).(pulumi.StringOutput),
/// 					PythonVersion: pulumi.String("3.11"),
/// 					RequirementsGcsUri: pulumi.All(bucket.Url, bucketObjRequirementsTxt.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 						url := _args[0].(string)
/// 						name := _args[1].(string)
/// 						return fmt.Sprintf("%v/%v", url, name), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait5Minutes,
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
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_vertex_aireasoningengine" "reasoning_engine" {
///   depends_on   = [time_sleep.wait_5_minutes]
///   display_name = "reasoning-engine"
///   description  = "A basic reasoning engine"
///   region       = "us-central1"
///   encryption_spec = {
///     kms_key_name = "example-key"
///   }
///   spec = {
///     agent_framework = "google-adk"
///     class_methods   = jsonencode(local.classMethods)
///     service_account = gcp_serviceaccount_account.service_account.email
///     deployment_spec = {
///       min_instances         = 1
///       max_instances         = 3
///       container_concurrency = 5
///       resource_limits = {
///         "cpu"    = "4"
///         "memory" = "4Gi"
///       }
///       envs = [{
///         "name"  = "var_1"
///         "value" = "value_2"
///         }, {
///         "name"  = "var_2"
///         "value" = "value_2"
///       }]
///       secret_envs = [{
///         "name" = "secret_var_1"
///         "secretRef" = {
///           "secret"  = gcp_secretmanager_secret.secret.secret_id
///           "version" = "latest"
///         }
///         }, {
///         "name" = "secret_var_2"
///         "secretRef" = {
///           "secret"  = gcp_secretmanager_secret.secret.secret_id
///           "version" = "latest"
///         }
///       }]
///     }
///     package_spec = {
///       dependency_files_gcs_uri ="${gcp_storage_bucket.bucket.url}/${gcp_storage_bucketobject.bucket_obj_dependencies_tar_gz.name}"
///       pickle_object_gcs_uri    ="${gcp_storage_bucket.bucket.url}/${gcp_storage_bucketobject.bucket_obj_pickle.name}"
///       python_version           = "3.11"
///       requirements_gcs_uri     ="${gcp_storage_bucket.bucket.url}/${gcp_storage_bucketobject.bucket_obj_requirements_txt.name}"
///     }
///   }
/// }
/// # Ensure we wait enough time for IAM permissions to be propagated
/// resource "time_sleep" "wait_5_minutes" {
///   depends_on      = [gcp_projects_iammember.sa_iam_ai_platform_user, gcp_projects_iammember.sa_iam_object_viewer, gcp_projects_iammember.sa_iam_viewer, gcp_secretmanager_secretiammember.secret_access, gcp_secretmanager_secretversion.secret_version]
///   create_duration = "5m"
/// }
/// resource "gcp_secretmanager_secretversion" "secret_version" {
///   secret      = gcp_secretmanager_secret.secret.id
///   secret_data = "test"
/// }
/// resource "gcp_secretmanager_secret" "secret" {
///   secret_id = "secret"
///   replication = {
///     auto = {}
///   }
/// }
/// resource "gcp_secretmanager_secretiammember" "secret_access" {
///   secret_id = gcp_secretmanager_secret.secret.id
///   role      = "roles/secretmanager.secretAccessor"
///   member    = gcp_serviceaccount_account.service_account.member
/// }
/// resource "gcp_storage_bucket" "bucket" {
///   name                        = "reasoning-engine"
///   location                    = "us-central1"
///   uniform_bucket_level_access = true
///   force_destroy               = true
/// }
/// resource "gcp_storage_bucketobject" "bucket_obj_requirements_txt" {
///   name   = "requirements.txt"
///   bucket = gcp_storage_bucket.bucket.id
///   source = fileAsset("./test-fixtures/requirements_adk.txt")
/// }
/// resource "gcp_storage_bucketobject" "bucket_obj_pickle" {
///   name   = "code.pkl"
///   bucket = gcp_storage_bucket.bucket.id
///   source = fileAsset("./test-fixtures/pickle_adk.pkl")
/// }
/// resource "gcp_storage_bucketobject" "bucket_obj_dependencies_tar_gz" {
///   name   = "dependencies.tar.gz"
///   bucket = gcp_storage_bucket.bucket.id
///   source = fileAsset("./test-fixtures/dependencies_adk.tar.gz")
/// }
/// resource "gcp_serviceaccount_account" "service_account" {
///   account_id = "sa"
/// }
/// resource "gcp_projects_iammember" "sa_iam_object_viewer" {
///   role    = "roles/storage.objectViewer"
///   project = data.gcp_organizations_getproject.project.id
///   member  = gcp_serviceaccount_account.service_account.member
/// }
/// resource "gcp_projects_iammember" "sa_iam_ai_platform_user" {
///   role    = "roles/aiplatform.user"
///   project = data.gcp_organizations_getproject.project.id
///   member  = gcp_serviceaccount_account.service_account.member
/// }
/// resource "gcp_projects_iammember" "sa_iam_viewer" {
///   role    = "roles/viewer"
///   project = data.gcp_organizations_getproject.project.id
///   member  = gcp_serviceaccount_account.service_account.member
/// }
/// locals {
///   classMethods = [{
///     "apiMode"     = "async"
///     "description" = null
///     "name"        = "async_query"
///     "parameters" = {
///       "type"       = "object"
///       "required"   = []
///       "properties" = {}
///     }
///   }]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamMember;
/// import com.pulumi.gcp.secretmanager.SecretIamMemberArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.vertex.AiReasoningEngine;
/// import com.pulumi.gcp.vertex.AiReasoningEngineArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineEncryptionSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecDeploymentSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecDeploymentSpecEnvArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecDeploymentSpecSecretEnvArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRefArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecPackageSpecArgs;
/// import com.pulumi.asset.FileAsset;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var classMethods = Arrays.asList(Map.ofEntries(
///             Map.entry("apiMode", "async"),
///             Map.entry("description", null),
///             Map.entry("name", "async_query"),
///             Map.entry("parameters", Map.ofEntries(
///                 Map.entry("type", "object"),
///                 Map.entry("required", Arrays.asList()),
///                 Map.entry("properties", Map.ofEntries(
///                 ))
///             ))
///         ));
///
///         var secret = new Secret("secret", SecretArgs.builder()
///             .secretId("secret")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var secretVersion = new SecretVersion("secretVersion", SecretVersionArgs.builder()
///             .secret(secret.id())
///             .secretData("test")
///             .build());
///
///         var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
///             .accountId("sa")
///             .build());
///
///         var secretAccess = new SecretIamMember("secretAccess", SecretIamMemberArgs.builder()
///             .secretId(secret.id())
///             .role("roles/secretmanager.secretAccessor")
///             .member(serviceAccount.member())
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var saIamObjectViewer = new IAMMember("saIamObjectViewer", IAMMemberArgs.builder()
///             .role("roles/storage.objectViewer")
///             .project(project.id())
///             .member(serviceAccount.member())
///             .build());
///
///         var saIamAiPlatformUser = new IAMMember("saIamAiPlatformUser", IAMMemberArgs.builder()
///             .role("roles/aiplatform.user")
///             .project(project.id())
///             .member(serviceAccount.member())
///             .build());
///
///         var saIamViewer = new IAMMember("saIamViewer", IAMMemberArgs.builder()
///             .role("roles/viewer")
///             .project(project.id())
///             .member(serviceAccount.member())
///             .build());
///
///         // Ensure we wait enough time for IAM permissions to be propagated
///         var wait5Minutes = new Sleep("wait5Minutes", SleepArgs.builder()
///             .createDuration("5m")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     saIamAiPlatformUser,
///                     saIamObjectViewer,
///                     saIamViewer,
///                     secretAccess,
///                     secretVersion)
///                 .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("reasoning-engine")
///             .location("us-central1")
///             .uniformBucketLevelAccess(true)
///             .forceDestroy(true)
///             .build());
///
///         var bucketObjRequirementsTxt = new BucketObject("bucketObjRequirementsTxt", BucketObjectArgs.builder()
///             .name("requirements.txt")
///             .bucket(bucket.id())
///             .source(new FileAsset("./test-fixtures/requirements_adk.txt"))
///             .build());
///
///         var bucketObjPickle = new BucketObject("bucketObjPickle", BucketObjectArgs.builder()
///             .name("code.pkl")
///             .bucket(bucket.id())
///             .source(new FileAsset("./test-fixtures/pickle_adk.pkl"))
///             .build());
///
///         var bucketObjDependenciesTarGz = new BucketObject("bucketObjDependenciesTarGz", BucketObjectArgs.builder()
///             .name("dependencies.tar.gz")
///             .bucket(bucket.id())
///             .source(new FileAsset("./test-fixtures/dependencies_adk.tar.gz"))
///             .build());
///
///         var reasoningEngine = new AiReasoningEngine("reasoningEngine", AiReasoningEngineArgs.builder()
///             .displayName("reasoning-engine")
///             .description("A basic reasoning engine")
///             .region("us-central1")
///             .encryptionSpec(AiReasoningEngineEncryptionSpecArgs.builder()
///                 .kmsKeyName("example-key")
///                 .build())
///             .spec(AiReasoningEngineSpecArgs.builder()
///                 .agentFramework("google-adk")
///                 .classMethods(serializeJson(
///                     classMethods))
///                 .serviceAccount(serviceAccount.email())
///                 .deploymentSpec(AiReasoningEngineSpecDeploymentSpecArgs.builder()
///                     .minInstances(1)
///                     .maxInstances(3)
///                     .containerConcurrency(5)
///                     .resourceLimits(Map.ofEntries(
///                         Map.entry("cpu", "4"),
///                         Map.entry("memory", "4Gi")
///                     ))
///                     .envs(
///                         AiReasoningEngineSpecDeploymentSpecEnvArgs.builder()
///                             .name("var_1")
///                             .value("value_2")
///                             .build(),
///                         AiReasoningEngineSpecDeploymentSpecEnvArgs.builder()
///                             .name("var_2")
///                             .value("value_2")
///                             .build())
///                     .secretEnvs(
///                         AiReasoningEngineSpecDeploymentSpecSecretEnvArgs.builder()
///                             .name("secret_var_1")
///                             .secretRef(AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRefArgs.builder()
///                                 .secret(secret.secretId())
///                                 .version("latest")
///                                 .build())
///                             .build(),
///                         AiReasoningEngineSpecDeploymentSpecSecretEnvArgs.builder()
///                             .name("secret_var_2")
///                             .secretRef(AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRefArgs.builder()
///                                 .secret(secret.secretId())
///                                 .version("latest")
///                                 .build())
///                             .build())
///                     .build())
///                 .packageSpec(AiReasoningEngineSpecPackageSpecArgs.builder()
///                     .dependencyFilesGcsUri(Output.tuple(bucket.url(), bucketObjDependenciesTarGz.name()).applyValue(values -> {
///                         var url = values.t1;
///                         var name = values.t2;
///                         return String.format("%s/%s", url,name);
///                     }))
///                     .pickleObjectGcsUri(Output.tuple(bucket.url(), bucketObjPickle.name()).applyValue(values -> {
///                         var url = values.t1;
///                         var name = values.t2;
///                         return String.format("%s/%s", url,name);
///                     }))
///                     .pythonVersion("3.11")
///                     .requirementsGcsUri(Output.tuple(bucket.url(), bucketObjRequirementsTxt.name()).applyValue(values -> {
///                         var url = values.t1;
///                         var name = values.t2;
///                         return String.format("%s/%s", url,name);
///                     }))
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait5Minutes)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   reasoningEngine:
///     type: gcp:vertex:AiReasoningEngine
///     name: reasoning_engine
///     properties:
///       displayName: reasoning-engine
///       description: A basic reasoning engine
///       region: us-central1
///       encryptionSpec:
///         kmsKeyName: example-key
///       spec:
///         agentFramework: google-adk
///         classMethods:
///           fn::toJSON: ${classMethods}
///         serviceAccount: ${serviceAccount.email}
///         deploymentSpec:
///           minInstances: 1
///           maxInstances: 3
///           containerConcurrency: 5
///           resourceLimits:
///             cpu: '4'
///             memory: 4Gi
///           envs:
///             - name: var_1
///               value: value_2
///             - name: var_2
///               value: value_2
///           secretEnvs:
///             - name: secret_var_1
///               secretRef:
///                 secret: ${secret.secretId}
///                 version: latest
///             - name: secret_var_2
///               secretRef:
///                 secret: ${secret.secretId}
///                 version: latest
///         packageSpec:
///           dependencyFilesGcsUri: ${bucket.url}/${bucketObjDependenciesTarGz.name}
///           pickleObjectGcsUri: ${bucket.url}/${bucketObjPickle.name}
///           pythonVersion: '3.11'
///           requirementsGcsUri: ${bucket.url}/${bucketObjRequirementsTxt.name}
///     options:
///       dependsOn:
///         - ${wait5Minutes}
///   # Ensure we wait enough time for IAM permissions to be propagated
///   wait5Minutes:
///     type: time:Sleep
///     name: wait_5_minutes
///     properties:
///       createDuration: 5m
///     options:
///       dependsOn:
///         - ${saIamAiPlatformUser}
///         - ${saIamObjectViewer}
///         - ${saIamViewer}
///         - ${secretAccess}
///         - ${secretVersion}
///   secretVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: secret_version
///     properties:
///       secret: ${secret.id}
///       secretData: test
///   secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret
///       replication:
///         auto: {}
///   secretAccess:
///     type: gcp:secretmanager:SecretIamMember
///     name: secret_access
///     properties:
///       secretId: ${secret.id}
///       role: roles/secretmanager.secretAccessor
///       member: ${serviceAccount.member}
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: reasoning-engine
///       location: us-central1
///       uniformBucketLevelAccess: true
///       forceDestroy: true
///   bucketObjRequirementsTxt:
///     type: gcp:storage:BucketObject
///     name: bucket_obj_requirements_txt
///     properties:
///       name: requirements.txt
///       bucket: ${bucket.id}
///       source:
///         fn::fileAsset: ./test-fixtures/requirements_adk.txt
///   bucketObjPickle:
///     type: gcp:storage:BucketObject
///     name: bucket_obj_pickle
///     properties:
///       name: code.pkl
///       bucket: ${bucket.id}
///       source:
///         fn::fileAsset: ./test-fixtures/pickle_adk.pkl
///   bucketObjDependenciesTarGz:
///     type: gcp:storage:BucketObject
///     name: bucket_obj_dependencies_tar_gz
///     properties:
///       name: dependencies.tar.gz
///       bucket: ${bucket.id}
///       source:
///         fn::fileAsset: ./test-fixtures/dependencies_adk.tar.gz
///   serviceAccount:
///     type: gcp:serviceaccount:Account
///     name: service_account
///     properties:
///       accountId: sa
///   saIamObjectViewer:
///     type: gcp:projects:IAMMember
///     name: sa_iam_object_viewer
///     properties:
///       role: roles/storage.objectViewer
///       project: ${project.id}
///       member: ${serviceAccount.member}
///   saIamAiPlatformUser:
///     type: gcp:projects:IAMMember
///     name: sa_iam_ai_platform_user
///     properties:
///       role: roles/aiplatform.user
///       project: ${project.id}
///       member: ${serviceAccount.member}
///   saIamViewer:
///     type: gcp:projects:IAMMember
///     name: sa_iam_viewer
///     properties:
///       role: roles/viewer
///       project: ${project.id}
///       member: ${serviceAccount.member}
/// variables:
///   classMethods:
///     - apiMode: async
///       description: null
///       name: async_query
///       parameters:
///         type: object
///         required: []
///         properties: {}
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Vertex Ai Reasoning Engine Context Spec
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const reasoningEngine = new gcp.vertex.AiReasoningEngine("reasoning_engine", {
///     displayName: "re-ctx-spec",
///     description: "Reasoning engine with context spec",
///     region: "us-central1",
///     trafficConfig: {
///         trafficSplitAlwaysLatest: {},
///     },
///     contextSpec: {
///         memoryBankConfig: {
///             generationConfig: {
///                 model: project.then(project => `projects/${project.projectId}/locations/us-central1/publishers/google/models/gemini-2.5-flash`),
///                 generationTriggerConfig: {
///                     generationRule: {
///                         idleDuration: "300s",
///                         overlapEventCount: 1,
///                     },
///                 },
///             },
///             similaritySearchConfig: {
///                 embeddingModel: project.then(project => `projects/${project.projectId}/locations/us-central1/publishers/google/models/text-embedding-005`),
///             },
///             disableMemoryRevisions: false,
///             customizationConfigs: [
///                 {
///                     scopeKeys: ["user_id"],
///                     enableThirdPersonMemories: true,
///                     consolidationConfig: {
///                         revisionsPerCandidateCount: 1,
///                     },
///                     memoryTopics: [{
///                         managedMemoryTopic: {
///                             managedTopicEnum: "USER_PREFERENCES",
///                         },
///                     }],
///                 },
///                 {
///                     scopeKeys: [
///                         "user_id",
///                         "session_id",
///                     ],
///                     enableThirdPersonMemories: true,
///                     memoryTopics: [{
///                         customMemoryTopic: {
///                             label: "session_scratchpad",
///                             description: "Active consideration details, recent queries, and temporary workflow state.",
///                         },
///                     }],
///                 },
///             ],
///             structuredMemoryConfigs: [
///                 {
///                     scopeKeys: ["user_id"],
///                     schemaConfigs: [{
///                         id: "user-profile",
///                         memorySchema: JSON.stringify({
///                             type: "OBJECT",
///                             properties: {
///                                 name: {
///                                     type: "STRING",
///                                     description: "Name of the user.",
///                                 },
///                                 technical_stack: {
///                                     type: "STRING",
///                                     description: "Comma-separated list tools or languages used by the user.",
///                                 },
///                                 primary_goal: {
///                                     type: "STRING",
///                                     description: "The main objective the user is pursuing.",
///                                 },
///                                 expertise_level: {
///                                     type: "STRING",
///                                     description: "Current skill level (e.g., Junior, Senior).",
///                                 },
///                                 job_status: {
///                                     type: "STRING",
///                                     description: "The job status of the individual",
///                                     "enum": [
///                                         "unemployed",
///                                         "part_time",
///                                         "full_time",
///                                         "student",
///                                     ],
///                                 },
///                             },
///                         }),
///                     }],
///                 },
///                 {
///                     scopeKeys: [
///                         "user_id",
///                         "session_id",
///                     ],
///                     schemaConfigs: [{
///                         id: "conversation-summary",
///                         memorySchema: JSON.stringify({
///                             type: "OBJECT",
///                             properties: {
///                                 main_topic: {
///                                     type: "STRING",
///                                     description: "The primary topic of this specific chat session.",
///                                 },
///                                 status: {
///                                     type: "STRING",
///                                     description: "Current resolution state of the discussion.",
///                                     "enum": [
///                                         "open",
///                                         "in_progress",
///                                         "resolved",
///                                     ],
///                                 },
///                             },
///                         }),
///                     }],
///                 },
///             ],
///             ttlConfig: {
///                 defaultTtl: "86400s",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// reasoning_engine = gcp.vertex.AiReasoningEngine("reasoning_engine",
///     display_name="re-ctx-spec",
///     description="Reasoning engine with context spec",
///     region="us-central1",
///     traffic_config={
///         "traffic_split_always_latest": {},
///     },
///     context_spec={
///         "memory_bank_config": {
///             "generation_config": {
///                 "model": f"projects/{project.project_id}/locations/us-central1/publishers/google/models/gemini-2.5-flash",
///                 "generation_trigger_config": {
///                     "generation_rule": {
///                         "idle_duration": "300s",
///                         "overlap_event_count": 1,
///                     },
///                 },
///             },
///             "similarity_search_config": {
///                 "embedding_model": f"projects/{project.project_id}/locations/us-central1/publishers/google/models/text-embedding-005",
///             },
///             "disable_memory_revisions": False,
///             "customization_configs": [
///                 {
///                     "scope_keys": ["user_id"],
///                     "enable_third_person_memories": True,
///                     "consolidation_config": {
///                         "revisions_per_candidate_count": 1,
///                     },
///                     "memory_topics": [{
///                         "managed_memory_topic": {
///                             "managed_topic_enum": "USER_PREFERENCES",
///                         },
///                     }],
///                 },
///                 {
///                     "scope_keys": [
///                         "user_id",
///                         "session_id",
///                     ],
///                     "enable_third_person_memories": True,
///                     "memory_topics": [{
///                         "custom_memory_topic": {
///                             "label": "session_scratchpad",
///                             "description": "Active consideration details, recent queries, and temporary workflow state.",
///                         },
///                     }],
///                 },
///             ],
///             "structured_memory_configs": [
///                 {
///                     "scope_keys": ["user_id"],
///                     "schema_configs": [{
///                         "id": "user-profile",
///                         "memory_schema": json.dumps({
///                             "type": "OBJECT",
///                             "properties": {
///                                 "name": {
///                                     "type": "STRING",
///                                     "description": "Name of the user.",
///                                 },
///                                 "technical_stack": {
///                                     "type": "STRING",
///                                     "description": "Comma-separated list tools or languages used by the user.",
///                                 },
///                                 "primary_goal": {
///                                     "type": "STRING",
///                                     "description": "The main objective the user is pursuing.",
///                                 },
///                                 "expertise_level": {
///                                     "type": "STRING",
///                                     "description": "Current skill level (e.g., Junior, Senior).",
///                                 },
///                                 "job_status": {
///                                     "type": "STRING",
///                                     "description": "The job status of the individual",
///                                     "enum": [
///                                         "unemployed",
///                                         "part_time",
///                                         "full_time",
///                                         "student",
///                                     ],
///                                 },
///                             },
///                         }),
///                     }],
///                 },
///                 {
///                     "scope_keys": [
///                         "user_id",
///                         "session_id",
///                     ],
///                     "schema_configs": [{
///                         "id": "conversation-summary",
///                         "memory_schema": json.dumps({
///                             "type": "OBJECT",
///                             "properties": {
///                                 "main_topic": {
///                                     "type": "STRING",
///                                     "description": "The primary topic of this specific chat session.",
///                                 },
///                                 "status": {
///                                     "type": "STRING",
///                                     "description": "Current resolution state of the discussion.",
///                                     "enum": [
///                                         "open",
///                                         "in_progress",
///                                         "resolved",
///                                     ],
///                                 },
///                             },
///                         }),
///                     }],
///                 },
///             ],
///             "ttl_config": {
///                 "default_ttl": "86400s",
///             },
///         },
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var reasoningEngine = new Gcp.Vertex.AiReasoningEngine("reasoning_engine", new()
///     {
///         DisplayName = "re-ctx-spec",
///         Description = "Reasoning engine with context spec",
///         Region = "us-central1",
///         TrafficConfig = new Gcp.Vertex.Inputs.AiReasoningEngineTrafficConfigArgs
///         {
///             TrafficSplitAlwaysLatest = null,
///         },
///         ContextSpec = new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecArgs
///         {
///             MemoryBankConfig = new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigArgs
///             {
///                 GenerationConfig = new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigArgs
///                 {
///                     Model = $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/locations/us-central1/publishers/google/models/gemini-2.5-flash",
///                     GenerationTriggerConfig = new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfigArgs
///                     {
///                         GenerationRule = new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfigGenerationRuleArgs
///                         {
///                             IdleDuration = "300s",
///                             OverlapEventCount = 1,
///                         },
///                     },
///                 },
///                 SimilaritySearchConfig = new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigSimilaritySearchConfigArgs
///                 {
///                     EmbeddingModel = $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/locations/us-central1/publishers/google/models/text-embedding-005",
///                 },
///                 DisableMemoryRevisions = false,
///                 CustomizationConfigs = new[]
///                 {
///                     new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigArgs
///                     {
///                         ScopeKeys = new[]
///                         {
///                             "user_id",
///                         },
///                         EnableThirdPersonMemories = true,
///                         ConsolidationConfig = new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigConsolidationConfigArgs
///                         {
///                             RevisionsPerCandidateCount = 1,
///                         },
///                         MemoryTopics = new[]
///                         {
///                             new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicArgs
///                             {
///                                 ManagedMemoryTopic = new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicManagedMemoryTopicArgs
///                                 {
///                                     ManagedTopicEnum = "USER_PREFERENCES",
///                                 },
///                             },
///                         },
///                     },
///                     new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigArgs
///                     {
///                         ScopeKeys = new[]
///                         {
///                             "user_id",
///                             "session_id",
///                         },
///                         EnableThirdPersonMemories = true,
///                         MemoryTopics = new[]
///                         {
///                             new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicArgs
///                             {
///                                 CustomMemoryTopic = new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicCustomMemoryTopicArgs
///                                 {
///                                     Label = "session_scratchpad",
///                                     Description = "Active consideration details, recent queries, and temporary workflow state.",
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 StructuredMemoryConfigs = new[]
///                 {
///                     new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigArgs
///                     {
///                         ScopeKeys = new[]
///                         {
///                             "user_id",
///                         },
///                         SchemaConfigs = new[]
///                         {
///                             new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigSchemaConfigArgs
///                             {
///                                 Id = "user-profile",
///                                 MemorySchema = JsonSerializer.Serialize(new Dictionary<string, object?>
///                                 {
///                                     ["type"] = "OBJECT",
///                                     ["properties"] = new Dictionary<string, object?>
///                                     {
///                                         ["name"] = new Dictionary<string, object?>
///                                         {
///                                             ["type"] = "STRING",
///                                             ["description"] = "Name of the user.",
///                                         },
///                                         ["technical_stack"] = new Dictionary<string, object?>
///                                         {
///                                             ["type"] = "STRING",
///                                             ["description"] = "Comma-separated list tools or languages used by the user.",
///                                         },
///                                         ["primary_goal"] = new Dictionary<string, object?>
///                                         {
///                                             ["type"] = "STRING",
///                                             ["description"] = "The main objective the user is pursuing.",
///                                         },
///                                         ["expertise_level"] = new Dictionary<string, object?>
///                                         {
///                                             ["type"] = "STRING",
///                                             ["description"] = "Current skill level (e.g., Junior, Senior).",
///                                         },
///                                         ["job_status"] = new Dictionary<string, object?>
///                                         {
///                                             ["type"] = "STRING",
///                                             ["description"] = "The job status of the individual",
///                                             ["enum"] = new[]
///                                             {
///                                                 "unemployed",
///                                                 "part_time",
///                                                 "full_time",
///                                                 "student",
///                                             },
///                                         },
///                                     },
///                                 }),
///                             },
///                         },
///                     },
///                     new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigArgs
///                     {
///                         ScopeKeys = new[]
///                         {
///                             "user_id",
///                             "session_id",
///                         },
///                         SchemaConfigs = new[]
///                         {
///                             new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigSchemaConfigArgs
///                             {
///                                 Id = "conversation-summary",
///                                 MemorySchema = JsonSerializer.Serialize(new Dictionary<string, object?>
///                                 {
///                                     ["type"] = "OBJECT",
///                                     ["properties"] = new Dictionary<string, object?>
///                                     {
///                                         ["main_topic"] = new Dictionary<string, object?>
///                                         {
///                                             ["type"] = "STRING",
///                                             ["description"] = "The primary topic of this specific chat session.",
///                                         },
///                                         ["status"] = new Dictionary<string, object?>
///                                         {
///                                             ["type"] = "STRING",
///                                             ["description"] = "Current resolution state of the discussion.",
///                                             ["enum"] = new[]
///                                             {
///                                                 "open",
///                                                 "in_progress",
///                                                 "resolved",
///                                             },
///                                         },
///                                     },
///                                 }),
///                             },
///                         },
///                     },
///                 },
///                 TtlConfig = new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigTtlConfigArgs
///                 {
///                     DefaultTtl = "86400s",
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
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"type": "OBJECT",
/// 			"properties": map[string]interface{}{
/// 				"name": map[string]string{
/// 					"type":        "STRING",
/// 					"description": "Name of the user.",
/// 				},
/// 				"technical_stack": map[string]string{
/// 					"type":        "STRING",
/// 					"description": "Comma-separated list tools or languages used by the user.",
/// 				},
/// 				"primary_goal": map[string]string{
/// 					"type":        "STRING",
/// 					"description": "The main objective the user is pursuing.",
/// 				},
/// 				"expertise_level": map[string]string{
/// 					"type":        "STRING",
/// 					"description": "Current skill level (e.g., Junior, Senior).",
/// 				},
/// 				"job_status": map[string]interface{}{
/// 					"type":        "STRING",
/// 					"description": "The job status of the individual",
/// 					"enum": []string{
/// 						"unemployed",
/// 						"part_time",
/// 						"full_time",
/// 						"student",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"type": "OBJECT",
/// 			"properties": map[string]interface{}{
/// 				"main_topic": map[string]string{
/// 					"type":        "STRING",
/// 					"description": "The primary topic of this specific chat session.",
/// 				},
/// 				"status": map[string]interface{}{
/// 					"type":        "STRING",
/// 					"description": "Current resolution state of the discussion.",
/// 					"enum": []string{
/// 						"open",
/// 						"in_progress",
/// 						"resolved",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = vertex.NewAiReasoningEngine(ctx, "reasoning_engine", &vertex.AiReasoningEngineArgs{
/// 			DisplayName: pulumi.String("re-ctx-spec"),
/// 			Description: pulumi.String("Reasoning engine with context spec"),
/// 			Region:      pulumi.String("us-central1"),
/// 			TrafficConfig: &vertex.AiReasoningEngineTrafficConfigArgs{
/// 				TrafficSplitAlwaysLatest: &vertex.AiReasoningEngineTrafficConfigTrafficSplitAlwaysLatestArgs{},
/// 			},
/// 			ContextSpec: &vertex.AiReasoningEngineContextSpecArgs{
/// 				MemoryBankConfig: &vertex.AiReasoningEngineContextSpecMemoryBankConfigArgs{
/// 					GenerationConfig: &vertex.AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigArgs{
/// 						Model: pulumi.Sprintf("projects/%v/locations/us-central1/publishers/google/models/gemini-2.5-flash", project.ProjectId),
/// 						GenerationTriggerConfig: &vertex.AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfigArgs{
/// 							GenerationRule: &vertex.AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfigGenerationRuleArgs{
/// 								IdleDuration:      pulumi.String("300s"),
/// 								OverlapEventCount: pulumi.Int(1),
/// 							},
/// 						},
/// 					},
/// 					SimilaritySearchConfig: &vertex.AiReasoningEngineContextSpecMemoryBankConfigSimilaritySearchConfigArgs{
/// 						EmbeddingModel: pulumi.Sprintf("projects/%v/locations/us-central1/publishers/google/models/text-embedding-005", project.ProjectId),
/// 					},
/// 					DisableMemoryRevisions: pulumi.Bool(false),
/// 					CustomizationConfigs: vertex.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigArray{
/// 						&vertex.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigArgs{
/// 							ScopeKeys: pulumi.StringArray{
/// 								pulumi.String("user_id"),
/// 							},
/// 							EnableThirdPersonMemories: pulumi.Bool(true),
/// 							ConsolidationConfig: &vertex.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigConsolidationConfigArgs{
/// 								RevisionsPerCandidateCount: pulumi.Int(1),
/// 							},
/// 							MemoryTopics: vertex.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicArray{
/// 								&vertex.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicArgs{
/// 									ManagedMemoryTopic: &vertex.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicManagedMemoryTopicArgs{
/// 										ManagedTopicEnum: pulumi.String("USER_PREFERENCES"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						&vertex.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigArgs{
/// 							ScopeKeys: pulumi.StringArray{
/// 								pulumi.String("user_id"),
/// 								pulumi.String("session_id"),
/// 							},
/// 							EnableThirdPersonMemories: pulumi.Bool(true),
/// 							MemoryTopics: vertex.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicArray{
/// 								&vertex.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicArgs{
/// 									CustomMemoryTopic: &vertex.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicCustomMemoryTopicArgs{
/// 										Label:       pulumi.String("session_scratchpad"),
/// 										Description: pulumi.String("Active consideration details, recent queries, and temporary workflow state."),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					StructuredMemoryConfigs: vertex.AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigArray{
/// 						&vertex.AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigArgs{
/// 							ScopeKeys: pulumi.StringArray{
/// 								pulumi.String("user_id"),
/// 							},
/// 							SchemaConfigs: vertex.AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigSchemaConfigArray{
/// 								&vertex.AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigSchemaConfigArgs{
/// 									Id:           pulumi.String("user-profile"),
/// 									MemorySchema: pulumi.String(json0),
/// 								},
/// 							},
/// 						},
/// 						&vertex.AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigArgs{
/// 							ScopeKeys: pulumi.StringArray{
/// 								pulumi.String("user_id"),
/// 								pulumi.String("session_id"),
/// 							},
/// 							SchemaConfigs: vertex.AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigSchemaConfigArray{
/// 								&vertex.AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigSchemaConfigArgs{
/// 									Id:           pulumi.String("conversation-summary"),
/// 									MemorySchema: pulumi.String(json1),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					TtlConfig: &vertex.AiReasoningEngineContextSpecMemoryBankConfigTtlConfigArgs{
/// 						DefaultTtl: pulumi.String("86400s"),
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
/// resource "gcp_vertex_aireasoningengine" "reasoning_engine" {
///   display_name = "re-ctx-spec"
///   description  = "Reasoning engine with context spec"
///   region       = "us-central1"
///   traffic_config = {
///     traffic_split_always_latest = {}
///   }
///   context_spec = {
///     memory_bank_config = {
///       generation_config = {
///         model ="projects/${data.gcp_organizations_getproject.project.project_id}/locations/us-central1/publishers/google/models/gemini-2.5-flash"
///         generation_trigger_config = {
///           generation_rule = {
///             idle_duration       = "300s"
///             overlap_event_count = 1
///           }
///         }
///       }
///       similarity_search_config = {
///         embedding_model ="projects/${data.gcp_organizations_getproject.project.project_id}/locations/us-central1/publishers/google/models/text-embedding-005"
///       }
///       disable_memory_revisions = false
///       customization_configs = [{
///         "scopeKeys"                 = ["user_id"]
///         "enableThirdPersonMemories" = true
///         "consolidationConfig" = {
///           "revisionsPerCandidateCount" = 1
///         }
///         "memoryTopics" = [{
///           "managedMemoryTopic" = {
///             "managedTopicEnum" = "USER_PREFERENCES"
///           }
///         }]
///         }, {
///         "scopeKeys"                 = ["user_id", "session_id"]
///         "enableThirdPersonMemories" = true
///         "memoryTopics" = [{
///           "customMemoryTopic" = {
///             "label"       = "session_scratchpad"
///             "description" = "Active consideration details, recent queries, and temporary workflow state."
///           }
///         }]
///       }]
///       structured_memory_configs = [{
///         "scopeKeys" = ["user_id"]
///         "schemaConfigs" = [{
///           "id" = "user-profile"
///           "memorySchema" = jsonencode({
///             "type" = "OBJECT"
///             "properties" = {
///               "name" = {
///                 "type"        = "STRING"
///                 "description" = "Name of the user."
///               }
///               "technical_stack" = {
///                 "type"        = "STRING"
///                 "description" = "Comma-separated list tools or languages used by the user."
///               }
///               "primary_goal" = {
///                 "type"        = "STRING"
///                 "description" = "The main objective the user is pursuing."
///               }
///               "expertise_level" = {
///                 "type"        = "STRING"
///                 "description" = "Current skill level (e.g., Junior, Senior)."
///               }
///               "job_status" = {
///                 "type"        = "STRING"
///                 "description" = "The job status of the individual"
///                 "enum"        = ["unemployed", "part_time", "full_time", "student"]
///               }
///             }
///           })
///         }]
///         }, {
///         "scopeKeys" = ["user_id", "session_id"]
///         "schemaConfigs" = [{
///           "id" = "conversation-summary"
///           "memorySchema" = jsonencode({
///             "type" = "OBJECT"
///             "properties" = {
///               "main_topic" = {
///                 "type"        = "STRING"
///                 "description" = "The primary topic of this specific chat session."
///               }
///               "status" = {
///                 "type"        = "STRING"
///                 "description" = "Current resolution state of the discussion."
///                 "enum"        = ["open", "in_progress", "resolved"]
///               }
///             }
///           })
///         }]
///       }]
///       ttl_config = {
///         default_ttl = "86400s"
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
/// import com.pulumi.gcp.vertex.AiReasoningEngine;
/// import com.pulumi.gcp.vertex.AiReasoningEngineArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineTrafficConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineTrafficConfigTrafficSplitAlwaysLatestArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineContextSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineContextSpecMemoryBankConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfigGenerationRuleArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineContextSpecMemoryBankConfigSimilaritySearchConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigConsolidationConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicManagedMemoryTopicArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicCustomMemoryTopicArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigSchemaConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineContextSpecMemoryBankConfigTtlConfigArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var reasoningEngine = new AiReasoningEngine("reasoningEngine", AiReasoningEngineArgs.builder()
///             .displayName("re-ctx-spec")
///             .description("Reasoning engine with context spec")
///             .region("us-central1")
///             .trafficConfig(AiReasoningEngineTrafficConfigArgs.builder()
///                 .trafficSplitAlwaysLatest(AiReasoningEngineTrafficConfigTrafficSplitAlwaysLatestArgs.builder()
///                     .build())
///                 .build())
///             .contextSpec(AiReasoningEngineContextSpecArgs.builder()
///                 .memoryBankConfig(AiReasoningEngineContextSpecMemoryBankConfigArgs.builder()
///                     .generationConfig(AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigArgs.builder()
///                         .model(String.format("projects/%s/locations/us-central1/publishers/google/models/gemini-2.5-flash", project.projectId()))
///                         .generationTriggerConfig(AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfigArgs.builder()
///                             .generationRule(AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfigGenerationRuleArgs.builder()
///                                 .idleDuration("300s")
///                                 .overlapEventCount(1)
///                                 .build())
///                             .build())
///                         .build())
///                     .similaritySearchConfig(AiReasoningEngineContextSpecMemoryBankConfigSimilaritySearchConfigArgs.builder()
///                         .embeddingModel(String.format("projects/%s/locations/us-central1/publishers/google/models/text-embedding-005", project.projectId()))
///                         .build())
///                     .disableMemoryRevisions(false)
///                     .customizationConfigs(
///                         AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigArgs.builder()
///                             .scopeKeys("user_id")
///                             .enableThirdPersonMemories(true)
///                             .consolidationConfig(AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigConsolidationConfigArgs.builder()
///                                 .revisionsPerCandidateCount(1)
///                                 .build())
///                             .memoryTopics(AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicArgs.builder()
///                                 .managedMemoryTopic(AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicManagedMemoryTopicArgs.builder()
///                                     .managedTopicEnum("USER_PREFERENCES")
///                                     .build())
///                                 .build())
///                             .build(),
///                         AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigArgs.builder()
///                             .scopeKeys(
///                                 "user_id",
///                                 "session_id")
///                             .enableThirdPersonMemories(true)
///                             .memoryTopics(AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicArgs.builder()
///                                 .customMemoryTopic(AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicCustomMemoryTopicArgs.builder()
///                                     .label("session_scratchpad")
///                                     .description("Active consideration details, recent queries, and temporary workflow state.")
///                                     .build())
///                                 .build())
///                             .build())
///                     .structuredMemoryConfigs(
///                         AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigArgs.builder()
///                             .scopeKeys("user_id")
///                             .schemaConfigs(AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigSchemaConfigArgs.builder()
///                                 .id("user-profile")
///                                 .memorySchema(serializeJson(
///                                     jsonObject(
///                                         jsonProperty("type", "OBJECT"),
///                                         jsonProperty("properties", jsonObject(
///                                             jsonProperty("name", jsonObject(
///                                                 jsonProperty("type", "STRING"),
///                                                 jsonProperty("description", "Name of the user.")
///                                             )),
///                                             jsonProperty("technical_stack", jsonObject(
///                                                 jsonProperty("type", "STRING"),
///                                                 jsonProperty("description", "Comma-separated list tools or languages used by the user.")
///                                             )),
///                                             jsonProperty("primary_goal", jsonObject(
///                                                 jsonProperty("type", "STRING"),
///                                                 jsonProperty("description", "The main objective the user is pursuing.")
///                                             )),
///                                             jsonProperty("expertise_level", jsonObject(
///                                                 jsonProperty("type", "STRING"),
///                                                 jsonProperty("description", "Current skill level (e.g., Junior, Senior).")
///                                             )),
///                                             jsonProperty("job_status", jsonObject(
///                                                 jsonProperty("type", "STRING"),
///                                                 jsonProperty("description", "The job status of the individual"),
///                                                 jsonProperty("enum", jsonArray(
///                                                     "unemployed",
///                                                     "part_time",
///                                                     "full_time",
///                                                     "student"
///                                                 ))
///                                             ))
///                                         ))
///                                     )))
///                                 .build())
///                             .build(),
///                         AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigArgs.builder()
///                             .scopeKeys(
///                                 "user_id",
///                                 "session_id")
///                             .schemaConfigs(AiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigSchemaConfigArgs.builder()
///                                 .id("conversation-summary")
///                                 .memorySchema(serializeJson(
///                                     jsonObject(
///                                         jsonProperty("type", "OBJECT"),
///                                         jsonProperty("properties", jsonObject(
///                                             jsonProperty("main_topic", jsonObject(
///                                                 jsonProperty("type", "STRING"),
///                                                 jsonProperty("description", "The primary topic of this specific chat session.")
///                                             )),
///                                             jsonProperty("status", jsonObject(
///                                                 jsonProperty("type", "STRING"),
///                                                 jsonProperty("description", "Current resolution state of the discussion."),
///                                                 jsonProperty("enum", jsonArray(
///                                                     "open",
///                                                     "in_progress",
///                                                     "resolved"
///                                                 ))
///                                             ))
///                                         ))
///                                     )))
///                                 .build())
///                             .build())
///                     .ttlConfig(AiReasoningEngineContextSpecMemoryBankConfigTtlConfigArgs.builder()
///                         .defaultTtl("86400s")
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
///   reasoningEngine:
///     type: gcp:vertex:AiReasoningEngine
///     name: reasoning_engine
///     properties:
///       displayName: re-ctx-spec
///       description: Reasoning engine with context spec
///       region: us-central1
///       trafficConfig:
///         trafficSplitAlwaysLatest: {}
///       contextSpec:
///         memoryBankConfig:
///           generationConfig:
///             model: projects/${project.projectId}/locations/us-central1/publishers/google/models/gemini-2.5-flash
///             generationTriggerConfig:
///               generationRule:
///                 idleDuration: 300s
///                 overlapEventCount: 1
///           similaritySearchConfig:
///             embeddingModel: projects/${project.projectId}/locations/us-central1/publishers/google/models/text-embedding-005
///           disableMemoryRevisions: false
///           customizationConfigs:
///             - scopeKeys:
///                 - user_id
///               enableThirdPersonMemories: true
///               consolidationConfig:
///                 revisionsPerCandidateCount: 1
///               memoryTopics:
///                 - managedMemoryTopic:
///                     managedTopicEnum: USER_PREFERENCES
///             - scopeKeys:
///                 - user_id
///                 - session_id
///               enableThirdPersonMemories: true
///               memoryTopics:
///                 - customMemoryTopic:
///                     label: session_scratchpad
///                     description: Active consideration details, recent queries, and temporary workflow state.
///           structuredMemoryConfigs:
///             - scopeKeys:
///                 - user_id
///               schemaConfigs:
///                 - id: user-profile
///                   memorySchema:
///                     fn::toJSON:
///                       type: OBJECT
///                       properties:
///                         name:
///                           type: STRING
///                           description: Name of the user.
///                         technical_stack:
///                           type: STRING
///                           description: Comma-separated list tools or languages used by the user.
///                         primary_goal:
///                           type: STRING
///                           description: The main objective the user is pursuing.
///                         expertise_level:
///                           type: STRING
///                           description: Current skill level (e.g., Junior, Senior).
///                         job_status:
///                           type: STRING
///                           description: The job status of the individual
///                           enum:
///                             - unemployed
///                             - part_time
///                             - full_time
///                             - student
///             - scopeKeys:
///                 - user_id
///                 - session_id
///               schemaConfigs:
///                 - id: conversation-summary
///                   memorySchema:
///                     fn::toJSON:
///                       type: OBJECT
///                       properties:
///                         main_topic:
///                           type: STRING
///                           description: The primary topic of this specific chat session.
///                         status:
///                           type: STRING
///                           description: Current resolution state of the discussion.
///                           enum:
///                             - open
///                             - in_progress
///                             - resolved
///           ttlConfig:
///             defaultTtl: 86400s
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Vertex Ai Reasoning Engine Granular Ttl
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const reasoningEngine = new gcp.vertex.AiReasoningEngine("reasoning_engine", {
///     displayName: "re-gran-ttl",
///     description: "Reasoning engine with granular ttl",
///     region: "us-central1",
///     contextSpec: {
///         memoryBankConfig: {
///             generationConfig: {
///                 model: project.then(project => `projects/${project.projectId}/locations/us-central1/publishers/google/models/gemini-2.5-flash`),
///             },
///             similaritySearchConfig: {
///                 embeddingModel: project.then(project => `projects/${project.projectId}/locations/us-central1/publishers/google/models/text-embedding-005`),
///             },
///             disableMemoryRevisions: false,
///             ttlConfig: {
///                 memoryRevisionDefaultTtl: "86400s",
///                 granularTtlConfig: {
///                     createTtl: "86400s",
///                     generateCreatedTtl: "86400s",
///                     generateUpdatedTtl: "86400s",
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// reasoning_engine = gcp.vertex.AiReasoningEngine("reasoning_engine",
///     display_name="re-gran-ttl",
///     description="Reasoning engine with granular ttl",
///     region="us-central1",
///     context_spec={
///         "memory_bank_config": {
///             "generation_config": {
///                 "model": f"projects/{project.project_id}/locations/us-central1/publishers/google/models/gemini-2.5-flash",
///             },
///             "similarity_search_config": {
///                 "embedding_model": f"projects/{project.project_id}/locations/us-central1/publishers/google/models/text-embedding-005",
///             },
///             "disable_memory_revisions": False,
///             "ttl_config": {
///                 "memory_revision_default_ttl": "86400s",
///                 "granular_ttl_config": {
///                     "create_ttl": "86400s",
///                     "generate_created_ttl": "86400s",
///                     "generate_updated_ttl": "86400s",
///                 },
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var reasoningEngine = new Gcp.Vertex.AiReasoningEngine("reasoning_engine", new()
///     {
///         DisplayName = "re-gran-ttl",
///         Description = "Reasoning engine with granular ttl",
///         Region = "us-central1",
///         ContextSpec = new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecArgs
///         {
///             MemoryBankConfig = new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigArgs
///             {
///                 GenerationConfig = new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigArgs
///                 {
///                     Model = $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/locations/us-central1/publishers/google/models/gemini-2.5-flash",
///                 },
///                 SimilaritySearchConfig = new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigSimilaritySearchConfigArgs
///                 {
///                     EmbeddingModel = $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/locations/us-central1/publishers/google/models/text-embedding-005",
///                 },
///                 DisableMemoryRevisions = false,
///                 TtlConfig = new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigTtlConfigArgs
///                 {
///                     MemoryRevisionDefaultTtl = "86400s",
///                     GranularTtlConfig = new Gcp.Vertex.Inputs.AiReasoningEngineContextSpecMemoryBankConfigTtlConfigGranularTtlConfigArgs
///                     {
///                         CreateTtl = "86400s",
///                         GenerateCreatedTtl = "86400s",
///                         GenerateUpdatedTtl = "86400s",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiReasoningEngine(ctx, "reasoning_engine", &vertex.AiReasoningEngineArgs{
/// 			DisplayName: pulumi.String("re-gran-ttl"),
/// 			Description: pulumi.String("Reasoning engine with granular ttl"),
/// 			Region:      pulumi.String("us-central1"),
/// 			ContextSpec: &vertex.AiReasoningEngineContextSpecArgs{
/// 				MemoryBankConfig: &vertex.AiReasoningEngineContextSpecMemoryBankConfigArgs{
/// 					GenerationConfig: &vertex.AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigArgs{
/// 						Model: pulumi.Sprintf("projects/%v/locations/us-central1/publishers/google/models/gemini-2.5-flash", project.ProjectId),
/// 					},
/// 					SimilaritySearchConfig: &vertex.AiReasoningEngineContextSpecMemoryBankConfigSimilaritySearchConfigArgs{
/// 						EmbeddingModel: pulumi.Sprintf("projects/%v/locations/us-central1/publishers/google/models/text-embedding-005", project.ProjectId),
/// 					},
/// 					DisableMemoryRevisions: pulumi.Bool(false),
/// 					TtlConfig: &vertex.AiReasoningEngineContextSpecMemoryBankConfigTtlConfigArgs{
/// 						MemoryRevisionDefaultTtl: pulumi.String("86400s"),
/// 						GranularTtlConfig: &vertex.AiReasoningEngineContextSpecMemoryBankConfigTtlConfigGranularTtlConfigArgs{
/// 							CreateTtl:          pulumi.String("86400s"),
/// 							GenerateCreatedTtl: pulumi.String("86400s"),
/// 							GenerateUpdatedTtl: pulumi.String("86400s"),
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
/// resource "gcp_vertex_aireasoningengine" "reasoning_engine" {
///   display_name = "re-gran-ttl"
///   description  = "Reasoning engine with granular ttl"
///   region       = "us-central1"
///   context_spec = {
///     memory_bank_config = {
///       generation_config = {
///         model ="projects/${data.gcp_organizations_getproject.project.project_id}/locations/us-central1/publishers/google/models/gemini-2.5-flash"
///       }
///       similarity_search_config = {
///         embedding_model ="projects/${data.gcp_organizations_getproject.project.project_id}/locations/us-central1/publishers/google/models/text-embedding-005"
///       }
///       disable_memory_revisions = false
///       ttl_config = {
///         memory_revision_default_ttl = "86400s"
///         granular_ttl_config = {
///           create_ttl           = "86400s"
///           generate_created_ttl = "86400s"
///           generate_updated_ttl = "86400s"
///         }
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
/// import com.pulumi.gcp.vertex.AiReasoningEngine;
/// import com.pulumi.gcp.vertex.AiReasoningEngineArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineContextSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineContextSpecMemoryBankConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineContextSpecMemoryBankConfigSimilaritySearchConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineContextSpecMemoryBankConfigTtlConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineContextSpecMemoryBankConfigTtlConfigGranularTtlConfigArgs;
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
///         var reasoningEngine = new AiReasoningEngine("reasoningEngine", AiReasoningEngineArgs.builder()
///             .displayName("re-gran-ttl")
///             .description("Reasoning engine with granular ttl")
///             .region("us-central1")
///             .contextSpec(AiReasoningEngineContextSpecArgs.builder()
///                 .memoryBankConfig(AiReasoningEngineContextSpecMemoryBankConfigArgs.builder()
///                     .generationConfig(AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigArgs.builder()
///                         .model(String.format("projects/%s/locations/us-central1/publishers/google/models/gemini-2.5-flash", project.projectId()))
///                         .build())
///                     .similaritySearchConfig(AiReasoningEngineContextSpecMemoryBankConfigSimilaritySearchConfigArgs.builder()
///                         .embeddingModel(String.format("projects/%s/locations/us-central1/publishers/google/models/text-embedding-005", project.projectId()))
///                         .build())
///                     .disableMemoryRevisions(false)
///                     .ttlConfig(AiReasoningEngineContextSpecMemoryBankConfigTtlConfigArgs.builder()
///                         .memoryRevisionDefaultTtl("86400s")
///                         .granularTtlConfig(AiReasoningEngineContextSpecMemoryBankConfigTtlConfigGranularTtlConfigArgs.builder()
///                             .createTtl("86400s")
///                             .generateCreatedTtl("86400s")
///                             .generateUpdatedTtl("86400s")
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
///   reasoningEngine:
///     type: gcp:vertex:AiReasoningEngine
///     name: reasoning_engine
///     properties:
///       displayName: re-gran-ttl
///       description: Reasoning engine with granular ttl
///       region: us-central1
///       contextSpec:
///         memoryBankConfig:
///           generationConfig:
///             model: projects/${project.projectId}/locations/us-central1/publishers/google/models/gemini-2.5-flash
///           similaritySearchConfig:
///             embeddingModel: projects/${project.projectId}/locations/us-central1/publishers/google/models/text-embedding-005
///           disableMemoryRevisions: false
///           ttlConfig:
///             memoryRevisionDefaultTtl: 86400s
///             granularTtlConfig:
///               createTtl: 86400s
///               generateCreatedTtl: 86400s
///               generateUpdatedTtl: 86400s
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Vertex Ai Reasoning Engine Traffic Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const reasoningEngine = new gcp.vertex.AiReasoningEngine("reasoning_engine", {
///     displayName: "re-traffic-cfg",
///     description: "Reasoning engine with traffic config",
///     region: "us-central1",
///     spec: {
///         agentFramework: "langchain",
///     },
///     trafficConfig: {
///         trafficSplitAlwaysLatest: {},
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// reasoning_engine = gcp.vertex.AiReasoningEngine("reasoning_engine",
///     display_name="re-traffic-cfg",
///     description="Reasoning engine with traffic config",
///     region="us-central1",
///     spec={
///         "agent_framework": "langchain",
///     },
///     traffic_config={
///         "traffic_split_always_latest": {},
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
///     var reasoningEngine = new Gcp.Vertex.AiReasoningEngine("reasoning_engine", new()
///     {
///         DisplayName = "re-traffic-cfg",
///         Description = "Reasoning engine with traffic config",
///         Region = "us-central1",
///         Spec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecArgs
///         {
///             AgentFramework = "langchain",
///         },
///         TrafficConfig = new Gcp.Vertex.Inputs.AiReasoningEngineTrafficConfigArgs
///         {
///             TrafficSplitAlwaysLatest = null,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiReasoningEngine(ctx, "reasoning_engine", &vertex.AiReasoningEngineArgs{
/// 			DisplayName: pulumi.String("re-traffic-cfg"),
/// 			Description: pulumi.String("Reasoning engine with traffic config"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Spec: &vertex.AiReasoningEngineSpecArgs{
/// 				AgentFramework: pulumi.String("langchain"),
/// 			},
/// 			TrafficConfig: &vertex.AiReasoningEngineTrafficConfigArgs{
/// 				TrafficSplitAlwaysLatest: &vertex.AiReasoningEngineTrafficConfigTrafficSplitAlwaysLatestArgs{},
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
/// resource "gcp_vertex_aireasoningengine" "reasoning_engine" {
///   display_name = "re-traffic-cfg"
///   description  = "Reasoning engine with traffic config"
///   region       = "us-central1"
///   spec = {
///     agent_framework = "langchain"
///   }
///   traffic_config = {
///     traffic_split_always_latest = {}
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiReasoningEngine;
/// import com.pulumi.gcp.vertex.AiReasoningEngineArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineTrafficConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineTrafficConfigTrafficSplitAlwaysLatestArgs;
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
///         var reasoningEngine = new AiReasoningEngine("reasoningEngine", AiReasoningEngineArgs.builder()
///             .displayName("re-traffic-cfg")
///             .description("Reasoning engine with traffic config")
///             .region("us-central1")
///             .spec(AiReasoningEngineSpecArgs.builder()
///                 .agentFramework("langchain")
///                 .build())
///             .trafficConfig(AiReasoningEngineTrafficConfigArgs.builder()
///                 .trafficSplitAlwaysLatest(AiReasoningEngineTrafficConfigTrafficSplitAlwaysLatestArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   reasoningEngine:
///     type: gcp:vertex:AiReasoningEngine
///     name: reasoning_engine
///     properties:
///       displayName: re-traffic-cfg
///       description: Reasoning engine with traffic config
///       region: us-central1
///       spec:
///         agentFramework: langchain
///       trafficConfig:
///         trafficSplitAlwaysLatest: {}
/// ```
///
///
/// ## Import
///
/// ReasoningEngine can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/reasoningEngines/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, ReasoningEngine can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiReasoningEngine:AiReasoningEngine default projects/{{project}}/locations/{{region}}/reasoningEngines/{{name}}
/// $ pulumi import gcp:vertex/aiReasoningEngine:AiReasoningEngine default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiReasoningEngine:AiReasoningEngine default {{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiReasoningEngine:AiReasoningEngine default {{name}}
/// ```
class AiReasoningEngine extends pulumi.CustomResource {
  /// (Optional, Beta)
  /// Optional. Configuration for how Agent Engine sub-resources should manage context.
  /// Structure is documented below.
  late final pulumi.Output<AiReasoningEngineContextSpec> contextSpec;
  /// The timestamp of when the Index was created in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> createTime;
  /// Optional. The deletion policy for the reasoning engine.
  /// Setting this to FORCE allows the reasoning engine to be deleted regardless of child undeleted resources.
  ///
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is permitted.
  late final pulumi.Output<String> deletionPolicy;
  /// The description of the ReasoningEngine.
  late final pulumi.Output<String?> description;
  /// The display name of the ReasoningEngine.
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Optional. Customer-managed encryption key spec for a ReasoningEngine.
  /// If set, this ReasoningEngine and all sub-resources of this ReasoningEngine
  /// will be secured by this key.
  /// Structure is documented below.
  late final pulumi.Output<AiReasoningEngineEncryptionSpec?> encryptionSpec;
  /// The labels associated with this ReasoningEngine. You can use these to
  /// organize and group your ReasoningEngines.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The generated name of the ReasoningEngine, in the format
  /// projects/{project}/locations/{location}/reasoningEngines/{reasoningEngine}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region of the reasoning engine. eg us-central1
  late final pulumi.Output<String?> region;
  /// Optional. Configurations of the ReasoningEngine.
  /// Structure is documented below.
  late final pulumi.Output<AiReasoningEngineSpec> spec;
  /// (Optional, Beta)
  /// Optional. Traffic distribution configuration for the Reasoning Engine.
  /// &gt; **Note:** Because revision IDs do not exist before the resource is created, the best practice for initial deployment is to set `trafficSplitAlwaysLatest {}`. Once the resource is created, you can update the configuration to a manual split using newly generated revision IDs, short names (e.g. `rev-1`), or keywords such as `LATEST` and `PREVIOUS`.
  /// Structure is documented below.
  late final pulumi.Output<AiReasoningEngineTrafficConfig> trafficConfig;
  /// The timestamp of when the Index was last updated in RFC3339 UTC "Zulu"
  /// format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> updateTime;
  /// (Beta)
  /// Output only. The URL of the reasoning engine.
  late final pulumi.Output<String> url;

  /// Creates a new [AiReasoningEngine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiReasoningEngine]. {@macro pulumi_vertex_ai_reasoning_engine_ai_reasoning_engine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiReasoningEngine(
    String name, {
    AiReasoningEngineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiReasoningEngine:AiReasoningEngine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    contextSpec = registerOutput<AiReasoningEngineContextSpec>('contextSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiReasoningEngineContextSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<AiReasoningEngineEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiReasoningEngineEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String?>('region');
    spec = registerOutput<AiReasoningEngineSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiReasoningEngineSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trafficConfig = registerOutput<AiReasoningEngineTrafficConfig>('trafficConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiReasoningEngineTrafficConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
    url = registerOutput<String>('url');
  }

  /// Gets an existing [AiReasoningEngine] resource's state with the given [name] and [id].
  static AiReasoningEngine get(
    String name,
    pulumi.Input<String> id, {
    AiReasoningEngineState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiReasoningEngine._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiReasoningEngine._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiReasoningEngine:AiReasoningEngine',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    contextSpec = registerOutput<AiReasoningEngineContextSpec>('contextSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiReasoningEngineContextSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<AiReasoningEngineEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiReasoningEngineEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String?>('region');
    spec = registerOutput<AiReasoningEngineSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiReasoningEngineSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trafficConfig = registerOutput<AiReasoningEngineTrafficConfig>('trafficConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiReasoningEngineTrafficConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
    url = registerOutput<String>('url');
  }

  /// Creates a typed reference to an existing [AiReasoningEngine] resource.
  AiReasoningEngine.reference(String urn)
    : super(
        'gcp:vertex/aiReasoningEngine:AiReasoningEngine',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    contextSpec = registerOutput<AiReasoningEngineContextSpec>('contextSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiReasoningEngineContextSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<AiReasoningEngineEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiReasoningEngineEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String?>('region');
    spec = registerOutput<AiReasoningEngineSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiReasoningEngineSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trafficConfig = registerOutput<AiReasoningEngineTrafficConfig>('trafficConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiReasoningEngineTrafficConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
    url = registerOutput<String>('url');
  }
}
