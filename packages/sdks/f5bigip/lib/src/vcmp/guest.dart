import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_args.dart';
import 'guest_state.dart';

/// `f5bigip.vcmp.Guest` Manages a vCMP guest configuration
///
/// Resource does not wait for vCMP guest to reach the desired state, it only ensures that a desired configuration is set on the target device.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const vcmp_test = new f5bigip.vcmp.Guest("vcmp-test", {
///     name: "tf_guest",
///     initialImage: "12.1.2.iso",
///     mgmtNetwork: "bridged",
///     mgmtAddress: "10.1.1.1/24",
///     mgmtRoute: "none",
///     state: "provisioned",
///     coresPerSlot: 2,
///     numberOfSlots: 1,
///     minNumberOfSlots: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// vcmp_test = f5bigip.vcmp.Guest("vcmp-test",
///     name="tf_guest",
///     initial_image="12.1.2.iso",
///     mgmt_network="bridged",
///     mgmt_address="10.1.1.1/24",
///     mgmt_route="none",
///     state="provisioned",
///     cores_per_slot=2,
///     number_of_slots=1,
///     min_number_of_slots=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vcmp_test = new F5BigIP.VCMP.Guest("vcmp-test", new()
///     {
///         Name = "tf_guest",
///         InitialImage = "12.1.2.iso",
///         MgmtNetwork = "bridged",
///         MgmtAddress = "10.1.1.1/24",
///         MgmtRoute = "none",
///         State = "provisioned",
///         CoresPerSlot = 2,
///         NumberOfSlots = 1,
///         MinNumberOfSlots = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/vcmp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vcmp.NewGuest(ctx, "vcmp-test", &vcmp.GuestArgs{
/// 			Name:             pulumi.String("tf_guest"),
/// 			InitialImage:     pulumi.String("12.1.2.iso"),
/// 			MgmtNetwork:      pulumi.String("bridged"),
/// 			MgmtAddress:      pulumi.String("10.1.1.1/24"),
/// 			MgmtRoute:        pulumi.String("none"),
/// 			State:            pulumi.String("provisioned"),
/// 			CoresPerSlot:     pulumi.Int(2),
/// 			NumberOfSlots:    pulumi.Int(1),
/// 			MinNumberOfSlots: pulumi.Int(1),
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
/// import com.pulumi.f5bigip.vcmp.Guest;
/// import com.pulumi.f5bigip.vcmp.GuestArgs;
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
///         var vcmp_test = new Guest("vcmp-test", GuestArgs.builder()
///             .name("tf_guest")
///             .initialImage("12.1.2.iso")
///             .mgmtNetwork("bridged")
///             .mgmtAddress("10.1.1.1/24")
///             .mgmtRoute("none")
///             .state("provisioned")
///             .coresPerSlot(2)
///             .numberOfSlots(1)
///             .minNumberOfSlots(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vcmp-test:
///     type: f5bigip:vcmp:Guest
///     properties:
///       name: tf_guest
///       initialImage: 12.1.2.iso
///       mgmtNetwork: bridged
///       mgmtAddress: 10.1.1.1/24
///       mgmtRoute: none
///       state: provisioned
///       coresPerSlot: 2
///       numberOfSlots: 1
///       minNumberOfSlots: 1
/// ```
class Guest extends pulumi.CustomResource {
  /// Contains those slots to which the guest is allowed to be assigned.
  late final pulumi.Output<List<int>> allowedSlots;
  /// Specifies the number of cores the system allocates to the guest.
  late final pulumi.Output<int> coresPerSlot;
  /// Indicates if virtual disk associated with vCMP guest should be removed during remove operation.  The default is `true`
  late final pulumi.Output<bool?> deleteVirtualDisk;
  /// Resource name including prepended partition path.
  late final pulumi.Output<String> fullPath;
  /// Specifies the hotfix ISO image file which is applied on top of the base image.
  late final pulumi.Output<String> initialHotfix;
  /// Specifies the base software release ISO image file for installing the TMOS hypervisor instance.
  late final pulumi.Output<String> initialImage;
  /// Specifies the IP address and subnet or subnet mask you use to access the guest when you want to manage a module running within the guest.
  late final pulumi.Output<String> mgmtAddress;
  /// Specifies the method by which the management address is used in the vCMP guest. options : [`bridged`,`isolated`,`host-only`].
  late final pulumi.Output<String> mgmtNetwork;
  /// Specifies the gateway address for the `mgmt_address`. Can be set to `none` to remove the value from the configuration.
  late final pulumi.Output<String> mgmtRoute;
  /// Specifies the minimum number of slots the guest must be assigned to in order to deploy.
  late final pulumi.Output<int> minNumberOfSlots;
  /// Name of the vCMP guest
  late final pulumi.Output<String> name;
  /// Specifies the number of slots for the system to use when creating the guest.
  late final pulumi.Output<int> numberOfSlots;
  /// Specifies the state of the vCMP guest on the system. options : [`configured`,`provisioned`,`deployed`].
  late final pulumi.Output<String> state;
  /// Virtual disk associated with vCMP guest.
  late final pulumi.Output<String> virtualDisk;
  /// Specifies the list of VLANs the vCMP guest uses to communicate with other guests, the host, and with the external network. The naming format must be the combination of the partition + name. For example /Common/my-vlan
  late final pulumi.Output<List<String>> vlans;

  /// Creates a new [Guest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Guest]. {@macro pulumi_vcmp_guest_guest_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Guest(
    String name, {
    GuestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:vcmp/guest:Guest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedSlots = registerOutput<List<int>>('allowedSlots');
    this.coresPerSlot = registerOutput<int>('coresPerSlot');
    this.deleteVirtualDisk = registerOutput<bool?>('deleteVirtualDisk');
    this.fullPath = registerOutput<String>('fullPath');
    this.initialHotfix = registerOutput<String>('initialHotfix');
    this.initialImage = registerOutput<String>('initialImage');
    this.mgmtAddress = registerOutput<String>('mgmtAddress');
    this.mgmtNetwork = registerOutput<String>('mgmtNetwork');
    this.mgmtRoute = registerOutput<String>('mgmtRoute');
    this.minNumberOfSlots = registerOutput<int>('minNumberOfSlots');
    this.name = registerOutput<String>('name');
    this.numberOfSlots = registerOutput<int>('numberOfSlots');
    this.state = registerOutput<String>('state');
    this.virtualDisk = registerOutput<String>('virtualDisk');
    this.vlans = registerOutput<List<String>>('vlans');
  }

  /// Gets an existing [Guest] resource's state with the given [name] and [id].
  static Guest get(
    String name,
    pulumi.Input<String> id, {
    GuestState? state,
  }) {
    return Guest._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Guest._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:vcmp/guest:Guest',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedSlots = registerOutput<List<int>>('allowedSlots');
    this.coresPerSlot = registerOutput<int>('coresPerSlot');
    this.deleteVirtualDisk = registerOutput<bool?>('deleteVirtualDisk');
    this.fullPath = registerOutput<String>('fullPath');
    this.initialHotfix = registerOutput<String>('initialHotfix');
    this.initialImage = registerOutput<String>('initialImage');
    this.mgmtAddress = registerOutput<String>('mgmtAddress');
    this.mgmtNetwork = registerOutput<String>('mgmtNetwork');
    this.mgmtRoute = registerOutput<String>('mgmtRoute');
    this.minNumberOfSlots = registerOutput<int>('minNumberOfSlots');
    this.name = registerOutput<String>('name');
    this.numberOfSlots = registerOutput<int>('numberOfSlots');
    this.state = registerOutput<String>('state');
    this.virtualDisk = registerOutput<String>('virtualDisk');
    this.vlans = registerOutput<List<String>>('vlans');
  }
}
