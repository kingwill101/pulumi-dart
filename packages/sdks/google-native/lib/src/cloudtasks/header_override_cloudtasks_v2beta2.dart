// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_cloudtasks_v2beta2.dart';

/// Wraps the Header object.
class HeaderOverrideCloudtasksV2beta2 {
  /// header embodying a key and a value.
  final pulumi.Input<HeaderCloudtasksV2beta2>? header;

  /// Creates a new [HeaderOverrideCloudtasksV2beta2].
  /// [header] header embodying a key and a value.
  HeaderOverrideCloudtasksV2beta2({
    this.header,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': ?pulumi.Input.mapOptionalInputValue<HeaderCloudtasksV2beta2, Map<String, dynamic>>(header, (value) => value.toMap()),
    };
  }

  factory HeaderOverrideCloudtasksV2beta2.fromMap(Map<String, dynamic> map) {
    return HeaderOverrideCloudtasksV2beta2(
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HeaderCloudtasksV2beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

