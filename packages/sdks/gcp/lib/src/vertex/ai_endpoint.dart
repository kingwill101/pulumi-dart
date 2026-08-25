import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_args.dart';
import 'ai_endpoint_deployed_model.dart';
import 'ai_endpoint_encryption_spec.dart';
import 'ai_endpoint_predict_request_response_logging_config.dart';
import 'ai_endpoint_private_service_connect_config.dart';
import 'ai_endpoint_state.dart';

/// Models are deployed into it, and afterwards Endpoint is called to obtain predictions and explanations.
///
///
/// To get more information about Endpoint, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.endpoints)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
/// ## Example Usage
///
/// ### Vertex Ai Endpoint Network
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const vertexNetwork = new gcp.compute.Network("vertex_network", {name: "network-name"});
/// const vertexRange = new gcp.compute.GlobalAddress("vertex_range", {
///     name: "address-name",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 24,
///     network: vertexNetwork.id,
/// });
/// const vertexVpcConnection = new gcp.servicenetworking.Connection("vertex_vpc_connection", {
///     network: vertexNetwork.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [vertexRange.name],
/// });
/// const bqDataset = new gcp.bigquery.Dataset("bq_dataset", {
///     datasetId: "some_dataset",
///     friendlyName: "logging dataset",
///     description: "This is a dataset that requests are logged to",
///     location: "US",
///     deleteContentsOnDestroy: true,
/// });
/// const project = gcp.organizations.getProject({});
/// const endpoint = new gcp.vertex.AiEndpoint("endpoint", {
///     name: "endpoint-name",
///     displayName: "sample-endpoint",
///     description: "A sample vertex endpoint",
///     location: "us-central1",
///     region: "us-central1",
///     labels: {
///         "label-one": "value-one",
///     },
///     network: pulumi.all([project, vertexNetwork.name]).apply(([project, name]) => `projects/${project.number}/global/networks/${name}`),
///     encryptionSpec: {
///         kmsKeyName: "kms-name",
///     },
///     predictRequestResponseLoggingConfig: {
///         bigqueryDestination: {
///             outputUri: pulumi.all([project, bqDataset.datasetId]).apply(([project, datasetId]) => `bq://${project.projectId}.${datasetId}.request_response_logging`),
///         },
///         enabled: true,
///         samplingRate: 0.1,
///     },
///     trafficSplit: JSON.stringify({
///         "12345": 100,
///     }),
/// }, {
///     dependsOn: [vertexVpcConnection],
/// });
/// const cryptoKey = new gcp.kms.CryptoKeyIAMMember("crypto_key", {
///     cryptoKeyId: "kms-name",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com`),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// vertex_network = gcp.compute.Network("vertex_network", name="network-name")
/// vertex_range = gcp.compute.GlobalAddress("vertex_range",
///     name="address-name",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=24,
///     network=vertex_network.id)
/// vertex_vpc_connection = gcp.servicenetworking.Connection("vertex_vpc_connection",
///     network=vertex_network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[vertex_range.name])
/// bq_dataset = gcp.bigquery.Dataset("bq_dataset",
///     dataset_id="some_dataset",
///     friendly_name="logging dataset",
///     description="This is a dataset that requests are logged to",
///     location="US",
///     delete_contents_on_destroy=True)
/// project = gcp.organizations.get_project()
/// endpoint = gcp.vertex.AiEndpoint("endpoint",
///     name="endpoint-name",
///     display_name="sample-endpoint",
///     description="A sample vertex endpoint",
///     location="us-central1",
///     region="us-central1",
///     labels={
///         "label-one": "value-one",
///     },
///     network=vertex_network.name.apply(lambda name: f"projects/{project.number}/global/networks/{name}"),
///     encryption_spec={
///         "kms_key_name": "kms-name",
///     },
///     predict_request_response_logging_config={
///         "bigquery_destination": {
///             "output_uri": bq_dataset.dataset_id.apply(lambda dataset_id: f"bq://{project.project_id}.{dataset_id}.request_response_logging"),
///         },
///         "enabled": True,
///         "sampling_rate": 0.1,
///     },
///     traffic_split=json.dumps({
///         "12345": 100,
///     }),
///     opts = pulumi.ResourceOptions(depends_on=[vertex_vpc_connection]))
/// crypto_key = gcp.kms.CryptoKeyIAMMember("crypto_key",
///     crypto_key_id="kms-name",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com")
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
///     var vertexNetwork = new Gcp.Compute.Network("vertex_network", new()
///     {
///         Name = "network-name",
///     });
///
///     var vertexRange = new Gcp.Compute.GlobalAddress("vertex_range", new()
///     {
///         Name = "address-name",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 24,
///         Network = vertexNetwork.Id,
///     });
///
///     var vertexVpcConnection = new Gcp.ServiceNetworking.Connection("vertex_vpc_connection", new()
///     {
///         Network = vertexNetwork.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             vertexRange.Name,
///         },
///     });
///
///     var bqDataset = new Gcp.BigQuery.Dataset("bq_dataset", new()
///     {
///         DatasetId = "some_dataset",
///         FriendlyName = "logging dataset",
///         Description = "This is a dataset that requests are logged to",
///         Location = "US",
///         DeleteContentsOnDestroy = true,
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var endpoint = new Gcp.Vertex.AiEndpoint("endpoint", new()
///     {
///         Name = "endpoint-name",
///         DisplayName = "sample-endpoint",
///         Description = "A sample vertex endpoint",
///         Location = "us-central1",
///         Region = "us-central1",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Network = Output.Tuple(project, vertexNetwork.Name).Apply(values =>
///         {
///             var project = values.Item1;
///             var name = values.Item2;
///             return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/global/networks/{name}";
///         }),
///         EncryptionSpec = new Gcp.Vertex.Inputs.AiEndpointEncryptionSpecArgs
///         {
///             KmsKeyName = "kms-name",
///         },
///         PredictRequestResponseLoggingConfig = new Gcp.Vertex.Inputs.AiEndpointPredictRequestResponseLoggingConfigArgs
///         {
///             BigqueryDestination = new Gcp.Vertex.Inputs.AiEndpointPredictRequestResponseLoggingConfigBigqueryDestinationArgs
///             {
///                 OutputUri = Output.Tuple(project, bqDataset.DatasetId).Apply(values =>
///                 {
///                     var project = values.Item1;
///                     var datasetId = values.Item2;
///                     return $"bq://{project.Apply(getProjectResult => getProjectResult.ProjectId)}.{datasetId}.request_response_logging";
///                 }),
///             },
///             Enabled = true,
///             SamplingRate = 0.1,
///         },
///         TrafficSplit = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["12345"] = 100,
///         }),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vertexVpcConnection,
///         },
///     });
///
///     var cryptoKey = new Gcp.Kms.CryptoKeyIAMMember("crypto_key", new()
///     {
///         CryptoKeyId = "kms-name",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-aiplatform.iam.gserviceaccount.com",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		vertexNetwork, err := compute.NewNetwork(ctx, "vertex_network", &compute.NetworkArgs{
/// 			Name: pulumi.String("network-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vertexRange, err := compute.NewGlobalAddress(ctx, "vertex_range", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("address-name"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			PrefixLength: pulumi.Int(24),
/// 			Network:      vertexNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vertexVpcConnection, err := servicenetworking.NewConnection(ctx, "vertex_vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: vertexNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				vertexRange.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bqDataset, err := bigquery.NewDataset(ctx, "bq_dataset", &bigquery.DatasetArgs{
/// 			DatasetId:               pulumi.String("some_dataset"),
/// 			FriendlyName:            pulumi.String("logging dataset"),
/// 			Description:             pulumi.String("This is a dataset that requests are logged to"),
/// 			Location:                pulumi.String("US"),
/// 			DeleteContentsOnDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]int{
/// 			"12345": 100,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = vertex.NewAiEndpoint(ctx, "endpoint", &vertex.AiEndpointArgs{
/// 			Name:        pulumi.String("endpoint-name"),
/// 			DisplayName: pulumi.String("sample-endpoint"),
/// 			Description: pulumi.String("A sample vertex endpoint"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Network: vertexNetwork.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/global/networks/%v", project.Number, name), nil
/// 			}).(pulumi.StringOutput),
/// 			EncryptionSpec: &vertex.AiEndpointEncryptionSpecArgs{
/// 				KmsKeyName: pulumi.String("kms-name"),
/// 			},
/// 			PredictRequestResponseLoggingConfig: &vertex.AiEndpointPredictRequestResponseLoggingConfigArgs{
/// 				BigqueryDestination: &vertex.AiEndpointPredictRequestResponseLoggingConfigBigqueryDestinationArgs{
/// 					OutputUri: bqDataset.DatasetId.ApplyT(func(datasetId string) (string, error) {
/// 						return fmt.Sprintf("bq://%v.%v.request_response_logging", project.ProjectId, datasetId), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				Enabled:      pulumi.Bool(true),
/// 				SamplingRate: pulumi.Float64(0.1),
/// 			},
/// 			TrafficSplit: pulumi.String(json0),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vertexVpcConnection,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewCryptoKeyIAMMember(ctx, "crypto_key", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("kms-name"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-aiplatform.iam.gserviceaccount.com", project.Number),
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
/// resource "gcp_vertex_aiendpoint" "endpoint" {
///   depends_on   = [gcp_servicenetworking_connection.vertex_vpc_connection]
///   name         = "endpoint-name"
///   display_name = "sample-endpoint"
///   description  = "A sample vertex endpoint"
///   location     = "us-central1"
///   region       = "us-central1"
///   labels = {
///     "label-one" = "value-one"
///   }
///   network ="projects/${data.gcp_organizations_getproject.project.number}/global/networks/${gcp_compute_network.vertex_network.name}"
///   encryption_spec = {
///     kms_key_name = "kms-name"
///   }
///   predict_request_response_logging_config = {
///     bigquery_destination = {
///       output_uri ="bq://${data.gcp_organizations_getproject.project.project_id}.${gcp_bigquery_dataset.bq_dataset.dataset_id}.request_response_logging"
///     }
///     enabled       = true
///     sampling_rate = 0.1
///   }
///   traffic_split = jsonencode({
///     "12345" = 100
///   })
/// }
/// resource "gcp_servicenetworking_connection" "vertex_vpc_connection" {
///   network                 = gcp_compute_network.vertex_network.id
///   service                 = "servicenetworking.googleapis.com"
///   reserved_peering_ranges = [gcp_compute_globaladdress.vertex_range.name]
/// }
/// resource "gcp_compute_globaladdress" "vertex_range" {
///   name          = "address-name"
///   purpose       = "VPC_PEERING"
///   address_type  = "INTERNAL"
///   prefix_length = 24
///   network       = gcp_compute_network.vertex_network.id
/// }
/// resource "gcp_compute_network" "vertex_network" {
///   name = "network-name"
/// }
/// resource "gcp_kms_cryptokeyiammember" "crypto_key" {
///   crypto_key_id = "kms-name"
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com"
/// }
/// resource "gcp_bigquery_dataset" "bq_dataset" {
///   dataset_id                 = "some_dataset"
///   friendly_name              = "logging dataset"
///   description                = "This is a dataset that requests are logged to"
///   location                   = "US"
///   delete_contents_on_destroy = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.vertex.AiEndpoint;
/// import com.pulumi.gcp.vertex.AiEndpointArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointEncryptionSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointPredictRequestResponseLoggingConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointPredictRequestResponseLoggingConfigBigqueryDestinationArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
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
///         var vertexNetwork = new Network("vertexNetwork", NetworkArgs.builder()
///             .name("network-name")
///             .build());
///
///         var vertexRange = new GlobalAddress("vertexRange", GlobalAddressArgs.builder()
///             .name("address-name")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(24)
///             .network(vertexNetwork.id())
///             .build());
///
///         var vertexVpcConnection = new Connection("vertexVpcConnection", ConnectionArgs.builder()
///             .network(vertexNetwork.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(vertexRange.name())
///             .build());
///
///         var bqDataset = new Dataset("bqDataset", DatasetArgs.builder()
///             .datasetId("some_dataset")
///             .friendlyName("logging dataset")
///             .description("This is a dataset that requests are logged to")
///             .location("US")
///             .deleteContentsOnDestroy(true)
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var endpoint = new AiEndpoint("endpoint", AiEndpointArgs.builder()
///             .name("endpoint-name")
///             .displayName("sample-endpoint")
///             .description("A sample vertex endpoint")
///             .location("us-central1")
///             .region("us-central1")
///             .labels(Map.of("label-one", "value-one"))
///             .network(vertexNetwork.name().applyValue(_name -> String.format("projects/%s/global/networks/%s", project.number(),_name)))
///             .encryptionSpec(AiEndpointEncryptionSpecArgs.builder()
///                 .kmsKeyName("kms-name")
///                 .build())
///             .predictRequestResponseLoggingConfig(AiEndpointPredictRequestResponseLoggingConfigArgs.builder()
///                 .bigqueryDestination(AiEndpointPredictRequestResponseLoggingConfigBigqueryDestinationArgs.builder()
///                     .outputUri(bqDataset.datasetId().applyValue(_datasetId -> String.format("bq://%s.%s.request_response_logging", project.projectId(),_datasetId)))
///                     .build())
///                 .enabled(true)
///                 .samplingRate(0.1)
///                 .build())
///             .trafficSplit(serializeJson(
///                 jsonObject(
///                     jsonProperty("12345", 100)
///                 )))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(vertexVpcConnection)
///                 .build());
///
///         var cryptoKey = new CryptoKeyIAMMember("cryptoKey", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("kms-name")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-aiplatform.iam.gserviceaccount.com", project.number()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   endpoint:
///     type: gcp:vertex:AiEndpoint
///     properties:
///       name: endpoint-name
///       displayName: sample-endpoint
///       description: A sample vertex endpoint
///       location: us-central1
///       region: us-central1
///       labels:
///         label-one: value-one
///       network: projects/${project.number}/global/networks/${vertexNetwork.name}
///       encryptionSpec:
///         kmsKeyName: kms-name
///       predictRequestResponseLoggingConfig:
///         bigqueryDestination:
///           outputUri: bq://${project.projectId}.${bqDataset.datasetId}.request_response_logging
///         enabled: true
///         samplingRate: 0.1
///       trafficSplit:
///         fn::toJSON:
///           '12345': 100
///     options:
///       dependsOn:
///         - ${vertexVpcConnection}
///   vertexVpcConnection:
///     type: gcp:servicenetworking:Connection
///     name: vertex_vpc_connection
///     properties:
///       network: ${vertexNetwork.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${vertexRange.name}
///   vertexRange:
///     type: gcp:compute:GlobalAddress
///     name: vertex_range
///     properties:
///       name: address-name
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 24
///       network: ${vertexNetwork.id}
///   vertexNetwork:
///     type: gcp:compute:Network
///     name: vertex_network
///     properties:
///       name: network-name
///   cryptoKey:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: crypto_key
///     properties:
///       cryptoKeyId: kms-name
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:service-${project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com
///   bqDataset:
///     type: gcp:bigquery:Dataset
///     name: bq_dataset
///     properties:
///       datasetId: some_dataset
///       friendlyName: logging dataset
///       description: This is a dataset that requests are logged to
///       location: US
///       deleteContentsOnDestroy: true
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Vertex Ai Endpoint Private Service Connect
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {name: "psc-network-_13786"});
/// const project = gcp.organizations.getProject({});
/// const endpoint = new gcp.vertex.AiEndpoint("endpoint", {
///     name: "endpoint-name_29040",
///     displayName: "sample-endpoint",
///     description: "A sample vertex endpoint",
///     location: "us-central1",
///     region: "us-central1",
///     labels: {
///         "label-one": "value-one",
///     },
///     privateServiceConnectConfig: {
///         enablePrivateServiceConnect: true,
///         projectAllowlists: [project.then(project => project.projectId)],
///         pscAutomationConfigs: [{
///             projectId: project.then(project => project.projectId),
///             network: _default.id,
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default", name="psc-network-_13786")
/// project = gcp.organizations.get_project()
/// endpoint = gcp.vertex.AiEndpoint("endpoint",
///     name="endpoint-name_29040",
///     display_name="sample-endpoint",
///     description="A sample vertex endpoint",
///     location="us-central1",
///     region="us-central1",
///     labels={
///         "label-one": "value-one",
///     },
///     private_service_connect_config={
///         "enable_private_service_connect": True,
///         "project_allowlists": [project.project_id],
///         "psc_automation_configs": [{
///             "project_id": project.project_id,
///             "network": default.id,
///         }],
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
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "psc-network-_13786",
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var endpoint = new Gcp.Vertex.AiEndpoint("endpoint", new()
///     {
///         Name = "endpoint-name_29040",
///         DisplayName = "sample-endpoint",
///         Description = "A sample vertex endpoint",
///         Location = "us-central1",
///         Region = "us-central1",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         PrivateServiceConnectConfig = new Gcp.Vertex.Inputs.AiEndpointPrivateServiceConnectConfigArgs
///         {
///             EnablePrivateServiceConnect = true,
///             ProjectAllowlists = new[]
///             {
///                 project.Apply(getProjectResult => getProjectResult.ProjectId),
///             },
///             PscAutomationConfigs = new[]
///             {
///                 new Gcp.Vertex.Inputs.AiEndpointPrivateServiceConnectConfigPscAutomationConfigArgs
///                 {
///                     ProjectId = project.Apply(getProjectResult => getProjectResult.ProjectId),
///                     Network = @default.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("psc-network-_13786"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiEndpoint(ctx, "endpoint", &vertex.AiEndpointArgs{
/// 			Name:        pulumi.String("endpoint-name_29040"),
/// 			DisplayName: pulumi.String("sample-endpoint"),
/// 			Description: pulumi.String("A sample vertex endpoint"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			PrivateServiceConnectConfig: &vertex.AiEndpointPrivateServiceConnectConfigArgs{
/// 				EnablePrivateServiceConnect: pulumi.Bool(true),
/// 				ProjectAllowlists: pulumi.StringArray{
/// 					pulumi.String(project.ProjectId),
/// 				},
/// 				PscAutomationConfigs: vertex.AiEndpointPrivateServiceConnectConfigPscAutomationConfigArray{
/// 					&vertex.AiEndpointPrivateServiceConnectConfigPscAutomationConfigArgs{
/// 						ProjectId: pulumi.String(project.ProjectId),
/// 						Network:   _default.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_network" "default" {
///   name = "psc-network-_13786"
/// }
/// resource "gcp_vertex_aiendpoint" "endpoint" {
///   name         = "endpoint-name_29040"
///   display_name = "sample-endpoint"
///   description  = "A sample vertex endpoint"
///   location     = "us-central1"
///   region       = "us-central1"
///   labels = {
///     "label-one" = "value-one"
///   }
///   private_service_connect_config = {
///     enable_private_service_connect = true
///     project_allowlists             = [data.gcp_organizations_getproject.project.project_id]
///     psc_automation_configs = [{
///       "projectId" = data.gcp_organizations_getproject.project.project_id
///       "network"   = gcp_compute_network.default.id
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.vertex.AiEndpoint;
/// import com.pulumi.gcp.vertex.AiEndpointArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointPrivateServiceConnectConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointPrivateServiceConnectConfigPscAutomationConfigArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("psc-network-_13786")
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var endpoint = new AiEndpoint("endpoint", AiEndpointArgs.builder()
///             .name("endpoint-name_29040")
///             .displayName("sample-endpoint")
///             .description("A sample vertex endpoint")
///             .location("us-central1")
///             .region("us-central1")
///             .labels(Map.of("label-one", "value-one"))
///             .privateServiceConnectConfig(AiEndpointPrivateServiceConnectConfigArgs.builder()
///                 .enablePrivateServiceConnect(true)
///                 .projectAllowlists(project.projectId())
///                 .pscAutomationConfigs(AiEndpointPrivateServiceConnectConfigPscAutomationConfigArgs.builder()
///                     .projectId(project.projectId())
///                     .network(default_.id())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: psc-network-_13786
///   endpoint:
///     type: gcp:vertex:AiEndpoint
///     properties:
///       name: endpoint-name_29040
///       displayName: sample-endpoint
///       description: A sample vertex endpoint
///       location: us-central1
///       region: us-central1
///       labels:
///         label-one: value-one
///       privateServiceConnectConfig:
///         enablePrivateServiceConnect: true
///         projectAllowlists:
///           - ${project.projectId}
///         pscAutomationConfigs:
///           - projectId: ${project.projectId}
///             network: ${default.id}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Vertex Ai Endpoint Dedicated Endpoint
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const endpoint = new gcp.vertex.AiEndpoint("endpoint", {
///     name: "endpoint-name_78181",
///     displayName: "sample-endpoint",
///     description: "A sample vertex endpoint",
///     location: "us-central1",
///     region: "us-central1",
///     labels: {
///         "label-one": "value-one",
///     },
///     dedicatedEndpointEnabled: true,
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// endpoint = gcp.vertex.AiEndpoint("endpoint",
///     name="endpoint-name_78181",
///     display_name="sample-endpoint",
///     description="A sample vertex endpoint",
///     location="us-central1",
///     region="us-central1",
///     labels={
///         "label-one": "value-one",
///     },
///     dedicated_endpoint_enabled=True)
/// project = gcp.organizations.get_project()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var endpoint = new Gcp.Vertex.AiEndpoint("endpoint", new()
///     {
///         Name = "endpoint-name_78181",
///         DisplayName = "sample-endpoint",
///         Description = "A sample vertex endpoint",
///         Location = "us-central1",
///         Region = "us-central1",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         DedicatedEndpointEnabled = true,
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
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
/// 		_, err := vertex.NewAiEndpoint(ctx, "endpoint", &vertex.AiEndpointArgs{
/// 			Name:        pulumi.String("endpoint-name_78181"),
/// 			DisplayName: pulumi.String("sample-endpoint"),
/// 			Description: pulumi.String("A sample vertex endpoint"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			DedicatedEndpointEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// resource "gcp_vertex_aiendpoint" "endpoint" {
///   name         = "endpoint-name_78181"
///   display_name = "sample-endpoint"
///   description  = "A sample vertex endpoint"
///   location     = "us-central1"
///   region       = "us-central1"
///   labels = {
///     "label-one" = "value-one"
///   }
///   dedicated_endpoint_enabled = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiEndpoint;
/// import com.pulumi.gcp.vertex.AiEndpointArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///         var endpoint = new AiEndpoint("endpoint", AiEndpointArgs.builder()
///             .name("endpoint-name_78181")
///             .displayName("sample-endpoint")
///             .description("A sample vertex endpoint")
///             .location("us-central1")
///             .region("us-central1")
///             .labels(Map.of("label-one", "value-one"))
///             .dedicatedEndpointEnabled(true)
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   endpoint:
///     type: gcp:vertex:AiEndpoint
///     properties:
///       name: endpoint-name_78181
///       displayName: sample-endpoint
///       description: A sample vertex endpoint
///       location: us-central1
///       region: us-central1
///       labels:
///         label-one: value-one
///       dedicatedEndpointEnabled: true
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Endpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/endpoints/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Endpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiEndpoint:AiEndpoint default projects/{{project}}/locations/{{location}}/endpoints/{{name}}
/// $ pulumi import gcp:vertex/aiEndpoint:AiEndpoint default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:vertex/aiEndpoint:AiEndpoint default {{location}}/{{name}}
/// ```
class AiEndpoint extends pulumi.CustomResource {
  /// (Output)
  /// Output only. Timestamp when the DeployedModel was created.
  late final pulumi.Output<String> createTime;
  /// Output only. DNS of the dedicated endpoint. Will only be populated if dedicatedEndpointEnabled is true. Format: `https://{endpointId}.{region}-{projectNumber}.prediction.vertexai.goog`.
  late final pulumi.Output<String> dedicatedEndpointDns;
  /// If true, the endpoint will be exposed through a dedicated DNS [Endpoint.dedicated_endpoint_dns]. Your request to the dedicated DNS will be isolated from other users' traffic and will have better performance and reliability. Note: Once you enabled dedicated endpoint, you won't be able to send request to the shared DNS {region}-aiplatform.googleapis.com. The limitation will be removed soon.
  late final pulumi.Output<bool?> dedicatedEndpointEnabled;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Output only. The models deployed in this Endpoint. To add or remove DeployedModels use EndpointService.DeployModel and EndpointService.UndeployModel respectively. Models can also be deployed and undeployed using the [Cloud Console](https://console.cloud.google.com/vertex-ai/).
  /// Structure is documented below.
  late final pulumi.Output<List<AiEndpointDeployedModel>> deployedModels;
  /// The description of the Endpoint.
  late final pulumi.Output<String?> description;
  /// Required. The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Customer-managed encryption key spec for an Endpoint. If set, this Endpoint and all sub-resources of this Endpoint will be secured by this key.
  /// Structure is documented below.
  late final pulumi.Output<AiEndpointEncryptionSpec?> encryptionSpec;
  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final pulumi.Output<String> etag;
  /// The labels with user-defined metadata to organize your Endpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// Output only. Resource name of the Model Monitoring job associated with this Endpoint if monitoring is enabled by CreateModelDeploymentMonitoringJob. Format: `projects/{project}/locations/{location}/modelDeploymentMonitoringJobs/{model_deployment_monitoring_job}`
  late final pulumi.Output<String> modelDeploymentMonitoringJob;
  /// The resource name of the Endpoint. The name must be numeric with no leading zeros and can be at most 10 digits.
  late final pulumi.Output<String> name;
  /// The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the Endpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. Only one of the fields, network or enable_private_service_connect, can be set. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where `{project}` is a project number, as in `12345`, and `{network}` is network name. Only one of the fields, `network` or `privateServiceConnectConfig`, can be set.
  late final pulumi.Output<String?> network;
  /// Configures the request-response logging for online prediction.
  /// Structure is documented below.
  late final pulumi.Output<AiEndpointPredictRequestResponseLoggingConfig?> predictRequestResponseLoggingConfig;
  /// Configuration for private service connect. `network` and `privateServiceConnectConfig` are mutually exclusive.
  /// Structure is documented below.
  late final pulumi.Output<AiEndpointPrivateServiceConnectConfig?> privateServiceConnectConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region for the resource
  late final pulumi.Output<String?> region;
  /// A map from a DeployedModel's id to the percentage of this Endpoint's traffic that should be forwarded to that DeployedModel.
  /// If a DeployedModel's id is not listed in this map, then it receives no traffic.
  /// The traffic percentage values must add up to 100, or map must be empty if the Endpoint is to not accept any traffic at a moment. See
  /// the `deployModel` [example](https://cloud.google.com/vertex-ai/docs/general/deployment#deploy_a_model_to_an_endpoint) and
  /// [documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1beta1/projects.locations.endpoints/deployModel) for more information.
  /// &gt; **Note:** To set the map to empty, set `"{}"`, apply, and then remove the field from your config.
  late final pulumi.Output<String> trafficSplit;
  /// Output only. Timestamp when this Endpoint was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AiEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiEndpoint]. {@macro pulumi_vertex_ai_endpoint_ai_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiEndpoint(
    String name, {
    AiEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEndpoint:AiEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    dedicatedEndpointDns = registerOutput<String>('dedicatedEndpointDns');
    dedicatedEndpointEnabled = registerOutput<bool?>('dedicatedEndpointEnabled');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deployedModels = registerOutput<List<AiEndpointDeployedModel>>('deployedModels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiEndpointDeployedModel>(guardedValue, (value) => AiEndpointDeployedModel.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<AiEndpointEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiEndpointEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    modelDeploymentMonitoringJob = registerOutput<String>('modelDeploymentMonitoringJob');
    this.name = registerOutput<String>('name');
    network = registerOutput<String?>('network');
    predictRequestResponseLoggingConfig = registerOutput<AiEndpointPredictRequestResponseLoggingConfig?>('predictRequestResponseLoggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiEndpointPredictRequestResponseLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateServiceConnectConfig = registerOutput<AiEndpointPrivateServiceConnectConfig?>('privateServiceConnectConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiEndpointPrivateServiceConnectConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String?>('region');
    trafficSplit = registerOutput<String>('trafficSplit');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AiEndpoint] resource's state with the given [name] and [id].
  static AiEndpoint get(
    String name,
    pulumi.Input<String> id, {
    AiEndpointState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEndpoint:AiEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dedicatedEndpointDns = registerOutput<String>('dedicatedEndpointDns');
    dedicatedEndpointEnabled = registerOutput<bool?>('dedicatedEndpointEnabled');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deployedModels = registerOutput<List<AiEndpointDeployedModel>>('deployedModels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiEndpointDeployedModel>(guardedValue, (value) => AiEndpointDeployedModel.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<AiEndpointEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiEndpointEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    modelDeploymentMonitoringJob = registerOutput<String>('modelDeploymentMonitoringJob');
    this.name = registerOutput<String>('name');
    network = registerOutput<String?>('network');
    predictRequestResponseLoggingConfig = registerOutput<AiEndpointPredictRequestResponseLoggingConfig?>('predictRequestResponseLoggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiEndpointPredictRequestResponseLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateServiceConnectConfig = registerOutput<AiEndpointPrivateServiceConnectConfig?>('privateServiceConnectConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiEndpointPrivateServiceConnectConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String?>('region');
    trafficSplit = registerOutput<String>('trafficSplit');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [AiEndpoint] resource.
  AiEndpoint.reference(String urn)
    : super(
        'gcp:vertex/aiEndpoint:AiEndpoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    dedicatedEndpointDns = registerOutput<String>('dedicatedEndpointDns');
    dedicatedEndpointEnabled = registerOutput<bool?>('dedicatedEndpointEnabled');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deployedModels = registerOutput<List<AiEndpointDeployedModel>>('deployedModels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiEndpointDeployedModel>(guardedValue, (value) => AiEndpointDeployedModel.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<AiEndpointEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiEndpointEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    modelDeploymentMonitoringJob = registerOutput<String>('modelDeploymentMonitoringJob');
    this.name = registerOutput<String>('name');
    network = registerOutput<String?>('network');
    predictRequestResponseLoggingConfig = registerOutput<AiEndpointPredictRequestResponseLoggingConfig?>('predictRequestResponseLoggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiEndpointPredictRequestResponseLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateServiceConnectConfig = registerOutput<AiEndpointPrivateServiceConnectConfig?>('privateServiceConnectConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiEndpointPrivateServiceConnectConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String?>('region');
    trafficSplit = registerOutput<String>('trafficSplit');
    updateTime = registerOutput<String>('updateTime');
  }
}
