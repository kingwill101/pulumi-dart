// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailRoutingDnsMessageSource {
  final pulumi.Input<String> pointer;

  /// Creates a new [GetEmailRoutingDnsMessageSource].
  /// [pointer] Required.
  const GetEmailRoutingDnsMessageSource({
    required this.pointer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pointer': pointer,
    };
  }

  factory GetEmailRoutingDnsMessageSource.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingDnsMessageSource(
      pointer: pulumi.Input.fromValue(map['pointer'] as String),
    );
  }
}
