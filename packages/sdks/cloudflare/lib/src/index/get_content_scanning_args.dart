// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_content_scanning_get_content_scanning_args_doc}
/// Arguments for getContentScanning.
/// {@endtemplate}
/// {@macro pulumi_index_get_content_scanning_get_content_scanning_args_doc}
class GetContentScanningArgs {
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetContentScanningArgs].
  /// [zoneId] Defines an identifier.
  const GetContentScanningArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetContentScanningArgs.fromMap(Map<String, dynamic> map) {
    return GetContentScanningArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
