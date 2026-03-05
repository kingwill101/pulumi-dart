import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_args.dart';
import 'virtual_machine_assessment.dart';
import 'virtual_machine_auto_backup.dart';
import 'virtual_machine_auto_patching.dart';
import 'virtual_machine_key_vault_credential.dart';
import 'virtual_machine_sql_instance.dart';
import 'virtual_machine_state.dart';
import 'virtual_machine_storage_configuration.dart';
import 'virtual_machine_wsfc_domain_credential.dart';

/// Manages a Microsoft SQL Virtual Machine
///
/// ## Example Usage
///
/// This example provisions a brief Managed Microsoft SQL Virtual Machine.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.compute.getVirtualMachine({
///     name: "example-vm",
///     resourceGroupName: "example-resources",
/// });
/// const exampleVirtualMachine = new azure.mssql.VirtualMachine("example", {
///     virtualMachineId: example.then(example => example.id),
///     sqlLicenseType: "PAYG",
///     rServicesEnabled: true,
///     sqlConnectivityPort: 1433,
///     sqlConnectivityType: "PRIVATE",
///     sqlConnectivityUpdatePassword: "Password1234!",
///     sqlConnectivityUpdateUsername: "sqllogin",
///     autoPatching: {
///         dayOfWeek: "Sunday",
///         maintenanceWindowDurationInMinutes: 60,
///         maintenanceWindowStartingHour: 2,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.compute.get_virtual_machine(name="example-vm",
///     resource_group_name="example-resources")
/// example_virtual_machine = azure.mssql.VirtualMachine("example",
///     virtual_machine_id=example.id,
///     sql_license_type="PAYG",
///     r_services_enabled=True,
///     sql_connectivity_port=1433,
///     sql_connectivity_type="PRIVATE",
///     sql_connectivity_update_password="Password1234!",
///     sql_connectivity_update_username="sqllogin",
///     auto_patching={
///         "day_of_week": "Sunday",
///         "maintenance_window_duration_in_minutes": 60,
///         "maintenance_window_starting_hour": 2,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Compute.GetVirtualMachine.Invoke(new()
///     {
///         Name = "example-vm",
///         ResourceGroupName = "example-resources",
///     });
///
///     var exampleVirtualMachine = new Azure.MSSql.VirtualMachine("example", new()
///     {
///         VirtualMachineId = example.Apply(getVirtualMachineResult => getVirtualMachineResult.Id),
///         SqlLicenseType = "PAYG",
///         RServicesEnabled = true,
///         SqlConnectivityPort = 1433,
///         SqlConnectivityType = "PRIVATE",
///         SqlConnectivityUpdatePassword = "Password1234!",
///         SqlConnectivityUpdateUsername = "sqllogin",
///         AutoPatching = new Azure.MSSql.Inputs.VirtualMachineAutoPatchingArgs
///         {
///             DayOfWeek = "Sunday",
///             MaintenanceWindowDurationInMinutes = 60,
///             MaintenanceWindowStartingHour = 2,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := compute.LookupVirtualMachine(ctx, &compute.LookupVirtualMachineArgs{
/// 			Name:              "example-vm",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewVirtualMachine(ctx, "example", &mssql.VirtualMachineArgs{
/// 			VirtualMachineId:              pulumi.String(example.Id),
/// 			SqlLicenseType:                pulumi.String("PAYG"),
/// 			RServicesEnabled:              pulumi.Bool(true),
/// 			SqlConnectivityPort:           pulumi.Int(1433),
/// 			SqlConnectivityType:           pulumi.String("PRIVATE"),
/// 			SqlConnectivityUpdatePassword: pulumi.String("Password1234!"),
/// 			SqlConnectivityUpdateUsername: pulumi.String("sqllogin"),
/// 			AutoPatching: &mssql.VirtualMachineAutoPatchingArgs{
/// 				DayOfWeek:                          pulumi.String("Sunday"),
/// 				MaintenanceWindowDurationInMinutes: pulumi.Int(60),
/// 				MaintenanceWindowStartingHour:      pulumi.Int(2),
/// 			},
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetVirtualMachineArgs;
/// import com.pulumi.azure.mssql.VirtualMachine;
/// import com.pulumi.azure.mssql.VirtualMachineArgs;
/// import com.pulumi.azure.mssql.inputs.VirtualMachineAutoPatchingArgs;
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
///         final var example = ComputeFunctions.getVirtualMachine(GetVirtualMachineArgs.builder()
///             .name("example-vm")
///             .resourceGroupName("example-resources")
///             .build());
///
///         var exampleVirtualMachine = new VirtualMachine("exampleVirtualMachine", VirtualMachineArgs.builder()
///             .virtualMachineId(example.id())
///             .sqlLicenseType("PAYG")
///             .rServicesEnabled(true)
///             .sqlConnectivityPort(1433)
///             .sqlConnectivityType("PRIVATE")
///             .sqlConnectivityUpdatePassword("Password1234!")
///             .sqlConnectivityUpdateUsername("sqllogin")
///             .autoPatching(VirtualMachineAutoPatchingArgs.builder()
///                 .dayOfWeek("Sunday")
///                 .maintenanceWindowDurationInMinutes(60)
///                 .maintenanceWindowStartingHour(2)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleVirtualMachine:
///     type: azure:mssql:VirtualMachine
///     name: example
///     properties:
///       virtualMachineId: ${example.id}
///       sqlLicenseType: PAYG
///       rServicesEnabled: true
///       sqlConnectivityPort: 1433
///       sqlConnectivityType: PRIVATE
///       sqlConnectivityUpdatePassword: Password1234!
///       sqlConnectivityUpdateUsername: sqllogin
///       autoPatching:
///         dayOfWeek: Sunday
///         maintenanceWindowDurationInMinutes: 60
///         maintenanceWindowStartingHour: 2
/// variables:
///   example:
///     fn::invoke:
///       function: azure:compute:getVirtualMachine
///       arguments:
///         name: example-vm
///         resourceGroupName: example-resources
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2024-03-01
///
/// * `Microsoft.SqlVirtualMachine` - 2023-10-01
///
/// ## Import
///
/// Microsoft SQL Virtual Machines can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/virtualMachine:VirtualMachine example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/example1
/// ```
class VirtualMachine extends pulumi.CustomResource {
  /// An `assessment` block as defined below.
  late final pulumi.Output<VirtualMachineAssessment?> assessment;

  /// An `auto_backup` block as defined below. This block can be added to an existing resource, but removing this block forces a new resource to be created.
  late final pulumi.Output<VirtualMachineAutoBackup?> autoBackup;

  /// An `auto_patching` block as defined below.
  late final pulumi.Output<VirtualMachineAutoPatching?> autoPatching;

  /// An `key_vault_credential` block as defined below.
  late final pulumi.Output<VirtualMachineKeyVaultCredential?>
  keyVaultCredential;

  /// Should R Services be enabled?
  late final pulumi.Output<bool?> rServicesEnabled;

  /// The SQL Server port. Defaults to `1433`.
  late final pulumi.Output<int?> sqlConnectivityPort;

  /// The connectivity type used for this SQL Server. Possible values are `LOCAL`, `PRIVATE` and `PUBLIC`. Defaults to `PRIVATE`.
  late final pulumi.Output<String?> sqlConnectivityType;

  /// The SQL Server sysadmin login password.
  late final pulumi.Output<String?> sqlConnectivityUpdatePassword;

  /// The SQL Server sysadmin login to create.
  late final pulumi.Output<String?> sqlConnectivityUpdateUsername;

  /// A `sql_instance` block as defined below.
  late final pulumi.Output<VirtualMachineSqlInstance?> sqlInstance;

  /// The SQL Server license type. Possible values are `AHUB` (Azure Hybrid Benefit), `DR` (Disaster Recovery), and `PAYG` (Pay-As-You-Go). Changing this forces a new resource to be created.
  late final pulumi.Output<String?> sqlLicenseType;

  /// The ID of the SQL Virtual Machine Group that the SQL Virtual Machine belongs to.
  late final pulumi.Output<String?> sqlVirtualMachineGroupId;

  /// An `storage_configuration` block as defined below.
  late final pulumi.Output<VirtualMachineStorageConfiguration?>
  storageConfiguration;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The ID of the Virtual Machine. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualMachineId;

  /// A `wsfc_domain_credential` block as defined below
  late final pulumi.Output<VirtualMachineWsfcDomainCredential?>
  wsfcDomainCredential;

  /// Creates a new [VirtualMachine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachine]. {@macro pulumi_mssql_virtual_machine_virtual_machine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachine(
    String name, {
    VirtualMachineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:mssql/virtualMachine:VirtualMachine',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    assessment = registerOutput<VirtualMachineAssessment?>(
      'assessment',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VirtualMachineAssessment.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    autoBackup = registerOutput<VirtualMachineAutoBackup?>(
      'autoBackup',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VirtualMachineAutoBackup.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    autoPatching = registerOutput<VirtualMachineAutoPatching?>(
      'autoPatching',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VirtualMachineAutoPatching.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    keyVaultCredential = registerOutput<VirtualMachineKeyVaultCredential?>(
      'keyVaultCredential',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VirtualMachineKeyVaultCredential.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    rServicesEnabled = registerOutput<bool?>('rServicesEnabled');
    sqlConnectivityPort = registerOutput<int?>('sqlConnectivityPort');
    sqlConnectivityType = registerOutput<String?>('sqlConnectivityType');
    sqlConnectivityUpdatePassword = registerOutput<String?>(
      'sqlConnectivityUpdatePassword',
    );
    sqlConnectivityUpdateUsername = registerOutput<String?>(
      'sqlConnectivityUpdateUsername',
    );
    sqlInstance = registerOutput<VirtualMachineSqlInstance?>(
      'sqlInstance',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VirtualMachineSqlInstance.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sqlLicenseType = registerOutput<String?>('sqlLicenseType');
    sqlVirtualMachineGroupId = registerOutput<String?>(
      'sqlVirtualMachineGroupId',
    );
    storageConfiguration = registerOutput<VirtualMachineStorageConfiguration?>(
      'storageConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VirtualMachineStorageConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    virtualMachineId = registerOutput<String>('virtualMachineId');
    wsfcDomainCredential = registerOutput<VirtualMachineWsfcDomainCredential?>(
      'wsfcDomainCredential',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VirtualMachineWsfcDomainCredential.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [VirtualMachine] resource's state with the given [name] and [id].
  static VirtualMachine get(
    String name,
    pulumi.Input<String> id, {
    VirtualMachineState? state,
  }) {
    return VirtualMachine._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualMachine._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:mssql/virtualMachine:VirtualMachine',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    assessment = registerOutput<VirtualMachineAssessment?>(
      'assessment',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VirtualMachineAssessment.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    autoBackup = registerOutput<VirtualMachineAutoBackup?>(
      'autoBackup',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VirtualMachineAutoBackup.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    autoPatching = registerOutput<VirtualMachineAutoPatching?>(
      'autoPatching',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VirtualMachineAutoPatching.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    keyVaultCredential = registerOutput<VirtualMachineKeyVaultCredential?>(
      'keyVaultCredential',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VirtualMachineKeyVaultCredential.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    rServicesEnabled = registerOutput<bool?>('rServicesEnabled');
    sqlConnectivityPort = registerOutput<int?>('sqlConnectivityPort');
    sqlConnectivityType = registerOutput<String?>('sqlConnectivityType');
    sqlConnectivityUpdatePassword = registerOutput<String?>(
      'sqlConnectivityUpdatePassword',
    );
    sqlConnectivityUpdateUsername = registerOutput<String?>(
      'sqlConnectivityUpdateUsername',
    );
    sqlInstance = registerOutput<VirtualMachineSqlInstance?>(
      'sqlInstance',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VirtualMachineSqlInstance.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sqlLicenseType = registerOutput<String?>('sqlLicenseType');
    sqlVirtualMachineGroupId = registerOutput<String?>(
      'sqlVirtualMachineGroupId',
    );
    storageConfiguration = registerOutput<VirtualMachineStorageConfiguration?>(
      'storageConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VirtualMachineStorageConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    virtualMachineId = registerOutput<String>('virtualMachineId');
    wsfcDomainCredential = registerOutput<VirtualMachineWsfcDomainCredential?>(
      'wsfcDomainCredential',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VirtualMachineWsfcDomainCredential.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
