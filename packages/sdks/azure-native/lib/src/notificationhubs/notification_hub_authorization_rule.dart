import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_hub_authorization_rule_args.dart';
import 'system_data_response.dart';

/// Response for POST requests that return single SharedAccessAuthorizationRule.
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-01-preview.
///
/// Other available API versions: 2023-01-01-preview, 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native notificationhubs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NotificationHubs_CreateOrUpdateAuthorizationRule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var notificationHubAuthorizationRule = new AzureNative.NotificationHubs.NotificationHubAuthorizationRule("notificationHubAuthorizationRule", new()
///     {
///         AuthorizationRuleName = "MyManageSharedAccessKey",
///         NamespaceName = "nh-sdk-ns",
///         NotificationHubName = "nh-sdk-hub",
///         ResourceGroupName = "5ktrial",
///         Rights = new[]
///         {
///             AzureNative.NotificationHubs.AccessRights.Listen,
///             AzureNative.NotificationHubs.AccessRights.Send,
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	notificationhubs "github.com/pulumi/pulumi-azure-native-sdk/notificationhubs/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notificationhubs.NewNotificationHubAuthorizationRule(ctx, "notificationHubAuthorizationRule", &notificationhubs.NotificationHubAuthorizationRuleArgs{
/// 			AuthorizationRuleName: pulumi.String("MyManageSharedAccessKey"),
/// 			NamespaceName:         pulumi.String("nh-sdk-ns"),
/// 			NotificationHubName:   pulumi.String("nh-sdk-hub"),
/// 			ResourceGroupName:     pulumi.String("5ktrial"),
/// 			Rights: pulumi.StringArray{
/// 				pulumi.String(notificationhubs.AccessRightsListen),
/// 				pulumi.String(notificationhubs.AccessRightsSend),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.notificationhubs.NotificationHubAuthorizationRule;
/// import com.pulumi.azurenative.notificationhubs.NotificationHubAuthorizationRuleArgs;
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
///         var notificationHubAuthorizationRule = new NotificationHubAuthorizationRule("notificationHubAuthorizationRule", NotificationHubAuthorizationRuleArgs.builder()
///             .authorizationRuleName("MyManageSharedAccessKey")
///             .namespaceName("nh-sdk-ns")
///             .notificationHubName("nh-sdk-hub")
///             .resourceGroupName("5ktrial")
///             .rights(
///                 "Listen",
///                 "Send")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const notificationHubAuthorizationRule = new azure_native.notificationhubs.NotificationHubAuthorizationRule("notificationHubAuthorizationRule", {
///     authorizationRuleName: "MyManageSharedAccessKey",
///     namespaceName: "nh-sdk-ns",
///     notificationHubName: "nh-sdk-hub",
///     resourceGroupName: "5ktrial",
///     rights: [
///         azure_native.notificationhubs.AccessRights.Listen,
///         azure_native.notificationhubs.AccessRights.Send,
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// notification_hub_authorization_rule = azure_native.notificationhubs.NotificationHubAuthorizationRule("notificationHubAuthorizationRule",
///     authorization_rule_name="MyManageSharedAccessKey",
///     namespace_name="nh-sdk-ns",
///     notification_hub_name="nh-sdk-hub",
///     resource_group_name="5ktrial",
///     rights=[
///         azure_native.notificationhubs.AccessRights.LISTEN,
///         azure_native.notificationhubs.AccessRights.SEND,
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   notificationHubAuthorizationRule:
///     type: azure-native:notificationhubs:NotificationHubAuthorizationRule
///     properties:
///       authorizationRuleName: MyManageSharedAccessKey
///       namespaceName: nh-sdk-ns
///       notificationHubName: nh-sdk-hub
///       resourceGroupName: 5ktrial
///       rights:
///         - Listen
///         - Send
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:notificationhubs:NotificationHubAuthorizationRule MyManageSharedAccessKey /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NotificationHubs/namespaces/{namespaceName}/notificationHubs/{notificationHubName}/authorizationRules/{authorizationRuleName}
/// ```
class NotificationHubAuthorizationRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Gets a string that describes the claim type
  late final pulumi.Output<String> claimType;

  /// Gets a string that describes the claim value
  late final pulumi.Output<String> claimValue;

  /// Gets the created time for this rule
  late final pulumi.Output<String> createdTime;

  /// Gets a string that describes the authorization rule.
  late final pulumi.Output<String> keyName;
  late final pulumi.Output<String?> location;

  /// Gets the last modified time for this rule
  late final pulumi.Output<String> modifiedTime;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Gets a base64-encoded 256-bit primary key for signing and
  /// validating the SAS token.
  late final pulumi.Output<String?> primaryKey;

  /// Gets the revision number for the rule
  late final pulumi.Output<int> revision;

  /// Gets or sets the rights associated with the rule.
  late final pulumi.Output<List<String>> rights;

  /// Gets a base64-encoded 256-bit primary key for signing and
  /// validating the SAS token.
  late final pulumi.Output<String?> secondaryKey;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NotificationHubAuthorizationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotificationHubAuthorizationRule]. {@macro pulumi_notificationhubs_notification_hub_authorization_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotificationHubAuthorizationRule(
    String name, {
    NotificationHubAuthorizationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:notificationhubs:NotificationHubAuthorizationRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    claimType = registerOutput<String>('claimType');
    claimValue = registerOutput<String>('claimValue');
    createdTime = registerOutput<String>('createdTime');
    keyName = registerOutput<String>('keyName');
    location = registerOutput<String?>('location');
    modifiedTime = registerOutput<String>('modifiedTime');
    this.name = registerOutput<String>('name');
    primaryKey = registerOutput<String?>('primaryKey');
    revision = registerOutput<int>('revision');
    rights = registerOutput<List<String>>('rights');
    secondaryKey = registerOutput<String?>('secondaryKey');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
