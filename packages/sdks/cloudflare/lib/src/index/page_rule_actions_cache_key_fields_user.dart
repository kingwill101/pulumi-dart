// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PageRuleActionsCacheKeyFieldsUser {
  final pulumi.Input<bool?>? deviceType;
  final pulumi.Input<bool?>? geo;
  final pulumi.Input<bool?>? lang;

  /// Creates a new [PageRuleActionsCacheKeyFieldsUser].
  /// [deviceType] Optional.
  /// [geo] Optional.
  /// [lang] Optional.
  const PageRuleActionsCacheKeyFieldsUser({
    this.deviceType,
    this.geo,
    this.lang,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceType': ?deviceType,
      'geo': ?geo,
      'lang': ?lang,
    };
  }

  factory PageRuleActionsCacheKeyFieldsUser.fromMap(Map<String, dynamic> map) {
    return PageRuleActionsCacheKeyFieldsUser(
      deviceType: (() { final guardedValue = map['deviceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      geo: (() { final guardedValue = map['geo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
