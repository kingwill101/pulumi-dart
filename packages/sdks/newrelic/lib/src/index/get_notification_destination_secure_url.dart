// ignore_for_file: unused_element, unnecessary_cast


class GetNotificationDestinationSecureUrl {
  final String prefix;

  /// Creates a new [GetNotificationDestinationSecureUrl].
  /// [prefix] Required.
  GetNotificationDestinationSecureUrl({
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': prefix,
    };
  }

  factory GetNotificationDestinationSecureUrl.fromMap(Map<String, dynamic> map) {
    return GetNotificationDestinationSecureUrl(
      prefix: map['prefix'] as String,
    );
  }
}

