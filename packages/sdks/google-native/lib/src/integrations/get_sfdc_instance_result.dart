// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSfdcInstance.
class GetSfdcInstanceResult {
  /// A list of AuthConfigs that can be tried to open the channel to SFDC
  final List<String>? authConfigId;
  /// Time when the instance is created
  final String? createTime;
  /// Time when the instance was deleted. Empty if not deleted.
  final String? deleteTime;
  /// A description of the sfdc instance.
  final String? description;
  /// User selected unique name/alias to easily reference an instance.
  final String? displayName;
  /// Resource name of the SFDC instance projects/{project}/locations/{location}/sfdcInstances/{sfdcInstance}.
  final String? name;
  /// URL used for API calls after authentication (the login authority is configured within the referenced AuthConfig).
  final String? serviceAuthority;
  /// The SFDC Org Id. This is defined in salesforce.
  final String? sfdcOrgId;
  /// Time when the instance was last updated
  final String? updateTime;

  /// Creates a new [GetSfdcInstanceResult].
  /// [authConfigId] A list of AuthConfigs that can be tried to open the channel to SFDC
  /// [createTime] Time when the instance is created
  /// [deleteTime] Time when the instance was deleted. Empty if not deleted.
  /// [description] A description of the sfdc instance.
  /// [displayName] User selected unique name/alias to easily reference an instance.
  /// [name] Resource name of the SFDC instance projects/{project}/locations/{location}/sfdcInstances/{sfdcInstance}.
  /// [serviceAuthority] URL used for API calls after authentication (the login authority is configured within the referenced AuthConfig).
  /// [sfdcOrgId] The SFDC Org Id. This is defined in salesforce.
  /// [updateTime] Time when the instance was last updated
  const GetSfdcInstanceResult({
    this.authConfigId,
    this.createTime,
    this.deleteTime,
    this.description,
    this.displayName,
    this.name,
    this.serviceAuthority,
    this.sfdcOrgId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfigId': ?authConfigId,
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'serviceAuthority': ?serviceAuthority,
      'sfdcOrgId': ?sfdcOrgId,
      'updateTime': ?updateTime,
    };
  }

  factory GetSfdcInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetSfdcInstanceResult(
      authConfigId: (() { final guardedValue = map['authConfigId']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAuthority: (() { final guardedValue = map['serviceAuthority']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sfdcOrgId: (() { final guardedValue = map['sfdcOrgId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
