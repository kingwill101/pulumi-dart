import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_threat_detection_policy_args.dart';

/// Contains information about a database Threat Detection policy.
///
/// Uses Azure REST API version 2014-04-01. In version 2.x of the Azure Native provider, it used API version 2014-04-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create database security alert policy max
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var databaseThreatDetectionPolicy = new AzureNative.Sql.DatabaseThreatDetectionPolicy("databaseThreatDetectionPolicy", new()
///     {
///         DatabaseName = "testdb",
///         DisabledAlerts = "Sql_Injection;Usage_Anomaly;",
///         EmailAccountAdmins = AzureNative.Sql.SecurityAlertPolicyEmailAccountAdmins.Enabled,
///         EmailAddresses = "test@microsoft.com;user@microsoft.com",
///         ResourceGroupName = "securityalert-4799",
///         RetentionDays = 6,
///         SecurityAlertPolicyName = "default",
///         ServerName = "securityalert-6440",
///         State = AzureNative.Sql.SecurityAlertPolicyState.Enabled,
///         StorageAccountAccessKey = "sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==",
///         StorageEndpoint = "https://mystorage.blob.core.windows.net",
///         UseServerDefault = AzureNative.Sql.SecurityAlertPolicyUseServerDefault.Enabled,
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
/// 		_, err := sql.NewDatabaseThreatDetectionPolicy(ctx, "databaseThreatDetectionPolicy", &sql.DatabaseThreatDetectionPolicyArgs{
/// 			DatabaseName:            pulumi.String("testdb"),
/// 			DisabledAlerts:          pulumi.String("Sql_Injection;Usage_Anomaly;"),
/// 			EmailAccountAdmins:      pulumi.String(sql.SecurityAlertPolicyEmailAccountAdminsEnabled),
/// 			EmailAddresses:          pulumi.String("test@microsoft.com;user@microsoft.com"),
/// 			ResourceGroupName:       pulumi.String("securityalert-4799"),
/// 			RetentionDays:           pulumi.Int(6),
/// 			SecurityAlertPolicyName: pulumi.String("default"),
/// 			ServerName:              pulumi.String("securityalert-6440"),
/// 			State:                   pulumi.String(sql.SecurityAlertPolicyStateEnabled),
/// 			StorageAccountAccessKey: pulumi.String("sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD=="),
/// 			StorageEndpoint:         pulumi.String("https://mystorage.blob.core.windows.net"),
/// 			UseServerDefault:        pulumi.String(sql.SecurityAlertPolicyUseServerDefaultEnabled),
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
/// import com.pulumi.azurenative.sql.DatabaseThreatDetectionPolicy;
/// import com.pulumi.azurenative.sql.DatabaseThreatDetectionPolicyArgs;
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
///         var databaseThreatDetectionPolicy = new DatabaseThreatDetectionPolicy("databaseThreatDetectionPolicy", DatabaseThreatDetectionPolicyArgs.builder()
///             .databaseName("testdb")
///             .disabledAlerts("Sql_Injection;Usage_Anomaly;")
///             .emailAccountAdmins("Enabled")
///             .emailAddresses("test@microsoft.com;user@microsoft.com")
///             .resourceGroupName("securityalert-4799")
///             .retentionDays(6)
///             .securityAlertPolicyName("default")
///             .serverName("securityalert-6440")
///             .state("Enabled")
///             .storageAccountAccessKey("sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==")
///             .storageEndpoint("https://mystorage.blob.core.windows.net")
///             .useServerDefault("Enabled")
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
/// const databaseThreatDetectionPolicy = new azure_native.sql.DatabaseThreatDetectionPolicy("databaseThreatDetectionPolicy", {
///     databaseName: "testdb",
///     disabledAlerts: "Sql_Injection;Usage_Anomaly;",
///     emailAccountAdmins: azure_native.sql.SecurityAlertPolicyEmailAccountAdmins.Enabled,
///     emailAddresses: "test@microsoft.com;user@microsoft.com",
///     resourceGroupName: "securityalert-4799",
///     retentionDays: 6,
///     securityAlertPolicyName: "default",
///     serverName: "securityalert-6440",
///     state: azure_native.sql.SecurityAlertPolicyState.Enabled,
///     storageAccountAccessKey: "sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==",
///     storageEndpoint: "https://mystorage.blob.core.windows.net",
///     useServerDefault: azure_native.sql.SecurityAlertPolicyUseServerDefault.Enabled,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database_threat_detection_policy = azure_native.sql.DatabaseThreatDetectionPolicy("databaseThreatDetectionPolicy",
///     database_name="testdb",
///     disabled_alerts="Sql_Injection;Usage_Anomaly;",
///     email_account_admins=azure_native.sql.SecurityAlertPolicyEmailAccountAdmins.ENABLED,
///     email_addresses="test@microsoft.com;user@microsoft.com",
///     resource_group_name="securityalert-4799",
///     retention_days=6,
///     security_alert_policy_name="default",
///     server_name="securityalert-6440",
///     state=azure_native.sql.SecurityAlertPolicyState.ENABLED,
///     storage_account_access_key="sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==",
///     storage_endpoint="https://mystorage.blob.core.windows.net",
///     use_server_default=azure_native.sql.SecurityAlertPolicyUseServerDefault.ENABLED)
///
/// ```
///
/// ```yaml
/// resources:
///   databaseThreatDetectionPolicy:
///     type: azure-native:sql:DatabaseThreatDetectionPolicy
///     properties:
///       databaseName: testdb
///       disabledAlerts: Sql_Injection;Usage_Anomaly;
///       emailAccountAdmins: Enabled
///       emailAddresses: test@microsoft.com;user@microsoft.com
///       resourceGroupName: securityalert-4799
///       retentionDays: 6
///       securityAlertPolicyName: default
///       serverName: securityalert-6440
///       state: Enabled
///       storageAccountAccessKey: sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==
///       storageEndpoint: https://mystorage.blob.core.windows.net
///       useServerDefault: Enabled
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create database security alert policy min
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var databaseThreatDetectionPolicy = new AzureNative.Sql.DatabaseThreatDetectionPolicy("databaseThreatDetectionPolicy", new()
///     {
///         DatabaseName = "testdb",
///         ResourceGroupName = "securityalert-4799",
///         SecurityAlertPolicyName = "default",
///         ServerName = "securityalert-6440",
///         State = AzureNative.Sql.SecurityAlertPolicyState.Enabled,
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
/// 		_, err := sql.NewDatabaseThreatDetectionPolicy(ctx, "databaseThreatDetectionPolicy", &sql.DatabaseThreatDetectionPolicyArgs{
/// 			DatabaseName:            pulumi.String("testdb"),
/// 			ResourceGroupName:       pulumi.String("securityalert-4799"),
/// 			SecurityAlertPolicyName: pulumi.String("default"),
/// 			ServerName:              pulumi.String("securityalert-6440"),
/// 			State:                   pulumi.String(sql.SecurityAlertPolicyStateEnabled),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.DatabaseThreatDetectionPolicy;
/// import com.pulumi.azurenative.sql.DatabaseThreatDetectionPolicyArgs;
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
///         var databaseThreatDetectionPolicy = new DatabaseThreatDetectionPolicy("databaseThreatDetectionPolicy", DatabaseThreatDetectionPolicyArgs.builder()
///             .databaseName("testdb")
///             .resourceGroupName("securityalert-4799")
///             .securityAlertPolicyName("default")
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
/// const databaseThreatDetectionPolicy = new azure_native.sql.DatabaseThreatDetectionPolicy("databaseThreatDetectionPolicy", {
///     databaseName: "testdb",
///     resourceGroupName: "securityalert-4799",
///     securityAlertPolicyName: "default",
///     serverName: "securityalert-6440",
///     state: azure_native.sql.SecurityAlertPolicyState.Enabled,
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
/// database_threat_detection_policy = azure_native.sql.DatabaseThreatDetectionPolicy("databaseThreatDetectionPolicy",
///     database_name="testdb",
///     resource_group_name="securityalert-4799",
///     security_alert_policy_name="default",
///     server_name="securityalert-6440",
///     state=azure_native.sql.SecurityAlertPolicyState.ENABLED,
///     storage_account_access_key="sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==",
///     storage_endpoint="https://mystorage.blob.core.windows.net")
///
/// ```
///
/// ```yaml
/// resources:
///   databaseThreatDetectionPolicy:
///     type: azure-native:sql:DatabaseThreatDetectionPolicy
///     properties:
///       databaseName: testdb
///       resourceGroupName: securityalert-4799
///       securityAlertPolicyName: default
///       serverName: securityalert-6440
///       state: Enabled
///       storageAccountAccessKey: sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==
///       storageEndpoint: https://mystorage.blob.core.windows.net
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
/// $ pulumi import azure-native:sql:DatabaseThreatDetectionPolicy default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/securityAlertPolicies/{securityAlertPolicyName}
/// ```
class DatabaseThreatDetectionPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Specifies the semicolon-separated list of alerts that are disabled, or empty string to disable no alerts. Possible values: Sql_Injection; Sql_Injection_Vulnerability; Access_Anomaly; Data_Exfiltration; Unsafe_Action.
  late final pulumi.Output<String?> disabledAlerts;
  /// Specifies that the alert is sent to the account administrators.
  late final pulumi.Output<String?> emailAccountAdmins;
  /// Specifies the semicolon-separated list of e-mail addresses to which the alert is sent.
  late final pulumi.Output<String?> emailAddresses;
  /// Resource kind.
  late final pulumi.Output<String> kind;
  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Specifies the number of days to keep in the Threat Detection audit logs.
  late final pulumi.Output<int?> retentionDays;
  /// Specifies the state of the policy. If state is Enabled, storageEndpoint and storageAccountAccessKey are required.
  late final pulumi.Output<String> state;
  /// Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs. If state is Enabled, storageEndpoint is required.
  late final pulumi.Output<String?> storageEndpoint;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// Specifies whether to use the default server policy.
  late final pulumi.Output<String?> useServerDefault;

  /// Creates a new [DatabaseThreatDetectionPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseThreatDetectionPolicy]. {@macro pulumi_sql_database_threat_detection_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseThreatDetectionPolicy(
    String name, {
    DatabaseThreatDetectionPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:DatabaseThreatDetectionPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.disabledAlerts = registerOutput<String?>('disabledAlerts');
    this.emailAccountAdmins = registerOutput<String?>('emailAccountAdmins');
    this.emailAddresses = registerOutput<String?>('emailAddresses');
    this.kind = registerOutput<String>('kind');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.retentionDays = registerOutput<int?>('retentionDays');
    this.state = registerOutput<String>('state');
    this.storageEndpoint = registerOutput<String?>('storageEndpoint');
    this.type = registerOutput<String>('type');
    this.useServerDefault = registerOutput<String?>('useServerDefault');
  }
}
