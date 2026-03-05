// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getHcxActivationKey.
class GetHcxActivationKeyResult {
  /// HCX activation key.
  final String activationKey;

  /// Creation time of HCX activation key.
  final String createTime;

  /// The resource name of this HcxActivationKey. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1/privateClouds/my-cloud/hcxActivationKeys/my-key`
  final String name;

  /// State of HCX activation key.
  final String state;

  /// System-generated unique identifier for the resource.
  final String uid;

  /// Creates a new [GetHcxActivationKeyResult].
  /// [activationKey] HCX activation key.
  /// [createTime] Creation time of HCX activation key.
  /// [name] The resource name of this HcxActivationKey. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1/privateClouds/my-cloud/hcxActivationKeys/my-key`
  /// [state] State of HCX activation key.
  /// [uid] System-generated unique identifier for the resource.
  GetHcxActivationKeyResult({
    required this.activationKey,
    required this.createTime,
    required this.name,
    required this.state,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationKey': activationKey,
      'createTime': createTime,
      'name': name,
      'state': state,
      'uid': uid,
    };
  }

  factory GetHcxActivationKeyResult.fromMap(Map<String, dynamic> map) {
    return GetHcxActivationKeyResult(
      activationKey: map['activationKey'] as String,
      createTime: map['createTime'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      uid: map['uid'] as String,
    );
  }
}
