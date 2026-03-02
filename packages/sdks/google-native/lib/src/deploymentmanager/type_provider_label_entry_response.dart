// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Label object for TypeProviders
class TypeProviderLabelEntryResponse {
  /// Key of the label
  final pulumi.Input<String> key;
  /// Value of the label
  final pulumi.Input<String> value;

  /// Creates a new [TypeProviderLabelEntryResponse].
  /// [key] Key of the label
  /// [value] Value of the label
  TypeProviderLabelEntryResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory TypeProviderLabelEntryResponse.fromMap(Map<String, dynamic> map) {
    return TypeProviderLabelEntryResponse(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

