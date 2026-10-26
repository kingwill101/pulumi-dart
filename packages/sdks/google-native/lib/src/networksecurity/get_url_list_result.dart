// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUrlList.
class GetUrlListResult {
  /// Time when the security policy was created.
  final String? createTime;
  /// Optional. Free-text description of the resource.
  final String? description;
  /// Name of the resource provided by the user. Name is of the form projects/{project}/locations/{location}/urlLists/{url_list} url_list should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  final String? name;
  /// Time when the security policy was updated.
  final String? updateTime;
  /// FQDNs and URLs.
  final List<String>? values;

  /// Creates a new [GetUrlListResult].
  /// [createTime] Time when the security policy was created.
  /// [description] Optional. Free-text description of the resource.
  /// [name] Name of the resource provided by the user. Name is of the form projects/{project}/locations/{location}/urlLists/{url_list} url_list should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  /// [updateTime] Time when the security policy was updated.
  /// [values] FQDNs and URLs.
  const GetUrlListResult({
    this.createTime,
    this.description,
    this.name,
    this.updateTime,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'name': ?name,
      'updateTime': ?updateTime,
      'values': ?values,
    };
  }

  factory GetUrlListResult.fromMap(Map<String, dynamic> map) {
    return GetUrlListResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
