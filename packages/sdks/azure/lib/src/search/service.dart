import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';
import 'service_identity.dart';
import 'service_state.dart';

/// Manages a Search Service.
///
/// ## Example Usage
///
/// ### Supporting API Keys)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleService = new azure.search.Service("example", {
///     name: "example-resource",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "standard",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.search.Service("example",
///     name="example-resource",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="standard")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleService = new Azure.Search.Service("example", new()
///     {
///         Name = "example-resource",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "standard",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/search"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = search.NewService(ctx, "example", &search.ServiceArgs{
/// 			Name:              pulumi.String("example-resource"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("standard"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_search_service" "example" {
///   name                = "example-resource"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   sku                 = "standard"
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
/// import com.pulumi.azure.search.Service;
/// import com.pulumi.azure.search.ServiceArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-resource")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("standard")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleService:
///     type: azure:search:Service
///     name: example
///     properties:
///       name: example-resource
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: standard
/// ```
///
///
///
/// ### Using Both AzureAD And API Keys)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleService = new azure.search.Service("example", {
///     name: "example-resource",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "standard",
///     localAuthenticationEnabled: true,
///     authenticationFailureMode: "http403",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.search.Service("example",
///     name="example-resource",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="standard",
///     local_authentication_enabled=True,
///     authentication_failure_mode="http403")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleService = new Azure.Search.Service("example", new()
///     {
///         Name = "example-resource",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "standard",
///         LocalAuthenticationEnabled = true,
///         AuthenticationFailureMode = "http403",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/search"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = search.NewService(ctx, "example", &search.ServiceArgs{
/// 			Name:                       pulumi.String("example-resource"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			Sku:                        pulumi.String("standard"),
/// 			LocalAuthenticationEnabled: pulumi.Bool(true),
/// 			AuthenticationFailureMode:  pulumi.String("http403"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_search_service" "example" {
///   name                         = "example-resource"
///   resource_group_name          = azure_core_resourcegroup.example.name
///   location                     = azure_core_resourcegroup.example.location
///   sku                          = "standard"
///   local_authentication_enabled = true
///   authentication_failure_mode  = "http403"
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
/// import com.pulumi.azure.search.Service;
/// import com.pulumi.azure.search.ServiceArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-resource")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("standard")
///             .localAuthenticationEnabled(true)
///             .authenticationFailureMode("http403")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleService:
///     type: azure:search:Service
///     name: example
///     properties:
///       name: example-resource
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: standard
///       localAuthenticationEnabled: true
///       authenticationFailureMode: http403
/// ```
///
///
///
/// ### Supporting Only AzureAD Authentication)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleService = new azure.search.Service("example", {
///     name: "example-resource",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "standard",
///     localAuthenticationEnabled: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.search.Service("example",
///     name="example-resource",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="standard",
///     local_authentication_enabled=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleService = new Azure.Search.Service("example", new()
///     {
///         Name = "example-resource",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "standard",
///         LocalAuthenticationEnabled = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/search"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = search.NewService(ctx, "example", &search.ServiceArgs{
/// 			Name:                       pulumi.String("example-resource"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			Sku:                        pulumi.String("standard"),
/// 			LocalAuthenticationEnabled: pulumi.Bool(false),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_search_service" "example" {
///   name                         = "example-resource"
///   resource_group_name          = azure_core_resourcegroup.example.name
///   location                     = azure_core_resourcegroup.example.location
///   sku                          = "standard"
///   local_authentication_enabled = false
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
/// import com.pulumi.azure.search.Service;
/// import com.pulumi.azure.search.ServiceArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-resource")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("standard")
///             .localAuthenticationEnabled(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleService:
///     type: azure:search:Service
///     name: example
///     properties:
///       name: example-resource
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: standard
///       localAuthenticationEnabled: false
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Search` - 2025-05-01
///
/// ## Import
///
/// Search Services can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:search/service:Service example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Search/searchServices/service1
/// ```
class Service extends pulumi.CustomResource {
  /// Specifies a list of inbound IPv4 or CIDRs that are allowed to access the Search Service. If the incoming IP request is from an IP address which is not included in the `allowedIps` it will be blocked by the Search Services firewall.
  ///
  /// &gt; **Note:** The `allowedIps` are only applied if the `publicNetworkAccessEnabled` field has been set to `true`, else all traffic over the public interface will be rejected, even if the `allowedIps` field has been defined. When the `publicNetworkAccessEnabled` field has been set to `false` the private endpoint connections are the only allowed access point to the Search Service.
  late final pulumi.Output<List<String>?> allowedIps;
  /// Specifies the response that the Search Service should return for requests that fail authentication. Possible values include `http401WithBearerChallenge` or `http403`.
  ///
  /// &gt; **Note:** `authenticationFailureMode` can only be configured when using `localAuthenticationEnabled` is set to `true` - which when set together specifies that both API Keys and AzureAD Authentication should be supported.
  late final pulumi.Output<String?> authenticationFailureMode;
  /// Describes whether the search service is compliant or not with respect to having non-customer encrypted resources. If a service has more than one non-customer encrypted resource and `Enforcement` is `enabled` then the service will be marked as `NonCompliant`. If all the resources are customer encrypted, then the service will be marked as `Compliant`.
  late final pulumi.Output<String> customerManagedKeyEncryptionComplianceStatus;
  /// Specifies whether the Search Service should enforce that non-customer resources are encrypted. Defaults to `false`.
  late final pulumi.Output<bool?> customerManagedKeyEnforcementEnabled;
  /// The endpoint used to connect to this Search Service.
  late final pulumi.Output<String> endpoint;
  /// Specifies the Hosting Mode, which allows for High Density partitions (that allow for up to 1000 indexes) should be supported. Possible values are `HighDensity` or `Default`. Defaults to `Default`. Changing this forces a new Search Service to be created.
  ///
  /// &gt; **Note:** `hostingMode` can only be configured when `sku` is set to `standard3`.
  late final pulumi.Output<String?> hostingMode;
  /// An `identity` block as defined below.
  late final pulumi.Output<ServiceIdentity?> identity;
  /// Specifies whether the Search Service allows authenticating using API Keys? Defaults to `true`.
  late final pulumi.Output<bool?> localAuthenticationEnabled;
  /// The Azure Region where the Search Service should exist. Changing this forces a new Search Service to be created.
  late final pulumi.Output<String> location;
  /// The Name which should be used for this Search Service. Changing this forces a new Search Service to be created.
  late final pulumi.Output<String> name;
  /// Whether to allow trusted Azure services to access a network restricted Search Service? Possible values are `None` and `AzureServices`. Defaults to `None`.
  late final pulumi.Output<String?> networkRuleBypassOption;
  /// Specifies the number of partitions which should be created. This field cannot be set when using a `free` sku ([see the Microsoft documentation](https://learn.microsoft.com/azure/search/search-sku-tier)). Possible values include `1`, `2`, `3`, `4`, `6`, or `12`. Defaults to `1`.
  ///
  /// &gt; **Note:** when `hostingMode` is set to `highDensity` the maximum number of partitions allowed is `3`.
  late final pulumi.Output<int?> partitionCount;
  /// The Primary Key used for Search Service Administration.
  late final pulumi.Output<String> primaryKey;
  /// Specifies whether Public Network Access is allowed for this resource. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// A `queryKeys` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> queryKeys;
  /// Specifies the number of Replica's which should be created for this Search Service. This field cannot be set when using a `free` sku ([see the Microsoft documentation](https://learn.microsoft.com/azure/search/search-sku-tier)).
  late final pulumi.Output<int?> replicaCount;
  /// The name of the Resource Group where the Search Service should exist. Changing this forces a new Search Service to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The Secondary Key used for Search Service Administration.
  late final pulumi.Output<String> secondaryKey;
  /// Specifies the Semantic Search SKU which should be used for this Search Service. Possible values include `free` and `standard`.
  ///
  /// &gt; **Note:** The `semanticSearchSku` cannot be defined if your Search Services `sku` is set to `free`. The Semantic Search feature is only available in certain regions, please see the [product documentation](https://learn.microsoft.com/azure/search/semantic-search-overview#availability-and-pricing) for more information.
  late final pulumi.Output<String?> semanticSearchSku;
  /// The SKU which should be used for this Search Service. Possible values include `basic`, `free`, `standard`, `standard2`, `standard3`, `storageOptimizedL1` and `storageOptimizedL2`.
  ///
  /// &gt; **Note:** The `basic` and `free` SKUs provision the Search Service in a Shared Cluster - the `standard` SKUs use a Dedicated Cluster.
  ///
  /// &gt; **Note:** The SKUs `standard2`, `standard3`, `storageOptimizedL1` and `storageOptimizedL2` are only available by submitting a quota increase request to Microsoft. Please see the [product documentation](https://learn.microsoft.com/azure/azure-resource-manager/troubleshooting/error-resource-quota?tabs=azure-cli) on how to submit a quota increase request.
  ///
  /// &gt; **Note:** SKU upgrades between Basic and Standard (S1, S2, S3) tiers from a lower tier to a higher tier (e.g., Basic → S1, S1 → S2, S2 → S3) are supported without recreating the resource. And your region must support the higher tier. All other SKU changes (downgrades, changes from/to Free tier, or changes to/from Storage Optimized tiers) will force creation of a new Search Service.
  late final pulumi.Output<String> sku;
  /// Specifies a mapping of tags which should be assigned to this Search Service.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_search_service_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:search/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedIps = registerOutput<List<String>?>('allowedIps');
    authenticationFailureMode = registerOutput<String?>('authenticationFailureMode');
    customerManagedKeyEncryptionComplianceStatus = registerOutput<String>('customerManagedKeyEncryptionComplianceStatus');
    customerManagedKeyEnforcementEnabled = registerOutput<bool?>('customerManagedKeyEnforcementEnabled');
    endpoint = registerOutput<String>('endpoint');
    hostingMode = registerOutput<String?>('hostingMode');
    identity = registerOutput<ServiceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localAuthenticationEnabled = registerOutput<bool?>('localAuthenticationEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkRuleBypassOption = registerOutput<String?>('networkRuleBypassOption');
    partitionCount = registerOutput<int?>('partitionCount');
    primaryKey = registerOutput<String>('primaryKey');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    queryKeys = registerOutput<List<Map<String, dynamic>>>('queryKeys');
    replicaCount = registerOutput<int?>('replicaCount');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryKey = registerOutput<String>('secondaryKey');
    semanticSearchSku = registerOutput<String?>('semanticSearchSku');
    sku = registerOutput<String>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Service] resource's state with the given [name] and [id].
  static Service get(
    String name,
    pulumi.Input<String> id, {
    ServiceState? state,
  }) {
    return Service._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Service._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:search/service:Service',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedIps = registerOutput<List<String>?>('allowedIps');
    authenticationFailureMode = registerOutput<String?>('authenticationFailureMode');
    customerManagedKeyEncryptionComplianceStatus = registerOutput<String>('customerManagedKeyEncryptionComplianceStatus');
    customerManagedKeyEnforcementEnabled = registerOutput<bool?>('customerManagedKeyEnforcementEnabled');
    endpoint = registerOutput<String>('endpoint');
    hostingMode = registerOutput<String?>('hostingMode');
    identity = registerOutput<ServiceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localAuthenticationEnabled = registerOutput<bool?>('localAuthenticationEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkRuleBypassOption = registerOutput<String?>('networkRuleBypassOption');
    partitionCount = registerOutput<int?>('partitionCount');
    primaryKey = registerOutput<String>('primaryKey');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    queryKeys = registerOutput<List<Map<String, dynamic>>>('queryKeys');
    replicaCount = registerOutput<int?>('replicaCount');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryKey = registerOutput<String>('secondaryKey');
    semanticSearchSku = registerOutput<String?>('semanticSearchSku');
    sku = registerOutput<String>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
