import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_private_link_service_args.dart';
import 'shared_private_link_service_state.dart';

/// Manages the Shared Private Link Service for an Azure Search Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const test = new azure.core.ResourceGroup("test", {
///     name: "example-resourceGroup",
///     location: "east us",
/// });
/// const testService = new azure.search.Service("test", {
///     name: "example-search",
///     resourceGroupName: test.name,
///     location: test.location,
///     sku: "standard",
/// });
/// const testAccount = new azure.storage.Account("test", {
///     name: "example",
///     resourceGroupName: test.name,
///     location: test.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const testSharedPrivateLinkService = new azure.search.SharedPrivateLinkService("test", {
///     name: "example-spl",
///     searchServiceId: testService.id,
///     subresourceName: "blob",
///     targetResourceId: testAccount.id,
///     requestMessage: "please approve",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// test = azure.core.ResourceGroup("test",
///     name="example-resourceGroup",
///     location="east us")
/// test_service = azure.search.Service("test",
///     name="example-search",
///     resource_group_name=test.name,
///     location=test.location,
///     sku="standard")
/// test_account = azure.storage.Account("test",
///     name="example",
///     resource_group_name=test.name,
///     location=test.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// test_shared_private_link_service = azure.search.SharedPrivateLinkService("test",
///     name="example-spl",
///     search_service_id=test_service.id,
///     subresource_name="blob",
///     target_resource_id=test_account.id,
///     request_message="please approve")
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
///         Name = "example-resourceGroup",
///         Location = "east us",
///     });
///
///     var testService = new Azure.Search.Service("test", new()
///     {
///         Name = "example-search",
///         ResourceGroupName = test.Name,
///         Location = test.Location,
///         Sku = "standard",
///     });
///
///     var testAccount = new Azure.Storage.Account("test", new()
///     {
///         Name = "example",
///         ResourceGroupName = test.Name,
///         Location = test.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var testSharedPrivateLinkService = new Azure.Search.SharedPrivateLinkService("test", new()
///     {
///         Name = "example-spl",
///         SearchServiceId = testService.Id,
///         SubresourceName = "blob",
///         TargetResourceId = testAccount.Id,
///         RequestMessage = "please approve",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := core.NewResourceGroup(ctx, "test", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resourceGroup"),
/// 			Location: pulumi.String("east us"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testService, err := search.NewService(ctx, "test", &search.ServiceArgs{
/// 			Name:              pulumi.String("example-search"),
/// 			ResourceGroupName: test.Name,
/// 			Location:          test.Location,
/// 			Sku:               pulumi.String("standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testAccount, err := storage.NewAccount(ctx, "test", &storage.AccountArgs{
/// 			Name:                   pulumi.String("example"),
/// 			ResourceGroupName:      test.Name,
/// 			Location:               test.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = search.NewSharedPrivateLinkService(ctx, "test", &search.SharedPrivateLinkServiceArgs{
/// 			Name:             pulumi.String("example-spl"),
/// 			SearchServiceId:  testService.ID(),
/// 			SubresourceName:  pulumi.String("blob"),
/// 			TargetResourceId: testAccount.ID(),
/// 			RequestMessage:   pulumi.String("please approve"),
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
/// import com.pulumi.azure.search.Service;
/// import com.pulumi.azure.search.ServiceArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.search.SharedPrivateLinkService;
/// import com.pulumi.azure.search.SharedPrivateLinkServiceArgs;
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
///             .name("example-resourceGroup")
///             .location("east us")
///             .build());
///
///         var testService = new Service("testService", ServiceArgs.builder()
///             .name("example-search")
///             .resourceGroupName(test.name())
///             .location(test.location())
///             .sku("standard")
///             .build());
///
///         var testAccount = new Account("testAccount", AccountArgs.builder()
///             .name("example")
///             .resourceGroupName(test.name())
///             .location(test.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var testSharedPrivateLinkService = new SharedPrivateLinkService("testSharedPrivateLinkService", SharedPrivateLinkServiceArgs.builder()
///             .name("example-spl")
///             .searchServiceId(testService.id())
///             .subresourceName("blob")
///             .targetResourceId(testAccount.id())
///             .requestMessage("please approve")
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
///       name: example-resourceGroup
///       location: east us
///   testService:
///     type: azure:search:Service
///     name: test
///     properties:
///       name: example-search
///       resourceGroupName: ${test.name}
///       location: ${test.location}
///       sku: standard
///   testAccount:
///     type: azure:storage:Account
///     name: test
///     properties:
///       name: example
///       resourceGroupName: ${test.name}
///       location: ${test.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   testSharedPrivateLinkService:
///     type: azure:search:SharedPrivateLinkService
///     name: test
///     properties:
///       name: example-spl
///       searchServiceId: ${testService.id}
///       subresourceName: blob
///       targetResourceId: ${testAccount.id}
///       requestMessage: please approve
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
/// Azure Search Shared Private Link Resource can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:search/sharedPrivateLinkService:SharedPrivateLinkService example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Search/searchServices/service1/sharedPrivateLinkResources/resource1
/// ```
class SharedPrivateLinkService extends pulumi.CustomResource {
  /// Specify the name of the Azure Search Shared Private Link Resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specify the request message for requesting approval of the Shared Private Link Enabled Remote Resource.
  late final pulumi.Output<String?> requestMessage;
  /// Specify the id of the Azure Search Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> searchServiceId;
  /// The status of a private endpoint connection. Possible values are Pending, Approved, Rejected or Disconnected.
  late final pulumi.Output<String> status;
  /// Specify the sub resource name which the Azure Search Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> subresourceName;
  /// Specify the ID of the Shared Private Link Enabled Remote Resource which this Azure Search Private Endpoint should be connected to. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The sub resource name should match with the type of the target resource id that's being specified.
  late final pulumi.Output<String> targetResourceId;

  /// Creates a new [SharedPrivateLinkService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SharedPrivateLinkService]. {@macro pulumi_search_shared_private_link_service_shared_private_link_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SharedPrivateLinkService(
    String name, {
    SharedPrivateLinkServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:search/sharedPrivateLinkService:SharedPrivateLinkService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    requestMessage = registerOutput<String?>('requestMessage');
    searchServiceId = registerOutput<String>('searchServiceId');
    status = registerOutput<String>('status');
    subresourceName = registerOutput<String>('subresourceName');
    targetResourceId = registerOutput<String>('targetResourceId');
  }

  /// Gets an existing [SharedPrivateLinkService] resource's state with the given [name] and [id].
  static SharedPrivateLinkService get(
    String name,
    pulumi.Input<String> id, {
    SharedPrivateLinkServiceState? state,
  }) {
    return SharedPrivateLinkService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SharedPrivateLinkService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:search/sharedPrivateLinkService:SharedPrivateLinkService',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    requestMessage = registerOutput<String?>('requestMessage');
    searchServiceId = registerOutput<String>('searchServiceId');
    status = registerOutput<String>('status');
    subresourceName = registerOutput<String>('subresourceName');
    targetResourceId = registerOutput<String>('targetResourceId');
  }
}
