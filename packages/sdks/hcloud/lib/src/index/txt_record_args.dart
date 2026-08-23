// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_txt_record_txt_record_args_doc}
/// Arguments for txtRecord.
/// {@endtemplate}
/// {@macro pulumi_index_txt_record_txt_record_args_doc}
class TxtRecordArgs {
  /// Record value to format.
  final pulumi.Input<String> record;

  /// Creates a new [TxtRecordArgs].
  /// [record] Record value to format.
  const TxtRecordArgs({
    required this.record,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'record': record,
    };
  }

  factory TxtRecordArgs.fromMap(Map<String, dynamic> map) {
    return TxtRecordArgs(
      record: pulumi.Input.fromValue(map['record'] as String),
    );
  }
}
