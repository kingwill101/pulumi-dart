// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Filter for text-based data types like varchar.
class SourceTextFilter {
  /// Optional. The filter will match columns with length smaller than or equal to this number.
  final pulumi.Input<String>? sourceMaxLengthFilter;
  /// Optional. The filter will match columns with length greater than or equal to this number.
  final pulumi.Input<String>? sourceMinLengthFilter;

  /// Creates a new [SourceTextFilter].
  /// [sourceMaxLengthFilter] Optional. The filter will match columns with length smaller than or equal to this number.
  /// [sourceMinLengthFilter] Optional. The filter will match columns with length greater than or equal to this number.
  const SourceTextFilter({
    this.sourceMaxLengthFilter,
    this.sourceMinLengthFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceMaxLengthFilter': ?sourceMaxLengthFilter,
      'sourceMinLengthFilter': ?sourceMinLengthFilter,
    };
  }

  factory SourceTextFilter.fromMap(Map<String, dynamic> map) {
    return SourceTextFilter(
      sourceMaxLengthFilter: (() { final guardedValue = map['sourceMaxLengthFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceMinLengthFilter: (() { final guardedValue = map['sourceMinLengthFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

