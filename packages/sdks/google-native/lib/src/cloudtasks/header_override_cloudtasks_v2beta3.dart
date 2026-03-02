// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_cloudtasks_v2beta3.dart';

/// Wraps the Header object.
class HeaderOverrideCloudtasksV2beta3 {
  /// header embodying a key and a value.
  final pulumi.Input<HeaderCloudtasksV2beta3>? header;

  /// Creates a new [HeaderOverrideCloudtasksV2beta3].
  /// [header] header embodying a key and a value.
  HeaderOverrideCloudtasksV2beta3({
    this.header,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': ?pulumi.Input.mapOptionalInputValue<HeaderCloudtasksV2beta3, Map<String, dynamic>>(header, (value) => value.toMap()),
    };
  }

  factory HeaderOverrideCloudtasksV2beta3.fromMap(Map<String, dynamic> map) {
    return HeaderOverrideCloudtasksV2beta3(
      header: map['header'] == null ? null : (HeaderCloudtasksV2beta3.fromMap((map['header'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

