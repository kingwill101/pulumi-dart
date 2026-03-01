// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUrlList.
class GetUrlListNetworksecurityV1beta1Result {
  /// Time when the security policy was created.
  final String createTime;
  /// Optional. Free-text description of the resource.
  final String description;
  /// Name of the resource provided by the user. Name is of the form projects/{project}/locations/{location}/urlLists/{url_list} url_list should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  final String name;
  /// Time when the security policy was updated.
  final String updateTime;
  /// FQDNs and URLs.
  final List<String> values;

  /// Creates a new [GetUrlListNetworksecurityV1beta1Result].
  /// [createTime] Time when the security policy was created.
  /// [description] Optional. Free-text description of the resource.
  /// [name] Name of the resource provided by the user. Name is of the form projects/{project}/locations/{location}/urlLists/{url_list} url_list should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  /// [updateTime] Time when the security policy was updated.
  /// [values] FQDNs and URLs.
  GetUrlListNetworksecurityV1beta1Result({
    required this.createTime,
    required this.description,
    required this.name,
    required this.updateTime,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'name': name,
      'updateTime': updateTime,
      'values': values,
    };
  }

  factory GetUrlListNetworksecurityV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetUrlListNetworksecurityV1beta1Result(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

