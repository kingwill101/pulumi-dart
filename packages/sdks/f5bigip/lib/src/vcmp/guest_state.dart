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
    this.allowedSlots,
    this.coresPerSlot,
    this.deleteVirtualDisk,
    this.fullPath,
    this.initialHotfix,
    this.initialImage,
    this.mgmtAddress,
    this.mgmtNetwork,
    this.mgmtRoute,
    this.minNumberOfSlots,
    this.name,
    this.numberOfSlots,
    this.state,
    this.virtualDisk,
    this.vlans,
  });

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
      allowedSlots: map['allowedSlots'] == null ? null : ((map['allowedSlots']! as List).cast<int>()).input(),
      coresPerSlot: map['coresPerSlot'] == null ? null : (map['coresPerSlot']! as int).input(),
      deleteVirtualDisk: map['deleteVirtualDisk'] == null ? null : (map['deleteVirtualDisk']! as bool).input(),
      fullPath: map['fullPath'] == null ? null : (map['fullPath']! as String).input(),
      initialHotfix: map['initialHotfix'] == null ? null : (map['initialHotfix']! as String).input(),
      initialImage: map['initialImage'] == null ? null : (map['initialImage']! as String).input(),
      mgmtAddress: map['mgmtAddress'] == null ? null : (map['mgmtAddress']! as String).input(),
      mgmtNetwork: map['mgmtNetwork'] == null ? null : (map['mgmtNetwork']! as String).input(),
      mgmtRoute: map['mgmtRoute'] == null ? null : (map['mgmtRoute']! as String).input(),
      minNumberOfSlots: map['minNumberOfSlots'] == null ? null : (map['minNumberOfSlots']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      numberOfSlots: map['numberOfSlots'] == null ? null : (map['numberOfSlots']! as int).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      virtualDisk: map['virtualDisk'] == null ? null : (map['virtualDisk']! as String).input(),
      vlans: map['vlans'] == null ? null : ((map['vlans']! as List).cast<String>()).input(),
    );
  }
}

