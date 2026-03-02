// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProjectPool resources.
class ProjectPoolState {
  /// The name of the Dev Center Dev Box Definition.
  final pulumi.Input<String>? devBoxDefinitionName;
  /// The name of the Dev Center Attached Network in parent Project of the Dev Center Project Pool.
  final pulumi.Input<String>? devCenterAttachedNetworkName;
  /// The ID of the associated Dev Center Project. Changing this forces a new resource to be created.
  final pulumi.Input<String>? devCenterProjectId;
  /// Specifies whether owners of Dev Boxes in the Dev Center Project Pool are added as local administrators on the Dev Box.
  final pulumi.Input<bool>? localAdministratorEnabled;
  /// The Azure Region where the Dev Center Project Pool should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A list of the regions of the managed Virtual Network. When specified, the Dev Center Project Pool will use a Microsoft managed network.
  ///
  /// > **Note:** Currently only one region can be specified for `managed_virtual_network_regions`.
  final pulumi.Input<String>? managedVirtualNetworkRegions;
  /// Specifies the name of this Dev Center Project Pool. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies whether Dev Boxes in the Pool will have SSO enabled or disabled. Defaults to `false`.
  final pulumi.Input<bool>? singleSignOnEnabled;
  /// The specified time in minutes to wait before stopping a Dev Center Dev Box once disconnect is detected. Possible values are between `60` and `480`.
  final pulumi.Input<int>? stopOnDisconnectGracePeriodMinutes;
  /// A mapping of tags which should be assigned to the Dev Center Project Pool.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProjectPoolState].
  /// [devBoxDefinitionName] The name of the Dev Center Dev Box Definition.
  /// [devCenterAttachedNetworkName] The name of the Dev Center Attached Network in parent Project of the Dev Center Project Pool.
  /// [devCenterProjectId] The ID of the associated Dev Center Project. Changing this forces a new resource to be created.
  /// [localAdministratorEnabled] Specifies whether owners of Dev Boxes in the Dev Center Project Pool are added as local administrators on the Dev Box.
  /// [location] The Azure Region where the Dev Center Project Pool should exist. Changing this forces a new resource to be created.
  /// [managedVirtualNetworkRegions] A list of the regions of the managed Virtual Network. When specified, the Dev Center Project Pool will use a Microsoft managed network.
  /// [name] Specifies the name of this Dev Center Project Pool. Changing this forces a new resource to be created.
  /// [singleSignOnEnabled] Specifies whether Dev Boxes in the Pool will have SSO enabled or disabled. Defaults to `false`.
  /// [stopOnDisconnectGracePeriodMinutes] The specified time in minutes to wait before stopping a Dev Center Dev Box once disconnect is detected. Possible values are between `60` and `480`.
  /// [tags] A mapping of tags which should be assigned to the Dev Center Project Pool.
  ProjectPoolState({
    this.devBoxDefinitionName,
    this.devCenterAttachedNetworkName,
    this.devCenterProjectId,
    this.localAdministratorEnabled,
    this.location,
    this.managedVirtualNetworkRegions,
    this.name,
    this.singleSignOnEnabled,
    this.stopOnDisconnectGracePeriodMinutes,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devBoxDefinitionName': ?devBoxDefinitionName,
      'devCenterAttachedNetworkName': ?devCenterAttachedNetworkName,
      'devCenterProjectId': ?devCenterProjectId,
      'localAdministratorEnabled': ?localAdministratorEnabled,
      'location': ?location,
      'managedVirtualNetworkRegions': ?managedVirtualNetworkRegions,
      'name': ?name,
      'singleSignOnEnabled': ?singleSignOnEnabled,
      'stopOnDisconnectGracePeriodMinutes': ?stopOnDisconnectGracePeriodMinutes,
      'tags': ?tags,
    };
  }

  factory ProjectPoolState.fromMap(Map<String, dynamic> map) {
    return ProjectPoolState(
      devBoxDefinitionName: map['devBoxDefinitionName'] == null ? null : (map['devBoxDefinitionName']! as String).input(),
      devCenterAttachedNetworkName: map['devCenterAttachedNetworkName'] == null ? null : (map['devCenterAttachedNetworkName']! as String).input(),
      devCenterProjectId: map['devCenterProjectId'] == null ? null : (map['devCenterProjectId']! as String).input(),
      localAdministratorEnabled: map['localAdministratorEnabled'] == null ? null : (map['localAdministratorEnabled']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedVirtualNetworkRegions: map['managedVirtualNetworkRegions'] == null ? null : (map['managedVirtualNetworkRegions']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      singleSignOnEnabled: map['singleSignOnEnabled'] == null ? null : (map['singleSignOnEnabled']! as bool).input(),
      stopOnDisconnectGracePeriodMinutes: map['stopOnDisconnectGracePeriodMinutes'] == null ? null : (map['stopOnDisconnectGracePeriodMinutes']! as int).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

