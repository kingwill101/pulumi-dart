// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Guest resources.
class GuestState {
  /// Contains those slots to which the guest is allowed to be assigned.
  final pulumi.Input<List<int>>? allowedSlots;
  /// Specifies the number of cores the system allocates to the guest.
  final pulumi.Input<int>? coresPerSlot;
  /// Indicates if virtual disk associated with vCMP guest should be removed during remove operation.  The default is `true`
  final pulumi.Input<bool>? deleteVirtualDisk;
  /// Resource name including prepended partition path.
  final pulumi.Input<String>? fullPath;
  /// Specifies the hotfix ISO image file which is applied on top of the base image.
  final pulumi.Input<String>? initialHotfix;
  /// Specifies the base software release ISO image file for installing the TMOS hypervisor instance.
  final pulumi.Input<String>? initialImage;
  /// Specifies the IP address and subnet or subnet mask you use to access the guest when you want to manage a module running within the guest.
  final pulumi.Input<String>? mgmtAddress;
  /// Specifies the method by which the management address is used in the vCMP guest. options : [`bridged`,`isolated`,`host-only`].
  final pulumi.Input<String>? mgmtNetwork;
  /// Specifies the gateway address for the `mgmt_address`. Can be set to `none` to remove the value from the configuration.
  final pulumi.Input<String>? mgmtRoute;
  /// Specifies the minimum number of slots the guest must be assigned to in order to deploy.
  final pulumi.Input<int>? minNumberOfSlots;
  /// Name of the vCMP guest
  final pulumi.Input<String>? name;
  /// Specifies the number of slots for the system to use when creating the guest.
  final pulumi.Input<int>? numberOfSlots;
  /// Specifies the state of the vCMP guest on the system. options : [`configured`,`provisioned`,`deployed`].
  final pulumi.Input<String>? state;
  /// Virtual disk associated with vCMP guest.
  final pulumi.Input<String>? virtualDisk;
  /// Specifies the list of VLANs the vCMP guest uses to communicate with other guests, the host, and with the external network. The naming format must be the combination of the partition + name. For example /Common/my-vlan
  final pulumi.Input<List<String>>? vlans;

  /// Creates a new [GuestState].
  /// [allowedSlots] Contains those slots to which the guest is allowed to be assigned.
  /// [coresPerSlot] Specifies the number of cores the system allocates to the guest.
  /// [deleteVirtualDisk] Indicates if virtual disk associated with vCMP guest should be removed during remove operation.  The default is `true`
  /// [fullPath] Resource name including prepended partition path.
  /// [initialHotfix] Specifies the hotfix ISO image file which is applied on top of the base image.
  /// [initialImage] Specifies the base software release ISO image file for installing the TMOS hypervisor instance.
  /// [mgmtAddress] Specifies the IP address and subnet or subnet mask you use to access the guest when you want to manage a module running within the guest.
  /// [mgmtNetwork] Specifies the method by which the management address is used in the vCMP guest. options : [`bridged`,`isolated`,`host-only`].
  /// [mgmtRoute] Specifies the gateway address for the `mgmt_address`. Can be set to `none` to remove the value from the configuration.
  /// [minNumberOfSlots] Specifies the minimum number of slots the guest must be assigned to in order to deploy.
  /// [name] Name of the vCMP guest
  /// [numberOfSlots] Specifies the number of slots for the system to use when creating the guest.
  /// [state] Specifies the state of the vCMP guest on the system. options : [`configured`,`provisioned`,`deployed`].
  /// [virtualDisk] Virtual disk associated with vCMP guest.
  /// [vlans] Specifies the list of VLANs the vCMP guest uses to communicate with other guests, the host, and with the external network. The naming format must be the combination of the partition + name. For example /Common/my-vlan
  GuestState({
    pulumi.Output<List<int>>? allowedSlots,
    pulumi.Output<int>? coresPerSlot,
    pulumi.Output<bool>? deleteVirtualDisk,
    pulumi.Output<String>? fullPath,
    pulumi.Output<String>? initialHotfix,
    pulumi.Output<String>? initialImage,
    pulumi.Output<String>? mgmtAddress,
    pulumi.Output<String>? mgmtNetwork,
    pulumi.Output<String>? mgmtRoute,
    pulumi.Output<int>? minNumberOfSlots,
    pulumi.Output<String>? name,
    pulumi.Output<int>? numberOfSlots,
    pulumi.Output<String>? state,
    pulumi.Output<String>? virtualDisk,
    pulumi.Output<List<String>>? vlans,
  }) :
      allowedSlots = pulumi.Input.asOptionalInput<List<int>>(allowedSlots),
      coresPerSlot = pulumi.Input.asOptionalInput<int>(coresPerSlot),
      deleteVirtualDisk = pulumi.Input.asOptionalInput<bool>(deleteVirtualDisk),
      fullPath = pulumi.Input.asOptionalInput<String>(fullPath),
      initialHotfix = pulumi.Input.asOptionalInput<String>(initialHotfix),
      initialImage = pulumi.Input.asOptionalInput<String>(initialImage),
      mgmtAddress = pulumi.Input.asOptionalInput<String>(mgmtAddress),
      mgmtNetwork = pulumi.Input.asOptionalInput<String>(mgmtNetwork),
      mgmtRoute = pulumi.Input.asOptionalInput<String>(mgmtRoute),
      minNumberOfSlots = pulumi.Input.asOptionalInput<int>(minNumberOfSlots),
      name = pulumi.Input.asOptionalInput<String>(name),
      numberOfSlots = pulumi.Input.asOptionalInput<int>(numberOfSlots),
      state = pulumi.Input.asOptionalInput<String>(state),
      virtualDisk = pulumi.Input.asOptionalInput<String>(virtualDisk),
      vlans = pulumi.Input.asOptionalInput<List<String>>(vlans);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSlots': ?allowedSlots,
      'coresPerSlot': ?coresPerSlot,
      'deleteVirtualDisk': ?deleteVirtualDisk,
      'fullPath': ?fullPath,
      'initialHotfix': ?initialHotfix,
      'initialImage': ?initialImage,
      'mgmtAddress': ?mgmtAddress,
      'mgmtNetwork': ?mgmtNetwork,
      'mgmtRoute': ?mgmtRoute,
      'minNumberOfSlots': ?minNumberOfSlots,
      'name': ?name,
      'numberOfSlots': ?numberOfSlots,
      'state': ?state,
      'virtualDisk': ?virtualDisk,
      'vlans': ?vlans,
    };
  }

  factory GuestState.fromMap(Map<String, dynamic> map) {
    return GuestState(
      allowedSlots: map['allowedSlots'] == null ? null : pulumi.Output.create<List<int>>((map['allowedSlots'] as List).cast<int>()),
      coresPerSlot: map['coresPerSlot'] == null ? null : pulumi.Output.create<int>(map['coresPerSlot'] as int),
      deleteVirtualDisk: map['deleteVirtualDisk'] == null ? null : pulumi.Output.create<bool>(map['deleteVirtualDisk'] as bool),
      fullPath: map['fullPath'] == null ? null : pulumi.Output.create<String>(map['fullPath'] as String),
      initialHotfix: map['initialHotfix'] == null ? null : pulumi.Output.create<String>(map['initialHotfix'] as String),
      initialImage: map['initialImage'] == null ? null : pulumi.Output.create<String>(map['initialImage'] as String),
      mgmtAddress: map['mgmtAddress'] == null ? null : pulumi.Output.create<String>(map['mgmtAddress'] as String),
      mgmtNetwork: map['mgmtNetwork'] == null ? null : pulumi.Output.create<String>(map['mgmtNetwork'] as String),
      mgmtRoute: map['mgmtRoute'] == null ? null : pulumi.Output.create<String>(map['mgmtRoute'] as String),
      minNumberOfSlots: map['minNumberOfSlots'] == null ? null : pulumi.Output.create<int>(map['minNumberOfSlots'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      numberOfSlots: map['numberOfSlots'] == null ? null : pulumi.Output.create<int>(map['numberOfSlots'] as int),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      virtualDisk: map['virtualDisk'] == null ? null : pulumi.Output.create<String>(map['virtualDisk'] as String),
      vlans: map['vlans'] == null ? null : pulumi.Output.create<List<String>>((map['vlans'] as List).cast<String>()),
    );
  }
}

