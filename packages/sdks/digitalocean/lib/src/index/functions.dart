import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_result.dart';
import 'get_app_args.dart';
import 'get_app_result.dart';
import 'get_byoip_prefix_args.dart';
import 'get_byoip_prefix_resources_args.dart';
import 'get_byoip_prefix_resources_result.dart';
import 'get_byoip_prefix_result.dart';
import 'get_certificate_args.dart';
import 'get_certificate_result.dart';
import 'get_container_registries_args.dart';
import 'get_container_registries_result.dart';
import 'get_container_registry_args.dart';
import 'get_container_registry_result.dart';
import 'get_database_ca_args.dart';
import 'get_database_ca_result.dart';
import 'get_database_cluster_args.dart';
import 'get_database_cluster_result.dart';
import 'get_database_connection_pool_args.dart';
import 'get_database_connection_pool_result.dart';
import 'get_database_metrics_credentials_result.dart';
import 'get_database_replica_args.dart';
import 'get_database_replica_result.dart';
import 'get_database_user_args.dart';
import 'get_database_user_result.dart';
import 'get_dedicated_inference_accelerators_args.dart';
import 'get_dedicated_inference_accelerators_result.dart';
import 'get_dedicated_inference_args.dart';
import 'get_dedicated_inference_gpu_model_config_result.dart';
import 'get_dedicated_inference_result.dart';
import 'get_dedicated_inference_sizes_result.dart';
import 'get_dedicated_inference_tokens_args.dart';
import 'get_dedicated_inference_tokens_result.dart';
import 'get_dedicated_inferences_args.dart';
import 'get_dedicated_inferences_result.dart';
import 'get_domain_args.dart';
import 'get_domain_result.dart';
import 'get_domains_args.dart';
import 'get_domains_result.dart';
import 'get_droplet_args.dart';
import 'get_droplet_autoscale_args.dart';
import 'get_droplet_autoscale_result.dart';
import 'get_droplet_result.dart';
import 'get_droplet_snapshot_args.dart';
import 'get_droplet_snapshot_result.dart';
import 'get_droplets_args.dart';
import 'get_droplets_result.dart';
import 'get_firewall_args.dart';
import 'get_firewall_result.dart';
import 'get_floating_ip_args.dart';
import 'get_floating_ip_result.dart';
import 'get_genai_agent_args.dart';
import 'get_genai_agent_result.dart';
import 'get_genai_agent_versions_args.dart';
import 'get_genai_agent_versions_result.dart';
import 'get_genai_agents_args.dart';
import 'get_genai_agents_by_openai_api_key_args.dart';
import 'get_genai_agents_by_openai_api_key_result.dart';
import 'get_genai_agents_result.dart';
import 'get_genai_indexing_job_args.dart';
import 'get_genai_indexing_job_data_sources_args.dart';
import 'get_genai_indexing_job_data_sources_result.dart';
import 'get_genai_indexing_job_result.dart';
import 'get_genai_knowledge_base_args.dart';
import 'get_genai_knowledge_base_data_sources_args.dart';
import 'get_genai_knowledge_base_data_sources_result.dart';
import 'get_genai_knowledge_base_indexing_jobs_args.dart';
import 'get_genai_knowledge_base_indexing_jobs_result.dart';
import 'get_genai_knowledge_base_result.dart';
import 'get_genai_knowledge_bases_args.dart';
import 'get_genai_knowledge_bases_result.dart';
import 'get_genai_models_args.dart';
import 'get_genai_models_result.dart';
import 'get_genai_openai_api_key_args.dart';
import 'get_genai_openai_api_key_result.dart';
import 'get_genai_openai_api_keys_args.dart';
import 'get_genai_openai_api_keys_result.dart';
import 'get_genai_regions_args.dart';
import 'get_genai_regions_result.dart';
import 'get_gradientai_agent_args.dart';
import 'get_gradientai_agent_result.dart';
import 'get_gradientai_agent_versions_args.dart';
import 'get_gradientai_agent_versions_result.dart';
import 'get_gradientai_agents_args.dart';
import 'get_gradientai_agents_by_openai_api_key_args.dart';
import 'get_gradientai_agents_by_openai_api_key_result.dart';
import 'get_gradientai_agents_result.dart';
import 'get_gradientai_custom_model_args.dart';
import 'get_gradientai_custom_model_result.dart';
import 'get_gradientai_custom_models_args.dart';
import 'get_gradientai_custom_models_result.dart';
import 'get_gradientai_indexing_job_args.dart';
import 'get_gradientai_indexing_job_data_sources_args.dart';
import 'get_gradientai_indexing_job_data_sources_result.dart';
import 'get_gradientai_indexing_job_result.dart';
import 'get_gradientai_knowledge_base_args.dart';
import 'get_gradientai_knowledge_base_data_sources_args.dart';
import 'get_gradientai_knowledge_base_data_sources_result.dart';
import 'get_gradientai_knowledge_base_indexing_jobs_args.dart';
import 'get_gradientai_knowledge_base_indexing_jobs_result.dart';
import 'get_gradientai_knowledge_base_result.dart';
import 'get_gradientai_knowledge_bases_args.dart';
import 'get_gradientai_knowledge_bases_result.dart';
import 'get_gradientai_models_args.dart';
import 'get_gradientai_models_result.dart';
import 'get_gradientai_openai_api_key_args.dart';
import 'get_gradientai_openai_api_key_result.dart';
import 'get_gradientai_openai_api_keys_args.dart';
import 'get_gradientai_openai_api_keys_result.dart';
import 'get_gradientai_regions_args.dart';
import 'get_gradientai_regions_result.dart';
import 'get_image_args.dart';
import 'get_image_result.dart';
import 'get_images_args.dart';
import 'get_images_result.dart';
import 'get_kubernetes_cluster_args.dart';
import 'get_kubernetes_cluster_result.dart';
import 'get_kubernetes_versions_args.dart';
import 'get_kubernetes_versions_result.dart';
import 'get_load_balancer_args.dart';
import 'get_load_balancer_result.dart';
import 'get_nfs_access_point_args.dart';
import 'get_nfs_access_point_result.dart';
import 'get_nfs_args.dart';
import 'get_nfs_result.dart';
import 'get_nfs_snapshot_args.dart';
import 'get_nfs_snapshot_result.dart';
import 'get_partner_attachment_args.dart';
import 'get_partner_attachment_result.dart';
import 'get_partner_attachment_service_key_args.dart';
import 'get_partner_attachment_service_key_result.dart';
import 'get_project_args.dart';
import 'get_project_result.dart';
import 'get_projects_args.dart';
import 'get_projects_result.dart';
import 'get_record_args.dart';
import 'get_record_result.dart';
import 'get_records_args.dart';
import 'get_records_result.dart';
import 'get_region_args.dart';
import 'get_region_result.dart';
import 'get_regions_args.dart';
import 'get_regions_result.dart';
import 'get_reserved_ip_args.dart';
import 'get_reserved_ip_result.dart';
import 'get_reserved_ipv6_args.dart';
import 'get_reserved_ipv6_result.dart';
import 'get_sizes_args.dart';
import 'get_sizes_result.dart';
import 'get_spaces_bucket_args.dart';
import 'get_spaces_bucket_object_args.dart';
import 'get_spaces_bucket_object_result.dart';
import 'get_spaces_bucket_objects_args.dart';
import 'get_spaces_bucket_objects_result.dart';
import 'get_spaces_bucket_result.dart';
import 'get_spaces_buckets_args.dart';
import 'get_spaces_buckets_result.dart';
import 'get_spaces_key_args.dart';
import 'get_spaces_key_result.dart';
import 'get_ssh_key_args.dart';
import 'get_ssh_key_result.dart';
import 'get_ssh_keys_args.dart';
import 'get_ssh_keys_result.dart';
import 'get_tag_args.dart';
import 'get_tag_result.dart';
import 'get_tags_args.dart';
import 'get_tags_result.dart';
import 'get_vector_database_args.dart';
import 'get_vector_database_result.dart';
import 'get_volume_args.dart';
import 'get_volume_result.dart';
import 'get_volume_snapshot_args.dart';
import 'get_volume_snapshot_result.dart';
import 'get_vpc_args.dart';
import 'get_vpc_nat_gateway_args.dart';
import 'get_vpc_nat_gateway_result.dart';
import 'get_vpc_peering_args.dart';
import 'get_vpc_peering_result.dart';
import 'get_vpc_result.dart';

/// Get information on your DigitalOcean account.
///
/// ## Example Usage
///
/// Get the account:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getAccount({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_account()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetAccount.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetAccount(ctx, map[string]interface{}{}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getaccount" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
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
///         final var example = DigitaloceanFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getAccount
///       arguments: {}
/// ```
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getAccount:getAccount',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

/// Get information on a DigitalOcean App.
///
/// ## Example Usage
///
/// Get the account:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getApp({
///     appId: "e665d18d-7b56-44a9-92ce-31979174d544",
/// });
/// export const defaultIngress = example.then(example => example.defaultIngress);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_app(app_id="e665d18d-7b56-44a9-92ce-31979174d544")
/// pulumi.export("defaultIngress", example.default_ingress)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetApp.Invoke(new()
///     {
///         AppId = "e665d18d-7b56-44a9-92ce-31979174d544",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["defaultIngress"] = example.Apply(getAppResult => getAppResult.DefaultIngress),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetApp(ctx, &digitalocean.LookupAppArgs{
/// 			AppId: "e665d18d-7b56-44a9-92ce-31979174d544",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("defaultIngress", example.DefaultIngress)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getapp" "example" {
///   app_id = "e665d18d-7b56-44a9-92ce-31979174d544"
/// }
///
/// output "defaultIngress" {
///   value = data.digitalocean_getapp.example.default_ingress
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetAppArgs;
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
///         final var example = DigitaloceanFunctions.getApp(GetAppArgs.builder()
///             .appId("e665d18d-7b56-44a9-92ce-31979174d544")
///             .build());
///
///         ctx.export("defaultIngress", example.defaultIngress());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getApp
///       arguments:
///         appId: e665d18d-7b56-44a9-92ce-31979174d544
/// outputs:
///   defaultIngress: ${example.defaultIngress}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_app_get_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppResult> getApp(
  GetAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getApp:getApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppResult.fromMap(result);
}

/// Get information on a BYOIP (Bring Your Own IP) prefix. This data source provides the
/// prefix CIDR, region, advertisement status, and current state as configured on your
/// DigitalOcean account. This is useful if the BYOIP prefix in question is not managed
/// by Terraform or you need to utilize any of the prefix's data.
///
/// **Note:** If you need to manage BYOIP prefixes using Terraform, `digitalocean.ByoipPrefix`
/// resource can be utilised instead. This data source is read-only.
///
/// ## Example Usage
///
/// Get the BYOIP prefix:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getByoipPrefix({
///     uuid: "506f78a4-e098-11e5-ad9f-000f53306ae1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_byoip_prefix(uuid="506f78a4-e098-11e5-ad9f-000f53306ae1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetByoipPrefix.Invoke(new()
///     {
///         Uuid = "506f78a4-e098-11e5-ad9f-000f53306ae1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetByoipPrefix(ctx, &digitalocean.LookupByoipPrefixArgs{
/// 			Uuid: "506f78a4-e098-11e5-ad9f-000f53306ae1",
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getbyoipprefix" "example" {
///   uuid = "506f78a4-e098-11e5-ad9f-000f53306ae1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetByoipPrefixArgs;
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
///         final var example = DigitaloceanFunctions.getByoipPrefix(GetByoipPrefixArgs.builder()
///             .uuid("506f78a4-e098-11e5-ad9f-000f53306ae1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getByoipPrefix
///       arguments:
///         uuid: 506f78a4-e098-11e5-ad9f-000f53306ae1
/// ```
///
///
/// List assigned IP addresses from a BYOIP prefix:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getByoipPrefix({
///     uuid: "506f78a4-e098-11e5-ad9f-000f53306ae1",
/// });
/// const exampleGetByoipPrefixResources = example.then(example => digitalocean.getByoipPrefixResources({
///     byoipPrefixUuid: example.uuid,
/// }));
/// export const byoipInfo = {
///     prefix: example.then(example => example.prefix),
///     region: example.then(example => example.region),
///     status: example.then(example => example.status),
///     assignedCount: exampleGetByoipPrefixResources.then(exampleGetByoipPrefixResources => exampleGetByoipPrefixResources.addresses).length,
/// };
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_byoip_prefix(uuid="506f78a4-e098-11e5-ad9f-000f53306ae1")
/// example_get_byoip_prefix_resources = digitalocean.get_byoip_prefix_resources(byoip_prefix_uuid=example.uuid)
/// pulumi.export("byoipInfo", {
///     "prefix": example.prefix,
///     "region": example.region,
///     "status": example.status,
///     "assignedCount": len(example_get_byoip_prefix_resources.addresses),
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetByoipPrefix.Invoke(new()
///     {
///         Uuid = "506f78a4-e098-11e5-ad9f-000f53306ae1",
///     });
///
///     var exampleGetByoipPrefixResources = DigitalOcean.GetByoipPrefixResources.Invoke(new()
///     {
///         ByoipPrefixUuid = example.Apply(getByoipPrefixResult => getByoipPrefixResult.Uuid),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["byoipInfo"] =
///         {
///             { "prefix", example.Apply(getByoipPrefixResult => getByoipPrefixResult.Prefix) },
///             { "region", example.Apply(getByoipPrefixResult => getByoipPrefixResult.Region) },
///             { "status", example.Apply(getByoipPrefixResult => getByoipPrefixResult.Status) },
///             { "assignedCount", exampleGetByoipPrefixResources.Apply(getByoipPrefixResourcesResult => getByoipPrefixResourcesResult.Addresses).Length() },
///         },
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetByoipPrefix(ctx, &digitalocean.LookupByoipPrefixArgs{
/// 			Uuid: "506f78a4-e098-11e5-ad9f-000f53306ae1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetByoipPrefixResources, err := digitalocean.GetByoipPrefixResources(ctx, &digitalocean.GetByoipPrefixResourcesArgs{
/// 			ByoipPrefixUuid: example.Uuid,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("byoipInfo", pulumi.Map{
/// 			"prefix":        example.Prefix,
/// 			"region":        example.Region,
/// 			"status":        example.Status,
/// 			"assignedCount": len(exampleGetByoipPrefixResources.Addresses),
/// 		})
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getbyoipprefix" "example" {
///   uuid = "506f78a4-e098-11e5-ad9f-000f53306ae1"
/// }
/// data "digitalocean_getbyoipprefixresources" "exampleGetByoipPrefixResources" {
///   byoip_prefix_uuid = data.digitalocean_getbyoipprefix.example.uuid
/// }
///
/// # Output information about the BYOIP prefix and its assigned IPs
/// output "byoipInfo" {
///   value = {
///     "prefix"        = data.digitalocean_getbyoipprefix.example.prefix
///     "region"        = data.digitalocean_getbyoipprefix.example.region
///     "status"        = data.digitalocean_getbyoipprefix.example.status
///     "assignedCount" = length(data.digitalocean_getbyoipprefixresources.exampleGetByoipPrefixResources.addresses)
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetByoipPrefixArgs;
/// import com.pulumi.digitalocean.inputs.GetByoipPrefixResourcesArgs;
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
///         final var example = DigitaloceanFunctions.getByoipPrefix(GetByoipPrefixArgs.builder()
///             .uuid("506f78a4-e098-11e5-ad9f-000f53306ae1")
///             .build());
///
///         final var exampleGetByoipPrefixResources = DigitaloceanFunctions.getByoipPrefixResources(GetByoipPrefixResourcesArgs.builder()
///             .byoipPrefixUuid(example.uuid())
///             .build());
///
///         ctx.export("byoipInfo", Map.ofEntries(
///             Map.entry("prefix", example.prefix()),
///             Map.entry("region", example.region()),
///             Map.entry("status", example.status()),
///             Map.entry("assignedCount", exampleGetByoipPrefixResources.addresses().size())
///         ));
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getByoipPrefix
///       arguments:
///         uuid: 506f78a4-e098-11e5-ad9f-000f53306ae1
///   exampleGetByoipPrefixResources:
///     fn::invoke:
///       function: digitalocean:getByoipPrefixResources
///       arguments:
///         byoipPrefixUuid: ${example.uuid}
/// outputs:
///   # Output information about the BYOIP prefix and its assigned IPs
///   byoipInfo:
///     prefix: ${example.prefix}
///     region: ${example.region}
///     status: ${example.status}
///     assignedCount:
///       fn::length: ${exampleGetByoipPrefixResources.addresses}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_byoip_prefix_get_byoip_prefix_args_doc}
/// [options] Invoke options controlling this call.
Future<GetByoipPrefixResult> getByoipPrefix(
  GetByoipPrefixArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getByoipPrefix:getByoipPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetByoipPrefixResult.fromMap(result);
}

/// Get information about IP addresses that have been **already assigned** from a
/// BYOIP (Bring Your Own IP) prefix. This data source provides a list of all IP addresses
/// that are currently assigned to resources from a specific BYOIP prefix.
///
/// **Note:** This data source only lists IPs that are already assigned to resources (like Droplets).
/// To allocate new IPs from the BYOIP prefix, you need to use `digitalocean.ReservedIpAssignment` resource.
///
/// ## Example Usage
///
/// List all assigned IP addresses from a BYOIP prefix:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getByoipPrefix({
///     uuid: "506f78a4-e098-11e5-ad9f-000f53306ae1",
/// });
/// const exampleGetByoipPrefixResources = example.then(example => digitalocean.getByoipPrefixResources({
///     byoipPrefixUuid: example.uuid,
/// }));
/// export const assignedByoipIps = exampleGetByoipPrefixResources.then(exampleGetByoipPrefixResources => .map(addr => ({
///     ip: addr.ipAddress,
///     region: addr.region,
///     assigned: addr.assignedAt,
/// })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_byoip_prefix(uuid="506f78a4-e098-11e5-ad9f-000f53306ae1")
/// example_get_byoip_prefix_resources = digitalocean.get_byoip_prefix_resources(byoip_prefix_uuid=example.uuid)
/// pulumi.export("assignedByoipIps", [{
///     "ip": addr.ip_address,
///     "region": addr.region,
///     "assigned": addr.assigned_at,
/// } for addr in example_get_byoip_prefix_resources.addresses])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetByoipPrefix.Invoke(new()
///     {
///         Uuid = "506f78a4-e098-11e5-ad9f-000f53306ae1",
///     });
///
///     var exampleGetByoipPrefixResources = DigitalOcean.GetByoipPrefixResources.Invoke(new()
///     {
///         ByoipPrefixUuid = example.Apply(getByoipPrefixResult => getByoipPrefixResult.Uuid),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["assignedByoipIps"] = .Select(addr =>
///         {
///             return
///             {
///                 { "ip", addr.IpAddress },
///                 { "region", addr.Region },
///                 { "assigned", addr.AssignedAt },
///             };
///         }).ToList(),
///     };
/// });
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getbyoipprefix" "example" {
///   uuid = "506f78a4-e098-11e5-ad9f-000f53306ae1"
/// }
/// data "digitalocean_getbyoipprefixresources" "exampleGetByoipPrefixResources" {
///   byoip_prefix_uuid = data.digitalocean_getbyoipprefix.example.uuid
/// }
///
/// # Output the assigned IPs
/// output "assignedByoipIps" {
///   value = [for addr in data.digitalocean_getbyoipprefixresources.exampleGetByoipPrefixResources.addresses : {
///     "ip"       = addr.ipAddress
///     "region"   = addr.region
///     "assigned" = addr.assignedAt
///   } ]
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_byoip_prefix_resources_get_byoip_prefix_resources_args_doc}
/// [options] Invoke options controlling this call.
Future<GetByoipPrefixResourcesResult> getByoipPrefixResources(
  GetByoipPrefixResourcesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getByoipPrefixResources:getByoipPrefixResources',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetByoipPrefixResourcesResult.fromMap(result);
}

/// Get information on a certificate. This data source provides the name, type, state,
/// domains, expiry date, and the sha1 fingerprint as configured on your DigitalOcean account.
/// This is useful if the certificate in question is not managed by Terraform or you need to utilize
/// any of the certificates data.
///
/// An error is triggered if the provided certificate name does not exist.
///
/// ## Example Usage
///
/// Get the certificate:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getCertificate({
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_certificate(name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetCertificate.Invoke(new()
///     {
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetCertificate(ctx, &digitalocean.LookupCertificateArgs{
/// 			Name: "example",
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getcertificate" "example" {
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetCertificateArgs;
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
///         final var example = DigitaloceanFunctions.getCertificate(GetCertificateArgs.builder()
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getCertificate
///       arguments:
///         name: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_certificate_get_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getCertificate:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_container_registries_get_container_registries_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContainerRegistriesResult> getContainerRegistries(
  GetContainerRegistriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getContainerRegistries:getContainerRegistries',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContainerRegistriesResult.fromMap(result);
}

/// Get information on a container registry. This data source provides the name as
/// configured on your DigitalOcean account. This is useful if the container
/// registry name in question is not managed by Terraform or you need validate if
/// the container registry exists in the account.
///
/// An error is triggered if the provided container registry name does not exist.
///
/// ## Example Usage
///
/// ### Basic Example
///
/// Get the container registry:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getContainerRegistry({
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_container_registry(name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetContainerRegistry.Invoke(new()
///     {
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetContainerRegistry(ctx, &digitalocean.LookupContainerRegistryArgs{
/// 			Name: "example",
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getcontainerregistry" "example" {
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetContainerRegistryArgs;
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
///         final var example = DigitaloceanFunctions.getContainerRegistry(GetContainerRegistryArgs.builder()
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getContainerRegistry
///       arguments:
///         name: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_container_registry_get_container_registry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContainerRegistryResult> getContainerRegistry(
  GetContainerRegistryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getContainerRegistry:getContainerRegistry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContainerRegistryResult.fromMap(result);
}

/// Provides the CA certificate for a DigitalOcean database.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const ca = digitalocean.getDatabaseCa({
///     clusterId: "aaa-bbb-ccc-ddd",
/// });
/// export const caOutput = ca.then(ca => ca.certificate);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// ca = digitalocean.get_database_ca(cluster_id="aaa-bbb-ccc-ddd")
/// pulumi.export("caOutput", ca.certificate)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ca = DigitalOcean.GetDatabaseCa.Invoke(new()
///     {
///         ClusterId = "aaa-bbb-ccc-ddd",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["caOutput"] = ca.Apply(getDatabaseCaResult => getDatabaseCaResult.Certificate),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ca, err := digitalocean.GetDatabaseCa(ctx, &digitalocean.GetDatabaseCaArgs{
/// 			ClusterId: "aaa-bbb-ccc-ddd",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("caOutput", ca.Certificate)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdatabaseca" "ca" {
///   cluster_id = "aaa-bbb-ccc-ddd"
/// }
///
/// output "caOutput" {
///   value = data.digitalocean_getdatabaseca.ca.certificate
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDatabaseCaArgs;
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
///         final var ca = DigitaloceanFunctions.getDatabaseCa(GetDatabaseCaArgs.builder()
///             .clusterId("aaa-bbb-ccc-ddd")
///             .build());
///
///         ctx.export("caOutput", ca.certificate());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ca:
///     fn::invoke:
///       function: digitalocean:getDatabaseCa
///       arguments:
///         clusterId: aaa-bbb-ccc-ddd
/// outputs:
///   caOutput: ${ca.certificate}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_database_ca_get_database_ca_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseCaResult> getDatabaseCa(
  GetDatabaseCaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getDatabaseCa:getDatabaseCa',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseCaResult.fromMap(result);
}

/// Provides information on a DigitalOcean database cluster resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getDatabaseCluster({
///     name: "example-cluster",
/// });
/// export const databaseOutput = example.then(example => example.uri);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_database_cluster(name="example-cluster")
/// pulumi.export("databaseOutput", example.uri)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetDatabaseCluster.Invoke(new()
///     {
///         Name = "example-cluster",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["databaseOutput"] = example.Apply(getDatabaseClusterResult => getDatabaseClusterResult.Uri),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetDatabaseCluster(ctx, &digitalocean.LookupDatabaseClusterArgs{
/// 			Name: "example-cluster",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("databaseOutput", example.Uri)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdatabasecluster" "example" {
///   name = "example-cluster"
/// }
///
/// output "databaseOutput" {
///   value = data.digitalocean_getdatabasecluster.example.uri
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDatabaseClusterArgs;
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
///         final var example = DigitaloceanFunctions.getDatabaseCluster(GetDatabaseClusterArgs.builder()
///             .name("example-cluster")
///             .build());
///
///         ctx.export("databaseOutput", example.uri());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getDatabaseCluster
///       arguments:
///         name: example-cluster
/// outputs:
///   databaseOutput: ${example.uri}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_database_cluster_get_database_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseClusterResult> getDatabaseCluster(
  GetDatabaseClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getDatabaseCluster:getDatabaseCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseClusterResult.fromMap(result);
}

/// Provides information on a DigitalOcean PostgreSQL database connection pool.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getDatabaseCluster({
///     name: "example-cluster",
/// });
/// const read_only = example.then(example => digitalocean.getDatabaseConnectionPool({
///     clusterId: example.id,
///     name: "pool-01",
/// }));
/// export const connectionPoolUriOutput = read_only.then(read_only => read_only.uri);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_database_cluster(name="example-cluster")
/// read_only = digitalocean.get_database_connection_pool(cluster_id=example.id,
///     name="pool-01")
/// pulumi.export("connectionPoolUriOutput", read_only.uri)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetDatabaseCluster.Invoke(new()
///     {
///         Name = "example-cluster",
///     });
///
///     var read_only = DigitalOcean.GetDatabaseConnectionPool.Invoke(new()
///     {
///         ClusterId = example.Apply(getDatabaseClusterResult => getDatabaseClusterResult.Id),
///         Name = "pool-01",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["connectionPoolUriOutput"] = read_only.Apply(read_only => read_only.Apply(getDatabaseConnectionPoolResult => getDatabaseConnectionPoolResult.Uri)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetDatabaseCluster(ctx, &digitalocean.LookupDatabaseClusterArgs{
/// 			Name: "example-cluster",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		read_only, err := digitalocean.GetDatabaseConnectionPool(ctx, &digitalocean.LookupDatabaseConnectionPoolArgs{
/// 			ClusterId: example.Id,
/// 			Name:      "pool-01",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("connectionPoolUriOutput", read_only.Uri)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdatabasecluster" "example" {
///   name = "example-cluster"
/// }
/// data "digitalocean_getdatabaseconnectionpool" "read-only" {
///   cluster_id = data.digitalocean_getdatabasecluster.example.id
///   name       = "pool-01"
/// }
///
/// output "connectionPoolUriOutput" {
///   value = data.digitalocean_getdatabaseconnectionpool.read-only.uri
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDatabaseClusterArgs;
/// import com.pulumi.digitalocean.inputs.GetDatabaseConnectionPoolArgs;
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
///         final var example = DigitaloceanFunctions.getDatabaseCluster(GetDatabaseClusterArgs.builder()
///             .name("example-cluster")
///             .build());
///
///         final var read-only = DigitaloceanFunctions.getDatabaseConnectionPool(GetDatabaseConnectionPoolArgs.builder()
///             .clusterId(example.id())
///             .name("pool-01")
///             .build());
///
///         ctx.export("connectionPoolUriOutput", read_only.uri());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getDatabaseCluster
///       arguments:
///         name: example-cluster
///   read-only:
///     fn::invoke:
///       function: digitalocean:getDatabaseConnectionPool
///       arguments:
///         clusterId: ${example.id}
///         name: pool-01
/// outputs:
///   connectionPoolUriOutput: ${["read-only"].uri}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_database_connection_pool_get_database_connection_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseConnectionPoolResult> getDatabaseConnectionPool(
  GetDatabaseConnectionPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getDatabaseConnectionPool:getDatabaseConnectionPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseConnectionPoolResult.fromMap(result);
}

/// Provides access to the metrics credentials for DigitalOcean database clusters. These credentials are account-wide and can be used to access metrics for any database cluster in the account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getDatabaseMetricsCredentials({});
/// export const metricsUsername = example.then(example => example.username);
/// export const metricsPassword = example.then(example => example.password);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_database_metrics_credentials()
/// pulumi.export("metricsUsername", example.username)
/// pulumi.export("metricsPassword", example.password)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetDatabaseMetricsCredentials.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["metricsUsername"] = example.Apply(getDatabaseMetricsCredentialsResult => getDatabaseMetricsCredentialsResult.Username),
///         ["metricsPassword"] = example.Apply(getDatabaseMetricsCredentialsResult => getDatabaseMetricsCredentialsResult.Password),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetDatabaseMetricsCredentials(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("metricsUsername", example.Username)
/// 		ctx.Export("metricsPassword", example.Password)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdatabasemetricscredentials" "example" {
/// }
///
/// output "metricsUsername" {
///   value = data.digitalocean_getdatabasemetricscredentials.example.username
/// }
/// output "metricsPassword" {
///   value = data.digitalocean_getdatabasemetricscredentials.example.password
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
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
///         final var example = DigitaloceanFunctions.getDatabaseMetricsCredentials(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         ctx.export("metricsUsername", example.username());
///         ctx.export("metricsPassword", example.password());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getDatabaseMetricsCredentials
///       arguments: {}
/// outputs:
///   metricsUsername: ${example.username}
///   metricsPassword: ${example.password}
/// ```
/// [options] Invoke options controlling this call.
Future<GetDatabaseMetricsCredentialsResult> getDatabaseMetricsCredentials(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getDatabaseMetricsCredentials:getDatabaseMetricsCredentials',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseMetricsCredentialsResult.fromMap(result);
}

/// Provides information on a DigitalOcean database replica.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getDatabaseCluster({
///     name: "example-cluster",
/// });
/// const read_only = example.then(example => digitalocean.getDatabaseReplica({
///     clusterId: example.id,
///     name: "terra-test-ro",
/// }));
/// export const replicaOutput = read_only.then(read_only => read_only.uri);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_database_cluster(name="example-cluster")
/// read_only = digitalocean.get_database_replica(cluster_id=example.id,
///     name="terra-test-ro")
/// pulumi.export("replicaOutput", read_only.uri)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetDatabaseCluster.Invoke(new()
///     {
///         Name = "example-cluster",
///     });
///
///     var read_only = DigitalOcean.GetDatabaseReplica.Invoke(new()
///     {
///         ClusterId = example.Apply(getDatabaseClusterResult => getDatabaseClusterResult.Id),
///         Name = "terra-test-ro",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["replicaOutput"] = read_only.Apply(read_only => read_only.Apply(getDatabaseReplicaResult => getDatabaseReplicaResult.Uri)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetDatabaseCluster(ctx, &digitalocean.LookupDatabaseClusterArgs{
/// 			Name: "example-cluster",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		read_only, err := digitalocean.GetDatabaseReplica(ctx, &digitalocean.LookupDatabaseReplicaArgs{
/// 			ClusterId: example.Id,
/// 			Name:      "terra-test-ro",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("replicaOutput", read_only.Uri)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdatabasecluster" "example" {
///   name = "example-cluster"
/// }
/// data "digitalocean_getdatabasereplica" "read-only" {
///   cluster_id = data.digitalocean_getdatabasecluster.example.id
///   name       = "terra-test-ro"
/// }
///
/// output "replicaOutput" {
///   value = data.digitalocean_getdatabasereplica.read-only.uri
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDatabaseClusterArgs;
/// import com.pulumi.digitalocean.inputs.GetDatabaseReplicaArgs;
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
///         final var example = DigitaloceanFunctions.getDatabaseCluster(GetDatabaseClusterArgs.builder()
///             .name("example-cluster")
///             .build());
///
///         final var read-only = DigitaloceanFunctions.getDatabaseReplica(GetDatabaseReplicaArgs.builder()
///             .clusterId(example.id())
///             .name("terra-test-ro")
///             .build());
///
///         ctx.export("replicaOutput", read_only.uri());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getDatabaseCluster
///       arguments:
///         name: example-cluster
///   read-only:
///     fn::invoke:
///       function: digitalocean:getDatabaseReplica
///       arguments:
///         clusterId: ${example.id}
///         name: terra-test-ro
/// outputs:
///   replicaOutput: ${["read-only"].uri}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_database_replica_get_database_replica_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseReplicaResult> getDatabaseReplica(
  GetDatabaseReplicaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getDatabaseReplica:getDatabaseReplica',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseReplicaResult.fromMap(result);
}

/// Provides information on a DigitalOcean database user resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const main = digitalocean.getDatabaseCluster({
///     name: "main-cluster",
/// });
/// const example = main.then(main => digitalocean.getDatabaseUser({
///     clusterId: main.id,
///     name: "example-user",
/// }));
/// export const databaseUserPassword = example.then(example => example.password);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// main = digitalocean.get_database_cluster(name="main-cluster")
/// example = digitalocean.get_database_user(cluster_id=main.id,
///     name="example-user")
/// pulumi.export("databaseUserPassword", example.password)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = DigitalOcean.GetDatabaseCluster.Invoke(new()
///     {
///         Name = "main-cluster",
///     });
///
///     var example = DigitalOcean.GetDatabaseUser.Invoke(new()
///     {
///         ClusterId = main.Apply(getDatabaseClusterResult => getDatabaseClusterResult.Id),
///         Name = "example-user",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["databaseUserPassword"] = example.Apply(getDatabaseUserResult => getDatabaseUserResult.Password),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := digitalocean.GetDatabaseCluster(ctx, &digitalocean.LookupDatabaseClusterArgs{
/// 			Name: "main-cluster",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := digitalocean.GetDatabaseUser(ctx, &digitalocean.LookupDatabaseUserArgs{
/// 			ClusterId: main.Id,
/// 			Name:      "example-user",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("databaseUserPassword", example.Password)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdatabasecluster" "main" {
///   name = "main-cluster"
/// }
/// data "digitalocean_getdatabaseuser" "example" {
///   cluster_id = data.digitalocean_getdatabasecluster.main.id
///   name       = "example-user"
/// }
///
/// output "databaseUserPassword" {
///   value = data.digitalocean_getdatabaseuser.example.password
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDatabaseClusterArgs;
/// import com.pulumi.digitalocean.inputs.GetDatabaseUserArgs;
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
///         final var main = DigitaloceanFunctions.getDatabaseCluster(GetDatabaseClusterArgs.builder()
///             .name("main-cluster")
///             .build());
///
///         final var example = DigitaloceanFunctions.getDatabaseUser(GetDatabaseUserArgs.builder()
///             .clusterId(main.id())
///             .name("example-user")
///             .build());
///
///         ctx.export("databaseUserPassword", example.password());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   main:
///     fn::invoke:
///       function: digitalocean:getDatabaseCluster
///       arguments:
///         name: main-cluster
///   example:
///     fn::invoke:
///       function: digitalocean:getDatabaseUser
///       arguments:
///         clusterId: ${main.id}
///         name: example-user
/// outputs:
///   databaseUserPassword: ${example.password}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_database_user_get_database_user_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseUserResult> getDatabaseUser(
  GetDatabaseUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getDatabaseUser:getDatabaseUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseUserResult.fromMap(result);
}

/// Get information on a dedicated inference endpoint for use in other resources. This
/// data source provides all of the endpoint's properties as configured on your
/// DigitalOcean account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getDedicatedInference({
///     id: "endpoint-id",
/// });
/// export const endpointStatus = example.then(example => example.status);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_dedicated_inference(id="endpoint-id")
/// pulumi.export("endpointStatus", example.status)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetDedicatedInference.Invoke(new()
///     {
///         Id = "endpoint-id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["endpointStatus"] = example.Apply(getDedicatedInferenceResult => getDedicatedInferenceResult.Status),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetDedicatedInference(ctx, &digitalocean.LookupDedicatedInferenceArgs{
/// 			Id: "endpoint-id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("endpointStatus", example.Status)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdedicatedinference" "example" {
///   id = "endpoint-id"
/// }
///
/// output "endpointStatus" {
///   value = data.digitalocean_getdedicatedinference.example.status
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDedicatedInferenceArgs;
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
///         final var example = DigitaloceanFunctions.getDedicatedInference(GetDedicatedInferenceArgs.builder()
///             .id("endpoint-id")
///             .build());
///
///         ctx.export("endpointStatus", example.status());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getDedicatedInference
///       arguments:
///         id: endpoint-id
/// outputs:
///   endpointStatus: ${example.status}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_dedicated_inference_get_dedicated_inference_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDedicatedInferenceResult> getDedicatedInference(
  GetDedicatedInferenceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getDedicatedInference:getDedicatedInference',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedInferenceResult.fromMap(result);
}

/// Returns a list of accelerators (GPUs) attached to a dedicated inference endpoint,
/// with the ability to filter and sort the results.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getDedicatedInferenceAccelerators({
///     dedicatedInferenceId: exampleDigitaloceanDedicatedInference.id,
/// });
/// export const accelerators = example.then(example => example.accelerators);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_dedicated_inference_accelerators(dedicated_inference_id=example_digitalocean_dedicated_inference["id"])
/// pulumi.export("accelerators", example.accelerators)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetDedicatedInferenceAccelerators.Invoke(new()
///     {
///         DedicatedInferenceId = exampleDigitaloceanDedicatedInference.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["accelerators"] = example.Apply(getDedicatedInferenceAcceleratorsResult => getDedicatedInferenceAcceleratorsResult.Accelerators),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetDedicatedInferenceAccelerators(ctx, &digitalocean.GetDedicatedInferenceAcceleratorsArgs{
/// 			DedicatedInferenceId: exampleDigitaloceanDedicatedInference.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("accelerators", example.Accelerators)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdedicatedinferenceaccelerators" "example" {
///   dedicated_inference_id = exampleDigitaloceanDedicatedInference.id
/// }
///
/// output "accelerators" {
///   value = data.digitalocean_getdedicatedinferenceaccelerators.example.accelerators
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDedicatedInferenceAcceleratorsArgs;
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
///         final var example = DigitaloceanFunctions.getDedicatedInferenceAccelerators(GetDedicatedInferenceAcceleratorsArgs.builder()
///             .dedicatedInferenceId(exampleDigitaloceanDedicatedInference.id())
///             .build());
///
///         ctx.export("accelerators", example.accelerators());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getDedicatedInferenceAccelerators
///       arguments:
///         dedicatedInferenceId: ${exampleDigitaloceanDedicatedInference.id}
/// outputs:
///   accelerators: ${example.accelerators}
/// ```
///
///
/// ### Filter by slug
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const filtered = digitalocean.getDedicatedInferenceAccelerators({
///     dedicatedInferenceId: example.id,
///     filters: [{
///         key: "slug",
///         values: ["gpu-h100x1-80gb"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// filtered = digitalocean.get_dedicated_inference_accelerators(dedicated_inference_id=example["id"],
///     filters=[{
///         "key": "slug",
///         "values": ["gpu-h100x1-80gb"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filtered = DigitalOcean.GetDedicatedInferenceAccelerators.Invoke(new()
///     {
///         DedicatedInferenceId = example.Id,
///         Filters = new[]
///         {
///             new DigitalOcean.Inputs.GetDedicatedInferenceAcceleratorsFilterInputArgs
///             {
///                 Key = "slug",
///                 Values = new[]
///                 {
///                     "gpu-h100x1-80gb",
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetDedicatedInferenceAccelerators(ctx, &digitalocean.GetDedicatedInferenceAcceleratorsArgs{
/// 			DedicatedInferenceId: example.Id,
/// 			Filters: []digitalocean.GetDedicatedInferenceAcceleratorsFilter{
/// 				{
/// 					Key: "slug",
/// 					Values: []string{
/// 						"gpu-h100x1-80gb",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdedicatedinferenceaccelerators" "filtered" {
///   dedicated_inference_id = example.id
///   filters {
///     key    = "slug"
///     values = ["gpu-h100x1-80gb"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDedicatedInferenceAcceleratorsArgs;
/// import com.pulumi.digitalocean.inputs.GetDedicatedInferenceAcceleratorsFilterArgs;
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
///         final var filtered = DigitaloceanFunctions.getDedicatedInferenceAccelerators(GetDedicatedInferenceAcceleratorsArgs.builder()
///             .dedicatedInferenceId(example.id())
///             .filters(GetDedicatedInferenceAcceleratorsFilterArgs.builder()
///                 .key("slug")
///                 .values("gpu-h100x1-80gb")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   filtered:
///     fn::invoke:
///       function: digitalocean:getDedicatedInferenceAccelerators
///       arguments:
///         dedicatedInferenceId: ${example.id}
///         filters:
///           - key: slug
///             values:
///               - gpu-h100x1-80gb
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_dedicated_inference_accelerators_get_dedicated_inference_accelerators_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDedicatedInferenceAcceleratorsResult> getDedicatedInferenceAccelerators(
  GetDedicatedInferenceAcceleratorsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getDedicatedInferenceAccelerators:getDedicatedInferenceAccelerators',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedInferenceAcceleratorsResult.fromMap(result);
}

/// Returns the supported GPU and model compatibility matrix for dedicated inference
/// endpoints. Use this data source to discover which models can be deployed on which
/// GPU types.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const available = digitalocean.getDedicatedInferenceGpuModelConfig({});
/// export const gpuModelConfigs = available.then(available => available.gpuModelConfigs);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// available = digitalocean.get_dedicated_inference_gpu_model_config()
/// pulumi.export("gpuModelConfigs", available.gpu_model_configs)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = DigitalOcean.GetDedicatedInferenceGpuModelConfig.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["gpuModelConfigs"] = available.Apply(getDedicatedInferenceGpuModelConfigResult => getDedicatedInferenceGpuModelConfigResult.GpuModelConfigs),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		available, err := digitalocean.GetDedicatedInferenceGpuModelConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gpuModelConfigs", available.GpuModelConfigs)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdedicatedinferencegpumodelconfig" "available" {
/// }
///
/// output "gpuModelConfigs" {
///   value = data.digitalocean_getdedicatedinferencegpumodelconfig.available.gpu_model_configs
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
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
///         final var available = DigitaloceanFunctions.getDedicatedInferenceGpuModelConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         ctx.export("gpuModelConfigs", available.gpuModelConfigs());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   available:
///     fn::invoke:
///       function: digitalocean:getDedicatedInferenceGpuModelConfig
///       arguments: {}
/// outputs:
///   gpuModelConfigs: ${available.gpuModelConfigs}
/// ```
/// [options] Invoke options controlling this call.
Future<GetDedicatedInferenceGpuModelConfigResult> getDedicatedInferenceGpuModelConfig(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getDedicatedInferenceGpuModelConfig:getDedicatedInferenceGpuModelConfig',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedInferenceGpuModelConfigResult.fromMap(result);
}

/// Returns the available GPU sizes and their configurations for dedicated inference
/// endpoints, including pricing, hardware specifications, and region availability.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const available = digitalocean.getDedicatedInferenceSizes({});
/// export const enabledRegions = available.then(available => available.enabledRegions);
/// export const sizes = available.then(available => available.sizes);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// available = digitalocean.get_dedicated_inference_sizes()
/// pulumi.export("enabledRegions", available.enabled_regions)
/// pulumi.export("sizes", available.sizes)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = DigitalOcean.GetDedicatedInferenceSizes.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["enabledRegions"] = available.Apply(getDedicatedInferenceSizesResult => getDedicatedInferenceSizesResult.EnabledRegions),
///         ["sizes"] = available.Apply(getDedicatedInferenceSizesResult => getDedicatedInferenceSizesResult.Sizes),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		available, err := digitalocean.GetDedicatedInferenceSizes(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("enabledRegions", available.EnabledRegions)
/// 		ctx.Export("sizes", available.Sizes)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdedicatedinferencesizes" "available" {
/// }
///
/// output "enabledRegions" {
///   value = data.digitalocean_getdedicatedinferencesizes.available.enabled_regions
/// }
/// output "sizes" {
///   value = data.digitalocean_getdedicatedinferencesizes.available.sizes
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
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
///         final var available = DigitaloceanFunctions.getDedicatedInferenceSizes(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         ctx.export("enabledRegions", available.enabledRegions());
///         ctx.export("sizes", available.sizes());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   available:
///     fn::invoke:
///       function: digitalocean:getDedicatedInferenceSizes
///       arguments: {}
/// outputs:
///   enabledRegions: ${available.enabledRegions}
///   sizes: ${available.sizes}
/// ```
/// [options] Invoke options controlling this call.
Future<GetDedicatedInferenceSizesResult> getDedicatedInferenceSizes(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getDedicatedInferenceSizes:getDedicatedInferenceSizes',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedInferenceSizesResult.fromMap(result);
}

/// Returns a list of API tokens for a dedicated inference endpoint, with the ability
/// to filter and sort the results.
///
/// &gt; **Note:** Token values (secrets) are not returned by this data source. Only
/// token metadata (ID, name, creation time) is available.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getDedicatedInferenceTokens({
///     dedicatedInferenceId: exampleDigitaloceanDedicatedInference.id,
/// });
/// export const tokens = example.then(example => example.tokens);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_dedicated_inference_tokens(dedicated_inference_id=example_digitalocean_dedicated_inference["id"])
/// pulumi.export("tokens", example.tokens)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetDedicatedInferenceTokens.Invoke(new()
///     {
///         DedicatedInferenceId = exampleDigitaloceanDedicatedInference.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["tokens"] = example.Apply(getDedicatedInferenceTokensResult => getDedicatedInferenceTokensResult.Tokens),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetDedicatedInferenceTokens(ctx, &digitalocean.GetDedicatedInferenceTokensArgs{
/// 			DedicatedInferenceId: exampleDigitaloceanDedicatedInference.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("tokens", example.Tokens)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdedicatedinferencetokens" "example" {
///   dedicated_inference_id = exampleDigitaloceanDedicatedInference.id
/// }
///
/// output "tokens" {
///   value = data.digitalocean_getdedicatedinferencetokens.example.tokens
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDedicatedInferenceTokensArgs;
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
///         final var example = DigitaloceanFunctions.getDedicatedInferenceTokens(GetDedicatedInferenceTokensArgs.builder()
///             .dedicatedInferenceId(exampleDigitaloceanDedicatedInference.id())
///             .build());
///
///         ctx.export("tokens", example.tokens());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getDedicatedInferenceTokens
///       arguments:
///         dedicatedInferenceId: ${exampleDigitaloceanDedicatedInference.id}
/// outputs:
///   tokens: ${example.tokens}
/// ```
///
///
/// ### Filter by name
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const filtered = digitalocean.getDedicatedInferenceTokens({
///     dedicatedInferenceId: example.id,
///     filters: [{
///         key: "name",
///         values: ["my-token"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// filtered = digitalocean.get_dedicated_inference_tokens(dedicated_inference_id=example["id"],
///     filters=[{
///         "key": "name",
///         "values": ["my-token"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filtered = DigitalOcean.GetDedicatedInferenceTokens.Invoke(new()
///     {
///         DedicatedInferenceId = example.Id,
///         Filters = new[]
///         {
///             new DigitalOcean.Inputs.GetDedicatedInferenceTokensFilterInputArgs
///             {
///                 Key = "name",
///                 Values = new[]
///                 {
///                     "my-token",
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetDedicatedInferenceTokens(ctx, &digitalocean.GetDedicatedInferenceTokensArgs{
/// 			DedicatedInferenceId: example.Id,
/// 			Filters: []digitalocean.GetDedicatedInferenceTokensFilter{
/// 				{
/// 					Key: "name",
/// 					Values: []string{
/// 						"my-token",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdedicatedinferencetokens" "filtered" {
///   dedicated_inference_id = example.id
///   filters {
///     key    = "name"
///     values = ["my-token"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDedicatedInferenceTokensArgs;
/// import com.pulumi.digitalocean.inputs.GetDedicatedInferenceTokensFilterArgs;
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
///         final var filtered = DigitaloceanFunctions.getDedicatedInferenceTokens(GetDedicatedInferenceTokensArgs.builder()
///             .dedicatedInferenceId(example.id())
///             .filters(GetDedicatedInferenceTokensFilterArgs.builder()
///                 .key("name")
///                 .values("my-token")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   filtered:
///     fn::invoke:
///       function: digitalocean:getDedicatedInferenceTokens
///       arguments:
///         dedicatedInferenceId: ${example.id}
///         filters:
///           - key: name
///             values:
///               - my-token
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_dedicated_inference_tokens_get_dedicated_inference_tokens_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDedicatedInferenceTokensResult> getDedicatedInferenceTokens(
  GetDedicatedInferenceTokensArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getDedicatedInferenceTokens:getDedicatedInferenceTokens',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedInferenceTokensResult.fromMap(result);
}

/// Returns a list of dedicated inference endpoints in your DigitalOcean account,
/// with the ability to filter and sort the results. If no filters are specified, all
/// endpoints will be returned.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const all = digitalocean.getDedicatedInferences({});
/// export const allEndpoints = all.then(all => all.dedicatedInferences);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// all = digitalocean.get_dedicated_inferences()
/// pulumi.export("allEndpoints", all.dedicated_inferences)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = DigitalOcean.GetDedicatedInferences.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["allEndpoints"] = all.Apply(getDedicatedInferencesResult => getDedicatedInferencesResult.DedicatedInferences),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		all, err := digitalocean.GetDedicatedInferences(ctx, &digitalocean.GetDedicatedInferencesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("allEndpoints", all.DedicatedInferences)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdedicatedinferences" "all" {
/// }
///
/// output "allEndpoints" {
///   value = data.digitalocean_getdedicatedinferences.all.dedicated_inferences
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDedicatedInferencesArgs;
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
///         final var all = DigitaloceanFunctions.getDedicatedInferences(GetDedicatedInferencesArgs.builder()
///             .build());
///
///         ctx.export("allEndpoints", all.dedicatedInferences());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: digitalocean:getDedicatedInferences
///       arguments: {}
/// outputs:
///   allEndpoints: ${all.dedicatedInferences}
/// ```
///
///
/// ### Filter by name
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const filtered = digitalocean.getDedicatedInferences({
///     filters: [{
///         key: "name",
///         values: ["my-inference"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// filtered = digitalocean.get_dedicated_inferences(filters=[{
///     "key": "name",
///     "values": ["my-inference"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filtered = DigitalOcean.GetDedicatedInferences.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new DigitalOcean.Inputs.GetDedicatedInferencesFilterInputArgs
///             {
///                 Key = "name",
///                 Values = new[]
///                 {
///                     "my-inference",
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetDedicatedInferences(ctx, &digitalocean.GetDedicatedInferencesArgs{
/// 			Filters: []digitalocean.GetDedicatedInferencesFilter{
/// 				{
/// 					Key: "name",
/// 					Values: []string{
/// 						"my-inference",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdedicatedinferences" "filtered" {
///   filters {
///     key    = "name"
///     values = ["my-inference"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDedicatedInferencesArgs;
/// import com.pulumi.digitalocean.inputs.GetDedicatedInferencesFilterArgs;
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
///         final var filtered = DigitaloceanFunctions.getDedicatedInferences(GetDedicatedInferencesArgs.builder()
///             .filters(GetDedicatedInferencesFilterArgs.builder()
///                 .key("name")
///                 .values("my-inference")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   filtered:
///     fn::invoke:
///       function: digitalocean:getDedicatedInferences
///       arguments:
///         filters:
///           - key: name
///             values:
///               - my-inference
/// ```
///
///
/// ### Filter by region
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const byRegion = digitalocean.getDedicatedInferences({
///     filters: [{
///         key: "region",
///         values: ["tor1"],
///     }],
///     sorts: [{
///         key: "name",
///         direction: "asc",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// by_region = digitalocean.get_dedicated_inferences(filters=[{
///         "key": "region",
///         "values": ["tor1"],
///     }],
///     sorts=[{
///         "key": "name",
///         "direction": "asc",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var byRegion = DigitalOcean.GetDedicatedInferences.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new DigitalOcean.Inputs.GetDedicatedInferencesFilterInputArgs
///             {
///                 Key = "region",
///                 Values = new[]
///                 {
///                     "tor1",
///                 },
///             },
///         },
///         Sorts = new[]
///         {
///             new DigitalOcean.Inputs.GetDedicatedInferencesSortInputArgs
///             {
///                 Key = "name",
///                 Direction = "asc",
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetDedicatedInferences(ctx, &digitalocean.GetDedicatedInferencesArgs{
/// 			Filters: []digitalocean.GetDedicatedInferencesFilter{
/// 				{
/// 					Key: "region",
/// 					Values: []string{
/// 						"tor1",
/// 					},
/// 				},
/// 			},
/// 			Sorts: []digitalocean.GetDedicatedInferencesSort{
/// 				{
/// 					Key:       "name",
/// 					Direction: pulumi.StringRef("asc"),
/// 				},
/// 			},
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdedicatedinferences" "byRegion" {
///   filters {
///     key    = "region"
///     values = ["tor1"]
///   }
///   sorts {
///     key       = "name"
///     direction = "asc"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDedicatedInferencesArgs;
/// import com.pulumi.digitalocean.inputs.GetDedicatedInferencesFilterArgs;
/// import com.pulumi.digitalocean.inputs.GetDedicatedInferencesSortArgs;
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
///         final var byRegion = DigitaloceanFunctions.getDedicatedInferences(GetDedicatedInferencesArgs.builder()
///             .filters(GetDedicatedInferencesFilterArgs.builder()
///                 .key("region")
///                 .values("tor1")
///                 .build())
///             .sorts(GetDedicatedInferencesSortArgs.builder()
///                 .key("name")
///                 .direction("asc")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   byRegion:
///     fn::invoke:
///       function: digitalocean:getDedicatedInferences
///       arguments:
///         filters:
///           - key: region
///             values:
///               - tor1
///         sorts:
///           - key: name
///             direction: asc
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_dedicated_inferences_get_dedicated_inferences_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDedicatedInferencesResult> getDedicatedInferences(
  GetDedicatedInferencesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getDedicatedInferences:getDedicatedInferences',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedInferencesResult.fromMap(result);
}

/// Get information on a domain. This data source provides the name, TTL, and zone
/// file as configured on your DigitalOcean account. This is useful if the domain
/// name in question is not managed by Terraform or you need to utilize TTL or zone
/// file data.
///
/// An error is triggered if the provided domain name is not managed with your
/// DigitalOcean account.
///
/// ## Example Usage
///
/// Get the zone file for a domain:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getDomain({
///     name: "example.com",
/// });
/// export const domainOutput = example.then(example => example.zoneFile);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_domain(name="example.com")
/// pulumi.export("domainOutput", example.zone_file)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetDomain.Invoke(new()
///     {
///         Name = "example.com",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["domainOutput"] = example.Apply(getDomainResult => getDomainResult.ZoneFile),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetDomain(ctx, &digitalocean.LookupDomainArgs{
/// 			Name: "example.com",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("domainOutput", example.ZoneFile)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdomain" "example" {
///   name = "example.com"
/// }
///
/// output "domainOutput" {
///   value = data.digitalocean_getdomain.example.zone_file
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDomainArgs;
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
///         final var example = DigitaloceanFunctions.getDomain(GetDomainArgs.builder()
///             .name("example.com")
///             .build());
///
///         ctx.export("domainOutput", example.zoneFile());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getDomain
///       arguments:
///         name: example.com
/// outputs:
///   domainOutput: ${example.zoneFile}
/// ```
///
///
/// ```
///   $ pulumi up
///
/// data.digitalocean_domain.example: Refreshing state...
///
/// Apply complete! Resources: 0 added, 0 changed, 0 destroyed.
///
/// Outputs:
///
/// domain_output = $ORIGIN example.com.
/// $TTL 1800
/// example.com. IN SOA ns1.digitalocean.com. hostmaster.example.com. 1516944700 10800 3600 604800 1800
/// example.com. 1800 IN NS ns1.digitalocean.com.
/// example.com. 1800 IN NS ns2.digitalocean.com.
/// example.com. 1800 IN NS ns3.digitalocean.com.
/// www.example.com. 3600 IN A 176.107.155.137
/// db.example.com. 3600 IN A 179.189.166.115
/// jira.example.com. 3600 IN A 207.189.228.15
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_domain_get_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainResult> getDomain(
  GetDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getDomain:getDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainResult.fromMap(result);
}

/// Get information on domains for use in other resources, with the ability to filter and sort the results.
/// If no filters are specified, all domains will be returned.
///
/// This data source is useful if the domains in question are not managed by Terraform or you need to
/// utilize any of the domains' data.
///
/// Note: You can use the `digitalocean.Domain` data source to obtain metadata
/// about a single domain if you already know the `name`.
///
/// ## Example Usage
///
/// Use the `filter` block with a `key` string and `values` list to filter domains. (This example
/// also uses the regular expression `matchBy` mode in order to match domains by suffix.)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const examples = digitalocean.getDomains({
///     filters: [{
///         key: "name",
///         values: ["example\\.com$"],
///         matchBy: "re",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// examples = digitalocean.get_domains(filters=[{
///     "key": "name",
///     "values": ["example\\.com$"],
///     "match_by": "re",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var examples = DigitalOcean.GetDomains.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new DigitalOcean.Inputs.GetDomainsFilterInputArgs
///             {
///                 Key = "name",
///                 Values = new[]
///                 {
///                     "example\\.com$",
///                 },
///                 MatchBy = "re",
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetDomains(ctx, &digitalocean.GetDomainsArgs{
/// 			Filters: []digitalocean.GetDomainsFilter{
/// 				{
/// 					Key: "name",
/// 					Values: []string{
/// 						"example\\.com$",
/// 					},
/// 					MatchBy: pulumi.StringRef("re"),
/// 				},
/// 			},
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdomains" "examples" {
///   filters {
///     key      = "name"
///     values   = ["example\\.com$"]
///     match_by = "re"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDomainsArgs;
/// import com.pulumi.digitalocean.inputs.GetDomainsFilterArgs;
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
///         final var examples = DigitaloceanFunctions.getDomains(GetDomainsArgs.builder()
///             .filters(GetDomainsFilterArgs.builder()
///                 .key("name")
///                 .values("example\\.com$")
///                 .matchBy("re")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   examples:
///     fn::invoke:
///       function: digitalocean:getDomains
///       arguments:
///         filters:
///           - key: name
///             values:
///               - example\.com$
///             matchBy: re
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_domains_get_domains_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainsResult> getDomains(
  GetDomainsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getDomains:getDomains',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainsResult.fromMap(result);
}

/// Get information on a Droplet for use in other resources. This data source provides
/// all of the Droplet's properties as configured on your DigitalOcean account. This
/// is useful if the Droplet in question is not managed by Terraform or you need to
/// utilize any of the Droplet's data.
///
/// **Note:** This data source returns a single Droplet. When specifying a `tag`, an
/// error is triggered if more than one Droplet is found.
///
/// ## Example Usage
///
/// Get the Droplet by name:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getDroplet({
///     name: "web",
/// });
/// export const dropletOutput = example.then(example => example.ipv4Address);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_droplet(name="web")
/// pulumi.export("dropletOutput", example.ipv4_address)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetDroplet.Invoke(new()
///     {
///         Name = "web",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dropletOutput"] = example.Apply(getDropletResult => getDropletResult.Ipv4Address),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetDroplet(ctx, &digitalocean.LookupDropletArgs{
/// 			Name: pulumi.StringRef("web"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dropletOutput", example.Ipv4Address)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdroplet" "example" {
///   name = "web"
/// }
///
/// output "dropletOutput" {
///   value = data.digitalocean_getdroplet.example.ipv4_address
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDropletArgs;
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
///         final var example = DigitaloceanFunctions.getDroplet(GetDropletArgs.builder()
///             .name("web")
///             .build());
///
///         ctx.export("dropletOutput", example.ipv4Address());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getDroplet
///       arguments:
///         name: web
/// outputs:
///   dropletOutput: ${example.ipv4Address}
/// ```
///
///
/// Get the Droplet by tag:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getDroplet({
///     tag: "web",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_droplet(tag="web")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetDroplet.Invoke(new()
///     {
///         Tag = "web",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetDroplet(ctx, &digitalocean.LookupDropletArgs{
/// 			Tag: pulumi.StringRef("web"),
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdroplet" "example" {
///   tag = "web"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDropletArgs;
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
///         final var example = DigitaloceanFunctions.getDroplet(GetDropletArgs.builder()
///             .tag("web")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getDroplet
///       arguments:
///         tag: web
/// ```
///
///
/// Get the Droplet by ID:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getDroplet({
///     id: Number(exampleDigitaloceanKubernetesCluster.nodePool[0].nodes[0].dropletId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_droplet(id=int(example_digitalocean_kubernetes_cluster["nodePool"][0]["nodes"][0]["dropletId"]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetDroplet.Invoke(new()
///     {
///         Id = exampleDigitaloceanKubernetesCluster.NodePool[0].Nodes[0].DropletId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetDroplet(ctx, &digitalocean.LookupDropletArgs{
/// 			Id: pulumi.IntRef(exampleDigitaloceanKubernetesCluster.NodePool[0].Nodes[0].DropletId),
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdroplet" "example" {
///   id = exampleDigitaloceanKubernetesCluster.nodePool[0].nodes[0].dropletId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDropletArgs;
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
///         final var example = DigitaloceanFunctions.getDroplet(GetDropletArgs.builder()
///             .id(exampleDigitaloceanKubernetesCluster.nodePool()[0].nodes()[0].dropletId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getDroplet
///       arguments:
///         id: ${exampleDigitaloceanKubernetesCluster.nodePool[0].nodes[0].dropletId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_droplet_get_droplet_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDropletResult> getDroplet(
  GetDropletArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getDroplet:getDroplet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDropletResult.fromMap(result);
}

/// Get information on a Droplet Autoscale pool for use with other managed resources. This datasource provides all the
/// Droplet Autoscale pool properties as configured on the DigitalOcean account. This is useful if the Droplet Autoscale
/// pool in question is not managed by Terraform, or any of the relevant data would need to referenced in other managed
/// resources.
///
/// ## Example Usage
///
/// Get the Droplet Autoscale pool by name:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const my_imported_autoscale_pool = digitalocean.getDropletAutoscale({
///     name: my_existing_autoscale_pool.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// my_imported_autoscale_pool = digitalocean.get_droplet_autoscale(name=my_existing_autoscale_pool["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_imported_autoscale_pool = DigitalOcean.GetDropletAutoscale.Invoke(new()
///     {
///         Name = my_existing_autoscale_pool.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetDropletAutoscale(ctx, &digitalocean.LookupDropletAutoscaleArgs{
/// 			Name: pulumi.StringRef(my_existing_autoscale_pool.Name),
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdropletautoscale" "my-imported-autoscale-pool" {
///   name = my-existing-autoscale-pool.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDropletAutoscaleArgs;
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
///         final var my-imported-autoscale-pool = DigitaloceanFunctions.getDropletAutoscale(GetDropletAutoscaleArgs.builder()
///             .name(my_existing_autoscale_pool.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-imported-autoscale-pool:
///     fn::invoke:
///       function: digitalocean:getDropletAutoscale
///       arguments:
///         name: ${["my-existing-autoscale-pool"].name}
/// ```
///
///
/// Get the Droplet Autoscale pool by ID:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const my_imported_autoscale_pool = digitalocean.getDropletAutoscale({
///     id: my_existing_autoscale_pool.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// my_imported_autoscale_pool = digitalocean.get_droplet_autoscale(id=my_existing_autoscale_pool["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_imported_autoscale_pool = DigitalOcean.GetDropletAutoscale.Invoke(new()
///     {
///         Id = my_existing_autoscale_pool.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetDropletAutoscale(ctx, &digitalocean.LookupDropletAutoscaleArgs{
/// 			Id: pulumi.StringRef(my_existing_autoscale_pool.Id),
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdropletautoscale" "my-imported-autoscale-pool" {
///   id = my-existing-autoscale-pool.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDropletAutoscaleArgs;
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
///         final var my-imported-autoscale-pool = DigitaloceanFunctions.getDropletAutoscale(GetDropletAutoscaleArgs.builder()
///             .id(my_existing_autoscale_pool.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-imported-autoscale-pool:
///     fn::invoke:
///       function: digitalocean:getDropletAutoscale
///       arguments:
///         id: ${["my-existing-autoscale-pool"].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_droplet_autoscale_get_droplet_autoscale_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDropletAutoscaleResult> getDropletAutoscale(
  GetDropletAutoscaleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getDropletAutoscale:getDropletAutoscale',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDropletAutoscaleResult.fromMap(result);
}

/// Droplet snapshots are saved instances of a Droplet. Use this data
/// source to retrieve the ID of a DigitalOcean Droplet snapshot for use in other
/// resources.
///
/// ## Example Usage
///
/// Get the Droplet snapshot:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const web_snapshot = digitalocean.getDropletSnapshot({
///     nameRegex: "^web",
///     region: "nyc3",
///     mostRecent: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// web_snapshot = digitalocean.get_droplet_snapshot(name_regex="^web",
///     region="nyc3",
///     most_recent=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var web_snapshot = DigitalOcean.GetDropletSnapshot.Invoke(new()
///     {
///         NameRegex = "^web",
///         Region = "nyc3",
///         MostRecent = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetDropletSnapshot(ctx, &digitalocean.LookupDropletSnapshotArgs{
/// 			NameRegex:  pulumi.StringRef("^web"),
/// 			Region:     pulumi.StringRef("nyc3"),
/// 			MostRecent: pulumi.BoolRef(true),
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdropletsnapshot" "web-snapshot" {
///   name_regex  = "^web"
///   region      = "nyc3"
///   most_recent = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDropletSnapshotArgs;
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
///         final var web-snapshot = DigitaloceanFunctions.getDropletSnapshot(GetDropletSnapshotArgs.builder()
///             .nameRegex("^web")
///             .region("nyc3")
///             .mostRecent(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   web-snapshot:
///     fn::invoke:
///       function: digitalocean:getDropletSnapshot
///       arguments:
///         nameRegex: ^web
///         region: nyc3
///         mostRecent: true
/// ```
///
///
/// Create image from snapshot:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const web_snapshot = digitalocean.getDropletSnapshot({
///     nameRegex: "^web",
///     region: "nyc3",
///     mostRecent: true,
/// });
/// const from_snapshot = new digitalocean.Droplet("from-snapshot", {
///     image: web_snapshot.then(web_snapshot => web_snapshot.id),
///     name: "web-02",
///     region: digitalocean.Region.NYC3,
///     size: digitalocean.DropletSlug.DropletS2VCPU4GB,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// web_snapshot = digitalocean.get_droplet_snapshot(name_regex="^web",
///     region="nyc3",
///     most_recent=True)
/// from_snapshot = digitalocean.Droplet("from-snapshot",
///     image=web_snapshot.id,
///     name="web-02",
///     region=digitalocean.Region.NYC3,
///     size=digitalocean.DropletSlug.DROPLET_S2_VCPU4_GB)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var web_snapshot = DigitalOcean.GetDropletSnapshot.Invoke(new()
///     {
///         NameRegex = "^web",
///         Region = "nyc3",
///         MostRecent = true,
///     });
///
///     var from_snapshot = new DigitalOcean.Droplet("from-snapshot", new()
///     {
///         Image = web_snapshot.Apply(web_snapshot => web_snapshot.Apply(getDropletSnapshotResult => getDropletSnapshotResult.Id)),
///         Name = "web-02",
///         Region = DigitalOcean.Region.NYC3,
///         Size = DigitalOcean.DropletSlug.DropletS2VCPU4GB,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		web_snapshot, err := digitalocean.GetDropletSnapshot(ctx, &digitalocean.LookupDropletSnapshotArgs{
/// 			NameRegex:  pulumi.StringRef("^web"),
/// 			Region:     pulumi.StringRef("nyc3"),
/// 			MostRecent: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDroplet(ctx, "from-snapshot", &digitalocean.DropletArgs{
/// 			Image:  pulumi.String(web_snapshot.Id),
/// 			Name:   pulumi.String("web-02"),
/// 			Region: pulumi.String(digitalocean.RegionNYC3),
/// 			Size:   pulumi.String(digitalocean.DropletSlugDropletS2VCPU4GB),
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdropletsnapshot" "web-snapshot" {
///   name_regex  = "^web"
///   region      = "nyc3"
///   most_recent = true
/// }
///
/// resource "digitalocean_droplet" "from-snapshot" {
///   image  = data.digitalocean_getdropletsnapshot.web-snapshot.id
///   name   = "web-02"
///   region = "nyc3"
///   size   = "s-2vcpu-4gb"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDropletSnapshotArgs;
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
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
///         final var web-snapshot = DigitaloceanFunctions.getDropletSnapshot(GetDropletSnapshotArgs.builder()
///             .nameRegex("^web")
///             .region("nyc3")
///             .mostRecent(true)
///             .build());
///
///         var from_snapshot = new Droplet("from-snapshot", DropletArgs.builder()
///             .image(web_snapshot.id())
///             .name("web-02")
///             .region("nyc3")
///             .size("s-2vcpu-4gb")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   from-snapshot:
///     type: digitalocean:Droplet
///     properties:
///       image: ${["web-snapshot"].id}
///       name: web-02
///       region: nyc3
///       size: s-2vcpu-4gb
/// variables:
///   web-snapshot:
///     fn::invoke:
///       function: digitalocean:getDropletSnapshot
///       arguments:
///         nameRegex: ^web
///         region: nyc3
///         mostRecent: true
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_droplet_snapshot_get_droplet_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDropletSnapshotResult> getDropletSnapshot(
  GetDropletSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getDropletSnapshot:getDropletSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDropletSnapshotResult.fromMap(result);
}

/// Get information on Droplets for use in other resources, with the ability to filter and sort the results.
/// If no filters are specified, all Droplets will be returned.
///
/// This data source is useful if the Droplets in question are not managed by Terraform or you need to
/// utilize any of the Droplets' data.
///
/// By default, only non-GPU Droplets are returned. To list only GPU Droplets, set
/// the `gpus` attribute to `true`.
///
/// Note: You can use the `digitalocean.Droplet` data source to obtain metadata
/// about a single Droplet if you already know the `id`, unique `name`, or unique `tag` to retrieve.
///
/// ## Example Usage
///
/// Use the `filter` block with a `key` string and `values` list to filter images.
///
/// For example to find all Droplets with size `s-1vcpu-1gb`:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const small = digitalocean.getDroplets({
///     filters: [{
///         key: "size",
///         values: ["s-1vcpu-1gb"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// small = digitalocean.get_droplets(filters=[{
///     "key": "size",
///     "values": ["s-1vcpu-1gb"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var small = DigitalOcean.GetDroplets.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new DigitalOcean.Inputs.GetDropletsFilterInputArgs
///             {
///                 Key = "size",
///                 Values = new[]
///                 {
///                     "s-1vcpu-1gb",
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetDroplets(ctx, &digitalocean.GetDropletsArgs{
/// 			Filters: []digitalocean.GetDropletsFilter{
/// 				{
/// 					Key: "size",
/// 					Values: []string{
/// 						"s-1vcpu-1gb",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdroplets" "small" {
///   filters {
///     key    = "size"
///     values = ["s-1vcpu-1gb"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDropletsArgs;
/// import com.pulumi.digitalocean.inputs.GetDropletsFilterArgs;
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
///         final var small = DigitaloceanFunctions.getDroplets(GetDropletsArgs.builder()
///             .filters(GetDropletsFilterArgs.builder()
///                 .key("size")
///                 .values("s-1vcpu-1gb")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   small:
///     fn::invoke:
///       function: digitalocean:getDroplets
///       arguments:
///         filters:
///           - key: size
///             values:
///               - s-1vcpu-1gb
/// ```
///
///
/// You can filter on multiple fields and sort the results as well:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const small_with_backups = digitalocean.getDroplets({
///     filters: [
///         {
///             key: "size",
///             values: ["s-1vcpu-1gb"],
///         },
///         {
///             key: "backups",
///             values: ["true"],
///         },
///     ],
///     sorts: [{
///         key: "created_at",
///         direction: "desc",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// small_with_backups = digitalocean.get_droplets(filters=[
///         {
///             "key": "size",
///             "values": ["s-1vcpu-1gb"],
///         },
///         {
///             "key": "backups",
///             "values": ["true"],
///         },
///     ],
///     sorts=[{
///         "key": "created_at",
///         "direction": "desc",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var small_with_backups = DigitalOcean.GetDroplets.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new DigitalOcean.Inputs.GetDropletsFilterInputArgs
///             {
///                 Key = "size",
///                 Values = new[]
///                 {
///                     "s-1vcpu-1gb",
///                 },
///             },
///             new DigitalOcean.Inputs.GetDropletsFilterInputArgs
///             {
///                 Key = "backups",
///                 Values = new[]
///                 {
///                     "true",
///                 },
///             },
///         },
///         Sorts = new[]
///         {
///             new DigitalOcean.Inputs.GetDropletsSortInputArgs
///             {
///                 Key = "created_at",
///                 Direction = "desc",
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetDroplets(ctx, &digitalocean.GetDropletsArgs{
/// 			Filters: []digitalocean.GetDropletsFilter{
/// 				{
/// 					Key: "size",
/// 					Values: []string{
/// 						"s-1vcpu-1gb",
/// 					},
/// 				},
/// 				{
/// 					Key: "backups",
/// 					Values: []string{
/// 						"true",
/// 					},
/// 				},
/// 			},
/// 			Sorts: []digitalocean.GetDropletsSort{
/// 				{
/// 					Key:       "created_at",
/// 					Direction: pulumi.StringRef("desc"),
/// 				},
/// 			},
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getdroplets" "small-with-backups" {
///   filters {
///     key    = "size"
///     values = ["s-1vcpu-1gb"]
///   }
///   filters {
///     key    = "backups"
///     values = ["true"]
///   }
///   sorts {
///     key       = "created_at"
///     direction = "desc"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetDropletsArgs;
/// import com.pulumi.digitalocean.inputs.GetDropletsFilterArgs;
/// import com.pulumi.digitalocean.inputs.GetDropletsSortArgs;
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
///         final var small-with-backups = DigitaloceanFunctions.getDroplets(GetDropletsArgs.builder()
///             .filters(
///                 GetDropletsFilterArgs.builder()
///                     .key("size")
///                     .values("s-1vcpu-1gb")
///                     .build(),
///                 GetDropletsFilterArgs.builder()
///                     .key("backups")
///                     .values("true")
///                     .build())
///             .sorts(GetDropletsSortArgs.builder()
///                 .key("created_at")
///                 .direction("desc")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   small-with-backups:
///     fn::invoke:
///       function: digitalocean:getDroplets
///       arguments:
///         filters:
///           - key: size
///             values:
///               - s-1vcpu-1gb
///           - key: backups
///             values:
///               - 'true'
///         sorts:
///           - key: created_at
///             direction: desc
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_droplets_get_droplets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDropletsResult> getDroplets(
  GetDropletsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getDroplets:getDroplets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDropletsResult.fromMap(result);
}

/// Get information on a DigitalOcean Firewall.
///
/// ## Example Usage
///
/// Get the firewall:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getFirewall({
///     firewallId: "1df48973-6eef-4214-854f-fa7726e7e583",
/// });
/// export const exampleFirewallName = example.then(example => example.name);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_firewall(firewall_id="1df48973-6eef-4214-854f-fa7726e7e583")
/// pulumi.export("exampleFirewallName", example.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetFirewall.Invoke(new()
///     {
///         FirewallId = "1df48973-6eef-4214-854f-fa7726e7e583",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["exampleFirewallName"] = example.Apply(getFirewallResult => getFirewallResult.Name),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetFirewall(ctx, &digitalocean.LookupFirewallArgs{
/// 			FirewallId: "1df48973-6eef-4214-854f-fa7726e7e583",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("exampleFirewallName", example.Name)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getfirewall" "example" {
///   firewall_id = "1df48973-6eef-4214-854f-fa7726e7e583"
/// }
///
/// output "exampleFirewallName" {
///   value = data.digitalocean_getfirewall.example.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetFirewallArgs;
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
///         final var example = DigitaloceanFunctions.getFirewall(GetFirewallArgs.builder()
///             .firewallId("1df48973-6eef-4214-854f-fa7726e7e583")
///             .build());
///
///         ctx.export("exampleFirewallName", example.name());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getFirewall
///       arguments:
///         firewallId: 1df48973-6eef-4214-854f-fa7726e7e583
/// outputs:
///   exampleFirewallName: ${example.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_firewall_get_firewall_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallResult> getFirewall(
  GetFirewallArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getFirewall:getFirewall',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallResult.fromMap(result);
}

/// &gt; **Deprecated:** DigitalOcean Floating IPs have been renamed reserved IPs. This data source will be removed in a future release. Please use `digitalocean.ReservedIp` instead.
///
/// Get information on a floating ip. This data source provides the region and Droplet id
/// as configured on your DigitalOcean account. This is useful if the floating IP
/// in question is not managed by Terraform or you need to find the Droplet the IP is
/// attached to.
///
/// An error is triggered if the provided floating IP does not exist.
///
/// ## Example Usage
///
/// Get the floating IP:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const config = new pulumi.Config();
/// const publicIp = config.requireObject<any>("publicIp");
/// const example = digitalocean.getFloatingIp({
///     ipAddress: publicIp,
/// });
/// export const fipOutput = example.then(example => example.dropletId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// config = pulumi.Config()
/// public_ip = config.require_object("publicIp")
/// example = digitalocean.get_floating_ip(ip_address=public_ip)
/// pulumi.export("fipOutput", example.droplet_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var publicIp = config.RequireObject<dynamic>("publicIp");
///     var example = DigitalOcean.GetFloatingIp.Invoke(new()
///     {
///         IpAddress = publicIp,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["fipOutput"] = example.Apply(getFloatingIpResult => getFloatingIpResult.DropletId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		var publicIp interface{}
/// 		cfg.RequireObject("publicIp", &publicIp)
/// 		example, err := digitalocean.GetFloatingIp(ctx, &digitalocean.LookupFloatingIpArgs{
/// 			IpAddress: publicIp,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("fipOutput", example.DropletId)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getfloatingip" "example" {
///   ip_address = var.publicIp
/// }
///
/// variable "publicIp" {
/// }
/// output "fipOutput" {
///   value = data.digitalocean_getfloatingip.example.droplet_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetFloatingIpArgs;
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
///         final var config = ctx.config();
///         final var publicIp = config.require("publicIp");
///         final var example = DigitaloceanFunctions.getFloatingIp(GetFloatingIpArgs.builder()
///             .ipAddress(publicIp)
///             .build());
///
///         ctx.export("fipOutput", example.dropletId());
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   publicIp:
///     type: object
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getFloatingIp
///       arguments:
///         ipAddress: ${publicIp}
/// outputs:
///   fipOutput: ${example.dropletId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_floating_ip_get_floating_ip_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFloatingIpResult> getFloatingIp(
  GetFloatingIpArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getFloatingIp:getFloatingIp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFloatingIpResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_genai_agent_get_genai_agent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGenaiAgentResult> getGenaiAgent(
  GetGenaiAgentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGenaiAgent:getGenaiAgent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGenaiAgentResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_genai_agent_versions_get_genai_agent_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGenaiAgentVersionsResult> getGenaiAgentVersions(
  GetGenaiAgentVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGenaiAgentVersions:getGenaiAgentVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGenaiAgentVersionsResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_genai_agents_get_genai_agents_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGenaiAgentsResult> getGenaiAgents(
  GetGenaiAgentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGenaiAgents:getGenaiAgents',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGenaiAgentsResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_genai_agents_by_openai_api_key_get_genai_agents_by_openai_api_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGenaiAgentsByOpenaiApiKeyResult> getGenaiAgentsByOpenaiApiKey(
  GetGenaiAgentsByOpenaiApiKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGenaiAgentsByOpenaiApiKey:getGenaiAgentsByOpenaiApiKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGenaiAgentsByOpenaiApiKeyResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_genai_indexing_job_get_genai_indexing_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGenaiIndexingJobResult> getGenaiIndexingJob(
  GetGenaiIndexingJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGenaiIndexingJob:getGenaiIndexingJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGenaiIndexingJobResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_genai_indexing_job_data_sources_get_genai_indexing_job_data_sources_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGenaiIndexingJobDataSourcesResult> getGenaiIndexingJobDataSources(
  GetGenaiIndexingJobDataSourcesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGenaiIndexingJobDataSources:getGenaiIndexingJobDataSources',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGenaiIndexingJobDataSourcesResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_genai_knowledge_base_get_genai_knowledge_base_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGenaiKnowledgeBaseResult> getGenaiKnowledgeBase(
  GetGenaiKnowledgeBaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGenaiKnowledgeBase:getGenaiKnowledgeBase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGenaiKnowledgeBaseResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_genai_knowledge_base_data_sources_get_genai_knowledge_base_data_sources_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGenaiKnowledgeBaseDataSourcesResult> getGenaiKnowledgeBaseDataSources(
  GetGenaiKnowledgeBaseDataSourcesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGenaiKnowledgeBaseDataSources:getGenaiKnowledgeBaseDataSources',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGenaiKnowledgeBaseDataSourcesResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_genai_knowledge_base_indexing_jobs_get_genai_knowledge_base_indexing_jobs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGenaiKnowledgeBaseIndexingJobsResult> getGenaiKnowledgeBaseIndexingJobs(
  GetGenaiKnowledgeBaseIndexingJobsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGenaiKnowledgeBaseIndexingJobs:getGenaiKnowledgeBaseIndexingJobs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGenaiKnowledgeBaseIndexingJobsResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_genai_knowledge_bases_get_genai_knowledge_bases_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGenaiKnowledgeBasesResult> getGenaiKnowledgeBases(
  GetGenaiKnowledgeBasesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGenaiKnowledgeBases:getGenaiKnowledgeBases',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGenaiKnowledgeBasesResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_genai_models_get_genai_models_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGenaiModelsResult> getGenaiModels(
  GetGenaiModelsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGenaiModels:getGenaiModels',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGenaiModelsResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_genai_openai_api_key_get_genai_openai_api_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGenaiOpenaiApiKeyResult> getGenaiOpenaiApiKey(
  GetGenaiOpenaiApiKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGenaiOpenaiApiKey:getGenaiOpenaiApiKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGenaiOpenaiApiKeyResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_genai_openai_api_keys_get_genai_openai_api_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGenaiOpenaiApiKeysResult> getGenaiOpenaiApiKeys(
  GetGenaiOpenaiApiKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGenaiOpenaiApiKeys:getGenaiOpenaiApiKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGenaiOpenaiApiKeysResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_genai_regions_get_genai_regions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGenaiRegionsResult> getGenaiRegions(
  GetGenaiRegionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGenaiRegions:getGenaiRegions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGenaiRegionsResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_gradientai_agent_get_gradientai_agent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGradientaiAgentResult> getGradientaiAgent(
  GetGradientaiAgentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGradientaiAgent:getGradientaiAgent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGradientaiAgentResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_gradientai_agent_versions_get_gradientai_agent_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGradientaiAgentVersionsResult> getGradientaiAgentVersions(
  GetGradientaiAgentVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGradientaiAgentVersions:getGradientaiAgentVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGradientaiAgentVersionsResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_gradientai_agents_get_gradientai_agents_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGradientaiAgentsResult> getGradientaiAgents(
  GetGradientaiAgentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGradientaiAgents:getGradientaiAgents',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGradientaiAgentsResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_gradientai_agents_by_openai_api_key_get_gradientai_agents_by_openai_api_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGradientaiAgentsByOpenaiApiKeyResult> getGradientaiAgentsByOpenaiApiKey(
  GetGradientaiAgentsByOpenaiApiKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGradientaiAgentsByOpenaiApiKey:getGradientaiAgentsByOpenaiApiKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGradientaiAgentsByOpenaiApiKeyResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_gradientai_custom_model_get_gradientai_custom_model_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGradientaiCustomModelResult> getGradientaiCustomModel(
  GetGradientaiCustomModelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGradientaiCustomModel:getGradientaiCustomModel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGradientaiCustomModelResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_gradientai_custom_models_get_gradientai_custom_models_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGradientaiCustomModelsResult> getGradientaiCustomModels(
  GetGradientaiCustomModelsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGradientaiCustomModels:getGradientaiCustomModels',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGradientaiCustomModelsResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_gradientai_indexing_job_get_gradientai_indexing_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGradientaiIndexingJobResult> getGradientaiIndexingJob(
  GetGradientaiIndexingJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGradientaiIndexingJob:getGradientaiIndexingJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGradientaiIndexingJobResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_gradientai_indexing_job_data_sources_get_gradientai_indexing_job_data_sources_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGradientaiIndexingJobDataSourcesResult> getGradientaiIndexingJobDataSources(
  GetGradientaiIndexingJobDataSourcesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGradientaiIndexingJobDataSources:getGradientaiIndexingJobDataSources',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGradientaiIndexingJobDataSourcesResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_gradientai_knowledge_base_get_gradientai_knowledge_base_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGradientaiKnowledgeBaseResult> getGradientaiKnowledgeBase(
  GetGradientaiKnowledgeBaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGradientaiKnowledgeBase:getGradientaiKnowledgeBase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGradientaiKnowledgeBaseResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_gradientai_knowledge_base_data_sources_get_gradientai_knowledge_base_data_sources_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGradientaiKnowledgeBaseDataSourcesResult> getGradientaiKnowledgeBaseDataSources(
  GetGradientaiKnowledgeBaseDataSourcesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGradientaiKnowledgeBaseDataSources:getGradientaiKnowledgeBaseDataSources',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGradientaiKnowledgeBaseDataSourcesResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_gradientai_knowledge_base_indexing_jobs_get_gradientai_knowledge_base_indexing_jobs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGradientaiKnowledgeBaseIndexingJobsResult> getGradientaiKnowledgeBaseIndexingJobs(
  GetGradientaiKnowledgeBaseIndexingJobsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGradientaiKnowledgeBaseIndexingJobs:getGradientaiKnowledgeBaseIndexingJobs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGradientaiKnowledgeBaseIndexingJobsResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_gradientai_knowledge_bases_get_gradientai_knowledge_bases_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGradientaiKnowledgeBasesResult> getGradientaiKnowledgeBases(
  GetGradientaiKnowledgeBasesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGradientaiKnowledgeBases:getGradientaiKnowledgeBases',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGradientaiKnowledgeBasesResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_gradientai_models_get_gradientai_models_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGradientaiModelsResult> getGradientaiModels(
  GetGradientaiModelsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGradientaiModels:getGradientaiModels',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGradientaiModelsResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_gradientai_openai_api_key_get_gradientai_openai_api_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGradientaiOpenaiApiKeyResult> getGradientaiOpenaiApiKey(
  GetGradientaiOpenaiApiKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGradientaiOpenaiApiKey:getGradientaiOpenaiApiKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGradientaiOpenaiApiKeyResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_gradientai_openai_api_keys_get_gradientai_openai_api_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGradientaiOpenaiApiKeysResult> getGradientaiOpenaiApiKeys(
  GetGradientaiOpenaiApiKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGradientaiOpenaiApiKeys:getGradientaiOpenaiApiKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGradientaiOpenaiApiKeysResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_gradientai_regions_get_gradientai_regions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGradientaiRegionsResult> getGradientaiRegions(
  GetGradientaiRegionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getGradientaiRegions:getGradientaiRegions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGradientaiRegionsResult.fromMap(result);
}

/// Get information on an image for use in other resources (e.g. creating a Droplet
/// based on snapshot). This data source provides all of the image properties as
/// configured on your DigitalOcean account. This is useful if the image in question
/// is not managed by Terraform or you need to utilize any of the image's data.
///
/// An error is triggered if zero or more than one result is returned by the query.
///
/// ## Example Usage
///
/// Get the data about a snapshot:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example1 = digitalocean.getImage({
///     name: "example-1.0.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example1 = digitalocean.get_image(name="example-1.0.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example1 = DigitalOcean.GetImage.Invoke(new()
///     {
///         Name = "example-1.0.0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetImage(ctx, &digitalocean.GetImageArgs{
/// 			Name: pulumi.StringRef("example-1.0.0"),
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getimage" "example1" {
///   name = "example-1.0.0"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetImageArgs;
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
///         final var example1 = DigitaloceanFunctions.getImage(GetImageArgs.builder()
///             .name("example-1.0.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example1:
///     fn::invoke:
///       function: digitalocean:getImage
///       arguments:
///         name: example-1.0.0
/// ```
///
///
/// Reuse the data about a snapshot to create a Droplet:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getImage({
///     name: "example-1.0.0",
/// });
/// const exampleDroplet = new digitalocean.Droplet("example", {
///     image: output(example.then(example => example.id)).apply(x =>String(x)),
///     name: "example-1",
///     region: digitalocean.Region.NYC2,
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_image(name="example-1.0.0")
/// example_droplet = digitalocean.Droplet("example",
///     image=output(example.id).apply(lambda x: str(x)),
///     name="example-1",
///     region=digitalocean.Region.NYC2,
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetImage.Invoke(new()
///     {
///         Name = "example-1.0.0",
///     });
///
///     var exampleDroplet = new DigitalOcean.Droplet("example", new()
///     {
///         Image = example.Apply(getImageResult => getImageResult.Id),
///         Name = "example-1",
///         Region = DigitalOcean.Region.NYC2,
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetImage(ctx, &digitalocean.GetImageArgs{
/// 			Name: pulumi.StringRef("example-1.0.0"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDroplet(ctx, "example", &digitalocean.DropletArgs{
/// 			Image:  pulumi.Int(example.Id),
/// 			Name:   pulumi.String("example-1"),
/// 			Region: pulumi.String(digitalocean.RegionNYC2),
/// 			Size:   pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getimage" "example" {
///   name = "example-1.0.0"
/// }
///
/// resource "digitalocean_droplet" "example" {
///   image  = data.digitalocean_getimage.example.id
///   name   = "example-1"
///   region = "nyc2"
///   size   = "s-1vcpu-1gb"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetImageArgs;
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
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
///         final var example = DigitaloceanFunctions.getImage(GetImageArgs.builder()
///             .name("example-1.0.0")
///             .build());
///
///         var exampleDroplet = new Droplet("exampleDroplet", DropletArgs.builder()
///             .image(example.id())
///             .name("example-1")
///             .region("nyc2")
///             .size("s-1vcpu-1gb")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDroplet:
///     type: digitalocean:Droplet
///     name: example
///     properties:
///       image: ${example.id}
///       name: example-1
///       region: nyc2
///       size: s-1vcpu-1gb
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getImage
///       arguments:
///         name: example-1.0.0
/// ```
///
///
/// Get the data about an official image:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example2 = digitalocean.getImage({
///     slug: "ubuntu-18-04-x64",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example2 = digitalocean.get_image(slug="ubuntu-18-04-x64")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example2 = DigitalOcean.GetImage.Invoke(new()
///     {
///         Slug = "ubuntu-18-04-x64",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetImage(ctx, &digitalocean.GetImageArgs{
/// 			Slug: pulumi.StringRef("ubuntu-18-04-x64"),
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getimage" "example2" {
///   slug = "ubuntu-18-04-x64"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetImageArgs;
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
///         final var example2 = DigitaloceanFunctions.getImage(GetImageArgs.builder()
///             .slug("ubuntu-18-04-x64")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example2:
///     fn::invoke:
///       function: digitalocean:getImage
///       arguments:
///         slug: ubuntu-18-04-x64
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_image_get_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageResult> getImage(
  GetImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getImage:getImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageResult.fromMap(result);
}

/// Get information on images for use in other resources (e.g. creating a Droplet
/// based on a snapshot), with the ability to filter and sort the results. If no filters are specified,
/// all images will be returned.
///
/// This data source is useful if the image in question is not managed by Terraform or you need to utilize any
/// of the image's data.
///
/// Note: You can use the `digitalocean.getImage` data source to obtain metadata
/// about a single image if you already know the `slug`, unique `name`, or `id` to retrieve.
///
/// ## Example Usage
///
/// Use the `filter` block with a `key` string and `values` list to filter images.
///
/// For example to find all Ubuntu images:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const ubuntu = digitalocean.getImages({
///     filters: [{
///         key: "distribution",
///         values: ["Ubuntu"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// ubuntu = digitalocean.get_images(filters=[{
///     "key": "distribution",
///     "values": ["Ubuntu"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ubuntu = DigitalOcean.GetImages.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new DigitalOcean.Inputs.GetImagesFilterInputArgs
///             {
///                 Key = "distribution",
///                 Values = new[]
///                 {
///                     "Ubuntu",
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetImages(ctx, &digitalocean.GetImagesArgs{
/// 			Filters: []digitalocean.GetImagesFilter{
/// 				{
/// 					Key: "distribution",
/// 					Values: []string{
/// 						"Ubuntu",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getimages" "ubuntu" {
///   filters {
///     key    = "distribution"
///     values = ["Ubuntu"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetImagesArgs;
/// import com.pulumi.digitalocean.inputs.GetImagesFilterArgs;
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
///         final var ubuntu = DigitaloceanFunctions.getImages(GetImagesArgs.builder()
///             .filters(GetImagesFilterArgs.builder()
///                 .key("distribution")
///                 .values("Ubuntu")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ubuntu:
///     fn::invoke:
///       function: digitalocean:getImages
///       arguments:
///         filters:
///           - key: distribution
///             values:
///               - Ubuntu
/// ```
///
///
/// You can filter on multiple fields and sort the results as well:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const available = digitalocean.getImages({
///     filters: [
///         {
///             key: "distribution",
///             values: ["Ubuntu"],
///         },
///         {
///             key: "regions",
///             values: ["nyc3"],
///         },
///     ],
///     sorts: [{
///         key: "created",
///         direction: "desc",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// available = digitalocean.get_images(filters=[
///         {
///             "key": "distribution",
///             "values": ["Ubuntu"],
///         },
///         {
///             "key": "regions",
///             "values": ["nyc3"],
///         },
///     ],
///     sorts=[{
///         "key": "created",
///         "direction": "desc",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = DigitalOcean.GetImages.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new DigitalOcean.Inputs.GetImagesFilterInputArgs
///             {
///                 Key = "distribution",
///                 Values = new[]
///                 {
///                     "Ubuntu",
///                 },
///             },
///             new DigitalOcean.Inputs.GetImagesFilterInputArgs
///             {
///                 Key = "regions",
///                 Values = new[]
///                 {
///                     "nyc3",
///                 },
///             },
///         },
///         Sorts = new[]
///         {
///             new DigitalOcean.Inputs.GetImagesSortInputArgs
///             {
///                 Key = "created",
///                 Direction = "desc",
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetImages(ctx, &digitalocean.GetImagesArgs{
/// 			Filters: []digitalocean.GetImagesFilter{
/// 				{
/// 					Key: "distribution",
/// 					Values: []string{
/// 						"Ubuntu",
/// 					},
/// 				},
/// 				{
/// 					Key: "regions",
/// 					Values: []string{
/// 						"nyc3",
/// 					},
/// 				},
/// 			},
/// 			Sorts: []digitalocean.GetImagesSort{
/// 				{
/// 					Key:       "created",
/// 					Direction: pulumi.StringRef("desc"),
/// 				},
/// 			},
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getimages" "available" {
///   filters {
///     key    = "distribution"
///     values = ["Ubuntu"]
///   }
///   filters {
///     key    = "regions"
///     values = ["nyc3"]
///   }
///   sorts {
///     key       = "created"
///     direction = "desc"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetImagesArgs;
/// import com.pulumi.digitalocean.inputs.GetImagesFilterArgs;
/// import com.pulumi.digitalocean.inputs.GetImagesSortArgs;
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
///         final var available = DigitaloceanFunctions.getImages(GetImagesArgs.builder()
///             .filters(
///                 GetImagesFilterArgs.builder()
///                     .key("distribution")
///                     .values("Ubuntu")
///                     .build(),
///                 GetImagesFilterArgs.builder()
///                     .key("regions")
///                     .values("nyc3")
///                     .build())
///             .sorts(GetImagesSortArgs.builder()
///                 .key("created")
///                 .direction("desc")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   available:
///     fn::invoke:
///       function: digitalocean:getImages
///       arguments:
///         filters:
///           - key: distribution
///             values:
///               - Ubuntu
///           - key: regions
///             values:
///               - nyc3
///         sorts:
///           - key: created
///             direction: desc
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_images_get_images_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImagesResult> getImages(
  GetImagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getImages:getImages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImagesResult.fromMap(result);
}

/// Retrieves information about a DigitalOcean Kubernetes cluster for use in other resources. This data source provides all of the cluster's properties as configured on your DigitalOcean account. This is useful if the cluster in question is not managed by Terraform.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getKubernetesCluster({
///     name: "prod-cluster-01",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_kubernetes_cluster(name="prod-cluster-01")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetKubernetesCluster.Invoke(new()
///     {
///         Name = "prod-cluster-01",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetKubernetesCluster(ctx, &digitalocean.LookupKubernetesClusterArgs{
/// 			Name: "prod-cluster-01",
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getkubernetescluster" "example" {
///   name = "prod-cluster-01"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetKubernetesClusterArgs;
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
///         final var example = DigitaloceanFunctions.getKubernetesCluster(GetKubernetesClusterArgs.builder()
///             .name("prod-cluster-01")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getKubernetesCluster
///       arguments:
///         name: prod-cluster-01
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_kubernetes_cluster_get_kubernetes_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKubernetesClusterResult> getKubernetesCluster(
  GetKubernetesClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getKubernetesCluster:getKubernetesCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKubernetesClusterResult.fromMap(result);
}

/// Provides access to the available DigitalOcean Kubernetes Service versions.
///
/// ## Example Usage
///
/// ### Output a list of all available versions
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// export = async () => {
///     const example = await digitalocean.getKubernetesVersions({});
///     return {
///         "k8s-versions": example.validVersions,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_kubernetes_versions()
/// pulumi.export("k8s-versions", example.valid_versions)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetKubernetesVersions.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["k8s-versions"] = example.Apply(getKubernetesVersionsResult => getKubernetesVersionsResult.ValidVersions),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetKubernetesVersions(ctx, &digitalocean.GetKubernetesVersionsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("k8s-versions", example.ValidVersions)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getkubernetesversions" "example" {
/// }
///
/// output "k8s-versions" {
///   value = data.digitalocean_getkubernetesversions.example.valid_versions
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetKubernetesVersionsArgs;
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
///         final var example = DigitaloceanFunctions.getKubernetesVersions(GetKubernetesVersionsArgs.builder()
///             .build());
///
///         ctx.export("k8s-versions", example.validVersions());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getKubernetesVersions
///       arguments: {}
/// outputs:
///   k8s-versions: ${example.validVersions}
/// ```
///
///
/// ### Create a Kubernetes cluster using the most recent version available
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getKubernetesVersions({});
/// const example_cluster = new digitalocean.KubernetesCluster("example-cluster", {
///     name: "example-cluster",
///     region: digitalocean.Region.LON1,
///     version: example.then(example => example.latestVersion),
///     nodePool: {
///         name: "default",
///         size: "s-1vcpu-2gb",
///         nodeCount: 3,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_kubernetes_versions()
/// example_cluster = digitalocean.KubernetesCluster("example-cluster",
///     name="example-cluster",
///     region=digitalocean.Region.LON1,
///     version=example.latest_version,
///     node_pool={
///         "name": "default",
///         "size": "s-1vcpu-2gb",
///         "node_count": 3,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetKubernetesVersions.Invoke();
///
///     var example_cluster = new DigitalOcean.KubernetesCluster("example-cluster", new()
///     {
///         Name = "example-cluster",
///         Region = DigitalOcean.Region.LON1,
///         Version = example.Apply(getKubernetesVersionsResult => getKubernetesVersionsResult.LatestVersion),
///         NodePool = new DigitalOcean.Inputs.KubernetesClusterNodePoolArgs
///         {
///             Name = "default",
///             Size = "s-1vcpu-2gb",
///             NodeCount = 3,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetKubernetesVersions(ctx, &digitalocean.GetKubernetesVersionsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewKubernetesCluster(ctx, "example-cluster", &digitalocean.KubernetesClusterArgs{
/// 			Name:    pulumi.String("example-cluster"),
/// 			Region:  pulumi.String(digitalocean.RegionLON1),
/// 			Version: pulumi.String(example.LatestVersion),
/// 			NodePool: &digitalocean.KubernetesClusterNodePoolArgs{
/// 				Name:      pulumi.String("default"),
/// 				Size:      pulumi.String("s-1vcpu-2gb"),
/// 				NodeCount: pulumi.Int(3),
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getkubernetesversions" "example" {
/// }
///
/// resource "digitalocean_kubernetescluster" "example-cluster" {
///   name    = "example-cluster"
///   region  = "lon1"
///   version = data.digitalocean_getkubernetesversions.example.latest_version
///   node_pool = {
///     name       = "default"
///     size       = "s-1vcpu-2gb"
///     node_count = 3
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetKubernetesVersionsArgs;
/// import com.pulumi.digitalocean.KubernetesCluster;
/// import com.pulumi.digitalocean.KubernetesClusterArgs;
/// import com.pulumi.digitalocean.inputs.KubernetesClusterNodePoolArgs;
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
///         final var example = DigitaloceanFunctions.getKubernetesVersions(GetKubernetesVersionsArgs.builder()
///             .build());
///
///         var example_cluster = new KubernetesCluster("example-cluster", KubernetesClusterArgs.builder()
///             .name("example-cluster")
///             .region("lon1")
///             .version(example.latestVersion())
///             .nodePool(KubernetesClusterNodePoolArgs.builder()
///                 .name("default")
///                 .size("s-1vcpu-2gb")
///                 .nodeCount(3)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-cluster:
///     type: digitalocean:KubernetesCluster
///     properties:
///       name: example-cluster
///       region: lon1
///       version: ${example.latestVersion}
///       nodePool:
///         name: default
///         size: s-1vcpu-2gb
///         nodeCount: 3
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getKubernetesVersions
///       arguments: {}
/// ```
///
///
/// ### Pin a Kubernetes cluster to a specific minor version
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getKubernetesVersions({
///     versionPrefix: "1.22.",
/// });
/// const example_cluster = new digitalocean.KubernetesCluster("example-cluster", {
///     name: "example-cluster",
///     region: digitalocean.Region.LON1,
///     version: example.then(example => example.latestVersion),
///     nodePool: {
///         name: "default",
///         size: "s-1vcpu-2gb",
///         nodeCount: 3,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_kubernetes_versions(version_prefix="1.22.")
/// example_cluster = digitalocean.KubernetesCluster("example-cluster",
///     name="example-cluster",
///     region=digitalocean.Region.LON1,
///     version=example.latest_version,
///     node_pool={
///         "name": "default",
///         "size": "s-1vcpu-2gb",
///         "node_count": 3,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetKubernetesVersions.Invoke(new()
///     {
///         VersionPrefix = "1.22.",
///     });
///
///     var example_cluster = new DigitalOcean.KubernetesCluster("example-cluster", new()
///     {
///         Name = "example-cluster",
///         Region = DigitalOcean.Region.LON1,
///         Version = example.Apply(getKubernetesVersionsResult => getKubernetesVersionsResult.LatestVersion),
///         NodePool = new DigitalOcean.Inputs.KubernetesClusterNodePoolArgs
///         {
///             Name = "default",
///             Size = "s-1vcpu-2gb",
///             NodeCount = 3,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetKubernetesVersions(ctx, &digitalocean.GetKubernetesVersionsArgs{
/// 			VersionPrefix: pulumi.StringRef("1.22."),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewKubernetesCluster(ctx, "example-cluster", &digitalocean.KubernetesClusterArgs{
/// 			Name:    pulumi.String("example-cluster"),
/// 			Region:  pulumi.String(digitalocean.RegionLON1),
/// 			Version: pulumi.String(example.LatestVersion),
/// 			NodePool: &digitalocean.KubernetesClusterNodePoolArgs{
/// 				Name:      pulumi.String("default"),
/// 				Size:      pulumi.String("s-1vcpu-2gb"),
/// 				NodeCount: pulumi.Int(3),
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getkubernetesversions" "example" {
///   version_prefix = "1.22."
/// }
///
/// resource "digitalocean_kubernetescluster" "example-cluster" {
///   name    = "example-cluster"
///   region  = "lon1"
///   version = data.digitalocean_getkubernetesversions.example.latest_version
///   node_pool = {
///     name       = "default"
///     size       = "s-1vcpu-2gb"
///     node_count = 3
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetKubernetesVersionsArgs;
/// import com.pulumi.digitalocean.KubernetesCluster;
/// import com.pulumi.digitalocean.KubernetesClusterArgs;
/// import com.pulumi.digitalocean.inputs.KubernetesClusterNodePoolArgs;
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
///         final var example = DigitaloceanFunctions.getKubernetesVersions(GetKubernetesVersionsArgs.builder()
///             .versionPrefix("1.22.")
///             .build());
///
///         var example_cluster = new KubernetesCluster("example-cluster", KubernetesClusterArgs.builder()
///             .name("example-cluster")
///             .region("lon1")
///             .version(example.latestVersion())
///             .nodePool(KubernetesClusterNodePoolArgs.builder()
///                 .name("default")
///                 .size("s-1vcpu-2gb")
///                 .nodeCount(3)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-cluster:
///     type: digitalocean:KubernetesCluster
///     properties:
///       name: example-cluster
///       region: lon1
///       version: ${example.latestVersion}
///       nodePool:
///         name: default
///         size: s-1vcpu-2gb
///         nodeCount: 3
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getKubernetesVersions
///       arguments:
///         versionPrefix: 1.22.
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_kubernetes_versions_get_kubernetes_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKubernetesVersionsResult> getKubernetesVersions(
  GetKubernetesVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getKubernetesVersions:getKubernetesVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKubernetesVersionsResult.fromMap(result);
}

/// Get information on a load balancer for use in other resources. This data source
/// provides all of the load balancers properties as configured on your DigitalOcean
/// account. This is useful if the load balancer in question is not managed by
/// Terraform or you need to utilize any of the load balancers data.
///
/// An error is triggered if the provided load balancer name does not exist.
///
/// ## Example Usage
///
/// Get the load balancer by name:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getLoadBalancer({
///     name: "app",
/// });
/// export const lbOutput = example.then(example => example.ip);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_load_balancer(name="app")
/// pulumi.export("lbOutput", example.ip)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetLoadBalancer.Invoke(new()
///     {
///         Name = "app",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["lbOutput"] = example.Apply(getLoadBalancerResult => getLoadBalancerResult.Ip),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetLoadBalancer(ctx, &digitalocean.LookupLoadBalancerArgs{
/// 			Name: pulumi.StringRef("app"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("lbOutput", example.Ip)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getloadbalancer" "example" {
///   name = "app"
/// }
///
/// output "lbOutput" {
///   value = data.digitalocean_getloadbalancer.example.ip
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetLoadBalancerArgs;
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
///         final var example = DigitaloceanFunctions.getLoadBalancer(GetLoadBalancerArgs.builder()
///             .name("app")
///             .build());
///
///         ctx.export("lbOutput", example.ip());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getLoadBalancer
///       arguments:
///         name: app
/// outputs:
///   lbOutput: ${example.ip}
/// ```
///
///
/// Get the load balancer by ID:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getLoadBalancer({
///     id: "loadbalancer_id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_load_balancer(id="loadbalancer_id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetLoadBalancer.Invoke(new()
///     {
///         Id = "loadbalancer_id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetLoadBalancer(ctx, &digitalocean.LookupLoadBalancerArgs{
/// 			Id: pulumi.StringRef("loadbalancer_id"),
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getloadbalancer" "example" {
///   id = "loadbalancer_id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetLoadBalancerArgs;
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
///         final var example = DigitaloceanFunctions.getLoadBalancer(GetLoadBalancerArgs.builder()
///             .id("loadbalancer_id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getLoadBalancer
///       arguments:
///         id: loadbalancer_id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_load_balancer_get_load_balancer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLoadBalancerResult> getLoadBalancer(
  GetLoadBalancerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getLoadBalancer:getLoadBalancer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoadBalancerResult.fromMap(result);
}

/// Get information about a DigitalOcean NFS share.
///
/// ## Example Usage
///
/// Get the NFS share by name and region:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getNfs({
///     name: "example-nfs",
///     region: "nyc1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_nfs(name="example-nfs",
///     region="nyc1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetNfs.Invoke(new()
///     {
///         Name = "example-nfs",
///         Region = "nyc1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetNfs(ctx, &digitalocean.LookupNfsArgs{
/// 			Name:   "example-nfs",
/// 			Region: pulumi.StringRef("nyc1"),
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getnfs" "example" {
///   name   = "example-nfs"
///   region = "nyc1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetNfsArgs;
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
///         final var example = DigitaloceanFunctions.getNfs(GetNfsArgs.builder()
///             .name("example-nfs")
///             .region("nyc1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getNfs
///       arguments:
///         name: example-nfs
///         region: nyc1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_nfs_get_nfs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNfsResult> getNfs(
  GetNfsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getNfs:getNfs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNfsResult.fromMap(result);
}

/// Get information about a DigitalOcean NFS access point.
///
/// ## Example Usage
///
/// Get the NFS access point by ID:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getNfsAccessPoint({
///     id: "506f78a4-e098-11e5-ad9f-000f53306ae1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_nfs_access_point(id="506f78a4-e098-11e5-ad9f-000f53306ae1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetNfsAccessPoint.Invoke(new()
///     {
///         Id = "506f78a4-e098-11e5-ad9f-000f53306ae1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetNfsAccessPoint(ctx, &digitalocean.LookupNfsAccessPointArgs{
/// 			Id: pulumi.StringRef("506f78a4-e098-11e5-ad9f-000f53306ae1"),
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getnfsaccesspoint" "example" {
///   id = "506f78a4-e098-11e5-ad9f-000f53306ae1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetNfsAccessPointArgs;
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
///         final var example = DigitaloceanFunctions.getNfsAccessPoint(GetNfsAccessPointArgs.builder()
///             .id("506f78a4-e098-11e5-ad9f-000f53306ae1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getNfsAccessPoint
///       arguments:
///         id: 506f78a4-e098-11e5-ad9f-000f53306ae1
/// ```
///
///
/// Get the NFS access point by name and share ID:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getNfsAccessPoint({
///     name: "example-access-point",
///     shareId: foobar.id,
///     vpcId: foobarDigitaloceanVpc.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_nfs_access_point(name="example-access-point",
///     share_id=foobar["id"],
///     vpc_id=foobar_digitalocean_vpc["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetNfsAccessPoint.Invoke(new()
///     {
///         Name = "example-access-point",
///         ShareId = foobar.Id,
///         VpcId = foobarDigitaloceanVpc.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetNfsAccessPoint(ctx, &digitalocean.LookupNfsAccessPointArgs{
/// 			Name:    pulumi.StringRef("example-access-point"),
/// 			ShareId: pulumi.StringRef(foobar.Id),
/// 			VpcId:   pulumi.StringRef(foobarDigitaloceanVpc.Id),
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getnfsaccesspoint" "example" {
///   name     = "example-access-point"
///   share_id = foobar.id
///   vpc_id   = foobarDigitaloceanVpc.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetNfsAccessPointArgs;
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
///         final var example = DigitaloceanFunctions.getNfsAccessPoint(GetNfsAccessPointArgs.builder()
///             .name("example-access-point")
///             .shareId(foobar.id())
///             .vpcId(foobarDigitaloceanVpc.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getNfsAccessPoint
///       arguments:
///         name: example-access-point
///         shareId: ${foobar.id}
///         vpcId: ${foobarDigitaloceanVpc.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_nfs_access_point_get_nfs_access_point_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNfsAccessPointResult> getNfsAccessPoint(
  GetNfsAccessPointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getNfsAccessPoint:getNfsAccessPoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNfsAccessPointResult.fromMap(result);
}

/// Get information about a DigitalOcean NFS snapshot.
///
/// ## Example Usage
///
/// Get the NFS snapshot by ID:
///
///
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getnfssnapshot" "example" {
///   id = "506f78a4-e098-11e5-ad9f-000f53306ae1"
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getNfsSnapshot
///       arguments:
///         id: 506f78a4-e098-11e5-ad9f-000f53306ae1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_nfs_snapshot_get_nfs_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNfsSnapshotResult> getNfsSnapshot(
  GetNfsSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getNfsSnapshot:getNfsSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNfsSnapshotResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_partner_attachment_get_partner_attachment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPartnerAttachmentResult> getPartnerAttachment(
  GetPartnerAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getPartnerAttachment:getPartnerAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPartnerAttachmentResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_partner_attachment_service_key_get_partner_attachment_service_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPartnerAttachmentServiceKeyResult> getPartnerAttachmentServiceKey(
  GetPartnerAttachmentServiceKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getPartnerAttachmentServiceKey:getPartnerAttachmentServiceKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPartnerAttachmentServiceKeyResult.fromMap(result);
}

/// Get information on a single DigitalOcean project. If neither the `id` nor `name` attributes are provided,
/// then this data source returns the default project.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const _default = digitalocean.getProject({});
/// const staging = digitalocean.getProject({
///     name: "My Staging Project",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// default = digitalocean.get_project()
/// staging = digitalocean.get_project(name="My Staging Project")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = DigitalOcean.GetProject.Invoke();
///
///     var staging = DigitalOcean.GetProject.Invoke(new()
///     {
///         Name = "My Staging Project",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetProject(ctx, &digitalocean.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.GetProject(ctx, &digitalocean.LookupProjectArgs{
/// 			Name: pulumi.StringRef("My Staging Project"),
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getproject" "default" {
/// }
/// data "digitalocean_getproject" "staging" {
///   name = "My Staging Project"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetProjectArgs;
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
///         final var default = DigitaloceanFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         final var staging = DigitaloceanFunctions.getProject(GetProjectArgs.builder()
///             .name("My Staging Project")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: digitalocean:getProject
///       arguments: {}
///   staging:
///     fn::invoke:
///       function: digitalocean:getProject
///       arguments:
///         name: My Staging Project
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_project_get_project_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectResult> getProject(
  GetProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getProject:getProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectResult.fromMap(result);
}

/// Retrieve information about all DigitalOcean projects associated with an account, with
/// the ability to filter and sort the results. If no filters are specified, all projects
/// will be returned.
///
/// Note: You can use the `digitalocean.Project` data source to
/// obtain metadata about a single project if you already know the `id` to retrieve or the unique
/// `name` of the project.
///
/// ## Example Usage
///
/// Use the `filter` block with a `key` string and `values` list to filter projects.
///
/// For example to find all staging environment projects:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const staging = digitalocean.getProjects({
///     filters: [{
///         key: "environment",
///         values: ["Staging"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// staging = digitalocean.get_projects(filters=[{
///     "key": "environment",
///     "values": ["Staging"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var staging = DigitalOcean.GetProjects.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new DigitalOcean.Inputs.GetProjectsFilterInputArgs
///             {
///                 Key = "environment",
///                 Values = new[]
///                 {
///                     "Staging",
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetProjects(ctx, &digitalocean.GetProjectsArgs{
/// 			Filters: []digitalocean.GetProjectsFilter{
/// 				{
/// 					Key: "environment",
/// 					Values: []string{
/// 						"Staging",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getprojects" "staging" {
///   filters {
///     key    = "environment"
///     values = ["Staging"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetProjectsArgs;
/// import com.pulumi.digitalocean.inputs.GetProjectsFilterArgs;
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
///         final var staging = DigitaloceanFunctions.getProjects(GetProjectsArgs.builder()
///             .filters(GetProjectsFilterArgs.builder()
///                 .key("environment")
///                 .values("Staging")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   staging:
///     fn::invoke:
///       function: digitalocean:getProjects
///       arguments:
///         filters:
///           - key: environment
///             values:
///               - Staging
/// ```
///
///
/// You can filter on multiple fields and sort the results as well:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const non_default_production = digitalocean.getProjects({
///     filters: [
///         {
///             key: "environment",
///             values: ["Production"],
///         },
///         {
///             key: "is_default",
///             values: ["false"],
///         },
///     ],
///     sorts: [{
///         key: "name",
///         direction: "asc",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// non_default_production = digitalocean.get_projects(filters=[
///         {
///             "key": "environment",
///             "values": ["Production"],
///         },
///         {
///             "key": "is_default",
///             "values": ["false"],
///         },
///     ],
///     sorts=[{
///         "key": "name",
///         "direction": "asc",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var non_default_production = DigitalOcean.GetProjects.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new DigitalOcean.Inputs.GetProjectsFilterInputArgs
///             {
///                 Key = "environment",
///                 Values = new[]
///                 {
///                     "Production",
///                 },
///             },
///             new DigitalOcean.Inputs.GetProjectsFilterInputArgs
///             {
///                 Key = "is_default",
///                 Values = new[]
///                 {
///                     "false",
///                 },
///             },
///         },
///         Sorts = new[]
///         {
///             new DigitalOcean.Inputs.GetProjectsSortInputArgs
///             {
///                 Key = "name",
///                 Direction = "asc",
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetProjects(ctx, &digitalocean.GetProjectsArgs{
/// 			Filters: []digitalocean.GetProjectsFilter{
/// 				{
/// 					Key: "environment",
/// 					Values: []string{
/// 						"Production",
/// 					},
/// 				},
/// 				{
/// 					Key: "is_default",
/// 					Values: []string{
/// 						"false",
/// 					},
/// 				},
/// 			},
/// 			Sorts: []digitalocean.GetProjectsSort{
/// 				{
/// 					Key:       "name",
/// 					Direction: pulumi.StringRef("asc"),
/// 				},
/// 			},
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getprojects" "non-default-production" {
///   filters {
///     key    = "environment"
///     values = ["Production"]
///   }
///   filters {
///     key    = "is_default"
///     values = ["false"]
///   }
///   sorts {
///     key       = "name"
///     direction = "asc"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetProjectsArgs;
/// import com.pulumi.digitalocean.inputs.GetProjectsFilterArgs;
/// import com.pulumi.digitalocean.inputs.GetProjectsSortArgs;
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
///         final var non-default-production = DigitaloceanFunctions.getProjects(GetProjectsArgs.builder()
///             .filters(
///                 GetProjectsFilterArgs.builder()
///                     .key("environment")
///                     .values("Production")
///                     .build(),
///                 GetProjectsFilterArgs.builder()
///                     .key("is_default")
///                     .values("false")
///                     .build())
///             .sorts(GetProjectsSortArgs.builder()
///                 .key("name")
///                 .direction("asc")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   non-default-production:
///     fn::invoke:
///       function: digitalocean:getProjects
///       arguments:
///         filters:
///           - key: environment
///             values:
///               - Production
///           - key: is_default
///             values:
///               - 'false'
///         sorts:
///           - key: name
///             direction: asc
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_projects_get_projects_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectsResult> getProjects(
  GetProjectsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getProjects:getProjects',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectsResult.fromMap(result);
}

/// Get information on a DNS record. This data source provides the name, TTL, and zone
/// file as configured on your DigitalOcean account. This is useful if the record
/// in question is not managed by Terraform.
///
/// An error is triggered if the provided domain name or record are not managed with
/// your DigitalOcean account.
///
/// ## Example Usage
///
/// Get data from a DNS record:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getRecord({
///     domain: "example.com",
///     name: "test",
/// });
/// export const recordType = example.then(example => example.type);
/// export const recordTtl = example.then(example => example.ttl);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_record(domain="example.com",
///     name="test")
/// pulumi.export("recordType", example.type)
/// pulumi.export("recordTtl", example.ttl)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetRecord.Invoke(new()
///     {
///         Domain = "example.com",
///         Name = "test",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["recordType"] = example.Apply(getRecordResult => getRecordResult.Type),
///         ["recordTtl"] = example.Apply(getRecordResult => getRecordResult.Ttl),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetRecord(ctx, &digitalocean.GetRecordArgs{
/// 			Domain: "example.com",
/// 			Name:   "test",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("recordType", example.Type)
/// 		ctx.Export("recordTtl", example.Ttl)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getrecord" "example" {
///   domain = "example.com"
///   name   = "test"
/// }
///
/// output "recordType" {
///   value = data.digitalocean_getrecord.example.type
/// }
/// output "recordTtl" {
///   value = data.digitalocean_getrecord.example.ttl
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetRecordArgs;
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
///         final var example = DigitaloceanFunctions.getRecord(GetRecordArgs.builder()
///             .domain("example.com")
///             .name("test")
///             .build());
///
///         ctx.export("recordType", example.type());
///         ctx.export("recordTtl", example.ttl());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getRecord
///       arguments:
///         domain: example.com
///         name: test
/// outputs:
///   recordType: ${example.type}
///   recordTtl: ${example.ttl}
/// ```
///
///
/// ```
///   $ pulumi up
///
/// data.digitalocean_record.example: Refreshing state...
///
/// Apply complete! Resources: 0 added, 0 changed, 0 destroyed.
///
/// Outputs:
///
/// record_ttl = 3600
/// record_type = A
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_record_get_record_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRecordResult> getRecord(
  GetRecordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getRecord:getRecord',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRecordResult.fromMap(result);
}

/// Retrieve information about all DNS records within a domain, with the ability to filter and sort the results.
/// If no filters are specified, all records will be returned.
///
/// ## Example Usage
///
/// Get data for all MX records in a domain:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
/// import * as std from "@pulumi/std";
///
/// const example = digitalocean.getRecords({
///     domain: "example.com",
///     filters: [{
///         key: "type",
///         values: ["MX"],
///     }],
/// });
/// export const mailServers = example.then(example => std.join({
///     separator: ",",
///     input: example.records.map(__item => __item.value),
/// })).then(invoke => invoke.result);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
/// import pulumi_std as std
///
/// example = digitalocean.get_records(domain="example.com",
///     filters=[{
///         "key": "type",
///         "values": ["MX"],
///     }])
/// pulumi.export("mailServers", std.join(separator=",",
///     input=[__item.value for __item in example.records]).result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetRecords.Invoke(new()
///     {
///         Domain = "example.com",
///         Filters = new[]
///         {
///             new DigitalOcean.Inputs.GetRecordsFilterInputArgs
///             {
///                 Key = "type",
///                 Values = new[]
///                 {
///                     "MX",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["mailServers"] = Std.Join.Invoke(new()
///         {
///             Separator = ",",
///             Input = example.Apply(getRecordsResult => getRecordsResult.Records).Select(__item => __item.Value).ToList(),
///         }).Apply(invoke => invoke.Result),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := digitalocean.GetRecords(ctx, &digitalocean.GetRecordsArgs{
/// Domain: "example.com",
/// Filters: []digitalocean.GetRecordsFilter{
/// {
/// Key: "type",
/// Values: []string{
/// "MX",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("mailServers", pulumi.String(std.Join(ctx, &std.JoinArgs{
/// Separator: ",",
/// Input: %!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:11,17-41),
/// }, nil).Result))
/// return nil
/// })
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "digitalocean_getrecords" "example" {
///   domain = "example.com"
///   filters {
///     key    = "type"
///     values = ["MX"]
///   }
/// }
///
/// output "mailServers" {
///   value = join(",", data.digitalocean_getrecords.example.records[*].value)
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetRecordsArgs;
/// import com.pulumi.digitalocean.inputs.GetRecordsFilterArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
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
///         final var example = DigitaloceanFunctions.getRecords(GetRecordsArgs.builder()
///             .domain("example.com")
///             .filters(GetRecordsFilterArgs.builder()
///                 .key("type")
///                 .values("MX")
///                 .build())
///             .build());
///
///         ctx.export("mailServers", StdFunctions.join(JoinArgs.builder()
///             .separator(",")
///             .input(example.records().stream().map(element -> element.value()).collect(toList()))
///             .build()).result());
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_records_get_records_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRecordsResult> getRecords(
  GetRecordsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getRecords:getRecords',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRecordsResult.fromMap(result);
}

/// Get information on a single DigitalOcean region. This is useful to find out
/// what Droplet sizes and features are supported within a region.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const sfo2 = digitalocean.getRegion({
///     slug: "sfo2",
/// });
/// export const regionName = sfo2.then(sfo2 => sfo2.name);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// sfo2 = digitalocean.get_region(slug="sfo2")
/// pulumi.export("regionName", sfo2.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sfo2 = DigitalOcean.GetRegion.Invoke(new()
///     {
///         Slug = "sfo2",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["regionName"] = sfo2.Apply(getRegionResult => getRegionResult.Name),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		sfo2, err := digitalocean.GetRegion(ctx, &digitalocean.GetRegionArgs{
/// 			Slug: "sfo2",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("regionName", sfo2.Name)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getregion" "sfo2" {
///   slug = "sfo2"
/// }
///
/// output "regionName" {
///   value = data.digitalocean_getregion.sfo2.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetRegionArgs;
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
///         final var sfo2 = DigitaloceanFunctions.getRegion(GetRegionArgs.builder()
///             .slug("sfo2")
///             .build());
///
///         ctx.export("regionName", sfo2.name());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   sfo2:
///     fn::invoke:
///       function: digitalocean:getRegion
///       arguments:
///         slug: sfo2
/// outputs:
///   regionName: ${sfo2.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_region_get_region_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionResult> getRegion(
  GetRegionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getRegion:getRegion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionResult.fromMap(result);
}

/// Retrieve information about all supported DigitalOcean regions, with the ability to
/// filter and sort the results. If no filters are specified, all regions will be returned.
///
/// Note: You can use the `digitalocean.getRegion` data source
/// to obtain metadata about a single region if you already know the `slug` to retrieve.
///
/// ## Example Usage
///
/// Use the `filter` block with a `key` string and `values` list to filter regions.
///
/// For example to find all available regions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const available = digitalocean.getRegions({
///     filters: [{
///         key: "available",
///         values: ["true"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// available = digitalocean.get_regions(filters=[{
///     "key": "available",
///     "values": ["true"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = DigitalOcean.GetRegions.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new DigitalOcean.Inputs.GetRegionsFilterInputArgs
///             {
///                 Key = "available",
///                 Values = new[]
///                 {
///                     "true",
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetRegions(ctx, &digitalocean.GetRegionsArgs{
/// 			Filters: []digitalocean.GetRegionsFilter{
/// 				{
/// 					Key: "available",
/// 					Values: []string{
/// 						"true",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getregions" "available" {
///   filters {
///     key    = "available"
///     values = ["true"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetRegionsArgs;
/// import com.pulumi.digitalocean.inputs.GetRegionsFilterArgs;
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
///         final var available = DigitaloceanFunctions.getRegions(GetRegionsArgs.builder()
///             .filters(GetRegionsFilterArgs.builder()
///                 .key("available")
///                 .values("true")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   available:
///     fn::invoke:
///       function: digitalocean:getRegions
///       arguments:
///         filters:
///           - key: available
///             values:
///               - 'true'
/// ```
///
///
/// You can filter on multiple fields and sort the results as well:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const available = digitalocean.getRegions({
///     filters: [
///         {
///             key: "available",
///             values: ["true"],
///         },
///         {
///             key: "features",
///             values: ["private_networking"],
///         },
///     ],
///     sorts: [{
///         key: "name",
///         direction: "desc",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// available = digitalocean.get_regions(filters=[
///         {
///             "key": "available",
///             "values": ["true"],
///         },
///         {
///             "key": "features",
///             "values": ["private_networking"],
///         },
///     ],
///     sorts=[{
///         "key": "name",
///         "direction": "desc",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = DigitalOcean.GetRegions.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new DigitalOcean.Inputs.GetRegionsFilterInputArgs
///             {
///                 Key = "available",
///                 Values = new[]
///                 {
///                     "true",
///                 },
///             },
///             new DigitalOcean.Inputs.GetRegionsFilterInputArgs
///             {
///                 Key = "features",
///                 Values = new[]
///                 {
///                     "private_networking",
///                 },
///             },
///         },
///         Sorts = new[]
///         {
///             new DigitalOcean.Inputs.GetRegionsSortInputArgs
///             {
///                 Key = "name",
///                 Direction = "desc",
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetRegions(ctx, &digitalocean.GetRegionsArgs{
/// 			Filters: []digitalocean.GetRegionsFilter{
/// 				{
/// 					Key: "available",
/// 					Values: []string{
/// 						"true",
/// 					},
/// 				},
/// 				{
/// 					Key: "features",
/// 					Values: []string{
/// 						"private_networking",
/// 					},
/// 				},
/// 			},
/// 			Sorts: []digitalocean.GetRegionsSort{
/// 				{
/// 					Key:       "name",
/// 					Direction: pulumi.StringRef("desc"),
/// 				},
/// 			},
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getregions" "available" {
///   filters {
///     key    = "available"
///     values = ["true"]
///   }
///   filters {
///     key    = "features"
///     values = ["private_networking"]
///   }
///   sorts {
///     key       = "name"
///     direction = "desc"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetRegionsArgs;
/// import com.pulumi.digitalocean.inputs.GetRegionsFilterArgs;
/// import com.pulumi.digitalocean.inputs.GetRegionsSortArgs;
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
///         final var available = DigitaloceanFunctions.getRegions(GetRegionsArgs.builder()
///             .filters(
///                 GetRegionsFilterArgs.builder()
///                     .key("available")
///                     .values("true")
///                     .build(),
///                 GetRegionsFilterArgs.builder()
///                     .key("features")
///                     .values("private_networking")
///                     .build())
///             .sorts(GetRegionsSortArgs.builder()
///                 .key("name")
///                 .direction("desc")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   available:
///     fn::invoke:
///       function: digitalocean:getRegions
///       arguments:
///         filters:
///           - key: available
///             values:
///               - 'true'
///           - key: features
///             values:
///               - private_networking
///         sorts:
///           - key: name
///             direction: desc
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_regions_get_regions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionsResult> getRegions(
  GetRegionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getRegions:getRegions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionsResult.fromMap(result);
}

/// Get information on a reserved IP. This data source provides the region and Droplet id
/// as configured on your DigitalOcean account. This is useful if the reserved IP
/// in question is not managed by Terraform or you need to find the Droplet the IP is
/// attached to.
///
/// An error is triggered if the provided reserved IP does not exist.
///
/// ## Example Usage
///
/// Get the reserved IP:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const config = new pulumi.Config();
/// const publicIp = config.requireObject<any>("publicIp");
/// const example = digitalocean.getReservedIp({
///     ipAddress: publicIp,
/// });
/// export const fipOutput = example.then(example => example.dropletId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// config = pulumi.Config()
/// public_ip = config.require_object("publicIp")
/// example = digitalocean.get_reserved_ip(ip_address=public_ip)
/// pulumi.export("fipOutput", example.droplet_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var publicIp = config.RequireObject<dynamic>("publicIp");
///     var example = DigitalOcean.GetReservedIp.Invoke(new()
///     {
///         IpAddress = publicIp,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["fipOutput"] = example.Apply(getReservedIpResult => getReservedIpResult.DropletId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		var publicIp interface{}
/// 		cfg.RequireObject("publicIp", &publicIp)
/// 		example, err := digitalocean.GetReservedIp(ctx, &digitalocean.LookupReservedIpArgs{
/// 			IpAddress: publicIp,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("fipOutput", example.DropletId)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getreservedip" "example" {
///   ip_address = var.publicIp
/// }
///
/// variable "publicIp" {
/// }
/// output "fipOutput" {
///   value = data.digitalocean_getreservedip.example.droplet_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetReservedIpArgs;
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
///         final var config = ctx.config();
///         final var publicIp = config.require("publicIp");
///         final var example = DigitaloceanFunctions.getReservedIp(GetReservedIpArgs.builder()
///             .ipAddress(publicIp)
///             .build());
///
///         ctx.export("fipOutput", example.dropletId());
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   publicIp:
///     type: object
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getReservedIp
///       arguments:
///         ipAddress: ${publicIp}
/// outputs:
///   fipOutput: ${example.dropletId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_reserved_ip_get_reserved_ip_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReservedIpResult> getReservedIp(
  GetReservedIpArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getReservedIp:getReservedIp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservedIpResult.fromMap(result);
}

/// Get information on a reserved IPv6. This data source provides the regionSlug and droplet id as configured on your DigitalOcean account. This is useful if the reserved IPv6 in question is not managed by Terraform or you need to find the Droplet the IP is
/// attached to.
///
/// An error is triggered if the provided reserved IPv6 does not exist.
///
/// ## Example Usage
///
/// Get the reserved IPv6:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const foo = new digitalocean.ReservedIpv6("foo", {regionSlug: "nyc3"});
/// const foobar = digitalocean.getReservedIpv6Output({
///     ip: foo.ip,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// foo = digitalocean.ReservedIpv6("foo", region_slug="nyc3")
/// foobar = digitalocean.get_reserved_ipv6_output(ip=foo.ip)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new DigitalOcean.ReservedIpv6("foo", new()
///     {
///         RegionSlug = "nyc3",
///     });
///
///     var foobar = DigitalOcean.GetReservedIpv6.Invoke(new()
///     {
///         Ip = foo.Ip,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := digitalocean.NewReservedIpv6(ctx, "foo", &digitalocean.ReservedIpv6Args{
/// 			RegionSlug: pulumi.String("nyc3"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = digitalocean.GetReservedIpv6Output(ctx, digitalocean.GetReservedIpv6OutputArgs{
/// 			Ip: foo.Ip,
/// 		}, nil)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getreservedipv6" "foobar" {
///   ip = digitalocean_reservedipv6.foo.ip
/// }
///
/// resource "digitalocean_reservedipv6" "foo" {
///   region_slug = "nyc3"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.ReservedIpv6;
/// import com.pulumi.digitalocean.ReservedIpv6Args;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetReservedIpv6Args;
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
///         var foo = new ReservedIpv6("foo", ReservedIpv6Args.builder()
///             .regionSlug("nyc3")
///             .build());
///
///         final var foobar = DigitaloceanFunctions.getReservedIpv6(GetReservedIpv6Args.builder()
///             .ip(foo.ip())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: digitalocean:ReservedIpv6
///     properties:
///       regionSlug: nyc3
/// variables:
///   foobar:
///     fn::invoke:
///       function: digitalocean:getReservedIpv6
///       arguments:
///         ip: ${foo.ip}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_reserved_ipv6_get_reserved_ipv6_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReservedIpv6Result> getReservedIpv6(
  GetReservedIpv6Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getReservedIpv6:getReservedIpv6',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservedIpv6Result.fromMap(result);
}

/// Retrieves information about the Droplet sizes that DigitalOcean supports, with
/// the ability to filter and sort the results. If no filters are specified, all sizes
/// will be returned.
///
/// ## Example Usage
///
/// Most common usage will probably be to supply a size to Droplet:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const main = digitalocean.getSizes({
///     filters: [{
///         key: "slug",
///         values: ["s-1vcpu-1gb"],
///     }],
/// });
/// const web = new digitalocean.Droplet("web", {
///     image: "ubuntu-18-04-x64",
///     name: "web-1",
///     region: digitalocean.Region.SGP1,
///     size: digitalocean.DropletSlug[main.then(main => main.sizes)[0].slug],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// main = digitalocean.get_sizes(filters=[{
///     "key": "slug",
///     "values": ["s-1vcpu-1gb"],
/// }])
/// web = digitalocean.Droplet("web",
///     image="ubuntu-18-04-x64",
///     name="web-1",
///     region=digitalocean.Region.SGP1,
///     size=digitalocean.DropletSlug(main.sizes[0]["slug"]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = DigitalOcean.GetSizes.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new DigitalOcean.Inputs.GetSizesFilterInputArgs
///             {
///                 Key = "slug",
///                 Values = new[]
///                 {
///                     "s-1vcpu-1gb",
///                 },
///             },
///         },
///     });
///
///     var web = new DigitalOcean.Droplet("web", new()
///     {
///         Image = "ubuntu-18-04-x64",
///         Name = "web-1",
///         Region = DigitalOcean.Region.SGP1,
///         Size = System.Enum.Parse<DigitalOcean.DropletSlug>(main.Apply(getSizesResult => getSizesResult.Sizes)[0].Slug),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := digitalocean.GetSizes(ctx, &digitalocean.GetSizesArgs{
/// 			Filters: []digitalocean.GetSizesFilter{
/// 				{
/// 					Key: "slug",
/// 					Values: []string{
/// 						"s-1vcpu-1gb",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDroplet(ctx, "web", &digitalocean.DropletArgs{
/// 			Image:  pulumi.String("ubuntu-18-04-x64"),
/// 			Name:   pulumi.String("web-1"),
/// 			Region: pulumi.String(digitalocean.RegionSGP1),
/// 			Size:   digitalocean.DropletSlug(main.Sizes[0].Slug),
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getsizes" "main" {
///   filters {
///     key    = "slug"
///     values = ["s-1vcpu-1gb"]
///   }
/// }
///
/// resource "digitalocean_droplet" "web" {
///   image  = "ubuntu-18-04-x64"
///   name   = "web-1"
///   region = "sgp1"
///   size   = element(data.digitalocean_getsizes.main.sizes, 0).slug
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetSizesArgs;
/// import com.pulumi.digitalocean.inputs.GetSizesFilterArgs;
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
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
///         final var main = DigitaloceanFunctions.getSizes(GetSizesArgs.builder()
///             .filters(GetSizesFilterArgs.builder()
///                 .key("slug")
///                 .values("s-1vcpu-1gb")
///                 .build())
///             .build());
///
///         var web = new Droplet("web", DropletArgs.builder()
///             .image("ubuntu-18-04-x64")
///             .name("web-1")
///             .region("sgp1")
///             .size(main.sizes()[0].slug())
///             .build());
///
///     }
/// }
/// ```
///
///
/// The data source also supports multiple filters and sorts. For example, to fetch sizes with 1 or 2 virtual CPU that are available "sgp1" region, then pick the cheapest one:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const main = digitalocean.getSizes({
///     filters: [
///         {
///             key: "vcpus",
///             values: [
///                 "1",
///                 "2",
///             ],
///         },
///         {
///             key: "regions",
///             values: ["sgp1"],
///         },
///     ],
///     sorts: [{
///         key: "price_monthly",
///         direction: "asc",
///     }],
/// });
/// const web = new digitalocean.Droplet("web", {
///     image: "ubuntu-18-04-x64",
///     name: "web-1",
///     region: digitalocean.Region.SGP1,
///     size: digitalocean.DropletSlug[main.then(main => main.sizes)[0].slug],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// main = digitalocean.get_sizes(filters=[
///         {
///             "key": "vcpus",
///             "values": [
///                 "1",
///                 "2",
///             ],
///         },
///         {
///             "key": "regions",
///             "values": ["sgp1"],
///         },
///     ],
///     sorts=[{
///         "key": "price_monthly",
///         "direction": "asc",
///     }])
/// web = digitalocean.Droplet("web",
///     image="ubuntu-18-04-x64",
///     name="web-1",
///     region=digitalocean.Region.SGP1,
///     size=digitalocean.DropletSlug(main.sizes[0]["slug"]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = DigitalOcean.GetSizes.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new DigitalOcean.Inputs.GetSizesFilterInputArgs
///             {
///                 Key = "vcpus",
///                 Values = new[]
///                 {
///                     "1",
///                     "2",
///                 },
///             },
///             new DigitalOcean.Inputs.GetSizesFilterInputArgs
///             {
///                 Key = "regions",
///                 Values = new[]
///                 {
///                     "sgp1",
///                 },
///             },
///         },
///         Sorts = new[]
///         {
///             new DigitalOcean.Inputs.GetSizesSortInputArgs
///             {
///                 Key = "price_monthly",
///                 Direction = "asc",
///             },
///         },
///     });
///
///     var web = new DigitalOcean.Droplet("web", new()
///     {
///         Image = "ubuntu-18-04-x64",
///         Name = "web-1",
///         Region = DigitalOcean.Region.SGP1,
///         Size = System.Enum.Parse<DigitalOcean.DropletSlug>(main.Apply(getSizesResult => getSizesResult.Sizes)[0].Slug),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := digitalocean.GetSizes(ctx, &digitalocean.GetSizesArgs{
/// 			Filters: []digitalocean.GetSizesFilter{
/// 				{
/// 					Key: "vcpus",
/// 					Values: []string{
/// 						"1",
/// 						"2",
/// 					},
/// 				},
/// 				{
/// 					Key: "regions",
/// 					Values: []string{
/// 						"sgp1",
/// 					},
/// 				},
/// 			},
/// 			Sorts: []digitalocean.GetSizesSort{
/// 				{
/// 					Key:       "price_monthly",
/// 					Direction: pulumi.StringRef("asc"),
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDroplet(ctx, "web", &digitalocean.DropletArgs{
/// 			Image:  pulumi.String("ubuntu-18-04-x64"),
/// 			Name:   pulumi.String("web-1"),
/// 			Region: pulumi.String(digitalocean.RegionSGP1),
/// 			Size:   digitalocean.DropletSlug(main.Sizes[0].Slug),
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getsizes" "main" {
///   filters {
///     key    = "vcpus"
///     values = [1, 2]
///   }
///   filters {
///     key    = "regions"
///     values = ["sgp1"]
///   }
///   sorts {
///     key       = "price_monthly"
///     direction = "asc"
///   }
/// }
///
/// resource "digitalocean_droplet" "web" {
///   image  = "ubuntu-18-04-x64"
///   name   = "web-1"
///   region = "sgp1"
///   size   = element(data.digitalocean_getsizes.main.sizes, 0).slug
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetSizesArgs;
/// import com.pulumi.digitalocean.inputs.GetSizesFilterArgs;
/// import com.pulumi.digitalocean.inputs.GetSizesSortArgs;
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
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
///         final var main = DigitaloceanFunctions.getSizes(GetSizesArgs.builder()
///             .filters(
///                 GetSizesFilterArgs.builder()
///                     .key("vcpus")
///                     .values(
///                         "1",
///                         "2")
///                     .build(),
///                 GetSizesFilterArgs.builder()
///                     .key("regions")
///                     .values("sgp1")
///                     .build())
///             .sorts(GetSizesSortArgs.builder()
///                 .key("price_monthly")
///                 .direction("asc")
///                 .build())
///             .build());
///
///         var web = new Droplet("web", DropletArgs.builder()
///             .image("ubuntu-18-04-x64")
///             .name("web-1")
///             .region("sgp1")
///             .size(main.sizes()[0].slug())
///             .build());
///
///     }
/// }
/// ```
///
///
/// The data source can also handle multiple sorts. In which case, the sort will be applied in the order it is defined. For example, to sort by memory in ascending order, then sort by disk in descending order between sizes with same memory:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const main = digitalocean.getSizes({
///     sorts: [
///         {
///             key: "memory",
///             direction: "asc",
///         },
///         {
///             key: "disk",
///             direction: "desc",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// main = digitalocean.get_sizes(sorts=[
///     {
///         "key": "memory",
///         "direction": "asc",
///     },
///     {
///         "key": "disk",
///         "direction": "desc",
///     },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = DigitalOcean.GetSizes.Invoke(new()
///     {
///         Sorts = new[]
///         {
///             new DigitalOcean.Inputs.GetSizesSortInputArgs
///             {
///                 Key = "memory",
///                 Direction = "asc",
///             },
///             new DigitalOcean.Inputs.GetSizesSortInputArgs
///             {
///                 Key = "disk",
///                 Direction = "desc",
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetSizes(ctx, &digitalocean.GetSizesArgs{
/// 			Sorts: []digitalocean.GetSizesSort{
/// 				{
/// 					Key:       "memory",
/// 					Direction: pulumi.StringRef("asc"),
/// 				},
/// 				{
/// 					Key:       "disk",
/// 					Direction: pulumi.StringRef("desc"),
/// 				},
/// 			},
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getsizes" "main" {
///   sorts {
///     key       = "memory"
///     direction = "asc"
///   }
///   sorts {
///     key       = "disk"
///     direction = "desc"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetSizesArgs;
/// import com.pulumi.digitalocean.inputs.GetSizesSortArgs;
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
///         final var main = DigitaloceanFunctions.getSizes(GetSizesArgs.builder()
///             .sorts(
///                 GetSizesSortArgs.builder()
///                     .key("memory")
///                     .direction("asc")
///                     .build(),
///                 GetSizesSortArgs.builder()
///                     .key("disk")
///                     .direction("desc")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   main:
///     fn::invoke:
///       function: digitalocean:getSizes
///       arguments:
///         sorts:
///           - key: memory
///             direction: asc
///           - key: disk
///             direction: desc
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_sizes_get_sizes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSizesResult> getSizes(
  GetSizesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getSizes:getSizes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSizesResult.fromMap(result);
}

/// Get information on a Spaces bucket for use in other resources. This is useful if the Spaces bucket in question
/// is not managed by Terraform or you need to utilize any of the bucket's data.
///
/// ## Example Usage
///
/// Get the bucket by name:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getSpacesBucket({
///     name: "my-spaces-bucket",
///     region: "nyc3",
/// });
/// export const bucketDomainName = example.then(example => example.bucketDomainName);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_spaces_bucket(name="my-spaces-bucket",
///     region="nyc3")
/// pulumi.export("bucketDomainName", example.bucket_domain_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetSpacesBucket.Invoke(new()
///     {
///         Name = "my-spaces-bucket",
///         Region = "nyc3",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["bucketDomainName"] = example.Apply(getSpacesBucketResult => getSpacesBucketResult.BucketDomainName),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetSpacesBucket(ctx, &digitalocean.LookupSpacesBucketArgs{
/// 			Name:   "my-spaces-bucket",
/// 			Region: "nyc3",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("bucketDomainName", example.BucketDomainName)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getspacesbucket" "example" {
///   name   = "my-spaces-bucket"
///   region = "nyc3"
/// }
///
/// output "bucketDomainName" {
///   value = data.digitalocean_getspacesbucket.example.bucket_domain_name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetSpacesBucketArgs;
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
///         final var example = DigitaloceanFunctions.getSpacesBucket(GetSpacesBucketArgs.builder()
///             .name("my-spaces-bucket")
///             .region("nyc3")
///             .build());
///
///         ctx.export("bucketDomainName", example.bucketDomainName());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getSpacesBucket
///       arguments:
///         name: my-spaces-bucket
///         region: nyc3
/// outputs:
///   bucketDomainName: ${example.bucketDomainName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_spaces_bucket_get_spaces_bucket_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpacesBucketResult> getSpacesBucket(
  GetSpacesBucketArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getSpacesBucket:getSpacesBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpacesBucketResult.fromMap(result);
}

/// The Spaces object data source allows access to the metadata and
/// _optionally_ (see below) content of an object stored inside a Spaces bucket.
///
/// &gt; **Note:** The content of an object (`body` field) is available only for objects which have a human-readable
/// `Content-Type` (`text/*` and `application/json`). This is to prevent printing unsafe characters and potentially
/// downloading large amount of data which would be thrown away in favor of metadata.
///
/// ## Example Usage
///
/// The following example retrieves a text object (which must have a `Content-Type`
/// value starting with `text/`) and uses it as the `userData` for a Droplet:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const bootstrapScript = digitalocean.getSpacesBucketObject({
///     bucket: "ourcorp-deploy-config",
///     region: "nyc3",
///     key: "droplet-bootstrap-script.sh",
/// });
/// const web = new digitalocean.Droplet("web", {
///     image: "ubuntu-18-04-x64",
///     name: "web-1",
///     region: digitalocean.Region.NYC2,
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     userData: bootstrapScript.then(bootstrapScript => bootstrapScript.body),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// bootstrap_script = digitalocean.get_spaces_bucket_object(bucket="ourcorp-deploy-config",
///     region="nyc3",
///     key="droplet-bootstrap-script.sh")
/// web = digitalocean.Droplet("web",
///     image="ubuntu-18-04-x64",
///     name="web-1",
///     region=digitalocean.Region.NYC2,
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     user_data=bootstrap_script.body)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bootstrapScript = DigitalOcean.GetSpacesBucketObject.Invoke(new()
///     {
///         Bucket = "ourcorp-deploy-config",
///         Region = "nyc3",
///         Key = "droplet-bootstrap-script.sh",
///     });
///
///     var web = new DigitalOcean.Droplet("web", new()
///     {
///         Image = "ubuntu-18-04-x64",
///         Name = "web-1",
///         Region = DigitalOcean.Region.NYC2,
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         UserData = bootstrapScript.Apply(getSpacesBucketObjectResult => getSpacesBucketObjectResult.Body),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bootstrapScript, err := digitalocean.GetSpacesBucketObject(ctx, &digitalocean.LookupSpacesBucketObjectArgs{
/// 			Bucket: "ourcorp-deploy-config",
/// 			Region: "nyc3",
/// 			Key:    "droplet-bootstrap-script.sh",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDroplet(ctx, "web", &digitalocean.DropletArgs{
/// 			Image:    pulumi.String("ubuntu-18-04-x64"),
/// 			Name:     pulumi.String("web-1"),
/// 			Region:   pulumi.String(digitalocean.RegionNYC2),
/// 			Size:     pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			UserData: pulumi.String(bootstrapScript.Body),
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getspacesbucketobject" "bootstrapScript" {
///   bucket = "ourcorp-deploy-config"
///   region = "nyc3"
///   key    = "droplet-bootstrap-script.sh"
/// }
///
/// resource "digitalocean_droplet" "web" {
///   image     = "ubuntu-18-04-x64"
///   name      = "web-1"
///   region    = "nyc2"
///   size      = "s-1vcpu-1gb"
///   user_data = data.digitalocean_getspacesbucketobject.bootstrapScript.body
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetSpacesBucketObjectArgs;
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
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
///         final var bootstrapScript = DigitaloceanFunctions.getSpacesBucketObject(GetSpacesBucketObjectArgs.builder()
///             .bucket("ourcorp-deploy-config")
///             .region("nyc3")
///             .key("droplet-bootstrap-script.sh")
///             .build());
///
///         var web = new Droplet("web", DropletArgs.builder()
///             .image("ubuntu-18-04-x64")
///             .name("web-1")
///             .region("nyc2")
///             .size("s-1vcpu-1gb")
///             .userData(bootstrapScript.body())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   web:
///     type: digitalocean:Droplet
///     properties:
///       image: ubuntu-18-04-x64
///       name: web-1
///       region: nyc2
///       size: s-1vcpu-1gb
///       userData: ${bootstrapScript.body}
/// variables:
///   bootstrapScript:
///     fn::invoke:
///       function: digitalocean:getSpacesBucketObject
///       arguments:
///         bucket: ourcorp-deploy-config
///         region: nyc3
///         key: droplet-bootstrap-script.sh
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_spaces_bucket_object_get_spaces_bucket_object_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpacesBucketObjectResult> getSpacesBucketObject(
  GetSpacesBucketObjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getSpacesBucketObject:getSpacesBucketObject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpacesBucketObjectResult.fromMap(result);
}

/// &gt; **NOTE on `maxKeys`:** Retrieving very large numbers of keys can adversely affect Terraform's performance.
///
/// The bucket-objects data source returns keys (i.e., file names) and other metadata about objects in a Spaces bucket.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_spaces_bucket_objects_get_spaces_bucket_objects_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpacesBucketObjectsResult> getSpacesBucketObjects(
  GetSpacesBucketObjectsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getSpacesBucketObjects:getSpacesBucketObjects',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpacesBucketObjectsResult.fromMap(result);
}

/// Get information on Spaces buckets for use in other resources, with the ability to filter and sort the results.
/// If no filters are specified, all Spaces buckets will be returned.
///
/// Note: You can use the `digitalocean.SpacesBucket` data source to
/// obtain metadata about a single bucket if you already know its `name` and `region`.
///
/// ## Example Usage
///
/// Use the `filter` block with a `key` string and `values` list to filter buckets.
///
/// Get all buckets in a region:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const nyc3 = digitalocean.getSpacesBuckets({
///     filters: [{
///         key: "region",
///         values: ["nyc3"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// nyc3 = digitalocean.get_spaces_buckets(filters=[{
///     "key": "region",
///     "values": ["nyc3"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nyc3 = DigitalOcean.GetSpacesBuckets.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new DigitalOcean.Inputs.GetSpacesBucketsFilterInputArgs
///             {
///                 Key = "region",
///                 Values = new[]
///                 {
///                     "nyc3",
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetSpacesBuckets(ctx, &digitalocean.GetSpacesBucketsArgs{
/// 			Filters: []digitalocean.GetSpacesBucketsFilter{
/// 				{
/// 					Key: "region",
/// 					Values: []string{
/// 						"nyc3",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getspacesbuckets" "nyc3" {
///   filters {
///     key    = "region"
///     values = ["nyc3"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetSpacesBucketsArgs;
/// import com.pulumi.digitalocean.inputs.GetSpacesBucketsFilterArgs;
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
///         final var nyc3 = DigitaloceanFunctions.getSpacesBuckets(GetSpacesBucketsArgs.builder()
///             .filters(GetSpacesBucketsFilterArgs.builder()
///                 .key("region")
///                 .values("nyc3")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   nyc3:
///     fn::invoke:
///       function: digitalocean:getSpacesBuckets
///       arguments:
///         filters:
///           - key: region
///             values:
///               - nyc3
/// ```
///
/// You can sort the results as well:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const nyc3 = digitalocean.getSpacesBuckets({
///     filters: [{
///         key: "region",
///         values: ["nyc3"],
///     }],
///     sorts: [{
///         key: "name",
///         direction: "desc",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// nyc3 = digitalocean.get_spaces_buckets(filters=[{
///         "key": "region",
///         "values": ["nyc3"],
///     }],
///     sorts=[{
///         "key": "name",
///         "direction": "desc",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nyc3 = DigitalOcean.GetSpacesBuckets.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new DigitalOcean.Inputs.GetSpacesBucketsFilterInputArgs
///             {
///                 Key = "region",
///                 Values = new[]
///                 {
///                     "nyc3",
///                 },
///             },
///         },
///         Sorts = new[]
///         {
///             new DigitalOcean.Inputs.GetSpacesBucketsSortInputArgs
///             {
///                 Key = "name",
///                 Direction = "desc",
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetSpacesBuckets(ctx, &digitalocean.GetSpacesBucketsArgs{
/// 			Filters: []digitalocean.GetSpacesBucketsFilter{
/// 				{
/// 					Key: "region",
/// 					Values: []string{
/// 						"nyc3",
/// 					},
/// 				},
/// 			},
/// 			Sorts: []digitalocean.GetSpacesBucketsSort{
/// 				{
/// 					Key:       "name",
/// 					Direction: pulumi.StringRef("desc"),
/// 				},
/// 			},
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getspacesbuckets" "nyc3" {
///   filters {
///     key    = "region"
///     values = ["nyc3"]
///   }
///   sorts {
///     key       = "name"
///     direction = "desc"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetSpacesBucketsArgs;
/// import com.pulumi.digitalocean.inputs.GetSpacesBucketsFilterArgs;
/// import com.pulumi.digitalocean.inputs.GetSpacesBucketsSortArgs;
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
///         final var nyc3 = DigitaloceanFunctions.getSpacesBuckets(GetSpacesBucketsArgs.builder()
///             .filters(GetSpacesBucketsFilterArgs.builder()
///                 .key("region")
///                 .values("nyc3")
///                 .build())
///             .sorts(GetSpacesBucketsSortArgs.builder()
///                 .key("name")
///                 .direction("desc")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   nyc3:
///     fn::invoke:
///       function: digitalocean:getSpacesBuckets
///       arguments:
///         filters:
///           - key: region
///             values:
///               - nyc3
///         sorts:
///           - key: name
///             direction: desc
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_spaces_buckets_get_spaces_buckets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpacesBucketsResult> getSpacesBuckets(
  GetSpacesBucketsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getSpacesBuckets:getSpacesBuckets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpacesBucketsResult.fromMap(result);
}

/// Get information on a Spaces key for use in other resources. This is useful if the Spaces key in question
/// is not managed by Terraform or you need to utilize any of the key's data.
///
/// ## Example Usage
///
/// Get the key by access key ID:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getSpacesKey({
///     accessKey: "ACCESS_KEY_ID",
/// });
/// export const keyGrants = example.then(example => example.grants);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_spaces_key(access_key="ACCESS_KEY_ID")
/// pulumi.export("keyGrants", example.grants)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetSpacesKey.Invoke(new()
///     {
///         AccessKey = "ACCESS_KEY_ID",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["keyGrants"] = example.Apply(getSpacesKeyResult => getSpacesKeyResult.Grants),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetSpacesKey(ctx, &digitalocean.LookupSpacesKeyArgs{
/// 			AccessKey: "ACCESS_KEY_ID",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("keyGrants", example.Grants)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getspaceskey" "example" {
///   access_key = "ACCESS_KEY_ID"
/// }
///
/// output "keyGrants" {
///   value = data.digitalocean_getspaceskey.example.grants
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetSpacesKeyArgs;
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
///         final var example = DigitaloceanFunctions.getSpacesKey(GetSpacesKeyArgs.builder()
///             .accessKey("ACCESS_KEY_ID")
///             .build());
///
///         ctx.export("keyGrants", example.grants());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getSpacesKey
///       arguments:
///         accessKey: ACCESS_KEY_ID
/// outputs:
///   keyGrants: ${example.grants}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_spaces_key_get_spaces_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpacesKeyResult> getSpacesKey(
  GetSpacesKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getSpacesKey:getSpacesKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpacesKeyResult.fromMap(result);
}

/// Get information on a ssh key. This data source provides the name, public key,
/// and fingerprint as configured on your DigitalOcean account. This is useful if
/// the ssh key in question is not managed by Terraform or you need to utilize any
/// of the keys data.
///
/// An error is triggered if the provided ssh key name does not exist.
///
/// ## Example Usage
///
/// Get the ssh key:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getSshKey({
///     name: "example",
/// });
/// const exampleDroplet = new digitalocean.Droplet("example", {
///     image: "ubuntu-18-04-x64",
///     name: "example-1",
///     region: digitalocean.Region.NYC2,
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     sshKeys: [output(example.then(example => example.id)).apply(x =>String(x))],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_ssh_key(name="example")
/// example_droplet = digitalocean.Droplet("example",
///     image="ubuntu-18-04-x64",
///     name="example-1",
///     region=digitalocean.Region.NYC2,
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     ssh_keys=[output(example.id).apply(lambda x: str(x))])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetSshKey.Invoke(new()
///     {
///         Name = "example",
///     });
///
///     var exampleDroplet = new DigitalOcean.Droplet("example", new()
///     {
///         Image = "ubuntu-18-04-x64",
///         Name = "example-1",
///         Region = DigitalOcean.Region.NYC2,
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         SshKeys = new[]
///         {
///             example.Apply(getSshKeyResult => getSshKeyResult.Id),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetSshKey(ctx, &digitalocean.LookupSshKeyArgs{
/// 			Name: "example",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDroplet(ctx, "example", &digitalocean.DropletArgs{
/// 			Image:  pulumi.String("ubuntu-18-04-x64"),
/// 			Name:   pulumi.String("example-1"),
/// 			Region: pulumi.String(digitalocean.RegionNYC2),
/// 			Size:   pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			SshKeys: pulumi.StringArray{
/// 				pulumi.Int(example.Id),
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getsshkey" "example" {
///   name = "example"
/// }
///
/// resource "digitalocean_droplet" "example" {
///   image    = "ubuntu-18-04-x64"
///   name     = "example-1"
///   region   = "nyc2"
///   size     = "s-1vcpu-1gb"
///   ssh_keys = [data.digitalocean_getsshkey.example.id]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetSshKeyArgs;
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
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
///         final var example = DigitaloceanFunctions.getSshKey(GetSshKeyArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleDroplet = new Droplet("exampleDroplet", DropletArgs.builder()
///             .image("ubuntu-18-04-x64")
///             .name("example-1")
///             .region("nyc2")
///             .size("s-1vcpu-1gb")
///             .sshKeys(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDroplet:
///     type: digitalocean:Droplet
///     name: example
///     properties:
///       image: ubuntu-18-04-x64
///       name: example-1
///       region: nyc2
///       size: s-1vcpu-1gb
///       sshKeys:
///         - ${example.id}
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getSshKey
///       arguments:
///         name: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_ssh_key_get_ssh_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSshKeyResult> getSshKey(
  GetSshKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getSshKey:getSshKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSshKeyResult.fromMap(result);
}

/// Get information on SSH Keys for use in other resources.
///
/// This data source is useful if the SSH Keys in question are not managed by Terraform or you need to
/// utilize any of the SSH Keys' data.
///
/// Note: You can use the `digitalocean.SshKey` data source to obtain metadata
/// about a single SSH Key if you already know the unique `name` to retrieve.
///
/// ## Example Usage
///
/// For example, to find all SSH keys:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const keys = digitalocean.getSshKeys({
///     sorts: [{
///         key: "name",
///         direction: "asc",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// keys = digitalocean.get_ssh_keys(sorts=[{
///     "key": "name",
///     "direction": "asc",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var keys = DigitalOcean.GetSshKeys.Invoke(new()
///     {
///         Sorts = new[]
///         {
///             new DigitalOcean.Inputs.GetSshKeysSortInputArgs
///             {
///                 Key = "name",
///                 Direction = "asc",
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetSshKeys(ctx, &digitalocean.GetSshKeysArgs{
/// 			Sorts: []digitalocean.GetSshKeysSort{
/// 				{
/// 					Key:       "name",
/// 					Direction: pulumi.StringRef("asc"),
/// 				},
/// 			},
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getsshkeys" "keys" {
///   sorts {
///     key       = "name"
///     direction = "asc"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetSshKeysArgs;
/// import com.pulumi.digitalocean.inputs.GetSshKeysSortArgs;
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
///         final var keys = DigitaloceanFunctions.getSshKeys(GetSshKeysArgs.builder()
///             .sorts(GetSshKeysSortArgs.builder()
///                 .key("name")
///                 .direction("asc")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   keys:
///     fn::invoke:
///       function: digitalocean:getSshKeys
///       arguments:
///         sorts:
///           - key: name
///             direction: asc
/// ```
///
///
/// Or to find ones matching specific values:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const keys = digitalocean.getSshKeys({
///     filters: [{
///         key: "name",
///         values: [
///             "laptop",
///             "desktop",
///         ],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// keys = digitalocean.get_ssh_keys(filters=[{
///     "key": "name",
///     "values": [
///         "laptop",
///         "desktop",
///     ],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var keys = DigitalOcean.GetSshKeys.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new DigitalOcean.Inputs.GetSshKeysFilterInputArgs
///             {
///                 Key = "name",
///                 Values = new[]
///                 {
///                     "laptop",
///                     "desktop",
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetSshKeys(ctx, &digitalocean.GetSshKeysArgs{
/// 			Filters: []digitalocean.GetSshKeysFilter{
/// 				{
/// 					Key: "name",
/// 					Values: []string{
/// 						"laptop",
/// 						"desktop",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getsshkeys" "keys" {
///   filters {
///     key    = "name"
///     values = ["laptop", "desktop"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetSshKeysArgs;
/// import com.pulumi.digitalocean.inputs.GetSshKeysFilterArgs;
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
///         final var keys = DigitaloceanFunctions.getSshKeys(GetSshKeysArgs.builder()
///             .filters(GetSshKeysFilterArgs.builder()
///                 .key("name")
///                 .values(
///                     "laptop",
///                     "desktop")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   keys:
///     fn::invoke:
///       function: digitalocean:getSshKeys
///       arguments:
///         filters:
///           - key: name
///             values:
///               - laptop
///               - desktop
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_ssh_keys_get_ssh_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSshKeysResult> getSshKeys(
  GetSshKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getSshKeys:getSshKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSshKeysResult.fromMap(result);
}

/// Get information on a tag. This data source provides the name as configured on
/// your DigitalOcean account. This is useful if the tag name in question is not
/// managed by Terraform or you need validate if the tag exists in the account.
///
/// An error is triggered if the provided tag name does not exist.
///
/// ## Example Usage
///
/// Get the tag:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getTag({
///     name: "example",
/// });
/// const exampleDroplet = new digitalocean.Droplet("example", {
///     image: "ubuntu-18-04-x64",
///     name: "example-1",
///     region: digitalocean.Region.NYC2,
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     tags: [example.then(example => example.name)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_tag(name="example")
/// example_droplet = digitalocean.Droplet("example",
///     image="ubuntu-18-04-x64",
///     name="example-1",
///     region=digitalocean.Region.NYC2,
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     tags=[example.name])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetTag.Invoke(new()
///     {
///         Name = "example",
///     });
///
///     var exampleDroplet = new DigitalOcean.Droplet("example", new()
///     {
///         Image = "ubuntu-18-04-x64",
///         Name = "example-1",
///         Region = DigitalOcean.Region.NYC2,
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         Tags = new[]
///         {
///             example.Apply(getTagResult => getTagResult.Name),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetTag(ctx, &digitalocean.LookupTagArgs{
/// 			Name: "example",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDroplet(ctx, "example", &digitalocean.DropletArgs{
/// 			Image:  pulumi.String("ubuntu-18-04-x64"),
/// 			Name:   pulumi.String("example-1"),
/// 			Region: pulumi.String(digitalocean.RegionNYC2),
/// 			Size:   pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String(example.Name),
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_gettag" "example" {
///   name = "example"
/// }
///
/// resource "digitalocean_droplet" "example" {
///   image  = "ubuntu-18-04-x64"
///   name   = "example-1"
///   region = "nyc2"
///   size   = "s-1vcpu-1gb"
///   tags   = [data.digitalocean_gettag.example.name]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetTagArgs;
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
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
///         final var example = DigitaloceanFunctions.getTag(GetTagArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleDroplet = new Droplet("exampleDroplet", DropletArgs.builder()
///             .image("ubuntu-18-04-x64")
///             .name("example-1")
///             .region("nyc2")
///             .size("s-1vcpu-1gb")
///             .tags(example.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDroplet:
///     type: digitalocean:Droplet
///     name: example
///     properties:
///       image: ubuntu-18-04-x64
///       name: example-1
///       region: nyc2
///       size: s-1vcpu-1gb
///       tags:
///         - ${example.name}
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getTag
///       arguments:
///         name: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_tag_get_tag_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagResult> getTag(
  GetTagArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getTag:getTag',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagResult.fromMap(result);
}

/// Returns a list of tags in your DigitalOcean account, with the ability to
/// filter and sort the results. If no filters are specified, all tags will be
/// returned.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const list = digitalocean.getTags({
///     sorts: [{
///         key: "total_resource_count",
///         direction: "asc",
///     }],
/// });
/// export const sortedTags = list.then(list => list.tags);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// list = digitalocean.get_tags(sorts=[{
///     "key": "total_resource_count",
///     "direction": "asc",
/// }])
/// pulumi.export("sortedTags", list.tags)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var list = DigitalOcean.GetTags.Invoke(new()
///     {
///         Sorts = new[]
///         {
///             new DigitalOcean.Inputs.GetTagsSortInputArgs
///             {
///                 Key = "total_resource_count",
///                 Direction = "asc",
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["sortedTags"] = list.Apply(getTagsResult => getTagsResult.Tags),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		list, err := digitalocean.GetTags(ctx, &digitalocean.GetTagsArgs{
/// 			Sorts: []digitalocean.GetTagsSort{
/// 				{
/// 					Key:       "total_resource_count",
/// 					Direction: pulumi.StringRef("asc"),
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("sortedTags", list.Tags)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_gettags" "list" {
///   sorts {
///     key       = "total_resource_count"
///     direction = "asc"
///   }
/// }
///
/// output "sortedTags" {
///   value = data.digitalocean_gettags.list.tags
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetTagsArgs;
/// import com.pulumi.digitalocean.inputs.GetTagsSortArgs;
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
///         final var list = DigitaloceanFunctions.getTags(GetTagsArgs.builder()
///             .sorts(GetTagsSortArgs.builder()
///                 .key("total_resource_count")
///                 .direction("asc")
///                 .build())
///             .build());
///
///         ctx.export("sortedTags", list.tags());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   list:
///     fn::invoke:
///       function: digitalocean:getTags
///       arguments:
///         sorts:
///           - key: total_resource_count
///             direction: asc
/// outputs:
///   sortedTags: ${list.tags}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_tags_get_tags_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagsResult> getTags(
  GetTagsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getTags:getTags',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagsResult.fromMap(result);
}

/// Provides information on a DigitalOcean vector database resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getVectorDatabase({
///     name: "example-vector-db",
/// });
/// export const vectorDbHttpEndpoint = example.then(example => example.endpoints?.[0]?.http);
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_vector_database(name="example-vector-db")
/// pulumi.export("vectorDbHttpEndpoint", example.endpoints[0].http)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetVectorDatabase.Invoke(new()
///     {
///         Name = "example-vector-db",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vectorDbHttpEndpoint"] = example.Apply(getVectorDatabaseResult => getVectorDatabaseResult.Endpoints[0]?.Http),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetVectorDatabase(ctx, &digitalocean.LookupVectorDatabaseArgs{
/// 			Name: pulumi.StringRef("example-vector-db"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vectorDbHttpEndpoint", example.Endpoints[0].Http)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getvectordatabase" "example" {
///   name = "example-vector-db"
/// }
///
/// output "vectorDbHttpEndpoint" {
///   value = data.digitalocean_getvectordatabase.example.endpoints[0].http
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetVectorDatabaseArgs;
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
///         final var example = DigitaloceanFunctions.getVectorDatabase(GetVectorDatabaseArgs.builder()
///             .name("example-vector-db")
///             .build());
///
///         ctx.export("vectorDbHttpEndpoint", example.endpoints()[0].http());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getVectorDatabase
///       arguments:
///         name: example-vector-db
/// outputs:
///   vectorDbHttpEndpoint: ${example.endpoints[0].http}
/// ```
///
///
/// A vector database may also be looked up by its `id`:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getVectorDatabase({
///     id: "245bcfd0-7f31-4ce6-a2bc-475a116cca97",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_vector_database(id="245bcfd0-7f31-4ce6-a2bc-475a116cca97")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetVectorDatabase.Invoke(new()
///     {
///         Id = "245bcfd0-7f31-4ce6-a2bc-475a116cca97",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetVectorDatabase(ctx, &digitalocean.LookupVectorDatabaseArgs{
/// 			Id: pulumi.StringRef("245bcfd0-7f31-4ce6-a2bc-475a116cca97"),
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getvectordatabase" "example" {
///   id = "245bcfd0-7f31-4ce6-a2bc-475a116cca97"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetVectorDatabaseArgs;
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
///         final var example = DigitaloceanFunctions.getVectorDatabase(GetVectorDatabaseArgs.builder()
///             .id("245bcfd0-7f31-4ce6-a2bc-475a116cca97")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getVectorDatabase
///       arguments:
///         id: 245bcfd0-7f31-4ce6-a2bc-475a116cca97
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_vector_database_get_vector_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVectorDatabaseResult> getVectorDatabase(
  GetVectorDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getVectorDatabase:getVectorDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVectorDatabaseResult.fromMap(result);
}

/// Get information on a volume for use in other resources. This data source provides
/// all of the volumes properties as configured on your DigitalOcean account. This is
/// useful if the volume in question is not managed by Terraform or you need to utilize
/// any of the volumes data.
///
/// An error is triggered if the provided volume name does not exist.
///
/// ## Example Usage
///
/// Get the volume:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getVolume({
///     name: "app-data",
///     region: "nyc3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_volume(name="app-data",
///     region="nyc3")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetVolume.Invoke(new()
///     {
///         Name = "app-data",
///         Region = "nyc3",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetVolume(ctx, &digitalocean.LookupVolumeArgs{
/// 			Name:   "app-data",
/// 			Region: pulumi.StringRef("nyc3"),
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getvolume" "example" {
///   name   = "app-data"
///   region = "nyc3"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetVolumeArgs;
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
///         final var example = DigitaloceanFunctions.getVolume(GetVolumeArgs.builder()
///             .name("app-data")
///             .region("nyc3")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getVolume
///       arguments:
///         name: app-data
///         region: nyc3
/// ```
///
///
/// Reuse the data about a volume to attach it to a Droplet:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getVolume({
///     name: "app-data",
///     region: "nyc3",
/// });
/// const exampleDroplet = new digitalocean.Droplet("example", {
///     name: "foo",
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     image: "ubuntu-18-04-x64",
///     region: digitalocean.Region.NYC3,
/// });
/// const foobar = new digitalocean.VolumeAttachment("foobar", {
///     dropletId: exampleDroplet.id.apply(x =>Number(x)),
///     volumeId: example.then(example => example.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_volume(name="app-data",
///     region="nyc3")
/// example_droplet = digitalocean.Droplet("example",
///     name="foo",
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     image="ubuntu-18-04-x64",
///     region=digitalocean.Region.NYC3)
/// foobar = digitalocean.VolumeAttachment("foobar",
///     droplet_id=example_droplet.id.apply(lambda x: int(x)),
///     volume_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetVolume.Invoke(new()
///     {
///         Name = "app-data",
///         Region = "nyc3",
///     });
///
///     var exampleDroplet = new DigitalOcean.Droplet("example", new()
///     {
///         Name = "foo",
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         Image = "ubuntu-18-04-x64",
///         Region = DigitalOcean.Region.NYC3,
///     });
///
///     var foobar = new DigitalOcean.VolumeAttachment("foobar", new()
///     {
///         DropletId = exampleDroplet.Id,
///         VolumeId = example.Apply(getVolumeResult => getVolumeResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"strconv"
///
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetVolume(ctx, &digitalocean.LookupVolumeArgs{
/// 			Name:   "app-data",
/// 			Region: pulumi.StringRef("nyc3"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDroplet, err := digitalocean.NewDroplet(ctx, "example", &digitalocean.DropletArgs{
/// 			Name:   pulumi.String("foo"),
/// 			Size:   pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			Image:  pulumi.String("ubuntu-18-04-x64"),
/// 			Region: pulumi.String(digitalocean.RegionNYC3),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewVolumeAttachment(ctx, "foobar", &digitalocean.VolumeAttachmentArgs{
/// 			DropletId: exampleDroplet.ID().ToIDOutput().ApplyT(func(id pulumi.ID) (int, error) { return strconv.Atoi(string(id)) }).(pulumi.IntOutput),
/// 			VolumeId:  pulumi.String(example.Id),
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getvolume" "example" {
///   name   = "app-data"
///   region = "nyc3"
/// }
///
/// resource "digitalocean_droplet" "example" {
///   name   = "foo"
///   size   = "s-1vcpu-1gb"
///   image  = "ubuntu-18-04-x64"
///   region = "nyc3"
/// }
/// resource "digitalocean_volumeattachment" "foobar" {
///   droplet_id = digitalocean_droplet.example.id
///   volume_id  = data.digitalocean_getvolume.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetVolumeArgs;
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
/// import com.pulumi.digitalocean.VolumeAttachment;
/// import com.pulumi.digitalocean.VolumeAttachmentArgs;
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
///         final var example = DigitaloceanFunctions.getVolume(GetVolumeArgs.builder()
///             .name("app-data")
///             .region("nyc3")
///             .build());
///
///         var exampleDroplet = new Droplet("exampleDroplet", DropletArgs.builder()
///             .name("foo")
///             .size("s-1vcpu-1gb")
///             .image("ubuntu-18-04-x64")
///             .region("nyc3")
///             .build());
///
///         var foobar = new VolumeAttachment("foobar", VolumeAttachmentArgs.builder()
///             .dropletId(exampleDroplet.id())
///             .volumeId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDroplet:
///     type: digitalocean:Droplet
///     name: example
///     properties:
///       name: foo
///       size: s-1vcpu-1gb
///       image: ubuntu-18-04-x64
///       region: nyc3
///   foobar:
///     type: digitalocean:VolumeAttachment
///     properties:
///       dropletId: ${exampleDroplet.id}
///       volumeId: ${example.id}
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getVolume
///       arguments:
///         name: app-data
///         region: nyc3
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_volume_get_volume_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumeResult> getVolume(
  GetVolumeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getVolume:getVolume',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumeResult.fromMap(result);
}

/// Volume snapshots are saved instances of a block storage volume. Use this data
/// source to retrieve the ID of a DigitalOcean volume snapshot for use in other
/// resources.
///
/// ## Example Usage
///
/// Get the volume snapshot:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const snapshot = digitalocean.getVolumeSnapshot({
///     nameRegex: "^web",
///     region: "nyc3",
///     mostRecent: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// snapshot = digitalocean.get_volume_snapshot(name_regex="^web",
///     region="nyc3",
///     most_recent=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snapshot = DigitalOcean.GetVolumeSnapshot.Invoke(new()
///     {
///         NameRegex = "^web",
///         Region = "nyc3",
///         MostRecent = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetVolumeSnapshot(ctx, &digitalocean.LookupVolumeSnapshotArgs{
/// 			NameRegex:  pulumi.StringRef("^web"),
/// 			Region:     pulumi.StringRef("nyc3"),
/// 			MostRecent: pulumi.BoolRef(true),
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getvolumesnapshot" "snapshot" {
///   name_regex  = "^web"
///   region      = "nyc3"
///   most_recent = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetVolumeSnapshotArgs;
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
///         final var snapshot = DigitaloceanFunctions.getVolumeSnapshot(GetVolumeSnapshotArgs.builder()
///             .nameRegex("^web")
///             .region("nyc3")
///             .mostRecent(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   snapshot:
///     fn::invoke:
///       function: digitalocean:getVolumeSnapshot
///       arguments:
///         nameRegex: ^web
///         region: nyc3
///         mostRecent: true
/// ```
///
///
/// Reuse the data about a volume snapshot to create a new volume based on it:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const snapshot = digitalocean.getVolumeSnapshot({
///     nameRegex: "^web",
///     region: "nyc3",
///     mostRecent: true,
/// });
/// const foobar = new digitalocean.Volume("foobar", {
///     region: digitalocean.Region.NYC3,
///     name: "baz",
///     size: 100,
///     snapshotId: snapshot.then(snapshot => snapshot.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// snapshot = digitalocean.get_volume_snapshot(name_regex="^web",
///     region="nyc3",
///     most_recent=True)
/// foobar = digitalocean.Volume("foobar",
///     region=digitalocean.Region.NYC3,
///     name="baz",
///     size=100,
///     snapshot_id=snapshot.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snapshot = DigitalOcean.GetVolumeSnapshot.Invoke(new()
///     {
///         NameRegex = "^web",
///         Region = "nyc3",
///         MostRecent = true,
///     });
///
///     var foobar = new DigitalOcean.Volume("foobar", new()
///     {
///         Region = DigitalOcean.Region.NYC3,
///         Name = "baz",
///         Size = 100,
///         SnapshotId = snapshot.Apply(getVolumeSnapshotResult => getVolumeSnapshotResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		snapshot, err := digitalocean.GetVolumeSnapshot(ctx, &digitalocean.LookupVolumeSnapshotArgs{
/// 			NameRegex:  pulumi.StringRef("^web"),
/// 			Region:     pulumi.StringRef("nyc3"),
/// 			MostRecent: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewVolume(ctx, "foobar", &digitalocean.VolumeArgs{
/// 			Region:     pulumi.String(digitalocean.RegionNYC3),
/// 			Name:       pulumi.String("baz"),
/// 			Size:       pulumi.Int(100),
/// 			SnapshotId: pulumi.String(snapshot.Id),
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getvolumesnapshot" "snapshot" {
///   name_regex  = "^web"
///   region      = "nyc3"
///   most_recent = true
/// }
///
/// resource "digitalocean_volume" "foobar" {
///   region      = "nyc3"
///   name        = "baz"
///   size        = 100
///   snapshot_id = data.digitalocean_getvolumesnapshot.snapshot.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetVolumeSnapshotArgs;
/// import com.pulumi.digitalocean.Volume;
/// import com.pulumi.digitalocean.VolumeArgs;
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
///         final var snapshot = DigitaloceanFunctions.getVolumeSnapshot(GetVolumeSnapshotArgs.builder()
///             .nameRegex("^web")
///             .region("nyc3")
///             .mostRecent(true)
///             .build());
///
///         var foobar = new Volume("foobar", VolumeArgs.builder()
///             .region("nyc3")
///             .name("baz")
///             .size(100)
///             .snapshotId(snapshot.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: digitalocean:Volume
///     properties:
///       region: nyc3
///       name: baz
///       size: 100
///       snapshotId: ${snapshot.id}
/// variables:
///   snapshot:
///     fn::invoke:
///       function: digitalocean:getVolumeSnapshot
///       arguments:
///         nameRegex: ^web
///         region: nyc3
///         mostRecent: true
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_volume_snapshot_get_volume_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumeSnapshotResult> getVolumeSnapshot(
  GetVolumeSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getVolumeSnapshot:getVolumeSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumeSnapshotResult.fromMap(result);
}

/// Retrieve information about a VPC for use in other resources.
///
/// This data source provides all of the VPC's properties as configured on your
/// DigitalOcean account. This is useful if the VPC in question is not managed by
/// Terraform or you need to utilize any of the VPC's data.
///
/// VPCs may be looked up by `id` or `name`. Specifying a `region` will
/// return that that region's default VPC.
///
/// ## Example Usage
///
/// ### VPC By Name
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getVpc({
///     name: "example-network",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_vpc(name="example-network")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetVpc.Invoke(new()
///     {
///         Name = "example-network",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetVpc(ctx, &digitalocean.LookupVpcArgs{
/// 			Name: pulumi.StringRef("example-network"),
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getvpc" "example" {
///   name = "example-network"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetVpcArgs;
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
///         final var example = DigitaloceanFunctions.getVpc(GetVpcArgs.builder()
///             .name("example-network")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getVpc
///       arguments:
///         name: example-network
/// ```
///
///
/// Reuse the data about a VPC to assign a Droplet to it:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getVpc({
///     name: "example-network",
/// });
/// const exampleDroplet = new digitalocean.Droplet("example", {
///     name: "example-01",
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     image: "ubuntu-18-04-x64",
///     region: digitalocean.Region.NYC3,
///     vpcUuid: example.then(example => example.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_vpc(name="example-network")
/// example_droplet = digitalocean.Droplet("example",
///     name="example-01",
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     image="ubuntu-18-04-x64",
///     region=digitalocean.Region.NYC3,
///     vpc_uuid=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetVpc.Invoke(new()
///     {
///         Name = "example-network",
///     });
///
///     var exampleDroplet = new DigitalOcean.Droplet("example", new()
///     {
///         Name = "example-01",
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         Image = "ubuntu-18-04-x64",
///         Region = DigitalOcean.Region.NYC3,
///         VpcUuid = example.Apply(getVpcResult => getVpcResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetVpc(ctx, &digitalocean.LookupVpcArgs{
/// 			Name: pulumi.StringRef("example-network"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDroplet(ctx, "example", &digitalocean.DropletArgs{
/// 			Name:    pulumi.String("example-01"),
/// 			Size:    pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			Image:   pulumi.String("ubuntu-18-04-x64"),
/// 			Region:  pulumi.String(digitalocean.RegionNYC3),
/// 			VpcUuid: pulumi.String(example.Id),
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getvpc" "example" {
///   name = "example-network"
/// }
///
/// resource "digitalocean_droplet" "example" {
///   name     = "example-01"
///   size     = "s-1vcpu-1gb"
///   image    = "ubuntu-18-04-x64"
///   region   = "nyc3"
///   vpc_uuid = data.digitalocean_getvpc.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetVpcArgs;
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
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
///         final var example = DigitaloceanFunctions.getVpc(GetVpcArgs.builder()
///             .name("example-network")
///             .build());
///
///         var exampleDroplet = new Droplet("exampleDroplet", DropletArgs.builder()
///             .name("example-01")
///             .size("s-1vcpu-1gb")
///             .image("ubuntu-18-04-x64")
///             .region("nyc3")
///             .vpcUuid(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDroplet:
///     type: digitalocean:Droplet
///     name: example
///     properties:
///       name: example-01
///       size: s-1vcpu-1gb
///       image: ubuntu-18-04-x64
///       region: nyc3
///       vpcUuid: ${example.id}
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getVpc
///       arguments:
///         name: example-network
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_vpc_get_vpc_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcResult> getVpc(
  GetVpcArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getVpc:getVpc',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcResult.fromMap(result);
}

/// Get information on a VPC NAT Gateway for use with other managed resources  This datasource provides all the VPC
/// NAT Gateway properties as configured on the DigitalOcean account. This is useful if the VPC NAT Gateway in question
/// is not managed by Terraform, or any of the relevant data would need to be referenced in other managed resources.
///
/// NOTE: VPC NAT Gateway is currently in Private Preview.
///
/// ## Example Usage
///
/// Get the VPC NAT Gateway by name:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const my_imported_vpc_nat_gateway = digitalocean.getVpcNatGateway({
///     name: my_existing_vpc_nat_gateway.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// my_imported_vpc_nat_gateway = digitalocean.get_vpc_nat_gateway(name=my_existing_vpc_nat_gateway["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_imported_vpc_nat_gateway = DigitalOcean.GetVpcNatGateway.Invoke(new()
///     {
///         Name = my_existing_vpc_nat_gateway.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetVpcNatGateway(ctx, &digitalocean.LookupVpcNatGatewayArgs{
/// 			Name: pulumi.StringRef(my_existing_vpc_nat_gateway.Name),
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getvpcnatgateway" "my-imported-vpc-nat-gateway" {
///   name = my-existing-vpc-nat-gateway.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetVpcNatGatewayArgs;
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
///         final var my-imported-vpc-nat-gateway = DigitaloceanFunctions.getVpcNatGateway(GetVpcNatGatewayArgs.builder()
///             .name(my_existing_vpc_nat_gateway.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-imported-vpc-nat-gateway:
///     fn::invoke:
///       function: digitalocean:getVpcNatGateway
///       arguments:
///         name: ${["my-existing-vpc-nat-gateway"].name}
/// ```
///
///
/// Get the VPC NAT Gateway by ID:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const my_imported_vpc_nat_gateway = digitalocean.getVpcNatGateway({
///     id: my_existing_vpc_nat_gateway.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// my_imported_vpc_nat_gateway = digitalocean.get_vpc_nat_gateway(id=my_existing_vpc_nat_gateway["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_imported_vpc_nat_gateway = DigitalOcean.GetVpcNatGateway.Invoke(new()
///     {
///         Id = my_existing_vpc_nat_gateway.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetVpcNatGateway(ctx, &digitalocean.LookupVpcNatGatewayArgs{
/// 			Id: pulumi.StringRef(my_existing_vpc_nat_gateway.Id),
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getvpcnatgateway" "my-imported-vpc-nat-gateway" {
///   id = my-existing-vpc-nat-gateway.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetVpcNatGatewayArgs;
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
///         final var my-imported-vpc-nat-gateway = DigitaloceanFunctions.getVpcNatGateway(GetVpcNatGatewayArgs.builder()
///             .id(my_existing_vpc_nat_gateway.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-imported-vpc-nat-gateway:
///     fn::invoke:
///       function: digitalocean:getVpcNatGateway
///       arguments:
///         id: ${["my-existing-vpc-nat-gateway"].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_vpc_nat_gateway_get_vpc_nat_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcNatGatewayResult> getVpcNatGateway(
  GetVpcNatGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getVpcNatGateway:getVpcNatGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcNatGatewayResult.fromMap(result);
}

/// Retrieve information about a VPC Peering for use in other resources.
///
/// This data source provides all of the VPC Peering's properties as configured on your
/// DigitalOcean account. This is useful if the VPC Peering in question is not managed by
/// Terraform or you need to utilize any of the VPC Peering's data.
///
/// VPC Peerings may be looked up by `id` or `name`.
///
/// ## Example Usage
///
/// ### VPC Peering By Id
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getVpcPeering({
///     id: "example-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_vpc_peering(id="example-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetVpcPeering.Invoke(new()
///     {
///         Id = "example-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetVpcPeering(ctx, &digitalocean.LookupVpcPeeringArgs{
/// 			Id: pulumi.StringRef("example-id"),
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getvpcpeering" "example" {
///   id = "example-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetVpcPeeringArgs;
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
///         final var example = DigitaloceanFunctions.getVpcPeering(GetVpcPeeringArgs.builder()
///             .id("example-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getVpcPeering
///       arguments:
///         id: example-id
/// ```
///
///
/// Reuse the data about a VPC Peering in other resources:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getVpcPeering({
///     id: "example-id",
/// });
/// const exampleDroplet = new digitalocean.Droplet("example", {
///     name: "example-01",
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     image: "ubuntu-18-04-x64",
///     region: digitalocean.Region.NYC3,
///     vpcUuid: example.then(example => example.vpcIds?.[0]),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_vpc_peering(id="example-id")
/// example_droplet = digitalocean.Droplet("example",
///     name="example-01",
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     image="ubuntu-18-04-x64",
///     region=digitalocean.Region.NYC3,
///     vpc_uuid=example.vpc_ids[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetVpcPeering.Invoke(new()
///     {
///         Id = "example-id",
///     });
///
///     var exampleDroplet = new DigitalOcean.Droplet("example", new()
///     {
///         Name = "example-01",
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         Image = "ubuntu-18-04-x64",
///         Region = DigitalOcean.Region.NYC3,
///         VpcUuid = example.Apply(getVpcPeeringResult => getVpcPeeringResult.VpcIds[0]),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetVpcPeering(ctx, &digitalocean.LookupVpcPeeringArgs{
/// 			Id: pulumi.StringRef("example-id"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDroplet(ctx, "example", &digitalocean.DropletArgs{
/// 			Name:    pulumi.String("example-01"),
/// 			Size:    pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			Image:   pulumi.String("ubuntu-18-04-x64"),
/// 			Region:  pulumi.String(digitalocean.RegionNYC3),
/// 			VpcUuid: pulumi.String(example.VpcIds[0]),
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getvpcpeering" "example" {
///   id = "example-id"
/// }
///
/// resource "digitalocean_droplet" "example" {
///   name     = "example-01"
///   size     = "s-1vcpu-1gb"
///   image    = "ubuntu-18-04-x64"
///   region   = "nyc3"
///   vpc_uuid = data.digitalocean_getvpcpeering.example.vpc_ids[0]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetVpcPeeringArgs;
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
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
///         final var example = DigitaloceanFunctions.getVpcPeering(GetVpcPeeringArgs.builder()
///             .id("example-id")
///             .build());
///
///         var exampleDroplet = new Droplet("exampleDroplet", DropletArgs.builder()
///             .name("example-01")
///             .size("s-1vcpu-1gb")
///             .image("ubuntu-18-04-x64")
///             .region("nyc3")
///             .vpcUuid(example.vpcIds()[0])
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDroplet:
///     type: digitalocean:Droplet
///     name: example
///     properties:
///       name: example-01
///       size: s-1vcpu-1gb
///       image: ubuntu-18-04-x64
///       region: nyc3
///       vpcUuid: ${example.vpcIds[0]}
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getVpcPeering
///       arguments:
///         id: example-id
/// ```
///
///
/// ### VPC Peering By Name
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getVpcPeering({
///     name: "example-peering",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_vpc_peering(name="example-peering")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetVpcPeering.Invoke(new()
///     {
///         Name = "example-peering",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.GetVpcPeering(ctx, &digitalocean.LookupVpcPeeringArgs{
/// 			Name: pulumi.StringRef("example-peering"),
/// 		}, nil)
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getvpcpeering" "example" {
///   name = "example-peering"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetVpcPeeringArgs;
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
///         final var example = DigitaloceanFunctions.getVpcPeering(GetVpcPeeringArgs.builder()
///             .name("example-peering")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getVpcPeering
///       arguments:
///         name: example-peering
/// ```
///
///
/// Reuse the data about a VPC Peering in other resources:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getVpcPeering({
///     name: "example-peering",
/// });
/// const exampleDroplet = new digitalocean.Droplet("example", {
///     name: "example-01",
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     image: "ubuntu-18-04-x64",
///     region: digitalocean.Region.NYC3,
///     vpcUuid: example.then(example => example.vpcIds?.[0]),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_vpc_peering(name="example-peering")
/// example_droplet = digitalocean.Droplet("example",
///     name="example-01",
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     image="ubuntu-18-04-x64",
///     region=digitalocean.Region.NYC3,
///     vpc_uuid=example.vpc_ids[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetVpcPeering.Invoke(new()
///     {
///         Name = "example-peering",
///     });
///
///     var exampleDroplet = new DigitalOcean.Droplet("example", new()
///     {
///         Name = "example-01",
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         Image = "ubuntu-18-04-x64",
///         Region = DigitalOcean.Region.NYC3,
///         VpcUuid = example.Apply(getVpcPeeringResult => getVpcPeeringResult.VpcIds[0]),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.GetVpcPeering(ctx, &digitalocean.LookupVpcPeeringArgs{
/// 			Name: pulumi.StringRef("example-peering"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDroplet(ctx, "example", &digitalocean.DropletArgs{
/// 			Name:    pulumi.String("example-01"),
/// 			Size:    pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			Image:   pulumi.String("ubuntu-18-04-x64"),
/// 			Region:  pulumi.String(digitalocean.RegionNYC3),
/// 			VpcUuid: pulumi.String(example.VpcIds[0]),
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getvpcpeering" "example" {
///   name = "example-peering"
/// }
///
/// resource "digitalocean_droplet" "example" {
///   name     = "example-01"
///   size     = "s-1vcpu-1gb"
///   image    = "ubuntu-18-04-x64"
///   region   = "nyc3"
///   vpc_uuid = data.digitalocean_getvpcpeering.example.vpc_ids[0]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetVpcPeeringArgs;
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
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
///         final var example = DigitaloceanFunctions.getVpcPeering(GetVpcPeeringArgs.builder()
///             .name("example-peering")
///             .build());
///
///         var exampleDroplet = new Droplet("exampleDroplet", DropletArgs.builder()
///             .name("example-01")
///             .size("s-1vcpu-1gb")
///             .image("ubuntu-18-04-x64")
///             .region("nyc3")
///             .vpcUuid(example.vpcIds()[0])
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDroplet:
///     type: digitalocean:Droplet
///     name: example
///     properties:
///       name: example-01
///       size: s-1vcpu-1gb
///       image: ubuntu-18-04-x64
///       region: nyc3
///       vpcUuid: ${example.vpcIds[0]}
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getVpcPeering
///       arguments:
///         name: example-peering
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_vpc_peering_get_vpc_peering_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcPeeringResult> getVpcPeering(
  GetVpcPeeringArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'digitalocean:index/getVpcPeering:getVpcPeering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcPeeringResult.fromMap(result);
}
