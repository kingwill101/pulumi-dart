import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_group_args.dart';
import 'device_group_device.dart';
import 'device_group_state.dart';

/// `f5bigip.cm.DeviceGroup` A device group is a collection of BIG-IP devices that are configured to securely synchronize their BIG-IP configuration data, and fail over when needed.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const myNewDevicegroup = new f5bigip.cm.DeviceGroup("my_new_devicegroup", {
///     name: "sanjose_devicegroup",
///     autoSync: "enabled",
///     fullLoadOnSync: "true",
///     type: "sync-only",
///     devices: [
///         {
///             name: "bigip1.cisco.com",
///         },
///         {
///             name: "bigip200.f5.com",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// my_new_devicegroup = f5bigip.cm.DeviceGroup("my_new_devicegroup",
///     name="sanjose_devicegroup",
///     auto_sync="enabled",
///     full_load_on_sync="true",
///     type="sync-only",
///     devices=[
///         {
///             "name": "bigip1.cisco.com",
///         },
///         {
///             "name": "bigip200.f5.com",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myNewDevicegroup = new F5BigIP.CM.DeviceGroup("my_new_devicegroup", new()
///     {
///         Name = "sanjose_devicegroup",
///         AutoSync = "enabled",
///         FullLoadOnSync = "true",
///         Type = "sync-only",
///         Devices = new[]
///         {
///             new F5BigIP.CM.Inputs.DeviceGroupDeviceArgs
///             {
///                 Name = "bigip1.cisco.com",
///             },
///             new F5BigIP.CM.Inputs.DeviceGroupDeviceArgs
///             {
///                 Name = "bigip200.f5.com",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/cm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cm.NewDeviceGroup(ctx, "my_new_devicegroup", &cm.DeviceGroupArgs{
/// 			Name:           pulumi.String("sanjose_devicegroup"),
/// 			AutoSync:       pulumi.String("enabled"),
/// 			FullLoadOnSync: pulumi.String("true"),
/// 			Type:           pulumi.String("sync-only"),
/// 			Devices: cm.DeviceGroupDeviceArray{
/// 				&cm.DeviceGroupDeviceArgs{
/// 					Name: pulumi.String("bigip1.cisco.com"),
/// 				},
/// 				&cm.DeviceGroupDeviceArgs{
/// 					Name: pulumi.String("bigip200.f5.com"),
/// 				},
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
/// import com.pulumi.f5bigip.cm.DeviceGroup;
/// import com.pulumi.f5bigip.cm.DeviceGroupArgs;
/// import com.pulumi.f5bigip.cm.inputs.DeviceGroupDeviceArgs;
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
///         var myNewDevicegroup = new DeviceGroup("myNewDevicegroup", DeviceGroupArgs.builder()
///             .name("sanjose_devicegroup")
///             .autoSync("enabled")
///             .fullLoadOnSync("true")
///             .type("sync-only")
///             .devices(
///                 DeviceGroupDeviceArgs.builder()
///                     .name("bigip1.cisco.com")
///                     .build(),
///                 DeviceGroupDeviceArgs.builder()
///                     .name("bigip200.f5.com")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myNewDevicegroup:
///     type: f5bigip:cm:DeviceGroup
///     name: my_new_devicegroup
///     properties:
///       name: sanjose_devicegroup
///       autoSync: enabled
///       fullLoadOnSync: 'true'
///       type: sync-only
///       devices:
///         - name: bigip1.cisco.com
///         - name: bigip200.f5.com
/// ```
class DeviceGroup extends pulumi.CustomResource {
  /// Specifies if the device-group will automatically sync configuration data to its members
  late final pulumi.Output<String?> autoSync;
  /// Description of Device group
  late final pulumi.Output<String?> description;
  /// Name of the device to be included in device group, this need to be configured before using devicegroup resource
  late final pulumi.Output<List<DeviceGroupDevice>?> devices;
  /// Specifies if the device-group will perform a full-load upon sync
  late final pulumi.Output<String?> fullLoadOnSync;
  /// Specifies the maximum size (in KB) to devote to incremental config sync cached transactions. The default is 1024 KB.
  late final pulumi.Output<int?> incrementalConfig;
  /// Is the name of the device Group
  late final pulumi.Output<String?> name;
  /// Specifies if the device-group will use a network connection for failover
  late final pulumi.Output<String?> networkFailover;
  /// Device administrative partition
  late final pulumi.Output<String?> partition;
  /// Specifies whether the configuration should be saved upon auto-sync.
  late final pulumi.Output<String?> saveOnAutoSync;
  /// Specifies if the device-group will be used for failover or resource syncing
  late final pulumi.Output<String?> type;

  /// Creates a new [DeviceGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeviceGroup]. {@macro pulumi_cm_device_group_device_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeviceGroup(
    String name, {
    DeviceGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:cm/deviceGroup:DeviceGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoSync = registerOutput<String?>('autoSync');
    this.description = registerOutput<String?>('description');
    this.devices = registerOutput<List<DeviceGroupDevice>?>('devices');
    this.fullLoadOnSync = registerOutput<String?>('fullLoadOnSync');
    this.incrementalConfig = registerOutput<int?>('incrementalConfig');
    this.name = registerOutput<String?>('name');
    this.networkFailover = registerOutput<String?>('networkFailover');
    this.partition = registerOutput<String?>('partition');
    this.saveOnAutoSync = registerOutput<String?>('saveOnAutoSync');
    this.type = registerOutput<String?>('type');
  }

  /// Gets an existing [DeviceGroup] resource's state with the given [name] and [id].
  static DeviceGroup get(
    String name,
    pulumi.Input<String> id, {
    DeviceGroupState? state,
  }) {
    return DeviceGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DeviceGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:cm/deviceGroup:DeviceGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoSync = registerOutput<String?>('autoSync');
    this.description = registerOutput<String?>('description');
    this.devices = registerOutput<List<DeviceGroupDevice>?>('devices');
    this.fullLoadOnSync = registerOutput<String?>('fullLoadOnSync');
    this.incrementalConfig = registerOutput<int?>('incrementalConfig');
    this.name = registerOutput<String?>('name');
    this.networkFailover = registerOutput<String?>('networkFailover');
    this.partition = registerOutput<String?>('partition');
    this.saveOnAutoSync = registerOutput<String?>('saveOnAutoSync');
    this.type = registerOutput<String?>('type');
  }
}
