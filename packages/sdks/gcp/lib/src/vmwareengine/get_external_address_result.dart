// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getExternalAddress.
class GetExternalAddressResult {
  final String createTime;
  final String description;
  final String externalIp;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String internalIp;
  final String name;
  final String parent;
  final String state;
  final String uid;
  final String updateTime;

  /// Creates a new [GetExternalAddressResult].
  /// [createTime] Required.
  /// [description] Required.
  /// [externalIp] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [internalIp] Required.
  /// [name] Required.
  /// [parent] Required.
  /// [state] Required.
  /// [uid] Required.
  /// [updateTime] Required.
  const GetExternalAddressResult({
    required this.createTime,
    required this.description,
    required this.externalIp,
    required this.id,
    required this.internalIp,
    required this.name,
    required this.parent,
    required this.state,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'externalIp': externalIp,
      'id': id,
      'internalIp': internalIp,
      'name': name,
      'parent': parent,
      'state': state,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetExternalAddressResult.fromMap(Map<String, dynamic> map) {
    return GetExternalAddressResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      externalIp: map['externalIp'] as String,
      id: map['id'] as String,
      internalIp: map['internalIp'] as String,
      name: map['name'] as String,
      parent: map['parent'] as String,
      state: map['state'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

