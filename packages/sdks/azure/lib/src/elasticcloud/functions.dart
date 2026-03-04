import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_elasticsearch_args.dart';
import 'get_elasticsearch_result.dart';

/// Use this data source to access information about an existing Elasticsearch resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.elasticcloud.getElasticsearch({
///     name: "my-elastic-search",
///     resourceGroupName: "example-resources",
/// });
/// export const elasticsearchEndpoint = example.then(example => example.elasticsearchServiceUrl);
/// export const kibanaEndpoint = example.then(example => example.kibanaServiceUrl);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.elasticcloud.get_elasticsearch(name="my-elastic-search",
///     resource_group_name="example-resources")
/// pulumi.export("elasticsearchEndpoint", example.elasticsearch_service_url)
/// pulumi.export("kibanaEndpoint", example.kibana_service_url)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ElasticCloud.GetElasticsearch.Invoke(new()
///     {
///         Name = "my-elastic-search",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["elasticsearchEndpoint"] = example.Apply(getElasticsearchResult => getElasticsearchResult.ElasticsearchServiceUrl),
///         ["kibanaEndpoint"] = example.Apply(getElasticsearchResult => getElasticsearchResult.KibanaServiceUrl),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/elasticcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := elasticcloud.LookupElasticsearch(ctx, &elasticcloud.LookupElasticsearchArgs{
/// 			Name:              "my-elastic-search",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("elasticsearchEndpoint", example.ElasticsearchServiceUrl)
/// 		ctx.Export("kibanaEndpoint", example.KibanaServiceUrl)
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
/// import com.pulumi.azure.elasticcloud.ElasticcloudFunctions;
/// import com.pulumi.azure.elasticcloud.inputs.GetElasticsearchArgs;
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
///         final var example = ElasticcloudFunctions.getElasticsearch(GetElasticsearchArgs.builder()
///             .name("my-elastic-search")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("elasticsearchEndpoint", example.elasticsearchServiceUrl());
///         ctx.export("kibanaEndpoint", example.kibanaServiceUrl());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:elasticcloud:getElasticsearch
///       arguments:
///         name: my-elastic-search
///         resourceGroupName: example-resources
/// outputs:
///   elasticsearchEndpoint: ${example.elasticsearchServiceUrl}
///   kibanaEndpoint: ${example.kibanaServiceUrl}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Elastic` - 2023-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_elasticcloud_get_elasticsearch_get_elasticsearch_args_doc}
/// [options] Invoke options controlling this call.
Future<GetElasticsearchResult> getElasticsearch(
  GetElasticsearchArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:elasticcloud/getElasticsearch:getElasticsearch',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticsearchResult.fromMap(result);
}
