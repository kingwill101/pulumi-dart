// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailRoutingDnsErrorSource {
  final pulumi.Input<String> pointer;

  /// Creates a new [GetEmailRoutingDnsErrorSource].
  /// [pointer] Required.
  const GetEmailRoutingDnsErrorSource({
    required this.pointer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pointer': pointer,
    };
  }

  factory GetEmailRoutingDnsErrorSource.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingDnsErrorSource(
      pointer: pulumi.Input.fromValue(map['pointer'] as String),
    );
  }
}
