import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_contact_args.dart';
import 'security_contact_properties_response_notifications_by_role.dart';

/// Contact details and configurations for notifications coming from Microsoft Defender for Cloud.
///
/// Uses Azure REST API version 2023-12-01-preview. In version 2.x of the Azure Native provider, it used API version 2020-01-01-preview.
///
/// Other available API versions: 2017-08-01-preview, 2020-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create security contact data
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var securityContact = new AzureNative.Security.SecurityContact("securityContact", new()
///     {
///         Emails = "john@contoso.com;jane@contoso.com",
///         IsEnabled = true,
///         NotificationsByRole = new AzureNative.Security.Inputs.SecurityContactPropertiesNotificationsByRoleArgs
///         {
///             Roles = new[]
///             {
///                 AzureNative.Security.SecurityContactRole.Owner,
///             },
///             State = AzureNative.Security.State.On,
///         },
///         NotificationsSources =
///         {
///             new AzureNative.Security.Inputs.NotificationsSourceAttackPathArgs
///             {
///                 MinimalRiskLevel = AzureNative.Security.MinimalRiskLevel.Critical,
///                 SourceType = "AttackPath",
///             },
///             new AzureNative.Security.Inputs.NotificationsSourceAlertArgs
///             {
///                 MinimalSeverity = AzureNative.Security.MinimalSeverity.Medium,
///                 SourceType = "Alert",
///             },
///         },
///         Phone = "(214)275-4038",
///         SecurityContactName = "default",
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewSecurityContact(ctx, "securityContact", &security.SecurityContactArgs{
/// 			Emails:    pulumi.String("john@contoso.com;jane@contoso.com"),
/// 			IsEnabled: pulumi.Bool(true),
/// 			NotificationsByRole: &security.SecurityContactPropertiesNotificationsByRoleArgs{
/// 				Roles: pulumi.StringArray{
/// 					pulumi.String(security.SecurityContactRoleOwner),
/// 				},
/// 				State: pulumi.String(security.StateOn),
/// 			},
/// 			NotificationsSources: pulumi.Array{
/// 				security.NotificationsSourceAttackPath{
/// 					MinimalRiskLevel: security.MinimalRiskLevelCritical,
/// 					SourceType:       "AttackPath",
/// 				},
/// 				security.NotificationsSourceAlert{
/// 					MinimalSeverity: security.MinimalSeverityMedium,
/// 					SourceType:      "Alert",
/// 				},
/// 			},
/// 			Phone:               pulumi.String("(214)275-4038"),
/// 			SecurityContactName: pulumi.String("default"),
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
/// import com.pulumi.azurenative.security.SecurityContact;
/// import com.pulumi.azurenative.security.SecurityContactArgs;
/// import com.pulumi.azurenative.security.inputs.SecurityContactPropertiesNotificationsByRoleArgs;
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
///         var securityContact = new SecurityContact("securityContact", SecurityContactArgs.builder()
///             .emails("john@contoso.com;jane@contoso.com")
///             .isEnabled(true)
///             .notificationsByRole(SecurityContactPropertiesNotificationsByRoleArgs.builder()
///                 .roles("Owner")
///                 .state("On")
///                 .build())
///             .notificationsSources(
///                 NotificationsSourceAttackPathArgs.builder()
///                     .minimalRiskLevel("Critical")
///                     .sourceType("AttackPath")
///                     .build(),
///                 NotificationsSourceAlertArgs.builder()
///                     .minimalSeverity("Medium")
///                     .sourceType("Alert")
///                     .build())
///             .phone("(214)275-4038")
///             .securityContactName("default")
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
/// const securityContact = new azure_native.security.SecurityContact("securityContact", {
///     emails: "john@contoso.com;jane@contoso.com",
///     isEnabled: true,
///     notificationsByRole: {
///         roles: [azure_native.security.SecurityContactRole.Owner],
///         state: azure_native.security.State.On,
///     },
///     notificationsSources: [
///         {
///             minimalRiskLevel: azure_native.security.MinimalRiskLevel.Critical,
///             sourceType: "AttackPath",
///         },
///         {
///             minimalSeverity: azure_native.security.MinimalSeverity.Medium,
///             sourceType: "Alert",
///         },
///     ],
///     phone: "(214)275-4038",
///     securityContactName: "default",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// security_contact = azure_native.security.SecurityContact("securityContact",
///     emails="john@contoso.com;jane@contoso.com",
///     is_enabled=True,
///     notifications_by_role={
///         "roles": [azure_native.security.SecurityContactRole.OWNER],
///         "state": azure_native.security.State.ON,
///     },
///     notifications_sources=[
///         {
///             "minimal_risk_level": azure_native.security.MinimalRiskLevel.CRITICAL,
///             "source_type": "AttackPath",
///         },
///         {
///             "minimal_severity": azure_native.security.MinimalSeverity.MEDIUM,
///             "source_type": "Alert",
///         },
///     ],
///     phone="(214)275-4038",
///     security_contact_name="default")
///
/// ```
///
/// ```yaml
/// resources:
///   securityContact:
///     type: azure-native:security:SecurityContact
///     properties:
///       emails: john@contoso.com;jane@contoso.com
///       isEnabled: true
///       notificationsByRole:
///         roles:
///           - Owner
///         state: On
///       notificationsSources:
///         - minimalRiskLevel: Critical
///           sourceType: AttackPath
///         - minimalSeverity: Medium
///           sourceType: Alert
///       phone: (214)275-4038
///       securityContactName: default
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
/// $ pulumi import azure-native:security:SecurityContact default /subscriptions/{subscriptionId}/providers/Microsoft.Security/securityContacts/{securityContactName}
/// ```
class SecurityContact extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// List of email addresses which will get notifications from Microsoft Defender for Cloud by the configurations defined in this security contact.
  late final pulumi.Output<String?> emails;

  /// Indicates whether the security contact is enabled.
  late final pulumi.Output<bool?> isEnabled;

  /// Resource name
  late final pulumi.Output<String> name;

  /// Defines whether to send email notifications from Microsoft Defender for Cloud to persons with specific RBAC roles on the subscription.
  late final pulumi.Output<
    SecurityContactPropertiesResponseNotificationsByRole?
  >
  notificationsByRole;

  /// A collection of sources types which evaluate the email notification.
  late final pulumi.Output<List<Map<String, dynamic>>?> notificationsSources;

  /// The security contact's phone number
  late final pulumi.Output<String?> phone;

  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [SecurityContact].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityContact]. {@macro pulumi_security_security_contact_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityContact(
    String name, {
    SecurityContactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:security:SecurityContact',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    emails = registerOutput<String?>('emails');
    isEnabled = registerOutput<bool?>('isEnabled');
    this.name = registerOutput<String>('name');
    notificationsByRole =
        registerOutput<SecurityContactPropertiesResponseNotificationsByRole?>(
          'notificationsByRole',
        );
    notificationsSources = registerOutput<List<Map<String, dynamic>>?>(
      'notificationsSources',
    );
    phone = registerOutput<String?>('phone');
    type = registerOutput<String>('type');
  }
}
