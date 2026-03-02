// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HTTPHeader describes a custom header to be used in HTTP probes
class GoogleCloudRunV2HTTPHeader {
  /// The header field name
  final pulumi.Input<String> name;
  /// The header field value
  final pulumi.Input<String>? value;

  /// Creates a new [GoogleCloudRunV2HTTPHeader].
  /// [name] The header field name
  /// [value] The header field value
  GoogleCloudRunV2HTTPHeader({
    required this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': ?value,
    };
  }

  factory GoogleCloudRunV2HTTPHeader.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2HTTPHeader(
      name: (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

