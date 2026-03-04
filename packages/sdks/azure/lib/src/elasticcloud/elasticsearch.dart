import 'package:pulumi/pulumi.dart' as pulumi;
import 'elasticsearch_args.dart';
import 'elasticsearch_logs.dart';
import 'elasticsearch_state.dart';

/// Manages an Elasticsearch in Elastic Cloud.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const test = new azure.core.ResourceGroup("test", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const testElasticsearch = new azure.elasticcloud.Elasticsearch("test", {
///     name: "example-elasticsearch",
///     resourceGroupName: test.name,
///     location: test.location,
///     skuName: "ess-consumption-2024_Monthly",
///     elasticCloudEmailAddress: "user@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// test = azure.core.ResourceGroup("test",
///     name="example-resources",
///     location="West Europe")
/// test_elasticsearch = azure.elasticcloud.Elasticsearch("test",
///     name="example-elasticsearch",
///     resource_group_name=test.name,
///     location=test.location,
///     sku_name="ess-consumption-2024_Monthly",
///     elastic_cloud_email_address="user@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Azure.Core.ResourceGroup("test", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var testElasticsearch = new Azure.ElasticCloud.Elasticsearch("test", new()
///     {
///         Name = "example-elasticsearch",
///         ResourceGroupName = test.Name,
///         Location = test.Location,
///         SkuName = "ess-consumption-2024_Monthly",
///         ElasticCloudEmailAddress = "user@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/elasticcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := core.NewResourceGroup(ctx, "test", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elasticcloud.NewElasticsearch(ctx, "test", &elasticcloud.ElasticsearchArgs{
/// 			Name:                     pulumi.String("example-elasticsearch"),
/// 			ResourceGroupName:        test.Name,
/// 			Location:                 test.Location,
/// 			SkuName:                  pulumi.String("ess-consumption-2024_Monthly"),
/// 			ElasticCloudEmailAddress: pulumi.String("user@example.com"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.elasticcloud.Elasticsearch;
/// import com.pulumi.azure.elasticcloud.ElasticsearchArgs;
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
///         var test = new ResourceGroup("test", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var testElasticsearch = new Elasticsearch("testElasticsearch", ElasticsearchArgs.builder()
///             .name("example-elasticsearch")
///             .resourceGroupName(test.name())
///             .location(test.location())
///             .skuName("ess-consumption-2024_Monthly")
///             .elasticCloudEmailAddress("user@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   testElasticsearch:
///     type: azure:elasticcloud:Elasticsearch
///     name: test
///     properties:
///       name: example-elasticsearch
///       resourceGroupName: ${test.name}
///       location: ${test.location}
///       skuName: ess-consumption-2024_Monthly
///       elasticCloudEmailAddress: user@example.com
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Elastic` - 2023-06-01
///
/// ## Import
///
/// Elasticsearch's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:elasticcloud/elasticsearch:Elasticsearch example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Elastic/monitors/monitor1
/// ```
class Elasticsearch extends pulumi.CustomResource {
  /// The ID of the Deployment within Elastic Cloud.
  late final pulumi.Output<String> elasticCloudDeploymentId;

  /// Specifies the Email Address which should be associated with this Elasticsearch account. Changing this forces a new Elasticsearch to be created.
  late final pulumi.Output<String> elasticCloudEmailAddress;

  /// The Default URL used for Single Sign On (SSO) to Elastic Cloud.
  late final pulumi.Output<String> elasticCloudSsoDefaultUrl;

  /// The ID of the User Account within Elastic Cloud.
  late final pulumi.Output<String> elasticCloudUserId;

  /// The URL to the Elasticsearch Service associated with this Elasticsearch.
  late final pulumi.Output<String> elasticsearchServiceUrl;

  /// The URL to the Kibana Dashboard associated with this Elasticsearch.
  late final pulumi.Output<String> kibanaServiceUrl;

  /// The URI used for SSO to the Kibana Dashboard associated with this Elasticsearch.
  late final pulumi.Output<String> kibanaSsoUri;

  /// The Azure Region where the Elasticsearch resource should exist. Changing this forces a new Elasticsearch to be created.
  late final pulumi.Output<String> location;

  /// A `logs` block as defined below.
  late final pulumi.Output<ElasticsearchLogs?> logs;

  /// Specifies if the Elasticsearch should have monitoring configured? Defaults to `true`. Changing this forces a new Elasticsearch to be created.
  late final pulumi.Output<bool?> monitoringEnabled;

  /// The name which should be used for this Elasticsearch resource. Changing this forces a new Elasticsearch to be created.
  late final pulumi.Output<String> name;

  /// The name of the Resource Group where the Elasticsearch resource should exist. Changing this forces a new Elasticsearch to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Specifies the name of the SKU for this Elasticsearch. Changing this forces a new Elasticsearch to be created.
  ///
  /// &gt; **Note:** The SKU depends on the Elasticsearch Plans available for your account and is a combination of PlanID_Term.
  /// Ex: If the plan ID is "planXYZ" and term is "Yearly", the SKU will be "planXYZ_Yearly".
  /// You may find your eligible plans [here](https://portal.azure.com/#view/Microsoft_Azure_Marketplace/GalleryItemDetailsBladeNopdl/id/elastic.ec-azure-pp) or in the online documentation [here](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/elastic.ec-azure-pp?tab=PlansAndPrice) for more details or in case of any issues with the SKU.
  late final pulumi.Output<String> skuName;

  /// A mapping of tags which should be assigned to the Elasticsearch resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Elasticsearch].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Elasticsearch]. {@macro pulumi_elasticcloud_elasticsearch_elasticsearch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Elasticsearch(
    String name, {
    ElasticsearchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:elasticcloud/elasticsearch:Elasticsearch',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    elasticCloudDeploymentId = registerOutput<String>(
      'elasticCloudDeploymentId',
    );
    elasticCloudEmailAddress = registerOutput<String>(
      'elasticCloudEmailAddress',
    );
    elasticCloudSsoDefaultUrl = registerOutput<String>(
      'elasticCloudSsoDefaultUrl',
    );
    elasticCloudUserId = registerOutput<String>('elasticCloudUserId');
    elasticsearchServiceUrl = registerOutput<String>('elasticsearchServiceUrl');
    kibanaServiceUrl = registerOutput<String>('kibanaServiceUrl');
    kibanaSsoUri = registerOutput<String>('kibanaSsoUri');
    location = registerOutput<String>('location');
    logs = registerOutput<ElasticsearchLogs?>('logs');
    monitoringEnabled = registerOutput<bool?>('monitoringEnabled');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Elasticsearch] resource's state with the given [name] and [id].
  static Elasticsearch get(
    String name,
    pulumi.Input<String> id, {
    ElasticsearchState? state,
  }) {
    return Elasticsearch._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Elasticsearch._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:elasticcloud/elasticsearch:Elasticsearch',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    elasticCloudDeploymentId = registerOutput<String>(
      'elasticCloudDeploymentId',
    );
    elasticCloudEmailAddress = registerOutput<String>(
      'elasticCloudEmailAddress',
    );
    elasticCloudSsoDefaultUrl = registerOutput<String>(
      'elasticCloudSsoDefaultUrl',
    );
    elasticCloudUserId = registerOutput<String>('elasticCloudUserId');
    elasticsearchServiceUrl = registerOutput<String>('elasticsearchServiceUrl');
    kibanaServiceUrl = registerOutput<String>('kibanaServiceUrl');
    kibanaSsoUri = registerOutput<String>('kibanaSsoUri');
    location = registerOutput<String>('location');
    logs = registerOutput<ElasticsearchLogs?>('logs');
    monitoringEnabled = registerOutput<bool?>('monitoringEnabled');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
