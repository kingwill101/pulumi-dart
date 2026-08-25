// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getExternalAddress.
class GetExternalAddressResult {
  final String? createTime;
  final String? deletionPolicy;
  final String? description;
  final String? externalIp;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? internalIp;
  final String? name;
  final String? parent;
  final String? state;
  final String? uid;
  final String? updateTime;

  /// Creates a new [GetExternalAddressResult].
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [externalIp] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [internalIp] Optional.
  /// [name] Optional.
  /// [parent] Optional.
  /// [state] Optional.
  /// [uid] Optional.
  /// [updateTime] Optional.
  const GetExternalAddressResult({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.externalIp,
    this.id,
    this.internalIp,
    this.name,
    this.parent,
    this.state,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'externalIp': ?externalIp,
      'id': ?id,
      'internalIp': ?internalIp,
      'name': ?name,
      'parent': ?parent,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetExternalAddressResult.fromMap(Map<String, dynamic> map) {
    return GetExternalAddressResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalIp: (() { final guardedValue = map['externalIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      internalIp: (() { final guardedValue = map['internalIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
