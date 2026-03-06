// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_response_cloudtasks_v2beta3.dart';

/// Wraps the Header object.
class HeaderOverrideResponseCloudtasksV2beta3 {
  /// header embodying a key and a value.
  final pulumi.Input<HeaderResponseCloudtasksV2beta3> header;

  /// Creates a new [HeaderOverrideResponseCloudtasksV2beta3].
  /// [header] header embodying a key and a value.
  const HeaderOverrideResponseCloudtasksV2beta3({
    required this.header,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': pulumi.Input.mapInputValue<HeaderResponseCloudtasksV2beta3, Map<String, dynamic>>(header, (value) => value.toMap()),
    };
  }

  factory HeaderOverrideResponseCloudtasksV2beta3.fromMap(Map<String, dynamic> map) {
    return HeaderOverrideResponseCloudtasksV2beta3(
      header: pulumi.Input.fromValue(HeaderResponseCloudtasksV2beta3.fromMap((map['header']! as Map).cast<String, dynamic>())),
    );
  }
}

