import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_recipient_user_args.dart';
import 'notification_recipient_user_state.dart';

/// Manages a API Management Notification Recipient User.
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
///     location: "West Europe",
/// });
/// const exampleService = new azure.apimanagement.Service("example", {
///     name: "example-apim",
///     location: example.location,
///     resourceGroupName: example.name,
///     publisherName: "My Company",
///     publisherEmail: "company@terraform.io",
///     skuName: "Developer_1",
/// });
/// const exampleUser = new azure.apimanagement.User("example", {
///     userId: "123",
///     apiManagementName: exampleService.name,
///     resourceGroupName: example.name,
///     firstName: "Example",
///     lastName: "User",
///     email: "foo@bar.com",
///     state: "active",
/// });
/// const exampleNotificationRecipientUser = new azure.apimanagement.NotificationRecipientUser("example", {
///     apiManagementId: exampleService.id,
///     notificationType: "AccountClosedPublisher",
///     userId: exampleUser.userId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.apimanagement.Service("example",
///     name="example-apim",
///     location=example.location,
///     resource_group_name=example.name,
///     publisher_name="My Company",
///     publisher_email="company@terraform.io",
///     sku_name="Developer_1")
/// example_user = azure.apimanagement.User("example",
///     user_id="123",
///     api_management_name=example_service.name,
///     resource_group_name=example.name,
///     first_name="Example",
///     last_name="User",
///     email="foo@bar.com",
///     state="active")
/// example_notification_recipient_user = azure.apimanagement.NotificationRecipientUser("example",
///     api_management_id=example_service.id,
///     notification_type="AccountClosedPublisher",
///     user_id=example_user.user_id)
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
///     var exampleService = new Azure.ApiManagement.Service("example", new()
///     {
///         Name = "example-apim",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         PublisherName = "My Company",
///         PublisherEmail = "company@terraform.io",
///         SkuName = "Developer_1",
///     });
///
///     var exampleUser = new Azure.ApiManagement.User("example", new()
///     {
///         UserId = "123",
///         ApiManagementName = exampleService.Name,
///         ResourceGroupName = example.Name,
///         FirstName = "Example",
///         LastName = "User",
///         Email = "foo@bar.com",
///         State = "active",
///     });
///
///     var exampleNotificationRecipientUser = new Azure.ApiManagement.NotificationRecipientUser("example", new()
///     {
///         ApiManagementId = exampleService.Id,
///         NotificationType = "AccountClosedPublisher",
///         UserId = exampleUser.UserId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
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
/// 		exampleService, err := apimanagement.NewService(ctx, "example", &apimanagement.ServiceArgs{
/// 			Name:              pulumi.String("example-apim"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			PublisherName:     pulumi.String("My Company"),
/// 			PublisherEmail:    pulumi.String("company@terraform.io"),
/// 			SkuName:           pulumi.String("Developer_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUser, err := apimanagement.NewUser(ctx, "example", &apimanagement.UserArgs{
/// 			UserId:            pulumi.String("123"),
/// 			ApiManagementName: exampleService.Name,
/// 			ResourceGroupName: example.Name,
/// 			FirstName:         pulumi.String("Example"),
/// 			LastName:          pulumi.String("User"),
/// 			Email:             pulumi.String("foo@bar.com"),
/// 			State:             pulumi.String("active"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewNotificationRecipientUser(ctx, "example", &apimanagement.NotificationRecipientUserArgs{
/// 			ApiManagementId:  exampleService.ID(),
/// 			NotificationType: pulumi.String("AccountClosedPublisher"),
/// 			UserId:           exampleUser.UserId,
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
/// import com.pulumi.azure.apimanagement.Service;
/// import com.pulumi.azure.apimanagement.ServiceArgs;
/// import com.pulumi.azure.apimanagement.User;
/// import com.pulumi.azure.apimanagement.UserArgs;
/// import com.pulumi.azure.apimanagement.NotificationRecipientUser;
/// import com.pulumi.azure.apimanagement.NotificationRecipientUserArgs;
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
///             .location("West Europe")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-apim")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .publisherName("My Company")
///             .publisherEmail("company@terraform.io")
///             .skuName("Developer_1")
///             .build());
///
///         var exampleUser = new User("exampleUser", UserArgs.builder()
///             .userId("123")
///             .apiManagementName(exampleService.name())
///             .resourceGroupName(example.name())
///             .firstName("Example")
///             .lastName("User")
///             .email("foo@bar.com")
///             .state("active")
///             .build());
///
///         var exampleNotificationRecipientUser = new NotificationRecipientUser("exampleNotificationRecipientUser", NotificationRecipientUserArgs.builder()
///             .apiManagementId(exampleService.id())
///             .notificationType("AccountClosedPublisher")
///             .userId(exampleUser.userId())
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
///     type: azure:apimanagement:Service
///     name: example
///     properties:
///       name: example-apim
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       publisherName: My Company
///       publisherEmail: company@terraform.io
///       skuName: Developer_1
///   exampleUser:
///     type: azure:apimanagement:User
///     name: example
///     properties:
///       userId: '123'
///       apiManagementName: ${exampleService.name}
///       resourceGroupName: ${example.name}
///       firstName: Example
///       lastName: User
///       email: foo@bar.com
///       state: active
///   exampleNotificationRecipientUser:
///     type: azure:apimanagement:NotificationRecipientUser
///     name: example
///     properties:
///       apiManagementId: ${exampleService.id}
///       notificationType: AccountClosedPublisher
///       userId: ${exampleUser.userId}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
///
/// ## Import
///
/// API Management Notification Recipient Users can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/notificationRecipientUser:NotificationRecipientUser example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/service1/notifications/notificationName1/recipientUsers/userid1
/// ```
class NotificationRecipientUser extends pulumi.CustomResource {
  /// The ID of the API Management Service from which to create this Notification Recipient User. Changing this forces a new API Management Notification Recipient User to be created.
  late final pulumi.Output<String> apiManagementId;

  /// The Notification Name to be received. Changing this forces a new API Management Notification Recipient User to be created. Possible values are `AccountClosedPublisher`, `BCC`, `NewApplicationNotificationMessage`, `NewIssuePublisherNotificationMessage`, `PurchasePublisherNotificationMessage`, `QuotaLimitApproachingPublisherNotificationMessage`, and `RequestPublisherNotificationMessage`.
  late final pulumi.Output<String> notificationType;

  /// The recipient user ID. Changing this forces a new API Management Notification Recipient User to be created.
  late final pulumi.Output<String> userId;

  /// Creates a new [NotificationRecipientUser].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotificationRecipientUser]. {@macro pulumi_apimanagement_notification_recipient_user_notification_recipient_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotificationRecipientUser(
    String name, {
    NotificationRecipientUserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:apimanagement/notificationRecipientUser:NotificationRecipientUser',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiManagementId = registerOutput<String>('apiManagementId');
    notificationType = registerOutput<String>('notificationType');
    userId = registerOutput<String>('userId');
  }

  /// Gets an existing [NotificationRecipientUser] resource's state with the given [name] and [id].
  static NotificationRecipientUser get(
    String name,
    pulumi.Input<String> id, {
    NotificationRecipientUserState? state,
  }) {
    return NotificationRecipientUser._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NotificationRecipientUser._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:apimanagement/notificationRecipientUser:NotificationRecipientUser',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiManagementId = registerOutput<String>('apiManagementId');
    notificationType = registerOutput<String>('notificationType');
    userId = registerOutput<String>('userId');
  }
}
