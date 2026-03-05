import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_index_endpoint_deployed_index_args.dart';
import 'ai_index_endpoint_deployed_index_automatic_resources.dart';
import 'ai_index_endpoint_deployed_index_dedicated_resources.dart';
import 'ai_index_endpoint_deployed_index_deployed_index_auth_config.dart';
import 'ai_index_endpoint_deployed_index_state.dart';

/// An endpoint indexes are deployed into. An index endpoint can have multiple deployed indexes.
///
///
/// To get more information about IndexEndpointDeployedIndex, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexEndpoints#DeployedIndex)
///
/// ## Example Usage
///
/// ### Vertex Ai Index Endpoint Deployed Index Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "bucket-name",
///     location: "us-central1",
///     uniformBucketLevelAccess: true,
/// });
/// const index = new gcp.vertex.AiIndex("index", {
///     region: "us-central1",
///     displayName: "test-index",
///     description: "index for test",
///     indexUpdateMethod: "BATCH_UPDATE",
///     labels: {
///         foo: "bar",
///     },
///     metadata: {
///         contentsDeltaUri: pulumi.interpolate`gs://${bucket.name}/contents`,
///         config: {
///             dimensions: 2,
///             approximateNeighborsCount: 150,
///             shardSize: "SHARD_SIZE_SMALL",
///             distanceMeasureType: "DOT_PRODUCT_DISTANCE",
///             algorithmConfig: {
///                 treeAhConfig: {
///                     leafNodeEmbeddingCount: 500,
///                     leafNodesToSearchPercent: 7,
///                 },
///             },
///         },
///     },
/// });
/// const vertexNetwork = gcp.compute.getNetwork({
///     name: "network-name",
/// });
/// const project = gcp.organizations.getProject({});
/// const vertexIndexEndpointDeployed = new gcp.vertex.AiIndexEndpoint("vertex_index_endpoint_deployed", {
///     displayName: "sample-endpoint",
///     description: "A sample vertex endpoint",
///     region: "us-central1",
///     network: Promise.all([project, vertexNetwork]).then(([project, vertexNetwork]) => `projects/${project.number}/global/networks/${vertexNetwork.name}`),
///     labels: {
///         "label-one": "value-one",
///     },
/// });
/// const sa = new gcp.serviceaccount.Account("sa", {accountId: "vertex-sa"});
/// const basicDeployedIndex = new gcp.vertex.AiIndexEndpointDeployedIndex("basic_deployed_index", {
///     deployedIndexId: "deployed_index_id",
///     displayName: "vertex-deployed-index",
///     region: "us-central1",
///     index: index.id,
///     indexEndpoint: vertexIndexEndpointDeployed.id,
///     enableAccessLogging: false,
///     reservedIpRanges: ["vertex-ai-range"],
///     deployedIndexAuthConfig: {
///         authProvider: {
///             audiences: ["123456-my-app"],
///             allowedIssuers: [sa.email],
///         },
///     },
/// });
/// // The sample data comes from the following link:
/// // https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
/// const data = new gcp.storage.BucketObject("data", {
///     name: "contents/data.json",
///     bucket: bucket.name,
///     content: `{\\"id\\": \\"42\\", \\"embedding\\": [0.5, 1.0], \\"restricts\\": [{\\"namespace\\": \\"class\\", \\"allow\\": [\\"cat\\", \\"pet\\"]},{\\"namespace\\": \\"category\\", \\"allow\\": [\\"feline\\"]}]}
/// {\\"id\\": \\"43\\", \\"embedding\\": [0.6, 1.0], \\"restricts\\": [{\\"namespace\\": \\"class\\", \\"allow\\": [\\"dog\\", \\"pet\\"]},{\\"namespace\\": \\"category\\", \\"allow\\": [\\"canine\\"]}]}
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="bucket-name",
///     location="us-central1",
///     uniform_bucket_level_access=True)
/// index = gcp.vertex.AiIndex("index",
///     region="us-central1",
///     display_name="test-index",
///     description="index for test",
///     index_update_method="BATCH_UPDATE",
///     labels={
///         "foo": "bar",
///     },
///     metadata={
///         "contents_delta_uri": bucket.name.apply(lambda name: f"gs://{name}/contents"),
///         "config": {
///             "dimensions": 2,
///             "approximate_neighbors_count": 150,
///             "shard_size": "SHARD_SIZE_SMALL",
///             "distance_measure_type": "DOT_PRODUCT_DISTANCE",
///             "algorithm_config": {
///                 "tree_ah_config": {
///                     "leaf_node_embedding_count": 500,
///                     "leaf_nodes_to_search_percent": 7,
///                 },
///             },
///         },
///     })
/// vertex_network = gcp.compute.get_network(name="network-name")
/// project = gcp.organizations.get_project()
/// vertex_index_endpoint_deployed = gcp.vertex.AiIndexEndpoint("vertex_index_endpoint_deployed",
///     display_name="sample-endpoint",
///     description="A sample vertex endpoint",
///     region="us-central1",
///     network=f"projects/{project.number}/global/networks/{vertex_network.name}",
///     labels={
///         "label-one": "value-one",
///     })
/// sa = gcp.serviceaccount.Account("sa", account_id="vertex-sa")
/// basic_deployed_index = gcp.vertex.AiIndexEndpointDeployedIndex("basic_deployed_index",
///     deployed_index_id="deployed_index_id",
///     display_name="vertex-deployed-index",
///     region="us-central1",
///     index=index.id,
///     index_endpoint=vertex_index_endpoint_deployed.id,
///     enable_access_logging=False,
///     reserved_ip_ranges=["vertex-ai-range"],
///     deployed_index_auth_config={
///         "auth_provider": {
///             "audiences": ["123456-my-app"],
///             "allowed_issuers": [sa.email],
///         },
///     })
/// # The sample data comes from the following link:
/// # https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
/// data = gcp.storage.BucketObject("data",
///     name="contents/data.json",
///     bucket=bucket.name,
///     content="""{\"id\": \"42\", \"embedding\": [0.5, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"cat\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"feline\"]}]}
/// {\"id\": \"43\", \"embedding\": [0.6, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"dog\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"canine\"]}]}
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "bucket-name",
///         Location = "us-central1",
///         UniformBucketLevelAccess = true,
///     });
///
///     var index = new Gcp.Vertex.AiIndex("index", new()
///     {
///         Region = "us-central1",
///         DisplayName = "test-index",
///         Description = "index for test",
///         IndexUpdateMethod = "BATCH_UPDATE",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Metadata = new Gcp.Vertex.Inputs.AiIndexMetadataArgs
///         {
///             ContentsDeltaUri = bucket.Name.Apply(name => $"gs://{name}/contents"),
///             Config = new Gcp.Vertex.Inputs.AiIndexMetadataConfigArgs
///             {
///                 Dimensions = 2,
///                 ApproximateNeighborsCount = 150,
///                 ShardSize = "SHARD_SIZE_SMALL",
///                 DistanceMeasureType = "DOT_PRODUCT_DISTANCE",
///                 AlgorithmConfig = new Gcp.Vertex.Inputs.AiIndexMetadataConfigAlgorithmConfigArgs
///                 {
///                     TreeAhConfig = new Gcp.Vertex.Inputs.AiIndexMetadataConfigAlgorithmConfigTreeAhConfigArgs
///                     {
///                         LeafNodeEmbeddingCount = 500,
///                         LeafNodesToSearchPercent = 7,
///                     },
///                 },
///             },
///         },
///     });
///
///     var vertexNetwork = Gcp.Compute.GetNetwork.Invoke(new()
///     {
///         Name = "network-name",
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var vertexIndexEndpointDeployed = new Gcp.Vertex.AiIndexEndpoint("vertex_index_endpoint_deployed", new()
///     {
///         DisplayName = "sample-endpoint",
///         Description = "A sample vertex endpoint",
///         Region = "us-central1",
///         Network = Output.Tuple(project, vertexNetwork).Apply(values =>
///         {
///             var project = values.Item1;
///             var vertexNetwork = values.Item2;
///             return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/global/networks/{vertexNetwork.Apply(getNetworkResult => getNetworkResult.Name)}";
///         }),
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
///     var sa = new Gcp.ServiceAccount.Account("sa", new()
///     {
///         AccountId = "vertex-sa",
///     });
///
///     var basicDeployedIndex = new Gcp.Vertex.AiIndexEndpointDeployedIndex("basic_deployed_index", new()
///     {
///         DeployedIndexId = "deployed_index_id",
///         DisplayName = "vertex-deployed-index",
///         Region = "us-central1",
///         Index = index.Id,
///         IndexEndpoint = vertexIndexEndpointDeployed.Id,
///         EnableAccessLogging = false,
///         ReservedIpRanges = new[]
///         {
///             "vertex-ai-range",
///         },
///         DeployedIndexAuthConfig = new Gcp.Vertex.Inputs.AiIndexEndpointDeployedIndexDeployedIndexAuthConfigArgs
///         {
///             AuthProvider = new Gcp.Vertex.Inputs.AiIndexEndpointDeployedIndexDeployedIndexAuthConfigAuthProviderArgs
///             {
///                 Audiences = new[]
///                 {
///                     "123456-my-app",
///                 },
///                 AllowedIssuers = new[]
///                 {
///                     sa.Email,
///                 },
///             },
///         },
///     });
///
///     // The sample data comes from the following link:
///     // https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
///     var data = new Gcp.Storage.BucketObject("data", new()
///     {
///         Name = "contents/data.json",
///         Bucket = bucket.Name,
///         Content = @"{\""id\"": \""42\"", \""embedding\"": [0.5, 1.0], \""restricts\"": [{\""namespace\"": \""class\"", \""allow\"": [\""cat\"", \""pet\""]},{\""namespace\"": \""category\"", \""allow\"": [\""feline\""]}]}
/// {\""id\"": \""43\"", \""embedding\"": [0.6, 1.0], \""restricts\"": [{\""namespace\"": \""class\"", \""allow\"": [\""dog\"", \""pet\""]},{\""namespace\"": \""category\"", \""allow\"": [\""canine\""]}]}
/// ",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("bucket-name"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		index, err := vertex.NewAiIndex(ctx, "index", &vertex.AiIndexArgs{
/// 			Region:            pulumi.String("us-central1"),
/// 			DisplayName:       pulumi.String("test-index"),
/// 			Description:       pulumi.String("index for test"),
/// 			IndexUpdateMethod: pulumi.String("BATCH_UPDATE"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Metadata: &vertex.AiIndexMetadataArgs{
/// 				ContentsDeltaUri: bucket.Name.ApplyT(func(name string) (string, error) {
/// 					return fmt.Sprintf("gs://%v/contents", name), nil
/// 				}).(pulumi.StringOutput),
/// 				Config: &vertex.AiIndexMetadataConfigArgs{
/// 					Dimensions:                pulumi.Int(2),
/// 					ApproximateNeighborsCount: pulumi.Int(150),
/// 					ShardSize:                 pulumi.String("SHARD_SIZE_SMALL"),
/// 					DistanceMeasureType:       pulumi.String("DOT_PRODUCT_DISTANCE"),
/// 					AlgorithmConfig: &vertex.AiIndexMetadataConfigAlgorithmConfigArgs{
/// 						TreeAhConfig: &vertex.AiIndexMetadataConfigAlgorithmConfigTreeAhConfigArgs{
/// 							LeafNodeEmbeddingCount:   pulumi.Int(500),
/// 							LeafNodesToSearchPercent: pulumi.Int(7),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vertexNetwork, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// 			Name: "network-name",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vertexIndexEndpointDeployed, err := vertex.NewAiIndexEndpoint(ctx, "vertex_index_endpoint_deployed", &vertex.AiIndexEndpointArgs{
/// 			DisplayName: pulumi.String("sample-endpoint"),
/// 			Description: pulumi.String("A sample vertex endpoint"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     pulumi.Sprintf("projects/%v/global/networks/%v", project.Number, vertexNetwork.Name),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sa, err := serviceaccount.NewAccount(ctx, "sa", &serviceaccount.AccountArgs{
/// 			AccountId: pulumi.String("vertex-sa"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiIndexEndpointDeployedIndex(ctx, "basic_deployed_index", &vertex.AiIndexEndpointDeployedIndexArgs{
/// 			DeployedIndexId:     pulumi.String("deployed_index_id"),
/// 			DisplayName:         pulumi.String("vertex-deployed-index"),
/// 			Region:              pulumi.String("us-central1"),
/// 			Index:               index.ID(),
/// 			IndexEndpoint:       vertexIndexEndpointDeployed.ID(),
/// 			EnableAccessLogging: pulumi.Bool(false),
/// 			ReservedIpRanges: pulumi.StringArray{
/// 				pulumi.String("vertex-ai-range"),
/// 			},
/// 			DeployedIndexAuthConfig: &vertex.AiIndexEndpointDeployedIndexDeployedIndexAuthConfigArgs{
/// 				AuthProvider: &vertex.AiIndexEndpointDeployedIndexDeployedIndexAuthConfigAuthProviderArgs{
/// 					Audiences: pulumi.StringArray{
/// 						pulumi.String("123456-my-app"),
/// 					},
/// 					AllowedIssuers: pulumi.StringArray{
/// 						sa.Email,
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// The sample data comes from the following link:
/// 		// https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
/// 		_, err = storage.NewBucketObject(ctx, "data", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("contents/data.json"),
/// 			Bucket:  bucket.Name,
/// 			Content: pulumi.String("{\\\"id\\\": \\\"42\\\", \\\"embedding\\\": [0.5, 1.0], \\\"restricts\\\": [{\\\"namespace\\\": \\\"class\\\", \\\"allow\\\": [\\\"cat\\\", \\\"pet\\\"]},{\\\"namespace\\\": \\\"category\\\", \\\"allow\\\": [\\\"feline\\\"]}]}\n{\\\"id\\\": \\\"43\\\", \\\"embedding\\\": [0.6, 1.0], \\\"restricts\\\": [{\\\"namespace\\\": \\\"class\\\", \\\"allow\\\": [\\\"dog\\\", \\\"pet\\\"]},{\\\"namespace\\\": \\\"category\\\", \\\"allow\\\": [\\\"canine\\\"]}]}\n"),
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.vertex.AiIndex;
/// import com.pulumi.gcp.vertex.AiIndexArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexMetadataArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexMetadataConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexMetadataConfigAlgorithmConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexMetadataConfigAlgorithmConfigTreeAhConfigArgs;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.vertex.AiIndexEndpoint;
/// import com.pulumi.gcp.vertex.AiIndexEndpointArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.vertex.AiIndexEndpointDeployedIndex;
/// import com.pulumi.gcp.vertex.AiIndexEndpointDeployedIndexArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexEndpointDeployedIndexDeployedIndexAuthConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexEndpointDeployedIndexDeployedIndexAuthConfigAuthProviderArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("bucket-name")
///             .location("us-central1")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var index = new AiIndex("index", AiIndexArgs.builder()
///             .region("us-central1")
///             .displayName("test-index")
///             .description("index for test")
///             .indexUpdateMethod("BATCH_UPDATE")
///             .labels(Map.of("foo", "bar"))
///             .metadata(AiIndexMetadataArgs.builder()
///                 .contentsDeltaUri(bucket.name().applyValue(_name -> String.format("gs://%s/contents", _name)))
///                 .config(AiIndexMetadataConfigArgs.builder()
///                     .dimensions(2)
///                     .approximateNeighborsCount(150)
///                     .shardSize("SHARD_SIZE_SMALL")
///                     .distanceMeasureType("DOT_PRODUCT_DISTANCE")
///                     .algorithmConfig(AiIndexMetadataConfigAlgorithmConfigArgs.builder()
///                         .treeAhConfig(AiIndexMetadataConfigAlgorithmConfigTreeAhConfigArgs.builder()
///                             .leafNodeEmbeddingCount(500)
///                             .leafNodesToSearchPercent(7)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         final var vertexNetwork = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("network-name")
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var vertexIndexEndpointDeployed = new AiIndexEndpoint("vertexIndexEndpointDeployed", AiIndexEndpointArgs.builder()
///             .displayName("sample-endpoint")
///             .description("A sample vertex endpoint")
///             .region("us-central1")
///             .network(String.format("projects/%s/global/networks/%s", project.number(),vertexNetwork.name()))
///             .labels(Map.of("label-one", "value-one"))
///             .build());
///
///         var sa = new Account("sa", AccountArgs.builder()
///             .accountId("vertex-sa")
///             .build());
///
///         var basicDeployedIndex = new AiIndexEndpointDeployedIndex("basicDeployedIndex", AiIndexEndpointDeployedIndexArgs.builder()
///             .deployedIndexId("deployed_index_id")
///             .displayName("vertex-deployed-index")
///             .region("us-central1")
///             .index(index.id())
///             .indexEndpoint(vertexIndexEndpointDeployed.id())
///             .enableAccessLogging(false)
///             .reservedIpRanges("vertex-ai-range")
///             .deployedIndexAuthConfig(AiIndexEndpointDeployedIndexDeployedIndexAuthConfigArgs.builder()
///                 .authProvider(AiIndexEndpointDeployedIndexDeployedIndexAuthConfigAuthProviderArgs.builder()
///                     .audiences("123456-my-app")
///                     .allowedIssuers(sa.email())
///                     .build())
///                 .build())
///             .build());
///
///         // The sample data comes from the following link:
///         // https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
///         var data = new BucketObject("data", BucketObjectArgs.builder()
///             .name("contents/data.json")
///             .bucket(bucket.name())
///             .content("""
/// {\"id\": \"42\", \"embedding\": [0.5, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"cat\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"feline\"]}]}
/// {\"id\": \"43\", \"embedding\": [0.6, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"dog\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"canine\"]}]}
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicDeployedIndex:
///     type: gcp:vertex:AiIndexEndpointDeployedIndex
///     name: basic_deployed_index
///     properties:
///       deployedIndexId: deployed_index_id
///       displayName: vertex-deployed-index
///       region: us-central1
///       index: ${index.id}
///       indexEndpoint: ${vertexIndexEndpointDeployed.id}
///       enableAccessLogging: false
///       reservedIpRanges:
///         - vertex-ai-range
///       deployedIndexAuthConfig:
///         authProvider:
///           audiences:
///             - 123456-my-app
///           allowedIssuers:
///             - ${sa.email}
///   index:
///     type: gcp:vertex:AiIndex
///     properties:
///       region: us-central1
///       displayName: test-index
///       description: index for test
///       indexUpdateMethod: BATCH_UPDATE
///       labels:
///         foo: bar
///       metadata:
///         contentsDeltaUri: gs://${bucket.name}/contents
///         config:
///           dimensions: 2
///           approximateNeighborsCount: 150
///           shardSize: SHARD_SIZE_SMALL
///           distanceMeasureType: DOT_PRODUCT_DISTANCE
///           algorithmConfig:
///             treeAhConfig:
///               leafNodeEmbeddingCount: 500
///               leafNodesToSearchPercent: 7
///   vertexIndexEndpointDeployed:
///     type: gcp:vertex:AiIndexEndpoint
///     name: vertex_index_endpoint_deployed
///     properties:
///       displayName: sample-endpoint
///       description: A sample vertex endpoint
///       region: us-central1
///       network: projects/${project.number}/global/networks/${vertexNetwork.name}
///       labels:
///         label-one: value-one
///   sa:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: vertex-sa
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: bucket-name
///       location: us-central1
///       uniformBucketLevelAccess: true
///   # The sample data comes from the following link:
///   # https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
///   data:
///     type: gcp:storage:BucketObject
///     properties:
///       name: contents/data.json
///       bucket: ${bucket.name}
///       content: |
///         {\"id\": \"42\", \"embedding\": [0.5, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"cat\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"feline\"]}]}
///         {\"id\": \"43\", \"embedding\": [0.6, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"dog\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"canine\"]}]}
/// variables:
///   vertexNetwork:
///     fn::invoke:
///       function: gcp:compute:getNetwork
///       arguments:
///         name: network-name
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Vertex Ai Index Endpoint Deployed Index Basic Two
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sa = new gcp.serviceaccount.Account("sa", {accountId: "vertex-sa"});
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "bucket-name",
///     location: "us-central1",
///     uniformBucketLevelAccess: true,
/// });
/// const index = new gcp.vertex.AiIndex("index", {
///     region: "us-central1",
///     displayName: "test-index",
///     description: "index for test",
///     indexUpdateMethod: "BATCH_UPDATE",
///     labels: {
///         foo: "bar",
///     },
///     metadata: {
///         contentsDeltaUri: pulumi.interpolate`gs://${bucket.name}/contents`,
///         config: {
///             dimensions: 2,
///             approximateNeighborsCount: 150,
///             shardSize: "SHARD_SIZE_SMALL",
///             distanceMeasureType: "DOT_PRODUCT_DISTANCE",
///             algorithmConfig: {
///                 treeAhConfig: {
///                     leafNodeEmbeddingCount: 500,
///                     leafNodesToSearchPercent: 7,
///                 },
///             },
///         },
///     },
/// });
/// const vertexNetwork = gcp.compute.getNetwork({
///     name: "network-name",
/// });
/// const project = gcp.organizations.getProject({});
/// const vertexIndexEndpointDeployed = new gcp.vertex.AiIndexEndpoint("vertex_index_endpoint_deployed", {
///     displayName: "sample-endpoint",
///     description: "A sample vertex endpoint",
///     region: "us-central1",
///     network: Promise.all([project, vertexNetwork]).then(([project, vertexNetwork]) => `projects/${project.number}/global/networks/${vertexNetwork.name}`),
///     labels: {
///         "label-one": "value-one",
///     },
/// });
/// const basicDeployedIndex = new gcp.vertex.AiIndexEndpointDeployedIndex("basic_deployed_index", {
///     deployedIndexId: "deployed_index_id",
///     displayName: "vertex-deployed-index",
///     region: "us-central1",
///     index: index.id,
///     indexEndpoint: vertexIndexEndpointDeployed.id,
///     reservedIpRanges: ["vertex-ai-range"],
///     enableAccessLogging: false,
///     deployedIndexAuthConfig: {
///         authProvider: {
///             audiences: ["123456-my-app"],
///             allowedIssuers: [sa.email],
///         },
///     },
///     automaticResources: {
///         maxReplicaCount: 4,
///     },
/// });
/// // The sample data comes from the following link:
/// // https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
/// const data = new gcp.storage.BucketObject("data", {
///     name: "contents/data.json",
///     bucket: bucket.name,
///     content: `{\\"id\\": \\"42\\", \\"embedding\\": [0.5, 1.0], \\"restricts\\": [{\\"namespace\\": \\"class\\", \\"allow\\": [\\"cat\\", \\"pet\\"]},{\\"namespace\\": \\"category\\", \\"allow\\": [\\"feline\\"]}]}
/// {\\"id\\": \\"43\\", \\"embedding\\": [0.6, 1.0], \\"restricts\\": [{\\"namespace\\": \\"class\\", \\"allow\\": [\\"dog\\", \\"pet\\"]},{\\"namespace\\": \\"category\\", \\"allow\\": [\\"canine\\"]}]}
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// sa = gcp.serviceaccount.Account("sa", account_id="vertex-sa")
/// bucket = gcp.storage.Bucket("bucket",
///     name="bucket-name",
///     location="us-central1",
///     uniform_bucket_level_access=True)
/// index = gcp.vertex.AiIndex("index",
///     region="us-central1",
///     display_name="test-index",
///     description="index for test",
///     index_update_method="BATCH_UPDATE",
///     labels={
///         "foo": "bar",
///     },
///     metadata={
///         "contents_delta_uri": bucket.name.apply(lambda name: f"gs://{name}/contents"),
///         "config": {
///             "dimensions": 2,
///             "approximate_neighbors_count": 150,
///             "shard_size": "SHARD_SIZE_SMALL",
///             "distance_measure_type": "DOT_PRODUCT_DISTANCE",
///             "algorithm_config": {
///                 "tree_ah_config": {
///                     "leaf_node_embedding_count": 500,
///                     "leaf_nodes_to_search_percent": 7,
///                 },
///             },
///         },
///     })
/// vertex_network = gcp.compute.get_network(name="network-name")
/// project = gcp.organizations.get_project()
/// vertex_index_endpoint_deployed = gcp.vertex.AiIndexEndpoint("vertex_index_endpoint_deployed",
///     display_name="sample-endpoint",
///     description="A sample vertex endpoint",
///     region="us-central1",
///     network=f"projects/{project.number}/global/networks/{vertex_network.name}",
///     labels={
///         "label-one": "value-one",
///     })
/// basic_deployed_index = gcp.vertex.AiIndexEndpointDeployedIndex("basic_deployed_index",
///     deployed_index_id="deployed_index_id",
///     display_name="vertex-deployed-index",
///     region="us-central1",
///     index=index.id,
///     index_endpoint=vertex_index_endpoint_deployed.id,
///     reserved_ip_ranges=["vertex-ai-range"],
///     enable_access_logging=False,
///     deployed_index_auth_config={
///         "auth_provider": {
///             "audiences": ["123456-my-app"],
///             "allowed_issuers": [sa.email],
///         },
///     },
///     automatic_resources={
///         "max_replica_count": 4,
///     })
/// # The sample data comes from the following link:
/// # https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
/// data = gcp.storage.BucketObject("data",
///     name="contents/data.json",
///     bucket=bucket.name,
///     content="""{\"id\": \"42\", \"embedding\": [0.5, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"cat\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"feline\"]}]}
/// {\"id\": \"43\", \"embedding\": [0.6, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"dog\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"canine\"]}]}
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sa = new Gcp.ServiceAccount.Account("sa", new()
///     {
///         AccountId = "vertex-sa",
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "bucket-name",
///         Location = "us-central1",
///         UniformBucketLevelAccess = true,
///     });
///
///     var index = new Gcp.Vertex.AiIndex("index", new()
///     {
///         Region = "us-central1",
///         DisplayName = "test-index",
///         Description = "index for test",
///         IndexUpdateMethod = "BATCH_UPDATE",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Metadata = new Gcp.Vertex.Inputs.AiIndexMetadataArgs
///         {
///             ContentsDeltaUri = bucket.Name.Apply(name => $"gs://{name}/contents"),
///             Config = new Gcp.Vertex.Inputs.AiIndexMetadataConfigArgs
///             {
///                 Dimensions = 2,
///                 ApproximateNeighborsCount = 150,
///                 ShardSize = "SHARD_SIZE_SMALL",
///                 DistanceMeasureType = "DOT_PRODUCT_DISTANCE",
///                 AlgorithmConfig = new Gcp.Vertex.Inputs.AiIndexMetadataConfigAlgorithmConfigArgs
///                 {
///                     TreeAhConfig = new Gcp.Vertex.Inputs.AiIndexMetadataConfigAlgorithmConfigTreeAhConfigArgs
///                     {
///                         LeafNodeEmbeddingCount = 500,
///                         LeafNodesToSearchPercent = 7,
///                     },
///                 },
///             },
///         },
///     });
///
///     var vertexNetwork = Gcp.Compute.GetNetwork.Invoke(new()
///     {
///         Name = "network-name",
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var vertexIndexEndpointDeployed = new Gcp.Vertex.AiIndexEndpoint("vertex_index_endpoint_deployed", new()
///     {
///         DisplayName = "sample-endpoint",
///         Description = "A sample vertex endpoint",
///         Region = "us-central1",
///         Network = Output.Tuple(project, vertexNetwork).Apply(values =>
///         {
///             var project = values.Item1;
///             var vertexNetwork = values.Item2;
///             return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/global/networks/{vertexNetwork.Apply(getNetworkResult => getNetworkResult.Name)}";
///         }),
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
///     var basicDeployedIndex = new Gcp.Vertex.AiIndexEndpointDeployedIndex("basic_deployed_index", new()
///     {
///         DeployedIndexId = "deployed_index_id",
///         DisplayName = "vertex-deployed-index",
///         Region = "us-central1",
///         Index = index.Id,
///         IndexEndpoint = vertexIndexEndpointDeployed.Id,
///         ReservedIpRanges = new[]
///         {
///             "vertex-ai-range",
///         },
///         EnableAccessLogging = false,
///         DeployedIndexAuthConfig = new Gcp.Vertex.Inputs.AiIndexEndpointDeployedIndexDeployedIndexAuthConfigArgs
///         {
///             AuthProvider = new Gcp.Vertex.Inputs.AiIndexEndpointDeployedIndexDeployedIndexAuthConfigAuthProviderArgs
///             {
///                 Audiences = new[]
///                 {
///                     "123456-my-app",
///                 },
///                 AllowedIssuers = new[]
///                 {
///                     sa.Email,
///                 },
///             },
///         },
///         AutomaticResources = new Gcp.Vertex.Inputs.AiIndexEndpointDeployedIndexAutomaticResourcesArgs
///         {
///             MaxReplicaCount = 4,
///         },
///     });
///
///     // The sample data comes from the following link:
///     // https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
///     var data = new Gcp.Storage.BucketObject("data", new()
///     {
///         Name = "contents/data.json",
///         Bucket = bucket.Name,
///         Content = @"{\""id\"": \""42\"", \""embedding\"": [0.5, 1.0], \""restricts\"": [{\""namespace\"": \""class\"", \""allow\"": [\""cat\"", \""pet\""]},{\""namespace\"": \""category\"", \""allow\"": [\""feline\""]}]}
/// {\""id\"": \""43\"", \""embedding\"": [0.6, 1.0], \""restricts\"": [{\""namespace\"": \""class\"", \""allow\"": [\""dog\"", \""pet\""]},{\""namespace\"": \""category\"", \""allow\"": [\""canine\""]}]}
/// ",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		sa, err := serviceaccount.NewAccount(ctx, "sa", &serviceaccount.AccountArgs{
/// 			AccountId: pulumi.String("vertex-sa"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("bucket-name"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		index, err := vertex.NewAiIndex(ctx, "index", &vertex.AiIndexArgs{
/// 			Region:            pulumi.String("us-central1"),
/// 			DisplayName:       pulumi.String("test-index"),
/// 			Description:       pulumi.String("index for test"),
/// 			IndexUpdateMethod: pulumi.String("BATCH_UPDATE"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Metadata: &vertex.AiIndexMetadataArgs{
/// 				ContentsDeltaUri: bucket.Name.ApplyT(func(name string) (string, error) {
/// 					return fmt.Sprintf("gs://%v/contents", name), nil
/// 				}).(pulumi.StringOutput),
/// 				Config: &vertex.AiIndexMetadataConfigArgs{
/// 					Dimensions:                pulumi.Int(2),
/// 					ApproximateNeighborsCount: pulumi.Int(150),
/// 					ShardSize:                 pulumi.String("SHARD_SIZE_SMALL"),
/// 					DistanceMeasureType:       pulumi.String("DOT_PRODUCT_DISTANCE"),
/// 					AlgorithmConfig: &vertex.AiIndexMetadataConfigAlgorithmConfigArgs{
/// 						TreeAhConfig: &vertex.AiIndexMetadataConfigAlgorithmConfigTreeAhConfigArgs{
/// 							LeafNodeEmbeddingCount:   pulumi.Int(500),
/// 							LeafNodesToSearchPercent: pulumi.Int(7),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vertexNetwork, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// 			Name: "network-name",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vertexIndexEndpointDeployed, err := vertex.NewAiIndexEndpoint(ctx, "vertex_index_endpoint_deployed", &vertex.AiIndexEndpointArgs{
/// 			DisplayName: pulumi.String("sample-endpoint"),
/// 			Description: pulumi.String("A sample vertex endpoint"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     pulumi.Sprintf("projects/%v/global/networks/%v", project.Number, vertexNetwork.Name),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiIndexEndpointDeployedIndex(ctx, "basic_deployed_index", &vertex.AiIndexEndpointDeployedIndexArgs{
/// 			DeployedIndexId: pulumi.String("deployed_index_id"),
/// 			DisplayName:     pulumi.String("vertex-deployed-index"),
/// 			Region:          pulumi.String("us-central1"),
/// 			Index:           index.ID(),
/// 			IndexEndpoint:   vertexIndexEndpointDeployed.ID(),
/// 			ReservedIpRanges: pulumi.StringArray{
/// 				pulumi.String("vertex-ai-range"),
/// 			},
/// 			EnableAccessLogging: pulumi.Bool(false),
/// 			DeployedIndexAuthConfig: &vertex.AiIndexEndpointDeployedIndexDeployedIndexAuthConfigArgs{
/// 				AuthProvider: &vertex.AiIndexEndpointDeployedIndexDeployedIndexAuthConfigAuthProviderArgs{
/// 					Audiences: pulumi.StringArray{
/// 						pulumi.String("123456-my-app"),
/// 					},
/// 					AllowedIssuers: pulumi.StringArray{
/// 						sa.Email,
/// 					},
/// 				},
/// 			},
/// 			AutomaticResources: &vertex.AiIndexEndpointDeployedIndexAutomaticResourcesArgs{
/// 				MaxReplicaCount: pulumi.Int(4),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// The sample data comes from the following link:
/// 		// https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
/// 		_, err = storage.NewBucketObject(ctx, "data", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("contents/data.json"),
/// 			Bucket:  bucket.Name,
/// 			Content: pulumi.String("{\\\"id\\\": \\\"42\\\", \\\"embedding\\\": [0.5, 1.0], \\\"restricts\\\": [{\\\"namespace\\\": \\\"class\\\", \\\"allow\\\": [\\\"cat\\\", \\\"pet\\\"]},{\\\"namespace\\\": \\\"category\\\", \\\"allow\\\": [\\\"feline\\\"]}]}\n{\\\"id\\\": \\\"43\\\", \\\"embedding\\\": [0.6, 1.0], \\\"restricts\\\": [{\\\"namespace\\\": \\\"class\\\", \\\"allow\\\": [\\\"dog\\\", \\\"pet\\\"]},{\\\"namespace\\\": \\\"category\\\", \\\"allow\\\": [\\\"canine\\\"]}]}\n"),
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.vertex.AiIndex;
/// import com.pulumi.gcp.vertex.AiIndexArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexMetadataArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexMetadataConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexMetadataConfigAlgorithmConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexMetadataConfigAlgorithmConfigTreeAhConfigArgs;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.vertex.AiIndexEndpoint;
/// import com.pulumi.gcp.vertex.AiIndexEndpointArgs;
/// import com.pulumi.gcp.vertex.AiIndexEndpointDeployedIndex;
/// import com.pulumi.gcp.vertex.AiIndexEndpointDeployedIndexArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexEndpointDeployedIndexDeployedIndexAuthConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexEndpointDeployedIndexDeployedIndexAuthConfigAuthProviderArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexEndpointDeployedIndexAutomaticResourcesArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
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
///         var sa = new Account("sa", AccountArgs.builder()
///             .accountId("vertex-sa")
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("bucket-name")
///             .location("us-central1")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var index = new AiIndex("index", AiIndexArgs.builder()
///             .region("us-central1")
///             .displayName("test-index")
///             .description("index for test")
///             .indexUpdateMethod("BATCH_UPDATE")
///             .labels(Map.of("foo", "bar"))
///             .metadata(AiIndexMetadataArgs.builder()
///                 .contentsDeltaUri(bucket.name().applyValue(_name -> String.format("gs://%s/contents", _name)))
///                 .config(AiIndexMetadataConfigArgs.builder()
///                     .dimensions(2)
///                     .approximateNeighborsCount(150)
///                     .shardSize("SHARD_SIZE_SMALL")
///                     .distanceMeasureType("DOT_PRODUCT_DISTANCE")
///                     .algorithmConfig(AiIndexMetadataConfigAlgorithmConfigArgs.builder()
///                         .treeAhConfig(AiIndexMetadataConfigAlgorithmConfigTreeAhConfigArgs.builder()
///                             .leafNodeEmbeddingCount(500)
///                             .leafNodesToSearchPercent(7)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         final var vertexNetwork = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("network-name")
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var vertexIndexEndpointDeployed = new AiIndexEndpoint("vertexIndexEndpointDeployed", AiIndexEndpointArgs.builder()
///             .displayName("sample-endpoint")
///             .description("A sample vertex endpoint")
///             .region("us-central1")
///             .network(String.format("projects/%s/global/networks/%s", project.number(),vertexNetwork.name()))
///             .labels(Map.of("label-one", "value-one"))
///             .build());
///
///         var basicDeployedIndex = new AiIndexEndpointDeployedIndex("basicDeployedIndex", AiIndexEndpointDeployedIndexArgs.builder()
///             .deployedIndexId("deployed_index_id")
///             .displayName("vertex-deployed-index")
///             .region("us-central1")
///             .index(index.id())
///             .indexEndpoint(vertexIndexEndpointDeployed.id())
///             .reservedIpRanges("vertex-ai-range")
///             .enableAccessLogging(false)
///             .deployedIndexAuthConfig(AiIndexEndpointDeployedIndexDeployedIndexAuthConfigArgs.builder()
///                 .authProvider(AiIndexEndpointDeployedIndexDeployedIndexAuthConfigAuthProviderArgs.builder()
///                     .audiences("123456-my-app")
///                     .allowedIssuers(sa.email())
///                     .build())
///                 .build())
///             .automaticResources(AiIndexEndpointDeployedIndexAutomaticResourcesArgs.builder()
///                 .maxReplicaCount(4)
///                 .build())
///             .build());
///
///         // The sample data comes from the following link:
///         // https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
///         var data = new BucketObject("data", BucketObjectArgs.builder()
///             .name("contents/data.json")
///             .bucket(bucket.name())
///             .content("""
/// {\"id\": \"42\", \"embedding\": [0.5, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"cat\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"feline\"]}]}
/// {\"id\": \"43\", \"embedding\": [0.6, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"dog\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"canine\"]}]}
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicDeployedIndex:
///     type: gcp:vertex:AiIndexEndpointDeployedIndex
///     name: basic_deployed_index
///     properties:
///       deployedIndexId: deployed_index_id
///       displayName: vertex-deployed-index
///       region: us-central1
///       index: ${index.id}
///       indexEndpoint: ${vertexIndexEndpointDeployed.id}
///       reservedIpRanges:
///         - vertex-ai-range
///       enableAccessLogging: false
///       deployedIndexAuthConfig:
///         authProvider:
///           audiences:
///             - 123456-my-app
///           allowedIssuers:
///             - ${sa.email}
///       automaticResources:
///         maxReplicaCount: 4
///   sa:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: vertex-sa
///   index:
///     type: gcp:vertex:AiIndex
///     properties:
///       region: us-central1
///       displayName: test-index
///       description: index for test
///       indexUpdateMethod: BATCH_UPDATE
///       labels:
///         foo: bar
///       metadata:
///         contentsDeltaUri: gs://${bucket.name}/contents
///         config:
///           dimensions: 2
///           approximateNeighborsCount: 150
///           shardSize: SHARD_SIZE_SMALL
///           distanceMeasureType: DOT_PRODUCT_DISTANCE
///           algorithmConfig:
///             treeAhConfig:
///               leafNodeEmbeddingCount: 500
///               leafNodesToSearchPercent: 7
///   vertexIndexEndpointDeployed:
///     type: gcp:vertex:AiIndexEndpoint
///     name: vertex_index_endpoint_deployed
///     properties:
///       displayName: sample-endpoint
///       description: A sample vertex endpoint
///       region: us-central1
///       network: projects/${project.number}/global/networks/${vertexNetwork.name}
///       labels:
///         label-one: value-one
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: bucket-name
///       location: us-central1
///       uniformBucketLevelAccess: true
///   # The sample data comes from the following link:
///   # https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
///   data:
///     type: gcp:storage:BucketObject
///     properties:
///       name: contents/data.json
///       bucket: ${bucket.name}
///       content: |
///         {\"id\": \"42\", \"embedding\": [0.5, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"cat\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"feline\"]}]}
///         {\"id\": \"43\", \"embedding\": [0.6, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"dog\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"canine\"]}]}
/// variables:
///   vertexNetwork:
///     fn::invoke:
///       function: gcp:compute:getNetwork
///       arguments:
///         name: network-name
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// IndexEndpointDeployedIndex can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/indexEndpoints/{{index_endpoint}}/deployedIndex/{{deployed_index_id}}`
///
/// * `{{project}}/{{region}}/{{index_endpoint}}/{{deployed_index_id}}`
///
/// * `{{region}}/{{index_endpoint}}/{{deployed_index_id}}`
///
/// * `{{index_endpoint}}/{{deployed_index_id}}`
///
/// When using the `pulumi import` command, IndexEndpointDeployedIndex can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndexEndpointDeployedIndex:AiIndexEndpointDeployedIndex default projects/{{project}}/locations/{{region}}/indexEndpoints/{{index_endpoint}}/deployedIndex/{{deployed_index_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndexEndpointDeployedIndex:AiIndexEndpointDeployedIndex default {{project}}/{{region}}/{{index_endpoint}}/{{deployed_index_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndexEndpointDeployedIndex:AiIndexEndpointDeployedIndex default {{region}}/{{index_endpoint}}/{{deployed_index_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndexEndpointDeployedIndex:AiIndexEndpointDeployedIndex default {{index_endpoint}}/{{deployed_index_id}}
/// ```
class AiIndexEndpointDeployedIndex extends pulumi.CustomResource {
  /// A description of resources that the DeployedIndex uses, which to large degree are decided by Vertex AI, and optionally allows only a modest additional configuration.
  /// Structure is documented below.
  late final pulumi.Output<AiIndexEndpointDeployedIndexAutomaticResources> automaticResources;
  /// The timestamp of when the Index was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> createTime;
  /// A description of resources that are dedicated to the DeployedIndex, and that need a higher degree of manual configuration. The field minReplicaCount must be set to a value strictly greater than 0, or else validation will fail. We don't provide SLA when minReplicaCount=1. If maxReplicaCount is not set, the default value is minReplicaCount. The max allowed replica count is 1000.
  /// Available machine types for SMALL shard: e2-standard-2 and all machine types available for MEDIUM and LARGE shard.
  /// Available machine types for MEDIUM shard: e2-standard-16 and all machine types available for LARGE shard.
  /// Available machine types for LARGE shard: e2-highmem-16, n2d-standard-32.
  /// n1-standard-16 and n1-standard-32 are still available, but we recommend e2-standard-16 and e2-highmem-16 for cost efficiency.
  /// Structure is documented below.
  late final pulumi.Output<AiIndexEndpointDeployedIndexDedicatedResources?> dedicatedResources;
  /// If set, the authentication is enabled for the private endpoint.
  /// Structure is documented below.
  late final pulumi.Output<AiIndexEndpointDeployedIndexDeployedIndexAuthConfig?> deployedIndexAuthConfig;
  /// The user specified ID of the DeployedIndex. The ID can be up to 128 characters long and must start with a letter and only contain letters, numbers, and underscores. The ID must be unique within the project it is created in.
  late final pulumi.Output<String> deployedIndexId;
  /// The deployment group can be no longer than 64 characters (eg: 'test', 'prod'). If not set, we will use the 'default' deployment group.
  /// Creating deployment_groups with reserved_ip_ranges is a recommended practice when the peered network has multiple peering ranges. This creates your deployments from predictable IP spaces for easier traffic administration. Also, one deployment_group (except 'default') can only be used with the same reserved_ip_ranges which means if the deployment_group has been used with reserved_ip_ranges: [a, b, c], using it with [a, b] or [d, e] is disallowed. [See the official documentation here](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexEndpoints#DeployedIndex.FIELDS.deployment_group).
  /// Note: we only support up to 5 deployment groups (not including 'default').
  late final pulumi.Output<String?> deploymentGroup;
  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final pulumi.Output<String?> displayName;
  /// If true, private endpoint's access logs are sent to Cloud Logging.
  late final pulumi.Output<bool?> enableAccessLogging;
  /// The name of the Index this is the deployment of.
  late final pulumi.Output<String> index;
  /// Identifies the index endpoint. Must be in the format
  /// 'projects/{{project}}/locations/{{region}}/indexEndpoints/{{indexEndpoint}}'
  late final pulumi.Output<String> indexEndpoint;
  /// The DeployedIndex may depend on various data on its original Index. Additionally when certain changes to the original Index are being done (e.g. when what the Index contains is being changed) the DeployedIndex may be asynchronously updated in the background to reflect these changes. If this timestamp's value is at least the [Index.update_time](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexes#Index.FIELDS.update_time) of the original Index, it means that this DeployedIndex and the original Index are in sync. If this timestamp is older, then to see which updates this DeployedIndex already contains (and which it does not), one must [list](https://cloud.google.com/vertex-ai/docs/reference/rest/v1beta1/projects.locations.operations/list#google.longrunning.Operations.ListOperations) the operations that are running on the original Index. Only the successfully completed Operations with updateTime equal or before this sync time are contained in this DeployedIndex.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> indexSyncTime;
  /// The name of the DeployedIndex resource.
  late final pulumi.Output<String> name;
  /// Provides paths for users to send requests directly to the deployed index services running on Cloud via private services access. This field is populated if [network](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexEndpoints#IndexEndpoint.FIELDS.network) is configured.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpoints;
  /// The region of the index endpoint deployment. eg us-central1
  late final pulumi.Output<String?> region;
  /// A list of reserved ip ranges under the VPC network that can be used for this DeployedIndex.
  /// If set, we will deploy the index within the provided ip ranges. Otherwise, the index might be deployed to any ip ranges under the provided VPC network.
  /// The value should be the name of the address (https://cloud.google.com/compute/docs/reference/rest/v1/addresses) Example: ['vertex-ai-ip-range'].
  /// For more information about subnets and network IP ranges, please see https://cloud.google.com/vpc/docs/subnets#manually_created_subnet_ip_ranges.
  late final pulumi.Output<List<String>?> reservedIpRanges;

  /// Creates a new [AiIndexEndpointDeployedIndex].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiIndexEndpointDeployedIndex]. {@macro pulumi_vertex_ai_index_endpoint_deployed_index_ai_index_endpoint_deployed_index_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiIndexEndpointDeployedIndex(
    String name, {
    AiIndexEndpointDeployedIndexArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiIndexEndpointDeployedIndex:AiIndexEndpointDeployedIndex',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automaticResources = registerOutput<AiIndexEndpointDeployedIndexAutomaticResources>('automaticResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiIndexEndpointDeployedIndexAutomaticResources.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    dedicatedResources = registerOutput<AiIndexEndpointDeployedIndexDedicatedResources?>('dedicatedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiIndexEndpointDeployedIndexDedicatedResources.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deployedIndexAuthConfig = registerOutput<AiIndexEndpointDeployedIndexDeployedIndexAuthConfig?>('deployedIndexAuthConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiIndexEndpointDeployedIndexDeployedIndexAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deployedIndexId = registerOutput<String>('deployedIndexId');
    deploymentGroup = registerOutput<String?>('deploymentGroup');
    displayName = registerOutput<String?>('displayName');
    enableAccessLogging = registerOutput<bool?>('enableAccessLogging');
    index = registerOutput<String>('index');
    indexEndpoint = registerOutput<String>('indexEndpoint');
    indexSyncTime = registerOutput<String>('indexSyncTime');
    this.name = registerOutput<String>('name');
    privateEndpoints = registerOutput<List<Map<String, dynamic>>>('privateEndpoints');
    region = registerOutput<String?>('region');
    reservedIpRanges = registerOutput<List<String>?>('reservedIpRanges');
  }

  /// Gets an existing [AiIndexEndpointDeployedIndex] resource's state with the given [name] and [id].
  static AiIndexEndpointDeployedIndex get(
    String name,
    pulumi.Input<String> id, {
    AiIndexEndpointDeployedIndexState? state,
  }) {
    return AiIndexEndpointDeployedIndex._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AiIndexEndpointDeployedIndex._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiIndexEndpointDeployedIndex:AiIndexEndpointDeployedIndex',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automaticResources = registerOutput<AiIndexEndpointDeployedIndexAutomaticResources>('automaticResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiIndexEndpointDeployedIndexAutomaticResources.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    dedicatedResources = registerOutput<AiIndexEndpointDeployedIndexDedicatedResources?>('dedicatedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiIndexEndpointDeployedIndexDedicatedResources.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deployedIndexAuthConfig = registerOutput<AiIndexEndpointDeployedIndexDeployedIndexAuthConfig?>('deployedIndexAuthConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiIndexEndpointDeployedIndexDeployedIndexAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deployedIndexId = registerOutput<String>('deployedIndexId');
    deploymentGroup = registerOutput<String?>('deploymentGroup');
    displayName = registerOutput<String?>('displayName');
    enableAccessLogging = registerOutput<bool?>('enableAccessLogging');
    index = registerOutput<String>('index');
    indexEndpoint = registerOutput<String>('indexEndpoint');
    indexSyncTime = registerOutput<String>('indexSyncTime');
    this.name = registerOutput<String>('name');
    privateEndpoints = registerOutput<List<Map<String, dynamic>>>('privateEndpoints');
    region = registerOutput<String?>('region');
    reservedIpRanges = registerOutput<List<String>?>('reservedIpRanges');
  }
}
