// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EntryGcsFilesetSpecSampleGcsFileSpec {
  /// The full file path
  final pulumi.Input<String>? filePath;
  /// The size of the file, in bytes.
  final pulumi.Input<int>? sizeBytes;

  /// Creates a new [EntryGcsFilesetSpecSampleGcsFileSpec].
  /// [filePath] The full file path
  /// [sizeBytes] The size of the file, in bytes.
  EntryGcsFilesetSpecSampleGcsFileSpec({
    this.filePath,
    this.sizeBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filePath': ?filePath,
      'sizeBytes': ?sizeBytes,
    };
  }

  factory EntryGcsFilesetSpecSampleGcsFileSpec.fromMap(Map<String, dynamic> map) {
    return EntryGcsFilesetSpecSampleGcsFileSpec(
      filePath: (() { final guardedValue = map['filePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeBytes: (() { final guardedValue = map['sizeBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

