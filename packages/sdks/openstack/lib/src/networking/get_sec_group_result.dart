// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSecGroup.
class GetSecGroupResult {
  /// The set of string tags applied on the security group.
  final List<String> allTags;

  /// See Argument Reference above.
  final String? description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// See Argument Reference above.
  final String? name;

  /// See Argument Reference above.
  final String region;
  final String? secgroupId;

  /// See Argument Reference above.
  final bool stateful;
  final List<String>? tags;
  final String tenantId;

  /// Creates a new [GetSecGroupResult].
  /// [allTags] The set of string tags applied on the security group.
  /// [description] See Argument Reference above.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] See Argument Reference above.
  /// [region] See Argument Reference above.
  /// [secgroupId] Optional.
  /// [stateful] See Argument Reference above.
  /// [tags] Optional.
  /// [tenantId] Required.
  GetSecGroupResult({
    required this.allTags,
    this.description,
    required this.id,
    this.name,
    required this.region,
    this.secgroupId,
    required this.stateful,
    this.tags,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allTags': allTags,
      'description': ?description,
      'id': id,
      'name': ?name,
      'region': region,
      'secgroupId': ?secgroupId,
      'stateful': stateful,
      'tags': ?tags,
      'tenantId': tenantId,
    };
  }

  factory GetSecGroupResult.fromMap(Map<String, dynamic> map) {
    return GetSecGroupResult(
      allTags: (map['allTags'] as List).cast<String>(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      region: map['region'] as String,
      secgroupId: (() {
        final guardedValue = map['secgroupId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      stateful: map['stateful'] as bool,
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      tenantId: map['tenantId'] as String,
    );
  }
}
