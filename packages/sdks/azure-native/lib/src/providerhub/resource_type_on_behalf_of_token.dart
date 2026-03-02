// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceTypeOnBehalfOfToken {
  /// The action name.
  final pulumi.Input<String>? actionName;
  /// This is a TimeSpan property.
  final pulumi.Input<String>? lifeTime;

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
      actionName: map['actionName'] == null ? null : (map['actionName']! as String).input(),
      lifeTime: map['lifeTime'] == null ? null : (map['lifeTime']! as String).input(),
    );
  }
}

