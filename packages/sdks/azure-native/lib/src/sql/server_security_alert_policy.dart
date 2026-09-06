import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_security_alert_policy_args.dart';
import 'system_data_response.dart';

/// A server security alert policy.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update a server's threat detection policy with all parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverSecurityAlertPolicy = new AzureNative.Sql.ServerSecurityAlertPolicy("serverSecurityAlertPolicy", new()
///     {
///         DisabledAlerts = new[]
///         {
///             "Access_Anomaly",
///             "Usage_Anomaly",
///         },
///         EmailAccountAdmins = true,
///         EmailAddresses = new[]
///         {
///             "testSecurityAlert@microsoft.com",
///         },
///         ResourceGroupName = "securityalert-4799",
///         RetentionDays = 5,
///         SecurityAlertPolicyName = "Default",
///         ServerName = "securityalert-6440",
///         State = AzureNative.Sql.SecurityAlertsPolicyState.Enabled,
///         StorageAccountAccessKey = "sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==",
///         StorageEndpoint = "https://mystorage.blob.core.windows.net",
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewServerSecurityAlertPolicy(ctx, "serverSecurityAlertPolicy", &sql.ServerSecurityAlertPolicyArgs{
/// 			DisabledAlerts: pulumi.StringArray{
/// 				pulumi.String("Access_Anomaly"),
/// 				pulumi.String("Usage_Anomaly"),
/// 			},
/// 			EmailAccountAdmins: pulumi.Bool(true),
/// 			EmailAddresses: pulumi.StringArray{
/// 				pulumi.String("testSecurityAlert@microsoft.com"),
/// 			},
/// 			ResourceGroupName:       pulumi.String("securityalert-4799"),
/// 			RetentionDays:           pulumi.Int(5),
/// 			SecurityAlertPolicyName: pulumi.String("Default"),
/// 			ServerName:              pulumi.String("securityalert-6440"),
/// 			State:                   sql.SecurityAlertsPolicyStateEnabled,
/// 			StorageAccountAccessKey: pulumi.String("sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD=="),
/// 			StorageEndpoint:         pulumi.String("https://mystorage.blob.core.windows.net"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_serversecurityalertpolicy" "serverSecurityAlertPolicy" {
///   disabled_alerts            = ["Access_Anomaly", "Usage_Anomaly"]
///   email_account_admins       = true
///   email_addresses            = ["testSecurityAlert@microsoft.com"]
///   resource_group_name        = "securityalert-4799"
///   retention_days             = 5
///   security_alert_policy_name = "Default"
///   server_name                = "securityalert-6440"
///   state                      = "Enabled"
///   storage_account_access_key = "sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD=="
///   storage_endpoint           = "https://mystorage.blob.core.windows.net"
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
/// import com.pulumi.azurenative.sql.ServerSecurityAlertPolicy;
/// import com.pulumi.azurenative.sql.ServerSecurityAlertPolicyArgs;
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
///         var serverSecurityAlertPolicy = new ServerSecurityAlertPolicy("serverSecurityAlertPolicy", ServerSecurityAlertPolicyArgs.builder()
///             .disabledAlerts(
///                 "Access_Anomaly",
///                 "Usage_Anomaly")
///             .emailAccountAdmins(true)
///             .emailAddresses("testSecurityAlert@microsoft.com")
///             .resourceGroupName("securityalert-4799")
///             .retentionDays(5)
///             .securityAlertPolicyName("Default")
///             .serverName("securityalert-6440")
///             .state("Enabled")
///             .storageAccountAccessKey("sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==")
///             .storageEndpoint("https://mystorage.blob.core.windows.net")
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
/// const serverSecurityAlertPolicy = new azure_native.sql.ServerSecurityAlertPolicy("serverSecurityAlertPolicy", {
///     disabledAlerts: [
///         "Access_Anomaly",
///         "Usage_Anomaly",
///     ],
///     emailAccountAdmins: true,
///     emailAddresses: ["testSecurityAlert@microsoft.com"],
///     resourceGroupName: "securityalert-4799",
///     retentionDays: 5,
///     securityAlertPolicyName: "Default",
///     serverName: "securityalert-6440",
///     state: azure_native.sql.SecurityAlertsPolicyState.Enabled,
///     storageAccountAccessKey: "sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==",
///     storageEndpoint: "https://mystorage.blob.core.windows.net",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_security_alert_policy = azure_native.sql.ServerSecurityAlertPolicy("serverSecurityAlertPolicy",
///     disabled_alerts=[
///         "Access_Anomaly",
///         "Usage_Anomaly",
///     ],
///     email_account_admins=True,
///     email_addresses=["testSecurityAlert@microsoft.com"],
///     resource_group_name="securityalert-4799",
///     retention_days=5,
///     security_alert_policy_name="Default",
///     server_name="securityalert-6440",
///     state=azure_native.sql.SecurityAlertsPolicyState.ENABLED,
///     storage_account_access_key="sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==",
///     storage_endpoint="https://mystorage.blob.core.windows.net")
///
/// ```
///
/// ```yaml
/// resources:
///   serverSecurityAlertPolicy:
///     type: azure-native:sql:ServerSecurityAlertPolicy
///     properties:
///       disabledAlerts:
///         - Access_Anomaly
///         - Usage_Anomaly
///       emailAccountAdmins: true
///       emailAddresses:
///         - testSecurityAlert@microsoft.com
///       resourceGroupName: securityalert-4799
///       retentionDays: 5
///       securityAlertPolicyName: Default
///       serverName: securityalert-6440
///       state: Enabled
///       storageAccountAccessKey: sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==
///       storageEndpoint: https://mystorage.blob.core.windows.net
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Update a server's threat detection policy with minimal parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverSecurityAlertPolicy = new AzureNative.Sql.ServerSecurityAlertPolicy("serverSecurityAlertPolicy", new()
///     {
///         ResourceGroupName = "securityalert-4799",
///         SecurityAlertPolicyName = "Default",
///         ServerName = "securityalert-6440",
///         State = AzureNative.Sql.SecurityAlertsPolicyState.Enabled,
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewServerSecurityAlertPolicy(ctx, "serverSecurityAlertPolicy", &sql.ServerSecurityAlertPolicyArgs{
/// 			ResourceGroupName:       pulumi.String("securityalert-4799"),
/// 			SecurityAlertPolicyName: pulumi.String("Default"),
/// 			ServerName:              pulumi.String("securityalert-6440"),
/// 			State:                   sql.SecurityAlertsPolicyStateEnabled,
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_serversecurityalertpolicy" "serverSecurityAlertPolicy" {
///   resource_group_name        = "securityalert-4799"
///   security_alert_policy_name = "Default"
///   server_name                = "securityalert-6440"
///   state                      = "Enabled"
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
/// import com.pulumi.azurenative.sql.ServerSecurityAlertPolicy;
/// import com.pulumi.azurenative.sql.ServerSecurityAlertPolicyArgs;
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
///         var serverSecurityAlertPolicy = new ServerSecurityAlertPolicy("serverSecurityAlertPolicy", ServerSecurityAlertPolicyArgs.builder()
///             .resourceGroupName("securityalert-4799")
///             .securityAlertPolicyName("Default")
///             .serverName("securityalert-6440")
///             .state("Enabled")
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
/// const serverSecurityAlertPolicy = new azure_native.sql.ServerSecurityAlertPolicy("serverSecurityAlertPolicy", {
///     resourceGroupName: "securityalert-4799",
///     securityAlertPolicyName: "Default",
///     serverName: "securityalert-6440",
///     state: azure_native.sql.SecurityAlertsPolicyState.Enabled,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_security_alert_policy = azure_native.sql.ServerSecurityAlertPolicy("serverSecurityAlertPolicy",
///     resource_group_name="securityalert-4799",
///     security_alert_policy_name="Default",
///     server_name="securityalert-6440",
///     state=azure_native.sql.SecurityAlertsPolicyState.ENABLED)
///
/// ```
///
/// ```yaml
/// resources:
///   serverSecurityAlertPolicy:
///     type: azure-native:sql:ServerSecurityAlertPolicy
///     properties:
///       resourceGroupName: securityalert-4799
///       securityAlertPolicyName: Default
///       serverName: securityalert-6440
///       state: Enabled
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
/// $ pulumi import azure-native:sql:ServerSecurityAlertPolicy Default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/securityAlertPolicies/{securityAlertPolicyName}
/// ```
class ServerSecurityAlertPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Specifies the UTC creation time of the policy.
  late final pulumi.Output<String> creationTime;
  /// Specifies an array of alerts that are disabled. Allowed values are: Sql_Injection, Sql_Injection_Vulnerability, Access_Anomaly, Data_Exfiltration, Unsafe_Action, Brute_Force
  late final pulumi.Output<List<String>?> disabledAlerts;
  /// Specifies that the alert is sent to the account administrators.
  late final pulumi.Output<bool?> emailAccountAdmins;
  /// Specifies an array of e-mail addresses to which the alert is sent.
  late final pulumi.Output<List<String>?> emailAddresses;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Specifies the number of days to keep in the Threat Detection audit logs.
  late final pulumi.Output<int?> retentionDays;
  /// Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific database.
  late final pulumi.Output<String> state;
  /// Specifies the identifier key of the Threat Detection audit storage account.
  late final pulumi.Output<String?> storageAccountAccessKey;
  /// Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs.
  late final pulumi.Output<String?> storageEndpoint;
  /// SystemData of SecurityAlertPolicyResource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ServerSecurityAlertPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerSecurityAlertPolicy]. {@macro pulumi_sql_server_security_alert_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerSecurityAlertPolicy(
    String name, {
    ServerSecurityAlertPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:ServerSecurityAlertPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTime = registerOutput<String>('creationTime');
    disabledAlerts = registerOutput<List<String>?>('disabledAlerts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    emailAccountAdmins = registerOutput<bool?>('emailAccountAdmins');
    emailAddresses = registerOutput<List<String>?>('emailAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    retentionDays = registerOutput<int?>('retentionDays');
    state = registerOutput<String>('state');
    storageAccountAccessKey = registerOutput<String?>('storageAccountAccessKey');
    storageEndpoint = registerOutput<String?>('storageEndpoint');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ServerSecurityAlertPolicy] resource.
  ServerSecurityAlertPolicy.reference(String urn)
    : super(
        'azure-native:sql:ServerSecurityAlertPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTime = registerOutput<String>('creationTime');
    disabledAlerts = registerOutput<List<String>?>('disabledAlerts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    emailAccountAdmins = registerOutput<bool?>('emailAccountAdmins');
    emailAddresses = registerOutput<List<String>?>('emailAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    retentionDays = registerOutput<int?>('retentionDays');
    state = registerOutput<String>('state');
    storageAccountAccessKey = registerOutput<String?>('storageAccountAccessKey');
    storageEndpoint = registerOutput<String?>('storageEndpoint');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
