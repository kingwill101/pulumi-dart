// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNotificationDestinationSecureUrl {
  final pulumi.Input<String> prefix;

  /// Creates a new [GetNotificationDestinationSecureUrl].
  /// [prefix] Required.
  GetNotificationDestinationSecureUrl({required this.prefix});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'prefix': prefix};
  }

  factory GetNotificationDestinationSecureUrl.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNotificationDestinationSecureUrl(
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
    );
  }
}
