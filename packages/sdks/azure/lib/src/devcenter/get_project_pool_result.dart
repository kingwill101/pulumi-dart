// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProjectPool.
class GetProjectPoolResult {
  /// The name of the Dev Center Dev Box Definition.
  final String devBoxDefinitionName;
  /// The name of the Dev Center Attached Network in parent Project of the Dev Center Project Pool.
  final String devCenterAttachedNetworkName;
  final String devCenterProjectId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Specifies whether owners of Dev Boxes in the Dev Center Project Pool are added as local administrators on the Dev Box.
  final bool localAdministratorEnabled;
  /// The Azure Region where the Dev Center Project Pool exists.
  final String location;
  final String name;
  /// Specifies whether Dev Boxes in the Pool will have SSO enabled or disabled.
  final bool singleSignOnEnabled;
  /// The specified time in minutes to wait before stopping a Dev Center Dev Box once disconnect is detected.
  final int stopOnDisconnectGracePeriodMinutes;
  /// A mapping of tags assigned to the Dev Center Project Pool.
  final Map<String, String> tags;

  /// Creates a new [GetProjectPoolResult].
  /// [devBoxDefinitionName] The name of the Dev Center Dev Box Definition.
  /// [devCenterAttachedNetworkName] The name of the Dev Center Attached Network in parent Project of the Dev Center Project Pool.
  /// [devCenterProjectId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [localAdministratorEnabled] Specifies whether owners of Dev Boxes in the Dev Center Project Pool are added as local administrators on the Dev Box.
  /// [location] The Azure Region where the Dev Center Project Pool exists.
  /// [name] Required.
  /// [singleSignOnEnabled] Specifies whether Dev Boxes in the Pool will have SSO enabled or disabled.
  /// [stopOnDisconnectGracePeriodMinutes] The specified time in minutes to wait before stopping a Dev Center Dev Box once disconnect is detected.
  /// [tags] A mapping of tags assigned to the Dev Center Project Pool.
  GetProjectPoolResult({
    required this.devBoxDefinitionName,
    required this.devCenterAttachedNetworkName,
    required this.devCenterProjectId,
    required this.id,
    required this.localAdministratorEnabled,
    required this.location,
    required this.name,
    required this.singleSignOnEnabled,
    required this.stopOnDisconnectGracePeriodMinutes,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devBoxDefinitionName': devBoxDefinitionName,
      'devCenterAttachedNetworkName': devCenterAttachedNetworkName,
      'devCenterProjectId': devCenterProjectId,
      'id': id,
      'localAdministratorEnabled': localAdministratorEnabled,
      'location': location,
      'name': name,
      'singleSignOnEnabled': singleSignOnEnabled,
      'stopOnDisconnectGracePeriodMinutes': stopOnDisconnectGracePeriodMinutes,
      'tags': tags,
    };
  }

  factory GetProjectPoolResult.fromMap(Map<String, dynamic> map) {
    return GetProjectPoolResult(
      devBoxDefinitionName: map['devBoxDefinitionName'] as String,
      devCenterAttachedNetworkName: map['devCenterAttachedNetworkName'] as String,
      devCenterProjectId: map['devCenterProjectId'] as String,
      id: map['id'] as String,
      localAdministratorEnabled: map['localAdministratorEnabled'] as bool,
      location: map['location'] as String,
      name: map['name'] as String,
      singleSignOnEnabled: map['singleSignOnEnabled'] as bool,
      stopOnDisconnectGracePeriodMinutes: map['stopOnDisconnectGracePeriodMinutes'] as int,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

