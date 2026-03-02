// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BrokenLinksMonitorTag {
  /// Name of the tag key.
  final pulumi.Input<String> key;
  /// Values associated with the tag key.
  final pulumi.Input<List<String>> values;

  /// Creates a new [BrokenLinksMonitorTag].
  /// [key] Name of the tag key.
  /// [values] Values associated with the tag key.
  BrokenLinksMonitorTag({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory BrokenLinksMonitorTag.fromMap(Map<String, dynamic> map) {
    return BrokenLinksMonitorTag(
      key: (map['key'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

