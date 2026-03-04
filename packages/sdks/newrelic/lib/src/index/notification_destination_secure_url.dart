// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotificationDestinationSecureUrl {
  /// The prefix of the URL.
  final pulumi.Input<String> prefix;

  /// The suffix of the URL, which contains sensitive data.
  final pulumi.Input<String> secureSuffix;

  /// Creates a new [NotificationDestinationSecureUrl].
  /// [prefix] The prefix of the URL.
  /// [secureSuffix] The suffix of the URL, which contains sensitive data.
  NotificationDestinationSecureUrl({
    required this.prefix,
    required this.secureSuffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'prefix': prefix, 'secureSuffix': secureSuffix};
  }

  factory NotificationDestinationSecureUrl.fromMap(Map<String, dynamic> map) {
    return NotificationDestinationSecureUrl(
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      secureSuffix: pulumi.Input.fromValue(map['secureSuffix'] as String),
    );
  }
}
