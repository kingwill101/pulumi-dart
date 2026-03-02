// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_http_target_header_override_header.dart';

class QueueHttpTargetHeaderOverride {
  /// Header embodying a key and a value.
  /// Structure is documented below.
  final pulumi.Input<QueueHttpTargetHeaderOverrideHeader> header;

  /// Creates a new [QueueHttpTargetHeaderOverride].
  /// [header] Header embodying a key and a value.
  QueueHttpTargetHeaderOverride({
    required this.header,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': pulumi.Input.mapInputValue<QueueHttpTargetHeaderOverrideHeader, Map<String, dynamic>>(header, (value) => value.toMap()),
    };
  }

  factory QueueHttpTargetHeaderOverride.fromMap(Map<String, dynamic> map) {
    return QueueHttpTargetHeaderOverride(
      header: (QueueHttpTargetHeaderOverrideHeader.fromMap((map['header'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

