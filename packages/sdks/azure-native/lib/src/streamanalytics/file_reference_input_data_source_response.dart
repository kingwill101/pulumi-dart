// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a file input data source that contains reference data.
class FileReferenceInputDataSourceResponse {
  /// The path of the file.
  final pulumi.Input<String?>? path;
  /// Indicates the type of input data source containing reference data. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'File'.
  final pulumi.Input<String> type;

  /// Creates a new [FileReferenceInputDataSourceResponse].
  /// [path] The path of the file.
  /// [type] Indicates the type of input data source containing reference data. Required on PUT (CreateOrReplace) requests.
  const FileReferenceInputDataSourceResponse({
    this.path,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'type': type,
    };
  }

  factory FileReferenceInputDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return FileReferenceInputDataSourceResponse(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
