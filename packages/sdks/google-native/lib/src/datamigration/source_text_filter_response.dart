// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Filter for text-based data types like varchar.
class SourceTextFilterResponse {
  /// Optional. The filter will match columns with length smaller than or equal to this number.
  final pulumi.Input<String> sourceMaxLengthFilter;
  /// Optional. The filter will match columns with length greater than or equal to this number.
  final pulumi.Input<String> sourceMinLengthFilter;

  /// Creates a new [SourceTextFilterResponse].
  /// [sourceMaxLengthFilter] Optional. The filter will match columns with length smaller than or equal to this number.
  /// [sourceMinLengthFilter] Optional. The filter will match columns with length greater than or equal to this number.
  const SourceTextFilterResponse({
    required this.sourceMaxLengthFilter,
    required this.sourceMinLengthFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceMaxLengthFilter': sourceMaxLengthFilter,
      'sourceMinLengthFilter': sourceMinLengthFilter,
    };
  }

  factory SourceTextFilterResponse.fromMap(Map<String, dynamic> map) {
    return SourceTextFilterResponse(
      sourceMaxLengthFilter: pulumi.Input.fromValue(map['sourceMaxLengthFilter'] as String),
      sourceMinLengthFilter: pulumi.Input.fromValue(map['sourceMinLengthFilter'] as String),
    );
  }
}
