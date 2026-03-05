// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceTypeOnBehalfOfTokenResponse {
  /// The action name.
  final pulumi.Input<String>? actionName;
  /// This is a TimeSpan property.
  final pulumi.Input<String>? lifeTime;

  /// Creates a new [ResourceTypeOnBehalfOfTokenResponse].
  /// [actionName] The action name.
  /// [lifeTime] This is a TimeSpan property.
  ResourceTypeOnBehalfOfTokenResponse({
    this.actionName,
    this.lifeTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': ?actionName,
      'lifeTime': ?lifeTime,
    };
  }

  factory ResourceTypeOnBehalfOfTokenResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeOnBehalfOfTokenResponse(
      actionName: (() { final guardedValue = map['actionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lifeTime: (() { final guardedValue = map['lifeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

