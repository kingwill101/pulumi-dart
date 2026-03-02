// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolPersistence {
  /// The name of the cookie if persistence mode is set
  /// appropriately. Required if `type = APP_COOKIE`.
  final pulumi.Input<String>? cookieName;
  /// The type of persistence mode. The current specification
  /// supports SOURCE_IP, HTTP_COOKIE, and APP_COOKIE.
  final pulumi.Input<String> type;

  /// Creates a new [PoolPersistence].
  /// [cookieName] The name of the cookie if persistence mode is set
  /// [type] The type of persistence mode. The current specification
  PoolPersistence({
    this.cookieName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieName': ?cookieName,
      'type': type,
    };
  }

  factory PoolPersistence.fromMap(Map<String, dynamic> map) {
    return PoolPersistence(
      cookieName: map['cookieName'] == null ? null : (map['cookieName']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

