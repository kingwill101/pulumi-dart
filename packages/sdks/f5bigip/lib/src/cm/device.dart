import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_args.dart';
import 'device_state.dart';

/// `f5bigip.cm.Device` provides details about a specific bigip
///
/// This resource is helpful when configuring the BIG-IP device in cluster or in HA mode.
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const myNewDevice = new f5bigip.cm.Device("my_new_device", {
///     name: "bigip300.f5.com",
///     configsyncIp: "2.2.2.2",
///     mirrorIp: "10.10.10.10",
///     mirrorSecondaryIp: "11.11.11.11",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// my_new_device = f5bigip.cm.Device("my_new_device",
///     name="bigip300.f5.com",
///     configsync_ip="2.2.2.2",
///     mirror_ip="10.10.10.10",
///     mirror_secondary_ip="11.11.11.11")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myNewDevice = new F5BigIP.CM.Device("my_new_device", new()
///     {
///         Name = "bigip300.f5.com",
///         ConfigsyncIp = "2.2.2.2",
///         MirrorIp = "10.10.10.10",
///         MirrorSecondaryIp = "11.11.11.11",
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
/// 		_, err := cm.NewDevice(ctx, "my_new_device", &cm.DeviceArgs{
/// 			Name:              pulumi.String("bigip300.f5.com"),
/// 			ConfigsyncIp:      pulumi.String("2.2.2.2"),
/// 			MirrorIp:          pulumi.String("10.10.10.10"),
/// 			MirrorSecondaryIp: pulumi.String("11.11.11.11"),
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
/// import com.pulumi.f5bigip.cm.Device;
/// import com.pulumi.f5bigip.cm.DeviceArgs;
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
///         var myNewDevice = new Device("myNewDevice", DeviceArgs.builder()
///             .name("bigip300.f5.com")
///             .configsyncIp("2.2.2.2")
///             .mirrorIp("10.10.10.10")
///             .mirrorSecondaryIp("11.11.11.11")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myNewDevice:
///     type: f5bigip:cm:Device
///     name: my_new_device
///     properties:
///       name: bigip300.f5.com
///       configsyncIp: 2.2.2.2
///       mirrorIp: 10.10.10.10
///       mirrorSecondaryIp: 11.11.11.11
/// ```
class Device extends pulumi.CustomResource {
  /// IP address used for config sync
  late final pulumi.Output<String> configsyncIp;

  /// IP address used for state mirroring
  late final pulumi.Output<String?> mirrorIp;

  /// Secondary IP address used for state mirroring
  late final pulumi.Output<String?> mirrorSecondaryIp;

  /// Address of the Device which needs to be Deviceensed
  late final pulumi.Output<String> name;

  /// Creates a new [Device].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Device]. {@macro pulumi_cm_device_device_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Device(String name, {DeviceArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'f5bigip:cm/device:Device',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    configsyncIp = registerOutput<String>('configsyncIp');
    mirrorIp = registerOutput<String?>('mirrorIp');
    mirrorSecondaryIp = registerOutput<String?>('mirrorSecondaryIp');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [Device] resource's state with the given [name] and [id].
  static Device get(
    String name,
    pulumi.Input<String> id, {
    DeviceState? state,
  }) {
    return Device._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Device._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:cm/device:Device',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    configsyncIp = registerOutput<String>('configsyncIp');
    mirrorIp = registerOutput<String?>('mirrorIp');
    mirrorSecondaryIp = registerOutput<String?>('mirrorSecondaryIp');
    this.name = registerOutput<String>('name');
  }
}
