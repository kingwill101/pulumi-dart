// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file.dart';

/// `Source` is one or more `File` messages comprising a logical set of rules.
class Source {
  /// `File` set constituting the `Source` bundle.
  final pulumi.Input<List<File>> files;

  /// Creates a new [Source].
  /// [files] `File` set constituting the `Source` bundle.
  const Source({
    required this.files,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': pulumi.Input.mapInputValue<List<File>, List<Map<String, dynamic>>>(files, (value) => pulumi.Input.encodeList<File, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Source.fromMap(Map<String, dynamic> map) {
    return Source(
      files: pulumi.Input.fromValue(pulumi.Input.decodeList<File>(map['files']!, (value) => File.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
