import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_customized_accelerator_args.dart';
import 'spring_cloud_customized_accelerator_git_repository.dart';
import 'spring_cloud_customized_accelerator_state.dart';

/// Manages a Spring Cloud Customized Accelerator.
///
/// !&gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudCustomizedAccelerator` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "west europe",
/// });
/// const exampleSpringCloudService = new azure.appplatform.SpringCloudService("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "E0",
/// });
/// const exampleSpringCloudAccelerator = new azure.appplatform.SpringCloudAccelerator("example", {
///     name: "default",
///     springCloudServiceId: exampleSpringCloudService.id,
/// });
/// const exampleSpringCloudCustomizedAccelerator = new azure.appplatform.SpringCloudCustomizedAccelerator("example", {
///     name: "example",
///     springCloudAcceleratorId: exampleSpringCloudAccelerator.id,
///     gitRepository: {
///         url: "https://github.com/Azure-Samples/piggymetrics",
///         gitTag: "spring.version.2.0.3",
///         intervalInSeconds: 100,
///     },
///     acceleratorTags: [
///         "tag-a",
///         "tag-b",
///     ],
///     description: "example description",
///     displayName: "example name",
///     iconUrl: "https://images.freecreatives.com/wp-content/uploads/2015/05/smiley-559124_640.jpg",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="west europe")
/// example_spring_cloud_service = azure.appplatform.SpringCloudService("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="E0")
/// example_spring_cloud_accelerator = azure.appplatform.SpringCloudAccelerator("example",
///     name="default",
///     spring_cloud_service_id=example_spring_cloud_service.id)
/// example_spring_cloud_customized_accelerator = azure.appplatform.SpringCloudCustomizedAccelerator("example",
///     name="example",
///     spring_cloud_accelerator_id=example_spring_cloud_accelerator.id,
///     git_repository={
///         "url": "https://github.com/Azure-Samples/piggymetrics",
///         "git_tag": "spring.version.2.0.3",
///         "interval_in_seconds": 100,
///     },
///     accelerator_tags=[
///         "tag-a",
///         "tag-b",
///     ],
///     description="example description",
///     display_name="example name",
///     icon_url="https://images.freecreatives.com/wp-content/uploads/2015/05/smiley-559124_640.jpg")
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
///         Location = "west europe",
///     });
///
///     var exampleSpringCloudService = new Azure.AppPlatform.SpringCloudService("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "E0",
///     });
///
///     var exampleSpringCloudAccelerator = new Azure.AppPlatform.SpringCloudAccelerator("example", new()
///     {
///         Name = "default",
///         SpringCloudServiceId = exampleSpringCloudService.Id,
///     });
///
///     var exampleSpringCloudCustomizedAccelerator = new Azure.AppPlatform.SpringCloudCustomizedAccelerator("example", new()
///     {
///         Name = "example",
///         SpringCloudAcceleratorId = exampleSpringCloudAccelerator.Id,
///         GitRepository = new Azure.AppPlatform.Inputs.SpringCloudCustomizedAcceleratorGitRepositoryArgs
///         {
///             Url = "https://github.com/Azure-Samples/piggymetrics",
///             GitTag = "spring.version.2.0.3",
///             IntervalInSeconds = 100,
///         },
///         AcceleratorTags = new[]
///         {
///             "tag-a",
///             "tag-b",
///         },
///         Description = "example description",
///         DisplayName = "example name",
///         IconUrl = "https://images.freecreatives.com/wp-content/uploads/2015/05/smiley-559124_640.jpg",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appplatform"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("west europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudService, err := appplatform.NewSpringCloudService(ctx, "example", &appplatform.SpringCloudServiceArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("E0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudAccelerator, err := appplatform.NewSpringCloudAccelerator(ctx, "example", &appplatform.SpringCloudAcceleratorArgs{
/// 			Name:                 pulumi.String("default"),
/// 			SpringCloudServiceId: exampleSpringCloudService.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appplatform.NewSpringCloudCustomizedAccelerator(ctx, "example", &appplatform.SpringCloudCustomizedAcceleratorArgs{
/// 			Name:                     pulumi.String("example"),
/// 			SpringCloudAcceleratorId: exampleSpringCloudAccelerator.ID(),
/// 			GitRepository: &appplatform.SpringCloudCustomizedAcceleratorGitRepositoryArgs{
/// 				Url:               pulumi.String("https://github.com/Azure-Samples/piggymetrics"),
/// 				GitTag:            pulumi.String("spring.version.2.0.3"),
/// 				IntervalInSeconds: pulumi.Int(100),
/// 			},
/// 			AcceleratorTags: pulumi.StringArray{
/// 				pulumi.String("tag-a"),
/// 				pulumi.String("tag-b"),
/// 			},
/// 			Description: pulumi.String("example description"),
/// 			DisplayName: pulumi.String("example name"),
/// 			IconUrl:     pulumi.String("https://images.freecreatives.com/wp-content/uploads/2015/05/smiley-559124_640.jpg"),
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
/// import com.pulumi.azure.appplatform.SpringCloudService;
/// import com.pulumi.azure.appplatform.SpringCloudServiceArgs;
/// import com.pulumi.azure.appplatform.SpringCloudAccelerator;
/// import com.pulumi.azure.appplatform.SpringCloudAcceleratorArgs;
/// import com.pulumi.azure.appplatform.SpringCloudCustomizedAccelerator;
/// import com.pulumi.azure.appplatform.SpringCloudCustomizedAcceleratorArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudCustomizedAcceleratorGitRepositoryArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("west europe")
///             .build());
///
///         var exampleSpringCloudService = new SpringCloudService("exampleSpringCloudService", SpringCloudServiceArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("E0")
///             .build());
///
///         var exampleSpringCloudAccelerator = new SpringCloudAccelerator("exampleSpringCloudAccelerator", SpringCloudAcceleratorArgs.builder()
///             .name("default")
///             .springCloudServiceId(exampleSpringCloudService.id())
///             .build());
///
///         var exampleSpringCloudCustomizedAccelerator = new SpringCloudCustomizedAccelerator("exampleSpringCloudCustomizedAccelerator", SpringCloudCustomizedAcceleratorArgs.builder()
///             .name("example")
///             .springCloudAcceleratorId(exampleSpringCloudAccelerator.id())
///             .gitRepository(SpringCloudCustomizedAcceleratorGitRepositoryArgs.builder()
///                 .url("https://github.com/Azure-Samples/piggymetrics")
///                 .gitTag("spring.version.2.0.3")
///                 .intervalInSeconds(100)
///                 .build())
///             .acceleratorTags(
///                 "tag-a",
///                 "tag-b")
///             .description("example description")
///             .displayName("example name")
///             .iconUrl("https://images.freecreatives.com/wp-content/uploads/2015/05/smiley-559124_640.jpg")
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
///       location: west europe
///   exampleSpringCloudService:
///     type: azure:appplatform:SpringCloudService
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: E0
///   exampleSpringCloudAccelerator:
///     type: azure:appplatform:SpringCloudAccelerator
///     name: example
///     properties:
///       name: default
///       springCloudServiceId: ${exampleSpringCloudService.id}
///   exampleSpringCloudCustomizedAccelerator:
///     type: azure:appplatform:SpringCloudCustomizedAccelerator
///     name: example
///     properties:
///       name: example
///       springCloudAcceleratorId: ${exampleSpringCloudAccelerator.id}
///       gitRepository:
///         url: https://github.com/Azure-Samples/piggymetrics
///         gitTag: spring.version.2.0.3
///         intervalInSeconds: 100
///       acceleratorTags:
///         - tag-a
///         - tag-b
///       description: example description
///       displayName: example name
///       iconUrl: https://images.freecreatives.com/wp-content/uploads/2015/05/smiley-559124_640.jpg
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AppPlatform` - 2024-01-01-preview
///
/// ## Import
///
/// Spring Cloud Customized Accelerators can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudCustomizedAccelerator:SpringCloudCustomizedAccelerator example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.AppPlatform/spring/spring1/applicationAccelerators/default/customizedAccelerators/customizedAccelerator1
/// ```
class SpringCloudCustomizedAccelerator extends pulumi.CustomResource {
  /// Specifies a list of accelerator tags.
  late final pulumi.Output<List<String>?> acceleratorTags;

  /// Specifies the type of the Spring Cloud Customized Accelerator. Possible values are `Accelerator` and `Fragment`. Defaults to `Accelerator`.
  late final pulumi.Output<String?> acceleratorType;

  /// Specifies the description of the Spring Cloud Customized Accelerator.
  late final pulumi.Output<String?> description;

  /// Specifies the display name of the Spring Cloud Customized Accelerator..
  late final pulumi.Output<String?> displayName;

  /// A `git_repository` block as defined below.
  late final pulumi.Output<SpringCloudCustomizedAcceleratorGitRepository>
  gitRepository;

  /// Specifies the icon URL of the Spring Cloud Customized Accelerator..
  late final pulumi.Output<String?> iconUrl;

  /// The name which should be used for this Spring Cloud Customized Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created.
  late final pulumi.Output<String> name;

  /// The ID of the Spring Cloud Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created.
  late final pulumi.Output<String> springCloudAcceleratorId;

  /// Creates a new [SpringCloudCustomizedAccelerator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudCustomizedAccelerator]. {@macro pulumi_appplatform_spring_cloud_customized_accelerator_spring_cloud_customized_accelerator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudCustomizedAccelerator(
    String name, {
    SpringCloudCustomizedAcceleratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appplatform/springCloudCustomizedAccelerator:SpringCloudCustomizedAccelerator',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceleratorTags = registerOutput<List<String>?>('acceleratorTags');
    acceleratorType = registerOutput<String?>('acceleratorType');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    gitRepository =
        registerOutput<SpringCloudCustomizedAcceleratorGitRepository>(
          'gitRepository',
        );
    iconUrl = registerOutput<String?>('iconUrl');
    this.name = registerOutput<String>('name');
    springCloudAcceleratorId = registerOutput<String>(
      'springCloudAcceleratorId',
    );
  }

  /// Gets an existing [SpringCloudCustomizedAccelerator] resource's state with the given [name] and [id].
  static SpringCloudCustomizedAccelerator get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudCustomizedAcceleratorState? state,
  }) {
    return SpringCloudCustomizedAccelerator._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SpringCloudCustomizedAccelerator._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appplatform/springCloudCustomizedAccelerator:SpringCloudCustomizedAccelerator',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceleratorTags = registerOutput<List<String>?>('acceleratorTags');
    acceleratorType = registerOutput<String?>('acceleratorType');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    gitRepository =
        registerOutput<SpringCloudCustomizedAcceleratorGitRepository>(
          'gitRepository',
        );
    iconUrl = registerOutput<String?>('iconUrl');
    this.name = registerOutput<String>('name');
    springCloudAcceleratorId = registerOutput<String>(
      'springCloudAcceleratorId',
    );
  }
}
