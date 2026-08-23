import 'package:pulumi/pulumi.dart' as pulumi;
import 'blockchain_nodes_args.dart';
import 'blockchain_nodes_ethereum_details.dart';
import 'blockchain_nodes_state.dart';

/// A representation of a blockchain node.
///
///
/// To get more information about BlockchainNodes, see:
///
/// * [API documentation](https://cloud.google.com/blockchain-node-engine/docs/reference/rest/v1/projects.locations.blockchainNodes)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/blockchain-node-engine)
///
/// ## Example Usage
///
/// ### Blockchain Nodes Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNode = new gcp.blockchainnodeengine.BlockchainNodes("default_node", {
///     location: "us-central1",
///     blockchainType: "ETHEREUM",
///     blockchainNodeId: "blockchain_basic_node",
///     ethereumDetails: {
///         apiEnableAdmin: true,
///         apiEnableDebug: true,
///         validatorConfig: {
///             mevRelayUrls: [
///                 "https://mev1.example.org/",
///                 "https://mev2.example.org/",
///             ],
///         },
///         nodeType: "ARCHIVE",
///         consensusClient: "LIGHTHOUSE",
///         executionClient: "ERIGON",
///         network: "MAINNET",
///     },
///     labels: {
///         environment: "dev",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_node = gcp.blockchainnodeengine.BlockchainNodes("default_node",
///     location="us-central1",
///     blockchain_type="ETHEREUM",
///     blockchain_node_id="blockchain_basic_node",
///     ethereum_details={
///         "api_enable_admin": True,
///         "api_enable_debug": True,
///         "validator_config": {
///             "mev_relay_urls": [
///                 "https://mev1.example.org/",
///                 "https://mev2.example.org/",
///             ],
///         },
///         "node_type": "ARCHIVE",
///         "consensus_client": "LIGHTHOUSE",
///         "execution_client": "ERIGON",
///         "network": "MAINNET",
///     },
///     labels={
///         "environment": "dev",
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
///     var defaultNode = new Gcp.BlockchainNodeEngine.BlockchainNodes("default_node", new()
///     {
///         Location = "us-central1",
///         BlockchainType = "ETHEREUM",
///         BlockchainNodeId = "blockchain_basic_node",
///         EthereumDetails = new Gcp.BlockchainNodeEngine.Inputs.BlockchainNodesEthereumDetailsArgs
///         {
///             ApiEnableAdmin = true,
///             ApiEnableDebug = true,
///             ValidatorConfig = new Gcp.BlockchainNodeEngine.Inputs.BlockchainNodesEthereumDetailsValidatorConfigArgs
///             {
///                 MevRelayUrls = new[]
///                 {
///                     "https://mev1.example.org/",
///                     "https://mev2.example.org/",
///                 },
///             },
///             NodeType = "ARCHIVE",
///             ConsensusClient = "LIGHTHOUSE",
///             ExecutionClient = "ERIGON",
///             Network = "MAINNET",
///         },
///         Labels =
///         {
///             { "environment", "dev" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/blockchainnodeengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blockchainnodeengine.NewBlockchainNodes(ctx, "default_node", &blockchainnodeengine.BlockchainNodesArgs{
/// 			Location:         pulumi.String("us-central1"),
/// 			BlockchainType:   pulumi.String("ETHEREUM"),
/// 			BlockchainNodeId: pulumi.String("blockchain_basic_node"),
/// 			EthereumDetails: &blockchainnodeengine.BlockchainNodesEthereumDetailsArgs{
/// 				ApiEnableAdmin: pulumi.Bool(true),
/// 				ApiEnableDebug: pulumi.Bool(true),
/// 				ValidatorConfig: &blockchainnodeengine.BlockchainNodesEthereumDetailsValidatorConfigArgs{
/// 					MevRelayUrls: pulumi.StringArray{
/// 						pulumi.String("https://mev1.example.org/"),
/// 						pulumi.String("https://mev2.example.org/"),
/// 					},
/// 				},
/// 				NodeType:        pulumi.String("ARCHIVE"),
/// 				ConsensusClient: pulumi.String("LIGHTHOUSE"),
/// 				ExecutionClient: pulumi.String("ERIGON"),
/// 				Network:         pulumi.String("MAINNET"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"environment": pulumi.String("dev"),
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
/// resource "gcp_blockchainnodeengine_blockchainnodes" "default_node" {
///   location           = "us-central1"
///   blockchain_type    = "ETHEREUM"
///   blockchain_node_id = "blockchain_basic_node"
///   ethereum_details = {
///     api_enable_admin = true
///     api_enable_debug = true
///     validator_config = {
///       mev_relay_urls = ["https://mev1.example.org/", "https://mev2.example.org/"]
///     }
///     node_type        = "ARCHIVE"
///     consensus_client = "LIGHTHOUSE"
///     execution_client = "ERIGON"
///     network          = "MAINNET"
///   }
///   labels = {
///     "environment" = "dev"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.blockchainnodeengine.BlockchainNodes;
/// import com.pulumi.gcp.blockchainnodeengine.BlockchainNodesArgs;
/// import com.pulumi.gcp.blockchainnodeengine.inputs.BlockchainNodesEthereumDetailsArgs;
/// import com.pulumi.gcp.blockchainnodeengine.inputs.BlockchainNodesEthereumDetailsValidatorConfigArgs;
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
///         var defaultNode = new BlockchainNodes("defaultNode", BlockchainNodesArgs.builder()
///             .location("us-central1")
///             .blockchainType("ETHEREUM")
///             .blockchainNodeId("blockchain_basic_node")
///             .ethereumDetails(BlockchainNodesEthereumDetailsArgs.builder()
///                 .apiEnableAdmin(true)
///                 .apiEnableDebug(true)
///                 .validatorConfig(BlockchainNodesEthereumDetailsValidatorConfigArgs.builder()
///                     .mevRelayUrls(
///                         "https://mev1.example.org/",
///                         "https://mev2.example.org/")
///                     .build())
///                 .nodeType("ARCHIVE")
///                 .consensusClient("LIGHTHOUSE")
///                 .executionClient("ERIGON")
///                 .network("MAINNET")
///                 .build())
///             .labels(Map.of("environment", "dev"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultNode:
///     type: gcp:blockchainnodeengine:BlockchainNodes
///     name: default_node
///     properties:
///       location: us-central1
///       blockchainType: ETHEREUM
///       blockchainNodeId: blockchain_basic_node
///       ethereumDetails:
///         apiEnableAdmin: true
///         apiEnableDebug: true
///         validatorConfig:
///           mevRelayUrls:
///             - https://mev1.example.org/
///             - https://mev2.example.org/
///         nodeType: ARCHIVE
///         consensusClient: LIGHTHOUSE
///         executionClient: ERIGON
///         network: MAINNET
///       labels:
///         environment: dev
/// ```
///
/// ### Blockchain Nodes Geth Details
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNodeGeth = new gcp.blockchainnodeengine.BlockchainNodes("default_node_geth", {
///     location: "us-central1",
///     blockchainType: "ETHEREUM",
///     blockchainNodeId: "blockchain_geth_node",
///     ethereumDetails: {
///         apiEnableAdmin: true,
///         apiEnableDebug: true,
///         validatorConfig: {
///             mevRelayUrls: [
///                 "https://mev1.example.org/",
///                 "https://mev2.example.org/",
///             ],
///         },
///         nodeType: "FULL",
///         consensusClient: "LIGHTHOUSE",
///         executionClient: "GETH",
///         network: "MAINNET",
///         gethDetails: {
///             garbageCollectionMode: "FULL",
///         },
///     },
///     labels: {
///         environment: "dev",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_node_geth = gcp.blockchainnodeengine.BlockchainNodes("default_node_geth",
///     location="us-central1",
///     blockchain_type="ETHEREUM",
///     blockchain_node_id="blockchain_geth_node",
///     ethereum_details={
///         "api_enable_admin": True,
///         "api_enable_debug": True,
///         "validator_config": {
///             "mev_relay_urls": [
///                 "https://mev1.example.org/",
///                 "https://mev2.example.org/",
///             ],
///         },
///         "node_type": "FULL",
///         "consensus_client": "LIGHTHOUSE",
///         "execution_client": "GETH",
///         "network": "MAINNET",
///         "geth_details": {
///             "garbage_collection_mode": "FULL",
///         },
///     },
///     labels={
///         "environment": "dev",
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
///     var defaultNodeGeth = new Gcp.BlockchainNodeEngine.BlockchainNodes("default_node_geth", new()
///     {
///         Location = "us-central1",
///         BlockchainType = "ETHEREUM",
///         BlockchainNodeId = "blockchain_geth_node",
///         EthereumDetails = new Gcp.BlockchainNodeEngine.Inputs.BlockchainNodesEthereumDetailsArgs
///         {
///             ApiEnableAdmin = true,
///             ApiEnableDebug = true,
///             ValidatorConfig = new Gcp.BlockchainNodeEngine.Inputs.BlockchainNodesEthereumDetailsValidatorConfigArgs
///             {
///                 MevRelayUrls = new[]
///                 {
///                     "https://mev1.example.org/",
///                     "https://mev2.example.org/",
///                 },
///             },
///             NodeType = "FULL",
///             ConsensusClient = "LIGHTHOUSE",
///             ExecutionClient = "GETH",
///             Network = "MAINNET",
///             GethDetails = new Gcp.BlockchainNodeEngine.Inputs.BlockchainNodesEthereumDetailsGethDetailsArgs
///             {
///                 GarbageCollectionMode = "FULL",
///             },
///         },
///         Labels =
///         {
///             { "environment", "dev" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/blockchainnodeengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blockchainnodeengine.NewBlockchainNodes(ctx, "default_node_geth", &blockchainnodeengine.BlockchainNodesArgs{
/// 			Location:         pulumi.String("us-central1"),
/// 			BlockchainType:   pulumi.String("ETHEREUM"),
/// 			BlockchainNodeId: pulumi.String("blockchain_geth_node"),
/// 			EthereumDetails: &blockchainnodeengine.BlockchainNodesEthereumDetailsArgs{
/// 				ApiEnableAdmin: pulumi.Bool(true),
/// 				ApiEnableDebug: pulumi.Bool(true),
/// 				ValidatorConfig: &blockchainnodeengine.BlockchainNodesEthereumDetailsValidatorConfigArgs{
/// 					MevRelayUrls: pulumi.StringArray{
/// 						pulumi.String("https://mev1.example.org/"),
/// 						pulumi.String("https://mev2.example.org/"),
/// 					},
/// 				},
/// 				NodeType:        pulumi.String("FULL"),
/// 				ConsensusClient: pulumi.String("LIGHTHOUSE"),
/// 				ExecutionClient: pulumi.String("GETH"),
/// 				Network:         pulumi.String("MAINNET"),
/// 				GethDetails: &blockchainnodeengine.BlockchainNodesEthereumDetailsGethDetailsArgs{
/// 					GarbageCollectionMode: pulumi.String("FULL"),
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"environment": pulumi.String("dev"),
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
/// resource "gcp_blockchainnodeengine_blockchainnodes" "default_node_geth" {
///   location           = "us-central1"
///   blockchain_type    = "ETHEREUM"
///   blockchain_node_id = "blockchain_geth_node"
///   ethereum_details = {
///     api_enable_admin = true
///     api_enable_debug = true
///     validator_config = {
///       mev_relay_urls = ["https://mev1.example.org/", "https://mev2.example.org/"]
///     }
///     node_type        = "FULL"
///     consensus_client = "LIGHTHOUSE"
///     execution_client = "GETH"
///     network          = "MAINNET"
///     geth_details = {
///       garbage_collection_mode = "FULL"
///     }
///   }
///   labels = {
///     "environment" = "dev"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.blockchainnodeengine.BlockchainNodes;
/// import com.pulumi.gcp.blockchainnodeengine.BlockchainNodesArgs;
/// import com.pulumi.gcp.blockchainnodeengine.inputs.BlockchainNodesEthereumDetailsArgs;
/// import com.pulumi.gcp.blockchainnodeengine.inputs.BlockchainNodesEthereumDetailsValidatorConfigArgs;
/// import com.pulumi.gcp.blockchainnodeengine.inputs.BlockchainNodesEthereumDetailsGethDetailsArgs;
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
///         var defaultNodeGeth = new BlockchainNodes("defaultNodeGeth", BlockchainNodesArgs.builder()
///             .location("us-central1")
///             .blockchainType("ETHEREUM")
///             .blockchainNodeId("blockchain_geth_node")
///             .ethereumDetails(BlockchainNodesEthereumDetailsArgs.builder()
///                 .apiEnableAdmin(true)
///                 .apiEnableDebug(true)
///                 .validatorConfig(BlockchainNodesEthereumDetailsValidatorConfigArgs.builder()
///                     .mevRelayUrls(
///                         "https://mev1.example.org/",
///                         "https://mev2.example.org/")
///                     .build())
///                 .nodeType("FULL")
///                 .consensusClient("LIGHTHOUSE")
///                 .executionClient("GETH")
///                 .network("MAINNET")
///                 .gethDetails(BlockchainNodesEthereumDetailsGethDetailsArgs.builder()
///                     .garbageCollectionMode("FULL")
///                     .build())
///                 .build())
///             .labels(Map.of("environment", "dev"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultNodeGeth:
///     type: gcp:blockchainnodeengine:BlockchainNodes
///     name: default_node_geth
///     properties:
///       location: us-central1
///       blockchainType: ETHEREUM
///       blockchainNodeId: blockchain_geth_node
///       ethereumDetails:
///         apiEnableAdmin: true
///         apiEnableDebug: true
///         validatorConfig:
///           mevRelayUrls:
///             - https://mev1.example.org/
///             - https://mev2.example.org/
///         nodeType: FULL
///         consensusClient: LIGHTHOUSE
///         executionClient: GETH
///         network: MAINNET
///         gethDetails:
///           garbageCollectionMode: FULL
///       labels:
///         environment: dev
/// ```
///
/// ### Blockchain Nodes Beacon Fee Recipient
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNodeBeaconFee = new gcp.blockchainnodeengine.BlockchainNodes("default_node_beacon_fee", {
///     location: "us-central1",
///     blockchainType: "ETHEREUM",
///     blockchainNodeId: "beacon_fee_node",
///     ethereumDetails: {
///         apiEnableAdmin: true,
///         apiEnableDebug: true,
///         validatorConfig: {
///             beaconFeeRecipient: "0x89205A3A3b2A69De6Dbf7f01ED13B2108B2c43e7",
///         },
///         nodeType: "ARCHIVE",
///         consensusClient: "LIGHTHOUSE",
///         executionClient: "ERIGON",
///         network: "MAINNET",
///     },
///     labels: {
///         environment: "dev",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_node_beacon_fee = gcp.blockchainnodeengine.BlockchainNodes("default_node_beacon_fee",
///     location="us-central1",
///     blockchain_type="ETHEREUM",
///     blockchain_node_id="beacon_fee_node",
///     ethereum_details={
///         "api_enable_admin": True,
///         "api_enable_debug": True,
///         "validator_config": {
///             "beacon_fee_recipient": "0x89205A3A3b2A69De6Dbf7f01ED13B2108B2c43e7",
///         },
///         "node_type": "ARCHIVE",
///         "consensus_client": "LIGHTHOUSE",
///         "execution_client": "ERIGON",
///         "network": "MAINNET",
///     },
///     labels={
///         "environment": "dev",
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
///     var defaultNodeBeaconFee = new Gcp.BlockchainNodeEngine.BlockchainNodes("default_node_beacon_fee", new()
///     {
///         Location = "us-central1",
///         BlockchainType = "ETHEREUM",
///         BlockchainNodeId = "beacon_fee_node",
///         EthereumDetails = new Gcp.BlockchainNodeEngine.Inputs.BlockchainNodesEthereumDetailsArgs
///         {
///             ApiEnableAdmin = true,
///             ApiEnableDebug = true,
///             ValidatorConfig = new Gcp.BlockchainNodeEngine.Inputs.BlockchainNodesEthereumDetailsValidatorConfigArgs
///             {
///                 BeaconFeeRecipient = "0x89205A3A3b2A69De6Dbf7f01ED13B2108B2c43e7",
///             },
///             NodeType = "ARCHIVE",
///             ConsensusClient = "LIGHTHOUSE",
///             ExecutionClient = "ERIGON",
///             Network = "MAINNET",
///         },
///         Labels =
///         {
///             { "environment", "dev" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/blockchainnodeengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blockchainnodeengine.NewBlockchainNodes(ctx, "default_node_beacon_fee", &blockchainnodeengine.BlockchainNodesArgs{
/// 			Location:         pulumi.String("us-central1"),
/// 			BlockchainType:   pulumi.String("ETHEREUM"),
/// 			BlockchainNodeId: pulumi.String("beacon_fee_node"),
/// 			EthereumDetails: &blockchainnodeengine.BlockchainNodesEthereumDetailsArgs{
/// 				ApiEnableAdmin: pulumi.Bool(true),
/// 				ApiEnableDebug: pulumi.Bool(true),
/// 				ValidatorConfig: &blockchainnodeengine.BlockchainNodesEthereumDetailsValidatorConfigArgs{
/// 					BeaconFeeRecipient: pulumi.String("0x89205A3A3b2A69De6Dbf7f01ED13B2108B2c43e7"),
/// 				},
/// 				NodeType:        pulumi.String("ARCHIVE"),
/// 				ConsensusClient: pulumi.String("LIGHTHOUSE"),
/// 				ExecutionClient: pulumi.String("ERIGON"),
/// 				Network:         pulumi.String("MAINNET"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"environment": pulumi.String("dev"),
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
/// resource "gcp_blockchainnodeengine_blockchainnodes" "default_node_beacon_fee" {
///   location           = "us-central1"
///   blockchain_type    = "ETHEREUM"
///   blockchain_node_id = "beacon_fee_node"
///   ethereum_details = {
///     api_enable_admin = true
///     api_enable_debug = true
///     validator_config = {
///       beacon_fee_recipient = "0x89205A3A3b2A69De6Dbf7f01ED13B2108B2c43e7"
///     }
///     node_type        = "ARCHIVE"
///     consensus_client = "LIGHTHOUSE"
///     execution_client = "ERIGON"
///     network          = "MAINNET"
///   }
///   labels = {
///     "environment" = "dev"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.blockchainnodeengine.BlockchainNodes;
/// import com.pulumi.gcp.blockchainnodeengine.BlockchainNodesArgs;
/// import com.pulumi.gcp.blockchainnodeengine.inputs.BlockchainNodesEthereumDetailsArgs;
/// import com.pulumi.gcp.blockchainnodeengine.inputs.BlockchainNodesEthereumDetailsValidatorConfigArgs;
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
///         var defaultNodeBeaconFee = new BlockchainNodes("defaultNodeBeaconFee", BlockchainNodesArgs.builder()
///             .location("us-central1")
///             .blockchainType("ETHEREUM")
///             .blockchainNodeId("beacon_fee_node")
///             .ethereumDetails(BlockchainNodesEthereumDetailsArgs.builder()
///                 .apiEnableAdmin(true)
///                 .apiEnableDebug(true)
///                 .validatorConfig(BlockchainNodesEthereumDetailsValidatorConfigArgs.builder()
///                     .beaconFeeRecipient("0x89205A3A3b2A69De6Dbf7f01ED13B2108B2c43e7")
///                     .build())
///                 .nodeType("ARCHIVE")
///                 .consensusClient("LIGHTHOUSE")
///                 .executionClient("ERIGON")
///                 .network("MAINNET")
///                 .build())
///             .labels(Map.of("environment", "dev"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultNodeBeaconFee:
///     type: gcp:blockchainnodeengine:BlockchainNodes
///     name: default_node_beacon_fee
///     properties:
///       location: us-central1
///       blockchainType: ETHEREUM
///       blockchainNodeId: beacon_fee_node
///       ethereumDetails:
///         apiEnableAdmin: true
///         apiEnableDebug: true
///         validatorConfig:
///           beaconFeeRecipient: 0x89205A3A3b2A69De6Dbf7f01ED13B2108B2c43e7
///         nodeType: ARCHIVE
///         consensusClient: LIGHTHOUSE
///         executionClient: ERIGON
///         network: MAINNET
///       labels:
///         environment: dev
/// ```
///
///
/// ## Import
///
/// BlockchainNodes can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/blockchainNodes/{{blockchain_node_id}}`
/// * `{{project}}/{{location}}/{{blockchain_node_id}}`
/// * `{{location}}/{{blockchain_node_id}}`
///
///
/// When using the `pulumi import` command, BlockchainNodes can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:blockchainnodeengine/blockchainNodes:BlockchainNodes default projects/{{project}}/locations/{{location}}/blockchainNodes/{{blockchain_node_id}}
/// $ pulumi import gcp:blockchainnodeengine/blockchainNodes:BlockchainNodes default {{project}}/{{location}}/{{blockchain_node_id}}
/// $ pulumi import gcp:blockchainnodeengine/blockchainNodes:BlockchainNodes default {{location}}/{{blockchain_node_id}}
/// ```
class BlockchainNodes extends pulumi.CustomResource {
  /// ID of the requesting object.
  late final pulumi.Output<String> blockchainNodeId;
  /// User-provided key-value pairs
  /// Possible values are: `ETHEREUM`.
  late final pulumi.Output<String?> blockchainType;
  /// The connection information through which to interact with a blockchain node.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> connectionInfos;
  /// The timestamp at which the blockchain node was first created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// User-provided key-value pairs
  /// Structure is documented below.
  late final pulumi.Output<BlockchainNodesEthereumDetails?> ethereumDetails;
  /// User-provided key-value pairs
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Location of Blockchain Node being created.
  late final pulumi.Output<String> location;
  /// The fully qualified name of the blockchain node. e.g. projects/my-project/locations/us-central1/blockchainNodes/my-node.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The timestamp at which the blockchain node was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [BlockchainNodes].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BlockchainNodes]. {@macro pulumi_blockchainnodeengine_blockchain_nodes_blockchain_nodes_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BlockchainNodes(
    String name, {
    BlockchainNodesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:blockchainnodeengine/blockchainNodes:BlockchainNodes',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    blockchainNodeId = registerOutput<String>('blockchainNodeId');
    blockchainType = registerOutput<String?>('blockchainType');
    connectionInfos = registerOutput<List<Map<String, dynamic>>>('connectionInfos');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    ethereumDetails = registerOutput<BlockchainNodesEthereumDetails?>('ethereumDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BlockchainNodesEthereumDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [BlockchainNodes] resource's state with the given [name] and [id].
  static BlockchainNodes get(
    String name,
    pulumi.Input<String> id, {
    BlockchainNodesState? state,
  }) {
    return BlockchainNodes._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BlockchainNodes._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:blockchainnodeengine/blockchainNodes:BlockchainNodes',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    blockchainNodeId = registerOutput<String>('blockchainNodeId');
    blockchainType = registerOutput<String?>('blockchainType');
    connectionInfos = registerOutput<List<Map<String, dynamic>>>('connectionInfos');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    ethereumDetails = registerOutput<BlockchainNodesEthereumDetails?>('ethereumDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BlockchainNodesEthereumDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    updateTime = registerOutput<String>('updateTime');
  }
}
