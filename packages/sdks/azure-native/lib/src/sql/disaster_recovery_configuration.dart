import 'package:pulumi/pulumi.dart' as pulumi;
import 'disaster_recovery_configuration_args.dart';

/// Represents a disaster recovery configuration.
///
/// Uses Azure REST API version 2014-04-01. In version 2.x of the Azure Native provider, it used API version 2014-04-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update a disaster recovery configuration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disasterRecoveryConfiguration = new AzureNative.Sql.DisasterRecoveryConfiguration("disasterRecoveryConfiguration", new()
///     {
///         DisasterRecoveryConfigurationName = "Default",
///         ResourceGroupName = "sqlcrudtest-4799",
///         ServerName = "sqlcrudtest-5961",
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
/// 		_, err := sql.NewDisasterRecoveryConfiguration(ctx, "disasterRecoveryConfiguration", &sql.DisasterRecoveryConfigurationArgs{
/// 			DisasterRecoveryConfigurationName: pulumi.String("Default"),
/// 			ResourceGroupName:                 pulumi.String("sqlcrudtest-4799"),
/// 			ServerName:                        pulumi.String("sqlcrudtest-5961"),
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
/// import com.pulumi.azurenative.sql.DisasterRecoveryConfiguration;
/// import com.pulumi.azurenative.sql.DisasterRecoveryConfigurationArgs;
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
///         var disasterRecoveryConfiguration = new DisasterRecoveryConfiguration("disasterRecoveryConfiguration", DisasterRecoveryConfigurationArgs.builder()
///             .disasterRecoveryConfigurationName("Default")
///             .resourceGroupName("sqlcrudtest-4799")
///             .serverName("sqlcrudtest-5961")
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
/// const disasterRecoveryConfiguration = new azure_native.sql.DisasterRecoveryConfiguration("disasterRecoveryConfiguration", {
///     disasterRecoveryConfigurationName: "Default",
///     resourceGroupName: "sqlcrudtest-4799",
///     serverName: "sqlcrudtest-5961",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disaster_recovery_configuration = azure_native.sql.DisasterRecoveryConfiguration("disasterRecoveryConfiguration",
///     disaster_recovery_configuration_name="Default",
///     resource_group_name="sqlcrudtest-4799",
///     server_name="sqlcrudtest-5961")
///
/// ```
///
/// ```yaml
/// resources:
///   disasterRecoveryConfiguration:
///     type: azure-native:sql:DisasterRecoveryConfiguration
///     properties:
///       disasterRecoveryConfigurationName: Default
///       resourceGroupName: sqlcrudtest-4799
///       serverName: sqlcrudtest-5961
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
/// $ pulumi import azure-native:sql:DisasterRecoveryConfiguration Default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/disasterRecoveryConfiguration/{disasterRecoveryConfigurationName}
/// ```
class DisasterRecoveryConfiguration extends pulumi.CustomResource {
  /// Whether or not failover can be done automatically.
  late final pulumi.Output<String> autoFailover;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// How aggressive the automatic failover should be.
  late final pulumi.Output<String> failoverPolicy;
  /// Location of the server that contains this disaster recovery configuration.
  late final pulumi.Output<String> location;
  /// Logical name of the server.
  late final pulumi.Output<String> logicalServerName;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Logical name of the partner server.
  late final pulumi.Output<String> partnerLogicalServerName;
  /// Id of the partner server.
  late final pulumi.Output<String> partnerServerId;
  /// The role of the current server in the disaster recovery configuration.
  late final pulumi.Output<String> role;
  /// The status of the disaster recovery configuration.
  late final pulumi.Output<String> status;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [DisasterRecoveryConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DisasterRecoveryConfiguration]. {@macro pulumi_sql_disaster_recovery_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DisasterRecoveryConfiguration(
    String name, {
    DisasterRecoveryConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:DisasterRecoveryConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoFailover = registerOutput<String>('autoFailover');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    failoverPolicy = registerOutput<String>('failoverPolicy');
    location = registerOutput<String>('location');
    logicalServerName = registerOutput<String>('logicalServerName');
    this.name = registerOutput<String>('name');
    partnerLogicalServerName = registerOutput<String>('partnerLogicalServerName');
    partnerServerId = registerOutput<String>('partnerServerId');
    role = registerOutput<String>('role');
    status = registerOutput<String>('status');
    type = registerOutput<String>('type');
  }
}
