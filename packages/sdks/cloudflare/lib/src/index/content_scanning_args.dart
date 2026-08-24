// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_content_scanning_content_scanning_args_doc}
/// The set of arguments for ContentScanning.
/// {@endtemplate}
/// {@macro pulumi_index_content_scanning_content_scanning_args_doc}
class ContentScanningArgs {
  /// The status value for Content Scanning.
  /// Available values: "enabled", "disabled".
  final pulumi.Input<String> value;
  /// Defines an identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ContentScanningArgs].
  /// [value] The status value for Content Scanning.
  /// [zoneId] Defines an identifier.
  const ContentScanningArgs({
    required this.value,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'zoneId': zoneId,
    };
  }

  factory ContentScanningArgs.fromMap(Map<String, dynamic> map) {
    return ContentScanningArgs(
      value: pulumi.Input.fromValue(map['value'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
