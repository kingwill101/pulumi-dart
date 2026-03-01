// ignore_for_file: unused_element, unnecessary_cast


class ResourceTypeOnBehalfOfToken {
  /// The action name.
  final String? actionName;
  /// This is a TimeSpan property.
  final String? lifeTime;

  /// Creates a new [ResourceTypeOnBehalfOfToken].
  /// [actionName] The action name.
  /// [lifeTime] This is a TimeSpan property.
  ResourceTypeOnBehalfOfToken({
    this.actionName,
    this.lifeTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': ?actionName,
      'lifeTime': ?lifeTime,
    };
  }

  factory ResourceTypeOnBehalfOfToken.fromMap(Map<String, dynamic> map) {
    return ResourceTypeOnBehalfOfToken(
      actionName: map['actionName'] == null ? null : map['actionName'] as String,
      lifeTime: map['lifeTime'] == null ? null : map['lifeTime'] as String,
    );
  }
}

