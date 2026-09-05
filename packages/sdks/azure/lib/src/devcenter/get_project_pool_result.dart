// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProjectPool.
class GetProjectPoolResult {
  /// The name of the Dev Center Dev Box Definition.
  final String? devBoxDefinitionName;
  /// The name of the Dev Center Attached Network in parent Project of the Dev Center Project Pool.
  final String? devCenterAttachedNetworkName;
  final String? devCenterProjectId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Specifies whether owners of Dev Boxes in the Dev Center Project Pool are added as local administrators on the Dev Box.
  final bool? localAdministratorEnabled;
  /// The Azure Region where the Dev Center Project Pool exists.
  final String? location;
  final String? name;
  /// Specifies whether Dev Boxes in the Pool will have SSO enabled or disabled.
  final bool? singleSignOnEnabled;
  /// The specified time in minutes to wait before stopping a Dev Center Dev Box once disconnect is detected.
  final int? stopOnDisconnectGracePeriodMinutes;
  /// A mapping of tags assigned to the Dev Center Project Pool.
  final Map<String, String>? tags;

  /// Creates a new [GetProjectPoolResult].
  /// [devBoxDefinitionName] The name of the Dev Center Dev Box Definition.
  /// [devCenterAttachedNetworkName] The name of the Dev Center Attached Network in parent Project of the Dev Center Project Pool.
  /// [devCenterProjectId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [localAdministratorEnabled] Specifies whether owners of Dev Boxes in the Dev Center Project Pool are added as local administrators on the Dev Box.
  /// [location] The Azure Region where the Dev Center Project Pool exists.
  /// [name] Optional.
  /// [singleSignOnEnabled] Specifies whether Dev Boxes in the Pool will have SSO enabled or disabled.
  /// [stopOnDisconnectGracePeriodMinutes] The specified time in minutes to wait before stopping a Dev Center Dev Box once disconnect is detected.
  /// [tags] A mapping of tags assigned to the Dev Center Project Pool.
  const GetProjectPoolResult({
    this.devBoxDefinitionName,
    this.devCenterAttachedNetworkName,
    this.devCenterProjectId,
    this.id,
    this.localAdministratorEnabled,
    this.location,
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
      'id': ?id,
      'localAdministratorEnabled': ?localAdministratorEnabled,
      'location': ?location,
      'name': ?name,
      'singleSignOnEnabled': ?singleSignOnEnabled,
      'stopOnDisconnectGracePeriodMinutes': ?stopOnDisconnectGracePeriodMinutes,
      'tags': ?tags,
    };
  }

  factory GetProjectPoolResult.fromMap(Map<String, dynamic> map) {
    return GetProjectPoolResult(
      devBoxDefinitionName: (() { final guardedValue = map['devBoxDefinitionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      devCenterAttachedNetworkName: (() { final guardedValue = map['devCenterAttachedNetworkName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      devCenterProjectId: (() { final guardedValue = map['devCenterProjectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localAdministratorEnabled: (() { final guardedValue = map['localAdministratorEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      singleSignOnEnabled: (() { final guardedValue = map['singleSignOnEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      stopOnDisconnectGracePeriodMinutes: (() { final guardedValue = map['stopOnDisconnectGracePeriodMinutes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
